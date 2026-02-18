import json
import os
import re
import sys
import time
from collections import deque
from pathlib import Path

import cv2
import numpy as np


# import path setup
ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
if str(SRC) not in sys.path:
    sys.path.insert(0, str(SRC))

from fbs_abl.core import FBSABL 


# values used in experiments
# Output crop size used by Stage 2 classifier
TARGET_SIZE = 48

# Stage 1 input resolution after downscaling 
FRAME_WIDTH = 854
FRAME_HEIGHT = 480

# where downscalled  480p frames are stored 
FRAMES_480P_DIR = Path("/mnt/ramdisk") / "frames_480p"
FRAMES_480P_MAX = 100

# used only to stimulate real time input as 8, 10, 12 and 15FPS per secand
TARGET_FPS = float(os.getenv("FBS_TARGET_FPS", "15"))
FRAME_INTERVAL = 1 / TARGET_FPS
print(f"Testing: {TARGET_FPS:.2f} FPS")

# delete files inside directory
def clear_directory(dir_path: Path) -> None:
    if not dir_path.exists():
        return
    for path in dir_path.iterdir():
        if path.is_file():
            path.unlink()

#natural sort key so 'frame_10.jpg' comes after 'frame_2.jpg'
def natural_key(name: str):
    return [int(t) if t.isdigit() else t.lower() for t in re.split(r"(\d+)", name)]

#return sorted list of image file paths from a folder
def get_image_paths(folder: Path):
    exts = {".png", ".jpg", ".jpeg", ".bmp", ".tif", ".tiff"}
    paths = [p for p in folder.iterdir() if p.is_file() and p.suffix.lower() in exts]
    paths.sort(key=lambda p: natural_key(p.name))
    return paths

#crop a square patch around a box while staying inside the image borders
def crop_square_patch(img: np.ndarray, box, crop_w: int, crop_h: int):

    x1, y1, x2, y2 = box
    w = x2 - x1
    h = y2 - y1
    if w <= 0 or h <= 0:
        return None

    side = max(w, h)
    side = min(side, min(crop_w, crop_h))

    cx = (x1 + x2) / 2.0
    cy = (y1 + y2) / 2.0

    half_side = side / 2.0
    x1_new = cx - half_side
    x2_new = cx + half_side
    y1_new = cy - half_side
    y2_new = cy + half_side

    if x1_new < 0:
        shift = -x1_new
        x1_new += shift
        x2_new += shift
    if x2_new > crop_w:
        shift = x2_new - crop_w
        x1_new -= shift
        x2_new -= shift

    if y1_new < 0:
        shift = -y1_new
        y1_new += shift
        y2_new += shift
    if y2_new > crop_h:
        shift = y2_new - crop_h
        y1_new -= shift
        y2_new -= shift

    x1_int = int(np.floor(max(0.0, x1_new)))
    y1_int = int(np.floor(max(0.0, y1_new)))
    x2_int = int(np.ceil(min(float(crop_w), x2_new)))
    y2_int = int(np.ceil(min(float(crop_h), y2_new)))

    if x2_int <= x1_int or y2_int <= y1_int:
        return None

    patch = img[y1_int:y2_int, x1_int:x2_int]
    if patch.size == 0:
        return None

    return patch

# resize the crop to TARGET_SIZE x TARGET_SIZE for Stage 2 input.
def resize_image_to_48(img: np.ndarray) -> np.ndarray:
    """Resize a crop to TARGET_SIZE x TARGET_SIZE for Stage 2 input."""
    h, w = img.shape[:2]
    if h == TARGET_SIZE and w == TARGET_SIZE:
        return img
    return cv2.resize(img, (TARGET_SIZE, TARGET_SIZE), interpolation=cv2.INTER_LINEAR)

# resize the original frame to FBS-ABL input size
def resize_frame_to_480p(img: np.ndarray) -> np.ndarray:
    h, w = img.shape[:2]
    if h == FRAME_HEIGHT and w == FRAME_WIDTH:
        return img
    return cv2.resize(img, (FRAME_WIDTH, FRAME_HEIGHT), interpolation=cv2.INTER_LINEAR)


# save the downscaled frame to the cache directory.
# keep only the newest N frames on disk (ring-buffer style) so storage stays bounded.
def save_480p_ringbuffer_direct(
    cache_dir: Path,
    frame_bgr: np.ndarray,
    original_name: str,
    ring: deque,
    max_keep: int,
):
    out_path = cache_dir / original_name

    ok = cv2.imwrite(str(out_path), frame_bgr)
    if not ok:
        return

    # if the same name appears again, refresh its position in the ring.
    try:
        ring.remove(original_name)
    except ValueError:
        pass

    ring.append(original_name)

    # enforce maximum files on disk.
    while len(ring) > max_keep:
        oldest = ring.popleft()
        try:
            (cache_dir / oldest).unlink()
        except FileNotFoundError:
            pass
        except Exception:
            pass



# Main
def main() -> None:
    # input frames are expected 
    data_dir = ROOT / "data" / "input"

    # output crops directory (Stage 1 output)
    crops_dir = Path("/mnt/ramdisk") / "crops"
    crops_dir.mkdir(parents=True, exist_ok=True)
    clear_directory(crops_dir)

    # output ring buffer directory
    FRAMES_480P_DIR.mkdir(parents=True, exist_ok=True)
    clear_directory(FRAMES_480P_DIR)
    frames_ring = deque()

    frame_paths = get_image_paths(data_dir)
    if not frame_paths:
        return

    # select every Nth frame (optionally added for for speed tests)
    select_every = int(os.getenv("FBS_NTH", "1"))
    if select_every < 1:
        select_every = 1

    start_index = select_every - 1
    frame_paths = frame_paths[start_index::select_every]
    if not frame_paths:
        return


    # FBS-ABL parameters
    block_size = 8
    tau_ratio = 0.08
    bgs_blur_k = 3
    fmg_blur_k = 5
    init_num_frames = 27
    update_delay_frames = 30
    use_shadow_suppression = False
    shadow_alpha = 0.3
    shadow_beta = 0.9

    # BSI: background initialization
    max_init = min(init_num_frames, len(frame_paths))
    preloaded_frames = [] 

    for path in frame_paths[:max_init]:
        img_full = cv2.imread(str(path))
        if img_full is None:
            continue
        preloaded_frames.append((path, resize_frame_to_480p(img_full)))

    if len(preloaded_frames) < 2:
        return

    first_bgr = preloaded_frames[0][1]
    height, width = first_bgr.shape[:2]

    processor = FBSABL(
        frame_shape=(height, width),
        block_size=block_size,
        init_num_frames=init_num_frames,
        tau_ratio=tau_ratio,
        bgs_blur_k=bgs_blur_k,
        fmg_blur_k=fmg_blur_k,
        shadow_suppression=use_shadow_suppression,
        shadow_alpha=shadow_alpha,
        shadow_beta=shadow_beta,
        d_factor=update_delay_frames,
    )

    init_frames_bgr = [img for (_, img) in preloaded_frames]
    _ = processor.initialize_background_from_frames(init_frames_bgr)

    skip_detection_frames = len(init_frames_bgr)
    preloaded_frames.clear()
    init_frames_bgr.clear()


    # post-processing settings (mask cleanup + blob filtering + crops)
    # candidate regions filter
    min_area = 250
    max_area = 2500

    # expand each bounding box slightly before cropping (method A)
    padding_ratio = 0.1

    # median filter removes isolated single-pixel noise
    use_median_filter = True
    median_kernel_size = 3

    # morphological refinement
    use_morphology = True
    morph_kernel_size = 3
    morph_iterations = 6

    # Ignore extremely small crops 
    min_patch_side = 30


    # Detection loop
    total_frames = len(frame_paths)
    detection_frame_paths = frame_paths[skip_detection_frames:]

    total_crops_saved = 0
    total_frames_with_crops = 0

    total_detection_frames = 0
    detection_start = None
    detection_end = None

    overall_start = time.perf_counter()

    for img_path in detection_frame_paths:
        frame_start = time.perf_counter()

        bgr_full = cv2.imread(str(img_path))
        if bgr_full is None:
            continue

        # resize to Stage 1 resolution
        bgr = resize_frame_to_480p(bgr_full)

        # export to ring buffer
        save_480p_ringbuffer_direct(
            FRAMES_480P_DIR, bgr, img_path.name, frames_ring, FRAMES_480P_MAX
        )

        # FBS-ABL foreground mask (0/255)
        mask = processor.process_frame(bgr)
        if mask.dtype != np.uint8:
            mask = mask.astype(np.uint8)

        # median filter before morphology
        if use_median_filter:
            mask = cv2.medianBlur(mask, median_kernel_size)

        # binary image + morphology
        _, mask_bin = cv2.threshold(mask, 127, 255, cv2.THRESH_BINARY)

        if use_morphology:
            kernel = cv2.getStructuringElement(
                cv2.MORPH_ELLIPSE, (morph_kernel_size, morph_kernel_size)
            )
            mask_bin = cv2.morphologyEx(
                mask_bin, cv2.MORPH_CLOSE, kernel, iterations=morph_iterations
            )
            mask_bin = cv2.morphologyEx(
                mask_bin, cv2.MORPH_OPEN, kernel, iterations=morph_iterations
            )

        # find connected foreground blobs
        contours, _ = cv2.findContours(mask_bin, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        mh, mw = mask_bin.shape[:2]
        img_cropped = bgr[:mh, :mw]

        stem = img_path.stem
        frame_crops = 0

        for box_idx, cnt in enumerate(contours, start=1):
            x, y, w, h = cv2.boundingRect(cnt)
            area = w * h
            if area < min_area or area > max_area:
                continue

            # expand box by a small padding (Method A)
            pad_x = int(round(w * padding_ratio))
            pad_y = int(round(h * padding_ratio))

            x1 = max(0, x - pad_x)
            y1 = max(0, y - pad_y)
            x2 = min(mw - 1, x + w + pad_x)
            y2 = min(mh - 1, y + h + pad_y)

            if x2 <= x1 or y2 <= y1:
                continue

            patch = crop_square_patch(img_cropped, (x1, y1, x2, y2), crop_w=mw, crop_h=mh)
            if patch is None:
                continue

            ph, pw = patch.shape[:2]
            if ph < min_patch_side or pw < min_patch_side:
                continue

            # resize to classifier input size
            resized = resize_image_to_48(patch)

            out_name = f"{stem}_{box_idx}.jpg"
            out_path = crops_dir / out_name
            ok = cv2.imwrite(str(out_path), resized)
            if ok:
                total_crops_saved += 1
                frame_crops += 1

        if frame_crops > 0:
            total_frames_with_crops += 1

        total_detection_frames += 1
        if detection_start is None:
            detection_start = frame_start

        # Keep the loop close to the target interval
        frame_end = time.perf_counter()
        elapsed = frame_end - frame_start
        if elapsed < FRAME_INTERVAL:
            time.sleep(FRAME_INTERVAL - elapsed)
        detection_end = time.perf_counter()

    overall_end = time.perf_counter()
    total_elapsed = overall_end - overall_start

    if detection_start is not None and detection_end is not None:
        detection_elapsed = detection_end - detection_start
    else:
        detection_elapsed = None

    if detection_elapsed is not None and detection_elapsed > 0.0 and total_detection_frames > 0:
        fps_sim = total_detection_frames / detection_elapsed
    else:
        fps_sim = None

    # Numba thread info
    numba_threads = None
    try:
        from numba import get_num_threads

        numba_threads = get_num_threads()
    except ImportError:
        numba_threads = None

    log_path = ROOT / "stage1_perf.json"
    log_data = {
        "total_frames": total_frames,
        "warmup_frames": skip_detection_frames,
        "detection_frames": total_detection_frames,
        "total_crops_saved": total_crops_saved,
        "frames_with_crops": total_frames_with_crops,
        "crops_folder": str(crops_dir),
        "frames_480p_folder": str(FRAMES_480P_DIR),
        "frames_480p_max": FRAMES_480P_MAX,
        "detection_elapsed": detection_elapsed,
        "approx_fps_simulated": fps_sim,
        "total_elapsed": total_elapsed,
        "numba_threads": numba_threads,
    }
    try:
        with open(log_path, "w") as f:
            json.dump(log_data, f, indent=2)
    except Exception:
        pass

    print(f"  Total frames processed         : {total_frames}")
    print(f"  Warmup frames (no crops)       : {skip_detection_frames}")
    print(f"  Detection frames (with crops)  : {total_detection_frames}")
    print(f"  Total crops saved              : {total_crops_saved}")
    print(
        f"  480p ring buffer folder        : {FRAMES_480P_DIR} (max={FRAMES_480P_MAX})"
    )


if __name__ == "__main__":
    main()

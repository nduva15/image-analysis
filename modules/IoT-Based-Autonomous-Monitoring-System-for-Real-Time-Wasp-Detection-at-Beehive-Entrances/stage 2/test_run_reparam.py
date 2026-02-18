import json
import os
import re
import shutil
import time
from typing import Dict, List, Optional

import torch
from PIL import Image
from torch2trt import TRTModule
from torchvision import transforms


torch.backends.cudnn.benchmark = True


BATCH_SIZE = 32
WASP_CLASS_INDEX = 2

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))

# Stage 1 outputs (inputs to Stage 2)
CROPS_DIR = "/mnt/ramdisk/crops"
FRAMES_480P_DIR = "/mnt/ramdisk/frames_480p"

# destination for a confirmed sequence
CONFIRMED_FRAMES_DIR = "/mnt/ramdisk/confirmed_frames"

# TensorRT model files
TRT_PATH = os.path.join(SCRIPT_DIR, "deploy_trt_fp16.pth")
WARMUP_CROPS_DIR = os.path.join(SCRIPT_DIR, "warmup")

# primary Verification logic parameters
WINDOW_SIZE_FRAMES = 20
WASP_THRESHOLD_IN_WINDOW = 8

# stop signal used by the full pipeline
CONFIRMED_EXIT_CODE = 42

# watiting time
IDLE_TIMEOUT = 30.0
POLL_INTERVAL = 0.04


# sort filenames
def natural_key(name: str):
    parts = re.split(r"(\d+)", name)
    key = []
    for part in parts:
        if part.isdigit():
            key.append((0, int(part)))
        else:
            key.append((1, part.lower()))
    return key


# list image files in a folder and return them in order
def list_images(folder: str) -> List[str]:
    if not os.path.isdir(folder):
        return []

    valid_exts = (".jpg")
    files = [f for f in os.listdir(folder) if f.lower().endswith(valid_exts)]
    files.sort(key=natural_key)
    return files


# convert the crop images filename like frame_stem_idx.jpg to frame_stem
def crop_to_frame_stem(crop_filename: str) -> str:
    base = os.path.splitext(os.path.basename(crop_filename))[0]
    if "_" not in base:
        return base

    frame_stem, _box = base.rsplit("_", 1)
    return frame_stem


# remove all files in the directory
def clear_directory(dir_path: str) -> None:
    if not os.path.isdir(dir_path):
        return

    for f in os.listdir(dir_path):
        p = os.path.join(dir_path, f)
        try:
            if os.path.isfile(p):
                os.remove(p)
        except Exception:
            pass


# normalization used
def build_transform():
    imagenet_mean = [0.485, 0.456, 0.406]
    imagenet_std = [0.229, 0.224, 0.225]
    return transforms.Compose(
        [
            transforms.ToTensor(),
            transforms.Normalize(mean=imagenet_mean, std=imagenet_std),
        ]
    )


# load the TensorRT module and use cuda
def load_model(device: torch.device) -> torch.nn.Module:
    if device.type != "cuda":
        raise RuntimeError("TensorRT model requires CUDA device, but CUDA is not available.")

    if not os.path.isfile(TRT_PATH):
        raise FileNotFoundError(
            f"TensorRT checkpoint not found: {TRT_PATH} (run convert_to_trt_fp16.py first)."
        )

    model_trt = TRTModule()
    model_trt.load_state_dict(torch.load(TRT_PATH, map_location=device))
    model_trt.to(device)
    model_trt.eval()
    return model_trt


# warmup run to stabilize TRT and I/O performance.
@torch.no_grad()
def warmup_model(model: torch.nn.Module, device: torch.device, transform) -> None:
    if not os.path.isdir(WARMUP_CROPS_DIR):
        return

    files = list_images(WARMUP_CROPS_DIR)
    if not files:
        return

    batch: List[torch.Tensor] = []
    for fname in files:
        path = os.path.join(WARMUP_CROPS_DIR, fname)
        try:
            img = Image.open(path).convert("RGB")
            batch.append(transform(img))
        except Exception:
            continue

        if len(batch) >= BATCH_SIZE:
            xs = torch.stack(batch).to(device, non_blocking=True)
            _ = model(xs)
            batch.clear()

    if batch:
        xs = torch.stack(batch).to(device, non_blocking=True)
        _ = model(xs)

    if device.type == "cuda":
        torch.cuda.synchronize()


# Primary verification: copy the exact 480p frames for the confirmed window into CONFIRMED_FRAMES_DIR
def copy_confirmed_frames(
    window_stems: List[str],
    stem_to_filename: Dict[str, str],
):
    os.makedirs(CONFIRMED_FRAMES_DIR, exist_ok=True)
    clear_directory(CONFIRMED_FRAMES_DIR)

    for stem in window_stems:
        frame_file = stem_to_filename.get(stem)
        if not frame_file:
            continue

        src = os.path.join(FRAMES_480P_DIR, frame_file)
        dst = os.path.join(CONFIRMED_FRAMES_DIR, frame_file)
        try:
            shutil.copy2(src, dst)
        except Exception:
            pass

    return CONFIRMED_FRAMES_DIR


# Main
def main():
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

    model = load_model(device)
    transform = build_transform()
    warmup_model(model, device, transform)

    # Frame timeline: store frame stems in arrival order for upto 20 frames
    frame_stems: List[str] = []
    stem_to_filename: Dict[str, str] = {}
    last_frame_sort_key = None
    last_new_frame_time = time.time()
    seen_any_frame = False

    # how many wasp-classified crops were seen per frame stem
    wasp_count_per_stem: Dict[str, int] = {}

    # verification state : tracks whether the code is currently evaluating a sliding 20-frame window
    verifying = False
    window_start_idx: Optional[int] = None

    total_crops_classified = 0
    total_wasp_crops = 0
    first_active = None
    last_active = None

    last_crop_processed: Optional[str] = None
    last_wasp_crop_processed: Optional[str] = None

    # read the downsampled frames folder and append only newly storred frames from stage 1 to an ordered timeline (frame_stems).
    # this timeline is used for the sliding window check.
    def update_frames_timeline() -> int:
        nonlocal last_frame_sort_key, last_new_frame_time, seen_any_frame
        new_count = 0

        frame_files = list_images(FRAMES_480P_DIR)
        for frame_file in frame_files:
            sort_key = natural_key(frame_file)
            if last_frame_sort_key is None or sort_key > last_frame_sort_key:
                stem = os.path.splitext(frame_file)[0]
                frame_stems.append(stem)
                stem_to_filename[stem] = frame_file
                last_frame_sort_key = sort_key
                new_count += 1

        if new_count > 0:
            last_new_frame_time = time.time()
            seen_any_frame = True

        return new_count

    # start the 20-frame verification window at trigger_stem (frames are expected to arrive before crops).
    def try_start_verification(trigger_stem: str):
        nonlocal verifying, window_start_idx
        if verifying:
            return

        if trigger_stem not in frame_stems:
            return

        verifying = True
        window_start_idx = frame_stems.index(trigger_stem)

    # evaluate the active window; confirm, slide, or stop verification based on wasp counts.
    def evaluate_windows_and_maybe_confirm() -> Optional[str]:
        nonlocal verifying, window_start_idx

        if not verifying or window_start_idx is None:
            return None

        while True:
            # need a full window worth of frames before evaluation
            if len(frame_stems) < window_start_idx + WINDOW_SIZE_FRAMES:
                return None

            window_stems = frame_stems[window_start_idx : window_start_idx + WINDOW_SIZE_FRAMES]
            total_in_window = sum(wasp_count_per_stem.get(stem, 0) for stem in window_stems)

            # confirmed event
            if total_in_window >= WASP_THRESHOLD_IN_WINDOW:
                return copy_confirmed_frames(window_stems, stem_to_filename)

            # if window contains zero detections, stop verifying
            if total_in_window == 0:
                verifying = False
                window_start_idx = None
                return None

            # slide the window forward by 1 frame if possible, otherwise wait for more frames
            if len(frame_stems) >= window_start_idx + WINDOW_SIZE_FRAMES + 1:
                window_start_idx += 1
                continue

            return None

    @torch.no_grad()
    # read current crops, classify in batches, update wasp counts.
    def classify_current_crops_once():
        nonlocal total_crops_classified, total_wasp_crops, first_active, last_active
        nonlocal last_crop_processed, last_wasp_crop_processed

        crop_files = list_images(CROPS_DIR)
        if not crop_files:
            return

        if first_active is None:
            first_active = time.time()

        batch_idx = 0
        while batch_idx < len(crop_files):
            chunk = crop_files[batch_idx : batch_idx + BATCH_SIZE]
            batch_idx += len(chunk)

            tensors: List[torch.Tensor] = []
            paths: List[str] = []
            stems: List[str] = []

            for fname in chunk:
                path = os.path.join(CROPS_DIR, fname)
                try:
                    # read the crop image. If this succeeds, the file is considered valid/readable.
                    with Image.open(path) as im:
                        img = im.convert("RGB")

                    tensors.append(transform(img))
                    paths.append(path)
                    stems.append(crop_to_frame_stem(fname))

                    # once it has been loaded into memory (tensor created), delete the file valid images so it won't be reprocessed in the next loop.
                    try:
                        os.remove(path)
                    except Exception:
                        pass

                except Exception:
                    # crop may still be in the middle of being written. so wait for next turn
                    continue

            if not tensors:
                continue

            xs = torch.stack(tensors).to(device, non_blocking=True)
            outputs = model(xs)
            _, preds = outputs.max(1)
            preds = preds.detach().cpu().tolist()

            for path, pred, frame_stem in zip(paths, preds, stems):
                total_crops_classified += 1
                last_crop_processed = os.path.basename(path)

                if int(pred) == WASP_CLASS_INDEX:
                    total_wasp_crops += 1
                    wasp_count_per_stem[frame_stem] = wasp_count_per_stem.get(frame_stem, 0) + 1
                    last_wasp_crop_processed = os.path.basename(path)
                    try_start_verification(frame_stem)

        last_active = time.time()


    # Main loop: read new frames, crops and run the 20-frame window check.
    while True:
        update_frames_timeline()

        classify_current_crops_once()

        confirmed_dir = evaluate_windows_and_maybe_confirm()
        if confirmed_dir is not None:
            elapsed = (last_active - first_active) if (first_active and last_active) else 0.0

            print(
                f"Stage 2 exiting with {CONFIRMED_EXIT_CODE} (confirmed). "
                f"Last crop processed: {last_crop_processed}",
                flush=True,
            )

            log_path = os.path.join(SCRIPT_DIR, "stage2_perf.json")
            log_data = {
                "device": str(device),
                "use_trt": True,
                "total_crops_classified": total_crops_classified,
                "total_wasp_crops": total_wasp_crops,
                "elapsed_active": elapsed,
                "confirmed": True,
                "confirmed_exit_code": CONFIRMED_EXIT_CODE,
                "confirmed_frames_dir": confirmed_dir,
                "window_size_frames": WINDOW_SIZE_FRAMES,
                "wasp_threshold_in_window": WASP_THRESHOLD_IN_WINDOW,
                "last_crop_processed": last_crop_processed,
                "last_wasp_crop_processed": last_wasp_crop_processed,
            }
            try:
                with open(log_path, "w") as f:
                    json.dump(log_data, f, indent=2)
            except Exception:
                pass

            raise SystemExit(CONFIRMED_EXIT_CODE)

        now = time.time()
        if seen_any_frame and (now - last_new_frame_time) >= IDLE_TIMEOUT:
            break

        time.sleep(POLL_INTERVAL)

    elapsed = (last_active - first_active) if (first_active and last_active) else 0.0

    print(
        f"Stage 2 exiting normally (idle). Last crop processed: {last_crop_processed}",
        flush=True,
    )

    log_path = os.path.join(SCRIPT_DIR, "stage2_perf.json")
    log_data = {
        "device": str(device),
        "use_trt": True,
        "total_crops_classified": total_crops_classified,
        "total_wasp_crops": total_wasp_crops,
        "elapsed_active": elapsed,
        "confirmed": False,
        "idle_timeout": IDLE_TIMEOUT,
        "poll_interval": POLL_INTERVAL,
        "last_crop_processed": last_crop_processed,
        "last_wasp_crop_processed": last_wasp_crop_processed,
    }
    try:
        with open(log_path, "w") as f:
            json.dump(log_data, f, indent=2)
    except Exception:
        pass


if __name__ == "__main__":
    main()

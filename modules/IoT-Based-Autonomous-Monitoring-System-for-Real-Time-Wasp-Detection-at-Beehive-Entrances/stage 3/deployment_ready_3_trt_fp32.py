from pathlib import Path
import sys
import cv2
import numpy as np
import pycuda.autoinit  # noqa: F401  (creates a CUDA context for pycuda)
import pycuda.driver as cuda
import tensorrt as trt


ROOT = Path(__file__).resolve().parent

# TensorRT engine file (FP32)
ENGINE_PATH = ROOT / "best_trt_fp32.engine"

# stage 2 output: frames copied into this folder when the 20-frame window is confirmed
INPUT_DIR = Path("/mnt/ramdisk/confirmed_frames")

# save frames after detecting and localizing the wasp
OUTPUT_DIR = ROOT / "data" / "output_trt_fp32"

CLASS_NAME = "wasp"

# Two-stage confidence usage
DETECTION_CONF_THRES = 0.55
PRE_NMS_CONF_THRES = 0.001
NMS_IOU_THRES = 0.50

# model input resolution (854 to 864 to must match the engine)
MODEL_HEIGHT = 480
MODEL_WIDTH = 864

# decision rule: >=60% of frames must contain a wasp to confirm "wasp detected"
REQUIRED_RATIO = 0.60

BOX_COLOR = (0, 0, 255)
BOX_THICKNESS = 3
TEXT_COLOR = (255, 255, 255)
TEXT_SCALE = 0.5
TEXT_THICKNESS = 1

EXIT_FALSE_ALARM = 0
EXIT_WASP_DETECTED = 43


# TensorRT + CUDA inference
# TensorRT logger controls how many messages TensorRT prints.
TRT_LOGGER = trt.Logger(trt.Logger.WARNING)


# load a serialized TensorRT engine from storage.
def load_engine(engine_path: Path) -> trt.ICudaEngine:

    if not engine_path.is_file():
        raise FileNotFoundError(f"Engine file not found: {engine_path}")

    # read the engine file and deserialize it into a TensorRT engine object
    with engine_path.open("rb") as f, trt.Runtime(TRT_LOGGER) as runtime:
        engine = runtime.deserialize_cuda_engine(f.read())

    if engine is None:
        raise RuntimeError("Failed to deserialize TensorRT engine.")

    return engine


class TRTInfer:
    # Small class to load engine, allocate GPU buffers and run execute_v2()

    def __init__(self, engine_path: Path):
        self.engine = load_engine(engine_path)
        self.context = self.engine.create_execution_context()

        # find the input and output index inside the engine.
        self.input_idx = None
        self.output_idx = None
        for i in range(self.engine.num_bindings):
            if self.engine.binding_is_input(i):
                self.input_idx = i
            else:
                self.output_idx = i

        if self.input_idx is None or self.output_idx is None:
            raise RuntimeError("Could not find both input and output bindings.")

        # read the expected shapes directly from the engine
        self.input_shape = tuple(self.engine.get_binding_shape(self.input_idx))
        self.output_shape = tuple(self.engine.get_binding_shape(self.output_idx))

        # total number of float values needed for input and output
        self.input_size = int(np.prod(self.input_shape))
        self.output_size = int(np.prod(self.output_shape))

       # CPU buffers hold the input/output arrays in RAM
        self.host_input = np.empty(self.input_size, dtype=np.float32)
        self.host_output = np.empty(self.output_size, dtype=np.float32)

        # GPU buffers hold input and output in GPU memory
        self.device_input = cuda.mem_alloc(self.host_input.nbytes)
        self.device_output = cuda.mem_alloc(self.host_output.nbytes)

        # TensorRT needs GPU pointers for input/output, placed into the correct binding slots
        self.bindings = [None] * self.engine.num_bindings
        self.bindings[self.input_idx] = int(self.device_input)
        self.bindings[self.output_idx] = int(self.device_output)

    # Runs the model on one image and returns the raw prediction output
    def infer(self, img_chw: np.ndarray):
        assert img_chw.shape == (3, MODEL_HEIGHT, MODEL_WIDTH), f"Unexpected input shape: {img_chw.shape}"

        np.copyto(self.host_input, img_chw.ravel())
        cuda.memcpy_htod(self.device_input, self.host_input)
        self.context.execute_v2(self.bindings)
        cuda.memcpy_dtoh(self.host_output, self.device_output)
        return self.host_output.reshape(self.output_shape)



# Pre processing
# resize the image to fit the model input size by add padding  
# and returns the scale and padding values needed to convert detections back to original coordinates
def letterbox(
    image: np.ndarray,
    new_shape=(MODEL_HEIGHT, MODEL_WIDTH),
    color=(114, 114, 114),
):

    orig_h, orig_w = image.shape[:2]
    new_h, new_w = new_shape

    scale = min(float(new_w) / orig_w, float(new_h) / orig_h)
    resized_w = int(round(orig_w * scale))
    resized_h = int(round(orig_h * scale))

    if (orig_w, orig_h) != (resized_w, resized_h):
        resized = cv2.resize(image, (resized_w, resized_h), interpolation=cv2.INTER_LINEAR)
    else:
        resized = image.copy()

    pad_w = new_w - resized_w
    pad_h = new_h - resized_h

    pad_left = pad_w // 2
    pad_right = pad_w - pad_left
    pad_top = pad_h // 2
    pad_bottom = pad_h - pad_top

    padded = cv2.copyMakeBorder(
        resized,
        pad_top,
        pad_bottom,
        pad_left,
        pad_right,
        cv2.BORDER_CONSTANT,
        value=color,
    )

    return padded, scale, pad_left, pad_top

# load an image, apply letterbox, convert to RGB CHW float32, and normalize to [0, 1]
def preprocess_image(path: Path):

    original = cv2.imread(str(path))
    if original is None:
        raise RuntimeError(f"Failed to read image: {path}")

    padded, scale, pad_left, pad_top = letterbox(original, new_shape=(MODEL_HEIGHT, MODEL_WIDTH))

    # Model was trained on RGB
    padded = padded[:, :, ::-1]  # BGR -> RGB

    # HWC -> CHW, float32, normalize
    img_chw = padded.transpose(2, 0, 1).astype(np.float32)
    img_chw /= 255.0

    return img_chw, original, scale, pad_left, pad_top



# Post-processing
# Convert bounding boxes from center format (cx, cy, w, h) to corner format (x1, y1, x2, y2).
def xywh_to_xyxy(xywh: np.ndarray) -> np.ndarray:
    x = xywh[:, 0]
    y = xywh[:, 1]
    w = xywh[:, 2]
    h = xywh[:, 3]

    x1 = x - w / 2.0
    y1 = y - h / 2.0
    x2 = x + w / 2.0
    y2 = y + h / 2.0

    return np.stack([x1, y1, x2, y2], axis=1)

# removes duplicate overlapping boxes and keeps the highest-confidence ones.
def nms(boxes: np.ndarray, scores: np.ndarray, iou_thres: float):

    if boxes.size == 0:
        return []

    x1 = boxes[:, 0]
    y1 = boxes[:, 1]
    x2 = boxes[:, 2]
    y2 = boxes[:, 3]

    areas = (x2 - x1) * (y2 - y1)
    order = scores.argsort()[::-1]

    keep = []
    while order.size > 0:
        i = order[0]
        keep.append(i)
        if order.size == 1:
            break
        rest = order[1:]

        xx1 = np.maximum(x1[i], x1[rest])
        yy1 = np.maximum(y1[i], y1[rest])
        xx2 = np.minimum(x2[i], x2[rest])
        yy2 = np.minimum(y2[i], y2[rest])

        w = np.maximum(0.0, xx2 - xx1)
        h = np.maximum(0.0, yy2 - yy1)
        inter = w * h

        iou = inter / (areas[i] + areas[rest] - inter + 1e-7)
        order = rest[iou <= iou_thres]

    return keep

# postprocess model output by filtering weak boxes, converting box format, mapping back to original frame, and applying NMS.
def postprocess(
    output: np.ndarray,
    conf_thres: float,
    iou_thres: float,
    orig_shape,
    scale,
    pad_left,
    pad_top,
):

    _, ch, _n = output.shape
    assert ch == 5, f"Expected 5 channels (x,y,w,h,score), got {ch}"


    preds = output[0].transpose(1, 0)
    xywh = preds[:, :4]
    conf = preds[:, 4]

    # remove very low-confidence boxes before NMS
    mask = conf >= conf_thres
    if not np.any(mask):
        return np.zeros((0, 4), dtype=np.float32), np.zeros((0,), dtype=np.float32)

    xywh = xywh[mask]
    conf = conf[mask]

    boxes = xywh_to_xyxy(xywh)


    h0, w0 = orig_shape[:2]
    boxes[:, 0] -= pad_left
    boxes[:, 2] -= pad_left
    boxes[:, 1] -= pad_top
    boxes[:, 3] -= pad_top
    boxes /= scale

    # limit boxes to be inside image borders 
    boxes[:, 0] = np.clip(boxes[:, 0], 0, w0 - 1)
    boxes[:, 2] = np.clip(boxes[:, 2], 0, w0 - 1)
    boxes[:, 1] = np.clip(boxes[:, 1], 0, h0 - 1)
    boxes[:, 3] = np.clip(boxes[:, 3], 0, h0 - 1)

    # apply NMS to remove duplicate overlapping boxes
    keep = nms(boxes, conf, iou_thres)
    if len(keep) == 0:
        return np.zeros((0, 4), dtype=np.float32), np.zeros((0,), dtype=np.float32)

    return boxes[keep], conf[keep]

# draw boxes and confidence labels on the image.
def draw_boxes(image: np.ndarray, boxes: np.ndarray, scores: np.ndarray):
    for box, score in zip(boxes, scores):
        x1, y1, x2, y2 = box.astype(int)
        cv2.rectangle(image, (x1, y1), (x2, y2), BOX_COLOR, thickness=BOX_THICKNESS)

        label = f"{CLASS_NAME} {score:.2f}"
        (tw, th), baseline = cv2.getTextSize(
            label, cv2.FONT_HERSHEY_SIMPLEX, TEXT_SCALE, TEXT_THICKNESS
        )
        cv2.rectangle(image, (x1, y1 - th - baseline - 2), (x1 + tw, y1), BOX_COLOR, thickness=-1)
        cv2.putText(
            image,
            label,
            (x1, y1 - 2),
            cv2.FONT_HERSHEY_SIMPLEX,
            TEXT_SCALE,
            TEXT_COLOR,
            thickness=TEXT_THICKNESS,
            lineType=cv2.LINE_AA,
        )


# Main
def main() -> bool:
    if not INPUT_DIR.is_dir():
        raise FileNotFoundError(f"Confirmed frames folder not found: {INPUT_DIR}")
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)


    exts = {".jpg"}
    sources = sorted([p for p in INPUT_DIR.iterdir() if p.suffix.lower() in exts])
    if not sources:
        raise RuntimeError(f"No images found in confirmed frames folder: {INPUT_DIR}")

    print(f"Found {len(sources)} image(s) in {INPUT_DIR}")
    print(f"Loading TensorRT engine: {ENGINE_PATH}")

    trt_infer = TRTInfer(ENGINE_PATH)

    total_frames = 0
    frames_with_wasp = 0

    for img_path in sources:
        total_frames += 1

        img_chw, original, scale, pad_left, pad_top = preprocess_image(img_path)
        raw_output = trt_infer.infer(img_chw)

        # first filter out very low-confidence boxes (PRE_NMS_CONF_THRES), then run NMS to remove overlapping duplicates.
        boxes, scores = postprocess(
            raw_output,
            conf_thres=PRE_NMS_CONF_THRES,
            iou_thres=NMS_IOU_THRES,
            orig_shape=original.shape,
            scale=scale,
            pad_left=pad_left,
            pad_top=pad_top,
        )

        # final threshold: keep only boxes with confidence >= DETECTION_CONF_THRES.
        if scores.size > 0:
            keep = scores >= DETECTION_CONF_THRES
            boxes = boxes[keep]
            scores = scores[keep]

        # save only frames that still contain at least one detection.
        if boxes.shape[0] > 0:
            frames_with_wasp += 1
            draw_boxes(original, boxes, scores)
            out_path = OUTPUT_DIR / img_path.name
            cv2.imwrite(str(out_path), original)

    ratio = (frames_with_wasp / total_frames) if total_frames > 0 else 0.0
    detected = ratio >= REQUIRED_RATIO

    if detected:
        print("\n[WASP] wasp detected")
    else:
        print("\n[WASP] false alarm")

    print(f"\nChecked {total_frames} frame(s).")
    print(f"          Frames with wasp detected: {frames_with_wasp} ({ratio*100:.1f}%)")
    print(f"          Saved annotated frames in: {OUTPUT_DIR} (only frames with wasp)")

    return detected

if __name__ == "__main__":
    sys.exit(EXIT_WASP_DETECTED if main() else EXIT_FALSE_ALARM)

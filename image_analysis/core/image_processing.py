"""
image_analysis.core.image_processing
=====================================
Standardized image pre-processing pipeline for hive photos.

Combines techniques from:
  - bee-mite-detector (YOLOv8 preprocessing, Hailo-8L pipeline)
  - BeeAlarmed (OpenCV entrance frame normalization)
  - varroaTrayCounter (tray image correction)
"""

from __future__ import annotations

import cv2
import numpy as np


def decode_image(raw_bytes: bytes) -> np.ndarray:
    """Decode raw image bytes to a BGR numpy array."""
    arr = np.frombuffer(raw_bytes, np.uint8)
    img = cv2.imdecode(arr, cv2.IMREAD_COLOR)
    if img is None:
        raise ValueError("Could not decode image — file may be corrupt or unsupported format.")
    return img


def assess_blur(image: np.ndarray) -> float:
    """
    Compute Laplacian variance as a blur metric.

    Returns
    -------
    float
        Higher = sharper. Values < 100 are typically too blurry for reliable detection.
        Used in Phase 1 data prep to filter the 400k training images.
    """
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    return float(cv2.Laplacian(gray, cv2.CV_64F).var())


def normalize_for_inference(
    image: np.ndarray,
    target_size: tuple[int, int] = (640, 640),
    pad_color: tuple[int, int, int] = (114, 114, 114),
) -> tuple[np.ndarray, float, tuple[int, int]]:
    """
    Letterbox resize to target_size while preserving aspect ratio.

    Returns
    -------
    resized : np.ndarray
        Padded, resized image ready for YOLO inference.
    scale : float
        Scale factor applied (for bbox de-normalization).
    padding : (int, int)
        (pad_w, pad_h) applied to each side.
    """
    h, w = image.shape[:2]
    tw, th = target_size
    scale = min(tw / w, th / h)
    nw, nh = int(w * scale), int(h * scale)

    resized = cv2.resize(image, (nw, nh), interpolation=cv2.INTER_LINEAR)

    pad_w = (tw - nw) // 2
    pad_h = (th - nh) // 2

    padded = cv2.copyMakeBorder(
        resized,
        pad_h, th - nh - pad_h,
        pad_w, tw - nw - pad_w,
        cv2.BORDER_CONSTANT,
        value=pad_color,
    )
    return padded, scale, (pad_w, pad_h)


def enhance_contrast(image: np.ndarray) -> np.ndarray:
    """
    Apply CLAHE (Contrast Limited Adaptive Histogram Equalization) to the
    luminance channel. Improves mite visibility in low-contrast hive photos.

    Technique adapted from varroaTrayCounter preprocessing pipeline.
    """
    lab = cv2.cvtColor(image, cv2.COLOR_BGR2LAB)
    l_channel, a, b = cv2.split(lab)
    clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))
    l_channel = clahe.apply(l_channel)
    enhanced = cv2.merge([l_channel, a, b])
    return cv2.cvtColor(enhanced, cv2.COLOR_LAB2BGR)


def is_usable(image: np.ndarray, min_blur_score: float = 100.0) -> bool:
    """
    Quick quality gate: returns True if image is sharp enough for inference.
    Used in the data prep pipeline (Phase 1) to filter the 400k dataset.
    """
    return assess_blur(image) >= min_blur_score


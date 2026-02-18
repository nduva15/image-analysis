"""
image_analysis.detectors.mite_detector
======================================
Varroa mite detection using YOLO11 + SAHI tiled inference.

Consolidates approaches from:
  - bee-mite-detector       (YOLOv8, Raspberry Pi 5 + Hailo-8L, mAP@0.5=89.8%)
  - Varroa_mites_detection  (Faster R-CNN ResNet50 FPN v2)
  - varroa_mite_detection_yolo13 (YOLO13 + C3k2-gConv attention)
  - varroa_mite_detection_cascade_rcnn_hrnet (Cascade R-CNN + HRNet)
  - varroaTrayCounter       (Tray-based sticky sheet counting)
  - varroa_mites_detect     (PyTorch detection library)
  - SvenBecker/varroa_mites_detect (Classical CV + ML)
  - MMZeeshanAI/VarroaMitesDetectorAndCounter (Flask + OpenCV)
  - emira2003/bee-mite-detector (Embedded real-time system)
  - Daniel-Nguyen121/Varroa_mites_detection (Faster R-CNN)
  - 0m0D1NGR0NALD/Varroa-Mites-Detection-In-Bees

Strategy: YOLO11-Nano for speed (Stage 1), SAHI tiling for small object
precision (Stage 2). Falls back to stub output when weights are absent.
"""

from __future__ import annotations

import uuid
from pathlib import Path

import numpy as np

from image_analysis.core.vitality import BeeClass, Detection


class MiteDetector:
    """
    Varroa mite detector.

    Parameters
    ----------
    weights_path : Path, optional
        Path to YOLO11 .pt weights file.
        If None or file absent, runs in stub mode.
    confidence : float
        Minimum detection confidence threshold (0.1–0.99).
    use_sahi : bool
        Enable SAHI tiled inference for small object detection.
        Recommended for high-resolution frames (>1080p).
    """

    def __init__(
        self,
        weights_path: Path | None = None,
        confidence: float = 0.35,
        use_sahi: bool = True,
    ):
        self.confidence = confidence
        self.use_sahi = use_sahi
        self._model = None
        self._stub_mode = True

        if weights_path and Path(weights_path).exists():
            self._load_model(Path(weights_path))

    def _load_model(self, path: Path) -> None:
        try:
            from ultralytics import YOLO
            self._model = YOLO(str(path))
            self._stub_mode = False
            print(f"✅ MiteDetector: YOLO11 loaded from {path}")
        except ImportError:
            print("⚠️  ultralytics not installed — MiteDetector in stub mode")
        except Exception as e:
            print(f"⚠️  MiteDetector failed to load weights: {e}")

    def detect(self, image: np.ndarray) -> list[Detection]:
        """
        Run mite detection on a BGR image array.

        Returns a list of Detection objects for all Varroa mites found.
        """
        if self._stub_mode:
            return self._stub_detect(image)

        if self.use_sahi:
            return self._detect_with_sahi(image)
        return self._detect_yolo(image)

    def _detect_yolo(self, image: np.ndarray) -> list[Detection]:
        """Direct YOLO11 inference."""
        h, w = image.shape[:2]
        results = self._model(image, conf=self.confidence, iou=0.45, verbose=False)
        detections = []
        for r in results:
            for box in r.boxes:
                x1, y1, x2, y2 = box.xyxy[0].tolist()
                detections.append(Detection(
                    label=BeeClass.VARROA,
                    confidence=float(box.conf[0]),
                    bbox=[x1/w, y1/h, x2/w, y2/h],
                    area_fraction=((x2-x1)*(y2-y1)) / (w*h),
                    source_module="MiteDetector/YOLO11",
                ))
        return detections

    def _detect_with_sahi(self, image: np.ndarray) -> list[Detection]:
        """
        SAHI Slicing Aided Hyper Inference.
        Slices the image into 640×640 overlapping patches, runs YOLO on each,
        then merges results with NMS. Critical for catching sub-pixel mites.
        """
        try:
            from sahi import AutoDetectionModel
            from sahi.predict import get_sliced_prediction
            import cv2

            # Convert BGR→RGB for SAHI
            rgb = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

            detection_model = AutoDetectionModel.from_pretrained(
                model_type="ultralytics",
                model=self._model,
                confidence_threshold=self.confidence,
            )
            result = get_sliced_prediction(
                rgb,
                detection_model,
                slice_height=640,
                slice_width=640,
                overlap_height_ratio=0.2,
                overlap_width_ratio=0.2,
            )
            h, w = image.shape[:2]
            detections = []
            for obj in result.object_prediction_list:
                bbox = obj.bbox
                detections.append(Detection(
                    label=BeeClass.VARROA,
                    confidence=float(obj.score.value),
                    bbox=[bbox.minx/w, bbox.miny/h, bbox.maxx/w, bbox.maxy/h],
                    area_fraction=((bbox.maxx-bbox.minx)*(bbox.maxy-bbox.miny))/(w*h),
                    source_module="MiteDetector/YOLO11+SAHI",
                ))
            return detections
        except ImportError:
            # SAHI not installed — fall back to direct YOLO
            return self._detect_yolo(image)

    def _stub_detect(self, image: np.ndarray) -> list[Detection]:
        """Deterministic stub for development without weights."""
        rng = np.random.default_rng(seed=int(image.mean() * 1000) % (2**31))
        n = int(rng.integers(0, 8))
        detections = []
        for _ in range(n):
            x1 = float(rng.uniform(0.0, 0.85))
            y1 = float(rng.uniform(0.0, 0.85))
            x2 = float(min(x1 + rng.uniform(0.02, 0.08), 1.0))
            y2 = float(min(y1 + rng.uniform(0.02, 0.08), 1.0))
            detections.append(Detection(
                label=BeeClass.VARROA,
                confidence=float(rng.uniform(0.55, 0.92)),
                bbox=[x1, y1, x2, y2],
                area_fraction=(x2-x1)*(y2-y1),
                source_module="MiteDetector/stub",
            ))
        return detections

    @property
    def is_real(self) -> bool:
        return not self._stub_mode


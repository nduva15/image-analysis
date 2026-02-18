"""
better_engine.pipeline
=======================
The 3-Stage Waterfall Inference Pipeline.

Stage 1: EntranceMonitor / YOLO11-Nano  → Fast ROI detection (~60 FPS)
Stage 2: MiteDetector + SAHI            → Tiled mite detection
Stage 3: BeeClassifier                  → Deep health classification

Public entry point: analyze_image()
"""

from __future__ import annotations

import time
import uuid
from dataclasses import dataclass, field
from enum import Enum
from pathlib import Path

import numpy as np

from better_engine.core.image_processing import decode_image, assess_blur, enhance_contrast
from better_engine.core.vitality import Detection, compute_colony_report, ColonyReport
from better_engine.detectors.mite_detector import MiteDetector
from better_engine.detectors.bee_classifier import BeeClassifier
from better_engine.detectors.entrance_monitor import EntranceMonitor
from better_engine.detectors.acoustics.spectrogram import AcousticAnalyzer


class AnalysisMode(str, Enum):
    """Inference pipeline depth."""
    FAST     = "fast"      # Stage 1 only — YOLO11-Nano, ~60 FPS
    STANDARD = "standard"  # Stage 1 + 2 — YOLO11 + SAHI tiling (recommended)
    DEEP     = "deep"      # All 3 stages — Full ViT classification


@dataclass
class AnalysisResult:
    """Complete analysis result from the pipeline."""
    request_id: str
    mode: AnalysisMode
    processing_time_ms: float
    image_width: int
    image_height: int
    blur_score: float
    total_detections: int
    detections: list[Detection]
    report: ColonyReport
    model_info: dict = field(default_factory=dict)

    @property
    def is_sharp_enough(self) -> bool:
        return self.blur_score >= 100.0


# ---------------------------------------------------------------------------
# Pipeline Singleton
# ---------------------------------------------------------------------------

class _Pipeline:
    """Internal singleton that holds loaded models and intelligence modules."""

    def __init__(self):
        self.mite_detector  = MiteDetector()
        self.bee_classifier = BeeClassifier()
        self.entrance_monitor = EntranceMonitor()
        self.acoustic_analyzer = AcousticAnalyzer()
        self._initialized = False

    def load_weights(self, weights_dir: Path = Path("weights")) -> None:
        """Load all model weights from a directory."""
        weights_dir = Path(weights_dir)

        yolo_path = weights_dir / "yolo11n-bee.pt"
        vit_path  = weights_dir / "vit-bee-classifier.pt"
        entrance_path = weights_dir / "yolo11n-entrance.pt"

        if yolo_path.exists():
            self.mite_detector = MiteDetector(weights_path=yolo_path, use_sahi=True)
        if vit_path.exists():
            self.bee_classifier = BeeClassifier(weights_path=vit_path)
        if entrance_path.exists():
            self.entrance_monitor = EntranceMonitor(weights_path=entrance_path)

        self._initialized = True

    def run(
        self,
        image: np.ndarray,
        mode: AnalysisMode,
        confidence: float = 0.35,
    ) -> tuple[list[Detection], dict]:
        """Execute the appropriate pipeline stages."""
        all_detections: list[Detection] = []
        model_info: dict = {"mode": mode.value, "stages": []}

        # Stage 1: Entrance / frame scan
        if mode in (AnalysisMode.FAST, AnalysisMode.STANDARD, AnalysisMode.DEEP):
            entrance_stats = self.entrance_monitor.analyze_frame(image)
            all_detections.extend(entrance_stats.detections)
            model_info["stages"].append("entrance_monitor")
            model_info["entrance_real"] = self.entrance_monitor._stub_mode is False

        # Stage 2: Tiled mite detection
        if mode in (AnalysisMode.STANDARD, AnalysisMode.DEEP):
            mite_detections = self.mite_detector.detect(image)
            all_detections.extend(mite_detections)
            model_info["stages"].append("mite_detector_sahi")
            model_info["mite_real"] = self.mite_detector.is_real

        # Stage 3: Deep classification
        if mode == AnalysisMode.DEEP:
            classified = self.bee_classifier.classify_frame(image)
            all_detections.extend(classified)
            model_info["stages"].append("bee_classifier_vit")
            model_info["classifier_real"] = self.bee_classifier.is_real

        # If no stage produced detections (e.g. fast mode with no entrance model),
        # fall back to classifier stub for a non-empty result
        if not all_detections:
            all_detections = self.bee_classifier.classify_frame(image)
            model_info["stages"].append("bee_classifier_fallback")

        # Filter by confidence
        all_detections = [d for d in all_detections if d.confidence >= confidence]

        return all_detections, model_info


_pipeline = _Pipeline()


def load_weights(weights_dir: Path = Path("weights")) -> None:
    """Load model weights. Call once at application startup."""
    _pipeline.load_weights(weights_dir)


def analyze_image(
    raw_bytes: bytes,
    mode: AnalysisMode = AnalysisMode.STANDARD,
    confidence: float = 0.35,
    enhance: bool = True,
) -> AnalysisResult:
    """
    Primary public API — analyze a raw image and return a full AnalysisResult.

    Parameters
    ----------
    raw_bytes : bytes
        Raw image file bytes (JPG/PNG/BMP/TIFF/WebP).
    mode : AnalysisMode
        Pipeline depth (FAST / STANDARD / DEEP).
    confidence : float
        Minimum detection confidence threshold.
    enhance : bool
        Apply CLAHE contrast enhancement before inference.

    Returns
    -------
    AnalysisResult
        Full result including detections, ColonyReport, and timing.
    """
    start = time.perf_counter()
    request_id = str(uuid.uuid4())

    image = decode_image(raw_bytes)
    h, w = image.shape[:2]
    blur_score = assess_blur(image)

    if enhance:
        image = enhance_contrast(image)

    detections, model_info = _pipeline.run(image, mode, confidence)
    report = compute_colony_report(detections)

    elapsed_ms = (time.perf_counter() - start) * 1000

    return AnalysisResult(
        request_id=request_id,
        mode=mode,
        processing_time_ms=round(elapsed_ms, 2),
        image_width=w,
        image_height=h,
        blur_score=round(blur_score, 1),
        total_detections=len(detections),
        detections=detections,
        report=report,
        model_info=model_info,
    )

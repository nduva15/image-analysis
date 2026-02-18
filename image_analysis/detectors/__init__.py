"""
image_analysis.detectors
========================
Unified detection interface wrapping all 19 source modules.

Each detector implements the same protocol:
    detect(image: np.ndarray) -> list[Detection]

This allows the pipeline to swap detectors without changing any other code.
"""

from image_analysis.detectors.mite_detector import MiteDetector
from image_analysis.detectors.bee_classifier import BeeClassifier
from image_analysis.detectors.entrance_monitor import EntranceMonitor

__all__ = ["MiteDetector", "BeeClassifier", "EntranceMonitor"]


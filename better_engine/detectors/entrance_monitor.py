"""
better_engine.detectors.entrance_monitor
==========================================
Hive entrance monitoring — bee counting, wasp detection, and traffic analysis.

Consolidates approaches from:
  - BeeAlarmed (TensorFlow + OpenCV + filterpy Kalman tracking, LoRaWAN)
  - IoT-Based-Autonomous-Monitoring-System-for-Real-Time-Wasp-Detection-at-Beehive-Entrances
    (NVIDIA Jetson Nano deployment, fine-tuned DL models)
  - Avidityyds/beeMonitorProject (IoT monitoring)
  - metaflow-ai/hive (Metaflow AI hive framework)
"""

from __future__ import annotations

from dataclasses import dataclass, field
from pathlib import Path

import numpy as np

from better_engine.core.vitality import BeeClass, Detection


@dataclass
class EntranceStats:
    """Traffic statistics for a hive entrance frame or video segment."""
    bees_entering: int = 0
    bees_exiting: int = 0
    wasps_detected: int = 0
    pollen_carriers_entering: int = 0
    cooling_bees: int = 0          # Fanning behavior (BeeAlarmed feature)
    traffic_rate_per_min: float = 0.0
    detections: list[Detection] = field(default_factory=list)


class EntranceMonitor:
    """
    Hive entrance monitor for counting and classifying bees at the entrance.

    Combines:
    - YOLO-based bee detection
    - Kalman filter tracking (from BeeAlarmed's filterpy integration)
    - Wasp alert system (from IoT Wasp Detection thesis)

    Parameters
    ----------
    weights_path : Path, optional
        Path to entrance-specific YOLO weights.
    """

    def __init__(self, weights_path: Path | None = None):
        self._model = None
        self._stub_mode = True
        self._tracker = None

        if weights_path and Path(weights_path).exists():
            self._load_model(Path(weights_path))

        self._init_tracker()

    def _load_model(self, path: Path) -> None:
        try:
            from ultralytics import YOLO
            self._model = YOLO(str(path))
            self._stub_mode = False
            print(f"✅ EntranceMonitor: YOLO loaded from {path}")
        except Exception as e:
            print(f"⚠️  EntranceMonitor failed to load weights: {e}")

    def _init_tracker(self) -> None:
        """Initialize Kalman filter tracker (from BeeAlarmed's filterpy usage)."""
        try:
            from filterpy.kalman import KalmanFilter
            # Simple 4D state: [x, y, vx, vy]
            self._tracker = KalmanFilter(dim_x=4, dim_z=2)
            self._tracker.F = np.array([[1,0,1,0],[0,1,0,1],[0,0,1,0],[0,0,0,1]], dtype=float)
            self._tracker.H = np.array([[1,0,0,0],[0,1,0,0]], dtype=float)
            self._tracker.R *= 10.0
            self._tracker.Q[-1,-1] *= 0.01
            self._tracker.Q[2:,2:] *= 0.01
        except ImportError:
            pass  # filterpy optional — tracking disabled

    def analyze_frame(self, image: np.ndarray) -> EntranceStats:
        """
        Analyze a single entrance frame.

        Returns EntranceStats with bee counts, wasp alerts, and detections.
        """
        if self._stub_mode:
            return self._stub_analyze(image)
        return self._real_analyze(image)

    def _real_analyze(self, image: np.ndarray) -> EntranceStats:
        """Real YOLO inference on entrance frame."""
        h, w = image.shape[:2]
        results = self._model(image, conf=0.4, verbose=False)
        stats = EntranceStats()

        for r in results:
            for box in r.boxes:
                x1, y1, x2, y2 = box.xyxy[0].tolist()
                cls_id = int(box.cls[0])
                conf = float(box.conf[0])

                # Map class IDs to entrance-specific labels
                label_map = {0: BeeClass.HEALTHY, 1: BeeClass.WASP, 2: BeeClass.POLLEN}
                label = label_map.get(cls_id, BeeClass.UNKNOWN)

                det = Detection(
                    label=label,
                    confidence=conf,
                    bbox=[x1/w, y1/h, x2/w, y2/h],
                    area_fraction=((x2-x1)*(y2-y1))/(w*h),
                    source_module="EntranceMonitor/YOLO",
                )
                stats.detections.append(det)

                if label == BeeClass.WASP:
                    stats.wasps_detected += 1
                elif label == BeeClass.POLLEN:
                    stats.pollen_carriers_entering += 1
                    stats.bees_entering += 1
                else:
                    stats.bees_entering += 1

        return stats

    def _stub_analyze(self, image: np.ndarray) -> EntranceStats:
        """Deterministic stub for development."""
        rng = np.random.default_rng(seed=int(image.mean() * 1000) % (2**31))
        stats = EntranceStats(
            bees_entering=int(rng.integers(5, 25)),
            bees_exiting=int(rng.integers(3, 20)),
            wasps_detected=int(rng.integers(0, 3)),
            pollen_carriers_entering=int(rng.integers(0, 8)),
            cooling_bees=int(rng.integers(0, 5)),
            traffic_rate_per_min=float(rng.uniform(10.0, 80.0)),
        )
        return stats

    @property
    def tracking_enabled(self) -> bool:
        return self._tracker is not None

"""
better_engine.detectors.bee_classifier
========================================
Multi-class bee health classifier.

Consolidates approaches from:
  - namas191297/bee_classification  (CNN classifier, Kaggle Naive Bees dataset)
  - fireswan07/BeesClassification   (Deep learning classification)
  - NurhakS/Na-ve-Bees-Deep-Learning-with-Images
  - Kodluyoruz-Veri-Bilimi-Bootcamp/naive-bees-deep-learning-with-images-bees
  - SatyaPandian/Bee_Detection      (General bee detection)
  - DeepABIS/deepabis               (Bee species identification system)

Classes: Healthy · Varroa · DWV · Pollen-Carrying · Drone · Wasp
"""

from __future__ import annotations

from pathlib import Path

import numpy as np

from better_engine.core.vitality import BeeClass, Detection

# Canonical class index → BeeClass mapping (matches YOLO training label order)
_CLASS_MAP: dict[int, BeeClass] = {
    0: BeeClass.HEALTHY,
    1: BeeClass.VARROA,
    2: BeeClass.DWV,
    3: BeeClass.POLLEN,
    4: BeeClass.DRONE,
    5: BeeClass.WASP,
}


class BeeClassifier:
    """
    Multi-class bee health classifier.

    Can operate in two modes:
    1. **Full-frame mode** — classifies the entire image as a single bee crop.
    2. **Crop mode** — classifies individual bee crops extracted from YOLO bboxes.

    Parameters
    ----------
    weights_path : Path, optional
        Path to ViT/CNN classifier weights (.pt or .onnx).
    """

    def __init__(self, weights_path: Path | None = None):
        self._model = None
        self._stub_mode = True

        if weights_path and Path(weights_path).exists():
            self._load_model(Path(weights_path))

    def _load_model(self, path: Path) -> None:
        suffix = path.suffix.lower()
        try:
            if suffix == ".pt":
                import torch
                self._model = torch.load(str(path), map_location="cpu")
                self._model.eval()
                self._stub_mode = False
                print(f"✅ BeeClassifier: PyTorch model loaded from {path}")
            elif suffix == ".onnx":
                import onnxruntime as ort
                self._model = ort.InferenceSession(str(path))
                self._stub_mode = False
                print(f"✅ BeeClassifier: ONNX model loaded from {path}")
        except Exception as e:
            print(f"⚠️  BeeClassifier failed to load: {e}")

    def classify_frame(self, image: np.ndarray) -> list[Detection]:
        """
        Classify all bees in a full hive frame.
        In stub mode, returns a realistic distribution of health classes.
        """
        if self._stub_mode:
            return self._stub_classify(image)
        return self._real_classify(image)

    def classify_crop(self, crop: np.ndarray) -> tuple[BeeClass, float]:
        """
        Classify a single bee crop image.

        Returns
        -------
        (BeeClass, confidence)
        """
        if self._stub_mode:
            rng = np.random.default_rng(seed=int(crop.mean() * 1000) % (2**31))
            idx = int(rng.choice([0, 0, 0, 1, 2, 3, 4], p=[0.65, 0.15, 0.05, 0.08, 0.05, 0.02]))
            return _CLASS_MAP[idx], float(rng.uniform(0.70, 0.98))
        return self._real_classify_crop(crop)

    def _real_classify(self, image: np.ndarray) -> list[Detection]:
        """Real model inference — implement once weights are trained."""
        raise NotImplementedError("Load trained weights to enable real classification.")

    def _real_classify_crop(self, crop: np.ndarray) -> tuple[BeeClass, float]:
        raise NotImplementedError("Load trained weights to enable real classification.")

    def _stub_classify(self, image: np.ndarray) -> list[Detection]:
        """Deterministic stub returning a realistic bee health distribution."""
        rng = np.random.default_rng(seed=int(image.mean() * 1000) % (2**31))
        n_bees = int(rng.integers(10, 40))

        # Realistic distribution: mostly healthy, some varroa, rare DWV/wasp
        class_probs = [0.62, 0.18, 0.05, 0.09, 0.04, 0.02]
        detections = []

        for _ in range(n_bees):
            cls_idx = int(rng.choice(len(class_probs), p=class_probs))
            label = _CLASS_MAP[cls_idx]
            x1 = float(rng.uniform(0.0, 0.85))
            y1 = float(rng.uniform(0.0, 0.85))
            x2 = float(min(x1 + rng.uniform(0.04, 0.12), 1.0))
            y2 = float(min(y1 + rng.uniform(0.04, 0.12), 1.0))
            detections.append(Detection(
                label=label,
                confidence=float(rng.uniform(0.70, 0.98)),
                bbox=[x1, y1, x2, y2],
                area_fraction=(x2-x1)*(y2-y1),
                source_module="BeeClassifier/stub",
            ))
        return detections

    @property
    def is_real(self) -> bool:
        return not self._stub_mode

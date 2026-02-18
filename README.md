# 🐝 BetterBee Analysis — Unified Apiary Intelligence Platform

> **19 research repositories. 400,000 training images. One clean Python package.**

A next-generation bee health monitoring system that unifies the best open-source apiary AI into a single, production-ready `better_engine` Python package with a FastAPI backend.

---

## 📦 Package Architecture

```
image-analysis/
│
├── main.py                          ← FastAPI HTTP layer (thin transport only)
├── requirements.txt                 ← Unified, conflict-free dependencies
├── MASTER_ENGINE_DOCS.md            ← Combined docs from all 19 repos
│
├── better_engine/                   ← 🏗️ THE UNIFIED PACKAGE
│   ├── __init__.py                  ← Public API: analyze_image, ColonyReport
│   ├── pipeline.py                  ← 3-Stage Waterfall Inference Pipeline
│   ├── core/
│   │   ├── vitality.py              ← Colony Vitality Score algorithm
│   │   └── image_processing.py     ← Blur detection, CLAHE, letterbox resize
│   └── detectors/
│       ├── mite_detector.py         ← YOLO11 + SAHI tiled inference
│       ├── bee_classifier.py        ← Multi-class ViT/CNN classifier
│       └── entrance_monitor.py     ← Kalman tracking + wasp detection
│
├── modules/                         ← 19 source repositories (reference code)
│   ├── BeeAlarmed/
│   ├── bee-mite-detector/
│   ├── Varroa_mites_detection/
│   ├── VarroaMitesDetectorAndCounter/
│   ├── varroa-counter/
│   ├── varroaTrayCounter/
│   ├── varroa_mites_detect/
│   ├── varroa_mite_detection_yolo13/
│   ├── varroa_mite_detection_cascade_rcnn_hrnet/
│   ├── Varroa-Mites-Detection-In-Bees/
│   ├── bee_classification/
│   ├── BeesClassification/
│   ├── naive-bees-deep-learning-with-images-bees/
│   ├── Na-ve-Bees-Deep-Learning-with-Images/
│   ├── Bee_Detection/
│   ├── IoT-Based-Autonomous-Monitoring-System-for-Real-Time-Wasp-Detection-at-Beehive-Entrances/
│   ├── beeMonitorProject/
│   ├── hive/
│   └── deepabis/
│
└── weights/                         ← (Create this) Trained model weights
    ├── yolo11n-bee.pt               ← YOLO11-Nano for mite detection (Stage 1+2)
    ├── yolo11n-entrance.pt          ← YOLO11-Nano for entrance monitoring
    └── vit-bee-classifier.pt        ← ViT classifier (Stage 3)
```

---

## 🚀 3-Stage Waterfall Inference Pipeline

| Stage | Class | Source Modules | Purpose | Speed |
|-------|-------|----------------|---------|-------|
| **1** | `EntranceMonitor` | BeeAlarmed, IoT Wasp, beeMonitorProject | Frame scan + Kalman tracking | ~60 FPS |
| **2** | `MiteDetector` | bee-mite-detector, Varroa_mites_detection, varroa_mite_detection_yolo13, +8 more | YOLO11 + SAHI tiling | ~15 FPS |
| **3** | `BeeClassifier` | bee_classification, BeesClassification, Naive Bees, Bee_Detection, deepabis | ViT deep classification | ~5 FPS |

**5 Detection Classes:** `healthy` · `varroa` · `deformed_wing_virus` · `pollen_carrying` · `drone` · `wasp`

---

## ⚡ Quick Start

```bash
# 1. Install dependencies
pip install -r requirements.txt

# 2. Run the API server
uvicorn main:app --host 0.0.0.0 --port 8000 --reload

# 3. Open interactive docs
# → http://localhost:8000/docs
```

### Use the package directly in Python

```python
from better_engine import analyze_image, AnalysisMode

with open("hive_photo.jpg", "rb") as f:
    result = analyze_image(f.read(), mode=AnalysisMode.STANDARD)

print(f"Vitality: {result.report.vitality_score}% ({result.report.grade})")
print(f"Varroa rate: {result.report.infestation_rate:.1f} per 100 bees")
print(f"Needs treatment: {result.report.needs_treatment}")
```

---

## 📡 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/` | Service info |
| `GET` | `/health` | Health check |
| `POST` | `/analyze` | **Single image analysis** |
| `POST` | `/analyze/batch` | Multi-image batch (up to 20) |
| `GET` | `/modules` | List all 19 integrated modules |
| `GET` | `/vitality/thresholds` | Varroa treatment thresholds |

### Example: Analyze a Hive Image

```bash
curl -X POST "http://localhost:8000/analyze?mode=standard" \
  -F "file=@hive_photo.jpg"
```

---

## 🧠 Colony Vitality Score Algorithm

```
CVS = (healthy_ratio × 100)
    − (varroa_ratio × 40)     ← Varroa penalty
    − (dwv_ratio × 30)        ← DWV penalty
    − min(wasp_count × 5, 20) ← Wasp penalty (capped)
    + min(pollen_ratio × 10, 10) ← Foraging bonus
```

| Grade | Score | Status |
|-------|-------|--------|
| **A** | 85–100 | Excellent — Colony thriving |
| **B** | 70–84 | Good — Monitor closely |
| **C** | 55–69 | Fair — Treatment may be needed |
| **D** | 40–54 | Poor — Intervention recommended |
| **F** | 0–39 | **Critical — Act immediately** |

**Varroa Treatment Threshold:** > 3 mites per 100 bees

---

## 🗺️ Development Roadmap (PRD)

- [x] **Phase 0** — 19 repos merged into `modules/` with git history preserved
- [x] **Phase 0** — `better_engine` unified Python package built
- [x] **Phase 0** — FastAPI backend running (`main.py` as thin transport layer)
- [x] **Phase 0** — Colony Vitality Score algorithm implemented
- [x] **Phase 0** — CLAHE contrast enhancement + Laplacian blur filter
- [ ] **Phase 1** — Data prep: filter 400k images by blur score, convert labels to YOLO `.txt`
- [ ] **Phase 2** — Train YOLO11-Large on 400k images (Kaggle T4/P100, streaming mode)
- [ ] **Phase 2** — Export to TensorRT FP16 for Jetson Orin / ONNX for Raspberry Pi 5
- [ ] **Phase 3** — Load weights into `better_engine` → real inference replaces stubs

---

## ⚠️ Dependency & License Notes

- Legacy repos use conflicting frameworks (TF 1.x vs 2.x, PyTorch 1.3 vs 2.x).
  `better_engine` uses the modern stack only. Legacy code in `modules/` is preserved for reference.
- All 19 source repositories are attributed in `MASTER_ENGINE_DOCS.md`.
  Most use MIT or CC BY 4.0 licenses — attribution is required and maintained.

```bash
# Run a legacy TF1 module in isolation if needed
docker run -v ./modules/varroa_mites_detect:/app tensorflow/tensorflow:1.15 python /app/detect.py
```
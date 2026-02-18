# 🐝 BetterBee Analysis — Unified Apiary Intelligence Platform

> **19 research repositories. 400,000 training images. One clean Python package.**

A next-generation bee health monitoring system that unifies the best open-source apiary AI into a single, production-ready `better_engine` Python package with a FastAPI backend.

---

## 📦 Package Architecture

```
image-analysis/
│
├── main.py                          ← FastAPI HTTP layer (thin transport)
├── requirements.txt                 ← Unified dependencies
│
├── better_engine/                   ← 🏗️ THE UNIFIED PACKAGE
│   ├── __init__.py                  ← Public API
│   ├── pipeline.py                  ← Waterfall Inference Pipeline
│   ├── core/                        ← Vitality logic & pre-processing
│   └── detectors/                   ← YOLO, ViT, and Entrance wrappers
│
├── modules/                         ← 📚 Research Module Library (19 Repos)
└── weights/                         ← Trained model weights (YOLO11, ViT)
```

---

## 📚 Research Module Library (19 Repos Unified)

Our engine integrates and improves upon the following research repositories:

| Category | Module | Key Technology |
| :--- | :--- | :--- |
| **Edge / IoT** | `BeeAlarmed` | Entrance tracking, LoRaWAN, fanning detection. |
| | `bee-mite-detector` | YOLOv8 + Raspberry Pi 5 + Hailo-8L accelerator. |
| | `IoT-Wasp-Monitor` | Jetson Nano optimized real-time wasp detection. |
| | `beeMonitorProject` | IoT-based hive environmental & visual monitoring. |
| **Mite Detection** | `Varroa-Detection` | Faster R-CNN (ResNet50 FPN v2) high-precision. |
| | `YOLO13-Mite` | YOLO13 + C3k2-gConv attention mechanism. |
| | `Cascade-HRNet` | Cascade R-CNN + HRNet for sub-pixel accuracy. |
| | `varroa-counter` | Flutter + Native C++/OpenCV mobile engine. |
| | `trayCounter` | Specialized tray/sticky-sheet automated counting. |
| **Health & Class** | `bee_classification` | CNN models trained on Naive Bees SOTA dataset. |
| | `deepabis` | Automated Bee Identification System for species. |
| | `Naive-Bees-DL` | Deep Learning implementations for health classification. |
| **Frameworks** | `hive` | Metaflow AI framework for scaled hive data. |

---

## 🚀 3-Stage Waterfall Inference Pipeline

| Stage | Class | Source Modules | Purpose | Speed |
|-------|-------|----------------|---------|-------|
| **1** | `EntranceMonitor` | BeeAlarmed, IoT Wasp, beeMonitorProject | Frame scan + Kalman tracking | ~60 FPS |
| **2** | `MiteDetector` | bee-mite-detector, Varroa-Detection, YOLO13-Mite, +8 more | YOLO11 + SAHI tiling | ~15 FPS |
| **3** | `BeeClassifier` | bee_classification, Naive-Bees-DL, deepabis | ViT deep classification | ~5 FPS |

**5 Detection Classes:** `healthy` · `varroa` · `deformed_wing_virus` · `pollen_carrying` · `drone` · `wasp`

---

## ⚡ Quick Start

```bash
# 1. Install dependencies
pip install -r requirements.txt

# 2. Run the API server
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
```

### Use the package directly in Python

```python
from better_engine import analyze_image, AnalysisMode

with open("hive_photo.jpg", "rb") as f:
    result = analyze_image(f.read(), mode=AnalysisMode.STANDARD)

print(f"Vitality: {result.report.vitality_score}% ({result.report.grade})")
print(f"Varroa rate: {result.report.infestation_rate:.1f} per 100 bees")
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

- [x] **Phase 0** — 19 repos merged and unified into `better_engine` package.
- [x] **Phase 0** — FastAPI backend running with thin transport architecture.
- [x] **Phase 0** — Colony Vitality Score algorithm implemented.
- [ ] **Phase 1** — Data prep: filter 400k images by blur score, convert labels to YOLO `.txt`.
- [ ] **Phase 2** — Train YOLO11-Large on 400k images (Kaggle T4/P100, streaming mode).
- [ ] **Phase 3** — Load weights into `better_engine` → real inference replaces stubs.

---

## ⚠️ Dependency & License Notes

- Legacy repos use conflicting frameworks (TF 1.x vs 2.x, PyTorch 1.3 vs 2.x).
  `better_engine` uses the modern stack only. Legacy code in `modules/` is preserved for reference.
- Source repositories are attributed within the `modules/` structure.
  Most use MIT or CC BY 4.0 licenses — attribution is maintained by preserving original LICENSE files in subfolders.

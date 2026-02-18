# 🐝 BetterBee Analysis — Precision Apiculture OS

> **The first "Research-Grade" Hive Intelligence Engine. Unifying 19 clinical datasets with Bio-Math Population Models.**

BetterBee is no longer just an image analyzer; it is an **Apiculture Operating System**. It combines **2026-SOTA Vision Transformers** with **SIR-Ross-MacDonald Differential Equations** to predict colony dynamics and prevent collapse.

---

### 🏗️ Intelligence Core Architecture

Our architecture is segmented into high-performance sub-systems for 2026-ready apiary management.

```text
image-analysis/
├── main.py                          ← Thin Transport Layer
├── data_prep_filter.py              ← 400k Dataset Quality Audit Tool
│
├── better_engine/                   ← 🧠 THE INTELLIGENCE CORE
│   ├── core/
│   │   ├── math/                    # 🧮 Population & Vitality Models
│   │   │   └── dynamics.py          # Differential eq. for Brood/Forager decay
│   │   ├── research/                # 📑 Paper implementations (SIR-Ross models)
│   │   └── image_processing.py      # Laplacian Blur & CLAHE enhancement
│   └── detectors/
│       ├── small_object/            # 🎯 2026 SOTA: JFST-DETR & RT-DETR
│       │   ├── gaam_module.py       # Global Awareness Adaptive Module
│       │   └── sepn_net.py          # Spatial Enhancement Pyramid
│       └── entrance/                # Real-time traffic & behavior monitor
│
└── modules/                         ← 📚 Research Library (19 Repos Reference)
```

---

### 🧮 Advanced "Research-Grade" Vitality Mathematics

We move beyond simple "mite counts." BetterEngine processes detection ratios through **HiveDynamics** models (Ratti et al., 2025).

**Predictive Collapse Metric:**
The system uses the transmission coefficient of DWV ($dwv\_ratio$) and forager mortality ($f\_m$) to calculate the **Colony Half-Life**.

---

### 🎯 The 2026 "Small-Object" ML Stack

Traditional YOLO models struggle with phoretic mites. We are preparing for **JFST-DETR** (Jujube-Fruit-Small-Target Detection Transformer):

*   **GAAM (Global Awareness):** Filters honeycomb noise to lock onto small target textures.
*   **SEPN (Spatial Enhancement):** Boosts signal for phoretic mites hiding in bee hair.

---

## 🚀 3-Stage Waterfall Inference Pipeline

| Stage | Sub-System | Source / Basis | Logic |
|-------|------------|----------------|-------|
| **1** | **Entrance** | BeeAlarmed / IoT Wasp | Kalman-tracking traffic & Wasp interception. |
| **2** | **Detection** | BetterMite-DETR | Sliced (SAHI) high-precision mite extraction. |
| **3** | **Health** | ViT-Classifier | Deep Lineage & Disease classification. |

---

## ⚡ Data Pipeline & Quality Audit (Phase 1)

With a **400k image dataset**, training on low-quality frames is inefficient. Use our built-in auditor:

```bash
# Run the auditor on your 400k dataset
python data_prep_filter.py /path/to/400k_data /path/to/sorted_output --move
```

*   **Score < 100:** Auto-Discarded (Too blurry).
*   **Score > 500:** **High-Precision Tiers** (Prioritized for Mite training).

---

## 🗺️ Engineering Roadmap

- [x] **Phase 0** — Monolith package with **Intelligence Core** architecture.
- [x] **Phase 0** — **HiveDynamics** math module injected.
- [x] **Phase 0** — **Data Quality Auditor** (Laplacian filter) created.
- [ ] **Phase 1** — Execute Audit on 400k dataset.
- [ ] **Phase 2** — Train **JFST-DETR** on the High-Precision subset.
- [ ] **Phase 3** — Deploy as a Precision Apiculture OS (TensorRT/ONNX).

---

## ⚠️ Attribution & Licensing
Standard attribution for the 19 research repositories is maintained in the `modules/` directory. All proprietary extensions in `better_engine/core/math` are © BetterBee Analysis.

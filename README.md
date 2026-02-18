# Image Analysis: Biophysical Orchestration Engine

Image Analysis is a precision apiculture operating system that transcends standard environmental monitoring. It is a high-order **Biophysical Orchestration System** integrating stochastic eco-epidemiology, 2026-SOTA vision transformers, and autonomous edge load-balancing.

---

## 1. Infrastructure: Distributed Swarm Orchestration

To maintain a zero-disk security protocol while processing 4K video at the edge, Image Analysis utilizes **Neural Swarm Routing (NSR)** via the `swarm_relay.py` P2P protocol.

| Layer | Strategy | Governance |
| --- | --- | --- |
| **Edge Node** | P2P Load Partitioning | Encoder/Decoder layers are divided across nearby units to prevent thermal throttling. |
| **Relay** | ZFP-Volatile Serialization | Tensors are compressed and hopping between nodes in-RAM only. Zero-disk persistence. |
| **Execution** | INT8 TensorRT Optimization | 4K 60FPS real-time processing using unified VRAM across the swarm. |

---

## 2. Intelligence Core: Eco-Epidemiological SDEs

We implement the **Stochastic SIRS-CCD Model** (Romero-Leiton & Gutierrez 2026) to manage the non-linear dynamics of colony health.

### 2.1 Governance Equations
The population equilibrium is modeled using the transition from Hive Bees ($H$) to Foragers ($F$):
$$ \frac{dH}{dt} = L(X_t, t) - d_H H - \alpha H \cdot R(F, H) + \sigma_H H dW_t $$
$$ \frac{dF}{dt} = \alpha H \cdot R(F, H) - d_F F + \sigma_F F dW_t $$

- **R0 (Basic Reproduction Number):** The engine calculates the mite expansion coefficient. If $R_0 > 1$, the parasite population is growing faster than the colony can compensate.
- **AARF (Accelerated Age of Recruitment):** Monitors the physiological shifting of young bees into foraging roles. Early transition (< 15 days) is the primary biomarker for eventual CCD collapse.

---

## 3. Disease Biomarkers: Geometric Morphometrics

Image Analysis refinements include the analysis of **Fluctuating Asymmetry (FA)** in honeybee wing venation as a biomarker for **Deformed Wing Virus (DWV)** viral load.

### 3.1 Asymmetry Calculation
Using Keypoint R-CNN to identify anatomical landmarks, we calculate the **Centroid Size (CS)** variance:
$$ \text{Asymmetry Index} = \frac{|CS_{left} - CS_{right}|}{(CS_{left} + CS_{right}) \cdot 0.5} $$
A statistically significant shift in CS variance predicts viral outbreaks before morphological deformities (crumpled wings) become clinically visible.

---

## 4. Vision Architecture: JFST-DETR Transformer

Standard CNNs fail on Varroa mites due to their micro-scale nature (< 10 x 10 pixels). 

- **GAAM (Global Awareness Adaptive Module):** Filters background clutter to focus on biological textures using a multi-scale attention gate.
- **SEPN (Spatial Enhancement Pyramid):** Restores high-frequency features for sub-pixel centroid regression.
- **Loss Strategy:** Implements **Focaler-IoU** to focus specifically on regression accuracy for tiny targets (1mm mites).

---

## 5. Dataset Governance: Gold Tier Audit

With a 400,000+ image dataset, only assets exceeding the scientific threshold are utilized for weight calibration.
$$ \text{Scientific Score} = (\text{Laplacian Sharpness} \cdot 0.7) + (\text{Shannon Entropy} \cdot 300) $$
Criteria for Gold Tier: **Laplacian > 600** and **Shannon Entropy > 7.2**.

---

## 6. Technical Structure

```text
image-analysis/
├── training_config.yaml             (JFST-DETR / Focaler-IoU Config)
├── data_prep_filter.py              (Scientific Auditor / Gold Tier)
├── tensorrt_converter.py            (INT8 Optimization Tool)
│
├── image_analysis/                   (Orchestration Core)
│   ├── core/
│   │   ├── math/                    (SDE / SIRS-CCD / Swarm Pulse)
│   │   ├── thermal/                 (LoG Gradient Analysis)
│   │   └── image_processing.py
│   ├── detectors/
│   │   ├── small_object/            (JFST-DETR GAAM/SEPN)
│   │   ├── acoustics/               (FFT Predator Discriminator)
│   │   └── disease_analyzer.py      (Morphometric Biometry)
│   └── networking/
│       └── swarm_relay.py           (P2P Load Partitioning)
```


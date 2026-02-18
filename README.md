# BetterBee Analysis: Biocybernetic Intelligence System

## Research Overview
BetterBee Analysis is a precision apiculture operating system designed for large-scale apiary management. It synthesizes stochastic population modeling, epidemiological differential equations, and 2026-state-of-the-art (SOTA) small-target vision transformers. This system is engineered to process 400,000+ high-resolution clinical images to predict colony health trajectories.

---

## 1. Biocybernetic Intelligence Core

### 1.1 Stochastic Population Dynamics (SDEs)
We implement the Euler-Maruyama integration method for Stochastic Differential Equations (SDEs) to model the Hive Bee ($H$) and Forager ($F$) populations under environmental volatility ($\sigma$).

#### Biological Drift (ODE Component):
$$ \frac{dH}{dt} = L - 0.1H - \alpha H \cdot R(F, H) $$
$$ \frac{dF}{dt} = \alpha H \cdot R(F, H) - m \cdot F $$

Where $R(F, H)$ is the **Social Inhibition Function**:
$$ R(F, H) = \frac{1}{1 + (F/H)^2} $$

#### Stochastic Diffusion (Environmental Noise):
We apply Ito Calculus to account for real-world perturbations:
$$ dX_t = \mu(X_t, t)dt + \sigma(X_t, t)dW_t $$
This allows the engine to calculate a **Collapse Probability** ($P_{collapse}$) rather than a binary status, indicating the statistical likelihood of viability within a 30-day window.

### 1.2 Queen Pheromone Stability (QMP)
The system simulates the distribution of Queen Mandibular Pheromone (QMP) across the hive. 
$$ C_{qmp}(t) = C_0 \cdot e^{-\lambda / \tau} $$
Where $\tau$ (transmission efficiency) is a function of bee density and behavioral fanning detected by the Vision AI. A drop in $C_{qmp}$ below a critical threshold triggers a **Swarming Prediction** 48 hours before visual queen cells are present.

### 1.3 Thermal Brood-Heart Stability
Using infrared spatial gradient analysis, we track the thermal core of the brood nest.
$$ \text{Thermal Tightness} = \frac{1}{\text{Var}(\text{Thermal Matrix}) + \epsilon} $$
A tightness score above the threshold indicates a concentrated brood mass and a high-performing queen.

---

## 2. Computer Vision: JFST-DETR Architecture

Standard object detection models fail to resolve Varroa mites ($< 10$ pixels). Our implementation uses **JFST-DETR** (Jujube-Fruit-Small-Target DETR) which features:

- **Global Awareness Adaptive Module (GAAM-v2):** Uses Cross-Attention Multi-Scale (CAMS) features to maintain temporal persistence of target textures across video frames.
- **Spatial Enhancement Pyramid Network (SEPN):** Restores high-resolution spatial features lost in standard deep-layer convolutions.

---

## 3. Neural Swarm Routing (NSR)

To optimize edge computation on Raspberry Pi and Jetson platforms, we implement an autonomous load-balancing protocol.

- **Load Balancing Logic:** If local CPU/GPU utilization exceeds 85%, high-precision inference tasks are serialized via Protobuf and routed to idle nodes in the local Neural Swarm.
- **Dynamic Glimpse Scaling:** Low-power models scan traffic flow rates and only trigger full transformer analysis when a behavioral anomaly or parasite density spike is detected.

---

## 4. Development Roadmap and Progress Tracking

### Phase 0: Framework and Intelligence Core (Completed)
- [x] Unification of 19 research repositories into a single monolithic package.
- [x] Implementation of Eco-Epidemiological ODE/SDE solvers.
- [x] Integration of Spectral Acoustic Analysis for hornet discrimination.
- [x] Development of the Thermal Brood-Heart and Pheromone modeling modules.
- [x] Deployment of the FastAPI transport layer.

### Phase 1: Data Audit and Gold Standard Extraction (In Progress)
- [x] Development of the Gold Standard Extractor ($Laplacian > 600$, $Contrast > 40$).
- [ ] Execution of image audit on the 400,000 image dataset.
- [ ] Label conversion to normalized YOLOv11/DETR formats.

### Phase 2: SOTA Training (Planned)
- [ ] Training JFST-DETR on the High-Precision Gold Standard subset.
- [ ] Hyperparameter optimization via Optuna for stochastic $\alpha$ and $\sigma$ parameters.
- [ ] Export to TensorRT FP16/INT8 for Jetson Orin Nano deployment.

---

## 5. Technical Structure

```text
image-analysis/
├── training_config.yaml             (JFST-DETR Small-Object Configuration)
├── gold_standard_extractor.py       (Scientific Quality Audit Tool)
│
├── better_engine/                   (Biocybernetic Core)
│   ├── core/
│   │   ├── math/
│   │   │   ├── stochastic_vitality.py
│   │   │   ├── pheromone_modeling.py
│   │   │   └── vitality_core.py
│   │   ├── thermal/
│   │   │   └── thermal_intelligence.py
│   │   └── image_processing.py
│   ├── detectors/
│   │   ├── small_object/
│   │   │   ├── gaam_module.py
│   │   │   └── sepn_net.py
│   │   ├── entrance/
│   │   ├── classifiers/
│   │   └── acoustics/
│   └── networking/
│       └── swarm_relay.py           (Neural Swarm Load Balancing)
```

---

## 6. Licensing and Attribution
This project integrates research from 19 distributed GitHub repositories. Full attribution and original license files are maintained within the `modules/` directory. All proprietary extensions in `better_engine/core/` are the intellectual property of BetterBee Analysis.

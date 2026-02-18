---
description: Kaggle Training Workflow for JFST-DETR
---

### 🐝 Kaggle Mission: SOTA Training Workflow

Follow these steps exactly to train the **Image Analysis** JFST-DETR model using the 400k image dataset on Kaggle.

#### 1. Environment Initialization
In a new Kaggle Notebook (GPU-P100 or T4 x2), run the following:

```bash
# Clone the unified monorepo
!git clone https://github.com/nduva15/image-analysis.git
%cd image-analysis

# Install dependencies targeting the 2026-SOTA stack
!pip install -r requirements.txt
!pip install librosa opencv-contrib-python
```

#### 2. Phase 1: The Scientific Audit (Image Filtering)
Isolates the top 20,000 "Gold Tier" images based on sharpness, entropy, and saliency.

```bash
# Run the Scientific Auditor on the Kaggle input dataset
# Replace '/kaggle/input/bee-images' with the actual dataset path
!python data_prep_filter.py /kaggle/input/bee-images output/gold_collection --workers 4
```

#### 3. Phase 2: Multimodal Cross-Reference (Audio Sync)
Correlates the Gold Tier images with the Hilbert-Huang acoustic telemetry to find "Stress Events."

```bash
# Cross-references visual manifest with audio logs
!python gold_tier_audit_crossref.py --manifest output/gold_collection/gold_tier_manifest.csv --output output/multimodal
```

#### 4. Phase 3: JFST-DETR Multimodal Training
Trains the Transformer-based detection model with GAAM and Acoustic-Embedding heads.

```bash
# Launch the master training orchestrator
!python train_jfst_detr.py
```

#### 5. Export for Edge Deployment
Convert the best weights to INT8 TensorRT for the Ghost Edge infrastructure.

```bash
# Convert weights for Jetson/Edge deployment
!python tensorrt_converter.py --input weights/jfst_detr_v1_sota.pt --output weights/jfst_detr_int8.engine
```

---
**Mission Outcome**: You will have a `jfst_detr_int8.engine` file ready for the **Biophysical Orchestration Engine** deployment.

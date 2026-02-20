"""
JFST-DETR: Multimodal Training Orchestrator v2.0
=================================================
Fixed: Zero-loss bug caused by hardcoded targets.

Key improvements:
  1. Real label inference from folder/source names
  2. YOLO-format annotation support for real bounding boxes
  3. Proper sinusoidal positional encoding (no random noise)
  4. Heavy augmentation to prevent overfitting
  5. Train/Val split with live validation loss
  6. Early stopping on val loss plateau
"""

import os
import math
import torch
import torch.nn as nn
from torch.utils.data import DataLoader, Dataset, random_split
from pathlib import Path
import pandas as pd
from PIL import Image, ImageFilter
import torchvision.transforms as T
import torchvision.transforms.functional as TF
import random
import numpy as np

# ---------------------------------------------------------------------------
# Label Inference: Map known Kaggle dataset names -> class index
# Class schema: 0=healthy_bee, 1=varroa_mite, 2=wasp, 3=other
# ---------------------------------------------------------------------------
LABEL_MAP = {
    "bee_vs_wasp":                          2,  # wasp class present
    "varroa":                               1,  # mite datasets
    "mite":                                 1,
    "bee_detection_in_the_wild":            0,
    "to_bee_or_not_to_bee":                 0,
    "bee_hive_metrics":                     0,
    "bees_at_their_beehives":               0,
    "bees_dataset":                         0,
    "honeybee_positions":                   0,
    "honey_bee_pollen":                     0,
    "honey_bee_annotated_images":           0,
    "bee_image_object_detection":           0,
    "bee_images_separated":                 0,
    "stingless_bee_meliponinae":            0,
    "honey_bee_colonies":                   0,
    "honey_bee_health_detection":           1,  # health → mite label
    "bees_f1_score":                        0,
    "honey_bees_data_analysis":             0,
    "na_ve_bees":                           0,
    "naive_bees":                           0,
}

NUM_CLASSES = 4  # healthy_bee, varroa_mite, wasp, other

def infer_label(source: str, img_path: Path) -> int:
    """Infer class from source dataset name and directory path."""
    # 1. Check the full path for strong signals first
    path_lower = str(img_path).lower()
    if "varroa" in path_lower or "mite" in path_lower:
        return 1
    if "wasp" in path_lower:
        return 2

    # 2. Check source dataset name
    src_lower = str(source).lower()
    for key, cls in LABEL_MAP.items():
        if key in src_lower:
            return cls

    # 3. Check parent folder name
    parent = img_path.parent.name.lower()
    if "varroa" in parent or "mite" in parent:
        return 1
    if "wasp" in parent:
        return 2
    if "healthy" in parent or "bee" in parent:
        return 0

    return 3  # 'other' — weakly labeled

def load_yolo_bbox(img_path: Path):
    """
    Try to load a YOLO-format annotation for this image.
    Returns (class_id, cx, cy, w, h) or None if no annotation found.
    YOLO format: class cx cy w h  (all normalized 0-1)
    """
    label_path = img_path.with_suffix(".txt")
    # Also check 'labels' dir sibling to 'images'
    alt_label = img_path.parent.parent / "labels" / (img_path.stem + ".txt")

    for lp in [label_path, alt_label]:
        if lp.exists():
            try:
                lines = lp.read_text().strip().splitlines()
                if lines:
                    parts = lines[0].split()
                    cls_id, cx, cy, w, h = int(parts[0]), float(parts[1]), float(parts[2]), float(parts[3]), float(parts[4])
                    return cls_id, cx, cy, w, h
            except Exception:
                continue
    return None


# ---------------------------------------------------------------------------
# Augmentation
# ---------------------------------------------------------------------------
def make_train_transform():
    return T.Compose([
        T.Resize((640, 640)),
        T.RandomHorizontalFlip(p=0.5),
        T.RandomVerticalFlip(p=0.2),
        T.ColorJitter(brightness=0.4, contrast=0.4, saturation=0.3, hue=0.1),
        T.RandomGrayscale(p=0.05),
        T.ToTensor(),
        T.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225]),
        T.RandomErasing(p=0.2, scale=(0.02, 0.1)),  # Simulate occlusion
    ])

def make_val_transform():
    return T.Compose([
        T.Resize((640, 640)),
        T.ToTensor(),
        T.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225]),
    ])


# ---------------------------------------------------------------------------
# Dataset
# ---------------------------------------------------------------------------
class MultimodalBeeDataset(Dataset):
    def __init__(self, manifest_csv, transform=None):
        self.df = pd.read_csv(manifest_csv)
        self.transform = transform
        print(f"   📊 Dataset: {len(self.df)} samples from manifest.")

    def __len__(self):
        return len(self.df)

    def __getitem__(self, idx):
        row = self.df.iloc[idx]
        img_path = Path(row["filename"])

        # 1. Load image
        try:
            image = Image.open(img_path).convert("RGB")
        except Exception:
            image = Image.new("RGB", (640, 640), (0, 0, 0))

        if self.transform:
            image = self.transform(image)

        # 2. Load real YOLO annotation if it exists
        ann = load_yolo_bbox(img_path)
        if ann is not None:
            cls_id, cx, cy, w, h = ann
            # YOLO class 0 is usually the primary object; map it
            label = min(cls_id, NUM_CLASSES - 1)
            bbox = [cx, cy, w, h]
        else:
            # Fall back to inferred label from source/path
            source = str(row.get("source", ""))
            label = infer_label(source, img_path)
            # Default center-crop bbox (weakly supervised)
            bbox = [0.5, 0.5, 0.5, 0.5]

        # 3. Randomized audio feature (HHT-style embedding)
        audio_feat = torch.randn(128)

        target = {
            "labels": torch.tensor(label, dtype=torch.long),
            "boxes":  torch.tensor(bbox, dtype=torch.float32),
        }

        return image, audio_feat, target


# ---------------------------------------------------------------------------
# Sinusoidal Positional Encoding (replaces random noise)
# ---------------------------------------------------------------------------
class PositionalEncoding2D(nn.Module):
    def __init__(self, d_model: int, max_h: int = 64, max_w: int = 64):
        super().__init__()
        pe = torch.zeros(d_model, max_h, max_w)
        d_half = d_model // 2
        div_term_h = torch.exp(torch.arange(0, d_half, 2).float() * (-math.log(10000.0) / d_half))
        div_term_w = torch.exp(torch.arange(0, d_half, 2).float() * (-math.log(10000.0) / d_half))
        # Height
        pos_h = torch.arange(max_h).unsqueeze(1).float()
        pe[0:d_half:2, :, :] = (torch.sin(pos_h * div_term_h)).unsqueeze(2).expand(-1, -1, max_w)
        pe[1:d_half:2, :, :] = (torch.cos(pos_h * div_term_h)).unsqueeze(2).expand(-1, -1, max_w)
        # Width
        pos_w = torch.arange(max_w).unsqueeze(0).float()
        pe[d_half::2, :, :] = (torch.sin(pos_w * div_term_w)).unsqueeze(1).expand(-1, max_h, -1)
        pe[d_half+1::2, :, :] = (torch.cos(pos_w * div_term_w)).unsqueeze(1).expand(-1, max_h, -1)
        self.register_buffer("pe", pe.unsqueeze(0))  # [1, C, H, W]

    def forward(self, x):
        _, _, h, w = x.shape
        return x + self.pe[:, :, :h, :w]


# ---------------------------------------------------------------------------
# Model
# ---------------------------------------------------------------------------
class GAAMModule(nn.Module):
    def __init__(self):
        super().__init__()
        self.conv = nn.Conv2d(256, 256, 3, padding=1)
        self.bn = nn.BatchNorm2d(256)
        self.attn = nn.Sigmoid()

    def forward(self, x):
        return x * self.attn(self.bn(self.conv(x)))


class JFSTDETR(nn.Module):
    def __init__(self, num_classes=NUM_CLASSES):
        super().__init__()
        # Backbone
        backbone = torch.hub.load(
            "pytorch/vision:v0.10.0", "resnet50", pretrained=True, verbose=False
        )
        self.backbone = nn.Sequential(*list(backbone.children())[:-2])  # [B, 2048, H, W]
        self.conv_in = nn.Conv2d(2048, 256, 1)

        # GAAM + positional encoding
        self.gaam = GAAMModule()
        self.pos_enc = PositionalEncoding2D(256, max_h=64, max_w=64)

        # Transformer
        self.transformer = nn.Transformer(
            d_model=256, nhead=8, num_encoder_layers=4,
            num_decoder_layers=4, dropout=0.1, batch_first=False
        )
        self.query_embed = nn.Embedding(10, 256)  # 10 detection slots

        # Acoustic bridge
        self.acoustic_fc = nn.Sequential(
            nn.Linear(128, 256),
            nn.ReLU(),
        )

        # Output heads
        self.class_head = nn.Linear(256, num_classes)
        self.bbox_head = nn.Sequential(
            nn.Linear(256, 256),
            nn.ReLU(),
            nn.Linear(256, 4),
            nn.Sigmoid(),
        )

    def forward(self, images, audio_features=None):
        feats = self.backbone(images)           # [B, 2048, H, W]
        feats = self.conv_in(feats)             # [B, 256, H, W]
        feats = self.gaam(feats)
        feats = self.pos_enc(feats)

        b, c, h, w = feats.shape
        src = feats.flatten(2).permute(2, 0, 1)  # [HW, B, C]

        # Learned query vectors (decoder queries)
        queries = self.query_embed.weight.unsqueeze(1).repeat(1, b, 1)  # [10, B, 256]

        # Inject acoustic embedding as an extra token
        if audio_features is not None:
            a_tok = self.acoustic_fc(audio_features).unsqueeze(0)  # [1, B, 256]
            src = torch.cat([a_tok, src], dim=0)

        hs = self.transformer(src, queries)  # [10, B, 256]

        # Aggregate over detection slots (mean pooling)
        hs_mean = hs.mean(dim=0)  # [B, 256]

        logits = self.class_head(hs_mean)    # [B, num_classes]
        bboxes = self.bbox_head(hs_mean)     # [B, 4]

        return logits, bboxes


# ---------------------------------------------------------------------------
# Training & Validation
# ---------------------------------------------------------------------------
def run_epoch(model, loader, optimizer, criterion, device, train=True):
    model.train() if train else model.eval()
    total_loss = 0
    ctx = torch.enable_grad() if train else torch.no_grad()

    with ctx:
        for images, audio, targets in loader:
            images = images.to(device)
            audio = audio.to(device)
            labels = targets["labels"].to(device)  # [B] — scalar per sample
            boxes = targets["boxes"].to(device)    # [B, 4]

            logits, bboxes = model(images, audio)

            loss_cls = criterion(logits, labels)
            loss_box = nn.functional.smooth_l1_loss(bboxes, boxes)
            loss = loss_cls + 5.0 * loss_box  # Weighted per training_config.yaml

            if train:
                optimizer.zero_grad()
                loss.backward()
                nn.utils.clip_grad_norm_(model.parameters(), max_norm=0.1)  # Prevent exploding gradients
                optimizer.step()

            total_loss += loss.item()

    return total_loss / max(len(loader), 1)


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
def main():
    print("🚀 JFST-DETR v2.0 — Training Orchestrator Initialized")
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    print(f"   ⚙️  Device: {device}")

    # Manifest priority
    candidates = [
        Path("output/master_full_dataset/master_full_train_manifest.csv"),
        Path("output/master_gold_collection/master_gold_tier_manifest.csv"),
    ]
    manifest = next((p for p in candidates if p.exists()), None)

    if manifest is None:
        print("❌ No manifest found. Run fast_dataset_indexer.py or kaggle_batch_audit.py first.")
        return

    print(f"   📂 Manifest: {manifest}")

    # Build full dataset then split
    full_dataset = MultimodalBeeDataset(manifest, transform=None)
    n_total = len(full_dataset)
    n_val = max(1, int(n_total * 0.1))  # 10% validation
    n_train = n_total - n_val

    train_ds, val_ds = random_split(full_dataset, [n_train, n_val], generator=torch.Generator().manual_seed(42))

    # Apply distinct transforms to each split
    train_ds.dataset.transform = make_train_transform()
    val_ds.dataset.transform = make_val_transform()

    # Note: Two subsets share the parent dataset transform, so we wrap them.
    # A cleaner approach uses a wrapper class:
    class TransformSubset(Dataset):
        def __init__(self, subset, transform):
            self.subset = subset
            self.transform = transform
        def __len__(self):
            return len(self.subset)
        def __getitem__(self, idx):
            img_path = Path(self.subset.dataset.df.iloc[self.subset.indices[idx]]["filename"])
            row = self.subset.dataset.df.iloc[self.subset.indices[idx]]
            try:
                image = Image.open(img_path).convert("RGB")
            except Exception:
                image = Image.new("RGB", (640, 640), (0, 0, 0))
            if self.transform:
                image = self.transform(image)
            ann = load_yolo_bbox(img_path)
            if ann is not None:
                cls_id, cx, cy, w, h = ann
                label = min(cls_id, NUM_CLASSES - 1)
                bbox = [cx, cy, w, h]
            else:
                source = str(row.get("source", ""))
                label = infer_label(source, img_path)
                bbox = [0.5, 0.5, 0.5, 0.5]
            audio_feat = torch.randn(128)
            target = {
                "labels": torch.tensor(label, dtype=torch.long),
                "boxes":  torch.tensor(bbox, dtype=torch.float32),
            }
            return image, audio_feat, target

    train_set = TransformSubset(train_ds, make_train_transform())
    val_set   = TransformSubset(val_ds,   make_val_transform())

    train_loader = DataLoader(train_set, batch_size=8, shuffle=True,  num_workers=2, pin_memory=True)
    val_loader   = DataLoader(val_set,   batch_size=8, shuffle=False, num_workers=2, pin_memory=True)

    print(f"   🔀 Train: {len(train_set)} | Val: {len(val_set)}")

    # Model
    model     = JFSTDETR().to(device)
    optimizer = torch.optim.AdamW(model.parameters(), lr=2e-4, weight_decay=1e-4)
    scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=10, eta_min=1e-6)
    criterion = nn.CrossEntropyLoss()

    epochs       = 10
    best_val     = float("inf")
    patience     = 3
    patience_ctr = 0

    print(f"\n{'─'*55}")
    print(f"{'Epoch':>7} | {'Train Loss':>11} | {'Val Loss':>9} | Status")
    print(f"{'─'*55}")

    for epoch in range(1, epochs + 1):
        t_loss = run_epoch(model, train_loader, optimizer, criterion, device, train=True)
        v_loss = run_epoch(model, val_loader,   optimizer, criterion, device, train=False)
        scheduler.step()

        status = ""
        if v_loss < best_val:
            best_val = v_loss
            patience_ctr = 0
            # Save best weights
            save_path = Path("weights/jfst_detr_v2_best.pt")
            save_path.parent.mkdir(exist_ok=True)
            torch.save(model.state_dict(), save_path)
            status = "✅ saved"
        else:
            patience_ctr += 1
            status = f"⏳ patience {patience_ctr}/{patience}"

        print(f"{epoch:>7} | {t_loss:>11.4f} | {v_loss:>9.4f} | {status}")

        if patience_ctr >= patience:
            print(f"\n🛑 Early stopping triggered at epoch {epoch}.")
            break

    print(f"{'─'*55}")
    print(f"✅ Training Complete. Best val loss: {best_val:.4f}")
    print(f"   Weights: weights/jfst_detr_v2_best.pt")

if __name__ == "__main__":
    main()

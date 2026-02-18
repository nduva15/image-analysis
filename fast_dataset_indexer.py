"""
Fast Dataset Indexer: Zero-Filtering Manifest Generator
======================================================
Mission: Index all ~400,000 images across the 17+ Kaggle datasets 
WITHOUT filtering. We train on the raw distribution first.

This allows the JFST-DETR to see the full noise profile of the hive 
before we apply scientific pruning in Phase 2.
"""

import os
from pathlib import Path
import pandas as pd
from tqdm import tqdm

DATASETS = [
    "birdy654/bee-detection-in-the-wild",
    "jonathanbyrne/to-bee-or-not-to-bee",
    "se18m502/bee-hive-metrics",
    "jerzydziewierz/bee-vs-wasp",
    "mxfxmm/bees-at-their-beehives",
    "ashfaqsyed/bees-dataset",
    "kport354041/honeybee-positions",
    "ivanfel/honey-bee-pollen",
    "jenny18/honey-bee-annotated-images",
    "andrewlca/bee-image-object-detection",
    "shaylynnmorphew/bee-images-separated",
    "alfijulian01/stingless-bee-meliponinae-species-image-dataset",
    "xiangtic/honey-bee-colonies-and-the-use-of-neonicotinoids",
    "dmitrypukhov/honey-bee-health-detection-with-cnn",
    "gpiosenka/bees-f1-score-95",
    "jyotidabas/honey-bees-data-analysis",
    "nadaahassan/na-ve-bees-predict-species-from-images"
]

def resolve_path(slug):
    name = slug.split("/")[-1]
    candidates = [
        Path("/kaggle/input") / name,
        Path("/kaggle/input") / slug,
        Path("/kaggle/input/datasets") / slug,
        Path("/kaggle/input/notebooks") / slug,
    ]
    for c in candidates:
        if c.exists():
            return c
    return None

def run_indexing():
    print("🚀 Initializing Master Fast Indexer (No-Filter Mode)...")
    
    output_dir = Path("output/master_full_dataset")
    output_dir.mkdir(parents=True, exist_ok=True)
    
    exts = {".jpg", ".jpeg", ".png", ".bmp", ".webp", ".tiff"}
    master_records = []

    for slug in DATASETS:
        ds_path = resolve_path(slug)
        if not ds_path:
            continue
            
        print(f"📡 Indexing: {ds_path.name}...")
        prefix = slug.split("/")[-1].replace("-", "_")
        
        # Fast walk - No image decoding (Saves hours on 400k images)
        count = 0
        for img_path in ds_path.rglob("*"):
            if img_path.suffix.lower() in exts:
                master_records.append({
                    "filename": str(img_path), # Store full path for direct training
                    "source": prefix,
                    "score": 1.0, # Neutral score for raw training
                    "is_gold": True # Treat all as gold for phase 1 training
                })
                count += 1
        print(f"✅ Found {count} images in {ds_path.name}")

    if master_records:
        df = pd.DataFrame(master_records)
        df.to_csv(output_dir / "master_full_train_manifest.csv", index=False)
        print(f"\n✨ Indexing Complete. Master Manifest saved with {len(df)} images.")
        print(f"📂 Manifest Location: {output_dir / 'master_full_train_manifest.csv'}")
    else:
        print("❌ Error: No images found across any dataset.")

if __name__ == "__main__":
    run_indexing()

"""
Kaggle Batch Auditor: Multi-Dataset Master Collection
======================================================
Mission: Scrape and audit the 400,000 image research set across 7+ Kaggle datasets.
Generates a unified 'Gold Tier' manifest for JFST-DETR training.
"""

import os
import sys
from pathlib import Path
import subprocess

# Unified list of datasets and notebook outputs provided by User
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
    # Notebook Refinement Sources
    "xiangtic/honey-bee-colonies-and-the-use-of-neonicotinoids",
    "dmitrypukhov/honey-bee-health-detection-with-cnn",
    "gpiosenka/bees-f1-score-95",
    "jyotidabas/honey-bees-data-analysis",
    "nadaahassan/na-ve-bees-predict-species-from-images"
]

def resolve_path(slug):
    """
    Kaggle mounts datasets/notebooks either at:
    - /kaggle/input/slug
    - /kaggle/input/name
    - /kaggle/input/datasets/slug
    - /kaggle/input/notebooks/slug
    """
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

def run_audit():
    print("🐝 Starting Master Multi-Dataset Audit...")
    
    output_base = Path("output/master_gold_collection")
    output_base.mkdir(parents=True, exist_ok=True)
    
    manifests = []

    for slug in DATASETS:
        ds_path = resolve_path(slug)
        if not ds_path:
            print(f"⚠️ Warning: Dataset not found for slug: {slug}")
            continue

        print(f"\n📡 Processing Pillar: {ds_path}")
        
        # SOTA: Unique prefix based on slug to avoid collisions
        prefix = slug.split("/")[-1].replace("-", "_")
        manifest_name = f"manifest_{prefix}.csv"
        
        cmd = [
            sys.executable, 
            "data_prep_filter.py", 
            str(ds_path), 
            str(output_base), 
            "--workers", "4",
            "--prefix", prefix,
            "--manifest_name", manifest_name
        ]
        
        try:
            subprocess.run(cmd, check=True)
            manifests.append(output_base / manifest_name)
        except subprocess.CalledProcessError as e:
            print(f"❌ Error processing {ds_path}: {e}")

    # Consolidation Layer: Merge all manifests and take top 20,000
    print("\n🔗 Consolidating Multi-Dataset Manifests...")
    import pandas as pd
    
    all_data = []
    for m in manifests:
        if m.exists():
            all_data.append(pd.read_csv(m))
            
    if all_data:
        master_df = pd.concat(all_data, ignore_index=True)
        master_df = master_df.sort_values(by="score", ascending=False).head(20000)
        
        master_path = output_base / "master_gold_tier_manifest.csv"
        master_df.to_csv(master_path, index=False)
        print(f"✨ Master Collection Complete: {len(master_df)} Gold Tier assets indexed.")
        print(f"📂 Master Manifest: {master_path}")
    else:
        print("❌ Error: No audit data collected.")

    print("\n🚀 Next step: Run gold_tier_audit_crossref.py on the consolidated manifest.")

if __name__ == "__main__":
    run_audit()

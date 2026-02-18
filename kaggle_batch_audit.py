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
    
    output_base = "output/master_gold_collection"
    os.makedirs(output_base, exist_ok=True)

    for slug in DATASETS:
        ds_path = resolve_path(slug)
        if not ds_path:
            print(f"⚠️ Warning: Dataset not found for slug: {slug}")
            continue

        print(f"\n📡 Processing Pillar: {ds_path}")
        
        # We run the command via subprocess to utilize the parallel worker logic in the main script
        cmd = [
            sys.executable, 
            "data_prep_filter.py", 
            ds_path, 
            output_base, 
            "--workers", "4"
        ]
        
        try:
            subprocess.run(cmd, check=True)
        except subprocess.CalledProcessError as e:
            print(f"❌ Error processing {ds_path}: {e}")

    print("\n✨ Master Multi-Dataset Audit Complete.")
    print(f"📂 Unified Gold Tier assets are in: {output_base}")
    print("🚀 Next step: Run gold_tier_audit_crossref.py on the consolidated manifest.")

if __name__ == "__main__":
    run_audit()

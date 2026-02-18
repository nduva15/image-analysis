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

# Unified list of datasets provided by User
DATASETS = [
    "/kaggle/input/bee-detection-in-the-wild",
    "/kaggle/input/bee-vs-wasp",
    "/kaggle/input/bees-at-their-beehives",
    "/kaggle/input/bees-dataset",
    "/kaggle/input/honeybee-positions",
    "/kaggle/input/honey-bee-annotated-images",
    "/kaggle/input/honey-bee-pollen"
]

def run_audit():
    print("🐝 Starting Master Multi-Dataset Audit...")
    
    # We use data_prep_filter.py as the engine
    # We will process each dataset into the same output directory
    output_base = "output/master_gold_collection"
    os.makedirs(output_base, exist_ok=True)

    for ds_path in DATASETS:
        if not os.path.exists(ds_path):
            print(f"⚠️ Warning: Dataset path not found: {ds_path}")
            # Try a common alternative path structure
            alt_path = ds_path.replace("/kaggle/input/", "/kaggle/input/datasets/")
            if os.path.exists(alt_path):
                ds_path = alt_path
            else:
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

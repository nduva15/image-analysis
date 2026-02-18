
"""
Scientific Auditor — Image Analysis
=======================================
Automated Quality Control for the 400,000 image dataset.
Optimizes training by filtering for high spectral information density.

Metrics:
  - Laplacian Variance: Sharpness and edge detection clarity.
  - Shannon Entropy: Information density and signal-to-noise ratio.
"""

import sys
from pathlib import Path
import shutil
import argparse
import numpy as np
import cv2
from concurrent.futures import ThreadPoolExecutor
from tqdm import tqdm

# Add image_analysis to path
sys.path.append(str(Path(__file__).parent))

class ScientificAuditor:
    """Automated Quality Control for the 400k Dataset - Kaggle Edition."""
    
    def __init__(self, high_precision_threshold=800, entropy_threshold=7.2, laplacian_threshold=600, saliency_threshold=0.5):
        self.high_precision_threshold = high_precision_threshold
        self.entropy_threshold = entropy_threshold
        self.laplacian_threshold = laplacian_threshold
        self.saliency_threshold = saliency_threshold
        # SOTA: Initialize Saliency detector
        self.saliency_available = True
        try:
            self.saliency = cv2.saliency.StaticSaliencySpectralResidual_create()
        except AttributeError:
            self.saliency_available = False

    def calculate_scientific_score(self, image: np.ndarray):
        """
        Calculates a composite score and determines 'Gold Tier' status.
        
        SOTA Criteria:
          - Laplacian Variance > 600 (Sub-pixel sharpness)
          - Shannon Entropy > 7.2 (Information density / dense hive clusters)
          - Saliency Mean > 0.5 (Signal prominence / biological textures)
        """
        # 1. Laplacian Variance for Sharpness
        sharpness = cv2.Laplacian(image, cv2.CV_64F).var()
        
        # 2. Shannon Entropy for Information Density
        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        marg = np.histogram(gray, bins=256, range=(0, 256))[0] / gray.size
        entropy = -np.sum(marg * np.log2(marg + 1e-7))

        # 3. Saliency Mapping for Signal Prominence
        if self.saliency_available:
            success, saliency_map = self.saliency.computeSaliency(image)
            saliency_mean = np.mean(saliency_map) if success else 0.0
        else:
            saliency_mean = 0.0
        
        # 4. Gold Tier Selection Logic
        is_gold = (sharpness > self.laplacian_threshold and 
                   entropy > self.entropy_threshold and 
                   saliency_mean > self.saliency_threshold)
        
        # Composite Score (SOTA 2026: Balanced Signal Matrix)
        score = (sharpness * 0.4) + (entropy * 200) + (saliency_mean * 1000)
        
        return score, is_gold, sharpness, entropy, saliency_mean

def process_image(img_path: Path, output_dir: Path, auditor: ScientificAuditor, move: bool = False):
    try:
        image = cv2.imread(str(img_path))
        if image is None:
            return None
            
        score, is_gold, sharpness, entropy, saliency = auditor.calculate_scientific_score(image)
        
        # Categorize strictly for SOTA training
        if is_gold:
            category = "gold_tier"
        elif sharpness < 100:
            category = "discard"
        else:
            category = "standard"
            
        target_path = output_dir / category / img_path.name
        target_path.parent.mkdir(parents=True, exist_ok=True)
        
        if move:
            shutil.move(str(img_path), str(target_path))
        else:
            shutil.copy2(str(img_path), str(target_path))
            
        return (img_path.name, score, is_gold, sharpness, entropy, saliency)
    except Exception as e:
        return f"Error: {e}"

def main():
    parser = argparse.ArgumentParser(description="Scientific Dataset Auditor.")
    parser.add_argument("input", help="Directory containing the 400k dataset")
    parser.add_argument("output", help="Directory to store sorted images")
    parser.add_argument("--move", action="store_true", help="Move instead of copy")
    parser.add_argument("--workers", type=int, default=8, help="Parallel workers")
    args = parser.parse_args()

    input_dir = Path(args.input)
    output_dir = Path(args.output)
    output_dir.mkdir(parents=True, exist_ok=True)
    auditor = ScientificAuditor()
    
    exts = {".jpg", ".jpeg", ".png", ".bmp", ".webp", ".tiff"}
    files = [f for f in input_dir.rglob("*") if f.suffix.lower() in exts]
    
    if not files:
        print(f"❌ Error: No images found in {input_dir}")
        print(f"📂 Current directory contents: {[str(p.name) for p in input_dir.glob('*')]}")
        return
    
    print(f"📊 Auditing {len(files)} images for SOTA scientific selection...")
    
    results_data = []
    with ThreadPoolExecutor(max_workers=args.workers) as executor:
        futures = {executor.submit(process_image, f, output_dir, auditor, args.move): f for f in files}
        for future in tqdm(futures, total=len(files)):
            res = future.result()
            if isinstance(res, tuple):
                results_data.append(res)

    # Generate Kaggle Manifest for 'Gold Tier' weights
    results_data.sort(key=lambda x: x[1], reverse=True) # Sort by score
    gold_manifest = results_data[:20000]
    
    manifest_path = output_dir / "gold_tier_manifest.csv"
    with open(manifest_path, "w") as f:
        f.write("filename,score,is_gold,sharpness,entropy,saliency\n")
        for r in gold_manifest:
            f.write(f"{r[0]},{r[1]:.4f},{r[2]},{r[3]:.4f},{r[4]:.4f},{r[5]:.4f}\n")

    print(f"\n✅ Scientific Audit complete. Manifest generated: {manifest_path}")
    print(f"✨ Master Collection: Isolated top 20,000 images for JFST-DETR calibration.")

if __name__ == "__main__":
    main()


"""
Scientific Auditor — BetterBee Analysis
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

# Add better_engine to path
sys.path.append(str(Path(__file__).parent))

class ScientificAuditor:
    """Automated Quality Control for the 400k Dataset."""
    
    def __init__(self, high_precision_threshold=800, discard_threshold=200):
        self.high_precision_threshold = high_precision_threshold
        self.discard_threshold = discard_threshold

    def calculate_scientific_score(self, image: np.ndarray):
        """
        Calculates a composite score based on Laplacian Variance and Shannon Entropy.
        
        Returns:
            float: Composite score (0 - 1000+)
        """
        # 1. Laplacian Variance for Sharpness
        sharpness = cv2.Laplacian(image, cv2.CV_64F).var()
        
        # 2. Shannon Entropy for Information Density
        # We use a 256-bin histogram of the grayscale image
        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        marg = np.histogram(gray, bins=256, range=(0, 256))[0] / gray.size
        entropy = -np.sum(marg * np.log2(marg + 1e-7))
        
        # Composite Weighting: Scientific SOTA balancing
        # Sharpness is critical for mites, Entropy ensures we aren't just looking at blur.
        return (sharpness * 0.7) + (entropy * 300)

def process_image(img_path: Path, output_dir: Path, auditor: ScientificAuditor, move: bool = False):
    try:
        image = cv2.imread(str(img_path))
        if image is None:
            return None
            
        score = auditor.calculate_scientific_score(image)
        
        # Categorize based on proprietary thresholds
        if score > auditor.high_precision_threshold:
            category = "gold_tier"
        elif score < auditor.discard_threshold:
            category = "discard"
        else:
            category = "standard"
            
        target_path = output_dir / category / img_path.name
        target_path.parent.mkdir(parents=True, exist_ok=True)
        
        if move:
            shutil.move(str(img_path), str(target_path))
        else:
            shutil.copy2(str(img_path), str(target_path))
            
        return score
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
    auditor = ScientificAuditor()
    
    exts = {".jpg", ".jpeg", ".png", ".bmp", ".webp", ".tiff"}
    files = [f for f in input_dir.rglob("*") if f.suffix.lower() in exts]
    
    print(f"📊 Auditing {len(files)} images for SOTA scientific selection...")
    
    with ThreadPoolExecutor(max_workers=args.workers) as executor:
        list(tqdm(executor.map(lambda f: process_image(f, output_dir, auditor, args.move), files), total=len(files)))

    print(f"\n✅ Scientific Audit complete. Sorted files are in: {output_dir}")

if __name__ == "__main__":
    main()

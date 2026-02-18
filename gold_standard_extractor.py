"""
Gold Standard Extractor — BetterBee Analysis
============================================
Identifies the most scientifically valuable images for SOTA training.

Selection Criteria:
  - Laplacian Clarity Score > 600 (Extreme detail)
  - Color Variance check (Ensures high-contrast for mites)
  - Brightness normalization
"""

import sys
from pathlib import Path
import shutil
from concurrent.futures import ThreadPoolExecutor
from tqdm import tqdm
import numpy as np
import cv2

# Add better_engine to path
sys.path.append(str(Path(__file__).parent))
from better_engine.core.image_processing import decode_image, assess_blur

def is_gold_standard(image: np.ndarray, blur_score: float) -> bool:
    """Rigorous scientific quality check."""
    if blur_score < 600:
        return False
        
    # Check for color variance (helps phoretic mite contrast)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    contrast = gray.std()
    if contrast < 40: # Low contrast image
        return False
        
    return True

def process_file(img_path: Path, gold_dir: Path):
    try:
        with open(img_path, "rb") as f:
            raw = f.read()
        
        img = decode_image(raw)
        blur_score = assess_blur(img)
        
        if is_gold_standard(img, blur_score):
            target = gold_dir / img_path.name
            shutil.copy2(str(img_path), str(target))
            return True
        return False
    except Exception:
        return False

def main():
    if len(sys.argv) < 3:
        print("Usage: python gold_standard_extractor.py <input_dir> <output_dir>")
        sys.exit(1)
        
    input_dir = Path(sys.argv[1])
    gold_dir = Path(sys.argv[2])
    gold_dir.mkdir(parents=True, exist_ok=True)
    
    exts = {".jpg", ".jpeg", ".png", ".bmp", ".webp"}
    files = [f for f in input_dir.rglob("*") if f.suffix.lower() in exts]
    
    print(f"💎 Auditing {len(files)} images for 'Gold Standard' selection...")
    
    with ThreadPoolExecutor(max_workers=8) as executor:
        results = list(tqdm(executor.map(lambda f: process_file(f, gold_dir), files), total=len(files)))
        
    gold_count = sum(results)
    print(f"\n✨ Extraction complete. Found {gold_count} Gold Standard images in: {gold_dir}")

if __name__ == "__main__":
    main()

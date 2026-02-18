"""
Data Quality Prep Script — BetterBee Analysis
=============================================
Optimizes training for the 400,000 image dataset by filtering by Laplacian Variance.

Metrics:
  - Score < 100: REJECT (Too blurry for mite detection).
  - Score > 500: HIGH PRECISION (Priority for Stage 2 training).
"""

import sys
from pathlib import Path
import shutil
import argparse
from concurrent.futures import ThreadPoolExecutor
from tqdm import tqdm

# Add better_engine to path so we can use existing core modules
sys.path.append(str(Path(__file__).parent))

from better_engine.core.image_processing import decode_image, assess_blur, is_usable

def process_image(img_path: Path, output_dir: Path, move: bool = False):
    try:
        with open(img_path, "rb") as f:
            raw = f.read()
        
        img = decode_image(raw)
        blur_score = assess_blur(img)
        
        # Categorize
        if blur_score < 100:
            category = "discard"
        elif blur_score > 500:
            category = "high_precision"
        else:
            category = "standard"
            
        target_path = output_dir / category / img_path.name
        target_path.parent.makedirs(parents=True, exist_ok=True)
        
        if move:
            shutil.move(str(img_path), str(target_path))
        else:
            shutil.copy2(str(img_path), str(target_path))
            
        return blur_score
    except Exception as e:
        return f"Error: {e}"

def main():
    parser = argparse.ArgumentParser(description="Filter hive images by clarity.")
    parser.add_argument("input", help="Directory containing the 400k dataset")
    parser.add_argument("output", help="Directory to store sorted images")
    parser.add_argument("--move", action="store_true", help="Move instead of copy")
    parser.add_argument("--workers", type=int, default=8, help="Parallel workers")
    args = parser.parse_args()

    input_dir = Path(args.input)
    output_dir = Path(args.output)
    
    # Supported formats
    exts = {".jpg", ".jpeg", ".png", ".bmp", ".webp"}
    files = [f for f in input_dir.rglob("*") if f.suffix.lower() in exts]
    
    print(f"🔍 Found {len(files)} images. Starting quality audit...")
    
    with ThreadPoolExecutor(max_workers=args.workers) as executor:
        list(tqdm(executor.map(lambda f: process_image(f, output_dir, args.move), files), total=len(files)))

    print(f"\n✅ Audit complete. Sorted files are in: {output_dir}")

if __name__ == "__main__":
    main()

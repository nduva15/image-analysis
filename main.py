"""
Image Analysis — FastAPI Entry Point
=========================================
All inference logic lives in `image_analysis`. This file is purely
the HTTP transport layer.
"""

from __future__ import annotations

import time
from enum import Enum
from pathlib import Path
from typing import Any

from fastapi import FastAPI, File, HTTPException, Query, UploadFile
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel, Field

import image_analysis
from image_analysis.pipeline import AnalysisMode, AnalysisResult, load_weights
from image_analysis.pipeline import analyze_image as _analyze_image

# ---------------------------------------------------------------------------
# App
# ---------------------------------------------------------------------------

app = FastAPI(
    title="Image Analysis API",
    description=(
        "Unified apiary intelligence engine. Detects Varroa mites, classifies "
        "bee health, and computes Colony Vitality Scores from hive images.\n\n"
        f"**Package version:** `image_analysis {image_analysis.__version__}`"
    ),
    version=image_analysis.__version__,
    docs_url="/docs",
    redoc_url="/redoc",
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

SUPPORTED_FORMATS = {".jpg", ".jpeg", ".png", ".bmp", ".tiff", ".webp"}
MAX_IMAGE_MB = 50


# ---------------------------------------------------------------------------
# Response Models
# ---------------------------------------------------------------------------

class DetectionOut(BaseModel):
    label: str
    confidence: float
    bbox: list[float]
    area_fraction: float
    source_module: str


class VitalityOut(BaseModel):
    score: float
    grade: str
    infestation_rate: float
    counts: dict[str, int]
    warnings: list[str]
    needs_treatment: bool
    is_critical: bool
    # Advanced Metrics
    collapse_probability: float
    qmp_stability: float
    swarming_risk: str
    swarm_pulse: float
    aarf_days: float
    mite_r0: float
    brood_heart_temp_c: float
    brood_heart_health_score: float
    swarm_relay_status: str
    diseases: dict[str, float]


class AnalysisOut(BaseModel):
    request_id: str
    mode: str
    processing_time_ms: float
    total_detections: int
    detections: list[DetectionOut]
    vitality: VitalityOut


def _to_response(result: AnalysisResult) -> AnalysisOut:
    return AnalysisOut(
        request_id=result.request_id,
        mode=result.mode.value,
        processing_time_ms=result.processing_time_ms,
        total_detections=result.total_detections,
        detections=[
            DetectionOut(
                label=d.label.value,
                confidence=d.confidence,
                bbox=d.bbox,
                area_fraction=d.area_fraction,
                source_module=d.source_module,
            )
            for d in result.detections
        ],
        vitality=VitalityOut(
            score=result.report.vitality_score,
            grade=result.report.grade,
            infestation_rate=result.report.infestation_rate,
            counts=result.report.counts,
            warnings=result.report.warnings,
            needs_treatment=result.report.needs_treatment,
            is_critical=result.report.is_critical,
            collapse_probability=result.collapse_probability,
            qmp_stability=result.qmp_stability,
            swarming_risk=result.swarming_risk,
            swarm_pulse=result.swarm_pulse,
            aarf_days=result.aarf_days,
            mite_r0=result.mite_r0,
            brood_heart_temp_c=result.brood_heart_temp_c,
            brood_heart_health_score=result.brood_heart_health_score,
            swarm_relay_status=result.swarm_relay_status,
            diseases=result.diseases,
        ),
    )


# ---------------------------------------------------------------------------
# Startup
# ---------------------------------------------------------------------------

@app.on_event("startup")
async def startup_event():
    load_weights(Path("weights"))


# ---------------------------------------------------------------------------
# Endpoints
# ---------------------------------------------------------------------------

@app.get("/", tags=["Health"])
async def root():
    return {
        "service": "Image Analysis API",
        "version": image_analysis.__version__,
        "status": "online",
        "docs": "/docs",
        "modules": len([d for d in Path("modules").iterdir() if d.is_dir()])
                   if Path("modules").exists() else 0,
    }


@app.get("/health", tags=["Health"])
async def health():
    return {"status": "healthy", "timestamp": time.time()}


@app.post("/analyze", response_model=AnalysisOut, tags=["Analysis"])
async def analyze(
    file: UploadFile = File(..., description="Hive image (JPG/PNG/BMP/TIFF/WebP)"),
    mode: AnalysisMode = Query(AnalysisMode.STANDARD),
    confidence: float = Query(0.35, ge=0.1, le=0.99),
    enhance: bool = Query(True, description="Apply CLAHE contrast enhancement"),
):
    """
    **Analyze a single hive image.**

    Returns per-bee detections, Colony Vitality Score, and actionable warnings.
    """
    suffix = Path(file.filename or "").suffix.lower()
    if suffix not in SUPPORTED_FORMATS:
        raise HTTPException(415, f"Unsupported format '{suffix}'")

    raw = await file.read()
    if len(raw) > MAX_IMAGE_MB * 1024 * 1024:
        raise HTTPException(413, f"Image exceeds {MAX_IMAGE_MB}MB limit")

    try:
        result = _analyze_image(raw, mode=mode, confidence=confidence, enhance=enhance)
    except ValueError as e:
        raise HTTPException(422, str(e))

    return _to_response(result)


@app.post("/analyze/batch", tags=["Analysis"])
async def analyze_batch(
    files: list[UploadFile] = File(...),
    mode: AnalysisMode = Query(AnalysisMode.FAST),
    confidence: float = Query(0.35, ge=0.1, le=0.99),
):
    """Analyze up to 20 hive images in one request."""
    if len(files) > 20:
        raise HTTPException(400, "Maximum 20 images per batch")

    results = []
    for f in files:
        raw = await f.read()
        try:
            r = _analyze_image(raw, mode=mode, confidence=confidence)
            results.append(_to_response(r))
        except Exception as e:
            results.append({"error": str(e), "filename": f.filename})

    valid = [r for r in results if isinstance(r, AnalysisOut)]
    return {
        "batch_size": len(results),
        "results": results,
        "aggregate": {
            "avg_vitality_score": round(
                sum(r.vitality.score for r in valid) / max(len(valid), 1), 1
            ),
            "total_varroa_detected": sum(
                r.vitality.counts.get("varroa", 0) for r in valid
            ),
            "hives_needing_treatment": sum(
                1 for r in valid if r.vitality.needs_treatment
            ),
            "hives_critical": sum(1 for r in valid if r.vitality.is_critical),
        },
    }


@app.get("/modules", tags=["Info"])
async def list_modules():
    """List all 19 integrated research modules."""
    modules_dir = Path("modules")
    if not modules_dir.exists():
        return {"modules": [], "count": 0}

    modules = []
    for d in sorted(modules_dir.iterdir()):
        if d.is_dir() and not d.name.startswith("__"):
            py_files = list(d.rglob("*.py"))
            modules.append({
                "name": d.name,
                "python_files": len(py_files),
                "has_weights": any(
                    list(d.rglob("*.pt")) + list(d.rglob("*.h5")) + list(d.rglob("*.onnx"))
                ),
            })

    return {"modules": modules, "count": len(modules)}


@app.get("/vitality/thresholds", tags=["Info"])
async def vitality_thresholds():
    """Reference thresholds for Colony Vitality Score interpretation."""
    return {
        "grades": {
            "A (85-100)": "Excellent — Colony is thriving",
            "B (70-84)": "Good — Minor issues, monitor closely",
            "C (55-69)": "Fair — Treatment may be needed",
            "D (40-54)": "Poor — Intervention recommended",
            "F (0-39)": "Critical — Immediate action required",
        },
        "varroa_thresholds": {
            "safe": "< 2 mites per 100 bees",
            "warning": "2–3 mites per 100 bees",
            "treat": "> 3 mites per 100 bees (treatment required)",
        },
    }


"""
image_analysis.core.vitality
===========================
Colony health scoring and vitality index computation.

Implements the Colony Vitality Score (CVS) algorithm — a weighted composite
metric derived from detection ratios, infestation rates, and behavioral signals.
"""

from __future__ import annotations

from dataclasses import dataclass, field
from enum import Enum
from typing import Counter


class BeeClass(str, Enum):
    """Canonical bee health classification labels used across all detectors."""
    HEALTHY = "healthy"
    VARROA = "varroa"
    DWV = "deformed_wing_virus"
    POLLEN = "pollen_carrying"
    DRONE = "drone"
    WASP = "wasp"
    UNKNOWN = "unknown"


@dataclass
class Detection:
    """A single detected object with its classification and spatial data."""
    label: BeeClass
    confidence: float
    bbox: list[float]          # [x1, y1, x2, y2] normalized 0–1
    area_fraction: float = 0.0
    source_module: str = ""    # Which sub-module produced this detection


@dataclass
class ColonyReport:
    """
    Full colony health report produced by the analysis pipeline.

    Attributes
    ----------
    vitality_score : float
        Colony Vitality Score, 0–100. Composite of healthy ratio,
        infestation penalty, DWV penalty, wasp penalty, and pollen bonus.
    grade : str
        Letter grade (A/B/C/D/F) derived from vitality_score.
    infestation_rate : float
        Varroa mites per 100 bees. Treatment threshold: >3.0
    counts : dict
        Per-class detection counts.
    warnings : list[str]
        Actionable alerts (high infestation, wasps, DWV, etc.)
    """
    vitality_score: float
    grade: str
    infestation_rate: float
    counts: dict[str, int]
    warnings: list[str] = field(default_factory=list)

    @property
    def needs_treatment(self) -> bool:
        """True if Varroa infestation exceeds the 3% treatment threshold."""
        return self.infestation_rate > 3.0

    @property
    def is_critical(self) -> bool:
        return self.vitality_score < 40.0


# ---------------------------------------------------------------------------
# Scoring Logic
# ---------------------------------------------------------------------------

_GRADE_THRESHOLDS = [(85, "A"), (70, "B"), (55, "C"), (40, "D"), (0, "F")]

# Weights tuned against BeeAlarmed + bee-mite-detector field data
_VARROA_PENALTY_WEIGHT = 40.0
_DWV_PENALTY_WEIGHT    = 30.0
_WASP_PENALTY_CAP      = 20.0
_POLLEN_BONUS_CAP      = 10.0


def compute_colony_report(detections: list[Detection]) -> ColonyReport:
    """
    Compute a ColonyReport from a list of Detection objects.

    Algorithm
    ---------
    1. Count detections per class.
    2. Compute healthy_ratio = healthy / total_bees.
    3. Apply penalties for Varroa, DWV, and wasps.
    4. Apply foraging bonus for pollen carriers.
    5. Clamp to [0, 100] and assign letter grade.
    6. Generate actionable warnings.
    """
    counts: Counter[str] = Counter()
    for d in detections:
        counts[d.label.value] += 1

    bee_classes = [BeeClass.HEALTHY, BeeClass.VARROA, BeeClass.DWV,
                   BeeClass.POLLEN, BeeClass.DRONE]
    total_bees = sum(counts[c.value] for c in bee_classes)

    if total_bees == 0:
        score = 0.0
        infestation_rate = 0.0
    else:
        healthy_ratio   = counts[BeeClass.HEALTHY.value] / total_bees
        varroa_ratio    = counts[BeeClass.VARROA.value] / total_bees
        dwv_ratio       = counts[BeeClass.DWV.value] / total_bees
        pollen_ratio    = counts[BeeClass.POLLEN.value] / total_bees
        wasp_count      = counts[BeeClass.WASP.value]

        varroa_penalty  = varroa_ratio * _VARROA_PENALTY_WEIGHT
        dwv_penalty     = dwv_ratio * _DWV_PENALTY_WEIGHT
        wasp_penalty    = min(wasp_count * 5.0, _WASP_PENALTY_CAP)
        pollen_bonus    = min(pollen_ratio * 10.0, _POLLEN_BONUS_CAP)

        score = max(0.0, min(100.0,
            (healthy_ratio * 100.0)
            - varroa_penalty
            - dwv_penalty
            - wasp_penalty
            + pollen_bonus
        ))
        infestation_rate = varroa_ratio * 100.0

    grade = next(g for threshold, g in _GRADE_THRESHOLDS if score >= threshold)

    warnings: list[str] = []
    if infestation_rate > 3.0:
        warnings.append(
            f"⚠️ Varroa infestation at {infestation_rate:.1f}% — treatment threshold exceeded (>3%)"
        )
    if counts[BeeClass.WASP.value] > 0:
        warnings.append(f"⚠️ {counts[BeeClass.WASP.value]} wasp(s) detected at hive entrance")
    if counts[BeeClass.DWV.value] > 0:
        warnings.append(f"⚠️ {counts[BeeClass.DWV.value]} bee(s) showing Deformed Wing Virus symptoms")
    if score < 40.0:
        warnings.append("🚨 Colony Vitality Score is critical — immediate intervention required")

    return ColonyReport(
        vitality_score=round(score, 1),
        grade=grade,
        infestation_rate=round(infestation_rate, 2),
        counts=dict(counts),
        warnings=warnings,
    )


"""
better_engine.pipeline
=======================
The Biocybernetic Intelligence Pipeline.

Integrates:
  - JFST-DETR + Temporal Fusion for Small-Object detection
  - Stochastic Population Modeling (SDEs)
  - Pheromone Stability Analysis (QMP)
  - 3-Stage Waterfall logic
"""

import time
import uuid
from dataclasses import dataclass, field
from enum import Enum
from pathlib import Path
import numpy as np

from better_engine.core.image_processing import decode_image, assess_blur, enhance_contrast
from better_engine.core.vitality import Detection, compute_colony_report, ColonyReport
from better_engine.core.math.stochastic_vitality import StochasticHiveMind
from better_engine.core.math.pheromone_modeling import QMPSimulator

# Using updated detectors (Stubs until weights are loaded)
from better_engine.detectors.mite_detector import MiteDetector
from better_engine.detectors.bee_classifier import BeeClassifier
from better_engine.detectors.entrance_monitor import EntranceMonitor

class AnalysisMode(str, Enum):
    FAST     = "fast"
    STANDARD = "standard"
    DEEP     = "deep"
    SOTA     = "sota" # Biocybernetic mode (SDEs + QMP)

@dataclass
class BetterAnalysisResult:
    request_id: str
    mode: AnalysisMode
    processing_time_ms: float
    total_detections: int
    report: ColonyReport
    
    # Advanced Metrics (SOTA Mode)
    collapse_probability: float = 0.0
    qmp_stability: float = 1.0
    swarming_risk: str = "Stable"
    
    detections: list[Detection] = field(default_factory=list)
    metadata: dict = field(default_factory=dict)

class BetterAnalysisPipeline:
    """The unified 'Brain' of BetterBee Analysis."""

    def __init__(self):
        self.mite_detector = MiteDetector()
        self.bee_classifier = BeeClassifier()
        self.entrance_monitor = EntranceMonitor()
        
        # Advanced Modules
        self.stochastic_math = StochasticHiveMind()
        self.qmp_simulator = QMPSimulator()
        
        self.temporal_memory = [] # Buffer for CAMS fusion

    def run(self, raw_bytes: bytes, mode: AnalysisMode = AnalysisMode.SOTA) -> BetterAnalysisResult:
        start_time = time.perf_counter()
        request_id = str(uuid.uuid4())
        
        img = decode_image(raw_bytes)
        img = enhance_contrast(img)
        
        # 1. Detection Stage
        all_detections = []
        
        # Stage 1: Entrance
        entrance_stats = self.entrance_monitor.analyze_frame(img)
        all_detections.extend(entrance_stats.detections)
        
        # Stage 2 & 3: Mites & Classification
        if mode in (AnalysisMode.STANDARD, AnalysisMode.DEEP, AnalysisMode.SOTA):
            all_detections.extend(self.mite_detector.detect(img))
            
        if mode in (AnalysisMode.DEEP, AnalysisMode.SOTA):
            all_detections.extend(self.bee_classifier.classify_frame(img))
            
        # 2. Vitality Report
        report = compute_colony_report(all_detections)
        
        # 3. Biocybernetic Analysis (SOTA Mode)
        collapse_prob = 0.0
        qmp_stability = 1.0
        swarming_risk = "Stable"
        
        if mode == AnalysisMode.SOTA:
            # Stochastic Analysis
            mite_load = report.infestation_rate / 100.0
            death_rate = 0.1 + (mite_load * 0.5) # Dynamic mortality
            
            h0 = report.healthy_count * 50 # Heuristic scaling
            f0 = entrance_stats.bees_entering * 10 
            
            h_paths, f_paths = self.stochastic_math.simulate_path(h0, f0, death_rate)
            collapse_prob = self.stochastic_math.collapse_probability(h_paths, f_paths)
            
            # Pheromone Analysis
            density = min(1.0, report.healthy_count / 100.0)
            qmp_stability = self.qmp_simulator.estimate_qmp_stability(
                report.healthy_count, density, 0.05 # 5% fanning default
            )
            swarming_risk = self.qmp_simulator.forecast_queen_cells([qmp_stability] * 10)

        elapsed = (time.perf_counter() - start_time) * 1000
        
        return BetterAnalysisResult(
            request_id=request_id,
            mode=mode,
            processing_time_ms=round(elapsed, 2),
            total_detections=len(all_detections),
            report=report,
            collapse_probability=round(collapse_prob, 4),
            qmp_stability=round(qmp_stability, 3),
            swarming_risk=swarming_risk,
            detections=all_detections
        )

# Singleton
_pipeline = BetterAnalysisPipeline()

def analyze_image(raw_bytes: bytes, mode: AnalysisMode = AnalysisMode.SOTA) -> BetterAnalysisResult:
    return _pipeline.run(raw_bytes, mode)

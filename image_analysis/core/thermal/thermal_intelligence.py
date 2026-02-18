"""
image_analysis.core.thermal.thermal_intelligence
===============================================
Proprietary thermal analysis for queen health and brood nest stability.

Implements spatial gradient analysis and temporal smoothing to detect 
deviations from the 'Brood-Heart' target temperature (34-36°C).
"""

import numpy as np

class BroodHeartAnalyzer:
    """
    Analyzes thermal matrices to monitor queen performance and brood health.
    """
    
    def __init__(self, target_temp=35.0):
        self.target = target_temp
        self.history = []
        self.max_history = 100

    def process_frame(self, thermal_matrix):
        """
        Processes a raw thermal matrix (e.g., from MLX90640 or Lepton 3.5).
        
        Args:
            thermal_matrix: np.ndarray (e.g., 24x32 or 120x160)
            
        Returns:
            Dictionary with stability and risk metrics.
        """
        # Calculate the 2D spatial center mass (assumed center of frame)
        h, w = thermal_matrix.shape
        cy, cx = h // 2, w // 2
        dy, dx = h // 4, w // 4
        
        central_mass = np.mean(thermal_matrix[cy-dy:cy+dy, cx-dx:cx+dx])
        total_variance = np.var(thermal_matrix)
        
        # 'Thermal Tightness': How concentrated the heat is.
        # High tightness (low variance in mass) = strong brood nest.
        tightness = 1.0 / (total_variance + 1e-6)
        
        # Temporal smoothing and trend analysis
        self.history.append(central_mass)
        if len(self.history) > self.max_history:
            self.history.pop(0)
            
        trend = np.gradient(self.history)[-1] if len(self.history) > 1 else 0
        
        # Health baseline check
        is_stable = abs(central_mass - self.target) < 1.0
        
        # Swarming detection: Rapid temp increase + high absolute temp
        swarming_risk = "High" if trend > 0.5 and central_mass > 37.0 else "Low"
        
        return {
            "nest_temp": float(round(central_mass, 2)),
            "is_stable": bool(is_stable),
            "thermal_tightness": float(round(tightness, 4)),
            "swarming_risk": swarming_risk,
            "trend": float(round(trend, 4))
        }

    def calculate_health_index(self, metrics):
        """Composite health index based on thermal stability."""
        stability_score = 100.0 - (abs(metrics["nest_temp"] - self.target) * 10)
        return max(0.0, min(100.0, stability_score))


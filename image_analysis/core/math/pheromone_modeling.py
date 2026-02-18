"""
image_analysis.core.math.pheromone_modeling
===========================================
Bio-mathematical simulation of Queen Mandibular Pheromone (QMP) distribution.

Models the pheromone concentration decay based on bee density and 
behavioral triggers (fanning, clumping) detected by the Vision AI.
"""

import numpy as np

class QMPSimulator:
    """
    Simulates QMP levels within the hive to predict swarming 
    (Queen Cell construction) before visual evidence exists.
    """
    def __init__(self, base_concentration=100.0, decay_rate=0.05):
        self.base_qmp = base_concentration
        self.decay = decay_rate

    def estimate_qmp_stability(self, bee_count, density_map, fanning_ratio):
        """
        Calculates QMP distribution efficiency.
        
        Args:
            bee_count: Total bees detected in ROI
            density_map: Sparse/Clumped index (0.0 - 1.0)
            fanning_ratio: Percentage of bees exhibiting fanning behavior
            
        Returns:
            Stability index (0.0 - 1.0). < 0.4 indicates high risk of supersedure.
        """
        # Pheromone transmission is inhibited by excessive 'clumping' 
        # but aided by moderate density. Excessive fanning causes aerial decay.
        transmission_factor = (1.0 - density_map) * (1.0 - fanning_ratio)
        current_concentration = self.base_qmp * np.exp(-self.decay / (transmission_factor + 1e-6))
        
        stability = min(1.0, current_concentration / self.base_qmp)
        return float(stability)

    def forecast_queen_cells(self, historical_stability):
        """Predicts risk of queen cell initiation based on 48h trend."""
        trend = np.gradient(historical_stability)
        return "Critical" if np.mean(trend) < -0.15 else "Stable"


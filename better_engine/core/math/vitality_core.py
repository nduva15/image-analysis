"""
better_engine.core.math.vitality_core
======================================
Predictive eco-epidemiological modeling for colony health.

Implements Ordinary Differential Equations (ODEs) to model hive population 
dynamics, social inhibition, and collapse thresholds.
"""

import numpy as np
from scipy.integrate import odeint

class ColonyIntelligence:
    """Predictive modeling based on eco-epidemiological research."""
    
    def __init__(self, eclosion_rate=1500, social_inhibition=0.25):
        self.L = eclosion_rate         # Max eggs laid/day (Level L)
        self.alpha = social_inhibition # Rate of transition to foraging (Alpha)

    def population_model(self, y, t, m_rate):
        """
        ODE representing Hive (H) and Forager (F) dynamics.
        
        Args:
            y: [H, F] populations
            t: time steps
            m_rate: forager death rate (determined by Stage 1 monitoring)
        """
        H, F = y
        # Social inhibition function (r): more foragers = fewer hive bees transitioning
        # This prevents young bees from precocious foraging unless mortality is high.
        r = 1 / (1 + (F / (H + 1e-6))**2) if H > 0 else 1
        
        # dH/dt = L - mortality_h - transition_to_f
        dHdt = self.L - 0.1 * H - self.alpha * H * r
        # dF/dt = transition_to_f - mortality_f
        dFdt = self.alpha * H * r - m_rate * F
        
        return [dHdt, dFdt]

    def predict_collapse(self, current_H, current_F, forager_death_rate, days=60):
        """
        Simulates population trend. Returns True if colony falls below 
        viability threshold (5000 bees) within the projection window.
        """
        t = np.linspace(0, days, days) # Projection window
        try:
            solution = odeint(self.population_model, [current_H, current_F], t, args=(forager_death_rate,))
            final_pop = solution[-1, 0] + solution[-1, 1]
            return final_pop < 5000 # Critical viability threshold
        except Exception as e:
            # Fallback for numerical instability
            return False

    def calculate_social_inhibition(self, H, F):
        """Quantifies current stress on the nurse-to-forager pipeline."""
        return 1 / (1 + (F / (H + 1e-6))**2)

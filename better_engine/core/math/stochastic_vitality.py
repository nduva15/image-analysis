"""
better_engine.core.math.stochastic_vitality
============================================
Advanced population modeling using Stochastic Differential Equations (SDEs).

Accounts for environmental 'noise' and biological volatility using 
Ito Calculus and Brownian Motion simulations.
"""

import numpy as np

class StochasticHiveMind:
    """Predictive modeling using Ito Calculus for hive population volatility."""
    
    def __init__(self, eclosion_max=1500, alpha=0.25, sigma=0.05):
        self.L = eclosion_max  # Max eggs laid/day (Daily birth rate)
        self.alpha = alpha     # Transition rate (Hive -> Forager)
        self.sigma = sigma     # Environmental volatility constant (Diffusion)

    def simulate_path(self, H0, F0, death_rate, days=30, simulations=100):
        """
        Euler-Maruyama integration for population prediction paths.
        
        Returns:
            H_paths, F_paths: Numpy arrays of shape (simulations, days+1)
        """
        dt = 1 # daily steps
        H_paths = np.zeros((simulations, days + 1))
        F_paths = np.zeros((simulations, days + 1))
        
        H_paths[:, 0] = H0
        F_paths[:, 0] = F0
        
        for s in range(simulations):
            for t_idx in range(days):
                curr_H = H_paths[s, t_idx]
                curr_F = F_paths[s, t_idx]
                
                # Deterministic drift (The ODE part)
                # r: Social Inhibition Factor
                r = 1 / (1 + (curr_F / (curr_H + 1e-6))**2) if curr_H > 0 else 1
                
                dH = (self.L - (0.1 * curr_H) - (self.alpha * curr_H * r)) * dt
                dF = ((self.alpha * curr_H * r) - (death_rate * curr_F)) * dt
                
                # Stochastic diffusion (The 'Real World' noise / Brownian Motion)
                noise_H = np.random.normal(0, self.sigma * curr_H * np.sqrt(dt))
                noise_F = np.random.normal(0, self.sigma * curr_F * np.sqrt(dt))
                
                H_paths[s, t_idx + 1] = max(0, curr_H + dH + noise_H)
                F_paths[s, t_idx + 1] = max(0, curr_F + dF + noise_F)
            
        return H_paths, F_paths

    def collapse_probability(self, H_paths, F_paths, threshold=5000):
        """Calculates the statistical probability of collapse across all paths."""
        final_populations = H_paths[:, -1] + F_paths[:, -1]
        collapses = np.sum(final_populations < threshold)
        return float(collapses / H_paths.shape[0])

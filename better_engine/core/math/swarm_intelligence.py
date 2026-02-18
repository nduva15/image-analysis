"""
better_engine.core.math.swarm_intelligence
===========================================
Predictive modeling for swarm events using cross-modal derivative analysis.

Analyzes the temporal derivatives of visual density and acoustic spectral power
to predict swarm initiation using the Biophysical Swarm Pulse (BSP) algorithm.
"""

import numpy as np

class SwarmIntelligence:
    """
    Predicts swarm events by analyzing the synchronization of 
    visual clumping and acoustic intensity spikes.
    """
    def __init__(self, history_len=60):
        self.history_len = history_len
        self.acoustic_history = []
        self.density_history = []

    def update_telemetry(self, visual_density, acoustic_power):
        """
        Updates the internal state with new sensor telemetry.
        
        Args:
            visual_density: Local clumping factor (0.0 - 1.0)
            acoustic_power: Spectral energy in the 200-250Hz window
        """
        self.acoustic_history.append(acoustic_power)
        self.density_history.append(visual_density)
        
        if len(self.acoustic_history) > self.history_len:
            self.acoustic_history.pop(0)
            self.density_history.pop(0)

    def calculate_swarm_pulse(self):
        """
        Calculates the probability of a swarm event based on the 
        derivative of the combined Bio-Pulse signal.
        
        Formula:
            Pulse = d(Density)/dt * d(Acoustic)/dt
        """
        if len(self.acoustic_history) < 5:
            return 0.0
            
        # Calculate rates of change (derivatives)
        d_density = np.gradient(self.density_history)
        d_acoustic = np.gradient(self.acoustic_history)
        
        # Swarm initiation is characterized by a simultaneous positive spike
        # in both visual agitation and acoustic intensity.
        pulse_signal = d_density * d_acoustic
        
        # Exponential smoothing for final score
        score = np.mean(pulse_signal[-5:]) * 10.0
        return float(max(0.0, min(1.0, score)))

    def get_swarm_alert_level(self):
        """Returns action-oriented alert levels for the dashboard."""
        pulse = self.calculate_swarm_pulse()
        
        if pulse > 0.85:
            return "CRITICAL: Swarm Initiation Imminent", pulse
        elif pulse > 0.60:
            return "WARNING: Pre-Swarm Agitation Detected", pulse
        else:
            return "Stable", pulse

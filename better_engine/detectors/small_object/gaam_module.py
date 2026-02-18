"""
better_engine.detectors.small_object.gaam_module
================================================
Global Awareness Adaptive Module (GAAM) for JFST-DETR.

Designed to filter complex agricultural background noise (honeycomb, wax, larvae)
to isolate high-contrast textures characteristic of Varroa mites.
"""

import torch
import torch.nn as nn

class GAAMModule(nn.Module):
    """
    Global Awareness Adaptive Module.
    Implements a multi-scale attention gate for small object saliency.
    """
    def __init__(self, channels):
        super().__init__()
        self.avg_pool = nn.AdaptiveAvgPool2d(1)
        self.conv = nn.Sequential(
            nn.Conv2d(channels, channels // 4, 1, bias=False),
            nn.ReLU(inplace=True),
            nn.Conv2d(channels // 4, channels, 1, bias=False),
            nn.Sigmoid()
        )

    def forward(self, x):
        b, c, _, _ = x.size()
        y = self.avg_pool(x)
        y = self.conv(y)
        return x * y.expand_as(x)

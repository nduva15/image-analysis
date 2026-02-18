"""
better_engine.detectors.small_object.sepn_net
==============================================
Spatial Enhancement Pyramid Network (SEPN) for BetterMite detection.

Restores fine-grained spatial features to prevent mite 'vanishing' 
during deep layer convolutions.
"""

import torch
import torch.nn as nn
import torch.nn.functional as F

class SEPNNet(nn.Module):
    """
    Spatial Enhancement Pyramid Network.
    Fuses high-resolution shallow features with rich semantic deep features.
    """
    def __init__(self, in_channels_list, out_channels=256):
        super().__init__()
        self.lateral_convs = nn.ModuleList([
            nn.Conv2d(in_ch, out_channels, 1) for in_ch in in_channels_list
        ])
        self.fpn_convs = nn.ModuleList([
            nn.Conv2d(out_channels, out_channels, 3, padding=1) for _ in in_channels_list
        ])

    def forward(self, inputs):
        # inputs are feature maps from different stages (e.g. C2, C3, C4, C5)
        # Top-down pathway
        prev_features = self.lateral_convs[-1](inputs[-1])
        outputs = [prev_features]
        
        for i in range(len(inputs) - 2, -1, -1):
            lateral = self.lateral_convs[i](inputs[i])
            top_down = F.interpolate(prev_features, size=lateral.shape[2:], mode='nearest')
            prev_features = lateral + top_down
            outputs.insert(0, prev_features)
            
        # Refinement
        return [self.fpn_convs[i](outputs[i]) for i in range(len(outputs))]

"""
better_engine.detectors.small_object.gaam_module
================================================
Global Awareness Adaptive Module (GAAM) for JFST-DETR.

Designed to filter complex agricultural background noise (honeycomb, wax, larvae)
to isolate high-contrast textures characteristic of Varroa mites.
"""

import torch
import torch.nn as nn
import torch.nn.functional as F

class GAAMModuleV2(nn.Module):
    """
    Global Awareness Adaptive Module v2 with CAMS.
    Implements Cross-Attention Multi-Scale (CAMS) for temporal feature persistence.
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
        # CAMS Temporal Attention Head
        self.query_proj = nn.Conv2d(channels, channels // 8, 1)
        self.key_proj = nn.Conv2d(channels, channels // 8, 1)

    def forward(self, x, temporal_context=None):
        """
        Args:
            x: current frame features
            temporal_context: features from previous N frames for CAMS fusion
        """
        b, c, h, w = x.size()
        
        # Spatial-Channel Attention (v1)
        y = self.avg_pool(x)
        y = self.conv(y)
        x_att = x * y.expand_as(x)
        
        if temporal_context is not None:
            # CAMS Cross-Attention (v2)
            # This 'remembers' textures from previous frames to confirm mite signal
            q = self.query_proj(x_att).view(b, -1, h*w)
            k = self.key_proj(temporal_context).view(b, -1, h*w)
            attn = torch.bmm(q.transpose(1, 2), k) # [B, HW, HW]
            attn = F.softmax(attn, dim=-1)
            x_att = x_att + torch.bmm(k, attn.transpose(1, 2)).view(b, c, h, w)
            
        return x_att

"""
image_analysis
=============
Unified apiary intelligence package for Image Analysis.

Integrates research from 19 open-source repositories into a single,
coherent Python package. All source modules are attributed in MASTER_DOCS.md.

Public API
----------
    from image_analysis import analyze_image, ColonyReport, AnalysisMode
"""

from image_analysis.pipeline import analyze_image, AnalysisMode
from image_analysis.core.vitality import ColonyReport

__version__ = "1.0.0"
__author__ = "Image Analysis"
__all__ = ["analyze_image", "AnalysisMode", "ColonyReport"]


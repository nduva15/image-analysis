"""
better_engine
=============
Unified apiary intelligence package for BetterBee Analysis.

Integrates research from 19 open-source repositories into a single,
coherent Python package. All source modules are attributed in MASTER_DOCS.md.

Public API
----------
    from better_engine import analyze_image, ColonyReport, AnalysisMode
"""

from better_engine.pipeline import analyze_image, AnalysisMode
from better_engine.core.vitality import ColonyReport

__version__ = "1.0.0"
__author__ = "BetterBee Analysis"
__all__ = ["analyze_image", "AnalysisMode", "ColonyReport"]

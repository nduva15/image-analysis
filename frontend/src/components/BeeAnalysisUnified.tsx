
import React, { useState, useRef, useEffect } from 'react';
import { Camera, Bot, Info, Search, Trash2, Clock, Sparkles, Activity, AlertTriangle, CheckCircle2 } from 'lucide-react';
import { motion, AnimatePresence } from 'framer-motion';

// --- TYPES & INTERFACES ---
interface BeeDetection {
  id: number;
  confidence: number;
  health: string;
  bbox: { x: number; y: number; width: number; height: number };
}

interface AnalysisResults {
  bee_count: number;
  health_status: 'Healthy' | 'Warning' | 'Critical' | 'Unknown';
  health_score: number;
  confidence: number;
  detections: BeeDetection[];
  disease_indicators: { disease: string; probability: number; severity: string }[];
  recommendations: string[];
}

// --- API SERVICE (Backed by SOTA Engine) ---
const apiService = {
  async analyzeImage(file: File, confidence: number = 0.4): Promise<any> {
    const formData = new FormData();
    formData.append('image', file);
    formData.append('confidence_threshold', (confidence / 100).toString());

    try {
      // Calls the unified SOTA Backend Adapter
      const response = await fetch('/api/v1/image/analyze', {
        method: 'POST',
        body: formData
      });
      
      if (!response.ok) throw new Error('Analysis failed');
      return await response.json();
    } catch (error) {
      console.error('API Error:', error);
      throw error;
    }
  }
};

// --- MAIN COMPONENT ---
const BeeAnalysisUnified: React.FC = () => {
  const [selectedImage, setSelectedImage] = useState<File | null>(null);
  const [previewUrl, setPreviewUrl] = useState<string | null>(null);
  const [isAnalyzing, setIsAnalyzing] = useState(false);
  const [results, setResults] = useState<AnalysisResults | null>(null);
  const [confidence, setConfidence] = useState(40);
  const fileInputRef = useRef<HTMLInputElement>(null);

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (file) {
      setSelectedImage(file);
      setPreviewUrl(URL.createObjectURL(file));
      setResults(null);
      startAnalysis(file);
    }
  };

  const startAnalysis = async (file: File) => {
    setIsAnalyzing(true);
    try {
      const data = await apiService.analyzeImage(file, confidence);
      setResults(data.results);
      if (data.annotated_image_url) {
          // If the backend returns a real annotation URL, use it
          // setPreviewUrl(data.annotated_image_url); 
      }
    } catch (err) {
      console.error(err);
    } finally {
      setIsAnalyzing(false);
    }
  };

  return (
    <div className="min-h-screen bg-[#0d0d0d] text-slate-200 p-8 font-sans">
      <div className="max-w-6xl mx-auto space-y-8">
        
        {/* Header */}
        <header className="flex items-center justify-between">
          <div className="flex items-center gap-4">
            <div className="w-12 h-12 rounded-2xl bg-amber-500/10 flex items-center justify-center border border-amber-500/20 shadow-[0_0_20px_rgba(245,158,11,0.1)]">
              <Bot className="w-6 h-6 text-amber-500" />
            </div>
            <div>
              <h1 className="text-3xl font-black tracking-tight text-white uppercase italic">Bio-Detection AI</h1>
              <p className="text-slate-500 text-sm font-medium">Beeyield SOTA Imaging System v2.0</p>
            </div>
          </div>
          
          <button 
            onClick={() => fileInputRef.current?.click()}
            className="px-6 py-3 bg-white text-black font-black text-xs uppercase tracking-widest rounded-xl hover:bg-amber-400 transition-all active:scale-95"
          >
            Upload Specimen
          </button>
          <input type="file" ref={fileInputRef} className="hidden" accept="image/*" onChange={handleFileChange} />
        </header>

        <main className="grid grid-cols-1 lg:grid-cols-12 gap-8">
          
          {/* Left: Viewport */}
          <section className="lg:col-span-7 space-y-6">
            <div className="relative aspect-video bg-neutral-900 rounded-[2rem] overflow-hidden border border-white/5 shadow-2xl group">
              {previewUrl ? (
                <img src={previewUrl} className="w-full h-full object-contain" alt="Target" />
              ) : (
                <div className="w-full h-full flex flex-col items-center justify-center text-slate-600 gap-4">
                  <Camera className="w-12 h-12 stroke-[1.5]" />
                  <p className="font-bold uppercase tracking-widest text-xs">Waiting for biological feed</p>
                </div>
              )}

              {/* Scan Overlay */}
              <AnimatePresence>
                {isAnalyzing && (
                  <motion.div 
                    initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
                    className="absolute inset-0 bg-black/60 backdrop-blur-sm flex flex-col items-center justify-center gap-6"
                  >
                    <div className="w-24 h-24 relative">
                        <div className="absolute inset-0 border-4 border-amber-500/20 rounded-full"></div>
                        <motion.div 
                            animate={{ rotate: 360 }} transition={{ repeat: Infinity, duration: 2, ease: "linear" }}
                            className="absolute inset-0 border-4 border-t-amber-500 rounded-full shadow-[0_0_15px_#f59e0b]"
                        />
                    </div>
                    <div className="text-center">
                        <h3 className="text-xl font-black text-white uppercase tracking-tighter mb-1">Detecting Apiary Signatures</h3>
                        <div className="flex justify-center gap-1">
                            {[0, 1, 2].map(i => (
                                <motion.div key={i} animate={{ opacity: [0, 1, 0] }} transition={{ repeat: Infinity, duration: 1, delay: i * 0.2 }} className="w-1.5 h-1.5 bg-amber-500 rounded-full" />
                            ))}
                        </div>
                    </div>
                  </motion.div>
                )}
              </AnimatePresence>
            </div>

            {/* Threshold Slider */}
            <div className="bg-white/5 p-6 rounded-[1.5rem] border border-white/10">
                <div className="flex justify-between items-center mb-4">
                    <label className="text-xs font-black uppercase tracking-widest text-slate-400">Detection sensitivity</label>
                    <span className="text-amber-500 font-bold">{confidence}%</span>
                </div>
                <input 
                    type="range" min="10" max="90" value={confidence} 
                    onChange={(e) => setConfidence(parseInt(e.target.value))}
                    className="w-full h-1.5 bg-neutral-800 rounded-lg appearance-none cursor-pointer accent-amber-500"
                />
            </div>
          </section>

          {/* Right: Telemetry/Results */}
          <section className="lg:col-span-5 space-y-6">
            <AnimatePresence mode="wait">
              {results ? (
                <motion.div 
                  initial={{ opacity: 0, x: 20 }} animate={{ opacity: 1, x: 0 }} 
                  className="bg-white/5 rounded-[2rem] border border-white/10 p-8 space-y-8"
                >
                  <div className="flex items-center justify-between">
                    <h2 className="text-2xl font-black text-white uppercase italic">Telemetry</h2>
                    <div className={`px-4 py-1.5 rounded-full text-[10px] font-black uppercase tracking-tighter ${
                        results.health_status === 'Healthy' ? 'bg-emerald-500/20 text-emerald-400 border border-emerald-500/30' :
                        'bg-red-500/20 text-red-500 border border-red-500/30'
                    }`}>
                        {results.health_status}
                    </div>
                  </div>

                  {/* Core Stats */}
                  <div className="grid grid-cols-2 gap-4">
                    <div className="bg-black/40 p-6 rounded-2xl border border-white/5">
                        <p className="text-[10px] text-slate-500 uppercase font-bold mb-1">Bee Count</p>
                        <p className="text-4xl font-black text-white">{results.bee_count}</p>
                    </div>
                    <div className="bg-black/40 p-6 rounded-2xl border border-white/5">
                        <p className="text-[10px] text-slate-500 uppercase font-bold mb-1">Health Score</p>
                        <p className="text-4xl font-black text-amber-500">{Math.round(results.health_score)}%</p>
                    </div>
                  </div>

                  {/* Disease Table */}
                  <div className="space-y-4">
                    <h4 className="text-[11px] font-black uppercase text-slate-500 flex items-center gap-2">
                        <Activity className="w-3 h-3" /> Pathogen Scan
                    </h4>
                    <div className="space-y-2">
                        {results.disease_indicators.length > 0 ? results.disease_indicators.map((d: any, i: number) => (
                            <div key={i} className="flex justify-between items-center p-4 bg-white/5 rounded-xl border border-white/5">
                                <span className="font-bold text-sm text-white">{d.disease}</span>
                                <span className={`text-[10px] font-black uppercase ${d.severity === 'Critical' ? 'text-red-500' : 'text-amber-500'}`}>
                                    {d.severity} ({Math.round(d.probability * 100)}%)
                                </span>
                            </div>
                        )) : (
                            <div className="p-4 bg-emerald-500/5 rounded-xl border border-emerald-500/10 flex items-center gap-3">
                                <CheckCircle2 className="w-4 h-4 text-emerald-500" />
                                <span className="text-xs font-bold text-emerald-500/80 italic">No significant pathogens detected</span>
                            </div>
                        )}
                    </div>
                  </div>

                  {/* Recommendations */}
                  <div className="p-6 bg-amber-500/10 rounded-2xl border border-amber-500/20">
                     <p className="text-[10px] text-amber-500 uppercase font-black mb-3 italic tracking-widest flex items-center gap-2">
                         <Sparkles className="w-3 h-3" /> AI Recommendation
                     </p>
                     <ul className="space-y-2">
                        {results.recommendations.map((r: string, i: number) => (
                            <li key={i} className="text-xs font-semibold text-amber-200/80 leading-relaxed">• {r}</li>
                        ))}
                     </ul>
                  </div>

                  <button 
                    onClick={() => {setResults(null); setPreviewUrl(null);}}
                    className="w-full py-4 text-[10px] font-black uppercase tracking-[0.2em] text-slate-500 hover:text-white transition-colors"
                  >
                    Reset Interface
                  </button>
                </motion.div>
              ) : (
                <div className="h-full min-h-[400px] border-2 border-dashed border-white/5 rounded-[2rem] flex flex-col items-center justify-center p-8 text-center gap-6">
                    <Bot className="w-16 h-16 text-slate-800 animate-pulse" />
                    <div>
                        <h3 className="text-xl font-bold text-slate-600">Interface Standby</h3>
                        <p className="text-slate-500 text-sm max-w-[240px] mt-2">Upload a biological specimen image to begin automated analysis.</p>
                    </div>
                </div>
              )}
            </AnimatePresence>
          </section>

        </main>
      </div>
    </div>
  );
};

export default BeeAnalysisUnified;

---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "medium"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 02: ML Model Architecture & Inference Tradeoffs

## Questions

1. **Model size, quantization, and the accuracy-energy curve on the NPU**: What is the empirical relationship between parameter count, NPU inference latency, energy per inference, and arrhythmia/apnea detection F1 score on the target microcontroller, and at what INT8 / INT4 (or lower) quantization level do detection models begin to degrade in clinically meaningful ways — i.e., where on that curve does the design currently sit relative to the 7-day battery constraint, and how should the team determine the quantization threshold before committing to a silicon target?
2. **Multi-task vs. single-task model design**: Should arrhythmia and sleep apnea detection share a single multi-task model backbone with task-specific heads, or run as separate specialized models — and how does that choice ripple through battery budget, firmware update complexity, and false-positive rate management?
3. **Sensor fusion architecture, timing, and confidence weighting**: Given that PPG, accelerometer, skin temperature, and microphone signals have different sampling rates and latency profiles and frequently disagree on classification (e.g., elevated heart rate with no corresponding motion artifact), what fusion architecture (early fusion, late fusion, attention-based, or hybrid) best preserves the temporal relationships that distinguish true cardiac/respiratory events from motion artifacts, quantifies each modality's confidence contribution, and lets the multi-signal richness become a durable competitive moat as a platform for expanding clinical claims later — and what does that imply for on-device buffer management?

---

**Question count**: 3
**Cluster focus**: How model size, quantization, multi-task design, and sensor fusion architecture jointly determine accuracy, latency, energy, and platform extensibility on the NPU.

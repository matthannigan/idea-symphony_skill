---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
---

# Topic Cluster 03: ML Architecture, Quantization, and Sensor Fusion

## Questions

1. **Architecture, quantization, and MCU/NPU partitioning under the power envelope**: Across CNN, RNN/LSTM, transformer, and state-space (Mamba/S4) families, which offers the most defensible accuracy-per-milliwatt for arrhythmia detection on continuous PPG (compared on parameter count, activation memory, and inference cycles per sample with what published benchmarks before silicon commitment) — how should the team approach quantization (INT8, INT4, mixed-precision, weight clustering) in light of the specific NPU's instruction set, when should quantization-aware training (QAT) be introduced to prevent accuracy collapse on rare-event classes (arrhythmia, apnea) already underrepresented in training data, and what criteria should govern which layers run on the MCU versus the NPU given context-switch overhead and SRAM bandwidth limits, and how does that partitioning interact with sensor-front-end duty-cycle scheduling?
2. **Sensor fusion topology and graceful degradation**: For the four-sensor stack, should the team adopt early fusion, late fusion, or attention-based intermediate fusion — and what motion-artifact rejection requirements from the accelerometer should drive that choice so that sensor dropout (e.g., poor PPG contact during exercise) degrades detection capability gracefully rather than catastrophically, with anomaly confidence scores communicated to users in a way that handles the degradation honestly?
3. **Hardware-software co-design, SRAM as architectural invariant, PPG signal-processing precision, and component-vs-system optimization**: For a 12-person startup without custom silicon access, which COTS MCU+NPU combinations (Nordic nRF9151, Ambiq Apollo, ST STM32N6, Syntiant NDP) offer the most viable path to the power budget, what SRAM/flash constraints should the ML team treat as hard architectural invariants when designing model topology rather than late-stage optimization problems, which signal-processing stages — bandpass filtering, adaptive baseline wander removal, peak detection, SpO2 ratio-of-ratios — can be implemented in fixed-point arithmetic on the MCU without a DSP coprocessor (and where are the numerical precision cliffs that would force a fallback to floating-point or an additional hardware accelerator), and given that richer sensor fusion improves accuracy but demands more cycles and power — if sensing and processing are optimized independently, interaction effects (sensor wakeup timing, inference scheduling, thermal management) become a source of emergent behavior — what coordination mechanisms ensure component-level optimizations don't degrade system-level performance?
4. **Sensor fusion as a strength, not a complexity tax**: When sensor fusion in multi-signal health systems has worked elegantly — combining PPG, accelerometry, temperature, and breathing into something that feels unified rather than noisy — what architectural principles governed how signals were weighted, reconciled, and presented? How would those principles apply here?
5. **The urban sensing parallel for multi-signal fusion**: Smart city platforms that fuse traffic cameras, air quality sensors, and transit data discovered that the value isn't in any single stream but in the correlations between streams captured at the same moment — and that sensor failure degrades gracefully only when the fusion architecture treats each stream as independently useful. Given that this device fuses PPG, accelerometer, skin temperature, and microphone, how should the fusion architecture be designed so that partial sensor degradation (e.g., poor PPG contact during exercise) degrades detection capability gracefully rather than catastrophically, and what does that imply for how anomaly confidence scores are communicated to users?

---

**Question count**: 5
**Cluster focus**: The technical choices that determine accuracy-per-milliwatt, fusion topology, and graceful degradation under sensor dropout.

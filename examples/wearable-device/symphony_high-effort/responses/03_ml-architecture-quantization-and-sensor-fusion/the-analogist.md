---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "03_ml-architecture-quantization-and-sensor-fusion"
persona: "The Analogist"
---

# ML Architecture, Quantization, and Sensor Fusion - The Analogist

---

## Q1: Architecture, Quantization, and MCU/NPU Partitioning

### Q1.1 — RNN/LSTM as a cardiac adaptation strategy
**Summary.** Like how the immune system tolerates rare but critical pathogens through memory cells, LSTM architectures excel at sequential anomaly detection because they retain temporal context across variable-length heart rhythm patterns. For rare events (arrhythmias) underrepresented in training, this inductive bias is more robust than CNNs. Introduce QAT early—before deployment freezing—by training on synthetic rare-event augmentations. The MCU should handle signal conditioning (bandpass, baseline removal) while the NPU processes feature extraction and temporal inference, minimizing context-switch overhead.

### Q1.2 — State-space models through ecological succession
**Summary.** Mamba/S4 models parallel how mature ecosystems process external signals through accumulated biomass and feedback loops. For continuous PPG with background noise, they're more power-efficient per inference cycle than RNNs because they avoid recurrent matrix multiplications. Use INT8 weight quantization but keep activations FP16 in early fusion stages—this mirrors how sensory processing in biology uses coarse quantization for transmission but preserves precision in critical decision boundaries.

### Q1.3 — Constraint-driven design from industrial manufacturing
**Summary.** This echoes how automotive suppliers partition logic between embedded systems: SRAM is your constraint, not a solvable problem. Treat SRAM ceiling as an architectural invariant, like engine displacement in engine design. Start with model topologies that fit within 64–128 KB, then add features. Layer partitioning follows power signatures: if a layer's inference power exceeds the energy margin for sensor sampling, it belongs on the NPU. Use benchmark data from prior quantization studies (MobileNet, SqueezeNet) to guide initial architecture selection before silicon commitment.

### Q1.4 — Hierarchical filtering from signal processing history
**Summary.** Signal conditioning mirrors how water treatment plants use tiered filtration: coarse (bandpass filtering on MCU), medium (adaptive baseline wander removal in fixed-point via lookup tables), fine (peak detection thresholds). Avoid floating-point for the first two—fixed-point with 16-bit precision suffices for PPG preprocessing. The precision cliff appears when ratio-of-ratios (SpO₂ calculation) requires sub-percent accuracy; implement that in FP32 on the MCU's arithmetic unit or delegate to NPU if power permits.

### Q1.5 — Component-system decoupling from urban infrastructure
**Summary.** City grid failures teach us: optimizing power consumption per sensor independently (e.g., faster sampling for PPG) often increases system power due to inference scheduling conflicts. Use co-design checkpoints at 25%, 50%, 75% of development: measure thermal interactions, wakeup cascades, and inference queuing delays. An analogy: if power-optimized sensors wake the NPU every 100 ms but inference takes 150 ms, you've created a bottleneck. Schedule sensor sampling and inference phases to avoid collisions.

---

## Q2: Sensor Fusion Topology and Graceful Degradation

### Q2.1 — Late fusion through modular communication systems
**Summary.** Telecommunications networks achieve robustness by fusing signals late—each carrier (PPG, accel, temp) operates independently with its own anomaly scoring, then a reconciliation layer weighs confidence. This mirrors how smart cities handle camera outages: traffic prediction degrades gracefully because accelerometer data alone maintains basic motion detection. For your device, late fusion lets PPG loss degrade rhythm sensitivity without breaking motion-artifact rejection, and users see "reduced confidence" rather than "failed."

### Q2.2 — Attention-based fusion as sensory hierarchy in primates
**Summary.** The human nervous system doesn't treat all sensory channels equally—attention gates govern which signals drive decision-making. Implement attention weights that scale PPG contribution under normal contact and suppress it during motion (high accelerometer variance). This biological hierarchy prevents artifacts from cascading. Temperature as a slow signal becomes contextual: high temp + high accelerometer might suppress arrhythmia alerts (fever + exercise) while the same rhythm alone triggers investigation.

### Q2.3 — Graceful degradation from power grid resilience
**Summary.** Electrical grids lose generation capacity gracefully by shedding load hierarchically, not randomly. Your sensor fusion should rank signals by criticality: PPG is primary, accelerometer motion-rejection is secondary, temperature/breathing are tertiary. When contact fails, the system explicitly downgrades from "high-confidence rhythm detection" to "motion-based anomaly flags only." This matches how aviation handles instrument failures—pilots accept reduced capability with full transparency rather than hiding uncertainty.

### Q2.4 — Confidence scoring through medical triage
**Summary.** Emergency rooms communicate patient criticality clearly—red tag, yellow tag—rather than collapsing severity into a binary. Your anomaly confidence should mirror this: "high confidence arrhythmia" (PPG + accel + temp aligned), "moderate confidence" (PPG only), "low confidence, contact issue" (accel-only heuristic). Users understand degradation because healthcare practitioners already think in severity bands. Confidence scores should drive UI behavior: high triggers immediate alert; moderate suggests re-check positioning; low disables notifications until contact improves.

---

## Q3: Hardware-Software Co-Design, SRAM Constraints, and Signal Processing Precision

### Q3.1 — COTS selection through biology's modular organs
**Summary.** Biological systems achieve efficiency through organ specialization: the heart pumps, kidneys filter, liver detoxifies. For your MCU+NPU pairing, Nordic nRF9151 and Ambiq Apollo both pair general compute with Arm cores well but differ in neural accelerator bandwidth. Ambiq excels at sub-milliwatt regimes but constrain SRAM to 320 KB. This reminds me of how specialized organs succeed only when they match metabolic constraints. Benchmark power per inference on the two frontrunners using your actual model; SRAM is the binding architectural limit.

### Q3.2 — Fixed-point arithmetic through acoustic compression
**Summary.** Audio codecs (MP3, AAC) pioneered fixed-point signal processing under severe bit budgets. PPG bandpass filtering, baseline wander removal, and peak detection are audio-like problems—they're all time-domain preprocessing. Implement in Q15 fixed-point (16-bit signed fractional): multiplication overhead is negligible on Cortex-M4, and precision loss is imperceptible below 50 Hz (your Nyquist for PPG). The precision cliff is the ratio-of-ratios for SpO₂: that needs FP32 or lookup tables calibrated to your sensor's red/IR ratio range.

### Q3.3 — Architectural invariants from bridge engineering
**Summary.** Structural engineers start with load limits: a bridge's span must not exceed material yield. Your SRAM limit (64–128 KB) is a similar hard boundary. Design models that fit 50% of available SRAM, reserving the rest for runtime buffering and inference. This mirrors safety factors in civil engineering. If your initial model topology requires 90% of SRAM, redesign it before committing to silicon—late discovery of SRAM overflow is catastrophic. Use profiling tools early; treat memory as a first-class design constraint, not an optimization afterthought.

### Q3.4 — Component interaction from chemical kinetics
**Summary.** Chemical reactions show emergent behavior when components interact: enzyme concentration alone doesn't predict reaction rate if substrate availability is low. Your sensor-processing interactions parallel this: optimizing MCU sampling frequency without considering NPU inference latency creates bottlenecks. Measure and model thermal effects: faster inference = more heat, which degrades skin temperature sensing, which reduces fusion confidence. This feedback loop is invisible if components are optimized in isolation. Conduct full-system simulations under varied activity levels before hardware tape-out.

### Q3.5 — DSP coprocessor as a specialized task unit
**Summary.** Modern video processing delegates specific operations (motion estimation, DCT) to task-specialized units rather than general CPUs. For SpO₂ ratio-of-ratios and adaptive filtering, a lightweight DSP (present on many MCUs as a coprocessor) handles complex fixed-point arithmetic without stalling the main core. If your COTS MCU lacks a DSP, FP32 on the main ARM is acceptable—the power cost is predictable and justified by the rare-event precision requirement. Avoid falling into the trap of over-generalizing: sometimes a small, specialized piece of hardware beats pure software across an entire pipeline.

---

## Q4: Sensor Fusion as Strength, Not Complexity Tax

### Q4.1 — Unified signals through jazz ensemble coordination
**Summary.** Great jazz ensembles don't just combine instruments—they weave them through listening. Each musician responds to the whole, not a conductor. Effective sensor fusion works similarly: instead of a rigid weighting scheme, use adaptive gating where strong PPG signal temporarily suppresses false-positive motion artifacts from fidgeting, and sustained temperature elevation contextualizes rhythm variability as fever-driven rather than pathological. The key principle is mutual information: measure how much each signal reduces uncertainty in anomaly confidence, then weight accordingly.

### Q4.2 — Graceful composition from orchestral arrangement
**Summary.** Orchestras achieve depth by layering instruments with different frequency ranges and attack profiles. Fuse sensors by their information content, not equally: PPG (fast, high-frequency cardiac info) and accelerometer (slow, broad motion context) operate on different timescales. Weight PPG heavily for millisecond-level arrhythmia detection, accelerometer for second-level motion discrimination. This stratified fusion is lighter computationally and conceptually cleaner than treating all sensors as peers. Temperature and breathing contribute context only when PPG confidence is moderate—they're supporting voices, not soloists.

### Q4.3 — Strength through redundancy in biological design
**Summary.** Eyes provide stereoscopic vision because two views eliminate depth ambiguity that neither alone could solve. Your PPG + accelerometer + temperature combo provides redundancy in a similar way: PPG measures electrical signals, accelerometer measures mechanical motion, temperature captures metabolic state. An arrhythmia flagged by PPG but contradicted by low motion and stable temperature is likely a sensor artifact, not a real event. The strength emerges when you explicitly teach the model that multi-modal agreement increases confidence far beyond any single signal could.

### Q4.4 — Signal reconciliation through geological cross-validation
**Summary.** Geologists improve mineral identification by combining multiple tests (hardness, streak, luster) because no single test is definitive. PPG alone might flag ectopic beats during exercise; accelerometer alone can't distinguish. But accelerometer data showing structured periodicity (running pace) plus PPG showing rhythmic departures at that frequency creates a coherent narrative: exercise-induced ectopy, not arrhythmia. The art is building a model that finds coherence, not averaging conflicting signals into noise.

---

## Q5: Urban Sensing Parallel for Multi-Signal Fusion

### Q5.1 — Sensor failure modes from traffic system resilience
**Summary.** City traffic systems remain functional when individual sensors fail because the fusion architecture treats each stream's value independently. A broken speed camera doesn't cripple congestion detection if accelerometer-derived motion patterns still work. Implement your PPG dropout the same way: when contact fails, motion-based anomaly scores (accelerometer variance + heart rate stability derived from reduced PPG sampling) maintain weaker but honest detection. This requires training the model to predict arrhythmias from multimodal subsets, not just the full ensemble.

### Q5.2 — Independent utility from redundant sensing infrastructure
**Summary.** Smart cities use traffic cameras AND ultrasonic counters AND WiFi traces for pedestrian flow because each sensor fails independently. Your device should design each sensor to contribute independent predictive value: PPG captures electrical arrhythmias, accelerometer captures exertion-driven tachycardia, temperature captures fever-related rate elevation. Train separate classifiers for each modality, then combine confidence scores. When PPG fails, the device doesn't pretend PPG data exists—it explicitly reports "anomaly detection running in motion-only mode" and adjusts alert thresholds accordingly.

### Q5.3 — Correlation capture from spatial-temporal data fusion
**Summary.** Traffic + air quality + transit data reveal patterns invisible in isolation: congestion peaks correlate with elevated emissions, which correlate with reduced transit ridership. Similarly, your device should capture the temporal coherence between signals: an arrhythmia at the exact moment of accelerometer-spike (athlete's heart during sprint) has different implications than one during rest. Use time-windowed cross-correlation as a fusion feature: high correlation between PPG anomalies and accelerometer events suggests exercise artifact; low correlation suggests true pathology.

### Q5.4 — Honest degradation through transparent multimodal design
**Summary.** Urban air quality systems publish readings with confidence intervals—"Air Quality Index: 65±15 (based on 3 of 4 sensors operational)"—because transparency builds trust. Your companion app should communicate: "Arrhythmia confidence: 87% (based on PPG + accelerometer + temperature)" versus "Arrhythmia confidence: 42% (accelerometer only, PPG contact lost)." Users become partners in understanding uncertainty rather than victims of hidden signal dropout. This parallels how clinical alerts in hospitals include data quality flags: physicians trust systems more when they admit limitations.

### Q5.5 — Architectural principles from distributed sensing ecosystems
**Summary.** The most resilient sensor networks follow three principles: (1) each sensor is independently useful, (2) fusion adds information rather than complexity, (3) failure modes are explicit and graceful. For your device: PPG alone predicts arrhythmias at ~70% sensitivity; adding accelerometer to reject motion artifacts raises it to 85%; temperature contextualizes fever-related changes. Each layer adds observable value. When PPG contact fails, the system doesn't mysteriously degrade—it explicitly downshifts to "accelerometer-only motion anomaly detection," and users know what they're getting.

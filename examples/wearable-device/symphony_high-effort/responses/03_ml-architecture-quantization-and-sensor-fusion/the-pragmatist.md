---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "03_ml-architecture-quantization-and-sensor-fusion"
persona: "The Pragmatist"
---

# ML Architecture, Quantization, and Sensor Fusion - The Pragmatist

---

## Q1: Architecture, Quantization, and MCU/NPU Partitioning Under Power Envelope

### Response 1A: Start with Proven, Quantifiable Benchmarks
**Focus:** Foundation without speculation.

Your team should defer algorithm selection until you've benchmarked published models on *actual* candidate hardware. RNNs (not transformers) have established power profiles on microcontroller stacks; CNNs work well for windowed PPG. Transformers and Mamba lack real-world edge deployment data at your power budget. Move INT8 quantization-aware training (QAT) to *before* deployment, not after—rare-event classes like arrhythmias suffer catastrophic collapse post-hoc. Start with a Nokia nRF9151 or Ambiq Apollo + reference model, measure inference cycles on real silicon, then decide MCU vs. NPU partitioning. Budget 4 weeks for this baseline.

### Response 1B: Risk-Driven Quantization Pathway
**Focus:** Protecting model accuracy on safety-critical classes.

Rare arrhythmia/apnea events require defensive quantization. Begin with INT8 for weights, float32 for activations; profile accuracy loss on held-out arrhythmia samples before stepping to INT4. Use mixed-precision selectively—keep classification-critical layers at INT8. QAT should run on synthetic arrhythmia data (augmented) to prevent collapse on rare patterns. Test MCU/NPU context-switch overhead empirically; if overhead exceeds 10% of inference latency, partition at the window boundary (full inference on NPU). Timebox this at 6 weeks with a go/no-go gate.

### Response 1C: Hardware-First Design Constraint
**Focus:** Treating silicon as the anchor.

Before touching model architecture, lock the MCU/NPU pair. COTS options (nRF, Apollo, STM32N6) each have different SRAM/bandwidth/instruction-set shapes. Once chosen, SRAM becomes your hard constraint—model topology must fit, not be optimized into fit later. RNNs recycle state efficiently; CNNs blow SRAM with activation buffers. Quantization strategy depends on the NPU's instruction set (some excel at INT4, others at INT8). This isn't flexible—decide hardware in month 1, communicate SRAM budget to ML, then accept no surprises in month 5.

### Response 1D: Staged Model Validation with Power Tiers
**Focus:** De-risking accuracy and power together.

Run three model candidates (CNN, LSTM, lightweight transformer) through a phased evaluation: (1) training accuracy on full-precision data, (2) post-quantization accuracy on arrhythmia-balanced subset, (3) inference profiling on target hardware. Each tier must pass thresholds—if QAT accuracy drops >3% on arrhythmias, stop that architecture. Inference cycles tell you power; map cycles to mW using known NPU efficiency. Build a 2D matrix: accuracy vs. power for each architecture-quantization pair. Select the defensible Pareto frontier point, not the theoretical optimum.

### Response 1E: Sensor-Front-End Scheduling as Co-Design
**Focus:** Inference latency shapes duty cycling.

PPG sampling must align with inference window. If inference takes 500ms, sample PPG continuously to fill that window or use sensor buffering. Mismatched timing wastes power and latency. Work backwards: desired inference frequency → required sample rate → PPG wakeup schedule. Accelerometer duty cycle (motion artifact rejection) depends on fusion topology. Start simple: inference-triggered sensor sampling (PPG always on, accel on-demand). Measure sleep state vs. active state current draw separately; they'll have different optimization targets.

---

## Q2: Sensor Fusion Topology and Graceful Degradation

### Response 2A: Late Fusion as the Pragmatist's Default
**Focus:** Simplicity and fault tolerance.

Late fusion (each sensor trains its own feature extractor, combine at decision layer) is your safest starting point. It's simpler to implement, debug, and maintain—your 3-person ML team can handle it. Early fusion (pixel-level concatenation) is elegant but brittle; if PPG fails, the entire stack collapses. Late fusion lets you disable PPG features while continuing breathing/motion analysis. Implement motion-artifact rejection in the accelerometer pathway first; it's domain-specific and orthogonal to fusion. Build confidence scores per modality, threshold independently, then fuse only high-confidence signals. This scales to 5 sensors without architectural redesign.

### Response 2B: Intermediate Fusion with Attention Gates
**Focus:** Balancing flexibility and accuracy gains.

If your benchmarks show late fusion underperforms (accuracy gap >5%), add attention-based intermediate fusion: fuse after feature extraction, before classification. Use gating mechanisms to weight each sensor's contribution. This gives you graceful degradation—when PPG drops, the attention gate learns to trust accel/temp/breathing more. Training is more complex than late fusion but tractable for your team (6-8 weeks development). The accuracy gain (if real) justifies the complexity. Validate on synthetic sensor dropout (mask PPG features during training) to ensure degradation works as intended.

### Response 2C: Communicating Degradation to Users
**Focus:** Honest signals, not false confidence.

Every anomaly alert must include a confidence score tied to sensor health. If PPG contact is poor, confidence drops 20-30% even if other sensors trigger. Show users in the app: "Possible rhythm irregularity detected (medium confidence—check band fit)" rather than "Alert!" Rare-event liability (false positives) is your biggest regulatory and commercial risk. Under-confident signals protect you legally; users can act if they trust the signal quality. Design the confidence metric from day one, not as a post-hoc band-aid.

### Response 2D: Motion Artifact Rejection as a Prerequisite
**Focus:** Solving the immediate, concrete problem first.

PPG during exercise is garbage without motion rejection. Accelerometer data identifies exercise-state vs. resting. Train a binary classifier (exercise/rest) on accel; disqualify PPG anomalies during detected exercise. This is the minimum viable fusion—not elegant, but it eliminates the biggest source of false positives. Implement this in weeks 2-3 before tackling multi-signal fusion. Measure false positive rate pre- and post-implementation; if it drops >40%, you've solved a real problem and earned runway for fancier fusion later.

### Response 2E: Designing for Single-Sensor Failure Paths
**Focus:** System resilience under realistic constraints.

For each sensor (PPG, accel, temp, breathing), define what detection remains if it fails: PPG-only → rhythm analysis but no motion correction; accel-only → motion state but no HR; temp/breathing → contextual signals only. Draft a dependency matrix (which alerts require which sensors). Then design fusion to activate appropriate pathways. Test by logging real sensor failures and replaying through your system. This exercise often reveals over-dependence on a single signal and guides architecture. Budget 4 weeks for this resilience review.

---

## Q3: Hardware-Software Co-Design, SRAM as Invariant, and Emergent Behavior

### Response 3A: COTS MCU+NPU Selection as Month 1 Gate
**Focus:** De-risking the hardware foundation.

Your 12-person team cannot design custom silicon; you must choose COTS. nRF9151 (Nordic, mature ecosystem), Apollo (Ambiq, proven low-power), STM32N6 (ST, broad supply chain), Syntiant NDP (ultra-specialized, fewer options). Evaluate on three metrics: (1) SRAM (hard limit—64KB to 256KB depending on model size), (2) NPU power efficiency (mW per inference), (3) ecosystem maturity (firmware tools, ML compiler support). Rank them. Pick the top two, design proof-of-concept on both in parallel (8 weeks), then commit to one. This isn't indecision—it's risk management.

### Response 3B: SRAM as the Non-Negotiable Architectural Constraint
**Focus:** Preventing month 8 surprises.

Once hardware is chosen, calculate available SRAM for model inference: total SRAM − firmware/OS − ring buffers − temp allocations = model SRAM budget. This number is *fixed*. Communicate it to ML: "You have 128KB for model weights + activations; no exceptions." Designing model topology to fit SRAM from day one is cheaper than optimizing for accuracy in month 6 and discovering SRAM misses. Tools like TensorFlow Lite Micro show SRAM usage per model; use them. If a model exceeds budget, reject it; don't promise "optimization later."

### Response 3C: Fixed-Point Signal Processing to Avoid Hardware Acceleration
**Focus:** Pragmatic trade-offs in the signal path.

PPG signal processing (bandpass filtering, baseline wander removal, peak detection) can run in INT16 on the MCU without a DSP. Test each stage on real PPG data: does a fixed-point filter maintain arrhythmia detection accuracy within 2%? If yes, use fixed-point and save the DSP cost and power. SpO2 ratio-of-ratios (red/IR intensity) requires slightly higher precision (INT24 or float16 for intermediate results). Microphone breathing detection (frequency analysis) is harder; you might need a small DSP or float32. Benchmark each stage separately; don't assume all signals have the same precision cliff.

### Response 3D: Emergent Behavior—Coordination Mechanisms to Prevent System Surprises
**Focus:** Integration testing as a non-negotiable phase.

Component optimization (sensor wakeup timing, inference scheduling, thermal throttling) independently optimized will create emergent problems: sensor wakeup current spikes collide with inference startup, causing brownout; thermal sensors trigger throttling during arrhythmia detection (worst time). Design coordination: (1) sensor wakeup schedule must align with inference window, (2) thermal budget must reserve headroom for peak inference + max current draw, (3) log all state transitions (wake/sleep/infer/throttle) for offline analysis. Run end-to-end battery drain tests (7-day simulations with realistic activity patterns) before shipping. Budget 6 weeks for integration validation alone.

### Response 3E: Trade-Off Mapping for Early Clarity
**Focus:** Making the hard choices visible upfront.

Build a decision matrix: model architecture (CNN/RNN/hybrid) × signal-processing precision (fixed/float) × fusion topology (late/intermediate/early) × hardware partner. Score each combination on: (1) estimated inference latency (ms), (2) power (mW), (3) SRAM usage (KB), (4) development risk (weeks to baseline). This matrix forces your team to see the trade-offs concretely. Often, a "lower-accuracy" signal processing approach + late fusion beats a "theoretically optimal" early fusion + floating-point pipeline because it fits SRAM and ships 6 weeks earlier. Use the matrix to decide, not gut feel.

---

## Q4: Sensor Fusion as a Strength, Not Complexity Tax

### Response 4A: Learn from Clinical Multi-Signal Systems
**Focus:** Stealing proven design patterns.

ICU monitors fuse ECG, SpO2, temp, and blood pressure into coherent alerts because they *weight* signals by clinical reliability and time-correlation. High-variability signals (temp noise) are smoothed; time-correlated signals (ECG + SpO2 desaturation) get higher weight. Apply this: PPG is your primary rhythm signal—weight it highest but only when motion-artifact-free (accel gates it). Breathing (microphone) correlates with SpO2; weight them together. Temperature is slowly-varying context. Separate "signal reliability" from "feature value"; your fusion logic becomes transparent instead of a black box. Clinical review of the weighting scheme becomes possible.

### Response 4B: Unified Confidence, Not Cascading Alarms
**Focus:** Simplifying user communication and liability.

Instead of separate "PPG alert" and "breathing alert," compute a single anomaly score that reflects *confidence* in the anomaly given the multi-signal picture. If PPG suggests arrhythmia but breathing is normal and motion is absent, confidence is high. If PPG suggests arrhythmia but the accelerometer shows the user is sprinting, confidence drops (probably motion artifact). This unified score de-risks liability—you're saying "anomaly detected with X confidence" not making multiple independent claims. Implement this as a Bayesian fusion (prior = baseline state, posterior = updated state given sensor readings). Your 3 ML engineers can build this in 4 weeks.

### Response 4C: Graceful Degradation Through Signal Independence
**Focus:** Designing each sensor to stand alone.

The strongest multi-signal system treats each sensor as independently valuable. PPG alone can detect some arrhythmias; accel alone can detect falls; breathing can detect apnea. Design the fusion to *amplify* these independent detections rather than *require* all of them. This means: (1) each signal has its own preprocessing (PPG filter, accel peak detection, etc.), (2) each outputs a confidence estimate, (3) fusion combines confidences, not raw signals. When PPG fails (poor contact during exercise), the system loses rhythm precision but keeps motion and breathing context. Users experience degradation (lower confidence alerts) not cascade failure.

### Response 4D: Iterative Fusion Design, Not Big-Bang Integration
**Focus:** Shipping fast while validating architecture.

Month 1-2: PPG-only arrhythmia detection (baseline accuracy). Month 2-3: Add accel-based motion rejection (motion artifact filter). Measure improvement. Month 3-4: Add breathing and temperature. Validate each addition *before* the next. This stagewise approach lets you see which signals add real value and which add complexity without gain. Many projects over-fuse (five signals when two would suffice); this discipline prevents that. If you ship with PPG+accel in month 4 with 90% accuracy, you've proven value before adding breathing complexity.

### Response 4E: Transparent Weight Reconciliation for Regulatory Review
**Focus:** FDA-readiness through design transparency.

Future 510(k) review will ask "why does your system fuse these signals this way?" If the answer is "the model learned it," you lose points (black box). If you can say "PPG detection is X%, accelerometer motion rejection reduces false positives by Y%, breathing provides Z% additional arrhythmia detection," you have a coherent story. Design fusion weights to be *explainable*—use domain knowledge (PPG for rhythm, accel for motion) not learned-from-scratch. This slows development slightly but accelerates regulatory approval. Budget 2-3 weeks for a design document that explains every signal's role.

---

## Q5: Urban Sensing Parallel for Multi-Signal Fusion

### Response 5A: Treat Each Sensor as Independently Useful
**Focus:** Borrowing the smart-city resilience pattern.

Smart city platforms succeeded because traffic cameras work alone, air quality sensors work alone, transit data work alone. Each provides value; fusing them multiplies value. Apply directly: PPG alone (even noisy) detects some rhythm issues; accel alone detects posture/motion state; breathing alone detects sleep apnea. Design your system so disabling any one sensor doesn't cascade. This isn't "use all sensors or nothing"—it's "use each sensor to its maximum reliability, fuse carefully." When PPG contact is poor, rely on breathing + accel + temperature for coarse anomaly flags. Users see lower-confidence alerts but not silence.

### Response 5B: Sensor Failure Modes as Design Input
**Focus:** Smart cities learned this the hard way.

Traffic camera failure doesn't break air quality monitoring; they degrade independently. Design your system the same way. Catalog failure modes: PPG poor contact (exercise, sweat), accel clipping (high acceleration), temp sensor offset (skin temperature varies), breathing detection failure (wind noise, masks). For each, define what detection remains. Then test by injecting failures into your data pipeline and confirming graceful degradation. This is boring work but non-negotiable—real devices fail (users exercise, wear tight bands, shower). Testing builds confidence that users won't see "complete system failure" alerts.

### Response 5C: Capture Signal Correlations at Known Moments
**Focus:** Timing as the alignment anchor.

Smart city platforms work because events are timestamped—a traffic incident triggers correlated changes in air quality and transit patterns *at the same moment*. Your wearable has the same advantage: anomalies are simultaneous across signals. Use timestamps as the primary fusion anchor. If PPG shows a rhythm irregularity at T=1000ms and breathing changes at T=1050ms, correlate them. If they're uncorrelated (PPG spike at T=1000ms, breathing change at T=2000ms), they're probably independent noise. Build your fusion around temporal correlation, not statistical independence. This is simpler and more robust than pixel-level early fusion.

### Response 5D: Confidence Scores Tied to Signal Quality Metrics
**Focus:** Honest degradation communication.

Smart cities don't claim "traffic is flowing" if the camera is covered in fog. They show "traffic estimate, low confidence (camera visibility poor)." Apply this: compute signal quality metrics (PPG contact quality from waveform morphology, accel noise floor, breathing confidence from frequency spread). Use these metrics to modulate final anomaly confidence. High PPG quality + high accel quality = high confidence alert. Poor PPG quality + high accel quality = medium confidence (motion artifact possible, but other signals agree). This prevents false alarms and provides users honest signals about device state.

### Response 5E: Partial Sensor Dropout as a Standard Test Case
**Focus:** Building robustness through realistic scenarios.

In your test suite, simulate realistic dropout: 5-minute PPG loss (poor contact during gym), 30-minute accel saturation (bumpy drive), temperature sensor drift (direct sunlight). Verify system behavior in each case. Does anomaly detection degrade gracefully (lower confidence) or catastrophically (no output)? If catastrophic, redesign fusion. This testing mimics the urban sensing lesson: systems that assume all sensors always work fail in production. Budget 4 weeks for a comprehensive dropout test matrix (each sensor, various durations, realistic patterns). This single test often reveals architectural issues early.

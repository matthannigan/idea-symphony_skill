---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "03_ml-architecture-quantization-and-sensor-fusion"
persona: "The Systems Thinker"
---

# ML Architecture, Quantization, and Sensor Fusion - The Systems Thinker

---

## Q1: Architecture, Quantization, and MCU/NPU Partitioning Under the Power Envelope

### Response 1A: SRAM as the Hidden Constraint

Choose your MCU+NPU pair first — not based on peak performance, but on SRAM budget. This isn't an obvious constraint, but it creates a self-reinforcing dynamic: smaller SRAM forces aggressive quantization (INT4 vs INT8), which reduces accuracy, which requires higher sampling rates or richer features to compensate, which demands more compute, which strains the NPU, which forces you back to the MCU for preprocessing. SRAM becomes the architectural ceiling that shapes every downstream choice.

The leverage point: lock SRAM as a hard invariant (e.g., 256KB) before choosing model family. This constrains the system early and prevents a "Fixes that Fail" pattern where you optimize model accuracy in isolation, burn SRAM during integration, and then discover that your inference window is now too tight to process the full sensor buffer. Start with a 4-week hardware-ML co-design sprint where firmware sketches buffer layouts and ML sketches model sizes in parallel.

### Response 1B: RNN/LSTM with Stateful Quantization

LSTMs offer a genuine advantage here that RNNs alone don't: hidden state means you encode temporal context without expanding the input buffer. For arrhythmia detection on PPG, that matters — a 3-layer LSTM (96 units, INT8) can outperform a larger CNN on memory-constrained devices because state compression is built in. Introduce quantization-aware training (QAT) immediately on the rare-event classes (arrhythmia/apnea) by upsampling them in training to ~20% of the batch, not waiting until late stage. This prevents catastrophic collapse when quantization rounds activations and the model loses the sensitivity to rare patterns.

Partition early: PPG preprocessing (bandpass, artifact rejection) on MCU; LSTM inference on NPU. This avoids context-switch overhead because the MCU buffers a full 30-second window and hands off a single inference, not repeated small batches.

### Response 1C: Staged Model Evolution

Don't commit to a final architecture immediately. Ship v1 with a known baseline (RNN-style state machine on MCU, no NPU inference). Collect real-world usage data for 6 weeks. The data tells you where the accuracy gaps actually are — false positives on motion artifacts during exercise? False negatives on slow arrhythmias? That ground truth is worth more than any benchmark. Then design v2 around what you learned. This approach transforms quantization from a one-time optimization into a feedback loop where each generation gets cheaper and more accurate because you're solving real problems, not predicted ones.

### Response 1D: Transformer Avoidance Pattern

Transformers will tempt you because attention is theoretically elegant for sensor fusion. Resist this. On a 256KB SRAM budget, transformer attention requires either aggressive token pruning (which you can't do on health signals without losing signal fidelity) or external memory (which adds power). The self-amplifying trap: you add a tiny transformer for fusion, it burns extra SRAM, you quantize to INT4, you lose accuracy, you add a second transformer to compensate, and suddenly your power budget is consumed by model complexity instead of sensing. CNN+RNN hybrids or state-space models (Mamba/S4) are cheaper and give you recurrence without the attention overhead.

### Response 1E: Practical First Step

Build a 3-day benchmark comparing CNN (ResNet-18 scale), LSTM, and state-space (Mamba) on actual device hardware, not simulator. Measure inference time, peak memory, and power. The benchmark itself reveals partitioning constraints: if an LSTM burst-loads 40KB but your max buffer is 32KB, the architecture tells you to split across cycles. If NPU context-switching adds 5ms overhead but inference takes 8ms, stay on the MCU and accept slightly lower precision. Stop debating in theory; let hardware constraints decide.

---

## Q2: Sensor Fusion Topology and Graceful Degradation

### Response 2A: Degradation Architecture (Early Fusion Trap)

Early fusion (concatenating all sensor streams into a single model) creates a hidden coupling: if PPG fails, the model's learned expectations about the PPG-accel correlation are suddenly violated, and confidence collapses across all predictions, not just PPG-dependent ones. This is a "Shifting the Burden" dynamic: the convenience of unified processing in training masks an operational fragility that only appears when real sensors fail.

Late fusion (separate classifiers per modality, then vote) decouples them — PPG detector can say "I have low confidence due to poor signal quality" while accel-based motion detection says "I have high confidence in absence of large movements." The fusion logic combines confidences honestly. For honest user communication, show the confidence per sensor: "Heart rate anomaly detected with high confidence (97%) based on PPG; motion-based context is unavailable due to accelerometer saturation."

### Response 2B: Attention-Based Fusion with Learned Dropout

Attention mechanisms offer a middle path. Learn which sensor streams are informative for each detection type — arrhythmia detection might weight PPG heavily, apnea detection weights microphone heavily. As sensors degrade (PPG contact loss during exercise), the attention weights naturally decrease without hard switching logic. Graceful degradation emerges from the architecture itself, not from bolted-on fallbacks.

Training signal: inject sensor dropout randomly during training (simulate PPG loss, accelerometer saturation). The model learns that some modalities are optional, some are critical, and uncertainty increases gracefully with missing data. Validate on real sensor failure logs from pilot users.

### Response 2C: Motion Artifact as a System Problem

Don't treat motion artifact rejection as a preprocessing step — it's a system-level constraint. Exercise creates high-amplitude accel + signal dropout + thermal transients simultaneously. A single motion-rejection model on accel alone can't see this pattern. Instead, use accel to flag "high motion context," and when flagged, temporarily lower confidence thresholds for classifiers that have motion-invariant features (temperature trend, breathing rate) while suppressing PPG-dependent ones.

This creates a graceful degradation in capability, not a binary failure mode. When the user is exercising, the device shifts from "detecting subtle arrhythmias" mode to "detecting gross cardiovascular stress" mode, with confidence honestly lower in the second case.

### Response 2D: Straightforward Redundancy Approach

Fuse PPG and microphone for breathing signals because both sense respiration and neither requires contact-dependent hardware. When PPG fails due to poor contact, microphone breathing alone can still flag apnea events with modest accuracy loss. Design the fusion so that each modality can independently produce a meaningful signal (not just feed a combined classifier). This creates a natural fallback: breathing detection doesn't break if PPG is unavailable.

### Response 2E: User Communication Honesty

Degrade the alert confidence threshold dynamically based on sensor quality. High-quality multi-sensor agreement → alert at 95% confidence. Single sensor + motion artifacts → alert at 88% confidence, with a note: "Detected based on limited sensor data during movement." Don't hide uncertainty behind a unified confidence score. Users adapt behavior based on honest signal about data quality.

---

## Q3: Hardware-Software Co-Design, SRAM as Architectural Invariant, PPG Signal Processing Precision

### Response 3A: SRAM Lock-In and Emergent Coupling

Once you choose an MCU (say, Nordic nRF9151 with 192KB usable SRAM), that SRAM ceiling cascades through every decision: buffer sizes for each sensor stream, quantization width, model size, preprocessing complexity. The dangerous dynamic occurs when hardware and software teams optimize independently. Hardware optimizes for sleep currents (low-power idle); ML optimizes for inference accuracy (richer features). They collide when richer features demand larger buffers, larger buffers require longer continuous processing windows, longer windows prevent the hardware's aggressive sleep transitions. The system oscillates: hardware adds a DSP to process features faster, ML adds more features to compensate, the coupling tightens, and suddenly your "low-power" device can't actually enter deep sleep because preprocessing never finishes.

**Leverage point:** Make SRAM allocation a shared weekly ritual between hardware and ML, not separate tracks. A 192KB budget is not 192KB per team — it's a shared pool. Create a manifest: PPG buffer (8KB), accel buffer (2KB), model weights (80KB), activations (48KB), inference workspace (20KB), firmware overhead (34KB). When ML wants to grow the model to 90KB, hardware sees immediately that accel buffer shrinks to 0 — they negotiate in real time, not in integration hell.

### Response 3B: PPG Signal Processing Precision Cliffs

Fixed-point integer arithmetic (Q15 or Q16) is viable for bandpass filtering and peak detection on the MCU. However, there's a precision cliff in the **ratio-of-ratios calculation** (red/infrared for SpO2 estimation). The computation requires dividing noisy signals, amplifying small errors. Below 24-bit precision, the SpO2 error becomes systematically biased toward lower readings, which is the exact failure mode you don't want in a clinical-adjacent device. 

**Pragmatic boundary:** Implement bandpass and baseline removal in fixed-point. Implement peak detection in fixed-point. Perform the ratio-of-ratios in floating-point (or 32-bit fixed-point with scaling). This hybrid approach uses ~30% more MCU cycles than pure fixed-point but prevents a systematic SpO2 bias that would require expensive recalibration.

### Response 3C: COTS MCU+NPU Suitability Assessment

**Nordic nRF9151:** Strong on Bluetooth integration (critical for companion app sync), weak on SRAM (192KB forces aggressive quantization). Good choice if your power budget is driven by communication, not ML.

**Ambiq Apollo:** Excellent SRAM (up to 768KB), but assumes you'll use Ambiq's TensorFlow Lite runtime (lock-in risk). Good if your model fits Ambiq's optimization pipeline.

**ST STM32N6:** Emerging MCU+NPU combo with decent SRAM (256KB) and flexibility on ML frameworks. Middle ground, less ecosystem support.

**Syntiant NDP:** Purpose-built for small models, excellent power efficiency on inference, but constrains model size further. Good for deployment-phase optimization, not prototyping.

**System-level recommendation:** Start with Nordic for connectivity guarantees and Cortex-M33 maturity (you know the MCU ecosystem). Prove the ML/power tradeoff on Nordic's constraints. If successful, swap to Ambiq v2 when SRAM becomes the bottleneck.

### Response 3D: Interaction Effects as Emergent Behavior

Component-level optimizations hide system-level fragility. Example: Hardware optimizes sensor wakeup so accelerometer sleeps 95% of the time, reducing idle power. ML optimizes inference for low latency, requiring continuous feature buffers. The coupling: accel wakeup latency (500ms) > inference window size (300ms), so accel samples arrive after classification, breaking temporal fusion. The system becomes invisible: each component is well-designed, but together they fail. 

Coordination mechanism: Simulation-first co-design. Build a spreadsheet or simple event-loop simulator that traces power consumption, timing, and buffer states across a full 24-hour profile. Identify coupling points before hardware is finalized. Example coupling: "Inference triggers every 8 seconds; accel wakeup latency is 500ms; PPG buffer size is 5 seconds — inference will always see 3-second-stale accel data, biasing motion artifact detection."

### Response 3E: Straightforward Signal Processing Path

For a startup without DSP expertise: Use a third-party PPG library (e.g., MaxIM's algorithm, published open-source) that's already fixed-point optimized. Don't reinvent bandpass filtering. Integrate it into your MCU firmware, test it on 100 real users, measure where it fails. Adapt after validation, not before. This saves 3 weeks of precision optimization that would only matter if your custom filter turned out to be the bottleneck.

---

## Q4: Sensor Fusion as a Strength, Not a Complexity Tax

### Response 4A: Weighted Fusion with Semantic Layers

When multi-signal fusion has worked elegantly, the pattern is invariant: signals aren't equally informative at all times. PPG alone detects arrhythmias well; temperature alone detects fever. But fusion of PPG + temperature detects sepsis (irregular heartbeat + fever) with much higher specificity than either alone. The key is recognizing semantic layers: raw signals (PPG, accel), derived features (heart rate, respiration rate), and semantic events (arrhythmia, apnea).

Design the fusion architecture in layers too. Layer 1: individual sensor models (each produces a normalized confidence score 0-1). Layer 2: semantic fusion rules (e.g., "arrhythmia + fever + elevated breathing → concern level escalates"). Layer 3: user-facing communication. This separation means a PPG signal degradation in Layer 1 doesn't require retraining Layer 2 — you just feed degraded confidence into existing fusion rules.

### Response 4B: Reconciliation Through Mutual Constraint

Signals constrain each other through physical reality. If accelerometer shows no motion and PPG shows irregular heartbeat, the arrhythmia is likely real, not artifact. If accelerometer shows vigorous motion and PPG shows "irregular," the PPG is likely motion-corrupted. This mutual constraint is latent in the data but invisible if you fuse signals additively. Use it explicitly: a Bayesian layer that models "P(true arrhythmia | PPG, accel, temperature)" and reasons about measurement reliability in context.

The payoff: sensor failure becomes transparent. If accel fails but PPG + temperature agree on an event, you remain confident. The system degrades gracefully because the fusion architecture acknowledges uncertainty in each signal.

### Response 4C: Unified Confidence via Multi-Signal Agreement

Confidence shouldn't be a black-box model output. Make it transparent: "Arrhythmia detected with 91% confidence. PPG signal quality is good (99% clean), accel shows minimal motion artifacts, temperature is stable (rules out infection). Confidence is high because all independent signals agree."

This design transforms a user's experience: they trust alerts because they can understand the reasoning, and they know when to discount an alert ("I was exercising, signal quality was poor, so the alert is less reliable").

### Response 4D: Pragmatic Hierarchical Fusion

Fuse in stages: First, detect heart rate from PPG. Second, detect breathing from microphone. Third, detect motion from accel. Fourth, integrate these into higher-level events (arrhythmia = heart rate variability + lack of motion; sleep apnea = breathing pause + sleep context). This hierarchy means fusion happens at semantic, not signal, level — much simpler to understand and validate.

### Response 4E: Pilot Validation on Real Diversity

The abstract principle is: signals fuse elegantly when they're detecting orthogonal phenomena (PPG → heart, accel → movement, breathing → lungs) and inelegantly when they're detecting redundant phenomena (two different PPG sensors, or PPG + plethysmography). Validate your fusion choice on a 30-day pilot with 50 users in real conditions (exercise, sleep, normal activity). Measure which signal combinations actually improve detection vs. which add noise. Let real user data decide, not theoretical elegance.

---

## Q5: Urban Sensing Parallel for Multi-Signal Fusion

### Response 5A: Stream Independence as a Structural Principle

Traffic cameras, air quality sensors, and transit data remain useful independently: cameras show congestion even if the air quality sensor fails. Transit ridership data helps predict congestion independent of camera feeds. The fusion architecture respects this: each stream is modeled as independently valid, and fusion combines them rather than averaging them into a single "traffic health" score.

Apply this principle to your wearable: PPG is independently useful (heart rate/rhythm), accel is independently useful (activity level), temperature is independently useful (fever detection), breathing is independently useful (sleep apnea). Don't create a single "health score" by averaging these. Instead, present them as independent signals whose combination increases confidence in specific interpretations. When PPG fails, accel + temperature + breathing still provide meaningful health information.

The system-level benefit: partial sensor failure doesn't cascade into total device failure because the architecture doesn't assume all streams are present.

### Response 5B: Correlation Capture Without Fusion Coupling

Urban sensing discovered that value emerges from correlations captured at the same moment — but the fusion architecture should enable those correlations without requiring them. A traffic-air-quality correlation detected during rush hour (high traffic, poor air) is useful for understanding cause. But if the air quality sensor fails, traffic data is still actionable without the correlation.

For your device: the correlation between elevated heart rate + elevated temperature + increased breathing (during fever) is medically meaningful. But if the device is in exercise mode and one sensor is temporarily degraded, the remaining signals remain actionable: elevated heart rate alone suggests cardiovascular stress; temperature alone suggests infection risk. The correlations enrich the picture but don't define it.

### Response 5C: Sensor Failure Modes Inform Architecture

Urban systems learned that sensor failures aren't uniform. Traffic cameras fail during heavy rain; air quality sensors drift over time; transit data lags. The fusion architecture accounts for known failure modes: camera data is weighted lower during weather events; air quality triggers a recalibration routine weekly; transit data is treated with 5-minute lag uncertainty.

For your wearable: PPG fails during poor contact (exercise, sweating); accel saturates during high-intensity movement; microphone is noisy in loud environments. Build these failure models into your fusion logic. When you detect that PPG contact is poor (signal quality metric drops below threshold), don't just reduce PPG weight — actively increase reliance on complementary signals (breathing from microphone, motion context from accel, temperature trend).

### Response 5D: Graceful Degradation Requires Explicit Design

"Degradation" doesn't happen by accident. Urban sensing systems that failed gracefully had explicit fallback chains: if camera feed is unavailable, use historical patterns + current transit data to estimate congestion. Your device needs the same: if PPG is unavailable, use accel + temperature + breathing to estimate cardiovascular state (lower confidence, but not zero). If microphone fails, use accel + PPG to infer breathing rate indirectly (imperfect, but possible). These fallbacks aren't optional refinements — they're core architecture decisions that need validation.

### Response 5E: Transparency in Partial Signal Interpretation

Smart city platforms that communicated uncertainty well used explicit labeling: "Traffic congestion estimate: HIGH, based on camera feeds only (air quality sensor offline). Confidence is moderate due to missing cross-validation with air data." For health: "Apnea risk assessment: MODERATE, based on breathing microphone + sleep context (PPG contact lost during exercise). Update expected when sensor contact restored."

Users and clinicians trust systems that acknowledge their constraints, not systems that hide sensor failures behind unified confidence scores.

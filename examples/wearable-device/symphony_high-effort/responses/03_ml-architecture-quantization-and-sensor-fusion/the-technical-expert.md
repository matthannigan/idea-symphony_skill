---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "03_ml-architecture-quantization-and-sensor-fusion"
persona: "The Technical Expert"
---

# ML Architecture, Quantization, and Sensor Fusion - The Technical Expert

---

## Q1: Architecture, Quantization, and MCU/NPU Partitioning Under Power Envelope

**1a. Conservative Benchmarking Approach (Accuracy-First)**

From a technical perspective, RNNs and LSTMs remain the most battle-tested for PPG arrhythmia detection because they capture temporal dependencies without the memory overhead of attention mechanisms. CNNs offer faster inference per sample, but on continuous PPG, the temporal context window needed for rare-event detection is longer than typical CNN receptive fields. Start with published benchmarks from medical-grade devices (e.g., Apple Watch, Withings ScanWatch papers), then validate against your dataset before committing silicon. Quantization-aware training must begin early—before training concludes—to prevent accuracy collapse on underrepresented arrhythmia classes. INT8 is viable for most layers; INT4 for weights can work if you preserve INT16 for activation layers touching classification decisions.

**1b. Power-First MCU/NPU Split (Practical Constraint)**

The partitioning decision hinges on SRAM. If your NPU has 64KB dedicated for a session, PPG front-end filtering (IIR bandpass, baseline wander removal) stays on the MCU to avoid context-switch overhead. The trained model runs on the NPU. Intermediate sensor fusion also belongs on the MCU—the accelerometer data feeding motion-rejection weights is low-latency logic. The interaction between sensor duty-cycle scheduling and inference batching is critical: wake the NPU for inference every 10 samples (~150ms for 66Hz PPG), not continuously, to amortize the power cost across multiple detections. Test this partition on Ambiq Apollo or Nordic nRF9151 with their specific memory hierarchies before finalizing.

**1c. Mixed-Precision Pragmatism (Timeline-Aware)**

Don't aim for INT8 everywhere immediately. Start with FP32 models, measure power and latency, then selectively quantize high-volume operations (dense layers in LSTM) to INT8 using post-training quantization (PTQ) first—it's faster than QAT. QAT becomes mandatory for the final 12% accuracy gain needed to meet your false-negative budget for arrhythmias. This two-stage approach reduces your ML engineering timeline from 6 months to 4. Accept that rare-event detection may need a tiny floating-point head layer—it's a 2% power cost for 5% accuracy improvement on arrhythmia detection, worth it.

**1d. Silicon Realism Check (Risk Mitigation)**

Nordic nRF9151 and Ambiq Apollo are proven in consumer wearables, but their NPU instruction sets have quirks. nRF9151's M55 handles 8-bit arithmetic well for convolutions but is weaker on RNN gate operations; Apollo's Helios engine excels at matrix operations but introduces latency on feedback loops. Invest 4 weeks in profiling each architecture with a representative quantized model before committing. The startup risk here is low—both chips are widely available—but validation timing is critical for your 18-month runway.

---

## Q2: Sensor Fusion Topology and Graceful Degradation

**2a. Attention-Based Intermediate Fusion (Robustness-Focused)**

Late fusion (separate models per sensor, decision voting) is brittle when one sensor fails—the system just ignores it. Early fusion (concatenate raw signals) assumes all sensors are equally informative all the time, which fails during exercise when PPG contact drops. Intermediate fusion with learned weights (a small attention layer combining extracted features from each sensor) offers the best tradeoff: each sensor stream is processed independently, then a learned fusion module learns which streams are trustworthy at inference time. This way, during exercise when accelerometer noise spikes and PPG degrades, the attention weights naturally downweight PPG and upweight temperature/breathing cues, maintaining detection capability at 70% rather than failing to 40%.

**2a.2 Confidence Scoring for Graceful Failure**

Attach a separate calibrated confidence score from the fusion attention mechanism to each alert. If PPG signal quality drops below threshold, communicate this to the user: "Heart rhythm analysis confidence degraded during exercise due to arm motion—recheck in 10 minutes when stationary." This honest uncertainty messaging prevents user over-reliance on alerts when the device is operating on degraded input. Users understand this; it's better than silent failures or false alarms.

**2b. Early Fusion with Signal-Quality Gates (Simplicity)**

If your team prefers a simpler architecture, use early fusion but gate each sensor stream with a real-time quality check. PPG contact detector (optical or impedance-based) gates PPG input; accelerometer variance gates motion contribution. Missing sensors are replaced with learned baseline patterns rather than zeros. This requires less model complexity than attention mechanisms but still avoids catastrophic failure. Best for teams prioritizing fast time-to-market over maximum robustness.

**2c. Motion Artifact Rejection as a First-Stage Filter (Performance)**

Before fusing, pre-filter accelerometer data through a motion-artifact detector: if vertical and horizontal acceleration variance exceed user-specific thresholds (calibrated during first-wear), mark the window as "high motion." The fusion layer learns to ignore PPG features during high-motion windows. This adds 2-4KB of logic on the MCU but prevents the entire downstream model from being corrupted by artifact-laden signals. Significantly improves specificity (fewer false alarms during exercise).

---

## Q3: Hardware-Software Co-Design, SRAM as Architectural Invariant

**3a. SRAM Budget as Hard Constraint (Architecture-First)**

Treat SRAM as the primary architectural invariant, not throughput. Nordic nRF9151 offers 128KB SRAM; Ambiq Apollo 4 has ~192KB. After reserving 20KB for OS/stack, you have ~100KB for ML inference. A 2-layer LSTM with 128 hidden units consumes ~40KB for activations during inference; a 3-layer CNN with 32/64 filters consumes ~60KB. This hard ceiling determines which model topologies are viable. Measure peak SRAM during inference with your worst-case sensor batch size (e.g., if you buffer 300ms of 66Hz PPG + 100Hz accel simultaneously) before any other optimization. I'd recommend designing models against 80KB to leave 20KB safety margin for firmware evolution.

**3b. Fixed-Point PPG Signal Processing (Precision Cliff Analysis)**

Bandpass filtering (IIR Butterworth) can be implemented in INT32 fixed-point on the MCU without a DSP coprocessor. The precision cliff is at baseline wander removal: high-pass filtering over seconds requires floating-point or 32-bit arithmetic to avoid accumulation error. Once you've removed baseline wander, peak detection (finding local maxima) is pure integer arithmetic. The danger: if you cut corners with INT16 fixed-point in the high-pass filter and don't validate against real patient data first, you'll discover systematic bias in SpO2 calculation (ratio-of-ratios) too late in the cycle. Invest 2 weeks in fixed-point validation against your target sensor dataset before firmware finalization.

**3c. SpO2 Calculation Precision (Numerical Stability)**

SpO2 relies on the ratio of red-to-IR LED signals processed through the ratio-of-ratios algorithm. This computation is sensitive to quantization error: if you use INT16 intermediate ratios, rounding errors accumulate and SpO2 accuracy drops 2-3 percentage points. Preserve at least INT32 (better: float) through the ratio computation, then quantize the final SpO2 value to INT8. This is a narrow precision requirement, but non-negotiable for medical accuracy. The power cost is minimal—a handful of float operations per second.

**3d. Emergent Behavior Coordination (Systems Thinking)**

The killer issue with independent component optimization: sensor wakeup timing, inference scheduling, and thermal management interact. If MCU samples PPG at 66Hz continuously and triggers NPU inference every 10 samples, the inference latency jitter (due to thermal throttling of NPU) causes misalignment between sensor timestamps and inference windows, reducing effective temporal context by 20-30ms. This degrades arrhythmia detection sensitivity by 5-8%. Solution: explicit firmware-level coordination—MCU logs sensor acquisition times, NPU returns inference completion time, firmware adjusts next inference trigger to maintain stable temporal windows. This requires cross-team communication (firmware + ML) every 2 weeks during development. Build this into your sprint planning from the start; it's not a late-stage fix.

**3e. COTS Hardware Selection (Practical Path)**

For a 12-person startup, Nordic nRF9151 is the pragmatic choice: mature ecosystem, proven in wearables, strong SRAM for your model. Ambiq Apollo 4 offers slightly better power in sleep states but requires more firmware customization. STM32N6 is powerful but overkill and consumes more static power. Syntiant NDP is designed for audio, not PPG. Recommend: prototype with nRF9151, profile power/accuracy, then evaluate Ambiq Apollo 4 in parallel as a backup if you can't meet battery targets. Make this decision by month 4; hardware sourcing lead time is 8-12 weeks.

---

## Q4: Sensor Fusion as a Strength, Not a Complexity Tax

**4a. Elegant Fusion Through Redundancy and Correlation (Design Philosophy)**

When sensor fusion works elegantly, it's because each signal answers a different question: PPG detects heart rate changes, accelerometer confirms the user is stationary (baseline for comparison), temperature indicates stress/exertion state, breathing provides additional cardiac rhythm context. Rather than treating fusion as "here's four noisy streams, please denoise," reframe it as "here's complementary evidence from four independent biological modalities." Design the fusion architecture to weight signals based on their correlation with the target event. During arrhythmia, PPG will show chaotic variation; that same moment, accelerometer will be stable (user typically pauses). This anti-correlation is a *feature*—it makes arrhythmia detection more robust. Signal weighting should emerge from the data, not be hand-tuned.

**4b. Temporal Alignment as the Unifying Principle**

Elegant fusion requires all signals sampled at well-defined intervals with microsecond-level alignment. PPG at 66Hz, accelerometer at 100Hz, temperature at 1Hz, breathing at variable (microphone-based) rates. Before fusion, resample/interpolate to a common timeline (e.g., 100ms windows) so the learned fusion model always operates on synchronized features. This alignment is often overlooked but is the difference between a fragile system and a robust one. A 50ms timing skew between PPG and accelerometer can cause the learned fusion weights to degrade by 10-15%.

**4c. Explainability Through Attention Visualization (Trust with Users)**

When the fusion layer uses attention weights, you can visualize which sensor influenced each prediction. For a user confused why their anomaly alert fired, you can show: "Detection confidence 78%, driven primarily by unexpected breathing pattern (attention 45%) and heart rate variability (attention 40%), PPG stability (attention 15%)." This transparency builds user trust and provides a feedback loop for model refinement. Without this explainability, sensor fusion feels like a black box.

---

## Q5: Urban Sensing Parallel Applied to Multi-Signal Health Fusion

**5a. Independent Stream Value as the Design Anchor**

The smart city insight applies directly here: don't optimize for the "fully healthy" case where all sensors work perfectly. Instead, design so that any three of four sensors can sustain detection capability at 60-70% of full performance. PPG alone gives arrhythmia sensitivity ~85%; PPG + accelerometer gives 92%; adding temperature and breathing pushes to 96%. The falloff from 96% to 70% (losing one sensor) is acceptable; falloff from 85% to 40% (losing PPG) is not. This means your training pipeline must explicitly include "single-sensor dropout" scenarios. Train the model with one sensor randomly masked 20% of the time so it learns to rely on the remaining three.

**5b. Sensor Failure Modes as Explicit Design Cases**

City systems fail gracefully when failure modes are known: camera occlusion, sensor drift, missing data. Health device failure modes include: PPG contact loss during exercise, accelerometer saturation, microphone noise in loud environments, temperature sensor lag. For each failure mode, design the confidence score to degrade predictably. PPG contact loss → confidence drops to 60% but detection continues. Accelerometer saturation → disable motion rejection, increase anomaly threshold slightly. This requires explicit testing of failure modes before clinical deployment; don't assume they'll be rare.

**5c. Anomaly Confidence as a Calibrated, Honest Metric**

The urban sensing lesson is that users (city planners, residents) respond better to probabilistic outputs than binary alerts. Similarly, don't report "Alert: Possible Arrhythmia" but instead "Rhythm Anomaly Confidence: 78% (95% certain within ±4 percentage points given current sensor state)." This calibrated uncertainty communicates both the detection strength and the reliability of that strength. When sensors degrade, confidence naturally drops. Users see "Confidence: 45%" and know to recheck in a quieter moment or reposition the device, rather than feeling the alert is "broken."

**5d. Correlation-Driven Alert Refinement (Long-Term Learning)**

City systems improve by learning which sensor correlations matter. A traffic camera sees congestion; air quality sensors show pollution; transit data reveals route changes. The *value* emerges from correlations—camera + air quality + transit patterns predict the *cause* of congestion. Similarly, your health device should learn that certain PPG patterns + accelerometer stability + normal temperature = almost certainly a real arrhythmia (high confidence), while the same PPG pattern + high motion + elevated temperature = likely artifact. This correlation learning requires collecting labeled data from diverse real-world scenarios (exercise, sleep, stress, medical events) before your device reaches clinical use.

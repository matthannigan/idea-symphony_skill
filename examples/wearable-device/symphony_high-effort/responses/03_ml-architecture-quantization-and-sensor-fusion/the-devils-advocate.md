---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "03_ml-architecture-quantization-and-sensor-fusion"
persona: "The Devil's Advocate"
---

# ML Architecture, Quantization, and Sensor Fusion - The Devil's Advocate

---

## Q1: Architecture, quantization, and MCU/NPU partitioning under the power envelope

* **Summary.** Selecting the right model family (CNN, RNN, transformer, state-space) and partitioning inference between MCU and NPU while managing quantization tradeoffs for rare-event detection on continuous PPG signals.

**Response 1a: The quantization accuracy cliff risk**

You're assuming quantization-aware training will prevent accuracy collapse on rare events like arrhythmias, but published QAT workflows are optimized for ImageNet-style balanced datasets. Arrhythmias represent <1% of your training data. Have we considered that INT8 quantization might reduce your detection sensitivity on these rare high-stakes events by 15-25%, turning a seemingly acceptable 98% overall accuracy into a clinically unusable 85% sensitivity on arrhythmias? A mitigation approach: implement a confidence-degradation protocol where the device transparently flags when quantization uncertainty exceeds clinical thresholds, and falls back to higher-precision processing of suspicious samples rather than silently committing to a quantized decision.

**Response 1b: The NPU instruction-set lock-in trap**

Each NPU—Syntiant, ARM, Ambiq—ships with different instruction sets and memory hierarchies. If you design your quantization scheme around the Syntiant NDP's tensor operations, you've optimized for that silicon. Switching to ARM later requires re-quantizing and re-validating the entire pipeline. Have we considered building a reference model that's deliberately *over-specified* (higher precision, higher parameter count) that you then *systematically reduce* to each target NPU, rather than searching for the one-size-fits-all quantization scheme? This buys optionality when your Series A burn rate forces a pivot to cheaper silicon.

**Response 1c: The context-switch overhead wildcard**

Partitioning across MCU and NPU introduces context-switch overhead—flushing SRAM, marshaling feature vectors, synchronizing state. Your power budget assumes these handoffs are "free," but they're not. On a low-memory MCU with high-frequency PPG sampling (100+ Hz), you might spend 20-30% of power on inter-processor communication rather than actual inference. A risk mitigation: benchmark the actual MCU-to-NPU handoff cost on your target hardware *before* committing to a partitioning strategy, and consider keeping the entire pipeline on a single processor if overhead exceeds 15% of inference power.

**Response 1d: The sensor-scheduling dependency inversion**

Your partitioning and quantization decisions assume a fixed sensor-duty-cycle schedule. But that schedule changes based on detected anomalies (e.g., irregular heartbeat detected, wake up PPG to 200 Hz for 5 seconds). If your quantized model loses sensitivity during duty-cycle transitions, you've created a hidden state machine where accuracy depends on when the anomaly occurs. Mitigation: model your quantization robustness *across* duty-cycle transitions as a first-class requirement, not an afterthought.

---

## Q2: Sensor fusion topology and graceful degradation

* **Summary.** Choosing early, late, or intermediate fusion for four-sensor stack while ensuring that sensor dropout (e.g., poor PPG contact) degrades gracefully rather than catastrophically, and communicating confidence to users honestly.

**Response 2a: The fusion fragility paradox**

Late fusion—where each sensor trains a separate classifier and you combine outputs—feels robust: lose PPG, accelerometer still works. But you've hidden a coupling problem. Users expect that "low PPG confidence" should lower overall anomaly confidence proportionally. In practice, an accelerometer-only classifier will overfit to motion patterns that correlate with arrhythmias in your training data but won't in wild deployment. You might flag false positives whenever a user exercises hard. The trap is that graceful degradation is theoretically possible but requires retraining classifiers for *every subset* of sensor combinations (4 sensors = 15 subsets). Mitigation: explicitly plan for training and validating models for the 3-4 most likely failure modes (PPG dropout, accelerometer noise, microphone failure) as separate regression tests, not afterthoughts.

**Response 2b: The confidence-score honesty problem**

You propose communicating anomaly confidence scores to users. But what does "70% confidence" mean when PPG contact is poor? Users will either ignore low-confidence alerts (and miss real events) or obsess over them (and spiral into health anxiety). Have we considered that graceful degradation isn't just a technical problem—it's a UX and liability problem? A mitigation direction: define "confidence tiers" (high/medium/low/degraded) with explicit guidance on what each means for user action, and train users (via onboarding) on what "degraded" mode implies for reliability.

**Response 2c: The sensor-fusion blind spot**

Attention-based intermediate fusion sounds elegant—let the model learn which sensors matter moment-to-moment. But attention mechanisms on edge devices are computationally expensive and notoriously brittle under distribution shift. If your training data over-weights PPG (because it's your primary signal), the attention mechanism will learn to ignore accelerometer and temperature during inference. Then in the field, when a user's skin temperature shifts due to fever (a real health signal), your attention layer has already decided it's noise. Mitigation: audit attention weights during validation and enforce that each sensor maintains a minimum attention threshold, preventing any sensor from being permanently "dismissed."

**Response 2d: The motion-artifact feedback loop**

You mention motion-artifact rejection via accelerometer. But motion-artifact patterns vary wildly: yoga (low intensity, high frequency), HIIT (high intensity, irregular), sleep (nearly zero motion but major postural changes). Your static motion-artifact rejection rules will over-fit to one user population. Graceful degradation might mean *admitting* you can't reliably detect arrhythmias during intense exercise, rather than degrading silently and producing clinically unreliable alerts. Mitigation: implement explicit "high-motion mode" where anomaly detection simply pauses rather than running with low confidence.

---

## Q3: Hardware-software co-design, SRAM constraints, signal-processing precision, and component interaction effects

* **Summary.** Selecting COTS MCU+NPU combinations, treating SRAM/flash as hard constraints, identifying numerical precision cliffs in signal processing, and ensuring component-level optimizations don't create emergent performance degradation.

**Response 3a: The SRAM-constrained architecture inversion**

You're likely designing your signal-processing and ML pipeline, *then* searching for hardware that fits. But on 64-256 KB SRAM devices (which is typical for low-power MCUs), you've already lost—you can't fit a sliding-window buffer for two sensors, a feature extraction pipeline, and model inference simultaneously. The right approach is radically different: design the signal-processing topology *around* the SRAM constraint as the primary architectural invariant. This might mean processing PPG and motion in *separate passes* with interleaved memory, or streaming features through the model in micro-batches. Have we considered that treating SRAM as "something to optimize around later" virtually guarantees you'll hit a hard rewrite 9 months into firmware development?

**Response 3b: The fixed-point arithmetic precision cliff**

Moving PPG baseline-wander removal from floating-point to fixed-point saves power, but there's a hidden cliff. Adaptive baseline removal requires division (current sample / moving average) and precision loss in fixed-point can spiral: if your average drifts due to rounding, the adaptive loop diverges. You mentioned "where are the precision cliffs?" without identifying them empirically. Mitigation: run a sensitivity analysis on each signal-processing stage (bandpass filter, peak detection, SpO2 ratio-of-ratios) showing accuracy degradation as you reduce precision from float32 → float16 → int16 → int8, *measured on real noisy PPG data*, not synthetic test signals. There will be a stage that collapses at int8 and forces you to keep float16.

**Response 3c: The thermal throttling surprise**

Your component-level optimizations assume stable operating conditions. But the MCU running continuous feature extraction generates heat, which raises junction temperature, which forces the CPU to throttle clock speed (auto-DVFS). Lower clock speed means longer inference latency, which delays the next sampling window, which disrupts sensor-fusion timing. You've optimized sensing and processing independently, but they interact thermally. A hidden failure mode: after 20 minutes of continuous monitoring, thermal throttling destabilizes your carefully calibrated feature extraction timing, and your "graceful degradation" kicks in without you realizing why. Mitigation: include thermal simulation in your architecture selection—measure idle power, sustained load power, and thermal throttle thresholds on candidate MCUs before committing.

**Response 3d: The sensor-wakeup timing dance**

You've optimized each sensor's duty cycle independently: PPG sleeps 90% of the time, accelerometer samples at 50 Hz continuously. But they need to sample *together* for fusion. If PPG wakes up slightly out of phase with accelerometer, you're fusing signals that aren't temporally aligned. Sophisticated time-stamp buffering adds firmware complexity and latency overhead. Have we considered that "component optimization" without coordination breaks the synchronization assumptions your fusion model depends on? Mitigation: define a master clock and synchronization protocol *first*, then allocate power budget around temporal alignment, not the other way around.

---

## Q4: Sensor fusion as a strength, not a complexity tax

* **Summary.** Drawing principles from successful multi-signal health systems where sensor fusion felt unified rather than noisy, and applying those principles to PPG, accelerometer, temperature, and microphone integration.

**Response 4a: The "unified feeling" is often hidden complexity**

When sensor fusion works elegantly, it's usually because *one signal is trusted more than others* in the system design, and the other signals refine confidence around that primary signal. For example, in published cardiac ICU systems, ECG is primary, and respiration/motion are secondary confirmers. You're proposing PPG + accelerometer + temperature + microphone as equals, but that's fragile. If PPG fails and you're "equally trusting" acceleration, you're making decisions on motion artifacts alone—not unified fusion. The trap: the papers that describe elegant fusion don't discuss their hierarchical signal trust model explicitly. Mitigation: define which signal is *primary* (PPG, almost certainly) and which are *confirmation signals*, and design your fusion accordingly, rather than aiming for a false equality.

**Response 4b: The presentation layer honesty gap**

Even if fusion is architecturally unified, *presenting* it to users introduces complexity. "Your heart rhythm looks irregular, but your motion was high" sounds unified to an engineer. To a patient, it sounds uncertain. You're hiding the architectural complexity behind a reassuring UI. The risk: users don't understand the confidence model, so they either distrust alerts (and miss real events) or over-trust them (and develop unnecessary anxiety). Mitigation: be explicit about which signals contributed to an alert, rather than averaging their inputs and presenting a single confidence score.

**Response 4c: The rare-event fusion collapse**

Sensor fusion works well for common patterns (normal sinus rhythm + resting, normal sinus rhythm + walking). It collapses on rare events where signals conflict. Imagine atrial fibrillation with concurrent high motion—PPG shows irregular patterns, accelerometer shows jerky motion, temperature is normal. Your fusion model was trained on mostly "motion artifact looks like arrhythmia but isn't" and "arrhythmia without motion." This edge case breaks fusion. Have we considered that robust fusion on rare events requires *separate rare-event branches* in your model (e.g., "high-motion + irregular-PPG = expert system rules," not neural fusion)?

---

## Q5: The urban sensing parallel—learning from smart city multi-signal fusion

* **Summary.** Applying lessons from smart city platforms that fuse traffic, air quality, and transit data—where graceful degradation depends on each stream being independently useful—to wearable sensor fusion architecture.

**Response 5a: The independence assumption under pressure**

Smart city platforms work because a single camera failure doesn't break the entire system—air quality sensors still guide transit routing. But your wearable is personal: one sensor failure *must* be handled gracefully because users won't tolerate "your device is degraded, check back later." The urban sensing parallel breaks down under clinical stakes. Have we considered that "independently useful" signals in a smart city (traffic flow, air quality) aren't as tightly coupled as PPG + motion in cardiac detection, where motion *causes* PPG artifacts? Your signals aren't independent; they're confounded. Mitigation: map out the causal pathways between your sensors (motion → PPG artifacts, temperature → sensor drift) and design fusion to explicitly model these dependencies, not treat sensors as independent streams.

**Response 5b: The correlation-vs-causation trap**

Urban sensing discovered value in *correlations between streams captured at the same moment*. Your wearable will find correlations too: heart rate rises when motion increases (user is exercising) and when temperature rises (user has a fever). But correlation doesn't tell you *which* is the real signal. If you fuse on correlations alone, you'll conflate exercise-induced tachycardia with early sepsis (both show correlated HR and temperature rise). The smart city systems get away with correlation-based fusion because traffic decisions are low-stakes. Yours are medical. Mitigation: move beyond correlation-based fusion toward causal models (or at minimum, temporal causality—motion *precedes* PPG changes by ~200ms, temperature changes are slower), and audit for confounds during validation.

**Response 5c: The graceful-degradation presentation paradox**

Smart cities display multi-sensor failures transparently: "traffic cameras offline, routing based on sensors only." Users understand. Your device can't say "PPG confidence is low, using accelerometer primarily" because users lack the technical literacy and the context. They see "anomaly alert" or "no alert"—binary. Graceful degradation in a health device requires either (1) very sophisticated UX that explains sensor states without alarming users, or (2) conservative fallback rules that pause detection rather than degrade it. The urban parallel suggests (1) is possible, but health liability suggests (2) is safer. Have we considered that adopting smart-city-style transparency might expose your device to liability claims ("your documentation said degraded mode was less reliable, yet I had an event and you didn't alert me")?


---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "03_ml-architecture-quantization-and-sensor-fusion"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: ML Architecture, Quantization, and Sensor Fusion

---

## Synthesized Insights by Question

### Question 1: Architecture, Quantization, and MCU/NPU Partitioning Under the Power Envelope

**Full question**: Across CNN, RNN/LSTM, transformer, and state-space (Mamba/S4) families, which offers the most defensible accuracy-per-milliwatt for arrhythmia detection on continuous PPG (compared on parameter count, activation memory, and inference cycles per sample with what published benchmarks before silicon commitment) — how should the team approach quantization (INT8, INT4, mixed-precision, weight clustering) in light of the specific NPU's instruction set, when should quantization-aware training (QAT) be introduced to prevent accuracy collapse on rare-event classes (arrhythmia, apnea) already underrepresented in training data, and what criteria should govern which layers run on the MCU versus the NPU given context-switch overhead and SRAM bandwidth limits, and how does that partitioning interact with sensor-front-end duty-cycle scheduling?

* **Choose RNN/LSTM as the default architecture.** It carries temporal context in hidden state without expanding buffers and is the most benchmark-proven family at this power budget. Five of seven perspectives converge here, citing lowest parameter count, built-in state compression, and the absence of edge-deployment evidence for transformers and state-space models at this budget. The recurrence captures arrhythmia progression that exceeds typical CNN receptive fields. Validate on candidate silicon before committing.

* **Treat SRAM as a hard architectural invariant that shapes model topology from day one.** Designing the model first and then searching for hardware that fits virtually guarantees a hard rewrite mid-firmware-development. Compute the fixed model budget (total SRAM minus firmware, OS, and ring buffers). Treat it as a shared pool with a live allocation manifest and design against an ~80KB target to leave a safety margin. If a model exceeds budget, reject it rather than promising "optimization later."

* **Partition statically: signal conditioning on the MCU, sequence inference on the NPU, handing off one buffered window rather than repeated small batches.** Buffer a full window (around 30 seconds) and trigger a single NPU inference to amortize context-switch cost. Filter-and-discard operations run continuously on the MCU, and the NPU is invoked only when signal quality crosses a threshold.

* **Introduce QAT early on upsampled rare-event classes to prevent accuracy collapse.** Post-hoc quantization disproportionately damages the underrepresented arrhythmia and apnea classes because standard QAT workflows are tuned for balanced datasets. Put quantization in the training loop and upsample rare events (e.g., to ~20% of the batch) so rounding doesn't erase sensitivity. A clinically acceptable headline accuracy can hide unusable rare-class sensitivity.

* **Begin with INT8 weights and higher-precision activations, profiling rare-class accuracy before stepping to INT4.** Preserve a small high-precision head for the classification decision. INT8 is the workhorse and mixed precision is applied selectively where rare-event recall is decided. On a well-trained RNN, INT8 typically costs only 1-2% on common cases, so the real exposure is rare-class recall, which must be measured directly.

* **Guard against a quantization rare-event cliff with a precision-fallback escape hatch.** Aggressive quantization can drop rare-event sensitivity by 15-25%, turning a "98% accurate" model into a clinically unusable 85%-sensitivity one. Have the device flag when quantization uncertainty exceeds a clinical threshold and reprocess suspicious samples at higher precision rather than silently accepting them.

* **Consider deferring QAT until ablation proves it is needed; a two-stage PTQ-then-QAT path may suffice.** A dissenting view holds that post-hoc INT8 often loses only 1-2%. Measure rare-class recall under plain post-training quantization first and add QAT only if it actually collapses. A reconciling middle path ships with PTQ and reserves QAT for the final accuracy gain needed to meet the false-negative budget, cutting the ML timeline from roughly six months to four.

* **Avoid NPU instruction-set lock-in by maintaining an over-specified reference model that reduces to each target silicon.** Quantizing tightly around one NPU's tensor operations forfeits the optionality a Series A team may need when burn forces a cheaper-silicon pivot. NPUs differ materially (strong on convolutions but weak on RNN gates, strong on matrix ops but latent on feedback loops). Profile each with a representative quantized model before committing.

* **Benchmark the real MCU-to-NPU handoff cost before committing to partitioning.** The assumption that handoffs are free can cost 20-30% of power on inter-processor communication at high sampling rates. If measured overhead exceeds ~15% of inference power (or context-switch time approaches inference time), keep the pipeline on a single processor and accept slightly lower precision.

* **Make quantization robustness across duty-cycle transitions a first-class requirement.** When an anomaly wakes PPG from a low rate to a high rate, a model that loses sensitivity during the transition makes detection depend on exactly when the event occurs. This creates a hidden state machine.

* **Ship a v1 baseline, then redesign v2 around real-world failure data rather than predicted gaps.** A simple on-MCU baseline collecting several weeks of usage reveals whether the real gap is exercise false positives or slow-arrhythmia false negatives. This is worth more than any pre-silicon benchmark.

---

### Question 2: Sensor Fusion Topology and Graceful Degradation

**Full question**: For the four-sensor stack, should the team adopt early fusion, late fusion, or attention-based intermediate fusion — and what motion-artifact rejection requirements from the accelerometer should drive that choice so that sensor dropout (e.g., poor PPG contact during exercise) degrades detection capability gracefully rather than catastrophically, with anomaly confidence scores communicated to users in a way that handles the degradation honestly?

* **Adopt late fusion as the default: independent per-sensor scoring combined at the decision layer.** Early fusion creates a single point of failure where violated sensor correlations crash confidence across all predictions. Late fusion isolates failures and is tractable for a small ML team. Each modality emits its own confidence; fusion combines confidences, not raw signals, and scales to five sensors without redesign.

* **Treat motion-artifact rejection as a gating prerequisite, not downstream cleanup.** Exercise PPG is the dominant false-positive source. A binary exercise/rest classifier on accelerometer data should gate or disqualify PPG before fusion. When high motion is flagged, the system should lower thresholds for motion-invariant signals (temperature, breathing) and suppress PPG-dependent ones. This minimum viable fusion can cut false positives substantially and should ship first.

* **Communicate degradation honestly with explicit confidence tiers tied to sensor health, never a single opaque score.** Report which signals contributed and how reliable they are, in the spirit of medical triage tags or air-quality confidence intervals. High multi-sensor agreement yields a high-confidence alert; single-sensor or motion-corrupted input yields an explicit degraded/recheck state ("possible irregularity, medium confidence — check band fit"). Design this metric from day one, not as a post-hoc fix.

* **Plan attention-based intermediate fusion as an upgrade path, with sensor dropout injected during training.** If late fusion underperforms (an accuracy gap beyond a few percent), a learned gating layer can naturally downweight a failing sensor and hold detection near 70% rather than dropping to 40%. Train with simulated dropout and validate on real failure logs.

* **Pair PPG and microphone for respiration so apnea detection survives PPG contact loss.** Because microphone breathing does not depend on contact-quality optics, designing it to produce a standalone signal provides a natural fallback when PPG drops.

* **Budget explicit retraining and regression tests for the most likely dropout subsets.** Late fusion hides a coupling problem: an accel-only classifier can overfit motion patterns and fire false positives during hard exercise. Graceful degradation across four sensors implies validating many subsets. Treat the three or four most likely failure modes (PPG dropout, accelerometer noise, microphone failure) as named regression tests.

* **Enforce a minimum attention floor per sensor to prevent permanent dismissal.** Attention fusion is brittle under distribution shift. A PPG-heavy training set can teach the model to ignore other sensors, so a real fever signal gets dismissed as noise in the field. Audit attention weights during validation and floor each sensor's minimum contribution.

* **When motion is high, pausing arrhythmia detection may be safer than degrading it.** An explicit high-motion mode that suspends detection and reports "unable to assess heart rhythm" can be safer than emitting low-confidence, clinically unreliable alerts. This reframes graceful degradation: the floor is not "detect with low confidence" but "admit you cannot measure right now."

---

### Question 3: Hardware-Software Co-Design, SRAM as Architectural Invariant, PPG Signal-Processing Precision, and Component-vs-System Optimization

**Full question**: For a 12-person startup without custom silicon access, which COTS MCU+NPU combinations (Nordic nRF9151, Ambiq Apollo, ST STM32N6, Syntiant NDP) offer the most viable path to the power budget, what SRAM/flash constraints should the ML team treat as hard architectural invariants when designing model topology rather than late-stage optimization problems, which signal-processing stages — bandpass filtering, adaptive baseline wander removal, peak detection, SpO2 ratio-of-ratios — can be implemented in fixed-point arithmetic on the MCU without a DSP coprocessor (and where are the numerical precision cliffs that would force a fallback to floating-point or an additional hardware accelerator), and given that richer sensor fusion improves accuracy but demands more cycles and power — if sensing and processing are optimized independently, interaction effects (sensor wakeup timing, inference scheduling, thermal management) become a source of emergent behavior — what coordination mechanisms ensure component-level optimizations don't degrade system-level performance?

* **Start on Nordic nRF9151 for connectivity maturity and a known ecosystem.** Prototype a backup (Ambiq Apollo) in parallel and decide by month 4. Nordic is favored for Bluetooth integration and Cortex-M33/M55 maturity. Ambiq offers superior low-power and larger SRAM but carries TensorFlow Lite runtime lock-in risk. STM32N6 is a flexible middle ground. Syntiant NDP suits deployment-phase optimization and is audio-oriented rather than ideal for PPG prototyping. Decide on team expertise and constraints, not benchmark marketing. Respect 8-12 week sourcing lead times.

* **Implement bandpass, baseline-wander removal, and peak detection in fixed-point on the MCU.** Perform the SpO2 ratio-of-ratios in floating-point or wide fixed-point. Time-domain PPG preprocessing is comfortably Q15/Q16 fixed-point on a Cortex-M4. The precision cliff is the noisy division in ratio-of-ratios (and, by one account, the seconds-long high-pass in baseline removal), where rounding accumulates into a clinically dangerous downward SpO2 bias below roughly 24-bit precision. Run a per-stage sensitivity analysis from float32 down to int8 on real noisy PPG to find the stage that collapses.

* **Coordinate sensor wakeup, inference scheduling, and thermal management explicitly through simulation-first co-design.** Optimizing sensing and inference separately produces collisions: wakeup current spikes during inference startup, thermal throttling that misaligns temporal windows, and accel wakeup latency exceeding the inference window (yielding stale data). Define a master clock and trace power/timing/buffer states across a full 24-hour profile to find coupling before tape-out. Have firmware re-align the next inference trigger from logged acquisition and completion times. Uncorrected thermal jitter can cost several percent of arrhythmia sensitivity.

* **Treat sustained-load thermal throttling as a named failure and include thermal simulation in hardware selection.** After roughly twenty minutes of continuous monitoring, junction-temperature throttling lowers clock speed, delays sampling, and triggers degradation without an obvious cause. Measure idle, sustained-load, and throttle thresholds on candidate MCUs before committing.

* **Use a published fixed-point PPG library rather than reinventing signal processing.** Integrate a proven open-source algorithm, validate it on around 100 real users, and adapt only where it actually fails. This saves scarce firmware weeks that would only matter if a custom filter turned out to be the bottleneck.

* **Build a trade-off decision matrix (architecture x precision x fusion topology x hardware) scored on latency, power, SRAM, and development risk.** Scoring combinations concretely often shows that a "lower-accuracy" fixed-point plus late-fusion pipeline beats a theoretically optimal float plus early-fusion pipeline because it fits SRAM and ships weeks earlier.

---

### Question 4: Sensor Fusion as a Strength, Not a Complexity Tax

**Full question**: When sensor fusion in multi-signal health systems has worked elegantly — combining PPG, accelerometry, temperature, and breathing into something that feels unified rather than noisy — what architectural principles governed how signals were weighted, reconciled, and presented? How would those principles apply here?

* **Elegant fusion comes from each sensor answering one orthogonal question, then reconciling those answers, not from blending raw streams.** PPG asks whether the rhythm is abnormal, the accelerometer whether the person is moving, temperature whether there is fever, the microphone whether breathing is regular. Fusion respects these roles rather than averaging peers into noise. Fusing orthogonal signals adds information; fusing redundant ones adds noise.

* **Use multi-signal agreement as the confidence engine, and keep the reasoning transparent.** Confidence should rise when independent signals corroborate and fall when they conflict. Each signal's contribution should be legible rather than a black-box output. A Bayesian formulation (prior equals baseline state, posterior updates given readings) yields one defensible confidence number. Domain-derived weights (PPG for rhythm, accelerometer for motion) read better in a 510(k) review than weights learned from scratch.

* **Exploit mutual constraint between signals; anti-correlation is itself a feature.** An irregular rhythm with no motion is likely a true arrhythmia. Irregular PPG with vigorous motion is likely artifact (users tend to pause during real events, so chaotic PPG against stable accelerometer is informative). A coherence-seeking layer that reasons about each signal's reliability in context turns this into robustness rather than averaging conflicting signals into noise.

* **Layer the architecture (raw signals to derived features to semantic events) so degradation in one layer does not force retraining of higher layers.** Separating per-sensor models, semantic fusion rules, and user-facing communication means a PPG quality drop simply feeds lower confidence into existing rules. Fusing at the semantic level (heart-rate variability plus lack of motion implies arrhythmia; breathing pause plus sleep context implies apnea) is simpler to validate than signal-level blending.

* **Resample all sensors to a common timeline before fusing; temporal alignment is the overlooked precondition.** A 50ms skew between PPG and accelerometer can degrade learned fusion weights by 10-15%. Microsecond-defined sampling and resampling to common windows is load-bearing, not housekeeping.

* **Designate a primary signal rather than aiming for sensor equality.** The "unified feeling" in published elegant systems usually rests on a hidden hierarchy with one primary signal and the rest as confirmers. Treating four sensors as co-equal means that when the primary fails, decisions rest on artifacts. Name PPG primary and the others confirmation signals.

* **Route rare conflicting-signal events through explicit branches, not neural fusion.** Fusion collapses precisely on the rare events that matter most, such as atrial fibrillation with concurrent high motion, which the model was never trained on. Handle high-motion-plus-irregular-PPG with expert-system rules rather than trusting learned fusion at the edge case.

* **Close the presentation honesty gap by naming the contributing signals.** "Irregular rhythm but high motion" reads as unified to an engineer and as uncertain to a patient, risking either distrust or anxiety. Be explicit about which signals fired rather than averaging inputs into one reassuring confidence number.

---

### Question 5: The Urban Sensing Parallel for Multi-Signal Fusion

**Full question**: Smart city platforms that fuse traffic cameras, air quality sensors, and transit data discovered that the value isn't in any single stream but in the correlations between streams captured at the same moment — and that sensor failure degrades gracefully only when the fusion architecture treats each stream as independently useful. Given that this device fuses PPG, accelerometer, skin temperature, and microphone, how should the fusion architecture be designed so that partial sensor degradation (e.g., poor PPG contact during exercise) degrades detection capability gracefully rather than catastrophically, and what does that imply for how anomaly confidence scores are communicated to users?

* **Design every sensor to be independently useful and process streams independently, combining them late, so partial failure never cascades into total device failure.** Each stream must carry standalone value (PPG for rhythm, accelerometer for activity, temperature for fever, microphone for apnea) and the architecture must not assume all streams are present. Train the model to predict from multimodal subsets so that any three of four sensors sustain detection at 60-70%. Disabling one sensor should lower confidence, not silence the device.

* **Capture cross-signal correlation at the same moment as a fusion feature.** Anomalies that ripple across signals together are more credible than any isolated spike. An isolated PPG event with no corroborating accelerometer or temperature change is more likely noise. Timestamp-anchored, time-windowed cross-correlation is simpler and more robust than pixel-level early fusion. It lets observable rules ("heart rate up and activity low and temperature rising implies infection") do real work.

* **Build explicit per-sensor failure models and active fallback chains, because graceful degradation is designed, not automatic.** Catalog real failure modes (PPG contact loss in exercise or sweat, accelerometer saturation, microphone noise, temperature drift). For each, define what detection remains and which complementary signals to lean on harder. Test by injecting failures and replaying through the pipeline. When PPG contact drops, actively increase reliance on breathing, motion context, and temperature trend rather than only lowering PPG weight.

* **Report calibrated, labeled confidence that names which sensors are active.** Mirror how cities publish an estimate "based on N of M sensors": expose sensor state in the confidence message ("87% based on PPG, accelerometer, and temperature" versus "42%, accelerometer only, PPG lost"). Users become partners in uncertainty rather than victims of silent dropout, which also reduces liability from hidden degradation.

* **Recognize that under clinical stakes the streams are confounded, not independent, and model the causal pathways.** The smart-city analogy partly breaks down here: traffic and air quality are loosely coupled and low-stakes. PPG and motion are causally entangled (motion physically produces PPG artifacts) and the decisions are medical. Fusing on correlation alone conflates exercise tachycardia with early sepsis. Map the causal pathways (motion precedes PPG change by around 200ms; temperature moves slowly). Design fusion to model those dependencies and audit for confounds during validation.

* **Weigh conservative pause-detection against full transparency, since exposing "degraded mode" can itself create liability.** A user lacking technical context who has an event in a disclosed "degraded mode" becomes a potential liability claim. Either invest in very sophisticated UX that explains sensor states without alarming users, or default to pausing detection rather than degrading it. This sharpens the honesty principle rather than negating it.

---

**Questions addressed**: 5
**Synthesized insights**: 35

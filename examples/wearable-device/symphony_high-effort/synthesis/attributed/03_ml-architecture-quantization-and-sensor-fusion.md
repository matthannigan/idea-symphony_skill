---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "03_ml-architecture-quantization-and-sensor-fusion"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: ML Architecture, Quantization, and Sensor Fusion - With Attribution

---

## Synthesized Insights by Question

### Question 1: Architecture, Quantization, and MCU/NPU Partitioning Under the Power Envelope

**Full question**: Across CNN, RNN/LSTM, transformer, and state-space (Mamba/S4) families, which offers the most defensible accuracy-per-milliwatt for arrhythmia detection on continuous PPG (compared on parameter count, activation memory, and inference cycles per sample with what published benchmarks before silicon commitment) — how should the team approach quantization (INT8, INT4, mixed-precision, weight clustering) in light of the specific NPU's instruction set, when should quantization-aware training (QAT) be introduced to prevent accuracy collapse on rare-event classes (arrhythmia, apnea) already underrepresented in training data, and what criteria should govern which layers run on the MCU versus the NPU given context-switch overhead and SRAM bandwidth limits, and how does that partitioning interact with sensor-front-end duty-cycle scheduling?

* **Choose RNN/LSTM as the default architecture; it carries temporal context in hidden state without expanding buffers, and it is the most benchmark-proven family at this power budget.** Five of seven personas converge on RNN/LSTM for continuous sequential PPG, citing lowest parameter count, built-in state compression, and real-world edge-deployment evidence that transformers and state-space models lack at this budget. The recurrence captures arrhythmia progression that exceeds typical CNN receptive fields. Validate the choice on candidate silicon before committing, not on theory.
  * **LSTM excels at sequential anomaly detection through retained temporal context.** Like immune memory cells tolerating rare pathogens, LSTM inductive bias is more robust than CNNs on rare arrhythmia events. *—The Analogist*
  * **RNNs have established power profiles on microcontroller stacks; transformers and Mamba lack edge deployment data at this budget.** CNNs work for windowed PPG but blow SRAM with activation buffers. *—The Pragmatist*
  * **RNN/LSTM handles continuous PPG with the lowest parameter count among the four families.** Stop optimizing four architectures in parallel; architecture shopping delays shipping. *—The Simplifier*
  * **A 3-layer LSTM (96 units, INT8) can outperform a larger CNN because state compression is built in.** Hidden state encodes temporal context without expanding the input buffer. *—The Systems Thinker*
  * **RNNs/LSTMs capture temporal dependencies without attention's memory overhead.** CNNs are faster per sample but their receptive field is too short for rare-event detection on continuous PPG. Start from Apple Watch / Withings benchmarks. *—The Technical Expert*

* **Treat SRAM as a hard architectural invariant that shapes model topology from day one, not a late-stage optimization.** All seven personas engage SRAM as the binding constraint. Designing the model first and searching for hardware that fits virtually guarantees a hard rewrite mid-firmware-development. Lock the SRAM budget before choosing model family; if a model exceeds budget, reject it rather than promising "optimization later."
  * **SRAM is your constraint, not a solvable problem; treat the ceiling like engine displacement.** Start with topologies that fit 64-128 KB, then add features. *—The Analogist*
  * **Frame the SRAM limit as a design invariant in the Dieter Rams sense; constraints are the source of elegant design.** It forces algorithmic parsimony. *—The Connector*
  * **Design the signal-processing topology around the SRAM constraint as the primary invariant.** Treating SRAM as "something to optimize around later" guarantees a hard rewrite 9 months in. *—The Devil's Advocate*
  * **Total SRAM minus firmware, OS, and ring buffers equals a fixed model budget; communicate it to ML with no exceptions.** Use TensorFlow Lite Micro to measure SRAM per model. *—The Pragmatist*
  * **Build down from SRAM, not up from a feature wishlist.** If 512K total and the stack takes 200K, the model has a 312K budget, period. *—The Simplifier*
  * **SRAM is a shared pool, not per-team; maintain a live allocation manifest (PPG buffer, accel buffer, weights, activations, workspace).** When ML grows the model, hardware sees the accel buffer shrink immediately. *—The Systems Thinker*
  * **Design models against an 80KB target to leave a 20KB safety margin for firmware evolution.** A 2-layer LSTM (128 units) consumes ~40KB activations; a 3-layer CNN ~60KB. *—The Technical Expert*

* **Partition statically: signal conditioning on the MCU, sequence inference on the NPU, handing off one buffered window rather than repeated small batches.** Strong convergence on this split, motivated by amortizing context-switch cost. The MCU buffers a full window (around 30 seconds) and triggers a single NPU inference, which avoids the per-sample handoff penalty.
  * **MCU handles signal conditioning; NPU processes feature extraction and temporal inference.** *—The Analogist*
  * **Run filter-and-discard operations constantly on the MCU; invoke energy-expensive sequence reasoning on the NPU only when signal quality crosses a threshold.** *—The Connector*
  * **MCU buffers a full 30-second window and hands off a single inference, avoiding context-switch overhead.** *—The Systems Thinker*
  * **Wake the NPU for inference every 10 samples (~150ms at 66Hz), not continuously, to amortize power across detections.** PPG front-end filtering stays on the MCU. *—The Technical Expert*
  * **Partition by locality: MCU filters and normalizes, NPU runs the sequence model; static partitioning with simple message passing is fine.** *—The Simplifier*

* **Introduce QAT early on upsampled rare-event classes to prevent accuracy collapse, because post-hoc quantization disproportionately damages the underrepresented arrhythmia and apnea classes.** A majority view (Analogist, Connector, Pragmatist, Systems Thinker) holds that QAT belongs in the training loop, with rare events augmented or upsampled (e.g., to ~20% of the batch). The motivating risk is that standard QAT workflows are tuned for balanced datasets, so a clinically acceptable headline accuracy can hide unusable rare-class sensitivity.
  * **Introduce QAT early by training on synthetic rare-event augmentations, before deployment freezing.** *—The Analogist*
  * **Introduce QAT early as co-design validation, not insurance; a model that survives aggressive quantization proves its features are robust.** *—The Connector*
  * **Move INT8 QAT to before deployment; rare-event classes suffer catastrophic collapse post-hoc.** Run QAT on augmented synthetic arrhythmia data. *—The Pragmatist*
  * **Apply QAT immediately, upsampling rare events to ~20% of the batch, so quantization rounding does not erase sensitivity to rare patterns.** *—The Systems Thinker*

* **Begin with INT8 weights and higher-precision activations, profiling accuracy loss on held-out arrhythmia samples before stepping to INT4; preserve a small high-precision head for the classification decision.** Convergent quantization recipe: INT8 as the workhorse, mixed precision applied selectively where rare-event recall is decided. Several personas note INT8 on a well-trained RNN typically costs only 1-2% on common cases, so the real exposure is rare-class recall, which must be measured directly.
  * **INT8 weights with FP16 activations in early fusion stages; coarse quantization for transmission, precision preserved at decision boundaries.** *—The Analogist*
  * **INT8 weights, float32 activations; profile arrhythmia-subset accuracy before stepping to INT4; keep classification-critical layers at INT8.** *—The Pragmatist*
  * **INT8 is viable for most layers; INT4 for weights works if INT16 is preserved on activation layers touching classification.** *—The Technical Expert*
  * **Apply stronger quantization to common patterns, preserve precision in anomaly signal margins; match precision to layer role (INT4 reflexes, mixed-precision decisions).** *—The Connector*

* **(Dissent) Quantization on a <1% arrhythmia class can drop rare-event sensitivity by 15-25%, turning a "98% accurate" model into a clinically unusable 85%-sensitivity model; build a precision-fallback escape hatch.** The Devil's Advocate reframes quantization as a rare-event liability rather than a power optimization, recommending the device transparently flag when quantization uncertainty exceeds a clinical threshold and reprocess suspicious samples at higher precision. The Technical Expert independently corroborates the mechanism by reserving a floating-point head for the final accuracy gain.
  * **INT8 may reduce rare-event sensitivity 15-25%; implement a confidence-degradation protocol that falls back to higher-precision processing of suspicious samples rather than silently committing.** *—The Devil's Advocate*

* **(Dissent) Defer QAT and even mixed precision until ablation proves they are needed; post-hoc INT8 often loses only 1-2%, so QAT may be solving an imaginary problem.** The Simplifier directly opposes the QAT-early view, arguing the team should measure rare-class recall under plain post-training INT8 first and add QAT only if it actually collapses. The Technical Expert offers a reconciling middle path: PTQ first to ship, QAT later for the final rare-event accuracy gain.
  * **QAT is solving a problem you might not have; measure first, add QAT only if INT8 degrades rare-class recall below threshold.** *—The Simplifier*
  * **Start with PTQ (faster), make QAT mandatory only for the final ~12% accuracy gain needed to meet the false-negative budget; a two-stage path cuts ML timeline from 6 to 4 months.** *—The Technical Expert*

* **Avoid NPU instruction-set lock-in by maintaining an over-specified reference model that you systematically reduce to each target silicon.** Single-persona insight worth acting on: quantizing tightly around one NPU's tensor operations forfeits the optionality a Series A team may need when burn forces a cheaper-silicon pivot. NPUs differ materially (e.g., M55 strong on convolutions but weaker on RNN gates; Apollo strong on matrix ops but latent on feedback loops).
  * **Build a deliberately over-specified reference model and reduce it to each target NPU, rather than chasing one quantization scheme; this buys optionality under burn pressure.** *—The Devil's Advocate*
  * **NPU instruction sets have quirks (M55 weak on RNN gates, Apollo latent on feedback loops); profile each with a representative quantized model for ~4 weeks before committing.** *—The Technical Expert*

* **Benchmark the real MCU-to-NPU handoff cost on target silicon before committing to partitioning; keep the pipeline on one processor if overhead exceeds ~15% of inference power.** The convenient assumption that handoffs are free can cost 20-30% of power on inter-processor communication at high PPG sampling rates. Let measured overhead, not theory, decide whether to split.
  * **Inter-processor handoffs can consume 20-30% of power at 100+ Hz; benchmark first and consider single-processor if overhead exceeds 15%.** *—The Devil's Advocate*
  * **If NPU context-switch adds 5ms but inference takes 8ms, stay on the MCU and accept slightly lower precision; run a 3-day on-hardware benchmark of CNN, LSTM, and Mamba.** *—The Systems Thinker*

* **(Dissent) Quantization robustness must hold across duty-cycle transitions, or accuracy becomes a hidden state machine.** Single-persona blind spot: when an anomaly wakes PPG from low-rate to high-rate (e.g., 200 Hz for 5 seconds), a model that loses sensitivity during the transition makes detection depend on exactly when the event occurs. Make cross-transition robustness a first-class requirement.
  * **Model quantization robustness across duty-cycle transitions as a first-class requirement, not an afterthought.** *—The Devil's Advocate*

* **Ship a v1 baseline, then redesign v2 around real-world failure data rather than predicted gaps.** Single-persona reframe of quantization as a feedback loop: a simple on-MCU baseline collecting six weeks of usage reveals whether the real gap is exercise false positives or slow-arrhythmia false negatives, which is worth more than any pre-silicon benchmark.
  * **Ship v1 with a known baseline, collect 6 weeks of real usage, then design v2 around measured accuracy gaps.** *—The Systems Thinker*

---

### Question 2: Sensor Fusion Topology and Graceful Degradation

**Full question**: For the four-sensor stack, should the team adopt early fusion, late fusion, or attention-based intermediate fusion — and what motion-artifact rejection requirements from the accelerometer should drive that choice so that sensor dropout (e.g., poor PPG contact during exercise) degrades detection capability gracefully rather than catastrophically, with anomaly confidence scores communicated to users in a way that handles the degradation honestly?

* **Adopt late fusion as the default: independent per-sensor scoring combined at the decision layer, so losing one sensor degrades rather than collapses detection.** Five personas (Analogist, Connector, Pragmatist, Simplifier, Systems Thinker) converge that early fusion creates a single point of failure where violated sensor correlations crash confidence across all predictions, while late fusion isolates failures and is tractable for a 3-person ML team. Each modality emits its own confidence; fusion combines confidences, not raw signals.
  * **Late fusion lets PPG loss degrade rhythm sensitivity without breaking motion-artifact rejection; users see "reduced confidence" rather than "failed."** *—The Analogist*
  * **Late fusion isolates failures the way financial systems keep each node independently defensible; confidence emerges when independent streams vote on the same anomaly.** *—The Connector*
  * **Late fusion is the safest start: simpler to implement and debug, scales to five sensors without redesign; threshold per modality, then fuse high-confidence signals.** *—The Pragmatist*
  * **Late fusion with hand-coded weights (0.6 PPG, 0.3 accel, 0.1 temperature) solves 95% of cases at a quarter of the inference cycles.** *—The Simplifier*
  * **Late fusion decouples modalities so a low-confidence PPG detector and a high-confidence accel detector combine honestly; early fusion is a "Shifting the Burden" trap.** *—The Systems Thinker*

* **Treat motion-artifact rejection as a gating prerequisite, not downstream cleanup: use the accelerometer to disqualify or downweight PPG during detected exercise.** Convergent and high-priority because exercise PPG is the dominant false-positive source. A binary exercise/rest classifier on accelerometer data gates PPG before fusion; several personas frame this as the minimum viable fusion that should ship first.
  * **Scale PPG contribution down under high accelerometer variance; attention gates prevent artifacts from cascading.** *—The Analogist*
  * **Motion-artifact rejection is part of the fusion topology, not a preprocessing step; train the attention layer on poor-contact and dropout examples.** *—The Connector*
  * **Train a binary exercise/rest classifier on accel and disqualify PPG anomalies during exercise; this minimum viable fusion can cut false positives >40%.** *—The Pragmatist*
  * **Pre-filter accel through a motion-artifact detector calibrated at first-wear; mark high-motion windows so fusion ignores PPG features there (adds 2-4KB on MCU).** *—The Technical Expert*
  * **Motion artifact is a system-level constraint: when accel flags high motion, lower thresholds for motion-invariant classifiers (temperature, breathing) and suppress PPG-dependent ones.** *—The Systems Thinker*

* **Communicate degradation honestly with explicit confidence tiers tied to sensor health, never a single opaque score.** Universal convergence across all seven personas: report which signals contributed and how reliable they are, mirroring medical triage tags or air-quality confidence intervals. High multi-sensor agreement yields a high-confidence alert; single-sensor or motion-corrupted input yields an explicit "degraded / recheck" state.
  * **Use triage-style bands ("high confidence" PPG+accel+temp aligned; "low confidence, contact issue") that drive UI behavior.** *—The Analogist*
  * **Show a real confidence slider that decays when reliability drops, creating honest degradation rather than silent failure.** *—The Connector*
  * **Every alert carries a confidence tied to sensor health: "Possible irregularity (medium confidence — check band fit)"; design it from day one.** *—The Pragmatist*
  * **"Confident score or degrade gracefully": users understand "wearing too loosely, please adjust" better than algorithmic explanations.** *—The Simplifier*
  * **Show confidence per sensor: "high confidence (97%) based on PPG; motion context unavailable due to accel saturation."** *—The Systems Thinker*
  * **"Heart rhythm confidence degraded during exercise — recheck in 10 minutes when stationary" prevents user over-reliance on degraded input.** *—The Technical Expert*

* **Plan for attention-based intermediate fusion as an upgrade path if late fusion underperforms, with sensor dropout injected during training so degradation is learned, not bolted on.** Complementary view (Connector, Pragmatist as fallback, Systems Thinker, Technical Expert): a learned gating layer naturally downweights a failing sensor and can hold detection at ~70% rather than dropping to 40%. The shared precondition is training with simulated dropout and validating on real failure logs.
  * **Intermediate attention fusion with confidence scores learned during training; downweight PPG and amplify accel+temperature when contact fails.** *—The Connector*
  * **Add attention-based intermediate fusion only if late fusion's accuracy gap exceeds 5%; validate on masked-PPG synthetic dropout.** *—The Pragmatist*
  * **Inject random sensor dropout during training so the model learns which modalities are optional and uncertainty rises gracefully; validate on pilot failure logs.** *—The Systems Thinker*
  * **Learned intermediate fusion downweights PPG and upweights temperature/breathing during exercise, holding detection at 70% rather than 40%.** *—The Technical Expert*

* **Pair PPG and microphone for respiration so apnea detection survives PPG contact loss.** Single-persona structural insight: because microphone breathing does not depend on contact-quality optics, designing it to produce a standalone signal gives a natural fallback when PPG drops.
  * **Fuse PPG and microphone for breathing; when PPG fails, microphone breathing alone still flags apnea with modest accuracy loss.** *—The Systems Thinker*

* **(Dissent) Late fusion hides a coupling problem: an accel-only classifier overfits motion patterns and fires false positives during hard exercise; budget explicit retraining for the 3-4 most likely dropout subsets.** The Devil's Advocate punctures the late-fusion comfort by noting that "graceful degradation" really requires validating models for many sensor subsets (four sensors imply fifteen). Treat the top failure modes as named regression tests, not afterthoughts.
  * **Late fusion requires retraining classifiers for every sensor subset; explicitly plan and regression-test the 3-4 most likely failure modes (PPG dropout, accel noise, mic failure).** *—The Devil's Advocate*

* **(Dissent) Attention fusion is brittle under distribution shift: a PPG-heavy training set teaches attention to permanently dismiss other sensors; enforce a minimum attention floor per sensor.** Single-persona counter-test against the attention enthusiasm. If temperature is treated as noise during training, a real fever signal gets ignored in the field. Audit attention weights in validation and floor each sensor.
  * **Audit attention weights during validation and enforce a minimum threshold per sensor so none is permanently dismissed.** *—The Devil's Advocate*

* **(Reframe) When motion is high, pausing arrhythmia detection may be safer than degrading it; an honest "cannot assess" beats a low-confidence clinical guess.** The Devil's Advocate proposes an explicit high-motion mode that suspends detection rather than emitting unreliable alerts, and the Simplifier independently arrives at the same honest-gap stance. This reframes graceful degradation: the floor is not "detect with low confidence" but "admit you cannot measure right now."
  * **Implement an explicit high-motion mode that pauses anomaly detection rather than running with low, clinically unreliable confidence.** *—The Devil's Advocate*
  * **If PPG fails, output "unable to assess heart rhythm" honestly instead of hallucinating confidence.** *—The Simplifier*

---

### Question 3: Hardware-Software Co-Design, SRAM as Architectural Invariant, PPG Signal-Processing Precision, and Component-vs-System Optimization

**Full question**: For a 12-person startup without custom silicon access, which COTS MCU+NPU combinations (Nordic nRF9151, Ambiq Apollo, ST STM32N6, Syntiant NDP) offer the most viable path to the power budget, what SRAM/flash constraints should the ML team treat as hard architectural invariants when designing model topology rather than late-stage optimization problems, which signal-processing stages — bandpass filtering, adaptive baseline wander removal, peak detection, SpO2 ratio-of-ratios — can be implemented in fixed-point arithmetic on the MCU without a DSP coprocessor (and where are the numerical precision cliffs that would force a fallback to floating-point or an additional hardware accelerator), and given that richer sensor fusion improves accuracy but demands more cycles and power — if sensing and processing are optimized independently, interaction effects (sensor wakeup timing, inference scheduling, thermal management) become a source of emergent behavior — what coordination mechanisms ensure component-level optimizations don't degrade system-level performance?

* **Start on Nordic nRF9151 for connectivity maturity and a known ecosystem, prototyping a backup (Ambiq Apollo) in parallel, and decide by month 4 to respect 8-12 week sourcing lead times.** Convergent COTS recommendation. Nordic is favored for Bluetooth integration and Cortex-M33/M55 maturity; Ambiq for superior low-power and larger SRAM but with TensorFlow Lite runtime lock-in risk; STM32N6 as a flexible middle ground; Syntiant NDP as deployment-phase optimization (and audio-oriented, not ideal for PPG prototyping). Pick on team expertise and constraints, not benchmark marketing.
  * **Nordic and Ambiq both pair general compute well but differ in neural accelerator bandwidth; Ambiq reaches sub-milliwatt but constrains SRAM.** *—The Analogist*
  * **Nordic + Syntiant NDP offers ~256KB SRAM; treat that as the architectural floor.** *—The Connector*
  * **Evaluate on SRAM, NPU power efficiency, and ecosystem maturity; prototype the top two in parallel for 8 weeks, then commit.** *—The Pragmatist*
  * **Pick the combo your firmware team knows best; the power difference is noise if inference scheduling is loose. Nordic for Arm, Ambiq for low-power specialists.** *—The Simplifier*
  * **Start with Nordic for connectivity and M33 maturity; swap to Ambiq when SRAM becomes the bottleneck.** *—The Systems Thinker*
  * **Nordic nRF9151 is the pragmatic choice; prototype it, evaluate Ambiq Apollo 4 in parallel as a battery-target backup; decide by month 4 given 8-12 week lead times.** *—The Technical Expert*

* **Implement bandpass, baseline-wander removal, and peak detection in fixed-point on the MCU, but perform the SpO2 ratio-of-ratios in floating-point or wide fixed-point to avoid a systematic low-SpO2 bias.** Strong technical convergence on the precision-cliff location. Time-domain PPG preprocessing is comfortably Q15/Q16 fixed-point on a Cortex-M4; the cliff is the noisy division in ratio-of-ratios (and, by one account, the seconds-long high-pass in baseline removal), where rounding accumulates into a clinically dangerous downward SpO2 bias below ~24-bit precision.
  * **Q15 fixed-point for filtering, baseline removal, and peak detection; the cliff is ratio-of-ratios, which needs FP32 or calibrated lookup tables.** *—The Analogist*
  * **Integer-only bandpass works until harmonic resonance in skin reflectance demands floating-point; find the threshold empirically on real cohorts.** *—The Connector*
  * **Fixed-point (INT16) for filtering, baseline, and peak detection if accuracy holds within 2%; SpO2 needs INT24 or float16; microphone breathing may need a small DSP or float32.** *—The Pragmatist*
  * **Peak detection and baseline removal work in fixed-point with scaling; only add float hardware if real data shows precision drift; a coarse "SpO2 normal/low/error" readout may suffice.** *—The Simplifier*
  * **Below 24-bit, SpO2 error becomes systematically biased low; do bandpass/baseline/peak in fixed-point, ratio-of-ratios in float (~30% more MCU cycles).** *—The Systems Thinker*
  * **Bandpass in INT32 fixed-point; the cliff is baseline-wander high-pass over seconds (needs 32-bit/float); preserve INT32+ through SpO2 then quantize the final value to INT8.** *—The Technical Expert*
  * **(Adds a method) Run a sensitivity analysis per stage from float32 down to int8 on real noisy PPG; one stage will collapse at int8 and force float16.** *—The Devil's Advocate*

* **Coordinate sensor wakeup, inference scheduling, and thermal management explicitly through simulation-first co-design, because independent component optimization produces emergent timing and thermal failures.** Universal convergence on the core systems risk: optimizing sensing and inference separately creates collisions (wakeup current spikes during inference startup, thermal throttling that misaligns temporal windows, accel wakeup latency exceeding the inference window). The shared remedy is a master clock plus a full-profile event-loop or spreadsheet simulator that surfaces coupling before tape-out.
  * **Use co-design checkpoints at 25/50/75%; if sensors wake the NPU every 100ms but inference takes 150ms, you have a bottleneck.** *—The Analogist*
  * **Design interfaces between components as explicit contract boundaries; use the STM32N6 power monitor to throttle inference when thermal headroom drops below 10%.** *—The Connector*
  * **Define a master clock and synchronization protocol first; out-of-phase PPG/accel sampling fuses temporally misaligned signals.** *—The Devil's Advocate*
  * **Reserve thermal headroom for peak inference plus max current; align wakeup to the inference window; log all state transitions; run 7-day battery simulations.** *—The Pragmatist*
  * **Build a simple event loop that respects wake sequence and thermal limits, then optimize within it.** *—The Simplifier*
  * **Simulation-first co-design: trace power, timing, and buffer states across a 24-hour profile to find coupling (e.g., 500ms accel wakeup vs 300ms window yields stale accel data).** *—The Systems Thinker*
  * **MCU logs acquisition times and NPU logs completion times so firmware re-aligns the next inference trigger; thermal jitter otherwise costs 5-8% arrhythmia sensitivity.** *—The Technical Expert*

* **(Dissent) Thermal throttling under sustained load is a specific named failure that silently destabilizes feature-extraction timing; include thermal simulation in hardware selection.** The Devil's Advocate isolates one emergent mechanism the others fold into general "coordination": after ~20 minutes of continuous monitoring, junction-temperature throttling lowers clock speed, delays sampling, and triggers degradation without an obvious cause. Measure idle, sustained-load, and throttle thresholds before committing.
  * **Thermal throttling after sustained monitoring destabilizes feature-extraction timing; measure idle/sustained/throttle thresholds on candidate MCUs before committing.** *—The Devil's Advocate*

* **Use a published fixed-point PPG library rather than reinventing signal processing, validating it on real users before any custom optimization.** Single-persona pragmatic insight that saves scarce firmware weeks: integrate a proven open-source algorithm (e.g., a MaxIM-style fixed-point pipeline), test on ~100 real users, and adapt only where it actually fails.
  * **Use a third-party fixed-point PPG library, test on 100 real users, adapt after validation; saves ~3 weeks of premature precision optimization.** *—The Systems Thinker*

* **Build a trade-off decision matrix (architecture x precision x fusion topology x hardware) scored on latency, power, SRAM, and development risk to make the choices visible.** Single-persona discipline tool: scoring combinations concretely often shows a "lower-accuracy" fixed-point + late-fusion pipeline beats a theoretically optimal float + early-fusion pipeline because it fits SRAM and ships weeks earlier.
  * **Score each architecture/precision/fusion/hardware combination on latency, power, SRAM, and weeks-to-baseline; decide from the matrix, not gut feel.** *—The Pragmatist*

---

### Question 4: Sensor Fusion as a Strength, Not a Complexity Tax

**Full question**: When sensor fusion in multi-signal health systems has worked elegantly — combining PPG, accelerometry, temperature, and breathing into something that feels unified rather than noisy — what architectural principles governed how signals were weighted, reconciled, and presented? How would those principles apply here?

* **Elegant fusion comes from each sensor answering one orthogonal question, then reconciling those answers, not from blending raw streams.** Five personas (Analogist, Connector, Simplifier, Systems Thinker, Technical Expert) converge on the niche/specialist principle: PPG asks "is the rhythm abnormal," accelerometer "is the person moving," temperature "is there fever," microphone "is breathing regular." Fusion respects these roles rather than averaging peers into noise. Fusing orthogonal signals adds information; fusing redundant signals adds noise.
  * **Weight by information content and timescale; temperature and breathing are supporting voices, not soloists.** *—The Analogist*
  * **Respect niches: PPG is the rhythm specialist, accel the context specialist, temperature the baseline specialist, microphone the respiration specialist.** *—The Connector*
  * **Each signal answers a separate question; fusion is a priority system, transparent to users and resilient when one sensor fails.** *—The Simplifier*
  * **Signals fuse elegantly when detecting orthogonal phenomena and inelegantly when redundant; validate on a 30-day, 50-user pilot.** *—The Systems Thinker*
  * **Reframe fusion as complementary evidence from four independent modalities, weighted by correlation with the target event.** *—The Technical Expert*

* **Use multi-signal agreement as the confidence engine, and make the reasoning transparent so users (and future FDA reviewers) can follow it.** Convergent: confidence should rise when independent signals corroborate and fall when they conflict, and each signal's contribution should be legible rather than a black-box output. This both builds user trust and supports a 510(k) narrative.
  * **Multi-modal agreement increases confidence far beyond any single signal; teach the model this explicitly.** *—The Analogist*
  * **Compute one unified confidence via Bayesian fusion (prior = baseline, posterior = updated given readings); de-risks liability versus multiple independent claims.** *—The Pragmatist*
  * **Make confidence transparent: "91% — PPG clean, minimal motion, stable temperature, all signals agree."** *—The Systems Thinker*
  * **Attention visualization shows which sensor drove each prediction ("breathing 45%, HRV 40%, PPG 15%"), building trust and a refinement loop.** *—The Technical Expert*
  * **Explainable, domain-derived weights (PPG for rhythm, accel for motion) beat learned-from-scratch weights for FDA review.** *—The Pragmatist*

* **Exploit mutual constraint between signals: physical reality lets one sensor validate another, and anti-correlation is itself a feature.** Complementary insight (Analogist, Connector, Systems Thinker, Technical Expert): an irregular PPG with no motion is likely a true arrhythmia, while irregular PPG with vigorous motion is likely artifact. A Bayesian or coherence-seeking layer that reasons about reliability in context turns this into robustness.
  * **Multi-modal agreement vs. contradiction distinguishes real events from artifacts; build a model that finds coherence, not one that averages conflicting signals into noise.** *—The Analogist*
  * **Use adaptive gating and mutual information: strong PPG suppresses fidget artifacts, sustained temperature contextualizes rhythm variability as fever-driven.** *—The Connector*
  * **A Bayesian layer modeling P(true arrhythmia | PPG, accel, temperature) reasons about measurement reliability so sensor failure stays transparent.** *—The Systems Thinker*
  * **Anti-correlation (chaotic PPG while accel is stable, because users pause during events) is a feature that makes detection more robust.** *—The Technical Expert*

* **Layer the architecture (raw signals -> derived features -> semantic events) so a degradation in one layer does not force retraining of higher layers.** Complementary structural principle: separating individual sensor models, semantic fusion rules, and user-facing communication means a PPG quality drop just feeds lower confidence into existing rules. Fusion at the semantic level (heart-rate variability plus lack of motion implies arrhythmia) is simpler to validate than signal-level blending.
  * **Three layers: per-sensor confidence, semantic fusion rules, user communication; degraded PPG feeds existing rules without retraining them. Fuse hierarchically at the semantic level (arrhythmia = HRV + lack of motion; apnea = breathing pause + sleep context).** *—The Systems Thinker*

* **Temporal alignment is the often-overlooked precondition for elegant fusion; resample all sensors to a common timeline before fusing.** Single-persona technical insight with a concrete stake: a 50ms skew between PPG and accelerometer can degrade learned fusion weights by 10-15%, so microsecond-defined sampling and resampling to common windows is load-bearing, not housekeeping.
  * **Resample PPG/accel/temperature/breathing to common 100ms windows; a 50ms skew degrades fusion weights 10-15%.** *—The Technical Expert*

* **(Dissent) The "unified feeling" in published elegant systems is usually a hidden hierarchy with one primary signal; designing for sensor equality is fragile.** The Devil's Advocate reframes the whole question: papers describing seamless fusion rarely disclose that ECG (or here, PPG) is primary and the rest are confirmers. Aiming for four co-equal sensors means that when the primary fails you are deciding on artifacts. Name PPG primary and the others confirmation signals.
  * **Define PPG as primary and the rest as confirmation signals; false equality is the trap behind "elegant" fusion.** *—The Devil's Advocate*

* **(Dissent) Fusion collapses precisely on the rare conflicting-signal events that matter most; route those through explicit rare-event branches, not neural fusion.** Single-persona counter-test: AFib with concurrent high motion gives conflicting signals the model was never trained on. Handle high-motion-plus-irregular-PPG with expert-system rules rather than trusting learned fusion at the edge case.
  * **Add separate rare-event branches (e.g., high-motion + irregular-PPG handled by expert rules) because fusion collapses where signals conflict.** *—The Devil's Advocate*

* **(Dissent) Even architecturally unified fusion creates a presentation honesty gap; name the contributing signals instead of averaging into one reassuring score.** The Devil's Advocate flags that "irregular rhythm but high motion" reads as unified to an engineer and uncertain to a patient, risking either distrust or anxiety. Be explicit about which signals fired.
  * **Be explicit about which signals contributed to an alert rather than averaging inputs into a single reassuring confidence number.** *—The Devil's Advocate*

---

### Question 5: The Urban Sensing Parallel for Multi-Signal Fusion

**Full question**: Smart city platforms that fuse traffic cameras, air quality sensors, and transit data discovered that the value isn't in any single stream but in the correlations between streams captured at the same moment — and that sensor failure degrades gracefully only when the fusion architecture treats each stream as independently useful. Given that this device fuses PPG, accelerometer, skin temperature, and microphone, how should the fusion architecture be designed so that partial sensor degradation (e.g., poor PPG contact during exercise) degrades detection capability gracefully rather than catastrophically, and what does that imply for how anomaly confidence scores are communicated to users?

* **Design every sensor to be independently useful and process streams independently, combining them late, so partial failure never cascades into total device failure.** The strongest convergence in the cluster (all seven personas): the smart-city lesson is that each stream must carry standalone value (PPG detects rhythm, accel detects activity, temperature detects fever, microphone detects apnea) and the architecture must not assume all streams are present. Disabling any one sensor should lower confidence, not silence the device. (The Devil's Advocate accepts the design conclusion while contesting the "independent" premise — see the causal-confound reframe below.)
  * **Each stream's value is independent; train the model to predict arrhythmias from multimodal subsets, not just the full ensemble.** *—The Analogist*
  * **Signals provide overlapping but independent evidence forming a confidence hierarchy; degradation is disclosed, not hidden.** *—The Connector*
  * **Use each sensor to its maximum reliability and fuse carefully; disabling one must not cascade.** *—The Pragmatist*
  * **Each sensor has clear independent value; the system does not hollow out if one fails — that is resilience.** *—The Simplifier*
  * **Model each stream as independently valid and combine rather than average; do not build a single "health score."** *—The Systems Thinker*
  * **Any three of four sensors should sustain detection at 60-70%; train with one sensor randomly masked 20% of the time.** *—The Technical Expert*

* **Capture cross-signal correlation at the same moment as a fusion feature, since simultaneous multi-signal change is more credible than any isolated spike.** Convergent (Analogist, Connector, Pragmatist, Simplifier, Systems Thinker, Technical Expert): anomalies that ripple across signals together are trustworthy; an isolated PPG spike with no corroborating accel/temperature change is more likely noise. Timestamp-anchored, time-windowed cross-correlation is simpler and more robust than pixel-level early fusion.
  * **Use time-windowed cross-correlation: high PPG-accel correlation suggests exercise artifact, low correlation suggests true pathology.** *—The Analogist*
  * **Weight temporal co-occurrence; anomalies rippling across signals together are more credible than isolated ones.** *—The Connector*
  * **Use timestamps as the primary fusion anchor; correlate near-simultaneous events, treat widely separated ones as independent noise.** *—The Pragmatist*
  * **Log and threshold observable correlations ("HR up AND activity low AND temp rising -> infection") rather than learning a complex fusion model.** *—The Simplifier*
  * **Correlations enrich the picture but do not define it; remaining signals stay actionable when one degrades.** *—The Systems Thinker*
  * **Learn that PPG + accel stability + normal temperature reads as real arrhythmia, while the same PPG + high motion + elevated temperature reads as artifact.** *—The Technical Expert*

* **Build explicit per-sensor failure models and active fallback chains, because graceful degradation is designed, not automatic.** Convergent: catalog real failure modes (PPG contact loss in exercise/sweat, accel saturation, microphone noise, temperature drift) and define, for each, what detection remains and which complementary signals to lean on harder. Test by injecting failures and replaying through the pipeline.
  * **PPG dropout shifts to motion-based anomaly scoring; train the model to predict from multimodal subsets so degradation is explicit.** *—The Analogist*
  * **Cover each sensor's failure mode with another sensor's strength zone; redundancy of different signal characteristics creates graceful degradation.** *—The Connector*
  * **Catalog failure modes and define remaining detection for each; inject failures into the pipeline to confirm graceful degradation.** *—The Pragmatist*
  * **When PPG contact drops, actively increase reliance on breathing, accel context, and temperature trend, not just lower PPG weight.** *—The Systems Thinker*
  * **For each failure mode design predictable confidence decay (PPG loss -> 60% but continues; accel saturation -> disable motion rejection, raise threshold).** *—The Technical Expert*

* **Report calibrated, labeled confidence that names which sensors are active, mirroring how cities publish "estimate based on N of M sensors."** Convergent honesty principle (Analogist, Connector, Pragmatist, Simplifier, Systems Thinker, Technical Expert): expose sensor state in the confidence message so users become partners in uncertainty rather than victims of silent dropout, which also reduces liability exposure from hidden degradation.
  * **Publish confidence with provenance: "87% (PPG + accel + temp)" vs "42% (accel only, PPG lost)."** *—The Analogist*
  * **Show transparent degradation ("Heart rate detection limited during exercise, confidence 65%") instead of silently noisy alerts.** *—The Connector*
  * **Tie confidence to signal-quality metrics (PPG contact quality, accel noise floor) so poor input yields an honest medium/low rating.** *—The Pragmatist*
  * **Report honest gaps ("PPG unavailable due to poor contact; breathing assessment only — recheck when snug") rather than synthetic confidence.** *—The Simplifier*
  * **Label partial interpretations explicitly ("Apnea risk MODERATE, based on microphone + sleep context; PPG lost during exercise").** *—The Systems Thinker*
  * **Report calibrated uncertainty ("78%, ±4 points given current sensor state") so falling confidence cues users to reposition or recheck.** *—The Technical Expert*

* **(Reframe) The smart-city analogy breaks down under clinical stakes: these sensors are confounded, not independent, and motion causally produces PPG artifacts; model the causal pathways rather than treating streams as independent.** The Devil's Advocate overturns the cluster's dominant "independent streams" framing for this application. Traffic and air quality are loosely coupled and low-stakes; PPG and motion are causally entangled and medical. Fusing on correlation alone conflates exercise tachycardia with early sepsis. The Connector and Systems Thinker partially corroborate by emphasizing causal/temporal ordering, but only the Devil's Advocate names the independence assumption itself as the error.
  * **Signals are confounded, not independent (motion causes PPG artifacts); map causal pathways and design fusion to model dependencies, not independent streams.** *—The Devil's Advocate*
  * **Move beyond correlation to causal or at least temporal-causality fusion (motion precedes PPG change by ~200ms; temperature changes are slower); audit for confounds.** *—The Devil's Advocate*

* **(Reframe) In a personal clinical device, conservative fallback that pauses detection may be safer than smart-city-style transparency, because exposing "degraded mode" can itself create liability.** The Devil's Advocate counter-tests the universal transparency consensus: a user lacking technical context who has an event in disclosed "degraded mode" becomes a liability claim. Either invest in very sophisticated UX or default to pausing detection over degrading it. This sharpens, rather than negates, the honesty principle the other six personas share.
  * **Smart-city transparency may expose the device to liability ("your docs said degraded mode was less reliable, yet I had an event"); conservative pause-detection rules may be safer than disclosed degradation.** *—The Devil's Advocate*

---

**Questions addressed**: 5
**Personas contributing**: The Analogist, The Connector, The Devil's Advocate, The Pragmatist, The Simplifier, The Systems Thinker, The Technical Expert
**Total synthesized insights**: 35

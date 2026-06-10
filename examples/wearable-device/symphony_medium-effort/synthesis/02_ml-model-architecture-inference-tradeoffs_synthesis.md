---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "02_ml-model-architecture-inference-tradeoffs"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: ML Model Architecture & Inference Tradeoffs

---

## Synthesized Insights by Question

### Question 1: Model size, quantization, and the accuracy-energy curve on the NPU

**Full question**: What is the empirical relationship between parameter count, NPU inference latency, energy per inference, and arrhythmia/apnea detection F1 score on the target microcontroller, and at what INT8 / INT4 (or lower) quantization level do detection models begin to degrade in clinically meaningful ways — i.e., where on that curve does the design currently sit relative to the 7-day battery constraint, and how should the team determine the quantization threshold before committing to a silicon target?

* **Measure on real silicon before any quantization or silicon commitment; theoretical curves will mislead you.** Run a bounded bring-up on actual dev boards (2-3 weeks) that measures latency, energy-per-inference, and F1 together rather than reasoning about them separately. Treat a multi-day battery stress test as a gating requirement before tape-out. This is the strongest consensus across all perspectives.

* **Default to INT8 and treat INT4 as suspect.** INT8 typically loses under 2% F1 while INT4 loses roughly 5-8% and saves only 10-15% energy. The marginal energy gains rarely offset the clinical-signal loss. Test INT4 if needed, but pivot to INT8 the moment arrhythmia F1 falls below the clinical floor (0.85 for consumer wellness).

* **Set the quantization floor from regulatory tier, not energy alone.** Consumer wellness tolerates F1>85% for arrhythmia, but FDA 510(k) demands F1>95% with stratified subgroup performance. Frame quantization as a cross-functional budget negotiation where product sets minimum F1, regulatory sets stratified floors, and firmware/ML optimize to meet both. The choice ripples into future retraining costs if clinical claims come later.

* **Validate on a clinically diverse cohort before launch; in-distribution benchmarks hide subgroup failures that become recalls.** Recruit a cohort spanning age, medications, and underlying conditions (e.g., 20-30 users with ECG gold-standard labels) and profile performance per subgroup; elderly irregular baselines, athletes with bradycardia, and beta-blocker patients are where masked quantization drops surface catastrophically in the field.

* **Preserve silicon optionality.** Late-stage quantization or vendor switches are expensive enough to design against now. Decouple quantization strategy from hardware through a modular conversion pipeline. Test on two MCU + accelerator pairs in parallel, or run a constrained neural architecture search to uncover smaller models that beat quantized larger ones. Premature commitment risks a 6-month redesign if budget is missed.

* **Ship INT8 at launch, then optimize with field telemetry.** Launch conservatively. Instrument alert timestamps and user corrections. Monitor real-world false-positive and false-negative rates by cohort with an escalation path. Move to INT4 or mixed-precision only if field data justifies it.

* **Keep the heavy layers low-precision and the decision boundary precise.** Quantize the convolutional backbone to INT8 while keeping the classification head in FP32. This preserves decision-boundary nuance where clinical sensitivity matters while saving 60-70% energy in the heavier layers at roughly 3-5% battery cost versus full INT8.

---

### Question 2: Multi-task vs. single-task model design

**Full question**: Should arrhythmia and sleep apnea detection share a single multi-task model backbone with task-specific heads, or run as separate specialized models — and how does that choice ripple through battery budget, firmware update complexity, and false-positive rate management?

* **Launch with separate single-task models.** Firmware, validation, and liability advantages outweigh the modest power cost of a shared backbone. This is the clearest consensus. Independent models can each be validated, updated, and hotpatched in isolation, which matters for a 12-person team with 18 months of runway and for responding fast to a false-positive surge. Separate models cost roughly 8-12% more battery than a shared backbone. Firmware complexity is actually lower without shared gradient buffers or inter-task loss weighting.

* **Watch for negative transfer; a shared backbone can let the dominant task quietly degrade the other.** Capacity competition is a measurable risk, not just theoretical. Run ablation studies disabling each task's loss to measure cross-task interference directly; if apnea tuning hurts arrhythmia F1 by more than ~3%, single-task models become the defensible choice.

* **Separating models multiplies false-positive surface.** Pair them with explicit per-detector thresholds and a conflict protocol. Each detector fires only past its own threshold, which makes false positives cleaner to own, but detectors can disagree and confuse users into disabling notifications. Define a conflict-resolution protocol that ranks and communicates competing signals. Test user comprehension with mockups before finalizing the architecture.

* **If a shared backbone is ever pursued, isolate only the feature-extraction layer and keep heads fully independent.** Capture duplicate-feature savings via a shared low-level extractor while branching into independent, separately-updatable heads with independent confidence thresholds, keeping regulatory scope tight (one model load, two inference calls).

* **Reserve unified single-model and conditional-dispatch designs for v2.** A unified single model is most power-efficient (25% saving) but couples both pipelines and doubles testing burden. Signal-quality-conditional dispatch saves 15-20% but complicates false-negative debugging. Both belong post-launch, after both detectors are field-validated.

---

### Question 3: Sensor fusion architecture, timing, and confidence weighting

**Full question**: Given that PPG, accelerometer, skin temperature, and microphone signals have different sampling rates and latency profiles and frequently disagree on classification, what fusion architecture (early fusion, late fusion, attention-based, or hybrid) best preserves the temporal relationships that distinguish true cardiac/respiratory events from motion artifacts, quantifies each modality's confidence contribution, and lets the multi-signal richness become a durable competitive moat as a platform for expanding clinical claims later — and what does that imply for on-device buffer management?

* **Default to late fusion for launch.** It keeps latency low and stays interpretable for regulators. You can add sensors without retraining the entire stack. Per-modality feature extraction runs in parallel on the NPU. Each sensor's contribution to an alert is inspectable (valuable for FDA review). New sensors plug in without a full retrain. A late-fusion-dominant hybrid (fuse PPG+accelerometer early to kill motion artifacts, late-fuse temperature and microphone) is a solid refinement. Early fusion is worth it only with extensive aligned multi-modal clinical data.

* **Align asynchronous sensors with a rolling timestamped buffer.** Skip clock synchronization across drivers. Resample disparate rates to a common grid (e.g., 10Hz) over a multi-second window (5-30 seconds) using a timestamped ring buffer with nearest-neighbor or linear interpolation. Budget is small (2.4-5KB). Actively monitor for drift and trigger a re-sync routine, since sub-millisecond skew compounds over hours and is invisible in short lab tests.

* **Drop temperature and microphone and ship PPG+accel if it still clears the clinical bar.** The simplest stack eliminates whole categories of state management. This challenges the premise that four-sensor fusion is necessary. Fewer streams remove buffer management, timing jitter, and cross-modality drift. Apnea detection weakens without respiratory data, but if PPG-based arrhythmia detection meets the clinical bar, later platform expansion is easier from a simpler base.

* **Don't trust confidence scores until they're calibrated.** Neural nets are overconfident exactly on unseen phenotypes that matter most. Benchmark calibration against ground truth and add explicit out-of-distribution detection (e.g., Mahalanobis distance in embedding space). Ground thresholds empirically in the user cohort (e.g., fire above 0.7 agreement, hold and aggregate over 30 seconds at 0.5) to keep false positives below 2%. An attention layer can adapt weights dynamically to signal conditions at roughly 15% power cost.

* **Start with a transparent rule engine over per-sensor detectors.** Logical gates are the most defensible fusion for regulatory review. For v1, give each sensor its own anomaly detector and combine via readable rules ("alert only if PPG_arrhythmia > 0.8 AND accel_motion < 0.3"). Train and freeze the decision boundary. Buy time to collect field data before upgrading to learned fusion. The defensible moat is the sensor hardware and sampling precision competitors can't copy, not sophisticated fusion math.

* **Design the fusion layer as a modular plugin.** Future sensors and clinical claims shouldn't force a full retrain or topology rewrite. Define a clear interface where new sensors (EEG, EMG) attach with minimal retraining. Anonymized confidence-contribution logs (no raw biometrics) can power a "sensor importance dashboard" for future FDA submissions and enable later federated learning. Adaptive windowing (extend to 60 seconds when confidence rises, shrink to 30 otherwise) saves RAM while giving rich context for borderline cases.

---

**Questions addressed**: 3
**Synthesized insights**: 20

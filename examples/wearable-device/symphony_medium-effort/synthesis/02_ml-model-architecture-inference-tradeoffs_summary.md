---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "02_ml-model-architecture-inference-tradeoffs"
synthesis-type: "summary"
central-tension: "Almost every architecture lever points toward the conservative, separable, measurable choice for v1 (INT8, separate single-task models, late fusion), leaving the real tension as how much accuracy and platform ambition to defer to v2 versus build in now."
---

# Summary: ML Model Architecture & Inference Tradeoffs

## Executive Summary

The organizing finding of this cluster is unusually convergent: almost every architecture lever points toward the conservative, separable, and empirically-measured choice for version one. The real tension isn't which architecture to ship, but how much accuracy and platform ambition to defer to v2 versus build in now. This is a cluster about sequencing risk, not a deep design disagreement.

Three decisions emerged with strong agreement. First, default to INT8 quantization and treat INT4 as suspect. INT4 saves only 10-15% energy while costing 5-8% F1—a poor trade when missed cardiac events carry liability. Second, launch arrhythmia and apnea as separate single-task models rather than a shared multi-task backbone. The roughly 8-12% extra battery cost buys independent validation, isolated firmware hotpatches, and cleaner regulatory packages. A 12-person team with 18 months of runway cannot afford to give up that separation. Third, use late fusion with per-modality confidence scoring. This keeps inference parallel, latency low, and interpretable for FDA review, while allowing new sensors to be added without retraining the whole stack.

Underneath the convergence, one insight reorders the whole question: the acceptable quantization floor is set by regulatory tier, not by energy budget. Consumer wellness can live with F1>85%, but a future 510(k) demands F1>95% with stratified subgroup performance. Quantization becomes a cross-functional negotiation whose cost compounds if clinical claims come later. This connects directly to the cluster's dominant risk: in-distribution benchmarks hide subgroup failures (elderly irregular baselines, athletes with bradycardia, beta-blocker patients) that surface as recalls. A clinically diverse validation cohort is essential before launch.

The critical success factor across all three questions is the same discipline: measure on real silicon before committing. All perspectives distrusted theoretical battery and accuracy curves. A 2-3 week dev-board bring-up that jointly measures latency, energy, and F1 is the gating artifact before silicon tape-out. The implication is to ship a deliberately simple, instrumented v1, then let field telemetry justify the more aggressive optimizations (mixed-precision, multi-task backbones, learned attention fusion) that the team is tempted to build now.

---

## Key Themes

### Conservative-now, optimize-later sequencing
Nearly every recommendation separates a safe v1 from a more aggressive v2 gated on field data: INT8 now with mixed-precision later, separate models now with unified or conditional-dispatch models later, late fusion now with attention-based learned fusion later. The advanced architectures (single unified model at ~25% power saving, signal-conditional dispatch at ~15-20%) were never rejected, only postponed until power becomes the binding constraint and clinical thresholds are calibrated.

### Measure on real silicon, distrust the curve
All four perspectives refused to reason about the accuracy-energy curve analytically. They insisted on a bounded dev-board bring-up that measures latency, energy-per-inference, and F1 together, plus a multi-day battery stress test, before any silicon commitment. Aggressive quantization may force more frequent inference and quietly erode the 7-day claim in ways calculations miss.

### Regulatory tier drives the technical floor
Quantization precision, validation cohort design, and multi-task separation all tie back to the consumer-wellness-now versus 510(k)-later regulatory path. The F1 floor, the need for stratified subgroup performance, and the value of isolated per-claim validation packages all follow from which clinical claim the product is making. Regulatory strategy becomes an input to ML architecture, not a downstream concern.

### Interpretability and modularity as moat and compliance asset
Late fusion, per-sensor rule engines, and a plugin fusion layer were favored because inspectable per-sensor contributions are defensible in FDA review. Anonymized confidence logs can become a "sensor importance dashboard" and a future federated-learning substrate. Extensibility is a first-class requirement, since a locked fusion topology becomes a liability when new clinical claims demand new sensors.

### Subgroup generalization is the dominant clinical risk
The recurring failure mode is a model that looks strong in-distribution but fails on a specific cohort, surfacing as false negatives that drive recalls. The shared mitigation is a clinically diverse pre-launch cohort with ECG gold-standard labels, post-deployment cohort-level F1 monitoring, and calibrated confidence scores backed by out-of-distribution detection.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Run a 2-3 week dev-board bring-up sweeping model sizes and quantization levels (INT8/INT4) on the target NPU, jointly measuring latency, energy-per-inference, and F1. Plot the energy-vs-F1 Pareto frontier for product and regulatory stakeholders.
- Hold a cross-functional "quantization budget" decision. Product sets the minimum acceptable F1, regulatory sets the stratified subgroup floors (F1>85% consumer versus F1>95% clinical), and firmware/ML commit to the precision that meets both.
- Stand up a 10+ day battery stress test on a firmware prototype under realistic usage before any silicon tape-out decision.
- Lock the v1 architecture decision to separate single-task arrhythmia and apnea models. Run ablation studies to confirm a shared backbone would cause negative transfer before reconsidering.

### Near-term (3-12 months)
- Recruit a clinically diverse validation cohort (20-30 users spanning age, medications, and conditions) with ECG gold-standard labels. Profile per-subgroup F1 and false-positive rates under live motion artifacts.
- Implement late fusion with a timestamped rolling buffer (resample to a common ~10Hz grid over a 30-second window). Add active drift monitoring with a re-sync routine.
- Calibrate fusion confidence scores against ground truth. Add out-of-distribution detection so high-confidence alerts on unseen phenotypes are caught.
- Keep silicon optionality open by validating the quantization strategy on a second MCU + accelerator pair before single-vendor commitment.

### Long-term (1+ years)
- Instrument field telemetry (alert timestamps, user corrections) and run cohort-level F1 monitoring with an escalation path. Use this to justify any move to INT4 or mixed-precision.
- Evaluate v2 power optimizations (unified multi-task model, signal-conditional dispatch, attention-based learned fusion) only once both detectors are field-validated and power is the binding constraint.
- Build the fusion layer as a modular plugin with a clear sensor interface so EEG/EMG and new clinical claims attach with minimal retraining.

---

## Key Considerations

**Opportunities**:
- Mixed-precision (INT8 backbone, FP32 head) recovers clinical decision-boundary nuance for ~3-5% battery cost. This is a high-leverage option if pure INT8 misses the clinical F1 floor.
- Multi-signal fusion with anonymized confidence logging can become both a regulatory asset (sensor-importance dashboard) and a privacy-preserving federated-learning substrate.
- A neural architecture search constrained by NPU latency and memory may find smaller models that beat quantized larger ones, avoiding premature silicon lock-in.

**Risks & Challenges**:
- Subgroup generalization failure: strong in-distribution F1 masking catastrophic false negatives in specific cohorts, leading to recalls.
- Battery erosion from aggressive quantization forcing more frequent inference, breaking the 7-day claim in ways theoretical calculations miss.
- Confidence-score overconfidence on out-of-distribution data. This makes any confidence-weighted fusion architecture fragile if uncalibrated.
- Clock-skew drift across four asynchronous sensors compounding over hours and silently misaligning fusion. This remains invisible in short lab tests.

**Trade-offs**:
- Separate models cost ~8-12% more battery than a shared backbone but buy independent validation, isolated firmware updates, and tighter regulatory scope.
- INT4 saves ~10-15% energy but costs ~5-8% F1. This is a poor trade when misses carry liability. INT8 is the conservative default.
- Whether to ship four sensors or drop temperature and microphone for a PPG+accel stack: fewer streams eliminate buffer, timing, and drift complexity but weaken apnea detection. This is viable only if PPG arrhythmia detection alone clears the clinical bar.
- Separating models removes correlated false alarms but introduces the possibility of two detectors disagreeing and confusing users. This requires an explicit conflict-resolution protocol.

---

**Questions addressed**: 3
**Key insights synthesized**: 20

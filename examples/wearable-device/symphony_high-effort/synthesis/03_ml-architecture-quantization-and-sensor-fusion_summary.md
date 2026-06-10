---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "03_ml-architecture-quantization-and-sensor-fusion"
synthesis-type: "summary"
central-tension: "The engineering path is broadly convergent (RNN/LSTM, SRAM as a hard invariant, late fusion, fixed-point preprocessing with a floating-point SpO2 exception), but the unresolved trade-off is how to handle sensor dropout honestly: transparent degraded-mode confidence versus pausing detection outright, given clinical liability."
---

# Summary: ML Architecture, Quantization, and Sensor Fusion

## Executive Summary

Across seven perspectives, RNN/LSTM emerges as the defensible architecture for continuous PPG, SRAM is the binding constraint that shapes model topology from day one, late fusion is the safest default, and PPG preprocessing belongs in fixed-point on the MCU with one floating-point exception at the SpO2 ratio-of-ratios. The cluster remains convergent on technical choices but diverges sharply on how to handle sensor failure: when a sensor drops out, should the device report degraded-mode confidence or pause detection and admit it cannot measure? This trade-off, sharpened by clinical liability, remains unresolved.

The dominant technical risk is rare-event collapse. Arrhythmias are under 1% of training data, and aggressive quantization can quietly turn a "98% accurate" model into one with 85% sensitivity on the events that matter most. The majority remedy is to introduce quantization-aware training early and upsample rare classes, with a precision-fallback escape hatch for suspicious samples. A dissenting view argues for measuring post-training INT8 first and adding QAT only if recall collapses, with a two-stage PTQ-then-QAT path as the compromise that shortens the timeline.

A second cross-cutting theme is that component-level optimization produces system-level failure. Sensing, inference, and thermal management interact through wakeup timing, buffer staleness, and sustained-load throttling. Optimizing them in isolation creates emergent bugs that surface only in integration or after twenty minutes of continuous wear. The answer is simulation-first co-design against a full daily profile, with a master clock and a shared SRAM manifest negotiated between firmware and ML rather than resolved in integration.

A reframe challenges the cluster's central framing. The smart-city "independent streams" analogy that anchors much of the fusion thinking breaks down under clinical stakes: PPG and motion are causally confounded, not independent. Fusing on correlation alone risks conflating exercise tachycardia with early sepsis. This argues for causal or temporally-causal modeling, and for naming PPG as the primary signal rather than designing for fragile sensor equality.

---

## Key Themes

The smart-city "independent streams" premise, which much of the cluster adopts, is the wrong model for a clinical device: PPG and motion are causally confounded, so fusion must model dependencies rather than treat streams as independent.

### Constraints Decide the Architecture
SRAM, not peak accuracy, is the architectural ceiling. Every perspective treats it as a hard invariant computed before model selection (total SRAM minus firmware, OS, and buffers, with a safety margin) and shared live between firmware and ML. The same constraint-first logic favors RNN/LSTM for its built-in state compression and avoidance of transformers, whose attention overhead consumes the very SRAM and power that sensing needs.

### Rare-Event Integrity vs. Aggressive Optimization
Headline accuracy hides unusable rare-class sensitivity once quantization is applied. This drives the early-QAT-with-upsampling recommendation and the precision-fallback escape hatch. It also surfaces the cluster's clearest methodological dissent: measure first and defer QAT versus build it in from the start.

### Emergent System Behavior from Local Optimization
Sensor wakeup timing, inference scheduling, and thermal throttling interact in ways invisible to any single component, producing stale fusion inputs, misaligned temporal windows, and sustained-load degradation. Simulation-first co-design, a master clock, and explicit firmware-ML coordination are the convergent mitigations.

### Honest Degradation as Architecture, Not Afterthought
Graceful degradation requires design: independent per-sensor value, multimodal-subset training, explicit failure models, and confidence tied to sensor health. All perspectives agree that confidence must name its contributing signals. They sharply disagree over whether the safest floor is a disclosed degraded mode or a paused "cannot assess" state.

### Fusion as Reconciliation of Orthogonal Roles
Elegant fusion treats each sensor as answering one question and reconciles those answers, exploiting mutual constraint (anti-correlation between motion and a true cardiac event is a feature). Layering raw signals, derived features, and semantic events ensures a quality drop in one layer doesn't cascade.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Lock the COTS MCU+NPU choice. Prototype on Nordic nRF9151 for connectivity and ecosystem maturity while evaluating Ambiq Apollo in parallel as a battery-target backup. Start now to respect 8-12 week sourcing lead times.
- Compute and freeze the SRAM budget as a shared firmware-ML manifest (PPG buffer, accel buffer, weights, activations, workspace, firmware overhead). Design models against an ~80KB target with a safety margin.
- Build the minimum viable fusion first: a binary exercise/rest classifier on the accelerometer that gates PPG. Measure the false-positive reduction before adding multi-signal fusion.
- Run a per-stage precision sensitivity analysis (float32 to int8) on real noisy PPG to locate the cliff. Confirm fixed-point for bandpass/baseline/peak and floating-point (or wide fixed-point) for the SpO2 ratio-of-ratios.

### Near-term (3-12 months)
- Implement QAT with rare-event upsampling and profile rare-class recall directly. Alternatively run the two-stage PTQ-then-QAT path and add the precision-fallback escape hatch for suspicious samples.
- Stand up simulation-first co-design. Trace power, timing, and buffer states across a full 24-hour profile to find coupling, define a master clock, and measure idle, sustained-load, and thermal-throttle thresholds on candidate silicon.
- Define explicit per-sensor failure models and fallback chains. Train with random sensor dropout and turn the three or four most likely dropout subsets into named regression tests.
- Design the confidence-communication scheme tied to sensor-quality metrics, including the decision (per use case) between disclosed degraded mode and pause-detection in high-motion conditions.

### Long-term (1+ years)
- Ship a v1 baseline and collect several weeks of real-world data to learn where accuracy actually fails. Redesign v2 around measured gaps rather than predicted ones.
- Move fusion beyond correlation toward causal or temporally-causal modeling (motion precedes PPG artifact by ~200ms; temperature moves slowly). Audit for confounds and build the explainable, domain-derived weighting story that supports a future 510(k).
- Maintain an over-specified reference model that systematically reduces to each target NPU. Preserve silicon optionality under burn pressure.

---

## Key Considerations

**Opportunities**:
- A constraint-first design (SRAM invariant, RNN/LSTM, late fusion, fixed-point preprocessing) is the most power-efficient and fastest path to ship.
- Honest, sensor-aware confidence scoring is both a trust feature for users and a liability shield. Explainable fusion weights pre-build the regulatory narrative.
- Anti-correlation between motion and true cardiac events is a usable signal that raises specificity rather than just a nuisance to filter out.

**Risks & Challenges**:
- Quantization can silently collapse rare-event sensitivity (a potential 15-25% drop on arrhythmias) while overall accuracy looks fine.
- Independent component optimization produces emergent timing and thermal failures, including sustained-load throttling that destabilizes feature-extraction timing after ~20 minutes.
- Late fusion's accel-only fallback can overfit motion patterns and fire false positives during hard exercise. Attention fusion can permanently dismiss a sensor under a PPG-heavy training distribution.
- Treating four sensors as co-equal is fragile. When the primary signal fails, decisions rest on artifacts.

**Trade-offs**:
- Disclosed degraded-mode transparency versus pausing detection when a sensor drops out (under clinical liability). This is the cluster's central unresolved tension.
- QAT-early-with-upsampling versus measure-first-and-defer. The two-stage PTQ-then-QAT path shortens the timeline.
- Fixed-point everywhere (lowest power) versus a floating-point SpO2 exception (roughly 30% more MCU cycles) to avoid a systematic low-SpO2 bias.
- Single-processor simplicity versus MCU/NPU partitioning, decided by measured handoff overhead rather than theory.

---

**Questions addressed**: 5
**Key insights synthesized**: 35

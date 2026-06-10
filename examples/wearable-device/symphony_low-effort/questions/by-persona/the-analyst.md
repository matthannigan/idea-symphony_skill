---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Analyst"
category: "analytical"
stream: "synthesize"
volume: 13
---

# Brainstorming Questions from The Analyst: On-Device ML Health Monitoring Wearable

---

## Power Budget Decomposition

1. **Sensing vs. inference allocation**: Breaking this down across the four sensor modalities (PPG, accelerometer, skin temperature, microphone) plus the NPU inference workload — what does the duty-cycle math actually look like, and which subsystem consumes the largest share of the 7-day battery budget under realistic continuous-monitoring conditions?

2. **Always-on vs. triggered inference**: The key decision point between running continuous low-power heuristics on raw sensor data to gate NPU activation versus running inference on every sample — what are the measured power deltas between these two modes, and how does gating latency affect arrhythmia detection sensitivity at the margins?

3. **Communication cost vs. processing cost**: Given that raw biometric data never leaves the device and only alerts and summaries sync, what is the power cost ratio of BLE sync events relative to on-device inference, and how should sync frequency be tuned to preserve the 7-day target without degrading alert delivery timeliness?

---

## Model Architecture Tradeoffs

4. **Accuracy-latency-power Pareto frontier**: For arrhythmia and sleep apnea detection specifically, what does the accuracy-latency-power tradeoff surface look like for candidate model families (e.g., TinyML CNNs vs. RNNs vs. transformer variants quantized to INT8) on the target NPU, and at what accuracy threshold does the consumer wellness use case cross into clinical utility?

5. **False positive rate as a design variable**: Given that the target users are health-conscious adults 40+ with elevated anxiety around cardiac events, what false positive rate is operationally acceptable before alert fatigue causes users to ignore or disable notifications — and how should that tolerance threshold cascade back into model selection and decision boundary calibration?

6. **Sensor fusion architecture**: The system draws from four signal streams that have different noise profiles, sampling rates, and failure modes — what fusion architecture (early fusion at the feature level, late fusion at the decision level, or hybrid) best preserves anomaly signal while remaining tractable for the NPU's compute envelope?

7. **Model update lifecycle**: Given that on-device training is power-prohibitive and the device targets a health-conscious but non-clinical population, what are the quantified tradeoffs between periodic firmware-bundled model updates (large batch, infrequent, validated) versus federated learning contributions (incremental, privacy-preserving, operationally complex) — and which update cadence is realistic within an 18-month runway?

---

## Regulatory and Compliance Architecture

8. **Consumer-to-clinical transition points**: The REQUEST frames the 510(k) pathway as a future option, but the architectural decisions made now will constrain what clinical claims are achievable later — what specific system design choices (data retention policy, algorithm transparency, performance logging) would need to be built in now to avoid costly re-engineering when pursuing FDA clearance?

9. **HIPAA boundary enforcement**: The data pipeline decision — what stays on device, what syncs, what aggregates — is both a privacy architecture question and a HIPAA compliance question for clinical partnerships. Breaking this down: at which data abstraction level (raw waveform, derived feature, processed alert, aggregated trend) does HIPAA applicability change, and how should the sync protocol be designed to stay on the right side of that boundary?

---

## System Reliability and Failure Mode Analysis

10. **Alert reliability under hardware degradation**: Wrist-worn devices face variable sensor contact quality from motion artifacts and improper fit. What is the expected degradation curve for PPG and SpO2 signal quality under real-world wear conditions, and how should the anomaly detection pipeline handle graceful degradation — suppressing low-confidence alerts versus surfacing uncertainty to the user?

11. **Critical variable mapping for team resource allocation**: With 12 engineers split across firmware, ML, hardware, and mobile — what are the three or four architectural decisions that, if gotten wrong, create the most expensive downstream rework, and how should engineering capacity be sequenced around those critical path items given 18 months of runway?

---

## User-Centered Performance Framing

12. **Defining detection success for a non-clinical user**: The system targets early detection of cardiac arrhythmias and sleep apnea, but "early detection" means different things depending on whether the standard is clinical sensitivity/specificity or user-perceived value. What metrics — sensitivity at what specificity, time-to-alert, alert actionability — should the team optimize against, and how are those metrics validated without clinical-grade ground truth in a consumer context?

13. **Longitudinal model drift**: The target population — adults 40+ with cardiac event family history — will experience physiological changes over the device's use lifetime. What mechanisms exist to detect model drift as individual baselines shift, and how does the no-cloud-processing constraint limit the team's ability to monitor and correct for population-level distribution shift in deployed models?

---

**Total questions**: 13
**Topic clusters**: 5

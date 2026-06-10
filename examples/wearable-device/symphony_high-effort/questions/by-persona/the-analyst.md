---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
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

1. **Battery allocation breakdown**: Breaking this down across the four subsystems — sensing, inference, display, and BLE communication — what is the realistic per-subsystem power budget (in mWh/day) that achieves 7-day life, and which subsystem poses the tightest constraint given continuous PPG sampling requirements?

2. **Duty-cycle tradeoffs**: What is the minimum viable sampling frequency for each sensor (PPG, accelerometer, skin temperature, microphone) that preserves clinically meaningful arrhythmia and sleep apnea detection, and how does reducing duty cycles affect model sensitivity at each operating threshold?

3. **Inference cost versus detection latency**: Given that the neural processing unit's active power draw will dominate during inference bursts, what is the quantified tradeoff between running continuous low-power inference versus event-triggered batch inference — and at what anomaly prevalence rate does the event-trigger approach break even on power savings?

---

## ML Architecture and Accuracy Tradeoffs

4. **Model architecture selection criteria**: The key factors seem to be accuracy, parameter count, activation memory, and inference cycles per sample — how does a time-series anomaly model (e.g., 1D-CNN vs. LSTM vs. transformer micro-variant) compare across these four dimensions specifically for arrhythmia detection on a resource-constrained NPU, and what benchmarks exist from comparable deployments?

5. **False positive cost structure**: For a consumer wellness device targeting adults 40+ with cardiac family history, what is the asymmetric cost structure between false positives (alert fatigue, unnecessary ER visits, liability) and false negatives (missed event, clinical harm) — and how should this asymmetry drive the operating point selection on the ROC curve?

6. **Sensor fusion architecture**: When combining PPG, accelerometer, skin temperature, and microphone signals for a joint arrhythmia-plus-sleep-apnea model, what fusion strategy — early fusion, late fusion, or hierarchical gating — minimizes the accuracy penalty from sensor dropout events (e.g., motion artifact on PPG) while keeping inference cost within the power envelope?

7. **Model update pipeline**: Breaking this down into three options — on-device fine-tuning, federated learning across the user fleet, and periodic firmware-delivered model updates — what are the concrete operational requirements (compute, memory, connectivity, consent architecture) for each, and which is feasible within an 18-month runway for a 12-person team?

---

## Data Pipeline and Privacy Architecture

8. **Data residency decision framework**: Given that raw biometric data must never leave the device, what is the precise decision boundary between data that stays on-device, data that syncs as aggregated summaries, and data that syncs as processed alerts — and how does each category need to be defined to satisfy HIPAA's minimum necessary standard if clinical partnerships are pursued?

9. **Privacy-preserving sync protocol**: What specific technical mechanisms — differential privacy noise injection, on-device feature extraction with hash-based attestation, or encrypted aggregate statistics — are required to let the companion app receive actionable health summaries without exposing raw signal reconstructability, and what are the storage and compute costs of each approach at the device level?

10. **Audit trail architecture**: If HIPAA compliance requires demonstrable access controls and audit logs for protected health information, how does the system design need to account for the fact that processed alerts and aggregated summaries may themselves constitute PHI, and what logging infrastructure does that impose on a constrained device?

---

## Regulatory Transition Strategy

11. **Consumer-to-clinical pathway decision points**: The FDA 510(k) pathway requires demonstrating substantial equivalence to a predicate device — what are the specific software and clinical validation requirements that the initial consumer wellness architecture would need to satisfy from day one to avoid costly re-architecture later, and which design decisions are path-dependent (i.e., hard to reverse once shipped)?

12. **Predicate device selection criteria**: For a wrist-worn multi-parameter monitor targeting arrhythmia and sleep apnea detection, what is the quantified gap between current detection accuracy achievable on a low-power NPU and the sensitivity/specificity thresholds that FDA typically requires for cleared cardiac monitoring devices — and how does that gap inform whether the 510(k) path is viable within the company's runway?

---

## Team Capacity and Execution Risk

13. **Resource allocation against critical path**: Breaking the 12-engineer team (4 firmware, 3 ML, 3 hardware, 2 mobile) against the parallel workstreams of NPU integration, sensor fusion model development, HIPAA-compliant sync architecture, and regulatory documentation — what are the critical path dependencies, where are the highest-risk handoffs between firmware and ML teams, and what is the probability of completing a production-ready system within 18 months without additional hires?

---

**Total questions**: 13
**Topic clusters**: 4

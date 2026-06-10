---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/min"
datetime: 2026-04-28
effort: "min"
stage: "Phase 2: Generic Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
---

# Brainstorming Questions: On-Device ML Health Monitoring Wearable

---

## Topic Cluster 01: ML Architecture and Model Design

**Cluster focus**: How to select and constrain model architectures so that inference accuracy, latency, and power draw can coexist within the fixed compute and energy budget of a wrist-worn device.

1. **Model accuracy vs. power tradeoff**: Given the neural processing unit's fixed compute budget, what quantization strategies, pruning approaches, or architecture families (e.g., MobileNet variants, TinyML-optimized RNNs) offer the best accuracy-per-milliwatt profile for detecting cardiac arrhythmias and sleep apnea from PPG and accelerometer signals — and how would you decide when a model is "good enough" to ship?

2. **Sensor fusion architecture**: How should signals from PPG, accelerometer, skin temperature, and microphone be fused — at the feature level, decision level, or via a joint embedding — and what does each choice imply for model complexity, fault tolerance when a sensor degrades, and the interpretability of resulting alerts?

3. **False positive/negative calibration**: For a target population with family history of cardiac events, how do you set the operating threshold that balances missed detections (safety risk) against alert fatigue (adherence risk), and who — clinician, engineer, regulator, or user — should own that calibration decision?

4. **Model update strategy**: What are the concrete tradeoffs between shipping periodic over-the-air firmware updates with a retrained global model, enabling on-device continual learning, and adopting a federated learning scheme — considering update frequency, battery impact during download/retraining, privacy guarantees, and the regulatory implications of each approach?

---

## Topic Cluster 02: Power Budget and Hardware-Software Co-Design

**Cluster focus**: How to allocate, measure, and defend a 7-day battery life target across all subsystems while keeping the hardware-software interface flexible enough to accommodate future model iterations.

5. **Battery budget allocation**: Across sensing, inference, display, BLE sync, and housekeeping, what process would you use to derive a per-subsystem power envelope — and which subsystem is most likely to blow the budget in a real prototype, given the continuous PPG sampling required for arrhythmia detection?

6. **Duty cycling and event-driven sensing**: To what extent can the device rely on a low-power "always-on" accelerometer gating the more expensive PPG and microphone sensors, and what signal latency or detection delay does that introduce relative to the 7-day battery target?

7. **NPU utilization efficiency**: How does the choice of inference batch size, scheduling cadence (e.g., run inference every 30 s vs. streaming), and sleep-state management for the NPU affect both throughput and idle power — and how would you instrument and validate these tradeoffs on actual silicon before committing to a PCB revision?

8. **Hardware-software co-design process**: With a team split across firmware, ML, hardware, and mobile app, what integration checkpoints and shared contracts (e.g., power measurement harnesses, sensor driver APIs, model interchange formats) would prevent each subteam from optimizing locally in ways that collapse the system-level power budget?

---

## Topic Cluster 03: Privacy Architecture and Data Governance

**Cluster focus**: How to enforce the principle that raw biometric data never leaves the device while still enabling useful companion app features, aggregated insights, and future clinical data partnerships.

9. **On-device data pipeline boundaries**: What is the precise data flow from raw sensor ADC samples to the companion app — which transformations happen at what layer, what is the minimum sufficient statistic that must cross the BLE boundary for the app to be useful, and how do you verify at build time that the firmware cannot accidentally serialize raw data?

10. **HIPAA compliance architecture for clinical partnerships**: If a health system or research institution wants to access de-identified aggregate data from consented users, what architectural additions — consent management, audit logging, differential privacy, secure enclave storage — would be required to satisfy HIPAA's minimum necessary standard without requiring a full device redesign?

11. **Privacy-preserving sync protocol**: Beyond TLS, what threat model should govern the BLE pairing and sync protocol — and how do you handle adversarial scenarios such as a compromised companion app, a rogue BLE base station, or a user who factory-resets the device mid-study?

12. **User transparency and control**: What information about inference results, alert history, and data retention should the device expose to users, and how does the design of that transparency layer change if the device later seeks FDA clearance that requires clinical-grade audit trails?

---

## Topic Cluster 04: Regulatory Strategy and Clinical Pathway

**Cluster focus**: How to sequence consumer-wellness launch and FDA 510(k) preparation so that engineering and clinical decisions made today do not foreclose the regulatory options the team wants to preserve tomorrow.

13. **Consumer wellness vs. clinical claims differentiation**: What specific language in marketing copy, alert UX, and companion app UI constitutes an implied medical claim that could trigger FDA enforcement — and how do you get cross-functional alignment on those boundaries given that the ML team's precision-recall metrics are inherently clinical in framing?

14. **510(k) predicate and design history**: If the team intends to pursue a 510(k) in 18-36 months, what design controls, software lifecycle documentation (IEC 62304), and clinical evidence should be accumulated from day one of the wellness launch — and what shortcuts taken now would require the most expensive rework to undo?

15. **Liability and false negative exposure**: In a consumer wellness context without FDA clearance, what contractual, UX, and algorithmic safeguards limit the company's liability if a user experiences a cardiac event that the device failed to flag — and how does that analysis change once the device carries clinical claims?

16. **International regulatory sequencing**: Given an 18-month runway, should the team prioritize US FDA pathway, CE marking under EU MDR, or Health Canada, and what does each choice imply for clinical study design, data collection requirements, and the device's addressable market during the runway period?

---

## Topic Cluster 05: Go-to-Market, User Experience, and Sustainability

**Cluster focus**: How to design the end-to-end user experience and business model so that health-conscious adults aged 40+ adopt and sustain long-term use — and how to build a company that survives beyond the Series A runway.

17. **Onboarding and trust building**: For a target user who is health-conscious but not necessarily technically sophisticated, how should the device's setup flow, alert explanation, and companion app establish enough trust to overcome skepticism about wearable ML accuracy — without overstating what the device can detect?

18. **Alert design and escalation paths**: When the device detects a probable arrhythmia event, what is the complete alert experience — notification copy, escalation to emergency contacts, guidance to seek care — and how do you A/B test that experience without exposing real health risk to the experimental group?

19. **Revenue model and long-term sustainability**: Given that hardware margins are thin and the clinical partnership channel is long-cycle, what subscription, data licensing, or clinical-tools revenue model would extend the company's runway beyond 18 months — and what user consent and data governance implications does each model carry?

20. **Competitive differentiation and defensibility**: With established players (Apple Watch, Fitbit, Withings) offering overlapping cardiac monitoring features, what combination of on-device privacy architecture, clinical-grade accuracy, and partnerships with cardiologists or health systems would constitute a durable moat for a 12-person hardware startup?

---

**Total questions**: 20
**Topic clusters**: 5

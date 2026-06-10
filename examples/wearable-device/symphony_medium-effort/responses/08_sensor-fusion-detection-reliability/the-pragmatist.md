---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_sensor-fusion-detection-reliability"
persona: "The Pragmatist"
---

# Sensor Fusion & Detection Reliability - The Pragmatist

---

## Multi-Sensor Fusion as a Reliability Multiplier with a Fragility Tail

### Response 1: Confidence Scoring with Sensor Health Flags
* **Summary.** A practical approach might be to attach confidence scores to each sensor input and implement real-time sensor health checks before fusion. Each sensor—PPG, accelerometer, temperature, microphone—reports both its raw signal and a health metric (signal quality, stability, expected SNR). The fusion layer weights inputs based on confidence, automatically down-weighting a sensor showing moisture, movement artifact, or contact loss. When a single sensor degrades below a threshold, the model switches to a reduced-sensor baseline (e.g., PPG + temperature only) rather than forcing degradation through fusion. This preserves sensitivity for critical events while preventing the "worse than single sensor" failure mode. Implementation: start with post-collection health scoring in firmware; expand to real-time feedback within 2-3 sprints.

### Response 2: Dual-Path Decision Tree (Fast Track)
* **Summary.** To make this feasible without architectural redesign, implement a decision tree that runs in parallel with fusion: (1) Check if any sensor is flagged as degraded or occluded via simple heuristics (e.g., accelerometer shows >3G sustained = likely false positive). (2) If degraded, use a pre-trained single-sensor model (PPG-only for cardiac, microphone-only for apnea). (3) If clean, use fusion. This requires training three lightweight sub-models upfront (~4-6 weeks engineering), but buys you safety: you always have a known fallback. Cost: ~15-20% more inference per event, but eliminates the "worse than baseline" scenario entirely.

### Response 3: Staged Sensor Redundancy (Higher Reliability, Longer Timeline)
* **Summary.** A more robust approach would dual-sensor redundancy: run two independent fusion chains (PPG + temperature on one path, accelerometer + microphone on the other) and require agreement between them before flagging an anomaly. If one chain detects something but the other doesn't, it's treated as inconclusive and escalated to user review. This requires nearly 2x inference load and firmware memory, but dramatically reduces false alarms from sensor artifacts and buys clinical credibility. Implement this as an optional "clinical mode" in firmware v1.2 (6 months out), leaving faster single-chain fusion as the default in v1.0.

### Response 4: Artifact Signature Library (Minimal Overhead, MVP)
* **Summary.** Let's break this down: build a small library of known sensor artifacts (moisture degradation has characteristic PPG frequency shift; poor contact shows low SNR + high jitter in accelerometer). Train a lightweight classifier to detect these patterns in real time. When detected, suppress that sensor's contribution for 30-60 seconds. Implementation: ~3 weeks to label 500-1000 real-world artifact examples from your test cohort; integrate a decision tree classifier that runs in <5ms. This is friction-free to ship in v1.0 and gives you data to refine the confidence-scoring approach later.

---

## Real-World Performance vs. Lab Benchmarks

### Response 1: Structured Real-World Validation Protocol (Foundation)
* **Summary.** A practical approach is to build a phased validation plan: (1) Lab baseline (existing). (2) Controlled field test with 20-30 users in your target demographic (40+, diverse skin tones, varied daily activity) for 2-3 weeks, wearing the device in real conditions but with structured logging (placement, wear time, motion level, stress). (3) Capture "deviation coefficients" — how much does accuracy drop when users deviate from lab-ideal placement, move during a false detection window, or wear over skin tone variations. (4) Adjust model thresholds and alert logic based on these coefficients. Timeline: 8-10 weeks. This gives you actual degradation numbers before launch, not guesses.

### Response 2: Pre-Launch Degradation Budget (Risk Mitigation)
* **Summary.** Rather than hoping real-world equals lab, assume upfront that accuracy will degrade by 5-15% based on similar wearables' real-world performance curves. Design your alert threshold logic with this budget in mind: if your lab model achieves 92% sensitivity on cardiac anomalies, target a 88% threshold for production, then measure actual performance over the first 1000 users. This is conservative but saves you from shipping with false-confidence. Implementation: one person, 3-4 weeks, to audit your existing benchmarks and build a degradation model from literature on PPG and motion artifact.

### Response 3: Ongoing User Cohort Monitoring (Sustainable Validation)
* **Summary.** Set up a lightweight telemetry pipeline (privacy-preserving; no raw data leaves device) that tracks: sensor signal quality, number of flagged alerts, user manual corrections in the companion app, wear-time patterns. After 500+ users and 6+ months of real-world data, aggregate anonymized performance metrics and compare lab vs. actual. If a particular skin tone or wear pattern shows degraded accuracy, push a firmware update to that cohort with adjusted thresholds. This turns your user base into a continuous validation engine. Cost: ~2 backend engineers, 6 months to build; ROI is high for clinical pathway credibility.

### Response 4: Rapid A/B Testing in Field (Fast Learning)
* **Summary.** Ship two firmware variants to a cohort of 100 early users: version A with conservative thresholds (lab benchmarks minus 10%), version B with aggressive thresholds (lab benchmarks). Track false alarm rates and user manual corrections. After 4 weeks, swap thresholds and run the reverse test. Use this data to inform your real-world tuning curve. This is implementable in 2-3 sprints and gives you empirical guidance without a formal study. Note: requires robust consent and telemetry infrastructure upfront; not suitable if privacy requirements are extremely strict.

---

## Multi-Sensor Anomaly Detection as Jury Deliberation

### Response 1: Weighted Supermajority Voting (Implementable MVP)
* **Summary.** The jury analogy is useful. A practical starting point: assign each sensor a base weight (PPG = 0.4, accelerometer = 0.3, temperature = 0.2, microphone = 0.1, adjustable by event type). Anomaly flag only triggers when weighted vote exceeds 0.6 (supermajority). If one sensor is flagged as degraded, its weight drops to zero; the supermajority threshold adjusts proportionally (now need 0.6 of remaining three). This avoids "hung jury" deadlock and ensures no single sensor can veto. Implementation: 2-3 weeks, including offline testing on labeled event data. Weights are tunable; you can A/B test different thresholds in field.

### Response 2: Hierarchical Consensus with Sensor Classes (More Robust)
* **Summary.** Rather than all sensors equal, group them by detection strength: Class A (PPG for cardiac, microphone for apnea) must vote. Class B (accelerometer, temperature) are supporting votes. Consensus rule: Class A unanimous OR Class A + any Class B vote. This respects that different sensors have different veto power for different anomalies. For example, cardiac arrhythmia detection relies heavily on PPG; if PPG is degraded, require agreement with temperature trend (slow recovery) to confirm. This is more complex to implement (~5-6 weeks), but more aligned with domain expertise and reduces false positives.

### Response 3: Temporal Jury Sequencing (Low-Complexity Enhancement)
* **Summary.** A practical refinement: don't require simultaneous consensus. Require PPG to vote first (fastest, lowest latency). If it flags an anomaly, wait 2-5 seconds for accelerometer and temperature to weigh in. If they concur, alert immediately. If they disagree, escalate to lower confidence (yellow flag, not red alert). This staggers voting over time, reduces false alarms from transient artifacts, and maintains the benefits of sensor fusion without requiring a complex voting algorithm. Implementation: ~3 weeks in firmware; low computational overhead.

### Response 4: Outlier Sensor Quarantine (Jury Discipline)
* **Summary.** Jury systems work best when outlier jurors (those consistently out of step with others) are either removed or their influence is curtailed. Implement a simple feedback loop: if one sensor consistently flags anomalies that the other three don't confirm, lower its weight or quarantine it temporarily. Track this per session (wear time). If a sensor is quarantined >30% of the time, flag it as a hardware quality issue for the user (contact check, cleaning). This is a maintenance-friendly approach that improves over time as you learn which sensors are prone to artifacts in your device. 2-3 week implementation; minimal computational cost.

### Response 5: Explainability for Clinical Trust (Future-Proofing)
* **Summary.** For the FDA pathway to make sense, you'll need to explain *why* an anomaly was flagged, not just that it was. To make this practical now: ensure your fusion layer logs which sensors voted yes/no for each event. This takes minimal overhead but becomes critical for clinician review and regulatory submission. When a patient asks "why did I get an alert?", you can say "PPG detected rhythm change; temperature and accelerometer agreed, but microphone saw no breathing change." This transparency builds clinical credibility and is nearly free to implement upfront. Include this in your telemetry design from v1.0.

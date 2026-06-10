---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "low"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 01: Defining Success and the Real Objective

## Questions

1. **Load-bearing constraint among accuracy, latency, power, and privacy**: The REQUEST names four axes to balance, but optimizing all four simultaneously may be the wrong framing — which constraint is genuinely load-bearing for the user's goal of early cardiac and sleep apnea detection, which are self-imposed, and what sensitivity-at-specificity, time-to-alert, and alert-actionability metrics should the team optimize against given that "early detection" means different things in a consumer context than under clinical sensitivity/specificity standards validated against clinical-grade ground truth?
2. **Defining "anomaly" and who owns the definition**: How does the team operationally define what counts as a cardiac arrhythmia or sleep apnea anomaly for the on-device ML model, and who ultimately owns that definition — the clinical literature, the regulatory body, the algorithm itself, or the user — and what happens at the architectural level when those definitions conflict?
3. **The felt difference between an alert and the context to act on it**: When the on-device ML fires a cardiac arrhythmia alert, the user receives a processed signal — not raw data, not a clinical interpretation — and at that moment they are alone with their wrist and their anxiety; what does the design do to bridge the gap between "alert received" and "I know what to do next," and how does that emotional-interior experience differ from the composed, informed user the engineering team imagines?
4. **The smallest experiment that moves toward the most ambitious vision**: Given everything the team already knows — about the NPU's capabilities, the sensor fusion signals, the users' lived experience — what is one focused experiment, achievable in the next sprint or the next two weeks, that would generate concrete evidence about whether the most ambitious version of this device is reachable?
5. **Symbiotic Intelligence**: What if this wearable didn't merely detect anomalies but gradually developed a model of health that is so intimate and individualized it becomes genuinely irreplaceable — not because of data lock-in, but because the relationship between device and wearer evolves in ways no cloud system could replicate — and what entirely new design philosophy would that require from the ground up?

---

**Question count**: 5
**Cluster focus**: What the device is actually optimizing for, what counts as an "anomaly," and how detection success translates into lived user value.

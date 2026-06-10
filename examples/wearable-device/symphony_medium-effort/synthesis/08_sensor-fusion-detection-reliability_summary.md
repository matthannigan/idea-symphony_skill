---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "08_sensor-fusion-detection-reliability"
synthesis-type: "summary"
central-tension: "Multi-sensor fusion only raises reliability when the sensors fail independently; correlated failures and silently degraded sensors can pull fused accuracy below any single-sensor baseline, so most of the engineering work is detecting and routing around bad inputs rather than combining good ones."
---

# Summary: Sensor Fusion & Detection Reliability

## Executive Summary

The organizing finding is that multi-sensor fusion is not reliability for free. Fusing PPG, accelerometer, temperature, and microphone raises accuracy only when the sensors fail independently. When a loose contact, moisture, or a shared environmental factor degrades inputs, fusion can drop below the accuracy of any single sensor. All four perspectives converged on this core constraint: correlated failure is the central risk for the whole detection pipeline.

This reframes where the engineering effort goes. The hard problem is detecting and routing around bad inputs, not combining clean signals. All four perspectives converge on per-sensor confidence scoring: each sensor reports a health metric alongside its reading, and its contribution decays smoothly toward zero as confidence falls. The model is trained on degraded streams so it knows which combinations to trust. Stacked on top are an upstream artifact-detection gate, an explicit "unknown" state that escalates to the user rather than guessing, and per-sensor vote logging. Vote logging costs almost nothing now and becomes critical for clinician review and regulatory submission later.

The most consequential reframe concerns the jury analogy that motivates fusion. Diverse jurors only protect against blind spots when they are independent. Sensors can lose independence when a common factor (rising ambient temperature, moisture) pushes several the same way and manufactures false consensus. The fix is to architect sensor pairs as adversaries that cross-check each other, and prefer outlier-robust consensus over naive majority voting. This way coordinated failure gets caught rather than ratified.

The second tension is lab-to-field generalization. Benchmarks assume perfect contact and stationary subjects. Real users run, shower, and sleep in the device, and darker skin tones degrade PPG through melanin absorption. The perspectives frame this as both a measurement problem and an engineering problem. For measurement: multi-week field validation with accuracy published by demographic and wear context. For engineering: skin-tone normalization in preprocessing can recover 5-15% of accuracy instead of just documenting the gap. Budgeting for a 5-15% real-world drop before launch, rather than discovering it in production, is the safer choice.

The strategic implication is that detection reliability and the clinical regulatory pathway are the same workstream. Honest degradation numbers, explainable per-sensor votes, and a conservative "I don't know" failure mode protect against liability and build the evidence base a 510(k) submission will need.

---

## Key Themes

The jury analogy only holds when the jurors are independent. Correlated sensor failure is the defining risk, and designing sensor pairs to cross-check each other independently is a prerequisite, not a tuning detail.

### Detect and route around bad inputs, don't just fuse good ones
All four perspectives converge on per-sensor confidence scoring with smooth down-weighting, backed by an upstream artifact-detection gate and a reduced-sensor fallback. The pipeline needs to triage inputs as much as detect anomalies, because the failure to avoid is fused accuracy dropping below a single-sensor baseline.

### Refuse to guess under degradation
Multiple perspectives land independently on an explicit "unknown" state. When confidence drops during a degraded-sensor window, the safest behavior during a real cardiac event is to log uncertainty and prompt the user to recheck wear rather than silently miss or fabricate. This conservative failure mode also creates a liability paper trail.

### Lab accuracy will not survive contact with real wear
All four perspectives flag the lab-to-field gap, especially skin tone (melanin absorbs PPG wavelengths), placement drift, and motion. The recommendation pairs a measurement response (multi-week diverse-population field validation, accuracy stratified by demographic and context) with an engineering response (skin-tone preprocessing normalization), and budgets for the drop before launch.

### Voting design must match liability and domain, not default to majority rule
Beyond simple supermajority voting that re-normalizes when a sensor degrades, the perspectives push toward outlier-robust Bayesian consensus, hierarchical voting where the decisive sensor for each anomaly type must participate, and empirical right-sizing showing a 3-sensor ensemble may match 4-sensor performance at lower power.

### Reliability work and the regulatory pathway are one workstream
Per-sensor vote logging, explainable alerts, honest degradation reporting, and the conservative failure mode serve both detection quality and the FDA 510(k) evidence base. Investing in them early pays off across both fronts.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Ship per-sensor confidence/health scoring (SNR, peak regularity, drift bounds) and a fusion layer that smoothly down-weights degraded sensors and falls back to a reduced-sensor baseline. All four perspectives endorse this as foundational.
- Build a lightweight artifact-signature classifier (moisture frequency shift, contact-loss SNR/jitter, sustained high-G) running under 5ms as an upstream gate that suppresses a degraded sensor's contribution.
- Add per-sensor vote logging to every event from v1.0. It costs almost nothing now and becomes critical for clinician review and regulatory submission later.
- Implement the explicit "unknown" state: when fused confidence falls below a safety threshold, escalate to the user (recheck wear) and log locally rather than emitting a forced positive or negative.

### Near-term (3-12 months)
- Run a 2-4 week field validation with 20-30 diverse users (40+, Fitzpatrick I-VI, varied activity) using instrumented devices that log wear metadata. Capture deviation coefficients and publish accuracy by demographic and wear context.
- Add skin-tone normalization to PPG preprocessing (estimate tone from contact area and ambient light, apply learned curves) to recover accuracy on darker skin instead of only documenting the gap.
- Redesign the voting layer so independent sensor pairs cross-check each other (PPG+temperature, accelerometer+microphone) and require cross-chain agreement. This replaces naive majority voting to defeat correlated failure.
- Set a pre-launch degradation budget (production thresholds roughly 5-15% below lab) and measure actual performance against it on the first cohort.

### Long-term (1+ years)
- Stand up privacy-preserving accuracy-proxy telemetry where user confirm/deny labels drive cohort-specific firmware retuning. The user base becomes a continuous validation engine.
- Replace static voting weights with outlier-robust Bayesian consensus and recency-weighted reliability that adapts as sensors drift. Right-size the ensemble via synthetic degradation testing (3 vs. 4 sensors) for power savings.

---

## Key Considerations

**Opportunities**:
- Skin-tone preprocessing normalization can recover 5-15% accuracy on darker skin. This turns a fairness and accuracy gap into a measurable competitive and clinical advantage.
- Per-sensor vote logging and honest, stratified degradation reporting build directly toward the FDA 510(k) evidence base at low marginal cost.
- The deployed user base, via privacy-preserving confirm/deny labels, can become a continuous validation engine without raw data ever leaving the device.

**Risks & Challenges**:
- Correlated sensor failure can manufacture false consensus and silently degrade a real cardiac detection. Naive majority voting actively hides this failure mode.
- Lab accuracy is unlikely to generalize. Shipping on lab benchmarks alone risks false-confidence misses in exactly the high-stakes population (older adults with arrhythmia).
- Silent PPG contact degradation during a real event is the worst-case failure. Without an explicit "unknown" state the device may miss or fabricate at the moment that matters most.

**Trade-offs**:
- Sensitivity vs. specificity in voting thresholds: "any 2 agree" catches more but false-alarms more; "all 4 agree" is specific but misses subtle events. This must be set against a cardiac liability posture that tolerates false positives more than false negatives.
- Safety mechanisms (dual independent fusion chains, conservative escalation) cost inference load, power, and the 7-day battery budget. Some redundancy moves into an optional "clinical mode" rather than default.
- A/B field testing and richer telemetry accelerate real-world tuning but conflict with the device's strict privacy posture. This limits how aggressively the user base can be used for learning.

---

**Questions addressed**: 3
**Key insights synthesized**: 18

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_sensor-fusion-detection-reliability"
persona: "The Technical Expert"
---

# Sensor Fusion & Detection Reliability - The Technical Expert

---

## Multi-Sensor Fusion as a Reliability Multiplier with a Fragility Tail

* **Per-sensor confidence scoring with automatic degradation.** From a technical perspective, the pipeline should emit not just a single anomaly label but a confidence vector per sensor (PPG, accel, temp, mic) that feeds into a weighted ensemble. When PPG signal quality drops below a threshold—detected via signal-to-noise ratio or autocorrelation metrics—its contribution weight should decay smoothly toward zero rather than causing the model to fail. This requires training the ensemble on both clean and degraded sensor streams so the model learns which combinations are trustworthy.

* **Artifact detection as a gating layer upstream of anomaly detection.** Instead of trying to distinguish artifact from pathology inside the anomaly detection module, implement a separate classifier trained on known motion artifacts (worn loose, shower moisture, placement shift) that runs in parallel. When detected, flag the sensor stream as "uncertain" and increase decision thresholds or request confirmation from user context (e.g., was the user exercising?). This isolates the problem to a smaller, more focused model with clear training objectives.

* **Conservative failure mode with human escalation pathway.** A viable approach would be to design the pipeline with explicit "unknown" states: when sensor fusion confidence falls below a safety threshold, rather than outputting a potentially-false positive or negative, the system logs the uncertainty locally and prompts the user to recalibrate wear or contact support. This trades off convenience for clinical safety and gives you a paper trail if a cardiac event occurs while sensors were degraded.

* **Sensor redundancy architecture with primary/secondary pairing.** Instead of treating all four sensors equally, architect the system with PPG as primary (highest sensitivity for arrhythmia), accelerometer as secondary confirmation, and temperature/microphone as tertiary context. During a cardiac event, anomaly detection succeeds if primary + any secondary agree; if only tertiaries flag something, the decision bounces to a higher confidence threshold. This prevents a single loose sensor contact from invalidating legitimate detections.

* **Real-time sensor cross-validation scoring.** Implement a background process that continuously compares sensor fusion outputs against per-sensor baselines during normal operation (sleep, resting heart rate windows). When fusion output diverges sharply from what individual sensors would predict in isolation, this signals artifact. You can log these divergences and feed them back into model retraining, creating a feedback loop that hardens the system against real-world failure modes.

---

## Real-World Performance vs. Lab Benchmarks

* **Establish a "deployment accuracy" metric distinct from lab metrics.** The lab benchmarks your model on clean, carefully-positioned wearables; real-world accuracy must account for loose wear, skin tone variation, hair density, sweat, and positioning drift. A viable approach would be to run a 4-week beta with instrumented devices that log sensor quality metadata (wear tightness flags, motion artifact frequency), then correlate that metadata against false positive/negative rates. This reveals which real-world conditions degrade accuracy most and drives hardware or firmware mitigations.

* **Skin tone normalization in the PPG signal preprocessing pipeline.** From a technical perspective, PPG detection is notoriously sensitive to melanin content because melanin absorbs the infrared wavelengths used in optical heart rate sensing. Rather than hoping the model learns this implicitly, preprocess PPG by estimating skin tone from device contact area and ambient light, then apply learned normalization curves per skin tone group. This is a standard signal processing technique in medical devices and can recover 5-15% accuracy on darker skin tones.

* **Positional artifact model trained on real wearing patterns.** Most lab testing assumes the device is worn consistently on the wrist; real users wear it rotated, loose after workouts, or upside down during sleep. Train a separate lightweight model to detect wrist position (using accelerometer orientation + gyroscope) and gate the heart rate inference accordingly—different positions have different baseline noise profiles. This lets the ensemble adapt to user behavior rather than assuming lab-like consistency.

* **Progressive model deployment with holdout populations for validation.** Rather than shipping a single model trained on your lab cohort, deploy version 1.0 to a limited beta, measure real-world accuracy on a holdout demographic (older adults, different ethnicities, various activity levels), then retrain on failure cases before wider rollout. This catches deployment drift early and gives you confidence that lab benchmarks translate to diverse populations.

* **Continuous monitoring of accuracy signals from on-device aggregates.** You can't ship raw data off-device, but you can ship accuracy proxy signals: if the user manually confirms/denies an alert via the companion app, those labels feed back into on-device retraining or firmware updates. Over 6 months, this creates a corpus of real-world ground truth that reveals accuracy gaps your lab testing missed, informing future model versions.

---

## Multi-Sensor Anomaly Detection as Jury Deliberation

* **Weighted supermajority voting with context-dependent thresholds.** Jury research suggests diverse assessors outperform single experts, but you need voting rules tailored to your domain. A viable technical approach: when 2+ sensors flag anomaly (e.g., PPG + accelerometer), score the event at 85% confidence; require 3/4 for 95% confidence; only 1/4 triggers investigation mode, not alert. Vary these thresholds based on time-of-day context: during sleep, respiratory signals (microphone) should carry higher weight because PPG baseline variability increases.

* **Outlier-robust consensus with Bayesian belief updates.** Instead of majority voting, model sensor fusion as Bayesian inference: each sensor contributes a likelihood function given the observed data. When one sensor's likelihood is an outlier relative to others, reduce its weight in the posterior. This is mathematically more robust than voting and naturally handles degraded sensors without requiring manual thresholds.

* **Jury size optimization through synthetic degradation testing.** Jury research shows diminishing returns after ~6-8 jurors; you have 4 sensors. To find optimal ensemble size, run a test: disable each sensor combination and measure detection accuracy on a held-out anomaly dataset. You'll likely find that 3-sensor ensembles (e.g., PPG+accel+temp) perform nearly as well as 4-sensor, with faster inference and lower power. This data-driven sizing beats guesswork.

* **Structured dissent detection for edge cases.** When sensors disagree sharply (PPG normal, accelerometer flagging artifact, temp stable), don't force a vote—escalate to a "detailed investigation" mode where inference latency increases but confidence improves. Log these dissent cases, because they're often the most informative for model improvement. They reveal scenarios where your training data was sparse, pointing to future data collection needs.

* **Time-dependent jury weighting based on recent calibration.** Sensors drift over time; a microphone exposed to moisture may degrade subtly over weeks. Weight recent sensor performance higher: if the past 24 hours show PPG false positive rate at 8% but the historical average is 3%, temporarily reduce PPG weight during voting. This requires on-device logging of per-sensor accuracy proxies (user confirmations) and periodic reweighting of the ensemble.

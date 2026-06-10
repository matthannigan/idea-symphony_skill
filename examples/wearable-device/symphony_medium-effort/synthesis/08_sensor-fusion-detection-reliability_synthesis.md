---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "08_sensor-fusion-detection-reliability"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Sensor Fusion & Detection Reliability

---

## Synthesized Insights by Question

### Question 1: Distinguishing sensor artifact from genuine physiological anomaly

**Full question**: Using PPG, accelerometer, temperature, and microphone together improves detection accuracy in normal conditions, but each sensor is also a single point of failure. A loose contact, moisture, or positional artifact can corrupt the fusion signal in ways that degrade the combined model below the performance of any single-sensor baseline. How does the anomaly detection pipeline distinguish "sensor artifact" from "genuine physiological anomaly," and what does the failure mode look like when it gets this wrong during a real cardiac event?

* **Attach a per-sensor confidence score and down-weight degraded sensors smoothly rather than letting them poison the fusion output.** Each sensor reports a health metric (signal-to-noise ratio, peak regularity, autocorrelation, drift bounds) alongside its raw signal. The fusion layer then reduces a sensor's contribution toward zero as its confidence falls. Training on both clean and degraded streams teaches the model which combinations stay trustworthy, preventing the "worse than any single-sensor baseline" failure.
* **Run artifact detection as a separate gating layer upstream of anomaly detection, not inside it.** A small, focused classifier trained on known artifact signatures (moisture frequency shift, low-SNR/high-jitter poor contact, sustained high-G motion) flags uncertain streams and raises decision thresholds. This keeps artifact handling separate from pathology detection with clear training objectives in each model.
* **Design an explicit "unknown" state with human escalation rather than forcing a positive or negative when confidence is low.** During a degraded-sensor window, refuse to guess. Log the uncertainty locally, prompt the user to recheck wear or contact, and preserve a paper trail. During a real cardiac event, the system declares it does not know rather than silently missing or fabricating a false reading.
* **Tier the sensors by detection strength so a single loose contact cannot invalidate a legitimate detection.** PPG is primary for arrhythmia, with the others as confirmation or context. Detection succeeds when primary plus a secondary sensor agree. Tertiary-only flags route to a higher confidence threshold. Each sensor should have a documented degraded-mode accuracy floor validated in QA.
* **Stand up a continuous cross-validation loop that compares fusion output against per-sensor baselines during quiet windows.** During sleep and resting-heart-rate periods, compare fusion output to individual sensor predictions in isolation. Sharp divergence signals artifact, and logging those divergences feeds retraining.

---

### Question 2: Real-world performance vs. lab benchmarks

**Full question**: What assumptions does the ML model's accuracy benchmarking make about how users will actually wear the device (placement consistency, skin tone variation, motion artifacts from daily activity), and how much does real-world performance degrade from controlled test conditions?

* **Run multi-week field validation with diverse users in real settings before making any clinical claim, and report accuracy stratified by demographic and wear context rather than as a single aggregate.** Lab benchmarks assume perfect contact, controlled lighting, and stationary subjects. Real users run, shower, and sleep in the device. A 2-4 week beta with instrumented devices logging wear metadata shows real degradation numbers. Publishing accuracy by skin tone, age, activity, and wear state also reduces downstream regulatory liability.
* **Treat skin tone as a known, correctable PPG degradation rather than hoping the model learns it implicitly.** Darker skin tones degrade PPG because melanin absorbs the optical wavelengths. Beyond benchmarking across Fitzpatrick I-VI, preprocess the signal. Estimate skin tone from contact area and ambient light, then apply learned normalization curves—a standard medical-device technique that can recover 5-15% of accuracy rather than merely documenting the gap.
* **Budget for degradation up front by setting production thresholds below lab numbers, instead of assuming lab accuracy generalizes.** Price in a 5-15% real-world drop before launch. Tune alert logic to that budget (for example an ~88% production threshold against a 92% lab sensitivity). Then measure actual performance against it on the first cohort.
* **Model wrist position explicitly and gate inference on it, since real users wear the device rotated, loose, or upside down.** Detect position from accelerometer and gyroscope orientation to select the right baseline noise profile. Flag abnormal week-over-week divergence from the user's own baseline with a soft "reposition suggested" prompt rather than masking real events.
* **Convert the deployed user base into a continuous, privacy-preserving validation engine using manual-confirmation labels.** Ship accuracy-proxy telemetry (no raw data leaving the device). User confirm/deny actions in the companion app become ground-truth labels, enabling cohort-specific firmware tuning where a skin tone or wear pattern underperforms.
* **Stress-test against recorded real wear patterns, and consider A/B threshold testing in the field for faster tuning.** Record actual users' wear behavior (loose straps, sweat, rotation, sleep shifts) with IMU-logged position data and correlate each artifact with pipeline degradation. Optionally ship competing conservative-versus-aggressive thresholds to a small cohort to learn the tuning curve empirically, where privacy posture allows.

---

### Question 3: Sensor fusion as jury deliberation — voting, weighting, and outliers

**Full question**: Jury systems require multiple independent assessors to reach a verdict, on the logic that diverse observers with different vantage points are less likely to share the same blind spots. PPG, accelerometer, temperature, and microphone are structurally analogous jurors, each with distinct detection strengths and failure modes. What does jury design research (optimal size, unanimity vs. supermajority thresholds, handling of outlier jurors) suggest about how to architect the sensor fusion layer's voting or weighting logic, particularly for edge cases where one sensor is occluded or degraded?

* **The jury independence assumption is the load-bearing risk: correlated sensor failure produces false consensus, so sensor pairs must be designed to cross-check independently.** The jury analogy only works when jurors are actually independent. A shared environmental factor like rising ambient temperature or moisture can push several sensors the same way and manufacture fake agreement. The fix is to pair sensors as adversaries that validate each other: PPG with temperature for cardiac signals independent of motion, accelerometer with microphone for breathing independent of heart rate. Require agreement between independent chains before flagging, and use outlier-robust Bayesian consensus instead of naive majority voting.
* **Start with weighted supermajority voting that re-normalizes when a sensor is degraded, so no single sensor can deadlock or veto.** Assign per-sensor base weights and trigger on a weighted threshold. Drop a degraded sensor's weight to zero and re-normalize the threshold over the remaining sensors. Tune thresholds to your liability posture (cardiac users tolerate more false positives than false negatives) and by context, raising microphone weight during sleep when PPG baseline variability rises.
* **Right-size the "jury" empirically and respect that different anomalies have different decisive sensors.** Run synthetic degradation testing to find that a 3-sensor ensemble may match 4 sensors with faster inference and lower power. Structure hierarchical consensus so the sensor that actually carries each anomaly type (PPG for cardiac, microphone for apnea) must vote while others support.
* **Quarantine persistently outlying sensors and surface chronic offenders as a hardware-quality signal to the user.** Down-weight or temporarily quarantine a sensor that keeps flagging anomalies the others reject. Route a lone flag against three agreeing sensors to manual confirmation. If a sensor is quarantined beyond roughly 30% of wear time, escalate it as a hardware quality issue prompting a contact check or cleaning.
* **Stagger voting over time instead of demanding simultaneous consensus, letting fast sensors lead and slower ones confirm.** PPG votes first. The system waits a few seconds for accelerometer and temperature to weigh in. Concurrence alerts immediately, while disagreement downgrades to a yellow flag that also filters transient artifacts.
* **Weight sensors by recent measured reliability, not just static priors, since sensors drift.** Temporarily reduce a sensor's weight when its recent false-positive rate exceeds its historical average. Let accumulated per-user feedback reshape voting thresholds over months without retraining the network.
* **Log every sensor's vote per event now, because explainability is nearly free today and load-bearing for the regulatory pathway later.** Recording per-sensor yes/no votes from v1.0 enables after-the-fact explanations of why an alert fired. Clinician review and regulatory submission both require this, and it costs minimal implementation overhead.

---

**Questions addressed**: 3
**Synthesized insights**: 18

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "08_sensor-fusion-detection-reliability"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: Sensor Fusion & Detection Reliability - With Attribution

---

## Synthesized Insights by Question

### Question 1: Distinguishing sensor artifact from genuine physiological anomaly

**Full question**: Using PPG, accelerometer, temperature, and microphone together improves detection accuracy in normal conditions, but each sensor is also a single point of failure. A loose contact, moisture, or positional artifact can corrupt the fusion signal in ways that degrade the combined model below the performance of any single-sensor baseline. How does the anomaly detection pipeline distinguish "sensor artifact" from "genuine physiological anomaly," and what does the failure mode look like when it gets this wrong during a real cardiac event?

* **Attach a per-sensor confidence score and down-weight degraded sensors smoothly rather than letting them poison the fusion output.** All four perspectives converge here: each sensor should report a health metric (signal-to-noise ratio, peak regularity, autocorrelation, drift bounds) alongside its raw signal, and the fusion layer should reduce a sensor's contribution toward zero as its confidence falls. The critical design requirement is that the model be trained on both clean and degraded sensor streams so it learns which combinations remain trustworthy. This is the mechanism that prevents the "worse than any single-sensor baseline" failure the question names.
  * **Cross-check protocol; flag anomalies only when sensors independently exceed thresholds, treating disagreement as artifact.** Train a confidence scorer by comparing sensor correlations in known benign motion versus pathological events, then quarantine high-disagreement zones until post-hoc validation. *—The Analogist*
  * **Per-sensor confidence scoring based on signal stationarity checks; when confidence drops, flag the sensor unreliable and reweight voting to bypass it, separating hardware failure mode from physiological anomaly.** *—The Devil's Advocate*
  * **Confidence scores plus real-time sensor health checks; fusion weights inputs by confidence and switches to a reduced-sensor baseline (e.g., PPG + temperature) when one sensor degrades, rather than forcing degradation through fusion.** Start with post-collection scoring in firmware, expand to real-time within 2-3 sprints. *—The Pragmatist*
  * **Emit a confidence vector per sensor feeding a weighted ensemble; when PPG SNR or autocorrelation drops, its weight decays smoothly toward zero rather than failing.** Requires training the ensemble on clean and degraded streams. *—The Technical Expert*

* **Run artifact detection as a separate gating layer upstream of anomaly detection, not inside it.** Three perspectives independently argue that trying to disentangle artifact from pathology inside the anomaly model is the wrong factoring. A small, focused classifier trained on known artifact signatures (moisture frequency shift, low-SNR/high-jitter poor contact, sustained high-G motion) can flag a stream as "uncertain" and raise decision thresholds, keeping the problem in a model with clear training objectives.
  * **Artifact-detection as a gating layer running in parallel; when it fires, flag the stream "uncertain" and increase thresholds or request user context (was the user exercising?).** Isolates the problem to a smaller, focused model. *—The Technical Expert*
  * **Artifact signature library: label 500-1000 real-world artifacts (moisture PPG frequency shift, contact loss SNR/jitter), train a <5ms decision-tree classifier, suppress that sensor's contribution for 30-60 seconds.** Friction-free to ship in v1.0. *—The Pragmatist*
  * **Dual-path decision tree running in parallel with fusion: simple heuristics (accelerometer >3G sustained = likely false positive) route degraded cases to a pre-trained single-sensor model, clean cases to fusion.** Costs ~15-20% more inference per event but eliminates the worse-than-baseline scenario. *—The Pragmatist*

* **Design an explicit "unknown" state with human escalation rather than forcing a positive or negative when confidence is low.** Three perspectives agree that the safest failure mode during a degraded-sensor window is to refuse to guess: log the uncertainty locally, prompt the user to recheck wear or contact, and preserve a paper trail. This trades convenience for clinical safety and is the answer to "what does the failure mode look like during a real cardiac event" — the system says it does not know rather than silently miss or fabricate.
  * **Veto/borderline rule: if one sensor flags an anomaly while three firmly disagree, log it as a borderline case and ask the user for manual confirmation via app and haptic prompt.** Obvious verdicts stand, borderline cases get human review, not automated suppression. *—The Analogist*
  * **Explicit "unknown" states: when fusion confidence falls below a safety threshold, log uncertainty locally and prompt recalibration or support rather than emitting a potentially false result.** Gives a paper trail if a cardiac event occurs while sensors were degraded. *—The Technical Expert*
  * **When per-sensor confidence drops below threshold, flag the sensor and reweight voting to bypass it; escalate to user attention to recalibrate position.** *—The Devil's Advocate*

* **Tier the sensors by detection strength so a single loose contact cannot invalidate a legitimate detection.** Two perspectives propose a primary/secondary architecture rather than treating all four sensors equally, with PPG as primary for arrhythmia and the others as confirmation or context.
  * **Sensor hierarchy with a degraded-mode accuracy floor per sensor (PPG alone ~65% of arrhythmias vs. 92% fused); pre-test every single-sensor-out scenario in QA and communicate uncertainty ("weak confidence, wear steadier").** *—The Analogist*
  * **PPG primary, accelerometer secondary confirmation, temperature/microphone tertiary context; detection succeeds if primary + any secondary agree, and tertiary-only flags bounce to a higher confidence threshold.** *—The Technical Expert*

* **Stand up a continuous cross-validation loop that compares fusion output against per-sensor baselines during quiet windows.** One perspective adds a self-monitoring mechanism: during sleep and resting-heart-rate windows, compare fusion output to what individual sensors would predict in isolation; sharp divergence signals artifact, and logging those divergences feeds retraining.
  * **Background cross-validation during normal operation; log divergences between fusion output and individual-sensor predictions and feed them back into retraining to harden against real-world failure modes.** *—The Technical Expert*

---

### Question 2: Real-world performance vs. lab benchmarks

**Full question**: What assumptions does the ML model's accuracy benchmarking make about how users will actually wear the device (placement consistency, skin tone variation, motion artifacts from daily activity), and how much does real-world performance degrade from controlled test conditions?

* **Run multi-week field validation with diverse users in real settings before making any clinical claim, and report accuracy stratified by demographic and wear context rather than as a single aggregate.** All four perspectives converge on this. Lab benchmarks assume perfect contact, controlled lighting, and stationary subjects; real users run, shower, and sleep in the device. The shared recommendation is a 2-4 week beta with instrumented devices logging wear metadata, then publishing accuracy by skin tone, age, activity, and wear state. Several note this transparency also reduces downstream FDA liability.
  * **Gather a 2-week per-user baseline (100+ hours of actual wear), fine-tune anomaly thresholds per person, and publish confidence intervals stratified by wear state (sitting, walking, exercising, sleeping).** *—The Analogist*
  * **Multi-week field validation with diverse users across real settings before clinical claims; publish accuracy by demographic and use context, not just aggregate.** This transparency also protects against FDA liability. *—The Devil's Advocate*
  * **Phased validation: lab baseline, then a 20-30 user controlled field test (40+, diverse skin tones, varied activity) for 2-3 weeks with structured logging, capturing "deviation coefficients" for how much accuracy drops off lab-ideal placement.** Timeline 8-10 weeks; gives real degradation numbers before launch. *—The Pragmatist*
  * **Define a "deployment accuracy" metric distinct from lab metrics; run a 4-week beta with instrumented devices logging wear-tightness and motion-artifact metadata, then correlate against false positive/negative rates.** *—The Technical Expert*

* **Treat skin tone as a known, correctable PPG degradation rather than hoping the model learns it implicitly.** All four flag that darker skin tones degrade PPG because melanin absorbs the optical wavelengths, and the cluster offers both a measurement response (benchmark across Fitzpatrick I-VI) and an engineering response (preprocess the signal). The engineering fix is the distinctive contribution: it can recover accuracy rather than merely document the gap.
  * **Estimate skin tone from contact area and ambient light, then apply learned normalization curves per skin-tone group in PPG preprocessing; a standard medical-device technique that can recover 5-15% accuracy on darker skin.** *—The Technical Expert*
  * **Pre-register multi-population benchmarks (Fitzpatrick I-VI, age 40-55 vs. 55-70, athletes vs. sedentary); accept and publish gaps (e.g., 92% in 45-year-old runners vs. 78% in 68-year-olds with AFib) and test whether architectural changes narrow them.** *—The Analogist*
  * **Darker skin tones show degraded PPG from light-absorption differences; validate across demographics and publish by demographic.** *—The Devil's Advocate*

* **Budget for degradation up front by setting production thresholds below lab numbers, instead of assuming lab accuracy generalizes.** Two perspectives recommend pricing in a 5-15% real-world drop before launch and tuning alert logic to that budget, then measuring actual performance against it on the first cohort.
  * **Pre-launch degradation budget: assume a 5-15% drop, target an ~88% production threshold against a 92% lab sensitivity, then measure the first 1000 users.** One person, 3-4 weeks, auditing benchmarks and building a degradation model from PPG/motion-artifact literature. *—The Pragmatist*
  * **Assume lab accuracy will not generalize; the assumption that it does is "the hidden killer." Run field validation and an on-device drift detector that stores degraded samples for retraining.** *—The Devil's Advocate*

* **Model wrist position explicitly and gate inference on it, since real users wear the device rotated, loose, or upside down.** Two perspectives note positional drift as a distinct degradation axis and propose detecting position from accelerometer/gyroscope orientation to select the right noise baseline.
  * **Train a lightweight wrist-position model (accelerometer orientation + gyroscope) and gate heart-rate inference accordingly, since different positions have different baseline noise profiles.** *—The Technical Expert*
  * **"Continuity check" that flags abnormal week-over-week divergence from the user's baseline; if PPG quality drops 40% but temperature is stable, log a soft "device reposition suggested" alert rather than masking real events.** *—The Analogist*

* **Convert the deployed user base into a continuous, privacy-preserving validation engine using manual-confirmation labels.** Two perspectives propose shipping accuracy-proxy telemetry (no raw data leaving the device) where user confirm/deny actions in the companion app become ground-truth labels for cohort-specific firmware tuning.
  * **Privacy-preserving telemetry tracking signal quality, flagged alerts, manual corrections, and wear patterns; after 500+ users and 6+ months, push cohort-specific threshold updates where a skin tone or wear pattern underperforms.** ~2 backend engineers, 6 months. *—The Pragmatist*
  * **Ship accuracy-proxy signals, not raw data: user confirm/deny labels feed on-device retraining or firmware updates, building a real-world ground-truth corpus over 6 months.** *—The Technical Expert*

* **Stress-test against recorded real wear patterns, and consider A/B threshold testing in the field for faster tuning.** Two distinct field-learning tactics appear once each. One records actual users' wear behavior to drive realistic stress tests; the other ships competing thresholds to learn the tuning curve empirically.
  * **Instrument a test device with IMU-logged position data, record 50+ real users over 2 weeks (loose straps, sweat, rotation, sleep shifts), and correlate each artifact with degradation in the actual ML pipeline.** *—The Analogist*
  * **Ship two firmware variants to 100 early users (conservative vs. aggressive thresholds), measure false alarms and manual corrections, then swap and re-run.** Requires robust consent and telemetry; not suitable if privacy requirements are extremely strict. *—The Pragmatist*

---

### Question 3: Sensor fusion as jury deliberation — voting, weighting, and outliers

**Full question**: Jury systems require multiple independent assessors to reach a verdict, on the logic that diverse observers with different vantage points are less likely to share the same blind spots. PPG, accelerometer, temperature, and microphone are structurally analogous jurors, each with distinct detection strengths and failure modes. What does jury design research (optimal size, unanimity vs. supermajority thresholds, handling of outlier jurors) suggest about how to architect the sensor fusion layer's voting or weighting logic, particularly for edge cases where one sensor is occluded or degraded?

* **The jury independence assumption is the load-bearing risk: correlated sensor failure produces false consensus, so sensor pairs must be designed to cross-check independently.** This single-persona reframe is corroborated across the cluster and changes what gets prioritized. The jury analogy only delivers its benefit when jurors are independent; a shared environmental factor (rising ambient temperature, moisture) can push several sensors the same way and manufacture agreement. The design response is to pair sensors as adversaries that validate each other, and to prefer outlier-robust consensus over naive majority voting.
  * **Sensors can reach false consensus when they drift together (e.g., ambient temperature). Design sensor pairs as adversaries: PPG + temperature validate cardiac signals independent of motion; accelerometer + microphone cross-check breathing independent of HR; if any pair disagrees, lower confidence and escalate.** *—The Devil's Advocate*
  * **Outlier-robust Bayesian consensus: each sensor contributes a likelihood; when one is an outlier relative to others, reduce its weight in the posterior, handling degraded sensors without manual thresholds.** *—The Technical Expert*
  * **Dual-sensor redundancy: run two independent fusion chains (PPG + temperature; accelerometer + microphone) and require agreement before flagging; disagreement is inconclusive and escalates to review.** Nearly 2x inference; ship as optional "clinical mode." *—The Pragmatist*

* **Start with weighted supermajority voting that re-normalizes when a sensor is degraded, so no single sensor can deadlock or veto.** The most convergent and immediately implementable mechanism. Assign per-sensor base weights, trigger on a weighted threshold, and drop a degraded sensor's weight to zero while adjusting the threshold proportionally over the remaining sensors. Tune thresholds to the liability posture (cardiac users tolerate more false positives than false negatives) and by context (microphone weight rises during sleep).
  * **Weighted supermajority: PPG 0.4 / accel 0.3 / temp 0.2 / mic 0.1, flag above 0.6; a degraded sensor drops to zero and the threshold re-normalizes over the remaining three, avoiding hung-jury deadlock.** 2-3 weeks. *—The Pragmatist*
  * **2+ sensors = 85% confidence, 3/4 = 95%, 1/4 = investigation not alert; vary thresholds by context, raising microphone weight during sleep when PPG baseline variability rises.** *—The Technical Expert*
  * **Choose between "any 2 agree" (sensitive, more false positives) and "all 4 agree" (specific, misses subtle events) to match liability posture; cardiac users tolerate more false alarms than false negatives.** Low effort uses simple majority; high effort adds witness-confidence weighting (PPG reliable, microphone fragile). *—The Analogist*

* **Right-size the "jury" empirically and respect that different anomalies have different decisive sensors.** Two perspectives push beyond uniform voting: test which sensor subsets actually carry detection, and structure consensus around the sensors that matter for each anomaly type.
  * **Synthetic degradation testing: disable each sensor combination against a held-out anomaly dataset; 3-sensor ensembles (PPG+accel+temp) likely match 4-sensor with faster inference and lower power.** *—The Technical Expert*
  * **Hierarchical consensus by class: Class A (PPG for cardiac, microphone for apnea) must vote; Class B (accel, temp) support; rule is Class A unanimous OR Class A + any Class B; if PPG is degraded, require temperature-trend agreement.** ~5-6 weeks. *—The Pragmatist*

* **Quarantine persistently outlying sensors and surface chronic offenders as a hardware-quality signal to the user.** Two perspectives propose disciplining jurors that are repeatedly out of step: down-weight or temporarily quarantine a sensor that keeps flagging anomalies the others reject, and escalate chronic cases as a maintenance prompt.
  * **Outlier quarantine: down-weight or quarantine a sensor that flags anomalies the other three don't confirm; if quarantined >30% of wear time, flag it as a hardware quality issue (contact check, cleaning).** 2-3 weeks. *—The Pragmatist*
  * **Veto/dissent mechanism: a lone-flagging sensor against three agreeing sensors becomes a borderline case routed to manual user confirmation, mirroring appeal systems.** *—The Analogist*

* **Stagger voting over time instead of demanding simultaneous consensus, letting fast sensors lead and slower ones confirm.** One perspective offers a latency-aware refinement that also filters transient artifacts.
  * **Temporal sequencing: PPG votes first (fastest); wait 2-5 seconds for accelerometer and temperature; concurrence alerts immediately, disagreement downgrades to a yellow flag.** ~3 weeks, low overhead. *—The Pragmatist*

* **Weight sensors by recent measured reliability, not just static priors, since sensors drift.** Two perspectives propose adapting weights from recent performance and from accumulated user feedback.
  * **Time-dependent weighting: if PPG's past-24h false-positive rate is 8% vs. a 3% historical average, temporarily reduce its weight; requires on-device logging of per-sensor accuracy proxies.** *—The Technical Expert*
  * **Evolve voting rules from each user's 3-month history: if a user gets repeated unconfirmed false alerts, raise thresholds; if the device nearly misses real events, lower sensitivity — reshaping voting without retraining the net.** *—The Analogist*

* **Log every sensor's vote per event now, because explainability is nearly free today and load-bearing for the FDA pathway later.** A single forward-looking insight: regulatory submission and clinician trust require explaining why an alert fired, and the cheap enabling step is recording per-sensor yes/no votes from v1.0.
  * **Log which sensors voted yes/no per event so you can later say "PPG detected a rhythm change; temperature and accelerometer agreed, microphone saw no breathing change." Minimal overhead, critical for clinician review and regulatory submission.** *—The Pragmatist*

---

**Questions addressed**: 3
**Personas contributing**: The Analogist, The Devil's Advocate, The Pragmatist, The Technical Expert
**Total synthesized insights**: 18

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_sensor-fusion-detection-reliability"
persona: "The Analogist"
---

# Topic Cluster 08: Sensor Fusion & Detection Reliability - The Analogist

---

## Multi-Sensor Fusion as a Reliability Multiplier with a Fragility Tail

### Q1.1: Artifact vs. Physiological Anomaly Detection
* **Summary:** Airlines use "cross-check" protocols where pilots verify suspicious instrument readings against multiple independent systems before acting. Apply this model: flag anomalies only when sensors *independently* exceed thresholds, treating disagreement as artifact. When PPG shows arrhythmia but accelerometer shows motion and no breath change, the wearable should suppress the alert—just as pilots ignore a faulty altimeter when three other instruments agree. Train a confidence scorer by comparing sensor correlations in known benign motion (exercise, vibration) versus pathological events, then quarantine high-disagreement zones until post-hoc validation confirms real risk.

### Q1.2: Graceful Degradation Under Single-Sensor Failure
* **Summary:** Telecommunications networks designed their mesh topologies after studying ant colonies: when one pathway fails, the colony doesn't panic but rewires through neighbors. For wearables, build a "sensor hierarchy" where each sensor has a degraded-mode accuracy floor (e.g., PPG alone detects 65% of arrhythmias vs. 92% fused). Pre-test every single-sensor-out scenario during QA, set explicit alert thresholds per modality, and communicate uncertainty to the app—"weak confidence, wear steadier" beats a false alarm when a sensor loosens mid-sprint.

### Q1.3: Real-World Variability Detection
* **Summary:** Medical imaging technicians discovered that radiologists' diagnostic accuracy dropped 30% on Monday mornings—not skill loss, but fatigue and context. Your fusion model faces analogous "Monday morning" problems: first wearing, temperature extremes, wet skin. Mirror quality-control practices from film sets: build a "continuity check" that flags when sensor readings diverge abnormally from the user's baseline week-over-week. If PPG quality drops 40% but temperature is stable, log a soft alert ("device reposition suggested") rather than suppressing real events—let the user correct conditions instead of the model masking truth.

---

## Real-World Performance vs. Lab Benchmarks

### Q2.1: Bridging the Lab-to-Field Gap via Wear-State Normalization
* **Summary:** Agricultural ML crop-yield models fail dramatically in new fields because soil composition, irrigation timing, and microclimate weren't in training data. Your health model faces identical "domain shift." Use techniques from environmental monitoring: gather 2-week baseline data from each user (100+ hours of their actual daily wear), then fine-tune anomaly thresholds per-person, accounting for their unique skin tone, sweat patterns, and daily activity levels. Publish not just accuracy but confidence intervals stratified by wear state (sitting, walking, exercising, sleeping), so clinical partners understand exactly where the model degrades.

### Q2.2: Stress-Testing Against Wear Artifact Patterns
* **Summary:** Aircraft seat design evolved from studying how real pilots slouch and shift during long flights—not from manikins in wind tunnels. Test your device against video-recorded wear patterns from 50+ actual users over 2 weeks: loose straps, sweat accumulation, device rotation, sleeping position shifts. Instrument a test device with IMU-logged position data, then correlate each artifact with signal degradation in your actual ML pipeline. This mirrors how automotive safety engineers crash real cars at different angles, not just certified test conditions.

### Q2.3: Multi-Population Calibration as Fairness Assurance
* **Summary:** The HIV test "Undetectable=Untransmittable" campaign succeeded because scientists insisted on testing across sex, age, and ethnicity before declaring victory. For wearables, pre-register multi-population benchmarks (age 40-55 vs. 55-70; skin tones spanning Fitzpatrick I-VI; athletes vs. sedentary users). Accept that accuracy may be 92% in 45-year-old runners but 78% in 68-year-old users with atrial fibrillation—publish these gaps transparently and explore whether architectural changes (more temperature weighting?) can narrow them.

---

## Multi-Sensor Anomaly Detection as Jury Deliberation

### Q3.1: Jury Size and Unanimity Thresholds
* **Summary:** Jury research shows 6-member panels make faster decisions but 12-member panels deliberate more robustly and overturn wrongful convictions more often. Your four sensors form a small jury; consider whether "any 2 sensors agree = alert" (fast, sensitive, high false positives) or "all 4 agree = alert" (slow, specific, misses subtle events) matches your liability posture. Cardiac patients may tolerate more false alarms than false negatives—analog to capital trials where jury unanimity protects the accused. Let effort level tune this: low effort uses simple majority voting; high effort adds witness confidence weighting (PPG is always reliable, microphone is fragile).

### Q3.2: Outlier Handling and Sensor Veto Power
* **Summary:** Supreme Court justices study "dissent mechanisms"—when one judge writes a strong contrary opinion, it flags potential errors the majority missed. Build a veto rule where if one sensor produces an anomaly while the other three firmly disagree, log it as a "borderline case" and ask the user for manual confirmation via the app (wearable vibrates: "Check your heart rate—device detected possible anomaly"). This mirrors courtroom appeal systems: obvious verdicts stand, borderline cases get human review, not automated suppression.

### Q3.3: Evolving Jury Rules via Feedback
* **Summary:** Jury selection itself evolved after studying conviction rates: moving from all-male to mixed-gender juries changed deliberation dynamics and reduced wrongful convictions. For wearables, use each user's 3-month history to learn whether PPG-majority voting or microphone-dominant weighting reduces repeat false alarms. If a user gets 10 false alerts but never confirms them, gradually shift thresholds upward. If another user catches real events the device almost missed, lower sensitivity. This is algorithmic jury duty: let user feedback reshape voting rules without retraining the neural net.

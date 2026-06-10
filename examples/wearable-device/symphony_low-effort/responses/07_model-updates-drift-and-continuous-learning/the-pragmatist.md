---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "07_model-updates-drift-and-continuous-learning"
persona: "The Pragmatist"
---

# Model Updates, Drift, and Continuous Learning - The Pragmatist

---

## Q1: Update lifecycle — firmware-bundled batches vs. federated learning, against the data starvation problem

* **Start with firmware-bundled updates; federated learning is a Phase 2 investment.** Federated learning requires a client-side training runtime, gradient aggregation infrastructure, and differential privacy tooling — none of which your 3-person ML team can own in 18 months while also hitting accuracy targets. A practical starting cadence is quarterly OTA firmware updates bundling retrained models validated on a held-out lab dataset. Ship the federated learning architecture as a design decision documented now but implemented later.

* **Use on-device performance proxies to validate updates without touching raw data.** You do not need raw biometrics to know if a new model is working. Instrument the firmware to log anonymized, aggregated metrics: alert rate per day, confidence score distributions, and inference latency. Sync only these summary statistics to your backend. A new model version that shifts alert rate distribution significantly is a flag worth investigating before wider rollout — no privacy exposure required.

* **Treat OTA model versioning as a first-class firmware concern from day one.** Build the version slot and rollback mechanism into the firmware architecture before you ship a single device. Two model slots (active + staged), a watchdog that tracks alert rates post-update for 72 hours, and an automatic rollback if rates deviate beyond a threshold. This is a two-week firmware investment that will save you from catastrophic silent failures in the field.

* **The competitive gap with cloud-processing rivals is real but addressable.** A practical approach: partner with 2-3 cardiologists for a voluntary opt-in research cohort where users explicitly consent to uploading labelled events. Even 500 confirmed arrhythmia events per year is a trainable signal. This gives you ground-truth data for model retraining without compromising your core privacy architecture — the privacy-by-default device coexists with an opt-in research mode.

* **Quantify the tradeoff before committing to an update cadence.** Run a simulation: take your current training dataset, hold out the most recent 20%, train on the older 80%, and measure accuracy degradation. If accuracy drops 3% over 6 months of data age, quarterly updates are probably sufficient. If it drops 10%, you need a faster cycle. Do this analysis now — it sets the update cadence requirement and directly informs how much MLOps infrastructure you actually need.

---

## Q2: Longitudinal model drift in the 40+ population

* **Build a personal baseline recalibration mechanism into the device from launch.** The most tractable form of drift detection at this scale is intra-user: track each individual's 30-day rolling baseline for key signal features (resting HR, HRV, SpO2 variance, respiratory rate). When a user's current features deviate meaningfully from their personal history — beyond what's explained by activity or temperature — flag it as a potential baseline shift. This does not require population-level data and runs entirely on-device with a small statistical footprint.

* **A practical drift detection architecture: two-model design.** Run a lightweight anomaly detector alongside the primary arrhythmia classifier. The anomaly detector's job is not to classify events but to detect when the input distribution has shifted significantly from what the primary model was trained on. When it fires, the device can prompt the user to do a 5-minute calibration session. This separates the "is this an arrhythmia?" question from the "is my model still calibrated?" question — and makes recalibration user-initiated rather than silent.

* **On population-level drift: your telemetry metadata is the substitute for raw data.** You cannot monitor raw signal distribution across deployed devices, but you can monitor alert rates segmented by firmware version and anonymized demographic cohort. A model version that starts generating 40% more alerts in users aged 60-70 six months post-deployment is telling you something about drift — you just need to build the backend to surface it. Design this dashboard before you have 10,000 devices in the field, not after.

* **The 40+ population's physiological changes are partially predictable — use that.** Cardiac and respiratory baselines do not shift randomly; they tend to shift directionally with age, medication changes, and seasonal effects. Build domain knowledge into your recalibration heuristics: if a user's resting HR has trended upward 8 bpm over 90 days, that is expected drift, not a failure mode. Consult with your clinical advisors now to enumerate the most common drift patterns in this population and encode them as adjustment rules. This is cheaper than retraining and explainable to regulators.

---

## Q3: A firmware update cycle that feels like continuous learning

* **The process at its best looks like a validated clinical workflow applied to software.** Each quarterly update cycle starts with the ML team pulling aggregated, anonymized device telemetry — alert rates, confidence distributions, calibration event logs. They identify any models underperforming against the lab benchmark, retrain using the updated dataset (including any opt-in research cohort events), then validate against a held-out test set with a pre-specified performance threshold. Updates only ship if they meet or exceed the previous model version on that threshold. The firmware team handles the OTA delivery, version slot management, and 72-hour rollback watchdog. This is a defined, repeatable process — not a black box.

* **The user experience of a good update should be invisible except for a meaningful moment of feedback.** A practical approach: after a successful model update, the companion app surfaces a brief, plain-language summary: "Your device received a health monitoring update. It now better recognizes a pattern associated with atrial fibrillation that affects about 12% of people in your age group." That's it — no version numbers, no technical details. The user feels informed, not burdened. The measurable result is that for a user who had a borderline event six weeks ago that was previously missed, the updated model catches it. That is the version of this that matters.

* **Clinician trust is built through transparent validation documentation, not marketing.** If you want clinicians to trust the update cycle enough to recommend your device to patients, publish a brief technical summary with each major model release: training dataset size and composition, key performance metrics (sensitivity/specificity on holdout set), and what changed from the prior version. A two-page PDF released alongside each firmware version is a low-cost investment in clinical credibility. Start building this documentation habit now — it directly supports your future 510(k) application.

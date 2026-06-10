---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "01_defining-success-and-the-real-objective"
persona: "The Pragmatist"
---

# Defining Success and the Real Objective - The Pragmatist

---

## Q1: Which constraint is genuinely load-bearing among accuracy, latency, power, and privacy?

* **Sensitivity-at-specificity is your actual north star, not "balance."** For arrhythmia detection in a consumer device targeting users with family cardiac history, a false negative that misses a real event is the catastrophic failure mode. A practical approach: anchor your success metric at ≥90% sensitivity at ≥70% specificity for clinically validated arrhythmia patterns. Everything else — power budget, latency ceiling, model size — becomes a constraint you work backward from that anchor. "Balance" is a product management word; engineers need a ranked priority stack.

* **Latency is almost certainly self-imposed at your clinical target.** Cardiac arrhythmia events lasting long enough to be clinically meaningful (AFib, sustained SVT) persist for minutes, not milliseconds. A 30-second inference window with a 5-second processing lag is entirely acceptable. To make power budgeting feasible, explicitly define that real-time continuous inference is not a requirement — triggered inference on anomalous PPG morphology is. This single decision can reduce your NPU active-time budget by 60-70%.

* **Power consumption is the constraint that kills the product, not accuracy.** A 7-day battery life is a hard market requirement for this demographic — adults 40+ comparing against Apple Watch and Garmin. A practical starting point: build a two-stage detection pipeline. Stage 1 runs a tiny always-on classifier (< 1mW) on the accelerometer and raw PPG envelope to gate Stage 2, which runs the full ML inference only when Stage 1 flags a candidate event. You get to preserve model accuracy while slashing average power draw.

* **Privacy is load-bearing only for the clinical partnership path, not the consumer launch.** For the consumer wellness launch, privacy is a marketing differentiator, not a hard technical constraint — you could technically sync processed features and still comply with consumer privacy law. A practical approach: design the data pipeline so raw biometric data physically cannot leave the device (write-once encrypted storage, no export API), then document this as an architectural guarantee. That documentation becomes the foundation for future HIPAA BAA conversations with clinical partners, at no additional engineering cost today.

---

## Q2: Defining "anomaly" and who owns the definition

* **Start with published clinical criteria, then version-control every subsequent deviation.** AFib is defined in cardiology literature by absent P-waves and irregular R-R intervals; sleep apnea events are defined by airflow cessation plus oxygen desaturation. These are your initial operational definitions. A practical approach: encode these criteria explicitly in a versioned model specification document, not just in the model weights. When you tune thresholds based on field data, the spec document version changes — this creates the audit trail you'll need for future regulatory submissions and protects you legally if an alert is contested.

* **The algorithm owns the definition in practice, but the team must own the algorithm's accountability.** When your ML model flags a 14-beat run of irregular RR intervals as an arrhythmia event, no clinical literature or regulatory guideline is present at that moment — your model is. To make this accountable, build an inference explainability layer that logs which signal features triggered each alert, stored on-device alongside the alert timestamp. This is not for the user; it is for your internal review pipeline and eventual FDA submission. Explainability after the fact is far cheaper than retraining after a liability event.

* **Resolve the conflict between clinical literature and algorithm output through a tiered alert architecture.** High-confidence detections (e.g., sustained irregular rhythm > 30 seconds) trigger a primary alert. Lower-confidence detections (borderline SpO2 drop without corroborating accelerometer stillness) trigger a log entry reviewed in a weekly summary, not a real-time alert. This tiered approach is implementable in one sprint, sidesteps the philosophical question of who owns the definition, and dramatically reduces false positive alert fatigue in your user population.

* **User-owned definition is a trap for a Series A company.** Allowing users to customize anomaly thresholds feels empowering but creates a product liability surface area you cannot manage with 12 engineers. A practical alternative: give users a single sensitivity dial with three settings (Conservative / Standard / Sensitive), backed by pre-validated threshold sets your ML team has tested against your training dataset. Users feel agency; you control the parameter space.

---

## Q3: Bridging the gap between receiving an alert and knowing what to do next

* **The alert UX is a clinical handoff, not a notification.** When the device fires an arrhythmia alert, the user's immediate need is not information — it is a decision tree: "Is this an emergency? Do I call 911? Do I call my doctor? Do I do nothing?" A practical approach: design three escalation tiers into the alert itself. Tier 1 (unusual pattern, monitor): companion app shows a calm summary with a "log for doctor" CTA. Tier 2 (sustained anomaly): app shows a "Contact your doctor today" prompt with one-tap access to their stored provider contact. Tier 3 (pattern consistent with acute event): app shows "Call 911 now" with the user's location pre-populated. This costs one additional UX sprint and substantially reduces the user's alone-with-their-anxiety moment.

* **Design for the worst-case user, not the median user.** Your demographic (adults 40+ with cardiac family history) includes people who will be frightened by any alert and people who will dismiss any alert. A practical approach: in your first closed beta, recruit 20 users from that demographic and run structured alert-response interviews. Ask them to talk aloud when they receive a simulated alert. You will almost certainly discover that the information hierarchy you designed for an informed user does not serve the anxious user at all. Run this research before you finalize alert copy, not after.

* **Pre-load context at onboarding, not at alert time.** The companion app onboarding flow should require users to complete a 5-minute "health profile" — family history of cardiac events, whether they have a cardiologist, emergency contact. This data is stored locally and surfaced by the alert logic to personalize the alert response recommendation. A user who has a cardiologist on file gets a different Tier 2 CTA than a user who doesn't. This is implementable with existing app infrastructure, not a new feature build.

* **Build a post-alert debrief loop into the product from day one.** After any alert, the companion app prompts the user 24 hours later: "Did you follow up? How do you feel?" This is not just UX — it is your ground truth data pipeline for model improvement. Users who experienced a genuine cardiac event and followed up with a cardiologist who confirmed it are your most valuable training signal. Design this collection mechanism early; retrofitting it after launch is much harder.

---

## Q4: The smallest experiment that moves toward the most ambitious vision

* **Run a 48-hour power audit on your NPU before any model architecture decisions.** The most common failure mode for teams in your position is building the ML pipeline first, then discovering the power budget is blown, then spending three months rearchitecting. A practical approach: instrument your current NPU reference hardware to log actual power draw per inference call at your target sampling rate. Run it for 48 hours with a representative sensor workload. You will know within two weeks whether your 7-day battery target is achievable with your current NPU choice — or whether you need to respecify hardware now, while it is still cheap to change.

* **Validate your sensor fusion signal quality before building the anomaly classifier.** A focused two-week experiment: collect simultaneous PPG, accelerometer, SpO2, and skin temperature readings from 20 volunteer subjects during a structured protocol — 10 minutes rest, 5 minutes light activity, 5 minutes sleep-simulated stillness. Label the data manually. This answers whether your sensor combination actually captures the physiological signal you need, independent of ML model quality. If the raw signal is noisy or the sensors don't agree, you have a hardware problem, not an ML problem, and you need to know that now.

* **Build the simplest possible arrhythmia classifier and test its alert cadence on internal users.** Implement a rule-based RR-interval irregularity detector — not ML, just signal processing thresholds — and run it on your hardware with 5 team members wearing the device for one week. Count how many alerts each person receives. If anyone gets more than two alerts per day, your false positive rate is already too high for your target demographic before you've written a single line of neural network code. This experiment takes one week of firmware engineering and gives you a baseline false positive rate to beat with the ML approach.

* **Prototype the companion app alert UX with paper before writing any app code.** Create a clickable Figma prototype of the three-tier alert flow described above. Run it with 10 people from your target demographic in a one-hour moderated session. You will learn more about alert comprehension, anxiety response, and actionability in those 10 sessions than in six months of post-launch analytics. The cost is one week of a designer's time. This directly feeds your most ambitious vision — a device that people trust and act on — because trust is built at the alert moment, not at the sensor level.

---

## Q5: Symbiotic intelligence — a genuinely individualized health model

* **Start with individualization as a model update mechanism, not a philosophical stance.** The most feasible path to a device that "knows you" is a firmware update cadence that incorporates aggregate de-identified signal patterns from your user cohort to improve baseline models, combined with an on-device personalization layer that tunes alert thresholds to the individual's 30-day baseline. This is not novel architecture — it is federated learning with a local fine-tuning step. A practical approach: define the federated update protocol in your current architecture so the data pipeline supports it, even if you don't activate it until post-Series B. The design decision costs almost nothing now; retrofitting it costs months later.

* **"Irreplaceable because of relationship" requires longitudinal data that persists across device replacements.** If the symbiotic vision is real, the user's health model must survive hardware upgrades. A practical approach: design an encrypted local-to-local migration protocol (device-to-device over Bluetooth, no cloud) from day one. When a user upgrades to your gen-2 device, their 18 months of on-device health history migrates with them. This is a competitive moat — Apple cannot offer this without cloud dependency — and it is achievable with your current firmware team in roughly one quarter of work.

* **To make this feasible without cloud processing, you need a realistic on-device storage budget.** A personalized health model that evolves over time generates model checkpoints, anomaly logs, and signal statistics. Estimate your storage requirements concretely: if you store one compressed model checkpoint per week for two years plus anomaly event logs at 1KB per event, what does that cost in flash storage? Run this arithmetic before choosing your MCU, because the storage BOM cost is often overlooked until hardware is already specified. To make the symbiotic vision architecturally sound, you need at least 128MB of non-volatile storage — price that into your BOM now.

* **The "irreplaceable relationship" is a retention story, but it needs a churn breakpoint.** The most ambitious version of this device only works if users wear it continuously for 12+ months. A practical approach: define what "meaningful individualization" looks like at 30 days, 90 days, and 12 months of wear, with measurable detection accuracy improvements at each milestone. Then build that milestone progression into the companion app as a visible user-facing narrative — "Your health baseline is now 90% personalized." This converts an abstract architectural goal into a concrete retention mechanism, which is also your Series B fundraising story.

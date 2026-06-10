---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "05_model-update-strategy-long-term-maintainability"
persona: "The Devil's Advocate"
---

# Model Update Strategy & Long-Term Maintainability - The Devil's Advocate

---

## Update Mechanism Unit Economics: On-Device Fine-Tuning vs. Federated Learning vs. Firmware OTA

* **Firmware OTA alone creates a versioning liability nightmare.** You claim split-image contracts prevent silent behavior changes, but how do you actually enforce this when your ML team iterates daily and pushes bug fixes? Have we considered that even a "minor" threshold adjustment in anomaly detection looks silent to users but changes alert frequency? Recommend building automated regression tests against labeled historical user data *before* each release, and storing a manifest of what changed (sensitivity delta, false-positive rate shift) in the firmware itself—users and regulators deserve to know.

* **Federated learning's bandwidth cost might explode at scale.** Sending gradient updates from 100k devices weekly seems lighter than raw data, but multiplied across a 12-month fleet, network infrastructure and inference validation becomes non-trivial. Have you stress-tested what happens when 30% of devices are offline during the aggregation window? One mitigation: stratified gradient collection—only devices with high-confidence detections contribute, reducing variance and cutting transmission load by half.

* **On-device fine-tuning starves your safety valve.** If every device locally adapts the model, you lose the ability to detect systematic drift. What if 10% of users have miscalibrated sensors introducing consistent bias? A fine-tuned model amplifies this silently. Counter-measure: require devices to log model-update telemetry (not raw health data)—gradient norms, calibration metrics, detected anomaly prevalence—so you can spot distributed drift patterns without touching health data.

* **Storage constraints kill both firmware updates and model versioning.** A typical microcontroller has 256KB flash; compressing dual-model firmware images works until you need a rollback. Have we considered whether users can refuse updates? If yes, you inherit a fleet running three model versions simultaneously, multiplying your post-market surveillance burden. Mitigation: design minimum hardware spec that includes 1MB flash, and enforce automatic updates on clinical-grade devices (accept consumer friction).

* **The "realistic minimum hardware" question masks engineering debt.** NPU FLOPS might support federated fine-tuning, but validation, versioning, and secure update delivery add 3-6 months of firmware engineering. At 18 months runway with 4 firmware engineers, this competes directly with sensor fusion and battery optimization. Have we prioritized whether model updates matter more than the core detection pipeline? Recommend starting with simple firmware OTA, monitoring real-world drift manually for 6 months, *then* investing in federated learning if drift is a genuine problem.

---

## Model Drift and Personalization Drift Without Raw-Data Feedback Loops

* **Silent model degradation is a ticking liability bomb.** Eighteen months without raw-data feedback means your team sees zero information about whether alerts remain accurate as users age, change fitness levels, or start medications. Have we considered that a user on new beta-blockers has a completely different baseline cardiac profile, yet your model has no way to detect its predictions are now 40% wrong? Mitigation: require users to manually log major health changes (medication, diagnosis) in the app, treat these as semi-supervised calibration signals without exposing raw heart rate—still privacy-preserving but grounds your drift detection in real clinical context.

* **Personalization without feedback locks users into initial calibration.** The device learns the user's baseline once, then never adapts. What if a 62-year-old's resting heart rate shifts 5 bpm due to cardiovascular fitness from running? The model interprets this as a new anomaly. Have we thought through user frustration when they can't tell the device "I'm healthier now, that's a false alarm"? Recommend offering one annual recalibration event where users spend 30 minutes in a quiet environment re-establishing baseline—simple, privacy-preserving, and user-controlable.

* **No feedback loop invites regulatory whiplash.** When you submit a 510(k) for clinical claims, the FDA will ask: "What evidence shows your model remains clinically accurate post-launch?" Admitting you have zero real-world performance data is a red flag. Have we considered running a parallel gold-standard sensor (clinical ECG, polysomnography) on a cohort of 100+ users for 12 months post-launch, feeding *only* aggregate performance metrics (sensitivity/specificity at 6mo, 12mo) back to your model validation team without ever seeing individual raw data? This gives regulators confidence and guides model recalibration without privacy violation.

* **Degradation thresholds are ambiguous and dangerous.** How does your team know when drift has become "too much"? If sensitivity drops from 89% to 85%, is that acceptable? Who makes that call, and how do users know to expect it? Mitigation: build a hidden diagnostic mode users can opt into—the device flags when it detects structural drift (e.g., "Your baseline activity pattern has shifted; recalibrate for better accuracy") and prompts recalibration, giving users agency without exposing the actual statistics.

---

## Firmware Update as a Trust Event and Governance Question

* **Non-updaters become liability orphans.** You propose firmware-only updates, but storage-constrained devices or users with poor connectivity won't update for months. Have we considered that you're then maintaining support for a fragmented fleet running multiple detection models, each with different false-positive rates and alert thresholds? Regulators will ask which version you validated for clinical use. Mitigation: make updates mandatory for clinical features (arrhythmia alerts), optional for wellness features (sleep tracking). Or design a "minimum viable model" that ships read-only and cannot be updated, reducing fragmentation to a single clinical baseline.

* **Transparency theater without actual choice.** Publishing release notes ("Model sensitivity improved") sounds good, but users can't assess whether the new model is actually better *for them*. One user's "improvement" (more alerts) is another's harassment. Have we considered A/B testing new models on a cohort before fleet-wide rollout? Cost: 2-3 weeks delay. Benefit: real evidence that changes improve outcomes, not just intent. Mitigation: beta-test critical updates on 5% of fleet, measure alert volume and user satisfaction before rollout.

* **Alert pattern changes destroy calibrated behavior.** A user has learned: "If I'm stressed, I get a false alert around 8pm. If it's real, it repeats." Then you ship an update that doubles sensitivity. Now the user's mental model is wrong, and they either ignore real alerts or become hypervigilant. Have we thought about reverse-timeline compatibility—where the new model predicts what the old model would have detected, and only flags *new* anomalies as "detected by improved model"? This lets users understand what's actually new vs. what you've always detected.

* **Governance vacuum invites distrust.** Who decides: the ML team? Product? Clinicians? Users? Have we designed a review board (even informal) that includes a non-company clinician reviewing every update for clinical safety before rollout? Or at minimum, a public changelog showing which clinician expert reviewed each version? This converts updates from a black-box vendor decision into a transparent governance process. Cost: 3-5 days per release. Benefit: clinical credibility and user trust that someone external is watching for bad changes.

---

## Federated Learning as Just-In-Time Manufacturing

* **The lean manufacturing analogy breaks down at the feedback-loop stage.** Toyota's system works because parts have objective quality metrics (dimensions, tolerances) and instant feedback when something is wrong. User physiologies are *not* fungible parts—they're heterogeneous and silent. Have we considered that a patient with paroxysmal atrial fibrillation (rare, unpredictable events) will contribute almost no gradient signal, while a patient with persistent afib trains your model heavily? You've created a "supply chain" biased toward the most-anomalous users. Mitigation: stratified gradient collection—oversample users with diverse physiologies, undersample those with already-well-detected patterns.

* **Supply disruption in federated learning looks like device churn.** Toyota's system fails if a factory goes offline; federated learning fails if devices drop offline mid-aggregation. But worse: devices don't fail predictably. A user with poor connectivity might contribute gradients every third week. What happens to model stability when 30% of your "supply" is intermittent? Have we designed Byzantine-robust aggregation (e.g., median aggregation, clipping extreme gradients) to handle noisy/delayed updates? Without this, one device sending corrupted data can poison the global model. Cost: implement robust aggregation. Benefit: resilience to real-world connectivity chaos.

* **Quality variance across "parts" (physiologies) is structural, not solvable.** Toyota solves variance through standardization—parts must meet specs. Your "parts" are human hearts, which don't standardize. A 45-year-old athlete has completely different ECG norms than a 65-year-old with hypertension. Federated learning assumes shared model parameters are beneficial, but have we considered that a single global model is fundamentally mismatched to a diverse fleet? Mitigation: cluster-based federated learning—learn separate model variants for "athlete" vs. "clinical risk" vs. "recovering post-op" phenotypes, then route each device's inference to its cohort model.

* **Feedback loops in manufacturing are months; medical device feedback loops are years.** Toyota adjusts production in days. Your federated model updates weekly or monthly, but detecting whether an update actually *improved* clinical outcomes takes 12+ months and specialized validation. Have we considered the ethical problem of continuously pushing model updates without knowing their clinical impact? Federated learning creates an illusion of responsiveness while hiding the fact that you're flying blind on safety. Mitigation: run every fleet update through a mandatory 30-day "shadow mode" where new model runs in parallel, logs predictions, and never changes alerts—only then roll out if shadow metrics look good.

* **Inventory reduction (the core of lean) has no analog in federated learning.** Toyota eliminates warehouses; federated learning eliminates central data warehouses. But lean *also* depends on just-in-time *demand* visibility—knowing what customers want before building. Have we thought about what federated learning's "demand" would be? Models that adapt to real-world drift faster? Better personalization? If we don't have a clear success metric, we're optimizing for engineering complexity, not business value. Counter-proposal: start with centralized model updates (simpler) and only move to federated learning if real-world drift becomes a demonstrated problem, not a speculative one.

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "05_model-update-strategy-long-term-maintainability"
persona: "The Pragmatist"
---

# Model Update Strategy & Long-Term Maintainability - The Pragmatist

---

## Update Mechanism Unit Economics: On-Device Fine-Tuning vs. Federated Learning vs. Firmware OTA

* **Start with firmware OTA; defer fine-tuning.** Firmware updates are operationally simpler and cost-predictable at your scale (12 engineers, 18-month runway). Your immediate payoff is versioning discipline: ship models with explicit version hashes in firmware, maintain a detailed changelog of what each model version detects, and log which version every device runs. This creates the audit trail regulators want. Fine-tuning and federated learning add complexity (CPU/RAM/thermal budget during updates, learning infrastructure) that doesn't justify the engineering cost until you have clear clinical evidence that model drift is a real problem after 12+ months of field data.

* **Graduated complexity ladder.** A practical pathway: Phase 1 (now) — firmware OTA only, no fine-tuning. Phase 2 (month 12, post-launch data review) — if drift is significant, prototype on-device fine-tuning on a small cohort (confidently managed devices with good connectivity). Phase 3 (if clinical partnership materializes) — consider federated learning, but only if regulatory compliance requires learning without cloud data. This delays the hardest engineering until you know you need it.

* **Bandwidth is your real constraint, not computation.** Federated learning moves the problem from storage (raw data stays on-device) to communication (gradient uploads). At fleet scale with varied connectivity, orchestrating hundreds of gradient updates becomes a logistics nightmare. Firmware OTA is one binary push per device; federated learning requires enrollment, retry logic, consensus, and inference during battery-sensitive hours. Start simple: a monthly firmware push during off-peak hours, monitored adoption dashboards to catch update failures, and a mandatory update mechanism for critical safety fixes.

* **Split versioning: firmware != model.** Build a versioning contract where firmware and ML models are independently versioned but timestamped together. Firmware v2.1.3 ships with model_v18.onnx. When you later release Firmware v2.2 with the same model, the audit log shows no detection-logic change. This separation lets you patch bugs (firmware) without retraining and swap models (model update) without firmware bloat. At post-market surveillance review, regulators see exactly which versions did what.

* **Minimum hardware for fine-tuning: accept constraints upfront.** If your NPU has <512MB RAM and can't spare compute during 8pm-6am "learning windows," fine-tuning is off the table. For federated gradients, you need at least 256MB free RAM and sub-200mW average power during uploads (about 5% of your battery budget). If your current hardware doesn't meet these specs, acknowledge it now — committing to "we'll support fine-tuning eventually" creates false customer expectations. Make the trade-off explicit: launch without fine-tuning to hit battery targets, then upgrade hardware if the next generation supports it.

---

## Model Drift and Personalization Drift Without Raw-Data Feedback Loops

* **Real problem: silent accuracy decay.** You're correct to worry. A model trained on 50 users' calibration data in month 1 will drift for the other 9,950 users within 12 months. New users starting antiarrhythmic meds, fitness improvements, weight loss — all shift their baseline. Without cloud feedback, you have no signal. A practical approach: log on-device detection certainty metrics (e.g., "this beat pattern was flagged with 92% confidence") and monthly sync these aggregated stats (not raw data). After 6 months, analyze which detection buckets show declining confidence across the fleet. This cost-effectively signals drift without privacy loss.

* **Personalized recalibration on-device, not in cloud.** Instead of retraining the global model, push firmware updates that let users explicitly recalibrate: optional "baseline setup" on their next sync, where they confirm their current resting heart rate and typical SpO2 ranges. The device stores a user-specific offset file (lightweight, <10KB) that adjusts thresholds locally. This is cheap to compute, preserves privacy, and gives users agency over the detection sensitivity.

* **Tie updates to clinical partnerships, not guesswork.** Your real feedback loop comes from clinical partnerships: cardiologists confirm true arrhythmias from device alerts. Start with a small partnership (100-500 devices, recruited users willing to share outcomes). Over 12 months, build a ground-truth dataset that tells you which alerts correlate with confirmed events and which are false positives. Use this data to guide firmware updates — push a new model only when your partnership data says it's better. Without partnership feedback, you're flying blind; don't pretend periodic updates will fix drift.

* **Document decay forensically.** In your post-market surveillance plan, commit to quarterly fleet-wide analysis: What was the detection rate in Q2? Q3? Does it look like it's dropping? If the team notices a 20% drop in alert frequency across the fleet (while user demographics stay constant), that's your signal to investigate drift and push a recalibration firmware. Make this a routine operational metric, not a crisis-driven decision.

* **Accept that some users won't update.** You can't prevent outdated models — users with storage constraints or poor connectivity won't update for months. Offer a recalibration mechanism for opt-in users who stay on older firmware. This doesn't solve drift, but it lets you mitigate its worst effects for engaged users while acknowledging that you can't mandate behavior.

---

## Firmware Update as a Trust Event and Governance Question

* **Transparency first: every update needs a clear changelog.** Users have calibrated their behavior — they know what the device's false alarm rate looks like, what time of day they get alerts — so a silent firmware update that changes detection patterns is a betrayal of trust. A practical approach: when you push a firmware update, accompany it with a simple, non-technical changelog: "v2.2 improves detection during sleep by reducing false alarms from 2% to 0.5% based on 100,000 user-nights of data." Avoid jargon like "refined attention mechanisms"; explain what changed in user-visible terms. Post this in the companion app's release notes and send an in-app notification before the update deploys.

* **Opt-in for non-critical updates, mandatory for safety.** Critical safety fixes (e.g., a model bug that causes missed arrhythmias) must be mandatory and deployed aggressively. Quality-of-life improvements (fewer false alarms during REM sleep) should be opt-in: users choose when to update, and they see the changelog before confirming. This gives users agency while ensuring safety fixes reach everyone quickly. Make the update UI clear: a green "safety fix" badge for critical updates vs. a blue "improvement" badge for optional ones.

* **Staged rollout with reversion capability.** Don't push v2.2 to all devices simultaneously. Rollout to 5% of the fleet first, wait 48 hours for support tickets and alert-pattern anomalies to surface, then expand to 25%, then to 100%. If something goes wrong — a model regression, a firmware crash on older hardware — you can revert the 5% cohort without having bricked thousands of devices. Implement a "roll back to previous version" feature in the companion app for power users who suspect an update broke their workflow.

* **Define who decides updates: not the ML team alone.** Updates that change clinical behavior should be approved by a governance group: your clinical advisor, your regulatory affairs lead, your support team lead, and a user advocate (someone who uses the device). Each person brings a different lens: Is this clinically sound? Does it create regulatory liability? Will users get confused? Could support handle the downstream questions? A 30-minute meeting before deployment catches unforeseen consequences.

* **Recourse mechanism: quick revert or compensation.** If a firmware update genuinely worsens a user's experience — they suddenly get twice as many false alarms, ruining their sleep tracking — they need recourse: ability to revert to the previous version, a support call with your clinical team to retune thresholds, or in extreme cases, a refund or replacement. This is expensive, so it motivates you to test updates thoroughly. Frame it as insurance: "We stand behind every update; if it doesn't work for you, we'll fix it."

---

## Federated Learning as Just-In-Time Manufacturing: Failure Modes and Supply Chain Analogy

* **The offline node problem: Toyota's factory doesn't work if suppliers don't ship.** Toyota's system depends on reliable, predictable supply. In federated learning, your "supplier" is each device uploading gradients on a regular schedule. But a device with poor connectivity, low battery, or a user who disabled sync is a broken part in your pipeline. You can't train a global model with incomplete gradient updates from 30% of your fleet. A practical approach: build explicit drop-out tolerance into your federated architecture. Instead of waiting for 100% participation, train on whatever gradients arrive within a 48-hour window. Document the participation rate publicly: "v2.3 learned from 6,200 of 10,000 devices." This sets user expectations and makes model quality visible.

* **Quality variance across parts: users aren't identical.** Toyota's supply chain works because parts from different suppliers are standardized and interchangeable. But user physiology isn't. A device worn by a marathon runner, a sedentary office worker, and a cardiac patient will produce wildly different baseline patterns. Federated learning assumes gradient contributions are comparable; they're not. A practical safeguard: before committing gradients from a device to the global update, apply a local quality check: Does this device's data look like an outlier (e.g., SpO2 always >98%, which is physiologically implausible)? If so, flag it, investigate, or exclude it from the gradient batch. This adds complexity but prevents one malfunctioning device from skewing your global model.

* **Just-in-time assumes demand is predictable; model evolution isn't.** Toyota knows quarterly car demand based on market data. Federated learning assumes you know what model improvements are needed; you don't. You might discover (after 3 months of gradients) that your federated approach learned to over-fit to early-adopters' patterns and performs poorly on new user demographics. Now you've wasted 3 months and bandwidth. A pragmatic middle ground: run federated learning as a *research phase*, not production. In months 6-9 post-launch, coordinate a voluntary federated-learning pilot with 500 engaged users, collect gradients, analyze results, and decide if the improved model is worth the operational complexity. Don't assume federated learning is your long-term solution until you have evidence.

* **The logistics overhead: Toyota's factories are highly optimized; yours aren't yet.** Managing federated learning in a startup with 4 firmware engineers is ambitious. You need: gradient compression algorithms to fit uploads in your bandwidth budget, a secure aggregation server to prevent snooping, versioning logic to ensure devices sync gradients to the right global model version, revert procedures if a federated update breaks something, and monitoring dashboards to track participation. That's 2-3 engineers for 6 months. At Series A runway, you might not have headcount to spare. Be honest: Can you afford the operational complexity, or should you stick with firmware OTA until you've proven the business model?

* **The competitive advantage that isn't.** In traditional manufacturing, lean systems become competitive advantages — faster time to market, lower costs. In federated learning, everyone is experimenting; there's no first-mover advantage yet. Launching with federated learning is strategically neutral if your primary competitive moat is clinical accuracy (which comes from data, partnerships, and regulatory trust — not fancy ML infrastructure). Save federated learning for year 2, when you have more runway, more users, and clearer evidence that decentralized learning solves a real problem.

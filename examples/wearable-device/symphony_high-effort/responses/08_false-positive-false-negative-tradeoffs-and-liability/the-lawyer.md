---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_false-positive-false-negative-tradeoffs-and-liability"
persona: "The Lawyer"
---

# False-Positive / False-Negative Tradeoffs and Liability - The Lawyer

## Q1: The Threshold with No Safe Harbor

**Summary of liability exposure:**
* **Products Liability — Negligent Design Theory.** Once you're in a 40+ demographic with family cardiac history, courts will scrutinize whether your threshold methodology was reasonable. You must document the cost-sensitive learning approach used to select sensitivity/specificity at launch (ROC analysis, medical literature benchmarks for arrhythmia detection in similar populations). If a cleared competitor's device would have caught a missed event, the "consumer wellness" framing offers *weaker* protection than expected: your marketing explicitly targets people treating alerts as medically actionable, making the plaintiff bar argue you knowingly deployed a device you wouldn't recommend to your own family. Use cost-benefit analysis per condition; publish the documented threshold rationale in the app's help documentation.

* **Failure to Warn.** Your companion app's alert-credibility death-spiral is a disclosure problem. Early false positives cause users to ignore alerts; later genuine events are missed. You must clearly label the device output as a **notification only, not a diagnosis** — and critically, disclose known false-positive rates and alert threshold design *in the safety information* users see before acting. FDA guidance on "intended use" language: the device signals something *worth discussing with a doctor*, not a clinical diagnosis. Buried in terms-of-service won't survive discovery.

* **Negligence — Duty of Care Attaches to Alert Design.** The moment you're alerting someone about potential arrhythmias, tort law imposes a duty to calibrate sensitivity to the predictable harms of both false positives (unnecessary ER visits, medication changes, anxiety) and false negatives (missed life-threatening events). This is not FDA's duty — it's the common-law duty courts impose on product designers. Document your acceptable false-negative rate for arrhythmia detection in your target demographic; if that rate changes between "wellness" and clinical claims, formally re-validate with users in that population.

* **Alert-Credibility Death-Spiral as Liability Compounding.** Each early false positive reduces the probability a user acts on a genuine alert later. This creates a cascading liability: the device becomes less safe the longer it operates poorly, yet the team lacks feedback to detect degradation until a bad outcome occurs. You need monitoring architecture: periodic calibration checks, user feedback analysis (are engagement metrics dropping?), and a model-decay threshold triggering either automatic re-training or in-app notification ("your device's accuracy has drifted; we recommend recalibration").

* **Safe Harbor via Structured Documentation.** Operating-point methodology documented *before* launch in writing (signed design record, not retrospective defense memo): choose sensitivity/specificity by comparing medical literature on arrhythmia detection, user feedback from beta testing, and documented cost-benefit analysis. If a user experiences a missed event and sues, you'll argue "we applied industry-standard cost-sensitive thresholding and disclosed our methodology" rather than "we guessed." This doesn't eliminate liability, but it moves you from negligence (failure to act reasonably) toward comparative fault (user ignored warnings, changed medication without consulting a doctor).

---

## Q2: False-Negative Invisibility and Calibrating Urgency

**Summary of monitoring and disclosure duties:**
* **Duty to Detect Drift.** A false negative is legally invisible until a bad outcome surfaces — at which point your ignorance of degradation looks like negligence. Build a monitoring system that surfaces evidence of *what the device didn't catch*: periodic comparison against ground truth (e.g., users with confirmed arrhythmias who report events manually; ECG strips from clinical partners if available), battery asymmetry detection (some sensors losing power faster = systematic sensing gaps), and model drift metrics (how often does the deployed model's performance diverge from validation data). Document this system in design records; if interrogated post-incident, you can say "we were systematically checking for this failure mode."

* **Alert Tiering and Safe Harbor Language.** The device cannot make medical diagnoses, but it can tier urgency: "Possible rhythm irregularity detected — inform your doctor this week" vs. "Concerning cardiac pattern detected — consider calling your doctor today" vs. "Potential medical emergency — call 911 if experiencing chest pain/shortness of breath." Each tier should reference the condition's actual urgency (atrial fibrillation is often asymptomatic and non-emergent; certain arrhythmias can be life-threatening). Disclose in the app: "This device provides notifications, not diagnoses. Always consult a healthcare provider to interpret alerts."

* **Slow Degradation and Model Retraining Obligations.** Physiology changes with age; wearables lose sensor calibration; ML models trained on cohort X may perform poorly on changed users. You need contractual clarity: does your user agreement commit to retraining, or do you reserve the right to degrade gracefully? Best practice: announce planned retraining cycles (quarterly model validation against control cohorts, annual recalibration with firmware updates). If you find drift is happening and do nothing, that's negligence; if you disclose drift and users opt to continue, liability shifts.

* **Clinical Authority Boundary.** The device cannot diagnose, but your app can *educate* users about symptom-severity correlation (chest pain + alert = call 911; no symptoms + alert = mention to doctor soon). This requires careful language distinguishing the device's output from medical consensus, because courts will read through marketing spin. Example: "Device output: heart rate variability consistent with atrial fibrillation. Medical fact: AFib can be benign or serious depending on your symptoms and medical history. Action: call your doctor and mention this alert."

---

## Q3: The False-Positive Win — Designing Toward Best Outcome

**Summary of liability advantages in outcome-focused design:**
* **Outcome-Focused Design as Negligence Defense.** A user who receives an alert, acts on it, and credits the device with catching something early—that's the narrative that insulates you from products-liability claims. If internal documents show you deliberately designed *away* from that outcome (pursuing minimalist alerts to avoid ER traffic, suppressing borderline detections to reduce false positives), discovery will destroy your credibility in court. Design toward the best outcome: what does genuine value look like? That user sees an alert, calls their cardiologist, gets an ECG, learns something actionable, and trusts the device. That's your north star for threshold-setting and alert UX.

* **Documentation of User Benefit as Mitigating Factor.** Collect and document real-world outcomes: users who received alerts, sought care, and received a clinical confirmation of arrhythmia (or learned something valuable even if benign). This becomes evidence of net benefit in litigation. Conversely, if post-launch data shows high false-positive rates with no documented clinical benefits, you've built a liability magnet. Make outcome tracking a compliance obligation in your alert system design.

* **Credibility as Economic Asset.** The "best outcome" user experience—one where alerts are trustworthy and lead to actionable insights—is the opposite of the death-spiral scenario. When users trust alerts because they've seen genuine value, engagement stays high, behavioral feedback for model calibration flows in, and the device becomes safer over time. This is also the legal position you want: a product that earned credibility through consistent performance, not one that shipped aggressively and lost user trust.

* **Alert Threshold Architecture Supporting Outcome Design.** Your detection threshold isn't a technical knob; it's a promise to users about what the device will and won't catch. Design the alert experience backward from outcome: what signal-quality threshold puts you in a position to say "this warrant's mentioning to your doctor" with confidence? Document that threshold in your help text, explain why you chose it (medical literature + validation data), and commit to monitoring whether real-world outcomes match your projection.

---

## Q4: Credentialing Systems and Alert-Tier Liability Structure

**Summary of tiered alert authority and regulatory boundaries:**
* **Hospital Credentialing as Liability Model.** Hospitals compartmentalize authority to manage risk: nurses administer drugs (credentialed for that task) but don't diagnose; residents diagnose but don't operate unsupervised. Your alert system can adopt parallel structure: the device identifies *signals* (high-confidence arrhythmia pattern) and route them to appropriate decision-makers (the device alerts the user, suggesting they mention it to a doctor; simultaneously, with user consent, shares confidence metrics with a partner cardiologist who can interpret at scale). This distribution of authority is legally powerful: each actor has limited scope, reducing any single actor's liability exposure.

* **Consumer Wellness → Clinical Partnership Transition.** At launch (consumer wellness), alerts are for user information only; liability sits with you as the device maker. In a clinical partnership (cardiologist receives summary alerts for patients they're already monitoring), liability is shared: the device provides data, the doctor interprets and acts. The credentialing boundary is the regulatory line: a cardiologist credentialed to diagnose can receive high-confidence arrhythmia signals without FDA clearance of the signal itself (similar to how a doctor can order an ECG; the ECG machine doesn't need to be FDA-cleared as a diagnostic device if the doctor interprets it). Document the clinical partner's role explicitly in your partnership agreements.

* **Alert-Tier Mapping to Risk and Authority.** Tier 1 (low-confidence borderline signals): device notifies only; no actionability claimed. Tier 2 (moderate-confidence signals): device alerts user with guidance ("mention to doctor"); suitable for consumer wellness. Tier 3 (high-confidence clinically significant signals): device alerts user and (with consent) partner clinician; suitable for clinical partnership. Each tier should correspond to validation evidence and specificity targets. FDA will scrutinize this mapping during 510(k) review; build defensible documentation now.

* **Liability Surfaces and Structural Protection.** Offering clinical partnership reduces consumer-facing liability (users are no longer making solo medical decisions on device output) but creates partnership-liability (are you properly credentialing the clinical partner? are liability limits clear in your partnership agreement?). Use insurance tiers: general liability ($1-2M) covers consumer wellness alerts; product liability ($5-10M) covers potential clinical claims and requires clinical partner indemnification. Document this structure in your partnership terms.

---

## Q5: Calibrated Deception — Forced Cool-Down and Clinical Outcomes

**Summary of intentional alert delay as harm-reduction design:**
* **Duty of Honest Disclosure About Alert Timing.** If you deliberately withhold detected anomalies for 48 hours, users must know this is happening. Failing to disclose introduces a second deception layer: users believe the device is alerting in real-time when it's not. That's a fraud exposure (failure to disclose material facts) on top of a negligence exposure (what if a genuine arrhythmia happens during the cool-down period?). Your app privacy policy and alert-explanation documentation must state: "Alerts may be delayed 48 hours as a design feature to reduce alert fatigue. This is not appropriate for users with acute symptoms; if experiencing chest pain or shortness of breath, seek immediate care."

* **Clinical Validity and Regulatory Risk.** If you have evidence that cool-down periods improve clinical outcomes, that's a powerful design argument—but you must validate it with real data before launch, not discover it accidentally. FDA may view intentional alert delay as a modification to the device's claimed function; you'd need to document and support that claim with evidence. Submitting a 510(k) with undisclosed or inadequately-supported alert delay could trigger a Refuse to Receive determination.

* **Assumption Testing and Honest Uncertainty.** The assumption that "faster alerts are always better" is actually contestable—alert fatigue is a real phenomenon, and there's literature on optimal alert frequencies in clinical settings. But you can't assume a 48-hour cool-down is optimal without validating it. If you want to test this, do it in a controlled beta, measure outcomes (do users actually trust alerts more? do clinical events change?), and document the results. Launch with only the delay strategy you've validated.

* **Liability Advantage of Transparent Friction.** Paradoxically, explicitly telling users "this device delays alerts to reduce false-alarm fatigue" is lower liability than silently delaying. It sets expectations honestly, allows users to opt out if they prefer real-time alerts, and positions the company as thoughtful about alert design rather than deceptive. If a missed event occurs during the cool-down, you can argue "the user agreed to this tradeoff design; medical literature supports alert-fatigue reduction."

---

## Q6: Designed Failure Mode and User Trust in Imperfection

**Summary of disclosed error rate and credibility:**
* **Transparency as Liability Shield.** "We engineered this device to be wrong exactly 1% of the time, and we disclose it" is legally stronger than "we designed for perfection and hope users don't notice we're wrong 5% of the time." Proactive disclosure converts potential negligence (hidden defect) into informed product choice. Users who see "known error rate: 1%, disclosed in documentation" have a harder time claiming they were deceived; users who discover a 5% error rate retroactively will claim you hid it.

* **Regulatory Treatment of Known Limitations.** FDA expects medical devices to acknowledge known limitations. A 510(k) application that says "we have 1% error rate in the following conditions: [specifics]" is more defensible than one claiming near-perfection. The disclosed rate becomes part of your claims boundary; if real-world error exceeds the disclosed rate by a material margin, that's a problem. If real-world error is *lower* than disclosed, you've over-estimated, which is acceptable.

* **User Trust and Credibility Cascades.** Your hypothesis—that disclosed imperfection builds trust better than false perfection—is actually supported by medical-device literature. Users who know the device's limitations and see it operate within those limitations trust it more than users who expected perfection and caught errors. This is also a liability advantage: documented, disclosed limitations create an expectation-setting anchor. When an error occurs within the disclosed range, the company argument is "exactly as disclosed."

* **Documentation and Validation Obligations.** If you're claiming a designed 1% error rate, you must validate it across your target population, document the conditions where that rate applies, and update that claim if field evidence diverges. This creates a contractual obligation to monitor (same as Q2). Choose your disclosed error rate conservatively—lower than your actual lab performance—to avoid claiming you're better than you actually are.

---

## Q7: False-Positive Tolerance as Calibration Advantage

**Summary of consumer wellness labeling and clinical-grade training data:**
* **Regulatory Asymmetry and Data Advantage.** Consumer wellness devices face lower specificity requirements than FDA-cleared clinical devices: you *can* be more conservative (higher sensitivity, more false positives) without regulatory pushback, because you're not making diagnostic claims. This creates a legal moat: you can run at 95% sensitivity / 75% specificity in consumers (more false positives) and collect rich edge-case data impossible in a controlled clinical trial. That dataset becomes your training corpus for the eventual clinical-grade model, building competitive advantage *through* the consumer wellness phase rather than despite it.

* **Liability Structure of Permissive Thresholds.** High sensitivity (many false positives) in consumer wellness is legally permissible *if you disclose it clearly*. Users must know: "This device prioritizes not missing possible events, so you may receive alerts that turn out to be benign. That's by design." The liability risk is not the false positives themselves; it's undisclosed false positives. Make the threshold strategy part of your marketing and safety documentation.

* **Data Labeling and Clinical Validation Pipeline.** Each false positive in the field is a labeled example of a signal that *looked* like arrhythmia but wasn't. If users report outcomes ("I got an alert, saw my doctor, ECG was normal") you've just labeled your dataset at scale. This is expensive in clinical trials; free at consumer volume. Document a data-use policy: consumer-generated alerts and outcomes inform model retraining for the clinical version. Disclose this to users so they understand the wellness product funds the clinical product.

* **Transition Risk: From Permissive to Clinical Claims.** Moving from "consumer wellness, may have false positives" to "clinical device, FDA-cleared to diagnose" is a claims transition, not a technical transition. You'll need clinical validation showing the model trained on consumer-phase data generalizes to clinical settings. The specific risk: if early consumer-phase data shows your device is *worse* than disclosure suggested (e.g., 40% false-positive rate when you promised 20%), you have liability for the gap and may not have clean data for clinical training. Build buffering: declare consumer-phase sensitivity targets conservatively, validate empirically, and only later claim tighter performance for clinical submission.

---

**Persona Analysis Summary:**

The Lawyer identified concrete regulatory frameworks governing threshold design (products liability law, FDA guidance on intended use), liability structures requiring documentation and disclosure (negligent design, failure to warn), and governance protections (credentialing boundaries, clinical partnerships, tiered alerts). Across all questions, The Lawyer emphasized that legal safety comes not from hiding uncertainty but from transparent threshold design, disclosed limitations, continuous monitoring for degradation, and clear compartmentalization of authority (device signals, user acts, clinician interprets). The framework treats liability as engineering problem: systematic documentation, outcome validation, and proper credentialing architecture reduce legal exposure more effectively than claims of perfection.

**Total Responses:** 7 questions × 4-5 items each = 31 distinct legal observations

---


---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "03_false-positive-negative-economics-alert-design"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: False Positive/Negative Economics & Alert Design

---

## Synthesized Insights by Question

### Question 1: Asymmetric cost of false positives and false negatives across stakeholders

**Full question**: False negatives carry clinical harm risk (missed arrhythmia) while false positives carry alert fatigue, liability, and emotional cost — what decision threshold policy, sensitivity/specificity tradeoff, and downstream escalation protocol best balances these for a 40+ consumer wellness population, who bears each cost (user, family, ER system, company), and how does the asymmetry shift once the device enters a clinical partnership context?

* **The asymmetry inverts at the consumer-to-clinical boundary, and the threshold policy must be designed to flip with it.** At the consumer wellness stage, the liability gradient pushes toward higher sensitivity—false positives are "nuisance" while a missed arrhythmia invites negligence exposure. Once a clinical partnership or FDA 510(k) review begins, claimed performance gets locked, false negatives become regulatory violations, and the company must absorb false-positive costs (including ER visits) by contract. The actionable stance: set a fixed specificity floor (95%+) as a non-negotiable liability backstop, optimize sensitivity around it, lock thresholds in firmware as a contractual minimum validated by external cardiologist review, and require a signed liability-acceptance memo before any post-launch sensitivity change.

* **A formal stakeholder cost matrix should govern the threshold decision and expand when clinical partners enter.** Laying out who bears which cost disciplines the sensitivity choice: at consumer stage, accept a higher false-positive rate to minimize clinical-harm litigation; at clinical stage, add hospital and FDA rows and let medical-practice thresholds (e.g., AHA arrhythmia-detection guidance) govern.

* **The hidden cost-bearer is the ER system, and the feedback loop from its strain erodes clinical validity for the whole category.** If thousands of users each generate false-positive ER visits, hospitals begin deprioritizing wearable cardiac alerts from every brand, making legitimate alerts less urgent; neither company nor user feels this directly, but it degrades the device's real-world clinical validity. Surface a confidence score in sync data so ER systems can triage wearable alerts separately.

* **Temporal asymmetry creates an incentive trap: false negatives surface years later, so leadership unconsciously optimizes for the complaint that arrives first.** False positives harm instantly (ER visit, alert fatigue), while false negatives harm 12-24 months later (patient event, lawsuit discovery). This biases decisions toward the visible near-term metric. Counter it with a formal 12-month post-launch audit comparing missed-event rates to alert-fatigue trends, giving each equal weight in product reviews.

* **Informed consent and disclosed false-positive rates re-allocate liability from strict liability to assumption of risk.** Whether a harmed user has a strong claim depends largely on whether the false-positive rate was disclosed up front; in-app transparency ("flags ~2% of events that are non-arrhythmic"), ToS language, and an alert UI that says "possible but not confirmed" shift the burden toward assumption of risk and defend against ER-system claims.

* **Family is an unequal, contested voice in threshold-setting, not a single stakeholder.** A spouse may demand maximum sensitivity while the patient wants fewer alerts, so build family co-decision into onboarding with explicit "aggressive detection" vs. "trust me" modes signed off by both user and emergency contact; family also carries the emotional weight of both error types in ways actuarial models miss.

* **Users often prefer false alarms to silence, and that preference is invisible to actuarial models.** False negatives create a gnawing dread that lingers for years. False positives sting and fade. The felt asymmetry runs opposite to the cost-minimizing instinct, which argues for weighting the user's emotional preference alongside the spreadsheet.

---

### Question 2: The sensitivity ratchet and alert fatigue feedback dynamic

**Full question**: If early adopters expect high sensitivity, the team tunes the model accordingly, false positive rates rise, user trust erodes, alerts get dismissed, and real-world detection rate falls below lab rate — how does the team break this compounding pattern and the related sensitivity ratchet between detection latency and alert fatigue (where tuning for faster detection early creates a user expectation that becomes costly to walk back if latency must increase later to reclaim battery budget) before it embeds in the product's reputation?

* **The ratchet is fundamentally an expectation-anchoring problem, so the break is pre-commitment and transparent communication, not silent recalibration.** Once early users anchor to high sensitivity (or fast latency), any later reduction is perceived as the device "getting worse" even when specificity improves. Document a baseline-sensitivity contract before launch. Announce future sensitivity/latency evolution as a planned feature at launch. Publish concrete tradeoff numbers when changes occur. Convert "downgrades" into user-controlled toggles (High/Standard/Minimal). The anchoring may be effectively irreversible by year two, so act early.

* **Build a closed-loop dismissal-rate monitor that triggers automatic threshold review, both to break the ratchet and to convert documented negligence into managed risk.** If UX research shows fatigue causing users to dismiss real alerts and the team ignores it, that documented inaction is negligence. Track confirm-vs-dismiss rates with weekly cohort analysis. Flag when dismissal exceeds a threshold and trigger a documented governance review. Optionally, run a parallel low-sensitivity cohort from day one to measure the true tradeoff and reset expectations.

* **Make firmware/model updates user-visible transparency events so neither the team nor the user loses sight of whether the ratchet is turning.** Silent updates leave users unable to tell whether alerts changed because the device learned or broke, while update-on-demand means most users never install; log threshold changes as user-facing events ("Model updated Oct 2026: sensitivity adjusted 2% lower based on 6-month field data").

* **Alert fatigue is an emotional debt that users resent the company for teaching.** Fatigue is "learned numbness" that users experience as manipulation ("this device trained me to ignore it"). The resulting sense of being duped is sticky and shapes word-of-mouth. Breaking the ratchet early matters not just because of the statistics, but because the cost is relational.

---

### Question 3: The lived experience of alerts at 3am, in the ER, and at the threshold of probabilistic uncertainty

**Full question**: When the device correctly identifies a significant arrhythmia during sleep, what should the experience feel like for a frightened user deciding whether to call emergency services, what alert frequency threshold (derived from UX research, not just model accuracy) keeps users engaged rather than numbed, and what phrasing or visual language communicates "this may need attention" versus "this is definitely something serious" to non-statisticians without causing medically harmful alarm responses?

* **Raw probability must be converted into decision-relevant confidence categories backed by UX research, never communicated as a percentage to a frightened user.** A 3am alert hits the amygdala. "73%" or "may need attention" either triggers panic or gets dismissed. Use tiered, color-coded, decision-oriented language: high confidence maps to "seek medical attention," moderate to "consult your doctor," low to "log for review." Validate with usability testing of the 50+ family-history demographic before firmware lock. Document it as a defense against harm claims. Distinct haptic patterns let users know which tier fired before they look.

* **Alert frequency is felt, not counted, so the engagement threshold must be set as a target false-positive rate derived from UX research rather than from accuracy metrics.** One alert every six months reads as care. Twice a month reads as "the device is broken or I am." Tune the model to a specific felt-frequency target (e.g., one false alarm per 3 months). Document that the tuning targeted that, not clinical perfection.

* **The false-positive ER visit creates a permanent knowledge asymmetry the device can never resolve alone.** After an ER visit clears the user, she knows one alert was false but can never see the false-positive denominator. Trust cannot be calibrated from the device alone. Optional integration that lets a provider's finding flow back ("flagged March 15; EKG normal") is the only path to genuine calibration. It also supplies ground-truth training data.

* **The 3am alert is an intimate intrusion into the user's most vulnerable state.** Waking someone to tell them something about their body they did not know creates either deep trust or deep resentment, with little middle ground. The emotional design of the first alert carries outsized weight on every subsequent one.

---

### Question 4: Alert calibration as nuclear deterrence equilibrium

**Full question**: Cold War strategists discovered that credibility of deterrence depends not on maximizing destructive capacity but on calibrating response thresholds so that false alarms do not trigger escalation — your false positive/negative tradeoff has the same structural property: a system that alerts too readily loses user trust and gets ignored (deterrence failure from crying wolf), while one that is too conservative misses actual events (failure through inaction); what does the deterrence literature's concept of "graduated response" suggest about designing a tiered alert architecture that distinguishes urgent cardiac alerts from lower-confidence sleep apnea flags, and how does this interact with liability exposure?

* **A confidence-tiered alert architecture is the right structure.** Its legal value is as much an audit trail as a UX improvement. Map graduated response to confidence tiers: high-confidence cardiac → immediate vibration/red; moderate → subtle notification/yellow; low-confidence sleep apnea → silent logging/weekly summary. This preserves credibility for the top tier while damping fatigue below. It creates a documented standard of care that defends against negligence claims from both directions. Hard-code consistent per-tier thresholds in firmware and separate model outputs by confidence from day one. Keep the alert threshold distinct from the liability threshold, pairing a high internal confidence bar with standing advice ("if you have symptoms, see a doctor regardless").

* **Tiers risk collapsing into binary "is this serious?" under 3am cognitive load.** The device (not the user) should carry the graduated escalation. A terrified, half-asleep user cannot parse three confidence tiers and will resolve everything to call-911-or-ignore, collapsing the middle tier in practice. Use temporal graduated response: "if this pattern repeats in the next hour, escalate." Let the device do the escalation rather than asking the user to calibrate uncertainty.

* **Liability may actively threaten graduated response.** A documented "low-confidence" label can be reframed as negligence-adjacent. The legal framework must be built before launch. A "low-confidence" alert creates a record that the company suspected something but sent it anyway, which a plaintiff's lawyer can attack. A single-tier "alert means alert" architecture is legally simpler. Pre-position the graduated-response logic in clinical literature and FDA guidance so the liability framework catches up to the UX strategy and legal pressure does not flatten the tiers.

* **Consistency of thresholds is itself a deterrence-credibility and legal requirement.** If the model alerts at 65% sometimes and 40% other times due to sensor noise, both the deterrent and the legal standard fail; hard-code firmware thresholds and treat any change as a versioned release, not a silent tweak, to demonstrate a maintained, consistent standard of care.

---

### Question 5: The 3 a.m. alert (Marcus)

**Full question**: Imagine Marcus, a 54-year-old with a family history of cardiac events, wakes to a gentle vibration on his wrist — the device has flagged an irregular heartbeat pattern during sleep. What should happen in the next sixty seconds of his experience — how does the device communicate urgency without triggering panic, and how does that first alert shape his trust in every subsequent one?

* **The first sixty seconds should deliver decision-relevant information and a clear next action, not reassurance.** The alert's job is to support a defensible decision under time pressure. Use a gentle haptic and a two-line message naming what was detected plus a confidence-appropriate next step. Offer an explicit choice: "log & monitor" or "get guidance" (nurse hotline). Include an option to query the underlying data ("show me the last 5 minutes"). Apply a "clarity over reassurance" standard that avoids both false reassurance and catastrophizing. Test with 40-54-year-olds with cardiac risk factors. A real tension remains between projecting steady confidence (what the frightened user wants) and honest uncertainty (what is true).

* **The first alert's trust calibration depends on outcome information the device cannot generate alone.** Marcus's trust in every future alert hinges on learning whether this one was real, which the device never knows on its own. Build an optional channel for the provider's finding to sync back ("we'd like to know the outcome if you're comfortable sharing"). This closes the calibration loop and supplies ground-truth training data. The visible accuracy tracking itself builds trust. Do not inflate confidence thresholds to chase apparent precision.

* **The decision is not over at sixty seconds. The alert shapes the next 24 hours of rumination.** Marcus decides not to call 911 at 3:06am and then worries all night. A follow-up "are you still experiencing symptoms?" prompt converts a one-way notification into a collaborative decision and addresses the rumination the initial phrasing cannot.

* **The alert lands inside Marcus's pre-existing health model.** Pre-alert onboarding about his demographic false-positive rate is as important as the alert phrasing. A man with cardiac family history may call 911 regardless of phrasing. A health-anxious user may dismiss regardless of urgency. The communication design cannot override his prior. Onboard him on the expected false-positive rate for his profile ("roughly 1 false alert per month") so the 3am alert has pre-established context.

---

### Question 6: The false alarm aftermath (Elena)

**Full question**: Picture Elena receiving a cardiac alert, rushing to the ER, and being told her heart is fine — what does that experience do to her relationship with the device, and how should the product design account for the emotional cost of a false positive on both the user and their family?

* **Design an explicit false-alarm recovery experience.** The emotional and relationship damage is foreseeable and not addressed by accuracy metrics or false-positive-rate explanations. After a false positive, acknowledge the alert may have been inaccurate. Run a post-ER survey to capture the outcome. Re-contextualize without minimizing ("a benign skipped beat is common and not dangerous"). Offer a nurse-hotline conversation. Return sensitivity control to the user. This recovery UX reduces abandonment and punitive-damages exposure by showing the emotional impact was taken seriously. The relationship wound does not heal with false-positive-rate explanations; it heals with human attention. Budget roughly 2 FTE for manual review and outreach.

* **A false positive over-escalates because of how the alert was labeled.** High-confidence thresholds and a pre-ER off-ramp should gate ER-driving alerts. Responsibility for Elena's ER visit turns on whether the alert was labeled "high confidence" (more company responsibility) or "moderate; evaluation recommended" (shared). Reserve high thresholds (75%+) for ER-driving alerts. Insert a "call my doctor / nurse hotline before going to the ER" off-ramp that routes her decision through a licensed clinician. Outcome logging also distinguishes hypervigilant users from engaged ones.

* **A false positive can inflict durable systemic and self-relational harm beyond the single event.** Most of this cannot be mitigated at the device level. A cleared ER visit enters Elena's medical record and may become a "credibility tax" when future doctors dismiss her real symptoms as crying wolf. The device can train her into hypervigilance and self-doubt, a "false self" that potentially makes her less healthy. Partner with health systems to flag wearable-triggered visits distinctly. Take the device's effect on the user's body-relationship seriously.

* **Family is a separate casualty of the false alarm.** Household notification preferences should prevent cascade anxiety. The spouse who pushed for the device now feels responsible ("I made you buy a device that scared us"), a multi-person wound. Let users set household notification preferences (a spouse gets "alert detected" but not full content) so the whole household is not alarmed identically.

---

### Question 7: Designed to misread (intentional false positives)

**Full question**: What if the ML model was intentionally tuned to generate false positives at a high rate — say, one unnecessary alert per week — because users who occasionally got scared and went to the doctor were actually healthier on average than users who trusted silence? *The real insight: what assumptions are baked into "accuracy as a good" that may not actually map to health outcomes?*

* **Accuracy is a proxy, not the goal.** The real target is the health outcome. Design and measure the device against an outcome model rather than an accuracy metric. A 99%-accurate device can cause net harm (fatigue, unnecessary ER visits, anxiety). An 85%-accurate one can produce net benefit if scared users catch real disease earlier. Instrument prospective outcome measurement: missed events, early detections, unnecessary ER visits, cardiovascular outcomes. Tune to that. Demonstrated outcome benefit is also a product-liability defense, though it requires prospective study design, not post-hoc analysis.

* **Intentional false positives cross from a legitimate threshold choice into fraud and a consent violation.** Any sensitivity decision must be documented with a legitimate clinical rationale and approved by clinical (not revenue) leadership. Deliberately tuning for false positives to drive doctor visits is deceptive. It creates healthcare-fraud and FTC/state-AG exposure. It betrays the implicit promise to tell the truth about what the device sees, a consent violation users will eventually detect and resent. Document every sensitivity decision with a legitimate rationale (clinical conservatism, user preference, battery tradeoff) approved by the medical advisor. If outcome optimization is pursued, disclose it and let users opt in.

* **"Accuracy as a good" conceals a four-way stakeholder conflict.** The conflict should be made explicit rather than silently resolved by one party's preference. The company prefers outcome optimization (public-health ROI). The user prefers accuracy (mental-model alignment). Regulators prefer accuracy (clear liability). The ER system prefers outcome optimization (upstream prevention). Publishing a tradeoff matrix at launch surfaces where incentives diverge instead of letting one stakeholder's preference quietly win.

---

### Question 8: From alert to dialogue (ambient body-device language)

**Full question**: What if the wearable never issued an alert — not because anomalies don't occur, but because the entire alert-and-notification paradigm were replaced with something that has no current analog: a continuous, ambient language between body and device that a person learns to read the way a musician learns to hear pitch? What would it take to design that language, and what would it make possible that a cardiac arrhythmia alert never could?

* **The ambient-dialogue vision is multi-year R&D, not a product-cycle feature.** The practical path is an incremental hybrid that builds user literacy while preserving an urgent-interrupt safety layer. Treat this as a 3-5 year research program requiring ethnography, HCI, and cardiology. Bridge to it with a hybrid: a confidence-timeline or rhythm-visualization view that lets users pattern-match their own data without discrete alerts, paired with educational content and validated as a clinical-governance decision with advisor endorsement. Keep a non-negotiable urgent-interrupt layer that overrides ambient mode for genuinely dangerous patterns (e.g., sustained ventricular tachycardia). Include an emergency fallback to discrete alerts if the ambient signal is unrecognized for 48 hours.

* **The ambient language is only meaningful relative to the individual's learned baseline.** The first 30 days of baseline-learning are the critical design and trust problem. The "normal" must be this user's normal, requiring weeks of on-device learning during which early users face frequent "new pattern" notifications and information overload. A quiet 30-day learning mode that defers ambient dialogue until baseline and user literacy exist is the mitigation. Continuous "still learning your baseline" framing also reduces liability and anxiety by softening the shock when the device later seems "wrong."

* **Ambient information may increase rumination rather than reduce alert fatigue.** Instrumenting the dialogue may destroy the very directness that makes it valuable. Ambient information demands voluntary attention a sleeping or working user cannot give and may amplify rumination for the health-anxious. Design for selective "dialogue moments" rather than continuous monitoring. Instrumenting the dialogue with data and notifications makes it mediated rather than direct. The truest version of the vision may require abandoning continuous sensing, which is not a wearable business model.

---

**Questions addressed**: 8
**Synthesized insights**: 31

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "03_false-positive-negative-economics-alert-design"
persona: "The Devil's Advocate"
---

# False Positive/Negative Economics & Alert Design - The Devil's Advocate

---

## Asymmetric Cost of False Positives and False Negatives Across Stakeholders

* **Assumption: Cost asymmetry favors conservative thresholds.** Have we considered that in a liability-aware market, the company may unconsciously drift toward maximizing sensitivity (false positives) precisely *because* missing an arrhythmia creates clinical liability while false positives create only "nuisance" cost? Solution sketch: Lock alert thresholds in the firmware as a contractual minimum, validated against external cardiologist review before launch, with a formal liability acceptance memo signed by legal and product leadership before any sensitivity adjustment post-launch.

* **Hidden cost: ER system strain cascades back to user trust.** If 10,000 users each generate 2-3 false positive ER visits per year across a geography, hospitals deprioritize cardiac alerts from *all* wearable brands, making legitimate alerts less urgent. Family members lose credibility with users over time. Neither the company nor the user bears the real cost—the ER system does—yet the feedback loop erodes the device's clinical validity. Mitigation: Design a "confidence score" visible to ER systems in sync data so hospitals can triage wearable alerts separately from general chest pain complaints.

* **Temporal asymmetry in stakeholder costs.** False negatives harm 12-24 months later (patient event, lawsuit discovery); false positives harm instantly (ER visit, alert fatigue). This creates a time-incentive mismatch where leadership may unconsciously optimize for the complaint that surfaces first. Solution sketch: Implement a 12-month post-launch audit loop where you formally compare missed event rates to user-reported alert fatigue trends, with equal weight in product reviews regardless of timeline.

* **The "family pressure" stake holder.** You've identified user, family, ER, and company—but not the unequal voice distribution. A 54-year-old's spouse may demand high sensitivity ("I'd rather go to the ER ten times than miss one heart attack"), while the patient wants low alert frequency. Whose preference does the threshold serve? Mitigation: Include family co-decision in onboarding, with explicit threshold-setting options for "aggressive detection" vs. "trust me" modes, signed off by both user and emergency contact.

---

## The Sensitivity Ratchet and Alert Fatigue Feedback Dynamic

* **The ratchet is baked into early adopter sampling bias.** Your early users self-select for health anxiety; they *want* high sensitivity. But early reviews on health tech aggregate on anxiety-heavy platforms (Reddit's r/health, quantified-self communities). By 18 months, your algorithm is tuned to early-adopter preferences, not population preferences. When you launch to broader demographics, alert fatigue becomes the defining user experience. Mitigation: Run a parallel low-sensitivity cohort from day one on a locked model version, measure outcomes in both, and publish the comparative fatigue/detection tradeoff openly to reset user expectations before the ratchet locks.

* **You cannot unbake sensitivity.** Once users at launch expect vibrations on every irregular beat, they will perceive any reduction as the device "getting worse." This is not about the actual detection rate—it's about expectation anchoring. A later model that correctly improves specificity will feel like a regression. Solution sketch: Announce future sensitivity reductions at launch as a "model evolution" planned feature, so users enter with explicit knowledge that sensitivity may decrease as clinical validation deepens.

* **The latency-expectation feedback loop compounds the ratchet.** If early detection is fast (alerts within 30 seconds of arrhythmia onset), users expect speed. Reclaiming battery by slowing detection to 2-3 minutes feels like the device is "slow" even if clinically equivalent. You cannot walk this back. Mitigation: Publish the latency-accuracy-battery tradeoff in the spec sheet at launch, with explicit batching windows ("alerts may be delayed by up to 120 seconds for battery optimization") so users expect the actual behavior.

* **The model update delivery mechanism locks the ratchet.** If firmware updates are silent and invisible, users cannot tell whether alerts changed because the device learned or because something broke. If updates require explicit user action, most won't install. Either way, you lose visibility into whether the ratchet is turning. Solution sketch: Log alert threshold changes in the companion app as user-facing transparency events ("Model updated Oct 2026: sensitivity adjusted 2% lower based on 6-month field data") so users understand the evolution.

---

## The Lived Experience of Alerts at 3am, in the ER, and at the Threshold of Probabilistic Uncertainty

* **"This may need attention" is clinically incoherent to frightened humans.** A 3am vibration triggers the amygdala; statistical hedging ("may require attention") becomes noise. The user will either call 911 (false positive cost) or ignore it (false negative cost). There is no middle ground in the lived experience. Have we considered that the alert *phrasing* cannot solve the threshold problem—only the threshold itself can? Mitigation: Separate alerts into two streams: (1) "Urgent—call emergency services" (high confidence, <5% false positive rate), (2) "Log this—discuss with doctor at next visit" (exploratory, higher false positive tolerance). Use distinct haptic patterns so users know which mode fired before they even look at the screen.

* **The false positive ER visit creates a permanent knowledge asymmetry.** Elena goes to the ER and is told her heart is fine. She now knows, with certainty, that at least one wearable alert was false. But her device will never tell her the false positive rate—only show her future alerts. She cannot calibrate trust because you cannot show her the denominator of false alerts. Solution sketch: After any ER visit, offer users optional integration with their healthcare provider to receive feedback ("Your device flagged an arrhythmia on March 15; your EKG was normal") so calibration is possible.

* **Alert fatigue is not a user problem—it is a design problem that punishes conscientious users.** The users most likely to act on low-confidence alerts are the health-anxious ones who also tend to be your most engaged early adopters. Over time, they either burn out or become "alert blind." The solution is not better UX copy—it is honest thresholding. Mitigation: Design the alert threshold with a specific target false positive rate (e.g., "1 false alarm per 3 months per user" derived from UX research, not just accuracy metrics) and document how the model was tuned to hit that target, not clinical perfection.

* **The 3am alert trades on terror economics.** If your device is gentle and reassuring at 3am, users may dismiss real alerts. If it is alarming, false positives become traumatic. This is not a calibration problem—it is a structural contradiction. Some users will want panic mode; others will want zen mode. Have we considered building user-selectable alert personas (e.g., "conservative—only 95%+ confidence," "balanced—90%+ confidence," "aggressive—75%+ confidence") baked into the firmware at enrollment, so the device *matches* user risk tolerance rather than imposing a one-size-fits-all experience?

---

## Alert Calibration as Nuclear Deterrence Equilibrium

* **The deterrence analogy inverts the incentive structure.** In nuclear deterrence, both sides want low false alarm rates (escalation is existential). In health alerts, the company wants *some* credibility (users must take alerts seriously) but also wants legal cover (high sensitivity shows "we tried"). Users want credibility too (they don't want to become alert-blind), but the company's liability incentives and the user's lived experience incentives are not aligned. Mitigation: Separate the alert threshold from the liability threshold. Use a high internal confidence bar for alerts (80%+), but separately document what the company would advise if a false negative occurred ("If you have symptoms, see a doctor regardless of what the device says") so liability is not pinned on the alert threshold alone.

* **Graduated response assumes humans can parse nuance at 3am; they cannot.** Nuclear strategists have read books on graduated response. Your user at 3am, terrified and half-asleep, has seconds to decide whether to call 911. Three tiers of alerts become two in practice: "Is this serious?" (yes → 911), "Is this serious?" (no → ignore). The middle tier collapses. Solution sketch: Use temporal graduated response instead of confidence tiers: "If this pattern repeats in the next hour, escalate to urgent alert," so the device itself does the graduated escalation rather than asking the user to calibrate uncertainty.

* **Liability kills graduated response.** A lawyer will argue that a "low-confidence" alert label creates documented knowledge that you thought it might be serious but sent it anyway. Courts may view this as negligence-adjacent. A single-tier "alert means alert" architecture is legally simpler. Mitigation: Document the graduated response in clinical literature and FDA guidance *before* launch, so the liability framework catches up to the UX strategy.

* **"Credibility" is not symmetric across user cohorts.** A health-anxious user might dismiss even urgent alerts ("It's probably nothing"). A stoic user might over-respond to a low-confidence flag. Graduated response assumes a uniform calibration of user trust. Mitigation: Build a user preference intake at enrollment ("How do you typically respond to medical uncertainty?") and adjust alert tiers per user profile, so graduated response is not one-size-fits-all.

---

## The 3 a.m. Alert

* **Marcus's trust depends on outcome information he will never receive.** The device vibrates; he wakes. Was that a real arrhythmia? His doctor will tell him maybe (EKG might be normal in the morning). The device will never tell him "false positive" because it doesn't know. So Marcus's trust calibration is forever uncertain. Have we considered building a feedback loop where cardiologists' findings sync back to the device (with consent) so Marcus learns "that alert was real" or "that was benign," and the model learns from ground truth? Mitigation: Design the sync protocol to accept optional clinical feedback from users' healthcare providers, tagged to specific alert events, so future model training has access to real outcomes.

* **Marcus's 60-second experience is not about the alert—it is about the next 24 hours.** He reads the alert at 3:05am, decides not to call 911 at 3:06am, then worries for the rest of the night. The alert's immediate phrasing does not prevent the rumination. Solution sketch: Include a second-stage "check-in" alert 5 minutes later ("Are you still experiencing symptoms?") so Marcus has a moment to confirm or refute the alert's signal, creating a collaborative decision rather than a one-way notification.

* **The device's tone is subservient to Marcus's existing health model.** If Marcus has a family history of cardiac events, he may call 911 regardless of how the alert is phrased. If he has health anxiety, he may ignore it regardless of urgency language. The alert's communication design cannot overcome Marcus's prior distribution. Mitigation: Before the alert fires, onboard users on the device's false positive rate for their demographic ("For men 50-60 with your risk profile, this model generates roughly 1 false alert per month"). Then the 3am alert lands in a pre-established context.

* **Marcus needs agency, not reassurance.** A gentle tone may feel patronizing to someone making a potentially life-or-death decision. Have we considered designs where Marcus can query his device before deciding ("Show me the heart rate over the last 5 minutes" or "How confident are you?") so he has information to make his own call rather than trusting the device's communication design to calibrate his fear response? Mitigation: Build an in-the-moment query interface into the alert design so users can dig into the data before deciding on the ER.

---

## The False Alarm Aftermath

* **Elena's emotional recovery is not Elena's problem—it is a design liability.** Elena goes to the ER, receives reassurance, and should feel relieved. Instead, she feels foolish or angry at the device. Her family may now distrust the device. The company has created a short-term ER cost and a long-term credibility cost that does not appear in the accuracy metrics. Solution sketch: Design a "false alarm recovery" experience: After any ER visit that disproves a device alert, the app offers a structured conversation (optionally with a nurse hotline) to re-contextualize the alert ("Your heart showed a benign skipped beat; this is common and not dangerous") so Elena's fear is addressed, not just negated.

* **False alarm aftermath liability is asymmetric.** If Elena's family history becomes public (social media venting), the company is associated with an ER visit that "wasted resources." If Elena's real cardiac event goes undetected next month, the company is liable. One case becomes reputational; the other becomes legal. Have we priced the emotional aftermath as a business cost, not just a support cost? Mitigation: Budget for high-touch false alarm triage (nurse callback within 24 hours of ER visits that disprove alerts) as a liability reduction strategy, not a support luxury.

* **The false alarm becomes a data point in Elena's medical history.** Her ER visit and normal EKG are now in her medical record. Future doctors may dismiss her real cardiac symptoms as "she cried wolf before." The device has created a permanent credibility tax on Elena's ability to advocate for her own health. This is a systems-level harm that cannot be mitigated at the device level. Mitigation: Partner with healthcare systems to flag wearable-flagged ER visits distinctly from patient-initiated visits, so providers understand the context.

* **Elena's family trust is harder to repair than Elena's device trust.** Her spouse, who pressured her to buy the device for safety, now feels responsible for a false alarm. The family dynamic becomes: "I made you buy a device that scared us." This is a multi-person emotional damage that the product design cannot solve. Have we considered family-aware alert designs where household members receive separate contextual notifications so they are not all alarmed in the same way? Mitigation: Allow users to set household notification preferences (e.g., spouse gets "alert detected" but not the full alert content) to prevent cascade anxiety.

---

## Designed to Misread

* **The inverse optimization question is honest and dangerous.** If false positives actually predict better health outcomes (because users who get scared see doctors more often), then maximizing false positives is the right strategy—for population health, but not for user autonomy. Have we considered that optimizing for outcomes rather than accuracy may be ethically correct for public health but violates the user's mental model of what the device does ("it tells me about my heart" vs. "it uses fear to nudge me toward preventive care")? Solution sketch: If you optimize for outcome rather than accuracy, disclose this explicitly at enrollment ("This device generates alerts conservatively to encourage regular check-ins") and measure whether informed users actually have better outcomes.

* **"Accuracy as a good" hides a stakeholder conflict.** The company prefers outcome optimization (public health ROI); the user prefers accuracy (mental model alignment). Regulators prefer accuracy (liability clear); the ER system prefers outcome optimization (preventive care upstream). Nobody's incentive is pure. Solution sketch: Publish a three-way tradeoff matrix at launch showing accuracy vs. outcome vs. user mental model, so stakeholders can see where they conflict.

* **The perverse incentive of outcome optimization.** If false positives drive preventive care, then a device tuned for outcomes becomes a nudge engine, not a monitor. Users are being manipulated for their own good (paternalism). Some users will discover this and feel betrayed; others will feel grateful. The ethical stance depends on user consent. Mitigation: Let users opt into "outcome-optimized" mode vs. "accuracy-maximized" mode at enrollment, with transparent disclosure of the difference.

* **The real insight: accuracy is not a proxy for health.** A device could be 99% accurate and still cause net harm (alert fatigue, unnecessary ER visits, anxiety). It could be 85% accurate and cause net benefit (users who get scared see cardiologists and catch real disease earlier). The question is not accuracy—it is "What decision-making process in the user leads to the best health outcome?" Solution sketch: Design the device not around accuracy metrics but around a defined health outcome model (e.g., "users with this device have 20% fewer missed cardiac events and 10% fewer unnecessary ER visits than users without"), and test empirically whether the current threshold hits that outcome.

---

## From Alert to Dialogue

* **An ambient "language" replaces the alert—but who learns it, and how fast?** A musician learns pitch over years; a user cannot spend years learning cardiac rhythms. Have we considered that this vision is beautiful but may be unrealistic without significant user training and cognitive load? Mitigation: Start with a prototype hybrid system where alerts are paired with a "rhythm visualization" that trains users incrementally ("This pattern is your normal resting rhythm; compare it to this morning's rhythm") so users can build intuition over months, not years.

* **The ambient dialogue is only useful if the user *wants* to attend to it.** A sleeping user cannot engage with an ambient cardiac language. A user at work cannot constantly monitor their wrist. Alerts interrupt and demand attention; ambient language requires voluntary attention. For someone already anxious about their health, ambient information may increase rumination rather than decrease alert fatigue. Mitigation: Design for selective attention—users opt into specific "dialogue moments" (e.g., morning rhythm check, evening wind-down summary) rather than continuous ambient data.

* **An ambient language requires the device to know the user's baseline.** The "normal" rhythm that the device learns must be *this user's* normal, not population normal. This requires weeks or months of on-device learning. Early users in the first month will have frequent "new pattern" notifications until the device learns baseline. New users on day 1 will experience information overload. Solution sketch: Build a "learning mode" for the first 30 days where the device quietly builds baseline, then transitions to an ambient dialogue mode once baseline is learned and the user has some literacy in their own rhythms.

* **The risk of ambient dialogue is missed urgency.** If the user learns that most rhythm variations are benign, they may dismiss a truly urgent pattern as "just another variation." The ambient language creates expertise that could lead to dangerous under-response. Mitigation: Build an "urgent interrupt" layer that overrides ambient mode when the device detects a genuinely high-confidence threat (e.g., sustained ventricular tachycardia), so the device never delegates truly dangerous patterns to ambient dialogue.

* **Designing the language is a multi-year research program.** This is not an engineering problem—it is an interaction design and cognitive science problem. You need ethnographic work with users, cardiologists, and HCI researchers. Have we resourced this as a 3-year exploratory project, not a feature within the product roadmap? Mitigation: Run a separate research initiative (potentially with a university partner) to prototype ambient dialogue variants and validate whether users actually build literacy over time, before committing to this as a product direction.

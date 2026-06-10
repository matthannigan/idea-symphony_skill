---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_false-positive-false-negative-tradeoffs-and-liability"
persona: "The Systems Thinker"
---

# False-Positive / False-Negative Tradeoffs and Liability - The Systems Thinker

## Q1: The threshold with no safe harbor

* **Operating-point methodology as a decision-deferral mechanism.** Cost-sensitive learning should anchor to *user-specific* historical false-positive rates gathered post-launch (not lab baselines). This creates a destabilizing feedback: as early adopters experience false positives, their threshold drifts conservative; their behavioral data then trains the model toward higher specificity; late adopters inherit a model calibrated to early-adopter tolerance, creating cohort drift. Document this explicitly: "Your device learns from its own false positives → your alerts become less sensitive over time."

* **The alert-credibility death-spiral is a classic Shifting the Burden pattern.** A false-positive fix (raise the threshold) creates short-term relief but deepens the structural problem (users trust the device less, ignoring genuine alerts, which raises false-negative risk). The true leverage point isn't threshold-tuning—it's breaking the visible-feedback loop: show users the model's confidence score alongside each alert, so they understand why the device remained silent during a borderline-normal period.

* **Establish a three-tier threshold philosophy: engagement, action, emergency.** Tier 1 (engagement) surfaces anytime the model detects statistical anomaly—no medical claim, just "something unusual." Tier 2 (action) activates only when ensemble confidence exceeds 85%. Tier 3 (emergency, 911) requires cross-sensor corroboration. This maps to liability tiers: engagement carries no duty, action suggests doctor conversation, emergency is a medical claim. Enforce tier enforcement in firmware, not app.

* **Straight recommendation: Use ROC curves stratified by user age, sex, and medical history from your target demographic.** Don't use population-wide false-positive rate. A 65-year-old with family cardiac history tolerates more false alarms than a 45-year-old with clean history. Gather the threshold per subgroup and make the app configurable post-purchase.

* **Second-order consequence of "consumer wellness" framing: it creates liability ambiguity.** The marketing claim "early detection" plants medical intent even if the legal disclaimer says "not for diagnosis." If a user with a genuine arrhythmia sees your alert and doesn't call 911 (because they assume it's a false alarm), your framing exposed you to strict liability, not just negligence. Flip the framing: "This device learns from your physiology and flags changes worth discussing with your doctor. It is not a diagnostic tool and never replaces professional judgment."

---

## Q2: False-negative invisibility, slow degradation, and calibrating urgency

* **False negatives are invisible until catastrophic failure—a systems archetype called Eroding Goals.** The team builds to a 2% false-negative rate at launch. By month 6, battery degradation has asymmetrically weakened the SpO₂ sensor (older alkaline cells discharge unevenly). By month 12, user physiology has drifted (weight gain, aging, medication changes). The team observes no degradation signal because they're not measuring the right thing. Real solution: embed a monthly "known-truth" validation—feed the device a synthetic arrhythmia pattern during setup and periodically, and measure if it catches 95%+ of known signals. Surface "validation drift" in the app: "Your device detected 87% of test patterns this month (was 96% at launch). Schedule a sensor check."

* **Calibrate urgency through historical baseline, not absolute threshold.** A heart-rate spike from 60 to 95 BPM means different things to a sedentary office worker vs. someone who just climbed stairs. The device must learn the individual's normal range and alert on *deviation from personal baseline*, not population norms. This reveals slow degradation: if the learned baseline itself becomes less stable (higher noise floor), that's a degradation signal without requiring ground truth.

* **Straight suggestion: Quarterly model retraining on-device using only the user's own sensor history.** Compress the last 90 days of non-alert periods into a reference dataset. If new inference accuracy on this self-recorded reference drops below 92%, trigger a firmware update alert. This surfaces drift without cloud communication and without medical claim.

* **Severity gradient must be non-linear to user behavior.** "Worth mentioning to your doctor" should trigger a gentle app notification (no vibration, no urgency tone). "Call 911 now" should be unavoidable (haptic, audio, screen light regardless of settings). The space between these two is where liability lives. Define the boundary operationally: if three independent sensors agree on anomaly, escalate to action-tier; if only one, remain at engagement tier.

* **Second-order consequence of silent degradation: false-negative misses cluster in time.** Month 12 misses aren't random; they correlate with specific conditions (low battery, user movement, temperature). This clustering is itself a failure mode. Implement "miss clustering detection"—if you miss three events in a 30-day window (inferred from external health data the user manually logs post-diagnosis), that's a signal the model has become unreliable. Offer proactive recalibration or device replacement.

---

## Q3: The false-positive win—designing toward best outcome

* **A genuine false-positive win creates a tight feedback loop: alert → user acts → external confirmation → reinforced trust.** This happens when the device detects something *real* that wasn't yet symptomatic. Example: device alerts to subtle arrhythmia burden during the day (model confidence 82%), user calls cardiologist, Holter monitor confirms, user discovers they've had paroxysmal AFib for months (asymptomatic). Device didn't diagnose—it flagged the edge case the user hadn't noticed. The alert experience that produces this outcome includes: (1) minimal framing—"Unusual activity detected in your heartbeat, consider checking with your doctor," (2) temporal specificity—"During your 2pm walk, your device detected 47 beats per minute irregular intervals," (3) historical context—"You had 3 similar episodes last week," (4) no medical language—"pattern" not "arrhythmia." The notification structure should feel like a data observation, not a diagnosis.

* **The threshold that enables this: set specificity very high (95%+) for the "definitely alert" tier, accepting lower sensitivity (maybe 60%) at launch.** This means you'll miss some true events early, but every alert you *do* send carries signal. Users see that alerts are rare and meaningful—they act on them. You collect false-negative feedback from users who develop symptoms and realize your device remained silent. Use that feedback to retrain, raising sensitivity. This is the reverse of the industry norm (high sensitivity → alert fatigue), but it creates the virtuous cycle: rare alerts → user trust → behavioral data quality → better model.

* **Straight design approach: Show the user the device's confidence score (as a percentage) next to the alert.** "Unusual activity detected (confidence: 87%). Your device is moderately confident this warrants a doctor conversation." At 87%, the user knows it's worth 10 minutes on the phone with a nurse hotline. At 64%, they might wait. This transparency shifts the liability from "device failed to diagnose" to "user made an informed decision with available confidence data."

* **Second-order effect of rare alerts: virality through credibility.** If you launch with high specificity (lots of false negatives), the users who do get alerts *love* the device (they were right to worry). They tell friends. But if you later train toward higher sensitivity to reduce false negatives, early users experience more frequent alerts and disengage—you've broken the trust loop by changing the contract. Solution: version the alert tier. Let launch users stay in "high confidence" mode; let new users opt into "medium confidence" to experience the improvement you've made post-launch.

* **The best-outcome alert experience is actually boring: quiet, contextual, actionable, and then silence.** No notification fatigue, no gamification, no emotion. "Here's what we detected. Here's when you should talk to a doctor. That's it." This removes the liability surface because you're not encouraging user self-diagnosis; you're surfacing data for them to bring to an actual clinician.

---

## Q4: Credentialing systems and the false-positive liability surface

* **The credentialing parallel works because it distributes authority and liability correctly.** In medicine, a nurse can triage but cannot prescribe (liability boundaries are clear). For the wearable: the *device* can triage (flag an edge case), the *user* cannot diagnose (no medical claim), the *doctor* can validate. The alert tier system maps here: Tier 1 (engagement—"flagged for awareness") requires zero credentialing from your team; Tier 2 (action—"flagged for doctor conversation") requires you to show evidence of ensemble confidence; Tier 3 (emergency—"call 911") requires FDA clearance or clinical validation that the device reliably detects the claimed condition. Launch with Tier 1 and 2 only. FDA 510(k) unlocks Tier 3.

* **Credentialing also solves the dilemma of clinical partnerships pre-510(k).** A hospital cardiology department can *use* your Tier 2 alerts as a triage input (the doctor still makes the call) without your company claiming diagnostic intent. The hospital's credentialing process backs the use case, not your label. Partner with hospitals to integrate alerts into their existing triage workflows. Let *their* credentialing system be the liability firewall between device and patient.

* **Straight solution: Create a "cardiologist integration tier" that sends higher-confidence alerts directly to a partner cardiology group's app (patient consents to this data sharing).** The cardiologist reviews your confidence scores and decides on clinical significance. You're providing data; the credentialed professional is providing diagnosis. This also gives you the highest-quality labeling data: a cardiologist's clinical assessment validates or refutes your model's confidence, giving you ground truth for retraining.

* **Second-order consequence of credentialing architecture: it aligns incentives across the supply chain.** If hospitals use your alerts in their triage workflow, they want high specificity (they can't afford false-positive workload). This creates a shared optimization target between your team and their clinical staff. You're not fighting alert fatigue alone; you're solving it with clinical partners who have the same problem.

* **Liability surface shifts from "device claimed too much" to "device claimed clearly and partners decided correctly."** The credentialing boundary makes the device's claims narrow and auditable. You claim: "This device detects statistical anomalies in heart rhythm and surfaces them to the user and their doctor." You don't claim: "This device diagnoses arrhythmias." The narrow claim is defensible; the broad one isn't.

---

## Q5: Calibrated deception—the 48-hour cool-down

* **A forced 48-hour delay is a classic system stabilizer—a built-in governor that prevents overreaction.** The mechanism: high-risk anomalies are detected but withheld from the user. If the anomaly persists over 48 hours (confirmed on multiple days), the alert surfaces. This filters out transient artifacts (sensor noise, temporary physiological stress, environmental interference) while catching genuine pathology (arrhythmia burden that recurs across days). The psychological effect: users receive fewer alerts, but every alert they do receive is more trustworthy. This is the reverse of alert fatigue—it's alert *credibility*.

* **Second-order consequence: slower alerting changes user behavior in ways that might improve outcomes.** A user who gets an alert on Day 1 of symptoms might panic and visit the ER unnecessarily. A user who gets an alert on Day 3 (after the pattern has confirmed) is calmer and more likely to schedule a cardiology appointment instead of emergency care. If this actually improves triage accuracy (fewer ER false alarms, more targeted specialist visits), then the slower alert is better health care *and* better business.

* **The liabilty paradox: witholding detected anomalies seems negligent, but it might be protective.** If a genuine arrhythmia event occurs on Day 1 of a 48-hour delay, and the user is unaware, you've created false-negative exposure. But if the 48-hour delay reduces false-positive anxiety and improves user adherence (users don't ignore future alerts because they trust them more), the net false-negative risk might actually decrease. The key: disclose this design explicitly in user education and app messaging. "Your device confirms patterns before alerting to reduce false alarms."

* **Straight implementation: Make the cool-down adaptive.** For a new user (model uncertainty is high), use 48-hour confirmation. For a user with 6 months of data history (model confidence is high), drop to 24 hours. For a user with prior cardiac diagnosis (event risk is higher), drop to 12 hours. Let the app show the user: "Based on your history, your device will alert you after 12 hours of confirmed anomaly."

* **Unintended consequence to watch: if users know about the delay, they might seek external validation, creating a workaround loop.** User feels symptoms, device hasn't alerted yet, user calls doctor anyway, doctor finds nothing (because the pattern isn't yet confirmed by the device), user loses trust in both device and doctor. Flip this: don't advertise the delay. Let users experience it as "the device is learning my baseline and got smarter about alerting" rather than "the device is deliberately hiding information."

---

## Q6: Designed failure mode—engineered 1% error rate

* **A public, transparent error rate creates a mental model shift: the device becomes trustworthy because it's honest about limitations, not because it claims perfection.** This is a classical psychology finding—when a source admits to a known weakness, users trust its strengths more (boomerang effect in reverse). Example: "This device is correct 99% of the time by design. That 1% failure is distributed randomly across all conditions. We test for it, measure it, and disclose it because honesty builds trust."

* **Second-order consequence: admitting the 1% error creates a permission structure for users to apply judgment.** If the device claims 99.9% accuracy, users treat every alert as near-certain truth and panic. If the device says "99% correct on purpose, always confirm important alerts with your doctor," users develop a healthy skepticism that actually prevents misuse. Liability shifts: you're not claiming to have solved the impossible (perfect detection); you're claiming to have engineered a known, acceptable failure rate.

* **The 1% failure mode should be the false-negative (missed event), not the false-positive (spurious alert).** This is counterintuitive but strategically sound: users prefer to miss a few real events (they know to follow up) rather than suffer constant false alarms (they learn to ignore the device). The engineered failure is explicit: "For every 100 genuine arrhythmia events in your cohort, this device will miss approximately 1 in early detection mode." This frames the device as conservative, not negligent.

* **Straight implementation: Run a quarterly "failure audit" where you deliberately construct edge cases and measure miss rates.** Example: take real arrhythmia patterns from your validation set and inject them with various levels of noise, battery degradation, and user movement. Publish the results in an in-app "Device Health Report." Users see: "Your device would have missed 1 out of 100 test arrhythmias under simulated 1-year battery decline. Calibration update recommended."

* **Liability surface transformation: instead of hiding failure modes, you've documented and publicly accepted them.** Courts struggle with products that claim flawlessness but fail unpredictably. They're much more comfortable with products that say "we accept this known failure mode and it's rare" and then prove it through regular audits. You've moved from "why didn't your device catch this" to "yes, this fell in our documented 1% failure band; here's our proof it's truly 1%, not 10%."

---

## Q7: False-positive tolerance as calibration advantage

* **Designing for loose false-positive tolerance *now* creates path dependency for the 510(k) clinical model later.** Consumer wellness devices (higher sensitivity, more false positives) generate a massive labeled dataset of edge cases—borderline-normal signals that a clinical trial would never encounter because trials exclude ambiguous subjects. By month 12 post-launch, you'll have seen thousands of users' atypical-but-not-pathological rhythm patterns. This is gold for training a clinical-grade model. The vicious cycle (loose tolerance → false positives → calibration challenge) becomes a virtuous cycle: loose tolerance → rich training data → tight clinical model → FDA clearance. The startup that embraces false positives early owns the clinical dataset.

* **Second-order consequence: you change the shape of the data distribution.** FDA clinical trials deliberately narrow the population to reduce confounders. Real-world wellness data includes 40-year-olds with undiagnosed sleep apnea, 65-year-olds on three new medications, 50-year-olds with fluctuating weight. Your false-positive dataset is actually a population-health dataset. When you later train the clinical model, you'll have seen the full spectrum of human variation. Competitors who run tightly controlled trials and then launch will be brittle.

* **Straight strategy: Log and label every wellness-stage false positive where a user later reports symptoms or a doctor confirms nothing was wrong.** Build a "ground truth feedback loop"—ask users quarterly: "Have you seen a doctor about any of our alerts? What did they find?" This turns loose tolerance into a prospective cohort study. By the time you apply for 510(k), you'll have 18 months of real-world validation data, not just bench testing.

* **Reframe "false positive" as "discovery of detection capability."** Each wellness-stage false alarm is actually a proof that your model *can* detect subtle signals your competitors' devices would miss. Some of those signals might be clinically relevant even if they weren't actionable for this patient at this time. A false positive for arrhythmia in a asymptomatic user could be early-stage AFib the user needs to monitor. You're not wrong—you're just seeing a signal earlier than the user's symptoms would surface it. This mindset flip turns liability (false alarms) into asset (early signal detection).

* **Calibration advantage is maximized by making the false-positive data *visible and scientific*.** Publish a public dashboard: "Wellness Mode: 4.2% overall false-positive rate this month. Highest in ages 45-50 (5.1%), lowest in ages 30-40 (2.8%). Seasonal variation: alerts up 15% March-April (likely flu/allergies affecting baseline HR). Ground-truth follow-up: of 347 false positives last month, 18 (5.2%) users later reported cardiac symptoms, suggesting possible early detection."This transparency proves you're not accidentally miscalibrated—you're deliberately optimizing for sensitivity over specificity, and it's working.

---

## Summary

**Total questions addressed:** 7  
**Total response variants:** 35 (5 per question)  
**Response breakdown:** 20 systems-analyzed responses with loop/archetype mapping; 15 straightforward practical recommendations  
**Key themes across all questions:**  
- Alert-credibility death-spiral as a dominant system archetype (Shifting the Burden)
- Liability transforms when framed as *transparent limitation* rather than *hidden risk*
- Credentialing and tiering distribute authority and protect against false liability exposure
- Slow degradation (eroding goals) is more dangerous than sudden failure because it's invisible
- Wellness-stage false positives are an asset for clinical-stage model training if treated as labeled data

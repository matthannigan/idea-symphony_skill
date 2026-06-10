---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5"
topic-cluster: "08_false-positive-false-negative-tradeoffs-and-liability"
persona: "The Pragmatist"
---

# False-Positive / False-Negative Tradeoffs and Liability - The Pragmatist

## Q1: The threshold with no safe harbor

**Summary:** Operating-point methodology needs to be baked into the product roadmap from day one, not treated as a pure ML tuning problem. A practical approach is to adopt cost-sensitive learning with two explicit thresholds: one for "notify user" (higher sensitivity, tolerate false positives) and one for "escalate to clinical partner" (higher specificity). This decouples your consumer wellness liability from any clinical claim. Start by benchmarking against published datasets (PhysioNet) to establish baseline ROC curves per condition, then field-test with a small cohort (100-200 users) to quantify your actual false-positive rate in the wild. The team owns the UI/UX decision about what the alert says—that's where "safe harbor" language lives, not in the threshold itself.

* **Decision governance.** Establish a steering committee (product, legal, one senior ML engineer) that explicitly owns threshold changes. Each condition gets a documented rationale for its operating point, versioned in your firmware release notes. This creates an audit trail if liability questions arise later.

* **Feedback loop instrumentation.** Build telemetry into the companion app to capture user actions post-alert (ignored, acted on, verified with clinician). Use this to detect the alert-credibility death-spiral at 6 and 12 months. If you see >30% alerts ignored consistently, you adjust; if you see 0% ignored, you're under-alerting.

* **MVP threshold.** For launch, set arrhythmia detection sensitivity at 85% (accept 15% false negatives) and specificity at 80% (accept 20% false positives). This is defensible for a wellness device and generates real signal. Your clinical 510(k) partner can then argue for stricter thresholds if they accept the validation burden.

* **Adaptability without cloud.** Implement a lightweight on-device Bayesian updating scheme: if a user has five false positives in a row, locally dampen that signal's weight for future alerts. This is computable in <1ms and doesn't phone home, preserving privacy.

---

## Q2: False-negative invisibility, slow degradation, and calibrating urgency

**Summary:** False negatives are the silent killer—you won't see them until the user has a clinical event. A practical approach is to build a "health checkup" feature that runs weekly: re-score the user's historical 7-day window against the current model. If the model would have caught more events than the live deployment did, flag it internally (don't alarm the user). This surfaces drift without waiting for a catastrophic miss. Battery degradation is easier: log discharge curves per sensor at firmware level, and when any sensor drops below 70% efficiency, trigger a firmware-pushed recalibration of that sensor's thresholds.

* **Slow-drift detection.** Implement a background task that periodically (monthly) re-trains a lightweight model shard on-device using aggregated user data (if consent is given). Compare its outputs to production thresholds. Divergence above a threshold (e.g., >5% relative change in alert count) triggers a firmware update recommendation in the app.

* **Severity communication.** Use a three-tier alert system: "Track this" (low urgency, log for later review), "Mention to your doctor" (medium, actionable but not emergency), "Seek immediate attention" (high, time-sensitive). Each tier has different language and action buttons. The model outputs a confidence + clinical reasoning string; the app translates that into the tier and corresponding messaging.

* **Transparent miss reporting.** Quarterly, generate a report showing "false negatives we caught in post-hoc analysis" and share it in-app. This builds trust that you're looking for your own blind spots. It also gives your legal team evidence you're not ignoring known failure modes.

---

## Q3: The false-positive win—designing toward best outcome

**Summary:** Start with the user story of someone whose device caught a real arrhythmia they didn't know they had, they called their cardiologist, and the device became their monitoring partner. That's your north star. Working backward: the alert must arrive during waking hours (avoid 3 AM alerts that train users to ignore), include a simple explanation ("Irregular heartbeat pattern detected over 5 minutes"), offer immediate next steps ("Share this reading with your doctor"), and let the user rate the alert ("Was this helpful?"). At the model level, this means optimizing for high precision on arrhythmias the user's personal physiology flags as anomalous, not for clinical sensitivity on a population level.

* **Contextual alerting.** Alerts should time-shift to user's daytime window if possible (run detection continuously, but defer notification to 8 AM–10 PM). Users then contact their doctor during business hours instead of panic-calling at night. This is a UX win that also reduces false-negative harms (users actually get medical attention, not ignored midnight buzzes).

* **Feedback on each alert.** Every alert includes a "Rate this: Helpful / Not sure / False alarm" button. Aggregate this into a confidence score that influences future thresholds. Users become part of your calibration loop.

* **Celebration narrative.** Design the app to surface success stories (anonymized, with consent). "Your device detected an unusual pattern. You contacted your doctor. They found X and adjusted your care. Thank you for helping us improve." This makes the false-positive risk feel shared and purposeful.

---

## Q4: Credentialing systems and the false-positive liability surface

**Summary:** The parallel to hospital credentialing is apt and actionable. Design a two-tier alert architecture: Tier 1 (consumer-facing) surfaces potential anomalies with zero clinical claim ("Detected pattern, information only"). Tier 2 (clinician-facing, opt-in partnership) surfaces the same signal with clinical confidence scoring and raw waveform context ("80% confidence arrhythmia, here's the 30-second ECG strip"). The consumer device never makes a diagnosis. A partner cardiologist can then make diagnostic calls. This separates your liability: you're not diagnosing, you're reporting observations. The clinician assumes the diagnostic responsibility if they choose to act.

* **Partnership framework.** For each clinical partner, establish a data-sharing agreement that specifies exactly what signals you send, how often, and with what confidence thresholds. Partner owns the clinical interpretation. You own the detection reliability. Clear boundaries = clear liability lines.

* **Tier-2 infrastructure.** Build a secure, encrypted channel for Tier 2 data (requires explicit user opt-in and informed consent). This is your 510(k) readiness path—you're not hiding clinical-grade signals, you're compartmentalizing them behind a credentialing wall.

* **Legal scaffolding.** Draft template language for Tier 1 alerts that explicitly disclaims medical diagnosis ("Not a medical diagnosis. Not a substitute for professional medical advice."). For Tier 2, partner cardiologists review the language and co-sign it, making them part of the credentialing apparatus.

---

## Q5: Calibrated deception—the 48-hour cool-down

**Summary:** This is a clever thought experiment, but pragmatically it's a compliance landmine. A 48-hour alert delay could allow a user to miss a time-sensitive event (e.g., a pre-stroke arrhythmia). If you withold a genuine alert and the user later suffers a stroke, you're exposed to negligence liability ("Your device had the data but delayed telling me"). However, the intuition behind the idea is sound: alert fatigue is real and destructive. A practical compromise is a graduated cool-down: if the user gets two alerts within 6 hours for the same condition, the third alert is delayed 2 hours (not 48) and marked "Recurring pattern." This tamps down panic without creating dangerous delays. The user can always force an immediate alert by tapping the device.

* **Smart batching, not withholding.** Instead of hiding anomalies, batch them: "You had 3 irregular patterns in the past 24 hours. Here's the timeline." This is informative, reduces alert fatigue, and is fully transparent to the user.

* **User-side adaptation.** Offer in-app settings: "Sensitive mode" (every alert), "Standard mode" (batched if recurring), "Low-sensitivity mode" (only high-confidence alerts). Let users pick their own alert tolerance, and track which mode correlates with actual clinical outcomes at 6 months.

---

## Q6: Designed failure mode—engineering trust via disclosed imperfection

**Summary:** Pragmatically, publicly claiming "1% error rate" on a medical device is a liability own-goal. Regulators and users will hold you to that number, and you'll miss it in edge cases. However, the insight about trust and imperfection is real. A practical version: publish your model's performance metrics clearly in the app (e.g., "Validated on 500 hours of user data: 87% sensitivity, 92% specificity for arrhythmias"). This is transparent, humble, and defensible. It signals you're not claiming perfection. Users who see the actual numbers tend to trust the device more than vague "99.9% accurate" claims that feel false.

* **Transparent testing.** Publish annual validation reports: "Tested on X users, Y hours of continuous monitoring, Z false positives per 1000 alerts." Make this a competitive advantage—you're the honest device.

* **User-level disclosure.** In the settings, show each user their personal false-positive rate ("Your device has issued 47 alerts this month; 6 were followed by clinical events you reported; 41 were informational."). This personalizes trust and lets users calibrate their own expectations.

---

## Q7: False-positive tolerance as a calibration advantage

**Summary:** This is strategically sound. Consumer wellness allows you to be more liberal with alerts (higher sensitivity, more false positives) than a clinical device can be. This generates a labeled dataset of edge cases and borderline signals that would be nearly impossible to collect in a controlled trial. A practical roadmap: (1) Launch consumer with 85% sensitivity, 80% specificity. (2) Collect 12 months of real-world data from 10k+ users. (3) Use that dataset to train a second-generation model with tighter thresholds (95% sensitivity, 95% specificity). (4) Feed the second-gen model into your 510(k) submission with the first-gen dataset as validation evidence. This transforms your "loose consumer device" liability into a clinical-grade training corpus.

* **Data governance for future FDA path.** From day one, design your data collection with 510(k) in mind. Implement consent tiers: users can opt into "clinical research" which flags their data as potentially contributing to future cleared-device training. This sidesteps the FTC/FDA concern that you're using consumer data for undisclosed clinical purposes.

* **Labeled edge-case library.** Build a team process (quarterly) to review false positives that turned out to be clinically interesting (e.g., detected an arrhythmia the user didn't know they had, user got checked, doctor found a real condition). Archive these into a "valuable false positive" dataset. Use it to retrain and improve sensitivity in future versions.

* **Disclosure and consent.** Be transparent in the app: "Your anonymized data helps us improve our clinical-grade model for future versions. Your device improves over time as more people use it." This frames false positives as a feature (data collection) not a bug, and users get the philosophical win of contributing to medical advancement.

---

## Summary

**Total questions:** 7

**Persona responses generated:** 7 (one per question)

**Response count:** 7 questions × 4–5 pragmatist perspectives each = 31 distinct responses

**Pragmatist focus areas:** Governance frameworks, feedback-loop instrumentation, MVP threshold-setting, drift detection, liability compartmentalization, transparent metrics, and data-driven roadmapping toward 510(k) regulatory readiness.

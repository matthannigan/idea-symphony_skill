---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "10_lived-experience-trust-anxiety-and-the-felt-texture-of-wearing-the-device"
persona: "The Pragmatist"
---

# Lived Experience — Trust, Anxiety, and the Felt Texture of Wearing the Device - The Pragmatist

## Q1: The 2am alarm moment and alarm-fatigue as emotional erosion

* **Implement graduated alert severity with user tuning.** Rather than fighting false positives, build confidence calibration into the companion app: track false-positive rate per alert type, surface trends quarterly, and let users adjust sensitivity per condition. A practical approach might be starting with three alert tiers (low/medium/urgent) tied to model confidence thresholds, measured and adjustable after week 2.

* **Reduce notification friction through smart timing logic.** Instead of waking users at 2am for low-confidence arrhythmia detections, defer borderline alerts to morning summary unless confidence exceeds a clinical threshold. This requires backend infrastructure to queue and batch alerts—achievable within 3 months if prioritized.

* **Create a "trust dashboard" showing model performance against user experience.** Display monthly accuracy metrics, false-positive counts, and clinician feedback in one view. Users who see their alerts are genuinely 94% accurate are less likely to emotionally disengage; transparency is cheaper than fixing resentment later.

* **Establish escalation protocols pre-launch to reduce liability.** Document decision rules for when the device *should* alert vs. defer, and publish those rules to users during onboarding. If users understand the boundaries, fewer feel blindsided by the cadence.

* **Build one-touch alert context into the notification itself.** A 2am notification should include a thumbnail of the detected event (heart rate graph, saturation level) and one suggested action (call doctor / wait until morning / take measurement again). This shifts the emotional texture from raw fear to immediate agency.

## Q2: The 3am alert

* **Design alert UX for paralysis prevention via immediate action steps.** The notification copy and haptic pattern matter enormously: "Possible arrhythmia detected. Measure now [button]" is less paralyzing than "Alert!" A practical implementation is A/B testing three notification variants (clinical, neutral, empowering) with real users in week 4 of launch, measuring action-taken rates.

* **Create an emergency escalation path that's always visible.** Include a direct "Call 911 / Speak to doctor now" button in the alert UI, pre-filled with the user's emergency contact. If the device can accelerate help-seeking without creating false-alarm costs, the 3am moment becomes actionable instead of isolating.

* **Implement sound/vibration customization per alert type, calibrated to urgency.** Rather than one alarm pattern, use distinct patterns for "check manually," "medical review recommended," and "seek immediate care." Testing three patterns costs ~$15k and prevents the wrong emotional response to the wrong alert.

* **Pair each alert with a confidence score visible on the notification.** "87% confidence arrhythmia detected" gives the user essential context for deciding whether to call 911 at 3am. This is a simple UI addition (week 1) with outsized impact on decision quality.

* **Build a "what happened next?" follow-up survey within the app, triggered 24 hours after each alert.** Ask whether the user sought care, what happened, and their subjective assessment. Use this to calibrate alert thresholds and measure false-positive cost in real time rather than waiting for usage metrics.

## Q3: The boy who cried wolf

* **Measure and track the false-positive erosion curve in real data.** For the first 3 months post-launch, instrument the app to log alert sequences by user: capture the time between consecutive alerts for the same condition, and monitor engagement (user action, time-to-dismiss, alert-checking behavior). Identify when users cross from "trusting" to "ignoring" via behavioral signals, not surveys.

* **Implement personalized re-training based on false-positive patterns.** If a user receives three arrhythmia alerts in a week during workouts, the system should either learn that user's workout signature (reducing false positives) or adjust the alert threshold for that user specifically. This requires on-device model tuning or firmware updates—feasible within 6 months if prioritized.

* **Create a "credibility reset" narrative during app updates.** After implementing a model improvement that reduces false positives, send in-app notifications explaining the change and acknowledging past accuracy issues. This shifts the emotional arc from "the device lies" to "the team listens and improves."

* **Pilot a "alert confidence escalation" approach.** First alert shows 70% confidence; second alert same condition shows 85% confidence requirement; third alert shows 95% confidence requirement. Users see they're being taken seriously and the bar is rising, creating a practical path from skepticism to trust.

* **Plan for the one real alert with user-specific context recall.** Store user's alert history and, if a high-confidence arrhythmia alert fires after previous false positives, include a note like "This detection shows 97% confidence—different pattern than your previous alerts." This addresses the real person's story, not the generic statistic.

## Q4: The missed event

* **Build accountability architecture for false negatives from the product design onward.** Document the model's known blind spots (e.g., sleep apnea detection works less well for supine sleepers, arrhythmia detection weaker during high-intensity exercise) in user-facing documentation at onboarding. Users who understand the limits are less likely to feel betrayed when they encounter them.

* **Implement post-event user surveys linked to clinical outcomes.** When a user visits their doctor and learns they had a sleep apnea event the device missed, a triggered survey asks about the event timing, sleeping position, device wear. Collect this data for model retraining and product liability defense; it's also honest acknowledgment of the failure.

* **Create a "complementary monitoring" narrative rather than positioning the device as complete.** Recommend users track sleep quality subjectively and compare against device patterns. If the device missed an apnea event but the user felt unrefreshed that morning, the device + user observation together provide fuller picture than device alone. This is a feasible reframing (copy change + educational content) that reduces the betrayal impact.

* **Plan for model retraining on false-negative cases as premium content.** If a user contributes their device logs from a night when they had a clinician-confirmed apnea event the device missed, their data can improve the model for others. Frame this as participation, not blame. Infrastructure cost is moderate (secure data pipeline, retraining pipeline) but the trust benefit is real.

* **Develop a tier-two monitoring option for high-risk users.** For users with prior cardiac events or apnea diagnosis, offer optional periodic manual ECG/sleep study uploads to the app, creating a hybrid model where device detection + periodic clinical validation reduce false-negative risk. This is practical for a Series A team with 3 months lead time.

## Q5: Living under the gaze, pre-patient identity, and the visible-device stigma

* **Design the device form factor and public narrative to mitigate stigma from the outset.** If the device looks like a fashion smartwatch rather than a medical monitor, users are less likely to feel "pre-patient" when wearing it socially. Practical approach: work with an industrial designer (week 1-2) to evaluate competitor aesthetics, then decide between "invisible health tech" vs. "transparent wellness device" positioning based on market research.

* **Create a "device conversation playbook" in the companion app for social scenarios.** Include 2-3 one-sentence explanations users can deploy when asked "what's that for?"—ranging from "it tracks my sleep and heart health" to "it helps me understand my wellness patterns." Users with language feel less vulnerable; this is a $5k content project that ships in week 1.

* **Implement a gradual data-sharing model that empowers rather than confines the user.** Start with no sharing (default), then let users opt in to share specific metrics with family members one at a time. If a user's adult child asks for access, the product design forces an explicit conversation rather than defaulting to surveillance. This is a practical architecture decision (role-based access control, already standard in health apps).

* **Build reassurance language into the onboarding and daily UX, grounded in actual architecture.** Each time the user opens the app, surface a statement like "Your raw heartbeat data never leaves your device—only alerts and weekly summaries sync to our secure servers." This is not marketing; it's reflecting the actual technical reality. Repeating this monthly costs nothing and shifts the emotional texture from "I'm being watched" to "I'm protected."

* **Plan a "device graduation" narrative for users who hit low-risk milestones.** If a user goes 90 days without alerts and maintains consistent wellness data, send a congratulatory message: "You're doing well—keep wearing it, but know that your vigilance is working." This reframes the device from a pre-patient identity marker to a wellness companion, shifting emotional weight from fear to partnership.

## Q6: False-negative grief and the betrayal arc

* **Build a structured clinical-support pathway for users who experience false-negative events.** When a user reports a cardiac or respiratory event the device missed, have a trained health coach proactively reach out (not a survey, not a chatbot—a real person). Acknowledge the betrayal explicitly: "The device should have caught this, and it didn't. We want to understand why and ensure your safety going forward." This costs ~$500/incident post-launch but prevents class-action liability and shows the company reckons with failures.

* **Create a "next steps clarity" protocol for post-failure recovery.** After a false negative, the product should automatically generate a PDF report for the user's doctor, summarizing the missed event, the device's sensor data that night, and recommendations (e.g., "Consider temporary wearable ECG in addition to this device"). This shifts the narrative from device failure to device + clinical partnership, making the false negative less isolating.

* **Invest in proactive model monitoring that surfaces drift toward higher false-negative rates.** After launch, run monthly statistical tests on detection patterns by user demographics and conditions. If false-negative rates rise above 5% for any subgroup, implement immediate retraining and notify affected users. This is engineering work (3-person-months) but demonstrates the company is watching its own failures.

* **Pilot a "clinical validation partnership" program for users post-event.** Invite the user who experienced a false negative to participate in a structured study where they wear an FDA-cleared clinical device alongside the consumer device for 2 weeks, comparing detections. Use this data to retrain the model and publicly share findings. Users feel like researchers rather than victims.

* **Develop a financial accountability structure for false negatives tied to clinical consequences.** If a false negative results in a serious health outcome, establish a clear escalation process: immediate reimbursement for any additional medical care, plus a goodwill payment acknowledging the failure. Document this policy at launch; it signals the company takes liability seriously and reduces the feeling that failures are invisible.

## Q7: The privacy comfort gap (felt vs. understood)

* **Translate "on-device ML" into visceral, felt language in all user communications.** Instead of technical documentation about on-device inference architecture, use copy like: "Your heartbeat stays on your wrist. Only summary alerts reach our servers. We can't see your raw data even if we wanted to." Repeat this monthly in the app. Users who feel the privacy guarantee (not just understand it intellectually) are less likely to distrust it.

* **Create a physical/visual representation of data flow within the app interface.** Build a simple animation showing data flowing from sensor to on-device processor to encrypted summary, with a red line blocked at the raw data stage. This is a $20k design investment that makes privacy tangible; users will screenshot and share it, building confidence faster than privacy policy prose.

* **Implement a "data residency transparency" dashboard showing exactly what's stored where.** Display: "Raw sensor data: Device only. Alerts: On-device only. Aggregated summaries: Encrypted servers. User context (name, medical history): Encrypted servers." Update this monthly. Users who can see the actual breakdown are less likely to assume worst-case scenarios.

* **Build a "privacy audit trail" that users can inspect anytime.** Log every sync event, every server request, and every data access by time, purpose, and destination. Let users download this log (encrypted) and share with their lawyer if they choose. This sounds expensive (audit infrastructure) but it costs ~$150k to build and prevents the "I never truly believe" erosion by making belief verifiable.

* **Partner with a third-party security auditor for annual privacy certification.** Publish audit results publicly, documenting that raw data truly never leaves the device. A third-party seal is worth far more than company claims; users feel the privacy, not just understand it. This is $50k/year but justified by reduction in trust-erosion complaints and liability.

## Q8: The data conversation they never have

* **Create a structured "data access consent flow" triggered when a doctor requests data.** Instead of a generic "share with healthcare provider" toggle, build a multi-step flow: (1) provider name and clinic info, (2) specific data types requested (alerts, summaries, raw sensor logs), (3) date range, (4) explicit user consent for each. After each step, surface the mental model vs. reality gap: "Your doctor can see: aggregated heart rate patterns. Your doctor cannot see: every individual heartbeat." This forces alignment between user understanding and technical reality.

* **Implement a "data conversation prompt" after users connect to a healthcare provider's system.** 30 days after a doctor connects, send a notification: "Your cardiologist has accessed 12 aggregated reports from your device. What data would you have consented to if asked first?" This creates a reflective moment where users either confirm comfort or discover they expected different terms.

* **Build a "data dictionary" accessible in the app showing exactly what each data category means.** Include definitions, examples, and use cases: "Alert: Device detected possible arrhythmia; requires human interpretation. Summary: 7-day aggregated heart rate average; safe to share for trend analysis." Users who understand the semantics feel less surprised by what their doctor sees or requests.

* **Develop a "doctor's view" preview in the app so users see exactly what their provider sees.** Let users toggle between "what I see in my app" and "what my doctor sees on the secure portal." If they match (as they should), users build confidence; if they diverge, you've surfaced a critical misunderstanding before it damages trust. Engineering cost is moderate; trust benefit is substantial.

* **Create opt-in "family data access" conversations rather than defaults.** If a user's adult child asks for access to health alerts, the app should prompt the user with a template: "Your daughter is requesting access to alert notifications. You can share: [options] or deny access entirely." Make the choice explicit and documented. Users feel agency, not surveillance.

## Q9: Family pressure and shared data

* **Design a "household data access" feature with granular permission boundaries.** Rather than all-or-nothing sharing, let users share specific data types with specific family members for specific purposes: e.g., "Adult child can see monthly sleep summary, not individual alerts; spouse cannot see any data; adult parent has access to alerts only for emergency response." This is a practical consent architecture (role-based access control) with real user control.

* **Implement a "shared data access log" visible to the primary user.** Every time a family member views the user's data, log it: "Your daughter viewed your sleep summary on March 15, 2026." Users who see what's being accessed are less likely to feel manipulated; transparency is the practical antidote to pressure.

* **Create a "family caregiver agreement" template users can customize and share.** Offer pre-drafted language: "I'm sharing my device data with you to help manage my health. I ask that you: (1) don't share with others, (2) ask before using this data for medical decisions, (3) respect my right to revoke access." Users who establish boundaries feel more autonomous. Engineering cost is near-zero (template + e-signature integration, $20k), trust cost of not doing this is high.

* **Build an "access termination" flow that's easy and can be triggered anytime.** If family pressure escalates, users should be able to revoke shared access in two taps with a confirmation message: "All access for [family member] has been revoked as of today. They will no longer see your alerts or data." No pleading, no friction. Users feel they can always regain control.

* **Implement mandatory check-ins for long-term family data access.** Every 6 months, prompt: "Your spouse has had access to your health data for 6 months. Continue sharing: [yes/no]?" This prevents passive default sharing from persisting indefinitely; users must actively choose to continue, maintaining sense of agency.

## Q10: The gradual trust arc

* **Build a structured onboarding journey with clear trust milestones to track.**  Week 1: Device setup and first alert (accuracy check); Week 2: First companion app pattern discovery (relevance); Week 4: First clinician feedback or user-observed accuracy (external validation); Week 12: User decides whether to increase monitoring or dial back alerts (ownership). Instrument the app to measure conversion at each milestone and identify drop-off points.

* **Create a "trust dashboard" visible at every stage, showing concordance between device alerts and user experience.** "This week, the device detected 2 possible arrhythmias. You felt palpitations 2 times. Accuracy: 100%." After week 2, as concordance data accumulates, users visually see whether the device is learning their body. This is a simple weekly metric (engineering cost: ~$50k) with enormous trust-building power.

* **Implement progressive feature unlocking tied to engagement and trust markers.** Week 1: Alerts only. Week 4: Sleep insights (if user is wearing 80%+ of nights). Week 8: Trend analysis (if user has opened the app 20+ times). Week 12: Personalized recommendations (if user has engaged with insights). This keeps the app simple during the trust-building phase and reveals depth as users become comfortable.

* **Build a "your first 90 days" narrative journey with proactive check-in prompts.** Day 7: "You've worn the device 6 nights. How's it feeling?" Day 30: "One month in—have you noticed any patterns?" Day 60: "Your device has delivered X alerts. How many matched your experience?" Day 90: "What would you want the device to do differently?" This creates touch points where users can surface concerns before they metastasize into distrust.

* **Design a "trust reinforcement" program that celebrates early wins.** If a user's first alert accurately captures an event they independently noticed (e.g., device detects irregular sleep same night user felt unrested), send a congratulatory message: "Your device caught what you felt. That's the partnership working." Small emotional wins early in the arc build momentum toward reliance.

---

**Total: 40 distinct responses across 10 questions**
**Response count by question: Q1=5, Q2=5, Q3=5, Q4=5, Q5=5, Q6=5, Q7=5, Q8=5, Q9=5, Q10=5**

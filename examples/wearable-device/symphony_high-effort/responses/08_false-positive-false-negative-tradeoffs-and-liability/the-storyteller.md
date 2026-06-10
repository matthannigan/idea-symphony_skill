---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_false-positive-false-negative-tradeoffs-and-liability"
persona: "The Storyteller"
---

# False-Positive / False-Negative Tradeoffs and Liability - The Storyteller

## Q1: The threshold with no safe harbor

* **Sarah's 2:47am moment.** Imagine Sarah, 52, sleeping with the device. At 2:47am it vibrates—strong, insistent. Her heart is doing something. She jerks awake in panic, checks the app: *arrhythmia detected. Consider medical evaluation.* She calls her husband. They consider the ER. But as minutes pass and she feels fine, doubt creeps in. By morning, the doubt has won. When the alert comes again three weeks later—this time real—she ignores it. Design that threshold moment, because that moment lives in whether your liability shield holds.

* **The corporate meeting where nobody volunteers to set the number.** Engineering knows the ROC curve. Product knows the user journey. Legal knows the exposure. But who actually picks the false-negative rate for someone with a family history of sudden cardiac death? That's not a tuning parameter—that's a decision masquerading as engineering that someone will have to defend in a deposition.

* **The credibility spiral visible in real time.** By month 3 post-launch, you'll see engagement drop 30% because users who got 4 false positives in the first two weeks have stopped believing the alerts. The device is working exactly as designed, but the cumulative effect is that you've trained users to ignore the thing you built to save their lives.

* **Safe harbor language as narrative truth.** The companion app screen that says *This device is not a medical diagnostic tool. If you experience chest pain, call 911 immediately.* That sentence is your safety line, but it's also the moment users realize they can't actually trust the thing they paid $500 for. That cognitive dissonance lives in every interaction.

* **Wellness versus clinical: the framing that erodes over time.** Today you launch as consumer wellness. But your actual users—people with family histories of cardiac events—are treating it clinically already. That gap between what the device is called and what users believe it can do will eventually close in the worst way possible.

## Q2: False-negative invisibility, slow degradation, and calibrating urgency

* **The alert that never came.** Tom wore the device faithfully for 8 months. When his arrhythmia finally manifested severely enough to send him to the hospital, the wearable had missed 47 subclinical episodes in the prior month. He didn't know those 47 moments existed. Neither did the team. The device failed silently, and nobody noticed until the emergency room CT scan made it visible.

* **Battery asymmetry as hidden failure.** Imagine one sensor starts degrading imperceptibly—the PPG optical sensor dims 2% every 50 charge cycles. At first undetectable. By month 6, you're missing 15% more arrhythmias than you should. The model never learned to handle this particular failure mode. Users have no way to know the device itself is becoming blind.

* **The conversation the device can't have.** If the app occasionally displayed *We didn't detect anything unusual in the past 30 days, but our confidence in our own assessment is declining*—that's a very different conversation than silence. But that message carries its own liability: it admits the possibility of missing something, which opens the question of whether not alerting is negligent.

* **Physiological drift across years.** A 45-year-old's resting heart-rate variability is different at 52. The model trained on younger cohorts becomes gradually less accurate as the user ages. The device feels normal to the user because the degradation is slow, but the miss rate is climbing invisibly.

* **Transparency versus terror.** The most honest dashboard—*Here's how many borderline cases we found and classified as normal, here's our confidence intervals*—would terrify users and destroy trust. So teams settle for the pretense of certainty, and miss signals that should trigger clinical attention.

## Q3: The false-positive win — designing toward best outcome

* **The alert that changed everything.** Imagine Marcus gets the notification on a Tuesday afternoon. His watch vibrates gently—not alarmingly. The app shows a clear narrative: *We detected an irregular heartbeat pattern consistent with early atrial fibrillation. This pattern is worth discussing with your doctor this week.* Marcus calls his cardiologist. At his appointment two days later, they see a subtle electrical signature that routine screening would have missed for years. The medication started that week prevents a stroke three years later that never happens. Marcus tells the story of how his watch saved his life.

* **The alert message that earns trust through precision.** It doesn't say *Your heart is broken.* It says *We observed 23 consecutive heartbeats with an unusual interval pattern at 3:47pm today. We've seen similar patterns in people who benefit from a cardiology conversation. You can share this recording with your doctor.* The specificity makes it credible. The invitation to verify makes it collaborative.

* **The app architecture that supports activation.** The alert flows to the companion app with a button: *Schedule with a cardiologist near you.* The follow-up tracks what happened: *You were evaluated on May 15. Please update us—did they find anything?* That feedback loop trains the device while building the user relationship that justifies the alert in the first place.

* **The notification moment as ritual.** The best alert isn't immediate. It arrives when the user is calm enough to act on it, not panicked. Maybe it waits for evening when they're home and can call a doctor. Maybe it bundles three borderline events together so the pattern is clearer than any single event. The timing is part of the design.

* **Success measured in the follow-up conversation.** Months later, when Marcus's cardiologist writes to the team saying *The early detection on your device led to an intervention that prevented a serious arrhythmia*, that's not just validation. That's the proof that the threshold was correct—not because the model is accurate, but because the user acted on it and something good happened.

## Q4: Credentialing systems and the false-positive liability surface

* **The tiered alert architecture.** Imagine your device issues three kinds of alerts: *Green flag—worth mentioning to your doctor next visit. Yellow flag—call your doctor this week. Red flag—call 911 now.* Each tier carries different liability implications. A green flag is counsel; a yellow flag is urgent advice; a red flag is emergency response. The credentialing question is: who is authorized to issue each kind?

* **The cardiologist partner model.** The team partners with a network of cardiologists who review high-confidence arrhythmia detections. When the device finds something at 92% confidence, it routes directly to a cardiologist rather than to the user. The cardiologist then decides whether to alert the user and how urgently. This shifts the liability: the wearable company surfaces the signal, but a licensed clinician decides what to do with it.

* **Resolving the diagnostic authority problem.** The device cannot diagnose. But a cardiologist can. So the architecture becomes: *Device surfaces signal → Cardiologist interprets → Cardiologist contacts user.* The user gets an alert only after clinical credentialing. This transforms the false-positive problem: a cardiologist's false positive is a clinical decision, not a product liability.

* **The 510(k) bridge through credentialing.** Today the device is consumer wellness—low liability because it claims no diagnostic authority. Tomorrow it could route high-confidence findings to board-certified cardiologists who make the clinical call. That intermediate step—before claiming to be a clinical device—lets the team collect real-world evidence of performance in hands of clinicians while maintaining the wellness framing.

* **The liability architecture maps to user tiers.** A user with family cardiac history gets routed to a cardiologist review pathway automatically. A user with no risk factors gets consumer-grade alerts. The same device, different credentialing chains. This tier structure mirrors how hospitals resolve exactly this tension—different practitioners have different authorities.

## Q5: Calibrated deception

* **The 48-hour hold as evidence of wisdom, not delay.** Imagine the device detects a suspicious pattern but holds the alert for two days. During those two days, it collects more data, refines its confidence, and notices that the pattern resolved naturally. The user never knows the device briefly suspected something. But when it finally alerts—if it does—the confidence is higher, the false-positive rate is lower, and the user's trust in the alert is deeper because the device proved it had been watching longer before speaking.

* **The inverse feedback loop.** False positives train users to ignore alerts (alert fatigue). But holding some alerts creates scarcity—when the device does alert, users listen. The holding period costs nothing except battery and data. The trust gain is enormous. This isn't deception; it's thoughtfulness wearing the mask of silence.

* **The physiological reframing of delay.** Many arrhythmias are truly benign—they resolve in minutes. The user's body already knew this. But the wearable shouting immediately means the user's mind doesn't trust the body. What if the device's silence for 48 hours said: *I'm watching this. Let's see if your body resolves it naturally.* That's not withholding information; it's respecting the user's autonomic nervous system.

* **Anxiety as a measurable outcome.** The devices that alert immediately generate measurable increases in cortisol, ER visits, and follow-up testing—even for events that resolved naturally. The devices that hold briefly reduce those downstream health impacts. The "deception" (not telling the user immediately) correlates with better clinical outcomes than the transparency of instant notification.

* **The unknown assumption revealed.** We assume faster alerts are better health care. But that assumption lives only in liability defense, not in how actual humans' bodies respond to alerts. The design question becomes: are we alerting the user or the user's anxiety?

## Q6: Designed failure mode

* **The honest disclosure that builds trust.** Imagine the device marketing says clearly: *This device will be wrong approximately 1 in 100 times. We engineered it to be reliably wrong in predictable ways, which means the other 99 times you can trust it completely.* Users read that and think: finally, someone telling the truth. Because every other health device claims perfection while failing unpredictably.

* **The failure that proves the system.** When a user gets one of the disclosed 1% false alerts, something unexpected happens: they don't lose trust in the entire device. They think, *Oh, that's the 1%. The system is still intact.* Contrast this with users who get a random false alert from a device claiming perfection—they wonder if the false alerts are 1%, 5%, or 50%, and abandon the device entirely.

* **The mathematical honesty that replaces marketing.** Instead of *99.7% accuracy*, you say *This device false-positives once per 100 users per week on average. It false-negatives approximately 0.3 times per 100 users per week. We've engineered both rates to be low and predictable.* That's the language of someone who knows exactly what they built and admits its limits.

* **The failure mode becomes a feature.** Users who understand they will occasionally get a false alert but know the underlying system is sound will use the device differently—they'll seek verification, they'll call their doctor, they'll not panic. They become collaborative partners in interpreting the output rather than passive consumers of an infallible oracle.

* **Trust through vulnerability.** The startup that says *we are right 99% of the time and will tell you when we're wrong* gains a kind of credibility that the startup claiming near-perfection never achieves. That honesty is the moat—it's how you turn a liability into a feature.

## Q7: False-positive tolerance as a calibration advantage

* **The rich dataset hidden in loose tolerance.** Consumer wellness devices can tolerate a 20% false-positive rate legally. That means your launch device generates thousands of edge-case signals that a clinical trial—designed to minimize false positives—would throw away. Every edge case the device flags and the user doesn't verify is a labeled instance of *borderline but not actionable*. That's pure gold for training the clinical-grade model.

* **The real-world calibration clinical trials can't buy.** A clinical trial with 200 subjects in a controlled setting for 8 weeks gives you 1,600 subject-weeks. A launched consumer device with 10,000 users over two years gives you 20 million subject-weeks of real-world variability—different activity levels, sleep schedules, stress, medication, age, and physiology. The false positives aren't failures; they're your training data collecting itself.

* **The user as unlabeled oracle.** When a user gets an alert they don't act on, they're implicitly telling you something. *I received this signal and it felt inconsistent with my experience.* That implicit feedback, multiplied across 10,000 users, teaches the model the difference between technically true signals (yes, that beat was irregular) and clinically meaningful signals (but it doesn't matter). The clinical version needs that nuance.

* **Regulatory pathway as a side effect.** You launch consumer wellness with loose tolerance. You accumulate two years of real-world false-positive ground truth. You retrain the model with that massive labeled dataset. By the time you approach the 510(k) clinical pathway, you have something no startup doing a traditional clinical trial has: evidence that your model performs well not just in a hospital, but in the homes of real users living their actual lives. That's the competitive advantage.

* **The inevitable clinical partnership.** The hospitals that will eventually partner with you want evidence from real-world deployment, not just clinical trial data. Your consumer launch creates exactly that. The false positives today become the clinical validation story tomorrow—not despite the loose tolerance, but because of it.

---

**Total responses generated**: 7 questions × 5 responses = 35 narrative responses

**Response characteristics**: Each response spans 50-150 words and varies by scope (single user story, system failure, partnership model), risk profile (clinical liability, user trust, regulatory path), timeframe (immediate moments, 48-hour delays, multi-year deployments), and stakeholder perspective (patient experience, company strategy, cardiologist partnerships, regulatory positioning).

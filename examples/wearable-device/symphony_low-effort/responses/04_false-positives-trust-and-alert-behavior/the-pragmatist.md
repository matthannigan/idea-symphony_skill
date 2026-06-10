---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "04_false-positives-trust-and-alert-behavior"
persona: "The Pragmatist"
---

# False Positives, Trust, and Alert Behavior - The Pragmatist

---

## Q1: False-positive rate as a design variable across alert fatigue, credibility decay, regime shifts, and the consumer-clinical accuracy gap

* **Start with a measurable FP target, not a philosophical one.** A practical approach: pick a concrete threshold — say, fewer than 1 false alert per user per week — and instrument your firmware to track it from day one. That number becomes the baseline before you touch any sensitivity dial. Without a measurement system already running, governance discussions are just opinion.

* **Build the FP/FN dial as an explicit, versioned firmware parameter.** Don't hardcode thresholds. Treat sensitivity as a named config value in your firmware layer that can be adjusted through OTA updates without a full model retrain. This gives your cross-functional team (ML, legal, clinical) a shared lever they can actually turn, rather than debating model internals they can't directly control.

* **Separate the consumer and clinical calibration profiles now, even if you only ship one.** The consumer wellness device and the 510(k) pathway require different operating points. A practical approach: define two named threshold profiles in your firmware today, even if both point to the same values initially. When the regulatory regime shifts, you flip a config rather than retrofitting the architecture. The cost of this now is minimal; the cost later is a relaunch.

* **Alert fatigue recovery is harder than prevention — prioritize the prevention side.** Once a user has trained themselves to dismiss alerts, you cannot easily retrain that habit with a firmware update. A minimum viable trust protection mechanism: track consecutive dismissals per user and automatically escalate to a "quiet mode" after three in a row, with a prompt to review their alert sensitivity settings. This is cheap to implement and surfaces the problem before it becomes retention failure.

---

## Q2: The 2 a.m. false-positive liability scenario

* **The liability exposure starts with how the alert is worded, not the model's output.** A consumer wellness device that says "Possible arrhythmia detected" creates a different legal posture than one that says "Unusual heart rhythm pattern — consider logging this and discussing with your doctor." The ML output is identical; the call-to-action is what creates the implied clinical claim. This is a product copy decision, not a model decision, and it needs to happen before launch.

* **Build a motion-artifact context flag into every cardiac alert.** If the accelerometer shows the user was moving in the 60 seconds before a PPG anomaly, the alert should say so explicitly: "This pattern was detected during movement, which can cause false readings." This single data point, already available on-device, dramatically reduces both the panic response and the liability exposure — and costs almost nothing to implement in the alert rendering layer.

* **The 2 a.m. scenario is an argument for a mandatory in-app onboarding flow, not just a disclaimer.** Users who understand the device's limitations before the first alert are far less likely to call 911 in response to one. A practical approach: gate the first alert on completing a 90-second interactive onboarding that walks through exactly this scenario. This is annoying to ship but cheap relative to a single ER-visit complaint cycle.

* **Consult a medical device attorney before finalizing alert language — this is a $10k investment that closes a large liability gap.** The specific wording used in alerts, the distinction between "notification" and "recommendation," and the safe harbor language in your terms of service are not things to improvise. A practical approach: get a one-time legal review of your alert copy and ToS before beta launch, not after.

---

## Q3: Silent disengagement as the leading retention indicator

* **Wear-time is the metric — build it into your analytics from day one.** The most direct proxy for silent disengagement is a drop in daily wear-time. With an accelerometer already on-device, you can infer wear events (wrist-off, prolonged stillness) without any user-reported data. Track wear-time per user as a first-class retention metric in your companion app analytics, alongside standard DAU. A 30% drop in wear-time over two weeks is a leading indicator; a churned subscription is a lagging one.

* **A practical trigger for re-engagement: "We noticed you haven't worn your device in 3 days" push notifications.** This is not novel but it works. The insight here is that the notification itself is less important than what it links to — a one-tap path to review recent alerts and adjust sensitivity. Give users a clear action to take if their alerts have been feeling off, rather than a generic "come back" message.

* **Instrument alert dismissal as a signal, not a noise event.** Most teams treat dismissed alerts as non-events. A more practical interpretation: each dismissal is a data point about model accuracy from a specific user in a specific context. Log dismissal timestamps, the sensor readings that triggered the alert, and the user's activity at dismissal time. Aggregate this across users. You now have a ground-truth-adjacent dataset for retraining — and an early warning system for FP rate drift before it becomes a retention problem.

* **Run a quarterly cohort analysis segmented by alert volume.** Group users by how many alerts they received in their first 30 days. Then track 90-day retention by cohort. This will tell you whether high-alert-volume users churn faster — and at what alert frequency the churn curve bends. That bend point is your operational FP ceiling. A 12-person team with 18 months of runway can run this analysis in a single engineering-week.

---

## Q4: Behavioral side-effects of continuous monitoring — hypervigilance and Shifting-the-Burden dependency

* **Design the companion app to actively redirect users toward existing care, not away from it.** A practical implementation: when a user logs a concerning symptom or dismisses a third consecutive alert, the app surfaces a prompt — "Have you discussed this with your doctor recently?" with a one-tap link to their preferred health provider or a generic telehealth option. This costs one mobile-app sprint and directly counters the Shifting-the-Burden dynamic by reinforcing that the device is a signal, not a diagnosis.

* **Consider a "scheduled check-in" model rather than continuous real-time alerting for lower-anxiety users.** Not every user needs push alerts the moment an anomaly is detected. A practical alternative: offer a daily digest mode — one summary notification each morning with overnight patterns — for users who prefer it. This reduces the hypervigilance loop, preserves the monitoring value, and gives users a meaningful control that doesn't require them to turn off the device entirely.

* **For users who show high dismissal rates, proactively flag dependency risk to the clinical team, not just the individual.** If you're pursuing clinical partnerships, a user who has dismissed 15 alerts in 30 days and hasn't had a primary care visit in 12 months is a population-level concern. A practical approach: build a flag in your clinical dashboard (not the consumer app) for this pattern, so clinical partners can prioritize outreach. This turns a product liability into a value-add for the clinical channel.

* **Battery death as a clinical moment — address it in onboarding.** The Shifting-the-Burden risk materializes most acutely when the device fails at the wrong moment. A practical mitigation: include a single explicit message in onboarding and in low-battery notifications — "This device supplements but does not replace regular cardiac care. If you have symptoms, seek care regardless of what the device shows." This is a 20-word copy decision that meaningfully addresses the dependency scenario without adding engineering complexity.

---

## Q5: A false-positive governance practice rooted in user trust

* **Establish a bi-weekly FP review meeting with a fixed attendee list: one ML engineer, one firmware engineer, one product manager, and one legal/clinical advisor.** This does not need to be long — 30 minutes to review the previous two weeks' alert volume, dismissal rates, and any user-reported feedback. The governance value is in the cadence, not the meeting length. It creates a standing forcing function so threshold changes are not ad hoc.

* **Define a "trust SLA": if FP rate exceeds a threshold for two consecutive review cycles, the ML team is obligated to ship a threshold adjustment within one sprint.** This converts a vague principle ("we care about user trust") into an operational commitment with a clear owner and timeline. The specific number matters less than having one. A practical starting point: FP rate above 2 per user per week for two consecutive weeks triggers a mandatory response.

* **Create a "FP log" — a shared doc where any team member can record a user-reported false positive, the context, and the alert that triggered it.** This is a low-tech but high-value artifact. It builds institutional memory across personnel changes, gives the bi-weekly review something concrete to work from, and creates a record that demonstrates due diligence if a liability question ever arises. It takes an hour to set up.

* **Add a "Was this alert useful?" one-tap response to every push notification.** This is the cheapest in-product feedback mechanism you can build. The data is noisy but directional: a cluster of "not useful" responses on a particular alert type is a signal worth investigating at the bi-weekly review. A practical approach: don't try to build a sophisticated feedback loop initially — just collect the binary signal for 60 days and let it inform the first major threshold review.

---

## Q6: The device is wrong about everything, and it knows it

* **A confidence interval on every alert is technically feasible and strategically differentiating.** The on-device model is already producing probability scores internally; surfacing them to users is a rendering and UX decision, not a model architecture change. A practical implementation: map the model's output probability to a plain-English tier — "Low confidence (less than 50%): pattern worth watching," "Moderate confidence (50-80%): consider logging this," "High confidence (above 80%): discuss with your doctor" — and display the tier rather than the raw number. This is one sprint of mobile work.

* **Surfacing uncertainty requires user education, not just better copy.** The risk of showing "I'm 40% sure" is that users misread it as "60% chance nothing is wrong." A practical approach: include a one-time in-app explainer when a user sees their first low-confidence alert — one screen, plain language, no medical jargon — that explains what the confidence tier means and what to do with it. Build this before launch, not as a support ticket response.

* **Use uncertainty framing as a liability lever, not just an ethical one.** A device that says "I'm highly uncertain about this reading — here's what might be causing it (movement, sensor contact, sleep position)" has a materially different liability posture than one that fires a generic alert. The uncertainty disclosure effectively communicates that this is a monitoring tool, not a diagnostic instrument. This is worth bringing to your legal review as a specific mechanism.

* **Hiding model uncertainty is a product shortcut that compounds over time.** Every user who treats a low-confidence alert as authoritative because the UI presented it that way is a future complaint, a future ER visit, a future churn event. A practical argument for transparency: your Series A investors care about retention and regulatory risk. Uncertainty disclosure directly addresses both. Frame it as a competitive differentiator ("the only cardiac wearable that tells you what it doesn't know") rather than a limitation disclosure.

---

## Q7: The silent alert — Marcus, 54, at 2 a.m.

* **The alert copy at the moment of wakeup determines everything that follows.** Marcus has about 3 seconds of half-awake cognition when the haptic fires. The most practical design constraint: the first screen he sees must answer exactly two questions — "how sure is the device?" and "what should I do right now?" — without requiring him to navigate. A single screen with a confidence tier, a plain-English description of the pattern, and two buttons ("Log it / I'm fine" and "Call my doctor") covers the full decision space without requiring medical literacy.

* **The "call a doctor" path should default to his logged primary care provider, not 911.** Most arrhythmia alerts at 2 a.m. do not warrant emergency services. A practical approach: during onboarding, collect the user's primary care provider phone number and store it on-device. The alert's "contact your doctor" button should dial that number directly. This single design decision reduces unnecessary ER visits, reduces liability exposure, and reduces Marcus's stress response — all at the cost of one onboarding field and one button.

* **The post-alert experience matters as much as the alert itself.** Once Marcus has decided what to do, the device should log the event, his response, and the next-morning follow-up. A practical implementation: 8 hours after a dismissed alert, send a single push notification — "How are you feeling this morning? Your device flagged an unusual pattern last night." with a one-tap "I'm fine" and a one-tap "I want to discuss this." This closes the feedback loop, gives Marcus a sense that the device is tracking his wellbeing over time, and generates a labeled data point for model improvement.

* **Design for Marcus's partner, not just Marcus.** A 54-year-old with cardiac family history often has a partner who is equally anxious. A practical feature: an optional "health contact" who receives a summary notification (not the raw alert) when a high-confidence event is logged — something like "Marcus's device flagged an unusual pattern last night. He's been notified." This reduces the social isolation of the 2 a.m. alert experience and addresses a real user need that most wearable teams overlook.

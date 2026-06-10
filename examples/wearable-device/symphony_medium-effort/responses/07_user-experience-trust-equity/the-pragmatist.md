---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "07_user-experience-trust-equity"
persona: "The Pragmatist"
---

# User Experience, Trust & Equity - The Pragmatist

---

## The 40+ Cardiac-History User's Emotional Baseline And Health Literacy

* **Anxiety triggers require calibrated defaults.** Most users in this cohort arrive anxious—that's your operational baseline, not a problem to solve through education alone. Pragmatic approach: ship with conservative alert thresholds out-of-box (higher false-negative risk accepted), and let power users adjust sensitivity in settings after 2-3 weeks of device familiarity. This buys time for pattern recognition before psychology kicks in. Pair alerts with one-sentence explanations ("Your heart rate variability dropped significantly—consider resting for 30 minutes") that reference actionable next steps, not medical terminology.

* **Literacy gaps demand design, not FAQs.** A 62-year-old who understands "heart feels jumpy" but not "arrhythmia detection accuracy" won't read your glossary. Instead, design the app to show *their* data first (resting heart rate today vs. last week), then offer optional deep dives. Make PPG/SpO2 concrete: "This sensor uses light to count heartbeats, same way hospital pulse oximeters work." Reduce jargon at the point of decision-making, reserve technical detail for users who explicitly ask.

* **Trust pathway is: demonstrate value, then deepen access.** Week 1 should feel "boring but safe"—basic HR tracking, simple sleep summaries. Don't surface anomaly detection until week 3-4 when the user has seen the device work correctly on known-good days. This recalibrates trust from "fancy device I don't understand" to "device that predicted something I could verify." Only then introduce confidence scores and clinical context.

---

## The Gap Between Stated Preferences And Actual Behavior, And Earning Trust With Users Who Trust Least

* **Consent screens must become workflow, not obstacle.** Users say they want granular control but they don't *actually* read consent screens. Practical fix: move consent from a onboarding firewall into the actual usage flow. When a user first wants to share data with their cardiologist, *that's* when you show the relevant consent—not 15 minutes before they even know they'll need it. Include a one-minute video showing exactly what the doctor sees (e.g., "Your doctor will see this weekly summary, not your 2am data").

* **Build for the skeptics, not the early adopters.** Your target includes people who've had health concerns dismissed or ignored. They don't trust medical institutions or tech companies equally. Instead of assuming voluntary consent works: implement a "verify understanding" step where the user explains back what they've consented to (checkbox won't work; make them choose from three options describing what happens to their data). This feels more cumbersome but actually surfaces whether someone understood.

* **Tiered data sharing as a practical trust ladder.** Don't ask for binary "share everything or nothing." Offer: (1) Device keeps all raw data, shows you summaries (week 1-2); (2) Weekly aggregates sync to app (week 3+); (3) Opt-in share to one doctor at a time. Each tier unlocks real value and requires explicit, low-friction consent at that moment. Users who've been burned by prior systems will choose tier 1 initially—that's fine, and respectable.

* **Trust with older, less technical users requires operational honesty.** A 68-year-old with low digital fluency needs to know: "This device collects your heartbeat data. You decide who sees it. We never sell it." That's all. Don't mention "de-identification algorithms" or "secure cloud infrastructure." If they ask how it works, show them. If they don't, they don't need the abstraction.

---

## Selective Sharing, Exclusion Of Users Without Companion Smartphones, And Physical/Sensory Accessibility

* **Standalone device value is non-negotiable.** A 7-day battery device is useless if the user must sync daily to get any feedback. Build the device to show its own summary screen: daily resting HR, sleep score, one-week trend. Companion app should enhance, not enable. This also solves the "my spouse controls the family WiFi" problem for users sharing devices. Practical pathway: device firmware v1 ships with on-device dashboard, app comes later or is truly optional for users with older phones.

* **Data sharing architecture must support cardiologist-only scenarios.** Don't architect assuming companion app is the hub. Instead: allow the user to generate a secure link (QR code on device screen) that their cardiologist can scan to see periodic reports. This works offline, doesn't require the user to manage app permissions, and gives them agency. The app becomes convenience, not requirement. For users on prepaid plans with limited data, offer weekly instead of real-time sync—a setting, not a limitation.

* **PPG and skin tone testing is non-deferrable.** Signal quality drops significantly for users with darker skin tones—this is documented. Before launch, test accuracy on at least 100 users across Fitzpatrick 3-6, with explicit pass/fail criteria per tone (e.g., "90% sensitivity for arrhythmia detection across all skin tones"). If you can't hit that, you defer clinical partnerships, not launch consumer. This is feasibility, not idealism—poor performance for a demographic will create liability and churn.

* **Motor dexterity and wrist-size testing must inform final design.** A device optimized for 6.5-inch wrists won't work for users with arthritis (charging port hard to access) or very small wrists (sensor won't sit flush). Include 20+ users with documented motor limitations in accessibility testing. Result: maybe you add a magnetic charging cradle, or wider sensor contact pads. These aren't nice-to-haves; they're product viability constraints.

---

## A Device Users Feel Grateful For

* **Gratitude comes from timely action that worked.** If your 52-year-old user tells that story three years out, it means: the device detected something, they acted on it, a doctor confirmed it was real and important, and the intervention mattered. This requires: (1) accuracy high enough that alerts trigger real clinical follow-ups (not noise); (2) alert timing designed for action (not 2am alerts with no clear next step); (3) ongoing feedback showing "you did the right thing." Practically, this means low false-positive rate matters more than early detection—one correct alert that saved their life is worth more than 100 noisy alerts they learned to ignore.

* **Trust is maintained through consistency and transparency.** The user must believe three things: the device is working correctly, their data is safe, and the company isn't hiding limitations. Ship a "data health report" in-app showing monthly accuracy metrics (e.g., "97% of detected events confirmed by manual review"), battery performance, and any known limitations (e.g., "accuracy lower in high-noise environments"). This becomes trustworthy because it shows you're tracking the right things and honest about gaps.

* **Gratitude requires a relationship, not just a tool.** By year 3, the user should feel like they've grown together with the device—initial skepticism transformed into reliance. Practically: onboard them slowly (conservative defaults), celebrate early wins (first week without alerts is success), and show them their own trend data. The emotional arc matters. A user who feels "managed" by a device won't be grateful; one who feels "supported" will be.

---

## Detection Window And What Users Actually Do With The Information

* **"Early detection" must map to clinical workflows, not just technical specs.** Your team can say "we detect arrhythmias 72 hours before symptoms," but the question is: what does a user do with that information at 2am? They can't call a cardiologist. Practical definition: "early enough that a user can schedule a same-week appointment, and their cardiologist has time to prepare a conversation." That might be 24-48 hours of lead time, not 72. Anything earlier than actionable window just creates anxiety.

* **Design for the decision a user actually faces.** If the device detects a probable arrhythmia at 2am, the only reasonable action is: "Log it, go back to sleep, review in morning, call doctor during business hours if you want." Your app should support that flow: one-tap "send alert to doctor" in the morning, with a template message. Don't expect users to interpret medical data and decide if they're sick enough to bother a cardiologist. You give them the fact ("possible arrhythmia detected 6 hours ago"), they decide the action.

* **Set explicit expectations about what "detection" means.** Communicate clearly: "This device can detect probable arrhythmias with 85% sensitivity. Probable means 'worth mentioning to your doctor,' not 'you're definitely sick.'" Users need to know the device isn't a diagnosis, it's a signal to investigate. A user who believes your device is 99% accurate will sue you when it misses something; one who understands it's a screening tool will trust it as part of their broader health monitoring.

---

## The Hostile Wearable

* **7-day battery is a feature that predicts abandonment.** If you're designing for users to keep a device, 7 days is a churn cliff—users miss chargers, trips, weekends. A hostile device keeps 7-day targets and makes the charging ritual inconvenient (proprietary cable, slow charging). A pragmatic device either: (1) solves for realistic charging (14-day target, USB-C, 90-minute charge), or (2) fully embraces 7 days with a charging dock that becomes a daily ritual (like a toothbrush). Right now, 7 days with a proprietary cable is the worst of both—frequent charging that feels punitive.

* **Complex companion app sync is the fastest path to abandonment.** Hostile design: require WiFi to sync, lose data if sync fails, show "sync pending" when user wants immediate feedback. Pragmatic design: accept cellular sync loss gracefully (queue and retry), always show *some* useful info without sync (device-side dashboard), make sync a background process the user never thinks about. If users have to manage the app, they'll eventually resent the device.

* **Alert fatigue from imperfect models will tank trust.** A 50% false-positive rate on alerts seems "acceptable" in a lab, but in real usage, a user gets 20 alerts a week and ignores all of them—including the real one. This is hostile by default. Pragmatic approach: ship with *lower* sensitivity (more false negatives accepted) if it means fewer false alerts, then improve sensitivity over months as your model matures. Users forgive a missed event more than they forgive alert fatigue. Launch conservative; improve after you have real usage data.

* **Lack of offline functionality makes the device dependent.** If the device is useless without the app, and the app requires the internet, a hostile design stops working in dead zones or on planes. Pragmatic design: device maintains full functionality offline, app is a convenience feature. This also protects users who can't afford unlimited cellular data.

---

## The Companion App As Confidant

* **Weekly sync should feel like a check-in with a trusted friend, not a clinical report.** Walk through the week: Monday user felt fine (HR baseline normal); Wednesday they had a stressful meeting (HR spiked but normal stress response); Friday they slept poorly; weekend was restorative. The story isn't "here are your metrics"—it's "here's what your body told me this week, and here's what probably caused it." This narrative arc requires showing context (what else was happening) alongside data, not just numbers.

* **Emotional tone matters operationally.** A weekly summary that says "Your resting heart rate is 62 bpm" is clinical and meaningless. One that says "Your heart rate stayed stable all week—great baseline data for your cardiologist" is reassuring and actionable. Same information, different framing. The pragmatic team A/B-tests emotional tone; the hostile team ships dry metrics and wonders why users don't engage.

* **Aggregation boundary must preserve bodily autonomy.** Show the user what will sync to the app (weekly summary, not 2am data), and let them verify it before sync. This feels more cumbersome but reinstates control—the user sees "this leaves the device" and can reject specific weeks if they want privacy. For users sharing devices, allow "don't log this session" (e.g., intimate time, medical procedures). This isn't technically easy, but it's the practical difference between a device that respects users and one that doesn't.

* **Design the weekly ritual as a moment of reflection, not notification.** Send the summary at a consistent time (e.g., Sunday evening), and make opening it feel like reading a personal letter, not getting nagged. Include one line asking the user to reflect ("How did this week feel compared to your usual?"). Let them optionally add a note. This transforms "data sync" into "health conversation with a device," which is emotionally sustainable over years.

---

## Symbiotic Health Awareness

* **The shift from extraction to dialogue is a major architectural change.** Current model: device observes, user reads reports. Symbiotic model: device and user co-create understanding. Pragmatically, this means: (1) show the user their own data in real time and ask them to annotate it ("I felt anxious here, I was exercising here"); (2) use those annotations to personalize the model (your anxiety pattern, your exercise effect); (3) after 30 days, show the user their unique patterns reflected back ("When you exercise, your HR usually rises for 2 hours, then stabilizes—here's your data proving it"). This isn't magic, it's feedback loops.

* **Boundary dissolution requires consent and exit ramps.** "Device knowing you" sounds intimate, but can feel invasive if not designed carefully. Practical implementation: let users opt into personalization (e.g., "Learn my patterns"). Make it transparent what the device has learned ("I've noticed you stress-sleep on Tuesdays"). And provide an exit—the user can reset personalization, export their learned model, or delete annotations. Symbiosis implies mutual benefit, not dependency.

* **Operationally, this requires on-device learning infrastructure.** You can't do federated learning if you only sync once a week. To achieve symbiosis, the device needs lightweight on-device ML that improves its model as the user adds annotations. This is resource-constrained (your neural accelerator has limited RAM), but it's the core difference between "device watching you" and "device learning *with* you."

---

## Beyond Detection Toward Meaning

* **Meaning emerges from self-knowledge, not anomalies.** Pragmatic pivot: instead of "does the user's heart rate match the baseline?", ask "what patterns does the user recognize in their own body?" Concretely: stop showing anomaly scores; instead show daily rhythm (e.g., "Your HR usually dips at 10pm, rises at 7am, spikes at noon—that's consistent all week"). Let the user *see* their own patterns before showing them deviations. This inverts the design: the user becomes the expert on their body, the device becomes a mirror.

* **Cultivating felt understanding requires patience and repetition.** Ship the device knowing it will take 4-6 weeks for users to recognize their own patterns. Don't try to accelerate this with AI-generated "insights"—let the data speak. Week 4, a user sees "I always sleep worse after coffee after 2pm" and has an actual behavioral insight. Week 8, they see "my HR drifts up on Tuesdays—must be my standing-meeting stress"—and *they* make the connection, not your algorithm. This is slower, but trust-building and real.

* **Product reimagining: rhythms instead of anomalies.** If you launched without the word "detection" and instead called it "your heart's rhythm," what changes? You'd measure: circadian consistency, recovery speed from stress, sleep quality—all rhythm-based, not deviation-based. You'd ship features like "compare your Tuesday rhythm to your Friday rhythm" instead of "did your arrhythmia return." This is a different device, but it's entirely implementable with the same sensors and models. Test this as a v2 direction with beta users while v1 ships anomaly-detection-focused.

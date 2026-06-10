---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "07_user-experience-trust-equity"
persona: "The Empath"
---

# Topic Cluster 07: User Experience, Trust & Equity - The Empath

---

## The 40+ Cardiac-History User's Emotional Baseline and Health Literacy

* **Vigilance exhaustion.** This person enters the experience already drained—they've been carrying "what if it happens to me" for years. The device arrives not as relief but as confirmation that vigilance was justified. My gut says they'll attach to it desperately at first, then oscillate between checking compulsively and trying to ignore it because the emotional weight is unsustainable. When the PPG signal baffles them, they won't ask questions; they'll assume the device knows something they can't understand, which deepens the power imbalance.

* **Anxiety as the unreliable narrator.** Someone with cardiac family history doesn't just receive data—they feel it in their chest. A spike in heart rate from caffeine reads as danger. The device's silence reads as either "you're fine" or "the device missed something." There's no third story available emotionally. This design needs to give them a coherent emotional narrative—not more data, but permission to breathe.

* **Trust building through recognition, not reassurance.** What moves this user isn't "your metrics are normal" (they've heard that before and it didn't stop their dad's heart attack). It's the device saying, implicitly: "I know you've been worried. I'm watching so you don't have to carry all of it alone." That's the emotional contract worth designing for.

---

## The Gap Between Stated Preferences and Actual Behavior

* **Consent fatigue masquerading as choice.** Users say they want granular privacy control; what they feel when facing a 15-screen consent flow is overwhelm that collapses into surrender. A 62-year-old scrolling past dense legal language isn't making an informed choice—they're experiencing the emotion of "I'm stupid and excluded." The real question isn't whether the device *should* ask; it's whether the asking itself erodes trust before the device even starts protecting anything.

* **The skeptic's invisible barrier.** People who've had health concerns dismissed by doctors, or who come from communities where medical devices have extracted value without offering reciprocal care, feel something primal: suspicion. Not logical distrust that can be overcome with transparency—genuine emotional suspicion that this is another extraction. Design can't logic away that feeling. But it *can* start by acknowledging it exists, by building slowly, by proving consistency over time.

* **Trust earned in the mundane.** Trust doesn't spike from a privacy guarantee or a feature announcement. It accumulates from small, repeated moments: the device works when it's supposed to. The battery lasts longer than promised. The alert is actually useful the first time it happens, not a false alarm. Early adopters can tolerate rough edges; skeptics need perfection in the basics before they'll risk vulnerability.

---

## Selective Sharing, Exclusion, and Physical Accessibility

* **The shame of having to ask.** When users can't share selectively—when the architecture defaults to "device syncs to the app, period"—some will simply not use the device for genuine health concerns. There's a deep, quiet shame in handing your biometric data to a device you can't control. It's not rational distrust; it's the feeling of being violated before violation happens. Some populations would rather suffer in silence than lose bodily autonomy.

* **The invisible gatekeeping of smartphones.** A user without a smartphone, or with an older Android that won't run the newest app, doesn't just have a feature missing—they experience exclusion. The device becomes a reminder that they're not the target. That emotional cut is real even if the team didn't intend it. And for people already marginalized, that feeling compounds: "This is another thing designed for someone else."

* **Accessibility as an afterthought screams contempt.** When PPG accuracy varies with skin tone and the device gets tested "eventually," users with darker skin feel it intuitively: we weren't considered from the start. Testing shouldn't be "deferred"—deferral signals that those bodies didn't matter to the first conversation. By the time you retrofit accessibility, the emotional message has already landed. Start with people who've been excluded, not after launch when the damage is done.

---

## A Device Users Feel Grateful For

* **Relief without abandonment.** Three years in, this 52-year-old trusts the device because it became a silent partner in her life—present when she needed to think about her health, unobtrusive when she didn't. She doesn't check it obsessively because it's reliable enough that she doesn't have to. The emotional texture is relief: finally, something that works. The architecture would need to be so seamless that the device dissolves into the background until a real signal demands attention.

* **Detection that feels like recognition, not surveillance.** She's grateful because when the device flagged something, the alert was meaningful—not a false alarm that destroyed the next three hours with anxiety, not so delayed that it felt useless. She felt *seen* by the device, not monitored. The technical accuracy matters less emotionally than the calibration: this device understands what's actually worth her attention.

* **A real relationship, not a tool.** In three years, this user tells a friend "I trust it completely" because the device has proven trustworthy repeatedly. It didn't betray her privacy. It didn't scare her unnecessarily. It nudged her toward care when care mattered. She's grateful because the device kept an invisible promise: to care about her body more carefully than she could do alone, without treating her body as a data collection site.

---

## Detection Window and What Users Actually Do With the Information

* **Early detection is only meaningful if it changes behavior.** "Detected how much earlier than what baseline" is a technical question with an emotional answer: if this device detected something 12 hours before traditional medicine would, but the user is asleep and can't act on it, the detection is theater. The device creates information without creating agency, which builds frustration, not trust. "You had something and didn't tell me in time" is a painful story.

* **2am arrhythmia alert: a device-induced emergency where none exists.** The user wakes to an alert and feels panic. Do they call an ambulance? Go to the ER and wait four hours with no confirmation? Ignore it and feel reckless? The device created a problem—what to *do*—without creating the infrastructure to solve it. Users will eventually learn to ignore their device, not because the alerts are wrong, but because they generate action-without-resolution. That's the emotional death of trust.

* **Information without a pathway is cruelty.** What users actually need isn't data earlier; it's a way to act that doesn't require them to become their own cardiologist. "Early detection" only has emotional weight if the story continues: detection → guidance → clinical engagement → outcome. Without that narrative arc, the wearable is just a prophet of doom worn on your wrist.

---

## The Hostile Wearable

* **Designed to be abandoned, indistinguishable from well-intentioned design.** My gut says the device isn't malicious—it just optimizes for engineering convenience: one battery life target suits the design, the companion app is cleaner when it's the hub, alert thresholds are easier to tune from cloud data. But each "reasonable" choice compounds into a device that slowly feels adversarial. The user charges it every five days, feels trapped by compliance, and quietly stops wearing it by month six. It worked; it just made them resent it.

* **False alarms as a trust exploit.** Imperfect models trigger alerts that turn out to be nothing. Three false alarms and users start ignoring the device *and* their own symptoms—they've learned the device is a liar. The hostile version is indistinguishable from a rushed version: launch with "good enough" accuracy because the timeline demands it, then watch users internalize distrust while the team works on the v2 model. The damage is emotional and permanent.

* **The choice that isn't a choice.** Every design constraint the team finds "reasonable" is a small pressure on the user. Sync required for full features. App required for any data control. Complex consent that defaults to "yes." None of these alone would break trust, but together they erode the feeling that the user is in control. Three years in, the user wears the device out of obligation, not partnership. That's the hostile wearable—one that succeeded technically but failed emotionally.

---

## The Companion App as Confidant

* **A week of being understood, or a week of clinical surveillance.** Walk through the story: Monday, elevated resting heart rate (user was stressed about work—did the device notice?). Wednesday, unusually low activity. Friday, better sleep than usual. For this to feel meaningful, the app needs to tell a *story* about the user's week—one that reflects their lived experience, not just metric trends. If it's just graphs and numbers, it reads as clinical: the device is watching, evaluating, judging. If it's a narrative of their own patterns, it reads as knowing.

* **Privacy as bodily autonomy.** The emotional boundary that matters most is this: raw biometric data feels like nakedness. Aggregated summaries feel like the user clothed and articulate, able to share a curated story. This isn't just a technical boundary; it's the boundary between being known and being seen. Users who share raw PPG waveforms to their partner feel exposing; users who share "I slept well Tuesday, had stress spikes Thursday" feel in control of their narrative.

* **Weekly summaries that honor what the user already knows.** The app should never surprise the user with information they lived through. If the device says "unusual sleep variability Thursday" and Thursday was rough, that's recognition. If it says "unusual" and Thursday was normal to the user, the device becomes a liar—not because the metric is wrong, but because it contradicts lived experience. A confidant reflects what you know; a device that contradicts your own body is an adversary.

---

## Symbiotic Health Awareness

* **The device as a mirror, not a monitor.** What feels revolutionary emotionally would be this: the device gradually teaches the user to understand their own body better, until the boundary blurs. You start "the device tells me my heart rate," and you end "I can feel my heart responding to stress now, and the device confirms what I'm learning." That's symbiosis—not extraction, but co-creation of understanding. The emotional texture shifts from "device knows me" to "I'm knowing myself with a partner."

* **Vulnerability as invitation, not obligation.** In this design, the user gradually shares more—not because the app demands it or the legal team requires it, but because deeper insight is emotionally rewarding. There's a feeling of trust and reciprocity: the device shares its learning with the user, the user shares context with the device, and together they build something neither could alone. That's the emotional experience of true symbiosis, not parasitism.

* **The device as a catalyst for self-knowledge.** A week of wearing this device, the user starts noticing things: "Oh, I feel this way when my heart does that thing." Three months in, they're writing mental notes without the device—they've internalized patterns. A year in, they feel genuinely close to this technology, not in a weird way, but because it's reflected them back to themselves often enough that they've integrated the insight. That's the emotional payoff of symbiosis: not surveillance, but a path to deeper self-knowledge.

---

## Beyond Detection Toward Meaning

* **Shifting from pathology to poetry.** What if the device were repositioned emotionally not as "catching what's wrong" but as "learning what's true for you"? Anomaly detection lives in a medical frame: deviations are bad. But rhythm awareness could live in a contemplative frame: your patterns are unique and worth knowing. The emotional experience would completely change—from anxiety to curiosity, from judgment to fascination. Users would wear it not out of fear but because understanding themselves feels good.

* **A felt sense of mastery, not helplessness.** Today's device design implicitly says "your body is a black box; let us translate." The alternative would whisper: "your body has its own intelligence; we'll help you hear it." The user would gradually develop a felt sense of knowing their own body—not through numbers, but through noticing. "I can tell when my nervous system is wound tight now. The device just confirms what I'm already sensing." That's fundamentally different emotionally—it's empowering.

* **Health as wholeness, not as the absence of disease.** The current framing is binary: normal or anomaly. But if the product started from "what does your personal baseline of wellbeing feel like," it would cultivate a completely different emotional relationship to the body. The device would help users notice not "am I sick" but "am I in rhythm with myself"? That question opens up spiritual, emotional, and physical dimensions that medical monitoring doesn't touch. Users would be grateful for something that helps them feel *alive*, not just less frightened.

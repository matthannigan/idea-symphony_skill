---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "04_privacy-architecture-data-boundaries"
persona: "The Audience Advocate"
---

# Privacy Architecture & Data Boundaries - The Audience Advocate

---

## The Trust Boundary Between Raw Signal, Processed Alerts, and Aggregated Summaries

* **User transparency first.** Your 40+ demographic doesn't understand "Safe Harbor aggregation" — they understand *stories*. Before you define algorithmic thresholds, show them actual sample data: here's my raw heartbeat, here's what we extract, here's what leaves the device. Can a cardiologist reading your summaries reverse-engineer my individual arrhythmia events? If yes, be honest about it. If no, give users plain-English proof, not HIPAA jargon. The gap between what you *say* you're doing and what users *believe* you're doing will cost you loyalty faster than any privacy breach.

* **Device loss isn't abstract.** One user loses their watch at the gym. What surfaces from encrypted storage? What if someone at the repair facility opens the case? Your architecture decisions today about which data is persisted where will be revealed under discovery. Talk to users who've had health devices stolen. What does "encrypted at rest" mean to someone without a security background? Design the sync granularity around what you're willing to defend in court, not just what's technically feasible.

* **Clinical partnerships will lock you in.** Once Partners Health or Cleveland Clinic contracts to receive summaries in a certain format at a certain frequency, *you cannot change how often you sync*. If they're getting daily summaries, you're committed to that pipeline forever. The question isn't "what will we need to sync tomorrow" — it's "what's the minimum sync frequency that clinical partners will accept while still honoring the on-device promise?" Ask them now, not when you need their partnership to survive Series B.

---

## Privacy as a Self-Amplifying Differentiator — Until It Isn't

* **The competitor moment is coming.** Your early adopters buy privacy because they distrust tech companies. But the moment a Fitbit or Apple equivalent claims better arrhythmia accuracy through cloud processing, some of your users will switch. You need to make on-device processing irrevocable: hardware attestation that proves ML never leaves the chip, public audits by cardiologists that validate your on-device accuracy, partnerships with privacy advocates who stake their reputation on your promise. Make flipping to cloud processing impossible without a public walkback — and document that walkback as a company failure.

* **The interface is your proof.** Users don't read privacy policies. They need a moment — every time they open the app — where they *feel* the privacy guarantee. Show them: "Your raw heartbeat data stayed on this device. This summary was created here, locally. Zero records of your sensor data exist on our servers." Make that moment friction-free, visible, and emotionally satisfying. When a user describes your app to their doctor, they should instinctively remember that reassurance.

* **Privacy-by-default, not privacy-as-option.** Don't offer users a choice between "share for better accuracy" and "keep it private." That's asking them to trade away health data while sick or anxious, and they'll resent you for every false negative afterward. Build on-device accuracy as non-negotiable — then users never have to make that tradeoff. If you can't achieve acceptable accuracy on-device, you haven't solved the problem yet.

---

## Privacy Under Adversarial Conditions: Device Loss, De-Anonymization, and the Companion App Weak Link

* **Assume the device will be stolen or repaired.** I know that sounds paranoid, but a 60-year-old post-MI patient whose watch breaks? They send it in for warranty repair. A teenager whose parent finds their lost device? That's your risk model. Encrypt storage with biometric unlock — fingerprint + PIN required to access any persisted data, enforced at the hardware level. No recovery mode, no backdoor. If you're unwilling to make that commitment, stop calling it privacy.

* **Your app is the leak.** Firebase, Crashlytics, OS-level backup — these are convenient for engineering and invisible to users. But they're also where your privacy promise dies quietly. Audit *everything* third-party on the companion app. Does Firebase Analytics track "user triggered arrhythmia alert"? That's a health event. Does Crashlytics log SpO2 values in error stacktraces? That's biometric data. The de-anonymization risk isn't just the sync payload — it's every telemetry ping your app sends to Google's infrastructure.

* **Data broker cross-referencing is real.** Your SpO2 trend delta (someone's oxygen dipped 8% at night) is worthless alone. But cross it with Equifax data for a 58-year-old in Ohio, insurance purchase history, and doctor visit timestamps from a compromised EHR — suddenly you've re-identified a patient with sleep apnea. You can't prevent data brokers from existing, but you *can* minimize the statistical signatures you sync. Design sync payloads that are individually worthless even if leaked.

---

## Raw Signal Retention and the Minimum-Necessary Principle

* **Your forensic debugging vs. user privacy is a real tradeoff.** You need to see the raw PPG signal that led to a false negative. Your users need to know you're not recording their heartbeat 24/7. The compromise is clear: retain raw buffers for exactly 72 hours, then overwrite. That's long enough to debug failed alerts from last night, but short enough that a stolen device won't contain a week of biometric fingerprints. Document this window in your privacy policy. Users will understand "we keep 3 days of raw data for safety validation."

* **Minimum-necessary means minimum for what purpose.** Not minimum for convenience, not minimum for "future debugging might help." You need microphone data to detect breathing patterns for sleep apnea — but do you need to *retain* that raw audio? Or just the extracted breathing-rate feature? If you're extracting the feature, discarding the raw audio immediately isn't a compromise — it's the right architecture. Push feature extraction as close to the sensor as possible, then delete the raw signal.

* **Make the retention window a user-visible contract.** Don't bury it in settings. Show users: "Raw heartbeat data is kept for 3 days, then deleted. That gives us time to fix detection problems without keeping your biometric fingerprints." If users start reporting "my device lost data from an old alert," that's real feedback that your retention window is too short. But don't default to longer retention "just in case."

---

## On-Device Data Containment as Biological Quarantine

* **The barrier between inference and sync is where trust lives.** A "processed alert" needs a strict definition: timestamp, alert type, confidence level, recommended action. That's it. No partial model activations, no feature-vector clusters, nothing that a determined ML researcher could reverse-engineer back to raw signals. If you're syncing anything that could be reconstructed by an inverse model, you haven't actually quarantined the data — you've just hidden it in math that might be vulnerable to future attacks.

* **Your firmware boundary is a firewall.** Design the on-device software so that the ML inference zone and the sync zone are architecturally separated. A firmware bug that dumps model activations to storage shouldn't be fixable with a software patch — it should be structurally impossible. If they're on different memory banks, with different access controls, then a future engineer can't accidentally leak them. Quarantine is only real if the walls are hardware-enforced.

* **Think like epidemiology: alerts exit, signals don't.** In disease containment, you quarantine the pathogen but communicate about its presence. Same here: your sync can say "detected arrhythmia event at 2:47am, severity moderate" but never the raw PPG trace that led to that detection. The clinical partner learns what they need (did an event happen?) without touching the biological fingerprint. That boundary is your most important design decision.

---

## Inverse Surveillance: What if You Broadcast All Raw Data Publicly

* **This thought experiment reveals what you're really protecting.** If you broadcast all raw biometric data publicly, suddenly the privacy mechanism isn't legal or technical — it's social and psychological. The real protection is that you're a *trusted actor* people choose to monitor them, not a *paranoid actor* broadcasting everything to strangers. Flip the question: instead of asking "how do we prevent data from leaving the device," ask "how do we make users so confident in our non-invasive architecture that they'd be comfortable if we did broadcast it?" That's a much harder design problem, and it's the right one.

* **What you discover is liability-driven privacy.** Some of your privacy guardrails aren't about user safety — they're about insulating the company from FDA liability, insurance claims, or discrimination lawsuits. If a user's arrhythmia data reaches an insurance company, and their premiums spike, *who's liable?* Your privacy architecture is partly you saying "I won't do that to you" and partly you saying "the law makes it too risky." Own that distinction. Users deserve to know which privacy protections are philosophies and which are risk management.

* **This reveals architectural brittleness.** If your privacy model depends on *nobody having access* to raw data, what happens when law enforcement demands it, or a court orders it? You've built a system where compliance means breaking your promise. Better to design for "we can access raw data only with warrant + user notification + biometric unlock," where privacy survives legal pressure because it's *human choice*, not *cryptographic impossibility*. That's actually more robust.

---

## The Dinner Table Conversation: Plain-Language Story for Wearable Privacy

* **You need a story a 16-year-old can understand.** "Mom never sends my heartbeat to the internet. The watch is like a doctor in her wrist — it watches, it thinks, but it doesn't gossip. If something's wrong, the watch tells her on the watch itself, and she decides what to do next. The actual heartbeats never leave her wrist." That's it. When a user can explain it that simply to someone they trust, they believe it. If your privacy architecture requires jargon to explain, you haven't made it understandable enough.

* **The gap between technical reality and user explanation is your UX failure.** If the true answer is "we encrypt the sync payload with homomorphic encryption so the server can process it without decrypting it" — but the user story is "the watch never shares my data" — that's a problem. Those aren't equivalent. Better to ask: what user story do you *want* to tell? "Everything stays on the watch except our doctors need aggregate health patterns to improve the device." Then build architecture that makes that story true.

* **Make the story testable by the user.** A user can't inspect firmware encryption, but they *can* verify that their device works without internet for days. They can see their app works offline. They can confirm the watch detects alerts without sending data to a server. Design experiences that prove the story empirically: if someone needs internet to get their alerts, the story is false. If their watch detects their sleep apnea while airplane mode is on, the story is true.

---

## Privacy as a Design Principle, Not a Legal Checkbox

* **Start with the philosophical commitment, then let it reshape everything.** If you truly commit to "raw data never leaves the device" as your founding principle — not a compliance requirement, but an identity — then decisions ripple everywhere. Your business model can't depend on selling aggregated user data. Your ML team can't ask for terabytes of raw signals for model improvement. Your clinical partners have to accept anonymized insights instead of patient-level data. This is hard. But it makes you a different company than your competitors.

* **Privacy-first architecture is more honest about user agency.** When users see aggregated health insights, they know those insights are learned from *their* device's observations, not compared against a population database. They're trusting the device's learning, not the company's interpretation. That's fundamentally different. Users are more likely to *act* on insights they trust are about them, not about statistical populations. Privacy isn't just ethics — it's better product.

* **This principle will haunt your business decisions.** When a clinical partner demands to know "your users have a 12% sleep apnea prevalence," you can't answer because you've committed to never aggregating that data. That's a real competitive disadvantage. But it also means you're a company that can't be pressured to sell insights about your users' health. Document that tradeoff explicitly. Make it your identity. Your series B investors need to understand they're funding a privacy company, not a health data company that happens to have privacy policies.

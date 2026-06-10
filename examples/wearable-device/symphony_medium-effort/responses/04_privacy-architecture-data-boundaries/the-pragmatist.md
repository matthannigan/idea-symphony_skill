---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "04_privacy-architecture-data-boundaries"
persona: "The Pragmatist"
---

# Privacy Architecture & Data Boundaries - The Pragmatist

---

## The Trust Boundary Between Raw Signal, Processed Alerts, and Aggregated Summaries

* **Start with a clear pipeline map.** Document each data state, retention duration, and transformation step. A practical approach might be: define three zones (on-device raw → feature vectors → alerts) with explicit handoff rules. For HIPAA Safe Harbor, calculate k-anonymity on aggregated outputs before sync — this lets you audit defensibility without waiting for regulatory guidance. Record decisions in a data-lineage spreadsheet that firmware and compliance can both read.

* **Prioritize sync granularity decisions now.** The hardest rollback isn't the architecture — it's user expectations. If clinical partners start building workflows around daily aggregate summaries, switching to hourly summaries mid-partnership breaks their pipelines. A practical step: pilot with one fictional clinical partner internally. Model three sync frequencies (daily, 6-hourly, event-driven alerts-only) and measure impact on model iteration speed. Lock the early choice.

* **Implement cryptographic timestamping at the boundary.** Raw inference outputs can drift; users and partners need to trust what the device actually detected. A practical design: hardware-backed signature on each alert payload, with the timestamp counter incremented only by firmware. This isn't perfect (it doesn't prevent the device lying), but it's auditable and requires minimal CPU. Start with ECDSA; upgrade only if clinical partnerships demand it.

* **Build retention as a policy config, not hardcoded.** HIPAA's "minimum necessary" changes as the product evolves. A practical approach: make raw-buffer retention window (e.g., 7-day rolling window in firmware) a configurable parameter, logged in device telemetry. This lets you adjust without firmware patches and shows regulators you're responsive. Set the initial window to 7 days; measure false-negative debugging needs over two quarters, then decide if you can shrink it.

* **Separate "aggregation" from "anonymization."** Aggregation (summing SpO2 samples over a day) and anonymization (stripping identifiers) are not the same. A pragmatic move: aggregate first (compute daily averages on-device), then hash device IDs before sync. Audit each step separately. This is more work than "just don't send raw data," but it's how you'll defend design choices to HIPAA auditors and clinical partners.

---

## Privacy as a Self-Amplifying Differentiator — Until It Isn't

* **Document your flexibility boundaries early.** Your competitive edge won't last if a cloud-ML competitor offers 5% better accuracy. To protect the on-device commitment, identify which architectural decisions you'll defend (no raw data ever leaves the device) versus which are flexible (updating the model via firmware OTA). Write this as a one-page "Privacy Commitments vs. Optimization Knobs" and ship it in the first version. Users see your constraints, partners can't later push for "just a little bit of cloud processing."

* **Make privacy visceral, not a policy.** Most users won't read the privacy statement. A practical interface choice: show a simple "Data Processed On Device" banner in the companion app's home screen, with a tap-through to see which sensors are active right now. Track local inference latency (50ms? 500ms?) and display it as a small badge — "Your data analyzed in <500ms on device." This makes privacy tangible without requiring technical literacy.

* **Measure privacy-sensitive early-adopter retention.** You'll attract privacy-conscious users initially, but if they don't stick, the word-of-mouth advantage collapses. A practical metric: track monthly churn by cohort (privacy-motivated vs. health-motivated users) and correlate it with competitor launches. If churn spikes after a cloud-ML competitor's press release, you've lost your structural defense. That's the warning sign to accelerate your own accuracy improvements rather than doubling down on privacy messaging.

* **Build in one accuracy escape hatch.** A practical compromise: reserve the right to offer users a cloud-ML backend as an *optional* upgrade, disabled by default. This preserves on-device by default while keeping optionality. If competitive pressure mounts, you can activate the opt-in path without rewriting your entire architecture. Clearly communicate: "cloud mode is opt-in and voids the default privacy guarantee" so users make an informed choice.

* **Companion app is your weakest privacy link.** Users will trust on-device ML until your mobile app starts pinging analytics servers. A pragmatic move: audit every third-party SDK (Firebase, Amplitude, etc.) and measure what telemetry they collect, even with privacy modes enabled. Then make a hard choice: use lightweight telemetry (just event counts, no user IDs) or accept the privacy story doesn't hold. Don't say "privacy-first" if your companion app leaks data to five analytics vendors.

---

## Privacy Under Adversarial Conditions: Device Loss, De-anonymization, and the Companion-App Weak Link

* **Implement hardware-backed encryption with key derivation from device unlock.** When the device is lost, you can't remotely wipe it. A practical approach: encrypt all on-device buffers with a key derived from the user's PIN. If the device is reset or returned, the previous user's buffers remain locked. This isn't perfect (a determined adversary can try PIN brute-force), but it's defensible for a consumer device and adds minimal latency. Document the threat model: we protect against casual snooping, not state-actor attacks.

* **Model de-anonymization risk with commercial data brokers.** Sync payloads of (alert timestamps, SpO2 trend deltas, sleep-apnea event counts) can be re-identified if crossed with health insurance claims or pharmacy records. A practical due-diligence step: hire a consultant to test this using publicly available data brokers (actual names like Acxiom, Experian). Then document what re-identification is actually *possible* versus theoretical. Use that baseline to decide: do you add noise to aggregates, timestamp dithering, or batch sync? Make the choice evidence-based, not precautionary.

* **Third-party SDKs in the companion app are not your problem to solve completely, but own the audit.** Firebase Analytics, Crashlytics, OS-level backups — they all leak. A practical decision: don't use Firebase Authentication (it syncs to Google). Do use Firebase Crashlytics, but configure it to only send crash stacktraces, no user IDs. For each SDK, ask: if this vendor is compromised, what user data is exposed? Write a risk register. Then decide: acceptable risk, or disable? Don't claim "no cloud" if Crashlytics is sending exceptions to Google.

* **Build a repair and return protocol with minimal data exposure.** Devices returned under warranty can't contain the previous user's buffered data. A practical solution: firmware should support a "factory reset" command that overwrites buffers with zeros before handing the device back. Document this in the hardware specs. Train customer service that each return triggers a reset. It's not automated, but it's auditable and doesn't require secure enclave hardware.

* **Assume the companion app's local database will be forensically recovered.** Users' phone backups, iCloud restores, and even discarded phones can expose app data. A practical hardening: don't store raw alert events in the companion app's local SQLite database; instead, sync them to a local-only file, and delete the database entries after 30 days. If someone forensically recovers the phone, they get app metadata but not the user's full alert history. It's a small move, but it acknowledges the threat realistically.

---

## Raw Signal Retention and the Minimum-Necessary Principle

* **Start with 7-day rolling buffer in RAM; measure false-negative debugging needs.** You can't keep raw PPG samples forever on a microcontroller with limited RAM. A practical initial setting: 7 days of rolling-buffer PPG (overwrite oldest samples as new ones arrive). For two quarters, log every time an engineer needs to debug a false negative — how old was the sample? Did 7 days suffice? Then make a data-driven call: 7 days, 3 days, or 24 hours? HIPAA auditors will accept this because you've documented the forensic-debugging use case and measured it.

* **Separate retention windows for different sensor types.** PPG requires fine temporal resolution for arrhythmia detection, but accelerometer data is coarser. A practical approach: keep PPG samples for 7 days (256 samples/min × 10,080 min = 2.5M samples; manageable on 4GB MCU storage if compressed), but only keep 24-hour accelerometer history. This reduces the "raw signal footprint" without sacrificing debugging capability for the signal that matters most. Document the rationale: accuracy degradation starts after 24 hours for accel-based fall detection.

* **Compress raw buffers aggressively using loss-appropriate methods.** You don't need lossless compression of every sample. A practical move: store PPG as 8-bit delta-encoded samples (reduces size 2-3×) rather than raw 16-bit values. For microphone breathing patterns, store only zero-crossings and RMS energy, not the waveform. This shrinks the buffer footprint enough to extend retention to 14 days if needed, without proportional privacy risk. Trade engineering complexity for flexibility.

* **Use firmware version tagging to justify retention windows.** Each firmware release may have bugs that cause false negatives. A practical defense: when the firmware updates, tag the old raw buffers with the firmware version number. This lets you keep older buffers longer for v1.0 debugging without keeping newer v1.3 buffers indefinitely. After 18 months and 4 firmware releases, you can safely wipe the v1.0 buffers. Regulators understand version-based retention; it's more defensible than arbitrary timelines.

* **Design the buffer architecture to make retention configurable at deployment, not compile time.** Different markets or clinical partnerships may have different requirements. A practical strategy: make the 7-day window a firmware parameter (set at factory provisioning). This lets you adjust for beta testers (14 days) versus production users (7 days) without recompiling. It also shows regulators you've thought about minimum-necessary as an evolving target, not a fixed spec.

---

## On-Device Data Containment as Biological Quarantine

* **Map your sync protocol boundaries to the quarantine analogy.** The device is the containment zone; the sync payload is the "crossing boundary." A practical application: define what constitutes "processed alert" (binary event: arrhythmia detected, yes/no, with timestamp) versus "raw signal residue" (feature values that, when inverted, might reconstruct the heartbeat). Then enforce a rule: never sync feature vectors, only alerts and aggregate statistics. Document this in the threat model so clinical partners understand what privacy guarantees they're actually getting.

* **Implement a one-way valve: data can leave in aggregated form only.** The quarantine metaphor suggests asymmetry — raw data stays contained, processed insights exit. A practical design: firmware computes alerts on-device, then *discards* the intermediate computations (activation maps, intermediate layers of the neural network). Only the final alert (binary decision + timestamp) and aggregates (daily SpO2 average) leave the device. This is harder to implement than "send everything to the cloud and filter there," but it's the structural commitment to containment.

* **Model the sync protocol as a semi-permeable membrane.** A biological membrane lets some molecules through (nutrients, signals) while blocking others (pathogens). A practical sync design: alert timestamps and event types cross the membrane freely (low re-identification risk), but SpO2 absolute values are blocked unless aggregated to daily averages (reduces fingerprinting risk). Test this permeability: could an adversary reconstruct identifiable health patterns from what crosses? If yes, the membrane isn't tight enough. Adjust the filter.

* **Treat model updates as the "immune system" equivalent.** The device needs to update its detection models as medical understanding evolves, but those updates shouldn't require sending raw data back for retraining. A practical approach: periodic federated-learning style updates — the cloud sends improved models, the device evaluates them on local data, sends back only aggregate statistics (e.g., "your model accuracy on local data: 94%") without ever uploading raw samples. This preserves the quarantine while allowing continuous improvement.

* **Monitor the boundary for breaches, not permissions.** A biological containment system monitors for pathogens escaping; it doesn't ask permission. A practical monitoring approach: firmware logs every packet sent to the companion app (not the packet contents, just metadata: timestamp, size, destination). If an engineer accidentally adds a feature that syncs raw data, this log catches it during code review. It's a simple auditing mechanism that assumes human error, not malice.

---

## Inverse Surveillance: What If All Raw Data Were Public?

* **Redesign by asking "what stays private if everything is exposed?"** Inverting the constraint reveals which privacy protections are structural versus cosmetic. A practical exercise: assume the cloud has all raw PPG, accelerometer, and breathing data. What remains private? The user's name, their location, their clinical records. Now ask: can you de-anonymize the user from biometric fingerprints alone? Research suggests yes (heartbeat is unique, like a fingerprint). So the real privacy boundary isn't "no raw data in cloud" — it's "raw data never linked to identity." That's a different architecture entirely.

* **Separate data privacy from identity privacy.** If all raw biometric data were public but anonymized, most privacy concerns vanish. A practical design insight: don't encrypt the data (it's public anyway), but cryptographically hash the device ID such that no one can link the data back to a person. This is cheaper than on-device ML (no inference latency penalty) and simpler than building a privacy-first architecture. But it requires a trust model where a third-party identity provider holds the key to the mapping.

* **Identify what liability concerns, not privacy concerns, drive your architecture.** Companies worry about "raw data exposure" partly because regulators fine them for breaches, not because users fundamentally care about raw data privacy. If hypothetically all raw data were public but the company couldn't be sued for breaches (because the data was intentionally public), would you redesign? A pragmatic answer: probably yes, you'd switch to cloud ML and aggregate locally for some use cases. This reveals that some of your "privacy" architecture is actually risk-mitigation. Own that distinction.

* **Test privacy intuitions with beta users if you go public-data mode.** Publish some anonymized biometric data (30-day PPG samples from 100 users, identity stripped) to a research repository. Then ask: did users feel violated? Did anyone re-identify themselves? A realistic finding: most users won't care if the data is anonymous enough. This tests whether "data privacy" or "identity privacy" is your actual commitment. Use the results to calibrate your architecture scope.

* **Ask whether competitors would do this.** Apple's on-device ML on iPhone is genuinely private (data rarely leaves the device), but it's also a moat. If data were public-but-anonymous, a smaller startup could build competitive cloud ML faster. So part of your on-device commitment is strategic, not purely privacy-driven. A pragmatic acknowledgment: frame privacy as both a user value and a business defensibility strategy. Don't oversell one narrative if the other is equally important.

---

## The Dinner Table Conversation

* **Simplify to three sentences: device, no cloud, you control your data.** A user explaining to their adult child needs language that doesn't require technical literacy. Practical phrasing: "The watch analyzes your heartbeat right on your wrist. The data never goes to the internet unless you choose to check your health history in the app. No company can see your biometrics — they stay locked on your device." This is truthful (assuming the companion app is private-respecting) and comprehensible. Test it with non-technical users; if they understand it after hearing it once, it's good.

* **Address the inevitable follow-up: "But how do they make money?"** Users skeptical of tech companies will ask this. A practical response to equip them: "They make money when you buy the watch. We don't need to sell your data because we sell the device." This flips the narrative from "Why should you trust them?" to "They have different incentives than advertising companies." It's more believable than any privacy policy.

* **Prepare the "my doctor asked about the data" scenario.** A user might say: "My cardiologist wants to see my heart data from the watch." Your plain-language story needs to cover this. Practical framing: "You can choose to share weekly summaries with your doctor through the app. The raw data still stays on your device, but the app tells you what insights it found." This is more nuanced but still conversational. It acknowledges that privacy doesn't mean isolation — it means choice.

* **Define what "your data" actually means.** Adult children might push: "But the company built the watch, so isn't it their data?" A pragmatic response: "No. The company designed the watch, but your heartbeat data is yours. It's like your diary — the publisher didn't write your entries." This framing puts ownership with the user, not the device. It's emotionally resonant and sets a strong privacy expectation. Make sure your legal team agrees before you equip users with this language.

* **Create a one-minute explainer video to accompany the story.** A user should be able to show their adult child a simple animation: sensors → on-device analysis → decision (alert or summary). No cloud connection. This visual reinforces the verbal explanation. A practical move: create three versions (30 seconds, 1 minute, 3 minutes) so users can pick the depth based on their audience's skepticism. The dinner table version is the 30-second one.

---

## Privacy as a Design Principle, Not a Legal Checkbox

* **Start with the architecture, not compliance.** Most companies build the system first, then ask "how do we stay HIPAA-compliant?" A different approach: structure every layer around "raw data stays on device" and then verify HIPAA aligns. A practical first step: in the firmware design phase (before shipping any code), document three layers: (1) raw sensing, (2) local feature extraction, (3) alert generation. Enforce a rule at each layer: data can only move forward or stay local, never backward. This is more restrictive than HIPAA requires, but it's a philosophical guardrail.

* **Make privacy a performance constraint, like latency or power.** Engineers optimize for latency because it's measurable. Treat privacy the same way. A practical metric: "data minimization score" — the percentage of user data that stays on-device rather than syncing. Track it in your engineering dashboard. Set a target (95% of samples never leave the device) and measure every release. Engineers will optimize toward it just like they optimize toward 5-day battery life.

* **Refuse features that violate the principle, even if revenue-generating.** A healthcare partner asks: "Can you send us nightly aggregated health trends?" This seems harmless, but it's a crack in the principle. A pragmatic boundary: push back. Instead, ask: "Can the user export their own trends to share with their doctor?" This preserves agency and stays local-first. If the partner refuses, you've found a misalignment that's better discovered now than after a partnership contract. Principles are only valuable if you defend them against revenue pressure.

* **Document the principle in the product spec, not just engineering.** Non-engineers (product managers, business development, legal) need to understand why you're rejecting certain features. A practical artifact: a one-page "Privacy First Principles" document that goes into the product requirements. Something like: "Any feature that syncs individual health measurements must be user-initiated and opt-in. Default behavior must preserve on-device-only processing." Make it a requirement, not a recommendation. This blocks features at the concept stage.

* **Design the user experience to reinforce the principle.** If the companion app has a button "Download my full data," users expect the app has full data to download. But if everything is truly local-only, the app can only show summaries. That's confusing. A practical UX fix: the app explains: "Your detailed health data is stored on the watch. The app shows you 30-day summaries and alerts. To see more, connect the watch to your phone." This makes the data location explicit in the UI, reinforcing the principle each time the user opens the app.

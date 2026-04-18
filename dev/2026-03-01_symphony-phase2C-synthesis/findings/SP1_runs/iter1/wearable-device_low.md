---
project-name: "Wearable Device"
effort: "low"
stage: "Phase 2: Question Synthesis (SP1 test run)"
---

# Brainstorming Questions: Wearable Device

---

## Topic Cluster 01: Vision, Values, and Strengths to Amplify

1. **Peak moments and the invisible-partner aspiration**: When has a health tool produced a genuine insight that changed how someone lived, or become so seamlessly helpful it felt like a natural extension of awareness? What subtle design choices created that relationship, and how might our device routinely create those peak moments — so that three years from now users describe not features but how the device changed their relationship to their body? [Appreciative Inquirer]

2. **Existing team and project assets as a daily superpower**: This 12-engineer team has a specific distribution of expertise (firmware, ML, hardware, mobile), an 18-month runway, and a concrete technical approach — what strengths are we taking for granted, what advantages would competitors envy, and what meeting structures, communication patterns, or decision rituals would make this diversity a daily superpower rather than a coordination challenge? [Appreciative Inquirer]

3. **Smallest meaningful human-reaction experiment**: What is the smallest prototype or user test we could run this month that would give us genuine insight into whether we're building something people will actually care about — a human reaction test rather than a technical feasibility test — and what would make that experiment trustworthy? [Appreciative Inquirer]

---

## Topic Cluster 02: Privacy Architecture, Trust, and Consent

1. **What privacy means, and how trust in on-device processing is actually earned**: How do different user segments (a 45-year-old with family cardiac history vs. a tech-savvy early adopter) conceptualize privacy differently, and what transparency mechanisms — visual indicators, audit trails, third-party verification, interface design, or viscerally-felt communication patterns — would build genuine confidence that data stays on-device, turning HIPAA from a legal checklist into a benefit users can feel from day one? [Questioner, Appreciative Inquirer]

2. **Unintended leakage from "aggregated summaries" and the companion-app threat surface**: Given that only processed alerts and aggregated summaries sync to the app, what patterns might be extractable from summary data, timing metadata, and alert frequency that users wouldn't anticipate — and what threat modeling has been done on the sync protocol to prevent a malicious companion app from reverse-engineering sensitive health patterns? [Questioner, Devil's Advocate]

3. **Informed consent, right-to-be-forgotten, and intimate-partner-violence protections**: How do we present the complex trade-offs of on-device processing, companion app syncing, and clinical data sharing so users give genuine informed consent (especially across the wellness/clinical boundary), ensure complete data deletion on discontinuation across device, app, and cloud, and build protections for users in coercive relationships who might be monitored or compelled to share their data? [Audience Advocate]

---

## Topic Cluster 03: Alerts, False Positives, and User Trust Dynamics

1. **The false-positive paradox, alert fatigue, and the "no-false-alarm" experience**: At what false-positive rate do users ignore or disable alerts, how does tolerance vary between prevention-focused users and those with known heart conditions, and what adaptive sensitivity mechanisms — along with contextual notification protocols that consider whether a user is driving, sleeping, or in a meeting — earn the trust so that when the device speaks the user listens and takes meaningful action? [Questioner, Audience Advocate, Devil's Advocate, Appreciative Inquirer]

2. **"Nothing to report" as value, and the anxiety/reassurance balance**: How does the device reinforce value during long normal-reading periods (so users don't interpret silence as malfunction) while avoiding constant low-level hypervigilance, particularly for 40+ adults who may already have heightened health anxiety? [Audience Advocate]

3. **Alert-fatigue feedback loop vs. dangerous silence (Shifting-the-Burden archetype)**: How does the system adapt sensitivity when users repeatedly dismiss alerts without creating a reinforcing loop — more false alarms → more dismissals → model "learns" user doesn't want alerts → missed detections — and how is the gray zone between "wellness insight" and "medical diagnosis" designed so users don't shift interpretive responsibility onto their doctors (Shifting-the-Burden), cascading unnecessary clinical visits? [Systems Thinker]

---

## Topic Cluster 04: Detection Accuracy, Bias, and Edge Cases

1. **Skin tone, physiological diversity, and calibration verification across the "non-standard body"**: How does the PPG sensor and ML model account for documented optical biases across skin tones, validate accuracy for melanin-rich skin, and represent arrhythmias that present differently across genders, age groups, body compositions, and comorbidities — rather than the "typical" male physiology that dominates cardiac research — and what ongoing calibration verification confirms accuracy across wrist sizes and physiological variations in the target population? [Audience Advocate, Devil's Advocate]

2. **Edge-case failure modes, sensor fusion breakdown, and graceful degradation (Fixes-that-Fail archetype)**: What systematic approach identifies edge cases where multi-sensor fusion fails (motion artifacts during exercise, skin contact issues, poor circulation, tremors, partial sensor failure like PPG giving noisy readings or temperature stuck at one value), how does the system fail gracefully, and what prevents compensating models from silently masking degraded sensors in a Fixes-that-Fail pattern — where the model weights around a failing sensor until that signal becomes critical for a different anomaly? [Analyst, Devil's Advocate, Systems Thinker, Questioner]

3. **Digital literacy and sensory-accommodation accessibility**: What accommodations exist for users aged 40+ with limited technical comfort when interpreting anomalies, managing firmware updates, or understanding privacy controls, and what alternative alert modalities and companion app interfaces ensure accessibility for users with hearing, visual, or motor-control limitations without requiring caregiver dependency? [Audience Advocate]

---

## Topic Cluster 05: Power, Battery, and Architecture Trade-offs

1. **Power budget across the ML pipeline and the battery-vs-accuracy cliff**: How does power consumption break down across sensor sampling, preprocessing, inference, and post-processing at different model complexity levels; what is the marginal accuracy gain per additional milliwatt; what is the maximum acceptable inference latency that still enables clinically meaningful intervention; and how do we prevent a high-frequency false-positive state from draining a 7-day battery in hours? [Analyst, Devil's Advocate]

2. **Battery budget tradeoff cascades (reinforcing death-spiral loop)**: How do power allocation decisions between sensing, inference, and communication create second-order effects — low battery → reduced sensing frequency → lower-resolution data → more false positives/negatives → more compensating processing → faster drain — and would a 3-day clinical-grade battery actually be more valuable than a 7-day consumer-grade one, with transparent user-chosen accuracy/battery modes rather than invisible automatic degradation? [Systems Thinker, Questioner]

3. **Charging windows, battery degradation, and the "naked wrist"**: How does weekly charging disrupt data continuity and become a confounding variable in anomaly algorithms, how will power budgets remain viable as battery capacity degrades to 70% over 2-3 years, and what experience do we design for the charging-window periods themselves — is the device a constraint, or (as battery life as invitation) a spec that contributes to peace of mind? [Devil's Advocate, Appreciative Inquirer]

4. **Sensor fusion architecture and dynamic sensor allocation**: What systematic evaluation criteria should determine early vs. intermediate vs. late fusion for multi-signal anomaly detection, and could the system dynamically activate different sensor combinations based on context (sleep vs. exercise vs. rest) to optimize both detection quality and power? [Analyst, Questioner]

---

## Topic Cluster 06: Model Lifecycle — Updates, Drift, and Personalization

1. **Model drift, concept drift in health baselines, and clinical feedback loops**: How does the system detect performance degradation from sensor drift, firmware updates, or population shift; distinguish genuine anomalies from gradual baseline shifts as users age, change medications, or develop new conditions (without normalizing dangerous decline or flagging normal aging as pathology); and close the learning loop from physicians via a privacy-preserving mechanism where doctors tag events as true/false positive without raw biometric data ever leaving the device? [Devil's Advocate, Systems Thinker]

2. **Model update strategy, OTA timing, and user recalibration**: What are the incremental engineering costs, privacy implications, and performance gains of on-device learning vs. federated learning vs. periodic firmware updates; how do we manage transition periods where users have calibrated to old alert behavior (avoiding sensitivity whiplash through phased rollouts and user-controlled update timing); and how does over-the-air updating work within medical device constraints? [Analyst, Systems Thinker, Questioner]

3. **Federated learning participation as a Tragedy-of-the-Commons**: How does the system encourage opt-in to federated learning when users receive no direct benefit — and what happens if enough users free-ride that the federated signal weakens and model quality plateaus, a Tragedy-of-the-Commons variant where the leverage point is making contribution visible and socially reinforced rather than an anonymous background process? [Systems Thinker]

---

## Topic Cluster 07: Regulatory Path, Liability, and the Wellness-Clinical Boundary

1. **FDA pathway choice, contingency, and the 510(k) migration architecture (Fixes-that-Fail archetype)**: Why assume FDA 510(k) is the right path rather than De Novo classification, medical-device partnerships, or staying in wellness with research partnerships; what is the contingency if predicate devices shift or guidance changes; and how do we design today's architecture, data pipeline, validation data, and documentation to enable a smooth clinical transition — treating the wellness version as a "clinical device in waiting" to avoid a Fixes-that-Fail pattern where consumer shortcuts become regulatory rework, while also reimagining 510(k) as a collaboration that makes the device demonstrably more valuable rather than a hurdle? [Questioner, Analyst, Systems Thinker, Devil's Advocate, Appreciative Inquirer]

2. **Wellness-clinical boundary ambiguity, liability, and clinical data contamination**: How do marketing language and UI design prevent users from interpreting the device as clinical-grade diagnostic equipment, how do we handle the "missed significant cardiac event" scenario and disentangle device failure from user inattention after alert fatigue (liability boundary clarity), and what prevents users from sharing "all-clear" data with physicians in ways that create inappropriate diagnostic reliance on a non-clinical-grade tool? [Devil's Advocate, Questioner]

3. **Clinical validation feasibility and reimbursement-era incentive shifts (Success-to-the-Successful archetype)**: What is the minimum viable clinical dataset size and composition for validating arrhythmia and sleep apnea detection, how does this map against the 18-month runway, and once insurance reimbursement enters the picture what Success-to-the-Successful dynamics emerge — clinical users getting better features and support while wellness users are deprioritized, fracturing the user base into a two-tier product? [Analyst, Systems Thinker]

---

## Topic Cluster 08: Business Model, Data Stewardship, and Long-Term User Relationship

1. **Unit economics and recurring-revenue vs. one-time hardware**: Breaking down BOM, manufacturing, and per-unit software development costs, what are realistic unit economics at different production volumes, where is the break-even point, and given the 18-month runway and regulatory constraints, what supports a hardware-only vs. subscription model for ongoing monitoring? [Analyst]

2. **Data lock-in, platform power, and end-of-life continuity (Success-to-the-Successful archetype)**: What prevents the companion app sync protocol from becoming a data moat that traps users and the temptation to monetize aggregated health insights from eroding the privacy-first value proposition; what happens at hardware end-of-life or generational upgrade so users don't face a Success-to-the-Successful pattern (new devices get better models, old devices deprecated via software updates); and how do we implement open export formats for personal baselines that can import into any future device — yours or a competitor's? [Systems Thinker]

3. **Stigma, identity, and disclosure control**: How might the device avoid inadvertently signaling to others that the wearer has a health condition (through appearance, public notifications, or social features), and what control do users have over disclosure of the device's capabilities to the people around them? [Audience Advocate]

4. **Continuous monitoring as premise, and the dormancy/opt-in alternative**: Why do we assume users want continuous monitoring at all — what would "dormancy modes" or "monitoring vacations" look like, and would a user-initiated "check your status when you choose" paradigm reduce anxiety while still providing value, or defeat the purpose? How might users anthropomorphize or overtrust the device as infallible medical advice, and what design elements mitigate that? [Questioner]

---

## Appended Questions (Perspective, Provocation, and Distinctive-Register Personas)

### Provocateur (Append)

1. **What if the device was designed to actively ignore your health data?** Imagine a wellness wearable that deliberately obscures your metrics — showing only vague impressions, encouraging body attunement over quantification. What changes when the product is designed to make you *less* dependent on numbers, not more? *The real insight: what if our obsession with measurement is part of the problem, not the solution?*

2. **What if the wearable monitored everyone except the wearer?** Picture a device designed for "community health surveillance" — tracking patterns across households, workplaces, friend groups — but explicitly forbidden from giving individuals their own data. What if privacy was achieved by making individual data literally inaccessible to the person it came from? *The real insight: what if the most valuable health insights live between people, not within them?*

3. **What if the device required NO battery and died every 24 hours?** Imagine a wearable deliberately engineered for daily mortality — it exhausts its power, goes dark, and you must "bury" it and start fresh tomorrow. What would this forced daily reset change about how users relate to their health data? *The real insight: what if continuous monitoring creates unhealthy attachment, and periodic disconnection is a feature, not a bug?*

### Storyteller (Append)

1. **The middle-of-the-night moment** Imagine it's 3 AM and Marcus, a 52-year-old user with a family history of heart disease, wakes to a gentle vibration on his wrist. The device has detected something unusual. Walk through the emotional and practical journey of what happens next—from that first alert to his decision (or not) to seek medical care. How do we design this critical moment to balance appropriate urgency without inducing panic, especially when the device itself acknowledges uncertainty in its detection?

2. **The dinner table conversation** Picture a holiday gathering where the wearer notices everyone glancing at their wrist. "Is that the heart thing?" someone asks. How does this device become part of someone's identity and social narrative—for better and worse? What design choices influence whether wearers feel empowered, protected, or defined by their device, and how might this differ across personality types and health anxiety levels?

3. **From wellness device to medical tool** Imagine the journey of someone who bought this as a consumer wellness product, then two years later receives an FDA-cleared software update that transforms it into a clinical-grade diagnostic tool. How does their relationship with the device evolve? What expectations, responsibilities, and emotional weight shift when a fitness accessory becomes a medical instrument—and how do we prepare users for this transition?

### Visionary (Append)

1. **What if health monitoring wasn't about detection but about conversation?** Instead of a device that passively collects data and issues alerts, what if we designed a system that engaged in an ongoing dialogue with the wearer's body — not metaphorically, but through a feedback architecture where the device's sensing modalities actively respond to physiological state changes, creating a bidirectional relationship between wearer and technology that fundamentally reimagines what "monitoring" means?

2. **What would a device look like if it treated privacy not as a constraint but as a design philosophy that created entirely new capabilities?** Instead of asking "how do we meet HIPAA requirements?" what if we asked "what becomes possible when health data genuinely never leaves the body, not even as processed outputs?" Could we create an architecture where the device itself becomes the primary interface — where insights, patterns, and even health guidance emerge locally through a new kind of intelligence that lives entirely on the wrist?

3. **How might we dissolve the boundary between device and body entirely?** What if we imagined health monitoring not as something worn but as something integrated — not through invasive implants, but through a fundamentally different relationship to sensing that draws from how organisms naturally perceive internal state? What would a "bio-native" sensing architecture look like if it emerged today with no legacy constraints from wrist-worn consumer electronics?

### Connector (Append)

1. **Biological nervous system parallel** The human nervous system processes most sensory signals locally (reflex arcs) before sending summaries to the brain — how could we structure our on-device ML pipeline to mirror this hierarchy, and what does this biological parallel suggest about which anomalies need immediate local processing versus which can be aggregated for periodic sync?

2. **Game design progression systems** Video games use sophisticated progression systems that adapt difficulty based on player behavior patterns, often running client-side with minimal server communication — what principles from adaptive game difficulty could inform how our device learns individual baseline patterns and personalizes anomaly thresholds over time?

3. **Automotive safety-critical systems** Modern vehicles have multiple redundant safety systems that run independently with different complexity levels (ABS, traction control, stability control) — how might we apply this layered redundancy philosophy to create fail-safe anomaly detection that conserves power while maintaining safety-critical reliability?

---

**Synthesize stream**: 26 across 8 clusters
**Append stream**: 12 across 4 personas
**Combined total**: 38

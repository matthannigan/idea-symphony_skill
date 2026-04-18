---
project-name: "Wearable Device"
effort: "low"
stage: "Phase 2: Question Synthesis (SP1 test run)"
---

# Brainstorming Questions: Wearable Device

---

## Topic Cluster 01: Vision, Peak Moments, and What Success Feels Like

1. **Three-year testimonial and the trustworthy-alert moment** (AI orphan register): Imagine it is three years from now and users are describing this wearable to friends — not listing features, but recounting specific moments of genuine gratitude. What peak moments of health insight does the device make routinely possible, what subtle design choices make it feel like a seamless "invisible partner" extending the wearer's awareness rather than a demanding monitoring tool, and how would it have earned the user's trust so deeply that when it alerts to something important and the intervention genuinely matters, they listen? [Appreciative Inquirer]

## Topic Cluster 02: Privacy Architecture and Trust

2. **Privacy as lived experience, not compliance checklist**: Most products treat HIPAA as a legal checklist, but privacy only becomes trust when users viscerally feel their data is safe. What transparency mechanisms — visual indicators, audit trails, third-party verification, interface patterns — would build genuine day-one confidence that on-device data truly stays on-device, and how might different user segments (a 45-year-old with cardiac family history vs. a tech-savvy early adopter) conceptualize "privacy" differently? [Appreciative Inquirer, Questioner, Audience Advocate]

3. **Hidden leakage from aggregated summaries**: Given that only "processed alerts and aggregated summaries" sync to the companion app, what sensitive health patterns might be reverse-engineered from timing metadata, alert frequency, and aggregated statistics, and what threat modeling has been done on the sync protocol to prevent a malicious companion app from becoming a covert data-exfiltration surface? [Devil's Advocate, Questioner]

4. **Informed consent users actually understand**: How do we present the complex trade-offs among on-device processing, companion-app syncing, and eventual clinical data sharing in ways that enable genuine informed consent — especially for users 40+ with varying digital literacy who may not distinguish "wellness" from "clinical" data usage? [Audience Advocate]

5. **Coercive-context and right-to-be-forgotten protections**: Health wearables are visible and often accessible to others — what protections exist for users in abusive relationships who might be monitored through the companion app or coerced into sharing data, and when users discontinue the device, what mechanisms ensure complete deletion across device, app, and any cloud services? [Audience Advocate]

6. **Data moat vs. privacy promise**: What prevents the companion-app sync protocol from becoming a data lock-in moat that traps users, and what structural guarantees (user-owned exportability, open sync standards) would ensure the privacy-first value proposition survives acquisition or business-model pivots rather than creating a reinforcing loop where more aggregated data creates greater temptation to monetize? [Systems Thinker]

## Topic Cluster 03: Alert Fatigue, False Positives, and the Trust Contract

7. **The false-positive paradox, adaptive calibration, and segmented tolerance**: Given the clinical liability of missed arrhythmia detection versus the UX cost of false alarms, what analytical framework should guide the optimal precision-recall balance — and at what false-positive rate will users begin ignoring or disabling alerts entirely? How does false-alarm tolerance vary between users with known heart conditions and prevention-focused users, and what adaptive mechanisms could tune sensitivity to individual engagement patterns without the self-correcting loop drifting into dangerous territory where genuine anomalies are silenced? [Analyst, Devil's Advocate, Questioner, Audience Advocate]

8. **Alert-fatigue reinforcing loop and its oscillation risk**: How does the sensitivity-adaptation mechanism avoid becoming a reinforcing loop (more false alarms → more dismissals → model "learns" user wants fewer alerts → missed detections), and how does the delay between dismissal and model adjustment create sensitivity oscillations that erode trust in both directions — too noisy or too quiet? [Systems Thinker]

9. **Life-altering notification delivery without panic**: When the device detects a potentially serious anomaly, what notification protocol considers both urgency and the user's immediate context (driving, sleeping, in a meeting) to ensure action without inducing panic — and how does the system also provide "nothing to report" reassurance during normal periods so that silence isn't interpreted as the device being broken? [Audience Advocate]

10. **Liability after a fatigue-induced miss**: What happens when the device fails to detect a genuine cardiac event shortly after a false alert created alert fatigue, and how do we disentangle device failure from user inattention in the resulting liability scenario? [Devil's Advocate]

## Topic Cluster 04: Wellness-to-Clinical Migration and Regulatory Strategy

11. **Wellness device as clinical device in waiting**: What architectural decisions made for the initial consumer wellness launch would create technical debt or require rework for FDA 510(k) clearance, and how do we design today to avoid a Fixes-that-Fail pattern where consumer shortcuts in documentation, validation data, and traceability later block regulatory entry — treating the wellness version as a "clinical device in waiting" rather than assuming future migration is a simple certification step? What is the minimum viable clinical dataset size and composition for validating arrhythmia and sleep apnea detection accuracy, and how does that requirement map against the 18-month runway? [Analyst, Systems Thinker]

12. **Alternative regulatory pathways and 510(k) contingency**: Why assume FDA 510(k) is the right regulatory path — what alternatives (partnering with established medical device companies, pursuing De Novo classification, staying in wellness with clinical research partnerships) could achieve clinical credibility faster or with different trade-offs, and what is the contingency plan if 510(k) proves infeasible due to predicate device changes or new regulatory guidance? [Questioner, Devil's Advocate]

13. **Gray-zone liability and the Shifting-the-Burden dynamic**: What happens at the boundary where the device detects something concerning but not definitive, and how does the gray zone between "wellness insight" and "medical diagnosis" shape user behavior and clinical liability — specifically the Shifting-the-Burden pattern where users push interpretation onto doctors (creating unnecessary clinical visits) while simultaneously over-trusting the device as infallible medical advice? How do marketing language, UI cues, and feature limits prevent users from treating a non-clinical wearable as diagnostic equipment? [Systems Thinker, Devil's Advocate, Questioner]

14. **Regulation as collaboration, not hurdle** (AI orphan register): Imagine the FDA 510(k) process not as a hurdle but as a collaboration that makes the device demonstrably more valuable to users — what would that process look like, and how might clinical partnerships enhance (rather than restrict) what we deliver to consumers? [Appreciative Inquirer]

## Topic Cluster 05: Physiological Diversity, Bias, and Accessibility

15. **Skin-tone bias and physiological diversity in sensing and ML**: How does the PPG sensor design account for documented racial biases in optical heart-rate sensing across skin tones, and how is the ML model trained and validated on diverse physiological patterns — including arrhythmias that present differently across genders, age groups, body compositions, and comorbidities — rather than on the "typical" male physiology that dominates cardiac research? What ongoing calibration verification ensures accuracy for melanin-rich skin, varied wrist sizes, and the full target population? [Audience Advocate, Devil's Advocate]

16. **Accessibility, digital literacy, and stigma-aware disclosure**: For users with hearing, visual, or motor limitations — and for users 40+ with limited technical comfort — what alternative alert modalities, companion-app interfaces, and explanatory patterns ensure the device remains usable without caregiver dependency? And how might the design avoid inadvertently signaling to others that the wearer has a health condition (through device appearance, public notifications, or social features), giving users control over disclosure of the device's capabilities? [Audience Advocate]

## Topic Cluster 06: Power Budget, Battery, and the Death-Spiral Risk

17. **Power budget across the ML pipeline**: How does power consumption break down across the ML pipeline (sensor sampling, preprocessing, inference, post-processing) at different model-complexity levels, and what is the marginal accuracy gain per additional milliwatt? [Analyst]

18. **Battery-conservation death spiral, charging-window continuity, and degradation**: How do power-allocation decisions between sensing, inference, and communication create second-order effects on detection quality, and what self-reinforcing patterns emerge when battery-conserving modes sacrifice sensor resolution in ways that trigger more false positives/negatives, more compensating inference, and faster drain — a death spiral where power conservation actively undermines the core value proposition? What worst-case scenario (a high-frequency false-positive state draining the battery in hours) must the architecture defend against; how does the weekly charging pattern impact data continuity and risk becoming a confounding variable in detection algorithms; and how does the power budget remain viable as battery capacity degrades to ~70% over 2–3 years? Should users be given transparent "accuracy vs. battery life" modes rather than invisible automatic degradation? [Systems Thinker, Devil's Advocate]

19. **Battery life as invitation, not constraint** (AI orphan register): Seven-day battery is a target, but what is the experience we are actually designing toward? When has a device's longevity changed how you used it — made it more present, less fretful about charging — and what design choices make battery life contribute to peace of mind rather than just being a spec? [Appreciative Inquirer]

## Topic Cluster 07: Sensor Fusion, Failure Modes, and Concept Drift

20. **Sensor fusion architecture and fusion-validation loops**: What systematic criteria should determine early vs. intermediate vs. late fusion for multi-signal anomaly detection, and how does the system detect when one sensor is degrading or miscalibrated to prevent the classic Fixes-that-Fail pattern where the model silently learns to weight around a failing sensor — masking the problem until that sensor becomes critical for a different anomaly type and the pipeline fails catastrophically? [Analyst, Systems Thinker]

21. **Edge cases, graceful degradation, and context-aware sensor activation**: What systematic approach identifies and categorizes edge cases where multi-sensor fusion fails (motion artifacts during exercise, skin-contact issues, poor circulation, tremors affecting motion sensing, pigmentation affecting PPG), and how does the system degrade gracefully in those scenarios rather than producing confident-but-wrong outputs? Could the system dynamically activate different sensor combinations based on detected context (sleep vs. exercise vs. rest) to optimize both detection quality and power? [Analyst, Questioner]

22. **Model drift and concept drift in health baselines**: How does the system detect when on-device model performance has degraded due to sensor drift, firmware updates, or population shift, and how does the model distinguish genuine anomaly detection from gradual baseline shifts as users age, change medications, or develop new conditions — preventing the shifting-baseline problem where the reference frame itself drifts, either normalizing dangerous decline or flagging normal aging as pathology? Should explicit user-triggered recalibration windows accompany life events (medication changes, surgeries, illness recovery)? [Devil's Advocate, Systems Thinker]

## Topic Cluster 08: Model Updates, Federated Learning, and the Clinical Feedback Loop

23. **Update strategy trade-offs and the Tragedy-of-the-Commons in federated learning**: Breaking down the trade-offs among on-device learning, federated learning, and periodic firmware updates — what are the incremental engineering costs, privacy implications, and performance gains? And how do we encourage opt-in to federated learning when users receive no direct benefit, given the Tragedy of the Commons variant where free-riding weakens the federated signal and creates a performance divide between contributing early adopters and non-participating stagnators? [Analyst, Systems Thinker]

24. **Clinical validation feedback without breaking privacy**: If early users share anomaly reports with physicians who validate them, how does that medical confirmation flow back into the model as a supervised signal without violating the privacy architecture that keeps raw data on-device — what privacy-preserving tagging mechanism (physician-supplied "true positive" / "false positive" labels) could close the learning loop from the most authoritative users? [Systems Thinker]

25. **Model-update whiplash**: When firmware updates change alert behavior, how does the system manage the transition period where users have calibrated to old sensitivity — preventing whiplash that retrains users to distrust alerts — and should phased rollouts with transparency about what changed give users control over update timing? [Systems Thinker]

## Topic Cluster 09: Business Model, Unit Economics, and Device Lifecycle

26. **Unit economics and revenue model**: Breaking down bill of materials, manufacturing, and per-unit software costs, what are the realistic unit economics at different production volumes, where is the break-even point, and — given the medical-device regulatory constraints and 18-month funding runway — what analysis supports a hardware-only purchase model versus a subscription model for ongoing monitoring? [Analyst]

27. **Success-to-the-Successful across user tiers and device generations**: If the device transitions to clinical use and insurance reimbursement enters the picture, what Success-to-the-Successful dynamic emerges — where clinical users get better features and support while wellness users are deprioritized, potentially fracturing the user base into a two-tier experience as payer-driven outcome-data demands shift the product from user-centric to payer-centric design? The same pattern recurs at device end-of-life: new devices get better models while old devices are deliberately degraded via software updates forcing upgrades. Can an open export format for personal baselines let users own their learned health profiles across hardware generations (including competitor devices)? [Systems Thinker]

## Topic Cluster 10: Team, Assets, and the Smallest Meaningful Experiment

28. **Leveraging the 12-engineer team and its unseen assets** (AI orphan register): This team has a specific distribution of expertise — firmware, ML, hardware, mobile. What meeting structures, communication patterns, or decision rituals would make the team's cross-functional diversity a daily superpower rather than a coordination challenge, and what strengths, timeframe advantages, or technical-approach assets are we taking for granted that competitors would envy — advantages we could design the project to amplify from day one? [Appreciative Inquirer]

29. **Smallest meaningful human-reaction experiment** (AI orphan register): What is the smallest prototype or user test we could run this month that would give us genuine insight into whether we are building something people will actually care about — not a technical feasibility test, but a human-reaction test — and what would make that experiment trustworthy? [Appreciative Inquirer]

---

## Appended Questions (Perspective, Provocation, and Distinctive-Register Personas)

### Provocateur (Append)

1. **What if the device was designed to actively ignore your health data?**: Imagine a wellness wearable that deliberately obscures your metrics — showing only vague impressions, encouraging body attunement over quantification. What changes when the product is designed to make you *less* dependent on numbers, not more? *The real insight: what if our obsession with measurement is part of the problem, not the solution?*

2. **What if the device required NO battery and died every 24 hours?**: Imagine a wearable deliberately engineered for daily mortality — it exhausts its power, goes dark, and you must "bury" it and start fresh tomorrow. What would this forced daily reset change about how users relate to their health data? *The real insight: what if continuous monitoring creates unhealthy attachment, and periodic disconnection is a feature, not a bug?*

3. **What if FDA 510(k) clearance required the device to *fail* for some users?**: Imagine a regulatory requirement that any approved health monitor must be contraindicated for specific populations — explicitly documented as ineffective or harmful for some groups. What if "works for everyone" was treated as medically suspicious? *The real insight: what if our universal design aspirations prevent us from acknowledging that no health solution works equally well across all bodies?*

### Storyteller (Append)

1. **The middle-of-the-night moment**: Imagine it's 3 AM and Marcus, a 52-year-old user with a family history of heart disease, wakes to a gentle vibration on his wrist. The device has detected something unusual. Walk through the emotional and practical journey of what happens next—from that first alert to his decision (or not) to seek medical care. How do we design this critical moment to balance appropriate urgency without inducing panic, especially when the device itself acknowledges uncertainty in its detection?

2. **The "boy who cried wolf" problem in reverse**: When the device misses something significant—or produces a false positive that leads to an unnecessary ER visit—how does that moment reshape the user's relationship with the technology? Walk through the recovery narrative: what happens in the days and weeks after a trust-breaking event, and what systems or interactions could rebuild (or deepen) that relationship?

3. **When the battery dies**: Think about the moment after 7 days when the device needs charging—a routine interruption, except that James had been relying on continuous monitoring during a high-stress week he knew was risky for his heart. How do we design around the "naked wrist" periods when protection is temporarily unavailable? What is the emotional arc of vulnerability during charging windows, and how might the device design and companion app transform this from anxiety source to intentional health ritual?

### Visionary (Append)

1. **What if health monitoring wasn't about detection but about conversation?**: Instead of a device that passively collects data and issues alerts, what if we designed a system that engaged in an ongoing dialogue with the wearer's body — not metaphorically, but through a feedback architecture where the device's sensing modalities actively respond to physiological state changes, creating a bidirectional relationship between wearer and technology that fundamentally reimagines what "monitoring" means?

2. **How might we dissolve the boundary between device and body entirely?**: What if we imagined health monitoring not as something worn but as something integrated — not through invasive implants, but through a fundamentally different relationship to sensing that draws from how organisms naturally perceive internal state? What would a "bio-native" sensing architecture look like if it emerged today with no legacy constraints from wrist-worn consumer electronics?

3. **What if we inverted the medical device paradigm entirely — creating not a consumer device that might eventually become clinical, but a fundamentally new category that exists outside that binary?**: Instead of positioning the product on a spectrum from wellness to clinical, what if we imagined something genuinely new — a third category that draws from precision medicine, personalized health intelligence, and embodied technology in ways that the current regulatory framework cannot even conceptualize? What would that category be, and how might we actively shape its emergence?

### Connector (Append)

1. **Biological nervous system parallel**: The human nervous system processes most sensory signals locally (reflex arcs) before sending summaries to the brain — how could we structure our on-device ML pipeline to mirror this hierarchy, and what does this biological parallel suggest about which anomalies need immediate local processing versus which can be aggregated for periodic sync?

2. **Privacy-accuracy symbiosis**: The HIPAA constraint (no raw data leaves device) and the power constraint (7-day battery) seem like separate challenges, but they both push toward edge-compute efficiency — how might solving one actually accelerate solutions for the other, and what techniques from privacy-preserving ML (like differential privacy during federated learning) create power-efficient architectures?

3. **Firmware update as personalization channel**: The device will need periodic firmware updates for model improvements, but traditional OTA updates treat all devices identically — how could we borrow principles from A/B testing platforms and personalized recommendation systems to create a federated update architecture where different users receive model variants optimized for their specific physiological patterns, and what does this suggest about on-device A/B experimentation infrastructure?

---

**Synthesize stream**: 29 questions across 10 clusters
**Append stream**: 12 questions across 4 personas
**Combined total**: 41

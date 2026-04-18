---
project-name: "Wearable Device"
effort: "medium"
stage: "Phase 2: Question Synthesis (SP1 test run)"
---

# Brainstorming Questions: Wearable Device

---

## Topic Cluster 01: Vision, Paradigm, and Existing Strengths

1. **Peak moments and invisible-partner design**: When has a device or tool become so seamlessly helpful it felt like a natural extension of awareness — and when has someone had a moment of genuine health insight that changed how they lived? What subtle design choices created those peak moments, and how might our wearable create such moments routinely? [Appreciative Inquirer]

2. **Three-year user testimonials**: Three years from now, users are telling friends about the device — not describing features but describing how it changed their relationship to their body and their health. What specific moments do they recount with genuine gratitude, and what does that reveal about what we should be designing toward today? [Appreciative Inquirer]

3. **Existing assets we haven't fully leveraged**: Looking at the team, timeframe, and technical approach, what strengths are we taking for granted? What advantages do we already have that competitors would envy, and how might we design the project to amplify those natural advantages from day one? [Appreciative Inquirer]

4. **Smallest meaningful human-reaction experiment**: What's the smallest prototype or user test we could run this month that would give genuine insight into whether we're building something people will actually care about — not a technical feasibility test, but a human reaction test? What would make that experiment trustworthy? [Appreciative Inquirer]

## Topic Cluster 02: Regulatory Strategy and the Wellness-Clinical Boundary

5. **Regulatory pathway decision framework (Shifting-the-Burden archetype)**: What systematic framework guides the choice between pursuing FDA 510(k) clearance from day one, launching as a wellness device first, or pursuing alternative paths (De Novo classification, partnering with established medical device companies, clinical research partnerships)? How do we quantify opportunity costs of delayed market entry versus competitive advantage enabled by clearance, and how do we avoid the "Shifting-the-Burden" archetype where alerts create user dependency that erodes long-term body awareness and clinical relationships — while also avoiding the Systems-Thinker path-dependency trap where consumer-grade data collection cannot later meet clinical evidence requirements? [Analyst, Questioner, Systems Thinker]

6. **FDA pathway contingency and clinical evidence progression**: What is the structured breakdown of evidence generation needed for both wellness positioning and a future 510(k) submission, at what stage does analytical validation transition to requiring clinical validation studies, and what is the contingency plan if the 510(k) pathway proves infeasible due to predicate device changes or new regulatory guidance? How much of the technical architecture would need to change if clinical validation requirements differ substantially from current assumptions? [Analyst, Devil's Advocate]

7. **Wellness-clinical boundary ambiguity and liability**: How will marketing language and user interface design prevent users from interpreting the device as clinical-grade diagnostic equipment — and what happens when users inevitably share device data with physicians who place undue weight on wellness-device outputs, when the device misses a significant cardiac event, or when "all-clear" data creates inappropriate diagnostic reliance? How do we design user expectations, liability exposure, and feature limits to navigate the space between "helpful wellness tool" and "medical device"? [Devil's Advocate, Questioner]

8. **Regulatory success as enabler, not obstacle**: Imagine the FDA 510(k) process not as a hurdle, but as a collaboration that makes the device demonstrably more valuable to users. What would that process look like, and how might clinical partnerships enhance — not restrict — what we can deliver to consumers? [Appreciative Inquirer]

## Topic Cluster 03: Privacy Architecture and Data Boundaries

9. **HIPAA-compliant data segmentation and sync architecture**: What systematic approach determines what constitutes "raw" versus "processed" data at each pipeline stage, what principles should govern the privacy-preserving sync protocol for alerts and aggregated summaries to the companion app, and what unintended privacy consequences (re-identification risk, patterns extractable from summaries) might users not anticipate? How do we communicate these tradeoffs transparently? [Analyst, Questioner]

10. **Companion app security and telemetry surface**: Given that only processed alerts and aggregated summaries sync to the app, what prevents a malicious companion app from reverse-engineering sensitive health patterns from timing metadata, alert frequency, and aggregated statistics — and what privacy-preserving telemetry architecture (minimally hashed diagnostic payloads, opt-in crisis dump telemetry, differential noise injection for aggregate metrics) allows debugging of ML failures without violating HIPAA? What threat modeling has been done? [Devil's Advocate, Technical Expert]

11. **Privacy beyond HIPAA as felt user experience**: Even when raw data never leaves the device, users may have unarticulated concerns about who in their household sees alerts, what happens during device repair or replacement, whether employers could infer health status from usage patterns, and what trust mechanisms (visual indicators, audit trails, third-party verification) make safety viscerally palpable. How do we design privacy so users feel it as a benefit rather than a legal burden? [Audience Advocate, Questioner, Appreciative Inquirer]

12. **Privacy-performance delayed feedback (Success-to-the-Successful lock-in)**: Processing everything on-device creates a long-term system constraint you can't easily reverse: once users trust that "data never leaves the device," any future cloud-processing feature becomes a trust violation — a "Success-to-the-Successful" pattern that locks you out of capabilities cloud-first competitors can add easily, while the reverse lock-in is equally real. How do we architect the data pipeline to preserve future optionality? [Systems Thinker]

## Topic Cluster 04: Model Architecture, Sensor Fusion, and Signal Quality

13. **On-device ML architecture and quantization tradeoffs**: What combination of model complexity, inference frequency, quantization approach, and NPU features (INT8 acceleration, sparse compute, zero-point quantization) yields the optimal tradeoff between detection accuracy and power consumption, and should we consider asymmetric architectures (e.g., simpler sleep model, more complex cardiac model) evaluated across CNN vs. transformer approaches for PPG and temporal pattern recognition? [Analyst, Technical Expert]

14. **Sensor fusion architecture with asynchronous inputs**: What analytical framework guides early-fusion (raw sensor data) vs. late-fusion (per-sensor feature extraction) vs. hybrid-with-attention-gating approaches when combining asynchronous inputs (PPG at 50Hz, accelerometer at 25Hz, temperature at 1Hz, breathing audio at 100Hz bursts) while maintaining causality for real-time alerts — and at what point does the computational cost of additional sensor inputs exceed the marginal improvement in detection sensitivity? [Analyst, Technical Expert]

15. **Sensor fusion interdependence and graceful degradation**: When individual sensors fail partially (PPG giving noisy but not null readings, temperature stuck at one value) or degrade (poor wrist fit, skin pigmentation affecting PPG, tremors affecting motion sensing), does the ML model over-weight remaining sensors and produce false confidence, or does it detect reduced data quality and flag uncertainty? How do we architect the fusion layer with real-time signal quality validation (motion artifact detection, perfusion validation, sensor fault detection) and training with artificial sensor dropout so the system fails gracefully rather than catastrophically? [Devil's Advocate, Systems Thinker, Questioner, Technical Expert]

16. **Dynamic sensor activation and context-aware sampling**: Rather than fixed sensor allocation, could the system dynamically activate different sensor combinations based on detected context (sleep vs. exercise vs. rest) to optimize both detection quality and power consumption, and what adaptive sampling strategies balance coverage against battery impact? [Questioner]

17. **Calibration verification across population diversity**: How will the system verify that ML model accuracy holds across the full diversity of skin tones, wrist sizes, body types, heart rate variability, and physiological variations — particularly given well-documented biases in optical heart rate sensing, and how might users whose bodies don't fit the training data distribution silently work around inaccurate readings without ever reporting the problem? [Devil's Advocate, Audience Advocate]

## Topic Cluster 05: Model Updates, Personalization, and Drift

18. **On-device learning and update strategy**: What decision matrix compares on-device incremental learning, federated learning, periodic firmware updates, and online learning with tiny updates (within 128KB SRAM constraints) for adapting anomaly thresholds to individual baselines — accounting for regulatory implications, user experience disruption, technical complexity, privacy implications of each approach, and the constraint that medical device frameworks may preclude over-the-air model updates? [Analyst, Technical Expert, Questioner]

19. **Model drift detection and update sync-asynchrony**: How will the system detect when on-device ML performance has degraded due to sensor drift, firmware updates, or population shift — and how do we manage the uneven deployment across users that results from requiring user action for firmware updates (phased rollouts, model versioning embedded in alert data, A/B test infrastructure within firmware constraints) so we can maintain clear signal about what's working before false negatives accumulate? [Devil's Advocate, Systems Thinker]

## Topic Cluster 06: Power Budget, Battery Life, and Degradation

20. **Power budget decomposition across subsystems**: What is the defensible allocation of the sub-5mW average power draw across sensing subsystems (PPG driver, accelerometer, mic, BLE), compute (NPU vs. MCU cores), storage (flash writes for event logs), display, and communication to hit the 7-day battery target — what is the maximum inference energy budget per analysis cycle, and what sensitivity analysis reveals the highest-leverage optimization points? [Analyst, Technical Expert]

21. **Anomaly-detection power cliff and battery degradation drift**: Two linked dynamics: in the worst case the ML model enters a high-frequency false-positive state that drains the battery within hours, while over 2-3 years the battery capacity degrades 15-25%, forcing throttling of sensing or model complexity. Where is the leverage point — model compression, hardware acceleration, adaptive sampling, or graceful capability degradation — that breaks this tradeoff rather than just optimizing within it, so a promised 7-day experience does not quietly become 4-5 days? [Devil's Advocate, Systems Thinker]

22. **Charging windows and the "naked wrist"**: How will the weekly charging pattern required for 7-day battery life impact data continuity — both as a confounding variable for anomaly detection algorithms and as an emotional arc of vulnerability for users whose routines don't match charging patterns (frequent travel, long shifts, cognitive differences)? What graceful degradation patterns preserve dignity and utility when batteries run low, and what design turns charging from anxiety source into intentional health ritual? [Devil's Advocate, Audience Advocate]

23. **Battery life as invitation, not constraint**: Seven-day battery is a target, but what's the experience we're actually designing toward? When has a device's longevity changed how you used it — made it more present, less fretful about charging — and what design choices would make battery life contribute to peace of mind rather than just being a spec? [Appreciative Inquirer]

## Topic Cluster 07: Alerts, False Positives, and Trust Calibration

24. **Alert fatigue calibration loop (boy-who-cried-wolf dynamic)**: At what false positive rate will users begin ignoring or disabling alerts, and how do we navigate the "better safe than sorry" versus "boy who cried wolf" tradeoff through systematic thresholds, adaptive sensitivity tuning based on individual engagement, and the "false positive paradox" where tuning for dangerous false negatives overwhelms users with anxiety — especially when user tolerance varies individually and shifts over time? What evidence-based method quantifies the costs of missed detections versus unnecessary anxiety, and who decides the balance? [Analyst, Devil's Advocate, Systems Thinker, Questioner]

25. **Liability boundary after alert fatigue**: When the device fails to detect a genuine cardiac event that occurs shortly after a false alert created alert fatigue, how do we disentangle device failure from user inattention in liability scenarios — and how do we design liability boundaries that hold up in court while still making the device useful? [Devil's Advocate]

26. **Deterministic inference latency for safety-critical alerts**: For cardiac event detection requiring <5 second response time, what technical constraints does this place on model architecture, sensor buffer sizes, and interrupt priorities — and how do we architect the system to guarantee worst-case latency even during background operations (firmware OTA, sync to companion app, logged data compression)? [Technical Expert]

27. **The no-false-alarm experience**: Picture an experience where the device alerts you to something important, gets it right, and the intervention genuinely matters — you take action that makes a meaningful difference. How would the device have earned your trust so that when it speaks, you listen, and what does that moment feel like? [Appreciative Inquirer]

## Topic Cluster 08: User Experience, Equity, and Felt Agency

28. **Alert comprehension without raw-data access**: When users receive alerts about potential cardiac anomalies but cannot see what data triggered them or why the ML model flagged them, what anxiety, confusion, or decision paralysis emerges — and what power dynamics arise when users receive alerts they can't verify or challenge? How does the device balance privacy (data stays on device) against transparency (users understanding their own health data) while preserving bodily autonomy? [Audience Advocate]

29. **Disability access and interaction barriers**: What barriers might users with tremors, limited dexterity, visual impairments, or sensory processing differences face in daily wear, charging, alert acknowledgement, and companion app interaction — and how might the design inadvertently assume "ideal" users with full mobility, vision, and fine motor control? [Audience Advocate]

30. **False positives in social and professional contexts**: When users receive arrhythmia alerts during business meetings, first dates, job interviews, weddings, or while sleeping with a partner — moments where they can't or don't want to address them — what emotional and social frictions emerge, and how might the design respect users' context and dignity? [Audience Advocate]

31. **User data agency and clinical-handoff gaps**: Users may want to share anomalous events with their doctors or use their data to advocate for themselves in the healthcare system (e.g., when a cardiologist requests raw data, or when a wellness user develops actual symptoms) — but privacy-preserving design limits what can leave the device and creates gaps between what the device provides and what clinicians need. How do we balance privacy with user agency, and does this create a two-tier privacy model? [Audience Advocate, Questioner]

## Topic Cluster 09: Long-Term Engagement and Psychological Effects

32. **Health-anxiety reinforcement cycle and hypervigilance**: Consider the self-amplifying feedback loop where increased monitoring leads to increased awareness of normal bodily variations, interpreted as problems, producing more monitoring and more anxiety — especially for users with pre-existing health anxiety who become hyper-aware of every skipped beat over months of wear. What design elements break this compounding dynamic (normalizing variation, framing uncertainty, smoothing or delaying certain displays) so the device fosters a healthy relationship with one's body rather than hypervigilance or dependency? [Systems Thinker, Audience Advocate]

33. **Engagement evolution from curiosity to complacency**: Map the emotional journey from initial excitement about health insights to hyper-vigilance or alert fatigue, anxiety during monitoring gaps, and eventual abandonment — alongside the question of whether users even want continuous monitoring at all. What "dormancy modes," "monitoring vacations," or opt-in/opt-out paradigms might sustain healthy engagement without inducing anxiety? [Audience Advocate, Questioner]

34. **Behavioral adaptation shadow system (observer effect)**: When continuous health monitoring changes what you're measuring — people sleep differently knowing they're being tracked for apnea, or consciously calm themselves when they feel the device recording — how do you account for this "measurement changes the measured" dynamic in ML training data and anomaly detection, especially since adaptation patterns differ between health-conscious early adopters and later mainstream users? [Systems Thinker]

## Topic Cluster 10: Business, Operations, and Team

35. **Unit economics, BOM, and compliance cost structure**: What is the detailed BOM allocation across microcontroller, NPU, sensors, battery, and connectivity — including HIPAA compliance infrastructure, FDA pathway preparation, and ongoing regulatory maintenance as fixed and variable costs — and at what production volume do compliance costs become materially significant to gross margins? What sensitivity analysis reveals highest-leverage cost drivers? [Analyst]

36. **Runway allocation across gate-dependent milestones**: With 18 months of Series A funding, what framework allocates runway across firmware development, ML model development, hardware iterations, and clinical evidence generation — which milestones are gate-dependent, and what contingency buffer is needed for regulatory delays? [Analyst]

37. **Engineering team allocation between accuracy and efficiency**: Given the 12-person engineering team, what is the optimal allocation of ML engineering effort between improving detection accuracy versus optimizing inference efficiency, what metrics should guide rebalancing over time, and what is the marginal return on each additional engineer focused on each dimension? [Analyst]

38. **What the 12-engineer team already does well**: The team has a specific distribution of expertise — firmware, ML, hardware, mobile. When has this kind of cross-functional collaboration produced something extraordinary, and what meeting structures, communication patterns, or decision rituals would make this team's diversity a daily superpower rather than a coordination challenge? [Appreciative Inquirer]

## Topic Cluster 11: Reliability, Validation, and Long-Term System Health

39. **Fault tolerance and multi-year reliability**: What technical mechanisms ensure system reliability over multi-year device lifetimes — watchdog recovery from NPU hangs, CRC validation of model weights in flash, detection of sensor drift requiring recalibration, safe-mode behavior when ML inference produces statistically impossible outputs, and handling of sensor dislodgement during sleep, battery depletion causing intermittent sensing, firmware mid-update states, and thermal throttling reducing sampling rates? [Technical Expert]

40. **Clinical validation self-selection bias (Fixes-that-Fail pattern)**: Users most motivated to participate in clinical validation studies are those already experiencing symptoms or with high anxiety — not the eventual mainstream population. This risks a "Fixes-that-Fail" pattern where optimization for the high-risk study population produces unexpected false positive/negative rates in the wild and liability exposure. How do we design the clinical validation approach and ML training pipeline (stratified studies, weighted training data, explicit modeling of concerned-vs-casual users) to account for this population shift? [Systems Thinker]

41. **Companion-app bidirectional influence loop**: The app receives aggregated summaries and alerts, but users also input context (symptom logging, medication tracking, activity notes), creating a bidirectional loop where device alerts shape what users choose to log — potentially reinforcing existing detection blind spots if users only log symptoms after receiving alerts. How do we structure the app-device data flow to create useful context augmentation without reinforcing blind spots? [Systems Thinker]

---

## Appended Questions (Perspective, Provocation, and Distinctive-Register Personas)

### Provocateur (Append)

1. **What if the device was designed to actively ignore your health data?** Imagine a wellness wearable that deliberately obscures your metrics — showing only vague impressions, encouraging body attunement over quantification. What changes when the product is designed to make you *less* dependent on numbers, not more? *The real insight: what if our obsession with measurement is part of the problem, not the solution?*

2. **What if the wearable monitored everyone except the wearer?** Picture a device designed for "community health surveillance" — tracking patterns across households, workplaces, friend groups — but explicitly forbidden from giving individuals their own data. What if privacy was achieved by making individual data literally inaccessible to the person it came from? *The real insight: what if the most valuable health insights live between people, not within them?*

3. **What if the device required NO battery and died every 24 hours?** Imagine a wearable deliberately engineered for daily mortality — it exhausts its power, goes dark, and you must "bury" it and start fresh tomorrow. What would this forced daily reset change about how users relate to their health data? *The real insight: what if continuous monitoring creates unhealthy attachment, and periodic disconnection is a feature, not a bug?*

4. **What if the ML model trained on *only* the wearer's data and then deleted itself?** Picture a device that learns your personal baseline, detects anomalies relative to *you alone*, then purges its training data — leaving no trace, no federated learning, no model updates. What if personalization meant total isolation, not continuous improvement? *The real insight: what if the most accurate health model is one that knows nothing about anyone except you — and then forgets what it knows?*

5. **What if the business model charged you for *every detected anomaly*?** Invert the revenue model: the device is free, but each health alert costs money — creating a direct financial incentive for the device to be *less* sensitive. What happens when profit aligns with calm, not vigilance? *The real insight: what if our current model profits from anxiety, and we've never questioned whether that's the right alignment?*

### Storyteller (Append)

1. **The middle-of-the-night moment** Imagine it's 3 AM and Marcus, a 52-year-old user with a family history of heart disease, wakes to a gentle vibration on his wrist. The device has detected something unusual. Walk through the emotional and practical journey of what happens next—from that first alert to his decision (or not) to seek medical care. How do we design this critical moment to balance appropriate urgency without inducing panic, especially when the device itself acknowledges uncertainty in its detection?

2. **Living with the "watchful shadow"** Consider Elena, who wears this device daily for six months without a single alert. Then one Tuesday, it notifies her of a potential anomaly. How does the prolonged period of normal "silence" shape her reaction when an alert finally comes? How do we design the ongoing user experience to maintain engagement and trust during those quiet months, while preparing users for the possibility that one day, the device might change their life?

3. **The dinner table conversation** Picture a holiday gathering where the wearer notices everyone glancing at their wrist. "Is that the heart thing?" someone asks. How does this device become part of someone's identity and social narrative—for better and worse? What design choices influence whether wearers feel empowered, protected, or defined by their device, and how might this differ across personality types and health anxiety levels?

4. **The "boy who cried wolf" problem in reverse** When the device misses something significant—or produces a false positive that leads to an unnecessary ER visit—how does that moment reshape the user's relationship with the technology? Walk through the recovery narrative: what happens in the days and weeks after a trust-breaking event, and what systems or interactions could rebuild (or deepen) that relationship?

5. **From wellness device to medical tool** Imagine the journey of someone who bought this as a consumer wellness product, then two years later receives an FDA-cleared software update that transforms it into a clinical-grade diagnostic tool. How does their relationship with the device evolve? What expectations, responsibilities, and emotional weight shift when a fitness accessory becomes a medical instrument—and how do we prepare users for this transition?

### Visionary (Append)

1. **What if health monitoring wasn't about detection but about conversation?** Instead of a device that passively collects data and issues alerts, what if we designed a system that engaged in an ongoing dialogue with the wearer's body — not metaphorically, but through a feedback architecture where the device's sensing modalities actively respond to physiological state changes, creating a bidirectional relationship between wearer and technology that fundamentally reimagines what "monitoring" means?

2. **How might we design for health emergence rather than health measurement?** Current medical frameworks treat health as a set of metrics to be tracked against normal ranges. What if we completely reimagined this paradigm — designing not around anomaly detection from a baseline, but around understanding each individual's unique physiological signature as a dynamic, evolving pattern? Could we create a system that learns what "healthy" means for this specific body in real-time, without reference to population norms or clinical thresholds?

3. **How might we dissolve the boundary between device and body entirely?** What if we imagined health monitoring not as something worn but as something integrated — not through invasive implants, but through a fundamentally different relationship to sensing that draws from how organisms naturally perceive internal state? What would a "bio-native" sensing architecture look like if it emerged today with no legacy constraints from wrist-worn consumer electronics?

4. **What if the device's primary function wasn't delivering alerts but cultivating embodied awareness?** Instead of designing for notification delivery and alarm management, what if we centered the user experience on helping people develop a richer, more nuanced relationship with their own physiological experience? Could the device become less of a monitoring tool and more of a somatic literacy amplifier — and what would that mean for product definition, user retention, and ultimately, health outcomes?

5. **How might we design for a 10-year relationship rather than a 2-year product cycle?** Most wearables are designed around replacement cycles and feature roadmaps. What if we completely reimagined this — creating a device that grows and evolves with its wearer, where model updates, sensor capabilities, and even the core value proposition shift over time as the user's health journey changes? What would a "lifelong companion" architecture look like, and how would it transform the regulatory and business landscape?

### Connector (Append)

1. **Biological nervous system parallel** The human nervous system processes most sensory signals locally (reflex arcs) before sending summaries to the brain — how could we structure our on-device ML pipeline to mirror this hierarchy, and what does this biological parallel suggest about which anomalies need immediate local processing versus which can be aggregated for periodic sync?

2. **Game design progression systems** Video games use sophisticated progression systems that adapt difficulty based on player behavior patterns, often running client-side with minimal server communication — what principles from adaptive game difficulty could inform how our device learns individual baseline patterns and personalizes anomaly thresholds over time?

3. **Automotive safety-critical systems** Modern vehicles have multiple redundant safety systems that run independently with different complexity levels (ABS, traction control, stability control) — how might we apply this layered redundancy philosophy to create fail-safe anomaly detection that conserves power while maintaining safety-critical reliability?

4. **Regulatory tailwinds** The wellness-to-clinical pathway appears to be a two-stage journey, but structural parallels exist in other regulated industries (financial tech, aerospace) where consumer products gradually evolved into enterprise-grade tools — what patterns from those transitions reveal how architectural decisions made at the consumer wellness stage can either accelerate or obstruct future FDA 510(k) clearance?

5. **Companion app as compute partner** Most wearable architectures treat the phone as a dumb display and storage layer, but high-performance smartphones have powerful processors that sit idle most of the time — how could we architect a handoff protocol where the wearable does continuous lightweight monitoring and the phone handles intensive computations during charging periods, and what does this reveal about optimal sensor placement and power distribution across the ecosystem?

---

**Synthesize stream**: 41 questions across 11 clusters
**Append stream**: 20 questions across 4 personas
**Combined total**: 61

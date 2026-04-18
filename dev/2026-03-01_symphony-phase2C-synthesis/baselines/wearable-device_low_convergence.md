# wearable-device — low — Convergence Baseline

**Input:** 73 Synthesize-group questions from `test-data/wearable-device_low.md`
**Convergence groups (P):** 15
**Questions in convergence (Q):** 49 of 73 (67%)
**Convergence density:** 67%
**Unique (non-convergent) Synthesize questions:** 24 of 73 (33%)

Convergence here means two or more Synthesize-persona questions address the same concrete concern such that synthesis can either (a) merge them into one richer question that anchors in both source texts, or (b) preserve all distinct voices when the framings differ enough that merging would strip persona-specific value.

---

## Convergence Group 1: Alert fatigue — false positive tolerance, sensitivity calibration & trust erosion

**Theme:** The threshold at which users ignore alerts, the adaptive-sensitivity mechanism that calibrates against dismissal patterns, and the trust-erosion dynamic where repeated false positives undermine the device's core value.
**Cluster:** C5 (User Experience, Alerts & Emotional Safety)
**Questions:**
- [Audience Advocate Q2] False alarm tolerance — threshold before users lose trust; variation by user segment (known conditions vs. prevention-focused).
- [Devil's Advocate Q3] Alert fatigue threshold — false positive rate at which users ignore/disable alerts; adaptive sensitivity tuning.
- [Questioner Q8] False positive paradox — tuning sensitivity to avoid false negatives may overwhelm users causing anxiety and abandonment; acceptable balance.
- [Systems Thinker Q1] Alert fatigue calibration — reinforcing loop (false alarms → dismissals → model learns → fewer alerts → missed detections); oscillation in sensitivity eroding trust in both directions.
**Merge recommendation:** **Merged.** "What is the acceptable false-positive threshold before users disable alerts (varying by segment: prevention-focused vs. known-condition users) — and what adaptive-sensitivity mechanism calibrates against dismissal patterns without falling into the reinforcing-loop Alert Fatigue Calibration archetype where the model over-corrects on temporary user behavior, silences genuine anomalies, and oscillates trust in both directions (too noisy, then too quiet)?"

## Convergence Group 2: Sensor bias, skin tone, physiological diversity & calibration verification

**Theme:** The structural-bias problem — PPG sensor performance variations across skin tones, ML model training on diverse physiological patterns (arrhythmias by gender/age/body composition), and calibration verification across wrist sizes and variations given documented optical-heart-rate-sensing biases.
**Cluster:** C6 (Accessibility, Bias & Physiological Diversity)
**Questions:**
- [Audience Advocate Q5] Skin tone and sensor bias — PPG design for melanin-rich skin; validation approach.
- [Audience Advocate Q7] Physiological diversity beyond "standard body" — ML training diversity across genders, ages, comorbidities, not just typical male cardiac physiology.
- [Devil's Advocate Q4] Calibration verification — ML accuracy across skin tones, wrist sizes, physiological variations; documented biases in optical heart-rate sensing.
**Merge recommendation:** **Merged.** "How does the PPG sensor design and ML training/validation pipeline account for documented optical-heart-rate biases across skin tones, wrist sizes, genders, ages, body compositions, and comorbidities — including the validation methodology that confirms accuracy for melanin-rich skin and arrhythmia patterns that present differently across populations (not just the typical male physiology dominating cardiac research)?"

## Convergence Group 3: Wellness-clinical boundary — user expectations, liability & diagnostic reliance

**Theme:** The boundary management problem between "wellness tool" and "medical device" — what happens if a significant event is missed, how users/physicians interpret device output, marketing language that prevents clinical-grade misinterpretation, and the liability-boundary clarity when missed events follow false alerts.
**Cluster:** C3 (Regulatory Pathway, Wellness-Clinical Boundary & Liability)
**Questions:**
- [Devil's Advocate Q8] Liability boundary clarity — missed cardiac event after false alert creating alert fatigue; disentangling device failure from user inattention.
- [Devil's Advocate Q9] Clinical data contamination — users sharing "all-clear" data with physicians creating inappropriate diagnostic reliance; device not validated as clinical-grade.
- [Devil's Advocate Q11] Wellness-clinical boundary ambiguity — preventing marketing/UI from implying clinical-grade diagnostic; physicians placing undue weight on wellness-device outputs.
- [Questioner Q5] What defines the boundary between "wellness" and "medical" in users' minds — expectations about accuracy and liability vs. legal positioning.
- [Questioner Q6] What if the device missed a significant cardiac event — user expectations, liability exposure, feature limits between helpful wellness tool and medical device.
- [Systems Thinker Q3] Liability threshold design — gray zone between wellness insight and medical diagnosis; Shifting-the-Burden pattern where users shift interpretation onto doctors creating unnecessary clinical visits.
**Merge recommendation:** **Merged into 2 questions.** Question A (user expectation & missed-event liability): merge DA Q8 + Quest Q5 + Quest Q6 — "Where is the boundary between 'wellness' and 'medical' in users' minds, how do user expectations about device accuracy and liability differ from the legal wellness positioning — and what happens at the limit case when the device misses a significant cardiac event that occurs shortly after a false alert created alert fatigue, including how to disentangle device failure from user inattention in liability scenarios?" Question B (diagnostic contamination & Shifting-the-Burden): merge DA Q9 + DA Q11 + ST Q3 — "What prevents users and physicians from inappropriately relying on the wellness device as clinical-grade diagnostic — including the marketing language and UI design that set clear expectations, and the designed middle ground that manages the Shifting-the-Burden pattern where ambiguous findings cascade users onto physicians for interpretation (creating unnecessary visits) versus silent outputs where users assume detection when none occurred?"

## Convergence Group 4: Wellness-to-clinical migration, FDA pathway & technical debt

**Theme:** The forward-looking architectural question — how today's consumer wellness design either enables or blocks future FDA 510(k) clearance, whether 510(k) is even the right pathway, and what contingency exists if the pathway proves infeasible.
**Cluster:** C3 (Regulatory Pathway, Wellness-Clinical Boundary & Liability)
**Questions:**
- [Analyst Q7] Consumer-to-Clinical Transition Architecture — which decisions create technical debt for FDA 510(k); design patterns enabling smoothest regulatory pathway.
- [Devil's Advocate Q12] FDA pathway dependency — contingency if 510(k) proves infeasible due to predicate changes or new guidance; technical architecture rework.
- [Questioner Q7] Why assume FDA 510(k) is the right regulatory path — alternatives: partnering with established medical device companies, De Novo classification, staying in wellness with clinical research partnerships.
- [Systems Thinker Q4] Wellness-to-clinical migration path — architecture/pipeline/features designed today to enable 510(k); Fixes-that-Fail pattern where consumer shortcuts create technical debt blocking regulatory approval.
**Merge recommendation:** **Merged.** "How should the architecture, data pipeline, validation methodology, and documentation be designed today to enable a smooth FDA 510(k) transition — treating the wellness version as a 'clinical device in waiting' rather than assuming future migration is a simple certification step — while accounting for the Fixes-that-Fail pattern where consumer wellness shortcuts create technical debt that blocks regulatory approval, the contingency plan if 510(k) proves infeasible (predicate device changes, new guidance), and the honest question of whether 510(k) is even the right pathway versus alternatives (De Novo classification, partnering with established medical device companies, staying in wellness with clinical research partnerships)?"

## Convergence Group 5: Clinical validation data & feedback loops

**Theme:** What clinical validation data is needed (dataset size, composition, feasibility against runway), and how clinical confirmation from users' physicians can flow back into on-device learning without violating privacy architecture.
**Cluster:** C3 (Regulatory) with tie to C8 (Learning)
**Questions:**
- [Analyst Q8] Clinical Validation Data Requirements and Feasibility — minimum viable clinical dataset size/composition for arrhythmia and sleep apnea validation; mapping against 18-month runway.
- [Systems Thinker Q2] Clinical validation feedback loop — physicians validate events as true/false positive without accessing raw biometric data; privacy-preserving supervised signal closing the learning loop from authoritative users.
**Merge recommendation:** **Preserve all distinct.** These are genuinely different questions — Analyst Q8 is about up-front clinical validation dataset composition and feasibility; ST Q2 is about a post-launch feedback-loop architecture that preserves privacy while ingesting physician-tagged ground truth. Merging would conflate the pre-launch dataset question with the post-launch learning-loop question. Preserve both as distinct outputs, with attribution to their distinct framings.

## Convergence Group 6: Power budget, sensor-fusion selection & ML pipeline allocation

**Theme:** How to allocate the 7-day battery budget across the ML pipeline stages (sampling, preprocessing, inference, post-processing), how sensor-fusion algorithm choice (early/intermediate/late) interacts with power, and the marginal-accuracy-per-milliwatt tradeoff space.
**Cluster:** C2 (Power, Battery & Hardware-Software Co-Design)
**Questions:**
- [Analyst Q1] Power Budget Allocation Across Model Complexity — breakdown across sampling, preprocessing, inference, post-processing; marginal accuracy per milliwatt.
- [Analyst Q4] Sensor Fusion Algorithm Selection Framework — early/intermediate/late fusion criteria for multi-signal anomaly detection.
- [Questioner Q10] Why assume fixed sensor allocation is right — dynamic activation by context (sleep vs. exercise vs. rest) to optimize detection quality and power.
**Merge recommendation:** **Merged.** "How should the 7-day power budget be allocated across the ML pipeline stages (sampling, preprocessing, inference, post-processing) and across sensor-fusion architectures (early, intermediate, late fusion) to optimize the marginal-accuracy-per-milliwatt tradeoff — and should sensor allocation be fixed or dynamically activated by detected context (sleep vs. exercise vs. rest) to jointly optimize detection quality and power consumption?"

## Convergence Group 7: Battery lifecycle — charging disruption, degradation & power cliff

**Theme:** The non-steady-state battery problem — charging-pattern data-continuity disruption, 2-3 year capacity degradation, and the anomaly-detection power cliff (high-frequency false-positive state draining battery within hours), plus the battery-budget tradeoff cascade where conservation degrades detection.
**Cluster:** C2 (Power, Battery & Hardware-Software Co-Design)
**Questions:**
- [Devil's Advocate Q5] Anomaly detection power cliff — high-frequency false-positive state continuously triggering expensive inference, draining battery within hours.
- [Devil's Advocate Q6] Charging behavior disruption — charging pattern impact on data continuity; preventing charging from becoming a confounding variable.
- [Devil's Advocate Q7] Battery degradation effects — adaptation as capacity degrades to 70% over 2-3 years; power-budget viability.
- [Systems Thinker Q10] Battery budget tradeoff cascades — reinforcing loop (low battery → reduced sensing → lower-resolution data → false positives → compensating processing → faster drain) creating death spiral where conservation undermines core value.
**Merge recommendation:** **Merged.** "How does the system manage the full battery lifecycle — weekly charging disruption to data continuity (confounding anomaly detection), 2-3 year degradation to 70% capacity (power budget viability), the anomaly-detection power cliff where high-frequency false-positive states drain the battery within hours rather than days, and the Battery Budget Tradeoff Cascade where low-battery conservation modes sacrifice sensor resolution in ways that degrade model performance and further increase power demand — and should users have transparent 'accuracy vs. battery life' mode control rather than automatic invisible degradation?"

## Convergence Group 8: Model updates — firmware, OTA, federated learning & user adaptation

**Theme:** How the ML model evolves over time — on-device learning vs. federated learning vs. periodic firmware updates, OTA update mechanics under medical-device constraints, incentives for federated-learning participation, and user-adaptation to updated alert behavior.
**Cluster:** C8 (Team, Learning Loops & Strengths-Based Foundations)
**Questions:**
- [Analyst Q5] Model Update Strategy Cost-Benefit Analysis — on-device learning vs. federated vs. periodic firmware updates; engineering costs, privacy, performance.
- [Questioner Q11] What if the ML model needs to evolve faster than firmware updates allow — OTA updates within medical device constraints; federated learning architectures.
- [Systems Thinker Q7] Federated learning participation incentive — Tragedy of the Commons variant; opt-in when users receive no direct benefit; contribution visible and socially reinforced.
- [Systems Thinker Q8] Model update timing and user adaptation — transition period where users have calibrated to old alert behavior; phased rollouts with transparency vs. whiplash sensitivity shifts retraining users to distrust alerts.
**Merge recommendation:** **Merged into 2 questions.** Question A (update strategy architecture): merge Anal Q5 + Quest Q11 — "What is the cost-benefit analysis across model update strategies — on-device learning, federated learning, and periodic firmware updates — including engineering cost, privacy implications, model performance gains, and the critical constraint that the ML model may need to evolve faster than firmware updates allow within medical-device regulatory architecture?" Question B (participation & adaptation): merge ST Q7 + ST Q8 — "How does the system jointly manage (a) the Tragedy-of-the-Commons variant where federated-learning opt-in suffers when contribution is invisible/anonymous and model quality plateaus without participation, and (b) the user-adaptation whiplash during model updates where phased rollouts with transparency and user-controlled timing protect the trust users have carefully rebuilt after previous sensitivity shifts?"

## Convergence Group 9: Privacy architecture — trust-building, transparency & user conceptions

**Theme:** What privacy actually means to different user segments, the transparency mechanisms that build genuine confidence (visual indicators, audit trails, third-party verification), and the reframe of privacy as user experience rather than compliance checklist.
**Cluster:** C4 (Privacy Architecture, Trust & Data Handling)
**Questions:**
- [Questioner Q1] What does "privacy" actually mean to different user segments — 45-year-old with family heart history vs. tech-savvy early adopter; data architecture implications.
- [Questioner Q2] Why assume users trust data stays on-device — transparency mechanisms, visual indicators, audit trails, third-party verification.
- [Appreciative Inquirer Q2] When privacy creates trust and openness — making safety palpable; depth of trust from day one (analogy: therapist, journal).
- [Appreciative Inquirer Q8] Privacy architecture as user experience, not compliance — designing privacy viscerally felt through interface, communication, transparency.
**Merge recommendation:** **Merged.** "What does 'privacy' actually mean to different user segments (45-year-old with family cardiac history vs. tech-savvy early adopter) — and what specific mechanisms make the on-device privacy promise viscerally felt rather than a compliance checklist (visual indicators, audit trails, third-party verification, interface/communication design, transparency patterns borrowed from therapeutic and journal-keeping contexts) so that users can trust the data-stays-on-device promise from day one rather than requiring abstract belief?"

## Convergence Group 10: Aggregated data & companion app security surface

**Theme:** The secondary privacy risk — aggregated summaries and processed alerts creating extractable patterns, companion-app reverse-engineering of sensitive patterns from timing metadata, and the broader threat-model of sync protocol security.
**Cluster:** C4 (Privacy Architecture, Trust & Data Handling)
**Questions:**
- [Questioner Q4] Unintended privacy consequences from "aggregated summaries" — patterns extractable from summary data users wouldn't anticipate.
- [Devil's Advocate Q10] Companion app security surface — malicious app reverse-engineering sensitive health patterns from timing metadata, alert frequency, aggregated statistics; threat modeling on sync protocol.
**Merge recommendation:** **Merged.** "Given that only 'processed alerts and aggregated summaries' sync to the companion app, what privacy patterns are extractable from this summary data that users wouldn't anticipate — and what threat modeling has been done against malicious-app reverse-engineering of sensitive health patterns from timing metadata, alert frequency, and aggregated statistics including the sync protocol security surface?"

## Convergence Group 11: Sensor fusion edge cases, failure modes & graceful degradation

**Theme:** What happens when multi-sensor fusion fails — motion artifacts, skin contact issues, partial sensor failure (PPG noisy but not null, temperature stuck), model drift, and how the system detects and compensates without silent masking.
**Cluster:** C1 (ML Model Quality, Accuracy & Validation)
**Questions:**
- [Analyst Q6] Edge Case Detection and Failure Mode Analysis — multi-sensor fusion failures (motion artifacts during exercise, skin contact issues); graceful degradation.
- [Devil's Advocate Q1] Model drift detection — sensor drift, firmware updates, population shift; trigger notification/updates before false negatives accumulate.
- [Devil's Advocate Q2] Sensor failure modes — partial failure (PPG noisy but not null, temperature stuck); detection and compensation without compromising safety-critical alerts.
- [Questioner Q12] Edge cases breaking sensor fusion — poor circulation, skin pigmentation affecting PPG, tremors affecting motion sensing; graceful failure.
- [Systems Thinker Q11] Sensor fusion validation loops — Fixes-that-Fail where model learns to weight around a failing sensor, masking problems until catastrophic failure; continuous cross-validation via redundancy.
**Merge recommendation:** **Merged.** "How does the system systematically identify, categorize, and gracefully degrade across edge cases where multi-sensor fusion fails — motion artifacts during exercise, skin contact issues, partial sensor failure (PPG noisy-but-not-null, temperature stuck), model drift from sensor drift or firmware updates, physiological edge cases (poor circulation, skin pigmentation affecting PPG, tremors affecting motion) — while avoiding the Fixes-that-Fail pattern where compensating models silently mask sensor failures until the detection pipeline fails catastrophically, and designing sensor redundancy from the start so cross-validation is continuous and free rather than a separate diagnostic mode?"

## Convergence Group 12: Anxiety, alert delivery & "nothing to report" value

**Theme:** The emotional-safety design of alerts — anxiety induction vs. reassurance, life-altering notification delivery considering user context, and the "nothing to report" value communication for users who may interpret silence as malfunction.
**Cluster:** C5 (User Experience, Alerts & Emotional Safety)
**Questions:**
- [Audience Advocate Q1] Anxiety induction vs. reassurance — balance for 40+ adults with heightened health awareness; avoiding constant low-level hypervigilance.
- [Audience Advocate Q3] Life-altering notification delivery — urgency with user context (driving, sleeping, meeting); avoiding panic while ensuring action.
- [Audience Advocate Q4] "Nothing to report" as value — reassurance during normal readings; for users who interpret "no alerts" as "device not working."
- [Appreciative Inquirer Q5] The no-false-alarm experience — alert gets it right, intervention matters; device earning trust so users listen when it speaks.
**Merge recommendation:** **Merged.** "How does the alert system jointly balance: (a) avoiding anxiety induction and constant low-level hypervigilance for 40+ adults already attuned to health signals, (b) delivering life-altering notifications with appropriate urgency that account for user context (driving, sleeping, meeting) without causing panic, (c) communicating value during normal-reading periods so users don't interpret 'no alerts' as 'device not working', and (d) earning the trust through accuracy so when the device speaks, users listen and the intervention genuinely matters?"

## Convergence Group 13: Continuous-monitoring assumption, dormancy & opt-in alerts

**Theme:** The broad reframe questions — why assume users want continuous monitoring at all, what dormancy/monitoring-vacation modes would look like, and whether opt-in "check your status when you choose" paradigm trades continuous protection for reduced anxiety.
**Cluster:** C5 (User Experience, Alerts & Emotional Safety)
**Questions:**
- [Questioner Q13] Why assume users want continuous health monitoring at all — dormancy modes, monitoring vacations; periodic disengagement improving long-term adherence.
- [Questioner Q14] Opt-in rather than push-based alerts — "check health when you choose" paradigm reducing anxiety vs. defeating continuous monitoring purpose.
- [Questioner Q15] How might users anthropomorphize or overtrust the device — treating wearable as infallible medical advice; design elements mitigating misconception.
**Merge recommendation:** **Preserve all distinct.** Three meaningfully different framings: (a) Q13 challenges the continuous-monitoring assumption itself (dormancy as adherence strategy); (b) Q14 explores the push-vs-pull paradigm shift (opt-in alerts); (c) Q15 addresses device-as-infallible-authority risk (anthropomorphism/overtrust). Merging would strip each distinct framing. Preserve Q13 and Q14 as a merged pair (both about user-initiated control: "Why assume users want continuous monitoring vs. dormancy/opt-in paradigms — and would periodic disengagement or 'check-when-you-choose' paradigms improve adherence while still providing value?") and keep Q15 distinct as the overtrust/anthropomorphism question.

## Convergence Group 14: Business model, subscription vs. hardware, runway & FDA constraints

**Theme:** The commercial-sustainability core — hardware-software cost structure, unit economics at production volumes, recurring-revenue-vs-one-time-hardware model under medical-device regulatory constraints and the 18-month runway.
**Cluster:** C7 (Business Model, Unit Economics & Sustainability)
**Questions:**
- [Analyst Q9] Hardware-Software Cost Structure Analysis — BOM, manufacturing, per-unit software cost at production volumes; break-even for hardware business.
- [Analyst Q10] Recurring Revenue vs. One-Time Hardware Model — medical device regulatory constraints + 18-month runway; subscription vs. hardware unit economics.
- [Systems Thinker Q5] Reimbursement incentive alignment — when insurers pay, product shifts from user-centric to payer-centric; two-tier user base (clinical vs. wellness).
**Merge recommendation:** **Merged.** "What is the realistic unit-economics viability of the hardware business — BOM, manufacturing, and per-unit software costs across production volumes — and should the business model be hardware-only purchase, recurring subscription for ongoing monitoring, or a clinical-reimbursement-driven model that may create a Success-to-the-Successful dynamic where clinical users get better features while wellness users are deprioritized into a two-tier product, all given the medical-device regulatory constraints and the 18-month funding runway?"

## Convergence Group 15: Team strengths, experiments & asset activation

**Theme:** The appreciative-inquiry foundation — what the 12-engineer team already does well (firmware/ML/hardware/mobile expertise), the smallest-meaningful-experiment this month, and the existing assets and competitive advantages already in the team that competitors would envy.
**Cluster:** C8 (Team, Learning Loops & Strengths-Based Foundations)
**Questions:**
- [Appreciative Inquirer Q7] What the 12-engineer team already does well — cross-functional collaboration (firmware, ML, hardware, mobile); meeting structures, communication patterns, decision rituals making diversity a daily superpower.
- [Appreciative Inquirer Q11] The smallest meaningful experiment — smallest prototype this month giving genuine insight; human reaction test, not technical feasibility.
- [Appreciative Inquirer Q12] Existing assets we haven't fully leveraged — taken-for-granted strengths; advantages competitors would envy; amplifying natural advantages from day one.
**Merge recommendation:** **Preserve all distinct.** Three meaningfully different AI framings: (a) Q7 is team-process-capability (how the team works together); (b) Q11 is experiment-design (how to test quickly with humans, not technology); (c) Q12 is asset-inventory (what strengths already exist). Merging would produce a bland "leverage team strengths" question losing AI's three distinct entry points. Preserve all three as distinct outputs within C8, each retaining AI's strengths-based framing.

---

## Unique Questions (Non-convergent — survive synthesis as distinct)

**Count:** 24 of 73 (33%)

These are Synthesize-group questions with no strong cross-persona counterpart. Most should survive synthesis as standalone questions; a small number may be cut at the synthesizer's discretion (flagged in `wearable-device_low_target.md`).

| # | Persona | Question (abridged) | Cluster |
|---|---|---|---|
| 1 | Analyst | Q2 — Quantifying FP-FN trade-off space; analytical framework for precision-recall at confidence thresholds | C1 |
| 2 | Analyst | Q3 — Inference latency vs. detection window constraints; NPU architecture implications | C1 |
| 3 | Appreciative Inquirer | Q1 — Peak moments in personal health awareness; conditions creating genuine insight | C5 / C8 |
| 4 | Appreciative Inquirer | Q3 — Technologies that become invisible partners; seamless extension of awareness | C5 / C8 |
| 5 | Appreciative Inquirer | Q4 — Three years later: what users celebrate; changed relationship to body and health | C5 / C8 |
| 6 | Appreciative Inquirer | Q6 — Regulatory success as enabler not obstacle; FDA as collaboration | C3 (orphan-leaning) |
| 7 | Appreciative Inquirer | Q9 — Battery life as invitation not constraint; contributing to peace of mind | C2 (orphan-leaning, interpretive frame) |
| 8 | Appreciative Inquirer | Q10 — From wellness to clinical: learning across the boundary (bidirectional) | C3 (orphan-leaning) |
| 9 | Audience Advocate | Q6 — Disability and sensory accommodation; alternative alert modalities | C6 |
| 10 | Audience Advocate | Q8 — Digital literacy barriers; users 40+ with limited technical comfort | C6 |
| 11 | Audience Advocate | Q9 — Informed consent that's actually understood; wellness vs. clinical data usage | C4 |
| 12 | Audience Advocate | Q10 — Domestic privacy and intimate partner violence; abusive-relationship protections | C4 |
| 13 | Audience Advocate | Q11 — Health condition stigma; disclosure control; device-appearance/public notifications | C4 / C5 |
| 14 | Audience Advocate | Q12 — Right to be forgotten; complete data deletion across device/app/cloud | C4 |
| 15 | Questioner | Q3 — Cardiologist requests access to raw data; two-tier privacy model | C4 |
| 16 | Questioner | Q9 — Clinical accuracy vs. battery life optimization; 3-day medical vs. 7-day consumer | C2 / C3 |
| 17 | Questioner | Q15 — Anthropomorphism / overtrust; design elements mitigating misconception (preserved per CG13) | C5 |
| 18 | Systems Thinker | Q6 — Data lock-in and platform power; monetization temptation; user-owned exportability | C4 / C7 |
| 19 | Systems Thinker | Q9 — Concept drift in health baselines; baseline shifts with aging/medications; user-triggered recalibration | C1 / C8 |
| 20 | Systems Thinker | Q12 — End-of-life and device transition; baseline portability across hardware generations | C7 / C8 |
| 21 | Analyst | Q8 — Clinical validation data requirements (preserved distinct per CG5) | C3 |
| 22 | Systems Thinker | Q2 — Clinical validation feedback loop (preserved distinct per CG5) | C3 / C8 |
| 23 | Appreciative Inquirer | Q7 — Team strengths (preserved per CG15) | C8 |
| 24 | Appreciative Inquirer | Q11 — Smallest meaningful experiment (preserved per CG15) | C8 |

**Note on double-counted questions:** CG5, CG13, and CG15 preserve-all-distinct means some questions appear in both a convergence group and the unique-survive list. CG15's 3 AI questions are all in both lists; CG13's Q15 is in both; CG5's Analyst Q8 and ST Q2 are in both. Net distinct question count (merged questions count once per merge): 24 unique-surviving + 15 convergence-group outputs (11 merged + 4 preserved-distinct sub-outputs across CG3/CG5/CG8/CG13/CG15) = ~39 source contributions surviving, which after compaction lands at 30 synthesized outputs. Exact target count in `wearable-device_low_target.md`.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (wearable-device / low cell)

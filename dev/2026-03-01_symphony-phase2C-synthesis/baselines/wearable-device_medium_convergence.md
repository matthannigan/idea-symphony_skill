# wearable-device — medium — Convergence Baseline

**Input:** 89 Synthesize-group questions from `test-data/wearable-device_medium.md`
**Convergence groups (P):** 18
**Questions in convergence (Q):** 62 of 89 (70%)
**Convergence density:** 70%
**Unique (non-convergent) Synthesize questions:** 27 of 89 (30%)

Convergence here means two or more Synthesize-persona questions address the same concrete concern such that synthesis can either (a) merge them into one richer question that anchors in both source texts, or (b) preserve all distinct voices when the framings differ enough that merging would strip persona-specific value.

Medium-effort wearable-device's convergence density (70%) is higher than low (67%) because adding Technical Expert (10 questions) converges heavily into existing engineering territory (C1/C2), and Analyst's expansion from 10 to 15 questions adds to commercial-sustainability convergence in C7. The 18 convergence groups at medium vs. 15 at low reflects this added engineering and commercial density.

---

## Convergence Group 1: Alert fatigue — false positive tolerance, sensitivity calibration & trust erosion

**Theme:** The threshold at which users ignore alerts, the adaptive-sensitivity mechanism that calibrates against dismissal patterns, and the trust-erosion dynamic where repeated false positives undermine the device's core value.
**Cluster:** C5 (User Experience, Alerts & Emotional Safety)
**Questions:**
- [Devil's Advocate Q3] Alert fatigue threshold — false positive rate at which users ignore/disable alerts; adaptive sensitivity tuning based on individual engagement patterns and feedback.
- [Questioner Q8] False positive paradox — tuning sensitivity to avoid false negatives may overwhelm users causing anxiety and abandonment; acceptable balance.
- [Systems Thinker Q1] Alert fatigue calibration loop — reinforcing loop (false alarms → dismissals → model learns → fewer alerts → missed detections); oscillation in sensitivity eroding trust.
- [Analyst Q7] False positive/false negative calibration protocol — acceptable threshold balances for health alerts with liability implications; evidence-based thresholds.
**Merge recommendation:** **Merged.** "What is the acceptable false-positive threshold before users disable alerts (varying by segment: prevention-focused vs. known-condition users) — and what evidence-based adaptive-sensitivity mechanism calibrates against dismissal patterns without falling into the reinforcing-loop Alert Fatigue Calibration archetype where the model over-corrects on temporary user behavior, silences genuine anomalies, and oscillates trust in both directions (too noisy, then too quiet), while accounting for the health-alert liability implications of each threshold choice?"

## Convergence Group 2: Sensor bias, skin tone, physiological diversity & calibration verification

**Theme:** The structural-bias problem — PPG sensor performance variations across skin tones, ML model training on diverse physiological patterns, and calibration verification across wrist sizes and variations given documented optical-heart-rate-sensing biases.
**Cluster:** C6 (Accessibility, Bias & Physiological Diversity)
**Questions:**
- [Audience Advocate Q4] Users whose bodies don't fit training data — skin tone, wrist size, heart rate variability, movement patterns underrepresented; silent workarounds.
- [Devil's Advocate Q4] Calibration verification — ML accuracy across skin tones, wrist sizes, physiological variations; documented biases in optical heart-rate sensing.
**Merge recommendation:** **Merged.** "How does the PPG sensor design and ML training/validation pipeline account for documented optical-heart-rate biases across skin tones, wrist sizes, heart rate variability, and movement patterns — particularly for users underrepresented in training data who might silently work around inaccurate readings without ever reporting the problem; and what validation methodology confirms accuracy across diverse physiological presentations?"

## Convergence Group 3: Wellness-clinical boundary — user expectations, liability & diagnostic reliance

**Theme:** The boundary management problem between "wellness tool" and "medical device" — what happens if a significant event is missed, how users/physicians interpret device output, marketing language that prevents clinical-grade misinterpretation, and the liability-boundary clarity when missed events follow false alerts.
**Cluster:** C3 (Regulatory Pathway, Wellness-Clinical Boundary & Liability)
**Questions:**
- [Audience Advocate Q3] Wellness-device vs. clinical-device interpretation by users — users acting on alerts as medical diagnoses; legal/ethical/experience considerations.
- [Devil's Advocate Q8] Liability boundary clarity — missed cardiac event after false alert creating alert fatigue; disentangling device failure from user inattention.
- [Devil's Advocate Q9] Clinical data contamination — users sharing "all-clear" data with physicians creating inappropriate diagnostic reliance; device not validated as clinical-grade.
- [Devil's Advocate Q11] Wellness-clinical boundary ambiguity — marketing language and UI preventing clinical-grade diagnostic interpretation; physicians placing undue weight on wellness-device outputs.
- [Questioner Q5] What defines the boundary between "wellness" and "medical" in users' minds — expectations about accuracy/liability vs. legal positioning.
- [Questioner Q6] What if the device missed a significant cardiac event — user expectations, liability exposure, feature limits between helpful wellness tool and medical device; occupying both spaces simultaneously.
- [Systems Thinker Q10] Alert framing therapeutic expectation loop — users interpret alerts as medical guidance (liability if missed); over-disclaiming means users ignore warnings; Shifting-the-Burden where device creates dependency eroding informed health decision-making.
**Merge recommendation:** **Merged into 2 questions.** Question A (user expectation & missed-event liability): merge AA Q3 + DA Q8 + Quest Q5 + Quest Q6 — "Where is the boundary between 'wellness' and 'medical' in users' minds — how do users' expectations about device accuracy and liability differ from the legal wellness positioning, how do users interpret consumer-wellness alerts as medical diagnoses, and what happens at the limit case when the device misses a significant cardiac event shortly after a false alert created alert fatigue (disentangling device failure from user inattention in liability scenarios)?" Question B (diagnostic contamination & Shifting-the-Burden): merge DA Q9 + DA Q11 + ST Q10 — "What prevents users and physicians from inappropriately relying on the wellness device as clinical-grade diagnostic — including the marketing language, UI design, and expectation-setting that prevent clinical-grade interpretation, the alert framing that avoids creating the Shifting-the-Burden pattern where users rely on alerts rather than developing body awareness or clinical relationships, and the designed middle ground between over-disclaiming (users ignore) and under-disclaiming (clinicians place undue weight)?"

## Convergence Group 4: Wellness-to-clinical migration, FDA pathway, technical debt & decision tree

**Theme:** The forward-looking architectural question — how today's consumer wellness design either enables or blocks future FDA 510(k) clearance, whether 510(k) is even the right pathway, FDA contingency if pathway proves infeasible, and the regulatory strategy decision tree (wellness-first vs. FDA-from-day-one vs. alternative pathways).
**Cluster:** C3 (Regulatory Pathway, Wellness-Clinical Boundary & Liability)
**Questions:**
- [Analyst Q9] Consumer wellness to clinical device migration pathway — initial consumer architecture designed for smooth 510(k) transition; technical debt vs. regulatory acceleration.
- [Analyst Q10] Regulatory strategy decision tree — FDA clearance from day one vs. launching as wellness first; opportunity costs vs. competitive advantage.
- [Devil's Advocate Q12] FDA pathway dependency — contingency if 510(k) proves infeasible; how much technical architecture would need rework.
- [Questioner Q7] Why assume FDA 510(k) is the right regulatory path — alternatives: partnering with established medical device companies, De Novo classification, staying in wellness with clinical research partnerships.
- [Systems Thinker Q6] Regulatory strategy path dependency — wellness-launch creates user expectations / data practices in unregulated space; Fixes-that-Fail where retrofit delays fail; regulatory optionality design.
**Merge recommendation:** **Merged.** "How should the architecture, data pipeline, validation methodology, and documentation be designed today to enable regulatory optionality — a smooth FDA 510(k) transition treating the wellness version as a 'clinical device in waiting' rather than assuming future migration is a simple certification step — while accounting for the regulatory strategy decision tree (FDA-from-day-one vs. wellness-first vs. alternatives like De Novo, medical-device partnerships, clinical research partnerships), the Fixes-that-Fail pattern where consumer shortcuts create technical debt blocking regulatory approval, and the contingency plan if 510(k) proves infeasible due to predicate changes or new guidance?"

## Convergence Group 5: Clinical evidence, validation & feedback loops

**Theme:** What clinical validation data is needed (dataset size, composition, feasibility against runway), clinical evidence phase-transitions (analytical validation → clinical validation studies), clinical validation population self-selection bias, and how clinical confirmation from users' physicians can flow back into on-device learning without violating privacy.
**Cluster:** C3 (Regulatory) with tie to C8 (Learning)
**Questions:**
- [Analyst Q11] Clinical evidence requirements analysis — evidence generation for consumer wellness and future 510(k) submission; analytical-to-clinical validation transition; resource allocation impact.
- [Systems Thinker Q9] Clinical validation data self-selection bias — users most motivated to participate in studies are symptomatic or high-anxiety; Fixes-that-Fail where study-optimized performance differs in the wild.
**Merge recommendation:** **Preserve all distinct.** These are genuinely different questions — Analyst Q11 is about the up-front evidence-generation requirements and resource allocation phasing; ST Q9 is about a specific self-selection pathology in validation-study population composition. Merging would conflate the evidence-generation question with the study-population-bias question. Preserve both as distinct outputs, with attribution to their distinct framings. (Note: ST Q2 from low-effort test — clinical validation feedback loop — is NOT present in medium test data, so the CG5 pair is smaller here than at low.)

## Convergence Group 6: Power budget, sensor-fusion selection, ML pipeline allocation & NPU utilization

**Theme:** How to allocate the 7-day battery budget across the ML pipeline stages, how sensor-fusion algorithm choice (early/intermediate/late, or hybrid with attention gating) interacts with power and accuracy, NPU feature utilization (INT8, sparse compute, zero-point quantization), and whether fixed sensor allocation is right or whether dynamic context-based activation should drive sensor selection.
**Cluster:** C2 (Power, Battery & Hardware-Software Co-Design) with tie to C1 (Model Quality)
**Questions:**
- [Analyst Q2] Sensor fusion strategy for multi-modal anomaly detection — early fusion vs. late fusion; computational cost of additional sensor inputs vs. marginal improvement in detection sensitivity.
- [Analyst Q3] Power budget allocation methodology — 7-day target across sensing, inference, display, communication; max inference energy budget; sensitivity analysis on subsystem tradeoffs.
- [Questioner Q10] Why assume fixed sensor allocation is right — dynamic activation by context (sleep vs. exercise vs. rest) to optimize detection quality and power.
- [Technical Expert Q2] Neural processing unit utilization — NPU features (INT8, sparse compute, zero-point quantization) driving model architecture; ML pipeline maximizing NPU utilization with fallback paths.
- [Technical Expert Q4] Multi-modal sensor fusion architecture — asynchronous sensor inputs; early/late/hybrid-with-attention-gating fusion; causality for real-time alerts; power vs. accuracy.
- [Technical Expert Q7] Battery budget decomposition — sub-5mW average power draw across sensing subsystems, compute, storage, communication; technical leverage points.
**Merge recommendation:** **Merged into 2 questions.** Question A (budget + NPU): merge Anal Q3 + TE Q2 + TE Q7 — "How should the 7-day power budget be allocated across ML pipeline stages (sampling, preprocessing, inference, post-processing), sensing subsystems (PPG driver, accelerometer, mic, BLE), compute (NPU vs. MCU), storage, and communication (BLE advertising vs. connection events), including what NPU features (INT8 acceleration, sparse compute, zero-point quantization) drive model architecture decisions and what sensitivity analysis reveals the highest-leverage technical tradeoffs?" Question B (fusion + context): merge Anal Q2 + Quest Q10 + TE Q4 — "How should sensor fusion architecture be selected across asynchronous inputs (PPG at 50Hz, accel at 25Hz, temp at 1Hz, breathing at 100Hz bursts) between early fusion (raw data), late fusion (per-sensor feature extraction), and hybrid-with-attention-gating approaches — balancing power vs. accuracy and causality for real-time alerts, and whether sensor allocation should be fixed or dynamically activated by detected context (sleep vs. exercise vs. rest) to jointly optimize detection sensitivity and power consumption?"

## Convergence Group 7: Battery lifecycle — charging disruption, degradation, power cliff & cascade

**Theme:** The non-steady-state battery problem — charging-pattern data-continuity disruption, 2-3 year capacity degradation, the anomaly-detection power cliff (high-frequency false-positive state draining battery within hours), and the battery-degraded capability drift (sudden vs. graceful degradation of sensing/processing).
**Cluster:** C2 (Power, Battery & Hardware-Software Co-Design)
**Questions:**
- [Devil's Advocate Q5] Anomaly detection power cliff — high-frequency false-positive state continuously triggering expensive inference, draining battery within hours.
- [Devil's Advocate Q6] Charging behavior disruption — charging pattern impact on data continuity; preventing charging from becoming a confounding variable.
- [Devil's Advocate Q7] Battery degradation effects — adaptation as capacity degrades to 70% over 2-3 years; power-budget viability.
- [Systems Thinker Q8] Battery-degraded capability drift — 15-25% capacity degradation forcing sensing/processing throttling; graceful degradation vs. sudden capability loss.
**Merge recommendation:** **Merged.** "How does the system manage the full battery lifecycle — weekly charging disruption to data continuity (preventing charging from becoming a confounding variable in anomaly detection), 2-3 year degradation to 70% capacity (power budget viability over the device's lifetime), the anomaly-detection power cliff where high-frequency false-positive states drain the battery within hours rather than days, and the battery-degraded capability drift where capacity loss eventually forces throttling of sensing or processing — with design choices ensuring graceful degradation rather than sudden capability loss, ideally with transparent user-controlled modes rather than invisible automatic degradation?"

## Convergence Group 8: Model updates — firmware, OTA, federated learning & user adaptation

**Theme:** How the ML model evolves over time — on-device learning vs. federated learning vs. periodic firmware updates, OTA update mechanics under medical-device constraints, user-adaptation to updated alert behavior, and firmware-update synchronization challenges creating uneven deployment across the user base.
**Cluster:** C8 (Team, Learning Loops & Strengths-Based Foundations)
**Questions:**
- [Analyst Q6] On-device learning strategy evaluation — on-device incremental learning, federated learning, periodic firmware updates; decision matrix for regulatory, UX, technical complexity, maintenance burden.
- [Questioner Q11] What if the ML model needs to evolve faster than firmware updates allow — OTA updates within medical-device constraints; federated learning architectures.
- [Systems Thinker Q7] Model update sync-asynchrony — firmware updates require user action (charging, connecting, approving) creating uneven deployment; multiple model versions in the wild; telemetry maintaining clear signal.
**Merge recommendation:** **Merged.** "How should the ML model update architecture balance on-device incremental learning, federated learning, and periodic firmware updates — including the cost-benefit analysis across regulatory implications, user-experience disruption, technical complexity, and ongoing maintenance burden; the constraint that the ML model may need to evolve faster than firmware updates allow within medical-device regulatory architecture; and the sync-asynchrony problem where user-action-gated firmware updates create uneven deployment with multiple model versions in the wild making detection-quality changes hard to attribute, plus the telemetry, phased rollout, and model-versioning infrastructure needed to maintain clear signal about what's working?"

## Convergence Group 9: Privacy architecture — user-segment conceptions, trust-building & transparency

**Theme:** What privacy actually means to different user segments, the transparency mechanisms that build genuine confidence, and the reframe of privacy as user experience rather than compliance checklist.
**Cluster:** C4 (Privacy Architecture, Trust & Data Handling)
**Questions:**
- [Questioner Q1] What does "privacy" actually mean to different user segments — 45-year-old with family cardiac history vs. tech-savvy early adopter; data architecture implications.
- [Questioner Q2] Why assume users trust data stays on-device — transparency mechanisms, visual indicators, audit trails, third-party verification.
- [Appreciative Inquirer Q2] When privacy creates trust and openness — making safety palpable; depth of trust from day one.
- [Appreciative Inquirer Q8] Privacy architecture as user experience, not compliance — designing privacy viscerally felt through interface, communication, transparency.
**Merge recommendation:** **Merged.** "What does 'privacy' actually mean to different user segments (45-year-old with family cardiac history vs. tech-savvy early adopter) — and what specific mechanisms make the on-device privacy promise viscerally felt rather than a compliance checklist (visual indicators, audit trails, third-party verification, interface/communication design, transparency patterns borrowed from therapeutic and journal-keeping contexts) so that users can trust the data-stays-on-device promise from day one rather than requiring abstract belief?"

## Convergence Group 10: Aggregated data, sync architecture & companion app security surface

**Theme:** The secondary privacy risk — aggregated summaries and processed alerts creating extractable patterns, companion-app reverse-engineering of sensitive patterns from timing metadata, the broader threat-model of sync protocol security, and the design principles governing the privacy-preserving sync protocol.
**Cluster:** C4 (Privacy Architecture, Trust & Data Handling)
**Questions:**
- [Analyst Q8] Companion app data sync architecture — privacy-preserving sync protocol design; tradeoff between clinically-meaningful insights and minimizing re-identification risk from aggregated patterns.
- [Questioner Q4] Unintended privacy consequences from "aggregated summaries" — patterns extractable from summary data users wouldn't anticipate.
- [Devil's Advocate Q10] Companion app security surface — malicious app reverse-engineering sensitive health patterns from timing metadata, alert frequency, aggregated statistics; threat modeling on sync protocol.
**Merge recommendation:** **Merged.** "Given that only 'processed alerts and aggregated summaries' sync to the companion app, what principles should govern the design of the privacy-preserving sync protocol — balancing the provision of clinically meaningful insights to users against minimizing re-identification risk from aggregated patterns users wouldn't anticipate, with explicit threat modeling against malicious-app reverse-engineering of sensitive health patterns from timing metadata, alert frequency, and aggregated statistics across the sync protocol surface?"

## Convergence Group 11: Sensor fusion edge cases, failure modes, signal quality & graceful degradation

**Theme:** What happens when multi-sensor fusion fails — motion artifacts, skin contact issues, partial sensor failure (PPG noisy but not null, temperature stuck), model drift, and how the system detects and compensates; also signal quality validation gating inference, fault tolerance, and continuous-sensing edge cases (dislodgement, firmware mid-update, thermal throttling).
**Cluster:** C1 (ML Model Quality, Architecture & Validation)
**Questions:**
- [Devil's Advocate Q1] Model drift detection — sensor drift, firmware updates, population shift; trigger notification/updates before false negatives accumulate.
- [Devil's Advocate Q2] Sensor failure modes — partial failure (PPG noisy but not null, temperature stuck); detection/compensation without compromising safety-critical alerts.
- [Questioner Q12] Edge cases breaking sensor fusion — poor circulation, skin pigmentation affecting PPG, tremors affecting motion sensing; graceful failure.
- [Systems Thinker Q11] Sensor fusion interdependence fragility — compensating models may over-weight remaining sensors producing false confidence; graceful-vs-catastrophic failure design.
- [Technical Expert Q5] Signal quality validation — real-time signal quality assessment (motion artifact, PPG perfusion, sensor fault) gating inference inputs; power-budget impact.
- [Technical Expert Q6] Edge cases in continuous sensing — sensor dislodgement, battery depletion, firmware mid-update states, thermal throttling; graceful degradation maintaining safety without excessive false alerts.
- [Technical Expert Q9] Fault tolerance and recovery — watchdog recovery from NPU hangs, CRC validation of model weights, sensor drift detection, safe mode for statistically impossible outputs.
**Merge recommendation:** **Merged into 2 questions.** Question A (failure detection and graceful degradation): merge DA Q1 + DA Q2 + Quest Q12 + ST Q11 + TE Q6 — "How does the system systematically identify, categorize, and gracefully degrade across edge cases where multi-sensor fusion fails — motion artifacts, skin contact issues, partial sensor failure (PPG noisy-but-not-null, temperature stuck), model drift from sensor drift or firmware updates or population shift, physiological edge cases (poor circulation, skin pigmentation affecting PPG, tremors affecting motion), sensor dislodgement, battery depletion during sensing, firmware mid-update states, and thermal throttling — while avoiding the Sensor Fusion Interdependence Fragility pattern where compensating models silently over-weight remaining sensors producing false confidence until the pipeline fails catastrophically, and triggering user notification or automatic updates before false negatives accumulate?" Question B (signal quality and fault tolerance infrastructure): merge TE Q5 + TE Q9 — "What technical infrastructure ensures detection reliability over multi-year device lifetimes — including real-time signal quality validation (motion artifact detection, PPG perfusion validation, sensor fault detection) that gates inference inputs to prevent false positives from corrupted data, watchdog recovery from NPU hangs, CRC validation of model weights in flash, and safe-mode behavior when ML inference produces statistically impossible outputs — and how does this quality-and-fault-tolerance infrastructure impact the power budget and overall system robustness?"

## Convergence Group 12: Anxiety, alert delivery, context-aware notification & user-verification

**Theme:** The emotional-safety design of alerts — anxiety induction vs. reassurance, life-altering notification delivery considering user context (driving, sleeping, meeting, professional settings), the "no-false-alarm" experience where the device earns trust, user-alert-verification dynamics (power dynamics when users can't verify or challenge alerts), and context-aware/respectful alert timing.
**Cluster:** C5 (User Experience, Alerts & Emotional Safety)
**Questions:**
- [Audience Advocate Q1] Users' perception/response to alerts from a device they don't fully understand — anxiety, confusion, decision paralysis; privacy-vs-transparency tension affecting trust.
- [Audience Advocate Q2] Users discovering mistakes without raw-data access — false positive during important moments; maintaining agency and trust when device gets it wrong.
- [Audience Advocate Q9] Power dynamics when users can't verify or challenge alerts — bodily autonomy; relationship with one's own health signals.
- [Audience Advocate Q11] False positives in social/professional contexts — arrhythmia alert during business meeting, first date, sleeping with partner; emotional/social friction when alerts interrupt.
- [Appreciative Inquirer Q5] No-false-alarm experience — alert gets it right, intervention matters; earning trust so users listen when device speaks.
**Merge recommendation:** **Merged into 2 questions.** Question A (alert delivery and verification): merge AA Q1 + AA Q2 + AA Q9 — "How do users perceive and respond to health alerts from a device they don't fully understand — the anxiety, confusion, and decision paralysis when they can't see what data triggered the alert or why the ML model flagged it, the erosion of agency when they can't access raw data to verify or challenge an alert they believe is wrong, the power dynamics of being told 'your heart rhythm was abnormal last night' without access to underlying data, and how the balance between privacy (data stays on device) and transparency (users understanding their own health data) shapes trust and bodily autonomy?" Question B (context-aware delivery + trust through accuracy): merge AA Q11 + AI Q5 — "How does the alert system design for social and professional context (business meetings, first dates, sleeping with partners, public settings) where alerts interrupt moments users can't or don't want to address — respecting user dignity and agency — while also earning the trust through accuracy so that when a false-positive-free alert does arrive, users listen and the intervention genuinely matters?"

## Convergence Group 13: Continuous-monitoring assumption, dormancy, opt-in alerts & anthropomorphism

**Theme:** The broad reframe questions — why assume users want continuous monitoring at all, what dormancy/monitoring-vacation modes would look like, whether opt-in "check your status when you choose" paradigm trades continuous protection for reduced anxiety, and the user-anthropomorphism/overtrust risk where users treat the device as infallible medical authority.
**Cluster:** C5 (User Experience, Alerts & Emotional Safety)
**Questions:**
- [Questioner Q13] Why assume users want continuous health monitoring at all — dormancy modes, monitoring vacations; periodic disengagement improving long-term adherence.
- [Questioner Q14] Opt-in rather than push-based alerts — "check health when you choose" paradigm reducing anxiety vs. defeating continuous monitoring purpose.
- [Questioner Q15] How might users anthropomorphize or overtrust the device — treating wearable as infallible medical advice; design elements mitigating misconception.
**Merge recommendation:** **Preserve all distinct.** Three meaningfully different framings: (a) Q13 challenges the continuous-monitoring assumption itself (dormancy as adherence strategy); (b) Q14 explores the push-vs-pull paradigm shift (opt-in alerts); (c) Q15 addresses device-as-infallible-authority risk (anthropomorphism/overtrust). Merging would strip each distinct framing. Preserve Q13 and Q14 as a merged pair (both about user-initiated control: "Why assume users want continuous monitoring vs. dormancy/opt-in paradigms — and would periodic disengagement or 'check-when-you-choose' paradigms improve adherence while still providing value?") and keep Q15 distinct as the overtrust/anthropomorphism question.

## Convergence Group 14: Business model, unit economics, runway & resource allocation

**Theme:** The commercial-sustainability core at medium effort — BOM optimization and unit economics, runway allocation across technical milestones, per-unit cost of regulatory compliance, and engineering team resource allocation between model accuracy and efficiency. This group is larger at medium than at low because Analyst's 5 new questions (Q12-Q15) all land in C7.
**Cluster:** C7 (Business Model, Unit Economics & Resource Allocation)
**Questions:**
- [Analyst Q12] Unit economics and BOM optimization — BOM allocation across MCU, NPU, sensors, battery, connectivity; component-cost sensitivity on gross margins; volume-scale tradeoff shifts.
- [Analyst Q13] Runway allocation across technical milestones — 18 months across firmware, ML, hardware, clinical evidence; gate-dependent milestones; contingency for regulatory delays.
- [Analyst Q14] Per-unit cost of regulatory compliance — HIPAA infrastructure, FDA preparation, ongoing maintenance; fixed vs. variable; volume at which materially significant.
- [Analyst Q15] Resource allocation between model accuracy and efficiency — 12-person engineering team ML-effort split; marginal ROI per engineer per dimension.
**Merge recommendation:** **Merged.** "How should the startup allocate its finite resources to build a viable hardware business — including BOM optimization across the microcontroller, NPU, sensors, battery, and connectivity components with sensitivity analysis on component costs driving gross margins at volume, runway allocation across the 18-month Series A runway covering firmware, ML model development, hardware iterations, and clinical evidence generation with gate-dependent milestones and contingency for regulatory delays, per-unit regulatory compliance cost breakdown across HIPAA infrastructure / FDA preparation / ongoing maintenance as fixed vs. variable costs, and the 12-person engineering team's ML-effort split between improving detection accuracy vs. optimizing inference efficiency with marginal ROI guiding the rebalance over time?"

## Convergence Group 15: Health anxiety reinforcement & observer-effect behavioral adaptation

**Theme:** The compounding feedback loops where monitoring changes user experience — the health-anxiety reinforcement cycle (more monitoring → more awareness → more interpretation of normal variation as problems → more anxiety) and the behavioral-adaptation shadow system (users adapt behavior in response to being monitored, changing what's being measured).
**Cluster:** C5 (User Experience, Alerts & Emotional Safety) with tie to C1 (Model Quality — observer effect on training data)
**Questions:**
- [Audience Advocate Q12] Body image / health anxiety over months of wear — hyper-awareness of physiological signals, every skipped beat noticed; long-term psychological effects especially for pre-existing health anxiety.
- [Systems Thinker Q2] Health anxiety reinforcement cycle — compounding pattern: more monitoring → more awareness of normal variation → interpretation as problems → more anxiety; design elements breaking the cycle.
- [Systems Thinker Q3] Behavioral adaptation shadow system — observer effect embedded in product loop; users change behavior (sleep, calmness) when tracked; measurement changes the measured; implications for ML training data and anomaly detection.
**Merge recommendation:** **Merged.** "How does the design account for compounding feedback loops where monitoring changes user experience — including the health anxiety reinforcement cycle where more monitoring produces more awareness of normal physiological variation, leading to interpretation as problems and more hyper-vigilance (particularly for users with pre-existing health anxiety over months of continuous wear), the behavioral adaptation shadow system where users consciously or unconsciously change their behavior when tracked (sleeping differently, deliberately calming themselves when they feel the device recording), and the resulting 'measurement changes the measured' dynamic affecting ML training data quality and the differential adaptation patterns between health-conscious early adopters and later mainstream users?"

## Convergence Group 16: Wellness-to-clinical transition as user journey & AI boundary reframe

**Theme:** The experiential/interpretive reframes of the wellness-clinical boundary — users who start with wellness then develop real concerns and try to use data in clinical settings, and the appreciative reframe of regulatory pathway as enabler and of the wellness-clinical continuum as bidirectional learning.
**Cluster:** C3 (Regulatory Pathway, Wellness-Clinical Boundary & Liability)
**Questions:**
- [Audience Advocate Q13] Users transitioning from "wellness device" to "potential clinical tool" — user who starts with wellness, experiences real symptoms, tries to use data to advocate in healthcare system; gaps between device output and what clinicians need.
- [Appreciative Inquirer Q6] Regulatory success as enabler not obstacle — FDA 510(k) as collaboration making the device demonstrably more valuable; clinical partnerships enhancing consumer delivery.
- [Appreciative Inquirer Q10] Wellness to clinical — learning across the boundary bidirectionally; wellness learning from clinical, clinical enviousness of wellness UX.
**Merge recommendation:** **Preserve all distinct.** Three genuinely different framings of the wellness-clinical boundary: (a) AA Q13 is the lived user journey (wellness → real symptoms → clinical advocacy, and the translation gap); (b) AI Q6 is the appreciative reframe of FDA as enabler and collaboration opportunity; (c) AI Q10 is the appreciative reframe of the continuum as bidirectional learning. Merging would strip each distinctive contribution. Preserve all three as distinct outputs.

## Convergence Group 17: Privacy needs beyond HIPAA & user-data agency

**Theme:** The user-agency dimension of privacy beyond legal compliance — what users want to control about their own data, the tension between sharing insights with clinicians and protecting privacy, household/employer/repair-context privacy concerns, and the frustration when users can't export their own data.
**Cluster:** C4 (Privacy Architecture, Trust & Data Handling)
**Questions:**
- [Audience Advocate Q7] Unspoken privacy needs beyond HIPAA — household visibility of alerts, device repair/replacement handling, employer inference from usage patterns; unarticulated privacy needs beyond legal compliance.
- [Audience Advocate Q8] Tension between sharing health insights and protecting privacy — users wanting to share anomalous events with doctors but privacy architecture limiting exportability; user agency over their own health information.
**Merge recommendation:** **Merged.** "What unarticulated privacy needs and data-agency concerns exist beyond HIPAA compliance — including users' concerns about who in their household can see alerts, what happens during device repair or replacement, whether employers could infer health status from usage patterns, and the tension users experience when they want to share anomalous events with their doctors but the privacy-preserving design limits what can leave the device (how they can access or export their own data in formats clinicians would find useful), and how the design balances privacy with user agency over their own health information?"

## Convergence Group 18: Companion app as compute partner & app-device bidirectional influence

**Theme:** The companion-app architecture — bidirectional influence between app-provided context (symptom logging, medication tracking, activity notes) and device-detection patterns, and the broader system-level feedback loops between the two devices that can reinforce or blind detection.
**Cluster:** C8 (Team, Learning Loops & Strengths-Based Foundations)
**Questions:**
- [Systems Thinker Q12] Companion app bidirectional influence loop — app receives summaries/alerts; users input context (symptom logging, medication, activity); app-provided context improves device detection, but device alerts shape what users choose to log; system never learns to predict events users didn't already notice.
**Merge recommendation:** **Preserve distinct (singleton).** Only ST Q12 hits this territory directly in the Synthesize group. Connector Q6 (companion app as compute partner) is an Append bridge to the same territory but handled separately. ST Q12 stands alone as the bidirectional-influence learning-loop question.

---

## Unique Questions (Non-convergent — survive synthesis as distinct)

**Count:** 27 of 89 (30%)

These are Synthesize-group questions with no strong cross-persona counterpart. Most should survive synthesis as standalone questions; a small number may be cut at the synthesizer's discretion (flagged in `wearable-device_medium_target.md`).

| # | Persona | Question (abridged) | Cluster |
|---|---|---|---|
| 1 | Analyst | Q1 — Model architecture decision framework — CNN vs. transformer for PPG; complexity/inference-frequency/quantization tradeoff | C1 |
| 2 | Analyst | Q4 — Inference latency vs. accuracy tradeoff curve — latency window for cardiac arrhythmia detection | C1 |
| 3 | Analyst | Q5 — HIPAA-compliant data segmentation framework — raw vs. processed boundaries at each pipeline stage | C4 |
| 4 | Appreciative Inquirer | Q1 — Peak moments in personal health awareness | C5 / C8 |
| 5 | Appreciative Inquirer | Q3 — Technologies that become invisible partners | C5 / C8 |
| 6 | Appreciative Inquirer | Q4 — Three years later: what users celebrate | C5 / C8 |
| 7 | Appreciative Inquirer | Q7 — 12-engineer team's cross-functional collaboration | C8 |
| 8 | Appreciative Inquirer | Q9 — Battery life as invitation not constraint | C2 |
| 9 | Appreciative Inquirer | Q11 — Smallest meaningful experiment | C8 |
| 10 | Appreciative Inquirer | Q12 — Existing assets we haven't fully leveraged | C8 |
| 11 | Audience Advocate | Q5 — Users with disabilities (tremors, dexterity, visual, sensory) | C6 |
| 12 | Audience Advocate | Q6 — 7-day battery life vs. charging-routine mismatch | C6 |
| 13 | Audience Advocate | Q10 — Curiosity-to-anxiety-or-complacency emotional journey | C5 |
| 14 | Questioner | Q3 — Cardiologist requests access to raw data; two-tier privacy model | C4 |
| 15 | Questioner | Q9 — Clinical accuracy vs. battery life (3-day medical vs. 7-day consumer) | C2 / C3 |
| 16 | Systems Thinker | Q4 — Power-consumption detection spiral — model complexity vs. battery | C2 / C1 |
| 17 | Systems Thinker | Q5 — Privacy-performance delayed feedback — architectural lock-in | C4 |
| 18 | Technical Expert | Q1 — Model quantization + asymmetric architectures (arrhythmia vs. sleep apnea) | C1 |
| 19 | Technical Expert | Q3 — On-device personalization within 128KB SRAM constraints | C1 |
| 20 | Technical Expert | Q8 — Deterministic inference latency for cardiac event detection <5s | C2 |
| 21 | Technical Expert | Q10 — Privacy-preserving telemetry architecture (differential noise injection) | C4 |
| 22 | Analyst | Q11 — Clinical evidence requirements (preserved distinct per CG5) | C3 |
| 23 | Systems Thinker | Q9 — Clinical validation self-selection bias (preserved distinct per CG5) | C3 / C8 |
| 24 | Questioner | Q15 — Anthropomorphism / overtrust (preserved distinct per CG13) | C5 |
| 25 | Audience Advocate | Q13 — Wellness-to-clinical user journey (preserved per CG16) | C3 |
| 26 | Appreciative Inquirer | Q6 — Regulatory success as enabler (preserved per CG16) | C3 |
| 27 | Appreciative Inquirer | Q10 — Wellness-clinical bidirectional learning (preserved per CG16) | C3 |

**Note on double-counted questions:** CG5, CG13, CG16 preserve-all-distinct means some questions appear in both a convergence group and the unique-survive list. CG5's Analyst Q11 and ST Q9 are in both; CG13's Q15 is in both; CG16's AA Q13, AI Q6, AI Q10 are in both. Net distinct question count (merged questions count once per merge): 27 unique-surviving + 18 convergence-group outputs (12 merged + 6 preserved-distinct sub-outputs across CG3/CG5/CG6/CG8/CG11/CG13/CG16/CG18) = ~45 source contributions surviving, which after compaction lands at 37 synthesized outputs. Exact target count in `wearable-device_medium_target.md`.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (wearable-device / medium cell)

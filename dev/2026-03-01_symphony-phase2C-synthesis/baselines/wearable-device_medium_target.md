# wearable-device — medium — Synthesis Target

**Input count (Synthesize group):** 89
**Expected output count (synthesized):** 37 (range 33-41, target 37)
**Compaction ratio:** 89 / 37 = 2.41 (range 2.2–2.7, target 2.41)
**Cluster count:** 8 (range 7–9, target 8, matches B1)
**Append count (separate):** 20 (4 personas × 5, see `wearable-device_medium_append-target.md`)
**Final total output:** 37 + 20 = 57 (range 53–61)

**Scoring convention:** Target = point estimate for headline scoring. Range defines the pass/fail band. Outside-range results are scored with severity proportional to distance from the nearest band edge.

---

## Target Output Structure

The synthesized output organizes into the 8 clusters from B1. Per-cluster expected counts derive from cluster size, convergence merges, and unique-question survival.

| Cluster | Source Qs | Expected Out | Compaction |
|---|---|---|---|
| C1 — ML Model Quality, Architecture & Validation | 18 | 7 | 2.57 |
| C2 — Power, Battery & Hardware-Software Co-Design | 11 | 4 | 2.75 |
| C3 — Regulatory Pathway, Wellness-Clinical Boundary & Liability | 14 | 7 | 2.00 |
| C4 — Privacy Architecture, Trust & Data Handling | 11 | 5 | 2.20 |
| C5 — User Experience, Alerts & Emotional Safety | 14 | 5 | 2.80 |
| C6 — Accessibility, Bias & Physiological Diversity | 4 | 3 | 1.33 |
| C7 — Business Model, Unit Economics & Resource Allocation | 6 | 2 | 3.00 |
| C8 — Team, Learning Loops & Strengths-Based Foundations | 11 | 4 | 2.75 |
| **Totals** | 89 | **37** | **2.41** |

(C1-C8 source counts use B1 cluster assignments. Totals reconcile exactly — every Synthesize question is in exactly one cluster.)

---

### Cluster C1 — ML Model Quality, Architecture & Validation

**Must include (5):**
1. **[Merged from CG11 Q A: DA Q1, DA Q2, Quest Q12, ST Q11, TE Q6]** Edge case detection, sensor failure modes, and graceful degradation — how the system systematically identifies and degrades across multi-sensor fusion failures (motion artifacts during exercise, skin contact issues, partial PPG/temperature failures, model/sensor drift from firmware updates or population shift, physiological edge cases like poor circulation / tremors / skin pigmentation, sensor dislodgement during sleep, battery depletion causing intermittent sensing, firmware mid-update states, and thermal throttling) while avoiding the Sensor Fusion Interdependence Fragility pattern where compensating models silently over-weight remaining sensors producing false confidence, and triggering user notification or automatic model updates before false negatives accumulate.
2. **[Merged from CG11 Q B: TE Q5, TE Q9]** Signal-quality validation and fault-tolerance infrastructure — real-time signal quality validation (motion artifact detection, PPG perfusion validation, sensor fault detection) that gates inference inputs to prevent false positives from corrupted data, combined with fault-tolerance mechanisms ensuring system reliability over multi-year device lifetimes: watchdog recovery from NPU hangs, CRC validation of model weights in flash, sensor drift detection requiring recalibration, and safe-mode behavior when ML inference produces statistically impossible outputs — all within the power budget.
3. **[Anal Q1 unique]** Model architecture decision framework — CNNs for PPG signal processing vs. transformer-based approaches for temporal pattern recognition; systematic evaluation of model complexity, inference frequency, and quantization approach for optimal detection-accuracy-vs-power-consumption tradeoff across arrhythmia and sleep apnea.
4. **[Anal Q4 unique]** Inference latency vs. accuracy tradeoff curve — acceptable inference latency window for real-time cardiac arrhythmia detection; how this constraint shapes model architecture choices; latency point beyond which further optimization begins to meaningfully degrade detection accuracy.
5. **[TE Q1 unique]** Model quantization and asymmetric architectures — how to quantitatively trade off model complexity (parameters, layers) against detection accuracy for arrhythmia vs. sleep apnea, including whether asymmetric architectures should have sleep analysis (lower urgency) use a simpler model than cardiac event detection.

**Should include (2):**
6. **[TE Q3 unique]** On-device personalization within SRAM constraints — technical approaches (online learning with tiny updates, periodic recalibration using stored history, user-supplied ground truth labels) for adapting anomaly detection thresholds to individual baselines within 128KB SRAM constraints, and their privacy implications.
7. **[ST Q3 unique]** Behavioral adaptation shadow system — observer effect on measurement where users change behavior when monitored (sleeping differently knowing they're tracked for apnea, consciously calming themselves when they feel the device recording); how this "measurement changes the measured" dynamic affects ML training data and anomaly detection, with adaptation patterns differing between health-conscious early adopters and later mainstream users.

---

### Cluster C2 — Power, Battery & Hardware-Software Co-Design

**Must include (3):**
1. **[Merged from CG6 Q A: Anal Q3, TE Q2, TE Q7]** Power budget allocation across pipeline, subsystems, and NPU — 7-day battery budget across ML pipeline stages (sampling, preprocessing, inference, post-processing), sensing subsystems (PPG driver, accelerometer, mic, BLE), compute (NPU vs. MCU), storage (flash writes for event logs), and communication (BLE advertising vs. connection events); which NPU features (INT8 acceleration, sparse compute, zero-point quantization) drive architecture decisions; sensitivity analysis revealing highest-leverage technical tradeoffs at sub-5mW average power draw.
2. **[Merged from CG6 Q B: Anal Q2, Quest Q10, TE Q4]** Sensor fusion architecture and context-based activation — early fusion vs. late fusion vs. hybrid-with-attention-gating across asynchronous inputs (PPG 50Hz, accel 25Hz, temp 1Hz, breathing 100Hz bursts); balancing power vs. accuracy and causality for real-time alerts; whether sensor allocation should be fixed or dynamically activated by detected context (sleep vs. exercise vs. rest).
3. **[Merged from CG7: DA Q5, DA Q6, DA Q7, ST Q8]** Battery lifecycle management — weekly charging disruption to data continuity (preventing charging from becoming a confounding variable), 2-3 year degradation to 70% capacity (power budget viability), the anomaly-detection power cliff where high-frequency false-positive states drain the battery within hours rather than days, and the battery-degraded capability drift (15-25% loss over device lifetime forcing sensing/processing throttling) requiring graceful degradation rather than sudden capability loss, ideally with transparent user-controlled modes.

**Should include (1):**
4. **[TE Q8 unique]** Deterministic inference latency — cardiac event detection <5s response; technical constraints this places on model architecture, sensor buffer sizes, and interrupt priorities; worst-case latency guarantees during background operations (firmware OTA, companion app sync, logged data compression).

**Optional:**
- **[AI Q9]** Battery life as invitation not constraint — 7-day battery as peace-of-mind design; device longevity changing user behavior. *Strengths-based framing; cuttable.*
- **[Quest Q9]** Clinical accuracy vs. battery life (3-day medical vs. 7-day consumer) — would higher accuracy + shorter battery be more valuable? *Semantic overlap with CG6 fusion+power merge; cuttable.*
- **[ST Q4]** Power-consumption detection spiral — sophisticated ML models catch more anomalies but consume more power, draining battery faster, creating gaps in monitoring. *Semantic overlap with CG7 battery-lifecycle merge.*

---

### Cluster C3 — Regulatory Pathway, Wellness-Clinical Boundary & Liability

**Must include (5):**
1. **[Merged from CG3 Q A: AA Q3, DA Q8, Quest Q5, Quest Q6]** User expectations, wellness-clinical interpretation, and missed-event liability — where is the boundary between 'wellness' and 'medical' in users' minds (including different populations who may not distinguish consumer wellness from medical advice), how user expectations about device accuracy and liability differ from legal wellness positioning (including legal/ethical/experience considerations when users act on alerts as medical diagnoses), and what happens at the limit case when the device misses a significant cardiac event shortly after a false alert created alert fatigue (disentangling device failure from user inattention in liability scenarios)?
2. **[Merged from CG3 Q B: DA Q9, DA Q11, ST Q10]** Diagnostic contamination and Shifting-the-Burden in alert framing — preventing users and physicians from treating wellness outputs as clinical-grade diagnostic through marketing language, UI design, and expectation-setting, while also designing the alert framing between over-disclaiming ("consult a doctor" ignored) and under-disclaiming (clinicians place undue weight) to avoid the Shifting-the-Burden pattern where users rely on alerts rather than developing body awareness or clinical relationships, eroding long-term informed health decision-making.
3. **[Merged from CG4: Anal Q9, Anal Q10, DA Q12, Quest Q7, ST Q6]** Regulatory strategy, pathway optionality, and architectural decision tree — how the architecture, data pipeline, validation methodology, and documentation are designed today to enable regulatory optionality and smooth FDA 510(k) transition (treating wellness as 'clinical device in waiting'), including the regulatory strategy decision tree (FDA-from-day-one vs. wellness-first vs. alternatives like De Novo classification, partnerships with medical device companies, or staying in wellness with clinical research partnerships), opportunity costs of delayed market entry vs. competitive advantage of clearance, contingency if 510(k) proves infeasible due to predicate changes or new guidance, and avoiding the Fixes-that-Fail pattern where consumer shortcuts create technical debt blocking regulatory approval.
4. **[Anal Q11 unique, preserved per CG5]** Clinical evidence requirements and phase transitions — structured evidence generation for both consumer wellness positioning and future 510(k) submission; the stage at which analytical validation of model performance transitions to requiring clinical validation studies; resource allocation impact of each stage mapped against the 18-month runway.
5. **[ST Q9 unique, preserved per CG5]** Clinical validation data self-selection bias — users most motivated to participate in clinical studies are those already experiencing symptoms or with high anxiety, which doesn't represent the eventual mainstream user population; Fixes-that-Fail pattern where study-optimized performance differs in the wild; stratifying studies, weighting training data, or explicitly modeling the difference between concerned and casual users.

**Should include (2):**
6. **[AA Q13 unique, preserved per CG16]** Wellness-to-clinical user journey — user who starts with the device for general wellness, experiences real symptoms, tries to use data to advocate in the healthcare system; gaps between what the device provides and what clinicians need; translation failures when personal health data doesn't integrate with clinical settings.
7. **[AI Q6 unique, preserved per CG16]** Regulatory success as enabler not obstacle — FDA 510(k) as collaboration making the device demonstrably more valuable; clinical partnerships enhancing (not restricting) consumer delivery.

**Optional:**
- **[AI Q10]** Wellness to clinical: learning across the boundary — bidirectional; wellness learning from clinical, clinical enviousness of wellness UX. *Appreciative reframe; preserved per CG16 but cuttable at tight compaction.*

---

### Cluster C4 — Privacy Architecture, Trust & Data Handling

**Must include (3):**
1. **[Merged from CG9: Quest Q1, Quest Q2, AI Q2, AI Q8]** Privacy architecture as felt experience — what 'privacy' actually means to different user segments (45-year-old with family cardiac history vs. tech-savvy early adopter), and what mechanisms (visual indicators, audit trails, third-party verification, interface design borrowed from therapeutic/journal contexts) make the on-device privacy promise viscerally felt rather than an abstract compliance claim so users can trust the data-stays-on-device promise from day one.
2. **[Merged from CG10: Anal Q8, Quest Q4, DA Q10]** Sync protocol design and companion-app threat model — principles governing the privacy-preserving sync protocol for alerts and aggregated summaries, balancing clinically meaningful insights against minimizing re-identification risk from aggregated patterns users wouldn't anticipate, with explicit threat modeling against malicious-app reverse-engineering of sensitive health patterns from timing metadata, alert frequency, and aggregated statistics across the sync protocol surface.
3. **[Merged from CG17: AA Q7, AA Q8]** Privacy agency beyond HIPAA — unarticulated privacy needs beyond legal compliance (household visibility of alerts, device repair/replacement handling, employer inference from usage patterns) and the tension users experience when they want to share anomalous events with doctors but privacy-preserving architecture limits exportability; balancing privacy with user agency over their own health information.

**Should include (2):**
4. **[Anal Q5 unique]** HIPAA-compliant data segmentation framework — what systematic approach determines what constitutes 'raw' vs. 'processed' data at each pipeline stage; critical decision boundaries for data transformation, aggregation, or anonymization maintaining clinical utility while preserving privacy.
5. **[TE Q10 unique]** Privacy-preserving telemetry architecture — technical approaches (minimally hashed diagnostic payloads, opt-in crisis dump telemetry, differential noise injection for aggregate metrics) enabling actionable debugging of ML failures and model improvement without violating HIPAA; opt-out flows that remain technically useful.

**Optional:**
- **[Quest Q3]** Cardiologist requests raw data — two-tier privacy model; pathways for clinical integration. *Distinctive; cuttable if compaction tight.*
- **[ST Q5]** Privacy-performance delayed feedback — architectural lock-in where on-device-first commitments block future cloud features; designing for hybrid optionality. *Cross-cluster; preservable.*

---

### Cluster C5 — User Experience, Alerts & Emotional Safety

**Must include (3):**
1. **[Merged from CG1: DA Q3, Quest Q8, ST Q1, Anal Q7]** Alert fatigue, calibration protocol, and trust dynamics — acceptable false-positive threshold before users disable alerts (varying by segment: known-condition vs. prevention-focused), evidence-based adaptive-sensitivity mechanism calibrating against dismissal patterns without falling into the reinforcing-loop Alert Fatigue Calibration archetype where the model over-corrects on temporary behavior and oscillates trust, while accounting for the health-alert liability implications of each threshold choice.
2. **[Merged from CG12 Q A: AA Q1, AA Q2, AA Q9]** Alert perception, verification and bodily-autonomy dynamics — how users perceive and respond to health alerts from a device they don't fully understand (anxiety, confusion, decision paralysis), the erosion of agency when they can't access raw data to verify or challenge an alert they believe wrong, the power dynamics of being told 'your heart rhythm was abnormal' without underlying data, and how the balance between privacy (data stays on-device) and transparency (users understanding their own health data) shapes trust and bodily autonomy.
3. **[Merged from CG15: AA Q12, ST Q2, ST Q3]** Health anxiety reinforcement and hypervigilance over time — compounding feedback loop where more monitoring produces more awareness of normal physiological variation, leading to interpretation as problems and hyper-vigilance (particularly for users with pre-existing health anxiety over months of continuous wear); design elements that normalize variation, frame uncertainty appropriately, smooth/delay certain information displays, and foster a healthy body relationship rather than hypervigilance or dependency.

**Should include (2):**
4. **[Merged from CG12 Q B: AA Q11, AI Q5]** Context-aware alert delivery and trust through accuracy — alert system design for social and professional context (business meetings, first dates, sleeping with partners) where alerts interrupt moments users can't or don't want to address; respecting user dignity and agency; combined with earning trust through accuracy so that when a false-positive-free alert does arrive, users listen and the intervention genuinely matters.
5. **[Merged from CG13 pair: Quest Q13, Quest Q14]** Continuous-monitoring assumption and opt-in paradigm — why assume users want continuous monitoring at all; what dormancy modes, monitoring vacations, or 'check-when-you-choose' paradigms would look like; whether periodic disengagement improves long-term adherence while still providing value.

**Optional:**
- **[Quest Q15]** User anthropomorphism / overtrust — wearable treated as infallible medical authority; design elements reinforcing or mitigating misconception. *Preserved distinct per CG13; cuttable for compaction.*
- **[AA Q10]** Curiosity-to-anxiety-or-complacency emotional journey — initial excitement → hyper-vigilance or alert fatigue → monitoring gap anxiety → abandonment. *Semantic overlap with CG15 but distinct emotional-trajectory framing.*
- **[AI Q1]** Peak moments in personal health awareness. *Strengths-based framing; frequent drop candidate.*
- **[AI Q3]** Technologies that become invisible partners. *Strengths-based framing; frequent drop candidate.*
- **[AI Q4]** Three years later, what users celebrate. *Strengths-based framing; frequent drop candidate.*

---

### Cluster C6 — Accessibility, Bias & Physiological Diversity

**Must include (2):**
1. **[Merged from CG2: AA Q4, DA Q4]** Sensor bias and physiological diversity — PPG sensor design and ML training/validation accounting for documented optical-heart-rate biases across skin tones, wrist sizes, heart rate variability, and movement patterns; particularly for users underrepresented in training data who silently work around inaccurate readings; validation methodology confirming accuracy across diverse physiological presentations.
2. **[AA Q5 unique]** Users with disabilities — tremors, limited dexterity, visual impairments, sensory processing differences; frustrations in daily wear, charging, alert acknowledgement, or companion-app interaction; design assumptions about "ideal" users with full mobility, vision, and fine motor control.

**Should include (1):**
3. **[AA Q6 unique]** Charging-routine diversity — 7-day battery life interacting with users whose routines don't match charging patterns (frequent travel, unreliable charging-outlet access, long shifts, cognitive differences making regular charging challenging); graceful degradation patterns preserving dignity and utility when batteries run low.

---

### Cluster C7 — Business Model, Unit Economics & Resource Allocation

**Must include (1):**
1. **[Merged from CG14: Anal Q12, Anal Q13, Anal Q14, Anal Q15]** Resource allocation under hardware-business and runway constraints — BOM optimization across microcontroller, NPU, sensors, battery, and connectivity components with sensitivity analysis on component costs driving gross margins at volume; runway allocation across the 18-month Series A covering firmware, ML model development, hardware iterations, and clinical evidence generation with gate-dependent milestones and contingency for regulatory delays; per-unit regulatory compliance cost breakdown across HIPAA infrastructure, FDA preparation, and ongoing maintenance as fixed vs. variable costs; and the 12-person engineering team's ML-effort split between improving detection accuracy vs. optimizing inference efficiency with marginal ROI guiding the rebalance over time.

**Should include (1):**
2. **[DA Q9 unique — cross-cluster with C3]** Clinical data contamination — users sharing "all-clear" data with physicians creating inappropriate diagnostic reliance; device not validated as clinical-grade monitoring tool. *Note: DA Q9 is also part of CG3 Q B merge in C3. If kept in C3, C7 "should include" slot transfers to ST Q5 or AI Q10.*

**Optional (alternatives for slot 2):**
- **[ST Q5]** Privacy-performance delayed feedback — architectural lock-in around on-device-first commitments affecting future business-model optionality. *Cross-cluster C4 primary.*

---

### Cluster C8 — Team, Learning Loops & Strengths-Based Foundations

**Must include (3):**
1. **[Merged from CG8: Anal Q6, Quest Q11, ST Q7]** Model update architecture and deployment — cost-benefit analysis across on-device incremental learning, federated learning, and periodic firmware updates (regulatory implications, UX disruption, technical complexity, maintenance burden), the constraint that the ML model may need to evolve faster than firmware updates allow within medical-device regulatory architecture, and the sync-asynchrony problem where user-action-gated firmware updates create uneven deployment with multiple model versions in the wild — plus the telemetry, phased rollout, and model-versioning infrastructure needed to maintain clear signal about what's working.
2. **[ST Q12 unique, preserved per CG18]** Companion app bidirectional influence loop — app receives summaries/alerts; users input context (symptom logging, medication tracking, activity notes); app-provided context improves device detection, but device alerts shape what users choose to log, risking a feedback loop where the system never learns to predict events users didn't already notice; designing app-device data flow for useful context augmentation without reinforcing detection blind spots.
3. **[AI Q7 unique]** What the 12-engineer team already does well — cross-functional collaboration distribution (firmware, ML, hardware, mobile); what meeting structures, communication patterns, and decision rituals would make team diversity a daily superpower rather than a coordination challenge.

**Should include (1):**
4. **[AI Q11 unique]** Smallest meaningful experiment — smallest prototype or user test this month that gives genuine insight into whether the team is building something people care about; human reaction test, not technical feasibility.

**Optional:**
- **[AI Q12]** Existing assets we haven't fully leveraged — taken-for-granted strengths; amplifying natural advantages. *Cuttable under compaction pressure.*

Cluster C8 carries a high optional-list density because AI dominates it (6 of 11 cluster questions are AI). B3 sets must+should at 4 (3 must + 1 should) with AI Q12 as the preserved optional. If synthesizer cuts aggressively, AI Q12 drops first. AI Q1/Q3/Q4 (placed in C5 optional) may also drop at cluster boundary if synthesizer re-places them to C8.

---

## Questions Expected to Be Dropped (with rationale)

| # | Question | Rationale for drop |
|---|---|---|
| 1 | **Appreciative Inquirer Q1** — Peak moments in personal health awareness | Method-question with no direct operational output. AI Q4 (three-year celebration) and AI Q5 (no-false-alarm experience) carry adjacent moment-designing territory. Borderline orphan between C5 and C8 and frequently compressed in aggressive synthesis. |
| 2 | **Appreciative Inquirer Q3** — Technologies that become invisible partners | Conceptually strong but semantic overlap with AI Q4 (three-year celebration reframing) and AI Q9 (battery-as-invitation). Evocative for designers but does not surface distinct new concerns. |
| 3 | **Appreciative Inquirer Q4** — Three years later, what users celebrate | Vision-casting method-question useful for session follow-up but too abstract for a brainstorming set. AI Q7 (team already does well) and AI Q11 (smallest experiment) carry adjacent appreciative framing at more actionable registers. |
| 4 | **Questioner Q9** — Clinical accuracy vs. battery life optimization (3-day medical vs. 7-day consumer) | Strong provocative question but semantic overlap with CG6 (power budget + sensor fusion) merge; the specific 3-day-vs-7-day reframe is a single data point in the broader battery-vs-accuracy trade-off space covered by the CG6 merge. |
| 5 | **Systems Thinker Q4** — Power-consumption detection spiral | Reinforcing-loop framing but semantic overlap with CG7 battery-lifecycle merge and CG6 power-budget merge. ST Q4's loop can be absorbed into CG7 via a one-line mention of the spiral dynamic. |
| 6 | **Audience Advocate Q10** — Curiosity-to-anxiety-or-complacency emotional journey | Overlaps heavily with CG15 (health anxiety reinforcement) merge. The emotional-trajectory framing is distinct but the core concerns (hypervigilance, alert fatigue, abandonment) are all addressed in CG15's merged output. |

**Drop count target:** 6 (range 4-8). If compaction pressure rises (synthesizer produces fewer than 33 questions), the next-most-likely drops are: Quest Q3 (cardiologist access — covered in C4 optional), Quest Q15 (anthropomorphism — preserved per CG13 but cuttable), AI Q12 (existing assets — covered in C8 optional), AI Q10 (wellness-clinical learning — preserved per CG16 but cuttable), ST Q5 (privacy-performance lock-in). If compaction is loose (>41 questions), expect these optionals to survive and AI Q1/Q3/Q4 to survive in C5.

---

## Persona Representation Requirements

Defines SQ3 (persona representation). Each Synthesize-group persona must have at least the floor count of questions surviving (verbatim, merged-with-attribution, or transformed-but-traceable).

| Persona | Source Qs | Floor | Target | Rationale |
|---|---|---|---|---|
| Analyst | 15 | 9 | 12 | Dominant framework scaffolding across C1 (model architecture, latency), C2 (power budget, fusion), C3 (migration pathway, strategy tree, evidence), C4 (data segmentation, sync architecture), C7 (4 questions unique to Analyst at medium — BOM, runway, compliance cost, resource allocation). Floor preserves the analytical-engineering substrate and the medium-effort expansion into commercial sustainability (Q12-Q15). |
| Appreciative Inquirer | 12 | 5 | 7 | Strengths-based framing carries C8 disproportionately (6 of 11 cluster questions). High drop-rate (3 of 6 expected drops are AI: Q1, Q3, Q4) offset by high source volume. Floor protects AI Q2, Q5, Q7, Q8, Q11, Q12 (plus optional Q6, Q9, Q10). |
| Audience Advocate | 13 | 8 | 10 | Sole carrier of C6 (Accessibility/Bias) and dominant in C5 (Alert UX). 4 C5 questions, 3 C6 questions, 2 C4 questions, 2 C3 questions, 1 C5 journey question. Floor protects equity/access coverage across 3 clusters. |
| Devil's Advocate | 12 | 6 | 8 | Risk-discovery role; many questions absorbed into convergent merges (CG1, CG3, CG4, CG7, CG10, CG11). Floor preserves DA's distinctive risk vocabulary (power cliff, degradation, companion-app surface, boundary ambiguity, FDA dependency). |
| Questioner | 15 | 7 | 9 | Meta-question generator; ~10 of 15 Questioner questions land in convergent merges. Floor preserves Q3 (cardiologist access — unique), Q9 (accuracy-vs-battery — candidate drop), Q15 (anthropomorphism), plus merge contributions. |
| Systems Thinker | 12 | 7 | 9 | Distinctive systems-archetype vocabulary (Reinforcing Loop, Fixes that Fail, Shifting the Burden, Success-to-the-Successful, Tragedy of the Commons, Shifting Baseline, Death Spiral). Floor protects against vocabulary normalization. ST Q3 (observer effect), Q5 (delayed feedback), Q9 (study self-selection — preserved distinct per CG5), Q12 (app-device loop — preserved per CG18) carry uniques. |
| Technical Expert | 10 | 6 | 8 | Dominant engineering-vocabulary contributor at medium. 5 C1 questions (Q1, Q3, Q5, Q6, Q9), 3 C2 questions (Q2, Q7, Q8), 1 C1/C2 bridge (Q4), 1 C4 question (Q10). Floor preserves TE's distinctive engineering framings (NPU utilization, asymmetric architectures, on-device personalization under SRAM, deterministic inference latency, privacy-preserving telemetry with differential noise). |
| **Total floor** | 89 | **48** | **63** | Floor sums exceed expected output (37) because merges count toward each contributing persona — synthesized output of 37 should still represent ≥48 source-question contributions across personas. |

**Failure modes to flag:**
- Any persona below floor → synthesis is silencing a voice (SP1 fail).
- AA absent from C4 (Privacy) or C6 (Bias) → structural-equity collapse.
- AI absent from C8 (Team/Strengths) → strengths-based framing collapse.
- ST absent from C1 (Sensor Fusion Fragility / Fixes that Fail), C2 (Battery Cascade / Death Spiral), C3 (Shifting the Burden / Fixes that Fail / Regulatory Path Dependency), or C5 (Alert Fatigue Calibration / Anxiety Reinforcement) → systems-archetype vocabulary loss.
- DA absent from C1 (risk), C2 (battery-failure risk), or C3 (liability) → risk-discovery erosion.
- Questioner contributing only to merges with no unique-surviving questions → meta-question widening function collapsed.
- **TE absent from C1 (engineering-vocabulary presence) or C4 (privacy-telemetry) → Tier-3 Technical Expert value collapse.** This is a medium-specific failure mode because TE is the topic-gated Tier 3 persona — if its distinctive engineering content is normalized into Analyst voice, the Tier 3 selection provides no detectable value over a Tier-1-only roster.

---

## Dimension Balance Target

Per analysis-dimensions framework (Strategic / Tactical / Creative / Analytical / Human-centered). Dimensional balance applied to the 37-question synthesized output (append questions handled separately).

| Dimension | Target % | Approx Count | Anchor Personas |
|---|---|---|---|
| Strategic | 19% | 7 | Analyst (migration pathway, strategy tree, runway, compliance cost), DA (FDA dependency, liability), Questioner (regulatory path, privacy segments), ST (regulatory path dependency, privacy-performance lock-in) |
| Tactical | 19% | 7 | Analyst (power budget, fusion algorithms), DA (charging, degradation, power cliff), ST (battery cascade, update timing), TE (NPU utilization, battery budget decomposition, deterministic latency) |
| Creative | 11% | 4 | AI (team strengths, experiment, assets, battery-invitation) |
| Analytical | 27% | 10 | Analyst (architecture decision, latency, validation data, calibration protocol, data segmentation), DA (drift, sensor failure, calibration), Questioner (false-positive paradox, edge cases, ML evolution), ST (sensor fusion fragility, clinical validation bias, observer effect), TE (model quantization, on-device personalization, signal validation, edge cases, fault tolerance) |
| Human-centered | 24% | 9 | AA (anxiety, bias, accessibility, privacy, stigma, consent, context-aware alerts, health anxiety, wellness-clinical journey), AI (trust-building, no-false-alarm), Questioner (anthropomorphism, continuous-monitoring reframe) |
| **Total** | 100% | 37 | — |

**Tolerance bands:** ±5 percentage points per dimension. Outside ±5pp = SP1 has compressed or expanded that dimension materially.

**Expected dimension shifts to watch:**
- **Risk of Analytical over-representation at medium.** Adding Technical Expert (10 Qs, ~90% analytical) plus Analyst's expansion (+5 Qs, mostly analytical) shifts the raw dimension balance toward Analytical. The 27% target is notably higher than low-effort's 23% for exactly this reason. If SP1 pushes Analytical above 32%, it has likely absorbed Appreciative Inquirer and Audience Advocate questions into analytical merges — Check C5, C6, C8.
- **Risk of Human-centered under-representation** if synthesizer treats AA's accessibility/bias cluster (C6) as subordinate to the alert-UX cluster (C5); AA's 13 medium questions split more distinctly than at low (7 C5 + 3 C6) but the C6 count is now only 4 total (vs. 6 at low). Collapsing C6 entirely into C5 would drop Human-centered from 24% toward 18%.
- **Risk of Strategic compression** if synthesizer folds regulatory (C3) and business (C7) into a single "strategic direction" cluster. Watch for C3+C7 collapsing from 9 outputs to 5-6.
- **Risk of Creative under-representation** if synthesizer treats AI questions as method-overhead rather than distinctive content. The 4 Creative questions (AI Q7 team, AI Q11 experiment, AI Q12 assets, AI Q9 battery-as-invitation) must all be present for the Creative dimension to hit 11%. The Creative target is notably lower at medium than low (11% vs. 13%) because the analytical/engineering denominator grows with TE addition.
- **Tactical rises from low to medium** (19% vs. 17%) because TE's engineering-optimization questions are primarily Tactical (NPU feature utilization, battery budget decomposition, deterministic latency enforcement). A synthesizer that under-represents TE or treats TE as analytical rather than tactical will miss this shift.
- Wearable-device is a technical topic with strong regulatory, human-centered (vulnerable 40+ demographic), and analytical-quality dimensions; the 24% Human-centered target is meaningful and should be protected against the Analytical-pull that TE addition introduces.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (wearable-device / medium cell)

# wearable-device — low — Synthesis Target

**Input count (Synthesize group):** 73
**Expected output count (synthesized):** 30 (range 27-33, target 30)
**Compaction ratio:** 73 / 30 = 2.43 (range 2.2–2.7, target 2.43)
**Cluster count:** 8 (range 7–9, target 8, matches B1)
**Append count (separate):** 12 (4 personas × 3, see `wearable-device_low_append-target.md`)
**Final total output:** 30 + 12 = 42 (range 39–45)

**Scoring convention:** Target = point estimate for headline scoring. Range defines the pass/fail band. Outside-range results are scored with severity proportional to distance from the nearest band edge.

---

## Target Output Structure

The synthesized output organizes into the 8 clusters from B1. Per-cluster expected counts derive from cluster size, convergence merges, and unique-question survival.

| Cluster | Source Qs | Expected Out | Compaction |
|---|---|---|---|
| C1 — ML Model Quality, Accuracy & Validation | 12 | 4 | 3.00 |
| C2 — Power, Battery & Hardware-Software Co-Design | 7 | 3 | 2.33 |
| C3 — Regulatory Pathway, Wellness-Clinical Boundary & Liability | 10 | 5 | 2.00 |
| C4 — Privacy Architecture, Trust & Data Handling | 9 | 5 | 1.80 |
| C5 — User Experience, Alerts & Emotional Safety | 11 | 4 | 2.75 |
| C6 — Accessibility, Bias & Physiological Diversity | 6 | 3 | 2.00 |
| C7 — Business Model, Unit Economics & Sustainability | 4 | 2 | 2.00 |
| C8 — Team, Learning Loops & Strengths-Based Foundations | 14 | 4 | 3.50 |
| **Totals** | 73 | **30** | **2.43** |

(C1-C8 source counts use B1 cluster assignments. Totals reconcile exactly — every Synthesize question is in exactly one cluster.)

---

### Cluster C1 — ML Model Quality, Accuracy & Validation

**Must include (3):**
1. **[Merged from CG11: Anal Q6, DA Q1, DA Q2, Quest Q12, ST Q11]** Edge case detection, sensor failure modes, and graceful degradation — how the system systematically identifies and degrades across multi-sensor fusion failures (motion artifacts during exercise, skin contact issues, partial PPG/temperature failures, model/sensor drift, physiological edge cases like poor circulation or tremors) while avoiding the Fixes-that-Fail pattern where compensating models silently mask sensor failures until catastrophic pipeline failure; designing sensor redundancy from the start so cross-validation is continuous.
2. **[Anal Q2 unique]** Quantifying the false positive-negative trade-off space — given clinical liability of missed arrhythmia vs. UX cost of false alarms, what analytical framework guides optimal precision-recall balance at different model confidence thresholds?
3. **[Anal Q3 unique]** Inference latency vs. detection-window constraints — maximum acceptable inference latency for clinically meaningful cardiac intervention, and how this constrains model architecture choices on the target NPU.

**Should include (1):**
4. **[ST Q9 unique]** Concept drift in health baselines — distinguishing genuine anomaly detection from gradual baseline shifts (aging, medication changes, new conditions); explicit user-triggered recalibration windows during life events rather than assuming automatic adaptation, with the Shifting-Baseline archetype name preserved.

---

### Cluster C2 — Power, Battery & Hardware-Software Co-Design

**Must include (2):**
1. **[Merged from CG6: Anal Q1, Anal Q4, Quest Q10]** Power budget allocation and sensor-fusion architecture — how to allocate the 7-day battery across ML pipeline stages (sampling, preprocessing, inference, post-processing) and across early/intermediate/late fusion architectures to optimize marginal-accuracy-per-milliwatt; dynamic vs. fixed sensor activation by context (sleep vs. exercise vs. rest).
2. **[Merged from CG7: DA Q5, DA Q6, DA Q7, ST Q10]** Battery lifecycle management — weekly charging disruption to data continuity, 2-3 year degradation to 70% capacity, the anomaly-detection power cliff where false-positive states drain the battery within hours, and the Battery-Budget Tradeoff Cascade death-spiral where conservation modes sacrifice sensor resolution; transparent user-controlled 'accuracy vs. battery life' modes rather than invisible automatic degradation.

**Should include (1):**
3. **[AI Q9 unique]** Battery life as invitation rather than constraint — seven-day battery as design choice for peace of mind; when has device longevity changed user behavior (present, less fretful about charging)?

---

### Cluster C3 — Regulatory Pathway, Wellness-Clinical Boundary & Liability

**Must include (4):**
1. **[Merged from CG3 Q A: DA Q8, Quest Q5, Quest Q6]** User expectations and missed-event liability — where is the boundary between 'wellness' and 'medical' in users' minds, how user expectations about accuracy/liability differ from legal wellness positioning, and what happens at the limit case when the device misses a significant cardiac event shortly after a false alert created alert fatigue (disentangling device failure from user inattention in liability scenarios)?
2. **[Merged from CG3 Q B: DA Q9, DA Q11, ST Q3]** Diagnostic contamination and Shifting-the-Burden — preventing users/physicians from treating wellness outputs as clinical-grade diagnostic (marketing language, UI design, expectation-setting) and designing the middle ground that manages the Shifting-the-Burden pattern where ambiguous findings cascade users onto physicians creating unnecessary visits, versus silent outputs where users assume detection when none occurred.
3. **[Merged from CG4: Anal Q7, DA Q12, Quest Q7, ST Q4]** Wellness-to-clinical architecture and FDA pathway — how today's architecture, data pipeline, validation, and documentation are designed to enable smooth FDA 510(k) transition (treating wellness as 'clinical device in waiting'), avoiding the Fixes-that-Fail pattern where consumer shortcuts create technical debt blocking regulatory approval, contingency if 510(k) proves infeasible, and whether 510(k) is the right path vs. alternatives (De Novo, partnership with medical device companies, wellness with clinical research partnerships).
4. **[Anal Q8 unique, preserved per CG5]** Clinical validation data requirements and feasibility — minimum viable clinical dataset size and composition for validating arrhythmia and sleep apnea detection; mapping feasibility against the 18-month runway and available resources.

**Should include (1):**
5. **[ST Q2 unique, preserved per CG5]** Clinical validation feedback loop — a privacy-preserving mechanism where physicians tag events as true/false positive without accessing raw biometric data, creating a supervised signal that closes the learning loop from authoritative users without requiring data to leave the device.

**Optional:**
- **[AI Q6]** Regulatory success as enabler not obstacle — FDA 510(k) as collaboration making the device demonstrably more valuable; clinical partnerships enhancing (not restricting) consumer delivery. *Appreciative reframe; cuttable for compaction.*
- **[AI Q10]** From wellness to clinical — learning across the boundary bidirectionally. *Cross-cluster (C8 tie); preservable if not also in C8.*

---

### Cluster C4 — Privacy Architecture, Trust & Data Handling

**Must include (4):**
1. **[Merged from CG9: Quest Q1, Quest Q2, AI Q2, AI Q8]** Privacy architecture as felt experience — what 'privacy' actually means to different user segments (45-year-old with family cardiac history vs. tech-savvy early adopter), and what mechanisms (visual indicators, audit trails, third-party verification, interface design borrowed from therapeutic/journal contexts) make the on-device privacy promise viscerally felt rather than an abstract compliance claim.
2. **[Merged from CG10: Quest Q4, DA Q10]** Aggregated-summary pattern extraction and companion-app threat model — what patterns extractable from aggregated summaries exceed users' expectations, and what threat modeling has been done on the sync protocol against malicious-app reverse-engineering of sensitive patterns from timing metadata, alert frequency, and aggregated statistics?
3. **[AA Q10 unique]** Domestic privacy and intimate-partner violence — given that wearables are visible and easily accessed, what protections exist for users in abusive relationships who might be monitored through the companion app or coerced into sharing health data?
4. **[AA Q12 unique]** Right to be forgotten — mechanisms ensuring complete data deletion across device, companion app, and any cloud services when users discontinue; clear communication given the complex on-device vs. cloud architecture.

**Should include (1):**
5. **[AA Q9 unique]** Informed consent that's actually understood — presenting trade-offs of on-device processing, companion-app syncing, and clinical data sharing in ways that enable genuine informed consent when users may not distinguish 'wellness' from 'clinical' data usage.

**Optional:**
- **[AA Q11]** Health condition stigma — device design avoiding inadvertent health-condition signaling through appearance, public notifications, social features; user control over disclosure of device capabilities. *Cross-cluster (C5 tie); preservable.*
- **[Quest Q3]** Cardiologist requests raw data — two-tier privacy model; pathways for clinical integration. *Distinctive; cuttable if compaction tight.*
- **[ST Q6]** Data lock-in and platform power — privacy as structural guarantee vs. promise; user-owned exportability and open sync standards surviving acquisition/pivots. *Cross-cluster C7 tie; preservable.*

---

### Cluster C5 — User Experience, Alerts & Emotional Safety

**Must include (2):**
1. **[Merged from CG1: AA Q2, DA Q3, Quest Q8, ST Q1]** Alert fatigue, false-positive threshold, and Alert-Fatigue-Calibration dynamics — acceptable false-positive rate before users disable alerts (varying by segment: known-condition vs. prevention-focused), and what adaptive-sensitivity mechanism calibrates against dismissal patterns without falling into the reinforcing-loop archetype where the model over-corrects on temporary behavior, silences genuine anomalies, and oscillates trust in both directions.
2. **[Merged from CG12: AA Q1, AA Q3, AA Q4, AI Q5]** Alert emotional safety and value communication — jointly balancing avoidance of anxiety/hypervigilance for 40+ adults, urgency-with-user-context delivery (driving, sleeping, meeting) without panic, communicating value during normal-reading periods so 'no alerts' doesn't read as 'device broken', and earning trust through accuracy so the intervention matters when it arrives.

**Should include (1):**
3. **[Merged from CG13 pair: Quest Q13, Quest Q14]** Continuous-monitoring assumption and opt-in paradigm — why assume users want continuous monitoring at all; what dormancy modes, monitoring vacations, or 'check-when-you-choose' paradigms would look like, and whether periodic disengagement improves long-term adherence while still providing value.

**Optional:**
- **[Quest Q15]** User anthropomorphism / overtrust — wearable treated as infallible medical authority; design elements reinforcing or mitigating misconception. *Preserved distinct per CG13; cuttable for compaction.*
- **[AI Q1]** Peak moments in personal health awareness — genuine insight moments; conditions making them possible. *Strengths-based framing; could equally live in C8.*
- **[AI Q3]** Technologies that become invisible partners — seamless extension of awareness; subtle design choices. *Cross-cluster C8 tie.*
- **[AI Q4]** Three years later, what users celebrate — changed relationship to body and health; specific moments of gratitude. *Vision-casting utility; cuttable.*

---

### Cluster C6 — Accessibility, Bias & Physiological Diversity

**Must include (2):**
1. **[Merged from CG2: AA Q5, AA Q7, DA Q4]** Sensor bias and validation across physiological diversity — PPG sensor design and ML training/validation accounting for documented optical-heart-rate biases across skin tones, wrist sizes, genders, ages, body compositions, and comorbidities; specifically confirming accuracy for melanin-rich skin and arrhythmia patterns differing across populations (not just typical male cardiac physiology).
2. **[AA Q6 unique]** Disability and sensory accommodation — alternative alert modalities and companion-app interfaces for users with hearing, visual, or motor impairments; ensuring accessibility without caregiver dependency.

**Should include (1):**
3. **[AA Q8 unique]** Digital literacy barriers — accommodations for users 40+ with limited technical comfort when interpreting anomalies, managing firmware updates, or navigating privacy controls.

---

### Cluster C7 — Business Model, Unit Economics & Sustainability

**Must include (2):**
1. **[Merged from CG14: Anal Q9, Anal Q10, ST Q5]** Hardware-business viability and reimbursement alignment — realistic unit-economics across production volumes, hardware-only vs. subscription vs. reimbursement models under medical-device regulatory constraints and the 18-month runway; and the Success-to-the-Successful dynamic where clinical reimbursement shifts product focus from user-centric to payer-centric and creates a two-tier user base (clinical vs. wellness deprioritized).
2. **[ST Q12 unique]** End-of-life and device transition — baseline portability and model architecture continuity across hardware generations so users own their learned health profiles rather than rent them within a closed ecosystem; open export format for personal baselines.

---

### Cluster C8 — Team, Learning Loops & Strengths-Based Foundations

**Must include (3):**
1. **[Merged from CG8 Q A: Anal Q5, Quest Q11]** Model update strategy architecture — cost-benefit across on-device learning, federated learning, and periodic firmware updates (engineering cost, privacy, performance), plus the constraint that the ML model may need to evolve faster than firmware updates allow under medical-device regulatory architecture.
2. **[Merged from CG8 Q B: ST Q7, ST Q8]** Federated-learning participation and update-adaptation whiplash — managing both the Tragedy-of-the-Commons variant where opt-in suffers when contribution is invisible and model quality plateaus, and the user-adaptation whiplash where phased rollouts with transparency and user-controlled timing protect the trust users carefully rebuilt after previous sensitivity shifts.
3. **[AI Q7 unique, preserved per CG15]** What the 12-engineer team already does well — cross-functional collaboration distribution (firmware, ML, hardware, mobile); what meeting structures, communication patterns, and decision rituals would make team diversity a daily superpower rather than a coordination challenge?

**Should include (1):**
4. **[AI Q11 unique, preserved per CG15]** Smallest meaningful experiment — smallest prototype or user test this month that gives genuine insight into whether the team is building something people care about; human reaction test, not technical feasibility.

**Optional:**
- **[AI Q12]** Existing assets we haven't fully leveraged — taken-for-granted strengths; amplifying natural advantages. *Preserved distinct per CG15; cuttable.*
- **[AI Q10]** From wellness to clinical — learning across the boundary bidirectionally. *Could equally live in C3; placement depends on synthesizer.*

Cluster C8 carries the second-highest optional-list density because AI dominates it (8 of 14 cluster questions are AI) and the strengths-based framing produces semi-distinctive questions. B3 sets must+should at 4 (3 must + 1 should) with optional items as survivors under loose compaction. If synthesizer cuts aggressively, AI Q12 drops first; AI Q1/Q3/Q4 (in C5 optional) may also drop at cluster boundary if synthesizer re-places them to C8.

---

## Questions Expected to Be Dropped (with rationale)

| # | Question | Rationale for drop |
|---|---|---|
| 1 | **Appreciative Inquirer Q1** — Peak moments in personal health awareness | Method-question with no direct operational output. AI Q4 (three-year celebration) and AI Q5 (no-false-alarm experience) carry adjacent moment-designing territory. Borderline orphan between C5 and C8 and frequently compressed in aggressive synthesis. |
| 2 | **Appreciative Inquirer Q3** — Technologies that become invisible partners | Conceptually strong but semantic overlap with AI Q4 (three-year celebration reframing) and AI Q9 (battery-as-invitation). Evocative for designers but does not surface distinct new concerns. |
| 3 | **Appreciative Inquirer Q4** — Three years later, what users celebrate | Vision-casting method-question useful for session follow-up but too abstract for a brainstorming set. AI Q7 (team already does well) and AI Q11 (smallest experiment) carry adjacent appreciative framing at more actionable registers. |
| 4 | **Questioner Q9** — Clinical accuracy vs. battery life optimization (3-day medical vs. 7-day consumer) | Strong provocative question but semantic overlap with CG6 (power budget allocation) merge; the specific 3-day-vs-7-day reframe is a single data point in the broader battery-vs-accuracy trade-off space covered by the CG6 merge. |

**Drop count target:** 4 (range 3-6). If compaction pressure rises (synthesizer produces fewer than 27 questions), the next-most-likely drops are: AA Q11 (stigma — covered in C4 optional), Quest Q3 (cardiologist access — covered in C4 optional), ST Q6 (data lock-in — covered in C4/C7 optional), AI Q10 (wellness-clinical learning — covered in C3 optional), AI Q12 (existing assets — covered in C8 optional). If compaction is loose (>33 questions), expect these optionals to survive.

---

## Persona Representation Requirements

Defines SQ3 (persona representation). Each Synthesize-group persona must have at least the floor count of questions surviving (verbatim, merged-with-attribution, or transformed-but-traceable).

| Persona | Source Qs | Floor | Target | Rationale |
|---|---|---|---|---|
| Analyst | 10 | 6 | 8 | Dominant power/sensor-fusion/regulatory-architecture scaffolding across C1, C2, C3, C7; floor preserves analytical frameworks (Q1 power, Q3 latency, Q4 fusion, Q5 updates, Q7 transition, Q9-Q10 economics). |
| Appreciative Inquirer | 12 | 5 | 7 | Strengths-based framing carries C8 disproportionately (8 of 14 cluster questions); floor protects against analytical-bias erosion. High drop-rate (3 of 4 expected drops are AI) offset by high source volume. |
| Audience Advocate | 12 | 7 | 9 | Sole carrier of accessibility, bias, physiological-diversity, domestic-privacy, and disclosure-control lenses (4 C5, 4 C6, 4 C4); floor protects equity/access coverage across 3 clusters. |
| Devil's Advocate | 12 | 6 | 8 | Risk-discovery role; many questions absorbed into convergent merges (CG1, CG2, CG3, CG4, CG7, CG10, CG11). Floor preserves DA's distinctive risk vocabulary (power cliff, degradation, companion-app surface, boundary ambiguity). |
| Questioner | 15 | 7 | 9 | Meta-question generator; ~10 of 15 Questioner questions land in convergent merges. Floor preserves Q3 (cardiologist access), Q9 (accuracy-vs-battery reframe — candidate drop), Q15 (anthropomorphism), plus merge contributions. |
| Systems Thinker | 12 | 7 | 9 | Distinctive systems-archetype vocabulary (Reinforcing Loop, Fixes that Fail, Shifting the Burden, Tragedy of the Commons, Success-to-the-Successful, Death Spiral, Shifting Baseline); floor protects against vocabulary normalization. Q6 (data lock-in), Q9 (concept drift), Q12 (end-of-life) preserve uniquely; merge outputs carry the rest. |
| **Total floor** | 73 | **38** | **50** | Floor sums exceed expected output (30) because merges count toward each contributing persona — synthesized output of 30 should still represent ≥38 source-question contributions across personas. |

**Failure modes to flag:**
- Any persona below floor → synthesis is silencing a voice (SP1 fail).
- AA absent from C4 (Privacy) or C6 (Bias) → structural-equity collapse.
- AI absent from C8 (Team/Strengths) → strengths-based framing collapse.
- ST absent from C1 (Sensor-Validation / Fixes-that-Fail), C2 (Battery / Death-Spiral), C3 (Shifting-the-Burden / Fixes-that-Fail), or C5 (Alert-Fatigue-Calibration reinforcing loop) → systems-archetype vocabulary loss.
- DA absent from C1 (risk) or C3 (liability) → risk-discovery erosion.
- Questioner contributing only to merges with no unique-surviving questions → meta-question widening function collapsed.

---

## Dimension Balance Target

Per analysis-dimensions framework (Strategic / Tactical / Creative / Analytical / Human-centered). Dimensional balance applied to the 30-question synthesized output (append questions handled separately).

| Dimension | Target % | Approx Count | Anchor Personas |
|---|---|---|---|
| Strategic | 20% | 6 | Analyst (transition architecture, economics), DA (FDA dependency, liability), Questioner (regulatory path, privacy segments), ST (reimbursement alignment, lock-in) |
| Tactical | 17% | 5 | Analyst (power budget, fusion algorithms), DA (charging, degradation), ST (battery cascade, update timing) |
| Creative | 13% | 4 | AI (team strengths, experiment, assets, battery-invitation) |
| Analytical | 23% | 7 | Analyst (trade-off space, latency, validation data), DA (drift, sensor failure, calibration), Questioner (false-positive paradox, edge cases), ST (validation loops, feedback loops, concept drift) |
| Human-centered | 27% | 8 | AA (anxiety, bias, accessibility, privacy, stigma, consent, DV), AI (trust-building, no-false-alarm), Questioner (anthropomorphism, continuous-monitoring reframe) |
| **Total** | 100% | 30 | — |

**Tolerance bands:** ±5 percentage points per dimension. Outside ±5pp = SP1 has compressed or expanded that dimension materially.

**Expected dimension shifts to watch:**
- Risk of **Analytical over-representation** if synthesizer aggressively merges all "what could fail" (DA, ST sensor/validation questions) + all "what's the framework" (Analyst) into a consolidated model-quality register — watch for C1 expanding from 4 outputs to 6-7 at the expense of C5/C6 Human-centered outputs.
- Risk of **Human-centered under-representation** if synthesizer treats AA's accessibility/bias cluster (C6) as subordinate to the alert-UX cluster (C5); the two clusters are both AA-heavy but address meaningfully different concerns. Collapsing C6 into C5 would drop Human-centered from 27% toward 20%.
- Risk of **Strategic over-representation** if synthesizer folds regulatory (C3) and business (C7) into a single "strategic direction" cluster. Watch for C3+C7 collapsing from 7 outputs to 4-5.
- Risk of **Creative under-representation** if synthesizer treats AI questions as method-overhead rather than distinctive content. The 4 Creative questions (AI Q7 team, AI Q11 experiment, AI Q12 assets, AI Q9 battery-as-invitation) must all be present for the Creative dimension to hit 13%.
- Wearable-device is a technical topic with strong regulatory, human-centered (vulnerable 40+ demographic), and analytical-quality dimensions; the 27% Human-centered target is notably high for a "device" topic and reflects both AA's equity-and-vulnerability load and the emotional-safety framing of alerts. A synthesizer that treats this as a "pure engineering" topic would systematically under-represent C4, C5, and C6.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (wearable-device / low cell)

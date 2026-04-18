# wearable-device — low — Cluster Baseline

**Input file:** `test-data/wearable-device_low.md`
**Total questions:** 104 (73 Synthesize + 31 Append-available)
**Synthesize personas (6):** Analyst (10), Appreciative Inquirer (12), Audience Advocate (12), Devil's Advocate (12), Questioner (15), Systems Thinker (12)
**Append personas (4):** Provocateur (8), Storyteller (8), Visionary (8), Connector (7)
**Natural cluster count:** 8

This cluster baseline analyzes only the 73 Synthesize-group questions — the input universe for synthesis. Append-group questions are baselined separately in `wearable-device_low_append-target.md`.

Note on Append roster: per TDA1 / GT1 Rev 3, wearable-device uses **Connector** (not Analogist) as the Perspective-slot persona. Connector is a Tier 3 Append persona that replaces Analogist when the topic requires bridging distinct systems (here: the wellness-clinical boundary, privacy-power co-optimization, hardware-software-regulatory co-design).

---

## Cluster 1: ML Model Quality, Accuracy & Validation

**Description:** The core detection-quality problem — false positive/negative balance, inference latency, model drift, sensor fusion approach, and clinical validation data needs. Spans quantitative rigor (Analyst's trade-off frameworks), risk stress-testing (DA's drift and calibration failure modes), and assumption-challenging (Questioner's false-positive paradox, sensitivity-vs-battery frame).
**Question count:** 12
**Contributing personas:** Analyst (4), Devil's Advocate (3), Questioner (3), Audience Advocate (1), Systems Thinker (1)
**Primary dimension:** Analytical
**Sample questions (up to 5):**
- [Analyst Q2] Quantifying the False Positive-Negative Trade-off Space — clinical liability vs. UX cost; analytical framework for optimal precision-recall balance at confidence thresholds.
- [Analyst Q3] Inference Latency vs. Detection Window Constraints — maximum acceptable latency for clinically meaningful intervention; NPU architecture constraints.
- [Devil's Advocate Q1] Model drift detection — sensor drift, firmware updates, population shift; when to trigger user notification or automatic updates.
- [Questioner Q8] False positive paradox — tuning sensitivity avoids dangerous false negatives but may overwhelm users with alerts; who decides the balance.
- [Systems Thinker Q11] Sensor fusion validation loops — when one sensor degrades, compensating models may silently mask failures until catastrophic.

## Cluster 2: Power, Battery & Hardware-Software Co-Design

**Description:** The 7-day battery target as a physical-architectural constraint — power budget allocation across ML pipeline stages, sensor-fusion algorithm selection (early/intermediate/late fusion), battery degradation over 2-3 years, the anomaly-detection power cliff (high-frequency false positives draining battery), and charging-pattern data continuity. Where Analyst's engineering frameworks intersect with DA's degradation failure modes and ST's battery-tradeoff cascade archetype.
**Question count:** 7
**Contributing personas:** Analyst (2), Devil's Advocate (3), Systems Thinker (2)
**Primary dimension:** Tactical
**Sample questions (up to 5):**
- [Analyst Q1] Power Budget Allocation Across Model Complexity — breakdown across sampling, preprocessing, inference, post-processing; marginal accuracy per milliwatt.
- [Analyst Q4] Sensor Fusion Algorithm Selection Framework — early/intermediate/late fusion evaluation criteria for multi-signal anomaly detection.
- [Devil's Advocate Q5] Anomaly detection power cliff — high-frequency false-positive state continuously triggering expensive inference cycles, draining battery within hours.
- [Devil's Advocate Q7] Battery degradation effects — adaptation as capacity degrades 70% over 2-3 years; power budget viability.
- [Systems Thinker Q10] Battery budget tradeoff cascades — reinforcing loop of low battery → reduced sensing → false positives → compensating processing → faster drain.

## Cluster 3: Regulatory Pathway, Wellness-Clinical Boundary & Liability

**Description:** The Wellness-to-Clinical axis — FDA 510(k) pathway architecture, clinical validation data requirements, wellness-to-clinical migration design, liability boundary management (gray zone between wellness insight and medical diagnosis), and the contingency planning if 510(k) proves infeasible. Spans Analyst's pathway architecture, DA's boundary-ambiguity and FDA-dependency risks, Questioner's pathway-assumption challenges, and ST's wellness-to-clinical migration feedback loops.
**Question count:** 10
**Contributing personas:** Analyst (2), Devil's Advocate (3), Questioner (2), Appreciative Inquirer (1), Systems Thinker (2)
**Primary dimension:** Strategic
**Sample questions (up to 5):**
- [Analyst Q7] Consumer-to-Clinical Transition Architecture Requirements — which architectural decisions create technical debt for FDA 510(k); design patterns for smoothest regulatory pathway.
- [Devil's Advocate Q11] Wellness-clinical boundary ambiguity — preventing users/marketing from interpreting the device as clinical-grade diagnostic.
- [Devil's Advocate Q12] FDA pathway dependency — contingency if 510(k) proves infeasible; technical architecture rework.
- [Questioner Q6] What if the device missed a significant cardiac event — user expectations, liability exposure, feature limits between helpful tool and medical device.
- [Systems Thinker Q4] Wellness-to-clinical migration path — Fixes-that-Fail pattern where consumer wellness shortcuts create technical debt blocking regulatory approval.

## Cluster 4: Privacy Architecture, Trust & Data Handling

**Description:** The on-device / HIPAA / user-privacy architectural core — what privacy actually means to different user segments, transparency mechanisms for trust-building, companion app security surface, data deletion and right-to-be-forgotten mechanics, and domestic-privacy / intimate-partner-violence protection. Spans Questioner's privacy-definition probes, AA's domestic-privacy and stigma concerns, DA's companion-app security modeling, and AI's "privacy as UX not compliance" reframe.
**Question count:** 9
**Contributing personas:** Questioner (3), Audience Advocate (3), Devil's Advocate (1), Appreciative Inquirer (2)
**Primary dimension:** Human-centered
**Sample questions (up to 5):**
- [Questioner Q1] What does "privacy" actually mean to different user segments — 45-year-old with family heart history vs. tech-savvy early adopter; data architecture implications.
- [Questioner Q2] Why assume users trust data stays on-device — visual indicators, audit trails, third-party verification.
- [Audience Advocate Q10] Domestic privacy and intimate partner violence — protections for users in abusive relationships monitored through companion app.
- [Devil's Advocate Q10] Companion app security surface — malicious app reverse-engineering sensitive patterns from timing metadata, alert frequency.
- [Appreciative Inquirer Q2] When privacy creates trust and openness — making safety palpable so users feel depth of trust from day one.

## Cluster 5: User Experience, Alerts & Emotional Safety

**Description:** The lived experience of receiving (or not receiving) alerts — anxiety-vs-reassurance balance, false alarm tolerance, life-altering notification delivery, "nothing to report" value communication, alert fatigue calibration, and user adaptation to model updates. The clinical-psychological core of the brainstorm where AA's design-for-vulnerability concerns meet DA's alert-fatigue risk modeling and ST's self-correcting-sensitivity archetype.
**Question count:** 11
**Contributing personas:** Audience Advocate (4), Devil's Advocate (2), Questioner (3), Appreciative Inquirer (1), Systems Thinker (1)
**Primary dimension:** Human-centered
**Sample questions (up to 5):**
- [Audience Advocate Q1] Anxiety induction vs. reassurance — balance for 40+ adults with heightened health awareness; avoiding constant low-level hypervigilance.
- [Audience Advocate Q3] Life-altering notification delivery — urgency with user context (driving, sleeping, meeting); avoiding panic while ensuring action.
- [Devil's Advocate Q3] Alert fatigue threshold — false positive rate at which users ignore/disable alerts; adaptive sensitivity tuning.
- [Questioner Q14] Opt-in rather than push-based alerts — "check health when you choose" paradigm reducing anxiety vs. defeating continuous monitoring purpose.
- [Systems Thinker Q1] Alert fatigue calibration — reinforcing loop of false alarms → dismissals → model learns → fewer alerts → missed detections.

## Cluster 6: Accessibility, Bias & Physiological Diversity

**Description:** The sole-AA-carried structural-equity cluster — sensor-bias across skin tones, physiological diversity beyond the "standard body" (arrhythmias across genders/ages/body compositions), disability accommodations, digital literacy barriers for 40+ users, and calibration verification across diverse physiological variations. A distinct cluster because the unifying concept is structural-bias risk, not the CX-anxiety dimension in C5.
**Question count:** 6
**Contributing personas:** Audience Advocate (4), Devil's Advocate (1), Questioner (1)
**Primary dimension:** Human-centered
**Sample questions (up to 5):**
- [Audience Advocate Q5] Skin tone and sensor bias — PPG design accounting for performance variations; validation for melanin-rich skin.
- [Audience Advocate Q6] Disability and sensory accommodation — hearing, visual, motor impairments; alternative alert modalities.
- [Audience Advocate Q7] Physiological diversity beyond "standard body" — arrhythmias across genders, ages, body compositions; ML training set diversity.
- [Audience Advocate Q8] Digital literacy barriers — users 40+ with limited technical comfort; firmware updates, privacy controls.
- [Devil's Advocate Q4] Calibration verification — ML model accuracy across skin tones, wrist sizes, physiological variations.

## Cluster 7: Business Model, Unit Economics & Sustainability

**Description:** The hardware-business viability — BOM and manufacturing cost structure, unit economics at production volumes, recurring-revenue-vs-one-time hardware model, subscription-model feasibility under FDA constraints, and the 18-month runway pressure on clinical validation timeline. A small but distinct cluster because the framing is commercial sustainability, not detection quality (C1) or regulatory pathway (C3).
**Question count:** 4
**Contributing personas:** Analyst (2), Devil's Advocate (1), Systems Thinker (1)
**Primary dimension:** Strategic
**Sample questions (up to 5):**
- [Analyst Q9] Hardware-Software Cost Structure Analysis — BOM, manufacturing, per-unit software cost at different volumes; break-even for hardware business.
- [Analyst Q10] Recurring Revenue vs. One-Time Hardware Model — medical device regulatory constraints + 18-month runway; subscription unit economics.
- [Devil's Advocate Q9] Clinical data contamination — users sharing "all-clear" data with physicians creating inappropriate diagnostic reliance.
- [Systems Thinker Q5] Reimbursement incentive alignment — when insurers pay, product shifts from user-centric to payer-centric; two-tier user base.

## Cluster 8: Team, Learning Loops & Strengths-Based Foundations

**Description:** The appreciative-inquiry cluster of team strengths, existing assets, smallest-meaningful-experiments, battery-as-invitation framing, and the bidirectional wellness-clinical learning pattern. Also holds ST's federated-learning-participation and model-update-timing questions because the unifying concept is *how the project learns and evolves over time*. AI dominates; ST and systems-of-learning questions naturally cluster here rather than in C1 (detection quality) or C3 (regulatory).
**Question count:** 14
**Contributing personas:** Appreciative Inquirer (8), Systems Thinker (3), Questioner (3)
**Primary dimension:** Creative
**Sample questions (up to 5):**
- [Appreciative Inquirer Q7] What the 12-engineer team already does well — cross-functional collaboration; meeting structures, communication patterns, decision rituals.
- [Appreciative Inquirer Q11] The smallest meaningful experiment — smallest prototype this month that gives genuine insight; human reaction test, not technical feasibility.
- [Appreciative Inquirer Q12] Existing assets we haven't fully leveraged — taken-for-granted team strengths; amplifying natural advantages from day one.
- [Systems Thinker Q2] Clinical validation feedback loop — physicians validate events as true/false positive without accessing raw biometric data; supervised signal.
- [Questioner Q11] ML model needs to evolve faster than firmware updates allow — OTA model updates within medical device constraints; federated learning architectures.

---

## Orphan Questions (Not Cluster-Forming)

Questions that fit weakly or sit across multiple clusters. Documented to surface ambiguity for SP1 scoring.

| Question | Tentative cluster | Notes |
|---|---|---|
| Analyst Q5 (Model Update Strategy Cost-Benefit) | C8 primary (learning loops) with strong C1 (model quality) and C3 (regulatory) ties | Cross-fits three clusters: learning/update strategy (C8), on-device learning quality (C1), and federated-learning-under-medical-device constraints (C3). Primary assignment C8 because the framing is "incremental engineering costs, privacy implications, model performance gains across update strategies" — a learning-pipeline question. |
| Analyst Q6 (Edge Case Detection and Failure Mode Analysis) | C1 primary (detection quality) with tie to C6 (bias — motion artifacts/skin contact explicitly called out) | Fuses detection-quality (edge-case multi-sensor fusion failure) with bias territory (motion artifacts during exercise, skin contact issues — canonical sensor bias triggers). Some synthesizers may cluster in C6. |
| Analyst Q8 (Clinical Validation Data Requirements) | C3 (regulatory) primary with tie to C7 (business, via runway framing) | Primary C3 because clinical dataset size/composition is a regulatory requirement; the 18-month runway mapping ties it to C7 commercial sustainability. |
| Appreciative Inquirer Q6 (Regulatory success as enabler) | C3 primary with C8 tie | An appreciative-reframe of the regulatory cluster; sits with C3 more than C8 because the subject is the FDA process itself. Could be C8 if clustered by AI-method rather than subject. |
| Appreciative Inquirer Q9 (Battery life as invitation) | C2 primary with C5 tie | Reframes battery as peace-of-mind (C5 emotional-safety) rather than spec (C2 hardware). Primary C2 because the subject is battery; C5 is the interpretive frame. |
| Appreciative Inquirer Q10 (Wellness-clinical continuum) | C3 primary with C8 tie | Bidirectional learning-across-boundary; the wellness-clinical frame is C3, but the "what can each learn from each" is C8's learning-loop territory. |
| Audience Advocate Q11 (Health condition stigma) | C4 primary (privacy/trust) with C5 tie (emotional experience) | The "avoiding inadvertent health-condition signaling" is both a privacy-control and an anxiety-adjacent concern. Primary C4 because disclosure control is the operational move. |
| Devil's Advocate Q2 (Sensor failure modes) | C1 primary (detection quality) with C2 tie (hardware) | Sensor partial-failure detection sits in both detection-quality and hardware-reliability territory. Primary C1 because "how can the system detect and compensate" is a detection-quality question. |
| Devil's Advocate Q6 (Charging behavior disruption) | C2 primary (battery) with C1 tie (algorithm reliability) | Charging pattern becoming a confounding variable in anomaly detection; sits with C2 hardware-charging but ties to C1 algorithm-level handling. |
| Devil's Advocate Q8 (Liability boundary clarity) | C3 primary (regulatory/liability) with C5 tie (alert fatigue reference) | References alert-fatigue-driven missed event → C5 cross-reference, but the core framing is liability-boundary disentanglement, C3. |
| Questioner Q13 (Users want continuous monitoring at all) | C5 primary (UX/adherence) with C8 tie (project reimagining) | "Dormancy modes / monitoring vacations" is a UX design question; the broader challenge of continuous-monitoring assumptions has Visionary-adjacent Append tie (Visionary Q5). |

**Cluster ambiguity summary:** The C1 (Detection Quality) / C2 (Hardware/Battery) boundary is the fuzziest — sensor failures, calibration, fusion algorithms, and power cliffs interact at the ML-pipeline-hardware interface. The C3 (Regulatory) / C7 (Business) boundary is the second fuzziest — 510(k) pathway and 18-month runway are technically distinct but operationally entangled. The C8 (Learning) cluster is the broadest — it absorbs AI's strengths questions (dominant), ST's learning-loop archetypes, and Questioner's evolution-rate probes; a synthesizer could split it into C8a (team/strengths) and C8b (model/system learning). Most questions assigned cleanly; ~10 borderline cases could swing a 1-cluster shift in SP1 output without being wrong.

---

## C1 Comparison (Per-Persona vs. Flat Pooling)

C1 (from Phase 2B P1/C1 carryover) asks whether per-persona clustering — each persona pre-organizing questions into clusters before synthesis — helps or hurts cross-persona synthesis vs. flat pooling.

### Pass A: Per-persona clustering preserved

When persona-internal structure is honored before cross-persona synthesis, the Synthesize personas present roughly:

- **Analyst:** ~4 internal clusters (power/sensor-fusion engineering, accuracy/validation, regulatory/clinical transition, business/unit-economics). Questions ordered analytically but no supplied headings.
- **Appreciative Inquirer:** ~4 internal clusters (peak-moments/trust/invisible-partner [C5/C8], regulatory-as-enabler + wellness-clinical continuum [C3], team/experiment/assets [C8], battery-as-invitation [C2/C5]).
- **Audience Advocate:** ~4 internal clusters (anxiety/alerts/reassurance [C5], bias/accessibility/diversity [C6], privacy/consent/stigma [C4], right-to-be-forgotten). Clean equity-and-accessibility internal grouping.
- **Devil's Advocate:** ~4 internal clusters (detection/sensor/calibration [C1/C6], battery/charging/degradation [C2], liability/regulatory/FDA [C3], companion-app-security [C4]). Tight risk-register structure.
- **Questioner:** 15 questions with no supplied headings; internal threads visible on privacy (Q1-Q4), wellness-clinical boundary (Q5-Q7), false-positive paradox / sensor-fusion / sensitivity (Q8-Q12), continuous-monitoring assumption + UX (Q13-Q15).
- **Systems Thinker:** All 12 questions supplied with bolded-title headings that encode system archetypes (Reinforcing Loop, Fixes that Fail, Shifting the Burden, Tragedy of the Commons, Success-to-the-Successful). Archetype vocabulary is distinctive content — 8 of 12 questions explicitly name an archetype.

Synthesizing within these persona-supplied frames yields the same 8-cluster cross-persona map. Systems Thinker's archetype labels function as *distinctive content* that should survive into the output rather than being stripped as cluster-structural markup.

### Pass B: Flat pooling

Treating all 73 questions as a flat list and clustering bottom-up yields the same 8 themes. Cluster boundaries shift slightly:

- "Accessibility/Bias" (C6) and "User Experience/Alerts" (C5) attach more strongly under flat pooling (one super-cluster of human-centered concerns) because both are AA-dominated and share the "design-for-vulnerability" orientation. Per-persona preserves the structural-equity (C6) vs. emotional-safety (C5) distinction.
- "Business" (C7) and "Regulatory" (C3) attach more strongly under flat pooling because all four C7 questions explicitly reference FDA/clinical constraints. Per-persona keeps them distinct because the framing axis is unit economics vs. regulatory architecture.
- AI Q9 (battery as invitation) lands more firmly in C5 (emotional safety) under flat pooling; per-persona keeps it in C2 because the subject is battery.
- ST Q2 (clinical validation feedback loop) could land in C3 (regulatory) or C8 (learning); flat pooling leans C3 (subject-focused), per-persona leans C8 (archetype-focused).

### Difference, Bias Check & SP1 Recommendation

- **Difference:** Marginal — same 8 clusters, boundary differences on 6-8 borderline questions. Both passes agree on which questions are convergent and which are unique. Both passes identify C3 (Regulatory), C4 (Privacy), and C5 (UX/Alerts) as high-density convergence zones.
- **Bias check:** Per-persona clustering preserves Systems Thinker's distinctive archetype vocabulary as genuine signal (not bias inflating cluster count). Per-persona also preserves AA's structural-equity (C6) vs. emotional-safety (C5) distinction, which flat pooling can blur. No evidence of cluster inflation from persona-supplied structure.
- **SP1 recommendation:** **Flat pooling for the synthesis step, with two additive preservation instructions.** With 73 questions and 6 Synthesize personas at low effort, flat pooling yields equivalent cluster quality with simpler prompt instructions. Two caveats specific to wearable-device/low:
  1. SP1 prompts should instruct the synthesizer to *preserve Systems Thinker's distinctive archetype vocabulary* (Reinforcing Loop, Fixes that Fail, Shifting the Burden, Tragedy of the Commons, Success-to-the-Successful, Death Spiral) in output questions where it appears — this vocabulary is distinctive content, not cluster-structural markup.
  2. SP1 prompts should instruct the synthesizer to *preserve Audience Advocate's structural-equity / accessibility / bias framing as distinct from emotional-safety / alert-UX framing* — because both are AA-heavy but address meaningfully different concerns (structural-bias risk vs. individual-anxiety risk). Collapsing them would lose AA's distinctive "structurally-aware human-centeredness" value per the persona-selection guide.

Both instructions are additive to flat-pooling and do not require per-persona clustering to implement.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (wearable-device / low cell)

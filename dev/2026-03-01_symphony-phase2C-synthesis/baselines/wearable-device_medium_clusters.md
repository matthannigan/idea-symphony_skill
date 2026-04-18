# wearable-device — medium — Cluster Baseline

**Input file:** `test-data/wearable-device_medium.md`
**Total questions:** 120 (89 Synthesize + 31 Append-available)
**Synthesize personas (7):** Analyst (15), Appreciative Inquirer (12), Audience Advocate (13), Devil's Advocate (12), Questioner (15), Systems Thinker (12), Technical Expert (10)
**Append personas (4):** Provocateur (8), Storyteller (8), Visionary (8), Connector (7)
**Natural cluster count:** 8

This cluster baseline analyzes only the 89 Synthesize-group questions — the input universe for synthesis. Append-group questions are baselined separately in `wearable-device_medium_append-target.md`.

Note on persona roster: per TDA1 / GT1 Rev 3, wearable-device at medium uses **Connector** (not Analogist) as the Perspective-slot persona, and **Technical Expert** as the single Tier 3 persona (Synthesize). Connector replaces Analogist when the topic requires bridging distinct systems that constrain each other (here: hardware + ML + regulatory + privacy + business model). Technical Expert is triggered by "genuine technical architecture: engineering tradeoffs, hardware-software co-design, ML/AI systems" — wearable-device is a canonical strong-trigger topic for Technical Expert per the persona-selection guide.

The 8-cluster structure matches wearable-device/low at the theme level, but C1 (ML Model Quality) and C2 (Power/Battery/Hardware) are both denser at medium because Technical Expert adds a second analytical voice to these engineering clusters, and Analyst grows from 10 to 15 questions (extending into unit-economics and team-resource-allocation territory).

---

## Cluster 1: ML Model Quality, Architecture & Validation

**Description:** The core detection-quality and model-architecture problem — model architecture selection (CNN vs. transformer for PPG/temporal patterns), quantization strategy, inference latency under safety-critical constraints, sensor fusion architecture choice, signal quality validation (motion artifact, perfusion validation, sensor fault detection), model drift/population-shift detection, calibration verification across physiological diversity, on-device personalization under SRAM constraints, and clinical validation evidence generation. At medium effort, Technical Expert adds a second analytical voice to this cluster — layering NPU feature utilization, asymmetric model architectures (arrhythmia vs. sleep apnea), and fault tolerance/recovery mechanisms on top of Analyst's trade-off frameworks and DA's risk stress-testing.
**Question count:** 18
**Contributing personas:** Analyst (4), Devil's Advocate (3), Questioner (3), Systems Thinker (2), Technical Expert (5), Audience Advocate (1)
**Primary dimension:** Analytical
**Sample questions (up to 5):**
- [Analyst Q1] Model architecture decision framework — CNNs vs. transformers for PPG signal processing; systematic evaluation of model complexity, inference frequency, and quantization approach for optimal detection-vs-power tradeoff.
- [Technical Expert Q1] Model quantization and architecture selection — asymmetric model architectures where sleep analysis (lower urgency) uses a simpler model than cardiac event detection; trade off against 7-day battery and real-time inference.
- [Technical Expert Q4] Multi-modal sensor fusion architecture — asynchronous sensor inputs (PPG 50Hz, accel 25Hz, temp 1Hz, breathing 100Hz bursts); early/late/hybrid-with-attention-gating fusion comparison.
- [Devil's Advocate Q1] Model drift detection — sensor drift, firmware updates, population shift; user notification or automatic update triggers before false negatives accumulate.
- [Systems Thinker Q11] Sensor fusion interdependence fragility — when one sensor degrades, compensating models may over-weight remaining sensors producing false confidence; graceful-vs-catastrophic failure design.

## Cluster 2: Power, Battery & Hardware-Software Co-Design

**Description:** The 7-day battery as an architectural constraint intersecting with detection capability — power budget allocation methodology across sensing/inference/display/communication subsystems, sensor fusion strategy (early vs. late fusion) at the power tradeoff frontier, battery lifecycle management (charging disruption, 2-3 year degradation, anomaly-detection power cliff), battery-degraded capability drift, and deterministic inference latency under power constraints. Medium effort expands C2 with Technical Expert's NPU utilization strategy, battery budget decomposition (sub-5mW average power draw allocation), and deterministic-latency guarantees — deepening the engineering substrate under Analyst's frameworks and DA's failure modes.
**Question count:** 11
**Contributing personas:** Analyst (2), Devil's Advocate (3), Systems Thinker (2), Technical Expert (3), Appreciative Inquirer (1)
**Primary dimension:** Tactical
**Sample questions (up to 5):**
- [Analyst Q3] Power budget allocation methodology — 7-day battery target across sensing, inference, display, communication; max inference energy budget per analysis cycle; sensitivity analysis showing which subsystem tradeoffs have highest leverage.
- [Technical Expert Q7] Battery budget decomposition — sub-5mW average power draw allocation across sensing subsystems, compute (NPU vs. MCU), storage, and communication; technical leverage points for optimization.
- [Technical Expert Q8] Deterministic inference latency — cardiac event detection <5 second response; technical constraints on model architecture, sensor buffer sizes, interrupt priorities; worst-case guarantees during OTA/sync/compression.
- [Devil's Advocate Q5] Anomaly detection power cliff — high-frequency false positive state continuously triggering expensive inference and communication bursts, draining battery within hours rather than days.
- [Systems Thinker Q8] Battery-degraded capability drift — 15-25% capacity degradation over 2-3 years forcing sensing/processing throttling; graceful degradation vs. sudden capability loss.

## Cluster 3: Regulatory Pathway, Wellness-Clinical Boundary & Liability

**Description:** The Wellness-to-Clinical axis — FDA 510(k) pathway architecture, consumer-to-clinical migration design, clinical evidence requirements and resource allocation, liability boundary management, wellness-clinical boundary ambiguity, FDA pathway contingency planning, and the regulatory-strategy decision tree (wellness-first vs. FDA-from-day-one vs. alternative pathways like De Novo or partnership). Medium-effort volume at Analyst grows from 10 to 15, adding unit economics and runway allocation — which has ripple into C3 via "per-unit cost of regulatory compliance" as a specific Analyst framing.
**Question count:** 14
**Contributing personas:** Analyst (3), Devil's Advocate (3), Questioner (2), Appreciative Inquirer (2), Systems Thinker (2), Audience Advocate (1), Technical Expert (1)
**Primary dimension:** Strategic
**Sample questions (up to 5):**
- [Analyst Q9] Consumer wellness to clinical device migration pathway — systematic approach designing initial consumer architecture to enable smooth FDA 510(k) transition; which decisions create technical debt vs. regulatory acceleration later.
- [Analyst Q10] Regulatory strategy decision tree — FDA clearance from day one vs. launching as wellness first; opportunity costs of delayed market entry vs. competitive advantage from clearance.
- [Devil's Advocate Q12] FDA pathway dependency — contingency if 510(k) proves infeasible due to predicate device changes or new guidance; how much technical architecture would need rework.
- [Questioner Q6] What if the device missed a significant cardiac event — user expectations, liability exposure, feature limits between helpful wellness tool and medical device; occupying both spaces simultaneously.
- [Systems Thinker Q6] Regulatory strategy path dependency — consumer-wellness launch establishes expectations and data practices in unregulated space; retrofit for 510(k) delayed by insufficient evidence; regulatory optionality design.

## Cluster 4: Privacy Architecture, Trust & Data Handling

**Description:** The on-device / HIPAA / user-privacy architectural core — what privacy means to different user segments, transparency mechanisms for trust-building, companion-app security surface and threat modeling, HIPAA-compliant data segmentation framework, unintended privacy consequences of aggregated summaries, user agency over their own health data (sharing with physicians, export formats), unspoken privacy needs beyond HIPAA (household visibility, repair/replacement, employer inference), privacy-preserving telemetry architecture for ML improvement, and the privacy-performance delayed-feedback architectural lock-in. Medium effort sharpens C4 via Technical Expert's privacy-preserving telemetry framing (Q10 minimally-hashed diagnostics, differential-noise injection for aggregate metrics).
**Question count:** 11
**Contributing personas:** Analyst (2), Questioner (3), Audience Advocate (2), Devil's Advocate (1), Appreciative Inquirer (2), Systems Thinker (1), Technical Expert (1)
**Primary dimension:** Human-centered
**Sample questions (up to 5):**
- [Analyst Q5] HIPAA-compliant data segmentation framework — what constitutes "raw" vs. "processed" data at each pipeline stage; critical decision boundaries for transformation/aggregation/anonymization maintaining clinical utility while preserving privacy.
- [Questioner Q1] What does "privacy" actually mean to different user segments — 45-year-old with family cardiac history vs. tech-savvy early adopter; data architecture implications.
- [Devil's Advocate Q10] Companion app security surface — malicious app reverse-engineering sensitive health patterns from timing metadata, alert frequency, aggregated statistics; threat modeling on sync protocol.
- [Audience Advocate Q7] Unarticulated privacy needs beyond HIPAA — household visibility, device repair/replacement, employer inference from usage patterns; user control beyond legal compliance.
- [Technical Expert Q10] Privacy-preserving telemetry architecture — minimally-hashed diagnostic payloads, opt-in crisis dump telemetry, differential noise injection for aggregate metrics; technically-useful opt-out flows under HIPAA.

## Cluster 5: User Experience, Alerts & Emotional Safety

**Description:** The lived experience of receiving (or not receiving) alerts — anxiety-induction vs. reassurance, false-alarm tolerance, life-altering notification delivery with user context, alert fatigue calibration dynamics, user-interpretation anxiety (can't see what triggered an alert), the "nothing to report" value problem, anthropomorphism / overtrust, body-image and health-anxiety over months of wear, social/professional contexts of false positives, and the user-initiated vs. push-based alert paradigm. AA dominates this cluster with AA's lived-experience question set; DA and ST supply the calibration-dynamics and alert-fatigue archetypes; AI and Questioner add trust-and-adherence framings.
**Question count:** 14
**Contributing personas:** Audience Advocate (7), Devil's Advocate (1), Questioner (3), Appreciative Inquirer (1), Systems Thinker (2)
**Primary dimension:** Human-centered
**Sample questions (up to 5):**
- [Audience Advocate Q1] User perception of alerts from a device they don't fully understand — alert about potential cardiac anomaly without visibility into what data triggered it; privacy-vs-transparency tension and trust.
- [Audience Advocate Q10] Curiosity-to-anxiety-or-complacency emotional journey — initial excitement → hyper-vigilance or alert fatigue → anxiety during monitoring gaps → potential wear abandonment.
- [Devil's Advocate Q3] Alert fatigue threshold — false positive rate at which users disable alerts; adaptive mechanisms tuning sensitivity based on individual engagement patterns and feedback.
- [Systems Thinker Q1] Alert fatigue calibration loop — "better safe than sorry" vs. "boy who cried wolf" tradeoff; user tolerance varies individually and shifts over time.
- [Systems Thinker Q2] Health anxiety reinforcement cycle — more monitoring → more awareness of normal variation → interpretation as problems → more monitoring; compounding feedback loop.

## Cluster 6: Accessibility, Bias & Physiological Diversity

**Description:** The structural-equity-and-bias cluster — ML training data distribution biases (skin tone, body type, health profile), accessibility for users with disabilities (tremors, limited dexterity, visual impairment, sensory processing differences), routines that don't match charging patterns (travel, shift work, cognitive differences), and calibration verification across skin tones / wrist sizes / physiological variations given documented optical-heart-rate sensing biases. AA carries this cluster as sole lead, with DA's calibration-verification question augmenting the bias check. Smaller than C5 but distinct: the unifying concept is structural-bias risk, not individual emotional safety.
**Question count:** 4
**Contributing personas:** Audience Advocate (3), Devil's Advocate (1)
**Primary dimension:** Human-centered
**Sample questions (up to 5):**
- [Audience Advocate Q4] Users whose bodies don't fit training data distribution — underrepresented skin tones, wrist sizes, heart rate variability, movement patterns; silent workarounds without reporting.
- [Audience Advocate Q5] Users with disabilities — tremors, limited dexterity, visual impairments, sensory processing differences; frustrations in wear, charging, alert acknowledgement, app interaction; designed-for-"ideal" assumptions.
- [Audience Advocate Q6] 7-day battery interacting with users whose routines don't match charging patterns — travel, unreliable outlets, long shifts, cognitive differences; graceful degradation preserving dignity.
- [Devil's Advocate Q4] Calibration verification — ML accuracy across skin tones, wrist sizes, physiological variations; documented biases in optical heart rate sensing.

## Cluster 7: Business Model, Unit Economics & Resource Allocation

**Description:** The commercial-sustainability and capital-allocation core — BOM optimization and unit economics, runway allocation across technical milestones (firmware, ML, hardware iterations, clinical evidence), per-unit cost of regulatory compliance, and engineering team resource allocation between model accuracy and efficiency. This cluster expands meaningfully at medium effort — Analyst grew from 10 to 15 questions and the new 5 questions include unit economics / BOM optimization (Q12), runway allocation (Q13), regulatory compliance cost (Q14), and engineering resource allocation (Q15) — four commercial-sustainability questions that low effort did not have.
**Question count:** 6
**Contributing personas:** Analyst (4), Devil's Advocate (1), Systems Thinker (1)
**Primary dimension:** Strategic
**Sample questions (up to 5):**
- [Analyst Q12] Unit economics and BOM optimization — detailed breakdown across microcontroller, NPU, sensors, battery, connectivity; sensitivity analysis on component costs impacting gross margins; volume at which economies of scale shift tradeoffs.
- [Analyst Q13] Runway allocation across technical milestones — 18 months of Series A across firmware, ML, hardware iterations, clinical evidence; gate-dependent milestones; contingency buffer for regulatory delays.
- [Analyst Q14] Per-unit cost of regulatory compliance — HIPAA infrastructure, FDA pathway preparation, ongoing regulatory maintenance; fixed vs. variable costs; volume at which costs become materially significant.
- [Analyst Q15] Resource allocation between model accuracy and efficiency — 12-person engineering team ML-engineering effort split between improving detection accuracy vs. optimizing inference efficiency; marginal ROI per engineer per dimension.
- [Devil's Advocate Q9] Clinical data contamination — users sharing "all-clear" data with physicians creating inappropriate diagnostic reliance; device not validated as clinical-grade.

## Cluster 8: Team, Learning Loops & Strengths-Based Foundations

**Description:** The appreciative-inquiry cluster of team strengths, existing assets, smallest-meaningful-experiments, battery-as-invitation framing, bidirectional wellness-clinical learning pattern, and the model-update and federated-learning-participation dynamics. Also carries Questioner's ML-update-velocity probe and the systems-learning-loop questions (ST model update sync-asynchrony, clinical validation self-selection bias, app-device bidirectional influence loop). AI dominates; ST and systems-of-learning questions naturally cluster here rather than in C1 (detection quality) or C3 (regulatory). At medium, AI remains at 12 questions (same as low), so this cluster's size and AI density are stable — the new Questioner q14 (opt-in alerts) instead belongs in C5.
**Question count:** 11
**Contributing personas:** Appreciative Inquirer (6), Systems Thinker (3), Questioner (2)
**Primary dimension:** Creative
**Sample questions (up to 5):**
- [Appreciative Inquirer Q7] What the 12-engineer team already does well — firmware/ML/hardware/mobile cross-functional collaboration; meeting structures, communication patterns, decision rituals making diversity a daily superpower.
- [Appreciative Inquirer Q11] The smallest meaningful experiment — smallest prototype this month giving genuine insight; human reaction test, not technical feasibility.
- [Appreciative Inquirer Q12] Existing assets we haven't fully leveraged — taken-for-granted team strengths; advantages competitors would envy; amplifying natural advantages from day one.
- [Systems Thinker Q7] Model update sync-asynchrony — firmware updates require user action creating uneven deployment; multiple model versions in the wild; telemetry maintaining clear signal about what's working.
- [Systems Thinker Q9] Clinical validation data self-selection bias — users most motivated to participate in studies are already symptomatic or high-anxiety; Fixes-that-Fail where study-optimized performance differs in the wild.

---

## Orphan Questions (Not Cluster-Forming)

Questions that fit weakly or sit across multiple clusters. Documented to surface ambiguity for SP1 scoring.

| Question | Tentative cluster | Notes |
|---|---|---|
| Analyst Q2 (Sensor fusion strategy for multi-modal anomaly detection) | C1 primary with strong C2 tie | Analyst's sensor-fusion framing covers *both* detection quality (early vs. late fusion effect on sensitivity) and power budget (computational cost of additional sensor inputs). Primary C1 because the lead is "detection sensitivity." TE Q4 in C1 addresses the fusion architecture question more directly, so some synthesizers may place Analyst Q2 in C2. |
| Analyst Q6 (On-device learning strategy evaluation) | C8 primary (learning loops) with strong C1 (model quality) and C3 (regulatory) ties | Cross-fits three clusters: learning/update strategy (C8), on-device learning quality (C1), and federated-learning-under-medical-device constraints (C3). Primary assignment C8 because the framing is "on-device incremental learning, federated learning, and periodic firmware updates" — a learning-pipeline question. |
| Analyst Q7 (False positive/false negative calibration protocol) | C1 primary (detection quality) with C5 tie (alert fatigue framing) | Fuses detection-quality (acceptable threshold balances) with UX concerns (user anxiety, alert fatigue). Primary C1 because "systematic approach determines acceptable threshold" is a detection-quality question; C5 context enables the merge. |
| Analyst Q8 (Companion app data sync architecture) | C4 primary (privacy/trust) with tie to C1 (clinical utility) | Sync protocol design fuses privacy (minimizing re-identification risk) and clinical utility (meaningful insights). Primary C4 because the framing is "privacy-preserving sync protocol." |
| Analyst Q11 (Clinical evidence requirements analysis) | C3 primary (regulatory) with C7 tie (resource allocation) | Clinical evidence generation phasing ties regulatory to resource allocation; primary C3 because the subject is evidence requirements for FDA submission. |
| Appreciative Inquirer Q6 (Regulatory success as enabler) | C3 primary with C8 tie | An appreciative-reframe of the regulatory cluster; sits with C3 more than C8 because the subject is the FDA process itself. |
| Appreciative Inquirer Q9 (Battery life as invitation) | C2 primary with C5 tie | Reframes battery as peace-of-mind (C5 emotional-safety) rather than spec (C2 hardware). Primary C2 because the subject is battery; C5 is the interpretive frame. |
| Appreciative Inquirer Q10 (Wellness-clinical continuum) | C3 primary with C8 tie | Bidirectional learning-across-boundary; wellness-clinical frame is C3, but "what can each learn from each" is C8's learning-loop territory. |
| Audience Advocate Q3 (Wellness vs. clinical interpretation by users) | C3 primary with C5 tie | Users acting on alerts as medical diagnoses — the liability/regulatory framing dominates, so C3; but the emotional/experience dimension (alert action) pulls toward C5. |
| Audience Advocate Q8 (Tension between sharing insights and protecting privacy) | C4 primary (privacy) with C3 tie (clinical sharing) | Users wanting to share with clinicians but constrained by privacy architecture. Primary C4 because "what might users want to control" is a privacy-agency question; C3 tie via clinical data export. |
| Audience Advocate Q9 (Power dynamics when users can't verify alerts) | C5 primary (UX / alert experience) with C4 tie (data access) | Core framing is alert-verification anxiety, C5; the data-access dimension (raw data) ties to C4. |
| Audience Advocate Q11 (False positives in social/professional contexts) | C5 primary (UX) with C3 tie (life-context) | Life-context alert experience is squarely C5; C3 tie is faint. |
| Audience Advocate Q12 (Body image / health anxiety over months of wear) | C5 primary (UX/anxiety) with C6 tie (vulnerable population) | Long-term psychological effect is C5; the pre-existing-health-anxiety population framing could tie to C6 (vulnerable-population design). Primary C5. |
| Audience Advocate Q13 (Transitioning wellness to clinical if users develop concerns) | C3 primary (wellness-clinical boundary) with C5 tie (user experience of transition) | Core is the wellness-clinical transition journey, C3; user-experience dimension ties C5. |
| Devil's Advocate Q2 (Sensor failure modes) | C1 primary (detection quality) with C2 tie (hardware) | Sensor partial-failure detection sits in both detection-quality and hardware-reliability territory. Primary C1 because "how can the system detect and compensate" is a detection-quality question. |
| Devil's Advocate Q6 (Charging behavior disruption) | C2 primary (battery) with C1 tie (algorithm reliability) | Charging pattern as confounding variable; sits with C2 hardware-charging but ties to C1 algorithm-level handling. |
| Devil's Advocate Q8 (Liability boundary clarity) | C3 primary (regulatory/liability) with C5 tie (alert fatigue reference) | References alert-fatigue-driven missed event → C5 cross-reference, but the core framing is liability-boundary disentanglement, C3. |
| Questioner Q3 (Cardiologist requests access to raw data) | C4 primary (privacy) with C3 tie (clinical integration) | Two-tier privacy model with clinical integration pathway; primary C4 because "maintain privacy promises" is the operational frame. |
| Questioner Q13 (Users want continuous monitoring at all) | C5 primary (UX/adherence) with C8 tie (project reimagining) | "Dormancy modes / monitoring vacations" is a UX design question; the broader challenge of continuous-monitoring assumptions has Visionary-adjacent Append tie (Visionary Q5). |
| Systems Thinker Q3 (Behavioral adaptation shadow system) | C1 primary (detection quality, observer effect) with C5 tie (user experience) | "Measurement changes the measured" is a detection-quality/ML-training-data concern; C5 tie is faint. |
| Systems Thinker Q12 (Companion app bidirectional influence loop) | C8 primary (learning loops) with C5 tie (user behavior) | App-device bidirectional feedback is a learning-loop question (C8); user-logging behavior ties to C5. |
| Technical Expert Q3 (On-device personalization strategy) | C1 primary (detection quality) with C4 tie (privacy implications) | Personalization approach within 128KB SRAM; primary C1 because the subject is detection accuracy via personalization; C4 tie via "privacy implications of each." |
| Technical Expert Q5 (Signal quality validation) | C1 primary (detection quality) with C2 tie (power budget impact) | Motion artifact detection / PPG perfusion validation gating inference inputs; primary C1 because the subject is preventing false positives from corrupted data; C2 tie via "how do these quality checks impact the overall power budget." |
| Technical Expert Q6 (Edge cases in continuous sensing) | C1 primary (detection quality) with C2 tie (battery depletion) | Sensor dislodgement, battery depletion, firmware mid-update, thermal throttling; primary C1 because the framing is "graceful degradation patterns maintaining safety." |
| Technical Expert Q9 (Fault tolerance and recovery) | C1 primary (detection quality) with C2 tie (system reliability) | Watchdog recovery, CRC validation, drift detection, safe mode; primary C1 because the framing is reliability over multi-year lifetimes for the detection pipeline. |

**Cluster ambiguity summary:** At medium effort the C1 cluster absorbs a large share of Technical Expert questions (5 of 10 TE questions primary-land in C1), and several more have C1 ties (Q3 personalization ties to C4; Q5 signal quality ties to C2; Q6 edge cases ties to C2; Q9 fault tolerance ties to C2). The C1/C2 boundary is fuzzy — TE's engineering lens moves fluidly between detection-quality and power-tradeoff framings. The C3 (Regulatory) / C7 (Business) boundary remains fuzzy at medium because of Analyst Q11 (clinical evidence resource allocation) and Analyst Q14 (regulatory compliance unit economics). The C5 (UX) / C6 (Bias) boundary is cleaner at medium than at low because AA's 13 medium-volume questions split more distinctly (7 C5 + 3 C6 + 2 C4 + 1 C3). The C8 cluster remains a broad container dominated by AI (6 of 11 cluster questions). Most questions assigned cleanly; ~12 borderline cases at medium (vs. ~10 at low) could swing a 1-cluster shift in SP1 output without being wrong.

---

## C1 Comparison (Per-Persona vs. Flat Pooling)

C1 asks whether per-persona clustering — each persona pre-organizing questions into clusters before synthesis — helps or hurts cross-persona synthesis vs. flat pooling.

### Pass A: Per-persona clustering preserved

When persona-internal structure is honored before cross-persona synthesis, the 7 Synthesize personas present roughly:

- **Analyst (15 Qs):** ~5 internal clusters (model-architecture/fusion/inference-latency [C1], power/BOM [C2/C7], privacy data segmentation / sync [C4], regulatory pathway/evidence [C3], unit economics / runway / compliance cost / resource allocation [C7]). Medium-volume Analyst extends into commercial-sustainability territory that low-volume Analyst did not reach.
- **Appreciative Inquirer (12 Qs):** ~4 internal clusters (peak-moments/trust/invisible-partner [C5/C8], regulatory-as-enabler + wellness-clinical continuum [C3], team/experiment/assets [C8], battery-as-invitation [C2/C5]). Same structure as low.
- **Audience Advocate (13 Qs):** ~4 internal clusters (alert-perception / life-altering / contextual-false-positive / body-image [C5], bias/diversity/disability/charging-routine [C6], privacy-beyond-HIPAA / sharing-tension [C4], wellness-vs-clinical interpretation / transition [C3]). Clean equity-and-accessibility internal grouping; the C3 tie is stronger at medium than low.
- **Devil's Advocate (12 Qs):** ~4 internal clusters (detection/sensor/calibration [C1/C6], battery/charging/degradation [C2], liability/regulatory/FDA [C3], companion-app-security [C4]). Same structure as low. Tight risk-register structure.
- **Questioner (15 Qs):** 15 questions with no supplied headings; internal threads visible on privacy (Q1-Q4), wellness-clinical boundary (Q5-Q7), false-positive paradox / sensor-fusion / sensitivity (Q8-Q12), continuous-monitoring/opt-in/anthropomorphism (Q13-Q15). Same threading as low.
- **Systems Thinker (12 Qs):** All 12 questions supplied with bolded-title headings that encode system archetypes (Reinforcing Loop, Fixes that Fail, Shifting the Burden, Success-to-the-Successful). At medium, 9 of 12 ST questions explicitly name an archetype (vs. 8 of 12 at low). Archetype vocabulary is distinctive content.
- **Technical Expert (10 Qs):** ~4 internal clusters (model architecture / quantization / personalization [C1], sensor fusion / signal quality / edge cases / fault tolerance [C1/C2], power budget / deterministic latency [C2], privacy telemetry [C4]). TE supplies bolded-title headings that encode engineering-domain vocabulary (NPU utilization, on-device personalization, signal quality validation, fault tolerance) that should survive synthesis as distinctive content per the persona-selection guide's "engineering vocabulary benefits from synthesis normalization" note for TE.

Synthesizing within these persona-supplied frames yields the same 8-cluster cross-persona map. ST's archetype labels and TE's engineering-domain vocabulary both function as *distinctive content* that should survive into the output rather than being stripped as cluster-structural markup.

### Pass B: Flat pooling

Treating all 89 questions as a flat list and clustering bottom-up yields the same 8 themes. Cluster boundaries shift slightly:

- "ML Model Quality" (C1) and "Power/Battery" (C2) attach more strongly under flat pooling because TE's questions fluidly bridge both territories (Q5 signal quality impacts power budget, Q6 edge cases include battery depletion, Q9 fault tolerance intersects NPU hangs with reliability). Per-persona clustering keeps them separate by framing axis (detection quality vs. battery tradeoff).
- "Accessibility/Bias" (C6) and "User Experience/Alerts" (C5) attach more strongly under flat pooling (one super-cluster of human-centered concerns) because both are AA-dominated. Per-persona preserves the structural-equity (C6) vs. emotional-safety (C5) distinction. This is the same pattern as low, but slightly more pronounced at medium because C5 is larger (14 vs. 11 at low) while C6 is smaller (4 vs. 6).
- "Regulatory" (C3) and "Business" (C7) remain mildly entangled under flat pooling because Analyst Q11 (clinical evidence requirements) and Q14 (regulatory compliance unit cost) straddle both. Per-persona keeps them distinct because the framing axis is regulatory architecture vs. unit economics.
- "Team/Learning" (C8) flat-pools the same way as at low: AI-dominated, with ST's learning-loop questions mixed in.

### Difference, Bias Check & SP1 Recommendation

- **Difference:** Marginal — same 8 clusters, boundary differences on 8-10 borderline questions (vs. 6-8 at low). The larger borderline count at medium is driven by TE's fluid engineering framing and by Analyst's expansion into C7 territory. Both passes agree on which questions are convergent and which are unique. Both passes identify C1 (Model Quality), C3 (Regulatory), C4 (Privacy), and C5 (UX/Alerts) as high-density convergence zones.
- **Bias check:** Per-persona clustering preserves Systems Thinker's distinctive archetype vocabulary and Technical Expert's engineering-domain vocabulary as genuine signal (not bias inflating cluster count). Per-persona also preserves AA's structural-equity (C6) vs. emotional-safety (C5) distinction, which flat pooling can blur. No evidence of cluster inflation from persona-supplied structure.
- **SP1 recommendation:** **Flat pooling for the synthesis step, with three additive preservation instructions.** With 89 questions and 7 Synthesize personas at medium effort, flat pooling still yields equivalent cluster quality with simpler prompt instructions. Three caveats specific to wearable-device/medium:
  1. Preserve Systems Thinker's distinctive archetype vocabulary (Reinforcing Loop, Fixes that Fail, Shifting the Burden, Success-to-the-Successful, Tragedy of the Commons, Shifting Baseline, Death Spiral) in output questions where it appears — this vocabulary is distinctive content, not cluster-structural markup. ST names 9 archetypes at medium (vs. 7+ at low).
  2. Preserve Audience Advocate's structural-equity / accessibility / bias framing as distinct from emotional-safety / alert-UX framing. At medium AA's C5 load is heavier (7 Qs) and C6 is lighter (3 Qs); the collapse risk is sharper because the imbalance tempts the synthesizer to fold C6 into C5.
  3. Preserve Technical Expert's engineering-domain vocabulary (NPU utilization, on-device personalization under SRAM constraints, asymmetric model architectures, deterministic inference latency, privacy-preserving telemetry with differential noise injection, fault tolerance mechanisms). Per the persona-selection guide, TE "benefits from synthesis normalization" but the distinctive engineering framings are the contribution — synthesis should normalize *style*, not strip *vocabulary*. Because TE overlaps ~50-60% with Analyst, there is a real risk that synthesis collapses TE into Analyst voice; the vocabulary check prevents this.

All three instructions are additive to flat-pooling and do not require per-persona clustering to implement.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (wearable-device / medium cell)

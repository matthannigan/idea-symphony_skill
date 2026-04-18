# wearable-device — high — Append Target

**Append-group personas:** Provocateur (Tier 1), Storyteller (Tier 1), Visionary (Tier 1), Constraint Flipper (Tier 2), Connector (Tier 3, replaces Analogist)
**Append questions available (A_available):** 39
- Provocateur: 8
- Storyteller: 8
- Visionary: 8
- Constraint Flipper: 8
- Connector: 7

**Append quota (A_quota, from D1):** 39 (= A_available)

Per D1 Effort Mapping: at **high effort**, Tier 1 Perspective personas append "All (5-8) — No selection needed — append everything." Constraint Flipper (Tier 2) at high effort appends "3-5 (round-robin)"; this cell is constraint-rich (7-day battery target, NPU compute limits, HIPAA on-device requirement, no-cloud processing, FDA regulatory pathway, 18-month runway, 12-engineer team, target 40+ demographic) so all 8 CF questions activate — recommend include all 8 for baseline. Connector (Tier 3 Perspective) per persona-selection-guide_Phase2B replaces Analogist at this cell due to the topic's inter-domain reconciliation trigger (biological nervous system, game design, automotive safety, regulatory tailwinds, cryptographic privacy). All 7 Connector questions append per the "all 5-8" guidance.

---

## GT1 Watchlist Status

**Wearable-device/high is NOT on the GT1 Medium-confidence watchlist (per TDA1 §5.1).** GT1 Rev 3 prescribes Connector (not Analogist) as the Tier 1 Perspective slot, and Lawyer + Technical Expert as Tier 3 Synthesize. All selections are high-confidence.

**Append mechanics at this cell:** No GT1-level risk. If SP1 later produces anomalously poor scores here, the cause is variant-level (not GT1-level). Specifically to check:
- Does SP1 strip Connector's inter-domain reconciliation vocabulary (biological nervous system, game design progression, automotive safety-critical systems) because variants treat Connector's import-mode questions as convergent with Cluster 3 (ML architecture) Synthesize content? (That would fail SQ4 — Connector is Append per D1.)
- Does SP1 miscategorize Connector as Synthesize? (Reading persona-selection-guide incorrectly — Connector inherits Analogist's Append mechanics.)
- Does SP1 swap in Analogist by default, missing the GT1-prescribed Connector swap? (Would fail against the test data which contains Connector not Analogist.)

All three are scoring issues, not GT1 issues.

**The 39-question append target is canonical for GT1 Rev 3.**

---

## Round-Robin Selection Walkthrough

Per D1: "Read cluster headings, pick one question from each cluster in order until the quota is filled; if quota exceeds cluster count, take a second question from the largest clusters."

**Important:** Each Append persona is round-robin'd *within its own clusters*. Personas are not interleaved across each other.

**At high effort, A_quota = A_available for every Append persona.** Round-robin selection collapses to "include all questions in cluster order." There is no selection pressure. The walkthrough below is therefore trivial — included for SP1 to verify the *order* and the *cluster attribution*, not the selection.

### Provocateur (8 of 8)

Internal clusters identified (3 clusters, per Provocateur's "universal 3-cluster structure"):

| Cluster | Questions (cluster order) |
|---|---|
| C1: Measurement-and-certainty inversion | Q1 (device actively ignores your data — body attunement over quantification), Q2 (ML deliberately worse — embraces uncertainty rather than claims precision) |
| C2: Privacy-and-data-flow inversion | Q3 (monitors everyone except the wearer — community surveillance with inaccessible individual data), Q5 (HIPAA requires MORE data sharing — pooled anonymized commons), Q6 (ML trains on only wearer then deletes itself — total isolation personalization) |
| C3: Business-model-and-regulatory inversion | Q4 (no battery / dies every 24 hours — forced daily reset), Q7 (FDA requires device to fail for some users — explicitly non-universal), Q8 (charge per detected anomaly — inverted anxiety-profit alignment) |

Round 1 (one per cluster): Q1, Q3, Q4 → 3 selected
Round 2 (one per cluster, next item): Q2, Q5, Q7 → 6 selected
Round 3 (largest cluster: C2 has 1 left; C3 has 1 left; take C2 first): Q6 → 7
Round 4 (C3 has 1 left): Q8 → 8 selected — quota met (all 8)

### Storyteller (8 of 8)

Internal clusters identified (3 clusters):

| Cluster | Questions (cluster order) |
|---|---|
| C1: Alert-moment narratives (the critical event) | Q1 (Marcus 3 AM alert, family history of heart disease — first alert to medical-care decision), Q4 (boy who cried wolf in reverse — false positive or missed event trust recovery) |
| C2: Continuous / silent-monitoring narratives | Q2 (Elena 6 months silent then one Tuesday alert — watchful shadow), Q6 (data diary no one can see — opaque self-knowledge), Q7 (when the battery dies — James's naked-wrist vulnerability during risky week) |
| C3: Identity-and-relationship narratives | Q3 (holiday dinner table conversation — device as identity and social narrative), Q5 (from wellness device to medical tool — two-year FDA-cleared transformation), Q8 (handing down a health narrative — parent to child, shared genetic risk) |

Round 1: Q1, Q2, Q3 → 3
Round 2: Q4, Q6, Q5 → 6
Round 3 (largest = C2 and C3 both have 1 left; take C2 first): Q7 → 7
Round 4 (C3 has 1 left): Q8 → 8 selected — quota met (all 8)

### Visionary (8 of 8)

Internal clusters identified (3 clusters):

| Cluster | Questions (cluster order) |
|---|---|
| C1: Relationship-with-body reimagining | Q1 (health monitoring as conversation — bidirectional feedback architecture), Q2 (health emergence rather than measurement — unique physiological signature), Q5 (cultivating embodied awareness — somatic literacy amplifier) |
| C2: Device-form-and-boundary reimagining | Q3 (privacy as design philosophy creating new capabilities — insights emerge locally), Q4 (dissolve the boundary between device and body — bio-native sensing architecture) |
| C3: Lifecycle-and-ecosystem reimagining | Q6 (10-year relationship rather than 2-year product cycle — lifelong companion), Q7 (invert consumer/clinical binary — fundamentally new category), Q8 (node in new health ecosystem — collective intelligence with individual privacy) |

Round 1: Q1, Q3, Q6 → 3
Round 2: Q2, Q4, Q7 → 6
Round 3 (largest = C1 has 1 left; C3 has 1 left; take C1 first): Q5 → 7
Round 4 (C3 has 1 left): Q8 → 8 selected — quota met (all 8)

### Constraint Flipper (8 of 8)

Internal clusters identified (3 clusters):

| Cluster | Questions (cluster order) |
|---|---|
| C1: Technical constraints as privacy / regulatory advantage | Q1 (7-day battery constraint as privacy advantage — aggressive power optimization prohibiting cloud transmission), Q2 (NPU limits as regulatory asset — smaller/simpler models are more inspectable), Q3 (limited local storage as privacy-preserving feature — data retention policies embracing constraint) |
| C2: Compliance-and-business-model constraints as advantages | Q4 (HIPAA compliance as market differentiator — "data never leaves device" as premium positioning), Q5 (no-cloud-processing as UX feature — instant always-available insights, reliability in emergency), Q6 (regulatory constraints as innovation roadmap — consumer wellness today as clinical clearance foundation tomorrow) |
| C3: Operational constraints as strategic advantage | Q7 (conservative alerting as user trust advantage — leaning into the over-alert vs under-alert tension), Q8 (small team of 12 engineers as regulatory navigation advantage — faster iteration, tighter documentation discipline) |

Round 1: Q1, Q4, Q7 → 3
Round 2: Q2, Q5, Q8 → 6
Round 3 (largest = C1 has 1 left; C2 has 1 left; take C1 first): Q3 → 7
Round 4 (C2 has 1 left): Q6 → 8 selected — quota met (all 8)

### Connector (7 of 7)

Connector is Tier 3 Perspective that replaces Analogist when selected. Per persona-selection-guide: "Operates in three sub-modes: cross-domain import (~35%, overlaps with Analogist), structural isomorphism (~30%, unique), recombinant innovation (~35%, unique)." At wearable-device, the inter-domain reconciliation triggers (biological/technical/regulatory/ecosystem) activate all three sub-modes cleanly.

Internal clusters identified (3 clusters, mirroring the three Connector sub-modes):

| Cluster | Questions (cluster order) |
|---|---|
| C1: Cross-domain import (biological / natural systems) | Q1 (biological nervous system parallel — reflex-arc local processing before cortical summarization; hierarchical on-device ML pipeline) |
| C2: Structural isomorphism (same problem, different domain) | Q3 (automotive safety-critical systems — multiple redundant safety systems with different complexity levels; layered redundancy for fail-safe anomaly detection), Q4 (privacy-accuracy symbiosis — HIPAA on-device constraint and 7-day power constraint both push toward edge-compute efficiency; solving one accelerates the other), Q5 (regulatory tailwinds — fintech/aerospace wellness-to-enterprise transitions as structural parallels for wellness-to-clinical) |
| C3: Recombinant innovation (combining systems) | Q2 (game design progression systems — adaptive difficulty running client-side; on-device personalization of anomaly thresholds), Q6 (companion app as compute partner — smartphone idle compute handoff protocol during charging; optimal sensor placement across ecosystem), Q7 (firmware update as personalization channel — A/B testing + federated recommendation systems; on-device experimentation infrastructure) |

Round 1 (one per cluster): Q1, Q3, Q2 → 3 selected
Round 2 (largest cluster: C2 has 2 left, C3 has 2 left; take C2 first): Q4 → 4
Round 3 (C3 has 2 left): Q6 → 5
Round 4 (C2 has 1 left): Q5 → 6
Round 5 (C3 has 1 left): Q7 → 7 selected — quota met (all 7)

---

## Expected Append Output

Order: Provocateur → Storyteller → Visionary → Constraint Flipper → Connector (matching test-data ordering where Connector appears as the Tier 1 Perspective slot having replaced Analogist).

| # | Cluster (within persona) | Persona | Question (short reference) | Tag |
|---|---|---|---|---|
| 1 | Measurement inversion | Provocateur | Q1 — device actively ignores your health data | [Provocateur · Measurement-inversion] |
| 2 | Privacy inversion | Provocateur | Q3 — monitors everyone except the wearer | [Provocateur · Privacy-inversion] |
| 3 | Business/regulatory inversion | Provocateur | Q4 — no battery, dies every 24 hours | [Provocateur · Lifecycle-inversion] |
| 4 | Measurement inversion | Provocateur | Q2 — ML deliberately worse, embraces uncertainty | [Provocateur · Measurement-inversion] |
| 5 | Privacy inversion | Provocateur | Q5 — HIPAA requires MORE data sharing, not less | [Provocateur · Privacy-inversion] |
| 6 | Business/regulatory inversion | Provocateur | Q7 — FDA requires device to fail for some users | [Provocateur · Regulatory-inversion] |
| 7 | Privacy inversion | Provocateur | Q6 — ML trains only on wearer then deletes itself | [Provocateur · Privacy-inversion] |
| 8 | Business/regulatory inversion | Provocateur | Q8 — charge per detected anomaly | [Provocateur · Business-inversion] |
| 9 | Alert-moment | Storyteller | Q1 — Marcus, 52, 3 AM alert with family history | [Storyteller · Alert-moment] |
| 10 | Silent-monitoring | Storyteller | Q2 — Elena, 6 months silent then Tuesday alert | [Storyteller · Silent-monitoring] |
| 11 | Identity/relationship | Storyteller | Q3 — holiday dinner table "is that the heart thing?" | [Storyteller · Identity] |
| 12 | Alert-moment | Storyteller | Q4 — boy-who-cried-wolf in reverse; trust-breaking event | [Storyteller · Alert-moment] |
| 13 | Silent-monitoring | Storyteller | Q6 — data diary no one else can see | [Storyteller · Silent-monitoring] |
| 14 | Identity/relationship | Storyteller | Q5 — wellness device transforms to medical tool via FDA update | [Storyteller · Identity] |
| 15 | Silent-monitoring | Storyteller | Q7 — James, battery dies during high-stress week | [Storyteller · Silent-monitoring] |
| 16 | Identity/relationship | Storyteller | Q8 — handing down the health narrative to adult child | [Storyteller · Intergenerational] |
| 17 | Relationship-with-body | Visionary | Q1 — health monitoring as conversation | [Visionary · Bidirectional] |
| 18 | Device-form | Visionary | Q3 — privacy as design philosophy creating new capabilities | [Visionary · Privacy-form] |
| 19 | Lifecycle-ecosystem | Visionary | Q6 — 10-year lifelong-companion relationship | [Visionary · Lifecycle] |
| 20 | Relationship-with-body | Visionary | Q2 — health emergence rather than measurement | [Visionary · Emergence] |
| 21 | Device-form | Visionary | Q4 — dissolve device/body boundary bio-native sensing | [Visionary · Bio-native] |
| 22 | Lifecycle-ecosystem | Visionary | Q7 — invert consumer/clinical binary into new category | [Visionary · Category-creation] |
| 23 | Relationship-with-body | Visionary | Q5 — cultivating embodied awareness / somatic literacy | [Visionary · Embodied] |
| 24 | Lifecycle-ecosystem | Visionary | Q8 — node in new health ecosystem (collective + private) | [Visionary · Ecosystem] |
| 25 | Technical-as-advantage | Constraint Flipper | Q1 — battery constraint as privacy advantage | [CF · Technical] |
| 26 | Compliance-as-advantage | Constraint Flipper | Q4 — HIPAA as market differentiator | [CF · Compliance] |
| 27 | Operational-as-advantage | Constraint Flipper | Q7 — conservative alerting as trust advantage | [CF · Operational] |
| 28 | Technical-as-advantage | Constraint Flipper | Q2 — NPU limits as regulatory asset | [CF · Technical] |
| 29 | Compliance-as-advantage | Constraint Flipper | Q5 — no-cloud-processing as UX feature | [CF · Compliance] |
| 30 | Operational-as-advantage | Constraint Flipper | Q8 — 12-engineer small team as regulatory advantage | [CF · Operational] |
| 31 | Technical-as-advantage | Constraint Flipper | Q3 — limited storage as privacy-preserving feature | [CF · Technical] |
| 32 | Compliance-as-advantage | Constraint Flipper | Q6 — regulatory constraints as innovation roadmap | [CF · Compliance] |
| 33 | Cross-domain import | Connector | Q1 — biological nervous system hierarchical processing | [Connector · Biological-import] |
| 34 | Structural isomorphism | Connector | Q3 — automotive safety-critical redundant systems | [Connector · Isomorphism] |
| 35 | Recombinant innovation | Connector | Q2 — game design adaptive progression systems | [Connector · Recombinant] |
| 36 | Structural isomorphism | Connector | Q4 — privacy-accuracy symbiosis (HIPAA + power) | [Connector · Isomorphism] |
| 37 | Recombinant innovation | Connector | Q6 — companion app as compute partner (idle smartphone) | [Connector · Recombinant] |
| 38 | Structural isomorphism | Connector | Q5 — regulatory tailwinds (fintech/aerospace transitions) | [Connector · Isomorphism] |
| 39 | Recombinant innovation | Connector | Q7 — firmware update as personalization channel | [Connector · Recombinant] |

**Total appended questions: 39**

---

## Integration Notes (per D1 tagging rules)

Each appended question carries a `[Persona · Internal-Cluster]` tag in the Phase 2C output. The cluster name need not be standardized across personas (each persona has its own cluster vocabulary). The persona name is mandatory; the internal-cluster tag is recommended for downstream Phase 3 routing.

**Placement in Phase 2C output:** All 39 appended questions appear in their own section after the Synthesize-group output, organized by persona (preserving the round-robin order within each persona). They are *not* interleaved with the synthesized cluster output — Append voices are kept visually distinct to preserve their disruptive value.

**Cross-cluster overlap with Synthesize universe:** Several Append questions overlap thematically with Synthesize clusters (noted in B1 / B2):

- **Provocateur Q1** (device ignores your data) overlaps Cluster 5 (hyper-vigilance) Synthesize content — but the *inversion framing* (deliberately obscuring metrics to foster attunement) is the value add and cannot be recovered by synthesis. Per D1, not removed.
- **Provocateur Q2** (ML deliberately worse) inverts CG-13 (alert threshold calibration). Inversion framing preserved.
- **Provocateur Q3** (monitors everyone except wearer) inverts CG-2 (re-identification) and Cluster 11 (accessibility). Inversion framing preserved.
- **Provocateur Q4** (daily battery death) inverts CG-17 (battery degradation / charging gap dynamics). Inversion framing preserved.
- **Provocateur Q5** (HIPAA requires MORE sharing) inverts CG-3 (privacy as felt trust) and CG-1 (data pipeline). Inversion framing preserved.
- **Provocateur Q6** (ML trains only on wearer then deletes) inverts CG-10 (model updates / federated learning) and Cluster 8 (personalization validation). Inversion framing preserved.
- **Provocateur Q7** (FDA requires device to fail) inverts Cluster 11 (accessibility) and Cluster 2 (regulatory pathway). Inversion framing preserved.
- **Provocateur Q8** (charge per anomaly) inverts Cluster 10 (business model). Inversion framing preserved.
- **Storyteller Q1** (Marcus 3 AM alert) overlaps CG-14 (alert comprehension preserve-distinct) and Empath Q3 (false alarms emotional whiplash). Narrative-specificity ("52-year-old, family history, gentle vibration on wrist") is Storyteller's contribution.
- **Storyteller Q2** (Elena 6 months silent) overlaps CG-15 (hyper-vigilance reinforcement cycle). Narrative framing preserved.
- **Storyteller Q3** (dinner table identity) overlaps Cluster 5 (hyper-vigilance). Social-narrative framing distinct.
- **Storyteller Q4** (trust recovery after false positive) overlaps CG-14 (alert comprehension). Recovery-narrative framing preserved.
- **Storyteller Q5** (wellness-to-medical transformation) overlaps Cluster 2 (regulatory pathway) and CG-8 (wellness-clinical interpretation preserve-distinct). Narrative specificity preserved.
- **Storyteller Q6** (data diary) overlaps Cluster 1 (privacy) and Cluster 8 (personalization). Phenomenological-narrative framing distinct.
- **Storyteller Q7** (James battery dies) overlaps CG-17 (charging gap). Narrative specificity preserved.
- **Storyteller Q8** (handing down health narrative) overlaps Cluster 10 (lifecycle) and CG-18 (personalization). Intergenerational-narrative framing unique to Storyteller.
- **Visionary Q1** (health as conversation) inverts CG-15 (hyper-vigilance as passive-monitoring-burden) into active-dialogue framing. Paradigm-reimagination preserved.
- **Visionary Q2** (health emergence not measurement) inverts CG-18 (anomaly detection primitive) from population-baseline to personal-signature. Paradigm-reimagination distinct.
- **Visionary Q3** (privacy as design philosophy) overlaps CG-3 (privacy as felt trust). Blue-sky framing vs architecture-framing distinguished; both appear.
- **Visionary Q4** (dissolve device/body boundary) challenges the form-factor assumption that FPT Q1 (why a wearable) also addresses. Paradigm-reimagination vs reductive-challenge mode distinguishes them; both appear.
- **Visionary Q5** (cultivating embodied awareness) inverts Cluster 4 (alerts) from notification-delivery to somatic-literacy-amplification. Paradigm-reimagination preserved.
- **Visionary Q6** (10-year relationship) overlaps Cluster 10 (wearable category evolution). Lifelong-companion framing distinct from trend-bifurcation framing.
- **Visionary Q7** (invert consumer/clinical binary) overlaps CG-5 (wellness/clinical boundary). Category-creation framing vs pathway-navigation framing distinguishes; both appear.
- **Visionary Q8** (new health ecosystem) overlaps Cluster 1 (privacy) and Cluster 2 (clinical integration). Cryptographic-plus-collective framing distinct.
- **Constraint Flipper Q1** (battery as privacy advantage) inverts CG-16 (power budget) and CG-3 (privacy). Inversion operation is the value add.
- **Constraint Flipper Q2** (NPU limits as regulatory asset) inverts CG-9 (model architecture NPU utilization) from "compute constraints limit accuracy" to "compute constraints ease regulatory inspection." Inversion preserved.
- **Constraint Flipper Q3** (limited storage as privacy feature) inverts Cluster 1 (data retention) and Cluster 8 (personalization). Inversion preserved.
- **Constraint Flipper Q4** (HIPAA as differentiator) inverts CG-1 (HIPAA data segmentation as compliance) to "HIPAA as market advantage." Inversion preserved.
- **Constraint Flipper Q5** (no-cloud as UX feature) inverts CG-3 (privacy trust) from compliance framing to reliability framing. Inversion preserved.
- **Constraint Flipper Q6** (regulatory as innovation roadmap) inverts CG-5 (wellness/clinical boundary) — flips "dual-path complexity" into "regulatory-driven development path." Inversion preserved.
- **Constraint Flipper Q7** (conservative alerting as trust) inverts CG-13 (alert threshold calibration) from "minimize false positives" to "over-alerting builds engagement." Inversion preserved.
- **Constraint Flipper Q8** (small team as regulatory advantage) inverts DA Q14 (runway reality) from "tight resources" to "agile documentation." Inversion preserved.
- **Connector Q1** (biological nervous system parallel) overlaps Cluster 3 (ML hierarchy) and Cluster 6 (sensor fusion). Import framing distinct.
- **Connector Q2** (game design progression) overlaps Cluster 8 (on-device personalization — TE Q3). Recombinant framing from adaptive-difficulty literature is Connector-unique.
- **Connector Q3** (automotive safety-critical systems) overlaps Cluster 4 (alert design) and Cluster 3 (fault tolerance — TE Q9). Structural-isomorphism framing distinct from engineering specifics.
- **Connector Q4** (privacy-accuracy symbiosis) overlaps CG-1 (privacy), CG-9 (ML architecture), CG-16 (power budget). Isomorphism framing ("both constraints push toward the same solution") is Connector-distinctive.
- **Connector Q5** (regulatory tailwinds fintech/aerospace) overlaps CG-5 (wellness/clinical boundary). Historical-parallels framing distinct from pathway-analytical framing.
- **Connector Q6** (companion app as compute partner) overlaps Cluster 3 (ML updates) and ST Q12 (companion app bidirectional). Recombinant-innovation framing (idle-smartphone-compute) distinct from bidirectional-loop framing.
- **Connector Q7** (firmware update as personalization channel) overlaps CG-10 (model updates) and TE Q3 (on-device personalization). Recombinant framing (A/B testing + federated recommendations) is Connector-unique.

Per D1, these overlaps are **not resolved by dropping the Append question** — each Append persona's distinctive framing is the contribution. A variant that drops CF Q1/Q2/Q4 because they "duplicate" synthesis content is failing SQ4.

---

## Appended Questions Expected to Be Dropped

**At high effort, no Append questions are expected to be dropped for this cell.** D1 explicitly states for Tier 1 Perspective: "All (5-8) — No selection needed — append everything." Constraint Flipper at "3-5" (D1) in this constraint-rich cell activates all 8. Connector Tier 3 Perspective inherits Analogist's Append mechanics at high effort → "all 5-8" → all 7.

A_quota = A_available = 39.

**Possible exceptions (none recommended for SP1 baseline):**
- If SP1 variants apply CF round-robin to limit at 3-5 (lower D1 high-effort range), CF Q3, Q6, Q8 are the candidates to drop (cluster-tail positions). This is in-range per D1 but suboptimal for this cell — wearable-device's constraint stack (battery, NPU, storage, HIPAA, no-cloud, regulatory pathway, alerting-trust, team size) activates all 8 CF questions cleanly. Each CF question hits a different constraint angle.
- If SP1 variants treat Connector as Tier 3 Synthesize (incorrectly reading persona-selection-guide), they would route Connector Q1 (biological hierarchy) into Cluster 3 ML architecture merger, Q3 (automotive safety) into Cluster 4 alert design, Q4 (privacy-accuracy symbiosis) into CG-1 privacy merger, Q5 (regulatory tailwinds) into CG-5 wellness-clinical merger, Q6 (companion app compute) into Cluster 3 model updates, Q7 (firmware personalization) into CG-10. This collapses the distinctive Connector vocabulary (structural isomorphism, recombinant innovation, cross-domain imports) — treat as SQ4 systemic fail.
- If SP1 variants under-count Storyteller or Visionary by applying volume caps (none in D1), they would drop cluster-tail questions. Treat any such drop as a variant deviation from D1, not as a baseline-defensible reduction.
- If SP1 swaps Connector back to Analogist by default (ignoring GT1 Rev 3 swap), it would expect 8 Analogist questions that do not exist in the test data. This would produce an immediate size-mismatch with the Append universe and should be detectable pre-scoring.

**Drop scoring for SP1:**
- Synthesize-side absorbing any Append question = drop fail
- Append section missing Provocateur, Storyteller, Visionary, or Connector questions = SQ4 fail (each persona must have ≥5 of its questions present)
- Append section missing 2+ Constraint Flipper questions = SQ4 partial fail (CF count of 6-8 acceptable; below 6 fails given this cell's constraint richness)
- Connector questions collapsed into Synthesis mergers rather than appended = SQ4 systemic fail (indicates variant misreads Connector's Append designation)
- Connector questions missing entirely because SP1 defaulted to Analogist = SQ4 catastrophic fail (GT1 swap ignored)

---

## Cell-Specific Append Notes

1. **Connector is the highest-risk Append persona for this cell.** Connector replaces Analogist per GT1 Rev 3 and per persona-selection-guide "Swap Analogist → Connector when: topic requires bridging, merging, or reconciling distinct systems." Wearable-device has a clear inter-domain reconciliation trigger (biological/technical/regulatory/ecosystem), so the swap is correct. However, SP1 variants that default to Analogist by template will miss Connector entirely; variants that route Connector through synthesis will strip isomorphism/recombinant vocabulary; variants that maintain Connector as Append but treat import-mode questions (Q1 biological nervous system) as convergent with Cluster 3 (ML architecture) will collapse the distinctive framing.

2. **Connector Q4 (privacy-accuracy symbiosis) is the clearest test of isomorphism-mode preservation.** The question argues that HIPAA constraints and power constraints "both push toward edge-compute efficiency — solving one accelerates solutions for the other." This is Connector's unique isomorphism mode — no Synthesize persona would make this cross-constraint argument. SP1 variants that strip this question or route it through CG-1/CG-16 mergers lose the isomorphism framing entirely.

3. **Storyteller Q8 (handing down health narrative) is a load-bearing Append question.** It extends the narrative arc to intergenerational transfer — a unique framing that no Synthesize persona addresses. Combining with Visionary Q6 (10-year relationship) and Connector Q5 (regulatory tailwinds — cross-generation product maturation), this anchors a multi-decade time horizon in the Phase 2C output that the Synthesize clusters don't address directly.

4. **Visionary Q4 (dissolve device/body boundary) overlaps FPT Q1 (why a wearable at all) but is not redundant.** FPT Q1 asks "why a wrist-worn form factor" as a reductive-analytical challenge. Visionary Q4 asks "design from a bio-native sensing architecture with no legacy constraints" as an aspirational reimagining. Both should appear: FPT Q1 in Cluster 10 or Cluster 8 (Synthesize), Visionary Q4 in Append. SP1 should check this distinction.

5. **Provocateur's absurd-inversion format is strongly activated at this cell.** All 8 Provocateur questions are tight, bounded provocations with single "real insight" framing (e.g., "what if our obsession with measurement is part of the problem, not the solution?"). Each question inverts a cluster theme from B1: measurement (Cluster 5), privacy (Cluster 1), battery (Cluster 7), alerts (Cluster 4), regulatory (Cluster 2), clinical validation (Cluster 8), accessibility (Cluster 11), business model (Cluster 10). Provocateur coverage is unusually complete for this cell.

6. **CF's 8-question complete set activates all major constraint domains.** Wearable-device has 8 distinct named constraints (battery, NPU compute, local storage, HIPAA on-device, no-cloud processing, regulatory pathway, alerting-trust, team size), each hitting a different CF inversion. Each CF cluster has at least 2 questions. The 3-5 D1 range is a floor, not a ceiling; SP1 variants that cap CF at 5 leave 3 questions on the table, each hitting a distinct constraint — suboptimal for constraint-rich topic, but in-range per D1. Treat as "not ideal" rather than "fail."

7. **Connector has 7 questions (not 8 like the others) because its volume is 7-8 (mean 7.7 per persona-selection-guide).** This slight asymmetry is expected — Connector's 3-cluster structure (import, isomorphism, recombinant) has exactly 1+3+3 = 7 questions for this topic (Q1 import; Q3/Q4/Q5 isomorphism; Q2/Q6/Q7 recombinant). SP1 should not expect exactly 8 Connector questions; 7 is correct.

8. **Total Phase 2C output (83 questions = 44 Synthesize + 39 Append) sits squarely within the persona-selection-guide high-effort guideline (~55-90).** Total is not inflated by this cell's Append composition — Connector at 7 rather than 8 offsets the addition of Constraint Flipper at 8 rather than 3-5. This is GT1-composition-driven, not variant-driven.

9. **Append-side dimension contribution:** Provocateur pushes **Creative** and **Analytical** (inversion is often analytically framed). Storyteller pushes **Human-centered**. Visionary pushes **Creative**. Constraint Flipper pushes **Creative** and **Strategic** (constraints-as-advantages are strategic reframings). Connector pushes **Analytical** + **Creative** (isomorphism is analytical; recombinant is creative). Total Append dimension profile is Creative-dominated (~55%) with significant Analytical (~25%) and Human-centered (~15%) — different from Synthesize's Analytical-dominated profile.

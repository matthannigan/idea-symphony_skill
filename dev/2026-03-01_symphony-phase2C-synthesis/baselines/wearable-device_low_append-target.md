# wearable-device — low — Append Target

**Append personas:** Provocateur, Connector (replaces Analogist per GT1/R7), Visionary, Storyteller
**Available (A_available):** 31 (Provocateur 8 + Connector 7 + Visionary 8 + Storyteller 8)
**Quota (D1) (A_quota):** 12 (4 personas × 3 questions per D1 low-effort spec)
**Selection method (D1):** "One per cluster, round-robin." Each persona's questions are pre-clustered (D1 + persona-selection guide note universal ~3-cluster structure for Perspective personas at 5-8 volume). Quota of 3 per persona × 3 internal clusters per persona = exactly one question from each persona-internal cluster.

**Persona-roster note:** GT1 Rev 3 prescribes Connector (not Analogist) for wearable-device on the R7 criterion that this topic requires bridging distinct systems that constrain each other (hardware + ML + regulatory + privacy + business model). Per R7, Connector inherits Analogist's append mechanics cleanly (same 3-cluster structure, same self-containment, same round-robin compatibility), so the D1 round-robin mechanics apply unchanged to the Connector slot.

---

## Persona-Internal Cluster Map

Inspection of the 4 Append personas' source questions yields the following internal cluster structures. None of the four personas supply explicit `##` cluster headings in the test data, so cluster labels here are inferred from question content and the universal-3-cluster heuristic noted in the persona-selection guide.

### Provocateur (8 source questions → 3 clusters)

- **Cluster A — Inverting the device's measurement/alerting paradigm:** Q1 (device designed to actively ignore health data — obscures metrics, encourages body attunement), Q2 (ML model deliberately worse at anomaly detection — introduces randomness, refuses certainty), Q4 (device with no battery, dies every 24 hours — forced daily reset)
- **Cluster B — Inverting privacy/data architecture:** Q3 (monitors everyone except the wearer — community surveillance, individual data inaccessible), Q5 (HIPAA compliance requires *more* data sharing — pooled anonymized commons, blocked individual access), Q6 (ML model trained on wearer's data then deletes itself — total isolation, no federated learning)
- **Cluster C — Inverting regulatory/business-model assumptions:** Q7 (FDA 510(k) requires device to *fail* for some users — contraindicated populations; "works for everyone" as medically suspicious), Q8 (business model charges for every detected anomaly — calm-aligned profit vs. anxiety-aligned profit)

### Connector (7 source questions → 3 clusters)

Connector's three sub-modes per R7 (cross-domain import ~35%, structural isomorphism ~30%, recombinant innovation ~35%) map naturally onto the 3-cluster heuristic here. For wearable-device specifically — a topic where R7 predicts non-import-mode activation — the clusters resolve by source-domain family:

- **Cluster A — Biological / biomimetic parallels (cross-domain import mode):** Q1 (human nervous system local-processing reflex arcs → on-device ML pipeline hierarchy), Q3 (automotive safety-critical redundant systems — ABS, traction control, stability control → layered redundancy philosophy for fail-safe anomaly detection)
- **Cluster B — Structural-isomorphism parallels (same-problem recognition):** Q2 (game progression systems with adaptive difficulty from client-side behavior → personalization of anomaly thresholds), Q4 (privacy-accuracy symbiosis — HIPAA and 7-day battery both pushing toward edge-compute efficiency; differential privacy during federated learning creating power-efficient architectures), Q5 (regulatory tailwinds — wellness-to-clinical pathway paralleling fintech/aerospace consumer-to-enterprise patterns)
- **Cluster C — Recombinant-innovation parallels (what-if-we-combined):** Q6 (companion app as compute partner — smartphone idle compute + wearable continuous monitoring; handoff protocol during charging), Q7 (firmware update as personalization channel — A/B testing platforms + personalized recommendations → federated update architecture with model variants per user)

### Visionary (8 source questions → 3 clusters)

- **Cluster A — Reimagining what "monitoring" means (the device-body relationship):** Q1 (conversation rather than detection — bidirectional dialogue architecture, sensing that actively responds to physiological state), Q2 (health emergence rather than measurement — individual physiological signature as dynamic evolving pattern, learning "healthy" in real-time without population norms), Q5 (embodied awareness rather than alert delivery — somatic literacy amplifier, not monitoring tool)
- **Cluster B — Reimagining device-body-system integration (the architectural form):** Q3 (privacy as design philosophy creating new capabilities — insights emerging locally through on-device intelligence, no processed outputs leaving body), Q4 (dissolving device/body boundary — bio-native sensing architecture drawing from how organisms perceive internal state), Q6 (10-year relationship rather than 2-year product cycle — lifelong companion evolving with wearer's health journey)
- **Cluster C — Reimagining the category and ecosystem (paradigm redefinition):** Q7 (inverting medical device paradigm — third category beyond wellness/clinical binary, drawing from precision medicine + personalized health intelligence + embodied technology), Q8 (node in new health ecosystem — network spanning individuals/families/communities with cryptographic privacy; deeply personal and collectively intelligent)

### Storyteller (8 source questions → 3 clusters)

- **Cluster A — Critical moment stories (alert delivery and first-time encounters):** Q1 (Marcus, 52, middle-of-the-night 3 AM alert, family history of heart disease — first-alert emotional/practical journey), Q2 (Elena's "watchful shadow" — six months of silence then Tuesday alert; how prolonged normality shapes reaction), Q7 (James, battery dies after 7 days during high-stress week — "naked wrist" vulnerability during charging)
- **Cluster B — Identity and social narrative stories (device in relationships):** Q3 (holiday dinner table — "Is that the heart thing?"; device as part of identity and social narrative; empowering/defining across personality types), Q6 (data diary no one else can see — psychological experience of carrying intimate body-knowledge that remains opaque; new forms of anxiety or peace of mind), Q8 (handing down a health narrative — parent passes device/insights to adult child with shared genetic risk; intergenerational baselines)
- **Cluster C — Trust-and-transition stories (relationship evolution over time):** Q4 (device misses something / unnecessary ER false positive — trust-breaking event; recovery narrative over days/weeks), Q5 (wellness device becomes FDA-cleared medical tool two years later — user relationship evolves; fitness accessory becomes medical instrument)

---

## Round-Robin Walkthrough

Per D1 selection mechanics: read cluster headings → select one question from each cluster in order until the per-persona quota (3) is met → append to output under persona-labeled sections. Round-robin here means rotating *which persona contributes next* across rounds while each persona walks through its own clusters in sequence.

**Round 1 (each persona's Cluster A):**
- Provocateur Cluster A → **Q1** (device designed to actively ignore health data — obscures metrics, encourages body attunement over quantification)
- Connector Cluster A → **Q1** (human nervous system local-processing reflex arcs — on-device ML pipeline hierarchy mirroring biological signal aggregation)
- Visionary Cluster A → **Q1** (conversation rather than detection — bidirectional dialogue architecture between wearer's body and device)
- Storyteller Cluster A → **Q1** (Marcus at 3 AM — first-alert emotional/practical journey; balancing urgency without panic given detection uncertainty)

**Round 2 (each persona's Cluster B):**
- Provocateur Cluster B → **Q3** (device monitors everyone except the wearer — community health surveillance; individual data inaccessible)
- Connector Cluster B → **Q2** (game progression systems with adaptive difficulty — client-side learning of individual baseline patterns and anomaly threshold personalization)
- Visionary Cluster B → **Q3** (privacy as design philosophy creating new capabilities — insights emerging locally on the wrist through on-device intelligence)
- Storyteller Cluster B → **Q3** (holiday dinner table — "Is that the heart thing?"; device as identity and social narrative)

**Round 3 (each persona's Cluster C):**
- Provocateur Cluster C → **Q7** (FDA 510(k) requires device to fail for some users — "works for everyone" as medically suspicious)
- Connector Cluster C → **Q6** (companion app as compute partner — phone idle compute + wearable continuous monitoring; handoff during charging)
- Visionary Cluster C → **Q7** (inverting medical device paradigm — third category beyond wellness/clinical binary)
- Storyteller Cluster C → **Q4** (device misses something / unnecessary ER false positive — trust-breaking event and recovery narrative)

**Tie-breaking rules used:** Where a cluster contains multiple questions and only one slot is needed, the **lowest-numbered question in the source is selected**. This is a deterministic rule to avoid quality-judgment-based selection (per D1: "no quality judgment needed, just structural diversity"). Ties broken by source-order yield reproducibility across SP1 runs. Specific tie-breaks applied:

- Provocateur A (Q1/Q2/Q4 → Q1 wins)
- Provocateur B (Q3/Q5/Q6 → Q3 wins)
- Provocateur C (Q7/Q8 → Q7 wins)
- Connector A (Q1/Q3 → Q1 wins)
- Connector B (Q2/Q4/Q5 → Q2 wins)
- Connector C (Q6/Q7 → Q6 wins)
- Visionary A (Q1/Q2/Q5 → Q1 wins)
- Visionary B (Q3/Q4/Q6 → Q3 wins)
- Visionary C (Q7/Q8 → Q7 wins)
- Storyteller A (Q1/Q2/Q7 → Q1 wins)
- Storyteller B (Q3/Q6/Q8 → Q3 wins)
- Storyteller C (Q4/Q5 → Q4 wins)

---

## Expected Append Output

12 questions, organized under persona-labeled sections in the final output. Each retains its source persona attribution and verbatim text from the test data.

| # | Cluster (B1 mapping) | Persona | Source Q | Question (abridged) | Tag (per D1) |
|---|---|---|---|---|---|
| 1 | Bridge to C1 (Model Quality) / C5 (UX) | Provocateur | Q1 | What if the device was designed to actively ignore your health data? — obscures metrics, encourages body attunement over quantification; measurement obsession as part of the problem. | `[Provocateur — Measurement Inversion]` |
| 2 | Bridge to C1 (Model Quality) / C2 (Hardware) | Connector | Q1 | Biological nervous system parallel — human nervous system processes most signals locally (reflex arcs) before sending summaries to the brain; on-device ML pipeline hierarchy and which anomalies need immediate local processing vs. periodic sync. | `[Connector — Source: Biology]` |
| 3 | Bridge to C5 (UX) / C1 (Model Quality) | Visionary | Q1 | What if health monitoring wasn't about detection but about conversation? — feedback architecture where the device's sensing modalities actively respond to physiological state changes; bidirectional relationship between wearer and technology. | `[Visionary — Monitoring Reimagined]` |
| 4 | Bridge to C5 (UX / Alert Delivery) | Storyteller | Q1 | The middle-of-the-night moment — Marcus, 52, family history of heart disease, wakes at 3 AM to the device's alert; the emotional/practical journey through first alert to decision; designing urgency without panic when the device itself acknowledges uncertainty. | `[Storyteller — First Alert]` |
| 5 | Bridge to C4 (Privacy) / C7 (Business/Lock-in) | Provocateur | Q3 | What if the wearable monitored everyone except the wearer? — "community health surveillance" tracking patterns across households, workplaces, friend groups, with individual data literally inaccessible to the person it came from. | `[Provocateur — Privacy Inversion]` |
| 6 | Bridge to C8 (Learning Loops) / C1 (Model Quality) | Connector | Q2 | Game design progression systems parallel — adaptive difficulty based on player behavior, often client-side with minimal server communication; principles informing how the device learns individual baseline patterns and personalizes anomaly thresholds. | `[Connector — Source: Game Design]` |
| 7 | Bridge to C4 (Privacy) / C2 (Hardware) | Visionary | Q3 | What would a device look like if it treated privacy not as a constraint but as a design philosophy creating entirely new capabilities? — data genuinely never leaves the body, not even as processed outputs; insights, patterns, and even guidance emerging locally through a new kind of on-device intelligence. | `[Visionary — Privacy as Capability]` |
| 8 | Bridge to C5 (UX) / C4 (Social Visibility) | Storyteller | Q3 | The dinner table conversation — holiday gathering; "Is that the heart thing?"; device as part of identity and social narrative; empowered, protected, or defined; differences across personality types and health anxiety levels. | `[Storyteller — Identity & Social Narrative]` |
| 9 | Bridge to C3 (Regulatory / Wellness-Clinical) / C6 (Bias) | Provocateur | Q7 | What if FDA 510(k) clearance required the device to *fail* for some users? — contraindicated populations explicitly documented; "works for everyone" as medically suspicious; universal design aspirations as obstacle to acknowledging no health solution works equally across all bodies. | `[Provocateur — Regulatory Inversion]` |
| 10 | Bridge to C2 (Hardware) / C8 (Architecture) | Connector | Q6 | Companion app as compute partner — most wearable architectures treat the phone as dumb display/storage; smartphones have powerful idle processors; handoff protocol where wearable does continuous lightweight monitoring and phone handles intensive computations during charging; implications for sensor placement and power distribution. | `[Connector — Recombinant Innovation]` |
| 11 | Bridge to C3 (Regulatory) / C7 (Business) | Visionary | Q7 | What if we inverted the medical device paradigm entirely? — not a consumer device that might eventually become clinical, but a fundamentally new third category drawing from precision medicine, personalized health intelligence, and embodied technology — one the current regulatory framework cannot conceptualize. | `[Visionary — Category Redefinition]` |
| 12 | Bridge to C5 (UX / Trust) / C1 (Model Quality) | Storyteller | Q4 | The "boy who cried wolf" problem in reverse — device misses something significant, or false positive leads to unnecessary ER visit; recovery narrative over days and weeks; systems or interactions rebuilding (or deepening) the relationship. | `[Storyteller — Trust Breaking & Recovery]` |

**Cluster bridging summary:** The 12 appended questions distribute across the B1 clusters as follows: C1 (bridges from 4 questions), C2 (bridges from 2), C3 (bridges from 2), C4 (bridges from 3), C5 (bridges from 5 — the most), C6 (bridges from 1), C7 (bridges from 2), C8 (bridges from 2). Every cluster except the business cluster has at least one Append bridge, and every Append question bridges to at least one cluster. This is a notably well-distributed set — more so than food-truck/low (where C1 received no Append) — reflecting that wearable-device's Append personas operate natively across the same conceptual surface as the Synthesize group (privacy, detection, monitoring, regulatory, UX) rather than in orthogonal register. The Connector persona specifically bridges into C8 (Learning) and C2 (Hardware) in ways Analogist would not have — Connector's isomorphism/recombination modes (Q2 game-design personalization, Q6 companion-app handoff) provide structural bridges that don't exist in Analogist's pure cross-domain-import mode.

---

## Integration Notes (per D1 tagging convention)

D1 specifies that appended questions retain persona attribution and exist in a different register from synthesized questions — they are *not* dimensionally balanced against the Synthesize output. The integration into the final output should:

1. **Place appended questions in a clearly demarcated section** after the synthesized clusters — e.g., "Provocations, Bridges, and Reimaginations" — so consumers see them as additive provocations rather than peer questions to the synthesized analytical core.
2. **Group by persona within the appended section** so each persona's distinct register reads coherently. Order: Provocateur → Connector → Visionary → Storyteller (alphabetical within Append group; note Connector replaces Analogist's alphabetical slot).
3. **Tag each appended question with persona name and a short cluster descriptor** (e.g., `[Provocateur — Measurement Inversion]`, `[Connector — Source: Biology]`). For Connector specifically, the tag should indicate the sub-mode (Source: [domain] / Structural Isomorphism / Recombinant Innovation) per R7 — this surfaces Connector's distinctive non-import-mode contributions where they exist.
4. **Do not merge appended questions with synthesized questions even when they touch the same concern.** E.g., Connector Q2 (game-design personalization) touches C8 (learning loops) and C1 (model personalization), but D1 treats it as orthogonal — it preserves the persona's distinctive cognitive mode rather than fill a Synthesize gap.
5. **Preserve verbatim text.** Append-group questions are not edited, condensed, or reformatted. The "real insight" footers in Provocateur questions (e.g., *"The real insight: what if our obsession with measurement is part of the problem, not the solution?"*) are preserved as part of the question.

---

## Expected to Drop (Append-available — 19 of 31)

Per D1 quota math (A_available 31 − A_quota 12 = 19 dropped). Drops are the questions in each persona's clusters that lose round-robin tie-breaks to lower-numbered questions:

| Persona | Dropped Source Qs | Cluster | Reason |
|---|---|---|---|
| Provocateur | Q2, Q4 | A | Lost A-cluster slot to Q1 |
| Provocateur | Q5, Q6 | B | Lost B-cluster slot to Q3 |
| Provocateur | Q8 | C | Lost C-cluster slot to Q7 |
| Connector | Q3 | A | Lost A-cluster slot to Q1 |
| Connector | Q4, Q5 | B | Lost B-cluster slot to Q2 |
| Connector | Q7 | C | Lost C-cluster slot to Q6 |
| Visionary | Q2, Q5 | A | Lost A-cluster slot to Q1 |
| Visionary | Q4, Q6 | B | Lost B-cluster slot to Q3 |
| Visionary | Q8 | C | Lost C-cluster slot to Q7 |
| Storyteller | Q2, Q7 | A | Lost A-cluster slot to Q1 |
| Storyteller | Q6, Q8 | B | Lost B-cluster slot to Q3 |
| Storyteller | Q5 | C | Lost C-cluster slot to Q4 |

**Drop count:** 19 of 31 (61%). This sits just at the top of D1's "40-60% discarded at low effort" band. Driver is that three personas (Provocateur, Visionary, Storyteller) have 8 questions each while the universal 3-cluster structure means each persona's densest cluster (typically 3 questions) produces 2 drops. Not a quality concern per D1; a function of the 8-question generation ceiling mapping cleanly onto 3 internal clusters.

**Notable drops worth flagging:**

- **Provocateur Q8** (business model charges for every detected anomaly — calm-aligned profit): Would have bridged to C7 (Business Model). Lost to Q7 via source-order tie-break. The business-model inversion is a distinctive Provocateur contribution to C7 that the selected Q7 (regulatory-failure inversion) does not replace. SP1 prompt design could consider allowing a "fill underrepresented B1 clusters" rule as a tie-break override, but D1 specifies no such override — the deterministic source-order rule holds.
- **Connector Q4** (privacy-accuracy symbiosis — HIPAA and 7-day battery both pushing toward edge-compute efficiency): Would have been a strong C2/C4 bridge surfacing Connector's structural-isomorphism mode. Lost to Q2 via source-order tie-break. Q4 represents exactly the kind of non-import-mode Connector value that R7 predicts for wearable-device; its drop means one of Connector's most distinctive contributions is excluded.
- **Connector Q5** (regulatory tailwinds — wellness-to-clinical pathway paralleling fintech/aerospace consumer-to-enterprise patterns): Would have added a distinctive historical-regulatory analogy to C3. Lost to Q2 via tie-break. Q5 is a cross-industry-regulatory pattern that no Synthesize persona generates.
- **Visionary Q4** (dissolving device/body boundary — bio-native sensing): Would have been a distinctive architectural-form reimagining for C2. Lost to Q3 via tie-break.
- **Visionary Q8** (node in new health ecosystem — cryptographic privacy spanning individuals/families/communities): Would have added a network-reimagining framing to C4 (Privacy) / C8 (Learning). Lost to Q7 via tie-break.
- **Storyteller Q8** (handing down a health narrative — parent passes device/insights to adult child with shared genetic risk; intergenerational baselines): Distinctive intergenerational framing that no Synthesize persona generates; would have been a strong C7 (end-of-life / portability) bridge. Lost to Q3 via tie-break.

**Pattern flag for SP1 / PC1 design:** The Connector drops (Q4, Q5, Q7) are especially costly because they are specifically the non-import-mode questions (structural isomorphism, recombinant innovation) that R7 identifies as Connector's distinctive value above Analogist. The tie-break rule favors Connector's Cluster A (biological/biomimetic import mode — Q1 wins against Q3) which happens to be the mode most similar to Analogist. This means the deterministic D1 round-robin may systematically under-surface Connector's distinctive-over-Analogist contributions. A medium-effort variant (quota 5) would recover 2 of the 3 non-import questions; high-effort (all 5-8) captures all of them. This is not a scoring concern for SP1 on low-effort cells but may be worth noting in the cross-topic BL1 synthesis as a Connector-specific Append-mechanics observation.

**Note for SP1:** D1 explicitly states "discarded questions remain in `questions/by-persona/` for review" — the dropped 19 are not lost from the session record, only from the appended output. SP1 should not penalize a synthesizer for failing to include any of the 19 dropped questions; only the 12 selected above are scoring targets.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (wearable-device / low cell)

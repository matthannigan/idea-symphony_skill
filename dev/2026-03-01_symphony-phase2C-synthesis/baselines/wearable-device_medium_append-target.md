# wearable-device — medium — Append Target

**Append personas:** Provocateur, Connector (replaces Analogist per GT1/R7), Visionary, Storyteller
**Available (A_available):** 31 (Provocateur 8 + Connector 7 + Visionary 8 + Storyteller 8)
**Quota (D1) (A_quota):** 20 (4 personas × 5 questions per D1 medium-effort spec)
**Selection method (D1):** "One per cluster, then fill from largest clusters." Each persona's questions are pre-clustered into ~3 internal clusters (per the universal-3-cluster heuristic for Perspective personas at 5-8 volume). Quota of 5 per persona × 3 internal clusters per persona = one question from each cluster (3) + 2 additional drawn from the largest clusters, using the deterministic "lowest-numbered source question wins" tie-break rule.

**Persona-roster note:** GT1 Rev 3 prescribes Connector (not Analogist) for wearable-device on the R7 criterion that this topic requires bridging distinct systems that constrain each other (hardware + ML + regulatory + privacy + business model). Per R7, Connector inherits Analogist's append mechanics cleanly (same 3-cluster structure, same self-containment, same round-robin compatibility), so the D1 round-robin mechanics apply unchanged. The medium-effort quota of 5 is a structural improvement for Connector relative to low-effort quota 3 — it recovers Connector's non-import-mode questions that the low-effort quota systematically drops (see "Connector-specific recovery" section below).

---

## Persona-Internal Cluster Map

The 4 Append personas are the same 4 personas used at wearable-device/low (same source data, verbatim); the internal cluster structures are identical. None of the four personas supply explicit `##` cluster headings in the test data, so cluster labels here are inferred from question content and the universal-3-cluster heuristic.

### Provocateur (8 source questions → 3 clusters)

- **Cluster A — Inverting the device's measurement/alerting paradigm:** Q1 (device designed to actively ignore health data — obscures metrics, encourages body attunement), Q2 (ML model deliberately worse at anomaly detection — introduces randomness, refuses certainty), Q4 (device with no battery, dies every 24 hours — forced daily reset)
- **Cluster B — Inverting privacy/data architecture:** Q3 (monitors everyone except the wearer — community surveillance, individual data inaccessible), Q5 (HIPAA compliance requires *more* data sharing — pooled anonymized commons, blocked individual access), Q6 (ML model trained on wearer's data then deletes itself — total isolation, no federated learning)
- **Cluster C — Inverting regulatory/business-model assumptions:** Q7 (FDA 510(k) requires device to *fail* for some users — contraindicated populations; "works for everyone" as medically suspicious), Q8 (business model charges for every detected anomaly — calm-aligned profit vs. anxiety-aligned profit)

### Connector (7 source questions → 3 clusters)

Connector's three sub-modes per R7 (cross-domain import ~35%, structural isomorphism ~30%, recombinant innovation ~35%) map naturally onto the 3-cluster heuristic. For wearable-device specifically — a topic where R7 predicts non-import-mode activation — the clusters resolve by sub-mode family:

- **Cluster A — Biological / biomimetic parallels (cross-domain import mode):** Q1 (human nervous system local-processing reflex arcs → on-device ML pipeline hierarchy), Q3 (automotive safety-critical redundant systems — ABS, traction control, stability control → layered redundancy philosophy for fail-safe anomaly detection)
- **Cluster B — Structural-isomorphism parallels (same-problem recognition):** Q2 (game progression systems with adaptive difficulty from client-side behavior → personalization of anomaly thresholds), Q4 (privacy-accuracy symbiosis — HIPAA and 7-day battery both pushing toward edge-compute efficiency; differential privacy during federated learning creating power-efficient architectures), Q5 (regulatory tailwinds — wellness-to-clinical pathway paralleling fintech/aerospace consumer-to-enterprise patterns)
- **Cluster C — Recombinant-innovation parallels (what-if-we-combined):** Q6 (companion app as compute partner — smartphone idle compute + wearable continuous monitoring; handoff protocol during charging periods), Q7 (firmware update as personalization channel — A/B testing platforms + personalized recommendations → federated update architecture with model variants per user)

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

Per D1 medium-effort selection mechanics: read cluster headings → select one question from each cluster in order (3 slots filled) → fill the remaining 2 slots from the largest clusters using the deterministic "lowest-numbered source question wins" tie-break rule. Round-robin here means rotating *which persona contributes next* across rounds while each persona walks through its own clusters in sequence.

### Round 1 (each persona's Cluster A — one slot filled)
- Provocateur Cluster A (Q1/Q2/Q4 → **Q1** wins): device designed to actively ignore health data
- Connector Cluster A (Q1/Q3 → **Q1** wins): human nervous system local-processing reflex arcs
- Visionary Cluster A (Q1/Q2/Q5 → **Q1** wins): conversation rather than detection
- Storyteller Cluster A (Q1/Q2/Q7 → **Q1** wins): Marcus at 3 AM

### Round 2 (each persona's Cluster B — one slot filled)
- Provocateur Cluster B (Q3/Q5/Q6 → **Q3** wins): monitors everyone except the wearer
- Connector Cluster B (Q2/Q4/Q5 → **Q2** wins): game design progression systems
- Visionary Cluster B (Q3/Q4/Q6 → **Q3** wins): privacy as design philosophy
- Storyteller Cluster B (Q3/Q6/Q8 → **Q3** wins): dinner table conversation

### Round 3 (each persona's Cluster C — one slot filled)
- Provocateur Cluster C (Q7/Q8 → **Q7** wins): FDA 510(k) requires device to fail for some users
- Connector Cluster C (Q6/Q7 → **Q6** wins): companion app as compute partner
- Visionary Cluster C (Q7/Q8 → **Q7** wins): inverting medical device paradigm
- Storyteller Cluster C (Q4/Q5 → **Q4** wins): boy-who-cried-wolf in reverse

### Round 4 (fill from largest cluster — one additional slot)

Per D1: "then fill from largest clusters." Largest cluster for each persona:

- **Provocateur largest cluster:** Clusters A and B tie at 3 questions each (Cluster C has 2). Tie broken alphabetically: A comes first. Next-lowest-numbered unpicked question in Cluster A: Q2 (Q1 already taken, Q2 is next) → **Q2** picked (ML model deliberately worse at anomaly detection)
- **Connector largest cluster:** Cluster B at 3 questions (Clusters A, C at 2 each). Next-lowest-numbered unpicked in Cluster B: Q4 (Q2 already taken, Q4 is next) → **Q4** picked (privacy-accuracy symbiosis)
- **Visionary largest cluster:** Clusters A and B tie at 3 questions each (Cluster C has 2). Tie broken alphabetically: A comes first. Next-lowest-numbered unpicked in Cluster A: Q2 (Q1 taken, Q2 next) → **Q2** picked (health emergence rather than measurement)
- **Storyteller largest cluster:** Clusters A and B tie at 3 questions each (Cluster C has 2). Tie broken alphabetically: A comes first. Next-lowest-numbered unpicked in Cluster A: Q2 (Q1 taken, Q2 next) → **Q2** picked (Elena's watchful shadow)

### Round 5 (fill from next-largest cluster — one additional slot)

Per D1: continue filling from largest clusters. After Round 4, cluster sizes (unpicked questions remaining):

- **Provocateur:** A has 1 remaining (Q4), B has 2 remaining (Q5, Q6), C has 1 remaining (Q8). B is largest. Next-lowest-numbered unpicked in B: Q5 → **Q5** picked (HIPAA compliance requires more data sharing)
- **Connector:** A has 1 remaining (Q3), B has 1 remaining (Q5), C has 1 remaining (Q7). All tied. Tie broken alphabetically: A first. Q3 → **Q3** picked (automotive safety-critical redundant systems)
- **Visionary:** A has 1 remaining (Q5), B has 2 remaining (Q4, Q6), C has 1 remaining (Q8). B is largest. Next-lowest-numbered unpicked in B: Q4 → **Q4** picked (dissolving device/body boundary)
- **Storyteller:** A has 1 remaining (Q7), B has 2 remaining (Q6, Q8), C has 1 remaining (Q5). B is largest. Next-lowest-numbered unpicked in B: Q6 → **Q6** picked (data diary no one else can see)

**Tie-breaking rules used summary:**
1. Within a cluster: lowest-numbered source question wins (deterministic).
2. Across tied-size clusters (Round 4): alphabetical cluster label (A before B before C).
3. "Largest cluster" computed on remaining unpicked questions, not original cluster size.

These are deterministic rules applied consistently across all four personas, per D1's "no quality judgment needed, just structural diversity" principle.

---

## Expected Append Output

20 questions, organized under persona-labeled sections in the final output. Each retains its source persona attribution and verbatim text from the test data.

| # | Cluster (B1 mapping) | Persona | Source Q | Question (abridged) | Tag (per D1) |
|---|---|---|---|---|---|
| 1 | Bridge to C1 (Model Quality) / C5 (UX) | Provocateur | Q1 | What if the device was designed to actively ignore your health data? — obscures metrics, encourages body attunement over quantification. | `[Provocateur — Measurement Inversion]` |
| 2 | Bridge to C1 (Model Quality) / C2 (Hardware) | Connector | Q1 | Biological nervous system parallel — nervous system processes signals locally (reflex arcs) before sending summaries to brain; on-device ML pipeline hierarchy. | `[Connector — Source: Biology]` |
| 3 | Bridge to C5 (UX) / C1 (Model Quality) | Visionary | Q1 | What if health monitoring wasn't about detection but about conversation? — bidirectional dialogue architecture; sensing that actively responds to physiological state. | `[Visionary — Monitoring Reimagined]` |
| 4 | Bridge to C5 (UX / Alert Delivery) | Storyteller | Q1 | The middle-of-the-night moment — Marcus, 52, family history of heart disease, wakes at 3 AM; emotional/practical journey through first alert; designing urgency without panic given detection uncertainty. | `[Storyteller — First Alert]` |
| 5 | Bridge to C4 (Privacy) / C7 (Business/Lock-in) | Provocateur | Q3 | What if the wearable monitored everyone except the wearer? — "community health surveillance"; individual data inaccessible to the person it came from. | `[Provocateur — Privacy Inversion]` |
| 6 | Bridge to C8 (Learning Loops) / C1 (Model Quality) | Connector | Q2 | Game design progression systems — adaptive difficulty from client-side behavior patterns; principles informing how device learns individual baselines and personalizes thresholds. | `[Connector — Source: Game Design]` |
| 7 | Bridge to C4 (Privacy) / C2 (Hardware) | Visionary | Q3 | Privacy as design philosophy creating new capabilities — data genuinely never leaves the body, not even as processed outputs; insights emerging locally through on-device intelligence. | `[Visionary — Privacy as Capability]` |
| 8 | Bridge to C5 (UX) / C4 (Social Visibility) | Storyteller | Q3 | The dinner table conversation — "Is that the heart thing?"; device as part of identity and social narrative; empowered / protected / defined across personality types. | `[Storyteller — Identity & Social Narrative]` |
| 9 | Bridge to C3 (Regulatory) / C6 (Bias) | Provocateur | Q7 | What if FDA 510(k) clearance required the device to fail for some users? — contraindicated populations explicitly documented; "works for everyone" as medically suspicious. | `[Provocateur — Regulatory Inversion]` |
| 10 | Bridge to C2 (Hardware) / C8 (Architecture) | Connector | Q6 | Companion app as compute partner — phone idle compute + wearable continuous monitoring; handoff during charging; implications for sensor placement and power distribution. | `[Connector — Recombinant Innovation: Compute Handoff]` |
| 11 | Bridge to C3 (Regulatory) / C7 (Business) | Visionary | Q7 | Inverting the medical device paradigm entirely — not consumer-that-might-become-clinical but a third category drawing from precision medicine + personalized health intelligence + embodied technology. | `[Visionary — Category Redefinition]` |
| 12 | Bridge to C5 (UX / Trust) / C1 (Model Quality) | Storyteller | Q4 | The "boy who cried wolf" problem in reverse — device misses something / unnecessary ER visit; trust-breaking event; recovery narrative over days and weeks. | `[Storyteller — Trust Breaking & Recovery]` |
| 13 | Bridge to C1 (Model Quality) / C5 (UX) | Provocateur | Q2 | What if the device's ML model was deliberately worse at detecting anomalies? — introduces randomness; refuses certainty; embracing uncertainty rather than claiming precision. | `[Provocateur — Certainty Inversion]` |
| 14 | Bridge to C2 (Power) / C4 (Privacy) | Connector | Q4 | Privacy-accuracy symbiosis — HIPAA and 7-day battery both push toward edge-compute efficiency; differential privacy during federated learning creating power-efficient architectures. | `[Connector — Structural Isomorphism: Privacy+Power]` |
| 15 | Bridge to C1 (Model Quality) / C6 (Bias) | Visionary | Q2 | Health emergence rather than health measurement — individual physiological signature as dynamic evolving pattern; learning "healthy" in real-time without population norms or clinical thresholds. | `[Visionary — Individual Baseline]` |
| 16 | Bridge to C5 (UX) / C3 (Regulatory) | Storyteller | Q2 | Living with the "watchful shadow" — Elena's 6 months of silence then Tuesday alert; prolonged normality shaping reaction; designing ongoing experience during quiet months. | `[Storyteller — Watchful Shadow]` |
| 17 | Bridge to C4 (Privacy) / C3 (Regulatory) | Provocateur | Q5 | What if HIPAA compliance required *more* data sharing, not less? — pooled anonymized commons; collective data stewardship; individual privacy as impossible. | `[Provocateur — HIPAA Inversion]` |
| 18 | Bridge to C1 (Model Quality) / C2 (Hardware) | Connector | Q3 | Automotive safety-critical systems — multiple redundant systems (ABS, traction, stability) running independently at different complexity levels; layered redundancy philosophy for fail-safe anomaly detection. | `[Connector — Source: Automotive]` |
| 19 | Bridge to C2 (Hardware) / C1 (Architectural Form) | Visionary | Q4 | Dissolving the boundary between device and body entirely — bio-native sensing architecture drawing from how organisms naturally perceive internal state; beyond wrist-worn consumer electronics legacy constraints. | `[Visionary — Bio-Native Sensing]` |
| 20 | Bridge to C4 (Privacy) / C5 (UX) | Storyteller | Q6 | The data diary no one else can see — raw biometric data never leaves device; users accumulate rich private history even they cannot fully access or interpret; intimate body-knowledge that remains opaque. | `[Storyteller — Invisible Data Diary]` |

**Cluster bridging summary:** The 20 appended questions distribute across the B1 clusters as follows: C1 (bridges from 8 questions), C2 (bridges from 6), C3 (bridges from 4), C4 (bridges from 6), C5 (bridges from 8 — the most), C6 (bridges from 2), C7 (bridges from 2), C8 (bridges from 1). Every cluster has at least one Append bridge. This is significantly better-distributed than low-effort append (where Append missed C7 entirely and had only 1 bridge to C6) — the medium quota of 5-per-persona recovers bridges to every cluster. C5 (UX) is still the most-bridged cluster because provocations, reimaginings, and narratives naturally anchor in user experience. The weakest coverage is C7 (Business) and C8 (Team/Learning), which remain partially orthogonal to the Append register.

---

## Connector-Specific Recovery at Medium Effort

This is the most important append-mechanics observation for wearable-device/medium specifically.

At low effort (quota 3), the deterministic "lowest-numbered wins" tie-break systematically dropped Connector's non-import-mode questions (Q4 privacy-accuracy symbiosis, Q5 regulatory tailwinds, Q7 firmware-as-personalization) — specifically the modes R7 identifies as Connector's distinctive value over Analogist. This meant the low-effort Connector slot returned value indistinguishable from Analogist's pure cross-domain-import mode.

At medium effort (quota 5), the same deterministic rules now surface:
- Connector Q1 (nervous system — biological import) ✓
- Connector Q2 (game design — structural isomorphism) ✓ **[non-import mode]**
- Connector Q3 (automotive redundancy — biological/cross-industry import) ✓
- Connector Q4 (privacy-accuracy symbiosis — structural isomorphism) ✓ **[non-import mode]**
- Connector Q6 (companion app handoff — recombinant innovation) ✓ **[non-import mode]**

Three of the five selected Connector questions (Q2, Q4, Q6) are now non-import-mode, capturing exactly the distinctive value R7 identifies — structural isomorphism (Q2 game-design personalization; Q4 privacy-accuracy symbiosis) and recombinant innovation (Q6 compute handoff). This is a structural recovery of 2 non-import questions relative to low effort (low picked only Q2 from the non-import pool).

**Implication for cross-topic BL1 synthesis:** The Connector-over-Analogist swap's value is detectable at medium effort in a way it wasn't at low. If SP1 scoring examines Connector's cluster-B and cluster-C contributions at medium and finds them surviving to the output, the swap provides its intended value. A Medium/High SP1 design should specifically check whether Connector's non-import-mode questions (Q2, Q4, Q6 for wearable-device) survive synthesis-then-append — if they don't, the Connector swap value is lost not in Phase 2B but in Phase 2C append mechanics.

**Drops for Connector at medium effort:** 2 of 7 (Q5 regulatory tailwinds, Q7 firmware personalization). Q5 is a structural-isomorphism question that would have bridged to C3 (Regulatory) with a cross-industry-regulatory pattern no Synthesize persona generates — its drop is costly but unavoidable given the quota. Q7 is a recombinant-innovation question that would have bridged to C8 (Learning Loops) / C1 (personalization) — less costly than Q5 because CG18's ST Q12 covers adjacent territory. Both drops are absorbed as "quota-bound" rather than "quality-bound" per D1.

---

## Integration Notes (per D1 tagging convention)

D1 specifies that appended questions retain persona attribution and exist in a different register from synthesized questions — they are *not* dimensionally balanced against the Synthesize output. The integration into the final output should:

1. **Place appended questions in a clearly demarcated section** after the synthesized clusters — e.g., "Provocations, Bridges, and Reimaginations" — so consumers see them as additive provocations rather than peer questions to the synthesized analytical core.
2. **Group by persona within the appended section** so each persona's distinct register reads coherently. Order: Provocateur → Connector → Visionary → Storyteller (alphabetical within Append group; note Connector replaces Analogist's alphabetical slot).
3. **Tag each appended question with persona name and a short cluster descriptor** (e.g., `[Provocateur — Measurement Inversion]`, `[Connector — Source: Biology]`, `[Connector — Structural Isomorphism: Privacy+Power]`). For Connector specifically, the tag should indicate the sub-mode (Source: [domain] / Structural Isomorphism / Recombinant Innovation) per R7 — this surfaces Connector's distinctive non-import-mode contributions where they exist.
4. **Do not merge appended questions with synthesized questions even when they touch the same concern.** E.g., Connector Q4 (privacy-accuracy symbiosis) touches C2 (power) and C4 (privacy), but D1 treats it as orthogonal — it preserves the persona's distinctive cognitive mode rather than fill a Synthesize gap.
5. **Preserve verbatim text.** Append-group questions are not edited, condensed, or reformatted. The "real insight" footers in Provocateur questions (e.g., *"The real insight: what if our obsession with measurement is part of the problem, not the solution?"*) are preserved as part of the question.

---

## Expected to Drop (Append-available — 11 of 31)

Per D1 quota math (A_available 31 − A_quota 20 = 11 dropped). Drops are the questions in each persona's clusters that lose round-robin tie-breaks to lower-numbered questions after all five slots are filled:

| Persona | Dropped Source Qs | Cluster | Reason |
|---|---|---|---|
| Provocateur | Q4 | A | Lost A-cluster secondary slot to Q2 (Q1 selected Round 1, Q2 selected Round 4) |
| Provocateur | Q6 | B | Lost B-cluster tertiary slot to Q5 (Q3 selected Round 2, Q5 selected Round 5) |
| Provocateur | Q8 | C | Lost C-cluster slot to Q7 in Round 3 |
| Connector | Q5 | B | Lost B-cluster tertiary slot — B had 3 questions (Q2, Q4, Q5); Q2 selected Round 2, Q4 selected Round 4, Q5 not reached |
| Connector | Q7 | C | Lost C-cluster slot to Q6 in Round 3 |
| Visionary | Q5 | A | Lost A-cluster secondary slot to Q2 (Q1 selected Round 1, Q2 selected Round 4) |
| Visionary | Q6 | B | Lost B-cluster tertiary slot to Q4 (Q3 selected Round 2, Q4 selected Round 5) |
| Visionary | Q8 | C | Lost C-cluster slot to Q7 in Round 3 |
| Storyteller | Q7 | A | Lost A-cluster secondary slot to Q2 (Q1 selected Round 1, Q2 selected Round 4) |
| Storyteller | Q8 | B | Lost B-cluster tertiary slot to Q6 (Q3 selected Round 2, Q6 selected Round 5) |
| Storyteller | Q5 | C | Lost C-cluster slot to Q4 in Round 3 |

**Drop count:** 11 of 31 (35%). This sits comfortably below D1's "40-60% discarded at low effort" band; medium effort's higher quota (5 vs. 3) recovers more Append-value.

**Notable drops worth flagging:**

- **Provocateur Q8** (business model charges for every detected anomaly — calm-aligned profit): Would have bridged to C7 (Business Model). Lost to Q7 via source-order tie-break in Round 3. Q7 is a Regulatory-Inversion question (bridges to C3/C6). The C7 bridge is the only cluster not well-covered by Append at medium, and Provocateur Q8 would have filled exactly that gap. This is the single most costly drop at medium.
- **Connector Q5** (regulatory tailwinds — wellness-to-clinical pathway paralleling fintech/aerospace): Lost to Q4 in Round 4 tie-break. Q5 represents exactly the kind of non-import-mode Connector value R7 predicts; its drop means one of Connector's distinctive contributions is excluded. However, Connector Q2 (structural isomorphism: game-design personalization) and Connector Q4 (structural isomorphism: privacy-accuracy symbiosis) and Connector Q6 (recombinant innovation: compute handoff) ARE included, so the overall non-import-mode coverage is strong (3 of 4 possible).
- **Connector Q7** (firmware update as personalization channel): Lost to Q6 in Round 3. Q7 represents recombinant-innovation mode; its drop means Connector's recombinant-innovation cluster provides only one question (Q6) rather than both.
- **Visionary Q8** (network ecosystem spanning individuals/families/communities with cryptographic privacy): Lost to Q7 in Round 3. Would have been a distinctive C4/C8 ecosystem reimagining framing.
- **Storyteller Q8** (handing down a health narrative — parent passes device/insights to adult child with shared genetic risk; intergenerational baselines): Lost to Q6 in Round 5 tie-break. Distinctive intergenerational framing that no Synthesize persona generates; would have been a strong C7 (end-of-life / portability) bridge. This drop means C7 receives neither a Provocateur business-inversion nor a Storyteller intergenerational-baseline bridge.
- **Storyteller Q5** (wellness device becomes FDA-cleared medical tool; fitness accessory becomes medical instrument): Lost to Q4 in Round 3. Would have been a distinctive C3 (wellness-to-clinical transition) narrative. However, AA Q13 (wellness-to-clinical user journey) in the Synthesize group covers adjacent territory.
- **Visionary Q6** (10-year relationship rather than 2-year product cycle — lifelong companion architecture): Lost to Q4 in Round 5 tie-break. Would have bridged to C7 (Business) with a radically different product-lifecycle framing.

**Pattern flag for SP1 / PC1 design:** At medium effort the Connector drops (Q5, Q7) are less costly than at low effort because 3 of Connector's 5 selected questions are non-import-mode. The low-effort pathology (where tie-break favored Connector's import-most cluster) is partially corrected at medium. The most costly drops at medium are NOT Connector-specific — they're C7-bridge drops (Provocateur Q8, Storyteller Q8, Visionary Q6 all would have bridged to C7 in different registers). This suggests that for wearable-device, C7 is systematically under-bridged by Append regardless of effort level, because Append personas' business-model questions happen to lose their cluster-internal tie-breaks. An SP1 topic-specific check could flag "C7 Append bridges" as a distinct metric.

**Note for SP1:** D1 explicitly states "discarded questions remain in `questions/by-persona/` for review" — the dropped 11 are not lost from the session record, only from the appended output. SP1 should not penalize a synthesizer for failing to include any of the 11 dropped questions; only the 20 selected above are scoring targets.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (wearable-device / medium cell)

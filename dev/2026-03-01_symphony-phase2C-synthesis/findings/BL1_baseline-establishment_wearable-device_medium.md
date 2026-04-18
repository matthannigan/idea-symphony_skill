# BL1 — Baseline Establishment: wearable-device / medium

**Date:** 2026-04-18
**Author:** BL1 subagent (wearable-device / medium cell)
**Scope:** One cell of the Phase 2C BL1 baseline pass — baseline reference for SP1 variant scoring of the synthesis prompt on wearable-device at medium effort.
**Companion baseline files:**
- `baselines/wearable-device_medium_clusters.md` (B1)
- `baselines/wearable-device_medium_convergence.md` (B2)
- `baselines/wearable-device_medium_target.md` (B3)
- `baselines/wearable-device_medium_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**

| Metric | Value |
|---|---|
| Total source questions (N) | 120 |
| Synthesize-group questions | 89 (7 of 11 personas) |
| Append-group available (A_available) | 31 |
| Synthesize personas | 7 — Analyst (15), Appreciative Inquirer (12), Audience Advocate (13), Devil's Advocate (12), Questioner (15), Systems Thinker (12), **Technical Expert (10)** |
| Append personas | 4 — Provocateur (8), **Connector (7)**, Visionary (8), Storyteller (8) |
| Natural cluster count (C) | 8 |
| Convergence groups (P) | 18 |
| Questions in convergence (Q) | 62 of 89 (70%) |
| Convergence density | 70% |
| Synthesized output target (M) | 37 (range 33-41) |
| Compaction ratio | 89 / 37 = 2.41 (range 2.2-2.7) |
| Append quota (A_quota) | 20 (4 personas × 5, one per persona-internal cluster + 2 fill from largest) |
| Final total output | 57 (range 53-61) |

**Topic profile:** Same as wearable-device/low — a deeply technical-and-regulated topic (startup, 12 engineers, 18-month runway, multi-sensor health wearable with 7-day battery, HIPAA on-device ML, cardiac arrhythmia + sleep apnea use cases, 40+ target demographic, planned FDA 510(k) pathway). Per the persona-selection guide topic-affinity hints, this profile triggers: genuine technical architecture (Analyst core; **Technical Expert for Med/High** — activated here), regulatory/compliance exposure (DA core; Lawyer for Med/High — not selected for medium; GT1 may have classified trigger as moderate rather than strong), financial structure central (Analyst core; Accountant for Med/High — not selected for medium), stakeholder complexity (AA core), and cross-domain reconciliation (triggers Analogist → Connector swap per R7). The medium roster aligns with this: all 10 Tier 1 personas minus Analogist-replaced-by-Connector, plus **Technical Expert** as the single Tier 3 Synthesize persona (per-GT1 strong trigger for wearable-device's genuine technical architecture — the persona-selection guide explicitly names wearable-device as TE's canonical strong-trigger example).

**What changes from low to medium:**

| Dimension | Low | Medium | Delta |
|---|---|---|---|
| Total questions (N) | 104 | 120 | +16 |
| Synthesize Qs | 73 | 89 | +16 |
| Synthesize personas | 6 | 7 | +1 (Technical Expert) |
| Append Qs available | 31 | 31 | 0 |
| Append quota | 12 | 20 | +8 |
| Natural clusters | 8 | 8 | 0 |
| Convergence groups | 15 | 18 | +3 |
| Convergence density | 67% | 70% | +3pp |
| Output target | 30 | 37 | +7 |
| Compaction ratio | 2.43 | 2.41 | -0.02 |
| Final output | 42 | 57 | +15 |
| Analytical dimension | 23% | 27% | +4pp |
| Tactical | 17% | 19% | +2pp |
| Creative | 13% | 11% | -2pp |
| Human-centered | 27% | 24% | -3pp |

The medium-effort expansion comes from two specific sources: **Analyst grows from 10 to 15 questions** (adds unit-economics, BOM optimization, runway allocation, regulatory compliance cost, resource allocation — 4 new questions landing in C7, 1 new question landing in C3 with C7 tie), and **Technical Expert adds 10 new questions** (landing primarily in C1 model quality/architecture/personalization/validation/fault-tolerance and C2 NPU/power-budget/deterministic-latency, with 1 in C4 privacy-telemetry). Together these additions shift the dimensional balance toward Analytical and Tactical while compressing Creative and Human-centered proportionally (absolute count of Creative/Human-centered stays roughly constant; the percentage falls as the denominator grows).

AA grows from 12 to 13 questions (+1 medium-volume question). AI stays at 12. DA stays at 12. Questioner stays at 15. ST stays at 12. The growth is strongly concentrated in Analyst and Technical Expert — both analytical voices — which is exactly why the dimensional balance shifts toward Analytical.

**Why this cell is a clean BL1 reference:** Technical-regulated-business topic, no shortfalls in TDA1, no missing slots, correct Connector swap (not default Analogist), **not on the GT1 watchlist** (per TDA1 Section 5.1, no wearable-device cell at any effort level is on the watchlist), and 7-of-7 Synthesize personas contributing full volume slices with no compounding or filler pathologies. The 8-cluster natural structure is visible in both per-persona and flat-pool clustering passes. Convergence density at 70% is the highest BL1 medium-effort reference point so far — reflecting that adding Technical Expert converges heavily into existing engineering territory (C1, C2) and Analyst's expansion converges into commercial-sustainability territory (C7).

---

## 2. Persona Representation Challenges

The synthesizer at medium effort must navigate seven meaningful representation tensions — two new at medium beyond the five at low:

**Tension A — Convergent personas vs. distinctive personas.** (Same as low.) Of the 7 Synthesize personas, four have heavy cross-persona convergence — Analyst, Devil's Advocate, Questioner, and Systems Thinker each contribute to 7-11 of the 18 convergence groups. Two have lower convergence (Appreciative Inquirer in 3, Audience Advocate in 6) but carry distinctive registers. Technical Expert is new: participates in 4 convergence groups (CG6 power budget, CG11 edge cases, CG11 signal-quality, and potentially CG18 app-device loop via Q3 personalization ties). SP1 risk remains: a synthesizer that aggressively merges may disproportionately surface analytical voices and bury AI/AA. The persona-floor scoring in B3 (AI floor 5, AA floor 8) is the explicit scoring guard.

**Tension B — Audience Advocate's two-cluster load (C5 alert-UX vs. C6 structural-bias).** (Sharper at medium.) AA generates 13 questions split roughly 7-3-2-1 across C5 (alert perception, verification, context-aware delivery, emotional journey, health anxiety, missing raw-data verification), C6 (accessibility, bias, charging-routine), C4 (privacy-beyond-HIPAA, sharing tension), and C3 (wellness-to-clinical journey). The C5 load (7) is heavier at medium than at low (4), while C6 (3) is lighter than low (4). The C6/C5 collapse risk is sharper at medium because of the imbalance — a synthesizer tempted to fold C6 into C5 would now lose 3 questions (vs. 6 at low). The B3 persona-representation floor (AA floor 8) plus the B3 failure-mode flag ("AA absent from C4 or C6 → structural-equity collapse") are the explicit guards. SP1 should specifically check that C6 receives ≥3 output questions with ≥2 AA-attributed contributions.

**Tension C — Systems Thinker's dense archetype vocabulary.** (Sharper at medium.) ST generates 12 questions at both low and medium (same question set). At medium, 9 of 12 ST questions explicitly name an archetype (vs. 8 of 12 at low — the difference is ST Q10 alert-framing Shifting-the-Burden which appears at medium and collapsed-into-ST-Q3 at low by a different slicing). Named archetypes: Reinforcing Loop (Q1 alert fatigue, Q2 anxiety reinforcement), Fixes that Fail (Q6 regulatory path dependency, Q9 clinical validation study bias, Q11 sensor fusion fragility), Shifting the Burden (Q10 alert framing therapeutic expectation loop), Success to the Successful (Q6 privacy-performance delayed feedback), Tragedy of the Commons (implicit in Q7 federated learning — from low; at medium Q7 is model-update-sync-asynchrony but still Reinforcing-Loop flavored), Shifting Baseline (Q9 concept drift — low only, absent at medium), Death Spiral (Q8 battery-degraded cascade). At medium wearable's archetype density is higher than at low (9 named at medium vs. 7+ at low). Preservation-check severity is proportionally higher: SP1 should check archetype preservation in at least 5-6 of ST's merge contributions.

**Tension D — Questioner absorption into merges.** (Same as low.) Questioner generates 15 questions. ~11 of 15 Questioner questions land in convergence groups (CG1, CG3, CG4, CG6, CG8, CG9, CG10, CG11, CG13). Without a floor protecting Questioner-distinctive uniques (Q3 cardiologist access, Q9 accuracy-vs-battery 3-day reframe, Q15 anthropomorphism, plus merge contributions), the synthesizer could under-represent Questioner's "widening problem framing" function. B3 sets the Questioner floor at 7 with explicit named questions to preserve.

**Tension E — Appreciative Inquirer's dual register (methodological vs. content).** (Same as low.) AI generates 12 questions (unchanged from low). Four are strongly methodological (Q1 peak moments, Q3 invisible partners, Q4 three-year celebration, Q6 regulatory-as-enabler) and easily cut; eight are content-distinctive (Q2 privacy-as-trust, Q5 no-false-alarm-experience, Q7 team-does-well, Q8 privacy-as-UX, Q9 battery-as-invitation, Q10 wellness-clinical continuum, Q11 smallest experiment, Q12 existing assets). The expected-drop pattern (3 of 6 drops are AI: Q1, Q3, Q4) matches low. SP1 should not penalize a synthesizer for dropping the 3 methodological AI questions, but SHOULD penalize if content-distinctive AI questions go missing.

**Tension F (NEW at medium) — Technical Expert's engineering vocabulary vs. Analyst voice absorption.** TE generates 10 questions; per the persona-selection guide, TE has ~50-60% overlap with Analyst, meaning its framings can be absorbed into Analyst's analytical voice during synthesis. TE's distinctive contributions are the engineering-specific framings: NPU feature utilization (Q2 INT8/sparse compute/zero-point quantization), asymmetric model architectures (Q1 sleep-apnea-simpler-than-cardiac), on-device personalization under SRAM constraints (Q3 128KB SRAM), signal quality validation (Q5 motion artifact / PPG perfusion), deterministic inference latency (Q8 <5s worst-case guarantees during OTA/sync/compression), fault tolerance mechanisms (Q9 watchdog, CRC, safe mode), privacy-preserving telemetry with differential noise injection (Q10). If synthesis normalizes TE into Analyst voice, the Tier 3 persona selection provides no detectable value above Tier 1, and the persona-selection guide's "highest topic sensitivity of any Tier 3 persona" claim becomes invisible. B3 adds a specific failure mode: "TE absent from C1 (engineering-vocabulary presence) or C4 (privacy-telemetry) → Tier-3 Technical Expert value collapse." This is a medium-specific check.

**Tension G (NEW at medium) — Analyst's C7 expansion vs. commercial-sustainability collapse risk.** At low, Analyst had 10 questions and the C7 cluster had 4 questions (Analyst 2, DA 1, ST 1). At medium, Analyst's 5 new questions (Q12 BOM, Q13 runway, Q14 compliance cost, Q15 resource allocation) all land in C7, bringing C7 to 6 questions (Analyst 4, DA 1, ST 1). B3 merges all 4 Analyst C7 questions into a single commercial-sustainability output. This is aggressive compaction (4-to-1) and risks losing BOM-specific, runway-specific, and resource-allocation-specific framings that Analyst's medium-volume produces. The compensating argument: these 4 questions are all Analyst, all analytical, and all structured-resource-allocation framings — merging them produces a more useful single output than 4 fragmented outputs. But it's a judgment call; a synthesizer could reasonably output 2 C7 questions (BOM+runway vs. compliance+resource) instead of 1. SP1 scoring should allow 1-2 in C7 (flagged in the B3 range).

---

## 3. Append Mechanics Observations

**Round-robin works cleanly; medium quota partially corrects the Connector low-effort pathology.** The 4 Append personas are the same as at low (same source data, verbatim) with identical 3-cluster internal structures. The medium-effort quota of 5 per persona (vs. 3 at low) means:

1. **Round 1-3 fills one slot per cluster deterministically (first selection = lowest-numbered)** — same behavior as low.
2. **Round 4 fills the largest cluster's second slot deterministically** — new at medium.
3. **Round 5 fills the next-largest cluster's remaining slot deterministically** — new at medium.

The two additional rounds for each persona means Provocateur surfaces Q2 + Q5 (adding Certainty-Inversion and HIPAA-Inversion to the low-effort selection), Connector surfaces Q4 + Q3 (adding privacy-accuracy symbiosis and automotive redundancy), Visionary surfaces Q2 + Q4 (adding individual-baseline and bio-native-sensing), and Storyteller surfaces Q2 + Q6 (adding watchful-shadow and invisible-data-diary).

**Connector-specific recovery is the most important medium-vs-low append-mechanics finding.** At low, the deterministic tie-break systematically dropped Connector's non-import-mode questions (Q2 + Q4 + Q5 structural isomorphism, Q6 + Q7 recombinant innovation). Low-effort picked only Q1 (biological import) + Q2 (isomorphism) + Q6 (recombinant) — 2 non-import out of 3. At medium, Q4 (privacy-accuracy symbiosis — structural isomorphism) is recovered, bringing the non-import count to 3 of 5 selected. This is a meaningful structural recovery.

Remaining Connector drops at medium: Q5 (regulatory tailwinds — structural isomorphism, would have bridged to C3) and Q7 (firmware-as-personalization — recombinant innovation, would have bridged to C8 / C1). Both losses are tie-break-bound, not quality-bound. At high effort (quota = all 5-8), all 7 Connector questions append and the distinctive value is fully captured.

**Drop rate is meaningfully lower at medium.** 11 of 31 (35%) drop at medium vs. 19 of 31 (61%) at low. Medium's quota improvement recovers ~8 questions of Append-value across the 4 personas. Per D1 expected drop bands, medium effort should fall in the 30-50% range; wearable-device/medium sits at the low end of that range, reflecting the balanced 5-per-persona quota against 7-8-question source sizes.

**Cross-cluster bridging improves substantially at medium.** At low, Append bridged to 7 of 8 clusters (missed C7). At medium, Append bridges to all 8 clusters — including C7 via Provocateur Q3 privacy-inversion (C7 lock-in tie) and Visionary Q3 privacy-as-capability (C7 platform implications). Cluster-C7 bridging is still weakest (only 2 questions bridge to C7), but the zero-coverage of low is corrected.

**Notable medium-specific drops:**
- **Provocateur Q8** (business model charges for every detected anomaly — calm-aligned profit): Lost to Q7 in Round 3. Would have been the canonical C7-bridge; at medium the Round 4-5 fills don't recover it because Cluster C only has 2 questions. The single most costly append drop at medium for wearable-device.
- **Storyteller Q8** (intergenerational health narrative): Lost to Q6 in Round 5 tie-break. Would have added distinctive intergenerational-baseline framing to C7 (end-of-life / portability).
- **Visionary Q6** (10-year relationship rather than 2-year product cycle): Lost to Q4 in Round 5 tie-break. Would have bridged to C7 with lifelong-companion architectural framing.

**Pattern flag for SP1 / PC1 design:** Three of the most valuable drops at medium (Prov Q8, Stor Q8, Vis Q6) would all have bridged to C7 (Business Model) with distinctly different registers. This suggests C7 is systematically under-bridged by Append for wearable-device regardless of effort level — not because of quota limits but because of cluster-internal tie-break order. An SP1 scoring check specifically tracking "C7 Append bridge count" would reveal this topic-specific pattern.

---

## 4. C1 Recommendation

C1 (clustering vs. flat pooling) was tested in Pass A (per-persona-internal clustering preserved) vs. Pass B (flat pooling of all 89 Synthesize questions). Both passes produce the same 8 clusters with marginal boundary differences on 8-10 borderline questions (vs. 6-8 at low).

**Recommendation: flat pooling for SP1 prompts, with three additive preservation instructions.** With 89 questions and 7 Synthesize personas at medium effort, flat pooling still produces equivalent cluster quality with a simpler synthesis prompt. Three caveats specific to wearable-device/medium:

1. **Preserve Systems Thinker's distinctive archetype vocabulary.** ST names 9 archetypes at medium (vs. 7 at low). This vocabulary is distinctive content, not cluster-structural markup. SP1 scoring should specifically check for archetype-name preservation in at least 5-6 of ST's merge contributions.

2. **Preserve Audience Advocate's structural-equity / accessibility / bias framing as distinct from emotional-safety / alert-UX framing.** At medium AA's C5 load is heavier (7 Qs) and C6 is lighter (3 Qs); the collapse risk is sharper because the imbalance tempts the synthesizer to fold C6 into C5. This is a wearable-device-specific check because this topic has strong structural-bias content (skin-tone PPG bias, physiological diversity, disability accommodations, charging-routine diversity) that event-topic or pure-business-topic cells don't surface at the same intensity.

3. **Preserve Technical Expert's engineering-domain vocabulary** (NPU utilization, on-device personalization under SRAM constraints, asymmetric model architectures, deterministic inference latency, privacy-preserving telemetry with differential noise injection, fault tolerance mechanisms). Per the persona-selection guide, TE "benefits from synthesis normalization" — but the distinctive engineering framings are the contribution. Synthesis should normalize *style* (prose clarity, parallel structure), not strip *vocabulary*. Because TE overlaps ~50-60% with Analyst, there is real risk that synthesis collapses TE into Analyst voice; the vocabulary check prevents this.

All three instructions are additive to flat-pooling and do not require per-persona clustering to implement.

**Caveat:** The flat-pooling recommendation generalizes from wearable-device/low to wearable-device/medium without structural change. At high effort (130-140+ Synthesize questions with potentially 2 Tier 3 personas added — likely TE + Lawyer per persona-selection guide for wearable-device's regulatory exposure), the cognitive load of flat-clustering grows further and per-persona clustering may re-gain utility. Wearable-device/high BL1 cell should re-run the C1 comparison to confirm the recommendation generalizes.

---

## 5. GT1 Watchlist Status

**wearable-device / medium is NOT on the GT1 watchlist.** TDA1 Section 5.1 lists 5 GT1 medium-confidence cells: tool-library/medium, food-truck/high, property-management/high, youth-mentorship/high, and school-consolidation/medium. No wearable-device cell at any effort level appears on the watchlist. Wearable-device's Connector-over-Analogist swap is GT1-canonical (not medium-confidence) per GT1 Rev 3, and the Technical-Expert-at-medium selection is also GT1-canonical per the persona-selection guide's explicit identification of wearable-device as TE's canonical strong-trigger example.

**Interpretation:** If SP1 produces anomalous scores on this cell, the cause is in the synthesis prompt, not in upstream persona-roster ambiguity. The baseline is stable against persona-selection drift. TDA1 handoff notes confirm zero shortfalls and zero missing slots for this cell.

---

## 6. Open Concerns for Cross-Topic Synthesis

Items that may matter when BL1 results across all 10 topics / 30 cells are aggregated and compared:

1. **Convergence density scales upward from low to medium as Tier 3 personas converge into existing territory.** Wearable-device/low is 67% convergence density; wearable-device/medium is 70%. Technical Expert's 10 questions converge heavily into C1 (5 of 10 primary in C1) and C2 (3 of 10), adding to CG6 (power budget), CG11 (edge cases), and expanding the existing convergence zones. Adding Tier 3 personas doesn't introduce orthogonal content at medium — it deepens existing clusters. Cross-topic BL1 should check whether this pattern generalizes: topics with Tier-3-Synthesize personas (Accountant, Lawyer, Technical Expert) at medium should see convergence density rise by 2-4 percentage points vs. low.

2. **Dimensional balance shifts toward Analytical/Tactical at medium when Analytical Tier 3 personas are added.** Wearable-device medium shifts Analytical from 23% to 27% and Tactical from 17% to 19% (absorbing the +5 Analyst growth and +10 TE questions — both highly Analytical/Tactical). Topics with different medium-effort Tier 3 personas will see different shifts: Accountant (strategic/analytical) would shift Strategic + Analytical up; Politician (Append, not Synthesize) would not shift Synthesize dimension balance at all (appends separately); Lawyer (Synthesis, evaluative/analytical) would shift Analytical up. Cross-topic BL1 dimensional targets should be pre-computed per topic-per-effort based on Tier 3 composition, not drawn from universal low-effort targets.

3. **Connector-over-Analogist append mechanics partially self-correct at medium effort.** The low-effort pathology where the deterministic tie-break systematically dropped Connector's non-import-mode questions is partially corrected at medium (quota 5 recovers ~2 non-import questions). The cross-topic BL1 synthesis should examine all 5 Connector-swapped topics (youth-mentorship, school-consolidation, mobile-app, wearable-device, career-change per GT1 Rev 3) at medium to determine whether this recovery is consistent. If yes, the R7 claim that Connector-over-Analogist swap provides distinctive value becomes verifiable from medium effort upward. If no (i.e., some topics' Connector non-import questions fall into unlucky tie-break positions even at medium), then the discussion moves to whether D1 needs a topic-conditional tie-break rule or a "minimum 2 non-import questions" rule for Connector.

4. **Cluster count remains stable around 8 at medium for complex topics.** Wearable-device/medium produces 8 clusters, matching wearable-device/low's 8. The Tier 3 addition (Technical Expert) at medium deepens existing clusters (C1/C2) rather than creating new ones. This suggests clusters are topic-structural rather than persona-structural, confirming the cross-topic BL1 framework's 7-9-cluster-range assumption.

5. **Systems Thinker archetype vocabulary density grows at medium** (9 archetypes at medium vs. 7 at low for wearable-device). The same ST source data produces more archetype-labeled questions at medium because ST's Q10 (alert framing therapeutic expectation loop — Shifting the Burden) is a new question at medium not present at low. Cross-topic BL1 should track ST's archetype-naming density by effort level — if it grows consistently with effort, the preservation-check severity should scale up accordingly.

6. **AA's cluster distribution signature is a meaningful topic-type feature.** Wearable-device/low AA: 4 C5 + 4 C6 + 4 C4. Wearable-device/medium AA: 7 C5 + 3 C6 + 2 C4 + 1 C3. The C5/C6 split intensifies at medium as AA's additional question (Q10 curiosity-to-anxiety-complacency + Q13 wellness-to-clinical journey) lands in C5 and C3 respectively, not C6. AA's C6 absolute count stays at 3, but its proportional share falls from 33% to 23%. This topic-type signature (AA's structural-bias load remains heavy but its alert-UX load grows faster at medium) may or may not generalize to other bias-heavy topics. Cross-topic BL1 should track AA's cluster-distribution by topic and effort.

7. **C7 (Business Model) is systematically under-bridged by Append for wearable-device.** Both at low (where Append misses C7 entirely) and medium (where only 2 Append questions bridge C7, and 3 of the most-valuable drops would have bridged C7 — Prov Q8, Stor Q8, Vis Q6), the C7 cluster receives less Append attention than its cluster size warrants. This is a topic-specific pattern, not a universal one: wearable-device's Append personas happen to concentrate their business-model-inverting questions in cluster positions that tie-break out. An SP1 topic-specific scoring check could flag "C7 Append bridge count" as a metric; if it stays low across multiple Connector-swap topics, the pattern is worth escalating.

8. **Technical Expert's Tier 3 selection is detectable when its engineering vocabulary survives synthesis.** The persona-selection guide claims TE has "highest topic sensitivity of any Tier 3 persona" — on wearable-device (strong trigger), it should produce "zero filler, 50-60% distinctive contribution." A synthesis that preserves TE's vocabulary (NPU features, SRAM constraints, asymmetric architectures, deterministic latency, privacy-preserving telemetry, fault-tolerance mechanisms) demonstrates the Tier 3 selection's value; a synthesis that normalizes TE into Analyst voice provides no detectable value above a Tier-1-only roster. SP1 scoring at medium effort should specifically check TE vocabulary survival rate. Cross-topic BL1 should track whether TE-selected topics consistently show TE-distinctive vocabulary in synthesized output — if not, the Tier 3 persona-selection value proposition is invisible at Phase 2C.

9. **Compaction ratio stays near 2.4 from low to medium.** Wearable-device/low: 2.43; medium: 2.41. The ratio is remarkably stable despite source-question count growing from 73 to 89 and output growing from 30 to 37. This suggests compaction is driven by semantic density (how many distinct concerns the topic naturally supports), not by source-question count. Cross-topic BL1 compaction-ratio targets should cluster near 2.4 for technical-regulated-business topics regardless of effort level; they should be looser (2.0-2.3) for lower-convergence topics and tighter (2.5-2.7) for higher-convergence topics (though no cell so far exceeds 70% convergence density).

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (wearable-device / medium cell)

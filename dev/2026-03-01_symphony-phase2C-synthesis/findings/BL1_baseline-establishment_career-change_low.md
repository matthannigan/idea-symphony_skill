# BL1 — Baseline Establishment — Career Change / Low Effort

**Date:** 2026-04-18
**Author:** BL1 subagent
**Cell:** career-change / low
**Artifacts:**
- `dev/2026-03-01_symphony-phase2C-synthesis/baselines/career-change_low_clusters.md` (B1)
- `dev/2026-03-01_symphony-phase2C-synthesis/baselines/career-change_low_convergence.md` (B2)
- `dev/2026-03-01_symphony-phase2C-synthesis/baselines/career-change_low_target.md` (B3)
- `dev/2026-03-01_symphony-phase2C-synthesis/baselines/career-change_low_append-target.md` (B4)

---

## Cell Summary

| Metric | Value |
|---|---|
| Personas | 10 (6 Synthesize + 4 Append) |
| N (total input questions) | 102 |
| N_synthesize | 73 |
| N_append (available) | 29 |
| C (Synthesize clusters) | 10 |
| Convergence groups | 13 |
| Convergence density | 60.3% (44/73) |
| M (expected synthesized output) | 25 |
| Compaction ratio (N_synthesize/M) | 2.92 |
| A_quota (appended to output) | 12 (3 per persona × 4 personas) |
| **Total expected Phase 2C output** | **37 questions** |

---

## 1. Cell Characterization

**Topic signature.** Career-change is the first test cell for a Phase 2C baseline where the topic is *about* bridging two domains (healthcare and law) rather than occurring *within* one domain. This makes it a structurally distinctive cell:

- The topic generates dense convergence across the Synthesize-group personas (60.3% density is higher than would be expected from the methodology's cluster-density notes for single-domain topics like habit-tracker).
- The three deepest convergence themes — financial viability (CV-01 through CV-04), calling-vs-escape validation (CV-05 through CV-06), and burnout transfer (CV-08) — involve all four analytical/structural "skeptic" personas (Analyst, Devil's Advocate, Questioner, Systems Thinker) attacking the same targets from complementary angles. Merge opportunities are abundant.
- Audience Advocate contributes 6 of 8 questions in a dedicated cluster (C9, representation ethics) that no other Synthesize-group persona engages. This single-persona dominance is the most notable persona-representation finding of the cell.
- Appreciative Inquirer's 4-phase framework (Discovery, Dream, Design, Destiny) produces relatively isolated output — 8 of AI's 12 questions are non-convergent, consistent with R8's volume-quality prediction that AI at 10-15 overshoots and at 8-12 is cleanest.
- Systems Thinker's distinctive archetype vocabulary (Shifting the Burden, Fixes that Fail, Success to the Successful, balancing loop, reinforcing loop) is a voice-preservation concern — synthesis that strips these anchors loses ST's differentiation.

**Dimension mix.** Analytical dominates (52% of input Synthesize questions) because career-change is a heavily cost/risk/projection-laden topic. Human-centered is secondary (22%) via Audience Advocate's C9 and Appreciative Inquirer's peak-moment/sustaining-commitment questions. Creative and Strategic are thin — this is not a "reimagination" topic.

**Topic-complexity characteristic.** Career-change at low effort has unusually rich *convergence* rather than unusually rich *breadth*. The 10 clusters identified here are fewer than would be expected from a 73-question input (mobile-app at similar volume would likely partition to 12-14 clusters), and the convergence groups are correspondingly denser. This is characteristic of decision-oriented topics where many personas independently probe the same few core concerns.

---

## 2. Persona Representation Challenges

**Audience Advocate single-persona dominance in C9.** Six of eight questions in the client-reality/representation-ethics cluster come from a single persona. This is the baseline's sharpest representation challenge. Options:

- **(A) Preserve verbatim heavy from AA.** Budget 3 of 25 output slots to AA-originated questions in C9 (adopted in B3). This preserves the voice but compresses AA's overall input ratio (12 input → 4-5 output appearances, lowest among Synthesize personas).
- **(B) Seek convergence partners.** The only partial partners are Devil's Advocate Q5 (romanticized helping — 80% paperwork), Systems Thinker Q12 (Fixes-that-Fail if law is wrong vehicle), and Storyteller Q5 (detention-center scene). None are in the Synthesize group's C9 cluster; they're in C4, C10, and the Append group respectively. Cross-cluster merging would dilute both clusters.
- **(C) Drop the C9 cluster entirely.** Unacceptable — eliminates the only privilege/representation-ethics lens in the roster.

B3 adopts (A). The cost is AA's output-per-input ratio looks low; the benefit is the privilege/ethics register is preserved in concentrated form.

**Appreciative Inquirer's low-convergence pattern.** 8 of 12 AI questions are non-convergent. This is healthy behavior (AI is doing its job opening unique territory), but forces the baseline to make hard drops: 4 of the 8 unique AI questions cannot fit in M=25. The baseline prioritizes AI Q1 (peak moments), Q3 (sustaining commitment), Q4 (hidden assets), Q8 (learning from sustainable advocates) — these cover the four AI phases most directly. Dropped: Q2, Q6, Q7, Q9, Q12. Synthesis prompts that try to "merge" AI questions across phases should be penalized — AI's phase structure is part of its distinctive contribution.

**Systems Thinker archetype-vocabulary preservation.** Shifting the Burden, Fixes that Fail, Success to the Successful, balancing loop, compound growth system — these are ST's voice. Merges that strip this vocabulary produce generic systems-flavored questions indistinguishable from Analyst output. B3's merge recommendations explicitly call out preserving ST archetype anchors in CV-01, CV-04, CV-05, CV-11, CV-13.

**Questioner's question-as-prompt style.** Many of Questioner's 15 questions follow a "What if you..." or "Have you..." structure. This is a Questioner signature; synthesized versions should preserve the second-person exploratory register where possible. This is a low-stakes preservation concern relative to the ST archetype-vocabulary one.

**Devil's Advocate uniqueness is low-count, high-value.** DA contributes to 6 of 13 convergence groups but has only 1 purely-unique question (Q5, "romanticized helping / 80% paperwork"). Losing Q5 in the low-effort drop would silence DA's voice on the "reality of the day-to-day" dimension. The baseline keeps Q5 as a near-miss candidate (flagged for preservation at M=26+).

---

## 3. Append Mechanics (D1 Round-Robin)

Append quota: 3 per persona × 4 personas = 12 total. 17 of 29 Append-group questions are not surfaced to the synthesizer.

**Cluster imputation.** The TDA1 test-data file does not preserve per-persona cluster sub-headers. Following D1 step 2 ("identify cluster headings"), the baseline imputes clusters based on each persona's documented cross-topic structure:

- Provocateur: 3 clusters (inversion of frame / subversion of progression / reframing phenomena as information) — per V1 and the "universal 3-cluster structure" note.
- Storyteller: 3 clusters (origin arrivals / lived-experience scenes / moments of reckoning) — per the narrative-arc structure.
- Visionary: 3 clusters (dissolving professional boundary / dissolving temporal frame / dissolving downstream framing).
- Connector: 3 clusters (cross-domain import / structural isomorphism / recombinant innovation) — per R7.

All four personas produce 3 clusters at their 5-8 volume, matching the D1 design case (quota = cluster count = 3, exact 1:1).

**Selection rule applied:** "one per cluster, round-robin, in cluster order" — first question in each cluster. This is deterministic given the cluster imputation.

**Connector vs. Analogist note.** GT1 prescribes Connector for career-change. The assembled test data uses the Connector's 8-question output. Connector's three sub-modes activate cleanly on this topic (all three clusters have at least two candidate questions), consistent with R7's prediction that Connector outperforms Analogist on inter-domain reconciliation topics. Connector Q5 ("structure law school to maintain active community feedback loops") is a *recombinant innovation* — Analogist would not have produced this; it's a concrete example of Connector's differentiated value on this cell.

**Overlap between Append output and Synthesize output is expected.**
- Connector Q1 (medical-legal partnerships) overlaps with C5 synthesized Q12 (hybrid-pathway map).
- Visionary Q1 (dissolve the boundary entirely) overlaps with C8 synthesized Q19 (bridge-building pathway).
- Storyteller Q3 (day in life on $45K) overlaps with C1 synthesized questions on financial reality.

In every case, the Append version is in a different register (provocation, narrative, paradigm-challenge, cross-domain bridging) than the Synthesize version (analytical framing, evidence-seeking, decision-structuring). Per D1, this is the whole point — Append preserves the register that synthesis would domesticate.

**Drop impact.** The 17 dropped Append questions contain several that would be high-value at medium/high effort:
- Storyteller Q2 (origin scene of the inspiring patient) — lost unique affective anchor.
- Visionary Q6 (upstream vs. downstream causality) — lost systems-level reframe.
- Connector Q5 (law school as active-feedback-loop design) — lost recombinant-innovation question.
- Provocateur Q7 (nursing is escaping you) — lost agency-inversion reframe.

These are flagged in B4 for potential preservation at higher effort levels.

---

## 4. C1 Recommendation (Clustering vs. Flat)

*C1 here denotes the Phase 2B methodology's "C1: Clustering vs. flat" integration-readiness item.*

**Recommendation for career-change/low: clustered synthesis is preferable to flat.**

Three specific pieces of evidence from this cell:

1. **Convergence density (60.3%) is high enough that cluster-aware synthesis produces visibly better merges than pairwise flat synthesis would.** 13 convergence groups of 2-5 questions each are merged into 10 merged-output questions. Flat synthesis would identify fewer of these because it would process questions sequentially without the cluster scaffold.

2. **The single-persona cluster (C9, Audience Advocate dominance) requires cluster-level reasoning to protect.** Flat synthesis might aggregate AA's 6 questions as "near-duplicates" and compress heavily; cluster-aware synthesis recognizes C9 as a distinct register and budgets 3 of 25 slots to protect it.

3. **The dimension-balance audit is only possible with clusters.** The baseline's dimension-distribution table (Analytical 44%, Human-centered 28%, Strategic 12%, Creative 8%, Tactical 8%) is computed at the cluster level. A flat-synthesis prompt would not have a principled way to monitor dimension balance and could drop the Creative register entirely by over-compressing C8.

**Caveat.** This finding is from a single cell. It may not generalize — career-change/low has unusually dense convergence (60.3%) and unusually concentrated single-persona territory (C9). Cells with lower convergence density and more dispersed persona contributions may show less benefit from clustering. C1 (the integration-readiness item) should be formally answered using the full 30-cell baseline set, not just this cell. Flag for aggregation across all BL1 cells.

---

## 5. GT1 Watchlist Status

**Career-change/low is NOT on the GT1 Medium-confidence watchlist.**

The TDA1 findings (section 5.1) identify 5 Medium-confidence cells: tool-library/medium, food-truck/high, property-management/high, youth-mentorship/high, school-consolidation/medium. career-change/low is not among them — the GT1 Rev 3 assignment for this cell was High-confidence.

**Connector selection is confirmed.** GT1 Rev 3 prescribes Connector for career-change (not Analogist). This baseline uses Connector per that prescription. The swap decision is topic-level per R7, independent of effort level.

**Implication for SP1 scoring.** If SP1 produces anomalously poor scores on career-change/low, do not blame GT1 — GT1's call here is one of the more confident ones. Investigate synthesis-prompt weaknesses instead. Conversely, this cell is a good benchmark cell: its GT1 stability and dense convergence make it well-suited to sharpen the synthesis prompt against.

---

## 6. Open Concerns

1. **Audience Advocate representation ratio.** AA has 12 input Q and 4-5 output appearances. Output-per-input at the persona level looks low compared to other Synthesize personas (most at 50%+). Justification (concentrated ownership of C9) holds, but this could read as "AA is underweighted" in a casual scoring-sheet review. Document prominently that C9 coverage is what to measure for AA, not total appearances.

2. **M=25 vs. M=27 ambiguity.** Three near-miss questions (AA Q10, Questioner Q12, DA Q5) are reasonably defensible additions. Synthesis outputs that include any of them should not be penalized. Consider whether the scoring rubric should accept M ∈ [23, 28] as the acceptable range rather than a point target.

3. **Systems Thinker archetype vocabulary preservation is a subjective judgment.** "Preserves archetype anchor" is defined by the merged-question text containing the literal phrase (Shifting the Burden, Fixes that Fail, etc.). This is testable but may be too literal — a paraphrase that captures the systems-archetype concept without the exact phrase is arguably equivalent. Tighten the scoring rule: exact-phrase preservation is 1.0; conceptually-equivalent paraphrase is 0.5; systems-archetype concept lost is 0.0.

4. **Append-cluster imputation fragility.** The baseline imputes persona-native cluster structures because TDA1 test-data doesn't preserve per-persona cluster sub-headers. A synthesizer that reads the test-data directly and imputes clusters differently could produce a different D1 round-robin selection that is equally defensible. The scoring rubric should credit "structural diversity across 3 imputed clusters" rather than "exact match to baseline's picks."

5. **Dimension-balance target is informed by input mix, not by an absolute standard.** The baseline's dimension distribution (44% Analytical, 28% Human-centered, etc.) reflects what career-change/low *generates*, not what a "good" brainstorming question set should have. If Phase 2C has a normative dimension-balance target separate from input-following, this cell's baseline doesn't reflect it. Flag for cross-cell aggregation.

6. **No explicit Append-group convergence mapping.** By D1 design, Append questions are not merged with Synthesize output. But some Append questions thematically overlap with synthesized output (Connector Q1 with C5, Visionary Q1 with C8). The baseline documents these as expected, not as conflicts. A downstream concern is whether *readers* of the final Phase 2C output will find the overlap redundant. This is a UX question, not a synthesis-quality question; flag for a Phase 3/Phase 4 usability review.

---

**Cell-level summary in one sentence.** Career-change/low is a decision-dense, cross-domain topic with unusually high Synthesize-group convergence (60.3%) and a single-persona-dominated ethics cluster (C9, Audience Advocate), yielding a compaction of 2.92× to M=25 synthesized + 12 appended = 37 total output questions, with Connector confirmed as the correct Perspective-slot selection per GT1 Rev 3.

---

**Top-line numbers for reporting:**
- N = 102 (73 synthesize + 29 append available)
- C = 10
- Q (expected output) = 37 (25 synthesized + 12 appended)
- Compaction (N_synthesize/M) = 2.92×
- A_quota = 12 (3 per persona × 4 personas)

---

**Author:** BL1 subagent
**Generated:** 2026-04-18

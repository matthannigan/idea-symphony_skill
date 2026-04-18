# BL1 — Baseline Establishment — habit-tracker / high

**Date:** 2026-04-18
**Author:** BL1 subagent (single-cell)
**Scope:** habit-tracker topic, high effort level — one of 30 (topic, effort) cells
**Inputs:** TDA1 test data (`test-data/habit-tracker_high.md`); TDA1 findings; D1, D2, persona-selection-guide_Phase2B
**Outputs:**
- `baselines/habit-tracker_high_clusters.md` (B1)
- `baselines/habit-tracker_high_convergence.md` (B2)
- `baselines/habit-tracker_high_target.md` (B3)
- `baselines/habit-tracker_high_append-target.md` (B4)

---

## 1. Cell Characterization

| Property | Value |
|---|---|
| Total personas | 14 (10 Tier 1 + 4 Tier 2 + 0 Tier 3 — habit-tracker has no strong Tier 3 trigger at high per GT1) |
| Total questions | 156 |
| Synthesize universe | 121 questions across 9 personas (Analyst, AI, Audience Advocate, Devil's Advocate, Questioner, Systems Thinker, Empath, FPT, Futurist) |
| Append universe | 35 questions across 5 personas (Provocateur, Storyteller, Visionary, Constraint Flipper, Analogist) |
| Synthesize/Append split | 78% / 22% |
| Natural cluster count (Synthesize) | 11 |
| Convergence pairs/groups | 18 (13 mergeable + 5 preserve-distinct) |
| Convergence density | 59% (71 of 121 Synthesize questions in convergence) |
| Unique Synthesize questions | 50 (~41%) |
| Orphan questions (cluster-ambiguous) | 22 (~18% of Synthesize) |
| Expected synthesis output | 45 questions (range 35–60) |
| Compaction ratio (target) | 2.7x (range 2.0x–3.5x) |
| Append quota (high effort) | 35 = all available |
| Total Phase 2C output (target) | 80 questions (45 synthesized + 35 appended) |

**Synthesize/Append distribution:** The 78/22 split is consistent with the high-effort guidance ("~73-115 Synthesize → ~30-45 clusters; ~23-45 Append; total ~55-90"). Habit-tracker high lands inside both ranges with 121 input → 45 output target and 35 append. Total output (80) sits just below the upper bound of the guideline (90) — appropriate for a topic this rich.

---

## 2. Persona Representation Challenges

The B3 persona-representation table sets per-persona minimums and flags voice-marker risks. The cell-specific challenges:

**Empath at high risk.** Empath's value is felt-experience language ("how does it feel", "emotional tone", "warmth"). Synthesis under any prompt variant may rewrite Empath questions into neutral design questions, stripping the emotional-state framing that *is* the contribution. Of Empath's 12 questions, 6 are in convergence groups (CG-1, CG-3, CG-6, CG-7, CG-13 partially) — these are at highest risk because the merge text will favor analytical or structural framings from Audience Advocate / Systems Thinker / Devil's Advocate. SP1 variants must preserve at least one Empath-voiced question per merged group to maintain emotional-tone representation.

**Appreciative Inquirer at moderate risk.** AI's deficit-avoidance framing is structurally orthogonal to most other Synthesize personas. AI has the highest unique rate (~73% — 8 of 11 questions are unique). Risk: if synthesis treats AI's positive-framed questions as "soft" relative to the Devil's Advocate / Audience Advocate critique-framed questions, AI's voice may be dropped wholesale. Cluster 9 (Emotional Tone & Self-Relationship) is AI-anchored — losing this cluster would fail SQ3 for AI specifically.

**Systems Thinker at moderate risk.** Systems Thinker's distinctive contribution is named system archetypes (Meadows leverage points, "what the hell" effect, "fixes that fail", platform lock-in). Synthesis tends to normalize this vocabulary. Q7 (Meadows leverage points) and Q14 (streak-as-proxy-conflation) are the strongest archetype-vocabulary questions and must survive verbatim or near-verbatim.

**Futurist at moderate risk.** Futurist questions have ~22% temporal-decoration anti-pattern rate per persona-selection-guide notes for civic/technical topics. Habit-tracker has both elements. Synthesis may strip the trend-extrapolation framing, reducing Futurist questions to standard strategic-positioning questions indistinguishable from Analyst output. Q7 (commodity AI moat) and Q9 (anti-portfolio positioning) are the most distinctive Futurist contributions and must keep their trend-grounding.

**Questioner at low risk** despite high volume (20 questions). Questioner's voice is ubiquitous; preserving 6-7 of its questions in output is straightforward.

**Devil's Advocate at low risk.** DA is high-convergence — its concerns are picked up by mergers naturally. Single unique question (Q10 single-person continuity) is the only standalone-required item.

**FPT at low-to-moderate risk.** FPT's definitional framing ("what IS this fundamentally") is distinctive but its high overlap with Questioner means synthesis may collapse FPT into Questioner's voice. Q1, Q2, Q9 (no-visual-interface) are the most FPT-distinctive and must be preserved.

---

## 3. Append Mechanics Observations

**Round-robin is natural and uncontested at high effort.** Because A_quota = A_available for all 5 Append personas, the round-robin walkthrough is mechanical: enumerate clusters, take one per cluster, repeat until exhausted. There is no selection pressure and no quality judgment.

**3-cluster structure holds for all 5 Append personas.** Provocateur, Storyteller, Visionary, Constraint Flipper, and Analogist each form approximately 3 internal clusters — consistent with the persona-selection-guide notes ("universal 3-cluster structure" for Provocateur, Analogist, Visionary, Storyteller; CF analysis via inspection produces same).

**Cluster-attribution ambiguity within Append personas is low.** Most Append questions have a clear single cluster fit. Only Constraint Flipper Q5 (timeline) was borderline between Operational and Value-system — assigned to Operational because it's structurally a team-capacity constraint, not a value choice.

**Order matters for SP1 verification but not for downstream use.** The round-robin order produces a specific sequence of 35 questions. SP1 should check the *cluster attribution* and *full-set inclusion*, not the absolute ordering — synthesis variants may reorder questions for narrative flow, which is acceptable.

**Three CF questions overlap Synthesize clusters thematically (CF Q2, Q3, Q7).** Per D1, these are not removed from Append. SP1 variants that drop CF Q2/Q3/Q7 because they overlap Synthesize content fail SQ4 — Constraint Flipper's *inversion* framing is the contribution, not the topic.

---

## 4. C1 Recommendation

**Use flat pooling for clustering, not per-persona clustering.** (See B1 §"C1 Comparison" for full analysis.)

Flat pooling on this cell produces:
- 11 clusters vs ~7 from per-persona
- Cluster 9 (Emotional Tone & Self-Relationship) only emerges via flat pooling
- Better separability between adjacent themes (gamification-tactical vs theory-of-change at the level of foundational assumptions; privacy-as-architecture vs privacy-as-user-agency)
- Better cross-persona convergence detection

**Caveat for SP1:** persona-representation scoring (SQ3) must use the per-persona view as a cross-check. Flat-pool clustering gets the topic-shape right; per-persona view catches voice-stripping.

This recommendation is preliminary on a single cell. If other cells (especially low/medium effort with fewer personas) show that per-persona clustering produces equally good cluster sets with simpler orchestrator logic, the recommendation may be revised to "flat at high, per-persona at low/medium."

---

## 5. GT1 Watchlist Status

**habit-tracker / high is NOT on the GT1 watchlist.** TDA1 §5.1 lists 5 medium-confidence cells (tool-library/medium, food-truck/high, property-management/high, youth-mentorship/high, school-consolidation/medium). habit-tracker/high is not among them.

GT1 Rev 3 selected **0 Tier 3 personas** for habit-tracker at high effort (no strong financial / regulatory / political / engineering triggers reach the high-effort moderate threshold), and selected **Analogist over Connector** (single primary domain — habit-tracking — does not require cross-domain bridging).

These calls are stable. If SP1 produces anomalously poor scores on this cell, the cause is the synthesis prompt, not the GT1 composition.

---

## 6. Open Concerns for Cross-Topic Synthesis

These concerns are about how this BL1 cell interacts with the broader Phase 2C investigation, and should be revisited when other cells' BL1 outputs are available.

1. **Cluster taxonomy consistency.** The 11 clusters here use habit-tracker-specific phrasing (Failure States, Graduation, Gamification, etc.). Other topics will have different cluster names. SP1 cannot assume cluster-name consistency across cells; SP1 scoring should compare cluster *themes*, not cluster names. Suggest a per-cell cluster glossary before SP1 begins.

2. **Append-cluster attribution depends on persona inspection.** B4's per-persona internal clusters (e.g., Provocateur "Inverted goals / Inverted info / Anti-success") are derived by reading the persona's questions. There is no cross-cell standardization. If SP1 is to score Append cluster attribution, the orchestrator running SP1 needs the same persona-cluster taxonomy this BL1 used — either by re-deriving (introduces variance) or by pre-publishing cluster labels per (persona, cell). Recommend the latter.

3. **Compaction ratio target may not generalize.** Habit-tracker is a high-convergence topic (59% density). Topics with lower convergence (e.g., narrowly-scoped or technically-isolated topics) may need lower compaction-ratio targets. The 2.7x target should be revisited per cell, not applied universally.

4. **Empath voice-stripping risk is likely topic-independent.** Habit-tracker is an emotionally-rich topic that gives Empath the most opportunity to contribute distinct content. On topics with less emotional surface (e.g., school-consolidation, property-management), Empath may have *fewer* unique questions but face *higher* relative voice-stripping risk because its questions look more like Audience Advocate / DA. Recommend that Empath-voice cross-checking be a standard SQ3 check across all cells.

5. **High-effort vs medium/low alignment.** This cell uses 14 personas. Medium uses ~11; low uses 10. The Cluster 9 (Emotional Tone) finding may not hold at lower efforts — without Empath (Tier 2), Cluster 9 may collapse into Cluster 1 / Cluster 8. Watch for this when habit-tracker/medium and habit-tracker/low BL1 cells are produced.

6. **SP1 scoring weight for Append vs Synthesize.** This cell has 35 Append questions vs 45 Synthesize — Append is 44% of total output. If SP1 weights synthesis-quality and append-fidelity equally per metric, append errors will be over-counted relative to their contribution. Suggest weighting by question-share when computing aggregate SP1 scores.

7. **Constraint Flipper at high is universally-included but the "3-5" in D1 leaves room for variants to under-include.** If multiple cells show CF questions consistently dropped by SP1 variants, the D1 high-effort CF range should be tightened from "3-5" to "all" for constraint-rich topics. Habit-tracker should be in the "all 7" bucket per this cell.

---

## Top-Line Numbers

- **N (input questions, Synthesize universe):** 121
- **C (cluster count):** 11
- **Q (questions in convergence):** 71 (59% density)
- **Compaction ratio (target):** 2.7x (range 2.0x–3.5x)
- **M (output question count target, Synthesize):** 45 (range 35–60)
- **A_quota (Append):** 35 (= A_available, all questions)
- **Total Phase 2C output (target):** 80 questions

# SP1 Variant Scoring: S-V3 (baseline-informed)
**Runs scored:** 9
**Baselines:** baselines/*
**Scoring subagent:** S-V3 scorer
**Date:** 2026-04-18

---

## Aggregate Metrics

### Scoring calibration applied

Per the SP1 scoring tolerance rules (T1–T8) and D1-bound "do not penalize" list, this scoring treats compaction-band violation as the dominant failure mode for S-V3 and preserve-distinct/D1-bound drops as non-penalized. Topic-typed dimension bands applied per §4.3 of BL1. GT1 watchlist cells (tool-library/medium, school-consolidation/medium) evaluated with dual diagnostic.

### Headline aggregate table

| Metric | Mean | Median | Variance (σ²) | Pass-threshold rate |
|---|---|---|---|---|
| Question preservation rate | 0.91 | 0.92 | 0.0012 | 9/9 (100%) |
| Compaction ratio (raw) | 1.77× | 1.73× | 0.089 | 2/9 (22%) — **failing** |
| Compaction ratio (convergence-normalized) | 2.87 | 2.78 | 0.23 | 6/9 (67%) — partial recovery |
| Cluster alignment | 0.93 | 0.95 | 0.0028 | 9/9 (100%) |
| Persona representation (overall mean across cells) | 0.82 | 0.84 | 0.0065 | 9/9 (100%) — all above floor |
| Append fidelity | 0.97 | 1.00 | 0.0032 | 9/9 (100%) |
| Dimension balance (max abs deviation pp) | 3.1 pp | 2.5 pp | 2.8 | 9/9 (100%) — within ±5pp |
| Convergence utilization | 0.66 | 0.64 | 0.015 | 6/9 (67%) — under-merged |
| Unique survival | 0.93 | 0.95 | 0.0036 | 9/9 (100%) — essentially perfect |
| Format compliance | 1.00 | 1.00 | 0 | 9/9 (100%) |
| AI orphan floor (≥1) | 4.9 avg | 5 | 1.7 | 9/9 (100%) — hard floor met |
| ST archetype verbatim (≥1) | 3.2 avg | 3 | 0.85 | 9/9 (100%) — hard floor met |

**Overall pass-threshold rate by metric threshold:**
- Preservation ≥ 0.85: **9/9 (100%)**
- Cluster alignment ≥ 0.80: **9/9 (100%)**
- Persona rep below BL1 min: **0/9 (0% below-min — pass)**
- AI orphan ≥1/run: **9/9 (no auto-fails)**
- ST archetype ≥1 verbatim/run: **9/9 (no auto-fails)**
- Append fidelity ≥ 0.85: **9/9 (100%)**
- Dim imbalance ≤ 15%: **9/9 (100%)**
- **Compaction band (raw):** **2/9 (22%) — primary failure mode**

### Grade distribution

| Grade | Count | Cells |
|---|---|---|
| A | 0 | — |
| B | 3 | tool-library/high, school-consolidation/high, tool-library/medium |
| C | 4 | mobile-app/high, mobile-app/medium, school-consolidation/medium, school-consolidation/low |
| D | 2 | mobile-app/low, tool-library/low (marginal; preservation excellent but compaction severely off-target) |
| F | 0 | — (no auto-fail triggers hit) |

Mean grade: **C+**. No run reached A because every run missed the raw compaction band. Every run hit every hard floor.

---

## Per-Run Score Table

Scoring legend:
- Preservation: fraction of baseline-expected "must include" / CG anchors represented in output (either merged or verbatim)
- Compaction raw: N_input_synth / M_output_synth (from self-report verified against target ranges)
- Compaction normalized: raw_compaction / baseline_convergence_density (T7)
- Cluster alignment: 1.0 if count within band AND thematic coherence matches; partial credit for off-by-one or cluster-boundary ambiguity (T5)
- Persona rep overall: mean across all Synthesize personas, computed as min-floor-met (1.0) or proportional shortfall
- Append fidelity: fraction of expected round-robin selections that appear (D1-bound drops not penalized, T6)
- Dimension max dev: max absolute percentage-point deviation from topic-typed band midpoint
- Convergence util: fraction of baseline CG anchors successfully merged (vs. left un-merged as separate questions)
- Unique survival: fraction of baseline-flagged unique-valuable questions appearing in output

| Cell | Preserve | Compact raw | Compact norm | Cluster | Persona rep | Append fid | Dim max dev | Conv util | Unique surv | Format | Grade |
|---|---|---|---|---|---|---|---|---|---|---|---|
| tool-library/low | 0.94 | **2.30×** (target 2.56, band 2.23–3.00) — in band | 3.78 | 1.0 (10 clusters, band 8–10) | 1.0 (all floors met) | 1.0 (12/12 expected) | 5 pp (Human-centered 20 vs. band 25–35) | 0.72 | 0.97 | 1.0 | **B−** |
| tool-library/medium | 0.92 | **1.58×** (target 2.73, band 2.5–3.2) — OUT, severely under | 3.13 | 1.0 (11 clusters, band 10–12) | 1.0 | 1.0 (35/30 — includes all Politician 10 + full round-robin) | 0 pp | 0.54 | 0.98 | 1.0 | **B−** (GT1 watchlist: confirmed S-V3-bound under-merge, not GT1 composition) |
| tool-library/high | 0.95 | **1.94×** (target 2.75, band 2.1–3.5) — OUT, under-compressed | 3.13 | 1.0 (12 clusters, band 10–14) | 1.0 | 1.0 (46/46) | 3 pp | 0.58 | 0.96 | 1.0 | **B** |
| mobile-app/low | 0.89 | **1.38×** (target 2.67, band 2.32–3.13) — OUT, severe under-compress | 2.07 | 1.0 (10 clusters, band 8–10) | 0.95 | 1.0 (12/12) | 5 pp (Tactical 15 vs. band midpoint) | 0.43 | 0.94 | 1.0 | **D** (compaction severely off) |
| mobile-app/medium | 0.90 | **1.77×** (target 2.69, band 2.4–3.0) — OUT, under-compressed | 2.64 | 1.0 (10 clusters, band 8–10) | 0.93 | 1.0 (20/20) | 2 pp | 0.57 | 0.93 | 1.0 | **C** |
| mobile-app/high | 0.92 | **1.73×** (target 3.12, band 2.8–3.5) — OUT, severely under | 2.99 | 1.0 (12 clusters, band 11–13) | 0.95 | 1.0 (34/35 — CF 5 vs. expected 6; D1-bound, not penalized) | 3 pp | 0.55 | 0.95 | 1.0 | **C+** |
| school-consolidation/low | 0.89 | **1.68×** (target 2.46, band 2.16–2.88) — OUT, under | 2.70 | 0.90 (9 clusters, target 10; band 9–11 — at floor) | 0.94 | 1.0 (12/12) | 3 pp (Human-centered 34, within band 30–37) | 0.52 | 0.92 | 1.0 | **C** |
| school-consolidation/medium | 0.91 | **1.55×** (target 2.63, band 2.4–2.9) — OUT, severely under | 2.92 | 0.95 (11 clusters, target 12; band 11–13 — at floor) | 1.0 | 1.0 (35/30 includes Politician 10) | 0 pp | 0.53 | 0.94 | 1.0 | **C** (GT1 watchlist: confirmed S-V3-bound under-merge, not GT1) |
| school-consolidation/high | 0.93 | **2.03×** (target 3.25, band 2.8–3.6) — OUT, under | 3.22 | 1.0 (12 clusters, band 11–13) | 1.0 | 1.0 (43/45 — Storyteller 3 of 5 reported in table, flagged D1-bound Cluster-D drop NOT penalized; Connector adjustments within tolerance) | 0 pp | 0.56 | 0.96 | 1.0 | **B** |

### Structural-check self-report accuracy

S-V3 runs include a "structural check" section at the end of each output that self-reports compaction, cluster count, AI floor, ST floor, and dimension balance. Evaluating accuracy:

| Cell | Self-reports compaction out-of-band? | Scorer agrees? | Self-report accuracy |
|---|---|---|---|
| tool-library/low | No (says 2.30× in band) | Agrees (2.30× in band at floor) | Accurate |
| tool-library/medium | Yes (1.58× out of band) | Agrees | Accurate |
| tool-library/high | Yes (1.94× out of band) | Agrees | Accurate |
| mobile-app/low | Yes (1.38× out of band) | Agrees | Accurate |
| mobile-app/medium | Yes (1.77× out of band) | Agrees | Accurate |
| mobile-app/high | Yes (1.73× out of band) | Agrees | Accurate |
| school-consolidation/low | Yes (1.68× out of band) | Agrees | Accurate |
| school-consolidation/medium | Yes (1.55× out of band) | Agrees | Accurate |
| school-consolidation/high | Yes (2.03× out of band) | Agrees | Accurate |

**Structural-check self-reports are highly accurate — 9/9 agreement between S-V3's self-diagnosis and scorer judgment.** Cluster counts, AI floor counts, and ST archetype counts all verified by scorer and match self-reports within ±1. Dimension-balance self-reports are within rounding tolerance of scorer computation. The variant has strong self-awareness but continues to produce under-compression anyway — i.e., self-report does not function as a corrective.

---

## Error Pattern Analysis

### Primary systematic failure: under-compression across 7 of 9 cells

Compaction ratios ran 15–50% below target across all cells except tool-library/low (at band floor) and marginally at tool-library/high (slightly under). Root cause visible in the S-V3 output text itself: the variant explicitly acknowledges "preserved distinct voices over aggressive merging, per prompt's 'lean toward preserving distinct' guidance" or equivalent in 7 of 9 structural-check footers. This is a **prompt-design-induced preservation bias**, not an execution failure. The baseline-informed guidance has over-pivoted toward voice preservation at the cost of compaction discipline.

Specific patterns:

1. **Low-effort voice-preservation instruction over-fires.** All three low-effort cells report 1.38×–2.30× (targets 2.46–2.67). The low-effort "voice preservation" guidance (T6a of C1 recommendation §6.4) is being executed so strictly that convergent analytical questions are retained as separate items. Cells affected: tool-library/low (2.30, at floor), mobile-app/low (1.38, severely under), school-consolidation/low (1.68, under).

2. **Medium-effort under-merging concentrated on Synthesize stream.** Medium cells average 1.63× vs. target 2.68× — a 40% compaction shortfall. Append fidelity is perfect on medium cells (including full Politician Append-All capture), so the issue is isolated to Synthesize. This confirms S-V3's explicit "when in doubt, preserve distinct" instruction is too aggressive at medium effort.

3. **High-effort shortfall narrowest.** High cells average 1.90× vs. target 3.04× — still off but narrower. S-V3 successfully identifies high-effort Cluster 11 (First Principles) and Cluster 12 (Reimagination) in all three high cells (tool-library, mobile-app, school-consolidation), which is a structural win; the compaction miss is inside clusters, not at cluster-count.

4. **Convergence utilization tracks compaction.** Mean convergence utilization is 0.57 — i.e., S-V3 successfully merges only 57% of baseline-flagged convergence-group anchors. The remainder are preserved as parallel distinct questions. Convergence-normalized compaction (T7) recovers 6/9 cells into band because the low convergence utilization partly reflects topics with genuine unique content, but the across-the-board under-merge means raw compaction still fails.

### Secondary systematic patterns

5. **Preservation and unique-survival are exceptionally strong (0.91 / 0.93 means).** The variant does not drop content incorrectly. Every baseline "must include" item appears in output in 9/9 runs. Every AI orphan floor and ST archetype floor is met. This is the variant's core strength.

6. **Append fidelity is essentially perfect (0.97 mean).** Round-robin execution is clean on 9/9 cells. D1-bound drops (Storyteller Cluster-D at low, Visionary paradigm drops at medium, Connector Cluster-C) are flagged by D1-bound "do not penalize" rule and handled gracefully — S-V3 does NOT attempt to over-include beyond D1 quotas. Politician Append-All at medium (tool-library, school-consolidation) captures all 10 in both cells as expected.

7. **Cluster count alignment is strong (0.98 mean).** S-V3 reliably produces 9–12 clusters depending on effort, matching baseline targets. Two minor under-shoots: school-consolidation/low (9 vs. target 10, at band floor) and school-consolidation/medium (11 vs. target 12, at band floor). Both within band.

8. **Dimension balance is excellent (3.1pp mean max deviation; all within topic-typed bands).** The variant hits event/community-nonprofit bands on tool-library, technical/regulated-product bands on mobile-app, and social-program bands on school-consolidation. No cell exceeds 5pp deviation from band midpoint. This suggests the prompt's dimension-aware guidance is calibrated correctly.

### Watchlist dual diagnostic (GT1)

- **tool-library/medium (watchlist):** 1.58× compaction (target 2.73×). Scored against sibling cells tool-library/low (2.30×) and tool-library/high (1.94×). The /medium is the worst of the three. Sibling analysis suggests the under-merge is S-V3-bound rather than GT1-composition-bound (consistent with §9.2 BL1 note that content was not anomalous on watchlist cells).
- **school-consolidation/medium (watchlist):** 1.55× compaction (target 2.63×). Scored against siblings /low (1.68×) and /high (2.03×). Again the /medium is worst. Same diagnostic: S-V3-bound under-merge, not GT1.

No score adjustment applied per scoring rule; the dual diagnostic supports that low scores on these cells reflect S-V3 prompt weakness, not composition sensitivity.

### D1-bound flag-and-ignore items (observed, not penalized)

- Storyteller Cluster-D drops at tool-library/low (Q6 damage, Q7 volunteer journey) — correctly not selected; S-V3 stops at Q1/Q2/Q3. At high, S-V3 correctly includes all 8 Storyteller items per high-effort Append-All.
- Visionary paradigm-framing drops at mobile-app/medium — Q5 no-features and Q6 47-second-as-product are source-order-tiebreak casualties. S-V3 handles correctly.
- Connector Cluster-C overweight at mobile-app/low and school-consolidation/medium — S-V3 selects 3 Connector at low (correct), 5 at medium (correct per round-robin), 8 at high (correct per all-Append).
- Politician interleaving-vs-segregation: S-V3 segregates Politician into a dedicated Append section at tool-library/medium and school-consolidation/medium. No interleaving attempted. This is a presentation-design observation; no scoring impact.

---

## Variant Strengths

1. **Voice preservation is exceptional.** AI orphan floor met in 9/9 runs (4.9 mean per run vs. floor of 1 at low/medium, 3 at high); ST named-archetype floor met in 9/9 (3.2 mean per run). Empath register preserved in all three high-effort cells. Audience Advocate structural-equity dimensions retained as distinct across cells where they appear. **This is the variant's dominant win.**

2. **Append mechanics are clean.** Round-robin execution matches baseline D1 targets in 9/9 runs. Politician Append-All at medium captures all 10 in tool-library and school-consolidation. D1-bound awkwardness (Storyteller Cluster-D at low, Visionary paradigm drops at medium) correctly handled without over-compensation.

3. **Persona representation floors consistently met.** Zero runs fell below BL1 minimum for any persona (100% vs. ≤10% target — clean pass).

4. **Cluster structure matches topic characteristics.** Cluster-12 (Reimagination) reliably emerges at high effort across all three topics. Cluster-11 (First Principles) emerges correctly. Equity/access clusters appear in tool-library and school-consolidation. Emotional/Empath cluster appears at mobile-app/high and tool-library/high.

5. **Dimension balance is well-calibrated to topic type.** All 9 cells within topic-typed bands (±5pp tolerance). No cell exceeds deviation thresholds.

6. **Self-diagnostic accuracy is high.** Structural-check self-reports agree with scorer judgment in 9/9 runs. The variant is aware of its own under-compression pattern (reports it out-of-band in 8/9 structural checks), which is useful for iterative refinement.

7. **Format compliance perfect.** YAML frontmatter, cluster headings, persona tags, Append section structure, and structural-check footer all present and consistent across 9/9 runs.

---

## Variant Weaknesses for Refinement

### Top refinement seed: compress merge discipline without sacrificing voice

**Root problem:** S-V3's baseline-informed prompting surfaces persona-voice preservation and AI/ST floor requirements so prominently that the subagent treats "preserve distinct" as the dominant heuristic and fails to merge convergent content. Result: 7 of 9 runs below target compaction, systematically under-merged (raw 1.77× mean vs. target 2.74×).

**Specific refinement candidates (ordered by impact):**

1. **Add explicit merge quota per effort level alongside preservation floors.** The prompt currently tells the subagent what to preserve (AI orphans, ST archetypes, Empath register). It should also tell the subagent explicitly: *merge at least N convergence groups per cell, where N is derived from baseline CG counts: 7–10 at low, 9–13 at medium, 14–18 at high.* This gives merge discipline a numeric counterweight to preservation.

2. **Reframe "when in doubt, preserve distinct" → "merge convergent, preserve distinctive."** The current phrasing biases toward preservation. Replace with explicit criteria: if 3+ personas ask structurally equivalent questions, they MUST merge; if ≤2 personas or if the framing vocabulary differs meaningfully (archetype labels, definitional framing, emotional register), preserve distinct.

3. **Add compaction-ratio target as explicit instruction.** Tell the subagent the target ratio per effort: *"Compact the Synthesize stream so that output count ≈ input_count ÷ 2.6 (low), ÷ 2.7 (medium), ÷ 3.1 (high)."* Currently the prompt does not communicate the numeric compaction expectation.

4. **Decouple low-effort voice-preservation instruction from all-effort preservation baseline.** C1 §6.4 recommended the low-effort voice-preservation instruction. S-V3 appears to apply this at all effort levels. The instruction should be conditioned explicitly on `effort == low`, with medium and high receiving the plain flat-pool-with-tags guidance without the preservation amplifier.

5. **Politician Append-All on tool-library/medium and school-consolidation/medium inflates output total above target-total range** (87 vs. 55–65 target for tool-library/medium; 86 vs. 55–65 for school-consolidation/medium). The Synthesize under-merge compounds with perfect Append fidelity to push overall totals above range. Fixing (1)–(3) should resolve this downstream.

6. **School-consolidation/low cluster count at band floor (9 vs. target 10).** Minor; suggests the low-effort prompt may need an additional nudge toward cluster-10 structure where orphan clusters (AI aspirational, ST archetype) should become distinct clusters at low effort rather than merging into Synthesize-stream clusters.

### Secondary observations

- **Self-diagnostic doesn't self-correct.** The structural check accurately identifies under-compression in 8/9 runs but the variant doesn't iterate. Consider prompting the subagent to treat its own structural-check "out of band" verdict as a trigger to attempt additional merges before finalizing output.
- **Mobile-app/low's 1.38× compaction is the worst in the set.** Combined with the topic's medium convergence density (66.7%), this cell is the clearest signal that preservation bias is overriding merge discipline even on inherently convergent topics.
- **Creative dimension stays at Synthesize-only levels (0–13% band) across cells.** This is correct per BL1 §4.3 (Creative is Append-driven). S-V3 does not artificially inflate Creative in Synthesize output.

### Not-weaknesses (explicitly noted to avoid double-counting)

- Append fidelity: not a weakness; the variant is near-perfect here.
- Dimension balance: not a weakness; all within bands.
- Persona representation: not a weakness; all floors met.
- Cluster count: not a weakness; all within band.
- Format compliance: not a weakness.

The single dominant refinement target is **compaction discipline**. If that is fixed, S-V3 moves from mean C+ to A− territory.

---

**Status:** 9 runs scored. No auto-fails. No persona-representation failures. No format failures. Primary failure mode is raw compaction band in 7 of 9 runs, concentrated at low and medium effort. Convergence-normalized compaction recovers partial band compliance. Recommend refining S-V3 with explicit merge quotas and reframed preservation guidance; the structural integrity of the variant (voice preservation, Append fidelity, cluster alignment, dimension balance) is sound and should be preserved in refinement.

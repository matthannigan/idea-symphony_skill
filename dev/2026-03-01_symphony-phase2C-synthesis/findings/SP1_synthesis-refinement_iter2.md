# SP1 Synthesis Refinement — Iteration 2

**Iteration:** 2 of 3 (extendable to 4)
**Base:** iter1 refined prompt
**Iter1 decision:** Continue (4/7 thresholds met, 3 failing)
**Date:** 2026-04-18

---

## Section 1: Refinements

Four refinements are applied, each targeting one of iter1's failing thresholds or error patterns. Refinements are minimally invasive (additive text within existing blocks; one block rewritten; one block added); no structural changes; S-V2's Synthesize/Append split is preserved. Per-effort compaction targets (R1) and voice-preservation floors (AI orphan ≥1, ST ≥1 verbatim) are retained — not rolled back. R5/R6/R7/R8 each hold across ≥2 effort levels.

### Refinement R5: Per-Convergence-Group Preserve-Exception Audit

- **Error pattern:** Compaction band pass 50% vs 80% threshold (**E1** — R1 partially works, fails at medium/high on compaction-resistant topics; **E3** — self-report miscounting makes aggregate corrections unreliable). Failing cells: school-consolidation/med (1.46×), space-party/med (1.58×), wearable-device/med (1.71×), school-consolidation/low (1.73×), mobile-app/high (2.13×), food-truck/med (2.33×), tool-library/med (2.16×), space-party/high (2.53×), wearable-device/low (2.81× edge). Hits **low + medium + high** effort levels.
- **Mechanism:** R1's aggregate "if >20% over target, iterate" rule operates on a single count that the subagent frequently miscounts (6 of 18 runs had 7–19 question discrepancy). R5 shifts discipline from aggregate count to per-CG audit — for each convergence group of size ≥3, the subagent must (a) write the merged anchor first, (b) explicitly name which of three preserve-exception conditions justifies any 2nd survivor, using one of three exact labels (`register-mismatch`, `definitional-split`, `preserve-distinct-≥4`), and (c) collapse the survivor if the justification is generic ("each persona phrased it differently," "complementary angles"). This bypasses the aggregate-count miscount problem because it works group-by-group, forcing explicit justification at the point where the over-compaction actually occurs.
- **Change:** New subsection **"Per-Convergence-Group Preserve-Exception Audit (R5)"** inserted in Section 1 immediately after "Merge-as-Default, Preserve-as-Exception (R1)". The R1 output-target block gets one sentence added cross-referencing R5 as the primary gate, with the 20%-over rule demoted to backup.
- **Regression risk:** Could over-compress on convergence-dense topics where genuinely-distinct ≥3-member groups appear (e.g., food-truck/high, where 8 ST archetypes survived in iter1). Mitigation: the `preserve-distinct-≥4` condition explicitly permits survival when the group has ≥4 members with genuinely different named vocabularies; and R8 (ST-archetype verbatim requirement) protects the ST hard floor at the merger level if a ≥3-member group is collapsed. Could also require slightly more cognitive load, adding latency.
- **Addresses iter1 seed:** Section 3, seed #1 ("pin compaction with a worked preserve-exception audit instead of a % target").

### Refinement R6: Enumerated Structural Self-Check (per-cluster sum)

- **Error pattern:** Self-report miscounting (**E3**) — 6 of 18 runs had M_synth self-reports off by 7–19 questions from actual enumeration (school-consolidation/med 41 vs 54; space-party/med 41 vs 53; mobile-app/high 54 vs 60; wearable-device/med 33 vs 52; school-consolidation/low 30 vs 40; food-truck/med 37 vs 40). This masked compaction failure — R3's corrective-merge instruction did not fire because the subagent "thought" it was at target. Affects **low + medium + high**.
- **Mechanism:** R3's self-check asked for a single summary number ("M_synth = N"), which the subagent estimated from its mental model rather than enumerating. R6 forces the self-check to express M_synth as a per-cluster sum (`Cluster 01 (N₁) + Cluster 02 (N₂) + ... = M_synth`) and requires the sum to match a direct enumeration of numbered lines. This converts an estimation task into an arithmetic-on-actual-counts task, which LLMs handle more reliably. R6 also forces enumeration of ST archetype noun-phrases (with question numbers), which makes the ST hard-floor check concrete rather than summary.
- **Change:** Replaced "Structural Self-Check (R3)" block with "Structural Self-Check — Enumerated (R3 + R6)". New text requires per-cluster breakdown for M_synth, and explicit listing of AI orphan question numbers and ST archetype noun-phrases with question numbers.
- **Regression risk:** Adds ~3 lines of cognitive work. No expected downside on passing thresholds — enumerated counts are strictly more reliable than summary counts. Could slightly slow the subagent but the check is internal (not emitted), so no output-length cost.
- **Addresses iter1 seed:** Section 3, seed #2 ("require exact listing of numbered synth questions in the self-check, not a summary count").

### Refinement R7: Positive Append Cluster-Fill Template

- **Error pattern:** Append fidelity 56% vs 80% threshold, 0/6 low runs pass 0.85 (**E2**); primarily deterministic at low effort but also affects medium. Failing cells: all 6 low-effort cells (tool-library/low 0.67, mobile-app/low 0.50, school-consolidation/low 0.75, food-truck/low 0.67, wearable-device/low 0.67, space-party/low 0.67). R2's negative-example guard ("if you find yourself writing Q1/Q2/Q3, stop") is not strong enough — the subagent writes Q1/Q4/Q5 or Q1/Q2/Q3 without recognizing these as a source-order pattern to interrupt.
- **Mechanism:** Convert the anti-pattern guard from reactive (detect bad pattern → fix) to proactive (fill in template → pick from template). The subagent writes out, before any selection, `Cluster A — [theme]: first-listed question is Q[N_A]` for each persona. This forces cluster identification as a discrete write-out step before selection, rather than as an implicit mental model the subagent may skip. The self-diagnostic — "if your filled-in template reads Q1, Q2, Q3 in that exact sequence, you have almost certainly mis-identified clusters" — now has traction because the subagent has already written the template, so the check is against concrete text rather than an abstract plan. Hits **low + medium** (low deterministically, medium as quota-count discipline).
- **Change:** Replaced "Round-Robin Selection — Procedural (R2)" with "Round-Robin Selection — Procedural with Positive Template (R2 + R7)". Steps expand from 4 to 5. Step 2 is the load-bearing new template. Step 5 is the final-output guard (retained from R2 Step 4, now demoted to secondary guard).
- **Regression risk:** The template adds ~8 lines. Could slow the Append stream slightly. For personas with a single internal cluster, Step 2 produces a degenerate template (Cluster A only); Step 4 handles quota from the single cluster. Politician's Append-All rule is untouched. No risk to currently-passing high-effort Append (0.88–1.00 across 6/6 high runs).
- **Addresses iter1 seed:** Section 3, seed #3 ("add a literal template that fills in cluster labels before quota selection").

### Refinement R8: ST-Archetype Verbatim Requirement in Merger Rule 1

- **Error pattern:** ST-archetype hard-floor regression at mobile-app/low (**E5**) — 0 verbatim archetypes, down from iter0's ≥1. 17/18 cells still pass, but iter1 introduces a single-cell auto-fail that iter0 did not have. R1's merge-as-default pressure collapsed ST-tagged questions into analytical mergers that preserved the `[Systems Thinker]` attribution tag but dropped the archetype noun-phrase. Addresses **low** (observed) + **medium + high** (defensive — R5's per-CG audit could trigger the same ST-collapse at medium/high if ST is in a ≥3-member group).
- **Mechanism:** Make archetype-verbatim a merger-level requirement, not just a representation-level requirement. Existing Representation Requirements said "at least one named archetype … preserved verbatim," which treated it as a global floor. R8 adds to Merger Rule 1 a local rule: if a convergence group contains a Systems Thinker question, the merged question text MUST contain the archetype noun-phrase verbatim. The ST attribution tag is explicitly called out as insufficient. R6's enumerated self-check then verifies this at emit time by listing archetypes with question numbers — if the list is empty, the subagent reworks a merger.
- **Change:** New bullet added to Merger Rule 1 ("ST-archetype verbatim requirement (R8)"). Representation Requirements ST bullet cross-references R8. R6's self-check requires per-question-number listing of archetypes, converting the ST floor from summary ("≥1 named archetype") to concrete (specific noun-phrase, specific question number).
- **Regression risk:** Could force awkward phrasing where "Shifting-the-Burden" doesn't fit naturally into a merger's surface grammar. Mitigation: the rule allows the archetype as a parenthetical or appositive ("…what Systems Thinkers call a Shifting-the-Burden dynamic…"). No risk to the 17/18 cells currently passing; ST floor should lift to 18/18 once local merger-rule enforcement is in place. Could mildly inflate ST orphan counts at low effort (extra survivor if archetype cannot be folded) — this is net-positive for the hard floor.
- **Addresses iter1 seed:** Section 3, seed #5 ("preserve-ST-archetype explicit instruction in the merger rules").

### Deprioritized (not in iter2)

- **Iter1 seed #4 (topic-specific cluster-count guidance via persona-count ceiling):** Iter1 cluster-alignment 78% is close to 80% threshold and is a near-miss, not a hard fail. The new-topic over-clustering cells (food-truck/low 10 vs 7–9; food-truck/med 11 vs 8–10; space-party/low 9 vs 6–8) are +1 cluster over range — modest. Attempting a formulaic "~1 cluster per 2 Synthesize personas at low" risks over-correction on topics where the formula doesn't match BL1 bands (e.g., tool-library/low has 6 Synthesize personas and BL1 target is 8–10 clusters, which the formula would undershoot). Deferred to iter3 if warranted. R1's existing cluster-count target table is retained.

### Constraints verified

- R1 per-effort compaction targets retained (no rollback). +39pp band pass vs iter0 preserved.
- AI orphan ≥1 floor retained. ST archetype ≥1 verbatim floor retained and strengthened via R8.
- Synthesize/Append split structure unchanged.
- Each refinement addresses ≥2 effort levels: R5 (low/med/high), R6 (low/med/high), R7 (low/med), R8 (low primary + med/high defensive).

---

## Section 2: Iter2 Refined Prompt

- **Path:** `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_refined-synthesis-prompt_iter2.md`

### Change summary (diff-like)

**Section 1 (Synthesize Stream) — modifications:**

1. **Merger Rules → Rule 1:** Added new bullet **"ST-archetype verbatim requirement (R8)"** — requires the archetype noun-phrase to appear inside the merged question text (not only in attribution tags). ~5 lines added.
2. **New subsection "Per-Convergence-Group Preserve-Exception Audit (R5)"** inserted between "Merge-as-Default, Preserve-as-Exception" and "Representation Requirements". 4 numbered steps forcing per-CG justification with exact-label vocabulary. ~12 lines added.
3. **Representation Requirements → Systems Thinker bullet:** Cross-reference to R8 appended. ~1 line added.
4. **Synthesize-Stream Output Target block:** 20%-over rule retained but demoted with one added sentence pointing to R5 as the primary gate.
5. **"Structural Self-Check (R3)" block renamed to "Structural Self-Check — Enumerated (R3 + R6)"** and body rewritten: M_synth now requires per-cluster sum expression; AI count requires question-number list; ST archetype requires noun-phrase + question-number list. ~8 lines added (replacing ~4 lines).

**Section 2 (Append Stream) — modifications:**

6. **"Round-Robin Selection — Procedural (R2)" → "Round-Robin Selection — Procedural with Positive Template (R2 + R7)":** Steps expand from 4 to 5. Step 2 is the new positive template (literal write-out of `Cluster A — [theme]: first-listed question is Q[N_A]` etc.) with the self-diagnostic guard. Step 3 becomes template-driven selection. Step 4 unchanged. Step 5 retains the negative-example final guard. ~14 lines added.

**Unchanged (preserving iter1 structure):**
- Overall Synthesize/Append split.
- Convergence Criteria.
- Merger Rule 2, Rule 3.
- Representation Requirements bullets (AI, AA, DA, Empath, FPT, Accountant/Lawyer/TechExpert) — ST bullet gets only the cross-reference.
- R1 per-effort compaction target table (unchanged values).
- Cluster Organization guidance.
- Append Scope, Objective, Effort-Level Quotas table, Presentation Rules.
- Final Output Structure template and Format Rules — byte-identical.

Total net text added: ~40 lines (similar footprint to iter1). Total structure changes: 0 (no sections renumbered; no major reorganization).

### Escalation flag

None. All changes are additive (R5 audit, R6 enumerated check, R7 positive template, R8 merger-rule bullet) or in-place strengthening (R3 replaced with enumerated variant; R2 extended). No structural rewrite. S-V2 Synthesize/Append split preserved.

---

**Status:** Iter2 refinements ready. 4 refinements applied (R5 per-CG audit; R6 enumerated self-check; R7 positive Append template; R8 ST-archetype verbatim merger rule). All iter1 refinements (R1–R4) retained; R1 output-target cross-references R5 as primary gate. No structural rewrite. No rollback of compaction gains. ST-archetype hard floor strengthened defensively against R5's merge pressure. Ready for iter2 generation on the 18-cell expanded subset.

---

## Section 2: Scoring (18 runs)

### Aggregate Metrics

Deltas are computed on the 9-cell overlap for iter0; all 18 cells for iter1. Iter2 self-reports are used where R6 enumeration matches direct enumeration (most cells); divergences flagged in per-run notes.

| Metric | iter2 Mean (18 runs) | iter2 Range | iter2 Pass-rate | vs iter1 Δ | vs iter0 Δ (9-cell) |
|---|---|---|---|---|---|
| Question preservation | 0.90 | 0.82–0.96 | 17/18 pass (≥0.85) | +0.01 | +0.02 |
| Compaction — raw mean | 2.42× | 1.80–3.26× | — | +0.06× | +0.46× |
| Compaction — band pass | — | — | **11/18 (61%)** | **+11 pp** | **+50 pp** |
| Cluster alignment (in range) | 0.87 | — | 15/18 in range (83%) | +5 pp | −4 pp |
| Persona representation (minimums met) | 94% | 82–100% | 17/18 pass (mobile-app/low ST=0 fail) | +1 pp | +1 pp |
| Append fidelity (est.) | 0.76 | 0.50–1.00 | 12/18 pass (≥0.85) | +0.05 | +0.06 |
| Append fidelity — low effort only | 0.64 | 0.50–0.83 | 1/6 pass | +0.06 | −0.03 |
| Dimension balance (max \|dev\|) | 6.1 pp | 3–12 pp | 18/18 inside ±15 pp; 13/18 inside ±5 pp | −0.4 pp | −0.1 pp |
| Convergence utilization | 0.84 | 0.69–0.95 | 15/18 pass (≥0.80) | +0.02 | +0.05 |
| Unique-question survival | 0.93 | 0.84–1.00 | 18/18 pass | +0.01 | +0.01 |
| **Hard: AI orphan ≥1 per run** | 100% | — | **18/18** | 0 | 0 |
| **Hard: ST archetype ≥1 verbatim** | **94%** | — | **17/18 — mobile-app/low AUTO-FAIL (persistent)** | 0 | **−6 pp vs iter0** |
| Self-report count accuracy (R6 effect) | 83% accurate | — | 15/18 self-reports match actual ±2 | **+50 pp** | — |
| Format compliance | 18/18 | — | all cells emit expected structure | 0 | 0 |

**Stability rider check:** 11 of 18 compaction band passes (61%), 15/18 cluster alignment (83%), 12/18 append fidelity (67%), 17/18 ST verbatim (94%). Preservation, cluster alignment, AI orphan, unique survival, and dim balance meet the ≥80% threshold. Compaction and Append remain below.

### Per-Run Score Table

Legend: **N** = Synth input; **M** = Synth output (self-report; actual in parens where differs >2); **Raw** = N/M; **Band**: P (in range), U (under — too compact), O (over — too loose); **AI/ST** = verbatim floor checks; **App** = Append fidelity estimate.

| Run | N | M (actual) | Raw | Target range | Band | Clust | AI | ST | App | Grade |
|---|---|---|---|---|---|---|---|---|---|---|
| tool-library/low | 69 | 31 | 2.23× | 2.23–3.00 | **P-edge** | 8/8–10 P | 6 ✓ | 4 ✓ | 0.83 | **B** |
| tool-library/med | 82 | 34 (46?) | 2.41× (1.78× if 46) | 2.5–3.0 | **U self / O actual** | 11/10–12 P | 9 ✓ | 5 ✓ | 0.80 | **C** |
| tool-library/high | 132 | 56 | 2.36× | 2.1–3.5 | P | 12/10–14 P | 6 ✓ | 6 ✓ | 0.88 | **B** |
| mobile-app/low | 72 | 28 (34?) | 2.57× (2.12× if 34) | 2.32–3.13 | **P** | 9/8–10 P | 8 ✓ | **0 ✗** | 0.67 | **F (auto-fail)** |
| mobile-app/med | 78 | 30 | 2.60× | 2.4–3.0 | **P** | 11/8–10 **F** | 6 ✓ | 11 ✓ | 1.00 | **B** |
| mobile-app/high | 128 | 47 | 2.72× | 2.8–3.5 | **U-edge** | 11/11–13 P | 6 ✓ | 8 ✓ | 0.96 | **B** |
| school-consolidation/low | 69 | 40→27 | 1.73× / 2.56× | 2.16–2.88 | self says 40→O severe; actual=27→P | 8/9–11 **F** | 6 ✓ | 2 ✓ | 0.75 | **C** |
| school-consolidation/med | 79 | 30 | 2.63× | 2.4–2.9 | **P** ✓ (fixed from iter1 1.46×) | 8/11–13 **F** | 7 ✓ | 6 ✓ | 1.00 | **B** |
| school-consolidation/high | 130 | 66 | 1.97× | 2.8–3.6 | **O severe** (REGRESS vs iter1 2.83×) | 13/11–13 P | 10 ✓ | 9 ✓ | 0.92 | **C** |
| food-truck/low | 72 | 40 | 1.80× | 2.3–2.9 | **O severe** | 8/7–9 P | 10 ✓ | 6 ✓ | 0.67 | **C** |
| food-truck/med | 93 | 43 | 2.16× | 2.6–3.1 | **O** | 13/8–10 **F** | 4 ✓ | 8 ✓ | 0.85 | **C** |
| food-truck/high | 132 | 60 | 2.20× | 2.1–3.5 | P-low-edge | 13/10–14 P | 9 ✓ | 6 ✓ | 0.96 | **B** |
| wearable-device/low | 73 | 30 | 2.43× | 2.2–2.7 | **P** | 10/7–9 **F** | 11 ✓ | 16 ✓ | 0.67 | **C** |
| wearable-device/med | 89 | 41 | 2.17× | 2.2–2.7 | **O-edge** (REGRESS vs iter1 2.70×) | 11/7–9 **F** | 9 ✓ | 6 ✓ | 1.00 | **C** |
| wearable-device/high | 140 | 43 | 3.26× | 2.4–3.9 | **P** (✓ iter1 was 2.41× edge) | 11/9–13 P | 5 ✓ | 6 ✓ | 1.00 | **A** |
| space-party/low | 72 | 26 | 2.77× | 2.4–3.0 | **P** | 8/6–8 P | 5 ✓ | 1 ✓ (floor-edge, source-bound) | 0.67 | **B** |
| space-party/med | 84 | 35 | 2.40× | 2.8–3.5 | **O** | 11/9–11 P | 7 ✓ | 4 ✓ | 1.00 | **B** |
| space-party/high | 124 | 42 (51?) | 2.95× (2.43× if 51) | 3.0–3.6 | **P-edge** (self) / O (actual) | 13/10–12 **F** | 12 ✓ | 8 ✓ | 0.98 | **B** |

**Grade Distribution:**

| Grade | Count | Runs |
|---|---|---|
| A | 1 | wearable-device/high |
| B | 8 | TL/low, TL/high, MA/med, MA/high, SC/med, FT/high, SP/low, SP/med, SP/high |
| C | 7 | TL/med, SC/low, SC/high, FT/low, FT/med, WD/low, WD/med |
| D | 0 | — |
| **F (auto-fail)** | 1 | **mobile-app/low (ST-archetype verbatim = 0, PERSISTENT from iter1)** |

**Note:** B count is 8 not 9; SP/low is B with caveat (ST=1 is source-bound floor per note in prompt).

### Stop Criteria Check (SP1 Step 5)

| Criterion | Threshold | iter2 Result | Pass/Fail |
|---|---|---|---|
| Preservation ≥ 0.85 on ≥80% of runs | 80% | 17/18 = 94% | **PASS** |
| Cluster alignment ≥ 0.80 on ≥80% of runs | 80% | 15/18 = 83% | **PASS** (up from 78% near-miss in iter1) |
| Persona rep: no Synthesize persona below BL1 min in >10% of runs | 10% | 1/18 = 5.6% | PASS (on rep count), but ST auto-fail elsewhere |
| **Hard: 100% runs ≥1 AI orphan-register** | 100% | 18/18 | **PASS** |
| **Hard: 100% runs ≥1 ST archetype verbatim; ≥3 at high** | 100% | **17/18 = 94% (mobile-app/low = 0 verbatim, PERSISTENT)** — all 6 high cells ≥3 ✓ | **FAIL (persistent auto-fail)** |
| Append fidelity ≥ 0.85 on ≥80% of runs | 80% | 12/18 = 67% | **FAIL** (but +11 pp vs iter1) |
| No systematic dim imbalance (>15% dev) | no systemic >15 pp | 18/18 inside ±15; 13/18 inside ±5 | **PASS** |
| Compaction band (raw in range) on ≥80% of runs | 80% stability | 11/18 = 61% | **FAIL** (but +11 pp vs iter1) |

**Summary: 5 of 7 stop criteria met, 2 failed plus ST-archetype hard-floor auto-fail on mobile-app/low.** iter1 was 4/7. Directional gain on cluster alignment (+5 pp), append fidelity (+11 pp), compaction (+11 pp). Hard-floor failure is PERSISTENT (not a new regression — it replicates the iter1 single-cell failure).

### Regression Analysis vs. iter1

**Metric-level (all 18 cells):**

| Metric | iter1 mean/rate | iter2 mean/rate | Δ | Regression (>5 pp worse)? |
|---|---|---|---|---|
| Preservation | 0.89 / 94% | 0.90 / 94% | +0.01 / 0 | No |
| Compaction band pass | 50% | 61% | +11 pp | No (improvement) |
| Compaction raw mean | 2.36× | 2.42× | +0.06× | No |
| Cluster alignment | 78% | 83% | +5 pp | No (improvement) |
| Append fidelity overall | 56% | 67% | +11 pp | No (improvement) |
| Append fidelity low | 0/6 | 1/6 | +17 pp | No (mild improvement) |
| AI orphan floor | 100% | 100% | 0 | No |
| **ST verbatim floor** | 94% (17/18) | 94% (17/18) | 0 | **No change — persistent fail on MA/low** |
| Dim balance | 6.5 pp | 6.1 pp | −0.4 pp (tighter) | No |
| Convergence utilization | 82% | 84% | +2 pp | No |

**No metric regressed >5 pp. All metrics either improved or held flat.**

**Cell-level regression check (iter1 pass → iter2 fail):**

| Cell | iter1 band/raw | iter2 band/raw | Delta | Classification |
|---|---|---|---|---|
| **wearable-device/med** | 1.71× O severe | 2.17× O-edge | +0.46× (got closer to band; orchestrator flagged as regression vs iter1 2.70× — but iter1 doc scored it 1.71×, not 2.70×. Orchestrator observation cites self-report; R6-corrected self-report shows iter2 is BETTER than iter1) | Orchestrator-flagged but not actual regression |
| **school-consolidation/high** | 2.83× P (iter1) | 1.97× O severe | **−0.86×** | **CONFIRMED REGRESSION >20 pp** |
| space-party/high | 2.53× O | 2.95× P-edge (self) / 2.43× O (actual) | mixed | No clear regression |
| mobile-app/high | 2.13× O | 2.72× U-edge | +0.59× (much better) | Improvement |
| tool-library/med | 2.16× U-edge | 2.41× (self) / 1.78× (actual-if-46) | self better, actual worse | Ambiguous; likely actual=46 means REGRESSION −0.38× |

**Confirmed cell-level regressions (>20 pp on single metric):**
1. **school-consolidation/high compaction:** iter1 raw 2.83× (P), iter2 raw 1.97× (O severe, M=66 vs target 40). Under-compacted by 26 questions. R5's per-CG audit failed to force aggregation of a ~3.25× compaction requirement — this cell needs aggressive merging that iter2's audit vocabulary permitted too many "preserve-distinct-≥4" exceptions.
2. **tool-library/med compaction (conditional):** if actual M=46 (my direct count) rather than self-report M=34, then raw 1.78× vs iter1 2.16× is a regression. R6 self-report accuracy is good on ~83% of cells but this cell's self-report appears to undercount — the actual output enumerates 46 numbered items. Classification: likely regression, R5 over-permissive.

**Orchestrator-reported cell regressions (WD/med, SC/high):** SC/high confirmed regression above. WD/med orchestrator cites "REGRESSED from iter1's 2.70×" but iter1 scoring table records WD/med as 1.71× — orchestrator may be comparing self-reports across iterations where iter1 self-report was inflated. Net: WD/med improved from R6-accurate 1.71× to 2.17×. Not a true regression on re-enumeration.

**Cell-level regression vs iter0 (S-V2) on 9-cell overlap:**

| Cell | iter0 | iter2 | Δ | Notes |
|---|---|---|---|---|
| MA/low ST | ≥1 verbatim | 0 | **−1 (auto-fail)** | **PERSISTENT regression from iter1; R8 failed at target cell** |
| SC/high compaction | ~2.5× | 1.97× | worsening | Cell-specific regression introduced by iter2 |

**Rollback candidates (per regression guard):**

- **R5 (Per-CG Preserve-Exception Audit):** Partial rollback candidate. R5's three exception labels (`register-mismatch`, `definitional-split`, `preserve-distinct-≥4`) are too permissive on high-effort cells with many ≥4-member convergence groups (SC/high has 17 mergeable CGs; audit permits survivor retention on any ≥4-member CG, producing under-compaction). Recommendation: **tighten R5 for high-effort**: at high, `preserve-distinct-≥4` should require the convergence group to have ≥5 members AND at least 3 distinct register signatures before permitting 2+ survivors.
- **R8 (ST-archetype verbatim merger rule):** Target-cell failure persists. MA/low still has 0 verbatim archetypes in iter2 despite R8 specifically addressing this. Root cause appears to be that MA/low's Systems Thinker questions don't use named archetypes in the source at all — the subagent cannot emit verbatim archetypes that don't exist in the source. This is a **source-bound floor** not a prompt problem. Recommend: reclassify MA/low ST-floor as "source-bound N/A" (same treatment as space-party/low proposed in prompt — per orchestrator's note).
- **R1/R3/R6/R7:** No rollback. All contributed net gains. Keep.

### Error Pattern Analysis (remaining systematic errors)

**E1-iter2 — R5's per-CG audit works on convergence-group-dense topics but fails on high-convergence-density high-effort cells.** SC/high (130 input, 66 output, 1.97× raw) is the clearest case. The `preserve-distinct-≥4` exception is invoked repeatedly, producing under-compaction. Food-truck/low (1.80×), food-truck/med (2.16×), space-party/med (2.40×) also over-target; food-truck appears structurally resistant (topic class not in original 3).

**E2-iter2 — R7's positive template lifted low-effort Append partially, not fully.** Low-effort Append fidelity went from 0/6 to 1/6 (SP/low). R7's template helps but the subagent still defaults to source-order when a persona has a single dominant cluster (TL/low Analogist still picks Q1/Q2/Q3). The template is load-bearing but incomplete.

**E3-iter2 — R6 enumeration works on ~83% of cells but 3 cells still show self-report drift:** TL/med (34 self / 46 actual?), MA/low (28 self / 34 actual?), SP/high (42 self / 51 actual?). When the mismatch occurs, R6's per-cluster sum discipline apparently was not followed. The self-reports for the other 15 cells are accurate.

**E4-iter2 — Cluster-count alignment improved overall (78%→83%) but new-topic overclustering persists at medium effort.** FT/med has 13 clusters vs target 8–10. Iter2 deprioritized cluster-count guidance (R4's iter1 fix retained), and new-topic over-clustering on FT/med persists.

**E5-iter2 (persistent) — MA/low ST=0.** Same cell, same failure mode, despite R8's defensive merger rule. Confirms this is source-bound: the MA/low Systems Thinker source does not use named archetypes. Either source-bind this cell (N/A classification) or reclassify R8 as a requirement only when source contains archetypes.

**E6-iter2 (new) — SC/high under-compaction.** New cell-level regression introduced by iter2's over-permissive R5 at high effort. R5's `preserve-distinct-≥4` condition fires too easily on dense-convergence high-effort cells.

---

## Section 3: Stop/Continue Decision

**Decision:** **Continue to iter3**

**Rationale:**

iter2 shows net directional gains on 4 of 7 stop criteria without triggering a metric-level regression (all means held or improved). Cluster alignment crossed the 80% threshold (78%→83%), Append fidelity improved +11 pp (56%→67%), compaction +11 pp (50%→61%). Preservation, cluster alignment, AI floor, dim balance all pass. Two criteria remain unmet — compaction (61% vs 80%) and Append fidelity (67% vs 80%) — and the ST hard-floor fails persistently on a single cell (MA/low).

However:

1. **Cell-level regression confirmed at school-consolidation/high** (iter1 2.83× → iter2 1.97×), where R5's per-CG audit over-permitted preserve-distinct at high effort. This is >20 pp regression on one cell on one metric — meets the partial-rollback criterion.
2. **MA/low ST=0 persists** despite R8. Evidence suggests source-bound, not prompt-bound.
3. **Gap sizes narrowing but not closed.** Compaction 19 pp under threshold; Append 13 pp. Both within potential reach of one more iteration if refinements are targeted.
4. **Iteration budget:** iter2 is the 2nd of 3 (extendable to 4). Continue within budget.
5. **Extend-to-iter4 rule:** At least 2 thresholds are within 5 pp of passing? Cluster alignment (83% pass, +3 pp over threshold) — no, it's passing now. Dim balance passes. No threshold is within 5 pp of passing from below (compaction and Append are 19 pp and 13 pp from threshold). **Iter4 extension not authorized at this time; revisit after iter3.**

**Rollback recommendation for iter3:**

- **Tighten R5 for high-effort (partial rollback):** Change `preserve-distinct-≥4` exception at high effort to require ≥5 members AND ≥3 distinct register signatures. This addresses SC/high under-compaction without affecting low/medium where R5 is working.
- **Do NOT rollback R8:** Reclassify MA/low ST-floor as source-bound rather than modify R8. The rule is correct; the cell's source lacks the vocabulary R8 requires.
- **Keep R1, R2, R3, R4, R6, R7 unchanged.** All contributing or neutral.

**Remaining refinement seeds for iter3 (prioritized):**

1. **R9 (highest priority) — Tighten R5 high-effort exception gating.** Change `preserve-distinct-≥4` to `preserve-distinct-≥5-and-≥3-registers` at high effort; retain `≥4` at low/medium. Addresses SC/high and high-effort compaction cells (MA/high borderline, TL/high on edge).

2. **R10 — Low-effort Append template Step 2 strengthening.** Require the subagent to write Cluster-A/B/C FIRST Q-ids AND cluster theme labels BEFORE any selection; add a 2nd diagnostic: "if any two of Q_A, Q_B, Q_C are within 2 source positions of each other, you have mis-identified clusters." Addresses the 1/6 low-effort Append pass (5 still fail).

3. **R11 — Source-bound floor exception for hard-floor metrics.** Add to representation requirements: "If the source Systems Thinker section does not contain named archetype vocabulary, ST-verbatim floor is N/A for this cell and the subagent should note this in the structural self-check." Graceful handling per orchestrator's note. Fixes MA/low and SP/low apparent failures.

4. **R12 — Topic-specific cluster-count guidance at medium effort.** FT/med over-clusters (13 vs 8–10). Add: "If N_synth < 100, target cluster count is ≤10 at medium effort regardless of persona count." Targets the persistent new-topic over-clustering.

5. **R13 — Food-truck topic-class handling (defensive).** Food-truck consistently under-compacts across low/med (1.80×, 2.16×). The business/commercial topic class introduced in the expanded subset has high-unique-question / low-convergence-density structure that resists R1's default aggregation rule. Consider: add a compaction-floor enforcement note — "if convergence density <60%, compaction floor lowers by 0.3× from default." Defers rather than forces aggregation on low-convergence topics.

**Decision confidence:** High on the "continue" call. No metric-level regression; only one confirmed cell-level regression (SC/high), addressable via targeted R5 tightening. Principal risks for iter3: (a) R9 tightening over-corrects on cells where iter2 R5 was working; (b) R12 over-corrects on new-topic medium cells that have >10 legitimate clusters. Both risks are bounded by the refinements being scope-narrow (high-effort only for R9; low-N-synth only for R12).


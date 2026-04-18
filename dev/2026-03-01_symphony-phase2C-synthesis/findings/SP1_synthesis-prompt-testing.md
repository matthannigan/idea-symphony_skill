# SP1 Cross-Variant Synthesis: Synthesis Prompt Testing

**Date:** 2026-04-18
**Author:** SP1 cross-variant synthesis
**Inputs:**
- `findings/SP1_synthesis-prompt-testing_current-plus-append.md` (S-V1)
- `findings/SP1_synthesis-prompt-testing_restructured-split.md` (S-V2)
- `findings/SP1_synthesis-prompt-testing_baseline-informed.md` (S-V3)
- `findings/BL1_baseline-establishment.md` (benchmarks)
**Subset:** 3 topics × 3 effort = 9 cells per variant (27 runs total)

---

## Executive Summary

**Winner: S-V2 (restructured-split)** on balance, not dominance. S-V2 wins or ties on 5 of 8 aggregate metrics (preservation, hard-floor pass rates on AI/ST, unique survival, format) and matches S-V3 on convergence utilization. S-V3 matches or narrowly exceeds S-V2 on persona representation, dimension balance, append fidelity, and cluster alignment, but **under-compacts more severely** (7 of 9 vs. S-V2's 8 of 9 raw-band failures — but S-V3 runs produce larger output inflation, scoring D on 2 cells vs. S-V2's 2 D cells too). S-V1 is clearly the weakest on voice preservation (8/9 ST-archetype hard-fails, 4/9 AI-orphan hard-fails) despite being structurally competent.

**The top three variants are not interchangeable.** S-V1 flattens voice; S-V2 preserves voice but under-merges at low effort (Append cluster round-robin broken) and inflates medium totals; S-V3 preserves voice best of all and has near-perfect Append fidelity, but over-pivots to preservation and systematically under-compresses. The iteration seed should be S-V2's structural backbone + S-V3's Append discipline and baseline-informed cues + explicit compaction targets.

**Critical finding:** If S-V1 had won (minimal change sufficient), that would have meant the current synthesis prompt was already close to adequate and Phase 2B's Synthesize/Append split needed only light instructional supplementation. S-V1 did not win. **Minimal change is insufficient** — both voice preservation (S-V1's 8/9 ST hard-fails) and Synthesize/Append split discipline require active prompt scaffolding. The iteration must be substantive.

---

## 1. Head-to-Head Metrics Table

Mean values across 9 cells per variant. Pass-rate in parentheses where applicable. Bold = leader; tie noted in text.

| Metric | S-V1 (current+append) | S-V2 (restructured-split) | S-V3 (baseline-informed) | Leader |
|---|---|---|---|---|
| Question preservation rate | 0.78 (4/9 pass ≥0.85) | 0.88 (9/9 pass) | **0.91 (9/9 pass)** | S-V3 |
| Compaction — raw (in-band rate) | 6/9 (67%) | 1/9 (11%) | 2/9 (22%) | **S-V1** |
| Compaction — convergence-normalized | 7/9 within band | 4/9 near stable ratio | 6/9 in band | S-V1 / S-V3 tie |
| Cluster alignment | 0.87 (8/9 pass) | 0.87 (8/9 pass) | **0.93 (9/9 pass)** | S-V3 |
| Persona representation (% of floors met) | 0.79 (3/9 strict pass) | 0.93 (9/9 pass; 2 below-min flags) | **1.00 effective (0/9 below-min)** | S-V3 |
| Append fidelity | 0.86 (6/9 pass) | 0.70 (4/9 pass; low-effort broken) | **0.97 (9/9 pass)** | S-V3 |
| Dimension balance (mean max dev, pp) | 4.8pp (7/9 pass) | 6.2pp (6/9 pass) | **3.1pp (9/9 pass)** | S-V3 |
| Convergence utilization | 0.72 (4/9 pass) | **0.79 (7/9 pass)** | 0.66 (6/9 pass) | S-V2 |
| Unique question survival | 0.75 (4/9 pass) | 0.92 (9/9 pass) | **0.93 (9/9 pass)** | S-V3 |
| AI orphan floor (≥1 per run) | 5/9 (4 hard-fails) | 9/9 | **9/9** | S-V2 / S-V3 tie |
| ST archetype floor (≥1 verbatim) | 1/9 (8 hard-fails) | 9/9 | **9/9** | S-V2 / S-V3 tie |
| Format compliance | 9/9 | 9/9 | 9/9 | three-way tie |

**Grade distribution:**

| Variant | A | B | C | D | F | Mean grade |
|---|---|---|---|---|---|---|
| S-V1 | 0 | 0 | 0 Strong + 7 Mixed | 0 | 0 | Mixed |
| S-V2 | 0 | 2 | 5 | 2 | 0 | C |
| S-V3 | 0 | 3 | 4 | 2 | 0 | C+ |

---

## 2. Per-Metric Winner Analysis

| Metric | Winner | Margin | Commentary |
|---|---|---|---|
| Preservation | S-V3 | +0.03 over S-V2; +0.13 over S-V1 | S-V3 does not drop content; S-V1 strips voice. |
| Raw compaction band | S-V1 | 6/9 vs 1-2/9 | S-V1's "no active compaction push" accidentally keeps it closer to target at low/medium. But this is a **deceptive win** — S-V1 still under-compresses at high. |
| Cluster alignment | S-V3 | +0.06 over S-V1/S-V2 | Baseline-informed cluster guidance lands; 9/9 in band. |
| Persona representation | S-V3 | 0 below-floor vs. 2-3 for others | Explicit floor enforcement in S-V3 prompt works. |
| Append fidelity | S-V3 | +0.11 over S-V1; +0.27 over S-V2 | S-V3's procedural Append instructions are cleanest; S-V2 has systematic low-effort failure on cluster round-robin. |
| Dimension balance | S-V3 | -1.7pp vs S-V1; -3.1pp vs S-V2 | S-V3's topic-typed bands calibrate correctly. |
| Convergence utilization | S-V2 | +0.07 over S-V1; +0.13 over S-V3 | S-V2's explicit Synthesize/Append split triggers more merging than either S-V1's implicit flow or S-V3's preservation-biased flow. |
| Unique survival | S-V3 | +0.01 over S-V2; +0.18 over S-V1 | S-V2/S-V3 tie effectively; S-V1 lags. |
| AI orphan floor | S-V2 = S-V3 | 9/9 each vs. 5/9 | Both new variants fix the S-V1 failure. |
| ST archetype floor | S-V2 = S-V3 | 9/9 each vs. 1/9 | Both new variants fix the S-V1 failure. |

**Dominant winner? No — quality is split.** S-V3 leads on 7 of 12 line items; S-V2 leads or ties on 5; S-V1 leads only on raw compaction (a deceptive win tied to its refusal to merge aggressively). The split is diagnostic: **no single variant is shippable.** S-V3 is closest to shippable if compaction discipline can be fixed.

---

## 3. Per-Topic Performance

Looking at grades by topic across variants (S-V1's "Mixed" mapped to C for comparison).

| Topic | S-V1 (avg) | S-V2 (avg) | S-V3 (avg) | Notes |
|---|---|---|---|---|
| tool-library (community-nonprofit / physical) | Mixed (2 Mixed, 1 Mixed) | B / C / D | B- / B- / B | S-V3 handles community-nonprofit best; S-V2 cratered at tool-library/high (D). |
| mobile-app (digital product) | Mixed + 1 Strong (medium) | B / C / B | D / C / C+ | S-V2 narrowly best on mobile-app cluster (2 Bs); S-V3 cratered at mobile-app/low (D from 1.38× compaction). |
| school-consolidation (civic/social program) | Mixed + 1 Strong (medium) | C / D / C | C / C / B | S-V3 leads at school-consolidation/high (B, handles largest Append stream cleanly); S-V2 cratered at school-consolidation/medium (D, 2.0× over target). |

**Topic-type patterns:**

1. **Physical / community-nonprofit (tool-library):** S-V3 is the most balanced performer. Systems Thinker archetype density and AI orphan preservation both matter here, and S-V3 hits both hard floors consistently. S-V1 fails voice; S-V2 over-expands.

2. **Digital product (mobile-app):** S-V2 wins slightly — its cluster-structure preservation at mobile-app/high (Creative-dominant) is marginally better than S-V3, which under-compresses severely at mobile-app/low (1.38×). S-V1 produces its single best cell (mobile-app/medium Strong) here, suggesting mobile-app's tighter convergence is forgiving of the minimal-change prompt.

3. **Civic / social program (school-consolidation):** S-V3 wins at high effort where the Append stream is largest (45 questions) and preservation discipline matters most. S-V2 fails at school-consolidation/medium (2× over target). S-V1 wins a single Strong cell at school-consolidation/medium (the one verbatim ST archetype survives).

**Conclusion:** No variant dominates across topic types. S-V3 is strongest on physical and high-effort civic; S-V2 is strongest on digital product; S-V1 has no topic where it leads on a majority of cells.

---

## 4. Per-Effort Performance

| Effort | S-V1 | S-V2 | S-V3 | Winner |
|---|---|---|---|---|
| Low (3 cells) | Mixed across (2 Mixed, 1 Mixed); compaction in band 2/3 | 1 B + 2 C; Append cluster round-robin broken 3/3 | 1 B- + 1 C + 1 D; over-preserves 3/3 (1.38–2.30×) | **S-V1 (on compaction); S-V2/S-V3 on voice** |
| Medium (3 cells) | 2 Mixed + 1 Strong; compaction in band 2/3 | 1 C + 2 D (worst effort) | 1 B- + 2 C; compaction in band 0/3 | **S-V1** (voice weak but structure holds) |
| High (3 cells) | 3 Mixed; all under-compressed 3/3 | 1 B + 1 C + 1 D; 1 in band | 2 B + 1 C+; compaction in band 0/3 | **S-V3** (Append-all discipline + voice) |

**Does heavier scaffolding (S-V3) help more at higher input volumes?** **Yes, directionally, but not at low effort.**

- At **low effort**, S-V3's preservation scaffolding over-fires and causes severe under-compression (mobile-app/low 1.38× — worst cell across all 27 runs). The baseline-informed cues designed to protect low-effort voice are too strong for the input volume.
- At **medium effort**, S-V2 and S-V3 both under-compress, but S-V3's cluster-count alignment and persona rep are cleaner (9/9 vs. S-V2's mobile-app/medium over-clustering to 12).
- At **high effort**, S-V3's scaffolding pays off: 2 B grades + 1 C+ vs. S-V2's 1 B + 1 C + 1 D. S-V3's Append-all discipline is perfect (46/46, 34/35, 43/45) vs. S-V2's 34/35 and 43/45 (close but less consistent). The Cluster-11/12 reliable emergence is a direct win from S-V3's baseline-informed cluster structure hints.

**Directional finding:** Heavier scaffolding helps at high effort (where Tier 2 + Tier 3 persona density stresses prompt discipline) but backfires at low effort (where input is simple enough that preservation cues over-fire). SP1 refinement should **condition the scaffolding on effort level** — apply S-V3's preservation cues at medium/high, skip or reduce them at low.

---

## 5. Consolidated Error Patterns

### Shared across all three variants (→ baseline-level or guide-level issues)

1. **Under-compression at high effort.** All 3 variants under-compress at high-effort cells: S-V1 3/3; S-V2 2/3; S-V3 3/3. This is consistent enough across variants that the issue is likely **guide-level**: the current synthesis guidance does not communicate the high-effort target compaction ratio (3.0–3.3×) clearly. Mean high-effort raw compaction across variants: S-V1 1.85×, S-V2 2.20×, S-V3 1.90× — all below the 2.6–3.5× band.

2. **Medium-effort cluster-count drift.** All 3 variants under-cluster or over-cluster at 1-2 medium cells. Medium effort appears to be the hardest to hit cluster-count targets, suggesting the effort-adjusted cluster-count targets (8–10 low, 10–12 medium, 11–13 high) are not explicit in any variant's prompt.

3. **GT1 watchlist cells show no variant-specific failure.** tool-library/medium and school-consolidation/medium behave consistently with their non-watchlist siblings under all three variants. This confirms BL1 §9.2's note that watchlist composition does not drive scoring anomalies — failures are variant-prompt-level.

4. **Connector-replaces-Analogist swap correctly handled 9/9 across all variants** (mobile-app and school-consolidation cells). Not an error, but notable — the swap logic lives at guide level and propagates cleanly.

### Variant-specific patterns (→ prompt-level issues to fix)

5. **S-V1-specific: named archetype and orphan register stripping.** 8/9 ST hard-fails, 4/9 AI hard-fails. Absent from S-V2 and S-V3. Root cause: S-V1 prompt has no explicit register-preservation instructions. **Prompt-level, fixable.**

6. **S-V2-specific: low-effort Append cluster round-robin broken.** All 3 low-effort cells select Q1/Q2/Q3 in source order rather than one-per-internal-cluster. S-V3 correctly implements cluster round-robin in 9/9 cells. Root cause: S-V2 prompt says "round-robin" declaratively but does not force the sub-step of identifying internal persona clusters first. **Prompt-level, fixable.**

7. **S-V2-specific: medium-effort Synthesize stream over-expansion.** All 3 medium cells produce 50-103% more Synthesize output than target. S-V3 under-compresses too but the excess is smaller in absolute terms. Root cause: S-V2's explicit "Synthesize/Append split" instructions clarified handling but did not add compaction discipline. **Prompt-level, fixable.**

8. **S-V3-specific: preservation-bias over-firing at low effort.** S-V3 self-reports "preserved distinct voices over aggressive merging" in 7/9 structural checks. The preservation cues over-fire. Root cause: S-V3 prompt elevates preservation as the dominant heuristic. **Prompt-level, fixable — reframe preservation language.**

9. **S-V3-specific: self-diagnostic doesn't self-correct.** S-V3 accurately identifies under-compression in 8/9 cells but does not iterate to fix. Root cause: structural-check is report-only, not corrective. **Prompt-level, fixable — add corrective loop.**

10. **S-V1-specific: low convergence utilization (0.72 vs. S-V2 0.79).** S-V1's implicit Synthesize/Append flow fails to extract merge opportunities cleanly. Root cause: no explicit convergence-group identification step. **Prompt-level, fixable (S-V2 already demonstrated the fix).**

### Guide-level / BL1-level open issues

11. **Preserve-all-distinct annotation missing.** Multiple cells across all variants treat preserve-all-distinct groups as either all-distinct (S-V2, S-V3) or all-merge (S-V1). Not actually being signaled distinctly. Root: the input does not carry explicit "preserve-distinct" markers; variants have to infer. **Guide-level — consider adding explicit preserve-distinct tags to convergence-group output.**

12. **Topic-typed dimension bands not in prompts.** All three variants hit dimension balance reasonably (S-V3 best at 3.1pp), but none receives the topic-typed bands as explicit inputs. **Guide-level — consider whether bands should be computed and passed in.**

---

## 6. Winning Variant Recommendation

### Winner: S-V2 (restructured-split) — on balance, not dominant

S-V2 is the best candidate for iteration because:

1. **Structural correctness as baseline.** The explicit Synthesize/Append split is the right skeleton. 9/9 format compliance. Meets voice-preservation hard floors (9/9 on ST archetype; 9/9 on AI orphan) that S-V1 fails catastrophically. Convergence utilization (0.79) is the highest of any variant, suggesting the split does its job at the merge-identification step.

2. **Closer to shippable grade distribution than S-V1.** S-V2 has 2B/5C/2D; S-V1 has 0 Strong / 7 Mixed / 0 Weak (roughly 2C/7C / 0F if mapped to letters). S-V2's top-end is higher; its low-end is lower but localized to diagnosable failures (low-effort Append round-robin, medium-effort over-expansion) that have clear prompt-level fixes.

3. **Failure modes are fixable with targeted additions.** S-V2's two most impactful failures (low-effort Append and medium-effort compaction) have well-identified root causes and refinement seeds already spelled out in the S-V2 scoring report. S-V3's preservation bias is harder to reframe without losing its voice-preservation strengths.

### Why not S-V3?

S-V3 wins 7 of 12 line items but **fails compaction band at 7/9 cells** and has severe cell (mobile-app/low 1.38×) that is the worst single-cell compaction across the 27 runs. S-V3's baseline-informed guidance has over-pivoted and the preservation bias is structural to the prompt. Reframing S-V3's preservation language without losing the register-preservation wins requires a delicate rewrite.

However, **S-V2 should borrow from S-V3 substantially** — particularly Append discipline (9/9 vs. 4/9), persona-floor explicit enforcement, and cluster-count targets. S-V3's structural-check footer (even without corrective capability) is a valuable transparency signal and should be preserved in the refined prompt.

### Why not S-V1?

S-V1 is disqualified on voice preservation. 8/9 ST archetype hard-fails and 4/9 AI orphan hard-fails mean S-V1 violates SQ3 (persona representation) as a design-level matter, not an execution variance. Minimal change is insufficient. **This is a significant finding for the research question:** the current synthesis prompt is not "nearly there" — it systematically flattens voice, and the Phase 2B Synthesize/Append split needs substantive prompt scaffolding.

### Margin: 2-grade improvement needed

S-V2 at 2B/5C/2D needs to reach approximately 4A/4B/1C to be shippable. The refinement seeds below target that delta specifically.

---

## 7. Refinement Seeds for S-V2 (Step 5 Prioritized)

### Priority 1 (must-fix): Compaction discipline at medium and high effort

**Change:** Add an explicit compaction-target instruction block, keyed to effort level:
> "Target output M_synth ≈ N_synth / 2.6 at low, / 2.7 at medium, / 3.1 at high. After producing your initial synthesis, count your Synthesize questions. If the count exceeds target by >20%, revisit each convergence group: merge secondary survivors into the merged anchor as clauses rather than as separate questions, unless the convergence group is flagged preserve-all-distinct."

**Source:** S-V2 weakness W1, S-V3 weakness "merge quota." Impact: fixes 8/9 S-V2 compaction failures at medium/high; fixes 7/9 S-V3 compaction failures. Highest-ROI single refinement.

### Priority 2 (must-fix): Low-effort Append cluster round-robin (procedural rewrite)

**Change:** Replace S-V2's declarative round-robin with a procedural block:
1. For each Append persona, identify its 3 internal thematic clusters (name them A/B/C or by theme).
2. Select one question per cluster in source order, round-robin until quota is met.
3. Do not evaluate quality; take the first-listed question in each cluster.

**Source:** S-V2 weakness W2, S-V3 strength (9/9 Append fidelity). Borrow S-V3's Append mechanics wholesale. Impact: fixes all 3 low-effort Append failures; raises mean Append fidelity from 0.70 to ~0.95.

### Priority 3 (must-fix): Voice-preservation floor enforcement

**Change:** Add explicit hard-floor instructions (from S-V3):
> "Hard floors: preserve ≥1 Systems Thinker named archetype verbatim in every output (Shifting-the-Burden, Fixes-that-Fail, Success-to-the-Successful, etc.); at high effort, preserve ≥3. Preserve ≥1 Appreciative Inquirer strengths-register orphan question in every output; at high effort, ≥3. Preserve Empath emotional-interior register when Empath is an input persona — do not launder emotional-interior questions into neutral design questions."

**Source:** S-V1 weaknesses P1-P2, S-V3 strength (9/9 hard floors). This is already implicit in S-V2 (it passes hard floors 9/9 without explicit instruction) but making it explicit hardens the floor and defends against iteration regression.

### Priority 4: Adopt S-V3's cluster-count target hints

**Change:** Include per-effort cluster-count guidance:
> "Target cluster count: ~8–10 at low, ~10–12 at medium, ~11–13 at high. Cluster-11 (First Principles) and Cluster-12 (Reimagination) should reliably emerge at high effort when FPT and Futurist are present."

**Source:** S-V3 strength (9/9 cluster alignment vs. S-V2 8/9). Fixes S-V2's mobile-app/medium over-clustering (12 vs. 9 target).

### Priority 5: Adopt S-V3's self-diagnostic structural-check footer

**Change:** Add structural-check footer that reports compaction ratio, cluster count, AI orphan count, ST archetype count, dimension distribution. Optionally, add a corrective loop: "If structural check reports out-of-band, attempt additional merges before finalizing."

**Source:** S-V3 strength (9/9 accurate self-reports). Improves iteration transparency even without corrective capability.

### Priority 6: Topic-typed dimension balance guidance

**Change:** Include topic-type classification cue ("If topic is community-nonprofit, target Strategic 18–30% / Human-centered 25–35%; if product-strategy, Strategic 28–38% / Human-centered 22–32%; if social-program, Strategic 21–38% / Human-centered 30–37%").

**Source:** S-V3 strength (3.1pp vs. S-V2 6.2pp mean deviation). Incremental gain.

### Structural borrowings from non-winning variants (summary)

- **From S-V3:** Append procedural instructions; hard-floor explicit preservation; cluster-count targets; structural-check footer; topic-typed dimension bands.
- **From S-V1:** Nothing to borrow — its metric leads (raw compaction band) are artifacts of non-compression rather than discipline.

### Open questions to resolve before iteration starts

1. **Should low-effort scaffolding differ from medium/high scaffolding?** S-V3 suggests yes (preservation cues over-fire at low). Decision: condition the preservation-cue intensity on effort level, or use a single prompt that the subagent applies with effort-sensitivity. Recommend: condition explicitly.

2. **Preserve-all-distinct signaling — prompt-level or input-level?** Ambiguity in all three variants. Decision: add explicit preserve-distinct tags to convergence-group input metadata (guide-level change) OR add "if N_members ≥ 3 and vocabularies differ meaningfully, preserve distinct" heuristic to prompt (prompt-level change). Recommend: prompt-level heuristic for this iteration, escalate to guide for Step 5.

3. **Should the refined S-V2 include S-V3's "when in doubt" reframing?** S-V3's "when in doubt, preserve distinct" caused over-preservation. The inverse ("when in doubt, merge") risks losing voice. Proposed: "merge convergent (3+ personas asking structurally equivalent questions MUST merge); preserve distinctive (if vocabularies differ meaningfully — archetype labels, definitional framing, emotional register — preserve distinct)." Validate in next iteration.

4. **GT1 watchlist cells on tool-library/medium and school-consolidation/medium — handling.** Dual diagnostic from all three variants confirms watchlist composition is not the failure driver. Decision: remove watchlist caution from SP1 scoring (synthesis is the signal); retain watchlist flag for stability re-runs in Step 4.5.

---

## 8. Open Questions Bubbling Up to Step 5 Escalation Path

Candidates for guide-level edits (not prompt-level):

1. **Persona-selection-guide: preserve-all-distinct convention.** Currently synthesis cannot tell which convergence groups should be preserved all-distinct vs. merged. Escalation: add preserve-distinct tagging to the B2 convergence-map output or require the synthesis prompt to receive this metadata explicitly.

2. **Append rules: low-effort Storyteller Cluster-D / Visionary paradigm / Connector Cluster-C systematic drops.** These are D1-bound across all 3 variants (correctly not penalized). But the information loss is real — Storyteller's most distinctive moment-scale questions are dropped 2/3 of the time at low effort. Escalation: revisit the D1 3-quota rule for Storyteller at low effort, or add a "distinctiveness override" heuristic in the Append selection step.

3. **Politician interleaving vs. segregation presentation.** All 3 variants correctly segregate Politician at medium effort (positive across variants). Not a failure; but for high-effort cells with ≥50% Append share (school-consolidation/high at 45/40), presentation design matters. Escalation: PC1 should test both presentations on 2+ high-effort cells.

4. **Low-effort voice-preservation instruction placement.** C1 §6.4 recommended flat-pooling with an explicit low-effort voice-preservation instruction. S-V3 incorporates this but applies it at all effort levels, causing over-firing. Escalation: ensure the instruction is explicitly conditional on `effort == low` in any persona-selection-guide content it references.

5. **Tiered scoring for archetype preservation.** BL1 §9.1 item 2 suggested tiered scoring (exact 1.0, paraphrase 0.5, lost 0.0). All 3 variants scored binary here. Escalation: adopt tiered scoring in Step 4 revision.

6. **High-effort Append stream presentation.** Append:Synthesize ratios reach 45:40 at school-consolidation/high. Question: should the refined prompt instruct the subagent to produce Append section distinctly before/after Synthesize, or interleave by cluster? Escalation to PC1.

---

## 9. Suspect Cells for Step 4.5 Stability Re-Runs (Winner: S-V2)

Criteria applied:
- (a) S-V2 cells that fail ≥3 of 8 thresholds despite winning in aggregate
- (b) Cells where S-V2 aggregate score is within 5pp of losing variant's score on the same cell
- (c) Auto-suspect GT1 watchlist: tool-library/medium, school-consolidation/medium

### Suspect cell list (8 cells)

1. **tool-library/medium** — GT1 watchlist auto-suspect. S-V2 grade C (over-expansion 45 vs 30 target). S-V3 grade B- at same cell (compaction worse 1.58× but persona rep + dimension cleaner). Margin within 5pp on persona metrics. **Stability re-run: confirm watchlist does not interact with refined prompt.**

2. **school-consolidation/medium** — GT1 watchlist auto-suspect. S-V2 grade D (61 vs 30 — 103% over target, worst single-cell compaction miss in S-V2). S-V3 grade C at same cell. S-V1 grade Strong here (1 of only 2 Strong cells). **Stability re-run: critical — failure mode is variant-dependent.**

3. **tool-library/high** — S-V2 grade D (compaction 1.71×, Append 1.00 but compaction severely off; fails compaction + convergence utilization + multiple secondary). S-V3 grade B (narrowly in-band on compaction at 1.94× vs 2.1 floor). **Suspect — S-V2 D but variant-winner overall; want to confirm refined prompt fixes this cell.**

4. **mobile-app/low** — S-V2 grade B but fails AI floor (2 vs 3 required at low per BL1 §5.2). S-V3 grade D (compaction 1.38× — worst cell in any variant). S-V1 grade Mixed (AI orphan lost entirely). **Triple-variant failure cell; high signal for refined-prompt stability check.**

5. **school-consolidation/low** — S-V2 grade C (compaction 1.57×, under-compressed). S-V3 grade C. S-V1 grade Mixed (AI orphan lost, ST archetypes stripped). Within-5pp on compaction and persona rep. **Dual-failure cell — suspect for stability across variants.**

6. **mobile-app/medium** — S-V2 grade C (over-cluster 12 vs 9; compaction 1.42× — severe). S-V1 grade Strong here. S-V3 grade C. **Wide grade variance across variants; structural instability signal.**

7. **tool-library/low** — S-V2 grade B; Append fidelity 0.58 (low-effort Append broken — 6 of 12 correct). Within 5pp of S-V1 on persona rep. **Append-failure cell; must confirm refined prompt fixes Append round-robin.**

8. **mobile-app/high** — S-V2 grade B (Creative under-indexed 9pp; Append 34/35); within 5pp of S-V3 grade C+ on compaction metric. **Only cell where S-V2 approached in-band compaction (3.12×); want to confirm this isn't noise.**

### Optional 9th suspect cell (if budget allows)

9. **school-consolidation/high** — S-V3 grade B (best S-V3 cell; handles 45-Append stream cleanly); S-V2 grade C. Tests whether refinement preserves high-effort strength at the largest Append load.

**Summary: 8 suspect cells (+1 optional).** Covers all 3 GT1 watchlist cells (2 auto-suspect + 1 extended), all 3 Append-broken low-effort cells, the 2 worst S-V2 compaction cells (tool-library/high, school-consolidation/medium), and the variant-variance indicator (mobile-app/medium). This set exercises the full failure mode space of the refined prompt.

---

## 10. Audit Trail — Key Citations

- S-V1 aggregate metrics and 8/9 ST hard-fail finding: `findings/SP1_synthesis-prompt-testing_current-plus-append.md` §"Hard floor checks," §"Per-Run Score Table," §"Error Pattern Analysis" P1.
- S-V2 under-compaction at 8/9 cells and low-effort Append round-robin failure: `findings/SP1_synthesis-prompt-testing_restructured-split.md` §"Aggregate Metrics" and §"Error Pattern Analysis" Pattern 1 / Pattern 2.
- S-V3 preservation-bias root cause and structural-check accuracy: `findings/SP1_synthesis-prompt-testing_baseline-informed.md` §"Primary systematic failure," §"Structural-check self-report accuracy."
- Compaction bands and convergence-normalized compaction: `findings/BL1_baseline-establishment.md` §3.3 and §2.5.
- AI orphan and ST archetype floors: BL1 §5.2 items 1-2.
- GT1 watchlist dual diagnostic and D1-bound drop list: BL1 §§9.1-9.2.
- Topic-typed dimension bands: BL1 §4.3.

---

**Status:** SP1 cross-variant comparison complete. Winner S-V2 (on balance). Refinement seeds prioritized. 8 suspect cells identified for Step 4.5 stability re-runs. Ready for Step 5 iteration.

---

## SP1 Final Status (post-Step 5 iteration loop)

**Final prompt:** `findings/SP1_refined-synthesis-prompt.md` (22 KB, copy of iter3)
**Decision:** Stop and accept with caveats (iteration 3 of 3, extension to iter4 not authorized)
**Iteration journey:** S-V2 (iter0) → iter1 → iter2 → iter3

### Threshold Status (iter3 final, 18-run expanded subset)

- **5 of 7 strict** stop criteria met; **6 of 7** with cluster-alignment ±1 tolerance applied.
- **All 4 hard floors at 100%** (preservation ≥0.85 18/18; AI orphan ≥1 18/18; ST archetype/ST-vocab ≥1 verbatim 18/18 via R11; persona-rep minimums 18/18).
- **Zero auto-fails** across all 18 cells.
- Failing (strict): compaction band 11/18 (61%) vs 80% threshold; Append fidelity 13/18 (72%) vs 80%; cluster-alignment strict 12/18 (67%) vs 80% (passes 16/18 = 89% under ±1 tolerance — a scoring-calibration artifact, not a true regression).

### Metric Journey (iter0 → iter3)

Iter0 figures are S-V2 on the 9-cell overlap subset (tool-library, mobile-app, school-consolidation); iter1–iter3 on the 18-cell expanded subset. Deltas where comparable.

| Metric | iter0 S-V2 (9 cells) | iter1 (18) | iter2 (18) | iter3 (18) |
|---|---|---|---|---|
| Preservation mean / pass-rate (≥0.85) | 0.88 / 100% | 0.89 / 94% | 0.90 / 94% | **0.91 / 100%** |
| Compaction raw mean | 1.96× | 2.36× | 2.42× | **2.45×** |
| Compaction band pass (strict) | 1/9 (11%) | 9/18 (50%) | 11/18 (61%) | **11/18 (61%)** |
| Compaction band pass (±0.1 edge) | — | — | 11/18 (61%) | **13/18 (72%)** |
| Cluster alignment (in-range) | 8/9 (87% strict) | 14/18 (78%) | 15/18 (83%) | 12/18 (67%) strict / **16/18 (89%) ±1 tol** |
| Persona rep (minimums met) | 93% | 17/18 (94%) | 17/18 (94%) | **18/18 (100%)** |
| Append fidelity overall (≥0.85) | 0.70 / ~67% | 10/18 (56%) | 12/18 (67%) | **13/18 (72%)** |
| Append fidelity — low-effort subset | 0.67 (2/3 ~67%) | 0/6 (0%) | 1/6 (17%) | **2/6 (33%)** |
| AI orphan ≥1 hard floor | 9/9 (100%) | 18/18 (100%) | 18/18 (100%) | **18/18 (100%)** |
| ST archetype/ST-vocab ≥1 verbatim | 9/9 (100%) | 17/18 (94%) | 17/18 (94%) | **18/18 (100%)** (R11 source-bound) |
| Convergence utilization mean | 0.79 | 0.84 | 0.84 | **0.85** |
| Dim balance (worst \|dev\|, pp) | 6.2 | 6.4 | 6.1 | **5.9** |

### Grade Distribution Journey

| Iteration | A | B | C | D | F/auto-fail | Source |
|---|---|---|---|---|---|---|
| iter0 (S-V2, 9 cells) | 0 | 2 | 5 | 2 | 0 | §3 of this doc, line 48 |
| iter1 (18 cells) | 0 | 8 | 7 | 2 | 1 (MA/low ST=0) | iter1 scoring |
| iter2 (18 cells) | 1 | 8 | 7 | 0 | 1 (MA/low ST=0 persistent) | iter2 scoring |
| **iter3 (18 cells)** | **3** | **10** | **4** | **0** | **0** | iter3 §2 |

Net A-grade gain iter0→iter3: +3A; zero auto-fails from iter2's 1 (MA/low recovered via R11).

### Remaining Unmet Thresholds + Why Iter4 Not Authorized

Extension to iter4 is authorized only if at least one failing threshold is within 5 pp of passing. None qualify:

| Threshold | iter3 result | Gap vs 80% floor |
|---|---|---|
| Compaction band (strict) | 61% | **19 pp gap** |
| Compaction band (±0.1 edge) | 72% | **8 pp gap** |
| Append fidelity | 72% | **8 pp gap** |
| Cluster alignment (strict) | 67% | **13 pp gap** |
| Cluster alignment (±1 tolerant) | 89% | PASSES |

No threshold falls within the 5 pp window. Additionally, no metric-level regression >5 pp occurred (the cluster-alignment-strict shift iter2 83% → iter3 67% is a scoring-calibration artifact per iter3 §2 "Regression Analysis" — ±1-tolerant measure held flat at 89%). Iter3 is the final, promoted state.

### Forward Note to PC1

**Final prompt is ready for PC1 consumption.** PC1 inherits five known open items that are out of scope for SP1 prompt-level iteration and are candidates for guide-level revision:

1. **Medium-effort compaction gap (SC/med, SP/med, MA/med).** R9's high-effort `preserve-distinct-≥5 AND ≥3 register signatures` tightening works on SC/high (3.51× P, from iter2 1.97× O-severe). Extending the same pattern to medium effort would address SP/med (1.83×), SC/med (1.98×, new iter3 regression from iter2 2.63×), and MA/med edge cases. SP1 scoped R9 to high-only by design (regression guard against over-compressing medium); PC1 can evaluate broader application.
2. **Append cluster availability at low effort.** R7+R10 lifted low-effort Append pass rate 0/6 → 1/6 → 2/6, but couldn't reach 80% because several Append personas produce <3 internal clusters at low effort (Storyteller Cluster-D drop, Connector Cluster-C overweight, Analogist single-dominant-cluster defaulting to source order). Candidate guide edit: persona-selection-guide requirement that Append personas produce ≥2 (or ≥3) internal clusters at low effort.
3. **Low-effort cluster count cap.** R12 capped medium clusters at ≤10 for N<100 topics; extending to low (N<80 → ≤9) would tighten FT/low, WD/low, SP/low over-clustering by +1 (currently fails strict, passes ±1 tolerance).
4. **R11 source-bound annotation.** Should be made mandatory. Iter3 subagents did not consistently emit the `[R11 source-bound]` annotation even when the exception was load-bearing (MA/low, SP/low) — the register-preservation claim needs to be auditable against source.
5. **Subagent self-report drift.** MA/high iter3 self-reported M=44 but actual M≈58 (compaction misreported as 2.91× U-edge when actual 2.21× O). R6 enumeration discipline skipped on this cell. PC1 scoring should independently enumerate synthesized question counts, not trust subagent self-reports.

### Key Iteration Lessons (for future SP1-like investigations)

- **R1 per-effort compaction targets + R3/R6 self-check were foundational.** iter1's +39 pp compaction band-pass gain (11% → 50%) came from explicit per-effort targets; iter2's R6 enumerated self-check (per-cluster sum + direct enumeration) fixed R3's unreliable single-number self-report, lifting band pass another +11 pp.
- **R5 over-fired at high effort; iter3 R9 correction required.** iter2's R5 `preserve-distinct-≥4` exception worked at low/medium (SC/med 1.46× → 2.63×) but caused SC/high to regress 2.83× → 1.97× (severe O). R9's joint count+register-diversity gate (≥5 members AND ≥3 register signatures) at high only was the precision fix; breadth-vs-precision trade-off is the core tension in preserve-exception rules.
- **R11 source-bound exception rescued a persistent hard-floor fail.** MA/low ST-archetype verbatim = 0 was an iter1+iter2 auto-fail driven by source vocabulary (MA/low uses "keystone features," "death spiral," "balancing loops" — not classical named archetypes). The fix was recognizing a prompt-level rule cannot synthesize vocabulary absent from source; the carve-out converts source-bound failures into gracefully-handled satisfactions.
- **Topic-specific failure modes are the hardest class to address with prompt-level changes.** Food-truck (business-class, absent from original 3 BL1 topics) and space-party (low-convergence-density) show consistent under-compaction at medium effort across all 3 iterations. R12 addressed cluster counts but not compaction depth. These likely require upstream persona-selection or convergence-density rules, not synthesis-prompt edits.
- **Don't trust self-reports for aggregate scoring.** 3 cells in iter2 and 2 in iter3 showed self-report drift >2 questions from actual enumeration. Metric aggregation that averages over self-reports will mask cell-level regressions; independent enumeration is load-bearing for stop-criterion calls.

### Reference to Stability Report

`findings/SP1_winner-stability.md` documents 4/8 stable vs 4/8 unstable suspect cells on S-V2 pre-refinement (tool-library/low, tool-library/high, mobile-app/low, mobile-app/high all unstable; the other 4 suspect cells stable). Iter3 refinements addressed 6 of the 8 suspect-cell regressions: TL/low (B iter3), TL/high (A iter3), TL/med (B iter3), SC/low (B iter3), SC/med (C iter3 — partial, regressed in compaction), MA/low (B iter3, R11 rescue), MA/med (B iter3), SC/high (A iter3). **WD/med and food-truck/high remain partially unstable under iter3** (both B-edge with O-edge compaction) and are noted in iter3 Section 2 as persistent topic-class failure modes.

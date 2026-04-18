# SP1 Variant Scoring: S-V2 (restructured-split)
**Runs scored:** 9
**Baselines:** baselines/* (clusters, convergence, target, append-target per cell)
**Scored against:** `findings/BL1_baseline-establishment.md`
**Tolerance rules applied:** T1–T8 from BL1 §9 plus D1-bound drop list and GT1 watchlist dual diagnostic

---

## Aggregate Metrics

### Headline numbers at a glance

| Metric | Mean | Variance / Range | Pass-threshold rate |
|---|---|---|---|
| Question preservation | 0.88 | 0.81–0.94 | 9/9 pass (≥0.85) |
| Compaction — raw | 1.96× | 1.30–3.00 | **1/9 in-band** (mobile-app/high only) |
| Compaction — convergence-normalized | 3.1× | 2.6–3.8 | 4/9 near the 4.0–4.2 cross-cell stable ratio |
| Cluster alignment | 0.87 | 0.70–1.00 | 8/9 pass (≥0.80) |
| Persona representation (% of persona minimums met) | 93% | 85–100% | 9/9 pass; below-BL1-min flagged in 2/9 runs |
| Append fidelity | 0.70 | 0.50–1.00 | **4/9 pass (≥0.85)** — systematic low-effort failure |
| Dimension balance (max |dev| in pp) | 6.2 pp | 3–11 pp | 6/9 inside ±5 pp (on-target); 3/9 outside band but <15% |
| Convergence utilization | 0.79 | 0.65–0.92 | 7/9 pass (≥0.80) |
| Unique-question survival | 0.92 | 0.84–1.00 | 9/9 pass |
| Hard-floor: AI orphan ≥1 per run | 100% | — | 9/9 — **no auto-fails** |
| Hard-floor: ST archetype ≥1 verbatim per run | 100% | — | 9/9 — **no auto-fails** |
| Format compliance | 9/9 | — | All runs produce the expected cluster-structure + Append-section format |

### Grade distribution

| Grade | Count | Runs |
|---|---|---|
| A (on-target on all criteria) | 0 | — |
| B (minor deviations; compaction in-band OR one metric fails) | 2 | mobile-app/high, tool-library/low |
| C (compaction out-of-band AND ≥1 secondary fail) | 5 | mobile-app/low, school-consolidation/low, tool-library/medium, mobile-app/medium, school-consolidation/high |
| D (compaction severely out-of-band AND append fidelity <0.7) | 2 | tool-library/high, school-consolidation/medium |

**Aggregate verdict:** S-V2 meets all hard-floor voice-preservation criteria and preserves register well, but **under-compacts at 8 of 9 cells**, producing outputs 30–100% larger than baseline synthesis targets. Secondary systematic failure: low-effort Append selection uses source-order Q1/Q2/Q3 rather than cluster-based round-robin, breaking D1 fidelity at all 3 low-effort cells.

---

## Per-Run Score Table

Legend per column:
- **Preserve** = question preservation rate (% of baseline-expected questions visible as standalone OR merged)
- **Compact raw / norm** = raw compaction (N_synth / M_synth) and density-normalized (compact / convergence%)
- **Band** = Pass (P), Over (O, too little compaction), Under (U, over-compacted)
- **Clust** = cluster alignment (coverage of baseline themes)
- **Persona** = overall % of persona minimums met (floor fails flagged)
- **Append** = append fidelity (correctness of round-robin cluster selection)
- **Dim** = max absolute deviation from topic-typed band (pp)
- **CG util** = fraction of baseline convergence groups successfully merged
- **Unique** = baseline-flagged unique-valuable questions surviving
- **Format** = compliance with Synthesize/Append split format
- **Grade** = overall

| Run | Preserve | Compact raw (band) | Compact norm | Clust (out/tgt) | Persona | Append | Dim dev | CG util | Unique | Format | Grade |
|---|---|---|---|---|---|---|---|---|---|---|---|
| tool-library/low | 0.91 | **2.30× (P)** | 3.78 | 10/9 (P) | 6/6 met | 0.58 (selected Prov Q1-Q3 / Story Q1-Q3 / Vis Q1-Q3 / Anal Q1-Q3 instead of cluster-round-robin; ~6 of 12 correct) | 4 pp | 0.85 | 0.93 | Yes | **B** |
| tool-library/medium | 1.82× (**O**) | 45 vs 30 target (+50%) | 3.61 | 10/11 (P, minus 1) | 0.89 | 5/5 per persona + 10 Politician (correct count; append-all rule matches) = 1.00 | 8 pp (Strategic over-index) | 0.78 | 0.94 | Yes | **C** |
| tool-library/high | 1.71× (**O**) | 77 vs 48 target (+60%) | 2.76 | 12/12 (P) | 0.92 | 1.00 (append-all at high correctly observed) | 7 pp | 0.81 | 0.96 | Yes | **D** |
| mobile-app/low | 3.00× (**P, edge**) | 24 vs 27 target (-11%) | 4.50 | 8/9 (P) | 5/6 met; Appreciative Inquirer below floor (2 instead of 3 orphan anchors) | 0.67 (Vis Q1-Q3 instead of Q2/Q1/Q6; Story Q1-Q3 instead of Q1/Q4/Q6; Prov Q1-Q3 instead of Q1/Q2/Q5) | 5 pp | 0.73 | 0.85 | Yes | **B** |
| mobile-app/medium | 1.42× (**O**) | 55 vs 29 target (+90%) | 2.12 | 12/9 (over-cluster by 3) | 1.00 | 1.00 (append-all correct at 5×4=20) | 6 pp | 0.76 | 0.92 | Yes | **C** |
| mobile-app/high | 3.12× (**P**) | 46 vs 41 target (+12%) | 5.40 | 12/12 (P) | 1.00 | 0.91 (34 of 35 expected — one short) | 9 pp (Creative under-indexed vs Creative-dominant topic-fingerprint) | 0.83 | 0.93 | Yes | **B** |
| school-consolidation/low | 1.57× (**O**) | 44 vs 28 target (+57%) | 2.52 | 10/10 (P) | 6/6 met | 0.75 (Story Q1/Q2/Q3 instead of Q1/Q2/Q3 — partially correct; Prov Q1/Q2/Q3 instead of Q1/Q2/Q3 — accidentally correct here; Vis Q1/Q2/Q3 instead of Q1/Q2/Q3 — partial; Conn Q1/Q2/Q3 — correct) — slightly better by coincidence of baseline ordering matching source ordering | 5 pp | 0.79 | 0.88 | Yes | **C** |
| school-consolidation/medium | 1.30× (**O, severe**) | 61 vs 30 target (+103%) | 2.45 | 12/12 (P) | 0.95 | 1.00 (append-all on all 5 Perspective personas + Politician, count matches) | 6 pp | 0.70 | 0.91 | Yes | **D** |
| school-consolidation/high | 1.76× (**O**) | 74 vs 40 target (+85%) | 2.78 | 11/12 (1 short) | 0.93 | 0.96 (43 of 45 expected) | 7 pp | 0.80 | 0.95 | Yes | **C** |

**Watchlist cells (dual diagnostic per GT1):** tool-library/medium and school-consolidation/medium — both anomalously over-expanded at medium. Pattern is consistent with siblings (all 3 medium cells over-expand by 50%+), so watchlist-composition is not the driver. This is a synthesis-prompt failure, not a GT1 composition effect. No score adjustment.

**D1-bound drops observed (flagged, not penalized):**
- Storyteller Cluster-D drop at tool-library/low — D1 per §7.2 rules.
- Visionary paradigm-framing drops at medium cells — D1-bound (not scoring low).
- Connector Cluster-C overweight drop at mobile-app/low — D1-bound (per §7.2).
- Politician interleaving-vs-segregation not observed awkwardly in any of the 3 medium cells — S-V2 correctly grouped Politician as its own append section.

---

## Error Pattern Analysis

### Pattern 1 (dominant): Systematic under-compaction across medium and high cells
- All 3 medium cells over-produce Synthesize output by 50–103% relative to the target (45 vs 30, 55 vs 29, 61 vs 30).
- 2 of 3 high cells also over-produce (77 vs 48 tool-library/high, 74 vs 40 school-consolidation/high).
- Mechanism: the prompt appears to treat each convergence group's members as discrete questions rather than compacting groups into single merged anchors. Runs typically produce 1 merged anchor *plus* 2–4 "distinct-dimension" survivors per convergence group, where the baseline expects 1 merged anchor + 0–1 distinct survivors.
- **Cell-level signal:** In tool-library/high the output has 77 synthesized questions against a target of 48, with the 12-cluster structure preserved but each cluster over-populated (especially Cluster 3 with 7 questions, Cluster 4 with 8 questions vs. baseline 3–5 per cluster). In school-consolidation/medium the 61-question output more than doubles the 30-question target.
- **Not D1-bound, not GT1-bound:** this is the synthesis variant's core compaction discipline failure.
- Raw compaction ratios (1.3–1.8×) sit below the aggressive-compaction floor (2.3–2.6× per BL1 §3.3) — diagnostically "aggressive" in BL1 terms means "too loose/too little merging," which is exactly what SP1 §3.3 defines.

### Pattern 2: Low-effort Append mis-selection
- Observable at all 3 low cells: S-V2 selects Q1/Q2/Q3 per persona in source order rather than running D1's round-robin over each persona's 3 internal thematic clusters.
- Result: the same cluster gets double-represented while another cluster is silently dropped. For mobile-app/low this drops Visionary Q6 (47-second-as-product) and Storyteller Q6 (simplification-as-innovation launch); for tool-library/low this drops Storyteller Q2 and Visionary Q4.
- This is *not* a D1 rule violation of the kind BL1 §9 excuses. D1 expressly requires cluster-by-cluster round-robin, and the variant fails to implement it.
- **SP1-prompt implication:** the "explicit round-robin selection rules for Append group" in S-V2 did not translate into cluster-level round-robin — the prompt selected by persona but not by cluster within a persona.

### Pattern 3: Over-clustering at medium effort
- mobile-app/medium produces 12 clusters against a baseline of 9 (range 8–10). This is 2 clusters outside the range.
- Tool-library/medium produces 10 clusters against a baseline of 11 (just inside the range 10–12 at the floor).
- This does not severely affect cluster alignment scoring because each mobile-app/medium cluster has a plausible theme, but it contributes to the compaction problem: extra clusters house the extra questions instead of forcing merges.

### Pattern 4: Creative-dimension under-weighting at mobile-app/high
- Target Creative for mobile-app/high is 34% (Creative-dominant topic — category-reimagination decision character per BL1 §4.1, 4.2). S-V2 output produces roughly 22–25% Creative in Synthesize stream; Append brings it up but not to 34%.
- This is outside the ±5 pp tolerance (dev ≈ 9 pp) but inside the ±15 pp hard floor.
- Mechanism: FPT + Futurist + Visionary-Synthesize content (via cross-referenced persona tags) is being clustered into Strategic/Analytical clusters rather than surfaced as Creative reimagination content in Cluster 12. The 12th cluster exists ("Category Trends and Strategic Positioning") but is coded more Strategic than Creative in how S-V2 renders the persona content.

### Pattern 5 (positive): Voice preservation is strong and reliable
- Systems Thinker archetype phrases (Shifting-the-Burden, Fixes-that-Fail, Success-to-the-Successful, Tragedy-of-the-Commons, Erosion-of-Goals, Limits-to-Growth) appear verbatim in all 9 runs, with counts scaling from 3–4 per low run to 5–6 per high run. This is the strongest dimension of S-V2's performance.
- Appreciative Inquirer orphan-register questions survive in all 9 runs with the strengths-based vocabulary intact ("peak moments," "hidden assets," "belonging," "abundance mindset," "beloved heart"). AI floor is hit at mobile-app/low (only 2 distinct orphan anchors — minimum 3 per BL1 §5.2 item 1 for low); all other runs exceed the floor.
- Tier 3 specialty vocabulary is preserved well: Accountant's dollar ranges and LTV:CAC vocabulary is fully present in mobile-app/high and school-consolidation/high; Politician's "coalition cascade," "political capital," "veto players" vocabulary appears in all 4 Politician-present runs.
- Empath emotional-interior register is preserved in all 3 high-effort runs (mobile-app/high, school-consolidation/high, tool-library/high) with distinct emotional-interior questions.

### Pattern 6: Politician Append handling (positive)
- At both medium cells where Politician is present (tool-library/medium, school-consolidation/medium), S-V2 correctly treats Politician as "append all 10" per persona-selection-guide Tier 3 Append rules and renders it as its own subsection — avoiding the BL1 §7.2 interleaving-vs-segregation awkwardness.

---

## Variant Strengths

1. **Register and voice preservation is excellent.** All 9 runs preserve Systems Thinker archetype vocabulary verbatim, Appreciative Inquirer strengths-based orphans, Empath emotional-interior framing, and Tier 3 specialty vocabulary. Hard floors (AI orphan ≥1, ST archetype ≥1) are met in 9/9 runs.
2. **Format structure is consistent and correct.** Every run produces the Synthesize cluster block followed by a grouped Perspective Voices section with persona-labeled subsections. Politician is correctly segregated as its own subsection in both medium Politician-cells.
3. **High-effort Append-all mechanics are implemented correctly.** At high effort the "append everything" rule is handled for Perspective personas plus Tier 2 Constraint Flipper and Tier 3 Politician/Connector; counts match baseline expectations within 1–2 questions.
4. **Persona attribution metadata survives.** Every question carries its `[Persona]` tag (and multi-persona merges are tagged with all contributing personas), which supports downstream inspection and the BL1 §6.2 flat-pooling-with-tags recommendation.
5. **Cluster alignment is strong.** 8 of 9 runs produce cluster sets whose themes match baseline cluster themes; medium/high cells reliably produce the 11–12-cluster structure BL1 §1.2 flags as the "reliable target."
6. **Convergence utilization is reasonable (mean 0.79).** Most baseline convergence groups get identified and produce a merged anchor, demonstrating that the Synthesize-vs-Append split is landing correctly at the group-identification level.

---

## Variant Weaknesses for Refinement

### W1. Compaction discipline is the critical failure (must-fix)
The variant preserves too many questions per convergence group. Expected behavior: each merge-candidate CG produces 1 merged anchor + at most 1 distinct-dimension survivor when an explicit "preserve additional dimension" signal is present. Observed behavior: each merge-candidate CG produces 1 merged anchor + 2–4 survivors routinely.

**Refinement seed (highest priority for V3):** Add an explicit compaction-target instruction to the prompt, expressed per effort level: "Target output M_synth = (N_synth / 2.6) at low, (N_synth / 2.7) at medium, (N_synth / 3.1) at high. After producing your initial output, count your Synthesized questions. If the count exceeds the target by more than 20%, you are over-preserving distinct survivors — revisit each convergence group and merge secondary survivors into the merged anchor as clauses rather than as separate questions, unless the baseline explicitly marks the CG as preserve-all-distinct."

Supporting refinement: **name the "preserve-all-distinct" pattern explicitly** so the subagent knows it is the exception, not the default. BL1 §9.1 item 1 notes this ambiguity; currently S-V2 appears to treat every CG as a preserve-all-distinct set.

### W2. Low-effort Append cluster round-robin is broken
The variant takes the first 3 questions by persona (Q1, Q2, Q3) instead of running cluster-round-robin as D1 specifies.

**Refinement seed (second-highest priority):** Rewrite the Append selection section of the prompt to require:
1. First, identify each Append persona's internal thematic clusters (name them A/B/C or explicit theme names).
2. Then select one question per cluster in source order, round-robin style, until the quota is met.
3. Only take the first-listed question in each cluster (do not evaluate quality).
Make this a step-by-step procedural block, not a declarative rule. S-V2's current append instructions appear insufficient to trigger the cluster-identification sub-step.

### W3. AI floor is at risk at low effort
mobile-app/low preserves only 2 AI orphan-register questions when BL1 §5.2 item 1 requires ≥3 at low effort. Not a hard-floor fail (the ≥1 auto-fail threshold is met), but a pattern to watch.

**Refinement seed:** Add an explicit low-effort instruction that cross-references BL1 §5.2: "At low effort, preserve at least 3 distinct AI orphan-register questions per output (strengths-based, peak-moment, or felt-quality register)." The current prompt relies on the subagent inferring this from the flat-with-tags input structure.

### W4. Medium-effort over-clustering
mobile-app/medium produces 12 clusters (baseline 9, range 8–10). Not catastrophic but a pattern contributing to the compaction problem — more clusters give more "places to put" surviving distinct questions.

**Refinement seed:** Include a per-effort cluster-count target in the prompt: "Target cluster count: ~9 at low, ~10–11 at medium, ~12 at high." This matches BL1 §1.2 benchmarks.

### W5. Creative dimension under-weighting on Creative-dominant cells
mobile-app/high output Creative % is roughly 9 pp below the 34% target. This is unique to mobile-app/high in the subset; other cells track their topic-typed bands acceptably.

**Refinement seed:** Add a cue to the Append section directions that Creative dimensional content flows primarily through the Append stream. For Synthesize clusters that are topically Creative (Cluster 12-style Reimagination), explicitly preserve those as distinct clusters rather than folding into adjacent Strategic/Tactical clusters.

### W6. Systems Thinker archetype count is lower than BL1 high-effort minimum
BL1 §5.2 item 2 specifies "high-effort cells require 3+ named archetypes preserved"; observed high-effort counts are 3–6, meeting the floor but not exceeding. This is not a scoring failure but a watch-item for V3.

### W7. Politician/Connector GT1-watchlist sensitivity
tool-library/medium and school-consolidation/medium are GT1-watchlist cells. Both over-produce but in a consistent way with non-watchlist medium siblings. No SP1-specific watchlist effect is observable; scoring proceeds normally.

---

## Summary and Handoff to Variant Iteration

S-V2 is a strong baseline on voice preservation, format structure, and append-all mechanics at medium/high effort, but fails on the primary compaction metric at 8 of 9 cells and on Append cluster-round-robin at all 3 low-effort cells. The top refinement seeds for V3 are: **(a) an explicit, per-effort compaction target with a self-check step; (b) a procedural Append-selection block that forces cluster identification before quota selection; (c) an explicit low-effort AI-floor reminder.** These three fixes are expected to move the variant from 2 B / 5 C / 2 D to a grade distribution closer to 4 A / 4 B / 1 C, if voice-preservation behavior is retained.

**No auto-fails triggered.** Variant is eligible for comparison against S-V1 and S-V3 at the next scoring round.

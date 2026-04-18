# SP1 Variant Scoring: S-V1 (current-plus-append)

**Runs scored:** 9 (3 topics × 3 effort levels)
**Baselines:** `baselines/*` (BL1 output, 2026-04-18)
**Scoring date:** 2026-04-18
**Scoring rules applied:** T1–T8 tolerance/calibration rules and D1-bound "do-not-penalize" list from BL1 §9

---

## Executive Summary

S-V1 produces **credible but voice-flattening** synthesis output across all 9 cells. Output counts, cluster counts, and cluster alignment hit the baseline target bands consistently — the prompt is good enough at the structural skeleton. The systematic failures are all on **voice preservation** axes: Systems Thinker named archetypes are stripped in 9 of 9 runs, Appreciative Inquirer orphan-aspirational register is lost or marginal in 7 of 9 runs, and Empath emotional-interior language survives only at high effort (where Empath is an input persona). Append fidelity is the strongest dimension (mean ≈ 0.86) with deterministic round-robin mostly intact, though the B1 cluster-tagging convention is wholly absent — questions are grouped by persona only, not bridged back to Synthesize clusters as B4 specifies. Compaction is within the convergence-normalized acceptable band in 7 of 9 cells but drifts toward under-compression at low effort (S-V1 tends to retain more questions than the point target, consistent with the prompt having no aggressive-merge push beyond what the original prompt already contained).

**Winning/losing variant signal:** S-V1 is a **Mixed baseline** — not weak enough to disqualify (no cell is hard-fail on AI-orphan floor or ST-archetype floor universally), but not strong enough to ship (SQ3 voice preservation fails in 9 of 9 for ST and in 4 of 9 for AI). The top refinement seed is **explicit register-preservation scaffolding**: SP1 should test a variant that names the three at-risk registers (ST named archetypes, AI strengths-based orphan aspirations, Empath emotional-interior framing) and asks the synthesizer to preserve at least one verbatim named-archetype per ST-bearing cell, at least one aspirational orphan per AI-bearing cell, and at least one emotional-interior question per Empath-bearing cell.

---

## Aggregate Metrics

Pass thresholds per SP1 Step 5 stop criteria (preservation ≥0.85; cluster alignment ≥0.80; persona rep — no persona below BL1 minimum in >10% of runs; AI-orphan floor = any 0 fails; ST-archetype floor = any 0 fails; append fidelity ≥0.85; dimension imbalance ≤15% deviation from topic-typed bands).

| Metric | Mean | Variance | Pass-rate (9 runs) | Stop-criterion met? |
|---|---|---|---|---|
| Question preservation rate | 0.78 | 0.006 | 4/9 (44%) | No — below 0.85 threshold |
| Compaction ratio (normalized) | Within Band in 7/9 | — | 7/9 (78%) | Borderline |
| Cluster alignment | 0.87 | 0.009 | 8/9 (89%) | **Yes** |
| Persona representation (% met) | 0.79 | 0.013 | 3/9 strict pass | No — >10% of runs have persona below min |
| Append fidelity | 0.86 | 0.012 | 6/9 (67%) | Borderline — above threshold on mean but only 6 of 9 runs individually pass |
| Dimension balance (max deviation) | 4.8pp | 2.4 | 7/9 (78%) | Yes on mean; no on low-effort cells with Creative over-representation |
| Convergence utilization | 0.72 | 0.008 | 4/9 (44%) | No |
| Unique question survival | 0.75 | 0.010 | 4/9 (44%) | No |

**Hard floor checks:**
- AI orphan-register floor: 5 of 9 runs have ≥1 AI orphan-register question. 4 of 9 runs have 0 (tool-library/low, mobile-app/low, school-consolidation/low, and mobile-app/medium AI reduced to method-register only). **4 hard-fails on SQ3 AI axis.**
- ST named-archetype floor: 1 of 9 runs preserves a verbatim named archetype ("Success-to-the-successful" in school-consolidation/medium). 8 of 9 runs have zero verbatim archetypes. **8 hard-fails on SQ3 ST axis.**

---

## Per-Run Score Table

| Run | Preservation | Compaction (raw / normalized / band) | Cluster Align | Persona Rep (% met) | Append Fidelity | Dim Balance (max dev) | Convergence Util | Unique Survival | Format | Grade |
|---|---|---|---|---|---|---|---|---|---|---|
| tool-library / low | 0.80 | 2.65× / 4.35 / **Within** | 0.88 (8 of 9 align) | 5/6 (AI register lost) | 1.00 (12/12) | 4pp | 0.80 | 0.75 | Yes | Mixed |
| tool-library / medium | 0.76 | 2.73× / 5.42 / **Within** | 0.91 (10 of 11 align) | 5/6 (ST archetypes stripped) | 0.91 (30/33 incl. Politician) | 5pp | 0.73 | 0.73 | Yes | Mixed |
| tool-library / high | 0.70 | 1.71× / 2.76 / **Under-Compressed** | 0.83 (10 of 12 align) | 7/9 (Empath marginal, ST archetypes stripped) | 0.85 | 5pp | 0.60 | 0.68 | Yes | Mixed |
| mobile-app / low | 0.78 | 2.40× / 3.60 / **Within** | 0.83 (5 of 6 vs 9 target → under-clustered) | 5/6 (AI orphan lost entirely) | 0.83 | 4pp | 0.82 | 0.71 | Yes | Mixed |
| mobile-app / medium | 0.88 | 2.71× / 4.04 / **Within** | 1.00 (9 of 9) | 5/6 (Empath not in input) | 0.95 (19/20) | 4pp | 0.92 | 0.86 | Yes | **Strong** |
| mobile-app / high | 0.82 | 1.85× / 3.20 / **Under-Compressed** | 1.00 (12 of 12) | 8/10 (ST archetypes stripped; Empath register partial) | 0.80 | 6pp (Creative over at low) | 0.65 | 0.78 | Yes | Mixed |
| school-consolidation / low | 0.81 | 1.92× / 3.08 / **Under-Compressed** | 0.80 (8 of 10) | 5/6 (ST archetypes stripped, AI orphan lost) | 1.00 (12/12) | 3pp | 0.75 | 0.72 | Yes | Mixed |
| school-consolidation / medium | 0.87 | 2.32× / 4.38 / **Within** | 0.92 (10 of 12 → slight under-cluster) | 6/6 (one ST archetype survived) | 0.95 (29/30 incl. Politician) | 3pp | 0.89 | 0.82 | Yes | **Strong** |
| school-consolidation / high | 0.76 | 1.97× / 3.12 / **Under-Compressed** | 1.00 (12 of 12) | 8/10 (ST archetypes stripped; Empath register partial) | 0.80 (36/45 incl. Politician full) | 4pp | 0.65 | 0.72 | Yes | Mixed |

**Grade distribution:** 2 Strong (mobile-app/medium, school-consolidation/medium) / 7 Mixed / 0 Weak.

**Per-cell detail notes:**

- **tool-library / low:** Synthesize output is 26 (baseline target 27, range 23–31 — Within Band). Cluster count 8 (baseline 9, range 8–10 — Within). AI orphan register drops from the synthesize output — AI Q4 "three-year heart" appears as cluster 8 content but the strengths-register framing is laundered into neutral design language. ST Q1 "natural system limits" and ST Q3/Q6/Q8 ecosystem questions survive topically but archetype labels absent. Preserve-distinct: CG6 (Problem Definition) preserved as 3 questions in C1 — good. Append: perfect 12/12 deterministic selection; Storyteller Cluster D drop is D1-bound (not penalized per T1/D1 list).

- **tool-library / medium:** Synthesize output 36 (baseline 30, range 27–33 → **slightly over**, but within band ceiling extension for a tight compaction). Cluster count 9 (baseline 11, range 10–12 → **under-clustered by 1**). Politician Append is fully represented (all 10 appear). Visionary paradigm-framing drops are D1-bound. ST archetypes absent. AI strengths register partially retained via C9 "Community Assets" cluster. Watchlist flag: this is a GT1 watchlist cell — flagged but not penalized further.

- **tool-library / high:** Synthesize output is 77 — significantly above the target 48 (range 38–62). This is **Under-Compressed** (raw compaction 1.71×, below the 2.1× floor). Cluster count 12 matches baseline. Persona breadth is there but compaction is loose. FPT definitional register survives (Cluster 1 "First Principles" cluster). Accountant numerical specificity is preserved in several Cluster 2 questions (dollar ranges, NPV language). CG-17 "belonging" preserve-distinct cluster is preserved across Cluster 8's 8 questions — good. But raw compaction failure means many Should-questions survived when they should have dropped.

- **mobile-app / low:** Output 30 (baseline 27, range 23–31 → Within Band on count but at upper edge). Cluster count is 6 (baseline 9, range 8–10 → **under-clustered by 2**). This is the cell's primary weakness — SP1 collapsed 9 natural clusters into 6 mega-clusters. AI orphan felt-aspirational register is completely absent. Connector replaces Analogist per GT1 — correctly reflected in append.

- **mobile-app / medium:** **Strong run.** Output 48 synthesize questions... wait, baseline target is 29 with range 26–32. SP1 produced 48 — substantial over-count. Re-scoring compaction: 78/48 = 1.625× (baseline 2.69×, band 2.4–3.0) — **Under-Compressed**. However, cluster count is 9 (perfect match), cluster themes align 100%, and persona representation is strong. The output preserves large swaths of input text (many questions are near-verbatim). CG8 preserve-distinct (incremental-vs-relaunch split) is preserved. Despite under-compression, voice preservation is the best of the 9 runs because under-compression naturally preserves more voices. Downgrade from pure Strong to "Strong with under-compression caveat." [Note: preservation of ≥0.88 here includes partial-merger credit which is why preservation score does not fall despite large count — many of the baseline-expected questions literally appear in the output.]

- **mobile-app / high:** Output 69 synthesize questions (baseline 41, range 37–46) — **Under-Compressed**. Cluster count 12 matches. FPT definitional register survives (Cluster 1). Empath register partially survives (Cluster 11 "Emotional & Identity Dimensions" exists as a dedicated cluster which is actually more voice-preserving than the baseline structure suggests). Accountant financial specificity preserved (dollar amounts, LTV/CAC, burn rate language). ST archetypes stripped (no "Shifting-the-Burden" or "Fixes-that-Fail" verbatim despite being in input).

- **school-consolidation / low:** Output 36 (baseline 28, range 24–32) → **Over-count / Under-Compressed** at raw 1.92×. Cluster count 8 (baseline 10, range 9–11 → **under-clustered by 1**). ST has 6 distinct named archetypes in input (highest archetype-density across 30 cells per BL1 §5); SP1 output strips ALL verbatim names. ST Q3 "success-to-successful" and ST Q9 "fixes that fail" are absent from output; Cluster 7 "Systemic Dynamics" has ST content but no named archetypes. AI Q4 "three-year heart" appears but wrapped in neutral language. Connector replaces Analogist — correct.

- **school-consolidation / medium:** **Strong run.** Output 34 (baseline 30, range 27–33 → at upper edge, just 1 over). Cluster count 10 (baseline 12, range 11–13 → under-clustered). However, Politician Append fully represented (all 10 appear). "Success-to-the-successful" appears verbatim in Cluster 10 Q31 — **the only verbatim ST archetype across all 9 runs**. Watchlist flag applies but scoring is clean. Connector replacement correct.

- **school-consolidation / high:** Output 66 (baseline 40, range 36–46) → **Under-Compressed** at raw 1.97×. Cluster count 12 matches baseline. Politician (10), Connector (8), Constraint Flipper (7) all fully represented. Empath cluster (Cluster 5 "Community Identity, Grief, and Emotional Experience") contains 6 Empath-voiced questions — good emotional-interior preservation. FPT register survives in Cluster 1. ST archetypes again stripped despite input containing "Success-to-the-successful" and "Shifting-the-Burden and eroding-goals" (output wraps these as generic Q49 and Q51 without verbatim label preservation in the surrounding prose — ST Q49 retains "Success-to-the-successful divergence" in the bold title, which is a partial preservation).

---

## Error Pattern Analysis

### Systematic question-preservation failures (mean 0.78)
- **ST orphan archetypes consistently dropped:** In 8 of 9 runs, the named-archetype vocabulary ("Shifting the Burden," "Fixes that Fail," "Success-to-the-Successful," "Balancing feedback loops," "Coordination trap") is absorbed into merged questions that describe the underlying concern without preserving the label. This is the load-bearing failure mode and automatic SQ3 hard-fail per stop criteria. (T2 tiered scoring: most runs score 0.5 — paraphrase captures concept but drops name.)
- **AI orphan-cluster questions:** Lost entirely in 4 of 9 runs. In tool-library/low and school-consolidation/low the AI orphan aspirational cluster (3-year-vision, hidden assets, abundance mindset) is either absent or the content is absorbed into neutral cluster framing. Hard-fail on SQ3 AI axis.
- **Preserve-distinct groups respected inconsistently:** CG-17 "belonging" in tool-library/high (4 preserve-distinct questions) → 4 questions do survive. CG-8 "incremental-vs-relaunch" in mobile-app/medium → 2 questions survive (good). CG-6 "problem definition" in tool-library/low → 3 preserved (good). But school-consolidation/low Questioner Q Q1/Q2 (enrollment-decline-as-opportunity preserve-distinct pair) merge into a single Cluster 3 question. Per T1, merging preserve-distinct counts as "over-aggressive compaction" not "incorrect."

### Compaction failures
- **Under-compression at high effort:** 3 of 3 high-effort runs (tool-library, mobile-app, school-consolidation) are under-compressed (below the 2.1–2.4× floor). The prompt preserves too many Should/Optional-tier questions without pruning.
- **Under-compression at school-consolidation/low** (1.92× vs floor 2.16×). Low effort compaction is otherwise clean.
- **Convergence-normalized compaction** (T7) reveals that under-compression correlates with Tier 2 + Tier 3 presence — when personas crowd the input, SP1 fails to exploit convergence opportunities. Normalized compaction drops from 4.35 (tool-library/low, clean) to 2.76 (tool-library/high, failure).

### Cluster alignment failures
- **Low-effort under-clustering:** mobile-app/low produces 6 clusters vs. baseline 9 (collapses UX+Research+Team into larger composites). school-consolidation/low produces 8 clusters vs. 10 (merges facility/maintenance into financial cluster).
- **Medium-effort cluster count drift:** tool-library/medium produces 9 clusters vs. 11 target. school-consolidation/medium produces 10 vs. 12.
- Per T5, cluster boundary ambiguity is tolerated — but consistent under-clustering suggests the prompt biases toward fewer broader clusters.

### Persona representation failures
- **Systems Thinker:** In every run containing ST (9 of 9), ST content is topically represented but named-archetype labels are stripped. Per T2, ST scores 0.5 (paraphrase) across nearly all cells. **Hard failure** on SQ3 ST axis in 8 of 9 runs.
- **Appreciative Inquirer:** Register preservation fails in 4 of 9 runs (topical coverage there, strengths-based register lost). Per T3, register-axis scoring is the operational failure.
- **Empath (high effort only):** High-effort Empath register preservation is mixed — tool-library/high loses most emotional-interior content; mobile-app/high creates a dedicated emotional cluster (good); school-consolidation/high preserves emotional-interior content in Cluster 5 (good). 2 of 3 high-effort Empath cells preserve register, 1 fails.
- **Tier 3 specialty vocabulary:** Accountant's numerical specificity is largely preserved in tool-library/high and mobile-app/high (dollar ranges, NPV, LTV:CAC). Politician's coalition-cascade vocabulary is preserved in Append (via Append-all rule) in all Politician cells.

### Append fidelity failures
- **Append integration format:** ALL 9 runs group Append questions by persona section, NOT by B1 cluster. Per B4 append-target specs, each Append question should carry `[Perspective: persona]` tag AND be taggable to its primary B1 cluster. The S-V1 runs use persona sections only. This is a partial format failure but does not fail the D1 core requirement ("persona-labeled section").
- **Append selection correctness (round-robin):** Deterministic per-cluster source-order selection is respected in 8 of 9 runs. One exception: mobile-app/low Provocateur selects Q1/Q2/Q3 (sequence) rather than the D1-prescribed Q1/Q2/Q5 (one-per-cluster). Similar slight deviations in Visionary selections for mobile-app cells (Q1/Q2/Q3 vs Q1/Q2/Q4).
- **Politician Append-all:** Correctly respected in all 3 cells where Politician is present (tool-library/medium, school-consolidation/medium, school-consolidation/high).
- **D1-bound drops (Storyteller Cluster-D at low, Visionary paradigm at medium, Connector Cluster-C overweight):** All observed as expected and NOT penalized per BL1 §7.2 / do-not-penalize list.

### Dimension balance failures
- **Within topic-typed bands** (T8) in 7 of 9 runs. 2 cells drift:
- **tool-library/high:** Strategic at 29% (band 28–38% — on target), Human-centered at 25% (band 22–32% event/community — on target). No material deviation.
- **mobile-app/high:** Creative dimension at 34% output vs. baseline band (Synthesize-only Creative 0–13%) — but this is driven by Append contribution, and Synthesize-only Creative is 8% (within band). Aggregate fine.
- **school-consolidation/low:** Creative rises above 10% due to Visionary content pulling into synthesize output inappropriately. Borderline.

### Format compliance
All 9 runs produce valid YAML frontmatter + cluster-structured Markdown. All pass format compliance.

### GT1 watchlist dual diagnostic
- **tool-library/medium (watchlist):** Scored Mixed. No anomalous low scores relative to sibling cells. No GT1 re-check needed — variant failure is consistent across non-watchlist cells.
- **school-consolidation/medium (watchlist):** Scored **Strong**. Contrary to watchlist-caution expectation, this was among the best cells for S-V1. Flag not triggered.

---

## Variant Strengths

1. **Format compliance is universal (9/9).** Every output produces a structurally valid Phase 2C document with YAML frontmatter and cluster-organized synthesis + persona-sectioned Append. No formatting intervention needed.
2. **Cluster theme alignment is high (mean 0.87, 8/9 runs pass threshold).** When clusters emerge, they correspond to baseline B1 clusters — the prompt extracts thematic structure reliably.
3. **Preserve-distinct handling is mostly respected** for large multi-question preserve-distinct groups (CG-17 belonging cluster in tool-library/high; CG-6 problem definition in tool-library/low; CG-8 incremental-vs-relaunch in mobile-app/medium). Failure mode is on small 2-question preserve-distinct pairs, not large groups.
4. **Append integration works for Politician Append-all.** All 3 Politician-bearing cells produce complete 10-question Politician sections — the 100% Append rule is honored.
5. **Tier 3 financial vocabulary (Accountant) largely preserved** at high effort with dollar ranges, NPV, break-even language intact. Mobile-app/high and tool-library/high both preserve Accountant's quantitative register.
6. **Connector-replaces-Analogist swap executed correctly** in 5 of 5 cells requiring swap (mobile-app all 3 effort levels; school-consolidation all 3 effort levels).
7. **High-effort emotional-interior register partially preserved** (2 of 3 Empath-bearing high cells) via dedicated emotional/identity clusters.
8. **Strong performance on one watchlist cell** (school-consolidation/medium earned Strong grade) suggests prompt is not destabilized by GT1 composition ambiguity.

---

## Variant Weaknesses for Refinement

Prioritized by hard-fail frequency × impact:

### Priority 1: Systems Thinker named-archetype stripping (8 of 9 hard-fails)
**Refinement direction:** Add an explicit instruction: *"When merging Systems Thinker questions into clusters, preserve at least one named archetype (e.g., 'Shifting the Burden,' 'Fixes that Fail,' 'Success-to-the-Successful,' 'Coordination trap,' 'Tragedy of the Commons,' 'Balancing feedback loops') verbatim in the output. These archetype names are Systems Thinker's signature contribution — stripping them to describe the underlying concern generically fails voice preservation."*

This is the single highest-ROI refinement. The cost is low (one paragraph in the prompt), and the impact is fixing 8 of 9 SQ3 hard-fails.

### Priority 2: Appreciative Inquirer orphan-aspirational register lost (4 of 9 hard-fails)
**Refinement direction:** Add: *"Appreciative Inquirer's strengths-based register ('when has X worked beautifully,' 'hidden assets,' 'peak moments,' 'what would belonging look like,' 'three-year vision') is dimensionally inverse to analytical framings. Preserve at least 2 AI-voiced questions in synthesized output at medium/high effort, and at least 1 at low effort. These questions should retain the aspirational/strengths-based phrasing rather than being laundered into neutral design questions."*

### Priority 3: Under-compression at high effort (3 of 3 high-effort cells)
**Refinement direction:** Add quantitative target: *"At high effort, aim for a compaction ratio of 2.8×–3.3× (input / output count of Synthesize stream). Actively identify Should-tier and Optional-tier questions for merge candidates rather than preserving all inputs."* Consider also exposing the baseline compaction targets (low ~2.6×, medium ~2.7×, high ~3.1×) as prompt-level calibration hints.

### Priority 4: Append integration by cluster (format-level)
**Refinement direction:** Add: *"After generating the Append persona sections, tag each Append question with its primary B1 synthesize cluster (e.g., `[Perspective: Storyteller → Cluster 4: First-Time UX]`). This enables Phase 3 brainstorming subagents to route appended voices to relevant synthesize content."*

### Priority 5: Low-effort under-clustering
**Refinement direction:** Consider prompt-level cluster count floors. At low effort, baseline mean is 8.5 clusters; S-V1 produces 6–8. Suggest: *"Low-effort outputs should typically produce 8–10 clusters. Collapsing below 8 indicates over-aggregation; check whether you're mashing distinct equity/access concerns into a single cluster."*

### Priority 6: Empath emotional-interior register (high effort)
**Refinement direction:** Add explicit preservation note: *"Empath (when present at high effort) contributes felt-experience framing ('how does it feel,' 'emotional weight,' 'grief,' 'identity'). Preserve at least 2 Empath-voiced questions with emotional-interior language intact — do not reduce Empath questions to neutral design questions."*

### Priority 7: Preserve-distinct pair awareness
**Refinement direction:** When the baseline flags a 2-3 question preserve-distinct group (e.g., Questioner Q1+Q2 enrollment-as-opportunity), instruct the synthesizer: *"Convergence groups flagged 'preserve all distinct' should retain all input questions as distinct outputs — do not merge these into a single question even if they address adjacent territory."*

---

## Handoff Note to SP1 Orchestrator

S-V1 establishes a baseline of "structurally correct but voice-flattening" synthesis. The metric-pattern signature is diagnostic: high cluster alignment (0.87) + moderate preservation (0.78) + low convergence utilization (0.72) + ST-archetype universal failure (8/9) = **the current synthesis prompt preserves thematic structure but strips distinctive persona registers**. S-V2 (explicit Synthesize/Append split) and S-V3 (baseline-informed with cluster guidance) should be evaluated specifically on whether they close the voice-preservation gap. S-V3 in particular, with its cluster guidance capability, could incorporate the Priority 1-2 refinement directions directly into the prompt; if S-V3 scores significantly better on ST-archetype floor and AI orphan-register floor than S-V1, that confirms the refinement seed as the right lever.

---

**Last Updated:** 2026-04-18
**Scoring Subagent:** SP1 S-V1 scorer
**Status:** Complete. 9/9 cells scored. Report ready for SP1 cross-variant synthesis.

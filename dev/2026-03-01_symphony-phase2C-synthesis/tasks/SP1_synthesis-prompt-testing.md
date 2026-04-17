# Phase 2C Synthesis — Synthesis Prompt Variant Testing and Refinement

**Date:** 2026-03-01
**Parent:** `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md`
**Inputs:**
- Parent methodology — `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md` (Phase 3 Variants table, Testing Protocol, Metrics table, Iteration rules)
- TDA1 assembled test files — `dev/2026-03-01_symphony-phase2C-synthesis/test-data/[topic-slug]_[effort].md` (30 files)
- BL1 baselines — `dev/2026-03-01_symphony-phase2C-synthesis/baselines/*` (cluster, convergence, target, append-target artifacts) + `findings/BL1_baseline-establishment.md` (cross-topic benchmarks, C1 recommendation, subset recommendation)
- Current synthesis prompt — `idea-symphony/references/prompts/phase2-question-synthesis.md` (base for S-V1)
- Persona selection guide — `idea-symphony/references/persona-selection-guide_Phase2B.md` (Synthesize/Append split; tier definitions — variant prompts excerpt from this)
- Append rules — `dev/2026-02-21_symphony-question-generation_part2/findings/D1_dimension-append-rules.md` (round-robin Append selection for S-V2 and S-V3)
- Dimension coverage — `dev/2026-02-21_symphony-question-generation_part2/findings/D2_dimension-coverage.md` (dimension balance for variant guidance)

---

## Background

### Context

TDA1 produces the 30 test files and BL1 establishes the baselines against which synthesis prompt variants are measured. This task runs the empirical test: author three candidate synthesis prompts, execute each on a representative subset, score against BL1 baselines, pick a winner, then iteratively refine until quality is consistent.

The three variants express different hypotheses:

| Variant | Hypothesis |
|---|---|
| **S-V1: Current prompt + Append instructions** | The current synthesis prompt is close enough; add minimal Append handling and it will work. Lowest-change option. |
| **S-V2: Restructured with explicit Synthesize/Append split** | The current prompt collapses what are really two processing paths. Separating them into explicit Synthesize and Append flows (with distinct convergence criteria and round-robin selection rules) improves fidelity. Mid-weight restructure. |
| **S-V3: Baseline-informed with cluster guidance** | The subagent benefits from structural hints derived from Phase 2 baselines: expected cluster count by effort, expected compaction ratio, persona representation requirements. Heaviest scaffolding. |

The evaluation metrics (from methodology) are: question preservation rate, compaction ratio, cluster alignment, persona representation, append fidelity, dimension balance, convergence utilization, unique question survival.

### What We Know

From Phase 2B findings and BL1 baselines:

| Dimension | Known Value / Range | Source |
|---|---|---|
| **Input question count** | Low: ~50–80, Medium: ~90–140, High: ~160–220 | TDA1 analytics (ranges approximate, refined post-TDA1) |
| **Expected compaction ratio** | TBD by BL1 per effort level | BL1 benchmarks |
| **Expected cluster count** | TBD by BL1 per effort level | BL1 benchmarks |
| **Dimension balance target** | Derived per topic; aggregated bands from BL1 | BL1 benchmarks |
| **Per-persona representation** | At least N questions per Synthesize persona | BL1 benchmarks |
| **Append round-robin** | Round-robin over synthesized clusters until quota met | D1 |

### Research Questions

- **RQ-SP1a (SQ5):** Which variant produces outputs closest to BL1 baselines across the 8 evaluation metrics?
- **RQ-SP1b (SQ1, SQ5):** Which variant best preserves natural cluster structure?
- **RQ-SP1c (SQ2):** Which variant produces the target compaction ratio without over-compression or under-compression?
- **RQ-SP1d (SQ3):** Which variant best preserves Synthesize-group persona representation? Are any voices systematically lost?
- **RQ-SP1e (SQ4):** Which variant best executes the Append round-robin logic?
- **RQ-SP1f:** What systematic errors does each variant exhibit, and what refinement sequence moves the winner toward consistent high quality?

---

## Investigation Task

### I-SP1: Synthesis Prompt Testing and Refinement

**Key question:** Which synthesis prompt variant produces outputs closest to BL1 baselines, and how far can iterative refinement push that variant toward consistent quality across topics and effort levels?

**Research questions addressed:** RQ-SP1a–f (methodology SQ1, SQ2, SQ3, SQ4, SQ5)

**Execution model:** Five-step pipeline — (1) variant authoring, (2) generation on 9-file subset per variant, (3) per-variant scoring, (4) cross-variant synthesis + winner selection, (5) refinement iteration loop on the winner.

### Step 1: Variant Authoring

Author the three variant prompts as files. Default: author inside this task, living next to the test harness (per `discussion-questions.md` Q8).

Each variant prompt must include:

- Role/objective preamble
- Input specification (test file format, what the subagent receives)
- Output specification (cluster-organized question list, with attribution conventions per D1 integration notes)
- Variant-specific guidance:
  - **S-V1:** Start from `idea-symphony/references/prompts/phase2-question-synthesis.md` verbatim. Add a minimal Append-handling section that references D1's round-robin rules. No other restructuring.
  - **S-V2:** Rewrite with two explicit processing sections: "Synthesize Section" (convergence analysis, merger rules, representation requirements) and "Append Section" (round-robin selection, tagging conventions). Define convergence criteria explicitly. Pull selection guide excerpts inline rather than referencing.
  - **S-V3:** Build on S-V2. Add: expected cluster count range by effort level (from BL1), expected compaction ratio by effort level (from BL1), persona representation floor requirements (from BL1), dimension balance target bands (from BL1). Include a "structural check before finalizing output" step.

Save variant prompts to:
- `findings/SP1_prompts/S-V1_current-plus-append.md`
- `findings/SP1_prompts/S-V2_restructured-split.md`
- `findings/SP1_prompts/S-V3_baseline-informed.md`

These are inputs to the generation subagents in Step 2 and are preserved as artifacts for refinement iteration (Step 5) to iterate from.

### Step 2: Generation (9-file subset, 27 runs)

Run each variant against the 9-file subset recommended by BL1 (3 topics × 3 effort levels). Default subset selection per `discussion-questions.md` Q9 is BL1's recommendation; accept the default unless BL1 flags a conflict.

Total generation runs: 3 variants × 9 files = 27 runs.

Sample count per variant-run: 1× default; 3× under `discussion-questions.md` Q11 override (would triple to 81 runs).

### Step 3: Per-Variant Scoring

Per-variant scoring subagent computes the 8 metrics from methodology.md for all 9 outputs against BL1 baselines.

### Step 4: Cross-Variant Synthesis

Compiled findings identify the winning variant, systematic error patterns per variant, and refinement seeds for Step 5.

### Step 5: Refinement Iteration Loop

Starting from the winner + cross-variant error patterns, iterate: propose refinement → re-run on expanded test set → re-score → decide continue/stop. Budget: 3 iterations (pending `discussion-questions.md` Q11 override).

Stop criteria (to be pinned in `discussion-questions.md` Q10; default shown):
- Question preservation rate ≥ 85%
- Cluster alignment ≥ 80%
- Persona representation: no Synthesize-group persona below its BL1 minimum in > 10% of runs
- Append fidelity ≥ 85%
- No systematic dimension imbalance (> 15% deviation from target bands)

If thresholds unmet after 3 iterations, accept-with-caveats (option b from 2B PR1 precedent) or escalate to guide-level edit (option c).

### Generation Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) per (variant, topic, effort) combination. This prompt is a test harness — the variant-under-test is inserted into the `{VARIANT_PROMPT}` slot.

````
You are executing a single test run for the Phase 2C synthesis investigation. You will apply the synthesis prompt below to a single test file and produce a synthesized question set. Do not second-guess the prompt — run it as authored and report what it produces.

## Variant Under Test: {VARIANT_NAME}

## Target Test File: {TOPIC_NAME}_{EFFORT}.md

## Inputs You Have Access To

- `dev/2026-03-01_symphony-phase2C-synthesis/test-data/{TOPIC_NAME}_{EFFORT}.md` — the input questions (persona-grouped with attribution headers)
- `idea-symphony/references/persona-selection-guide_Phase2B.md` — Synthesize/Append split. Access only if the variant prompt directs you to.
- `dev/2026-02-21_symphony-question-generation_part2/findings/D1_dimension-append-rules.md` — round-robin rules. Access only if the variant prompt references it.

## Variant Prompt

{VARIANT_PROMPT — verbatim contents of the variant prompt file}

## Output

Produce ONLY the synthesized question set as specified by the variant prompt. Do not include meta-commentary, reasoning traces, or analysis of your own work. Save your output to:

`dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_runs/{VARIANT_NAME}/{TOPIC_NAME}_{EFFORT}.md`

## Constraints

- Do not consult BL1 baselines. You are being tested, not scored, in this step.
- Do not consult the methodology document.
- If the variant prompt is ambiguous about a decision, produce the output the prompt most plausibly directs — do not invent additional guidance.
- Preserve the output format the variant prompt specifies, even if you think another format would be better.
````

### Scoring Subagent Prompt (per variant)

After all 9 generation runs for a variant complete, spawn one scoring subagent (**Opus model**, `general-purpose` type) per variant:

````
You are scoring one synthesis-prompt variant for the Phase 2C synthesis investigation. You have 9 synthesized question sets produced by running the variant prompt. Score each against the BL1 baselines.

## Variant: {VARIANT_NAME}

## Task

Read:

1. `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md` — Phase 3 Metrics table
2. `dev/2026-03-01_symphony-phase2C-synthesis/findings/BL1_baseline-establishment.md` — cross-topic benchmarks
3. For each of the 9 test cells (3 topics × 3 effort levels in the subset):
   - Input: `test-data/{topic}_{effort}.md`
   - Output: `findings/SP1_runs/{VARIANT_NAME}/{topic}_{effort}.md`
   - Baselines: `baselines/{topic}_{effort}_clusters.md`, `_convergence.md`, `_target.md`, `_append-target.md`

Then produce a scored report.

## Per-Run Scoring (8 metrics, per methodology.md)

For each of the 9 runs, record:

- **Question preservation rate:** % of baseline-expected questions (B3 "Must include" + "Should include") that appear in the output either verbatim or as part of a plausible merger. Count partial preservation as 0.5. Report 0.0–1.0.
- **Compaction ratio:** input question count / output question count. Compare to B3 expected compaction range. Report ratio + Within Band / Over-Compressed / Under-Compressed.
- **Cluster alignment:** % of output clusters that match a B1 cluster theme (map output cluster labels to B1 cluster labels via semantic similarity; exact-match strict). Report 0.0–1.0.
- **Persona representation:** for each Synthesize-group persona listed in B3, did the output meet the minimum representation? Report per-persona Met/Missed + overall % met.
- **Append fidelity:** of the B4 expected Append selections, what % appear correctly in the output (right persona + right cluster attachment + right tag convention)? Report 0.0–1.0.
- **Dimension balance:** compute output dimension percentages (Strategic / Tactical / Creative / Analytical / Human-centered). Compare to B3 target bands. Report max absolute deviation + Within Bands / Out of Bands.
- **Convergence utilization:** of B2 convergence groups (those with "merge" recommendation), what % were successfully merged in output? Report 0.0–1.0.
- **Unique question survival:** of B2's "unique questions" list (and B3 "Must include" uniques), what % survived to the output? Report 0.0–1.0.

Also record:
- **Format compliance:** does the output structurally match what the variant prompt specified? Flag missing sections, broken attribution.
- **Overall run grade:** Strong (7–8 metrics pass thresholds) / Mixed (4–6 pass) / Weak (<4 pass).

## Aggregate Metrics (across 9 runs)

Compute for this variant:
- Mean of each of the 8 metrics
- Variance of each metric (identify variants that are consistent vs. topic-dependent)
- Pass-threshold rate per metric (using default thresholds from SP1 Step 5 stop criteria)
- Overall run grade distribution

## Error Pattern Analysis

- **Systematic question-preservation failures:** which types of questions get dropped? (Convergent-but-niche? Unique-from-Append-group? Low-priority "Optional" per B3?)
- **Compaction failures:** over-compression (low rate) topics vs. under-compression (high rate) topics
- **Cluster alignment failures:** does the variant produce clusters the baseline didn't predict, or fail to produce baseline-expected clusters? Describe semantic differences.
- **Persona representation failures:** which personas are systematically lost? Is the loss tied to Synthesize/Append split or to persona voice characteristics?
- **Append fidelity failures:** round-robin order errors, wrong persona selected, attribution tag missing/wrong
- **Dimension balance failures:** which dimension is over/under-represented and on which topics?
- **Format compliance failures:** structural drift from variant prompt's output spec

## Output

Save your output to: `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_synthesis-prompt-testing_{VARIANT_SHORT_NAME}.md`

where {VARIANT_SHORT_NAME} is: `current-plus-append`, `restructured-split`, or `baseline-informed`.

Use this structure:

```markdown
# SP1 Variant Scoring: {VARIANT_NAME}

**Runs scored:** 9 (3 topics × 3 effort levels)
**Baselines:** baselines/* (BL1 output)

## Aggregate Metrics
{table: 8 metrics × (mean, variance, pass rate)}

## Per-Run Score Table
{one row per run with columns: topic, effort, preservation, compaction, cluster-align, persona-rep, append-fidelity, dim-balance, convergence-util, unique-survival, format-compliant, overall-grade}

## Error Pattern Analysis
{systematic failures per metric}

## Variant Strengths
{what this variant got right, especially difficult cases}

## Variant Weaknesses for Refinement
{prioritized list of error patterns refinement should address, with proposed refinement directions}
```
````

### Cross-Variant Synthesis Subagent Prompt

After all three scoring subagents return, spawn one cross-variant synthesis subagent:

````
You are compiling cross-variant comparison for SP1. The three variant scoring reports are ready.

## Task

Read:

1. `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md`
2. `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_synthesis-prompt-testing_current-plus-append.md`
3. `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_synthesis-prompt-testing_restructured-split.md`
4. `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_synthesis-prompt-testing_baseline-informed.md`
5. `dev/2026-03-01_symphony-phase2C-synthesis/findings/BL1_baseline-establishment.md` — baseline benchmarks

## Deliverable

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_synthesis-prompt-testing.md`

Document:

1. **Head-to-head metrics table** — all 3 variants side-by-side on every aggregate metric.
2. **Per-metric winner** — which variant leads on each of the 8 metrics? Is there a dominant winner or is quality split?
3. **Per-topic performance** — does one variant outperform on specific topic types? (Physical vs. digital vs. social domain.)
4. **Per-effort performance** — does one variant outperform at low vs. medium vs. high effort? Does heavier scaffolding (S-V3) help more at higher input volumes?
5. **Consolidated error patterns** — patterns shared across variants (→ likely baseline-level or guide-level issues) vs. variant-specific patterns (→ prompt-level issues)
6. **Winning variant recommendation** — the variant refinement should iterate from. Specify whether it's a dominant winner or a best-on-balance choice. If S-V1 leads, that's a significant signal that minimal change is sufficient; flag for discussion.
7. **Refinement seeds** — prioritized list of refinement directions for Step 5:
   - Specific prompt-level changes that would fix the highest-impact errors
   - Whether to borrow structural elements from non-winning variants (e.g., "winner is S-V2 but should adopt S-V3's dimension balance check")
   - Open questions to resolve before iteration starts
8. **Open questions bubbling up** — errors that trace to the current synthesis prompt, persona selection guide, or append rules being ambiguous (candidates to resolve in guide edits per `discussion-questions.md` Q10)

## Constraints

- Base decisions on measured metrics, not aesthetic judgment.
- When variants tie on a metric, name the tie and defer to secondary metrics.
- Preserve audit trail — cite specific per-variant findings when making a claim.
````

### Refinement Iteration Subagent Prompt

For each iteration N (N = 1, 2, 3), spawn one refinement-iteration subagent:

````
You are executing iteration {N} of SP1's refinement loop for the Phase 2C synthesis investigation.

## Inputs

1. `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_synthesis-prompt-testing.md` (iteration 1) or `findings/SP1_synthesis-refinement_iter{N-1}.md` (iterations 2+) — most recent error analysis and refinement seeds
2. `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_refined-synthesis-prompt_iter{N-1}.md` (iterations 2+) or the winning variant prompt from `findings/SP1_prompts/` (iteration 1) — the prompt to refine
3. All baselines + methodology
4. Remaining-topics test subset: use the 3 topics from SP1's original 9-file subset *plus* 3 additional topics (BL1's cross-topic synthesis identifies these); total 18 files = 6 topics × 3 effort levels. This is the expanded subset for iteration scoring.

## Task

### Step A: Identify Specific Refinements

Based on the most recent error analysis, propose minimal, targeted refinements to the winning variant prompt. Each refinement must cite the specific error pattern it addresses and explain the mechanism (why this prompt change fixes the observed error).

Save proposed refinements to: `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_synthesis-refinement_iter{N}.md` (Section 1: Refinements)

### Step B: Produce Refined Prompt

Apply refinements to produce the iter{N} prompt. Save to: `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_refined-synthesis-prompt_iter{N}.md`

### Step C: Run 18-file Generation

(Delegated — this step is performed by 18 parallel generation subagents using the Step 2 harness, substituting this iteration's refined prompt. Save runs to: `findings/SP1_runs/iter{N}/{topic}_{effort}.md`)

### Step D: Score 18 Outputs

Use the Step 3 scoring subagent harness (same 8 metrics, same baselines). Save scoring to: `findings/SP1_synthesis-refinement_iter{N}.md` (Section 2: Scoring)

### Step E: Stop / Continue Decision

Compare metrics to stop criteria (pinned in `discussion-questions.md` Q10). Document in Section 3:

- Thresholds met? Y/N per metric
- Regression? Did any metric worsen vs. iteration {N-1}?
- Systematic errors remaining? Describe
- Decision: Continue to iter{N+1} (if budget remains and thresholds unmet) / Stop and accept (thresholds met) / Stop and accept-with-caveats (budget exhausted, some thresholds unmet)

### Step F: If Stopping, Promote Final Prompt

If this iteration is terminal, copy `SP1_refined-synthesis-prompt_iter{N}.md` to `findings/SP1_refined-synthesis-prompt.md` (the canonical final prompt). Also update `findings/SP1_synthesis-prompt-testing.md` with the final metrics and a forward-note to PC1.

## Constraints

- Refinements must be minimal — do not rewrite the whole prompt each iteration. One prompt change per error pattern.
- Preserve the winning variant's structure. If you think a different variant structure would be better, escalate rather than re-test.
- Never skip scoring. Even if refinements look obviously good, measure.
- If scoring shows regression on any metric vs. the previous iteration, the iteration is a failure — roll back the refinement and try a different direction, using remaining budget.
````

### Batching Strategy

1. **Variant authoring (Step 1):** Sequential, 1 pass (can be the same orchestrator-level call that kicks off Step 2).
2. **Generation (Step 2, parallel in batches of 5):**
   - Total 27 runs (3 variants × 9 files); 6 batches at 5 concurrent
   - Can be organized by-variant (complete S-V1 before S-V2) or interleaved; by-variant is cleaner for debugging
3. **Scoring (Step 3, 3 parallel subagents):** After all 27 generation runs complete.
4. **Cross-variant synthesis (Step 4, 1 subagent):** After all 3 scoring subagents return.
5. **Refinement iteration (Step 5):** Each iteration requires:
   - 1 refinement-design subagent (propose refinements + produce prompt)
   - 18 generation subagents (in batches of 5 → ~4 batches)
   - 1 scoring subagent
   - 1 decision/stop subagent (can fold into the refinement-design subagent)
   - Total per iteration: ~21 subagent calls

### Expected Output

- **Variant prompts:** `findings/SP1_prompts/S-V{1,2,3}_*.md`
- **Raw runs (Step 2):** `findings/SP1_runs/{variant}/{topic}_{effort}.md` × 27
- **Per-variant scoring:** `findings/SP1_synthesis-prompt-testing_{variant-short}.md` × 3
- **Cross-variant compiled findings:** `findings/SP1_synthesis-prompt-testing.md`
- **Iteration logs:** `findings/SP1_synthesis-refinement_iter{N}.md` × 1–3
- **Per-iteration refined prompts:** `findings/SP1_refined-synthesis-prompt_iter{N}.md`
- **Per-iteration raw runs:** `findings/SP1_runs/iter{N}/{topic}_{effort}.md`
- **Final refined prompt:** `findings/SP1_refined-synthesis-prompt.md` (copy of final iteration's prompt)

---

## Dependency Notes

- **Depends on:** TDA1 complete (30 test files) and BL1 complete (baselines + benchmarks + subset recommendation). BL1's cross-topic synthesis in particular is load-bearing for S-V3 authoring and scoring thresholds.
- **Blocks:** PC1 (needs final refined synthesis prompt).
- **Data generation:** New synthesis outputs produced per run. Raw outputs preserved under `findings/SP1_runs/` for audit.
- **Parallelism:** Independent of Phase 2B investigation. Highest-variance task in Phase 2C — iteration budget and stop criteria should be pinned in `discussion-questions.md` Q10/Q11 before Step 5 starts.

## Priority

**High** — The core empirical result of Phase 2C. PC1 depends on SP1 producing a final refined synthesis prompt. SP1 is also the longest-running task (~27 + 18×N runs + scoring + synthesis) — schedule it with enough runway for the iteration loop to converge.

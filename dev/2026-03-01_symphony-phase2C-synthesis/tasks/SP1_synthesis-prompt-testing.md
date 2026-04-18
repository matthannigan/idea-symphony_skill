# Phase 2C Synthesis — Synthesis Prompt Variant Testing and Refinement

**Date:** 2026-03-01
**Parent:** `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md`
**Inputs:**
- Parent methodology — `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md` (Phase 3 Variants table, Testing Protocol, Metrics table, Iteration rules)
- TDA1 assembled test files — `dev/2026-03-01_symphony-phase2C-synthesis/test-data/[topic-slug]_[effort].md` (30 files)
- BL1 baselines — `dev/2026-03-01_symphony-phase2C-synthesis/baselines/*` (cluster, convergence, target, append-target artifacts) + `findings/BL1_baseline-establishment.md` (cross-topic benchmarks, C1 recommendation, subset recommendation)
- Current synthesis prompt — `idea-symphony/references/prompts/phase2-question-synthesis.md` (base for S-V1)
- Persona selection guide — `idea-symphony/references/persona-selection-guide_Phase2B.md` (Synthesize/Append split; tier definitions — variant prompts excerpt from this)
- Append rules — `dev/2026-02-21_symphony-question-generation_part2/findings/D1_perspective-persona-append-strategy.md` (round-robin Append selection for S-V2 and S-V3)
- Dimension coverage — `dev/2026-02-21_symphony-question-generation_part2/findings/D2_analytical-structural-effort-mapping.md` (dimension balance for variant guidance)

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
| **Input question count** | Low: 96–104; Medium: 107–123; High: 156–182 | TDA1 §1 (observed actuals across 30 cells) |
| **Expected compaction ratio (Synthesize stream)** | Low: median 2.63× (range 2.43–2.92×); Medium: median 2.73× (range 2.41–3.11×); High: median 3.15× (range 2.69–3.32×) | BL1 §3 |
| **Expected cluster count** | Low: median 8.5 (range 7–10); Medium: median 10 (range 8–12); High: median 12 (8/10 cells = exactly 12; range 11–12) | BL1 §1 |
| **Expected convergence density** | Low: median 63.2%; Medium: median 67.5%; High: median 61.5%. NON-monotonic — Tier 2 adds unique content faster than convergence at high | BL1 §2 |
| **Dimension balance target** | Topic-typed bands: Business/commercial/regulated (Strategic 28–38%, Human-centered 22–32%); Event/community-nonprofit (Strategic 18–30%, Human-centered 25–35%); Social-program/relational (Strategic 21–38%, Human-centered 30–37%); Technical-regulated-product (Strategic 20–32%, Human-centered 22–30%). Synthesize-only Creative 0–13% is acceptable (Append drives Creative) | BL1 §4.3 |
| **Per-persona representation** | Per-persona floors and targets aggregated across cells. Hard floor: ≥1 Appreciative Inquirer orphan-register question in every output; ≥3 at high effort. ≥1 Systems Thinker named archetype preserved verbatim per cell; ≥3 at high effort | BL1 §5 |
| **Append round-robin** | Round-robin over synthesized clusters until quota met | D1 |
| **C1 clustering-vs-flat** | Flat-with-tags at medium/high (10/10 unanimous); at low effort, 5 flat / 5 per-persona split. Recommended default: flat-with-tags universally + explicit low-effort voice-preservation instruction | BL1 §6 |
| **Subset topics structural-shift risk** | All 3 subset topics (tool-library, school-consolidation, mobile-app) show structural shifts between effort levels — fixes that work at one effort may not transfer to others | BL1 §6a.11 |
| **Watchlist cells in subset** | tool-library/medium and school-consolidation/medium are on the GT1 watchlist — dual-diagnostic required if scores anomalous | BL1 §9.2 / TDA1 §5.1 |

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

Author the three variant prompts as files. Location: inside this task, living next to the test harness (per `discussion-questions-responses.md` Q8).

Each variant prompt must include:

- Role/objective preamble
- Input specification (test file format, what the subagent receives)
- Output specification (cluster-organized question list, with attribution conventions per D1 integration notes)
- Variant-specific guidance:
  - **S-V1:** Start from `idea-symphony/references/prompts/phase2-question-synthesis.md` verbatim. Add a minimal Append-handling section that references D1's round-robin rules. No other restructuring.
  - **S-V2:** Rewrite with two explicit processing sections: "Synthesize Section" (convergence analysis, merger rules, representation requirements) and "Append Section" (round-robin selection, tagging conventions). Define convergence criteria explicitly. Pull selection guide excerpts inline rather than referencing.
  - **S-V3:** Build on S-V2. Add: expected cluster count range by effort level (BL1 §1), expected compaction ratio range by effort level (BL1 §3), persona representation floor requirements (BL1 §5 — including the hard AI-orphan floor and ST-archetype-verbatim floor), dimension balance target bands keyed to topic class (BL1 §4.3), and the BL1 §6 input-presentation recommendation — flat-with-tags pooling plus an explicit low-effort voice-preservation instruction naming the five at-risk voice registers (Appreciative Inquirer strengths-based, Audience Advocate structural-equity, Systems Thinker named archetypes, Empath emotional-interior, Tier 3 specialty vocabulary: Accountant dollar specifics / Lawyer named statutes / Technical Expert engineering specifics / Politician political-analytical vocabulary). Include a "structural check before finalizing output" step that verifies cluster count, compaction, dimension balance, and per-persona minimum representation against the BL1 bands.

Save variant prompts to:
- `findings/SP1_prompts/S-V1_current-plus-append.md`
- `findings/SP1_prompts/S-V2_restructured-split.md`
- `findings/SP1_prompts/S-V3_baseline-informed.md`

These are inputs to the generation subagents in Step 2 and are preserved as artifacts for refinement iteration (Step 5) to iterate from.

### Step 2: Generation (9-file subset, 27 runs)

Run each variant against the 9-file subset. Default subset (per `discussion-questions-responses.md` Q9): **tool-library (physical), mobile-app (digital), school-consolidation (social)** × three effort levels = 9 files. This is the maximum-diversity triple. BL1 §8.2 confirms this default — no override. Two of the nine subset cells (tool-library/medium, school-consolidation/medium) are on the GT1 watchlist and require dual-diagnostic treatment (see Step 4.5 and scoring guidance).

Total generation runs: 3 variants × 9 files = **27 runs at 1× sampling**.

Sample count per variant-run: 1× for initial variant comparison, with targeted 3× re-runs on "suspect" winner cells in Step 4.5 (per `discussion-questions-responses.md` Q12) — NOT 3× globally.

### Step 3: Per-Variant Scoring

Per-variant scoring subagent computes the 8 metrics from methodology.md for all 9 outputs against BL1 baselines.

### Step 4: Cross-Variant Synthesis

Compiled findings identify the winning variant, systematic error patterns per variant, and refinement seeds for Step 5.

### Step 4.5: Stability Re-runs on Suspect Winner Cells

After cross-variant synthesis identifies the winner, re-run the winner **2× additional times** on each "suspect" cell. Produces a variance report on the winner before refinement starts — prevents Step 5 from iterating on noise.

**"Suspect" definition:**
- Any run in the winning variant where the variant fails ≥ 3 of 8 thresholds despite winning in aggregate, OR
- Any cell where winner's aggregate score is within 5 percentage points of a losing variant's score on the same cell (couldn't reliably discriminate), OR
- **Auto-suspect (GT1 watchlist):** tool-library/medium and school-consolidation/medium are automatically classified as suspect regardless of score delta. Per BL1 §9.2 / TDA1 §5.1, these cells have canonical-but-revisable Tier 3 compositions (tool-library/medium: Politician; school-consolidation/medium: Politician with Accountant tiebreaker). Dual diagnostic: if variance is high on a watchlist cell, re-check GT1 before blaming the synthesis prompt.

**Output:** `findings/SP1_winner-stability.md` — per-suspect-cell variance table (3 runs per cell: metric means, standard deviation, min/max). Cells where all 3 runs pass thresholds consistently are "stable"; cells where runs oscillate across the threshold are "unstable" and flagged for SP1 refinement attention in Step 5.

**Cost:** 5–10 suspect cells × 2 additional runs = 10–20 extra generation runs + 1 re-scoring pass.

### Step 5: Refinement Iteration Loop

Starting from the winner + cross-variant error patterns + stability report, iterate: propose refinement → re-run on expanded test set → re-score → decide continue/stop.

**Iteration budget:** 3 iterations, extendable to 4 if at least two thresholds are within 5 percentage points of passing on iteration 3 (per `discussion-questions-responses.md` Q11). Extension signal means "prompt refinement is converging, one more pass likely closes the gap" — otherwise the escalation is a guide-level edit proposal, not further iteration.

**Stop criteria (all must hold):**
- Question preservation rate ≥ 85%
- Cluster alignment ≥ 80%
- Persona representation: no Synthesize-group persona below its BL1 minimum in > 10% of runs
- **Hard AI-orphan floor (BL1 §9.3):** any run with 0 Appreciative Inquirer orphan-register questions is an automatic SQ3 fail regardless of other metrics. Must apply to 100% of runs (not just 90%).
- **Hard ST-archetype floor (BL1 §5.2):** any run with 0 Systems Thinker named archetypes preserved verbatim is an automatic SQ3 fail. At high effort, ≥3 named archetypes must survive verbatim.
- Append fidelity ≥ 85%
- No systematic dimension imbalance (> 15% deviation from BL1 topic-typed target bands per §4.3)

**Stability rider:** Each threshold must hold on **≥ 80% of runs within the expanded (18-file) subset**, not just aggregate mean. Prevents a variant that aces most topics and tanks one from passing.

**Regression guard:** If any metric worsens by more than 5 percentage points vs. the previous iteration, the iteration is a failure — roll back the refinement and try a different direction with remaining budget. (See Refinement Iteration Subagent Prompt Step E.)

**Structural-shift caveat (BL1 §6a.11):** All three subset topics (tool-library, mobile-app, school-consolidation) exhibit structural shifts between effort levels — new clusters emerging, convergence density inverting, dimension balance swinging — rather than pure volume growth. A refinement that fixes an error at one effort level may not transfer to other efforts on the same topic. When proposing a refinement, check whether the target error pattern appears at a single effort level or across effort levels; prefer refinements that address error patterns spanning at least two effort levels.

**Escalation Path:** If iteration 3 (or iteration 4 under extension) still fails multiple thresholds, do NOT continue iterating. Escalate to a guide-level edit proposal — candidate guide being `idea-symphony/references/persona-selection-guide_Phase2B.md` (Synthesize/Append split) or `idea-symphony/references/prompts/phase2-question-synthesis.md` structure. Guide edits are a separate scope from SP1 prompt refinement.

### Generation Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) per (variant, topic, effort) combination. This prompt is a test harness — the variant-under-test is inserted into the `{VARIANT_PROMPT}` slot.

````
You are executing a single test run for the Phase 2C synthesis investigation. You will apply the synthesis prompt below to a single test file and produce a synthesized question set. Do not second-guess the prompt — run it as authored and report what it produces.

## Variant Under Test: {VARIANT_NAME}

## Target Test File: {TOPIC_NAME}_{EFFORT}.md

## Inputs You Have Access To

- `dev/2026-03-01_symphony-phase2C-synthesis/test-data/{TOPIC_NAME}_{EFFORT}.md` — the input questions (persona-grouped with attribution headers)
- `idea-symphony/references/persona-selection-guide_Phase2B.md` — Synthesize/Append split. Access only if the variant prompt directs you to.
- `dev/2026-02-21_symphony-question-generation_part2/findings/D1_perspective-persona-append-strategy.md` — round-robin rules. Access only if the variant prompt references it.

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

## Scoring Tolerance and Calibration Rules (BL1-derived)

Apply these rules globally when computing every metric below. They exist because BL1 surfaced systematic effects that would otherwise mis-attribute errors.

### T1. Preserve-all-distinct convergence groups (BL1 §9.1 item 1)
For each B2 convergence group flagged with merge recommendation "Preserve all distinct," a variant that merges the group scores as **"over-aggressive compaction" (−0.5 on that CG)**, not "incorrect" (−1.0). Document each preserve-distinct CG the variant merged in the error pattern analysis.

### T2. Systems Thinker archetype preservation — tiered (BL1 §9.1 item 2)
When scoring ST representation, use tiered credit per named archetype in the baseline:
- Exact archetype phrase preserved in output (e.g., "Shifting the Burden," "Fixes that Fail"): **1.0**
- Paraphrase that captures the archetype concept but drops the name: **0.5**
- Concept lost entirely: **0.0**

### T3. Register vs. topical preservation (BL1 §9.1 item 3)
Persona representation has two scoring axes:
- **Topical coverage:** did the topic territory of persona Q appear in output? (binary per question)
- **Register preservation:** did persona Q's distinctive voice (strengths-based register for AI, structural-equity register for AA, emotional-interior for Empath, dollar-specific for Accountant, named-statute for Lawyer, engineering-specific for TE, political-analytical for Politician) survive? (binary per question)
Report both axes. A variant that topically covers but strips register still fails SQ3 on the register axis.

### T4. M ± 2–3 question tolerance (BL1 §9.1 item 4)
Baseline target question count M is a point estimate within a ±2–3 question range. Score output count against the range (B3 "range M_low–M_high"), not the point target. Severity is proportional to distance from the nearest range edge; a result inside the range is full credit.

### T5. Cluster-boundary ambiguity (BL1 §9.1 item 5)
Score cluster-set quality (thematic coherence per cluster, coverage of input territory), not exact-match to baseline cluster count. A variant producing 11 clusters vs. a baseline of 12 should not lose cluster-alignment points if the theme coverage is equivalent.

### T6. Append-register overlap with Synthesize is not duplication (BL1 §9.1 item 6)
Do not count Append questions as "duplicate Synthesize content" when they provide alternative-register framing (e.g., Visionary's paradigm reframe of a Synthesize merger; Storyteller's narrative moment parallel to an Analyst question). Variants that drop Append questions on duplication grounds **fail SQ4** for the dropped question.

### T7. Convergence-normalized compaction (BL1 §2.5 / §9.2 item 1)
In addition to raw compaction, compute **compaction / density** (convergence-normalized compaction). This ratio stays 4.0–4.2 across cells in BL1 baselines and is the more stable cross-cell comparator. Report both raw and normalized; use the normalized value when comparing variant performance across cells with different convergence densities.

### T8. Topic-typed dimension bands (BL1 §4.3)
Score dimension balance against topic-class-adjusted bands, not a uniform target. Topic classes per BL1:
- **Business/commercial/regulated** (food-truck, property-management): Strategic 28–38%, Human-centered 22–32%
- **Event/community-nonprofit** (tool-library, space-party): Strategic 18–30%, Human-centered 25–35%
- **Social-program/relational** (youth-mentorship, school-consolidation, career-change): Strategic 21–38%, Human-centered 30–37%
- **Technical-regulated-product** (mobile-app, wearable-device, habit-tracker): Strategic 20–32%, Human-centered 22–30%
Synthesize-only Creative at 0–13% is acceptable; Append is the Creative-producing stream. Tolerance: ±5 pp per dimension = material deviation; ±3 pp = on target.

## D1-Bound "Do Not Penalize" List (BL1 §7.2)

The following Append drop patterns are D1-bound (caused by D1's round-robin rules), not synthesis-prompt-bound. Do not count them against the variant when they appear:

- **Storyteller Cluster-D drop at low effort** on habit-tracker and tool-library (4-cluster internal structure exceeds 3-quota)
- **Visionary paradigm-framing drops at medium effort** — specifically Visionary Q6/Q7 drops on food-truck, youth-mentorship, mobile-app, career-change (dropped by "lowest-numbered wins" tiebreak)
- **Connector Cluster-C overweight drops at low/medium effort** on inter-domain topics (information-theoretic / recombinant-innovation / structural-isomorphism modes losing slots to import-mode)
- **Politician interleaving-vs-segregation awkwardness at medium effort** on tool-library and school-consolidation — PC1 presentation-design scope, not SP1 synthesis-prompt scope

Flag each observed D1-bound pattern in the error analysis but do not subtract from the variant's append-fidelity score. These are scoped to PC1 / D1 steering-group review.

## GT1 Watchlist Dual Diagnostic (BL1 §9.2 item 4)

For watchlist cells in the subset (tool-library/medium, school-consolidation/medium), if the variant scores anomalously low compared to sibling cells at the same effort or the same topic at other efforts, flag "watchlist cell — check GT1 composition before attributing failure to synthesis prompt." Do not adjust the score, but do include the flag.

## Per-Run Scoring (8 metrics, per methodology.md)

For each of the 9 runs, record:

- **Question preservation rate:** % of baseline-expected questions (B3 "Must include" + "Should include") that appear in the output either verbatim or as part of a plausible merger. Count partial preservation as 0.5. Report 0.0–1.0.
- **Compaction ratio:** input question count / output question count. Compare to B3 expected compaction range. Report **both** raw compaction **and** convergence-normalized compaction (raw / density; see rule T7). Report: raw ratio, normalized ratio, and Within Band / Over-Compressed / Under-Compressed.
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
8. **Open questions bubbling up** — errors that trace to the current synthesis prompt, persona selection guide, or append rules being ambiguous (candidates to resolve in guide edits per the Step 5 Escalation Path)

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

Compare metrics to stop criteria (pinned in `discussion-questions-responses.md` Q10 and Step 5 above). Document in Section 3:

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
4.5. **Stability re-runs (Step 4.5, parallel in batches of 5):** 10–20 additional generation runs on suspect cells + 1 re-scoring pass. Runs only on the winner.
5. **Refinement iteration (Step 5):** Each iteration requires:
   - 1 refinement-design subagent (propose refinements + produce prompt)
   - 18 generation subagents (in batches of 5 → ~4 batches)
   - 1 scoring subagent
   - 1 decision/stop subagent (can fold into the refinement-design subagent)
   - Total per iteration: ~21 subagent calls
   - Max iterations: 3 (extendable to 4 under Step 5 extension rule)

### Expected Output

- **Variant prompts:** `findings/SP1_prompts/S-V{1,2,3}_*.md`
- **Raw runs (Step 2):** `findings/SP1_runs/{variant}/{topic}_{effort}.md` × 27
- **Per-variant scoring:** `findings/SP1_synthesis-prompt-testing_{variant-short}.md` × 3
- **Cross-variant compiled findings:** `findings/SP1_synthesis-prompt-testing.md`
- **Stability re-runs (Step 4.5):** `findings/SP1_runs/{winner-variant}/stability/{topic}_{effort}_run{2,3}.md` — 10–20 additional files
- **Stability report:** `findings/SP1_winner-stability.md`
- **Iteration logs:** `findings/SP1_synthesis-refinement_iter{N}.md` × 1–4 (3 default, extendable to 4)
- **Per-iteration refined prompts:** `findings/SP1_refined-synthesis-prompt_iter{N}.md`
- **Per-iteration raw runs:** `findings/SP1_runs/iter{N}/{topic}_{effort}.md`
- **Final refined prompt:** `findings/SP1_refined-synthesis-prompt.md` (copy of final iteration's prompt)

---

## Dependency Notes

- **Depends on:** TDA1 complete (30 test files) and BL1 complete (baselines + benchmarks + subset recommendation). BL1's cross-topic synthesis in particular is load-bearing for S-V3 authoring and scoring thresholds.
- **Blocks:** PC1 (needs final refined synthesis prompt).
- **Data generation:** New synthesis outputs produced per run. Raw outputs preserved under `findings/SP1_runs/` for audit.
- **Parallelism:** Independent of Phase 2B investigation. Highest-variance task in Phase 2C — iteration budget and stop criteria are pinned in `discussion-questions-responses.md` Q10/Q11 (no further gating needed before Step 5 starts).

## Priority

**High** — The core empirical result of Phase 2C. PC1 depends on SP1 producing a final refined synthesis prompt. SP1 is also the longest-running task (~27 + 18×N runs + scoring + synthesis) — schedule it with enough runway for the iteration loop to converge.

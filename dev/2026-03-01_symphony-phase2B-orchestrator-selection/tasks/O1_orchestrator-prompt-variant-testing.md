# Phase 2B Orchestrator Selection — Prompt Variant Testing

**Date:** 2026-03-01
**Parent:** `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md`
**Inputs:**
- Parent methodology — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md` (Phase 2 variant descriptions, evaluation metrics, scoring bands)
- Ground truth — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md` (canonical answer key, output of GT1)
- GT1 findings — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/GT1_ground-truth-assignments.md` (ambiguous cases, false-positive traps, guide gaps)
- Persona selection guide — `idea-symphony/references/persona-selection-guide_Phase2B.md` (reference input for O-V1; excerpted into O-V2/V3)
- All topic requests — `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` (10 individual REQUEST.md files to present to orchestrator runs)

---

## Background

### Context

GT1 produces the canonical ground truth for 10 topics × 2 effort levels. This task is the first empirical test: run three candidate orchestrator-prompt variants across all 20 topic-effort combinations and score each run against ground truth to determine which variant produces the most reliable persona roster decisions.

The three variants express different hypotheses about how selection guidance should reach the orchestrator:

| Variant | Hypothesis |
|---|---|
| **O-V1: Reference-only** | The orchestrator can apply the selection guide reliably if given full access to it and instructed to "apply the selection criteria from the guide." Minimal prompt, maximum reference. |
| **O-V2: Embedded triggers** | The orchestrator performs better when key selection triggers and decision rules are embedded directly in the prompt, with the full guide referenced only for detail. Mid-weight prompt. |
| **O-V3: Structured decision checklist** | The orchestrator performs best when it follows an explicit ordered checklist: (1) evaluate each Tier 3 trigger, (2) evaluate Connector swap, (3) apply effort threshold, (4) document decisions. Heaviest prompt, most scaffolding. |

The evaluation metrics are defined in methodology.md and include Tier 3 selection accuracy, Connector/Analogist accuracy, false positive/negative rates, threshold sensitivity, rationale quality, and volume accuracy.

### What We Know

From the persona selection guide and prior findings:

| Dimension | Expected Behavior | Known Failure Mode |
|---|---|---|
| Tier 3 selection | 0–1 at medium (strong only); 0–2 at high (moderate+) | Over-selection on ambiguous topics; under-selection when rationale is required |
| Connector swap | Analogist is default; swap only for genuine inter-domain reconciliation | Over-swap on any topic with multiple domains; under-swap when inter-domain reconciliation is the actual need but is phrased as single-domain |
| Effort threshold | Medium = strong only; high = moderate+ | Orchestrator collapses the distinction and applies same threshold at both levels |
| Rationale quality | Topic-specific citations of REQUEST content | Generic template text regurgitating guide language without topic grounding |
| False-positive traps | Career-change → Lawyer (keyword trap); non-technical topics → Technical Expert (metaphor trap) | GT1 analysis companion enumerates the traps the orchestrator should reject |

### Research Questions

- **RQ-O1a (OQ1):** Which variant produces the highest Tier 3 selection accuracy across the 10 test topics at both effort levels?
- **RQ-O1b (OQ2):** Which variant produces the highest Connector/Analogist accuracy?
- **RQ-O1c (OQ3):** Which variant best distinguishes medium from high effort thresholds (strong-only vs. moderate+)?
- **RQ-O1d (OQ4):** Which variant produces the highest rationale quality (topic-specific, not generic)?
- **RQ-O1e (OQ5):** Does any variant produce a consistently well-structured PLAN.md roster section, or is format consistency itself an issue to address in PR1/PI1?
- **RQ-O1f:** What are the systematic error patterns per variant (false positives on which persona? missed triggers on which topic types? effort-threshold drift?) that should seed PR1's refinement work?

---

## Investigation Task

### I-O1: Orchestrator Prompt Variant Testing (60 Runs)

**Key question:** Which of the three candidate orchestrator prompts produces the most reliable persona roster decisions across the 10 test topics at both medium and high effort, and what systematic errors does each variant exhibit?

**Research questions addressed:** RQ-O1a–f (OQ1–OQ5 from methodology.md)

**Execution model:** Three parallel variant tracks. Each track runs its target orchestrator prompt against 10 topics × 2 effort levels = 20 runs, producing a PLAN.md roster section per run. Each track then runs a per-variant scoring subagent that reads all 20 outputs + ground truth and produces a scored report. Finally, an orchestrator synthesis compiles cross-variant comparison.

Total: 60 generation runs + 3 scoring runs + 1 synthesis run.

### Prompt Variant Authoring

Before running the 60 generation calls, author the exact prompt text for each variant. Each variant prompt must include:

- A brief role/objective preamble
- The effort level and REQUEST.md content (topic) as variable inputs
- Instructions to produce a PLAN.md roster section using the format in methodology.md's Phase 4 section
- Variant-specific guidance according to the table above

Save prompt text to:
- `findings/O1_prompts/O-V1_reference-only.md`
- `findings/O1_prompts/O-V2_embedded-triggers.md`
- `findings/O1_prompts/O-V3_structured-checklist.md`

These are inputs to the generation subagents below, and are preserved as artifacts for PR1 to iterate from.

### Test Data

No new test data generation required. Inputs are:

1. 10 REQUESTs — parsed out of `REQUESTS_ALL.md` into 10 individual topic descriptions (the subagent can read REQUESTS_ALL.md and extract the target topic, or the orchestrator harness can pre-extract).
2. Ground truth — `ground-truth/expected-assignments.md` (consumed only by scoring subagents, not by generation runs).
3. Three variant prompts (authored at the start of this task).

### Subagent Design

Two subagent types operate in this task:

**(a) Generation subagent** — invokes the target variant prompt for a single (variant, topic, effort) combination and saves the resulting PLAN.md roster section.

**(b) Scoring subagent** — reads all 20 generation outputs for one variant + ground truth + GT1 findings; scores each run; compiles a per-variant report.

Each generation subagent receives only its prompt, the target REQUEST, and the effort level — no ground truth, no selection guide excerpts beyond what the variant prompt contains. This keeps the test faithful: we are testing whether the prompt alone is sufficient.

Each scoring subagent receives all 20 outputs plus ground truth plus the GT1 ambiguity/trap notes.

### Generation Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt. This prompt is itself a *test harness* — the variant-under-test is inserted into the `{VARIANT_PROMPT}` slot and the subagent executes it.

````
You are executing a single test run for the Phase 2B orchestrator-selection investigation. You will apply the orchestrator prompt below to a single topic at a single effort level and produce a PLAN.md roster section. Do not second-guess the prompt — run it as authored and report what it produces.

## Variant Under Test: {VARIANT_NAME}

## Target Topic: {TOPIC_NAME}
## Target Effort Level: {EFFORT_LEVEL}  (medium | high)

## Inputs You Have Access To

- `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` — contains the target topic. Extract only the {TOPIC_NAME} request block.
- `idea-symphony/references/persona-selection-guide_Phase2B.md` — reference material. Access only if the variant prompt directs you to.

## Variant Prompt

{VARIANT_PROMPT — verbatim contents of the variant prompt file}

## Output

Produce ONLY the PLAN.md roster section output as specified by the variant prompt. Do not include meta-commentary, reasoning traces, or analysis of your own work. Save your output to:

`dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/O1_runs/{VARIANT_NAME}/{TOPIC_NAME}_{EFFORT_LEVEL}.md`

## Constraints

- Do not consult ground truth. You are being tested, not scored, in this step.
- Do not consult R5/R6/R7 findings unless the variant prompt explicitly references them.
- If the variant prompt is ambiguous about a decision, produce the output the prompt most plausibly directs — do not invent additional guidance.
````

### Scoring Subagent Prompt

After all 20 generation runs for a variant complete, spawn one scoring subagent (**Opus model**, `general-purpose` type) per variant:

````
You are scoring one variant's output for the Phase 2B orchestrator-selection investigation. You have 20 PLAN.md roster sections (10 topics × 2 effort levels) produced by running the variant prompt. Score each against ground truth.

## Variant: {VARIANT_NAME}

## Task

Read:

1. `dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md` — canonical answer key
2. `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/GT1_ground-truth-assignments.md` — ambiguity list, false-positive traps, scoring guidance for ambiguous cells
3. All 20 files under `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/O1_runs/{VARIANT_NAME}/` — the variant's outputs
4. `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md` — Evaluation Metrics and Scoring sections

Then produce a scored report.

## Per-Run Scoring

For each of the 20 runs, record:

- **Tier 3 selection** — list the personas the variant selected; compare to ground truth's "Tier 3 at {effort} effort" entry. Mark Correct / False Positive / False Negative / Ambiguous (per GT1 ambiguous-case guidance).
- **Connector/Analogist decision** — compare the variant's swap decision to ground truth. Mark Correct / Incorrect / Ambiguous.
- **Effort threshold application** — did the variant correctly apply the strictness delta (strong-only at medium vs. moderate+ at high)? This is especially visible when the same topic flips selections between effort levels.
- **Rationale quality** — is the variant's rationale topic-specific (quotes/paraphrases REQUEST content) or generic template language? Score Specific / Mixed / Generic.
- **Volume accuracy** — did the variant assign correct volume ranges per persona per effort level? (Use the Effort Level Mapping in the persona selection guide.)
- **PLAN.md format compliance** — does the output structurally match the template in methodology.md's Phase 4? Flag missing tables or sections.
- **Overall run grade** — Correct / Partially Correct (1 error) / Incorrect (2+ errors) per methodology.md's Scoring section.

## Aggregate Metrics

Compute for this variant:

- Tier 3 selection accuracy (% of 20 runs correct, with ambiguous runs handled per GT1 guidance)
- Connector/Analogist accuracy (% correct)
- False positive rate (spurious Tier 3 selections / total possible false positives)
- False negative rate (missed expected selections / total expected selections)
- Threshold sensitivity (% of topics where medium vs. high selection correctly differs, for topics where ground truth predicts a difference)
- Rationale quality distribution (% Specific / Mixed / Generic)
- Volume accuracy (% of persona-volume assignments correct)
- PLAN.md format compliance rate

## Error Pattern Analysis

Document:

- **Systematic false positives** — any Tier 3 persona the variant over-selects? On which topic types?
- **Systematic false negatives** — any trigger the variant misses? Why is it being missed (missing keyword? weak rationale requirement? effort-threshold collapse?)?
- **False-positive trap behavior** — did the variant fall for the career-change → Lawyer trap, or the non-technical → Technical Expert trap? Log trap results separately.
- **Connector/Analogist failure modes** — over-swap or under-swap? On which topic characteristics?
- **Rationale failure modes** — generic-language tell-tales, template regurgitation, missing topic grounding.

## Output

Save your output to: `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/O1_orchestrator-prompt-variant-testing_{VARIANT_NAME}.md`

Use this structure:

```markdown
# O1 Variant Scoring: {VARIANT_NAME}

**Runs scored:** 20 (10 topics × 2 effort levels)
**Ground truth source:** ground-truth/expected-assignments.md

## Aggregate Metrics
{table of metrics above}

## Per-Run Score Table
{one row per run with columns: topic, effort, tier-3-correct, connector-correct, threshold-correct, rationale-grade, volume-correct, format-compliant, overall-grade}

## Error Pattern Analysis
{systematic false positives, false negatives, trap behavior, connector failures, rationale failures}

## Variant Strengths
{what the variant got right, especially difficult cases}

## Variant Weaknesses for PR1 to Address
{prioritized list of error patterns PR1 should fix, with proposed refinement directions}

## Ambiguous-Case Log
{list runs where ground truth flagged ambiguity; how this variant handled each}
```
````

### Batching Strategy

1. **Prompt authoring (sequential, human-led or single subagent):** Author O-V1, O-V2, O-V3 prompt files.
2. **Generation (parallel in batches of 5):**
   - Total 60 generation subagents (3 variants × 10 topics × 2 efforts)
   - Run as 12 batches of 5 (subject to the 5-concurrent limit)
   - Can be organized by-variant (20 runs for O-V1, then O-V2, then O-V3) or interleaved; by-variant is cleaner for debugging
3. **Scoring (3 parallel scoring subagents, one per variant)** — after all generation runs for a variant complete.
4. **Cross-variant synthesis (1 orchestrator pass)** — after all three scoring subagents return.

### Cross-Variant Synthesis

After the three scoring reports return, produce a compiled findings document at:
`dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/O1_orchestrator-prompt-variant-testing.md`

The compiled document should contain:

1. **Head-to-head metrics table** — all 3 variants side-by-side on every aggregate metric.
2. **Per-topic-effort heatmap** — which cells each variant got right/wrong; visualizes whether variants have systematically different strengths (e.g., O-V3 might excel on effort threshold while O-V1 is better on rationale quality).
3. **Winning variant recommendation** — the variant PR1 should iterate from, with rationale. Specify whether the winner is dominant across all metrics or only on a subset (in which case PR1 may need to borrow structural elements from the others).
4. **Consolidated error patterns** — patterns shared across variants (→ likely guide/trigger issues) vs. variant-specific patterns (→ prompt issues).
5. **Refinement seeds for PR1** — prioritized list of prompt-level changes that would fix the highest-impact errors.
6. **Open questions bubbling up to guide-level** — any errors that trace to the selection guide itself being ambiguous (these are candidates to resolve in the guide rather than the prompt; see `discussion-questions.md` Q10).

### Expected Output

- **Prompt artifacts:** `findings/O1_prompts/O-V1_reference-only.md`, `findings/O1_prompts/O-V2_embedded-triggers.md`, `findings/O1_prompts/O-V3_structured-checklist.md`
- **Raw runs:** `findings/O1_runs/{variant}/{topic}_{effort}.md` (60 files total)
- **Per-variant scoring reports:**
  - `findings/O1_orchestrator-prompt-variant-testing_reference-only.md`
  - `findings/O1_orchestrator-prompt-variant-testing_embedded-triggers.md`
  - `findings/O1_orchestrator-prompt-variant-testing_structured-checklist.md`
- **Compiled cross-variant findings:** `findings/O1_orchestrator-prompt-variant-testing.md`

---

## Dependency Notes

- **Depends on:** GT1 complete and ground truth marked canonical (or at least provisional with scoring guidance for ambiguous cells). O1 can start on provisional ground truth but its findings remain provisional until ground truth is canonical.
- **Blocks:** PR1 (needs winning variant and error patterns); PI1 (needs final refined prompt from PR1).
- **Data generation:** None required.
- **Parallelism:** O1 runs independently of Phase 2C investigation tasks. Its outputs do not feed Phase 2C.

## Priority

**High** — The core empirical result of this investigation. All Phase 3 and Phase 4 work depends on O1 being complete and its winning variant identified.

# Plan: Scaffold Investigation Files for Phase 2B Orchestrator Selection

## Context

`dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md` describes a 4-phase investigation to validate that orchestrator prompt instructions reliably produce correct Phase 2B persona roster decisions across 10 test topics. The methodology is complete as a high-level plan, but it has no companion `tasks/` or `findings/` scaffolding yet — the directory currently contains only `methodology.md`.

The prior investigation at `dev/2026-02-21_symphony-question-generation_part2/` is the canonical template for how research investigations in this repo are structured:
- `methodology.md` — top-level investigation plan
- `discussion-questions.md` + `discussion-questions-responses.md` — open questions resolved up-front
- `phase2-prompt-concerns.md` — supporting concerns/design doc (optional, topic-dependent)
- `tasks/` — one task file per numbered investigation (R1, R2… V1, A1, C1, E1, P1, DG1…), each a fully self-contained spec: header, background, research questions, investigation task (execution model, inputs, subagent design, self-contained subagent prompt, batching strategy, orchestrator synthesis, expected output), dependency notes, priority
- `findings/` — one compiled findings doc per task, plus per-subagent sub-findings files named `{TASK}_{subject}_{variant}.md` when the task fans out across multiple subagents (R5 split 4 ways by persona, R6 split 5 ways, R8 split 10 ways)

This plan specifies the scaffolding to create for the Phase 2B orchestrator-selection investigation, mirroring that template.

## Outputs to Create

All new files live under `dev/2026-03-01_symphony-phase2B-orchestrator-selection/`.

### Top-level supporting docs

| File | Purpose |
|---|---|
| `discussion-questions.md` | Open questions to resolve before execution — e.g., whether ground truth should be human-authored or Opus-authored (with human review), whether ambiguous topics count against accuracy scores or are excluded, whether O-V1/V2/V3 should be re-run after any persona-selection-guide edits, whether refinement continues if Connector/Analogist hits 90% but Tier 3 stalls below 80%. Mirrors example's `discussion-questions.md` format (numbered list grouped by theme). |
| `discussion-questions-responses.md` | User's decisions on the above, captured verbatim (mirrors the example). Created after a review pass. |
| `ground-truth/expected-assignments.md` | The Phase 1 deliverable. Created during GT1 execution, not at scaffolding time — but the directory is established now so the task file has a stable output path. |

No equivalent of `phase2-prompt-concerns.md` is needed for this investigation — its analog is the methodology's Expected Trigger Mapping table, which is already embedded in `methodology.md`.

### Task files (`tasks/`)

Each task file follows the template from `tasks/R6_tier3-volume-quality.md`: Date, Parent, Inputs, Background (Context, What We Know, Research Questions), Investigation Task (Key question, RQs addressed, Execution model, Test data, Subagent design, Self-contained subagent prompt in a ```` ```` block, Batching strategy, Orchestrator synthesis, Expected output), Dependency Notes, Priority.

| File | Maps to methodology phase | Execution model | Findings outputs |
|---|---|---|---|
| `tasks/GT1_ground-truth-assignments.md` | Phase 1: Ground Truth | 1 Opus subagent reading `persona-selection-guide_Phase2B.md` + R5/R6/R7 findings + all 10 REQUESTs; produces expected Tier 3 selections + Connector/Analogist decision + rationale + confidence + ambiguous-case flags for each topic at medium and high effort, using the "Ground Truth Structure" template from methodology.md. Human review pass follows. | `findings/GT1_ground-truth-assignments.md` (analysis of how ground truth was derived, confidence distribution, ambiguous cases) + `ground-truth/expected-assignments.md` (the canonical reference used by downstream phases) |
| `tasks/O1_orchestrator-prompt-variant-testing.md` | Phase 2: Prompt Testing | 3 parallel variant tracks (O-V1 reference-only, O-V2 embedded triggers, O-V3 structured checklist). Each track runs the target orchestrator prompt against all 10 topics × 2 effort levels = 20 runs per variant, 60 runs total. Each run produces a PLAN.md roster section. A per-variant scoring subagent compares all 20 outputs to ground truth and computes the evaluation metrics from methodology.md (Tier 3 selection accuracy, Connector/Analogist accuracy, false positive/negative rates, threshold sensitivity, rationale quality, volume accuracy). Orchestrator synthesis compiles cross-variant comparison. Batching: 3 variant tracks in parallel; within each variant, 20 runs batched as 5-concurrent subagents (4 batches). | `findings/O1_orchestrator-prompt-variant-testing_reference-only.md`, `findings/O1_orchestrator-prompt-variant-testing_embedded-triggers.md`, `findings/O1_orchestrator-prompt-variant-testing_structured-checklist.md` (per-variant scoring reports), plus compiled `findings/O1_orchestrator-prompt-variant-testing.md` (cross-variant comparison, winning variant recommendation, error-pattern analysis to seed PR1). Raw PLAN.md outputs saved under `findings/O1_runs/{variant}/{topic}_{effort}.md` for auditability. |
| `tasks/PR1_prompt-refinement.md` | Phase 3: Prompt Refinement | Iterative. Starts from winning variant and O1 error-pattern analysis. Each iteration: (1) propose targeted refinements (strengthen/weaken trigger language, add anti-pattern examples, clarify effort thresholds), (2) re-run all 20 runs (10 × 2), (3) score against ground truth, (4) decide continue/stop based on accuracy thresholds (Tier 3 ≥ 80%, Connector/Analogist ≥ 90%, no systematic FP/FN patterns). Each iteration is a named subagent pass. | `findings/PR1_prompt-refinement.md` (iteration log, final accuracy benchmarks, final prompt text) + per-iteration sub-findings `findings/PR1_prompt-refinement_iter{N}.md` as iterations accumulate. Refined prompt saved to `findings/PR1_refined-orchestrator-prompt.md`. |
| `tasks/PI1_plan-md-integration.md` | Phase 4: PLAN.md Integration | Validation-only, no new data generation. Takes the refined prompt from PR1, produces the canonical PLAN.md roster-section format, and verifies consistency by re-generating PLAN.md for all 20 runs and confirming structural consistency (all required tables present, all required rationale fields populated, format-checker passes). | `findings/PI1_plan-md-integration.md` (validated format + consistency metrics) + `findings/PI1_plan-md-template.md` (the canonical roster-section template ready to drop into SKILL.md or a referenced prompt file). |

### Sequencing / dependencies

Mirrors `methodology.md` Sequencing section:
```
GT1 → O1 → PR1 → PI1
```
- GT1 must complete before O1 (O1 scoring requires ground truth).
- GT1 should be completed early to unblock the Phase 2C synthesis investigation's A1 data assembly step (per methodology.md's Parallelism note).
- PR1 depends on O1's winning variant + error patterns.
- PI1 depends on PR1's final refined prompt.

## Critical Files to Reference

When authoring the task files, the self-contained subagent prompts need to reference these existing files by path:

- `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md` — parent methodology, inputs for every task
- `idea-symphony/references/persona-selection-guide_Phase2B.md` — the selection rubric under test; required input for GT1, O-V1, and O-V2/V3 (as detail reference)
- `dev/2026-02-21_symphony-question-generation_part2/findings/R5_tier2-volume-quality.md`, `R6_tier3-volume-quality.md`, `R7_connector-volume-quality.md` — prior findings that ground truth must respect
- `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` — the 10 test topics (confirmed to exist per R6 task inputs)
- `dev/2026-02-21_symphony-question-generation_part2/tasks/R6_tier3-volume-quality.md` — structural template to copy; especially the subagent-prompt block format and the "Execution model / Subagent design / Batching strategy / Expected output" shape
- `dev/2026-02-21_symphony-question-generation_part2/tasks/R8_tier1-volume-quality-validation.md` — secondary template for tasks that fan out to many sub-findings files (R8 split 10 ways; PI1's 20-run consistency check is structurally similar)
- `dev/2026-02-21_symphony-question-generation_part2/discussion-questions.md` — format template for our `discussion-questions.md`

No code or skill files need to be modified. This plan produces research scaffolding only.

## Authoring Guidance (per task file)

To keep the scaffolding consistent with the example investigation, each task file should:

1. **Start with the exact header block** used in the R6 task: `# Phase 2B Orchestrator Selection — Targeted Investigation`, `**Date:** 2026-03-01` (or creation date), `**Parent:** dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md`, `**Inputs:** …` (enumerated list with paths).
2. **Include a full "What We Know" table** summarizing the relevant prior findings (from methodology.md's Expected Trigger Mapping, plus R5/R6/R7 conclusions where relevant).
3. **List explicit research-question IDs** matching methodology.md's OQ1–OQ5 (task files cite which OQs they address).
4. **Embed a complete, copy-pasteable subagent prompt** inside a ```` ```` fence — the subagent must be able to execute from that prompt alone without reading the methodology. This is the strongest pattern in the example investigation (R6 lines 118–230 is the exemplar).
5. **Specify exact output paths** under `findings/` so downstream tasks can reference them deterministically.
6. **Close with Dependency Notes and Priority** — both are load-bearing for scheduling against the parallel Phase 2C investigation.

## Verification

Scaffolding is complete when:

1. `ls dev/2026-03-01_symphony-phase2B-orchestrator-selection/` shows: `methodology.md`, `discussion-questions.md`, `tasks/`, `findings/` (empty), `ground-truth/` (empty).
2. `ls dev/2026-03-01_symphony-phase2B-orchestrator-selection/tasks/` shows 4 files: `GT1_ground-truth-assignments.md`, `O1_orchestrator-prompt-variant-testing.md`, `PR1_prompt-refinement.md`, `PI1_plan-md-integration.md`.
3. Each task file passes a structural check against the R6 template: has the standard header, Background/Investigation Task/Dependency Notes/Priority sections, a fenced subagent prompt block, and explicit input/output paths.
4. A "cold-read" test: hand the `GT1_ground-truth-assignments.md` task file to a fresh subagent with no other context; it should be able to execute the investigation end-to-end from the task file's subagent prompt alone, producing output at the declared path. Repeat for each task file.
5. `methodology.md`'s "Expected Outputs / Per-Phase Deliverables" table should be reconcilable against the task/findings paths with no gaps.

No code or tests to run; verification is structural consistency with the example investigation and self-contained executability of each task file.
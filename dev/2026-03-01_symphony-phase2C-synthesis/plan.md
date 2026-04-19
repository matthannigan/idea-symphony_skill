# Plan: Scaffold Investigation Files for Phase 2C Synthesis

## Context

`dev/2026-03-01_symphony-phase2C-synthesis/methodology.md` defines a 4-phase investigation that (a) assembles 30 test files representing what the Phase 2C synthesis step receives, (b) establishes ideal-synthesis baselines for each, (c) tests synthesis prompt variants against those baselines, and (d) decides whether brainstorming persona selection should consolidate into the synthesis subagent or remain separate. The directory currently contains only `methodology.md` — no companion `tasks/`, `findings/`, `test-data/`, `baselines/`, or supporting docs exist yet.

The sibling investigation at `dev/2026-03-01_symphony-phase2B-orchestrator-selection/` is the canonical template for how research investigations in this repo are structured (itself modeled on `dev/2026-02-21_symphony-question-generation_part2/`):

- `methodology.md` — top-level investigation plan (already present for 2C)
- `plan.md` — scaffolding spec describing which files to create and what each should contain (this file's analog for 2B)
- `discussion-questions.md` — open questions to resolve up-front, grouped by theme
- `discussion-questions-responses.md` — user's decisions, captured verbatim after review
- `tasks/` — one self-contained task file per phase-scoped investigation (GT1, O1, PR1, PI1 in 2B), each with standard header, background, research questions, an embedded copy-pasteable subagent prompt in a fence, expected output paths, dependency notes, priority
- `findings/` — one compiled findings doc per task plus per-subagent sub-findings when the task fans out
- Task-specific output directories (e.g., `ground-truth/` in 2B)

This plan specifies the scaffolding to create for the Phase 2C synthesis investigation, mirroring that template.

## Outputs to Create

All new files live under `dev/2026-03-01_symphony-phase2C-synthesis/`.

### Top-level supporting docs

| File | Purpose |
|---|---|
| `discussion-questions.md` | Open questions blocking execution — e.g., whether baselines are per-file (30) or per-topic (10) per methodology's Phase 2 feasibility note; whether Phase 3 tests all 30 or a 9-file subset; how to score borderline consolidation results (5–10% band); whether C1 (clustering vs. flat) should fold into B1 as proposed; whether S-V1/V2/V3 are authored in this investigation or elsewhere; sample count per variant (1× vs. 3× for stability). Mirrors the 2B `discussion-questions.md` format (numbered list grouped by theme). |
| `discussion-questions-responses.md` | User's decisions on the above, captured verbatim. Created after a review pass. |
| `test-data/` | Directory created at scaffolding time so Phase 1 task file has a stable output path. Populated during TDA1 execution with 30 assembled files `[topic-slug]_[effort].md`. |
| `data-prep/` | Directory for Phase 1 planning artifacts: `topic-persona-mapping.md`, `assembly-plan.md`, `assembly-analytics.md`. Established now, populated during TDA1. |
| `baselines/` | Directory for Phase 2 deliverables: `[topic]_[effort]_clusters.md`, `_convergence.md`, `_target.md`, `_append-target.md` (up to 30×4 files, or 10×4 if per-topic baselines are chosen). Established now. |
| `findings/` | Compiled task findings. Empty at scaffolding time. |

No equivalent of `phase2-prompt-concerns.md` is needed — its analog for this investigation is the methodology's Phase 3 metrics table and the Phase 2B Synthesize/Append split documented in `persona-selection-guide_Phase2B.md`.

### Task files (`tasks/`)

Each task file follows the 2B `tasks/GT1_ground-truth-assignments.md` template: Date, Parent, Inputs, Background (Context, What We Know, Research Questions), Investigation Task (Key question, RQs addressed, Execution model, Test data, Subagent design, Self-contained subagent prompt in a fenced block, Batching strategy, Orchestrator synthesis, Expected output), Dependency Notes, Priority.

| File | Maps to methodology phase | Execution model | Findings outputs |
|---|---|---|---|
| `tasks/TDA1_test-data-assembly.md` | Phase 1: Test Data Assembly (internal steps A1–A4) | 1 Opus subagent (planning + execution) + optional 2nd subagent for analytics. Reads `persona-selection-guide_Phase2B.md`, the finalized effort-level mapping, the tier/volume decisions from R5/R6/R7, and enumerates `test-runs/symphony-phase2-questions-persona-eval/` to identify source files per persona per topic per volume category. Produces the 30 assembled test files with preserved persona attribution headers, applying the volume-slicing rules (truncate to ceiling or use full file with noted shortfall). GT1's ground truth from the 2B investigation is read to determine Tier 3 inclusions and Connector/Analogist swaps per topic-effort. | `findings/TDA1_test-data-assembly.md` (assembly summary + shortfall log + analytics) + `data-prep/topic-persona-mapping.md` + `data-prep/assembly-plan.md` + `data-prep/assembly-analytics.md` + 30 files under `test-data/[topic-slug]_[effort].md` |
| `tasks/BL1_baseline-establishment.md` | Phase 2: Baseline Establishment (internal steps B1–B4) | Fan-out across topics: 1 Opus subagent per topic (10 subagents), each producing cluster + convergence + target + append-target analysis for all three effort levels of its topic (per-topic approach from methodology's feasibility note). An orchestrator synthesis subagent compiles cross-topic patterns. Default to the per-topic approach; per-file approach (30 subagents) is a discussion-question escalation option. Each per-topic subagent reads the 3 test-data files for its topic, the append rules from D1 (from Phase 2B), and produces the four baseline artifacts per effort level. Folds the Phase 2B C1 (clustering vs. flat) question into B1 cluster analysis as proposed in methodology. | `findings/BL1_baseline-establishment.md` (cross-topic synthesis: cluster-count distributions, convergence density patterns, dimension-balance benchmarks, C1 recommendation) + per-topic sub-findings `findings/BL1_baseline-establishment_[topic].md` (10 files) + `baselines/[topic]_[effort]_clusters.md`, `_convergence.md`, `_target.md`, `_append-target.md` (120 files if per-file; 40 if per-topic with effort-level sections) |
| `tasks/SP1_synthesis-prompt-testing.md` | Phase 3: Synthesis Prompt Testing (internal steps S-V1, S-V2, S-V3 + refinement) | 3 parallel variant tracks. Step 1: author S-V1 (current prompt + Append instructions), S-V2 (restructured Synthesize/Append split), S-V3 (baseline-informed with cluster guidance). Step 2: run each variant on the representative 9-file subset (3 topics × 3 effort levels) — 27 generation runs total, batched 3 concurrent per variant. Step 3: per-variant scoring subagent computes the 8 metrics from methodology (question preservation, compaction, cluster alignment, persona representation, append fidelity, dimension balance, convergence utilization, unique-question survival) against the BL1 baselines. Step 4: cross-variant synthesis picks the winner. Step 5: refinement loop — up to 3 iterations on the winner, each iteration re-scoring on the full 30-file set (or an expanded 18-file subset) until quality is consistent across topics and effort levels. | `findings/SP1_synthesis-prompt-testing_current-plus-append.md` (S-V1 scoring) + `findings/SP1_synthesis-prompt-testing_restructured-split.md` (S-V2 scoring) + `findings/SP1_synthesis-prompt-testing_baseline-informed.md` (S-V3 scoring) + compiled `findings/SP1_synthesis-prompt-testing.md` (cross-variant comparison + winner + error patterns) + iteration logs `findings/SP1_synthesis-refinement_iter{N}.md` + final prompt `findings/SP1_refined-synthesis-prompt.md`. Raw synthesis outputs preserved under `findings/SP1_runs/{variant}/[topic]_[effort].md` for auditability. |
| `tasks/PC1_persona-selection-consolidation.md` | Phase 4: Persona Selection Consolidation Test | 2 condition tracks in parallel on the same 9-file subset. Condition A (separate): SP1's final synthesis prompt produces questions only, then a separate subagent using `persona-selection-guide_Phase2C.md` produces persona recommendations. Condition B (consolidated): single subagent produces both outputs in one pass, receiving synthesis prompt + persona selection guidance. A scoring subagent compares synthesis quality (same 8 metrics from SP1) A vs. B, and persona-recommendation quality A vs. B, and applies the methodology's decision criteria (comparable within ~5% → consolidate; degrades >10% → keep separate; borderline 5–10% → expand to more topics). | `findings/PC1_persona-selection-consolidation.md` (A-vs-B comparison + decision + integration implications for SKILL.md) + raw outputs under `findings/PC1_runs/condition-a/` and `findings/PC1_runs/condition-b/` |

### Sequencing / dependencies

Mirrors `methodology.md` Sequencing section:
```
TDA1 → BL1 → SP1 → PC1
```

- TDA1 depends on the Phase 2B investigation's GT1 output (`dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md`) for Tier 3 inclusions and Connector/Analogist swaps per topic. This is an explicit cross-investigation dependency per methodology.md's Parallelism note — TDA1 cannot start its full 30-file assembly until GT1 is at least provisionally complete.
- BL1 depends on TDA1's 30 assembled files.
- SP1 depends on BL1's baselines (S-V3 in particular encodes baseline cluster guidance).
- PC1 depends on SP1's final refined synthesis prompt.
- SP1's refinement loop (Step 5) is the highest-variance task — iteration budget and stop criteria must be pinned in `discussion-questions.md` before SP1 starts, or the task risks open-ended execution.

### Cross-investigation coordination

The methodology explicitly folds two Phase 2B "remaining items" into this investigation:

- **C1 (Clustering vs. flat):** folded into BL1 step B1 as cluster-structure analysis. Mark C1 as addressed here in the cross-investigation index.
- **S1 (Synthesis gap analysis):** subsumed by SP1's step 1 (authoring the variants is itself a structured audit of the current prompt's gaps). The S-V1 track preserves the current prompt's behavior for before/after comparison.
- **P1 (Provocateur integration):** remains independent; no coordination required.

## Critical Files to Reference

When authoring the task files, the self-contained subagent prompts need to reference these existing files by path:

- `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md` — parent methodology, inputs for every task
- `dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md` — required by TDA1 to determine Tier 3 / Connector-Analogist composition per topic-effort
- `idea-symphony/guidance/phase2A_question-gen-personas.md` — tier/volume/Synthesize-Append mapping; required by TDA1 and BL1
- `idea-symphony/guidance/phase2D_brainstorming-personas.md` — brainstorming persona selection rubric; required by PC1
- `idea-symphony/prompts/phase2-question-synthesis.md` — the current synthesis prompt; base for S-V1
- `test-runs/symphony-phase2-questions-persona-eval/` — source directory for all persona-generated questions at `_q05-10/`, `_q10-15/`, `_q15-20/` volume tiers
- `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` — the 10 topic descriptions
- `dev/2026-02-21_symphony-question-generation_part2/findings/R5_tier2-volume-quality.md`, `R6_tier3-volume-quality.md`, `R7_connector-volume-quality.md` — prior volume/tier decisions TDA1 must respect
- `dev/2026-02-21_symphony-question-generation_part2/findings/V1_*`, `D1_*`, `D2_*` — V1 volume ranges, D1 Append rules, D2 dimension coverage; cited in methodology's "Depends on" header
- `dev/2026-03-01_symphony-phase2B-orchestrator-selection/tasks/GT1_ground-truth-assignments.md` — structural template to copy (especially the subagent-prompt block and Execution model / Subagent design / Expected output shape)
- `dev/2026-03-01_symphony-phase2B-orchestrator-selection/tasks/O1_orchestrator-prompt-variant-testing.md` — secondary template for multi-variant tasks (SP1 mirrors its 3-variant parallel-track structure)
- `dev/2026-03-01_symphony-phase2B-orchestrator-selection/tasks/PR1_prompt-refinement.md` — template for SP1's iteration loop
- `dev/2026-03-01_symphony-phase2B-orchestrator-selection/discussion-questions.md` — format template for our `discussion-questions.md`
- `dev/2026-03-01_symphony-phase2B-orchestrator-selection/plan.md` — structural template for this very plan file

No code or skill files need to be modified. This plan produces research scaffolding only.

## Authoring Guidance (per task file)

To keep the scaffolding consistent with the 2B investigation, each task file should:

1. **Start with the exact header block** used in 2B's GT1 task: `# Phase 2C Synthesis — [Task Name]`, `**Date:** 2026-03-01`, `**Parent:** dev/2026-03-01_symphony-phase2C-synthesis/methodology.md`, `**Inputs:**` (enumerated list with paths).
2. **Include a full "What We Know" table** summarizing relevant Phase 2B findings (finalized roster, Synthesize/Append split, per-persona volumes, effort-level mappings) — task authors should not expect the subagent to derive these from scratch.
3. **List explicit research-question IDs** matching methodology.md's SQ1–SQ6 (task files cite which SQs they address).
4. **Embed a complete, copy-pasteable subagent prompt** inside a fenced block — the subagent must be able to execute from that prompt alone without reading methodology.md. This is the strongest pattern in the 2B template (GT1 lines 105–176 and O1's variant-prompt fences).
5. **Specify exact output paths** under `findings/`, `test-data/`, `data-prep/`, and `baselines/` so downstream tasks can reference them deterministically.
6. **Close with Dependency Notes and Priority** — both are load-bearing for scheduling, especially for TDA1 (depends on 2B GT1) and SP1 (the longest-running task).
7. **For multi-variant tasks (SP1) and fan-out tasks (BL1):** follow 2B O1's pattern of per-variant/per-unit sub-findings files named `{TASK}_{subject}_{variant}.md` plus a compiled cross-cutting file.

## Verification

Scaffolding is complete when:

1. `ls dev/2026-03-01_symphony-phase2C-synthesis/` shows: `methodology.md`, `plan.md`, `discussion-questions.md`, `tasks/`, `findings/` (empty), `test-data/` (empty), `data-prep/` (empty), `baselines/` (empty).
2. `ls dev/2026-03-01_symphony-phase2C-synthesis/tasks/` shows 4 files: `TDA1_test-data-assembly.md`, `BL1_baseline-establishment.md`, `SP1_synthesis-prompt-testing.md`, `PC1_persona-selection-consolidation.md`.
3. Each task file passes a structural check against the 2B GT1/O1/PR1/PI1 templates: standard header, Background/Investigation Task/Dependency Notes/Priority sections, a fenced self-contained subagent prompt block, and explicit input/output paths.
4. A "cold-read" test: hand the `TDA1_test-data-assembly.md` task file to a fresh subagent with no other context; it should be able to execute end-to-end from the task file's subagent prompt alone, producing outputs at the declared paths. Repeat for BL1, SP1, PC1.
5. `methodology.md`'s "Expected Outputs / Per-Phase Deliverables" table is reconcilable against the task/findings paths with no gaps (30 assembled files, 30 baselines or per-topic equivalent, evaluated variants + final refined prompt, consolidation decision, integration spec).
6. Every cross-investigation dependency (TDA1 → 2B GT1, folded C1/S1 items) is explicitly called out in the relevant task file's Dependency Notes section.

No code or tests to run; verification is structural consistency with the 2B template and self-contained executability of each task file.
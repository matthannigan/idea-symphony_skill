# Plan: Scaffold Investigation Files for Phase 4 Research

## Context

[`methodology.md`](methodology.md) defines a 4-phase investigation that (a) selects 60 cluster-level samples from existing test-runs, (b) builds per-cluster through-line ledgers as ground truth, (c) runs four scoring/audit tracks (FA1, LB1, PP1, RG1), and (d) refines the three Phase 4 prompts in `proposed-prompts/` until faithfulness and loss-budget targets are met.

The sibling investigation at [`dev/2026-03-01_symphony-phase2C-synthesis/`](../2026-03-01_symphony-phase2C-synthesis) is the canonical template for how research investigations in this repo are structured (itself modeled on `dev/2026-02-21_symphony-question-generation_part2/`):

- `methodology.md` — top-level investigation plan (already present)
- `plan.md` — scaffolding spec describing which files to create and what each should contain (this file)
- `discussion-questions.md` — open blockers grouped by theme
- `discussion-questions-responses.md` — user's decisions, captured verbatim after review
- `tasks/` — one self-contained task file per phase-scoped investigation, each with header / background / RQs / embedded copy-pasteable subagent prompt / expected output paths / dependency notes / priority
- `findings/` — one compiled findings doc per task plus per-subagent sub-findings when the task fans out
- Task-specific output directories (`baselines/`, `proposed-prompts/`, `data-prep/`, `test-data/`)

This plan specifies the scaffolding being created for the Phase 4 investigation, mirroring that template.

---

## Outputs to Create

All new files live under `dev/2026-05-03_symphony-phase4/`.

### Top-level supporting docs

| File | Purpose |
|---|---|
| `discussion-questions.md` | Open blockers: cluster-selection rule (signal-density vs. random); whether to expand beyond 60 samples (e.g., add a third med or high cluster per topic) if signal is unclear; baseline construction strategy (hybrid seed-from-`attributed` vs. from-scratch); FA1 scoring rubric (strict-vs-weighted on dropped persona names, with med strict / high weighted as default); LB1 through-line counting unit; PP1 contract scope; RG1 diff granularity; RP1 iteration budget and stop criteria; deferred MA1. Mirrors the 2C `discussion-questions.md` numbered-by-theme format. |
| `discussion-questions-responses.md` | User's decisions on the above, captured verbatim. Created after a review pass. |
| `test-data/` | Directory created at scaffolding time so SS1's task file has a stable output path. Populated during SS1 execution with `sample-manifest.md` (full file-path inventory across the 60 samples). |
| `data-prep/` | Directory for SS1 planning artifacts: `sample-selection.md`, `manifest-analytics.md`. Established now, populated during SS1. |
| `baselines/` | Directory for BL1 deliverables: `{topic}_{effort}_{NN}_{cluster-slug}_through-lines.md` (60 files at completion). Established now. |
| `findings/` | Compiled task findings + per-sample sub-findings. Empty at scaffolding time. |
| `proposed-prompts/` | Directory for RP1 outputs: candidate revised Phase 4 prompts (3 files at completion). Established now. |

### Task files (`tasks/`)

Each task file follows the 2C `tasks/BL1_baseline-establishment.md` template: Date, Parent, Inputs, Background (Context, What We Know, Research Questions), Investigation Task (Key question, RQs addressed, Execution model, Test data, Subagent design, Self-contained subagent prompt in a fenced block, Batching strategy, Orchestrator synthesis, Expected output), Dependency Notes, Priority.

| File | Maps to | Execution model | Findings outputs |
|---|---|---|---|
| `tasks/SS1_sample-selection.md` | Phase 1: Sample Selection (TDA-equivalent) | 1 Opus subagent reads the four `effort-comparison.md` memos + persona-roster docs + a high-level scan of every (topic, effort) cell's cluster set (`questions/by-topic/*.md`). For each topic: picks 1 high-signal cluster at `min` + 1 at `low` + 2 at `med` + 2 at `high` (60 samples total). Selection criterion: cluster has the densest persona tension, broadest convergence, or richest unique insights. The two `med` (and two `high`) clusters per topic should differ in cluster-shape (e.g., one strategy-heavy, one tactical) to broaden within-effort signal. Produces the frozen manifest. | `findings/SS1_sample-selection.md` (selection rationale summary) + `data-prep/sample-selection.md` + `data-prep/sample-manifest.md` + `data-prep/manifest-analytics.md` |
| `tasks/BL1_baselines.md` | Phase 2: Baseline / Ground-Truth Establishment | Fan-out: 60 Opus subagents, one per sampled cluster. Each reads `responses/{NN}_{cluster-slug}/*.md` for its single cluster (1 file at min, 2 at low, 4 at med, 7 at high), seeds from existing `synthesis/attributed/{NN}_{cluster-slug}.md` if present (med + high samples only), and produces the through-line ledger + convergence map (low/med/high only) + faithfulness target + persona-distinctiveness map (med + high only). Cross-sample synthesis subagent compiles patterns. Batch 6 concurrent subagents per wave (≈ 10 waves). | `findings/BL1_baselines.md` (cross-sample synthesis) + per-sample sub-findings `findings/BL1_baselines_{topic}_{effort}_{NN}.md` (60 files) + `baselines/{topic}_{effort}_{NN}_{cluster-slug}_through-lines.md` (60 files) |
| `tasks/FA1_faithfulness-audit.md` | F4-FA1 (memo §4) | Fan-out: 40 Opus subagents (one per `med` and `high` sample, all of which use `phase4_full-synthesis.md`). Each scores `_synthesis.md` + `_summary.md` + `attributed/{cluster}.md` against the through-line ledger. Three scoring axes per sample: (a) dropped persona names (strict on med — 4 personas, low ambiguity; weighted on high — 7 personas, more aggregation pressure), (b) hallucinated quotes (strict zero-tolerance), (c) traceable convergence counts. Cross-sample synthesis explicitly compares med vs. high. **Also emits per-cluster aggregable Phase-5 signals** (Central Tension, confidence tags, Neither-lens gap candidates, conspicuous-absence candidates) to satisfy Phase 5 E4. | `findings/FA1_faithfulness-audit.md` (cross-sample synthesis + med-vs-high breakdown + winner/loser samples + recommended prompt-revision targets) + 40 per-sample sub-findings + `findings/FA1_scoring-matrix.md` + `findings/FA1_phase5-signal-log.md` |
| `tasks/LB1_loss-budget.md` | F4-LB1 (memo §4) | Fan-out: 20 Opus subagents (10 `min`-effort samples + 10 `low`-effort samples). Each scores `{cluster}_summary.md` against the through-line ledger; quantifies through-line survival fraction (verbatim + paraphrased = survival; absorbed-into-general = separate "absorbed" category). For low samples, also scores tension-preservation (DA + Pragmatist contrast). For min samples, scores conspicuous-absences detection. | `findings/LB1_loss-budget.md` (split sub-section per prompt — min vs. low) + 20 per-sample sub-findings + `findings/LB1_scoring-matrix.md` |
| `tasks/PP1_three-prompt-parity.md` | F4-PP1 (memo §4) | **No live generation runs.** 1 Opus subagent reads the three current Phase 4 prompts + `templates/synthesis-*.md` + a sample of actual outputs across all 60 samples to verify what the prompts *really* produce. Documents the contract surface: output schema (frontmatter + section headings), attribution rules, central-tension demand, confidence tags, blind-spot detection, conspicuous-absences logic. Identifies legitimate effort-driven divergences vs. drift. | `findings/PP1_three-prompt-parity.md` (contract-diff document) |
| `tasks/RG1_cross-effort-regression.md` | F4-RG1 (memo §4) | Fan-out: 10 Opus subagents (one per topic). For each topic, the subagent reads its 6 sampled clusters (1 min + 1 low + 2 med + 2 high) + the through-line ledgers + Phase 4 outputs at all sampled efforts, and characterizes variance: intentional (effort branching) vs. drift (format/quality varies inappropriately). Diff granularity: through-line presence (binary primary metric) + full-text similarity (continuous backup). Within-effort comparison (med-A vs. med-B; high-A vs. high-B) tests prompt-stability across cluster shape. Doubles as the regression harness for RP1. | `findings/RG1_cross-effort-regression.md` + 10 per-topic sub-findings + `findings/RG1_variance-classification.md` |
| `tasks/RP1_refinement.md` | Phase 4 of investigation | Take FA1/LB1/PP1/RG1 findings; produce revised prompts in `proposed-prompts/`. Re-run scoring (FA1/LB1/RG1 protocols on the 60 samples) against the revised prompts. Iterate within pinned budget (3 iterations). Variant strategy: single-track refine for `phase4_full-synthesis.md` (mature prompt), 2 variants for the summary-only prompts. Stop criteria: FA1 ≥ 90% on persona-name preservation, zero hallucinated quotes, LB1 ≥ 80% through-line survival across the 20 min/low samples. | `proposed-prompts/phase4_*.md` (3 files) + `findings/RP1_refinement_iter{N}.md` (per iteration) + `findings/integration-spec.md` |

### Sequencing / dependencies

Mirrors `methodology.md` Sequencing section:

```
SS1 → BL1 → [FA1, LB1, RG1] in parallel → RP1
       ├── PP1 (parallel with BL1 — no baseline dependency)
```

- SS1 depends on nothing; blocks everything.
- BL1 depends on SS1's manifest. Blocks FA1, LB1, RG1.
- PP1 depends on SS1's manifest only — schedule alongside BL1 to keep timeline tight.
- RP1 depends on FA1/LB1/PP1/RG1. RG1 doubles as RP1's regression harness during iteration.
- RP1's iteration budget must be pinned in `discussion-questions.md` before RP1 starts.

### Cross-investigation coordination

The methodology explicitly relates this work to two adjacent investigations:

- **Phase 5 investigation (`2026-04-23`)** — parallel track. FA1's task file builds the per-cluster Phase-5-signal log as a deliverable to satisfy E4. Coordinate via the signal log (`findings/FA1_phase5-signal-log.md`); do not block.
- **F4-MA1 (Model Assignment Review)** — deferred. Flag in `discussion-questions.md` so future work can pick it up cleanly without re-deriving the test-data inventory.

---

## Critical Files to Reference

When authoring the task files, the self-contained subagent prompts need to reference these existing files by path:

- `dev/2026-05-03_symphony-phase4/methodology.md` — parent methodology, inputs for every task
- `dev/2026-04-27_effort-comparison.md` — source memo, §4 in particular
- `idea-symphony/prompts/phase4_full-synthesis.md` — current med/high prompt under test
- `idea-symphony/prompts/phase4_summary-only_low-effort.md` — current low prompt under test
- `idea-symphony/prompts/phase4_summary-only_min-effort.md` — current min prompt under test
- `idea-symphony/templates/synthesis-attributed.md` — template for med/high attributed output
- `idea-symphony/templates/synthesis-merged.md` — template for med/high synthesis output
- `idea-symphony/templates/synthesis-summary.md` — template for universal summary output
- `idea-symphony/SKILL.md` — Phase 4 invocation block
- `idea-symphony/guidance/phase2D_brainstorming-personas.md` — persona roster
- `test-runs/REQUESTS_ALL.md` — topic descriptions
- `test-runs/{topic}/{effort}/responses/{NN}_{cluster-slug}/*.md` — Phase 3 inputs (the source of through-lines)
- `test-runs/{topic}/{effort}/synthesis/{NN}_{cluster-slug}_summary.md` — Phase 4 output (universal)
- `test-runs/{topic}/{effort}/synthesis/{NN}_{cluster-slug}_synthesis.md` — Phase 4 output (med + high)
- `test-runs/{topic}/{effort}/synthesis/attributed/{NN}_{cluster-slug}.md` — Phase 4 output (med + high); BL1 hybrid seed
- `test-runs/{topic}/{effort}/questions/by-topic/{NN}_{cluster-slug}.md` — the questions answered (universal Phase 4 input)
- `test-runs/{topic}/effort-comparison.md` — for the four topics that have one
- `dev/2026-04-23_symphony-phase5-investigation.md` — for FA1's Central Tension / confidence tag / Neither-lens gap criteria
- `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md`, `plan.md`, `tasks/BL1_baseline-establishment.md`, `tasks/SP1_synthesis-prompt-testing.md`, `tasks/TDA1_test-data-assembly.md`, `discussion-questions.md` — structural templates

No code or skill files are modified during scaffolding. This plan produces research scaffolding only.

---

## Authoring Guidance (per task file)

To keep the scaffolding consistent with the 2C investigation, each task file should:

1. **Start with the exact header block** used in 2C task files: `# Phase 4 — [Task Name]`, `**Date:** 2026-05-03`, `**Parent:** dev/2026-05-03_symphony-phase4/methodology.md`, `**Inputs:**` (enumerated list with paths).
2. **Include a "What We Know" table** summarizing relevant prior findings (Phase 2B/2C resolved inputs, current Phase 4 prompt structure, what `synthesis/attributed/` provides as seed material at med + high) — task authors should not expect the subagent to derive these from scratch.
3. **List explicit research-question IDs** matching `methodology.md`'s FQ1–FQ5.
4. **Embed a complete, copy-pasteable subagent prompt** inside a fenced block — the subagent must be able to execute from that prompt alone without reading `methodology.md`. This is the strongest pattern in the 2C template.
5. **Specify exact output paths** under `findings/`, `baselines/`, `proposed-prompts/`, and `data-prep/` so downstream tasks can reference them deterministically. Use the cluster-keyed file naming convention (`{topic}_{effort}_{NN}_{cluster-slug}_*.md`) consistently.
6. **Close with Dependency Notes and Priority** — both are load-bearing for scheduling, especially for SS1 (blocks everything) and BL1 (blocks FA1/LB1/RG1).
7. **For fan-out tasks (BL1, FA1, LB1, RG1):** follow the 2C BL1 pattern of per-sample sub-findings files plus a compiled cross-cutting file. Use 6 concurrent subagents per batch.
8. **For RP1's iteration loop:** mirror 2C SP1's per-iteration findings file pattern (`SP1_synthesis-refinement_iter{N}.md` analog at `RP1_refinement_iter{N}.md`) with explicit stop criteria in the task file's body.

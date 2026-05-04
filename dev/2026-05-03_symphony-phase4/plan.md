# Plan: Scaffold Investigation Files for Phase 4 Research

## Context

[`methodology.md`](methodology.md) defines a 4-phase investigation that (a) selects 60 cluster-level samples from existing test-runs, (b) builds per-cluster through-line ledgers as ground truth, (c) runs four scoring/audit tracks (FA1, LB1, PP1, RG1), and (d) refines the three Phase 4 prompts in `proposed-prompts/` until faithfulness and loss-budget targets are met.

**Update (2026-05-03):** [`dev/2026-05-03_effort-comparison.md`](../2026-05-03_effort-comparison.md) — the 10-topic cross-comparison synthesis — has landed. It surfaces the **two-regime evaluation lens** (§5) and recommends pre-execution revisions to BL1 (§4) and to the FA1/LB1/PP1/RG1/RP1 framing (§5.4). The §6 audit confirms the 20 existing BL1 min/low ledgers stand as authoritative (no re-runs needed). The methodology and all five task files have been updated to incorporate these revisions; this plan reflects the updated state.

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
| `tasks/SS1_sample-selection.md` | Phase 1: Sample Selection (TDA-equivalent) | 1 Opus subagent reads the four `effort-comparison.md` memos that existed at the time (Tier-A) + persona-roster docs + a high-level scan of every (topic, effort) cell's cluster set (`questions/by-topic/*.md`). For each topic: picks 1 high-signal cluster at `min` + 1 at `low` + 2 at `med` + 2 at `high` (60 samples total). Selection criterion: cluster has the densest persona tension, broadest convergence, or richest unique insights. The two `med` (and two `high`) clusters per topic should differ in cluster-shape (e.g., one strategy-heavy, one tactical) to broaden within-effort signal. Produces the frozen manifest. *(Note: per the methodology's mid-investigation asset update, all 10 topics now have an `effort-comparison.md`; SS1's manifest is frozen and remains authoritative — re-running is not required.)* | `findings/SS1_sample-selection.md` (selection rationale summary) + `data-prep/sample-selection.md` + `data-prep/sample-manifest.md` + `data-prep/manifest-analytics.md` |
| `tasks/BL1_baselines.md` | Phase 2: Baseline / Ground-Truth Establishment | Fan-out: 60 Opus subagents (40 forward; 20 min/low already complete and authoritative per the §6 audit), one per sampled cluster. Each reads `responses/{NN}_{cluster-slug}/*.md` (1 file at min, 2 at low, 4 at med, 7 at high) — **builds ledger from `responses/` only per the hard-sequencing revision §4.2; reads `effort-comparison.md` memo only as post-hoc audit in Step 1.5; reads `synthesis/attributed/` only as post-baseline cross-reference in Step 6 (med + high only)**. Records raw counts + per-effort classification (§4.1). Splits persona-distinctiveness into content + framing (§4.3, med + high). Adds categorical-reframe candidate as fifth Phase-5 signal (§4.4, med + high). Uses 4-category neither-lens-gap taxonomy (§4.7, low only — applied retroactively to existing low ledgers in synthesis step). Cross-sample synthesis subagent compiles patterns AND runs the BL1 → SS1 feedback gate (§4.8) AND emits Phase-4-signal propagation evidence (§4.9, optional). Batch 6 concurrent per wave (≈ 7 waves for the remaining 40 med+high). | `findings/BL1_baselines.md` (cross-sample synthesis) + per-sample sub-findings + `baselines/{topic}_{effort}_{NN}_{cluster-slug}_through-lines.md` (60 files: 20 already on disk, 40 forward) |
| `tasks/FA1_faithfulness-audit.md` | F4-FA1 (memo §4) | Fan-out: 40 Opus subagents (one per `med` and `high` sample). Scoring axes: A1 (attributed name preservation), A2 (prose name absence), **A3-content (content survival)**, **A3-framing (framing/lens survival — NEW per §5.4)**, B (hallucinated quotes), C (raw-count traceable convergence), **D (categorical-reframe survival — NEW, gated on BL1 candidate)**, **E (foundational-reversal survival — NEW, high only, gated on BL1 candidate)**. Cross-sample synthesis compares med vs. high and emits per-cluster Phase-5 signals (Central Tension, categorical reframe, confidence tags, Neither-lens gap and conspicuous-absence candidates). | `findings/FA1_faithfulness-audit.md` + 40 per-sample sub-findings + `findings/FA1_scoring-matrix.md` + `findings/FA1_phase5-signal-log.md` |
| `tasks/LB1_loss-budget.md` | F4-LB1 (memo §4) | Fan-out: 20 Opus subagents (10 min + 10 low). Scoring axes (co-primary per the two-regime lens): A (through-line survival), B.1 (low only — DA × Pragmatist tension preservation), **B.2 (low only — neither-lens-gap presence using §4.7 4-category taxonomy — NEW)**, C (min only — conspicuous-absences quality). A sample passing only A but failing B/C is a prompt failure. | `findings/LB1_loss-budget.md` (split per prompt) + 20 per-sample sub-findings + `findings/LB1_scoring-matrix.md` |
| `tasks/PP1_three-prompt-parity.md` | F4-PP1 (memo §4) | **No live generation runs.** 1 Opus subagent reads the three current Phase 4 prompts + templates + sampled outputs. Classifies each divergence into THREE buckets per `dev/2026-05-03_effort-comparison.md` §5.2: **mandatory divergence (NEW — must be preserved; collapsing breaks the prompt's distinctive job)**, legitimate divergence (preserve in future edits), drift (converge). Also identifies mandatory similarities (universal across all 4 efforts). | `findings/PP1_three-prompt-parity.md` (contract-diff document) |
| `tasks/RG1_cross-effort-regression.md` | F4-RG1 (memo §4) | Fan-out: 10 Opus subagents (one per topic). Per-topic reads its 6 sampled clusters (1 min + 1 low + 2 med + 2 high) + ledgers + Phase 4 outputs. Classifies variance into THREE buckets: **regime-mandated divergence (NEW per §5.4)**, intentional (effort branching / cluster-shape), drift. Doubles as the regression harness for RP1. | `findings/RG1_cross-effort-regression.md` + 10 per-topic sub-findings + `findings/RG1_variance-classification.md` |
| `tasks/RP1_refinement.md` | Phase 4 of investigation | Take FA1/LB1/PP1/RG1 findings; produce revised prompts in `proposed-prompts/`. Iterate within pinned budget (3 iterations). **Tier-explicit iteration goals (NEW per §5.4):** full-synthesis variants target reframe + framing (A) and raw-count + reversal (B); low variants target tension preservation (A) and gap-surfacing (B); min variants target survival (A) and absences-detection (B). Stop criteria extended for the new axes (A3-framing ≥ 75%, D ≥ 70%, E ≥ 70%, LB1 co-primary ≥ 75%). | `proposed-prompts/phase4_*.md` (3 files) + `findings/RP1_refinement_iter{N}.md` (per iteration) + `findings/integration-spec.md` |

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
- `test-runs/{topic}/effort-comparison.md` — available for all 10 topics as of the mid-investigation asset update (see methodology.md). At investigation start only 4 topics had one (career-change, food-truck, habit-tracker, space-party); the remaining 6 (mobile-app, property-management, school-consolidation, tool-library, wearable-device, youth-mentorship) were generated after BL1 min/low completed. Downstream tasks (BL1 med+high, FA1, LB1, RG1, RP1) read this as a standard reference input for every topic.
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

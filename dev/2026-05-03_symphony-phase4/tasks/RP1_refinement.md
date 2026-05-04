# Phase 4 — Prompt Refinement

**Date:** 2026-05-03
**Parent:** [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md)
**Maps to:** Phase 4 (Refinement) of this investigation
**Inputs:**
- Parent methodology — [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md) (Phase 4 Refinement)
- All four upstream test-track findings:
  - `dev/2026-05-03_symphony-phase4/findings/FA1_faithfulness-audit.md` + `FA1_scoring-matrix.md` + `FA1_phase5-signal-log.md`
  - `dev/2026-05-03_symphony-phase4/findings/LB1_loss-budget.md` + `LB1_scoring-matrix.md`
  - `dev/2026-05-03_symphony-phase4/findings/PP1_three-prompt-parity.md`
  - `dev/2026-05-03_symphony-phase4/findings/RG1_cross-effort-regression.md` + `RG1_variance-classification.md`
- BL1 baselines (re-scoring reference) — `dev/2026-05-03_symphony-phase4/baselines/`
- Current Phase 4 prompts (base for revisions):
  - [`idea-symphony/prompts/phase4_full-synthesis.md`](../../../idea-symphony/prompts/phase4_full-synthesis.md)
  - [`idea-symphony/prompts/phase4_summary-only_low-effort.md`](../../../idea-symphony/prompts/phase4_summary-only_low-effort.md)
  - [`idea-symphony/prompts/phase4_summary-only_min-effort.md`](../../../idea-symphony/prompts/phase4_summary-only_min-effort.md)

---

## Background

### Context

Once FA1, LB1, PP1, RG1 have produced findings, RP1 takes their cumulative recommended prompt-revision targets and produces revised Phase 4 prompts in `proposed-prompts/`. Each iteration:
1. Drafts a revision based on current findings + previous iteration's results
2. **Re-runs the four scoring tracks** (FA1, LB1, RG1; PP1 is contract-only and re-runs only if new prompt structure may have changed the contract)
3. Evaluates against the stop criteria
4. If criteria met → ship. If not → another iteration (up to 3 total).

This is the longest-running task in the investigation by wall-clock because each iteration's re-scoring requires regenerating Phase 4 outputs from existing Phase 3 inputs, then rerunning FA1/LB1/RG1.

### What We Know

| Dimension | Pinned |
|---|---|
| Iteration budget | 3 (per Discussion Q12) |
| Stop criteria (per Q6 + Q12) | FA1 Axis A1 ≥ 90% (`attributed/` persona-name preservation, med strict / high weighted); FA1 Axis A2 = 0 persona-name occurrences in `_synthesis.md` and `_summary.md` prose; FA1 Axis A3 ≥ 90% (substance survival in prose); FA1 Axis B = 0 hallucinated quotes; FA1 Axis C = 100% convergence-count traceability; LB1 ≥ 80% through-line survival; RG1 ≥ 95% intentional variance |
| Variant strategy (full-synthesis) | **2 variants per iteration** (per Discussion Q13 — escalated from single-track) |
| Variant strategy (summary-only low) | 2 variants per iteration |
| Variant strategy (summary-only min) | 2 variants per iteration |
| Re-scoring scope | Full 60-sample set per iteration to detect regression on samples not at the failure-source |
| If criteria not met after 3 iterations | Ship best variant; document residual issues in integration-spec.md |

### Research Questions

- **RQ-RP1a (FQ1, FQ2, FQ4):** Can the Phase 4 prompts be revised to meet the stop criteria within 3 iterations?
- **RQ-RP1b (FQ3):** Do PP1's contract-convergence recommendations land cleanly without breaking effort-conditional behavior?
- **RQ-RP1c (FQ5):** Does the revised full-synthesis prompt produce more reliable Phase-5 signals?
- **RQ-RP1d:** What residual issues remain after 3 iterations, and are they acceptable to ship?

---

## Investigation Task

### I-RP1: Iteratively refine the three Phase 4 prompts

**Key question:** What revisions to the three Phase 4 prompts produce outputs meeting the stop criteria across the 60-sample set?

**Research questions addressed:** RQ-RP1a–d (methodology FQ1, FQ2, FQ3, FQ4, FQ5)

**Execution model:** Iterative single-orchestrator + fan-out for re-scoring. Each iteration:

- **Step 1: Draft revisions.** 1 Opus subagent reads all upstream findings + current prompt versions and drafts the next revision. **2 candidate variants per prompt for all three prompts** (per Q13).
- **Step 2: Generate Phase 4 outputs from revisions.** Re-run Phase 4 on all 60 samples using the revised prompts. **Note:** this requires regenerating from existing Phase 3 inputs — Phase 3 is fixed. With 2 variants for all three prompts: 40 med+high samples × 2 variants for full-synthesis = 80 runs; 10 min samples × 2 variants = 20 runs; 10 low samples × 2 variants = 20 runs; **120 regeneration runs total per iteration**.
- **Step 3: Re-score.** Rerun FA1 (40 samples × 2 variants = 80 score-runs) + LB1 (20 samples × 2 variants = 40 score-runs) + RG1 (10 topics × winning variant per prompt = 10 score-runs) against the regenerated outputs.
- **Step 4: Evaluate stop criteria.** If met, ship the winning variant per prompt. If not, iterate.

### Test Data

The full 60-sample set from SS1's manifest, regenerated each iteration with revised prompts. BL1 baselines remain fixed (Phase 3 inputs are unchanged).

### Subagent Design

#### Step 1 — Drafting subagent

1 Opus subagent per iteration. Reads all upstream findings + previous iteration's results (if iter > 1) + current prompt versions. Produces the revised prompts.

#### Step 2 — Re-generation subagents

Fan-out: **120 Opus subagents per iteration** (2 variants × 60 samples), batched 6 concurrent ≈ 20 waves. Each runs the relevant revised prompt variant against its sample's Phase 3 inputs to produce regenerated Phase 4 outputs in `proposed-prompts/iter{N}/outputs/{variant}/...`.

#### Step 3 — Re-scoring subagents

Same fan-out as FA1/LB1/RG1, doubled for variants: 40 × 2 + 20 × 2 + 10 = 130 subagents per iteration, batched. Reuses the FA1/LB1/RG1 task subagent prompts unchanged (those prompts score whatever Phase 4 outputs are at the manifest paths — for re-scoring, we point the manifest at the regenerated outputs in `proposed-prompts/iter{N}/outputs/{variant}/`). RG1 runs once per topic against the winning variant per prompt (post-A/B-decision).

#### Step 4 — Evaluation orchestrator

The same drafting subagent (or a separate evaluator) reads the iteration's re-scoring matrices, evaluates against the stop criteria, and decides: ship, iterate, or terminate at iteration ceiling.

### Step 1 Subagent Prompt

Spawn (**Opus model**, `general-purpose` type) per iteration with the following self-contained prompt. Substitute `{ITER}` (1, 2, or 3).

````
You are drafting Phase 4 prompt revisions for iteration {ITER} of RP1's refinement loop.

## Inputs to Read

1. `dev/2026-05-03_symphony-phase4/methodology.md`
2. `dev/2026-04-27_effort-comparison.md` — source memo
3. **All four upstream findings (or — if {ITER} > 1 — the previous iteration's re-scoring + previous iteration's revised prompts):**
   - `dev/2026-05-03_symphony-phase4/findings/FA1_faithfulness-audit.md` + `FA1_scoring-matrix.md` + `FA1_phase5-signal-log.md`
   - `dev/2026-05-03_symphony-phase4/findings/LB1_loss-budget.md` + `LB1_scoring-matrix.md`
   - `dev/2026-05-03_symphony-phase4/findings/PP1_three-prompt-parity.md`
   - `dev/2026-05-03_symphony-phase4/findings/RG1_cross-effort-regression.md` + `RG1_variance-classification.md`
4. **Current prompt versions:**
   - For iter 1: `idea-symphony/prompts/phase4_full-synthesis.md`, `phase4_summary-only_low-effort.md`, `phase4_summary-only_min-effort.md`
   - For iter > 1: `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{N-1}/phase4_*.md`
5. **Previous iteration's findings (if {ITER} > 1):** `dev/2026-05-03_symphony-phase4/findings/RP1_refinement_iter{ITER-1}.md`

## Method

### Step 1: Compile the revision target list

Aggregate all "Recommended prompt revision target" items from FA1, LB1, PP1, RG1 (and from the previous iteration's residuals if iter > 1). Deduplicate. Sort by:
1. **Phase 5 risks** (PP1's "PHASE 5 RISK" items) — highest priority
2. **Cross-effort drift** (RG1's drift patterns recurring in 5+ topics) — next priority
3. **Faithfulness failures** (FA1's recurring failure modes affecting 3+ samples) — next
4. **Loss-budget failures** (LB1's recurring failure modes affecting 3+ samples) — next
5. **Drift items** (PP1's drift items not classified as Phase 5 risks) — last

### Step 2: Draft revisions

For each of the three Phase 4 prompts, produce **2 candidate variants** for iteration-{ITER} in `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{ITER}/` (per Q13):

- `phase4_full-synthesis.md_variant-A.md` and `_variant-B.md` — 2 candidate variants. Differentiator drawn from upstream findings — typical pairs:
  - Variant-A focuses on persona-name discipline in prose (FA1 Axis A2 fix); Variant-B focuses on convergence-count traceability (FA1 Axis C fix)
  - Or: Variant-A reduces aggregation pressure (FA1 Axis A3 substance survival); Variant-B preserves aggregation but adds explicit single-persona-bullet preservation
  - Or whatever pair of competing concerns the upstream findings surface
- `phase4_summary-only_low-effort.md_variant-A.md` and `_variant-B.md` — 2 candidate variants. Variant-A focuses on tension preservation (LB1 Axis B); Variant-B focuses on through-line survival (LB1 Axis A).
- `phase4_summary-only_min-effort.md_variant-A.md` and `_variant-B.md` — 2 candidate variants. Variant-A focuses on conspicuous-absences detection (LB1 Axis C); Variant-B focuses on through-line survival weighting `[recurring]` items (LB1 Axis A).

For each revision, prepend a **revision-log** comment block at the top:

```markdown
<!--
Revision log — iteration {ITER}
====================================

Revision targets addressed:
1. [target 1 from FA1/LB1/PP1/RG1, with citation]
2. [target 2, ...]

Specific changes:
- [change 1: where in the prompt, what changed, why]
- [change 2: ...]

Variant differences (for variants):
- Variant A: [differentiator]
- Variant B: [differentiator]

Targets NOT addressed in this iteration (deferred or low-priority):
- [list with rationale]
-->
```

### Step 3: Document the iteration

Produce the per-iteration findings file:

`dev/2026-05-03_symphony-phase4/findings/RP1_refinement_iter{ITER}.md`

```markdown
# RP1 Refinement — Iteration {ITER}

**Date:** [today]
**Iteration:** {ITER} of 3 (max)

---

## Revision targets

[Aggregated and prioritized list from Step 1, with which item maps to which prompt change.]

## Revisions made

### `phase4_full-synthesis.md` (2 variants)

**Variant A:** [differentiator]
**Variant B:** [differentiator]

### `phase4_summary-only_low-effort.md` (2 variants)

**Variant A:** [differentiator]
**Variant B:** [differentiator]

### `phase4_summary-only_min-effort.md` (2 variants)

**Variant A:** [differentiator]
**Variant B:** [differentiator]

## Targets deferred to next iteration

[List with rationale.]

## Re-scoring plan

This iteration's revised prompts will be re-scored:
- FA1 against the 40 med + high samples (using the same per-sample subagent prompt, with manifest paths pointing to regenerated outputs in `proposed-prompts/iter{ITER}/outputs/`)
- LB1 against the 20 min + low samples (×2 variants per prompt = 40 sample-runs)
- RG1 against all 10 topics' 6 samples each (selecting the winning variant for each summary-only prompt)
- PP1 re-runs only if the contract surface materially changed

The iteration is complete when re-scoring is done; evaluation against stop criteria happens in the orchestrator step.
```

### Step 4: Variant pre-selection

For all three 2-variant prompts: before fanning out the re-generation, the drafting subagent should specify which sample uses which variant. Default — split each effort's samples evenly between variants:
- min: 5 samples per variant (10 total / 2 variants)
- low: 5 samples per variant
- med: 10 samples per variant (20 total / 2 variants)
- high: 10 samples per variant

Each variant gets a fair test on the same number of samples per effort. Where a topic has 2 med samples (or 2 high samples), assign one to each variant for within-topic A/B comparison.

## Quality Standards

- Every revision must address a specific cited finding. "Improve clarity" without citation is not a revision target.
- The revision-log comment block at the top of each revised prompt must be machine-readable (so RP1 iteration {ITER+1} can read it without re-deriving the changes).
- If the drafting subagent disagrees with an upstream finding's recommended revision, it must document the disagreement in the iteration findings file rather than silently dropping the target.

## Notes

- Do not modify the canonical `idea-symphony/prompts/phase4_*.md` files. RP1 writes only to `dev/2026-05-03_symphony-phase4/proposed-prompts/`.
- After all 3 iterations (or earlier ship), the integration-spec subagent (separate task below) takes the winning prompts and writes the integration spec.
````

### Step 2-3 Re-Scoring Pass

After drafting, the orchestrator:
1. Creates `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{ITER}/outputs/` directory tree mirroring `test-runs/{topic}/{effort}/synthesis/`.
2. Spawns 60 (+ 20 for variants) Opus subagents to regenerate Phase 4 outputs from revised prompts using existing Phase 3 inputs. Each subagent's prompt is the **revised Phase 4 prompt itself** (verbatim from `proposed-prompts/iter{ITER}/`), invoked against the corresponding sample's Phase 3 inputs.
3. Spawns the FA1/LB1/RG1 re-scoring subagents (using their existing task prompts, with output paths swapped to read from `proposed-prompts/iter{ITER}/outputs/` instead of `test-runs/`).
4. Records the per-sample, per-variant scoring results in `findings/RP1_refinement_iter{ITER}.md`.

### Step 4 Evaluation

After re-scoring, the orchestrator (same drafting subagent or a separate evaluator) reads the re-scoring matrices and evaluates:

| Stop criterion | Target | Iter {ITER} actual | Met? |
|---|---|---|---|
| FA1 Axis A1 (`attributed/` persona-name preservation) | ≥ 90% across 40 med+high (med strict / high weighted) | X% | Y/N |
| FA1 Axis A2 (prose persona-name absence) | 0 occurrences across 40 med+high in `_synthesis.md` and `_summary.md` | N | Y/N |
| FA1 Axis A3 (prose substance survival) | ≥ 90% across 40 med+high in both `_synthesis.md` and `_summary.md` | X% | Y/N |
| FA1 Axis B (hallucinated quotes) | 0 across 40 med+high | N | Y/N |
| FA1 Axis C (convergence-count traceability) | 100% across 40 med+high | X% | Y/N |
| LB1 through-line survival | ≥ 80% across 20 min+low (best variant per prompt) | X% | Y/N |
| RG1 intentional-variance ratio | ≥ 95% | X% | Y/N |

If all met → ship. If not, drafter spawns iteration {ITER+1} until {ITER} = 3.

After 3 iterations or earlier ship, the orchestrator triggers the integration-spec subagent.

### Integration-Spec Subagent Prompt

Spawn (**Opus model**, `general-purpose` type) after RP1's final iteration completes:

````
You are writing the integration specification for the Phase 4 prompt-investigation deliverables. Your output is the final research deliverable — what changes go into `idea-symphony/SKILL.md` and `idea-symphony/templates/synthesis-*.md` to land the new prompts.

## Inputs to Read

1. `dev/2026-05-03_symphony-phase4/methodology.md`
2. `dev/2026-05-03_symphony-phase4/findings/RP1_refinement_iter{N}.md` — for the final iteration {N}
3. **The winning revised prompts:** `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{N}/phase4_*.md` (single full-synthesis; chosen variant for each summary-only prompt)
4. **The original prompts:** `idea-symphony/prompts/phase4_*.md` (3 files)
5. **The current templates:** `idea-symphony/templates/synthesis-*.md` (3 files)
6. `idea-symphony/SKILL.md` — Phase 4 invocation block

## Deliverable

`dev/2026-05-03_symphony-phase4/findings/integration-spec.md`

```markdown
# Phase 4 Investigation — Integration Specification

**Date:** [today]
**Status:** Final research deliverable
**Final iteration:** {N} of 3

---

## Headline

[1 paragraph: what the revised prompts deliver, what stop criteria were met, what residuals remain.]

## Migration of revised prompts

For each of the three Phase 4 prompts, document the diff from canonical to revised:

### `idea-symphony/prompts/phase4_full-synthesis.md`

**Source:** `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{N}/phase4_full-synthesis.md`

**Migration step:** Replace canonical with the source above.

**Diff summary:** [bullet list of meaningful changes from canonical]

**Risk notes:** [any backward-compat concerns; whether existing test-runs would need regeneration]

### `idea-symphony/prompts/phase4_summary-only_low-effort.md`

[Same pattern]

### `idea-symphony/prompts/phase4_summary-only_min-effort.md`

[Same pattern]

## Template changes

For each `idea-symphony/templates/synthesis-*.md` file:
- **Required changes:** [list, with rationale]
- **Optional changes:** [list]
- **No-change:** [confirm]

## SKILL.md changes

- Phase 4 invocation block: [any updates needed for new prompt names, new arguments, etc.]
- Phase 5 invocation: [if Phase 5's expectations of Phase 4 outputs need updating — e.g., new aggregable signal fields]
- Other sections: [list]

## Residual issues (if any)

If RP1 hit the iteration ceiling without meeting all stop criteria:
- **Unmet criterion:** [name]
- **Best achieved:** [actual value]
- **Recommended path forward:** [either accept the gap (with rationale) or schedule a follow-up investigation]

## Phase 5 readiness

- **FA1's Phase-5 signal log:** [path] — confirms Phase 5 E4 satisfaction
- **Confidence-tag vocabulary:** aligned across the three revised prompts (per PP1 recommendation)
- **Central Tension demand:** universal (per PP1 recommendation)

## Verification before migration

Before the user merges the revised prompts to `idea-symphony/prompts/`, verify:
1. Re-running a fresh test session at each effort produces outputs matching the regenerated samples in `proposed-prompts/iter{N}/outputs/`
2. PP1 contract-diff against the new prompts shows zero "PHASE 5 RISK" items
3. The Phase-5 signal log is consumable by a Phase 5 prompt (coordinate with the parallel Phase 5 investigation)

## Cleanup recommendations

- Archive `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{1..N-1}/` to keep only the winning iteration in version control
- Update `dev/2026-04-27_effort-comparison.md` cross-references if the memo is re-read
- Note in `dev/!OLD/` (or however the repo handles archived investigations) when this investigation closes
```
````

### Expected Output

| Output | Path |
|---|---|
| Per-iteration revisions | `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{N}/phase4_*.md` (3-5 files per iteration) |
| Per-iteration findings | `dev/2026-05-03_symphony-phase4/findings/RP1_refinement_iter{N}.md` (1-3 files) |
| Per-iteration regenerated outputs | `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{N}/outputs/{topic}/{effort}/synthesis/...` |
| Re-scoring artifacts (per iteration) | `dev/2026-05-03_symphony-phase4/findings/RP1_iter{N}_FA1.md`, `_LB1.md`, `_RG1.md` (using FA1/LB1/RG1 task prompts pointed at proposed-prompts outputs) |
| Final integration spec | `dev/2026-05-03_symphony-phase4/findings/integration-spec.md` |

---

## Dependency Notes

- **Depends on:** FA1, LB1, PP1, RG1 all complete.
- **Blocks:** the user's decision to migrate revised prompts to `idea-symphony/prompts/`.
- **Coordinates with:** the parallel Phase 5 investigation via FA1's signal log and PP1's contract-diff (which the Phase 5 investigation may consume).

## Priority

**Critical-path final task.** Wall-clock time depends on iteration count. With 2-variant strategy across all three prompts (per Q13), each iteration ≈ 1 day for drafting + 3 days for re-generation (120 runs vs. 80 in single-track plan) + 1.5 days for re-scoring (130 score-runs) = ~5.5 days × 3 iterations = ~16-17 days max. Cheaper if criteria met after iteration 1 or 2.

## Discussion Questions Affecting This Task

- **Q12** (iteration budget and stop criteria) — pinned to 3 iterations + the seven stop criteria above (resolved per Q12 response; Q6's Axis A split adds A1/A2/A3 sub-criteria)
- **Q13** (variant strategy per prompt) — **pinned to 2 variants for ALL three prompts** including full-synthesis (resolved per Q13 response; escalated from single-track full-synthesis)

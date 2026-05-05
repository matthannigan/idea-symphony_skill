# Phase 4 — Prompt Refinement

**Date:** 2026-05-03 (originally) / **Revised:** 2026-05-04
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
- 10-topic cross-comparison synthesis — [`dev/2026-05-03_effort-comparison.md`](../../2026-05-03_effort-comparison.md) — §5 two-regime evaluation lens.

---

## 2026-05-04 Revision — What Changed and Why

The original RP1 plan (2026-05-03) prescribed **2 variants × 60-sample regen × full FA1/LB1/RG1 re-scoring per iteration ≈ 120 regen + 130 scoring = 250 Opus subagents per iteration**. With 3 iterations, that's ~750 subagents.

The four upstream findings (completed 2026-05-04) changed the picture:

1. **Saturation evidence is in.** Each of the four FA1 failure modes recurs across 5–7 of 10 topics. We do not need to re-prove saturation; we need to verify the fixes land on canonical worst-case samples and that design constraints don't regress.
2. **The P0 list converged.** FA1 + RG1 + LB1 + PP1 all point at the same 5 P0 prompt revisions. There is no genuine A/B uncertainty about *what* to do — only about *whether the rules will land*. The original variant strategy split fixes that all need to coexist in iter 1, which is wrong-shaped.
3. **Design constraints are now named.** RG1 surfaced four "must not regress" constraints (productive-dissent protection, bidirectional 2B+2C, length permission, reversal preservation). These belong as hard stops alongside the stop criteria.

**The revised plan is:** single-track iter 1, **12-sample diagnostic set**, lightweight per-axis scoring (or self-check folded into the regen subagent). Approximate cost: **~24 agents per iteration**, with iter 2/3 cheaper still (re-run only failures). Total project: ~50 agents across 3 iterations.

The final 60-sample validation pass that the original task file specified is **dropped from RP1 scope.** The user will save those tokens for regenerating `test-runs/` once satisfied with the final prompts. The integration-spec deliverable does not depend on a full re-validation — it can ship on the diagnostic-set evidence + the upstream findings.

---

## Two-Regime Evaluation Lens — Tier-Explicit Iteration Goals

Per [`dev/2026-05-03_effort-comparison.md`](../../2026-05-03_effort-comparison.md) §5.4, the three Phase 4 prompts have categorically different jobs and the iteration goals reflect that. Variants are **not the default mechanism** — they are reserved for iter 2/3 if iter 1 reveals a real trade-off (e.g., the Mode 1 floor introduces word-count creep).

### Full-synthesis prompt (`phase4_full-synthesis.md`) — *synthesis-with-reframe-surfacing* regime

Iteration 1 lands all 5 P0 items simultaneously (per RG1's prioritization):

1. **Single-persona-reframe-floor rule** for `_summary.md` Document 3, with explicit productive-dissent protection (must protect career-change/high/06's volunteering-as-weak-predictor inversion).
2. **Persona-name suppression** in `_summary.md` body prose AND `_synthesis.md` bullet-summary labels (must cover possessive constructions and character-name leaks like "The Storyteller's Marcus").
3. **Convergence-count discipline** with bidirectional sub-pattern guardrails (2A overcount, 2B undercount-when-persona-reframes, 2C overcount-when-one-persona-multiple-framings).
4. **Categorical-reframe explicit-staging** — name the reframe as a single declarative sentence at top of Themes when present.
5. **`## Central Tension` field** at top of `_summary.md` for med/high (mirroring the low template's existing field).

### Summary-only low prompt (`phase4_summary-only_low-effort.md`) — *compression-with-distinctive-output* regime

Iteration 1 lands the LB1 P0 list:

1. **Category-iteration discipline** for the Neither-lens-gaps section (5-category checklist before writing).
2. **Inverted-framing-pair instruction** in the Central Tension section (preserve oppositional framings, do not smooth to convergence).
3. (P1) **Through-line coverage instruction** to lift the 4 below-80% samples.
4. (P1) **Stance-tag vocabulary enforcement** (closed set: `[convergent]` / `[trade-off]` / `[unique: feasibility]` / `[unique: risk]`).

### Summary-only min prompt (`phase4_summary-only_min-effort.md`) — *compression-with-distinctive-output* regime

Iteration 1 lands the LB1 P0 list:

1. **Diagnostic checklist for Conspicuous Absences** (4-question checklist before writing the section).
2. **Mandatory inclusion gate** for `[recurring]` items (must surface in Recommended Actions or Key Themes).
3. **Tightened `[recurring]` tag definition** (literal cross-question recurrence, not subjective importance — applies to both summary-only prompts).
4. **`## Central Tension` field** added to min template (mirroring low's existing field; new at min).

---

## Background

### Context

Once FA1, LB1, PP1, RG1 have produced findings, RP1 takes their cumulative recommended prompt-revision targets and produces revised Phase 4 prompts in `proposed-prompts/`. Each iteration:
1. Drafts a single revision based on the upstream findings (iter 1) or the previous iteration's diagnostic-set scores (iter 2/3).
2. Regenerates Phase 4 outputs **on the 12-sample diagnostic set only**, not the full 60.
3. Scores each diagnostic sample on its specific failure axis (lightweight per-axis scorer or self-check).
4. Evaluates against the stop criteria. If ≥10/12 pass and design constraints intact → ship. If not → iterate on the failures only.

This is no longer the longest-running task in the investigation by wall-clock — at ~24 agents/iter it is comparable in cost to a single FA1 wave.

### What We Know

| Dimension | Pinned |
|---|---|
| Iteration budget | 3 (per Discussion Q12) |
| Stop criteria (per Q6 + Q12 + `dev/2026-05-03_effort-comparison.md` §5.4 + 2026-05-04 findings) | See "Stop Criteria" section below — restated to reflect Mode 4 expansion (bullet-label + character names) and the strict-vs-aggregate-pass distinction surfaced by LB1. |
| Variant strategy | **Single-track for iter 1** across all three prompts. Reserve variants for iter 2/3 only if iter 1 reveals a trade-off. |
| Re-scoring scope | **12-sample diagnostic set** (canonical worst-case per P0 mode + 2 must-not-regress design-constraint cases). Full 60-sample re-validation is out of RP1 scope. |
| Final validation | Out of scope. User regenerates `test-runs/` directly once satisfied with final prompts. Integration-spec ships on diagnostic-set evidence. |
| If criteria not met after 3 iterations | Ship best variant; document residual issues in integration-spec.md |

### Research Questions

- **RQ-RP1a (FQ1, FQ2, FQ4):** Can the Phase 4 prompts be revised to meet the stop criteria within 3 iterations on the 12-sample diagnostic set?
- **RQ-RP1b (FQ3):** Do PP1's contract-convergence recommendations land cleanly without breaking effort-conditional behavior?
- **RQ-RP1c (FQ5):** Does the revised full-synthesis prompt produce more reliable Phase-5 signals?
- **RQ-RP1d:** What residual issues remain after 3 iterations, and are they acceptable to ship?

---

## The 12-Sample Diagnostic Set

Each sample is the canonical worst-case for one P0 fix or the canonical positive case for one design constraint. Selected from FA1's n=16 + LB1's n=20 per RG1's "Regression test" recommendations.

| # | Sample | Effort | What it tests | Type | Source |
|---|---|---|---|---|---|
| 1 | career-change/med/01 | med | Mode 1 fix (worst single-persona-drop) | P0 must-fix | FA1 worst-faithfulness #4 |
| 2 | mobile-app/high/05 | high | Mode 2B undercount-when-persona-reframes | P0 must-fix | FA1 sub-pattern 2B canonical |
| 3 | youth-mentorship/high/11 | high | Mode 2C overcount-when-one-persona-multi-framings (inverse of 2B) | P0 must-fix | FA1 sub-pattern 2C canonical |
| 4 | space-party/high/06 | high | Mode 2A classic-overcount | P0 must-fix | FA1 sub-pattern 2A canonical |
| 5 | habit-tracker/high/04 | high | Mode 3 framing-flattening (only sample failing both docs at synth+summ) | P0 must-fix | FA1 worst-faithfulness #3 |
| 6 | property-management/high/07 | high | Mode 4 prose leakage (6 sentences + character-name leaks) | P0 must-fix | FA1 worst-faithfulness #1 |
| 7 | wearable-device/high/05 | high | Mode 4 bullet-label sub-pattern (`_synthesis.md`) | P0 must-fix | FA1 novel sub-pattern at n=16 |
| 8 | tool-library/high/09 | high | Categorical-reframe explicit-staging (mutual-visibility implicit) | P0 must-fix | FA1 RP1 #6; RG1 Pattern 3 |
| 9 | mobile-app/min/01 | min | LB1 Conspicuous Absences fix (papers over the cluster's gap) | P0 must-fix | LB1 P0-2 motivating sample |
| 10 | career-change/low/01 | low | LB1 Neither-lens-gap category-iteration | P0 must-fix | LB1 P0-1 motivating sample (representative of all 10) |
| 11 | career-change/high/06 | high | **Volunteering-inversion must NOT regress** (productive-dissent constraint) | Constraint | RG1 design constraint #1 |
| 12 | school-consolidation/high/09 | high | **The only n=16 PASS — must NOT regress** | Constraint | FA1 cleanest-faithfulness #1 |

**Implicit constraint coverage** (no separate samples needed):
- *Length permission* — wearable-device/high/05 already in set (sample #7); its expanded length must remain permissible.
- *Reversal preservation* — property-management/high/07 already in set (sample #6); the political-posture inversion (visible→quiet) must survive intact.

If iter 1 surfaces a P0 failure mode this set under-tests, iter 2 may add 1–2 samples (see "Iteration Cadence" below).

---

## Investigation Task

### I-RP1: Iteratively refine the three Phase 4 prompts

**Key question:** What revisions to the three Phase 4 prompts produce outputs meeting the stop criteria across the 12-sample diagnostic set?

**Research questions addressed:** RQ-RP1a–d (methodology FQ1, FQ2, FQ3, FQ4, FQ5)

**Execution model:** Iterative single-orchestrator + small fan-out for re-scoring. Each iteration:

- **Step 1: Draft revisions.** 1 Opus subagent reads the upstream findings (or previous iter's diagnostic results) and drafts the next revision. Single-track for all three prompts unless iter 1 surfaces a real trade-off.
- **Step 2: Regenerate diagnostic outputs.** Re-run Phase 4 on the 12 diagnostic samples using the revised prompts. **12 Opus subagents per iteration** (vs. 120 in the original plan).
- **Step 3: Score per-axis.** Each diagnostic sample is scored against its specific failure axis using a lightweight per-sample scorer prompt (or, preferably, folded into Step 2 as a self-check at the bottom of the regen output). **0–12 additional subagents per iteration** depending on whether self-checks are used.
- **Step 4: Evaluate stop criteria.** If ≥10/12 pass AND design constraints (#11, #12) intact → ship. If not, iterate on the failures only.

### Test Data

The 12-sample diagnostic set defined above. BL1 baselines remain fixed (Phase 3 inputs are unchanged). The full 60-sample manifest is **not** re-run by RP1.

### Subagent Design

#### Step 1 — Drafting subagent

1 Opus subagent per iteration. Reads the upstream findings (iter 1) or the previous iteration's diagnostic-set scores + previous iteration's revised prompts (iter 2/3). Produces the revised prompts.

#### Step 2 — Re-generation subagents

**12 Opus subagents per iteration** (one per diagnostic sample). Each runs the relevant revised prompt against its sample's Phase 3 inputs to produce regenerated Phase 4 outputs in `proposed-prompts/iter{N}/outputs/{topic}/{effort}/synthesis/...`. Each regen subagent's prompt should append a **self-check block** at the end of its output naming whether the sample's targeted axis is satisfied (see "Step 3" below).

#### Step 3 — Per-axis scoring (preferred: folded into Step 2)

Each diagnostic sample tests 1–2 specific axes, not the full FA1/LB1 rubric. Two implementation options:

**Option A (preferred):** Self-check folded into Step 2. Append to each regen subagent's prompt: *"After producing the revised output, append a `<!-- self-check -->` block stating: (a) the targeted axis for this sample, (b) the BL1 expectation, (c) what the regenerated output produced, (d) PASS / PARTIAL / FAIL with rationale."* Total iter cost = 12 agents.

**Option B (fallback):** 12 separate scoring subagents, each reading 1 regenerated output + the relevant BL1 ledger excerpt + the targeted axis criterion, returning a one-line PASS/FAIL. Total iter cost = 24 agents.

Per-sample axis criteria are listed in the "Per-Sample Axis Criteria" section below.

#### Step 4 — Evaluation orchestrator

The drafting subagent (or a separate evaluator) reads the iteration's diagnostic-set scores, evaluates against the stop criteria, and decides: ship, iterate, or terminate at iteration ceiling.

### Step 1 Subagent Prompt

Spawn (**Opus model**, `general-purpose` type) per iteration with the following self-contained prompt. Substitute `{ITER}` (1, 2, or 3).

````
You are drafting Phase 4 prompt revisions for iteration {ITER} of RP1's refinement loop.

## Inputs to Read

1. `dev/2026-05-03_symphony-phase4/methodology.md`
2. `dev/2026-05-03_symphony-phase4/tasks/RP1_refinement.md` — this task file (for the diagnostic set + per-sample axis criteria)
3. **For iter 1 — all four upstream findings:**
   - `dev/2026-05-03_symphony-phase4/findings/FA1_faithfulness-audit.md` + `FA1_scoring-matrix.md` + `FA1_phase5-signal-log.md`
   - `dev/2026-05-03_symphony-phase4/findings/LB1_loss-budget.md` + `LB1_scoring-matrix.md`
   - `dev/2026-05-03_symphony-phase4/findings/PP1_three-prompt-parity.md`
   - `dev/2026-05-03_symphony-phase4/findings/RG1_cross-effort-regression.md` + `RG1_variance-classification.md`
4. **For iter > 1 — previous iteration's diagnostic results:**
   - `dev/2026-05-03_symphony-phase4/findings/RP1_refinement_iter{ITER-1}.md`
   - `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{ITER-1}/phase4_*.md`
5. **Current prompt versions:**
   - For iter 1: `idea-symphony/prompts/phase4_full-synthesis.md`, `phase4_summary-only_low-effort.md`, `phase4_summary-only_min-effort.md`
   - For iter > 1: `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{ITER-1}/phase4_*.md`

## Method

### Step 1: Implement the P0 revisions directly

The upstream findings have already prioritized and specified the P0 revisions. Do **not** re-derive them. Implement, in this order:

**`phase4_full-synthesis.md` — 5 P0 items:**

1. **Single-persona-reframe-floor rule** (FA1 RP1 #1; RG1 Pattern 1). Add to Document 3 "Important" section. Concrete language: *"Surface load-bearing single-persona reframes. The Themes, Trade-offs, and Risks sections must include any single-persona insight that reframes the cluster's core question — counter-tests, distinctive timing claims, buried hypotheses, alternate diagnostic patterns, productive DA-anchored dissent **including dissent that inverts memo-persistent claims**. The 'synthesis over aggregation' bar applies to redundant raw points, not to distinctive reframes."* The dissent-protection clause is required (career-change/high/06 design constraint).

2. **Persona-name suppression rule** (FA1 RP1 #4 expanded; PP1 P0 #1; RG1 Pattern 4). Add to Document 3 "Important" section AND extend Document 2 instructions. Concrete language: *"Persona names are prohibited in any prose of `_synthesis.md` or `_summary.md` — including stylistic constructions ('from X's lens to Y's frame'), possessive enumerations ('The Storyteller's Marcus'), sentence-subject mentions ('The Devil's Advocate argues'), and bullet-summary labels ('Visionary alternatives', 'Pragmatist's caution'). Do not name characters from persona narratives (Marcus, Maria, Margaret, Elena, Sarah, etc.) in summary prose. Convey breadth via convergence counts and lens types ('a feasibility-oriented case', 'an adversarial counter-test'). Persona names belong only in `attributed/{cluster}.md`."*

3. **Convergence-count discipline rule** with bidirectional sub-pattern guardrails (FA1 RP1 #2 expanded; RG1 Pattern 2). Add to Synthesis-Strategy / Consolidation-Process section. Concrete language: *"Before writing any 'all four / six of seven / every persona' count claim: (a) name the personas in scratch reasoning; (b) count distinct personas, not distinct framings — if one persona offers two angles, that is one persona, not two; (c) count personas who engage the underlying claim, even with different framing — do not require identical wording; (d) deduct any explicit dissenter even if their adjacent framing partially supports; (e) default to underclaim ('Several personas surface…') when uncertain; (f) the summary doc must inherit count claims from the attributed-doc preambles, not re-derive them."*

4. **Categorical-reframe explicit-staging requirement** (FA1 RP1 #6; RG1 Pattern 3). Add to Document 3 "Important" section. Concrete language: *"If the cluster has a categorical reframe — a sentence-level claim that reframes the question itself ('we are not running X; we are running Y') — name it as a single declarative sentence at the top of the Themes section, separate from the individual Themes. The reframe should be derivable from at least three personas' responses and should change which actions are prioritized."*

5. **`## Central Tension` field** at top of `_summary.md` for med/high (FA1 RP1 #5; PP1 P0 #2). Add to Document 3 template. Mirror the low template's existing field exactly: `**Central Tension**: [one sentence; if no productive tension to name, that itself is a signal — say so]`.

**`phase4_summary-only_low-effort.md` — P0/P1 items:**

6. **Category-iteration discipline** for Neither-lens-gaps (LB1 P0-1). Replace open-ended gap instruction with: *"Before writing this section, walk through the 5 candidate categories and identify the 2–3 most cluster-relevant: (a) relational/social, (b) emotional/phenomenological/lived-experience, (c) equity/access/distributional, (d) political-economy/regulatory/institutional, (e) lifecycle/temporal-stage. For each candidate, ask: did the DA's risk lens and the Pragmatist's feasibility lens both structurally miss this angle? If yes for ≥2 categories, surface them as distinct gaps. Skip the section only if 0 categories pass the test."*

7. **Inverted-framing-pair instruction** in Central Tension (LB1 P1-3). Add: *"If both lenses point at the same coordinator/structure/mechanism from opposite directions (one as risk-source, the other as solution-vector), name that inverted-framing pair as the Central Tension explicitly. Inverted framings are the highest-value tensions to preserve and the most likely to be smoothed into false convergence."*

8. (P1, optional in iter 1) **Through-line coverage instruction** (LB1 P2-1) and **stance-tag vocabulary enforcement** (LB1 P2-2). Land if regen budget allows.

**`phase4_summary-only_min-effort.md` — P0 items:**

9. **Diagnostic checklist for Conspicuous Absences** (LB1 P0-2). Insert before the Conspicuous Absences instruction: *"Before naming absences, run this diagnostic: (a) Does the brainstormer name a stakeholder type but not a structurally adjacent one? (b) Does it recommend something whose precondition the response never establishes (e.g., a 10K-unit revenue model with no acquisition channel)? (c) Does it propose action whose downside class is never raised? (d) Did the brainstormer face a decision implicit in the question and decline to make it? Pick the 1–2 with highest leverage on the cluster's own recommendations. Avoid restating risks already named."*

10. **Mandatory inclusion gate for `[recurring]` items** (LB1 P0-3). Insert at Recommended Actions instruction: *"Every through-line that recurs across multiple questions in the brainstormer's response must appear in either Recommended Actions or Key Themes. Do not drop a `[recurring]` insight to make room for a single-occurrence item, however vivid."*

11. **Tightened `[recurring]` tag definition** (LB1 P1-1; applies to both summary-only prompts). Insert: *"`[recurring]` = the same specific recommendation/heuristic (not just its theme) appears in two or more questions. A single mention plus thematic resonance counts as `[single]`. When in doubt, tag `[single]`. Do not use `[recurring]` as a generic confidence or importance marker."*

12. **`## Central Tension` field** at top of min `_summary.md` (LB1 P1-2; PP1 P0 #2). Add to min template, mirroring low's existing field.

### Step 2: Embed self-check instructions into each revised prompt

(Optional but recommended — saves the Step 3 fan-out.) At the bottom of each revised prompt's "Quality Standards" or equivalent block, add a self-check directive that the regen subagent will follow when invoked on a diagnostic sample. The orchestrator passes the targeted axis name(s) to each regen subagent so it knows which self-check to perform.

### Step 3: Document the iteration

Produce the per-iteration findings file:

`dev/2026-05-03_symphony-phase4/findings/RP1_refinement_iter{ITER}.md`

```markdown
# RP1 Refinement — Iteration {ITER}

**Date:** [today]
**Iteration:** {ITER} of 3 (max)
**Diagnostic samples scored:** 12 (or N if iter > 1 re-running only failures)

---

## Revisions made

### `phase4_full-synthesis.md`

[Bulleted list of P0 items 1–5 implemented, with file location of each insertion.]

### `phase4_summary-only_low-effort.md`

[Bulleted list of P0/P1 items 6–8 implemented.]

### `phase4_summary-only_min-effort.md`

[Bulleted list of P0 items 9–12 implemented.]

## Targets deferred to next iteration (if any)

[List with rationale.]

## Diagnostic-set scoring plan

This iteration's revised prompts will be re-scored on the 12 diagnostic samples (or the N failed samples from iter {ITER-1}). Per-sample regen + self-check via 12 (or N) Opus subagents. No full FA1/LB1/RG1 re-run.
```

## Quality Standards

- Implement the 12 numbered P0/P1 revisions verbatim — do not re-prioritize or re-phrase them. The findings have already been through n=16 (FA1) and n=20 (LB1) saturation analyses.
- Preserve the four design constraints from RG1: productive-dissent protection, bidirectional 2B+2C count fix, length permission, reversal preservation. Each constraint has a corresponding diagnostic sample (#11 and #12 explicitly; #6 and #7 implicitly) — losing any of these in the diagnostic re-score is a hard fail.
- The revision-log comment block at the top of each revised prompt must be machine-readable so RP1 iter {ITER+1} can read it without re-deriving.
- If you disagree with an upstream finding's recommended revision, document the disagreement in the iteration findings file rather than silently dropping the target. Do not improvise new P0 items beyond the 12 listed.

## Notes

- Do not modify the canonical `idea-symphony/prompts/phase4_*.md` files. RP1 writes only to `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{ITER}/`.
- Single-track for iter 1. If iter 1 reveals a real trade-off (e.g., the Mode 1 floor causes word-count regression that breaks Mode 3), iter 2 may use 2 variants on the affected prompt — but only if the trade-off is substantive, not as a default.
````

### Step 2 — Diagnostic Regeneration

After drafting, the orchestrator:
1. Creates `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{ITER}/outputs/` directory tree mirroring the 12 diagnostic samples' paths under `test-runs/{topic}/{effort}/synthesis/`.
2. Spawns **12 Opus subagents** (one per diagnostic sample). Each subagent's prompt is the **revised Phase 4 prompt itself** (verbatim from `proposed-prompts/iter{ITER}/`), invoked against the corresponding sample's Phase 3 inputs, with an appended self-check directive naming the targeted axis (per the table below).
3. Records the 12 regenerated outputs + 12 self-check verdicts in `proposed-prompts/iter{ITER}/outputs/` and `findings/RP1_refinement_iter{ITER}.md`.

### Per-Sample Axis Criteria

The targeted axis criterion passed to each regen subagent's self-check:

| # | Sample | Targeted axis | PASS criterion |
|---|---|---|---|
| 1 | career-change/med/01 | A3-content-summary (Mode 1) | All 3 dropped Visionary reframes (per FA1 sub-finding) appear as named themes or actions in `_summary.md` |
| 2 | mobile-app/high/05 | C-summary (Mode 2B) | TL-19, TL-20, TL-22 convergence counts match BL1 expected (no undercount-when-reframes) |
| 3 | youth-mentorship/high/11 | C-summary (Mode 2C) | TL-13/Q69, TL-22/Q71, Q74 counts match BL1 expected (no overcount-multi-framing) |
| 4 | space-party/high/06 | C-summary (Mode 2A) | The 2 strict overcounts ("all seven" claims) are correctly stated as 6/7 and 5/7 per BL1 |
| 5 | habit-tracker/high/04 | A3-framing-synthesis + summary (Mode 3) | Empath, Storyteller, Analogist lenses survive in synth (≥75%) AND summ (≥60%) |
| 6 | property-management/high/07 | A2-summary + character-name (Mode 4) | 0 persona-name occurrences AND 0 character-name leaks (Marcus, Maria, Margaret, Elena) in body prose |
| 7 | wearable-device/high/05 | A2-synthesis bullet-label (Mode 4 sub-pattern) | 0 bullet-summary labels of the form "Visionary alternatives" / "Pragmatist's caution" in `_synthesis.md` |
| 8 | tool-library/high/09 | D (categorical-reframe staging) | "Mutual-visibility infrastructure" appears as a single declarative reframe sentence at top of Themes |
| 9 | mobile-app/min/01 | LB1 Axis C (conspicuous absences) | Names the cluster's load-bearing absence (the brainstormer's "three businesses, pick a lane" non-decision); summary does NOT recommend "choose one business model lane" while papering over the gap |
| 10 | career-change/low/01 | LB1 Axis B.2 (neither-lens-gaps) | ≥2 of the 4 BL1 categories surfaced as distinct gaps; phenomenology-of-practice gap present |
| 11 | career-change/high/06 | A3-content + design constraint | TL-15 volunteering-as-weak-predictor inversion appears in `_summary.md` as named insight (must NOT regress to memo's "strongest asset") |
| 12 | school-consolidation/high/09 | All axes (must NOT regress) | All FA1 axes still PASS (matches n=16 PASS verdict) |

### Step 4 — Evaluation

After Step 2 returns, the orchestrator reads the 12 self-check verdicts and evaluates:

| Decision | Criterion |
|---|---|
| **Ship** | ≥10/12 PASS AND samples #11 + #12 PASS (design constraints intact) |
| **Iterate (iter 2/3)** | <10/12 PASS OR sample #11 or #12 regresses |
| **Terminate at ceiling** | Iter 3 still <10/12 PASS — ship best-available; document residuals in integration-spec |

**Iteration cadence:**
- **Iter 1:** 12 regen + 0–12 score = ~12–24 agents.
- **Iter 2:** Re-run only failed samples + any new constraint-regression risk = typically 4–8 agents.
- **Iter 3:** Same shape as iter 2 if needed.

**Total project cost:** ~30–50 agents across all 3 iterations (vs. ~750 in original plan).

### Stop Criteria (restated for the diagnostic set)

The original 60-sample stop criteria are reframed as **per-sample axis criteria** above. The aggregate-level criteria below are evidence the prompts will hold up at full scale; the user will validate at full scale via `test-runs/` regeneration outside RP1's scope.

| Stop criterion | Target | Diagnostic-set proxy |
|---|---|---|
| FA1 Axis A1 (`attributed/` persona-name preservation) | ≥ 90% | Implicit — current 94%; samples #6, #7 do not stress A1 |
| FA1 Axis A2 (prose persona-name absence, expanded to bullet-labels + character names) | 0 occurrences | Samples #6, #7 PASS |
| FA1 Axis A3-content | ≥ 90% strict / ≥75% with substantive losses | Samples #1, #11 PASS |
| FA1 Axis A3-framing | ≥ 75% | Sample #5 PASS |
| FA1 Axis B (hallucinated quotes) | 0 | Implicit — current 100%; not stressed by diagnostic |
| FA1 Axis C (convergence-count traceability with raw-count match) | 100% | Samples #2, #3, #4 PASS (covers all three sub-patterns) |
| FA1 Axis D (categorical-reframe surfacing) | ≥ 70% | Sample #8 PASS |
| FA1 Axis E (foundational-reversal preservation, high gated) | ≥ 70% | Sample #11 PASS (volunteering inversion) |
| LB1 through-line survival | ≥ 80% | Samples #9, #10 inherit Axis A; primary stress is on co-primary |
| LB1 co-primary regime-distinctive (B for low, C for min) | ≥ 75% pass | Samples #9 (min C), #10 (low B.2) PASS |
| RG1 intentional+regime-mandated variance ratio | ≥ 95% (drift ≤ 5%) | Implicit — drift sources are the 5 P0 fixes; if all PASS, residual drift estimated ≤4% per RG1 |

After ship (or after ceiling), the orchestrator triggers the integration-spec subagent.

### Integration-Spec Subagent Prompt

Spawn (**Opus model**, `general-purpose` type) after RP1's final iteration completes:

````
You are writing the integration specification for the Phase 4 prompt-investigation deliverables. Your output is the final research deliverable — what changes go into `idea-symphony/SKILL.md` and `idea-symphony/templates/synthesis-*.md` to land the new prompts.

**Note on validation scope:** RP1 scored revisions on a 12-sample diagnostic set, not the full 60. The user will validate at full scale by regenerating `test-runs/` directly with the migrated prompts, outside this investigation's scope. Your integration spec ships on the diagnostic-set evidence + the upstream findings; do not gate migration on a full re-run.

## Inputs to Read

1. `dev/2026-05-03_symphony-phase4/methodology.md`
2. `dev/2026-05-03_symphony-phase4/findings/RP1_refinement_iter{N}.md` — for the final iteration {N}
3. **The winning revised prompts:** `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{N}/phase4_*.md`
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
**Diagnostic-set pass rate:** [X/12]
**Validation scope:** Diagnostic set only — full-scale validation deferred to user's `test-runs/` regeneration

---

## Headline

[1 paragraph: what the revised prompts deliver, what diagnostic criteria were met, what residuals remain.]

## Migration of revised prompts

For each of the three Phase 4 prompts, document the diff from canonical to revised:

### `idea-symphony/prompts/phase4_full-synthesis.md`

**Source:** `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{N}/phase4_full-synthesis.md`

**Migration step:** Replace canonical with the source above.

**Diff summary:** [bullet list of meaningful changes from canonical, organized by P0 item #]

**Risk notes:** [any backward-compat concerns; whether existing test-runs would need regeneration — note that the user plans to regenerate test-runs after migration]

### `idea-symphony/prompts/phase4_summary-only_low-effort.md`

[Same pattern]

### `idea-symphony/prompts/phase4_summary-only_min-effort.md`

[Same pattern]

## Template changes

For each `idea-symphony/templates/synthesis-*.md` file:
- **Required changes:** [list, with rationale — particularly for the new `## Central Tension` field at min/med/high]
- **Optional changes:** [list]
- **No-change:** [confirm]

## SKILL.md changes

- Phase 4 invocation block: [any updates needed for new prompt names, new arguments, etc.]
- Phase 5 invocation: [if Phase 5's expectations of Phase 4 outputs need updating — e.g., new aggregable signal fields]
- Other sections: [list]

## Residual issues (if any)

If RP1 hit the iteration ceiling without all 12 diagnostic samples passing:
- **Unmet sample(s):** [name + targeted axis]
- **Best achieved:** [what the revised prompt did vs. the criterion]
- **Recommended path forward:** [either accept the gap (with rationale) or schedule a follow-up investigation]

## Phase 5 readiness

- **FA1's Phase-5 signal log:** [path] — confirms Phase 5 E4 satisfaction
- **Confidence-tag vocabulary:** aligned across the three revised prompts (per PP1 recommendation)
- **Central Tension demand:** universal (per PP1 recommendation)

## Verification before migration (user-side, outside RP1 scope)

The user will validate full-scale fidelity by regenerating `test-runs/` with the migrated prompts. RP1 does not block on this; the integration spec ships on the diagnostic-set evidence.

## Cleanup recommendations

- Archive `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{1..N-1}/` to keep only the winning iteration in version control
- Update `dev/2026-04-27_effort-comparison.md` cross-references if the memo is re-read
- Note in `dev/!OLD/` (or however the repo handles archived investigations) when this investigation closes
```
````

### Expected Output

| Output | Path |
|---|---|
| Per-iteration revisions | `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{N}/phase4_*.md` (3 files per iteration) |
| Per-iteration findings | `dev/2026-05-03_symphony-phase4/findings/RP1_refinement_iter{N}.md` (1–3 files) |
| Per-iteration regenerated outputs (diagnostic set only) | `dev/2026-05-03_symphony-phase4/proposed-prompts/iter{N}/outputs/{topic}/{effort}/synthesis/...` (12 outputs per iteration, fewer in iter 2/3) |
| Final integration spec | `dev/2026-05-03_symphony-phase4/findings/integration-spec.md` |

---

## Dependency Notes

- **Depends on:** FA1, LB1, PP1, RG1 all complete. ✅ (as of 2026-05-04)
- **Blocks:** the user's decision to migrate revised prompts to `idea-symphony/prompts/` and regenerate `test-runs/`.
- **Coordinates with:** the parallel Phase 5 investigation via FA1's signal log and PP1's contract-diff.

## Priority

**Critical-path final task.** With the revised diagnostic-set approach, each iteration ≈ 0.5 day for drafting + 1 day for regen+self-check + 0.5 day for evaluation = ~2 days × up to 3 iterations = ~6 days max. Likely shorter if iter 1 lands ≥10/12 (which the saturation evidence supports).

## Discussion Questions Affecting This Task

- **Q12** (iteration budget and stop criteria) — pinned to 3 iterations + the diagnostic-set criteria above.
- **Q13** (variant strategy per prompt) — **superseded by the 2026-05-04 revision.** Single-track for iter 1; variants reserved for iter 2/3 only if a real trade-off surfaces.

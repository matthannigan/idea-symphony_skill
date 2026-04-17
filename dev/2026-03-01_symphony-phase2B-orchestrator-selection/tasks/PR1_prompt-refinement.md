# Phase 2B Orchestrator Selection — Prompt Refinement

**Date:** 2026-03-01
**Parent:** `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md`
**Inputs:**
- Parent methodology — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md` (Phase 3 process, accuracy targets)
- Ground truth — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md` (canonical answer key)
- GT1 findings — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/GT1_ground-truth-assignments.md` (ambiguity list, traps, guide gaps)
- O1 compiled findings — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/O1_orchestrator-prompt-variant-testing.md` (winning variant, error patterns, refinement seeds)
- O1 per-variant reports — `findings/O1_orchestrator-prompt-variant-testing_{variant}.md` (detailed error analysis)
- O1 winning variant prompt — `findings/O1_prompts/{winner}.md` (starting point for iteration)
- Persona selection guide — `idea-symphony/references/persona-selection-guide_Phase2B.md` (may be edited in-scope per discussion-questions.md Q10)

---

## Background

### Context

O1 identifies the best-performing of three prompt variants and documents its systematic errors. PR1 takes that winning variant and iterates on it until accuracy thresholds are met across all 10 test topics at both effort levels:

- **Tier 3 selection accuracy ≥ 80%**
- **Connector/Analogist accuracy ≥ 90%**
- **No systematic false positive or false negative patterns**

Each iteration is a targeted refinement pass: identify the biggest remaining error pattern, propose a minimal prompt change to address it, re-run all 20 (10 × 2) runs, re-score, decide whether to continue.

Refinement is bounded by iteration budget and stop criteria (see Stop Criteria below). PR1 is not open-ended.

### What We Know

From O1 (expected to be complete when PR1 starts):

- The winning variant and its aggregate metrics
- Systematic error patterns per variant
- Error patterns shared across variants (likely traceable to the persona selection guide rather than any single prompt)
- Variant-specific error patterns (prompt-level fixes)
- Refinement seeds — a prioritized list of candidate prompt changes

PR1 takes that list as its starting backlog and burns it down iteration-by-iteration.

### Known Refinement Levers

Based on methodology.md and the structure of the three variants:

| Lever | Target Problem | Example Refinement |
|---|---|---|
| **Strengthen trigger language** | False negatives on a specific persona | Add "topics involving X, Y, Z trigger Accountant even when the word 'business' is absent" |
| **Weaken trigger language** | False positives driven by keyword matches | Replace "topics mentioning liability" with "topics where regulatory compliance is a core constraint, not just an incidental mention" |
| **Add anti-pattern examples** | False-positive traps (e.g., career-change → Lawyer) | Explicit "DO NOT select Lawyer for topics that merely mention legal domain keywords when the brainstorming need is personal/experiential" |
| **Clarify effort thresholds** | Medium vs high threshold collapse | Add explicit contrast: "At medium, a topic needs an *unambiguously* strong trigger. If you are between moderate and strong, select None at medium and the persona at high." |
| **Force rationale structure** | Generic/template rationales | Require rationale to cite a specific phrase from the REQUEST |
| **Require explicit Connector decision** | Under-swap or over-swap | Add a decision rule: "Before defaulting to Analogist, ask: does the topic require reconciling two or more systems that constrain each other? If no, Analogist. If yes, Connector." |
| **Guide edits (out-of-prompt)** | Errors traceable to guide ambiguity | Edit `persona-selection-guide_Phase2B.md` itself — in-scope per discussion-questions.md Q10 |

### Research Questions

- **RQ-PR1a:** Can the winning O1 variant be refined to meet accuracy thresholds (Tier 3 ≥ 80%, Connector/Analogist ≥ 90%) within a bounded iteration budget?
- **RQ-PR1b:** Which refinement levers produce the largest accuracy lift per iteration? Are anti-pattern examples more effective than threshold clarifications?
- **RQ-PR1c:** Are any residual errors traceable to the persona selection guide itself rather than the prompt, and if so, what guide edits are needed?
- **RQ-PR1d:** Does refinement for one persona's accuracy degrade accuracy for others? (E.g., strengthening Lawyer triggers might inflate false positives on topics with incidental legal content.)

---

## Investigation Task

### I-PR1: Iterative Prompt Refinement

**Key question:** How few iterations of targeted refinement are needed to take the winning O1 variant from its baseline accuracy to the methodology-specified thresholds, and what prompt-level and guide-level changes produce the largest lifts?

**Research questions addressed:** RQ-PR1a–d

**Execution model:** Each iteration is a 4-step subagent pass: (1) propose refinement, (2) apply refinement and re-run 20 tests, (3) score against ground truth, (4) decide continue/stop. Iterations are sequential (each depends on the previous iteration's scoring). A final synthesis compiles the iteration log into a single findings document.

### Iteration Budget

Plan for **up to 4 iterations**. Each iteration re-runs all 20 generation calls and one scoring pass — this is the same scale as one O1 variant track, so budget per iteration is bounded. After 4 iterations, if thresholds aren't met, escalate per Stop Criteria below.

### Refinement Subagent Prompt

Each iteration spawns an Opus subagent with the following self-contained prompt:

````
You are executing one iteration of prompt refinement for the Phase 2B orchestrator-selection investigation. You will analyze the current prompt's error patterns, propose a minimal refinement, apply it, re-run all 20 tests, score the results, and decide whether further iteration is needed.

## Iteration Number: {N}
## Starting Prompt: {starting_prompt_path}

At iteration 1, the starting prompt is the winning variant from O1 (e.g., `findings/O1_prompts/O-V3_structured-checklist.md`).
At iteration 2+, the starting prompt is the refined prompt from the previous iteration (`findings/PR1_refined-orchestrator-prompt_iter{N-1}.md`).

## Task

### Step 1: Analyze Current Errors

Read:
1. `dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md`
2. `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/GT1_ground-truth-assignments.md`
3. Previous iteration's scoring report:
   - Iteration 1: `findings/O1_orchestrator-prompt-variant-testing_{winner}.md`
   - Iteration 2+: `findings/PR1_prompt-refinement_iter{N-1}.md`
4. The starting prompt: {starting_prompt_path}
5. `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md` — accuracy targets and stop criteria

Identify the SINGLE highest-impact error pattern still present. "Highest impact" = largest contribution to the gap between current accuracy and threshold. Prefer patterns affecting 3+ runs over one-off errors.

### Step 2: Propose Refinement

Propose a MINIMAL prompt-level change targeting the chosen error pattern. Minimal means: shortest text addition or edit that plausibly addresses the pattern without regressing other metrics.

If you believe the error is not fixable at the prompt level (e.g., the persona selection guide itself has ambiguous language that any prompt would inherit), propose a guide-level edit instead. Guide edits are in-scope per discussion-questions.md Q10 — but document them separately and explicitly.

Save the refined prompt to: `findings/PR1_refined-orchestrator-prompt_iter{N}.md`
If a guide edit is also proposed, save a diff-style description to: `findings/PR1_guide-edit-proposals_iter{N}.md` — do NOT edit the guide file itself in this task; that is a separate user-approved step.

### Step 3: Re-Run All 20 Tests

For each of the 10 topics × 2 effort levels, spawn a generation subagent (same prompt harness as O1's generation subagent, with the refined prompt substituted). Save outputs to: `findings/PR1_runs/iter{N}/{topic}_{effort}.md`

Run in batches of 5 concurrent subagents.

### Step 4: Score and Decide

Spawn a scoring subagent (same scoring prompt as O1, with the refined prompt's outputs as input). Save report to: `findings/PR1_prompt-refinement_iter{N}.md`

Using the methodology.md accuracy targets, decide:

- **Thresholds met** (Tier 3 ≥ 80%, Connector/Analogist ≥ 90%, no systematic FP/FN patterns) → recommend stop; this iteration's refined prompt is the final output.
- **Thresholds not met AND iteration budget remaining** → recommend continue; start iteration {N+1} from this iteration's refined prompt.
- **Thresholds not met AND iteration budget exhausted** → escalate per Stop Criteria (see task file).
- **Regression vs. previous iteration** (accuracy dropped) → recommend rollback to the previous iteration's prompt and pick a different refinement lever.

### Output (for this iteration)

Record in `findings/PR1_prompt-refinement_iter{N}.md`:

- Refinement applied (before/after prompt text, or the guide-edit proposal)
- Rationale for choosing this lever over others
- New per-run scoring table (same columns as O1 scoring)
- New aggregate metrics vs. previous iteration (delta per metric)
- Error patterns still remaining
- Regression check (did any previously-correct cell flip to incorrect?)
- Stop/continue/rollback recommendation

## Constraints

- Minimal change per iteration. Large rewrites defeat the purpose of the iteration loop.
- Do NOT tune to specific topics — refinements must express general rules that any topic could trigger, not "if topic is X, select Y."
- Do NOT consult ground truth while authoring the refined prompt (ground truth is for scoring only). This is critical to avoid overfitting the prompt to the test set.
- Track regressions — a refinement that raises one metric by 5 percentage points while dropping another by 10 is a regression.
````

### Iteration Log

The user (or a lightweight automation loop) sequences iterations based on each iteration's stop/continue/rollback recommendation. The log is maintained at:

`findings/PR1_prompt-refinement.md`

with the structure:

```markdown
# PR1: Orchestrator Prompt Refinement — Iteration Log

## Starting Point
{winning O1 variant, baseline metrics}

## Iteration 1
{link to iter1 findings, refinement applied, metric delta, decision}

## Iteration 2
...

## Final Prompt
{link to final refined prompt}
{final aggregate metrics}
{residual errors documented as known limitations}
{guide edits proposed/applied}
```

### Stop Criteria

Accept the refined prompt as final when any of the following holds:

1. **Target met:** Tier 3 ≥ 80%, Connector/Analogist ≥ 90%, no systematic FP/FN patterns.
2. **Plateau:** Two consecutive iterations produce <2 percentage-point total improvement. Accept current state, document residuals as limitations.
3. **Iteration budget exhausted** (4 iterations complete): escalate to user per discussion-questions.md Q9. Options include accepting current state, editing the persona selection guide, or adding a human-in-the-loop orchestrator check.
4. **Regression with no recovery:** If iterations enter a cycle (refinement A raises metric X, refinement B raises metric Y while regressing X), document the tradeoff surface and escalate.

### Expected Output

- Per-iteration findings: `findings/PR1_prompt-refinement_iter{N}.md` (1 per iteration, up to 4)
- Per-iteration raw runs: `findings/PR1_runs/iter{N}/{topic}_{effort}.md` (20 per iteration)
- Per-iteration refined prompts: `findings/PR1_refined-orchestrator-prompt_iter{N}.md` (1 per iteration)
- Optional guide-edit proposals: `findings/PR1_guide-edit-proposals_iter{N}.md` (0 or more)
- **Final refined prompt:** `findings/PR1_refined-orchestrator-prompt.md` (copy of the final accepted iteration's prompt; this is the handoff to PI1)
- **Compiled iteration log:** `findings/PR1_prompt-refinement.md` (final accuracy benchmarks, iteration summary, residual limitations, any applied guide edits)

---

## Dependency Notes

- **Depends on:** O1 complete with a winning variant identified and refinement seeds documented; GT1 canonical (not provisional — PR1's iterations must be scored against stable ground truth to avoid moving-target noise).
- **Blocks:** PI1 (needs final refined prompt).
- **Data generation:** None required.
- **Sequencing:** Iterations run sequentially. Within an iteration, the 20 generation runs are parallelizable in batches of 5.

## Priority

**High** — Converts O1's empirical result into a usable orchestrator prompt. Required before Phase 4 format validation can proceed.

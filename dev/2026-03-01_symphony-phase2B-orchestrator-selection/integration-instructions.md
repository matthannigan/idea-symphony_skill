# Phase 2B Orchestrator Selection — Integration Instructions

**Date:** 2026-04-18
**Investigation:** `dev/2026-03-01_symphony-phase2B-orchestrator-selection/`
**Status:** READY FOR INTEGRATION (per PI1 verdict — 20/20 format compliance, 100% volume accuracy, 3-level trigger scheme validated).

This document tells the integrator exactly what to add to the Idea Symphony skill to ship the Phase 2B orchestrator. It's written as an instruction set, not a research report — all analysis lives in the investigation's `findings/` directory.

---

## TL;DR

1. **Create one new file:** `idea-symphony/references/prompts/phase2b-orchestrator-selection.md` — assembled from `findings/PR1_refined-orchestrator-prompt.md` + `findings/PI1_plan-md-template.md`.
2. **Insert one new step in `idea-symphony/SKILL.md` Phase 2B:** a new Step 2B.0 that runs the orchestrator before Step 2B.1 and writes the roster section into `PLAN.md`.
3. **Change Step 2B.1** to read the persona list from `PLAN.md` instead of the hardcoded 3/5 persona selection currently in place.
4. **Do NOT change Phase 2B at low effort.** The orchestrator is a medium/high-effort-only addition. Low-effort continues to use the existing generic flow.

---

## Source-of-truth artifacts (do not re-derive)

All content you'll be assembling already exists in the investigation's `findings/`:

| Artifact | Path | Purpose |
|---|---|---|
| Refined orchestrator prompt body | `findings/PR1_refined-orchestrator-prompt.md` | Steps 1–4 of the prompt + Inputs preamble — copy verbatim |
| Canonical PLAN.md template | `findings/PI1_plan-md-template.md` | Replaces PR1's "Output Format" block (pre-fills Category columns in Tier 2/Tier 3) |
| Authoritative volume ranges | `findings/PI1_plan-md-template.md` § "Effort-Level Volume Ranges" | Mirrors `persona-selection-guide_Phase2B.md` |
| Format checker (dev only, not shipped) | `findings/PI1_format-checker.md` | For regression runs and any future prompt iteration |

The PI1 validation report (`findings/PI1_plan-md-integration.md`) is the record of evidence behind the 3-level scheme, the pre-filled Category fix, and the placement recommendation. Read it only if you need to re-derive a decision.

---

## Step 1 — Create `phase2b-orchestrator-selection.md`

**Destination:** `idea-symphony/references/prompts/phase2b-orchestrator-selection.md`

**Assembly recipe:**

Create the file with four sections, in order:

### Section 1 — Preamble (copy from `PR1_refined-orchestrator-prompt.md`)

From `findings/PR1_refined-orchestrator-prompt.md`, copy the block starting at:

```
You are the Idea Symphony Phase 2B orchestrator. ...
```

and ending at the last line of Step 4 (`Assemble Steps 1–3 into the PLAN.md roster section below.`). This is approximately lines 15–131 of the refined-prompt file — from the "You are the Idea Symphony Phase 2B orchestrator" header through the end of "Step 4 — Document decisions in PLAN.md format."

Copy **verbatim**. No edits. This is the validated prompt text.

### Section 2 — Output Format (from `PI1_plan-md-template.md` — NOT from the refined-prompt file)

Replace what would have been the PR1 "Output Format" block with the canonical template from `findings/PI1_plan-md-template.md` § "Medium / High Effort Template." This is the only delta versus PR1: the Tier 2 and Tier 3 Category columns are pre-specified so the orchestrator doesn't invent ad-hoc labels (SD1 in the validation report).

Insert the full template block (the section titled "## Medium / High Effort Template" and its fenced `markdown` block), unchanged.

### Section 3 — Volume Ranges table

Copy the table from `findings/PI1_plan-md-template.md` § "Effort-Level Volume Ranges (authoritative)". Drop it under a heading `## Volume Ranges (refer to this table)` so the orchestrator can consult it while filling Volume Range cells.

### Section 4 — Low-Effort Note (short)

Append a short note:

```markdown
## Low Effort

This orchestrator is not invoked at low effort. Low effort uses a fixed Tier 1 roster with Analogist (no swap evaluation) and no Tier 3 specialists. Routing happens in SKILL.md, not here.
```

**That's the whole file.** No additional instructions, no meta-commentary. The orchestrator prompt self-contains its own output format.

---

## Step 2 — Edit `idea-symphony/SKILL.md`

Current Phase 2B jumps straight to Step 2B.1 with a hardcoded persona list (`SKILL.md` around lines 292–316). Add a new **Step 2B.0 — Orchestrator Persona Selection** before Step 2B.1, and revise Step 2B.1 to read the roster from `PLAN.md`.

### 2a. Insert Step 2B.0 before existing Step 2B.1

Add a new step heading immediately after the `#### Phase 2B: Persona-Based Question Generation (Medium/High Effort)` header and before `**Step 2B.1: Generate Questions (Parallel Subagents)**`. Proposed content:

```markdown
**Step 2B.0: Orchestrator Persona Selection (Medium/High Effort only)**

Spawn 1 orchestrator subagent to select the Tier 1 Connector/Analogist variant
and evaluate Tier 3 specialist triggers. It produces the Phase 2B roster
section of `PLAN.md`.

**Orchestrator instructions:** Use the prompt at
`[skill]/references/prompts/phase2b-orchestrator-selection.md`.

**Inputs the orchestrator receives:**
1. `[session]/REQUEST.md` — the topic body
2. `{EFFORT_LEVEL}` — medium or high (from Phase 1)
3. Reference: `[skill]/references/persona-selection-guide_Phase2B.md` —
   consulted only if the prompt directs (volume ranges are embedded in the
   prompt itself)

**Output:** the orchestrator appends / replaces the
`## Phase 2B: Question Generation Roster` section inside `[session]/PLAN.md`.
No other files are written at this step.

**Subagent Model:** Claude Opus (prefer most-capable; validation was run on
Opus).

**Quality Gate:** Before proceeding, verify `PLAN.md` contains:
- The `## Phase 2B: Question Generation Roster` header
- An Effort Level line matching the session's effort level
- A Tier 1 table with 10 personas (Connector substituted for Analogist if
  swapped)
- A Tier 2 table at high effort, or `N/A — medium effort` at medium
- A Tier 3 table OR the correct "None selected — …" sentinel
- A Selection Rationale block with structured fields (Trigger strength,
  Topic citation, Decision) for all four Tier 3 candidates and a
  Connector/Analogist swap rationale

If any of the above is missing, re-run Step 2B.0 rather than proceeding.
```

### 2b. Revise the existing Step 2B.1

Replace the hardcoded persona lists (currently):

```
- medium effort: The Questioner, The Analyst, The Audience Advocate
- high effort: The Questioner, The Analyst, The Audience Advocate, The Devil's Advocate, The First Principles Thinker
```

with a read from `PLAN.md`:

```markdown
Spawn one subagent per persona listed in the Phase 2B roster section of
`PLAN.md` (Tier 1 + Tier 2 if high effort + selected Tier 3). Each subagent
receives:
- Its persona file: `[skill]/references/personas/the-[persona-name].md`
- `[session]/REQUEST.md`
- Its target question volume from the roster's Volume Range column

Subagents work independently; isolation is essential for diversity.
```

The rest of Step 2B.1 (persona prompt reference, "each persona works independently," subagent model guidance) is unchanged.

### 2c. Update Step 2B.3 "Quality Gate" expected file counts

The existing gate expects `3 (medium) or 5 (high)` persona files. After integration, the count is variable: `10 Tier 1 + up to 1 Tier 3 (medium)` or `10 Tier 1 + 4 Tier 2 + up to 2 Tier 3 (high)`, minus any persona that failed to produce output. Replace the fixed counts with:

```markdown
Expected: one file per persona listed in the PLAN.md roster (Tier 1 +
Tier 2 at high effort + any selected Tier 3). If the count doesn't match,
Glob to find misplaced files; if still missing, log in PLAN.md Notes and
flag for the user.
```

### 2d. Do NOT touch Phase 2B-LOW / the low-effort generic branch

Low-effort Phase 2B already runs a single generic question-generation subagent (`phase2-question-generation-generic.md`) and does not use personas at all. The orchestrator is medium/high only. No changes needed for low effort.

---

## Step 3 — Test the integration

Before shipping:

1. **Sanity-regenerate one topic per effort level.** Pick any two topics from `test-runs/symphony-phase2-questions-persona-eval/` (e.g., food-truck high, habit-tracker medium). Run the new Phase 2B end-to-end in a scratch session. The orchestrator's PLAN.md output should structurally match the corresponding files in `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/PI1_runs/`.

2. **Run the format checker once.** Use `findings/PI1_format-checker.md` § "Quick-run summary template" against the PLAN.md you just produced. If all 8 items Pass (or Pass with minor Category-label Partial only), integration is good. If any Fail, the prompt or template assembly drifted from the source artifacts — re-check Step 1.

3. **Do NOT re-run all 20 validation runs as part of integration.** PI1 already locked structural compliance. Regression testing is the job of the skill's own test suite, not the integration task.

---

## Step 4 — Handle known residuals (document, don't fix)

Two items are documented-and-accepted, not integration blockers:

- **Gap 2 — mobile-app high Accountant selection.** The refined prompt produces `Accountant: none` where Canonical Rev 3 ground truth expects `moderate`. Resolution path is a guide edit to `persona-selection-guide_Phase2B.md`, not a prompt edit. Track as a separate follow-up investigation; see `findings/PR1_prompt-refinement.md` for why iter2 accepted this trade.
- **SD2 — mobile-app effort-invariance inconsistency on Connector/Analogist.** One cell in PI1; below systematic threshold. Watch in future regression runs.

Neither changes what you ship.

---

## Step 5 — Low-effort forward note

PI1 did not empirically validate low effort. The low-effort template in `findings/PI1_plan-md-template.md` § "Low Effort Template" is derived from the persona selection guide, not from direct test runs. SKILL.md's existing low-effort path already skips Phase 2B-personas entirely, so there's nothing to integrate today. If you later decide to add a Phase 2B roster section to `PLAN.md` even at low effort (for consistency across effort levels), populate the `{low range from guide}` placeholders from the current Effort Level Mapping and add at least one low-effort smoke-test run to the skill's regression suite.

---

## Summary of files touched

| File | Action |
|---|---|
| `idea-symphony/references/prompts/phase2b-orchestrator-selection.md` | **Create** — assembled from PR1 prompt + PI1 template |
| `idea-symphony/SKILL.md` Phase 2B section | **Edit** — insert Step 2B.0; revise Step 2B.1 persona list; revise Step 2B.3 count gate |
| `idea-symphony/references/persona-selection-guide_Phase2B.md` | **No change** (already finalized; the Gap 2 residual is a separate follow-up) |
| `idea-symphony/references/personas/*.md` | **No change** (orchestrator references existing persona files by name) |

Everything else the investigation produced — `findings/`, `ground-truth/`, `tasks/` — stays in `dev/` as the paper trail. None of it ships in the skill.

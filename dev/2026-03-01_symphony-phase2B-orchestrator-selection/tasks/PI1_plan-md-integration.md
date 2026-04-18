# Phase 2B Orchestrator Selection — PLAN.md Integration

**Date:** 2026-03-01
**Parent:** `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md`
**Inputs:**
- Parent methodology — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md` (Phase 4 requirements, Expected PLAN.md Roster Section template)
- Ground truth — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md`
- PR1 final refined prompt — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/PR1_refined-orchestrator-prompt.md`
- PR1 compiled log — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/PR1_prompt-refinement.md` (final accuracy benchmarks, residual limitations)
- Persona selection guide — `idea-symphony/references/persona-selection-guide_Phase2B.md` (Effort Level Mapping tables — volume ranges by effort)
- Idea Symphony SKILL — `idea-symphony/SKILL.md` (destination for the final orchestrator instructions) and `idea-symphony/references/prompts/` (alternative destination as a referenced prompt file)

---

## Background

### Context

PR1 produces a final refined orchestrator prompt that meets the accuracy thresholds. PI1 does two things **in a single pass** per `discussion-questions-responses.md` Q11 — the methodology.md Phase 4 sketch is treated as **provisional**, not final:

1. **Finalize the PLAN.md roster section format** — the methodology.md sketch is a starting point, not a final schema. PI1 identifies fields that are inconsistently populated or ambiguous across the 20 validation runs, proposes schema refinements, and locks a final format template. This is design + validation folded into one pass, not a separate design step.
2. **Validate consistent output** — re-run PR1's final prompt on all 20 topic-effort combinations and verify every output matches the finalized format structurally (all required tables present, all required rationale fields populated, format-checker passes).

This is the handoff step: the end artifact is a prompt + format template ready to drop into the Idea Symphony skill.

### What We Know

From methodology.md Phase 4 (treated as **provisional** per Q11):

**Starting-point PLAN.md Roster Section:**

```markdown
## Phase 2B: Question Generation Roster

**Effort Level:** [low/medium/high]

### Tier 1 Personas (always included)
| Persona | Category | Volume Range |
|---|---|---|
| Questioner | Analytical | [range per effort] |
...
| [Analogist or Connector] | Perspective | 5-8 |
...

### Tier 2 Personas (high effort only)
[Table if high effort, "N/A — medium/low effort" otherwise]

### Tier 3 Personas (orchestrator-selected)
[Table with selection rationale, or "None selected — no strong triggers for this topic"]

### Selection Rationale
**Connector/Analogist decision:** [decision + rationale]
**Tier 3 selections:** [rationale for each, or rationale for no selection]
```

Per Q12, the Selection Rationale section uses **structured fields**, not free-form prose. The finalized schema locked by PI1 must require the following fields per Tier 3 decision:

```
Tier 3 selections:
  - Persona: [Accountant | Lawyer | Politician | Technical Expert]
    Trigger strength: [strong | moderate | none]
    Topic citation: "[direct quote or close paraphrase from REQUEST.md]"
    Decision: [include | exclude]
Connector/Analogist decision: [Analogist | Connector]
  Swap rationale: [brief, grounded in REQUEST content]
Notes: [free-form, for genuinely ambiguous cases only — must NOT replace structured claims]
```

**Trigger-strength calibration:** The schema uses 3 levels (strong / moderate / none). If PI1 validation surfaces ≥2 cells where output consistently resists clean bucketing into these 3 levels, extend the schema to 4 levels by adding `moderate-weak`. Do not add the 4th level pre-emptively.

From the persona selection guide, the Effort Level Mapping tables specify volume ranges per persona per effort level. Those ranges must be faithfully populated in the Tier 1 and Tier 2 tables.

### Research Questions

- **RQ-PI1a (OQ5):** Does the final refined prompt produce PLAN.md roster sections that consistently match the canonical format across all 20 topic-effort combinations?
- **RQ-PI1b:** Are any format deviations systematic (e.g., the prompt reliably omits the "Effort Level" header) vs. random? Systematic deviations indicate a prompt fix; random deviations are format-checker concerns.
- **RQ-PI1c:** Does the proposed format (from methodology.md) need any adjustments based on what the prompt actually produces? E.g., should "Selection Rationale" require a specific field structure or remain free-form (see discussion-questions.md Q12)?
- **RQ-PI1d:** Where should the final prompt live — embedded in SKILL.md or as a referenced prompt file under `idea-symphony/references/prompts/`?
- **RQ-PI1e:** How should low effort be handled? Methodology.md focuses on medium/high; the PLAN.md format mentions low but no ground truth was established for low. Is a separate low-effort template needed?

---

## Investigation Task

### I-PI1: PLAN.md Format Validation and Finalization

**Key question:** Does PR1's final refined prompt consistently produce PLAN.md roster sections in the canonical format, and what is the final deliverable package for integration into the Idea Symphony skill?

**Research questions addressed:** RQ-PI1a–e (completes OQ5 from methodology.md)

**Execution model:** Two-step. (1) Regeneration — run PR1's final prompt across all 20 topic-effort combinations using the same generation harness as O1/PR1. (2) Format validation — a validation subagent checks each output against a format checklist and identifies any deviations. (3) Finalization — a synthesis subagent produces the final integration artifacts: canonical format template, format checklist, prompt-placement recommendation.

No new accuracy scoring is required — PR1 has already established that the prompt meets accuracy thresholds. PI1 focuses on format consistency and integration readiness.

### Test Data

No new data generation required. Inputs are:

1. PR1's final refined prompt (`findings/PR1_refined-orchestrator-prompt.md`)
2. 10 REQUESTs from `REQUESTS_ALL.md`
3. The proposed PLAN.md format from methodology.md Phase 4
4. The Effort Level Mapping tables from `persona-selection-guide_Phase2B.md`

### Regeneration Subagent Prompt

Spawn generation subagents (**Opus model**, `general-purpose` type) for each of the 20 topic-effort combinations, using the same harness as O1:

````
You are executing a consistency-validation test run for the Phase 2B orchestrator-selection investigation. Apply the final refined orchestrator prompt to the target topic at the target effort level and produce a PLAN.md roster section.

## Target Topic: {TOPIC_NAME}
## Target Effort Level: {EFFORT_LEVEL}  (medium | high)

## Inputs You Have Access To

- `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` — extract only the {TOPIC_NAME} request block.
- `idea-symphony/references/persona-selection-guide_Phase2B.md` — reference material. Access only if the prompt directs you to.

## Final Refined Prompt

{contents of findings/PR1_refined-orchestrator-prompt.md, verbatim}

## Output

Save to: `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/PI1_runs/{TOPIC_NAME}_{EFFORT_LEVEL}.md`

Produce only the PLAN.md roster section. No meta-commentary.
````

### Format Validation Subagent Prompt

After all 20 regeneration runs complete, spawn one validation subagent (**Opus model**, `general-purpose` type):

````
You are validating PLAN.md format consistency for the Phase 2B orchestrator-selection investigation. Read all 20 PLAN.md outputs produced by the final refined prompt and check each against a canonical format checklist.

## Task

Read:

1. `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md` — Phase 4 Expected PLAN.md Roster Section template
2. `idea-symphony/references/persona-selection-guide_Phase2B.md` — Effort Level Mapping tables (to verify volume ranges are correctly populated)
3. All 20 outputs under `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/PI1_runs/`

## Format Checklist

For each of the 20 runs, verify:

1. **Header:** `## Phase 2B: Question Generation Roster` present
2. **Effort Level line:** `**Effort Level:** {medium|high}` present and correct
3. **Tier 1 table:** present, all 10 Tier 1 personas listed (or 9 + Connector when swapped), Category column correct, Volume Range column matches Effort Level Mapping for the target effort
4. **Tier 2 table:** present at high effort with all 4 Tier 2 personas; explicitly marked "N/A — medium effort" at medium
5. **Tier 3 table:** present, with selected personas and rationale OR explicit "None selected — [rationale]"
6. **Selection Rationale — structured fields (per Q12):** for every Tier 3 persona decision, verify `Persona:`, `Trigger strength:` (one of strong/moderate/none, or moderate-weak if the 4-level extension was adopted), `Topic citation:` (non-empty, quoting REQUEST content), `Decision:` (include/exclude) are all present. For the Connector/Analogist line, verify `Connector/Analogist decision:` and `Swap rationale:` are both populated.
7. **Notes field usage:** the `Notes:` field is permitted but must not replace the structured fields. Flag any run where Notes contains rationale that should have been in `Topic citation:` or `Swap rationale:`.
8. **Volume Range accuracy:** each persona's volume range matches the Effort Level Mapping table for that effort level

The 8 items above supersede the 7-item checklist originally sketched in methodology.md — item 6 is split into "presence" and "structured field population," and item 7 (Notes usage) is added.

## Per-Run Validation Output

For each run, mark each checklist item as: Pass / Fail / Partial. For fails/partials, describe the deviation.

## Aggregate Metrics

- **Format compliance rate:** % of runs passing all 8 checklist items
- **Per-item compliance:** % of runs passing each checklist item individually (identifies systematic omissions)
- **Structured-field population rate:** % of Tier 3 decisions with all 4 fields (Persona, Trigger strength, Topic citation, Decision) populated
- **Trigger-strength distribution:** counts of `strong` / `moderate` / `none` (and `moderate-weak` if adopted) across all Tier 3 decisions — used to decide whether 4-level extension is warranted (threshold: ≥2 cells where bucketing is forced into an awkward level)
- **Volume accuracy rate:** % of persona-volume assignments matching the Effort Level Mapping

## Systematic vs. Random Deviations

- **Systematic** (3+ runs with same deviation): catalogue and recommend prompt or template fix
- **Random** (1–2 runs with idiosyncratic deviation): note as acceptable noise

## Format Refinement Proposals

Based on what the prompt actually produces:

- Are any template sections under-specified (consistent variations suggest ambiguity in the template)?
- Does the 3-level trigger-strength scheme (strong/moderate/none) need extension to 4 levels (adding `moderate-weak`)? Per Q12, adopt the 4th level only if ≥2 cells show awkward forced bucketing.
- Is the `Notes:` escape valve being used appropriately (only for genuinely ambiguous cases) or is it leaking rationale that belongs in the structured fields?
- Are there additional fields worth adding (e.g., "Confidence" per selection)?

## Output

Save to: `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/PI1_plan-md-integration.md`

Structure:

```markdown
# PI1: PLAN.md Integration — Format Validation

## Aggregate Metrics
{format compliance rate, per-item compliance, volume accuracy}

## Per-Run Validation Table
{one row per run with columns: topic, effort, items 1–7, overall}

## Systematic Deviations
{enumerated with fix recommendations}

## Random Deviations
{noted for completeness}

## Format Refinement Proposals
{any changes to the canonical template based on observed output}

## Verdict
{READY FOR INTEGRATION | REQUIRES FORMAT ADJUSTMENT | REQUIRES PROMPT FIX}
```
````

### Finalization Step

After the validation subagent returns, produce three integration artifacts:

1. **`findings/PI1_plan-md-template.md`** — the canonical PLAN.md roster section template, finalized based on validation results. Drop-in ready for SKILL.md or a referenced prompt file. Includes placeholder text showing the expected output for each section.

2. **`findings/PI1_format-checker.md`** — a reusable format checklist (the 7 items above, plus any additions from the validation step) that future test runs can use to self-verify PLAN.md output.

3. **Integration recommendation section** (appended to `findings/PI1_plan-md-integration.md`) — recommends whether the final orchestrator instructions should live:
   - Embedded directly in SKILL.md (compact, single-source, but bloats SKILL.md toward its 500-line soft cap),
   - As a referenced file at `idea-symphony/references/prompts/phase2b-orchestrator-selection.md` (mirrors the existing prompt-extraction pattern per CLAUDE.md),
   - Or split (short summary in SKILL.md + detailed instructions in a referenced file).
   Justify the choice based on the prompt's length and reusability.

### Low Effort Handling

Methodology.md and the downstream tasks focus on medium and high effort. Low effort does not use Tier 3 personas and does not require orchestrator judgment on Connector/Analogist (Analogist is always used at low effort, per the Effort Level Mapping). This task therefore:

- Does NOT re-run the 20 tests at low effort
- DOES produce a minimal low-effort PLAN.md template (all Tier 1 personas at low volumes, no Tier 2, no Tier 3, fixed Analogist, no selection rationale needed) as part of `PI1_plan-md-template.md`
- Flags in the Integration recommendation that low-effort has not been empirically validated by this investigation — any future regression risk lives with the skill's own test runs

### Batching Strategy

1. **Regeneration (parallel in batches of 5):** 20 generation runs, 4 batches of 5
2. **Validation (1 subagent):** after all 20 regenerations complete
3. **Finalization (1 subagent or human):** produces the 3 integration artifacts

### Expected Output

- **Raw regenerated runs:** `findings/PI1_runs/{topic}_{effort}.md` (20 files)
- **Validation report:** `findings/PI1_plan-md-integration.md`
- **Canonical template:** `findings/PI1_plan-md-template.md`
- **Format checker:** `findings/PI1_format-checker.md`

---

## Dependency Notes

- **Depends on:** PR1 final refined prompt (`findings/PR1_refined-orchestrator-prompt.md`); canonical ground truth (for spot-checking only — not used for scoring in this task); persona selection guide Effort Level Mapping (already finalized).
- **Blocks:** Integration into SKILL.md or referenced prompt file. That integration is a separate follow-up task outside this investigation.
- **Data generation:** None required.

## Priority

**Medium** — The final gate before integration into the Idea Symphony skill. Lower urgency than O1/PR1 because the core empirical work is complete once PR1 finalizes, but required before the orchestrator instructions can ship.

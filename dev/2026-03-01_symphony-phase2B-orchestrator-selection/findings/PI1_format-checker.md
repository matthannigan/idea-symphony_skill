# PI1 PLAN.md Format Checker — Phase 2B Roster

**Date:** 2026-04-18
**Purpose:** Reusable checklist for verifying that a generated Phase 2B Question Generation Roster section matches the canonical format. Use this on any future run of the orchestrator prompt (whether from a test harness, a live Symphony session, or a regression run).
**Companion:** `PI1_plan-md-template.md` (the canonical template this checker validates against).
**Scope:** Medium and high effort. Low effort has a simpler subset (no Tier 3, fixed Analogist, no Selection Rationale) — items 6 and 7 do not apply at low effort, and items 3 and 4 collapse to "all Tier 1 personas present at low volumes + Tier 2/Tier 3 marked N/A."

---

## The 8-Item Checklist

For each run, mark every item **Pass / Partial / Fail**. Partial requires a one-phrase description of the deviation.

### Item 1 — Header

The string `## Phase 2B: Question Generation Roster` appears exactly once, at the top of the roster block.

- **Pass:** Exact match.
- **Fail:** Missing, mis-cased, or wrong heading level.

### Item 2 — Effort Level line

The line `**Effort Level:** {medium | high}` is present and matches the target effort level for the run.

- **Pass:** Bolded label, exact value.
- **Fail:** Missing, wrong value, or unbolded.

### Item 3 — Tier 1 table

A markdown table headed `### Tier 1 Personas (always included)` with three columns (`Persona | Category | Volume Range`) and 10 rows.

- All 10 personas present: Questioner, Analyst, Devil's Advocate, Appreciative Inquirer, Audience Advocate, Systems Thinker, Provocateur, (Analogist OR Connector — not both), Visionary, Storyteller.
- Category column uses canonical labels: Analytical / Structural / Perspective. (See Tier 1 category map in `persona-selection-guide_Phase2B.md`.)
- Volume Range matches the Effort Level Mapping for the run's target effort.

- **Pass:** All three sub-checks hold.
- **Partial:** Personas and volumes correct but Category cell uses a non-canonical label on at least one row (cosmetic).
- **Fail:** Missing persona, wrong persona set, wrong volume range, or both Analogist AND Connector present / neither present.

### Item 4 — Tier 2 table (conditional on effort)

- **If effort = high:** A markdown table headed `### Tier 2 Personas (high effort only)` with all 4 Tier 2 personas (Constraint Flipper, Empath, First Principles Thinker, Futurist) and their high-effort volume ranges. Category column must use canonical labels (Constraint Flipper = Perspective; Empath / First Principles Thinker / Futurist = Structural).
- **If effort = medium:** The Tier 2 section must contain exactly the sentinel `N/A — medium effort` (or a close equivalent) and NO table.

- **Pass:** Matches the rule for the run's effort level.
- **Partial:** Table present with correct personas and volumes but Category cell uses a non-canonical label on at least one row.
- **Fail:** Table missing at high effort, table incorrectly present at medium effort, missing persona, or wrong volume range.

### Item 5 — Tier 3 table OR None-selected sentinel

A `### Tier 3 Personas (orchestrator-selected)` section containing EITHER:
- A table with one row per included persona, columns `Persona | Category | Volume Range | Trigger Strength`, with Category values matching the canonical Specialist labels (see `PI1_plan-md-template.md`) and Volume Range matching the Effort Level Mapping for Tier 3 personas, OR
- The exact sentinel line (no table) for a zero-selection run:
  - Medium: `None selected — no strong triggers for this topic`
  - High: `None selected — no triggers at or above moderate threshold for this topic`

- **Pass:** Table present with correct schema, OR sentinel present with the correct effort-specific wording.
- **Partial:** Sentinel present but with slightly different wording that still conveys the same fact; OR table present with correct personas/volumes but non-canonical Category label.
- **Fail:** Section missing; table present with wrong persona set; sentinel at medium that references "moderate threshold" (or vice versa).

### Item 6 — Selection Rationale structured fields

A `### Selection Rationale` section containing:

**Connector/Analogist block:**
- `**Connector/Analogist decision:**` present with value `Analogist (default)` or `Connector (swap)`.
- `Swap rationale:` sub-bullet populated (non-empty, grounded in REQUEST content).

**Four Tier 3 candidate blocks, one per persona (Accountant, Lawyer, Politician, Technical Expert), each with all four fields:**
- `Persona:` (matches the candidate)
- `Trigger strength:` ∈ `{strong, moderate, none}` — or `moderate-weak` only if the 4-level extension has been adopted
- `Topic citation:` non-empty. Accepted form when REQUEST has no relevant content: explicit absent form such as `(no financial content in REQUEST)` or equivalent parenthetical.
- `Decision:` ∈ `{include, exclude}`

- **Pass:** All blocks present with all required fields populated.
- **Partial:** All blocks present but one field populated with a placeholder that does not cite REQUEST content where REQUEST content does exist (e.g., `Topic citation: (none)` on a topic that plainly has relevant content).
- **Fail:** Missing Connector/Analogist block, missing one of the four Tier 3 candidate blocks, or omitting a required field on any block.

### Item 7 — Notes field usage

The `Notes:` field is permitted and encouraged for two uses only:
1. Deferred alternatives when the effort ceiling forced a pick (e.g., "Politician also qualified as strong; deferred per medium ceiling of 1").
2. Genuinely ambiguous edge cases that do not fit cleanly into any structured field.

When there is no deferral and no ambiguity, the field should read `—` (em dash) or be omitted.

- **Pass:** Notes is `—` / omitted when no deferral, OR contains legitimate deferral/ambiguity content.
- **Fail:** Notes contains rationale that should have appeared in `Topic citation:` or `Swap rationale:` (i.e., Notes is being used as a substitute for a structured field).

### Item 8 — Volume Range accuracy

Every persona's Volume Range cell (Tier 1, Tier 2, and Tier 3 where applicable) matches the Effort Level Mapping table for the run's target effort.

Authoritative reference: `PI1_plan-md-template.md` § "Effort-Level Volume Ranges (authoritative)" — mirrors `idea-symphony/references/persona-selection-guide_Phase2B.md`.

- **Pass:** 100% match across all persona rows.
- **Fail:** Any persona's volume range diverges from the mapping for the run's effort level.

---

## Aggregate Metrics (for batch validation)

When running the checker across a batch (e.g., 20 runs):

- **Format compliance rate:** `% of runs passing all 8 items (Pass only — Partial counts as Partial, not Pass)`. Report separately: `% passing OR Partial on all 8 items`.
- **Per-item compliance:** For each item 1–8, report `Pass / Partial / Fail` counts.
- **Structured-field population rate:** Across all Tier 3 candidate blocks (4 × number of runs), the percentage with all four required fields populated.
- **Trigger-strength distribution:** Counts of `strong / moderate / none` (and `moderate-weak` if the 4-level extension is adopted).
- **Volume accuracy rate:** Total volume assignments matching the Effort Level Mapping ÷ total assignments checked.

## Deviation classification

When a batch run surfaces failures or partials:

- **Systematic deviation** — the same deviation appears in **3 or more** runs. Log under "Systematic Deviations" with a recommended prompt or template fix.
- **Random deviation** — the deviation appears in **1–2 runs** with idiosyncratic details. Log under "Random Deviations" as accepted noise unless it co-occurs with a known content-reliability hotspot.

## When to revisit the trigger-strength scheme

Per PI1 Proposal 2, the 3-level scheme (`strong | moderate | none`) holds unless a batch shows **≥2 cells** with forced awkward bucketing (language like "barely moderate" or "between none and moderate" in the rationale, not cleanly fitting any level). If that threshold is crossed, extend to 4 levels by adding `moderate-weak` as documented in the methodology.

## When to revisit category labels

Per PI1 SD1, the Category column in Tier 2 and Tier 3 tables was pre-specified in `PI1_plan-md-template.md` to eliminate ad-hoc labels. If the checker observes ≥3 runs with non-canonical Category labels despite the pre-specified template, re-investigate whether the template's Category cells are being copied rather than regenerated — the checker should not need to excuse these deviations under the finalized template.

---

## Quick-run summary template

Copy this block when reporting a batch validation:

```
Batch: {n} runs
Full Pass (all 8 items Pass): {x}/{n} = {pct}%
Full Pass OR Partial (no Fails): {x}/{n} = {pct}%

Per-item breakdown:
  1 Header:              {pass}/{partial}/{fail}
  2 Effort Level:        {pass}/{partial}/{fail}
  3 Tier 1 table:        {pass}/{partial}/{fail}
  4 Tier 2 table:        {pass}/{partial}/{fail}
  5 Tier 3 table:        {pass}/{partial}/{fail}
  6 Structured fields:   {pass}/{partial}/{fail}
  7 Notes usage:         {pass}/{partial}/{fail}
  8 Volume accuracy:     {pass}/{partial}/{fail}

Trigger-strength distribution (Tier 3 decisions):
  strong: {n}   moderate: {n}   none: {n}   moderate-weak: {n}

Volume accuracy: {matches}/{total} = {pct}%
Structured-field population: {blocks_complete}/{total_blocks} = {pct}%

Systematic deviations: {count}
Random deviations: {count}
```

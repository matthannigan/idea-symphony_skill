# PI1 Canonical PLAN.md Roster Template — Phase 2B

**Date:** 2026-04-18
**Source prompt:** `findings/PR1_refined-orchestrator-prompt.md` (PR1 iter2 refined prompt)
**Validation:** `findings/PI1_plan-md-integration.md` (20/20 runs pass all 8 format checklist items)
**Template change from refined prompt's Output Format:** Tier 2 and Tier 3 table Category columns are now pre-specified (Proposal 1 from validation report), resolving the sole systematic deviation (SD1) observed in 8/20 runs. No other changes.

This file is the drop-in template for the Idea Symphony skill. It replaces the "Output Format" block inside the refined prompt. Medium and high effort both use this template; the low-effort variant is a simpler subset documented at the bottom.

---

## Medium / High Effort Template

The orchestrator produces ONLY the markdown block below. No preamble, no meta-commentary, no reasoning trace outside the structured rationale block.

````markdown
## Phase 2B: Question Generation Roster

**Effort Level:** {medium | high}

### Tier 1 Personas (always included)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Questioner | Analytical | [range per effort] |
| Analyst | Analytical | [range per effort] |
| Devil's Advocate | Structural | [range per effort] |
| Appreciative Inquirer | Structural | [range per effort] |
| Audience Advocate | Structural | [range per effort] |
| Systems Thinker | Structural | [range per effort] |
| Provocateur | Perspective | [range per effort] |
| [Analogist or Connector] | Perspective | 5-8 |
| Visionary | Perspective | [range per effort] |
| Storyteller | Perspective | [range per effort] |

### Tier 2 Personas (high effort only)

{If effort = high, populate the table exactly as below. If effort = medium, REPLACE the table with the single line: `N/A — medium effort`.}

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Constraint Flipper | Perspective | 5-8 |
| Empath | Structural | 8-12 |
| First Principles Thinker | Structural | 7-10 |
| Futurist | Structural | 8-12 |

### Tier 3 Personas (orchestrator-selected)

{If zero Tier 3 personas meet the effort threshold, REPLACE the table with the correct sentinel:
- Medium: `None selected — no strong triggers for this topic`
- High: `None selected — no triggers at or above moderate threshold for this topic`

Otherwise, include one row per selected persona, using the canonical Category labels below.}

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|--------------|------------------|
| Accountant | Specialist (financial) | 8-12 | [strong \| moderate] |
| Lawyer | Specialist (regulatory) | 8-10 | [strong \| moderate] |
| Politician | Specialist (governance) | 8-10 | [strong \| moderate] |
| Technical Expert | Specialist (architecture) | 8-10 | [strong \| moderate] |

### Selection Rationale

**Connector/Analogist decision:** [Analogist (default) | Connector (swap)]
- Swap rationale: [1–2 sentences citing REQUEST content that meets or fails criterion (a) or (b); if Analogist, briefly note why (b) does not apply]
- Effort-invariance check: [confirm the decision would be the same at the opposite effort level]

**Tier 3 selections — structured rationale per candidate persona:**

For EACH of Accountant, Lawyer, Politician, Technical Expert (in that order), produce a block with all four fields populated. Fields MUST use the exact labels shown.

- Persona: Accountant
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase from REQUEST; if the REQUEST has no relevant content, write the explicit absent form: `(no financial content in REQUEST)`]"
  - Decision: [include | exclude]

- Persona: Lawyer
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase; explicit absent form allowed]"
  - Decision: [include | exclude]

- Persona: Politician
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase; explicit absent form allowed]"
  - Decision: [include | exclude]

- Persona: Technical Expert
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase; explicit absent form allowed]"
  - Decision: [include | exclude]

**Notes:** [Deferred alternatives when the effort-ceiling forced a pick (e.g., "Politician also qualified as strong; deferred per medium ceiling of 1"), OR genuinely ambiguous cases that did not fit the structured fields. Use `—` if the call was clean. Do NOT use Notes as a substitute for Topic citation, Trigger strength, or Swap rationale.]
````

---

## Trigger-Strength Scheme

**3 levels: `strong | moderate | none`.**

Validated across 80 Tier 3 decisions (20 runs × 4 candidates) — zero cells required an intermediate level. A 4-level extension (`moderate-weak`) is NOT adopted; the threshold for adoption (≥2 cells with forced awkward bucketing) was not met.

If future test runs surface ≥2 cells where bucketing is genuinely forced, revisit this decision per PI1 task § "Format Refinement Proposals."

---

## Effort-Level Volume Ranges (authoritative)

Matches `idea-symphony/references/persona-selection-guide_Phase2B.md` Effort Level Mapping.

| Tier | Persona | Medium | High |
|---|---|---|---|
| 1 | Questioner | 10-15 | 15-20 |
| 1 | Analyst | 10-15 | 10-15 |
| 1 | Devil's Advocate | 8-12 | 10-15 |
| 1 | Appreciative Inquirer | 8-12 | 8-12 |
| 1 | Audience Advocate | 10-15 | 10-15 |
| 1 | Systems Thinker | 10-15 | 10-15 |
| 1 | Provocateur | 5-8 | 5-8 |
| 1 | Analogist / Connector | 5-8 | 5-8 |
| 1 | Visionary | 5-8 | 5-8 |
| 1 | Storyteller | 5-8 | 5-8 |
| 2 | Constraint Flipper | N/A | 5-8 |
| 2 | Empath | N/A | 8-12 |
| 2 | First Principles Thinker | N/A | 7-10 |
| 2 | Futurist | N/A | 8-12 |
| 3 | Accountant | 8-12 | 8-12 |
| 3 | Lawyer | 8-10 | 8-10 |
| 3 | Politician | 8-10 | 8-10 |
| 3 | Technical Expert | 8-10 | 8-10 |

---

## Low Effort Template (not empirically validated by PI1)

Low effort does not use Tier 2 personas, does not use Tier 3 personas, and does not require orchestrator judgment on the Connector/Analogist swap (Analogist is fixed at low effort per the Effort Level Mapping). No selection rationale is needed.

> **Empirical-validation caveat:** PI1 did NOT re-run the 20-topic validation at low effort — the investigation scope was medium and high. The template below is derived from the Effort Level Mapping and the low-effort rules in `persona-selection-guide_Phase2B.md`, not from direct validation. Future regression risk at low effort is managed by the skill's own test runs, not by PI1.

````markdown
## Phase 2B: Question Generation Roster

**Effort Level:** low

### Tier 1 Personas (always included)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Questioner | Analytical | {low range from guide} |
| Analyst | Analytical | {low range from guide} |
| Devil's Advocate | Structural | {low range from guide} |
| Appreciative Inquirer | Structural | {low range from guide} |
| Audience Advocate | Structural | {low range from guide} |
| Systems Thinker | Structural | {low range from guide} |
| Provocateur | Perspective | {low range from guide} |
| Analogist | Perspective | {low range from guide} |
| Visionary | Perspective | {low range from guide} |
| Storyteller | Perspective | {low range from guide} |

### Tier 2 Personas (high effort only)

N/A — low effort

### Tier 3 Personas (orchestrator-selected)

N/A — low effort (Tier 3 specialists not evaluated below medium)

### Selection Rationale

N/A — low effort (Analogist is fixed; no Tier 3 selection required)
````

(Populate the low-effort Tier 1 volume ranges from the Effort Level Mapping at the time of skill integration — PI1 does not lock low-effort volumes because low-effort ranges were out of scope for this investigation.)

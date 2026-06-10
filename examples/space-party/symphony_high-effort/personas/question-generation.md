---
project-name: "Space-Themed 5th Birthday Party Planning"
session-dir: "test-runs/space-party/high"
datetime: 2026-04-26T04:00:00Z
effort: "high"
stage: "Phase 2 Step 2.1: Question Generation Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Question Generation Personas

## Tier 1 Personas (always included)

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Questioner | Analytical | 15-20 | Synthesize |
| Analyst | Analytical | 10-15 | Synthesize |
| Devil's Advocate | Structural | 10-15 | Synthesize |
| Appreciative Inquirer | Structural | 8-12 | Synthesize |
| Audience Advocate | Structural | 10-15 | Synthesize |
| Systems Thinker | Structural | 10-15 | Synthesize |
| Provocateur | Perspective | 5-8 | Append |
| Analogist | Perspective | 5-8 | Append |
| Visionary | Perspective | 5-8 | Append |
| Storyteller | Perspective | 5-8 | Append |

## Tier 2 Personas (`high` effort only)

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Constraint Flipper | Perspective | 5-8 | Append (3-5 round-robin) |
| Empath | Structural | 8-12 | Synthesize |
| First Principles Thinker | Structural | 7-10 | Synthesize |
| Futurist | Structural | 8-12 | Synthesize |

## Tier 3 Personas (orchestrator-selected)

None selected — no triggers at or above moderate threshold for this topic

## Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: A 5th-birthday party for 11 children is bounded event planning within a single household/host system — there are no distinct institutional or stakeholder systems whose constraints must be reconciled, so criterion (b) does not apply. This matches the explicit negative swap example "Bounded event planning (birthday party)."
- Effort-invariance check: Confirmed — this decision would be Analogist at medium as well, since topic structure is unchanged by effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Budget-friendly options"
  - Decision: exclude

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "Safety considerations"
  - Decision: exclude

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "(no governance, coalition, or institutional-change content in REQUEST)"
  - Decision: exclude

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no engineering, hardware, ML, or systems-architecture content in REQUEST)"
  - Decision: exclude

**Notes:** — (Birthday-party trap explicitly excludes Accountant via "budget-friendly" frugality framing; "Safety considerations" lacks a named regulatory framework so falls to Devil's Advocate territory; no political or technical-architecture content in REQUEST.)

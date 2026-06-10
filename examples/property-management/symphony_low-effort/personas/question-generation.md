---
project-name: "Short-Term Rental Property Management Company"
session-dir: "test-runs/property-management/low"
datetime: 2026-02-24T05:00:00Z
effort: "low"
stage: "Phase 2 Step 2.1: Question Generation Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Question Generation Personas

## Tier 1 Personas (always included)

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Questioner | Analytical | 10-15 | Synthesize |
| Analyst | Analytical | 8-12 | Synthesize |
| Devil's Advocate | Structural | 8-12 | Synthesize |
| Appreciative Inquirer | Structural | 8-12 | Synthesize |
| Audience Advocate | Structural | 8-12 | Synthesize |
| Systems Thinker | Structural | 8-12 | Synthesize |
| Provocateur | Perspective | 5-8 | Append |
| Analogist | Perspective | 5-8 | Append |
| Visionary | Perspective | 5-8 | Append |
| Storyteller | Perspective | 5-8 | Append |

## Tier 2 Personas (`high` effort only)

N/A — low effort

## Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Lawyer | Specialist (regulatory) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: This is a single business (one property-management company) navigating its operating environment — regulation, community politics, and unit economics are facets of one hospitality operation, not distinct institutional systems being reconciled across organizations. Criterion (b) does not apply: there are multiple stakeholders (owners, guests, neighbors, council, HOAs) but only one decision-making system (the company). The guidance file uses property-management explicitly as a negative-swap example.
- Effort-invariance check: Decision would be identical at medium/high — topic-structure determines this, not effort.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: strong
  - Topic citation: "Financial modeling: management fee structure, break-even per property, seasonal cash flow"; "$80K combined savings for startup costs"; "percentage of booking revenue"
  - Decision: exclude (deferred — see Notes)

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "city recently passed new STR regulations with registration requirements and occupancy taxes"; "state legislature considering statewide preemption of local STR bans"; "homeowner associations in several target neighborhoods have their own STR restrictions"; "Liability structure: guest injuries, property damage, contractor negligence"; "Contract design with property owners (liability allocation, termination clauses, insurance requirements)"
  - Decision: include

- Persona: Politician
  - Trigger strength: strong
  - Topic citation: "Engaging with the political process around STR regulation (city council, HOA boards)"; "city council election in 6 months with STR regulation as a key issue"; "Significant tension between STR advocates... and opponents"
  - Decision: exclude (deferred — see Notes)

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: (no genuine technical architecture content in REQUEST — service business with no hardware/ML/systems-architecture decisions)
  - Decision: exclude

**Notes:** Three strong Tier 3 triggers (Accountant, Lawyer, Politician) on this topic; the low-effort ceiling of 1 forces a single pick. Selected Lawyer because regulatory/compliance content is the most broadly anchored axis across REQUEST — five of nine Key Considerations name legal/regulatory mechanisms (liability, contracts, tax compliance, zoning, insurance) and the topic spans three regulatory regimes (city STR ordinance, state preemption, HOA restrictions). Accountant and Politician deferred as alternatives — both would qualify at medium/high effort.

---
project-name: "Short-Term Rental Property Management Company"
session-dir: "test-runs/property-management/med"
datetime: 2026-02-24T05:00:00Z
effort: "medium"
stage: "Phase 2 Step 2.1: Question Generation Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Question Generation Personas

## Tier 1 Personas (always included)

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Questioner | Analytical | 10-15 | Synthesize |
| Analyst | Analytical | 10-15 | Synthesize |
| Devil's Advocate | Structural | 8-12 | Synthesize |
| Appreciative Inquirer | Structural | 8-12 | Synthesize |
| Audience Advocate | Structural | 10-15 | Synthesize |
| Systems Thinker | Structural | 10-15 | Synthesize |
| Provocateur | Perspective | 5-8 | Append |
| Analogist | Perspective | 5-8 | Append |
| Visionary | Perspective | 5-8 | Append |
| Storyteller | Perspective | 5-8 | Append |

## Tier 2 Personas (`high` effort only)

N/A — medium effort

## Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Lawyer | Specialist (regulatory) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: The REQUEST describes a single business operation (the property-management company) navigating its operating environment — regulation, community politics, and its own finances are facets of one hospitality operation, not distinct institutional systems being reconciled. This matches the negative swap example "A single business operation navigating regulation + community politics + its own finance" verbatim. Criterion (b) does not apply: there is one decision-making system (the company) interfacing with stakeholders, not multiple institutional systems whose constraints must be reconciled with one another.
- Effort-invariance check: Confirmed — this decision would be identical at high effort; topic structure is unchanged by effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: strong
  - Topic citation: "Financial modeling: management fee structure, break-even per property, seasonal cash flow"; "$80K combined savings for startup costs"; "percentage of booking revenue"; "5-10 properties in year one, targeting 30-50 by year three"
  - Decision: exclude

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "city STR ordinance limits permits per neighborhood zone, requires noise monitoring, and mandates local contact person within 30-minute response time; state legislature considering statewide preemption of local STR bans; homeowner associations in several target neighborhoods have their own STR restrictions"; "Liability structure: guest injuries, property damage, contractor negligence"; "Contract design with property owners (liability allocation, termination clauses, insurance requirements)"; "Tax compliance across municipal occupancy tax, state sales tax, and federal income reporting"
  - Decision: include

- Persona: Politician
  - Trigger strength: strong
  - Topic citation: "Significant tension between STR advocates ... and opponents"; "city council election in 6 months with STR regulation as a key issue"; "Engaging with the political process around STR regulation (city council, HOA boards)"; "Positioning the company as a 'good neighbor' operation vs. absentee management stereotype"
  - Decision: exclude

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: (no hardware/ML/systems-architecture content in REQUEST)
  - Decision: exclude

**Notes:** Three strong Tier 3 triggers (Accountant, Lawyer, Politician) qualified, but the medium ceiling of 1 forces a single pick. Selected Lawyer because the REQUEST devotes the most surface to multi-jurisdictional regulatory architecture (city STR ordinance + HOA restrictions + potential state preemption + multi-layer tax compliance + liability allocation in owner contracts + insurance regimes), and the stated goal "navigates the complex regulatory and community landscape" leads with the regulatory facet. Politician deferred (strong) — the political/coalition dimension is real (city council election, HOA engagement, "good neighbor" positioning) but is partly covered by Audience Advocate and Devil's Advocate, and the brainstorming need is to design the company, not to assemble a coalition. Accountant deferred (strong) — financial architecture is core, but most of the REQUEST's financial mentions are unit-economics consequences of the regulatory and operational design that Lawyer-led inquiry will surface; Devil's Advocate, Analyst, and Systems Thinker will pressure-test the financial dimension at medium effort.

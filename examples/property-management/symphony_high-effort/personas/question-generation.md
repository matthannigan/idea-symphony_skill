---
project-name: "Short-Term Rental Property Management Company"
session-dir: "test-runs/property-management/high"
datetime: 2026-02-24T05:00:00Z
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

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Lawyer | Specialist (regulatory) | 8-10 | Synthesize | strong |
| Politician | Specialist (governance) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: This is a single hospitality business navigating its operating environment — STR ordinance, HOA restrictions, community politics, and finance are facets of one property-management operation, not distinct institutional systems being reconciled across boundaries. Criterion (b) does not apply: the city, HOAs, owners, and community are stakeholders around one decision-making system (the company), not multiple systems whose interoperability must be designed.
- Effort-invariance check: Confirmed — the same Analogist call would hold at medium effort, since the topic structure (single business, multi-stakeholder operating environment) is unchanged by effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: strong
  - Topic citation: "Financial modeling: management fee structure, break-even per property, seasonal cash flow" and "$80K combined savings for startup costs" with revenue as "a percentage of booking revenue"
  - Decision: exclude

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "city recently passed new STR regulations with registration requirements and occupancy taxes... city STR ordinance limits permits per neighborhood zone, requires noise monitoring, and mandates local contact person within 30-minute response time; state legislature considering statewide preemption... homeowner associations... have their own STR restrictions" plus "Tax compliance across municipal occupancy tax, state sales tax, and federal income reporting" and "Contract design with property owners (liability allocation, termination clauses, insurance requirements)"
  - Decision: include

- Persona: Politician
  - Trigger strength: strong
  - Topic citation: "Engaging with the political process around STR regulation (city council, HOA boards)... Significant tension between STR advocates... and opponents... city council election in 6 months with STR regulation as a key issue" plus "Positioning the company as a 'good neighbor' operation"
  - Decision: include

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: (no genuine technical-architecture content in REQUEST — "noise monitoring" appears only as a compliance requirement, not as a sensor/ML system to be designed)
  - Decision: exclude

**Notes:** Accountant also qualified as strong; deferred per high-effort ceiling of 2. The two selected (Lawyer, Politician) are most central to the stated goal of "navigates the complex regulatory and community landscape," whose REQUEST content is unusually dense (named ordinance specifics, multi-jurisdiction tax architecture, contract design with legal stakes, imminent city-council election). The financial dimension is real and distinctive but covered in part by Tier 1 Devil's Advocate / Systems Thinker / Pragmatic Tier 2 personas; the regulatory and political dimensions have less natural coverage in T1/T2.

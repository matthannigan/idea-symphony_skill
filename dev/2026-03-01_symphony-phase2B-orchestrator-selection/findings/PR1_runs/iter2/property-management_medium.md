## Phase 2B: Question Generation Roster

**Effort Level:** medium

### Tier 1 Personas (always included)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Questioner | Analytical | 10-15 |
| Analyst | Analytical | 10-15 |
| Devil's Advocate | Structural | 8-12 |
| Appreciative Inquirer | Structural | 8-12 |
| Audience Advocate | Structural | 10-15 |
| Systems Thinker | Structural | 10-15 |
| Provocateur | Perspective | 5-8 |
| Analogist | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

N/A — medium effort

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|-------------|------------------|
| Lawyer | Domain | 8-10 | strong |

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: Property management in a single coastal city is one hospitality operation navigating its operating environment (regulation + community politics + finance). These are facets of one business, not distinct institutional systems being reconciled, so criterion (a) fails. Criterion (b) also fails: although multiple stakeholders exist (owners, guests, neighbors, city council, HOAs), they interact with a single business rather than requiring referrals/safeguards/consent frameworks designed *across* distinct institutional systems. Effort-invariance check: the same Analogist decision holds at high effort — this is a topic-structure property, not an effort-level one.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: strong
- Topic citation: "Financial modeling: management fee structure, break-even per property, seasonal cash flow" and "Full-service management ... for a percentage of booking revenue" with "$80K combined savings for startup costs"
- Decision: exclude (deferred — medium ceiling of 1 already used by Lawyer). Q1b gating test is satisfied: financial architecture (fee structure, break-even per property, seasonal cash flow, startup capital) is a core decision axis of the business design, not a background bullet; removing the financial content would materially change the central question.

- Persona: Lawyer
- Trigger strength: strong
- Topic citation: "new city STR ordinance limits permits per neighborhood zone, requires noise monitoring, and mandates local contact person within 30-minute response time; state legislature considering statewide preemption of local STR bans; homeowner associations in several target neighborhoods have their own STR restrictions" plus "Contract design with property owners (liability allocation, termination clauses, insurance requirements)"
- Decision: include. Named statutory regime (STR ordinance) with permit-per-zone caps, a pending state preemption layer, and HOA restrictions — multi-jurisdiction regulatory strategy to *design*, plus contract/liability architecture. This is compliance architecture, not routine operating-environment permits for a single small business, so the Q3 permits trap does not apply.

- Persona: Politician
- Trigger strength: strong
- Topic citation: "city council election in 6 months with STR regulation as a key issue" and "Engaging with the political process around STR regulation (city council, HOA boards)" with "Significant tension between STR advocates ... and opponents"
- Decision: exclude (deferred — medium ceiling of 1 already used by Lawyer). Governance/coalition mechanics are central (not ambient) — council election cycle, HOA boards, and opposition coalition are decision-process politics the brainstorming must address.

- Persona: Technical Expert
- Trigger strength: none
- Topic citation: (no citation — REQUEST contains no engineering tradeoffs, hardware/software co-design, or ML/AI architecture; "noise monitoring" is a compliance requirement, not a systems-architecture decision)
- Decision: exclude

**Notes:** Three strong Tier 3 triggers qualified (Lawyer, Accountant, Politician), exceeding the medium ceiling of 1. Lawyer was chosen as most central to the stated brainstorming goal because the named STR ordinance with permit-per-zone caps, the pending state preemption layer, HOA-level restrictions, and the contract/liability architecture together form the structural constraint on which both the financial model (which properties can be taken on in which zones at what insurance cost) and the political strategy (which ordinance outcomes to advocate for) depend. Deferred alternatives for an expanded or high-effort run: (1) Accountant — management fee structure, break-even per property, seasonal cash flow, $80K startup runway; (2) Politician — council election coalition politics, HOA board engagement, "good neighbor" positioning.

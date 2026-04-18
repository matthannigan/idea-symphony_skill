## Phase 2B: Question Generation Roster

**Effort Level:** high

### Tier 1 Personas (always included)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Questioner | Analytical | 15-20 |
| Analyst | Analytical | 10-15 |
| Devil's Advocate | Structural | 10-15 |
| Appreciative Inquirer | Structural | 8-12 |
| Audience Advocate | Structural | 10-15 |
| Systems Thinker | Structural | 10-15 |
| Provocateur | Perspective | 5-8 |
| Analogist | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Constraint Flipper | Perspective | 5-8 |
| Empath | Perspective | 8-12 |
| First Principles Thinker | Analytical | 7-10 |
| Futurist | Perspective | 8-12 |

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|-------------|------------------|
| Accountant | Domain | 8-12 | moderate |

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: Habit-tracker is a single-product UX design task — one product serving one user system. There are multiple stakeholders/facets (users, solo dev/small team, monetization) but these are facets of ONE product system, not distinct institutional/stakeholder systems whose constraints must be reconciled. Criterion (b) does not apply because no multi-institutional or multi-system interoperability is being designed; there is a single product and a single user base. Effort-invariance check: this decision would be identical at medium effort — the topic structure is the same regardless of effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: moderate
  - Topic citation: "Monetization without undermining user experience"
  - Decision: include
  - Rationale: Monetization design is a named business-model dimension of the brainstorming need (revenue model for a product in a crowded competitive market), not a consumer-spending frugality concern. It does not name a specific financial mechanism (no pricing tiers, unit economics, or named revenue streams cited), so strength is moderate rather than strong. Not a hobby/birthday-party trap — this is genuine revenue-model design for a commercial product.

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "Data privacy and user trust"
  - Decision: exclude
  - Rationale: The REQUEST names "data privacy" as a consideration but cites no specific regulatory framework (GDPR, CCPA, HIPAA, etc.) or compliance regime. Generic privacy/trust concerns without named statutes are Devil's Advocate territory, not a Lawyer trigger.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "[no governance, coalition, or institutional-politics content in REQUEST]"
  - Decision: exclude
  - Rationale: No stakeholder politics, governance structure, coalition building, or institutional-change decisions. The solo-developer / small-team context is organizational management, not stakeholder politics.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "leaning toward modern JS framework + cloud backend"; "Technical architecture for scalability"
  - Decision: exclude
  - Rationale: Direct false-positive trap per the checklist — "modern JS framework" and "cloud backend" keywords alone are explicitly NOT Technical Expert triggers. No hardware/ML/sensor-fusion/embedded or power-latency-accuracy tradeoffs. Standard web-app architecture for a CRUD-style product is product-engineering scope handled by Systems Thinker and Analyst, not the Technical Expert persona.

**Notes:** — (only one Tier 3 candidate qualified at or above moderate; ceiling of 2 not reached, no deferred alternatives.)

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
| Constraint Flipper | Tier 2 | 5-8 |
| Empath | Tier 2 | 8-12 |
| First Principles Thinker | Tier 2 | 7-10 |
| Futurist | Tier 2 | 8-12 |

### Tier 3 Personas (orchestrator-selected)

None selected — no triggers at or above moderate threshold for this topic

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: Habit-tracker is a single-product UX design problem — one product, one user community, no distinct constraining systems needing reconciliation. The REQUEST lists differentiation, behavioral science, privacy, monetization, and technical architecture as parallel considerations within a single product domain, not as interacting systems that structurally constrain each other. This matches the guide's "single-product UX design (habit-tracker)" example for keeping Analogist.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Monetization without undermining user experience"
- Decision: exclude
- Note: Monetization is named as a consideration but no specific financial mechanism (pricing model, unit economics, revenue stream architecture, cash-flow modeling) is specified. Generic "monetization" in a consumer-product context without specified financial structure does not meet the depth requirement.

- Persona: Lawyer
- Trigger strength: none
- Topic citation: "Data privacy and user trust"
- Decision: exclude
- Note: No specific regulatory framework (GDPR, CCPA, HIPAA, COPPA) is named. "Data privacy" as a generic user-trust concern without a compliance regime is Devil's Advocate territory, not a Lawyer trigger.

- Persona: Politician
- Trigger strength: none
- Topic citation: [no political/governance content in REQUEST]
- Decision: exclude
- Note: Solo developer / small team context with no coalition building, governance design, multi-stakeholder conflict, or institutional politics.

- Persona: Technical Expert
- Trigger strength: none
- Topic citation: "leaning toward modern JS framework + cloud backend" and "Technical architecture for scalability"
- Decision: exclude
- Note: Explicit false-positive trap per the checklist — "Modern JS framework, cloud backend, mobile app keywords alone are NOT triggers." This is a standard web-app stack with no hardware/ML/embedded/signal-processing decisions. "Technical architecture for scalability" is generic web-app engineering, not the kind of architectural tradeoff space (power/latency/accuracy, sensor fusion, on-device ML) that the Technical Expert is scoped for.

**Notes:** —

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

None selected — no triggers at or above moderate threshold for this topic

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: Habit-tracker is a single-product UX design problem — one product system with multiple facets (UX, retention, monetization, tech stack, privacy) rather than distinct institutional/stakeholder systems that must interoperate. Criterion (a) fails (no distinct constraining systems being reconciled) and criterion (b) fails (no multi-institutional interoperation — users, team, and codebase are facets of one product, not separate institutional systems with their own logic requiring cross-system referrals or consent frameworks). This is the "single-product UX design (habit-tracker)" negative-swap example verbatim. Effort-invariant.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Monetization without undermining user experience" (listed as one of five Key Considerations alongside differentiation, behavioral science, privacy, and technical architecture)
- Decision: exclude
- Rationale: Q1 surface match on "monetization" but Q1b gating test fails — if financial content is removed from the REQUEST, the central brainstorming question (how to design a differentiated habit-tracker via thoughtful UX and behavioral science) remains fully intact. Monetization is a background concern, not a core decision axis. Q2 fails as well: no dollar content, no unit-economics structure, no named revenue streams, no runway math — generic monetization mention only. Q3 product-strategy trap applies directly: this is a habit-tracker REQUEST listing monetization as one concern among feature/UX/retention bullets, which the prompt explicitly identifies as product management with a financial surface, not an Accountant trigger.

- Persona: Lawyer
- Trigger strength: none
- Topic citation: "Data privacy and user trust"
- Decision: exclude
- Rationale: No named regulatory framework (GDPR, HIPAA, CCPA, etc.) and no compliance architecture to design. Privacy appears as a user-trust/product-values concern, which per Q2 is Devil's Advocate territory, not Lawyer. Q3 generic-safety/liability trap applies.

- Persona: Politician
- Trigger strength: none
- Topic citation: (no relevant citation — REQUEST contains no stakeholder-politics, governance, or coalition content)
- Decision: exclude
- Rationale: No coalition building, voter approval, governance design, institutional-change politics, or multi-stakeholder conflict. Solo developer / small team context is organizational management at most, and even that is not surfaced as a decision axis.

- Persona: Technical Expert
- Trigger strength: none
- Topic citation: "Open to recommendations; leaning toward modern JS framework + cloud backend" and "Technical architecture for scalability"
- Decision: exclude
- Rationale: Q3 trap applies verbatim — "Modern JS framework," "cloud backend," and "mobile app" keywords alone are NOT triggers. This is a standard web-app product with no hardware, ML/AI system architecture, sensor fusion, power/latency/accuracy tradeoffs, or embedded/signal-processing decisions. "Technical architecture for scalability" is generic product-engineering concern, not genuine architecture-design brainstorming. Web/mobile product topic without hardware/ML/systems-architecture is the named Technical Expert false-positive pattern.

**Notes:** —

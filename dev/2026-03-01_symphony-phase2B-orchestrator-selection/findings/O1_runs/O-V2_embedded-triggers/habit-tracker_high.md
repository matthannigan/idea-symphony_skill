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
| Constraint Flipper | Perspective | 5-8 (append 3-5) |
| Empath | Perspective | 8-12 |
| First Principles Thinker | Analytical | 7-10 |
| Futurist | Perspective | 8-12 |

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|-------------|------------------|
| Accountant | Analytical | 8-12 | Moderate |

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: The topic is a single-domain consumer web product (habit-tracker app). While it involves several facets (UX, behavioral science, monetization, tech architecture), these are facets of one coherent product domain, not distinct mutually-constraining systems. No bridging across genuinely separate institutional or disciplinary boundaries is required, so the swap criteria are not met.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: moderate
- Topic citation: "Monetization without undermining user experience" and the Goals statement calling for "a sustainable engagement model" in a crowded competitive market with established competitors (Habitica, Streaks, HabitBull).
- Decision: include
- Reasoning: Monetization model design is a meaningful secondary dimension — the REQUEST explicitly frames sustainable business model as a key consideration, and the competitive context implies pricing/revenue model choices (freemium, subscription, one-time, ads) will shape the product. This is not central financial architecture (no unit economics, pricing strategy, or cash-flow modeling named), so the trigger is moderate rather than strong. At high effort with moderate threshold, this qualifies for inclusion.

- Persona: Lawyer
- Trigger strength: none
- Topic citation: "Data privacy and user trust" is listed as a key consideration.
- Decision: exclude
- Reasoning: The REQUEST mentions data privacy as a concern but names no specific regulatory framework (no GDPR, CCPA, COPPA, HIPAA, etc.) and no liability structure or compliance architecture. Per the embedded false-positive guidance, generic privacy/trust concerns without specific regulatory frameworks are Devil's Advocate territory, not Lawyer. Systems Thinker and Audience Advocate will also cover trust dynamics.

- Persona: Politician
- Trigger strength: none
- Topic citation: No content in the REQUEST involves coalition building, governance structures, multi-stakeholder institutional conflict, or voter/political dynamics.
- Decision: exclude
- Reasoning: This is a solo-developer consumer product launch. No political or governance dimension is present.

- Persona: Technical Expert
- Trigger strength: none
- Topic citation: "Tech Stack: Open to recommendations; leaning toward modern JS framework + cloud backend" and "Technical architecture for scalability."
- Decision: exclude
- Reasoning: Per the embedded false-positive guidance, topics mentioning "modern JS framework" and "cloud backend" without genuine engineering-tradeoff depth are NOT Technical Expert triggers. The REQUEST does not name deep architectural decisions (no ML architecture, sensor fusion, hardware/software co-design, or power/latency tradeoffs). Scalability here reads as standard web-app concern, adequately covered by Analyst and Systems Thinker.

**Notes:** Clean call. One moderate Tier 3 trigger (Accountant) included under the high-effort 0-2 ceiling. The "Technical architecture for scalability" phrase was the closest candidate for a second Tier 3 slot, but the false-positive trap for generic web-stack keywords governs and it was correctly excluded.

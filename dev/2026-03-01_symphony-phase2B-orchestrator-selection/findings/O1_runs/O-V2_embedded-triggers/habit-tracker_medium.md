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
| Provocateur | Perspective | 5 |
| Analogist | Perspective | 5 |
| Visionary | Perspective | 5 |
| Storyteller | Perspective | 5 |

### Tier 2 Personas (high effort only)

N/A — medium effort

### Tier 3 Personas (orchestrator-selected)

None selected — no strong triggers for this topic

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: The topic is a single-domain consumer web app (habit tracking). While it has several facets (UX, behavioral science, privacy, monetization, tech architecture), these are all sub-dimensions of one product domain rather than distinct, mutually-constraining systems that require bridging. This is explicitly a "single-domain topic with several facets" — not a swap case.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Monetization without undermining user experience"
- Decision: exclude
- Reasoning: Monetization is listed as one of five key considerations, but the REQUEST names no specific unit economics, revenue model, pricing strategy, budget structure, or cash-flow mechanism. Generic "monetization" as a design concern is not a strong Accountant trigger.

- Persona: Lawyer
- Trigger strength: none
- Topic citation: "Data privacy and user trust"
- Decision: exclude
- Reasoning: The REQUEST names no specific regulatory framework (no GDPR, CCPA, HIPAA, COPPA, etc.), no liability structure, no licensing regime. "Data privacy and user trust" as a general concern is Audience Advocate / Devil's Advocate territory, not a Lawyer trigger.

- Persona: Politician
- Trigger strength: none
- Topic citation: (no relevant content)
- Decision: exclude
- Reasoning: Nothing in the REQUEST names coalition building, governance, institutional change, or multi-stakeholder political dynamics. Solo-developer consumer web app.

- Persona: Technical Expert
- Trigger strength: none
- Topic citation: "leaning toward modern JS framework + cloud backend" / "Technical architecture for scalability"
- Decision: exclude
- Reasoning: These are exactly the generic "modern JS framework" / "cloud backend" / "tech stack" keywords called out as a false-positive trap. No genuine engineering tradeoffs (sensor fusion, ML architecture, power/latency tradeoffs, hardware/software co-design) are named. Scalability is a standard concern for any web app, not a Technical-Expert-level architecture problem.

**Notes:** Clean call. At medium effort with a solo-developer consumer web app in a crowded market, the Tier 1 roster covers the full problem space (differentiation, behavioral science, privacy, monetization, architecture) without needing a Tier 3 specialist. None of the four Tier 3 candidates reaches the STRONG threshold required at medium effort.

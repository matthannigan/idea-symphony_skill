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
| Constraint Flipper | Structural | 5-8 |
| Empath | Perspective | 8-12 |
| First Principles Thinker | Analytical | 7-10 |
| Futurist | Perspective | 8-12 |

### Tier 3 Personas (orchestrator-selected)

None selected — no triggers at or above moderate threshold for this topic.

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: This is a single-domain topic (one product, one team, one codebase being simplified). There are no distinct, mutually constraining systems that need to be reconciled or bridged — the challenge is feature-prioritization and user-communication within one product. Analogist is the right fit for drawing on simplification/product-focus analogies from other domains; Connector's cross-system bridging is not needed.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Runway: 8 months of funding remaining"
- Decision: exclude
- Reasoning: The REQUEST mentions runway as context but does NOT name unit economics, revenue models, pricing strategy, budget structure, cash-flow modeling, or capital allocation as a primary dimension. The brainstorming goals are about feature selection and user communication, not financial architecture. Runway is a timing constraint, not a financial-structure-central topic.

- Persona: Lawyer
- Trigger strength: none
- Topic citation: (no regulatory content in REQUEST)
- Decision: exclude
- Reasoning: The REQUEST names no regulatory frameworks, statutes, licensing regimes, or compliance architectures. No liability structure is discussed. Nothing triggers Lawyer.

- Persona: Politician
- Trigger strength: none
- Topic citation: "How to communicate the simplification to existing users without triggering churn"; "Team morale and the psychology of 'killing your darlings'"
- Decision: exclude
- Reasoning: User communication and team morale are not stakeholder politics in the Politician sense. There is no coalition building, voter approval, governance structure, institutional merger, or multi-stakeholder political conflict. This is change management within a small product team, which is Empath + Storyteller + Audience Advocate territory.

- Persona: Technical Expert
- Trigger strength: none
- Topic citation: "Technical debt implications of removing deeply integrated features"; "Tech Stack... modern JS framework + cloud backend" (from broader context); "Product: Social fitness app"
- Decision: exclude
- Reasoning: The false-positive trap explicitly calls out "mobile app" and "technical debt" as NOT sufficient triggers. Genuine Technical Expert triggers require deep engineering-tradeoff content — ML model architecture, sensor fusion, hardware/software co-design, power/latency/accuracy tradeoffs, etc. The technical-debt consideration here is about code cleanup after feature removal, which is product-engineering hygiene that Systems Thinker and First Principles Thinker can handle. No genuine architecture decision is named.

**Notes:** All four Tier 3 candidates evaluated cleanly against the embedded rules — none met even the moderate threshold required at high effort. The topic is fundamentally a product-strategy and change-management problem rather than a regulatory, financial, political, or deep-technical one, so the Tier 1 + Tier 2 roster (14 personas) is sufficient and the 0-2 Tier 3 ceiling is not exercised.

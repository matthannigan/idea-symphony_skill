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
- Swap rationale: The topic is a single-domain consumer event (a 5-year-old's birthday party). There are no distinct, mutually-constraining systems that need bridging or reconciliation — just facets (activities, decorations, logistics, budget, safety) of one coherent planning problem. Default Analogist is appropriate for generating cross-domain comparisons (e.g., museum programming, classroom circle time) without requiring system-level integration.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Budget-friendly options" (listed under Key Considerations)
- Decision: exclude
- Reason: This is consumer-spending-style budgeting for a birthday party, not financial-structure-central content. The embedded false-positive trap explicitly names this case ("'budget-friendly' as a consumer-spending concern, e.g., birthday party, is NOT an Accountant trigger"). No unit economics, revenue, or organizational finance is at stake.

- Persona: Lawyer
- Trigger strength: none
- Topic citation: "Safety considerations"
- Decision: exclude
- Reason: The REQUEST mentions general safety for 5-year-olds with no regulatory framework, licensing regime, or liability structure named. The embedded false-positive trap explicitly routes "safety concerns without specific regulatory frameworks" to Devil's Advocate rather than Lawyer.

- Persona: Politician
- Trigger strength: none
- Topic citation: (no relevant content)
- Decision: exclude
- Reason: No coalition building, governance structure, institutional change, or multi-stakeholder political conflict is present. This is a family planning task.

- Persona: Technical Expert
- Trigger strength: none
- Topic citation: (no relevant content)
- Decision: exclude
- Reason: No engineering tradeoffs, hardware/software co-design, or deep-tech architecture decisions. A children's birthday party has no technical architecture dimension.

**Notes:** Clean call — straightforward Tier 1 roster with no Tier 3 additions. The REQUEST's mentions of "budget-friendly" and "safety considerations" are both named as false-positive traps in the embedded rules, and both correctly route to Tier 1 personas (Analyst for budget reasoning; Devil's Advocate for safety/risk) rather than warranting Tier 3 specialists.

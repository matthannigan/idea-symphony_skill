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
| Connector | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Constraint Flipper | Perspective | 5-8 |
| Empath | Structural | 8-12 |
| First Principles Thinker | Structural | 7-10 |
| Futurist | Structural | 8-12 |

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|-------------|------------------|
| Accountant | Tier 3 | 8-12 | moderate |

### Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The mobile-app feature-pruning decision sits at the intersection of structurally linked but distinct stakeholder systems — users (including small but passionate sub-bases), team capacity (6 engineers + 1 designer + 1 PM, burned out), runway (8 months of funding), and a deeply integrated 15-feature codebase. The REQUEST frames the reconciliation across these systems (e.g., "Technical debt implications of removing deeply integrated features," "communicate the simplification to existing users without triggering churn," "team morale and the psychology of killing your darlings") as the brainstorming need, which matches swap criterion (b) "multi-stakeholder product systems where user needs, team capacity, runway, and codebase are structurally linked constraints."
- Effort-invariance check: The same swap would hold at medium effort — the topic-structure argument does not depend on persona-count headroom. Confirmed invariant.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: moderate
  - Topic citation: "Runway: 8 months of funding remaining" and the framing of feature-pruning under a fixed runway with a 6-engineer team
  - Decision: include

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: (no regulatory or compliance framework named in REQUEST)
  - Decision: exclude

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "Team morale and the psychology of 'killing your darlings'" / "how to communicate the simplification to existing users without triggering churn"
  - Decision: exclude — these are organizational management and user communication, not stakeholder politics or governance design (explicit trap).

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "Technical debt implications of removing deeply integrated features"
  - Decision: exclude — product-strategy technical-debt framing on a mobile-app feature-pruning topic is an explicit false-positive trap; no engineering tradeoffs, hardware/ML, or systems architecture decisions are named.

**Notes:** —

---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
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
| Connector | Perspective | 5-8 | Append |
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

None selected — no triggers at or above moderate threshold for this topic

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST defines the brainstorming need as reconciling four structurally linked but distinct constraint systems — user base ("180K downloads, 8% 30-day retention," "Overwhelming"), team capacity ("6 engineers, 1 designer, 1 PM; team is burned out"), runway ("8 months of funding remaining"), and codebase ("Technical debt implications of removing deeply integrated features"). The persona-selection guidance explicitly cites "Multi-stakeholder product systems where user needs, team capacity, runway, and codebase are structurally linked constraints" as a positive Connector trigger.
- Effort-invariance check: This is a topic-structure decision; the same swap would apply at medium effort.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "8 months of funding remaining"
  - Decision: exclude
  - Rationale: Runway appears as a single background constraint, not as a financial decision axis. The brainstorming goal is feature prioritization ("Identify the 3-4 features that represent the app's true core value"), not pricing, unit economics, or revenue-model design. Removing the financial content would not change the central question. Product-strategy trap (Q3) applies.

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "(no regulatory or compliance content in REQUEST)"
  - Decision: exclude
  - Rationale: No named statutes, regulatory frameworks, or compliance regimes; consumer-app simplification with no legal-architecture dimension.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "Team morale and the psychology of 'killing your darlings'" and "How to communicate the simplification to existing users without triggering churn"
  - Decision: exclude
  - Rationale: Q3 trap fires explicitly — "team morale" and "communicating change to users" are organizational management / user communication, not stakeholder coalition politics, governance design, or institutional change.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "Technical debt implications of removing deeply integrated features"
  - Decision: exclude
  - Rationale: Q3 trap fires explicitly — "technical debt" in a mobile-app feature-pruning context is product management, not hardware/ML/systems architecture. The "mobile app" keyword alone is not a trigger.

**Notes:** —

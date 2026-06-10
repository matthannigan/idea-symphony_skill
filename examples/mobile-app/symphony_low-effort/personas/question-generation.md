---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-02-24T05:00:00Z
effort: "low"
stage: "Phase 2 Step 2.1: Question Generation Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Question Generation Personas

## Tier 1 Personas (always included)

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Questioner | Analytical | 10-15 | Synthesize |
| Analyst | Analytical | 10-15 | Synthesize |
| Devil's Advocate | Structural | 8-12 | Synthesize |
| Appreciative Inquirer | Structural | 8-12 | Synthesize |
| Audience Advocate | Structural | 10-15 | Synthesize |
| Systems Thinker | Structural | 10-15 | Synthesize |
| Provocateur | Perspective | 5-8 | Append |
| Connector | Perspective | 5-8 | Append |
| Visionary | Perspective | 5-8 | Append |
| Storyteller | Perspective | 5-8 | Append |

## Tier 2 Personas (`high` effort only)

N/A — low effort

## Tier 3 Personas (orchestrator-selected)

None selected — no strong triggers for this topic

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: REQUEST presents a multi-stakeholder product system whose constraints are structurally linked — user base (180K downloads, 8% retention), team capacity (6 engineers burned out), runway (8 months), and codebase ("technical debt implications of removing deeply integrated features") must be reconciled together. Matches positive swap criterion (b): "Multi-stakeholder product systems where user needs, team capacity, runway, and codebase are structurally linked constraints."
- Effort-invariance check: Same decision would hold at medium and high — the multi-system structure of the topic is independent of effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Runway: 8 months of funding remaining"
  - Decision: exclude
  - Rationale: Runway appears as background constraint, not the decision axis. Removing financial content would not change the central brainstorming question (which 3-4 features are core). Falls under the product-strategy trap: financial surface on a product-management problem.

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "(no regulatory content in REQUEST)"
  - Decision: exclude
  - Rationale: No named statutes, compliance regimes, or regulatory architecture mentioned.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "Team morale and the psychology of 'killing your darlings'" / "How to communicate the simplification to existing users without triggering churn"
  - Decision: exclude
  - Rationale: Trap-check explicitly excludes team morale and user-communication as Politician triggers — these are organizational management, not stakeholder politics or governance design.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "Technical debt implications of removing deeply integrated features"
  - Decision: exclude
  - Rationale: Trap-check explicitly excludes "technical debt" in a product-strategy context (mobile-app feature pruning) as a Technical Expert false positive — this is product management, not architecture design.

**Notes:** —

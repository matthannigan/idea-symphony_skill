---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-02-24T05:00:00Z
effort: "medium"
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

N/A — medium effort

## Tier 3 Personas (orchestrator-selected)

None selected — no strong triggers for this topic

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST presents a multi-stakeholder product system whose constraints — overwhelmed users, a burned-out 6-engineer/1-designer/1-PM team, 8 months of runway, and deeply integrated technical debt — are structurally linked and must be reconciled rather than treated as facets of one homogeneous operation. This matches positive swap example (b): "Multi-stakeholder product systems where user needs, team capacity, runway, and codebase are structurally linked constraints."
- Effort-invariance check: Confirmed — the same swap would apply at high effort; the structural-systems analysis is independent of effort.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "8 months of funding remaining"
  - Decision: exclude
  - Rationale: Runway appears as a single background constraint, not a core decision axis. Removing all financial content from the REQUEST does not change the central brainstorming question ("which 3-4 features represent the app's true core value"). No pricing model, unit economics, or revenue architecture is being designed — Q1b's gating test fails (product-strategy trap).

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "(no regulatory or compliance content in REQUEST)"
  - Decision: exclude
  - Rationale: No named statutory regime, regulatory framework, liability architecture, or compliance design is mentioned.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "Team morale and the psychology of 'killing your darlings'"; "How to communicate the simplification to existing users without triggering churn"
  - Decision: exclude
  - Rationale: Q3 trap fires explicitly — "team morale" and "communicating change to users" are organizational management and product communications, not stakeholder politics, coalition assembly, or governance design.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "Technical debt implications of removing deeply integrated features"
  - Decision: exclude
  - Rationale: Q3 trap fires explicitly — "technical debt" in a mobile-app feature-pruning context is product management, not hardware/ML/systems architecture. No architectural decisions (engineering tradeoffs, ML system design, sensor fusion, embedded/signal-processing) are at stake.

**Notes:** —

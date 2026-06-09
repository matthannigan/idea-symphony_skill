---
project-name: "Food Truck Startup and Expansion Strategy"
session-dir: "test-runs/food-truck/med"
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
| Analogist | Perspective | 5-8 | Append |
| Visionary | Perspective | 5-8 | Append |
| Storyteller | Perspective | 5-8 | Append |

## Tier 2 Personas (`high` effort only)

N/A — medium effort

## Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Accountant | Specialist (financial) | 8-12 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: Single business navigating its operating environment (permits, pricing, competition, one municipal regulator). Matches the documented negative swap example ("Single-domain business strategy (food-truck — one business navigating permits, pricing, competition)"). Criterion (b) does not apply: city council, commissary, and food-truck association are facets of one operating environment, not distinct institutional systems that must be reconciled through designed linkages.
- Effort-invariance check: Same decision would apply at high effort — topic structure is unchanged by effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: strong
  - Topic citation: "Pricing strategy and unit economics (food cost ratios, break-even analysis)... $60K savings + potential $40K SBA microloan... Whether to pursue the SBA loan or bootstrap more conservatively"
  - Decision: include

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "city requires food truck permits, commissary kitchen use, and designated vending zones"
  - Decision: exclude

- Persona: Politician
  - Trigger strength: strong
  - Topic citation: "city council is currently debating new food truck ordinances... how to engage with the regulatory process... Building relationships with city officials and the local food truck association"
  - Decision: exclude

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no systems/hardware/ML architecture content in REQUEST; equipment financing is a financial question, not architecture)"
  - Decision: exclude

**Notes:** Politician also qualified as strong; deferred per medium ceiling of 1. Accountant selected over Politician because the stated brainstorming goal ("clear pricing strategy, unit economics, and a realistic path from single truck to multi-revenue-stream operation") centers on financial architecture; regulatory engagement is a key consideration but a secondary axis. Lawyer excluded via operating-environment-permits trap (food-truck permits are the canonical trap example).

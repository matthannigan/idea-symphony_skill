---
project-name: "Food Truck Startup and Expansion Strategy"
session-dir: "test-runs/food-truck/high"
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
| Analogist | Perspective | 5-8 | Append |
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

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Accountant | Specialist (financial) | 8-12 | Synthesize | strong |
| Politician | Specialist (governance) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: The topic is a single small business navigating its operating environment — permits, pricing, competition, and a local regulatory debate are facets of ONE business-system, not distinct institutional systems that must be reconciled. Criterion (b) does not apply: there are stakeholders (city council, food truck association, customers) but no structural linkage across multiple institutional systems that the founder must design. This matches the explicit negative-swap example for food trucks.
- Effort-invariance check: The same Analogist-keep decision would hold at medium effort; the topic's single-system structure does not change with effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: strong
  - Topic citation: "Pricing strategy and unit economics (food cost ratios, break-even analysis)"; "$60K savings + potential $40K SBA microloan"; "Equipment financing vs. leasing tradeoffs"
  - Decision: include

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "city requires food truck permits, commissary kitchen use, and designated vending zones"
  - Decision: exclude

- Persona: Politician
  - Trigger strength: strong
  - Topic citation: "city council is currently debating new food truck ordinances"; "Building relationships with city officials and the local food truck association"; "how to engage with the regulatory process"
  - Decision: include

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: (no technical architecture content in REQUEST)
  - Decision: exclude

**Notes:** —

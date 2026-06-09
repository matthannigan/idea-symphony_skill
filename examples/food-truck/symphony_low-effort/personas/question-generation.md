---
project-name: "Food Truck Startup and Expansion Strategy"
session-dir: "test-runs/food-truck/low"
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
| Analogist | Perspective | 5-8 | Append |
| Visionary | Perspective | 5-8 | Append |
| Storyteller | Perspective | 5-8 | Append |

## Tier 2 Personas (`high` effort only)

N/A — low effort

## Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Accountant | Specialist (financial) | 8-12 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: The REQUEST describes a single business navigating its operating environment — permits, pricing, competition, seasonal demand, capital. These are facets of one hospitality operation, not distinct institutional systems being reconciled. Food-truck is the canonical negative swap example per the skill guidance. Criterion (b) does not apply because there are multiple stakeholders (city officials, association, competitors, customers) within one decision-making system, not two-or-more institutional systems with their own logic that must interoperate.
- Effort-invariance check: Same decision at medium/high — topic structure, not effort, drives this call.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: strong
  - Topic citation: "Pricing strategy and unit economics (food cost ratios, break-even analysis)... Starting Capital: $60K savings + potential $40K SBA microloan... Equipment financing vs. leasing tradeoffs"
  - Decision: include

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "city requires food truck permits, commissary kitchen use, and designated vending zones"
  - Decision: exclude

- Persona: Politician
  - Trigger strength: moderate
  - Topic citation: "The pending city ordinance changes and how to engage with the regulatory process... Building relationships with city officials and the local food truck association"
  - Decision: exclude

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no technical architecture content in REQUEST)"
  - Decision: exclude

**Notes:** Accountant clears Q1b's gating test — financial architecture (unit economics, break-even math, capital structure, SBA-vs-bootstrap decision, equipment financing) is the central decision axis; removing it would change the brainstorming question. Lawyer is the explicit operating-environment-permits trap (single small business, routine licensing, not compliance architecture design). Politician was moderate — coalition work around the pending ordinance is a named consideration but auxiliary to the core business-strategy decision, not the axis the decision hinges on; deferred per low-effort ceiling of strong-only. Technical Expert has no qualifying content (commercial kitchen equipment ≠ systems architecture).

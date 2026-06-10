---
project-name: "Community Tool Lending Library"
session-dir: "test-runs/tool-library/med"
datetime: 2026-02-18T05:00:00Z
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

None selected — no strong triggers for this topic

## Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: This is a single-community initiative — one neighborhood nonprofit with diverse members and multiple stakeholder facets, but only one institutional/decision-making system in play. Per the negative-example list: "tool library — one community, multi-stakeholder is NOT multi-system." There are no distinct constraining institutional systems whose constraints must be reconciled across one another, so (b) does not apply.
- Effort-invariance check: Confirmed — the topic-structure decision would be the same at high effort.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Small neighborhood nonprofit with modest budget" / "Tool maintenance and replacement costs"
  - Decision: exclude
  - Rationale: Budget and maintenance costs appear as background operational constraints, not as core financial-architecture decisions to design. No revenue model, pricing strategy, unit economics, or capital allocation mechanism is named. Q1b gating test fails: removing financial content would not change the central question (designing a sustainable lending library) — financial sustainability is one of several co-equal goals alongside volunteer sustainability, equitable access, and community buy-in.

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "Liability and safety concerns"
  - Decision: exclude
  - Rationale: Generic liability/safety mention with no named regulatory framework, statute, or compliance regime — this is Devil's Advocate territory, not Lawyer territory. The operating-environment-permits trap also applies: any waivers/insurance/permits that arise are routine compliance constraints for one small operation, not multi-jurisdictional regulatory architecture to design.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "Building community buy-in and participation"
  - Decision: exclude
  - Rationale: Community buy-in here is stakeholder engagement / outreach — closer to the "communicating change to users / team morale" trap than to coalition assembly, governance design, or institutional politics. There is no decision-process politics, no voter approval, and no multi-stakeholder governance structure being designed. Audience Advocate and Appreciative Inquirer (Tier 1) cover the community-engagement dimension.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no technical-architecture content in REQUEST)"
  - Decision: exclude
  - Rationale: No engineering tradeoffs, hardware/software design, ML/AI architecture, or systems-architecture decisions present. The "tools" in this topic are physical hand and power tools, not technical systems.

**Notes:** —

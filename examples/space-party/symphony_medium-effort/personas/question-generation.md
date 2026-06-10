---
project-name: "Space-Themed 5th Birthday Party Planning"
session-dir: "test-runs/space-party/med"
datetime: 2026-04-26T04:00:00Z
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
- Swap rationale: REQUEST describes a bounded event-planning topic (one family hosting one birthday party for 11 children) with no distinct constraining institutional systems that must be reconciled — criterion (b) does not apply because there are no multiple institutional/stakeholder systems whose constraints interact. This matches the listed negative example "Bounded event planning (birthday party)."
- Effort-invariance check: Confirmed — the topic structure is identical at high effort; the same Analogist decision would apply.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Budget-friendly options"
  - Decision: exclude
  - Rationale: This is the explicit birthday-party / hobby-topic trap from Q3 — "budget-friendly" here means frugal consumer choices for a party, not financial architecture, unit economics, or revenue models. Q1b gating fails: removing the budget consideration would not change the central brainstorming need (a fun, age-appropriate party).

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "Safety considerations"
  - Decision: exclude
  - Rationale: Generic "safety considerations" with no named regulatory framework, statute, or compliance regime is Devil's Advocate territory, not Lawyer. The brainstorming need is not to design regulatory strategy.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "(no governance/coalition/multi-stakeholder political content in REQUEST)"
  - Decision: exclude
  - Rationale: The REQUEST is a single-family event with no coalition building, governance design, or multi-stakeholder political mechanism. Parent and child stakeholders are organizational/logistical, not political.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no technical-architecture content in REQUEST)"
  - Decision: exclude
  - Rationale: No engineering, hardware/software, ML, or systems-architecture decisions are present. The topic is bounded family event planning.

**Notes:** —

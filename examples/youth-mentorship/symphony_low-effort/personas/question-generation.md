---
project-name: "Youth Mentorship Program for At-Risk Teens"
session-dir: "test-runs/youth-mentorship/low"
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

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Lawyer | Specialist (regulatory) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST involves designing referrals, consent, and safeguards that must reconcile distinct institutional systems — a faith-based community organization, school counselors, the juvenile justice system, volunteer-management/insurance frameworks, and parental/guardian frameworks for minors. This matches criterion (b): multiple institutional/stakeholder systems whose linkages (referral pathways, consent across juvenile-justice records, mandatory-reporting flow) must be designed across them, not within one system. Per the prompt's explicit positive example ("mentorship spanning faith org + schools + juvenile justice + volunteer management"), this is a Connector topic.
- Effort-invariance check: This decision would be identical at medium or high effort because it is a topic-structure decision, not a depth decision.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "$15K seed grant from a regional foundation, plus in-kind support from the church (meeting space, administrative staff)"
  - Decision: exclude
  - Rationale: Funding is named as background context, not as a core decision axis. The brainstorming goal is safety-and-effectiveness program design; if the financial content were removed from the REQUEST the central question would not change. No unit-economics, pricing, revenue-model, or capital-allocation design is requested. Q1b gating test fails.

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "Background check requirements and disqualifying criteria for volunteers; Mandatory reporting obligations and training for mentors; Liability insurance and organizational legal protections; Parental/guardian consent frameworks; Boundaries and safety protocols for one-on-one interactions with minors; Data privacy for minors, especially those referred through juvenile justice"
  - Decision: include
  - Rationale: Multiple named compliance regimes (mandatory-reporter law, juvenile-justice records privacy, minor-protection frameworks, liability/insurance architecture) sit at the center of the brainstorming need. The REQUEST is explicitly asking for design of regulatory strategy across these regimes, not ambient liability concerns. USER-QUESTIONS Q1, Q3, Q4, Q5 reinforce that compliance architecture is the dominant decision axis.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "(no governance/coalition-building content in REQUEST)"
  - Decision: exclude
  - Rationale: Multiple stakeholders are present (faith org, schools, juvenile justice, parents, foundation) but the brainstorming decision does not hinge on coalition assembly, voter approval, governance design, or institutional-change politics. Multi-stakeholder presence is not the same as stakeholder-politics decision-making. Per Q3 trap check, this is operational coordination, not Politician territory.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no technical-architecture content in REQUEST)"
  - Decision: exclude
  - Rationale: No engineering tradeoffs, hardware/software co-design, ML/AI architecture, or systems-architecture decisions are present. Outcome measurement is mentioned but as a program-evaluation concern, not a technical-architecture brainstorming need.

**Notes:** —

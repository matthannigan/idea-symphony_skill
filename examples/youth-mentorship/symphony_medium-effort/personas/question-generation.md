---
project-name: "Youth Mentorship Program for At-Risk Teens"
session-dir: "test-runs/youth-mentorship/med"
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

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Lawyer | Specialist (regulatory) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST explicitly bridges multiple institutional systems with their own internal logic — a faith-based community organization, school counselors, juvenile justice referrals, parental/guardian consent frameworks, foundation funding, and a volunteer pool — and the brainstorming need requires designing referral, consent, mandatory-reporting, and safeguard structures *across* these systems. This matches the prompt's explicit positive swap example: "Multi-institutional social programs (mentorship spanning faith org + schools + juvenile justice + volunteer management — referrals and safeguards span institutional systems)."
- Effort-invariance check: This decision is topic-structural and would be the same at high effort.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "$15K seed grant from a regional foundation, plus in-kind support from the church (meeting space, administrative staff)"
  - Decision: exclude
  - Rationale: Financial content appears only as background context (one funding source named, no unit economics, pricing model, or budget architecture to design). If financial content were removed from REQUEST, the central brainstorming question — how to design a safe, effective mentorship program — would not change. Q1b gating test fails.

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "Background check requirements and disqualifying criteria for volunteers... Mandatory reporting obligations and training for mentors... Liability insurance and organizational legal protections... Parental/guardian consent frameworks... Data privacy for minors, especially those referred through juvenile justice"
  - Decision: include
  - Rationale: REQUEST names multiple specific regulatory frameworks (mandatory reporter law, minor consent frameworks, juvenile-record privacy, liability/insurance architecture) and the brainstorming need is to *design* the compliance architecture across them — not merely note routine permits. Clears the "trigger on need, not keywords" depth bar.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "Teens ages 13-17 identified through school counselors and juvenile justice referrals... ~40 interested adults from the congregation and partner organizations"
  - Decision: exclude
  - Rationale: Multiple institutional stakeholders are present, but the REQUEST does not pose a coalition-assembly, governance-design, or institutional-politics decision. Stakeholder relationships are operational/referral, not political mechanisms central to the brainstorming goal.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: (no architectural/engineering content in REQUEST)
  - Decision: exclude
  - Rationale: No hardware, software architecture, ML/AI, or engineering tradeoff dimension in the REQUEST.

**Notes:** —

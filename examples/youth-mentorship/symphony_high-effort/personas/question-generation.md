---
project-name: "Youth Mentorship Program for At-Risk Teens"
session-dir: "test-runs/youth-mentorship/high"
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

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Lawyer | Specialist (regulatory) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: REQUEST involves designing referrals and safeguards spanning distinct institutional systems with their own logics — faith organization, public schools, juvenile justice, parental/guardian consent regimes, and volunteer-management frameworks. This matches criterion (b): multi-institutional social programs where consent/referral frameworks must be designed *across* systems, mirroring the Phase 2A multi-institutional-mentorship example explicitly.
- Effort-invariance check: Decision would be identical at medium — the Connector trigger is structural to the topic, not effort-dependent.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "$15K seed grant from a regional foundation, plus in-kind support from the church (meeting space, administrative staff)"
  - Decision: exclude
  - Rationale: Funding appears as background context, not as a core decision axis. The brainstorming need is program design (safety, matching, training, outcomes), not financial architecture, unit economics, or revenue-model design. If financial content were removed from REQUEST, the central brainstorming question would be unchanged. Q1b gating fails.

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "Mandatory reporting obligations and training for mentors... Liability insurance and organizational legal protections... Parental/guardian consent frameworks and ongoing communication... Data privacy for minors, especially those referred through juvenile justice"
  - Decision: include
  - Rationale: Multiple named statutory regimes are central decision axes the user is actively designing — mandatory reporter law, juvenile-records privacy, sexual-misconduct liability coverage, minor-consent architecture across institutional referrals. This is compliance ARCHITECTURE, not routine permits. Trap checks pass: not a career-target keyword, not generic safety, not single-business operating-environment permits.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "Teens ages 13-17 identified through school counselors and juvenile justice referrals"
  - Decision: exclude
  - Rationale: Multiple stakeholders exist (church, schools, juvenile justice, parents, congregation volunteers), but the brainstorming need is operational/legal coordination of referrals and safeguards — not coalition assembly, governance design, or political decision-making. Stakeholders are ambient, not central political mechanism. Connector covers the cross-institutional structural dimension.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no hardware/ML/systems-architecture content in REQUEST)"
  - Decision: exclude
  - Rationale: No engineering architecture, embedded systems, or ML/AI design dimension in the REQUEST.

**Notes:** —

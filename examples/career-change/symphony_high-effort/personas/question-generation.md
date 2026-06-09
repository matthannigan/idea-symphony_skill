---
project-name: "Career Change from ICU Nursing to Public Interest Law"
session-dir: "test-runs/career-change/high"
datetime: 2026-04-26T00:00:00Z
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
| Accountant | Specialist (financial) | 8-12 | Synthesize | moderate |

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: This is a career transition across two distinct professional systems (ICU nursing and public interest law) bridged by one person — an explicit positive-swap example. Reconciling the constraints of leaving an established healthcare career with entering a new legal career (credentialing pathways, transferable skills, financial timing across both systems) IS the brainstorming need, satisfying criterion (a).
- Effort-invariance check: This decision would be Connector at medium effort as well — the topic-structure judgment does not depend on effort.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: moderate
  - Topic citation: "$22K remaining in nursing school loans; $45K in savings; current salary $82K/year" and "Financial reality of 3 years without income + law school debt vs. public interest salary" and "Loan repayment assistance programs for public interest lawyers"
  - Decision: include

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "become a public interest attorney that helps immigrants and refugees"
  - Decision: exclude

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "(no governance/coalition content in REQUEST)"
  - Decision: exclude

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no technical architecture content in REQUEST)"
  - Decision: exclude

**Notes:** Accountant cleared the Q1b gating test because the REQUEST names specific dollar amounts ($22K, $45K, $82K), explicit runway math ("3 years without income"), and a named financial mechanism (loan repayment assistance programs for public interest lawyers). The financial dimension is a substantive decision axis the user is actively trying to resolve, not a single ambient bullet. Lawyer is excluded per the explicit career-change-naming-target-career trap (R6 partial false positive). Connector swapped in for Analogist per the explicit "career transitions across fields" positive example.

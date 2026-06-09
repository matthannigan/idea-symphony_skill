---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/low"
datetime: 2026-02-18T05:00:00Z
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
| Analyst | Analytical | 8-12 | Synthesize |
| Devil's Advocate | Structural | 8-12 | Synthesize |
| Appreciative Inquirer | Structural | 8-12 | Synthesize |
| Audience Advocate | Structural | 8-12 | Synthesize |
| Systems Thinker | Structural | 8-12 | Synthesize |
| Provocateur | Perspective | 5-8 | Append |
| Analogist | Perspective | 5-8 | Append |
| Visionary | Perspective | 5-8 | Append |
| Storyteller | Perspective | 5-8 | Append |

## Tier 2 Personas (`high` effort only)

N/A — low effort

## Tier 3 Personas (orchestrator-selected)

None selected — no strong triggers for this topic

## Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: The REQUEST describes a single-product UX design (habit-tracker web app) — "Building a modern habit-tracker web application" — with multiple stakeholders (users, solo dev/small team, competitors) but only one institutional/decision system in play. Criterion (a) fails because there are no distinct constraining systems to reconcile; criterion (b) fails because team, users, and competitors are facets of one product system, not separate institutional systems requiring cross-system referrals/safeguards. Single-product UX is explicitly listed as a negative swap example.
- Effort-invariance check: Same decision at medium and high — topic structure is identical regardless of effort.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Monetization without undermining user experience" (Key Considerations)
  - Decision: exclude
  - Rationale: Matches the product-strategy trap in the prompt verbatim — a habit-tracker REQUEST listing "monetization" as one bullet among feature-prioritization, UX, privacy, and technical architecture concerns is product management with a financial surface, not financial architecture. Removing all financial content does not change the central question (differentiated habit-tracker UX/engagement design). Q1b gating test fails.

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "Data privacy and user trust" (Key Considerations)
  - Decision: exclude
  - Rationale: No named regulatory framework (no GDPR, CCPA, HIPAA, COPPA invoked as design axes). Generic "data privacy" concern without a specific compliance regime to design against is Devil's Advocate territory, not Lawyer.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "(no stakeholder-politics or governance content in REQUEST)"
  - Decision: exclude
  - Rationale: No coalition building, governance structure, institutional change, or multi-stakeholder political decision process. "Solo developer / small team" is organizational scale, not stakeholder politics.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "leaning toward modern JS framework + cloud backend" (Context)
  - Decision: exclude
  - Rationale: Matches Q3 trap verbatim — "modern JS framework" and "cloud backend" keywords alone are not triggers. Web product without hardware/ML/systems-architecture decisions; this is a web-app stack choice, not engineering-tradeoff architecture.

**Notes:** —

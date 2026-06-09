---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/med"
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
- Swap rationale: The REQUEST describes a single product (habit-tracker web app) with multiple facets — UX, behavioral science, data privacy, monetization, tech stack — but these are dimensions of ONE product system, not distinct institutional/stakeholder systems that must interoperate. This matches the "Single-product UX design (habit-tracker)" negative swap example verbatim; criterion (b) does not apply because there are no referrals/safeguards/consent frameworks spanning separate institutions.
- Effort-invariance check: Confirmed — this decision would be the same at low or high effort since Connector/Analogist is topic-structure-only.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Monetization without undermining user experience" (REQUEST Key Considerations, one of five bullets); "Free: up to 3 active habits... Paid ($3/mo or $24/yr)... Paid conversion: 5% of D30 actives" (PRD Monetization + Success Metrics)
  - Decision: exclude
  - Rationale: Classic product-strategy trap — monetization appears as one concern among feature-prioritization, UX, retention, privacy, and technical stack. Removing financial content would not change the central brainstorming question (how to differentiate a habit tracker in a crowded market through UX and behavioral science). The dollar figures are pricing tactics within a product-management frame, not financial architecture being designed.

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "Data privacy and user trust" (REQUEST); "Privacy: minimal analytics, no third-party tracking SDKs, no session recording" (PRD Technical posture)
  - Decision: exclude
  - Rationale: No named regulatory regime (GDPR, HIPAA, CCPA) or compliance architecture to design. Privacy posture is a product-design value, not a regulatory-strategy problem. Generic privacy/trust concerns without a framework fall into Devil's Advocate territory.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: (no stakeholder-politics or governance content in REQUEST)
  - Decision: exclude
  - Rationale: No coalition building, institutional change, multi-stakeholder governance, or decision-process politics. A solo-dev / small-team product has no political mechanism to design.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "Open to recommendations; leaning toward modern JS framework + cloud backend" (REQUEST); "Mobile-first responsive web as default target; native considered... Local-first data model if feasible" (PRD)
  - Decision: exclude
  - Rationale: Direct hit on the documented false-positive trap — "Modern JS framework, cloud backend, mobile app keywords alone are NOT triggers." No hardware/ML/systems architecture, no engineering tradeoffs beyond routine web-vs-native product decisions that belong to Pragmatist/Systems Thinker territory.

**Notes:** —

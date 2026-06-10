---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/high"
datetime: 2026-02-18T05:00:00Z
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

None selected — no triggers at or above moderate threshold for this topic

## Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: The REQUEST is a single-product UX design for one habit-tracker app; criterion (b) requires two or more distinct institutional/stakeholder systems that must interoperate (e.g., hardware + ML + privacy + regulatory), but this topic involves facets of one product (UX, behavioral science, monetization, tech stack) rather than distinct institutional systems being reconciled. The selection guide explicitly lists "Single-product UX design (habit-tracker)" as a negative swap example.
- Effort-invariance check: The same Analogist decision would hold at medium; this is a topic-structure determination, not effort-dependent.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Free: up to 3 active habits, basic check-in, 30 days of history. Paid ($3/mo or $24/yr): unlimited habits, full history, weekly review, CSV export."
  - Decision: exclude
  - Rationale: Though specific pricing is named, monetization appears as one consideration among differentiation, behavioral science, privacy, and technical architecture. Q1b gating test fails — if financial content were removed, the central brainstorming goal ("differentiate through thoughtful UX, behavioral science, sustainable engagement") would be unchanged. This is the product-strategy trap: a mobile-app REQUEST listing monetization alongside feature-prioritization and UX bullets is product management with a financial surface, not financial architecture.

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "Data privacy and user trust" / "Privacy: minimal analytics, no third-party tracking SDKs, no session recording."
  - Decision: exclude
  - Rationale: No named statutory or regulatory framework (GDPR, CCPA, HIPAA) is cited. Privacy is expressed as a design preference, not a compliance regime to architect. Generic privacy/trust concerns without regulatory frameworks are Devil's Advocate territory, not Lawyer triggers.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "Solo developer / small team"
  - Decision: exclude
  - Rationale: No coalition building, voter approval, governance design, or multi-stakeholder institutional politics. A solo-dev product with end users has no stakeholder-politics decision axis.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "Tech Stack: Open to recommendations; leaning toward modern JS framework + cloud backend" / "Technical architecture for scalability"
  - Decision: exclude
  - Rationale: "Modern JS framework," "cloud backend," and "mobile app" keywords are explicit Technical Expert false positives per the trap check — web/mobile product topics without hardware/ML/systems-architecture tradeoffs do not trigger. First Principles Thinker (Tier 2, included) covers the stack-choice reasoning.

**Notes:** —

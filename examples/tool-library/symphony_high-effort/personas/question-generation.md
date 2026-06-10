---
project-name: "Community Tool Lending Library"
session-dir: "test-runs/tool-library/high"
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
- Swap rationale: The REQUEST describes a single community nonprofit running a single program for one neighborhood. This matches the negative-example list verbatim ("Single-community initiatives (tool library — one community, multi-stakeholder is NOT multi-system)"). Criterion (b) fails because volunteers, renters, homeowners, and the landlord are facets of one community system, not distinct institutional systems with their own logic that must be reconciled.
- Effort-invariance check: Decision would be Analogist at medium effort as well — the topic structure (single community, single program) does not change with effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Tool maintenance and replacement costs" / "Small neighborhood nonprofit with modest budget"
  - Decision: exclude
  - Rationale: Financial content appears as one of five bullet-listed considerations, not as the central decision axis. If financial content were removed from the REQUEST, the central question (designing a sustainable lending library) would not change. No dollar amounts, unit economics, named revenue streams, or runway math. Q1b gating test fails.

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "Liability and safety concerns"
  - Decision: exclude
  - Rationale: Generic liability mention with no named regulatory framework, statute, or compliance regime. Per the Q3 trap rule, liability concerns without a specific framework belong to Devil's Advocate, not Lawyer.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "Building community buy-in and participation"
  - Decision: exclude
  - Rationale: Community engagement for a single small nonprofit's program is organizational/community management, not stakeholder politics, governance design, or coalition assembly. Ambient stakeholder context, not a central political decision axis.

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no technical-architecture content in REQUEST)"
  - Decision: exclude
  - Rationale: REQUEST contains no engineering tradeoffs, hardware/software co-design, ML/AI architecture, or systems-architecture content. Physical hand tools are the subject matter, not architectural decisions.

**Notes:** —

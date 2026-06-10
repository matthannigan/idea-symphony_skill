---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
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
| Technical Expert | Specialist (architecture) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST explicitly bridges distinct constraining systems whose reconciliation IS the brainstorming need — hardware, on-device ML, privacy/HIPAA, and FDA regulatory pathway must structurally interoperate (e.g., "Hardware-software co-design for the neural processing unit"; "HIPAA compliance architecture for clinical partnership scenarios"; "FDA regulatory strategy: consumer wellness now vs. 510(k) later"). This matches criterion (b) — multiple institutional/technical systems whose constraints interact.
- Effort-invariance check: Confirmed — the same swap decision would hold at medium; this is a topic-structure decision unaffected by effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Funding: Series A, 18 months of runway"
  - Decision: exclude

  Runway and Series A status are background constraints, not a financial-architecture decision axis. The brainstorming goal is system/regulatory architecture, not unit economics, pricing, or capital allocation. Q1b gating fails: removing financial content would not change the central question. → none.

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "designed to comply with HIPAA for potential clinical partnerships … exploring FDA 510(k) pathway for future clinical claims … navigating the regulatory landscape from consumer wellness to potential clinical device"
  - Decision: include

  Two named statutory/regulatory regimes (HIPAA, FDA 510(k)) and an explicit goal to *design* regulatory strategy (consumer wellness → clinical pathway). Compliance architecture is a core decision axis, not a routine permit check. → strong.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "(no governance/coalition content in REQUEST)"
  - Decision: exclude

  "Clinical partnerships" is mentioned only as a downstream context for HIPAA compliance, not as coalition-assembly or governance-design work. No multi-stakeholder political mechanism is the decision hinge. → none.

- Persona: Technical Expert
  - Trigger strength: strong
  - Topic citation: "Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed … Hardware-software co-design for the neural processing unit … Sensor fusion approach for multi-signal anomaly detection … Battery budget allocation"
  - Decision: include

  REQUEST names actual architectural decisions across hardware, ML model design, sensor fusion, and power budgeting. This is genuine systems-architecture brainstorming, not metaphorical tech vocabulary. → strong.

**Notes:** — (clean call; both qualifying strong triggers fit within high-effort ceiling of 2)

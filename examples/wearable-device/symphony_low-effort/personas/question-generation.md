---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
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
| Technical Expert | Specialist (architecture) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: Topic requires reconciling distinct constraining systems whose logic interacts — embedded hardware power budget, ML model architecture, HIPAA/FDA regulatory frameworks, privacy-preserving sync — meeting criterion (a). The REQUEST explicitly calls for "Hardware-software co-design for the neural processing unit" and a "data pipeline: what stays on device, what syncs, what gets aggregated" alongside HIPAA and FDA strategy, so the reconciliation across these systems IS the brainstorming need.
- Effort-invariance check: Decision would be the same at medium and high — the multi-system structure is intrinsic to the topic, not effort-dependent.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Series A, 18 months of runway"
  - Decision: exclude
  - Rationale: Funding/runway appears only as a single contextual line; no unit economics, pricing, or financial-architecture decisions are in scope. Removing financial content from the REQUEST would not change the central question (ML/system architecture + regulatory pathway). Q1b gating test fails.

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "designed to comply with HIPAA for potential clinical partnerships ... exploring FDA 510(k) pathway for future clinical claims ... FDA regulatory strategy: consumer wellness now vs. 510(k) later"
  - Decision: exclude
  - Rationale: HIPAA and FDA 510(k) are named statutory regimes and the REQUEST explicitly frames designing regulatory strategy as part of the brainstorming need — clears the strong-trigger bar. Excluded only because the low-effort Tier 3 ceiling is 1 and Technical Expert is more central to the primary goal; deferred per Notes.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "(no governance/coalition content in REQUEST)"
  - Decision: exclude
  - Rationale: No coalition building, governance design, multi-stakeholder political mechanism, or institutional-change politics in the brainstorming need.

- Persona: Technical Expert
  - Trigger strength: strong
  - Topic citation: "Architect the on-device ML pipeline and overall system design to balance model accuracy, inference latency, power consumption, and privacy ... Hardware-software co-design for the neural processing unit ... Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed"
  - Decision: include
  - Rationale: Genuine embedded/ML systems architecture — NPU co-design, sensor fusion, on-device inference tradeoffs — where the brainstorming need IS the technical architecture itself, not a tech-vocabulary surface.

**Notes:** Lawyer also qualified as strong; deferred per low-effort Tier 3 ceiling of 1. Technical Expert chosen as more central to the primary brainstorming goal (the REQUEST opens with the architecture mandate; regulatory strategy is framed as a "while navigating" secondary axis).

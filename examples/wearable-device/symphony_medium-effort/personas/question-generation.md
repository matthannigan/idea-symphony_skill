---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
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
| Technical Expert | Specialist (architecture) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST involves multiple distinct institutional/disciplinary systems that must interoperate — hardware (NPU, sensors, battery), ML (model architecture, training/update strategy), privacy/data architecture (on-device vs sync), and regulatory pathway (HIPAA, FDA 510(k)) — and the brainstorming need is to reconcile their interacting constraints, matching criterion (b) and the documented "wearable — hardware + ML + privacy + regulatory as interacting systems" example.
- Effort-invariance check: This swap holds at high effort as well; the topic-structure (multi-system reconciliation) does not depend on effort.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Series A, 18 months of runway"
  - Decision: exclude

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "designed to comply with HIPAA for potential clinical partnerships … exploring FDA 510(k) pathway for future clinical claims"
  - Decision: exclude

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "(no governance / coalition / institutional-politics content in REQUEST)"
  - Decision: exclude

- Persona: Technical Expert
  - Trigger strength: strong
  - Topic citation: "Architect the on-device ML pipeline and overall system design to balance model accuracy, inference latency, power consumption, and privacy … Hardware-software co-design for the neural processing unit … Sensor fusion approach for multi-signal anomaly detection"
  - Decision: include

**Notes:** Lawyer also qualified as a strong trigger (named HIPAA + FDA 510(k) as compliance architectures the team is actively designing). Deferred per medium ceiling of 1. Technical Expert chosen as more central: 8 of 10 Key Considerations are architecture-leaning (model tradeoffs, training strategy, sensor fusion, battery allocation, data pipeline, false positive/negative engineering, HW/SW co-design, companion-app architecture); the brainstorming goal's primary verb is "Architect," with "navigating the regulatory landscape" framed as a secondary "while" clause. Lawyer remains a deferred alternative if the user wants to swap or upgrade to high effort.

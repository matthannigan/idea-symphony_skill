## Phase 2B: Question Generation Roster

**Effort Level:** medium

### Tier 1 Personas (always included)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Questioner | Analytical | 10-15 |
| Analyst | Analytical | 10-15 |
| Devil's Advocate | Structural | 8-12 |
| Appreciative Inquirer | Structural | 8-12 |
| Audience Advocate | Structural | 10-15 |
| Systems Thinker | Structural | 10-15 |
| Provocateur | Perspective | 5-8 |
| Connector | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

N/A — medium effort

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|-------------|------------------|
| Technical Expert | Domain | 8-10 | strong |

### Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: Per criterion (b), the wearable topic spans distinct institutional/stakeholder systems that must interoperate — hardware, on-device ML, privacy architecture, and the regulatory pathway (consumer wellness → FDA 510(k) / HIPAA). The REQUEST explicitly frames these as interacting constraint systems ("balance model accuracy, inference latency, power consumption, and privacy — while navigating the regulatory landscape"), matching the prompt's named positive example "wearable — hardware + ML + privacy + regulatory as interacting systems." Effort-invariance check: this decision would be the same at high effort — topic structure is unchanged by effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Series A, 18 months of runway"
  - Decision: exclude (runway is funding context, not a brainstorming dimension; no unit economics, pricing model, or revenue-structure design is named in the Goals or Key Considerations — the financial mechanism is not central)

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "designed to comply with HIPAA for potential clinical partnerships … exploring FDA 510(k) pathway for future clinical claims"
  - Decision: exclude (deferred — medium ceiling of 1; Technical Expert chosen as more central to the stated goal of architecting the ML pipeline and system design)

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "—" (no coalition-building, governance design, or multi-stakeholder institutional politics named)
  - Decision: exclude

- Persona: Technical Expert
  - Trigger strength: strong
  - Topic citation: "Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed … Sensor fusion approach for multi-signal anomaly detection … Hardware-software co-design for the neural processing unit"
  - Decision: include (genuine hardware/ML systems architecture with named power/latency/accuracy tradeoffs and NPU co-design — central to the primary Goal of architecting the on-device ML pipeline)

**Notes:** Two strong Tier 3 triggers qualified (Lawyer, Technical Expert); medium ceiling of 1 forced a pick. Technical Expert selected because the Goals statement leads with "Architect the on-device ML pipeline and overall system design," making ML/hardware architecture the primary brainstorming axis; regulatory navigation is the secondary axis. Lawyer deferred as the alternative — would be the second pick at high effort.

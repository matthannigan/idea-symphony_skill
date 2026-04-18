## Phase 2B: Question Generation Roster

**Effort Level:** high

### Tier 1 Personas (always included)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Questioner | Analytical | 15-20 |
| Analyst | Analytical | 10-15 |
| Devil's Advocate | Structural | 10-15 |
| Appreciative Inquirer | Structural | 8-12 |
| Audience Advocate | Structural | 10-15 |
| Systems Thinker | Structural | 10-15 |
| Provocateur | Perspective | 5-8 |
| Connector | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Constraint Flipper | Tier 2 | 5-8 |
| Empath | Tier 2 | 8-12 |
| First Principles Thinker | Tier 2 | 7-10 |
| Futurist | Tier 2 | 8-12 |

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|-------------|------------------|
| Lawyer | Tier 3 | 8-10 | strong |
| Technical Expert | Tier 3 | 8-10 | strong |

### Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST explicitly couples distinct, mutually-constraining systems — hardware (low-power MCU + NPU), ML (on-device inference), privacy architecture (HIPAA-compliant data pipeline), and regulatory strategy (consumer wellness → FDA 510(k)). Reconciling these interacting systems IS the stated brainstorming goal ("balance model accuracy, inference latency, power consumption, and privacy — while navigating the regulatory landscape"), matching the cross-disciplinary wearable example in the swap guidance.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Series A, 18 months of runway"
- Decision: exclude
- (Runway is context, not a financial-mechanism brainstorming dimension; no unit economics, pricing, or revenue model in the stated goals.)

- Persona: Lawyer
- Trigger strength: strong
- Topic citation: "designed to comply with HIPAA for potential clinical partnerships... exploring FDA 510(k) pathway for future clinical claims... False positive/negative tradeoffs for health alerts (liability implications)"
- Decision: include
- (Named regulatory regimes — HIPAA, FDA 510(k) — with compliance architecture central to the brainstorming need.)

- Persona: Politician
- Trigger strength: none
- Topic citation: "exploring FDA 510(k) pathway... clinical partnerships"
- Decision: exclude
- (No coalition building, governance design, or multi-stakeholder political conflict; regulatory navigation belongs to Lawyer.)

- Persona: Technical Expert
- Trigger strength: strong
- Topic citation: "Architect the on-device ML pipeline... Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed... Hardware-software co-design for the neural processing unit... Sensor fusion approach for multi-signal anomaly detection"
- Decision: include
- (Explicit hardware/ML/sensor-fusion/power-latency architecture decisions — textbook strong trigger.)

**Notes:** —

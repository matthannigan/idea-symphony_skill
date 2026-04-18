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
| Provocateur | Perspective | 5 |
| Connector | Perspective | 5 |
| Visionary | Perspective | 5 |
| Storyteller | Perspective | 5 |

### Tier 2 Personas (high effort only)

N/A — medium effort

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|-------------|------------------|
| Technical Expert | Domain | 8-10 | Strong |

### Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST is a textbook Connector case — it explicitly requires bridging distinct, mutually constraining systems: on-device ML inference, low-power hardware (microcontroller + NPU, 7-day battery), privacy architecture (raw biometrics never leave device), and regulatory frameworks (HIPAA today, FDA 510(k) pathway). The selection guide cites "wearable with privacy + ML + power + regulatory constraints" as a canonical Connector trigger, and the stated Goal — "balance model accuracy, inference latency, power consumption, and privacy — while navigating the regulatory landscape" — is the exact cross-system reconciliation work Connector is designed for.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Series A, 18 months of runway" (context only; no unit economics, pricing strategy, revenue model, or capital-allocation mechanism is named as a dimension of the work)
- Decision: exclude

- Persona: Lawyer
- Trigger strength: strong
- Topic citation: "designed to comply with HIPAA for potential clinical partnerships"; "exploring FDA 510(k) pathway for future clinical claims"; "False positive/negative tradeoffs for health alerts (liability implications)"
- Decision: exclude (see Notes — strong trigger but ceded to Technical Expert under the medium 0-1 ceiling)

- Persona: Politician
- Trigger strength: none
- Topic citation: (no coalition-building, governance, voter approval, or institutional-change content in the REQUEST)
- Decision: exclude

- Persona: Technical Expert
- Trigger strength: strong
- Topic citation: "On-device ML inference ... using a low-power microcontroller with dedicated neural processing unit"; "Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed"; "Sensor fusion approach for multi-signal anomaly detection"; "Hardware-software co-design for the neural processing unit"; "Battery budget allocation across sensing, processing, display, and communication"
- Decision: include

**Notes:** Two genuinely strong Tier 3 triggers compete at medium effort (Technical Expert and Lawyer) under the 0-1 ceiling. Selected Technical Expert because the stated Goal leads with architecting the on-device ML pipeline and the hardware/ML/power tradeoff space is the foundational deliverable on top of which the regulatory strategy is layered. Lawyer is a close runner-up (HIPAA + FDA 510(k) are named primary dimensions with explicit liability implications); if this session were at high effort, Lawyer would be the clear second Tier 3 selection.

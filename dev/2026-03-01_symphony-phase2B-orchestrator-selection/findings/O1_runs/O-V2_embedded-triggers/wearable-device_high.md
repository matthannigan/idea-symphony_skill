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
| Constraint Flipper | Structural | 5-8 |
| Empath | Perspective | 8-12 |
| First Principles Thinker | Analytical | 7-10 |
| Futurist | Perspective | 8-12 |

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|-------------|------------------|
| Technical Expert | Analytical | 8-10 | Strong |
| Lawyer | Structural | 8-10 | Strong |

### Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST requires bridging distinct, mutually constraining systems — on-device ML model architecture, battery/power budget, privacy/HIPAA data architecture, FDA regulatory pathway, and hardware-software co-design for the NPU. The embedded-rules examples explicitly cite "wearable with privacy + ML + power + regulatory constraints" as a canonical Connector swap case. These are distinct domains that constrain each other (e.g., more accurate model → higher power draw → shorter battery; broader sensor fusion → more raw data → greater privacy architecture burden → more complex FDA evidence), which is precisely the reconciliation task Connector is designed for.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Series A, 18 months of runway" — runway is mentioned only as context; no unit economics, pricing strategy, revenue model, or capital-allocation mechanism is named as a primary dimension.
- Decision: exclude

- Persona: Lawyer
- Trigger strength: strong
- Topic citation: "designed to comply with HIPAA for potential clinical partnerships"; "Regulatory Path: Initially launching as a consumer wellness device (not FDA-cleared); exploring FDA 510(k) pathway for future clinical claims"; "False positive/negative tradeoffs for health alerts (liability implications)."
- Decision: include

- Persona: Politician
- Trigger strength: none
- Topic citation: No coalition-building, voter approval, governance structure, institutional change, or multi-stakeholder political conflict is named. "Clinical partnerships" are commercial/regulatory relationships, not political ones.
- Decision: exclude

- Persona: Technical Expert
- Trigger strength: strong
- Topic citation: "On-device ML inference ... using a low-power microcontroller with dedicated neural processing unit"; "Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed"; "Sensor fusion approach for multi-signal anomaly detection"; "Hardware-software co-design for the neural processing unit"; "Battery budget allocation across sensing, processing, display, and communication." This is genuine deep-tech engineering-tradeoff content, not generic tech-stack framing.
- Decision: include

**Notes:** Two strong triggers (Technical Expert, Lawyer) fit cleanly within the 0-2 Tier 3 ceiling at high effort, so no competitive tradeoff is needed. The Connector swap and the Technical Expert + Lawyer Tier 3 pair are mutually reinforcing: Connector will produce questions that bridge the ML/power/privacy/regulatory domains at the seams, while the two Tier 3 specialists will drive depth inside the technical-architecture and regulatory-architecture domains respectively.

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
- Swap rationale: Cross-disciplinary technical design — hardware + ML + privacy + regulatory pathway are distinct constraining systems that interact (e.g., privacy requirement constrains power budget; ML accuracy tradeoffs constrain sensor-fusion approach). Explicit positive-swap example. Effort-invariance: same at high.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Series A, 18 months of runway"
  - Decision: exclude — Runway is context, not a financial-architecture dimension; no revenue model, pricing, or unit-economics content.

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "HIPAA compliance architecture for clinical partnership scenarios"; "FDA regulatory strategy: consumer wellness now vs. 510(k) later"; "False positive/negative tradeoffs for health alerts (liability implications)"
  - Decision: exclude (deferred — ceiling reached; Technical Expert selected as more central)

- Persona: Politician
  - Trigger strength: none
  - Topic citation: — (no stakeholder politics content)
  - Decision: exclude

- Persona: Technical Expert
  - Trigger strength: strong
  - Topic citation: "Architect the on-device ML pipeline and overall system design"; "Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed"; "Sensor fusion approach for multi-signal anomaly detection"; "Hardware-software co-design for the neural processing unit"; "Battery budget allocation across sensing, processing, display, and communication"
  - Decision: include — Exemplar Technical Expert strong-trigger topic; REQUEST's stated Goal is architectural.

**Notes:** Two strong triggers at 0-1 ceiling. TE chosen because the brainstorm's stated Goal leads with "Architect the on-device ML pipeline and overall system design." Lawyer deferred.

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
| Constraint Flipper | Perspective | 5-8 |
| Empath | Structural | 8-12 |
| First Principles Thinker | Structural | 7-10 |
| Futurist | Structural | 8-12 |

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|-------------|------------------|
| Lawyer | Tier 3 | 8-10 | strong |
| Technical Expert | Tier 3 | 8-10 | strong |

### Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST names on-device ML inference, PPG/accel/temp/mic sensor fusion, HIPAA compliance architecture, and an FDA 510(k) regulatory pathway as interacting constraint systems that must be reconciled in the system design. This matches the refined-prompt positive example of cross-disciplinary technical design (hardware + ML + privacy + regulatory pathway as distinct systems whose constraints interoperate), so criterion (b) applies. Effort-invariance confirmed: the same swap decision holds at medium — this is a topic-structure decision independent of effort.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Series A, 18 months of runway"; "Battery budget allocation across sensing, processing, display, and communication"
  - Decision: exclude
  - (Financial runway is ambient context, not a brainstorming dimension; "budget" in the REQUEST refers to power/battery allocation, not financial structure. No unit economics, revenue model, or pricing design is named as a brainstorming goal.)

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "designed to comply with HIPAA for potential clinical partnerships"; "exploring FDA 510(k) pathway for future clinical claims"; "False positive/negative tradeoffs for health alerts (liability implications)"
  - Decision: include
  - (Named regulatory regimes — HIPAA and FDA 510(k) — are central to the stated goal of "navigating the regulatory landscape from consumer wellness to potential clinical device." This is regulatory-compliance exposure as a brainstorming dimension, not keyword-only.)

- Persona: Politician
  - Trigger strength: none
  - Topic citation: "Team: Hardware startup, 12 engineers"; "potential clinical partnerships"
  - Decision: exclude
  - (No coalition building, governance-structure design, institutional change, or multi-stakeholder political dynamics are named. Clinical partnerships are a business-development relationship, not stakeholder politics.)

- Persona: Technical Expert
  - Trigger strength: strong
  - Topic citation: "On-device ML inference… using a low-power microcontroller with dedicated neural processing unit"; "Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed"; "Sensor fusion approach for multi-signal anomaly detection"; "Hardware-software co-design for the neural processing unit"
  - Decision: include
  - (Canonical strong trigger: genuine engineering tradeoffs, hardware/software co-design, ML system architecture, sensor fusion, and power/latency/accuracy tradeoffs are explicitly named as brainstorming dimensions.)

**Notes:** —

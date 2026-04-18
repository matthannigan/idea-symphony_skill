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
- Swap rationale: Criterion (b) is met — the REQUEST requires reconciling distinct interacting systems (hardware + on-device ML + privacy architecture + FDA/HIPAA regulatory pathway) whose constraints structurally link ("balance model accuracy, inference latency, power consumption, and privacy — while navigating the regulatory landscape from consumer wellness to potential clinical device"). This matches the positive swap example for cross-disciplinary technical design wearables. Effort-invariance confirmed: same decision at high.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Series A, 18 months of runway"
- Decision: exclude
- Rationale: No financial structure, unit economics, pricing model, or revenue mechanism is a decision axis in the brainstorming need. Runway is background context, not a dimension the user is trying to resolve. Q1b gating test fails: removing all financial content from the REQUEST leaves the central ML-pipeline / regulatory-strategy brainstorming need fully intact.

- Persona: Lawyer
- Trigger strength: strong
- Topic citation: "designed to comply with HIPAA for potential clinical partnerships ... exploring FDA 510(k) pathway for future clinical claims ... HIPAA compliance architecture for clinical partnership scenarios ... FDA regulatory strategy: consumer wellness now vs. 510(k) later"
- Decision: exclude (deferred to Notes; displaced by ceiling)
- Rationale: Named statutory regimes (HIPAA, FDA 510(k)) where the brainstorming need is to design regulatory strategy and compliance architecture, not check routine permits. Clears Q2 depth bar and is not an operating-environment-permits trap.

- Persona: Politician
- Trigger strength: none
- Topic citation: "[no governance, coalition, or institutional-change content in REQUEST]"
- Decision: exclude
- Rationale: No stakeholder politics, governance design, or institutional-change mechanism is present. Team size and target-user demographics are not political content.

- Persona: Technical Expert
- Trigger strength: strong
- Topic citation: "Architect the on-device ML pipeline and overall system design to balance model accuracy, inference latency, power consumption, and privacy ... Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed ... Sensor fusion approach for multi-signal anomaly detection ... Hardware-software co-design for the neural processing unit"
- Decision: include
- Rationale: Genuine embedded-systems + ML architecture with explicit hardware/software co-design, sensor fusion, and power-latency-accuracy tradeoffs. Not a web/mobile keyword false positive; actual architectural decisions are the brainstorming need.

**Notes:** Lawyer (strong) deferred to preserve the medium ceiling of 1. Technical Expert is most central to the stated goal ("Architect the on-device ML pipeline and overall system design"). If the user wants regulatory strategy foregrounded, Lawyer is the clear second Tier 3 slot at high effort, and HIPAA/FDA design content would be well-served there.

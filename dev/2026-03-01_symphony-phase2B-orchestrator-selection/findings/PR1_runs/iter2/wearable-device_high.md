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
- Swap rationale: The REQUEST explicitly couples distinct, mutually-constraining systems — hardware (low-power MCU + dedicated NPU), ML (on-device inference/anomaly detection), privacy architecture (HIPAA-compliant data pipeline), and regulatory pathway (consumer wellness → FDA 510(k)) — where reconciling the interacting constraints IS the brainstorming goal ("balance model accuracy, inference latency, power consumption, and privacy — while navigating the regulatory landscape"). Matches the cross-disciplinary wearable positive-swap example in Step 2(a)/(b).
- Effort-invariance check: this decision would be the same at medium effort; topic structure (four distinct interacting systems) does not depend on effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Series A, 18 months of runway"
- Decision: exclude
- (Q1b gating test: runway is background context, not a core decision axis. Remove all financial content from the REQUEST and the central brainstorming question — on-device ML pipeline architecture balancing accuracy/power/privacy/regulatory — is unchanged. No unit economics, pricing mechanism, revenue model, or dollar/margin content. Fails Q1b.)

- Persona: Lawyer
- Trigger strength: strong
- Topic citation: "designed to comply with HIPAA for potential clinical partnerships... exploring FDA 510(k) pathway for future clinical claims... HIPAA compliance architecture for clinical partnership scenarios... FDA regulatory strategy: consumer wellness now vs. 510(k) later"
- Decision: include
- (Two named statutory/regulatory regimes — HIPAA and FDA 510(k) — where the brainstorming need is to design compliance architecture and regulatory strategy, not merely check boxes. Clears Step 1.2 Q2 design-vs-compliance-check bar; not an operating-environment-permits case.)

- Persona: Politician
- Trigger strength: none
- Topic citation: "exploring FDA 510(k) pathway... potential clinical partnerships"
- Decision: exclude
- (No coalition-building, governance design, institutional-change politics, or multi-stakeholder decision-process conflict. Regulatory pathway is a legal/strategic question handled by Lawyer, not stakeholder politics.)

- Persona: Technical Expert
- Trigger strength: strong
- Topic citation: "Architect the on-device ML pipeline and overall system design... Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed... Sensor fusion approach for multi-signal anomaly detection... Hardware-software co-design for the neural processing unit... On-device training vs. federated learning vs. periodic model updates"
- Decision: include
- (Explicit hardware/ML/sensor-fusion/power-latency-accuracy architectural decisions — textbook strong trigger per Step 1.4 Q1 domain list. Not metaphorical tech vocabulary; the architecture is the brainstorming need.)

**Notes:** —

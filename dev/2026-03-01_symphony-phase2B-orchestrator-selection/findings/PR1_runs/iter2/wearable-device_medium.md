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
|---------|----------|--------------|------------------|
| Technical Expert | Tier 3 | 8-10 | strong |

### Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST frames the brainstorming need as reconciling distinct constraining systems — embedded hardware (low-power microcontroller + NPU), on-device ML architecture, HIPAA/FDA regulatory pathway, and a privacy-preserving sync architecture — whose constraints interact and must be balanced against each other (Goals: "balance model accuracy, inference latency, power consumption, and privacy — while navigating the regulatory landscape"). This matches Step 2 criterion (a) distinct constraining systems and is a canonical positive-swap example (wearable = hardware + ML + privacy + regulatory).
- Effort-invariance check: The same Connector decision holds at high effort — the Step 2 decision is a topic-structure test independent of effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Series A, 18 months of runway"
  - Decision: exclude
  - Rationale: Runway is mentioned as background context, not as a brainstorming decision axis. Q1b gating test: if all financial content were removed from the REQUEST, the central question (architect the on-device ML pipeline and navigate the regulatory path from wellness to clinical) would not change. No unit economics, pricing, revenue model, or capital-allocation mechanism is named. → none.

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "designed to comply with HIPAA for potential clinical partnerships"; "exploring FDA 510(k) pathway for future clinical claims"; Key Considerations: "HIPAA compliance architecture for clinical partnership scenarios"; "FDA regulatory strategy: consumer wellness now vs. 510(k) later"
  - Decision: exclude (deferred by medium-effort ceiling)
  - Rationale: HIPAA and FDA 510(k) are named statutory regimes, and the brainstorming need is explicitly to *design* regulatory strategy (consumer wellness now vs. 510(k) later; compliance architecture for clinical partnerships) — a clean strong trigger, not the operating-environment-permits trap. Excluded only because medium ceiling = 1 and Technical Expert is more central to the primary architectural goal.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: (no coalition, governance-design, or institutional-change content in REQUEST)
  - Decision: exclude
  - Rationale: Regulatory navigation with the FDA is not stakeholder politics. No coalition-building, voter approval, governance structure, or multi-stakeholder institutional-change dimension is present.

- Persona: Technical Expert
  - Trigger strength: strong
  - Topic citation: "On-device ML inference ... using a low-power microcontroller with dedicated neural processing unit"; "Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed"; "Sensor fusion approach for multi-signal anomaly detection"; "Battery budget allocation across sensing, processing, display, and communication"; "Hardware-software co-design for the neural processing unit"
  - Decision: include
  - Rationale: Genuine technical architecture in the canonical strong-trigger sense — embedded ML, sensor fusion, power/latency/accuracy tradeoffs, hardware-software co-design. Not a web/mobile keyword false positive, not product-management "technical debt," not a career-change "legacy code" FP.

**Notes:** Deferred alternative — Lawyer (strong trigger on HIPAA + FDA 510(k)). Would also be included at high effort. If regulatory-strategy architecture turns out to be the primary concern rather than ML/system architecture, swap Technical Expert for Lawyer or escalate to high effort to include both.

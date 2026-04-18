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
| Technical Expert | Domain | 8-10 | strong |

### Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The REQUEST explicitly describes a wearable whose core design problem is reconciling distinct, mutually-constraining systems — on-device ML architecture, low-power embedded hardware, HIPAA/FDA regulatory regimes, and a privacy-preserving sync architecture. The Goals statement frames the brainstorming need as balancing these domains against each other, which matches the Connector swap criterion of bridging distinct systems that constrain each other (and is one of the canonical swap examples in the guide).

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: none
  - Topic citation: "Series A, 18 months of runway"
  - Decision: exclude
  - Note: Runway is mentioned as context, but the REQUEST names no unit economics, pricing strategy, revenue model, or capital allocation as brainstorming needs. The Goals focus on ML pipeline architecture and regulatory strategy, not financial structure.

- Persona: Lawyer
  - Trigger strength: strong
  - Topic citation: "designed to comply with HIPAA for potential clinical partnerships"; "exploring FDA 510(k) pathway for future clinical claims"; Goals: "navigating the regulatory landscape from consumer wellness to potential clinical device"
  - Decision: exclude (deferred by medium-effort ceiling)
  - Note: HIPAA and FDA 510(k) are named regulatory frameworks with compliance-architecture implications — clean strong trigger. Excluded only because medium effort allows a ceiling of 1 Tier 3 and Technical Expert is more central to the stated architectural brainstorming goal.

- Persona: Politician
  - Trigger strength: none
  - Topic citation: (no coalition-building, governance-design, or multi-stakeholder political content in REQUEST)
  - Decision: exclude
  - Note: Regulatory navigation is not stakeholder politics; there is no coalition, voter approval, or institutional-change dimension.

- Persona: Technical Expert
  - Trigger strength: strong
  - Topic citation: "On-device ML inference … using a low-power microcontroller with dedicated neural processing unit"; "Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed"; "Sensor fusion approach for multi-signal anomaly detection"; "Hardware-software co-design for the neural processing unit"
  - Decision: include
  - Note: Genuine engineering architecture — embedded ML, sensor fusion, power/latency/accuracy tradeoffs, hardware-software co-design. Not a web/mobile keyword false positive; this is the canonical real-architecture case.

**Notes:** Deferred alternative — Lawyer (strong trigger on HIPAA + FDA 510(k)). Would be included at high effort. If the user later signals that regulatory strategy is the primary brainstorming concern rather than ML/system architecture, swap Technical Expert for Lawyer or escalate effort to high to include both.

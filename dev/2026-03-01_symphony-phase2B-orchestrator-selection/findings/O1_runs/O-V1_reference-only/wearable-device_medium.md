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
| Analogist | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

N/A — medium effort

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Selection Trigger Strength |
|---------|----------|-------------|---------------------------|
| Technical Expert | Tier 3 (Synthesis) | 8-10 | strong |

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: The REQUEST has a single primary domain (on-device ML architecture for a wearable health monitor). It is not an inter-domain reconciliation problem — it does not involve bridging distinct systems that constrain each other (no career transition across fields, no institutional merger, no multi-disciplinary social program). Analogist's metaphorical reframing (e.g., biological/industry analogies for sensor fusion, battery budgeting, false-positive tradeoffs) is well-suited to a single-domain technical architecture problem.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Series A, 18 months of runway" and "Hardware startup, 12 engineers"
- Decision: exclude
- Note: Funding context is present but the GOAL is "Architect the on-device ML pipeline and overall system design to balance model accuracy, inference latency, power consumption, and privacy" — this is a product architecture and regulatory-strategy question, not a business-model or unit-economics question. No pricing, revenue model, or cost-structure focus in the Key Considerations.

- Persona: Lawyer
- Trigger strength: moderate
- Topic citation: "designed to comply with HIPAA for potential clinical partnerships," "Initially launching as a consumer wellness device (not FDA-cleared); exploring FDA 510(k) pathway," "False positive/negative tradeoffs for health alerts (liability implications)"
- Decision: exclude
- Note: There is genuine regulatory exposure (HIPAA, FDA 510(k), medical-device liability). However, at medium effort only STRONG triggers justify inclusion, and the Tier 3 slot is better spent on the Technical Expert whose trigger is unambiguously strong on this topic (see below). Devil's Advocate will surface high-level regulatory/liability risk; Lawyer-level regulatory specificity can be deferred to high effort.

- Persona: Politician
- Trigger strength: none
- Topic citation: (none — no governance, coalition, or institutional-change content in the REQUEST)
- Decision: exclude

- Persona: Technical Expert
- Trigger strength: strong
- Topic citation: "Hardware-software co-design for the neural processing unit," "Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed," "Sensor fusion approach for multi-signal anomaly detection," "On-device ML inference ... using a low-power microcontroller with dedicated neural processing unit," "Battery budget allocation across sensing, processing, display, and communication"
- Decision: include
- Note: This REQUEST is the canonical strong-trigger case — genuine engineering tradeoffs, hardware-software co-design, and ML systems architecture. Expected zero-filler, high-distinctive-contribution output per guide's topic-sensitivity profile.

**Notes:** Lawyer is the most defensible "close call" at medium. It is excluded because (a) medium Tier 3 ceiling is 0-1 and (b) the Technical Expert trigger is clearly stronger and more central to the stated goal. Devil's Advocate will cover the highest-salience regulatory/liability risks at a framework level.

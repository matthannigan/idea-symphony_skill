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
| Analogist | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Constraint Flipper | Tier 2 Perspective | 5-8 (append 3-5) |
| Empath | Tier 2 Structural | 8-12 |
| First Principles Thinker | Tier 2 Structural | 7-10 |
| Futurist | Tier 2 Structural | 8-12 |

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Selection Trigger Strength |
|---------|----------|-------------|---------------------------|
| Technical Expert | Tier 3 | 8-10 | Strong |
| Lawyer | Tier 3 | 8-10 | Strong |

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: The topic has a clear single primary domain (health-monitoring wearable hardware/ML system). There is no inter-domain reconciliation need — the challenge is deep technical and regulatory integration within the health-device domain, not bridging distinct systems that constrain each other. Analogist's metaphorical reframing (e.g., biological sensing, industrial anomaly detection) is the more useful divergence mode here than Connector's isomorphism/recombination modes.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: none
- Topic citation: "Series A, 18 months of runway" — funding is mentioned as context but financial structure, unit economics, pricing, and revenue model are not part of the stated Goals or Key Considerations.
- Decision: exclude

- Persona: Lawyer
- Trigger strength: strong
- Topic citation: "designed to comply with HIPAA for potential clinical partnerships"; "Regulatory Path: Initially launching as a consumer wellness device (not FDA-cleared); exploring FDA 510(k) pathway"; "False positive/negative tradeoffs for health alerts (liability implications)"
- Decision: include

- Persona: Politician
- Trigger strength: none
- Topic citation: No stakeholder politics, coalition-building, governance structure, or institutional change dynamics appear in the REQUEST. Regulatory interaction is compliance-oriented, not political-process oriented.
- Decision: exclude

- Persona: Technical Expert
- Trigger strength: strong
- Topic citation: "On-device ML inference... using a low-power microcontroller with dedicated neural processing unit"; "Model architecture tradeoffs: accuracy vs. power consumption vs. inference speed"; "Hardware-software co-design for the neural processing unit"; "Sensor fusion approach for multi-signal anomaly detection"
- Decision: include

**Notes:** The two strong-trigger Tier 3 selections (Technical Expert, Lawyer) fill the high-effort 0-2 ceiling exactly. Both are strong rather than moderate — the topic explicitly names hardware-software co-design and ML engineering tradeoffs (Technical Expert's strongest trigger type per the guide, which names wearable-device as an exemplar strong trigger) and explicitly names HIPAA and FDA 510(k) with liability implications (Lawyer's regulatory-exposure trigger). No close calls requiring tie-breaking.

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
| Provocateur | Perspective | 5-8 (all appended) |
| Analogist | Perspective | 5-8 (all appended) |
| Visionary | Perspective | 5-8 (all appended) |
| Storyteller | Perspective | 5-8 (all appended) |

### Tier 2 Personas (high effort only)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Constraint Flipper | Tier 2 Perspective | 5-8 (3-5 appended) |
| Empath | Tier 2 Structural | 8-12 |
| First Principles Thinker | Tier 2 Structural | 7-10 |
| Futurist | Tier 2 Structural | 8-12 |

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|-------------|------------------|
| Accountant | Tier 3 | 8-12 | moderate |

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: The topic is a single-domain consumer web app (habit tracking). There is no inter-domain reconciliation, institutional merger, or cross-disciplinary bridging requirement. The Perspective persona's value here is creative metaphorical reframing of habit-building (e.g., importing from biology, architecture, games) — exactly the Analogist's strength. No Connector swap criterion is met.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: moderate
- Topic citation: "Monetization without undermining user experience" (listed as a Key Consideration) in a "crowded space with established competitors" where unit economics of subscription/freemium models matter for a solo developer with a 3-month MVP timeline.
- Decision: include

- Persona: Lawyer
- Trigger strength: none
- Topic citation: "Data privacy and user trust" is mentioned, but only as a general UX/trust concern — no specific regulatory framework (HIPAA, GDPR, COPPA), no liability-heavy domain, no zoning/licensing/compliance regime. Habit data is not inherently regulated. Devil's Advocate can flag high-level privacy risk.
- Decision: exclude

- Persona: Politician
- Trigger strength: none
- Topic citation: The REQUEST describes a "solo developer / small team" building a consumer product. There is no governance structure, coalition, institutional change, or stakeholder-political dynamic. Audience Advocate covers user-group concerns adequately.
- Decision: exclude

- Persona: Technical Expert
- Trigger strength: weak (below moderate threshold)
- Topic citation: "Technical architecture for scalability" and "leaning toward modern JS framework + cloud backend" — a standard consumer web-app stack. No hardware-software co-design, no on-device ML, no engineering tradeoff comparable to the wearable-device strong-trigger profile. On weak triggers, Technical Expert shows 8-17% filler and 15-25% distinctive contribution with ~50-60% Analyst overlap, plus paradigm-reinforcement risk on non-deeply-technical topics. Analyst + Systems Thinker + FPT cover the architectural territory at appropriate depth.
- Decision: exclude

**Notes:** Accountant is the single moderate-trigger include. The 0-2 ceiling leaves room for a second Tier 3 persona, but no other candidate clears the moderate threshold — Technical Expert is the closest but remains a weak trigger for a standard web-app stack, and adding it risks engineering-metaphor cognitive-cage effects on a topic whose core challenges are behavioral-science and market-differentiation, not engineering tradeoffs.

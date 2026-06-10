---
project-name: "Rural School District Consolidation"
session-dir: "test-runs/school-consolidation/high"
datetime: 2026-02-24T05:00:00Z
effort: "high"
stage: "Phase 2 Step 2.1: Question Generation Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Question Generation Personas

## Tier 1 Personas (always included)

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Questioner | Analytical | 15-20 | Synthesize |
| Analyst | Analytical | 10-15 | Synthesize |
| Devil's Advocate | Structural | 10-15 | Synthesize |
| Appreciative Inquirer | Structural | 8-12 | Synthesize |
| Audience Advocate | Structural | 10-15 | Synthesize |
| Systems Thinker | Structural | 10-15 | Synthesize |
| Provocateur | Perspective | 5-8 | Append |
| Connector | Perspective | 5-8 | Append |
| Visionary | Perspective | 5-8 | Append |
| Storyteller | Perspective | 5-8 | Append |

## Tier 2 Personas (`high` effort only)

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Constraint Flipper | Perspective | 5-8 | Append (3-5 round-robin) |
| Empath | Structural | 8-12 | Synthesize |
| First Principles Thinker | Structural | 7-10 | Synthesize |
| Futurist | Structural | 8-12 | Synthesize |

## Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Accountant | Specialist (financial) | 8-12 | Synthesize | strong |
| Politician | Specialist (governance) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: The topic explicitly requires reconciling distinct institutional systems whose constraints interact — three school districts, three teachers' unions with separate contracts, three town communities, and state education officials/funding formula — matching criterion (b) (multi-institutional/stakeholder systems that must interoperate). The prompt cites school consolidation as a canonical positive swap example.
- Effort-invariance check: Confirmed — the decision is driven by topic structure (multi-institutional reconciliation) and would be identical at medium effort.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: strong
  - Topic citation: "All three districts are running structural deficits; the smallest district has a 2-year fund balance remaining before insolvency; combined annual operating budgets total $28M with $4.2M in deferred building maintenance; state per-pupil funding formula penalizes small districts… consolidated district could… save an estimated $1.2M annually"
  - Decision: include

- Persona: Lawyer
  - Trigger strength: moderate
  - Topic citation: "Teachers' unions (3 separate contracts to reconcile)… any consolidation requires voter approval in all three districts… property tax equalization across districts with different tax bases, bond obligations"
  - Decision: exclude

- Persona: Politician
  - Trigger strength: strong
  - Topic citation: "town identity advocates ('our school IS our town')… Building a coalition that can win voter approval in all three districts… Governance structure for the new unified board… Managing the politics of facility closures (which towns lose 'their' school?)"
  - Decision: include

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no technical architecture content in REQUEST)"
  - Decision: exclude

**Notes:** Lawyer qualified as moderate (union-contract reconciliation, voter-approval law, bond obligations, property-tax equalization mechanics) and was within the high-effort ceiling of 2, but Accountant and Politician are the two most central decision axes (financial restructuring and coalition assembly for the vote). Lawyer deferred as an alternative; if a regulatory deep dive is later needed, prioritize labor-law and election-law angles.

<!-- Step 2.1 model audit: orchestrator self-identified as Opus 4.7 (1M context); model-reported: claude-opus-4-7[1m] -->

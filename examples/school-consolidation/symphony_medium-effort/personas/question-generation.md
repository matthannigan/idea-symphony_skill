---
project-name: "Rural School District Consolidation"
session-dir: "test-runs/school-consolidation/med"
datetime: 2026-02-24T05:00:00Z
effort: "medium"
stage: "Phase 2 Step 2.1: Question Generation Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Question Generation Personas

## Tier 1 Personas (always included)

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Questioner | Analytical | 10-15 | Synthesize |
| Analyst | Analytical | 10-15 | Synthesize |
| Devil's Advocate | Structural | 8-12 | Synthesize |
| Appreciative Inquirer | Structural | 8-12 | Synthesize |
| Audience Advocate | Structural | 10-15 | Synthesize |
| Systems Thinker | Structural | 10-15 | Synthesize |
| Provocateur | Perspective | 5-8 | Append |
| Connector | Perspective | 5-8 | Append |
| Visionary | Perspective | 5-8 | Append |
| Storyteller | Perspective | 5-8 | Append |

## Tier 2 Personas (`high` effort only)

N/A — medium effort

## Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Politician | Specialist (governance) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: This is a canonical multi-institutional change topic — three school districts, three teachers' unions with separate contracts, multiple town communities ("our school IS our town"), and state education officials are distinct institutional/stakeholder systems whose constraints must be reconciled (criterion b). The reconciliation across these systems IS the brainstorming need.
- Effort-invariance check: This decision would be the same at low or high effort — it is a topic-structure judgment, not effort-dependent.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: strong
  - Topic citation: "combined annual operating budgets total $28M with $4.2M in deferred building maintenance; state per-pupil funding formula penalizes small districts, meaning consolidation would increase per-pupil allocation by ~12%"
  - Decision: exclude (deferred — see Notes)

- Persona: Lawyer
  - Trigger strength: moderate
  - Topic citation: "Teachers' unions (3 separate contracts to reconcile)" and "any consolidation requires voter approval in all three districts"
  - Decision: exclude

- Persona: Politician
  - Trigger strength: strong
  - Topic citation: "Building a coalition that can win voter approval in all three districts" and "addressing the political, financial, and community identity dimensions that will determine whether a consolidation vote can succeed"
  - Decision: include

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no architectural/engineering content in REQUEST)"
  - Decision: exclude

**Notes:** Accountant also qualified as strong (specific dollar figures, named per-pupil formula, structural deficits, debt consolidation, budget modeling for consolidated entity); deferred per medium ceiling of 1. Politician was selected as more central to the stated brainstorming goal because the REQUEST frames the financial case as input to the decisive mechanism — voter approval — and Devil's Advocate + Systems Thinker + Audience Advocate will surface much of the financial framing through Tier 1 coverage. Lawyer is moderate (real frameworks present: collective bargaining across 3 contracts, bond/debt law, state school consolidation statutes) but the brainstorming need is to navigate these constraints, not to design regulatory architecture; excluded by the medium effort threshold (strong-only).

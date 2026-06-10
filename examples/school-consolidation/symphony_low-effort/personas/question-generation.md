---
project-name: "Rural School District Consolidation"
session-dir: "test-runs/school-consolidation/low"
datetime: 2026-02-24T05:00:00Z
effort: "low"
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

N/A — low effort

## Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Politician | Specialist (governance) | 8-10 | Synthesize | strong |

## Selection Rationale

**Connector/Analogist decision:** Connector (swap)
- Swap rationale: REQUEST involves three districts + three teachers' unions + parent groups + town-identity advocates + fiscal conservatives + state education officials — distinct institutional systems whose constraints (contracts, governance, funding formula, voter approval) must be reconciled across boundaries. This matches the multi-institutional change positive swap example explicitly cited in the swap criteria.
- Effort-invariance check: This decision would be the same at medium and high — it is a topic-structure decision driven by multi-institutional reconciliation, independent of effort level.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: strong
  - Topic citation: "All three districts are running structural deficits; the smallest district has a 2-year fund balance remaining before insolvency; combined annual operating budgets total $28M with $4.2M in deferred building maintenance; state per-pupil funding formula penalizes small districts, meaning consolidation would increase per-pupil allocation by ~12%"
  - Decision: exclude (deferred per low ceiling of 1; see Notes)

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "3 separate contracts to reconcile" / "any consolidation requires voter approval in all three districts"
  - Decision: exclude (operational legal work — bond obligations, contract reconciliation, voter-approval mechanics — not compliance architecture or named statutory regime to design strategy around)

- Persona: Politician
  - Trigger strength: strong
  - Topic citation: "Building a coalition that can win voter approval in all three districts" / "Governance structure for the new unified board" / "Managing the politics of facility closures" / "any consolidation requires voter approval in all three districts"
  - Decision: include

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: (no technical architecture content in REQUEST)
  - Decision: exclude

**Notes:** Accountant also qualified as strong (specific dollar mechanisms, structural deficit math, funding formula). Deferred per low ceiling of 1. The brainstorming goal hinges on "whether a consolidation vote can succeed," which makes coalition/governance politics the dominant decision axis; financial analysis informs the case but politics determine the outcome. Tier 1 personas (Devil's Advocate, Analyst, Systems Thinker) will still surface financial-structure questions.

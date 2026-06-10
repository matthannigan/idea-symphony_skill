# Brainstorming Session Plan

**Project:** Rural School District Consolidation
**Plan Date:** 2026-02-24
**Effort:** `high` *(sourced from user's Phase 1 selection)*
**Persona Selection Review:** auto
**Session Directory:** examples/school-consolidation/symphony_high-effort/

## Status

- **Phase 1 (Context Gathering):** ✅ Complete
  - User uploads: No user files submitted
  - User-defined questions: No
  - Effort: `high`

- **Phase 2 (Question Generation):** ✅ Complete
  - Step 2.1 (Roster): ✅ Complete (orchestrator, Opus self-reported)
  - Step 2.2 (Generate): ✅ Complete (16/16 personas, Sonnet; ~165 raw questions)
  - Step 2.3 (Synthesis): ✅ Complete (Opus; 13 clusters, 85 final questions, compaction 2.88×)
  - Step 2.4 (Brainstorming Persona Selection): ✅ Complete (Opus; 7 personas × 13 clusters = 91 slots)
- **Phase 3 (Multi-Perspective Brainstorming):** ✅ Complete (Haiku; 91/91 files = 13 clusters × 7 personas; quality gate passed)
- **Phase 4 (Response Synthesis):** ✅ Complete (regenerated 2026-06-09 under tone/reframe/humanizer revisions; Opus full synthesis; 13 clusters × 3 docs = attributed/ + _synthesis.md + _summary.md; Haiku humanizer pass on all 13 _summary.md files and all 85 per-question _synthesis blocks; SUMMARIES.md + SYNTHESIS.md rebuilt)
- **Phase 5 (Final Output):** ✅ Complete (regenerated 2026-06-09; Opus; BRAINSTORM.md, ~3,665-word body in the high-effort band; 4 aggregated Central Tensions; per-topic dissents preserved; persona/character/jargon scan clean; inline humanizer pass applied. NLM addon not enabled, so no NOTEBOOK-LM-INSTRUCTIONS.md.)

**Session status: ✅ COMPLETE** (all phases regenerated under the 2026-06-09 tone/reframe/humanizer revisions)

## Notes & Issues

- 2026-06-09 regen: Phase 4 used per-question chunking for the `_synthesis.md` humanizer pass (one Haiku subagent per `### Question` block; race-free disk-based split/reassemble verified lossless before edits). All 13 `central-tension:` frontmatter keys present; framing markers and bold leads preserved (grep-verified); no persona-name leaks in `_synthesis.md`/`_summary.md`. Cluster 09 `_summary.md` humanizer added bold leads to three Key-Theme sentences (benign emphasis, no content change).
- `notebooklm-outputs` flag absent in this PLAN (session predates the NLM addon); Phase 5 produces `BRAINSTORM.md` only.

## Topic Clusters

| # | Slug | Display Name |
|---|------|--------------|
| 1 | `01_problem-framing-and-strategic-alternatives` | Problem Framing and Strategic Alternatives |
| 2 | `02_financial-transition-state-funding-and-tax-bond-restructuring` | Financial Transition, State Funding, and Tax/Bond Restructuring |
| 3 | `03_enrollment-trajectory-and-long-run-sustainability` | Enrollment Trajectory and Long-Run Sustainability |
| 4 | `04_facilities-transportation-and-operating-economics` | Facilities, Transportation, and Operating Economics |
| 5 | `05_union-contract-reconciliation-and-staffing-transition` | Union Contract Reconciliation and Staffing Transition |
| 6 | `06_governance-architecture-and-power-distribution` | Governance Architecture and Power Distribution |
| 7 | `07_coalition-sequencing-and-stakeholder-power` | Coalition Sequencing and Stakeholder Power |
| 8 | `08_voter-approval-mechanics-and-campaign-strategy` | Voter Approval Mechanics and Campaign Strategy |
| 9 | `09_community-identity-civic-anchors-and-our-school-is-our-town` | Community Identity, Civic Anchors, and "Our School Is Our Town" |
| 10 | `10_student-experience-equity-and-family-voice` | Student Experience, Equity, and Family Voice |
| 11 | `11_emotional-landscape-trust-and-the-hidden-costs-of-loss` | Emotional Landscape, Trust, and the Hidden Costs of Loss |
| 12 | `12_strengths-hidden-assets-and-first-experiments` | Strengths, Hidden Assets, and First Experiments |
| 13 | `13_reimagined-institutional-forms-and-the-possibilities-only-consolidation-unlocks` | Reimagined Institutional Forms and the Possibilities Only Consolidation Unlocks |

## Phase 2 Step 2.1: Question Generation Personas

**Effort:** high
**Connector/Analogist:** Connector (swap)

Full rationale: see [personas/question-generation.md](personas/question-generation.md).

### Tier 1 Personas

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

### Tier 2 Personas

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Constraint Flipper | Perspective | 5-8 | Append (3-5 round-robin) |
| Empath | Structural | 8-12 | Synthesize |
| First Principles Thinker | Structural | 7-10 | Synthesize |
| Futurist | Structural | 8-12 | Synthesize |

### Tier 3 Personas

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Accountant | Specialist (financial) | 8-12 | Synthesize |
| Politician | Specialist (governance) | 8-10 | Synthesize |

## Phase 2 Step 2.4: Brainstorming Personas

**Effort:** high — 7 personas per cluster (Core 2 + Inner Ring 2 + Middle/Outer Ring 3). Full rationale: `persona-selections.md`.

| # | Cluster | Topic Type | Inner Ring | Middle/Outer Ring |
|---|---------|-----------|------------|--------------------|
| 01 | Problem Framing & Strategic Alternatives | Strategic/Vision + Novel | First Principles Thinker, Analogist | Visionary, Connector, Provocateur |
| 02 | Financial Transition, Funding, Tax/Bond | Financial + Regulated | Accountant, Systems Thinker | Lawyer, Futurist, Constraint Flipper |
| 03 | Enrollment Trajectory & Sustainability | Strategic/Vision (futures) | Futurist, Systems Thinker | Visionary, Storyteller, Analogist |
| 04 | Facilities, Transportation, Operating Economics | Implementation/Ops + Financial | Constraint Flipper, Simplifier | Accountant, Systems Thinker, Momentum Builder |
| 05 | Union Contract Reconciliation & Staffing | Governance + Regulated | Politician, Empath | Lawyer, Storyteller, Analogist |
| 06 | Governance Architecture & Power Distribution | Governance/Political | Politician, Audience Advocate | Lawyer, Systems Thinker, Futurist |
| 07 | Coalition Sequencing & Stakeholder Power | Governance/Political | Politician, Audience Advocate | Empath, Storyteller, Connector |
| 08 | Voter Approval & Campaign Strategy | Governance + User-Facing | Politician, Storyteller | Audience Advocate, Empath, Analogist |
| 09 | Community Identity & Civic Anchors | User-Facing (identity) | Storyteller, Empath | Audience Advocate, Analogist, Visionary |
| 10 | Student Experience, Equity, Family Voice | User-Facing/Community | Empath, Audience Advocate | Storyteller, Lawyer, Constraint Flipper |
| 11 | Emotional Landscape, Trust, Hidden Costs | User-Facing (emotional) | Empath, Storyteller | Audience Advocate, Provocateur, Connector |
| 12 | Strengths, Hidden Assets, First Experiments | Implementation + Novel | Momentum Builder, Connector | Analogist, Storyteller, Constraint Flipper |
| 13 | Reimagined Institutional Forms | Strategic + Novel + Creative | Visionary, Analogist | Futurist, Provocateur, Connector |

Core (Devil's Advocate + Pragmatist) included in every cluster. No retired personas selected. Cluster-family caps verified per topic.

<!-- Step 2.4 model audit: orchestrator self-identified as Opus 4.7 (1M context); model-reported: claude-opus-4-7 -->


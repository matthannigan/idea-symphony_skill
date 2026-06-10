# Brainstorming Session Plan

**Project:** Rural School District Consolidation
**Plan Date:** 2026-02-24
**Effort:** `medium` *(sourced from user's Phase 1 selection)*
**Persona Selection Review:** auto
**Session Directory:** test-runs/school-consolidation/med/

## Status

- **Phase 1 (Context Gathering):** ✅ Complete
  - User uploads: No user files submitted
  - User-defined questions: No
  - Effort: `medium`

- **Phase 2 (Question Generation):** ✅ Complete
  - Step 2.1 (Roster): ✅ Complete
  - Step 2.2 (Generate Questions): ✅ Complete (11 persona files; ~110 questions total)
  - Step 2.3 (Synthesis): ✅ Complete (9 clusters + 1 additional; N_synth=73, M_synth=29, append=29, total=58; compaction 2.52×; ST-archetype floor met via R11 source-bound substitution)
  - Step 2.4 (Brainstorming Persona Selection): ✅ Complete (9 clusters; 4 personas/topic; quality gates passed)
- **Phase 3 (Multi-Perspective Brainstorming):** ✅ Complete (9 topics × 4 personas = 36 response files; quality gate passed)
- **Phase 4 (Response Synthesis):** ✅ Complete (regenerated 2026-06-09 under merged tone/reframe/humanizer fixes; 9 clusters × 3 docs = attributed/ + _synthesis.md + _summary.md; per-question humanizer pass (52 blocks) + per-file summary pass (9), reassembled and verified; SUMMARIES.md + SYNTHESIS.md built; quality gate passed — no persona-name leakage, framing markers preserved, central-tension present in all 9 summaries)
- **Phase 5 (Final Output):** ✅ Complete (2026-06-09; BRAINSTORM.md generated, ~3,290 words; no NotebookLM addon — flag absent; quality gate passed — all sections present, SYNTHESIS.md index line present for medium, no persona-name leakage, body em-dash budget met)

**Session status: ✅ COMPLETE**

## Notes & Issues

(None)

## Phase 2 Step 2.1: Question Generation Personas

**Effort:** medium
**Connector/Analogist:** Connector (swap)

Full rationale: see [personas/question-generation.md](personas/question-generation.md).

### Tier 1 Personas

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

### Tier 2 Personas

N/A — medium effort

### Tier 3 Personas

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Politician | Specialist (governance) | 8-10 | Synthesize |

## Phase 2 Step 2.4: Brainstorming Personas

**Effort Level:** medium (4 personas per topic = Core + 2 Inner Ring)

**Cluster count:** 9 topic clusters processed (the `## Additional Questions` section is excluded from Phase 3).

| # | Topic Cluster | Topic Type | Core (always) | Inner Ring Pick 1 | Inner Ring Pick 2 |
|---|--------------|-----------|----------------|--------------------|--------------------|
| 01 | Financial Case, Transition Costs, and Tax Burden | Financial/Business | Devil's Advocate, Pragmatist | Accountant | Systems Thinker |
| 02 | Voter Approval and the Three-District Coalition | Governance/Political | Devil's Advocate, Pragmatist | Politician | Audience Advocate |
| 03 | Governance Architecture for the Unified Board | Governance/Political | Devil's Advocate, Pragmatist | Politician | Audience Advocate |
| 04 | Union Contract Reconciliation and the Staffing Reality | Governance/Political (with financial/human dimensions) | Devil's Advocate, Pragmatist | Politician | Empath |
| 05 | Facilities Decisions, Closures, and Symbolic Loss | User-Facing/Community (with implementation dimension) | Devil's Advocate, Pragmatist | Storyteller | Empath |
| 06 | Transportation, Equity, and Daily Lived Experience | User-Facing/Community (with implementation dimension) | Devil's Advocate, Pragmatist | Audience Advocate | Storyteller |
| 07 | Enrollment Decline and the Long Arc | Strategic/Vision | Devil's Advocate, Pragmatist | Futurist | Visionary |
| 08 | Community Identity, Trust, and Whose Voice Is Heard | User-Facing/Community | Devil's Advocate, Pragmatist | Empath | Audience Advocate |
| 09 | What Already Works, and What a Generative Consolidation Could Unlock | Strategic/Vision (novel/generative) | Devil's Advocate, Pragmatist | Visionary | Connector |

Detailed per-topic rationale and quality-gate verification: see `persona-selections.md`.

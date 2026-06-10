# Brainstorming Session Plan

**Project:** Youth Mentorship Program for At-Risk Teens
**Plan Date:** 2026-02-24
**Effort:** `high` *(sourced from user's Phase 1 selection)*
**Persona Selection Review:** auto
**Session Directory:** test-runs/youth-mentorship/high/

## Status

- **Phase 1 (Context Gathering):** ✅ Complete
  - User uploads: No user files submitted
  - User-defined questions: Yes (10 questions — see USER-QUESTIONS.md)
  - Effort: `high`

- **Phase 2 (Question Generation):** ✅ Complete
  - Step 2.1 (Question Gen Roster): ✅ Complete (model-reported: claude-opus-4-7)
  - Step 2.2 (Generate Questions): ✅ Complete — 15/15 persona files (157 questions total). All files have stream/category/volume frontmatter.
  - Step 2.3 (Question Synthesis): ✅ Complete — 83 questions across 12 clusters (compaction 2.69×). Hard floors: ai_orphan=4 (≥3), st_archetype=3 (≥3, R11 source-bound), [User Q] markers=10/10.
  - Step 2.4 (Brainstorming Persona Selection): ✅ Complete — 12 clusters × 7 personas. DA + Pragmatist on every cluster; no retired personas; ≤3-per-family verified.
- **Phase 3 (Multi-Perspective Brainstorming):** ✅ Complete — 12 clusters × 7 personas = 84 response files (model-requested: haiku, model-reported: claude-haiku-4-5-20251001 across subagents). All clusters have full 7-file rosters per persona-selections.md.
- **Phase 4 (Response Synthesis):** ✅ Complete (2026-06-10) — 12 clusters × 3 docs (attributed/synthesis/summary) via Opus full-synthesis. All summaries carry `central-tension:` frontmatter. Per-question Haiku humanizer pass applied to all 83 `### Question` blocks (split → in-place edit on isolated temp blocks → deterministic reassembly) plus all 12 `_summary.md` files (in-place). SUMMARIES.md (48 sections) and SYNTHESIS.md (83 questions) built from humanized substrate. Persona-name hygiene verified for Docs 2/3.
- **Phase 5 (Final Output):** ✅ Complete (2026-06-10) — BRAINSTORM.md written (Opus, model-reported claude-opus-4-8), inline humanizer pass applied. Body 3,701 words (within high band 2,800–4,500); 12 per-topic blocks each preserving their cluster's reversal/dissent; Central Tensions surfaces 4 meta-tensions; all 12 `_summary.md` links resolve; SYNTHESIS.md kept in Session Index (high effort); persona/character/jargon audit clean. `notebooklm-outputs` absent → BRAINSTORM.md only.

**Session status: ✅ COMPLETE (2026-06-10).**

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
| Lawyer | Specialist (regulatory) | 8-10 | Synthesize |

## Phase 2 Step 2.4: Brainstorming Personas

| Cluster # | Cluster Name | Personas |
|-----------|--------------|----------|
| 01 | Foundations, Purpose, and Theory of Change | Devil's Advocate, Pragmatist, Visionary, Futurist, Provocateur, Constraint Flipper, Analogist |
| 02 | Volunteer Screening, Background Checks, and Disqualifying Criteria | Devil's Advocate, Pragmatist, Lawyer, Systems Thinker, Empath, Audience Advocate, Analogist |
| 03 | Matching Architecture and Two-Sided Compatibility | Devil's Advocate, Pragmatist, Audience Advocate, Empath, Storyteller, Analogist, Visionary |
| 04 | Mentor Training, Ongoing Support, and Burnout Prevention | Devil's Advocate, Pragmatist, Empath, Momentum Builder, Storyteller, Analogist, Constraint Flipper |
| 05 | Safety Protocols, Meeting Logistics, and Felt Safety | Devil's Advocate, Pragmatist, Lawyer, Empath, Audience Advocate, Provocateur, Constraint Flipper |
| 06 | Mandatory Reporting, Concern Escalation, and Disclosure Trust | Devil's Advocate, Pragmatist, Lawyer, Empath, Analogist, Systems Thinker, Storyteller |
| 07 | Liability Exposure, Insurance, and Legal Architecture | Devil's Advocate, Pragmatist, Lawyer, Systems Thinker, Constraint Flipper, Provocateur, Analogist |
| 08 | Consent, Data Privacy, and Cross-Institutional Information Flow | Devil's Advocate, Pragmatist, Lawyer, Systems Thinker, Connector, Analogist, Empath |
| 09 | Family, Guardian, and Community Inclusion | Devil's Advocate, Pragmatist, Audience Advocate, Empath, Storyteller, Politician, Connector |
| 10 | Teen Voice, Power Dynamics, and Dignity | Devil's Advocate, Pragmatist, Empath, Audience Advocate, Storyteller, Provocateur, Visionary |
| 11 | Outcome Measurement, Evidence, and Program Learning | Devil's Advocate, Pragmatist, Systems Thinker, Audience Advocate, Analogist, Futurist, Constraint Flipper |
| 12 | Match Lifecycle, Endings, and Long-Term Sustainability | Devil's Advocate, Pragmatist, Systems Thinker, Visionary, Storyteller, Futurist, Momentum Builder |

## Topic Clusters

| # | Slug | Display Name |
|---|------|--------------|
| 1 | 01_foundations-purpose-and-theory-of-change | Foundations, Purpose, and Theory of Change |
| 2 | 02_volunteer-screening-background-checks-and-disqualifying-criteria | Volunteer Screening, Background Checks, and Disqualifying Criteria |
| 3 | 03_matching-architecture-and-two-sided-compatibility | Matching Architecture and Two-Sided Compatibility |
| 4 | 04_mentor-training-ongoing-support-and-burnout-prevention | Mentor Training, Ongoing Support, and Burnout Prevention |
| 5 | 05_safety-protocols-meeting-logistics-and-felt-safety | Safety Protocols, Meeting Logistics, and Felt Safety |
| 6 | 06_mandatory-reporting-concern-escalation-and-disclosure-trust | Mandatory Reporting, Concern Escalation, and Disclosure Trust |
| 7 | 07_liability-exposure-insurance-and-legal-architecture | Liability Exposure, Insurance, and Legal Architecture |
| 8 | 08_consent-data-privacy-and-cross-institutional-information-flow | Consent, Data Privacy, and Cross-Institutional Information Flow |
| 9 | 09_family-guardian-and-community-inclusion | Family, Guardian, and Community Inclusion |
| 10 | 10_teen-voice-power-dynamics-and-dignity | Teen Voice, Power Dynamics, and Dignity |
| 11 | 11_outcome-measurement-evidence-and-program-learning | Outcome Measurement, Evidence, and Program Learning |
| 12 | 12_match-lifecycle-endings-and-long-term-sustainability | Match Lifecycle, Endings, and Long-Term Sustainability |

## Notes & Issues

(None)

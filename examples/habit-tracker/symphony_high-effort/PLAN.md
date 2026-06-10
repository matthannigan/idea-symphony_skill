# Brainstorming Session Plan

**Project:** Modern Habit Tracker Web App
**Plan Date:** 2026-02-18
**Effort:** `high` *(sourced from user's Phase 1 selection)*
**Persona Selection Review:** auto
**Session Directory:** examples/habit-tracker/symphony_high-effort/

## Status

- **Phase 1 (Context Gathering):** ✅ Complete
  - User uploads: 1 file (context/habit-tracker-prd.md)
  - User-defined questions: No
  - Effort: `high`

- **Phase 2 (Question Generation):**
  - Step 2.1 (Roster Selection): ✅ Complete
  - Step 2.2 (Question Generation): ✅ Complete — 14 persona files, 146 raw questions
  - Step 2.3 (Synthesis): ✅ Complete — 11 clusters, 71 total questions (39 synthesize + 32 append), compaction 2.85×, R11 source-bound exception applied
  - Step 2.4 (Brainstorming Persona Selection): ✅ Complete — see persona-selections.md
- **Phase 3 (Multi-Perspective Brainstorming):** ✅ Complete — 77 persona responses (7 × 11 topics, Haiku)
- **Phase 4 (Response Synthesis):** ✅ Complete (regenerated 2026-06-09) — 11 attributed + 11 synthesis + 11 summary docs (Opus), humanized (Haiku), `SUMMARIES.md` + `SYNTHESIS.md` built. All 11 `central-tension` keys present; persona-name audit clean.
- **Phase 5 (Final Output):** ✅ Complete (2026-06-09) — `BRAINSTORM.md` produced (Opus), humanized in place. Body ~3,333 words (high band 2,800–4,500); persona/character/jargon audit clean; SYNTHESIS.md link retained. No NotebookLM addon (flag absent).

**Session status: ✅ COMPLETE**

## Phase 2 Step 2.1: Question Generation Personas

**Effort:** high
**Connector/Analogist:** Analogist (default)

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
| Analogist | Perspective | 5-8 | Append |
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

None selected — no triggers at or above moderate threshold for this topic

## Phase 2 Step 2.4: Brainstorming Personas

Seven personas per cluster: Core (Devil's Advocate ★ + Pragmatist ★) + Inner Ring (2 topic-matched) + Middle Ring cluster completers (3). Full rationale in `persona-selections.md`.

| # | Cluster | Personas (★ = core) |
|---|---------|---------------------|
| 01 | First Principles and the Job-to-Be-Done | Devil's Advocate ★, Pragmatist ★, First Principles Thinker, Visionary, Provocateur, Analogist, Simplifier |
| 02 | Differentiation and Positioning in a Crowded Market | Devil's Advocate ★, Pragmatist ★, Visionary, Futurist, Systems Thinker, Constraint Flipper, Analogist |
| 03 | Monetization and the Freemium Gate | Devil's Advocate ★, Pragmatist ★, Accountant, Audience Advocate, Futurist, Empath, Constraint Flipper |
| 04 | Streak Anxiety, Grace Mechanics, and the Emotional Interior | Devil's Advocate ★, Pragmatist ★, Empath, Storyteller, Audience Advocate, Provocateur, Analogist |
| 05 | Behavioral Science as Architecture vs. Framing | Devil's Advocate ★, Pragmatist ★, First Principles Thinker, Visionary, Analogist, Provocateur, Systems Thinker |
| 06 | Notifications, Attention, and Trust Infrastructure | Devil's Advocate ★, Pragmatist ★, Audience Advocate, Empath, Futurist, Analogist, Constraint Flipper |
| 07 | The Weekly Review as Keystone Habit | Devil's Advocate ★, Pragmatist ★, Empath, Storyteller, Audience Advocate, Simplifier, Momentum Builder |
| 08 | Check-In Speed and the Partial-Logging Dilemma | Devil's Advocate ★, Pragmatist ★, Technical Expert, Simplifier, Storyteller, Empath, Constraint Flipper |
| 09 | Local-First Architecture, Data Sovereignty, and Sync Conflict | Devil's Advocate ★, Pragmatist ★, Technical Expert, First Principles Thinker, Systems Thinker, Futurist, Analogist |
| 10 | Access, Inclusion, and the Returner's Emotional Landscape | Devil's Advocate ★, Pragmatist ★, Empath, Audience Advocate, Storyteller, Visionary, Analogist |
| 11 | Inactive Users, Drift, and What Success Actually Means | Devil's Advocate ★, Pragmatist ★, Empath, Visionary, Storyteller, Audience Advocate, Futurist |

## Topic Clusters

| # | Slug | Display Name |
|---|------|--------------|
| 01 | 01_first-principles-and-the-job-to-be-done | First Principles and the Job-to-Be-Done |
| 02 | 02_differentiation-and-positioning-in-a-crowded-market | Differentiation and Positioning in a Crowded Market |
| 03 | 03_monetization-and-the-freemium-gate | Monetization and the Freemium Gate |
| 04 | 04_streak-anxiety-grace-mechanics-and-the-emotional-interior | Streak Anxiety, Grace Mechanics, and the Emotional Interior |
| 05 | 05_behavioral-science-as-architecture-vs-framing | Behavioral Science as Architecture vs. Framing |
| 06 | 06_notifications-attention-and-trust-infrastructure | Notifications, Attention, and Trust Infrastructure |
| 07 | 07_the-weekly-review-as-keystone-habit | The Weekly Review as Keystone Habit |
| 08 | 08_check-in-speed-and-the-partial-logging-dilemma | Check-In Speed and the Partial-Logging Dilemma |
| 09 | 09_local-first-architecture-data-sovereignty-and-sync-conflict | Local-First Architecture, Data Sovereignty, and Sync Conflict |
| 10 | 10_access-inclusion-and-the-returner-s-emotional-landscape | Access, Inclusion, and the Returner's Emotional Landscape |
| 11 | 11_inactive-users-drift-and-what-success-actually-means | Inactive Users, Drift, and What Success Actually Means |

## Notes & Issues

(None)

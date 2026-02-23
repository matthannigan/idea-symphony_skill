# Phase 2B Question Generation — Data Generation Task DG2

**Date:** 2026-02-21
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- Test script: `test-runs/symphony-phase2-questions-persona-eval/question-generation-tests_2026-02-21_q10-15.md`
- Persona prompts (Tier 1): `idea-symphony/references/personas/the-questioner.md`, `the-analyst.md`, `the-devils-advocate.md`, `the-storyteller.md`, `the-analogist.md`, `the-appreciative-inquirer.md`, `the-provocateur.md`, `the-visionary.md`
- Persona prompts (promotion candidates): `the-audience-advocate.md`, `the-empath.md`, `the-systems-thinker.md`, `the-first-principles-thinker.md`

---

## Background

Phase 2B research identified 8 Tier 1 personas with the strongest differentiation and output quality: The Questioner, The Analyst, The Devil's Advocate, The Storyteller, The Analogist, The Appreciative Inquirer, The Provocateur, and The Visionary. Additionally, 4 promotion candidates (Audience Advocate, Empath, Systems Thinker, First Principles Thinker) are included to enable cross-volume comparison for roster composition investigations (I-R1, I-R2). To test volume optimization (RQ8) and roster promotions (RQ9), we need question generation data at 10-15 volume alongside the existing 15-20 baseline.

This task generates that data using Haiku subagents across three concrete topics, producing 36 total question files for downstream analysis.

### Research Questions
- **RQ8:** Volume Optimization — Can Tier 1 personas produce high-quality questions at 10-15 volume using Haiku, and how does this compare to 15-20 volume in terms of efficiency and diversity?
- **RQ9:** Roster Promotions — Generating data for promotion candidates at multiple volumes enables cross-volume comparison in I-R1 and I-R2.

---

## Investigation Task

### I-DG2: Generate 10-15 Question Data for Tier 1 Personas

**Key question:** Can Tier 1 personas produce high-quality questions at 10-15 volume using Haiku within reasonable latency, maintaining question diversity and strategic framing?

**Setup:**
- **Model:** Haiku (claude-haiku-4-5-20251001)
- **Personas (12):**
  - Tier 1 (8): The Questioner, The Analyst, The Devil's Advocate, The Storyteller, The Analogist, The Appreciative Inquirer, The Provocateur, The Visionary
  - Promotion candidates (4): The Audience Advocate, The Empath, The Systems Thinker, The First Principles Thinker
- **Topics:** space-party, tool-library, habit-tracker
- **Volume:** 10-15 questions per persona per topic
- **Clusters:** 3-5 topic clusters per persona per topic
- **Total runs:** 36 (12 personas × 3 topics)
- **Batching:** 6 batches of 6 runs each (2 batches per topic)

**Files to generate:**
Execute subagent runs for each (persona, topic) pair using test script `test-runs/symphony-phase2-questions-persona-eval/question-generation-tests_2026-02-21_q10-15.md`. Each run reads the appropriate persona prompt and topic context, then generates 10-15 questions with 3-5 topic clusters.

**Output structure:**
```
test-runs/symphony-phase2-questions-persona-eval/
├── space-party_2026-02-21_q10-15/questions/by-persona/
│   ├── the-questioner.md
│   ├── the-analyst.md
│   ├── the-devils-advocate.md
│   ├── the-storyteller.md
│   ├── the-analogist.md
│   ├── the-appreciative-inquirer.md
│   ├── the-provocateur.md
│   ├── the-visionary.md
│   ├── the-audience-advocate.md
│   ├── the-empath.md
│   ├── the-systems-thinker.md
│   ├── the-first-principles-thinker.md
├── tool-library_2026-02-21_q10-15/questions/by-persona/
│   ├── [12 persona files]
└── habit-tracker_2026-02-21_q10-15/questions/by-persona/
    └── [12 persona files]
```

**Verification criteria:**
- YAML frontmatter with `persona`, `topic`, `volume`, `clusters`, `model`, `timestamp` fields
- `## Questions` heading followed by 10-15 numbered questions
- 3-5 topic clusters represented in questions
- Footer line: `---` followed by metadata (generated date, model, volume)
- Questions demonstrate persona-specific framing (e.g., systems-thinking for Analyst, stakeholder focus for Questioner)
- No duplicate questions across the set

**Expected output:**
- 36 generated question files (12 persona files × 3 topic directories)
- ~120-180 total questions across all runs (10-15 per persona per topic)

**Priority:** Blocking — all Phase 2B investigations and comparative analyses depend on this 10-15 volume data.

---

## Output
**Output files:** 36 question generation outputs in structure above
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-21_q10-15/questions/by-persona/*.md`
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-21_q10-15/questions/by-persona/*.md`
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-21_q10-15/questions/by-persona/*.md`

## Priority
**Blocking** — Phase 2B question generation research (RQ8 volume optimization) cannot proceed without this 10-15 volume dataset. All downstream comparative analyses, efficiency metrics, and quality evaluations depend on having data at multiple volume levels.

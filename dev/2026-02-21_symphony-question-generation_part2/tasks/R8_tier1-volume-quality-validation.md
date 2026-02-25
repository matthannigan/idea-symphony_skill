# Phase 2B Question Generation — Validation Investigation

**Date:** 2026-02-24
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- V1 per-persona volume-quality (take 2) findings — `findings/V1_per-persona-volume-quality_take2.md`
- Persona selection guide — `idea-symphony/references/persona-selection-guide_Phase2B.md`
- 10 Tier 1 persona merged test data files — `test-runs/symphony-phase2-questions-persona-eval/_merged/PERSONA_ALL_{persona}_2026-02-24.md`
- All topic requests — `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md`

---

## Background

### Context

The V1 take 2 investigation established per-persona volume recommendations, category assignments (Perspective/Structural/Analytical), filler onset thresholds, and Phase 2C method recommendations (synthesize vs append) based on test runs across 3 topics (habit-tracker, space-party, tool-library) at 4 volume levels (5, 5-10, 10-15, 15-20).

Those findings were used to stabilize the Effort Level Mapping in the persona selection guide, which now uses tighter volume buckets aligned to each persona's category:

| Category | Personas | Stabilized Volume Buckets |
|:---|:---|:---|
| **Analytical** | Questioner | 10-15 (low/medium), 15-20 (high) |
| **Analytical** | Analyst | 8-12 (low), 10-15 (medium/high) |
| **Structural** | Devil's Advocate, Appreciative Inquirer | 8-12 (low/medium), 10-15 (high) |
| **Structural** | Audience Advocate, Systems Thinker | 8-12 (low), 10-15 (medium/high) |
| **Perspective** | Provocateur, Analogist, Visionary, Storyteller | 5-8 (all effort levels) |

Seven new topics have been added to the test corpus (career-change, food-truck, mobile-app, property-management, school-consolidation, wearable-device, youth-mentorship), bringing the total to 10 topics. New test data has been generated at the stabilized volume buckets (not the original 4-level spectrum).

### Purpose

This investigation validates that the V1 take 2 findings hold across the expanded topic set with the stabilized volume buckets. We are **not** re-running the full 4-level analysis — we are confirming that the recommendations already made are well-supported by the new data.

### Research Questions

- **RQ-R8a:** Do the per-persona volume recommendations from V1 take 2 hold across 7 new, more diverse topics?
- **RQ-R8b:** Do quality characteristics, filler onset thresholds, and category assignments remain consistent?
- **RQ-R8c:** (Perspective personas only) Does the 5-8 output support the round-robin append strategy at low (3), medium (5), and high (all) effort levels?

---

## Investigation Task

### I-R8: Tier 1 Volume-Quality Validation

**Key question:** Do the V1 take 2 per-persona findings hold when tested against 7 new topics at the stabilized volume buckets?

**Research questions addressed:** RQ-R8a, RQ-R8b, RQ-R8c

**Execution model:** 10 parallel Opus subagents (one per persona), each producing a validation report. No orchestrator synthesis step — per-persona verdicts stand independently.

### Subagent Design

Each subagent receives:

1. **REQUESTS_ALL.md** (~17K) — All 10 topic descriptions for context
2. **PERSONA_ALL_{persona}_2026-02-24.md** (~42-164K) — All test runs for that persona across all topics at stabilized volume levels
3. **V1 take 2 findings excerpt** — The specific per-persona section from `findings/V1_per-persona-volume-quality_take2.md` for the persona being validated

Total input per subagent: ~60-180K, well within context.

### Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt:

````
You are validating whether the findings from a previous per-persona volume-quality analysis still hold when tested against new topic data.

## Your Persona: {persona_name}

## Task

Read the following files:
1. `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` — descriptions of all 10 test topics
2. `test-runs/symphony-phase2-questions-persona-eval/_merged/PERSONA_ALL_{persona}_2026-02-24.md` — all question generation test runs for {persona_name}
3. The V1 take 2 findings excerpt below for {persona_name}

Then produce a validation report assessing whether each finding still holds.

## V1 Take 2 Findings for {persona_name}

{paste the relevant per-persona section from V1_per-persona-volume-quality_take2.md}

## Validation Criteria

For each finding listed in the V1 take 2 excerpt, assess:

1. **Volume compliance:** Does the persona hit the target range, or does it consistently over/undershoot? Note any topics where volume deviates significantly.

2. **Quality at recommended range:** Do questions at the stabilized volume levels maintain the quality characteristics described in V1 take 2 (focused, open-ended, specific, non-redundant)?

3. **Filler assessment:** At the higher volume bucket, does filler appear at roughly the threshold described in V1 take 2? Is it better or worse than expected?

4. **Cross-topic consistency:** Do the new topics (career-change, food-truck, mobile-app, property-management, school-consolidation, wearable-device, youth-mentorship) produce results consistent with the original 3 topics, or do certain topic types expose weaknesses?

5. **Category assignment:** Does the persona's behavior at these volumes confirm its Perspective/Structural/Analytical category assignment?

{FOR PERSPECTIVE PERSONAS ONLY — include this additional section:}

6. **Append strategy suitability:** The Perspective persona append strategy works as follows:
   - The persona generates 5-8 questions, organized into thematic clusters
   - At LOW effort, 3 questions are selected (one per cluster, round-robin)
   - At MEDIUM effort, 5 questions are selected (one per cluster, then fill from largest clusters)
   - At HIGH effort, all 5-8 questions are appended (no selection)

   Assess whether the 5-8 question output across all topics supports this strategy:
   - Are clusters well-formed enough for round-robin selection to capture diversity?
   - At 3 questions, would round-robin still capture the persona's distinctive value?
   - Is the persona's distinctive voice preserved across the full range of topics?
   - Would any questions lose essential context if selected individually (vs. as part of a cluster)?

## Output Format

```markdown
# R8 Validation: {persona_name}

**Category:** {Perspective | Structural | Analytical}
**V1 Take 2 Recommended Range:** {range}
**Stabilized Buckets Tested:** {buckets}
**Topics Covered:** {count} ({list})

## Verdict: {CONFIRMED | REVISED | FLAGGED}

{1-2 sentence summary of whether findings hold}

## Volume Compliance

{Assessment of whether the persona hits target ranges across topics}

## Quality Assessment

{Brief assessment of question quality at each tested volume level}

## Filler Assessment

{Comparison of observed filler to V1 take 2 filler threshold}

## Cross-Topic Consistency

{Any notable variations across the new topics}

## Category Confirmation

{Does the persona's behavior confirm its category?}

{FOR PERSPECTIVE PERSONAS ONLY:}
## Append Strategy Assessment

{Assessment of round-robin cluster selection suitability}

## Notable Deviations

{Any findings that diverge from V1 take 2 — could be better or worse than expected}
```

Do NOT re-run the full V1 take 2 analysis. Focus on whether the existing findings hold, not on producing a new comprehensive assessment. Be concise — the goal is a validation verdict with supporting evidence, not a deep research paper.

## Output Format

Save your output to: dev/2026-02-21_symphony-question-generation_part2/findings/R8_tier1-volume-quality-validation_{persona_name}.md
````

### Personas and Their Test Data

| # | Persona | Category | V1 Rec. Range | Stabilized Buckets | PERSONA_ALL Size | Runs |
|:---|:---|:---|:---|:---|:---|:---|
| 1 | Questioner | Analytical | 12-20 | q10-15 (×5), q15-20 (×10) | 110K | 15 |
| 2 | Analyst | Analytical | 10-15 | q08-12 (×10), q10-15 (×5) | 102K | 15 |
| 3 | Devil's Advocate | Structural | 8-12 | q08-12 (×10), q10-15 (×5) | 114K | 15 |
| 4 | Appreciative Inquirer | Structural | 8-12 | q08-12 (×10), q10-15 (×5) | 99K | 15 |
| 5 | Audience Advocate | Structural | 10-15 | q08-12 (×10), q10-15 (×5) | 114K | 15 |
| 6 | Systems Thinker | Structural | 10-15 | q08-12 (×10), q10-15 (×5) | 164K | 15 |
| 7 | Provocateur | Perspective | 5-8 | q05-08 (×10) | 46K | 10 |
| 8 | Analogist | Perspective | 5-8 | q05-08 (×10) | 42K | 10 |
| 9 | Visionary | Perspective | 5-8 | q05-08 (×10) | 48K | 10 |
| 10 | Storyteller | Perspective | 5-8 | q05-08 (×10) | 42K | 10 |

### Batching strategy

Run in batches of up to 5 concurrent, parallel subagents. Each subagent run is independent — no dependencies between runs.

### Expected Output

**Per-persona:** 10 validation reports (one per subagent), each containing:
- Verdict: CONFIRMED / REVISED / FLAGGED
- Volume compliance assessment
- Quality and filler assessment vs V1 take 2 thresholds
- Cross-topic consistency notes
- Category confirmation
- (Perspective only) Append strategy suitability assessment
- Notable deviations

**Compiled output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/R8_tier1-volume-quality-validation.md`

The compiled document should contain:
1. A summary table with all 10 verdicts
2. The full text of each subagent's validation report
3. A brief "Deviations and Action Items" section listing only findings that diverge from V1 take 2

---

## Dependency Notes

- **Depends on:** V1 take 2 findings (complete), persona selection guide Effort Level Mapping (complete), new test data generation (complete)
- **Blocks:** Final confirmation of Tier 1 Effort Level Mapping; confidence to proceed with implementation
- **Data generation:** Not required — all test data already generated

## Priority

**High** — This is the final validation gate before the Tier 1 effort level configuration is considered stable. Low execution risk (data exists, methodology is clear), but the confirmation is needed before proceeding.

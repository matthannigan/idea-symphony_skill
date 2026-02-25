# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-24
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- V1 per-persona volume-quality (take 2) — establishes methodology and comparison framework
- Phase 2B persona selection guide — Tier 2 persona guidance and notes
- D2 Tier 1 Analytical/Structural effort mapping — establishes the synthesis context these personas feed into
- 4 Tier 2 persona merged test data files — `test-runs/symphony-phase2-questions-persona-eval/_merged/PERSONA_ALL_{persona}_2026-02-24.md`
- All topic requests — `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md`

---

## Background

### Context

Tier 2 question personas (**Constraint Flipper**, **Empath**, **First Principles Thinker**, **Futurist**) are included only on **high effort** runs. Their questions feed into Phase 2C synthesis alongside Tier 1 Analytical and Structural personas. Volume ranges and quality characteristics have not been validated at the same depth as Tier 1.

The Simplifier was originally in Tier 2 but has been moved to Tier 3 based on the persona selection guide's assessment that it is "better as a Phase 3 answerer than Phase 2B core generator" and should only be used "when simplification is explicitly part of the user's stated goal."

### What We Know from the Selection Guide

| Persona | Likely Category | Key Characteristics | Open Questions |
|:---|:---|:---|:---|
| **Constraint Flipper** | Perspective-like | Inversion operation, exhaustible, 14-17 Qs consistently (CV=3.7%). Lowest selflessness of generative tier. | Does inversion quality degrade at the same rate as Provocateur? Is the exhaustibility threshold lower? |
| **Empath** | Structural-like | ~75% human-centered, extreme consistency (CV=1.4%). Distinctiveness degrades at lower volumes. ~25-30% convergence with Storyteller. | What is the minimum volume to maintain distinctiveness from Storyteller/Appreciative Inquirer? |
| **First Principles Thinker** | Analytical-like | ~87% analytical, ~40-45% overlap with Questioner. Lower unique territory (~35-40%) than Systems Thinker (~56-60%). | Does its ontological questioning add sufficient value beyond what Questioner already covers? |
| **Futurist** | Structural-like | 56% Strategic, ~29% temporal lens anti-pattern rate. Strongest on civic/technical topics. | Does the anti-pattern rate decrease at lower volumes (are the temporal-decoration questions the filler)? |

### Research Questions

- **RQ12a:** What is the optimal volume range for each Tier 2 persona at high effort?
- **RQ12b:** Do Tier 2 personas follow the same Perspective/Structural/Analytical category patterns as Tier 1, or do they require new categories?
- **RQ12c:** At what volume does filler onset occur for each Tier 2 persona?
- **RQ12d:** All Tier 2 personas are currently designated for synthesis in Phase 2C. Is this correct, or should any follow the Append path? (Constraint Flipper is the primary candidate for Append treatment given its distinctive inversion operation.)

---

## Investigation Task

### I-R5: Tier 2 Per-Persona Volume-Quality Assessment

**Key question:** For each Tier 2 persona, what is the optimal question volume at high effort, and does the persona's output belong in synthesis or append in Phase 2C?

**Research questions addressed:** RQ12a-d

**Execution model:** 4 parallel Opus subagents (one per persona), each producing a per-persona assessment. An orchestrator synthesis step compiles the 4 reports and answers the cross-persona research questions (RQ12b category patterns, RQ12d synthesis vs append).

### Test Data

Test data has been generated for each Tier 2 persona across all 10 topics at 3 volume levels:
- 5-8 questions (Perspective-range test)
- 8-12 questions (Structural-range test)
- 10-15 questions (Analytical-range test)

Data was generated using the same generative prompt structure as V1 take 2 (documented in `tasks/V1_per-persona-volume-quality_take2.md`).

### Subagent Design

Each subagent receives:

1. **REQUESTS_ALL.md** (~17K) — All 10 topic descriptions for context
2. **PERSONA_ALL_{persona}_2026-02-24.md** (~125-153K) — All test runs for that persona across all topics at all volume levels
3. **Selection guide excerpt** — The relevant per-persona guidance and notes from the persona selection guide

Total input per subagent: ~140-170K, well within context.

### Personas and Their Test Data

| # | Persona | Likely Category | PERSONA_ALL Size | Volume Levels | Runs |
|:---|:---|:---|:---|:---|:---|
| 1 | Constraint Flipper | Perspective-like | 137K | q05-08 (×10), q08-12 (×10), q10-15 (×5) | 25 |
| 2 | Empath | Structural-like | 125K | q05-08 (×10), q08-12 (×10), q10-15 (×5) | 25 |
| 3 | First Principles Thinker | Analytical-like | 138K | q05-08 (×10), q08-12 (×10), q10-15 (×4) | 24 |
| 4 | Futurist | Structural-like | 153K | q05-08 (×10), q08-12 (×10), q10-15 (×4) | 24 |

### Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt:

````
You are conducting a volume-quality assessment for a Phase 2B question-generation persona to determine its optimal volume range, category assignment, and Phase 2C method.

## Your Persona: {persona_name}

## Task

Read the following files:
1. `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` — descriptions of all 10 test topics
2. `test-runs/symphony-phase2-questions-persona-eval/_merged/PERSONA_ALL_{persona}_2026-02-24.md` — all question generation test runs for {persona_name}
3. The selection guide excerpt below for {persona_name}

Then produce a per-persona volume-quality assessment.

## Selection Guide Excerpt for {persona_name}

{paste the relevant row from the "What We Know from the Selection Guide" table and the per-persona guidance from persona-selection-guide_Phase2B.md}

## Assessment Criteria

1. **Volume-quality curve:** For each of the three volume levels (5-8, 8-12, 10-15), assess question quality — are questions focused, open-ended, specific, and non-redundant? Identify the filler onset point and optimal range.

2. **Category assignment:** Does the persona behave like a Perspective (best at 5-8, distinctive voice that becomes formulaic at higher volumes), Structural (best at 8-12, framework-driven with natural cluster structure), or Analytical (best at 10-15+, breadth-seeking with systematic coverage)? Base this on observed behavior, not the "likely category" from the selection guide.

3. **Overlap with Tier 1:** Measure thematic convergence with the persona's Tier 1 counterpart(s):
{persona-specific overlap pairs — see comparison criteria below}

4. **Synthesis vs Append determination:** Does the persona produce questions with distinctive framing that would be diluted by synthesis (→ Append) or high thematic overlap with other personas that benefits from cross-referencing (→ Synthesis)?

5. **Filler detection:** At the highest volume level tested, estimate what percentage of questions are redundant, low-value, or duplicative. What characterizes the filler (thematic repetition, dimensional drift, granularity inflation, formulaic voice)?

6. **Cross-topic consistency:** Do findings hold across all 10 topics or vary by topic type? Are there topic types where this persona is notably stronger or weaker?

{FOR FUTURIST ONLY — include this additional section:}

7. **Anti-pattern detection:** Measure the temporal lens anti-pattern rate at each volume level — questions that are standard planning questions with trend decoration bolted on. Does lower volume reduce the rate?

## Comparison Pairs

- Constraint Flipper ↔ Provocateur (both challenge assumptions via inversion)
- Empath ↔ Storyteller and Audience Advocate (all human-centered)
- First Principles Thinker ↔ Questioner (both analytical assumption-challengers)
- Futurist ↔ Visionary (both forward-looking)

## Output Format

```markdown
# R5 Assessment: {persona_name}

**Likely Category (from selection guide):** {category}
**Assessed Category:** {Perspective | Structural | Analytical}
**Recommended Volume Range:** {range}
**Filler Onset:** ~{N} questions
**Phase 2C Method:** {Synthesis | Append}

## Volume-Quality Curve

### 5-8 Questions
{Assessment}

### 8-12 Questions
{Assessment}

### 10-15 Questions
{Assessment}

## Category Assignment Rationale

{Why this category fits based on observed behavior}

## Tier 1 Overlap Assessment

{Thematic convergence with counterpart persona(s)}

## Synthesis vs Append Determination

{Rationale for Phase 2C method recommendation}

## Cross-Topic Consistency

{Topic-dependent variations, if any}

{FOR FUTURIST ONLY:}
## Anti-Pattern Assessment

{Temporal lens anti-pattern rate by volume level}

## Summary Recommendation

{Concise recommendation: volume range, category, Phase 2C method, any caveats}
```

Save your output to: dev/2026-02-21_symphony-question-generation_part2/findings/R5_tier2-volume-quality_{persona_name}.md
````

### Batching Strategy

All 4 subagents can run in a single parallel batch (below the 5-concurrent limit).

### Orchestrator Synthesis

After all 4 subagent reports return, the orchestrator compiles:

1. **Summary table** with category assignments, volume ranges, filler onsets, and Phase 2C methods for all 4 personas
2. **Cross-persona patterns** — do Tier 2 personas follow the same Perspective/Structural/Analytical patterns as Tier 1? (RQ12b)
3. **Append candidates** — is the Constraint Flipper confirmed as Append, and are any others? (RQ12d)
4. **Recommended Effort Level Mapping entries** for Tier 2 personas at high effort

### Expected Output

**Per-persona:** 4 assessment reports (one per subagent), each containing:
- Category assignment (Perspective / Structural / Analytical)
- Volume-quality curve with filler onset threshold
- Recommended volume range for high effort
- Phase 2C method recommendation (Synthesis / Append)
- Overlap assessment with Tier 1 counterparts
- Cross-topic consistency notes

**Compiled output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/R5_tier2-volume-quality.md`

The compiled document should contain:
1. Summary table with all 4 persona assessments
2. Summary of each subagent's report
3. Cross-persona analysis answering RQ12b and RQ12d
4. Recommended Effort Level Mapping entries for Tier 2

---

## Dependency Notes

- **Depends on:** V1 take 2 methodology (for comparison framework), D2 (for understanding synthesis input context)
- **Blocks:** Final high-effort configuration, Effort Level Mapping completion for Tier 2
- **Data generation:** Not required — all test data already generated (24-25 runs per persona across 10 topics at 3 volume levels)

## Priority

**Medium** — Not blocking core medium-effort implementation. Required before high-effort persona roster and volume configuration can be finalized.

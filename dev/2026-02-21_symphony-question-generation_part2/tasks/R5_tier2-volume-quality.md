# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-24
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- V1 per-persona volume-quality (take 2) — establishes methodology and comparison framework
- Phase 2B persona selection guide — Tier 2 persona guidance and notes
- D2 Tier 1 Analytical/Structural effort mapping — establishes the synthesis context these personas feed into

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

**Prerequisite data generation:** Test data must be generated for each Tier 2 persona across the same three topics (habit-tracker, space-party, tool-library) at 3 volume levels:
- 5-8 questions (Perspective-range test)
- 8-12 questions (Structural-range test)
- 10-15 questions (Analytical-range test)

Use the same generative prompt structure as V1 take 2 (documented in `tasks/V1_per-persona-volume-quality_take2.md`).

**Personas to analyze:**
1. Constraint Flipper
2. Empath
3. First Principles Thinker
4. Futurist

**Comparison criteria:**

1. **Volume-quality curve:** For each persona, assess question quality across the three volume levels. Identify the filler onset point and optimal range.

2. **Category assignment:** Does the persona behave like a Perspective (best at 5-8, distinctive voice), Structural (best at 8-12, framework-driven), or Analytical (best at 10-15+, breadth-seeking) persona?

3. **Overlap with Tier 1:** Measure thematic convergence with Tier 1 personas at the recommended volume. Specifically:
   - Constraint Flipper vs Provocateur (both challenge assumptions via inversion)
   - Empath vs Storyteller and Audience Advocate (all human-centered)
   - First Principles Thinker vs Questioner (both analytical assumption-challengers)
   - Futurist vs Visionary (both forward-looking)

4. **Synthesis vs Append determination:** For each persona, assess whether questions have distinctive framing that would be diluted by synthesis (→ Append) or high thematic overlap with other personas that benefits from cross-referencing (→ Synthesis).

5. **Anti-pattern detection:** Specifically for Futurist, measure the temporal lens anti-pattern rate at each volume level. Does lower volume reduce the rate?

6. **Cross-topic consistency:** Do findings hold across all three topics or vary by topic type?

**Expected output:**

Per-persona assessment following the V1 take 2 format:
- Volume-quality curve with filler onset threshold
- Category assignment (Perspective / Structural / Analytical)
- Overlap assessment with Tier 1 counterparts
- Phase 2C method recommendation (Synthesis / Append)
- Recommended volume range for high effort
- Cross-topic consistency notes

**Priority:** Medium — Tier 2 personas only participate at high effort, so this is not blocking medium-effort implementation. However, it should complete before high-effort configuration is finalized.

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/R5_tier2-volume-quality.md`

---

## Dependency Notes

- **Depends on:** V1 take 2 methodology (for prompt structure and comparison framework), D2 (for understanding synthesis input context)
- **Blocks:** Final high-effort configuration, Effort Level Mapping completion for Tier 2
- **Data generation:** Requires 12 new test runs (4 personas × 3 topics) at each of 3 volume levels = 36 subagent runs

## Priority

**Medium** — Not blocking core medium-effort implementation. Required before high-effort persona roster and volume configuration can be finalized.

# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-21
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- Phase 2 question generation test runs across three volume levels (5-10, 10-15, 15-20)
- Three topics: space-party, tool-library, habit-tracker
- Eight Tier 1 personas: Questioner, Analyst, Devil's Advocate, Storyteller, Analogist, Appreciative Inquirer, Provocateur, Visionary
- Two promotion candidates (data also available at all volumes): Audience Advocate, Systems Thinker

---

## Background

Volume optimization is a critical design decision for Symphony effort levels. To set appropriate targets, we need to understand how question quality changes as volume increases from 5-10 to 15-20 questions per persona.

The central concern is whether lower-volume outputs represent:
1. **Best-of distillation** — Highest-quality questions selected from a larger pool (desirable; we'd only output the best)
2. **Truncation** — Arbitrary cutoff at lower volume (acceptable if quality remains good)
3. **Volume-driven degradation** — Higher volumes introducing filler and redundancy (problematic; needs correction)

Answering this question per-persona illuminates whether effort level design should route different personas to different volumes or whether a uniform volume is appropriate.

### Research Questions

- **RQ8:** What is the optimal question volume per persona for Phase 2 synthesis quality and effort?
- Sub-question: For each Tier 1 persona, how does dimension coverage, cluster structure, and question distinctiveness change across volume levels?
- Sub-question: Do 5-10 questions represent a quality-focused subset of 15-20, or a fundamentally different (potentially narrow) sample?

---

## Investigation Task

### I-V1: Per-Persona Quality Comparison Across Volumes

**Key question:** For each Tier 1 persona, how does question quality change across 5-10, 10-15, and 15-20 volume levels? Are 5-10 questions "best-of" distillations or truncated versions? Do 15-20 introduce filler?

**Research questions addressed:** RQ8 and sub-questions

**Files to analyze:**

**Primary scope (Tier 1): 90 files, ~585 KB total.** For each persona (10) across each topic (3) and each volume level (3):

For each persona across each topic and each volume level:
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-21_q05-10/questions/by-persona/[persona].md` (~6.5-8.7 KB)
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-21_q10-15/questions/by-persona/[persona].md` (~6.5-8.7 KB)
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18_q15-20/questions/by-persona/[persona].md` (~6.5-8.7 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-21_q05-10/questions/by-persona/[persona].md` (~6.5-8.7 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-21_q10-15/questions/by-persona/[persona].md` (~6.5-8.7 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18_q15-20/questions/by-persona/[persona].md` (~6.5-8.7 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-21_q05-10/questions/by-persona/[persona].md` (~6.5-8.7 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-21_q10-15/questions/by-persona/[persona].md` (~6.5-8.7 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18_q15-20/questions/by-persona/[persona].md` (~6.5-8.7 KB)

**Personas to analyze:**
1. Questioner (~6.5 KB per file)
2. Analyst (~7.1 KB per file)
3. Devil's Advocate (~7.5 KB per file)
4. Storyteller (~7.5 KB per file)
5. Analogist (~7.5 KB per file)
6. Appreciative Inquirer (~6.7 KB per file)
7. Provocateur (~8.7 KB per file)
8. Visionary (~7.2 KB per file)
9. Audience Advocate (~8.8 KB per file)
10. Systems Thinker (~10.6 KB per file)

**Context management:** The full dataset (90 files, ~585 KB) is too large for a single subagent. Execute as 2 batches of 5 parallel subagent tasks (one per persona), each reading 9 files (3 topics × 3 volumes, ~59 KB each).

Per-topic alternative: 3 parallel subagent tasks (one per topic), each reading 36 files (12 personas × 3 volumes, ~233 KB per subagent).

**Comparison criteria:**

1. **Question quality and focus:** For each persona at each volume level, assess whether questions are specific, answerable, and valuable. Are lower-volume questions more focused and sharper, or do they miss important angles?

2. **Dimension coverage per persona:** Map which question dimensions (Strategic, Tactical, Creative, Analytical, Human-Centered) are represented at 5-10, 10-15, and 15-20. Does dimension spread narrow at lower volumes or stay balanced?

3. **Cluster structure and themes:** Identify thematic clusters within each persona's questions at each volume. Do clusters remain consistent across volumes or do they shift? Does 5-10 produce fewer but tighter clusters?

4. **Uniqueness and subset relationship:** Determine whether the 5-10 questions appear as a subset of the 15-20 questions (same themes, fewer instances) or represent genuinely different selections and angles.

5. **Filler detection:** At 15-20 volumes, estimate what percentage of questions are redundant, low-value, or duplicative compared to the best 10 questions. Conversely, do questions 11-20 add meaningful new territory?

6. **Cross-topic consistency:** Does any observed quality degradation (if present) appear uniformly across all three topics, or is it topic-sensitive (e.g., space-party persona generates tighter questions than tool-library)?

**Expected output:**

Per-persona assessment document including:
- Summary table: volume level (5-10, 10-15, 15-20) × persona, with quality rating, dimension coverage count, cluster count, and filler estimate
- Detailed findings for each persona: quality trend, dimension distribution, cluster analysis, subset vs. divergence assessment, filler characteristics
- Cross-topic patterns: Do trends hold across all topics or vary?
- Overall recommendation: Based on findings, should Symphony use uniform volume across personas or differentiated volumes? Is there a clear "sweet spot"?
- Evidence of truncation vs. filler: What does the data suggest about the nature of the volume increase?

**Priority:** High — directly informs Decision Gate 1 (Volume Optimization). This investigation is foundational to all subsequent volume-related analyses.

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/V1_per-persona-volume-quality.md`

### Output Format

```markdown
# I-V1: Per-Persona Quality Comparison Across Volumes

**Date:** [completion date]
**Input files:** [count] files analyzed from [topics]
**Execution:** [Subagent structure used: per-persona or per-topic]

---

## Summary

[Overview of findings: highest-quality volume, patterns observed, recommendations]

---

## Per-Persona Analysis

### Questioner
- **Volume 5-10:** [Quality assessment, dimension coverage, cluster count, representative themes]
- **Volume 10-15:** [Assessment and trend vs. 5-10]
- **Volume 15-20:** [Assessment and trend vs. prior]
- **Subset relationship:** [Whether 5-10 is subset of 15-20 or divergent]
- **Filler estimate:** [Percentage of questions 11-20 that are redundant/low-value]
- **Cross-topic consistency:** [Variability across space-party, tool-library, habit-tracker]
- **Recommendation:** [Optimal volume for this persona]

### [Repeat for Analyst, Devil's Advocate, Storyteller, Analogist, Appreciative Inquirer, Provocateur, Visionary, Audience Advocate, Systems Thinker]

---

## Cross-Persona Patterns

- **Dimension coverage trends:** [How dimension distribution changes across personas and volumes]
- **Quality degradation pattern:** [If 15-20 shows filler, which personas are most affected?]
- **Consistency of truncation vs. filler:** [Is the 5-10 vs. 15-20 relationship consistent across personas?]

---

## Implications for Effort Levels

- **Recommended standard volume:** [Based on quality data]
- **Personas requiring different treatment:** [If any]
- **Filler threshold:** [At what point does volume increase create more cost than value?]

---

## Evidence and Reasoning

[Detailed citations from source files showing specific examples of quality differences, dimension shifts, redundancy patterns]

---

## Next Steps

- Feed into I-V2 (Aggregate Coverage) to understand total territory implications
- Compare with I-V3 (Volume × Persona Count Trade-off) to assess alternative designs
```

---

## Priority

This is **Tier 1 foundational analysis**. Findings directly determine whether Symphony uses 5-10, 10-15, or 15-20 as standard volume, and whether different personas warrant different volumes. All subsequent design decisions depend on this output.

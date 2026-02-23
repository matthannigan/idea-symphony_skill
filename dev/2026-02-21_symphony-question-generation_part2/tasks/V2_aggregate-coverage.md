# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-21
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- I-V1: Per-Persona Quality Comparison results (findings on per-persona quality at each volume)
- Phase 2 question generation test runs across three volume levels (5-10, 10-15, 15-20)
- Three topics: space-party, tool-library, habit-tracker
- Eight Tier 1 personas: Questioner, Analyst, Devil's Advocate, Storyteller, Analogist, Appreciative Inquirer, Provocateur, Visionary
- Four promotion candidates (data also available at all volumes): Audience Advocate, Empath, Systems Thinker, First Principles Thinker

---

## Background

While I-V1 examines per-persona quality, this investigation addresses aggregate coverage: when combining all 8 Tier 1 personas at each volume level, how much total unique question territory is covered?

The key insight needed is whether lower total volume (8 personas × 5-10 = 40-80 questions) provides sufficient breadth of perspectives and dimensions compared to higher volume (8 personas × 15-20 = 120-160 questions). This determines whether a "lean medium effort" design (fewer questions per persona) can still deliver comprehensive brainstorming territory.

Critical metrics include:
- **Total unique dimensions covered** at each volume level
- **Cross-persona redundancy rates** — do higher volumes amplify overlap?
- **Dimension balance** — is coverage uniform or skewed?
- **Coverage gaps** — what themes are present at 15-20 but absent at 5-10?
- **Convergence signals** — when personas independently ask similar questions, does this emerge equally at lower volumes?

### Research Questions

- **RQ8:** What is the optimal question volume per persona for Phase 2 synthesis quality and effort?
- **RQ11:** How does aggregate volume (total questions across all personas) relate to question diversity, dimension coverage, and synthesis readiness?
- Sub-question: Is the territory covered by 8×5-10 sufficient for comprehensive brainstorming synthesis, or does 8×15-20 provide meaningfully more breadth?
- Sub-question: At lower volumes, do important question dimensions drop out entirely, or is coverage merely thinner?

---

## Investigation Task

### I-V2: Aggregate Coverage Comparison

**Key question:** When combining all 8 Tier 1 personas at each volume level, what is the total unique question territory? Does 8×5-10 (40-80 total questions) cover as much ground as 8×15-20 (120-160 total)?

**Research questions addressed:** RQ8, RQ11 and sub-questions

**Files to analyze (72 Tier 1 files, ~470 KB total; or 108 files ~700 KB with promotion candidates; or use I-V1 findings as input):**

Option A: Direct analysis of source files (Tier 1 focus)
- All 72 Tier 1 files from the three volume levels (same dataset as I-V1)
- `test-runs/symphony-phase2-questions-persona-eval/[topic]_2026-02-[date]_q[volume]/questions/by-persona/[persona].md`

Option A+: Extended analysis including promotion candidates
- All 108 files (12 personas × 3 topics × 3 volumes, ~700 KB)
- Enables aggregate coverage comparison that includes promotion candidates, useful for assessing how roster expansion affects total territory

Option B: Build on I-V1 results (recommended if I-V1 completes first)
- Read I-V1 output to extract per-persona dimension maps and cluster lists at each volume
- Use this as input to aggregate-level analysis
- This reduces file reading burden and allows I-V1 insights to guide comparison

**Depends on:** Ideally I-V1 (can proceed in parallel or after)

**Context management:** If using source files directly, either execute as 3 parallel subagent tasks (per-topic) or use orchestrator with careful file selection. If using I-V1 results, this is a lighter analysis that can run as a single task.

**Comparison criteria:**

1. **Total unique question territory:** For each volume level and each topic, enumerate all distinct question dimensions and thematic categories that appear across the 8 personas. Count unique dimensions at 5-10 vs. 10-15 vs. 15-20. Is the difference linear or diminishing returns?

2. **Redundancy rate:** Calculate the percentage of questions that overlap across personas at each volume level. Do higher volumes increase cross-persona redundancy? Is there a "convergence sweet spot" where important questions emerge from multiple personas?

3. **Dimension balance at aggregate level:** Create a 5-dimension (Strategic, Tactical, Creative, Analytical, Human-Centered) distribution chart across all 8 personas at each volume. Is coverage balanced or skewed? Do gaps exist at lower volumes?

4. **Coverage gaps:** Identify which dimensions or thematic areas are well-covered at 15-20 but are completely absent or minimally present at 5-10. What percentage of the 15-20 dimensional territory is missing at 5-10?

5. **Convergence signal strength:** Identify instances where multiple personas independently ask similar or complementary questions (strong convergence signals). Do these signals emerge equally at 5-10, or do they become more frequent/clearer at higher volumes? Conversely, at 5-10, do convergent questions suggest consensus around key issues?

6. **Topic sensitivity:** Does the aggregate coverage pattern (i.e., the relationship between 5-10 and 15-20) hold uniformly across space-party, tool-library, and habit-tracker, or are there topic-specific differences?

**Expected output:**

Aggregate coverage assessment including:
- **Summary table:** Volume level × coverage metrics (unique dimensions, redundancy rate, dimension distribution balance, gap size)
- **Dimension maps:** Visual or text representation of which dimensions are covered at each volume level, highlighting gaps
- **Redundancy analysis:** Quantitative breakdown of cross-persona overlap and convergence signals at each volume
- **Coverage gap analysis:** Specific dimensions/themes present at 15-20 but absent at 5-10, with frequency/importance estimates
- **Cross-topic consistency:** Summary of whether patterns hold uniformly or vary by topic
- **Synthesis readiness assessment:** Based on coverage and convergence data, is 8×5-10 sufficient for Phase 3 synthesis, or does it risk missing important perspectives?
- **Recommendation:** Recommended aggregate volume and implications for effort level design

**Priority:** High — builds on I-V1 to inform Decision Gate 1. Critical for understanding whether lower-volume designs can deliver comprehensive territory.

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/V2_aggregate-coverage.md`

### Output Format

```markdown
# I-V2: Aggregate Coverage Comparison

**Date:** [completion date]
**Input source:** [I-V1 results / Direct file analysis]
**Execution:** [Subagent structure or orchestrator approach]
**Topics analyzed:** space-party, tool-library, habit-tracker

---

## Summary

[Overview: Is 8×5-10 coverage sufficient or materially inadequate compared to 8×15-20? Key gaps identified. Recommendation on volume adequacy.]

---

## Dimension Coverage Analysis

### Volume 5-10 Aggregate Profile
- **Total unique dimensions identified:** [count]
- **Dimension distribution:** Strategic [%], Tactical [%], Creative [%], Analytical [%], Human-Centered [%]
- **Coverage balance:** [Assessment of whether coverage is uniform or skewed]
- **Notable gaps:** [Dimensions poorly represented]

### Volume 10-15 Aggregate Profile
- **Total unique dimensions identified:** [count]
- **Dimension distribution:** [percentages as above]
- **Change vs. 5-10:** [What new dimensions emerge?]

### Volume 15-20 Aggregate Profile
- **Total unique dimensions identified:** [count]
- **Dimension distribution:** [percentages as above]
- **Change vs. 10-15:** [What additional dimensions appear?]

### Gap Analysis
- **Dimensions in 15-20 but absent in 5-10:** [List with frequency/importance notes]
- **Percentage of full territory missing at 5-10:** [Calculation]
- **Assessment:** [Are gaps strategic (important themes) or tactical (minor variations)?]

---

## Redundancy and Convergence Analysis

### Cross-Persona Overlap Rates
- **Volume 5-10:** [X% of questions have cross-persona overlap]
- **Volume 10-15:** [Assessment]
- **Volume 15-20:** [Assessment]
- **Trend:** [Does redundancy increase with volume?]

### Convergence Signals
- **Strong convergence at 5-10:** [Examples of multiple personas independently asking similar key questions]
- **Convergence at 15-20:** [Comparison of signal strength and frequency]
- **Interpretation:** [Do convergence signals adequately highlight important issues at lower volumes, or do they become clearer only at higher volumes?]

---

## Topic-Specific Variations

### Space-Party
- [Coverage profile, gaps, convergence pattern at each volume]

### Tool-Library
- [Coverage profile, gaps, convergence pattern at each volume]

### Habit-Tracker
- [Coverage profile, gaps, convergence pattern at each volume]

### Cross-Topic Consistency
- [Are patterns uniform or do certain topics require higher volumes to achieve adequate coverage?]

---

## Synthesis Readiness Assessment

Based on dimension coverage, redundancy rates, and convergence signals:
- **Is 8×5-10 (40-80 total questions) sufficient for Phase 3 synthesis?** [Yes/No/Conditional]
- **What is the minimum adequate volume to ensure no critical dimensions are missed?** [Recommendation]
- **Effort-volume trade-off:** [What is the cost of lower volume in coverage terms? Is it acceptable?]

---

## Recommendations

- **Recommended aggregate volume:** [e.g., 8×10, 8×12, 8×15]
- **Rationale:** [Based on coverage adequacy, redundancy rates, convergence signals, effort balance]
- **Implications for effort levels:** [How does this inform Low/Medium/High volume assignments?]

---

## Evidence and Supporting Data

[Detailed tables, dimension maps, convergence examples from source files]

---

## Next Steps

- Compare with I-V3 (Volume × Persona Count Trade-off) to assess whether alternate designs (e.g., 5 personas × higher volume) could achieve equivalent coverage
- Feed into Decision Gate 1
```

---

## Priority

**Tier 1 foundational analysis**. Combined with I-V1, this investigation determines whether lower-volume Symphony designs are adequate or whether higher volumes are necessary to ensure comprehensive territory. Directly informs effort level volume assignments and cost-benefit decisions.

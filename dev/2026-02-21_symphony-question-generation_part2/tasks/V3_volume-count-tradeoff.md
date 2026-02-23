# Phase 2B Question Generation — Targeted Investigation (Revised)

**Date:** 2026-02-21 (revised post-V1/R1/R2/R3 decisions)
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- I-V1 findings: persona-specific volume categories (`findings/V1_per-persona-volume-quality.md`)
- Phase 2 question generation test runs across three volume levels (5-10, 10-15, 15-20)
- Three topics: space-party, tool-library, habit-tracker
- Tier 1 roster (10 personas, post-R1/R2 promotions)

**Absorbs:** I-V2 (aggregate coverage comparison), which was superseded by V1's persona-specific volume finding. V3 now includes V2's residual analytical goals: aggregate dimension coverage, cross-persona redundancy rates, and convergence signals.

---

## Background

V1 established that different personas have categorically different optimal volume ranges:
- **Perspective** (5-10): Visionary, Analogist, Provocateur, Storyteller — distillation at low volume, filler at high
- **Structural** (10-15): Devil's Advocate, Audience Advocate, Systems Thinker — balanced exploration
- **Analytical** (15-20): Questioner, Analyst — leverage volume for granular coverage
- **Uncategorized**: Appreciative Inquirer (10-15 per V1)

This means the real design choice is no longer "uniform low volume vs. uniform high volume" but rather: **Does the persona-specific volume strategy outperform simpler uniform alternatives? And for a given effort budget, is it better to field more personas at their optimal volumes or fewer personas at higher volumes?**

Additionally, with V2 superseded, this investigation takes on V2's aggregate-level questions: total dimension coverage, cross-persona redundancy, and convergence signal strength — now measured across the persona-specific configuration.

### Research Questions

- **RQ8:** What is the optimal question volume per persona for Phase 2 synthesis quality and effort?
- **RQ11:** How does aggregate volume relate to question diversity, dimension coverage, and synthesis readiness?
- Sub-question: Does the persona-specific volume strategy (V1 recommendation) produce better aggregate coverage than a uniform 10-15 approach?
- Sub-question: For a comparable total question budget, is 10 personas at persona-specific volumes superior to 5 personas at 15-20?
- Sub-question: Which configuration produces the strongest convergence signals and best synthesis readiness?

---

## Investigation Task

### I-V3: Volume × Persona Count Trade-off (Revised)

**Key question:** Comparing three configurations at roughly comparable total question counts, which produces the best combination of dimension coverage, perspective diversity, and synthesis readiness?

**Research questions addressed:** RQ8, RQ11 and sub-questions; plus V2's residual questions on aggregate coverage and redundancy.

---

### Configuration Definitions

#### Config A: 10 personas at persona-specific volumes (V1 recommendation)

Uses the full Tier 1 roster at each persona's optimal volume range per V1.

| Persona | Category | Volume Source | Est. Questions/Topic |
|---------|----------|-------------|---------------------|
| The Questioner | Analytical | q15-20 | 17-20 |
| The Analyst | Analytical | q15-20 | 16-20 |
| The Devil's Advocate | Structural | q10-15 | 12-15 |
| The Audience Advocate | Structural | q10-15 | 12-15 |
| The Systems Thinker | Structural | q10-15 | 14-15 |
| The Appreciative Inquirer | Perspective | q10-15 | 12-15 |
| The Storyteller | Perspective | q05-10 | 7-10 |
| The Analogist | Perspective | q05-10 | 6-8 |
| The Provocateur | Perspective | q05-10 | 7-10 |
| The Visionary | Perspective | q05-10 | 8-10 |

**Estimated total per topic:** ~110-140 questions
**Data sources:** Mix of q05-10, q10-15, and q15-20 test runs (existing data)

**Note on Appreciative Inquirer volume category:** V1 rated AI's optimal volume as 10-15, placing it between perspective and structural. For Config A, use q10-15 data. If V3 reveals this is suboptimal, flag for E1.

**Files per topic (10 files):**
```
[topic]_2026-02-21_q05-10/questions/by-persona/the-storyteller.md
[topic]_2026-02-21_q05-10/questions/by-persona/the-analogist.md
[topic]_2026-02-21_q05-10/questions/by-persona/the-provocateur.md
[topic]_2026-02-21_q05-10/questions/by-persona/the-visionary.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-devils-advocate.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-audience-advocate.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-systems-thinker.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-appreciative-inquirer.md
[topic]_2026-02-18_q15-20/questions/by-persona/the-questioner.md
[topic]_2026-02-18_q15-20/questions/by-persona/the-analyst.md
```
Total: 30 files across 3 topics (~210 KB estimated)

#### Config B: 5 personas at uniform 15-20 volume (depth strategy)

A smaller roster where each persona gets maximum volume. Selects 5 personas representing the major question-mode clusters:

| Persona | Cluster Represented | Volume Source | Est. Questions/Topic |
|---------|-------------------|-------------|---------------------|
| The Questioner | Analytical Probing | q15-20 | 17-20 |
| The Devil's Advocate | Analytical Probing (critical) | q15-20 | 15-18 |
| The Provocateur | Generative Disruptors | q15-20 | 15-20 |
| The Storyteller | Human-Centered/Narrative | q15-20 | 17-18 |
| The Systems Thinker | Systems/Strategic | q15-20 | 16-17 |

**Estimated total per topic:** ~80-93 questions
**Data source:** q15-20 test runs only

**Selection rationale:** One persona from each major cluster, prioritizing personas that V1 identified as handling high volume well (Questioner) or whose high-volume output was still rated "strong" (Devil's Advocate, Systems Thinker). The Provocateur is included despite V1 flagging filler risk at 15-20, specifically to test whether the filler dilutes the aggregate set or whether it gets absorbed. The Storyteller is included as the human-centered representative; V1 rated it optimal at 5-10 but we need to measure the aggregate impact of running it at 15-20.

**Personas excluded (and what's lost):**
- Analyst (partially redundant with Questioner at this volume)
- Visionary (similar generative territory to Provocateur at high volume)
- Analogist (cross-domain metaphors; unique but narrow)
- Appreciative Inquirer (strengths-based; less critical for coverage)
- Audience Advocate (equity/structural; significant loss of this dimension)

**Files per topic (5 files):**
```
[topic]_2026-02-18_q15-20/questions/by-persona/the-questioner.md
[topic]_2026-02-18_q15-20/questions/by-persona/the-devils-advocate.md
[topic]_2026-02-18_q15-20/questions/by-persona/the-provocateur.md
[topic]_2026-02-18_q15-20/questions/by-persona/the-storyteller.md
[topic]_2026-02-18_q15-20/questions/by-persona/the-systems-thinker.md
```
Total: 15 files across 3 topics (~110 KB estimated)

#### Config C: 10 personas at uniform 10-15 volume (uniform baseline)

The full roster at a single middle-range volume, to test whether persona-specific volumes (Config A) actually outperform a simpler uniform approach.

| Persona | Volume Source | Est. Questions/Topic |
|---------|-------------|---------------------|
| All 10 Tier 1 | q10-15 | 10-15 each |

**Estimated total per topic:** ~110-140 questions
**Data source:** q10-15 test runs only

**Files per topic (10 files):**
```
[topic]_2026-02-21_q10-15/questions/by-persona/the-questioner.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-analyst.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-devils-advocate.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-audience-advocate.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-systems-thinker.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-appreciative-inquirer.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-storyteller.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-analogist.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-provocateur.md
[topic]_2026-02-21_q10-15/questions/by-persona/the-visionary.md
```
Total: 30 files across 3 topics (~210 KB estimated)

---

### Context Management

Total input: 75 files across 3 configs x 3 topics (~530 KB). Too large for a single subagent.

**Recommended approach:** 3 parallel subagents, one per topic. Each reads 25 files (~175 KB) covering all three configs for that topic, produces a per-topic comparison. A final synthesis pass (orchestrator or 4th subagent) combines the 3 per-topic analyses into the cross-topic findings document.

Alternative: 9 parallel subagents (1 per config × topic), each reading ~7-10 files, with a heavier synthesis pass. More parallelism but harder to compare across configs within a topic.

---

### Comparison Criteria

#### 1. Aggregate Dimension Coverage (absorbed from V2)

For each config and each topic, enumerate all distinct question dimensions covered across all personas. Use the 5-dimension framework: Strategic, Tactical, Creative, Analytical, Human-Centered. Additionally track Systems and Provocative as sub-dimensions identified in prior research.

- **Total unique dimensions** at each config level
- **Dimension distribution balance** — is coverage uniform or skewed?
- **Coverage gaps** — what themes are present in one config but absent in others?
- Config A vs Config C is the critical comparison for persona-specific vs. uniform volume at constant persona count. Config B tests whether fewer-but-deeper can match broader coverage.

#### 2. Cross-Persona Redundancy (absorbed from V2)

For each config:
- **Redundancy rate:** What percentage of questions substantially overlap across personas?
- **Redundancy distribution:** Is redundancy concentrated in certain dimension areas (e.g., strategic questions converging) or spread evenly?
- **Volume-driven redundancy:** Does Config C (uniform 10-15) produce more redundancy than Config A (persona-specific), because perspective personas are generating filler at 10-15 that overlaps with other personas' core territory?

#### 3. Convergence Signal Strength (absorbed from V2)

Convergence = multiple personas independently asking similar or complementary questions, signaling genuinely important issues.

- **Signal count** per config: how many convergence instances?
- **Signal clarity:** Are convergence signals stronger (more personas agreeing) or weaker at different configs?
- **Signal distribution:** Do convergence signals appear across dimensions or concentrate?
- **Config A prediction:** Persona-specific volumes may produce cleaner convergence because each persona is operating at its quality peak — convergence reflects genuine agreement rather than volume-driven overlap.

#### 4. Perspective Diversity and Cross-Perspective Tension

- **Unique perspectives represented:** How many genuinely distinct angles appear in each config?
- **Tension quality:** Do the perspectives challenge each other productively?
- Config B (5 personas) necessarily loses 5 perspectives. Which specific dimensions or viewpoints disappear, and how significant is the loss?
- Config A and C both use 10 personas — the question is whether persona-specific volumes preserve perspective quality better than uniform volumes.

#### 5. Per-Persona Quality at Config Volume

Building on V1's per-persona findings, assess whether each persona's output quality in a given config matches V1's predictions:
- Do perspective personas in Config A (at 5-10) show the "distillation" quality V1 described?
- Do perspective personas in Config C (at 10-15) show early filler, as V1 predicted?
- Do analytical personas in Config A (at 15-20) maintain quality, as V1 predicted?

This serves as a validation of V1's category assignments within an aggregate context.

#### 6. Synthesis Readiness

For Phase 2 synthesis, the question set needs:
- **Sufficient breadth** — no major brainstorming dimensions missing
- **Sufficient convergence** — key issues flagged by multiple perspectives
- **Manageable volume** — not so many questions that synthesis becomes overwhelming
- **Quality floor** — no significant filler that degrades synthesis input

Assess each config on these four criteria. Which produces the best synthesis-ready input?

#### 7. Topic Sensitivity

Do the relative advantages of Config A vs B vs C hold uniformly across space-party (personal/fun), tool-library (community/practical), and habit-tracker (product/technical)? Or do certain topics favor certain configurations?

---

### Expected Output

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/V3_volume-count-tradeoff.md`

```markdown
# I-V3: Volume × Persona Count Trade-off (Revised)

**Date:** [completion date]
**Configs compared:**
- A: 10 personas × persona-specific volumes (~110-140 Qs/topic)
- B: 5 personas × 15-20 uniform (~80-93 Qs/topic)
- C: 10 personas × 10-15 uniform (~110-140 Qs/topic)
**Actual question counts:** [A: X] vs [B: Y] vs [C: Z] per topic
**Execution:** [Per-topic subagents + synthesis]
**Topics analyzed:** space-party, tool-library, habit-tracker

---

## Summary and Recommendation

[Which config is superior overall? Is persona-specific volume (A) worth the complexity over uniform (C)? Does depth (B) compensate for lost perspectives?]

[Recommendation for effort level design]

---

## Aggregate Dimension Coverage (V2 successor)

### Coverage Profiles

| Dimension | Config A | Config B | Config C |
|-----------|----------|----------|----------|
| Strategic | % | % | % |
| Tactical | % | % | % |
| Creative | % | % | % |
| Analytical | % | % | % |
| Human-Centered | % | % | % |
| Systems | % | % | % |
| Provocative | % | % | % |

### Coverage Gap Analysis

- **Dimensions in A but absent in B:** [List — expected: Audience Advocate equity territory, Appreciative Inquirer strengths, Analogist cross-domain]
- **Dimensions in A but absent in C:** [Expected: few or none, since same personas]
- **A vs C quality difference within shared dimensions:** [Does persona-specific volume produce higher-quality coverage of the same dimensions?]

---

## Cross-Persona Redundancy

| Metric | Config A | Config B | Config C |
|--------|----------|----------|----------|
| Redundancy rate | % | % | % |
| Filler-driven overlap | [assessment] | [assessment] | [assessment] |

[Does Config C's uniform 10-15 create more redundancy than Config A's persona-specific ranges?]

---

## Convergence Signal Analysis

| Metric | Config A | Config B | Config C |
|--------|----------|----------|----------|
| Convergence instances | count | count | count |
| Signal clarity | [assessment] | [assessment] | [assessment] |
| Distribution | [assessment] | [assessment] | [assessment] |

[Which config produces the cleanest convergence signals?]

---

## Perspective Diversity

[What does Config B lose by dropping 5 personas? How significant is the loss?]

[Is Config A's perspective diversity higher quality than Config C's, given persona-specific volumes?]

---

## V1 Validation

[Do per-persona quality patterns match V1's predictions when assessed in aggregate context?]
- Perspective personas at 5-10 (Config A): distillation confirmed?
- Perspective personas at 10-15 (Config C): filler detected?
- Analytical personas at 15-20 (Configs A & B): quality maintained?

---

## Synthesis Readiness

| Criterion | Config A | Config B | Config C |
|-----------|----------|----------|----------|
| Breadth | [assessment] | [assessment] | [assessment] |
| Convergence | [assessment] | [assessment] | [assessment] |
| Manageable volume | [assessment] | [assessment] | [assessment] |
| Quality floor | [assessment] | [assessment] | [assessment] |
| **Overall** | [rating] | [rating] | [rating] |

---

## Topic-Specific Variations

[Do patterns hold uniformly or vary by topic type?]

---

## Conclusions for Effort Level Design

- **Config A vs C:** Is persona-specific volume worth the implementation complexity?
- **Config A vs B:** What is the cost of halving the persona count?
- **Medium effort implication:** [Should medium use full roster at persona-specific volumes, or subset?]
- **High effort implication:** [Full roster + Tier 2 specialists?]
- **Low effort implication:** [Subset selection guidance from Config B analysis?]

---

## Evidence and Supporting Data

[Per-topic dimension maps, convergence examples, redundancy instances]
```

---

## Priority

**High** — this is the remaining volume optimization investigation. Combined with V1's per-persona findings, it resolves Decision Gate 1 and directly informs effort level configuration (E1). Also serves as the successor to V2's aggregate coverage analysis.

**Parallelizable with:** A1 (Analyst refinement). V3 uses existing Analyst v1 data; A1 results only matter for the final persona prompt.

# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-24
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- V1 per-persona volume-quality (take 2) — establishes methodology and comparison framework
- Phase 2B persona selection guide — Tier 3 persona guidance and notes
- D2 Tier 1 Analytical/Structural effort mapping — establishes the synthesis context
- 5 Tier 3 persona merged test data files — `test-runs/symphony-phase2-questions-persona-eval/_merged/PERSONA_ALL_{persona}_2026-02-24.md`
- All topic requests — `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md`

---

## Background

### Context

Tier 3 question personas (**Accountant**, **Lawyer**, **Politician**, **Simplifier**, **Technical Expert**) are included only on **medium or high effort** and only when **specifically selected by the orchestrator** based on topic affinity. Their optimal volume ranges, Phase 2C method (synthesis vs append), and quality characteristics have not been validated.

The Connector is excluded from this investigation and handled separately in R7 due to its special relationship with the Analogist (Tier 1 Perspective persona replacement).

### What We Know from the Selection Guide

| Persona | Likely Phase 2C Method | Key Characteristics | Open Questions |
|:---|:---|:---|:---|
| **Accountant** | Synthesis | Fills financial gap in Tier 1 coverage. Complementary with Analyst. Quantified benchmarks, unit economics, reserve fund structuring. | What volume produces specific financial questions without over-constraining innovation? |
| **Lawyer** | Synthesis | Extreme Black Hat. Largest file sizes, 7-8 clusters. Heavy legal framing, low generative expansion. Risk of cognitive overload for synthesis. | Does lower volume reduce the over-clustering problem? Can synthesis handle the dense legal framing? |
| **Politician** | Synthesis | High variance (CV~30.3%). Governance, coalition, power dynamics. Doubles output for institutional topics. | How does volume interact with topic sensitivity? Should volume targets be topic-dependent? |
| **Simplifier** | Synthesis | Convergent via subtraction. 4-5 clusters. Low open-endedness. "Better as Phase 3 answerer." | At what volume does subtractive bias become problematic? Is there a minimum threshold for Phase 2B usefulness? |
| **Technical Expert** | Synthesis | Low volume, narrow clusters. Architecture, dependencies. Reinforces existing paradigms. | Does the paradigm-reinforcement problem worsen at higher volumes, or is it constant? |

### Directional Assessment from Prior Analysis

All five Tier 3 personas (excluding Connector) are expected to be **Synthesis** candidates:
- **Accountant** — financial questions overlap with Analyst territory; Analyst creates structure, Accountant fills with data
- **Lawyer** — evaluative/problem-framed questions overlap with Devil's Advocate risk territory
- **Politician** — governance/coalition questions overlap structurally with Audience Advocate and Devil's Advocate
- **Simplifier** — convergent questions overlap with analytical evaluation territory
- **Technical Expert** — architecture/implementation questions overlap with Analyst

None show the kind of distinctive framing (provocation, metaphor, narrative, paradigm challenge) that warrants Append treatment. However, this should be confirmed empirically.

### Research Questions

- **RQ13a:** What is the optimal volume range for each Tier 3 persona when selected for inclusion?
- **RQ13b:** Is Synthesis confirmed as the correct Phase 2C method for all five personas?
- **RQ13c:** At what volume does filler onset occur for each Tier 3 persona?
- **RQ13d:** For topic-sensitive personas (Politician, Technical Expert), should volume targets vary by topic type?
- **RQ13e:** Is the Simplifier viable for Phase 2B at all, or should it be moved to the excluded list (alongside Momentum Builder, Pragmatist, Synthesizer)?

---

## Investigation Task

### I-R6: Tier 3 Per-Persona Volume-Quality Assessment (Excluding Connector)

**Key question:** For each Tier 3 persona (excluding Connector), what is the optimal question volume, does the output belong in synthesis or append, and are any personas better excluded from Phase 2B entirely?

**Research questions addressed:** RQ13a-e

**Execution model:** 5 parallel Opus subagents (one per persona), each producing a per-persona assessment. An orchestrator synthesis step compiles the 5 reports and answers the cross-persona research questions.

### Test Data

Test data has been generated for each Tier 3 persona across the 7 new topics at 2 volume levels:
- 8-12 questions (×7 runs per persona — one per topic)
- 10-15 questions (×1 run per persona)

**Note:** The q10-15 data is thin (1 run per persona). Subagents should note this limitation and qualify any q10-15 conclusions accordingly. The original 3 topics (habit-tracker, space-party, tool-library) are not included in the Tier 3 test data — none were strong triggers for any Tier 3 persona (the closest was tool-library for the Politician). The 7 new topics were selected both to diversify the testing suite generally and to target specific Tier 3 personas.

Data was generated using the same generative prompt structure as V1 take 2 (documented in `tasks/V1_per-persona-volume-quality_take2.md`).

### Topic Design

The 7 test topics were designed with specific Tier 3 persona triggers in mind. Each persona has at least one strong-trigger topic, enabling assessment at the persona's best before evaluating degradation on weaker-fit topics.

| Test Topic | Primary Trigger | Secondary Triggers | Design Rationale |
|:---|:---|:---|:---|
| **food-truck** | Accountant | Politician | Food truck startup with unit economics, pricing strategy, break-even analysis (Accountant). Pending city ordinance changes and food truck association politics add Politician trigger. |
| **property-management** | Lawyer, Accountant, Politician | (3-way contest) | STR management company with liability/zoning/compliance (Lawyer), fee structure/financial modeling/insurance (Accountant), city council election/community tension/HOA politics (Politician). Designed as a forced-choice test: orchestrator can only add 2 Tier 3 personas and must choose from 3 candidates of varying strength. |
| **youth-mentorship** | Lawyer | — | Faith-based youth mentorship with background checks, mandatory reporting, liability insurance, parental consent, juvenile justice data privacy. Strong single-persona trigger. |
| **school-consolidation** | Politician | Accountant | Three-district consolidation requiring coalition-building, voter approval across districts, governance structure (Politician). Added structural deficits, fund balance insolvency, per-pupil funding formula, debt consolidation, property tax equalization (Accountant). |
| **mobile-app** | Simplifier | — | Explicit "strip it down" framing with 15 features to cut to 3-4. Feature-bloated system with 8-month runway adding urgency to subtraction. Directly matches Simplifier's "de-scoping a bloated system" trigger. |
| **wearable-device** | Technical Expert | Lawyer (implicit) | On-device ML architecture, hardware-software co-design, sensor fusion, power budget allocation (Technical Expert). HIPAA compliance, FDA regulatory pathway, and false positive liability create implicit Lawyer trigger. |
| **career-change** | (none specific) | — | Personal/experiential topic (ICU nurse considering law school for immigration law). Serves as a weak-trigger control and a **false-positive trap for Lawyer** — the topic involves becoming a lawyer but the brainstorming need is personal career decision-making, not legal/regulatory exposure. Useful for testing whether orchestrator selection is triggered by domain keywords ("lawyer," "law school") vs. actual topic affinity. No strong Tier 3 affinity. |

**Test design notes:**
- Each persona has at least one strong-trigger topic and the others serve as weaker-trigger comparisons
- **property-management** specifically tests orchestrator selection when multiple Tier 3 personas compete for limited slots
- **career-change** provides a baseline for topic-sensitivity analysis (RQ13d) — if a persona produces good questions here, it may be less topic-gated than assumed
- Strong + weak topic pairs per persona enable direct measurement of the quality gap for topic sensitivity assessment

### Subagent Design

Each subagent receives:

1. **REQUESTS_ALL.md** (~17K) — All 10 topic descriptions for context (includes the 3 original topics for reference even though Tier 3 data covers only the 7 new topics)
2. **PERSONA_ALL_{persona}_2026-02-24.md** (~45-112K) — All test runs for that persona across 7 topics at 2 volume levels
3. **Selection guide excerpt** — The relevant per-persona guidance and notes from the persona selection guide
4. **Topic design table** — The trigger mapping above, so the subagent understands which topics are strong vs weak triggers

Total input per subagent: ~60-130K, well within context.

### Personas and Their Test Data

| # | Persona | PERSONA_ALL Size | Volume Levels | Runs | Strong-Trigger Topics |
|:---|:---|:---|:---|:---|:---|
| 1 | Accountant | 94K | q08-12 (×7), q10-15 (×1) | 8 | food-truck, property-management, school-consolidation |
| 2 | Lawyer | 112K | q08-12 (×7), q10-15 (×1) | 8 | property-management, youth-mentorship, wearable-device |
| 3 | Politician | 99K | q08-12 (×7), q10-15 (×1) | 8 | school-consolidation, property-management, food-truck |
| 4 | Simplifier | 67K | q08-12 (×7), q10-15 (×1) | 8 | mobile-app |
| 5 | Technical Expert | 74K | q08-12 (×7), q10-15 (×1) | 8 | wearable-device |

### Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt:

````
You are conducting a volume-quality assessment for a Tier 3 Phase 2B question-generation persona. Tier 3 personas are domain-specialist personas that are only included when the orchestrator identifies a topic-specific need. Your assessment will determine the persona's optimal volume range, Phase 2C method, topic sensitivity, and whether it is viable for Phase 2B inclusion at all.

## Your Persona: {persona_name}

## Task

Read the following files:
1. `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` — descriptions of all 10 test topics
2. `test-runs/symphony-phase2-questions-persona-eval/_merged/PERSONA_ALL_{persona}_2026-02-24.md` — all question generation test runs for {persona_name}
3. The selection guide excerpt and topic design table below

Then produce a per-persona volume-quality assessment.

**Important:** The q10-15 volume level has only 1 test run. Qualify any conclusions about that volume level accordingly.

## Selection Guide Excerpt for {persona_name}

{paste the relevant row from the "What We Know from the Selection Guide" table and the per-persona guidance from persona-selection-guide_Phase2B.md}

## Topic Design

The 7 test topics were designed with specific Tier 3 triggers:

{paste the topic design table}

{persona_name}'s strong-trigger topics: {list}
All other topics serve as weaker-trigger comparisons. "career-change" is a deliberate weak-trigger/false-positive control.

## Assessment Criteria

1. **Volume-quality curve:** For each volume level (8-12, 10-15), assess question quality. Are questions focused, open-ended, specific, and non-redundant? Identify filler onset and optimal range. Note the q10-15 data limitation.

2. **Synthesis vs Append determination:** Does the persona produce questions with distinctive framing that would be diluted by synthesis (→ Append) or high thematic overlap with Tier 1 personas that benefits from cross-referencing (→ Synthesis)?

3. **Overlap with Tier 1:** Measure thematic convergence with the persona's Tier 1 counterpart(s):
{persona-specific overlap pairs — see comparison criteria below}

4. **Topic sensitivity (RQ13d):** Compare output quality on strong-trigger topics vs weak-trigger topics vs the career-change control. Is the persona's value genuinely topic-dependent? How large is the quality gap? Should volume targets vary by topic type?

5. **Filler detection:** At q10-15 (limited data), and at q08-12, estimate what percentage of questions are filler. What characterizes the filler?

6. **Cross-topic consistency:** Beyond topic sensitivity, do the persona's general quality characteristics hold across all 7 topics?

{FOR SIMPLIFIER ONLY — include this additional section:}

7. **Phase 2B viability assessment (RQ13e):** The Simplifier has been flagged as potentially better suited for Phase 3 than Phase 2B. Specifically evaluate:
   - Does it produce genuinely open-ended questions or primarily convergent evaluations?
   - Does its subtractive framing complement or conflict with the synthesis group's output?
   - Would its questions be better posed directly in Phase 3 rather than generated independently?
   - Recommendation: Keep in Tier 3 / Exclude from Phase 2B entirely

## Comparison Pairs

- Accountant ↔ Analyst
- Lawyer ↔ Devil's Advocate
- Politician ↔ Audience Advocate, Devil's Advocate
- Simplifier ↔ Analyst (convergent evaluation)
- Technical Expert ↔ Analyst

## Output Format

```markdown
# R6 Assessment: {persona_name}

**Phase 2C Method (expected):** Synthesis
**Phase 2C Method (assessed):** {Synthesis | Append | Exclude}
**Recommended Volume Range:** {range}
**Filler Onset:** ~{N} questions
**Topic Sensitivity:** {High | Moderate | Low}

## Volume-Quality Curve

### 8-12 Questions
{Assessment across 7 topics}

### 10-15 Questions
{Assessment — note limited data (1 run)}

## Synthesis vs Append Determination

{Rationale}

## Tier 1 Overlap Assessment

{Thematic convergence with counterpart persona(s)}

## Topic Sensitivity Analysis

### Strong-Trigger Topics
{Quality assessment}

### Weak-Trigger Topics
{Quality assessment}

### Career-Change Control
{Quality assessment — is this a false positive or does the persona add value here?}

### Topic Sensitivity Verdict
{Is the persona genuinely topic-gated? How large is the quality gap?}

{FOR SIMPLIFIER ONLY:}
## Phase 2B Viability Assessment

{Keep / Exclude recommendation with rationale}

## Summary Recommendation

{Concise recommendation: volume range, Phase 2C method, topic sensitivity guidance, any caveats}
```

Save your output to: dev/2026-02-21_symphony-question-generation_part2/findings/R6_tier3-volume-quality_{persona_name}.md
````

### Batching Strategy

All 5 subagents can run in a single parallel batch (at the 5-concurrent limit).

### Orchestrator Synthesis

After all 5 subagent reports return, the orchestrator compiles:

1. **Summary table** with volume ranges, Phase 2C methods, topic sensitivity ratings, and filler onsets for all 5 personas
2. **Synthesis confirmation** — is Synthesis confirmed for all five, or do any warrant Append or Exclude? (RQ13b, RQ13e)
3. **Topic sensitivity patterns** — should any volume targets be topic-dependent? (RQ13d)
4. **Simplifier verdict** — keep in Tier 3 or exclude from Phase 2B? (RQ13e)
5. **Recommended Effort Level Mapping entries** for Tier 3 personas
6. **Data gap assessment** — the q10-15 level has only 1 run per persona; does this limit confidence in any conclusions?

### Expected Output

**Per-persona:** 5 assessment reports (one per subagent), each containing:
- Volume-quality curve with filler onset
- Phase 2C method recommendation (Synthesis / Append / Exclude)
- Overlap assessment with Tier 1 counterparts
- Topic sensitivity analysis with strong/weak trigger comparison
- Recommended volume range
- (Simplifier only) Phase 2B viability assessment

**Compiled output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/R6_tier3-volume-quality.md`

The compiled document should contain:
1. Summary table with all 5 persona assessments
2. Summary of each subagent's report
3. Cross-persona analysis answering RQ13a-e
4. Recommended Effort Level Mapping entries for Tier 3
5. Data gap notes and any recommended follow-up data generation

---

## Dependency Notes

- **Depends on:** V1 take 2 methodology, D2 (synthesis input context)
- **Recommended sequence:** After R5 (Tier 2), so Tier 2 findings can inform whether Tier 3 analysis needs additional comparison criteria
- **Blocks:** Final Tier 3 configuration in Effort Level Mapping, potential Simplifier exclusion decision
- **Data generation:** Not required — test data already generated (8 runs per persona across 7 topics at 2 volume levels). Note: q10-15 data is thin (1 run per persona); additional runs may be recommended based on findings.

## Priority

**Low** — Tier 3 personas are optional, topic-gated additions. Not blocking core or high-effort implementation. Can run after R5 and in parallel with R7.

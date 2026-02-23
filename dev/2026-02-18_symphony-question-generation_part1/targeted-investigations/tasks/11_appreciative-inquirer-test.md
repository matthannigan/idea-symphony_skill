# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-20
**Parent:** `docs/dev/2026-02-19_question-generation-research-part2.md` (Section 2.1)
**Inputs:**
- External research synthesis (`docs/dev/2026-02-18_question-generation-eval/question-generation-ext-research_synthesis.md`)
- I03 findings (Visionary assessment)
- I04 findings (Empath and Audience Advocate assessment)
- Preliminary results (`docs/dev/2026-02-19_question-generation-research-analysis-stepD_prelim-results.md`)

---

## Background

### Gap Identification

External research synthesis (Section 4, Area 4) found "under-representation of Appreciative Inquiry and positive framing" as a convergent finding across all three independent analyses (Gemini, Manus, Perplexity). Key findings:

- No current persona is explicitly responsible for systematic AI 4-D sequencing (Discovery → Dream → Design → Destiny)
- Empath touches AI Discovery/Dream but primary mode is "emotional excavation" including negative emotions
- Storyteller touches narrative/appreciative modes but focuses on lived experience journeys
- Audience Advocate uses HMW framing but centers on user needs/barriers, not strengths
- Visionary is aspirational but not strengths-based — reimagines paradigms rather than building on existing success

### Preliminary Results Connection

I04 found the Empath's primary mode is "emotional excavation" (including shame, fear, burnout), not dedicated strengths-based inquiry. The Appreciative Inquiry gap remains unresolved (Open Question #2 in preliminary results).

### Research Questions

1. **RQ1 Gap coverage:** Does The Appreciative Inquirer generate questions with strengths-based framing that no other persona produces?
2. **RQ2 Distinctiveness vs Visionary:** The Visionary generates aspirational questions. Does the Appreciative Inquirer produce fundamentally different content (building on existing strengths vs. paradigm reimagination)?
3. **RQ3 Distinctiveness vs Empath:** The Empath generates emotional questions. Does the Appreciative Inquirer produce different emotional territory (positive/aspirational vs. full-spectrum emotional excavation)?
4. **RQ4 AI 4-D coverage:** Does the persona systematically produce questions across all four phases (Discovery, Dream, Design, Destiny)?
5. **RQ5 Selflessness:** Do the Appreciative Inquirer's questions open territory for diverse Phase 3 personas, or primarily for strengths-focused personas?

---

## Investigation Task

### I11: Appreciative Inquirer Validation — New Persona Test

**Purpose:** Validate The Appreciative Inquirer persona against all 3 evaluation topics. This persona was created to fill the Appreciative Inquiry gap identified in external research — no existing persona generates systematic strengths-based, narrative, and aspirational questions following the AI 4-D cycle.

**Persona under test:** The Appreciative Inquirer (new)
**Source:** Gap analysis from external research synthesis + Open Question #2 from preliminary results

**Files to analyze:**

**New Appreciative Inquirer questions (to be generated):**
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-appreciative-inquirer.md`
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-appreciative-inquirer.md`
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-appreciative-inquirer.md`

**Comparison personas:**

*The Visionary (closest aspirational persona, from I03):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-visionary.md`
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-visionary.md`
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-visionary.md`

*The Empath (closest emotional persona, from I04):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-empath.md`
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-empath.md`
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-empath.md`

*The Audience Advocate (closest HMW persona, from I04):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-audience-advocate.md`
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-audience-advocate.md`
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-audience-advocate.md`

**Comparison criteria:**

1. **AI 4-D coverage:** Does the Appreciative Inquirer systematically produce questions across Discovery, Dream, Design, and Destiny phases? Count questions per phase across all topics.

2. **Strengths-based framing:** Count questions that explicitly surface existing strengths, past successes, or peak experiences. Compare to Visionary (paradigm-shift framing), Empath (emotional excavation), and Audience Advocate (needs/barriers framing).

3. **Dimension distribution:** Classify each question by primary dimension (Strategic, Tactical, Creative, Analytical, Human-centered, Systems, Provocative). Expected profile for Appreciative Inquirer: high Creative + Human-centered + Strategic, low Analytical + Tactical + Provocative.

4. **Cluster theme comparison:** Compare cluster names and themes across all four personas. Does the Appreciative Inquirer produce cluster structures that are distinct from the comparison set?

5. **Unique question territory:** List questions from the Appreciative Inquirer that no comparison persona would generate. Assess whether these questions fill the identified gap.

6. **Convergence points:** List questions where the Appreciative Inquirer overlaps with comparison personas. If convergence with Visionary or Empath exceeds 30%, the new persona may be redundant.

7. **Selflessness assessment:** For each Appreciative Inquirer question, identify which Phase 3 personas could productively answer it. High-value Phase 2B questions are "selfless" — answerable by diverse personas, not just strengths-focused ones.

8. **Topic sensitivity:** Does the Appreciative Inquirer perform differently across topics? Some topics (space party — experiential) may naturally elicit more appreciative questions than others (habit tracker — technical).

**Expected outcome:**

The Appreciative Inquirer should produce content that is:
- Distinct from the Visionary's paradigm-shift framing (builds on existing strengths vs. reimagines from scratch)
- Distinct from the Empath's emotional excavation (positive/aspirational valence vs. full-spectrum emotions)
- Distinct from the Audience Advocate's HMW framing (strengths-based vs. needs/barriers-based)
- Systematic in AI 4-D coverage (questions across all four phases)
- Selfless — opening territory for diverse Phase 3 personas

**Success criteria:**

1. **Gap coverage:** ≥30% of questions are strengths-based (elicit past success, surface existing strengths, build on what works) — territory no comparison persona covers at this rate
2. **AI 4-D distribution:** Questions appear in all 4 phases with no phase below 15% coverage
3. **Distinctiveness vs Visionary:** ≤25% convergence (overlap in themes or specific questions)
4. **Distinctiveness vs Empath:** ≤30% convergence (both emotionally focused but different valences)
5. **Distinctiveness vs Audience Advocate:** ≤20% convergence (different framing entirely)
6. **Selflessness:** ≥60% of questions open territory for 3+ Phase 3 personas from different clusters
7. **Topic consistency:** Produces appreciative questions across all 3 topics (not just experiential ones)

**Decision criterion:**

- If success criteria 1-7 are met: **ADD to Phase 2B roster** (high-effort configuration)
- If criteria 1-4 are met but 5-7 are weak: **CONDITIONAL** — consider prompt refinement
- If convergence with Visionary OR Empath exceeds 30%: **REDUNDANT** — the gap can be filled through existing personas + prompt engineering
- If AI 4-D coverage is uneven (any phase <15%): **REFINE PROMPT** — strengthen underrepresented phases

---

## Output

**Output file:** `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/11_appreciative-inquirer-test.md`

### Output Format

```
## Investigation I11: Appreciative Inquirer Validation

### Question Generation Assessment
[Volume, structure, AI 4-D phase distribution]

### Gap Coverage Assessment
[Does it fill the identified Appreciative Inquiry gap? Evidence.]

### Distinctiveness Assessment

#### vs Visionary
[Convergence %, unique territory, example contrasts]

#### vs Empath
[Convergence %, unique territory, example contrasts]

#### vs Audience Advocate
[Convergence %, unique territory, example contrasts]

### Territory Map
[Dimension distribution, cluster themes, unique question samples]

### Selflessness Assessment
[Which Phase 3 personas can answer these questions? Distribution across clusters.]

### Cross-Topic Patterns
[Do findings hold across all 3 topics, or vary?]

### Recommendation
[ADD / CONDITIONAL / REDUNDANT / REFINE PROMPT — with rationale]

### Notes
[Additional observations, surprises, connections to other investigations]
```

---

## Priority

**P4** in Part 2 investigation sequence (after Systems Thinker, Connector, and end-to-end roster testing).

This investigation resolves Open Question #2 from preliminary results: whether the Appreciative Inquiry gap requires a new persona or can be filled through existing roster + prompt engineering. The decision directly affects the high-effort roster composition.

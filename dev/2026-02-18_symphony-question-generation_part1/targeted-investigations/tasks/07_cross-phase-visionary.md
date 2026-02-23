# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-19
**Parent:** `docs/dev/2026-02-18_question-generation-research.md` (Step C)
**Inputs:**
- Step A quantitative baselines (`docs/dev/2026-02-19_question-generation-research-analysis-stepA.md`)
- Step B external research synthesis (`docs/dev/2026-02-18_question-generation-eval/question-generation-ext-research_synthesis.md`)

---

## Background

### Phase 2B Design

Phase 2B uses **fixed persona assignments** for question generation with no topic-aware selection:

| Effort | Personas |
|--------|----------|
| Medium (3) | The Questioner, The Analyst, The Audience Advocate |
| High (5) | + The Devil's Advocate, The First Principles Thinker |

### Analytical Bias Hypothesis

All five current Phase 2B personas are classified as Analytical. Zero Generative personas. Zero Connective personas. Two of the five (Questioner, Analyst) are retired from Phase 3.

**Hypothesis:** The all-analytical composition systematically biases question generation toward analytical framing — risks, trade-offs, feasibility, stakeholder mapping — while underrepresenting creative, provocative, emotional, and systems-oriented question territory.

### External Research Findings (Step B)

All three independent analyses (Gemini, Manus, Perplexity) agree:
- The current Phase 2B set fully covers convergent, evaluative, and Socratic analytical question types
- It provides **no dedicated divergent question sources** and only thin generative framing via Audience Advocate
- Strong generative question generators exist in the roster (Provocateur, Visionary, Analogist, Constraint Flipper) but aren't used in Phase 2B
- Professional facilitation research emphasizes divergent-convergent sequencing, Appreciative Inquiry, and emotional/narrative questions as critical for high-quality question portfolios

### Cross-Phase Convergence Concept

Phase 2B questions go through synthesis into topic clusters, then to the full Phase 3 roster. A persona that generates "selfless" questions — opening territory for other personas to excel in — is more valuable for Phase 2B than one that generates great questions only it can answer.

**High convergence** = persona asks questions it already knows how to answer (pre-loading its own territory)
**Low convergence** = persona generates questions that open territory *beyond* its own brainstorming strengths ("selfless" questions)

### Research Questions

1. **RQ1 Distinctiveness:** Do different personas generate meaningfully different questions?
2. **RQ2 Analytical bias:** Does the current all-analytical set produce narrower territory?
3. **RQ3 Topic-aware selection:** Is there sufficient variation across topics to justify a selection algorithm?
4. **RQ4 Cross-phase convergence:** Do personas ask questions they can answer? Which generate "selfless" questions?
5. **RQ5 Cluster divergence:** Do personas produce different topic cluster structures?
6. **RQ6 Topic sensitivity:** Do some personas generate better questions for certain topics?
7. **RQ7 Retired persona fitness:** Do Questioner/Analyst excel at question generation?

---

## Quantitative Signals Summary (Step A)

**Volume tiers (avg KB across 3 topics):**
- High (>8 KB): Lawyer 11.0, Systems Thinker 10.3, Momentum Builder 8.8, Audience Advocate 8.6, Provocateur 8.5, Connector 8.2
- Medium (6-8 KB): Politician 7.7, Futurist 7.4, Storyteller 7.3, Analogist 7.3, Devil's Advocate 7.3, Empath 7.3, Visionary 7.1, Analyst 7.0, Accountant 6.8, FPT 6.5, Questioner 6.3
- Low (<6 KB): Pragmatist 5.9, Simplifier 5.8, Technical Expert 5.6, Constraint Flipper 5.6, Synthesizer 5.5

**Consistency (CV%):**
- Highly consistent (CV < 10%): Empath 1.4%, Systems Thinker 2.2%, Questioner 2.7%, Synthesizer 3.5%, Constraint Flipper 3.7%, Futurist 4.4%, Simplifier 7.8%, Pragmatist 9.0%, Analyst 9.7%, Technical Expert 9.7%
- Moderate (10-25%): Most others
- High variance: Politician 30.3%

**Cluster structure:**
- 82% of files have exactly 5 clusters (strong convergence on count)
- Variation is in cluster *naming and framing*, not count
- Analytical personas converge on similar cluster themes (risk, stakeholder, feasibility)
- Distinctive cluster structures from: Analogist, Provocateur, Storyteller, Constraint Flipper, Visionary

**Current Phase 2B set:**
- Volume: Questioner 6.3, Analyst 7.0, AA 8.6, DA 7.3, FPT 6.5 — dead-center average
- Consistency: Mixed (Questioner 2.7% to DA 21.6%)
- Both retired personas (Questioner, Analyst) are mid-pack — unremarkable

---

## Investigation Task

### I07: Cross-Phase Convergence — The Visionary

**Key question:** Does the Visionary ask questions it already knows how to answer? The Visionary is hypothesized to show **high convergence** — its paradigm-shifting, aspirational question framing should map directly to its paradigm-shifting, aspirational brainstorming responses. If confirmed, this means the Visionary's questions pre-load Visionary-type territory rather than opening diverse territory for the full Phase 3 roster.

**Research question addressed:** RQ4 (cross-phase convergence)

**Hypothesis:** High convergence. Preliminary observation noted: "The Visionary asks about 'emotional memory architecture' and 'sensory dimensions beyond visual' — these map directly to Visionary-type brainstorming responses."

**Quantitative context:**
- Phase 2B questions: 7.1 KB avg across 3 topics (CV=16.5%)
- Phase 3 responses: ~73 KB total across 3 topics × 4 clusters (~6.1 KB avg per response file)
- Visionary is classified as Generative in Phase 3, rated "Very high" fitness for question generation in external research

**Files to read (15 files, ~94 KB total):**

Phase 2B questions (3 files, ~21 KB):
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-visionary.md` (7.1 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-visionary.md` (8.4 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-visionary.md` (5.6 KB)

Phase 3 brainstorming responses (12 files, ~73 KB):
- `test-runs/symphony-phase3-brainstorming-persona-eval/space-party_2026-02-15/responses/01_theme-and-experience/the-visionary.md` (5.5 KB)
- `test-runs/symphony-phase3-brainstorming-persona-eval/space-party_2026-02-15/responses/02_activities-and-engagement/the-visionary.md` (6.1 KB)
- `test-runs/symphony-phase3-brainstorming-persona-eval/space-party_2026-02-15/responses/03_logistics-and-safety/the-visionary.md` (6.3 KB)
- `test-runs/symphony-phase3-brainstorming-persona-eval/space-party_2026-02-15/responses/04_inclusion-and-community/the-visionary.md` (6.9 KB)
- `test-runs/symphony-phase3-brainstorming-persona-eval/tool-library_2026-02-15/responses/01_mission-and-model/the-visionary.md` (5.9 KB)
- `test-runs/symphony-phase3-brainstorming-persona-eval/tool-library_2026-02-15/responses/02_operations-and-systems/the-visionary.md` (6.4 KB)
- `test-runs/symphony-phase3-brainstorming-persona-eval/tool-library_2026-02-15/responses/03_equity-and-access/the-visionary.md` (7.5 KB)
- `test-runs/symphony-phase3-brainstorming-persona-eval/tool-library_2026-02-15/responses/04_sustainability-and-growth/the-visionary.md` (6.1 KB)
- `test-runs/symphony-phase3-brainstorming-persona-eval/habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-visionary.md` (4.7 KB)
- `test-runs/symphony-phase3-brainstorming-persona-eval/habit-tracker_2026-02-15/responses/02_user-experience-and-engagement/the-visionary.md` (4.7 KB)
- `test-runs/symphony-phase3-brainstorming-persona-eval/habit-tracker_2026-02-15/responses/03_technical-architecture/the-visionary.md` (5.0 KB)
- `test-runs/symphony-phase3-brainstorming-persona-eval/habit-tracker_2026-02-15/responses/04_business-and-sustainability/the-visionary.md` (5.6 KB)

**Analysis method:**
1. For each topic, extract the thematic territories from Phase 2B questions (cluster names + question themes, keywords, and framing)
2. For each topic, extract the thematic territories from Phase 3 responses (key ideas, themes, vocabulary)
3. Assess overlap: what proportion of question territory does this persona's own brainstorming output cover?
4. Assess reach: what question territory opens space for *other* personas' strengths? (e.g., questions about logistics, user emotions, community dynamics — territory other Phase 3 personas would excel at)
5. Rate convergence per topic and overall: High / Moderate / Low
6. Identify specific examples of "self-serving" questions (territory the Visionary both asks about and answers) and "selfless" questions (territory the Visionary asks about but other personas would answer better)

**Expected output:** Per-topic convergence rating, overall convergence rating, specific thematic overlap evidence, "selfless question" examples, implications for Phase 2B.

**Priority:** Medium — cross-phase convergence is the novel analysis category. The Visionary is the strongest test case for the high-convergence hypothesis.

**Output file:** `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/07_cross-phase-visionary.md`

### Output Format

Each investigation subagent returns a structured finding:

```
## Investigation [ID]: [Title]

### Question Generation Assessment
[Per-persona or comparative assessment]

### Territory Map
[What question territory does this persona/set cover? What dimensions dominate?]

### Evidence
[Specific quoted questions, cluster themes, dimension counts]

### Cross-Topic Patterns
[Do findings hold across all 3 topics, or vary?]

### Recommendation
[For Phase 2B roster: Include / Exclude / Conditional]

### Notes
[Additional observations, surprises, connections to other investigations]
```

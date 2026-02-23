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

### I01: Analytical Probing Overlap — Questioner vs First Principles Thinker

**Key question:** Do these two analytical probing personas produce distinct question territory? The Questioner generates questions through meta-inquiry and assumption-probing; FPT generates questions through deep structural "why/how" decomposition. Do these approaches yield meaningfully different questions, or do they converge on the same analytical probing territory?

**Research questions addressed:** RQ1 (distinctiveness), RQ5 (cluster divergence), RQ7 (retired persona fitness)

**Quantitative context:**
- Questioner: 6.3 KB avg, CV=2.7% (extremely consistent), claims 22-26 questions per file (over-generates vs 15-20 target)
- FPT: 6.5 KB avg, CV=13.3% (consistent), standard question counts
- Nearly identical volume, but Questioner produces more numerous shorter questions while FPT produces fewer elaborated ones
- Both are Phase 3 analytical classification; Questioner is retired from Phase 3 (subsumed by DA+FPT)

**Files to compare (6 files, ~39 KB total):**
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-questioner.md` (6.5 KB)
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-first-principles-thinker.md` (5.4 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-questioner.md` (6.3 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-first-principles-thinker.md` (6.3 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-questioner.md` (6.0 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-first-principles-thinker.md` (7.5 KB)

**Comparison criteria:**
- Cluster theme overlap: do they create similar or different cluster structures?
- Question depth: does FPT ask deeper structural questions while Questioner stays at meta-inquiry level?
- Unique question territory: list questions from each that the other would never produce
- Convergence points: list questions where both personas ask essentially the same thing
- Dimension classification per question: Strategic / Tactical / Creative / Analytical / Human-centered / Systems / Provocative
- Topic variation: does the overlap pattern change across space-party, tool-library, and habit-tracker?
- Phase 3 retirement signal: does the Questioner's Phase 3 weakness (subsumed by DA+FPT) manifest in question generation too?

**Expected output:** Distinctiveness rating (High/Moderate/Low), dimension distribution per persona, recommendation for Phase 2B roster (keep Questioner / replace with FPT only / keep both), evidence summary.

**Priority:** High — directly tests whether the Questioner's Phase 3 retirement should extend to Phase 2B.

**Output file:** `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/01_analytical-probing-overlap.md`

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

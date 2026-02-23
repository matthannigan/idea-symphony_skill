# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-19
**Parent:** `docs/dev/2026-02-19_question-generation-research-part2.md` (Section 1.4, P5)
**Inputs:**
- Step A quantitative baselines (`docs/dev/2026-02-19_question-generation-research-analysis-stepA.md`)
- External research synthesis (`docs/dev/2026-02-18_question-generation-eval/question-generation-ext-research_synthesis.md`)
- Phase 3 selection guide (Progressive/Elaborative Pair: Momentum Builder + Simplifier)

---

## Background

### Phase 2B Design

Phase 2B uses **fixed persona assignments** for question generation with no topic-aware selection:

| Effort | Personas |
|--------|----------|
| Medium (3) | The Questioner, The Analyst, The Audience Advocate |
| High (5) | + The Devil's Advocate, The First Principles Thinker |

### Generative vs Convergent Question

External research rates the Momentum Builder "Moderate-high" for question generation — good at progressive "what if" chains and action-oriented questions. The critical question is whether this represents genuinely generative territory (opening new space) or convergent territory (narrowing toward implementation), which determines its Phase 2B fitness.

### Progressive/Elaborative Pair Context

The Phase 3 selection guide positions the Momentum Builder in the Progressive/Elaborative Pair with the Simplifier (near-zero overlap, productive tension). In Phase 3 brainstorming, the Momentum Builder's value is in turning ideas into action-oriented elaborations. The question is whether this "action-orientation" translates to generative question territory or whether it collapses into implementation feasibility (Pragmatist territory).

### Research Questions

1. **RQ1 Generative vs Convergent:** Does the Momentum Builder generate genuinely generative "what if" questions or does it collapse into implementation feasibility (Pragmatist territory)?
2. **RQ2 Distinctiveness vs Pragmatist:** How does "progressive elaboration" differ from the Pragmatist's implementation focus?
3. **RQ3 Distinctiveness vs Visionary:** How does "progressive what if" differ from "aspirational what if"?
4. **RQ4 Selflessness:** Does the Momentum Builder show high selflessness or does it ask questions primarily suited to its own answer domain?

---

## Investigation Task

### I15: Momentum Builder Investigation — Generative vs Convergent Assessment

**Key question:** Does the Momentum Builder generate genuinely generative "what if" questions that open new territory, or does it collapse into implementation feasibility questions similar to the Pragmatist? Is "progressive elaboration" a generative cognitive mode (valuable for Phase 2B) or a convergent one (better suited to Phase 3)?

**Research questions addressed:** RQ1 (distinctiveness), RQ4 (cross-phase convergence)

**Quantitative context:**
- Momentum Builder: 8.8 KB avg, CV=22.9% (moderate-high variance) — high volume tier
- Pragmatist: 5.9 KB avg, CV=9.0% (consistent) — low volume tier
- The Momentum Builder generates ~50% more content than the Pragmatist — may indicate more elaborate question chains or more questions
- High CV% suggests the Momentum Builder may adapt significantly to topic type
- External research: "Moderate-high" question generation rating (not "High" or "Very high" — suggesting partial fit)

**Files to compare (6 files, ~45 KB total):**

*The Momentum Builder (under test):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-momentum-builder.md` (7.9 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-momentum-builder.md` (6.9 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-momentum-builder.md` (11.5 KB)

*The Pragmatist (convergent comparator):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-pragmatist.md` (5.8 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-pragmatist.md` (5.2 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-pragmatist.md` (6.5 KB)

**Comparison criteria:**
- Generative vs Convergent classification: for each Momentum Builder question, classify as generative (opens new territory, expands possibilities) or convergent (narrows toward implementation, evaluates feasibility)
- Question framing overlap: do both personas ask about "how to make this happen" from different angles, or do they converge on the same implementation concerns?
- Progressive elaboration detection: does the Momentum Builder build question chains ("If X, then what about Y?") or ask independent questions? How does this differ from the Pragmatist's approach?
- Cluster theme overlap: do they create similar or different cluster structures?
- Unique question territory: list questions from the Momentum Builder that the Pragmatist would never produce
- Convergence points: list questions where both personas ask essentially the same thing
- Dimension classification per question: Strategic / Tactical / Creative / Analytical / Human-centered / Systems / Provocative
- Topic variation: does the Momentum Builder's generative/convergent ratio change across topics? (high CV% suggests it might)
- Selflessness assessment: which Phase 3 personas could productively answer the Momentum Builder's questions?

**Expected output:** Generative/convergent ratio, distinctiveness rating (High/Moderate/Low) vs Pragmatist, dimension distribution, recommendation for Phase 2B roster (add / better for Phase 3 / exclude), evidence summary.

**Priority:** Conditional — investigate only if there's interest in filling an implementation-oriented question slot in Phase 2B. Lower priority than Systems Thinker (I12), Connector (I13), and Futurist (I14).

**Output file:** `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/15_momentum-builder-investigation.md`

### Output Format

Each investigation subagent returns a structured finding:

```
## Investigation I15: Momentum Builder Investigation

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

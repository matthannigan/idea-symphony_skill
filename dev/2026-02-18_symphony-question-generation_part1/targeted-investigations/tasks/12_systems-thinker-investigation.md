# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-19
**Parent:** `docs/dev/2026-02-19_question-generation-research-part2.md` (Section 1.1, P2)
**Inputs:**
- Step A quantitative baselines (`docs/dev/2026-02-19_question-generation-research-analysis-stepA.md`)
- External research synthesis (`docs/dev/2026-02-18_question-generation-eval/question-generation-ext-research_synthesis.md`)
- I05 findings (Analogist assessment)
- I06 findings (dimension audit — Systems gap at 6.5%)

---

## Background

### Phase 2B Design

Phase 2B uses **fixed persona assignments** for question generation with no topic-aware selection:

| Effort | Personas |
|--------|----------|
| Medium (3) | The Questioner, The Analyst, The Audience Advocate |
| High (5) | + The Devil's Advocate, The First Principles Thinker |

### Systems Dimension Gap

I06 found the Systems dimension severely underrepresented at 6.5% across the current Phase 2B set, with FPT as the only meaningful contributor (13.5%). External research rates the Systems Thinker "High" for question generation — deep structural/systemic questioning covering interdependencies, feedback loops, and emergence.

### External Perspectives Triad

The Phase 3 selection guide positions the Systems Thinker in the External Perspectives Triad (with Connector + Analogist). I05 validated the Analogist as a strong cross-domain question generator. This investigation tests whether the Systems Thinker complements the Analogist with internal structural questions or collapses into analytical decomposition.

### Research Questions

1. **RQ1 Distinctiveness vs Analytical:** Does the Systems Thinker generate genuinely systemic questions (interdependencies, feedback loops, emergence) or does it collapse into analytical decomposition like the Analyst?
2. **RQ2 Distinctiveness vs Analogist:** How distinct is it from the Analogist (external transfer) and the FPT (structural decomposition)?
3. **RQ3 Systems gap fill:** Does it fill the 6.5% Systems dimension gap identified in I06?
4. **RQ4 Selflessness:** Do systemic questions open territory for diverse Phase 3 personas or only for other Systems Thinkers?
5. **RQ5 Triad validation:** Does the External Perspectives Triad hold as non-redundant in Phase 2B question generation?

---

## Investigation Task

### I12: Systems Thinker Investigation — Systems Gap & Triad Validation

**Key question:** Does the Systems Thinker generate genuinely systemic questions (interdependencies, feedback loops, emergence) that fill the 6.5% Systems gap, or does it collapse into analytical decomposition like the Analyst? How distinct is it from the Analogist (cross-domain transfer) and FPT (structural decomposition)?

**Research questions addressed:** RQ1 (distinctiveness), RQ2 (triad validation), RQ3 (Systems gap), RQ5 (cluster divergence)

**Quantitative context:**
- Systems Thinker: 10.3 KB avg, CV=2.2% (extremely consistent) — highest volume tier
- FPT: 6.5 KB avg, CV=13.3% — the current Phase 2B set's only Systems contributor (13.5%)
- Analogist: 7.3 KB avg, CV=13.1% — validated in I05 as strong cross-domain question generator
- Systems Thinker produces ~60% more content than FPT — suggests either more questions or more elaboration

**Files to compare (9 files, ~73 KB total):**

*The Systems Thinker (under test):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-systems-thinker.md` (10.0 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-systems-thinker.md` (10.5 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-systems-thinker.md` (10.5 KB)

*The First Principles Thinker (Systems dimension comparator, from I01):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-first-principles-thinker.md` (5.5 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-first-principles-thinker.md` (6.4 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-first-principles-thinker.md` (7.6 KB)

*The Analogist (External Perspectives Triad comparator, from I05):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-analogist.md` (6.3 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-analogist.md` (7.5 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-analogist.md` (8.1 KB)

**Comparison criteria:**
- Systems vs Analytical: Does the Systems Thinker ask about interdependencies, feedback loops, emergence, and second-order effects (Systems) or about decomposition, evaluation, and risk assessment (Analytical)?
- Cluster theme overlap: do the Systems Thinker and Analogist create similar or different cluster structures? Do they overlap with FPT?
- Cognitive operation distinction: internal dynamics (Systems Thinker) vs. cross-domain transfer (Analogist) vs. structural decomposition (FPT)
- Unique question territory: list questions from the Systems Thinker that neither the Analogist nor FPT would produce
- Convergence points: list questions where personas ask essentially the same thing
- Dimension classification per question: Strategic / Tactical / Creative / Analytical / Human-centered / Systems / Provocative
- Topic variation: does the overlap pattern change across space-party, tool-library, and habit-tracker?
- Selflessness assessment: which Phase 3 personas could productively answer the Systems Thinker's questions?

**Expected output:** Distinctiveness rating (High/Moderate/Low) vs each comparator, Systems dimension contribution %, dimension distribution, triad complementarity assessment, recommendation for Phase 2B roster (add / conditional / exclude), evidence summary.

**Priority:** High — directly tests whether the 6.5% Systems gap can be filled and validates the External Perspectives Triad for Phase 2B.

**Output file:** `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/12_systems-thinker-investigation.md`

### Output Format

Each investigation subagent returns a structured finding:

```
## Investigation I12: Systems Thinker Investigation

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

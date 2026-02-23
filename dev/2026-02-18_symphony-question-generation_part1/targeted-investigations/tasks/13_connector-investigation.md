# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-19
**Parent:** `docs/dev/2026-02-19_question-generation-research-part2.md` (Section 1.2, P3)
**Inputs:**
- Step A quantitative baselines (`docs/dev/2026-02-19_question-generation-research-analysis-stepA.md`)
- External research synthesis (`docs/dev/2026-02-18_question-generation-eval/question-generation-ext-research_synthesis.md`)
- I05 findings (Analogist assessment)
- I12 findings (Systems Thinker assessment — if completed)

---

## Background

### Phase 2B Design

Phase 2B uses **fixed persona assignments** for question generation with no topic-aware selection:

| Effort | Personas |
|--------|----------|
| Medium (3) | The Questioner, The Analyst, The Audience Advocate |
| High (5) | + The Devil's Advocate, The First Principles Thinker |

### External Perspectives Triad

The Phase 3 selection guide positions the Connector in the External Perspectives Triad (with Systems Thinker + Analogist). The triad represents three distinct ways of connecting ideas across boundaries:
- **Analogist:** Cross-domain transfer — imports solutions from other fields
- **Systems Thinker:** Internal dynamics — maps feedback loops and emergence within the system
- **Connector:** Structural parallels — identifies hidden relationships between concepts

The question is whether these three cognitive modes produce genuinely non-redundant question territory in Phase 2B, or whether two of three overlap.

### Research Questions

1. **RQ1 Distinctiveness vs Analogist:** How does "structural parallels" differ from "cross-domain solutions"?
2. **RQ2 Distinctiveness vs Systems Thinker:** How does "structural parallels" differ from "feedback loops"?
3. **RQ3 Triad completion:** Is the External Perspectives Triad genuinely complementary in question generation?
4. **RQ4 Selflessness:** Does the Connector generate selfless questions that activate diverse Phase 3 personas?
5. **RQ5 Middle-ground hypothesis:** Does the Connector occupy a productive middle ground — more concrete than the Systems Thinker, less prescriptive than the Analogist?

---

## Investigation Task

### I13: Connector Investigation — External Perspectives Triad Completion

**Key question:** Does the Connector's "structural parallels" cognitive mode produce genuinely distinct question territory from the Analogist's "cross-domain solutions" and the Systems Thinker's "feedback loops"? Is the External Perspectives Triad genuinely non-redundant for Phase 2B question generation?

**Research questions addressed:** RQ1 (distinctiveness), RQ2 (triad validation), RQ5 (cluster divergence)

**Quantitative context:**
- Connector: 8.2 KB avg, CV=17.5% (moderate variance) — high volume tier
- Analogist: 7.3 KB avg, CV=13.1% — validated in I05 as strong cross-domain generator
- Systems Thinker: 10.3 KB avg, CV=2.2% — extremely consistent, highest volume tier
- The Connector's moderate variance suggests it may adapt more to topic type than the highly consistent Systems Thinker

**Files to compare (9 files, ~77 KB total):**

*The Connector (under test):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-connector.md` (6.6 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-connector.md` (8.8 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-connector.md` (9.2 KB)

*The Analogist (External Perspectives Triad comparator, from I05):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-analogist.md` (6.3 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-analogist.md` (7.5 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-analogist.md` (8.1 KB)

*The Systems Thinker (External Perspectives Triad comparator, from I12):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-systems-thinker.md` (10.0 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-systems-thinker.md` (10.5 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-systems-thinker.md` (10.5 KB)

**Comparison criteria:**
- Cognitive operation distinction: structural parallels (Connector) vs. cross-domain transfer (Analogist) vs. internal dynamics (Systems Thinker)
- Cluster theme overlap: do the three triad members create distinct cluster structures?
- Concreteness spectrum: does the Connector sit between the Systems Thinker (abstract dynamics) and the Analogist (concrete domain imports)?
- Unique question territory: list questions from the Connector that neither the Analogist nor Systems Thinker would produce
- Convergence points: list questions where personas overlap, especially Connector-Analogist (highest expected overlap)
- Dimension classification per question: Strategic / Tactical / Creative / Analytical / Human-centered / Systems / Provocative
- Topic variation: does the Connector adapt its approach to topic type (given its higher CV% vs Systems Thinker)?
- Selflessness assessment: which Phase 3 personas could productively answer the Connector's questions?

**Expected output:** Triad complementarity assessment (complementary / partially redundant / redundant), distinctiveness rating vs each comparator, dimension distribution, recommendation for Phase 2B roster (add / conditional / exclude), evidence summary.

**Priority:** High — completes the External Perspectives Triad assessment. If the triad is validated, it becomes a candidate cluster for high-effort Phase 2B rosters.

**Output file:** `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/13_connector-investigation.md`

### Output Format

Each investigation subagent returns a structured finding:

```
## Investigation I13: Connector Investigation

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

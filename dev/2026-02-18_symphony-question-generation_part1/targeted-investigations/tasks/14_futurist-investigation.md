# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-19
**Parent:** `docs/dev/2026-02-19_question-generation-research-part2.md` (Section 1.3, P4)
**Inputs:**
- Step A quantitative baselines (`docs/dev/2026-02-19_question-generation-research-analysis-stepA.md`)
- External research synthesis (`docs/dev/2026-02-18_question-generation-eval/question-generation-ext-research_synthesis.md`)
- I03 findings (Visionary assessment)
- Phase 3 selection guide (Forward-Looking Pair: Futurist + Visionary, ~19-20% convergence)

---

## Background

### Phase 2B Design

Phase 2B uses **fixed persona assignments** for question generation with no topic-aware selection:

| Effort | Personas |
|--------|----------|
| Medium (3) | The Questioner, The Analyst, The Audience Advocate |
| High (5) | + The Devil's Advocate, The First Principles Thinker |

### Forward-Looking Pair

The Phase 3 selection guide positions the Futurist in the Forward-Looking Pair with the Visionary (~19-20% convergence in Phase 3 brainstorming). I03 validated the Visionary as a strong Phase 2B candidate with high selflessness and paradigm-shift framing. The question is whether the Futurist adds distinct value or duplicates the Visionary's aspirational territory from a trend-extrapolation angle.

### Anti-Pattern Warning

Phase 3 guide notes the Futurist "decorates shared ideas with trend framing" at ~35% temporal lens rate on experiential topics. This suggests the Futurist may be more effective on strategic/technical topics than experiential ones.

### Conditional Investigation

This investigation is conditional: **only warranted if the high-effort roster expands to 6+ personas** where a second future-oriented persona could add value. At current roster sizes (medium=3, high=5), the Visionary alone likely suffices for forward-looking coverage.

### Research Questions

1. **RQ1 Distinctiveness vs Visionary:** Does the Futurist generate genuinely distinct question territory from the Visionary, or does the ~19-20% Phase 3 convergence replicate in Phase 2B?
2. **RQ2 Cognitive mode distinction:** Is trend-grounded positioning (Futurist) meaningfully different from paradigm-shift framing (Visionary) for question generation?
3. **RQ3 Topic sensitivity:** Does the Futurist show topic sensitivity — better on strategic topics, worse on experiential ones?
4. **RQ4 Selflessness:** Do the Futurist's questions open territory for diverse Phase 3 personas or primarily for trend-focused personas?

---

## Investigation Task

### I14: Futurist Investigation — Forward-Looking Pair Validation

**Key question:** Does the Futurist generate genuinely distinct question territory from the Visionary, or does the Visionary alone suffice for forward-looking Phase 2B coverage? Is the Forward-Looking Pair complementary in question generation or redundant?

**Research questions addressed:** RQ1 (distinctiveness), RQ3 (topic sensitivity), RQ5 (cluster divergence)

**Quantitative context:**
- Futurist: 7.4 KB avg, CV=4.4% (highly consistent)
- Visionary: 7.1 KB avg, CV=18.5% (moderate variance)
- Nearly identical average volume but the Futurist is much more consistent — suggests a stable cognitive mode applied uniformly
- Phase 3 convergence: ~19-20% (moderate overlap in brainstorming output)
- Anti-pattern: ~35% temporal lens decoration rate on experiential topics

**Files to compare (6 files, ~44 KB total):**

*The Futurist (under test):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-futurist.md` (7.8 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-futurist.md` (7.1 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-futurist.md` (7.1 KB)

*The Visionary (Forward-Looking Pair comparator, from I03):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/questions/by-persona/the-visionary.md` (7.1 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/questions/by-persona/the-visionary.md` (8.5 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/questions/by-persona/the-visionary.md` (5.6 KB)

**Comparison criteria:**
- Cognitive mode distinction: trend extrapolation (Futurist) vs. paradigm reimagination (Visionary)
- Question framing: "What trends lead to what futures?" (Futurist) vs. "What could this become if we reimagined it entirely?" (Visionary)
- Cluster theme overlap: do they create similar or different cluster structures?
- Temporal lens detection: count questions that merely add trend framing to otherwise standard questions (anti-pattern indicator)
- Unique question territory: list questions from the Futurist that the Visionary would never produce, and vice versa
- Convergence points: list questions where both personas ask essentially the same thing
- Dimension classification per question: Strategic / Tactical / Creative / Analytical / Human-centered / Systems / Provocative
- Topic sensitivity: does the Futurist perform differently on experiential (space party) vs. civic (tool library) vs. technical (habit tracker) topics?
- Selflessness assessment: which Phase 3 personas could productively answer the Futurist's questions?

**Expected output:** Distinctiveness rating (High/Moderate/Low) vs Visionary, convergence %, dimension distribution, topic sensitivity assessment, recommendation for Phase 2B roster (add at high-effort / Visionary alone suffices / exclude), evidence summary.

**Priority:** Conditional — only relevant if high-effort roster expands to 6+ personas. Lower priority than Systems Thinker (I12) and Connector (I13).

**Output file:** `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/14_futurist-investigation.md`

### Output Format

Each investigation subagent returns a structured finding:

```
## Investigation I14: Futurist Investigation

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

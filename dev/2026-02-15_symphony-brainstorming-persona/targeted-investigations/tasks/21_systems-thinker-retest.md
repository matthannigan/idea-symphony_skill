# Investigation B21: Systems Thinker Retest

**Date:** 2026-02-18
**Persona under test:** The Systems Thinker (refined prompt)
**Source:** Quality concerns from B13 (Systems Thinker Validation)

---

## Purpose

Re-run the Systems Thinker with its refined prompt and assess whether the quality issues identified in [B13](../13_systems-thinker-validation.md) are resolved:

1. **Formulaic loop-mapping (B13 Q5):** The original prompt produced responses that bolted a feedback loop onto every idea, even when the insight was straightforward. The refined prompt adds explicit selectivity guidance ("identify the 2-3 most important dynamics per question") and a litmus test ("if you can't articulate why the dynamic is non-obvious, it probably doesn't need systems framing").
2. **Archetype labeling without causal tracing (B13 Q5):** Some responses named archetypes ("Fixes that Fail," "Shifting the Burden") without tracing the specific causal mechanism. The refined prompt adds "don't just name the pattern — trace the specific causal chain" with a concrete template showing the expected depth.
3. **Terminology density / jargon fatigue (B13 Notes):** High-frequency use of "reinforcing loop," "leverage point," and archetype names created jargon-heavy output. The refined prompt adds vocabulary variation guidance ("use plain language when it communicates the dynamic just as clearly").

## Key Questions

1. **Selectivity:** What percentage of responses contain loop analysis for every idea vs. selectively applying it? Target: >50% of responses show selective application (skipping loop analysis for straightforward ideas or limiting to 2-3 dynamics). Compare against original where nearly every idea received loop treatment.
2. **Archetype depth:** When archetypes are named, do they include the specific causal chain for the case at hand? Target: >75% of archetype references include a traced mechanism (up from ~50% in original). Count instances of bare labels vs. explained archetypes.
3. **Vocabulary variation:** Does the persona vary its language, or does it still lean heavily on "reinforcing loop," "leverage point," and archetype names? Target: noticeably reduced repetition compared to original outputs.
4. **Topic sensitivity:** B13 found quality was topic-dependent (excellent on habit tracker, good on tool library, weakest on space party where loop analysis felt forced). Does the selectivity guidance help the persona calibrate its depth to topic complexity?
5. **Output quality:** Compare overall insight density and actionability between original and refined outputs. The refinements should improve signal-to-noise without reducing the persona's best work (which was already strong).
6. **Distinctiveness preservation:** Do the refinements maintain the persona's distinctiveness vs. First Principles Thinker, Futurist, and Connector? The changes target output quality, not cognitive mode — distinctiveness should be unaffected.

## Files to Compare

**New Systems Thinker responses** (refined prompt, to be generated in test re-run):
- `test-runs/persona-eval-space-party_2026-02-18/responses/*/the-systems-thinker.md`
- `test-runs/persona-eval-tool-library_2026-02-18/responses/*/the-systems-thinker.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18/responses/*/the-systems-thinker.md`

**Original Systems Thinker responses** (pre-refinement):
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-systems-thinker.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-systems-thinker.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-systems-thinker.md`

**Distinctiveness comparison** (for convergence check):
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-first-principles-thinker.md`
- `test-runs/persona-eval-*_2026-02-18/responses/*/the-futurist.md`
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-connector.md`

## Expected Outcome

The refined Systems Thinker should:
- Apply loop analysis selectively, skipping it when insights are straightforward
- Trace specific causal chains when naming archetypes rather than stopping at the label
- Use varied vocabulary without sacrificing systems thinking precision
- Show improved quality on weaker topics (space party) where loop analysis previously felt forced
- Maintain its strong performance on the habit tracker and tool library topics
- Remain highly distinct from First Principles Thinker, Futurist, and Connector

## Success Criteria

- Selectivity: >50% of responses show selective dynamics application (not every idea gets a loop)
- Archetype depth: >75% of archetype references include traced causal mechanisms
- Vocabulary variation: reduced repetition of stock phrases vs. original outputs
- Topic calibration: space party responses show less forced loop analysis
- Output quality: comparable or improved vs. original (especially on weaker clusters)
- Distinctiveness: remains Highly Distinct from all three comparison personas

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/21_systems-thinker-retest.md`

### Output Format

```
## Investigation [ID]: [Title]

### Key Questions
[Questions & Answers]

### Evidence
[Specific quotes, unique ideas, thematic patterns from the compared files]

### Recommendation
[Keep both / Merge / Refine prompt / Reassign to synthesis / Retire]

### Notes
[Additional observations, surprises, edge cases]
```

# Investigation B16: Futurist Retest

**Date:** 2026-02-17
**Persona under test:** The Futurist (refined prompt)
**Source:** Conflict 2 from Cross-Investigation Synthesis (B1 vs B11)

---

## Purpose

Re-run the Futurist with its refined prompt and assess whether the key issues identified in [B1](../01_forward-looking-overlap.md) and [B11](../11_analytical-convergence.md) are resolved:

1. **Unique contribution rate (B1):** The original Futurist had ~25% convergence with the Visionary and a 35% volume gap. The refined prompt requires citing identifiable trends/data for every idea and constrains to 1-5 year plausibility. Does this increase unique output?
2. **Temporal lens problem (B11):** B11 argued the Futurist's majority output applies "as X evolves" temporal framing to ideas other personas produce in present tense — it's a lens, not a generative engine. Does the refined prompt produce genuinely different *ideas*, not just temporally-reframed versions of other personas' ideas?
3. **Distinctiveness against full roster (B11 scope):** B11 rated the Futurist "Low Distinctiveness" against 7 other analytical personas. Does the refined prompt improve this rating?

## Key Questions

1. **Trend citation compliance:** What percentage of Futurist ideas cite a specific, identifiable trend, dataset, or trajectory? Target: >80% (up from ~60%).
2. **Unique ideas:** Count ideas that no other persona produced. Compare to original Futurist output. Target: meaningful increase (from 1-2 per topic to 3-5 per topic).
3. **Temporal lens reduction:** What percentage of ideas are essentially other personas' ideas with temporal framing added? Target: <20% (down from estimated majority in B11).
4. **Infrastructure-readiness thinking:** Does the Futurist's distinctive strength (B1's strongest argument for retention) remain present and prominent?
5. **Visionary distinctiveness:** Compare refined Futurist vs Visionary. Has convergence decreased from ~25% (B1 baseline)?
6. **Full roster distinctiveness:** Compare refined Futurist against Pragmatist, Technical Expert, First Principles Thinker, Analyst outputs. Has overlap decreased?

## Files to Compare

**New Futurist responses** (refined prompt, to be generated in test re-run):
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-futurist.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-futurist.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-futurist.md`

**Original Futurist responses** (pre-refinement):
- `test-runs/persona-eval-space-party_2026-02-15/responses/*/the-futurist.md`
- `test-runs/persona-eval-tool-library_2026-02-15/responses/*/the-futurist.md`
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/*/the-futurist.md`

**Comparison personas** (for full-roster distinctiveness):
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-visionary.md` (when re-run available)
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-pragmatist.md`
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-technical-expert.md`
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-first-principles-thinker.md`

## Expected Outcome

The refined Futurist should:
- Anchor every idea in named trends/data, eliminating vague "as X evolves" framings
- Produce more genuinely unique ideas (infrastructure-readiness, strategic timing, trend-grounded positioning)
- Reduce overlap with both the Visionary and the broader analytical roster
- Demonstrate that it's a generative engine, not just a temporal lens

## Success Criteria

- Trend citation rate: >80% of ideas cite specific evidence
- Unique ideas: 3-5 per topic (up from 1-2)
- Temporal lens overlap: <20% of ideas are reframed versions of other personas' content
- Visionary convergence: <15% (down from ~25%)
- Full roster distinctiveness: rated Moderate or higher (up from Low in B11)
- Infrastructure-readiness thinking: clearly present in 2+ topics

## Decision Gate

If the refined prompt achieves Moderate distinctiveness or higher against the full analytical roster, **retain the Futurist** with the refined prompt. If distinctiveness remains Low despite prompt refinement, this confirms B11's structural finding (temporal framing is a lens, not a generative engine) and supports **retirement** — with infrastructure-readiness thinking absorbed into the Technical Expert prompt.

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/16_futurist-retest.md`

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


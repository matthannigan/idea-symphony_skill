# Investigation B15: Momentum Builder Retest

**Date:** 2026-02-17
**Persona under test:** The Momentum Builder (refined prompt)
**Source:** Conflict 1 from Cross-Investigation Synthesis (B5 vs B10)

---

## Purpose

Re-run the Momentum Builder with its refined prompt and assess whether the key issues identified in [B5](../05_expansion-overlap.md) and [B10](../10_independence-viability.md) are resolved:

1. **Phantom-input problem (B10):** MB manufactured references to non-existent prior contributions ("Building on that idea..." when no prior idea exists), wasting ~30% of output on validating phantom inputs. The refined prompt removes "build on others' ideas" framing and reframes as "build on the problem."
2. **Progressive elaboration:** The refined prompt emphasizes growing ideas through layers ("seed → extend → extend again") rather than reacting to prior work. Does this produce distinctive, forward-building output?
3. **Pragmatist convergence (B5 flag):** B5 noted that making MB more independent might cause it to converge with the Pragmatist. Does the refined prompt's output overlap significantly with Pragmatist output?

## Key Questions

1. **Phantom-input resolution:** What percentage of MB's responses still reference non-existent prior contributions? Target: <5% (down from ~30%).
2. **Progressive elaboration quality:** Does MB demonstrate the "seed → extend → extend again" pattern? Is the progressive building distinctive and valuable?
3. **Pragmatist overlap:** Compare MB and Pragmatist outputs side-by-side. Rate overlap as Low/Moderate/High. If High, the refined prompt has traded one problem (phantom inputs) for another (convergence).
4. **Output quality:** Compare overall quality (specificity, actionability, insight density) between original and refined MB outputs.
5. **Voice distinctiveness:** Does MB retain its enthusiastic, forward-building energy without the reactive framing?

## Files to Compare

**New MB responses** (refined prompt, to be generated in test re-run):
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-momentum-builder.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-momentum-builder.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-momentum-builder.md`

**Original MB responses** (pre-refinement):
- `test-runs/persona-eval-space-party_2026-02-15/responses/*/the-momentum-builder.md`
- `test-runs/persona-eval-tool-library_2026-02-15/responses/*/the-momentum-builder.md`
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/*/the-momentum-builder.md`

**Pragmatist comparison** (for convergence check):
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-pragmatist.md`

## Expected Outcome

The refined Momentum Builder should:
- Eliminate phantom-input references almost entirely
- Produce progressive elaboration chains that build from problem seeds
- Remain distinct from the Pragmatist (different energy, different elaboration style)
- Maintain or improve overall output quality

## Success Criteria

- Phantom-input references: <5% of bullets (down from ~30%)
- Progressive elaboration: clearly visible in >50% of responses
- Pragmatist overlap: rated Low or Moderate (not High)
- Voice: recognizably enthusiastic and forward-building
- Overall quality: comparable or improved vs original

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/15_momentum-builder-retest.md`

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

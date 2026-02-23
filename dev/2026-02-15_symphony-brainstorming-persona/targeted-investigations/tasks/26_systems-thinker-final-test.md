# Investigation B26: Systems Thinker Final Test

**Date:** 2026-02-18
**Persona under test:** The Systems Thinker (second refinement)
**Source:** B21 Systems Thinker Retest — Keep with two targeted refinements

---

## Purpose

Re-run the Systems Thinker with its second-round refined prompt and assess whether the two issues that B21 failed to resolve are now addressed. B21 found major improvement on archetype depth and output quality but fell short on selectivity (the primary B13 concern) and partially on vocabulary variation. Two targeted prompt refinements have been applied:

1. **Structural selectivity mechanism** — The prompt now explicitly requires mixed output: "For each question, give 1-2 ideas with full systems analysis AND 1-2 ideas as direct practical suggestions without any loop mapping or systems vocabulary." This replaces the behavioral guidance ("be selective") that B21 showed was insufficient. The examples section now models both modes with labeled `(systems-analyzed)` and `(straightforward)` contributions.

2. **Specific vocabulary rotation for "reinforcing loop" / "balancing loop"** — The prompt now provides concrete alternatives: "self-amplifying pattern, virtuous cycle, compounding dynamic, snowball effect" for reinforcing loops; "self-correcting mechanism, natural ceiling, stabilizing pressure, built-in governor" for balancing loops. The guidance explicitly says "describe what happens, not what category it belongs to." The examples model this — the first example uses "self-amplifying cycle" and "natural ceiling" instead of "reinforcing loop" and "balancing loop."

## Key Questions

1. **Selectivity:** What percentage of responses contain a mix of systems-analyzed and straightforward ideas? Target: >50% of question-level responses include at least one idea without systems vocabulary or loop mapping (up from <10% in B21). Count ideas explicitly presented without loop/archetype/dynamics framing.
2. **Straightforward idea quality:** Are the non-systems ideas substantive and useful, or do they feel like perfunctory filler to satisfy the structural requirement? Target: straightforward ideas should be concrete, actionable, and comparable in quality to other personas' practical suggestions.
3. **Vocabulary variation (reinforcing/balancing loop):** Has the frequency of "reinforcing loop" and "balancing loop" decreased? Target: combined density <6/1k words (down from 9.78/1k in B21). Track usage of the provided alternatives (self-amplifying, virtuous cycle, compounding dynamic, natural ceiling, stabilizing pressure, etc.).
4. **Archetype depth (maintained):** Does the archetype tracing quality from B21 hold? Target: >75% of archetype references include traced causal mechanisms (B21 achieved ~92%).
5. **Output quality (maintained):** Does the structural, depth, and specificity improvement from B21 hold? Verify the selectivity mechanism hasn't degraded the quality of systems-analyzed ideas by reducing their share of the output.
6. **Topic calibration:** Does the structural selectivity mechanism improve the weakest topic (space party)? Target: space party responses should feel less forced, with straightforward ideas covering the simpler aspects of party planning while systems analysis focuses on the genuinely dynamic elements (energy management, peer interactions).
7. **Distinctiveness (maintained):** Do the refinements maintain the persona's Highly Distinct rating vs. First Principles Thinker, Futurist, and Connector? The straightforward ideas should not overlap significantly with these personas' outputs.
8. **Verbosity:** B21 noted a 41% word count increase over the original. Has the mixed-output format moderated total output length, or has it increased further? Monitor but do not penalize if quality is maintained.

## Files to Compare

**New Systems Thinker responses** (second-refinement prompt, to be generated in test re-run):
- `test-runs/persona-eval-space-party_2026-02-18/responses/*/the-systems-thinker.md`
- `test-runs/persona-eval-tool-library_2026-02-18/responses/*/the-systems-thinker.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18/responses/*/the-systems-thinker.md`

**B21 Systems Thinker responses** (first-refinement prompt, for regression comparison):
- `test-runs/persona-eval-space-party_2026-02-18-v1/responses/*/the-systems-thinker.md`
- `test-runs/persona-eval-tool-library_2026-02-18-v1/responses/*/the-systems-thinker.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18-v1/responses/*/the-systems-thinker.md`

**Original responses** (pre-refinement, for full trajectory comparison):
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-systems-thinker.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-systems-thinker.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-systems-thinker.md`

**Distinctiveness comparison** (for convergence check):
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-first-principles-thinker.md`
- `test-runs/persona-eval-*_2026-02-18-v1/responses/*/the-futurist.md`
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-connector.md`

## Expected Outcome

The second-refinement Systems Thinker should:
- Produce a visible mix of systems-analyzed and straightforward ideas per question
- Use varied vocabulary for loop types instead of defaulting to "reinforcing loop" / "balancing loop"
- Maintain the strong archetype tracing depth achieved in B21
- Maintain or improve overall output quality
- Show the largest improvement on the space party topic, where forced loop analysis was most problematic
- Remain Highly Distinct from all three comparison personas

## Success Criteria

- Selectivity: >50% of question-level responses include at least one non-systems idea
- Straightforward idea quality: substantive and concrete, not filler
- "Reinforcing loop" + "balancing loop" density: <6/1k words (down from 9.78/1k)
- Archetype depth: >75% traced (maintained from B21's ~92%)
- Output quality: comparable or improved vs. B21
- Topic calibration: space party responses noticeably improved
- Distinctiveness: Highly Distinct from all three comparison personas (maintained)

## Decision Gate

**If selectivity and vocabulary targets are met:** Retain the Systems Thinker with the current prompt. The persona has demonstrated strong gap coverage (B13), high distinctiveness, and — after two rounds of refinement — quality output with appropriate selectivity.

**If selectivity remains below target despite the structural mechanism:** The persona's "Systems Thinker" identity may be structurally incompatible with selective application. Consider whether the over-application is harmful enough to warrant further intervention, or whether consistently high-quality systems analysis (even if universally applied) is acceptable given the persona's strong distinctiveness and unique gap coverage. A persona that over-applies a genuinely unique lens may still be more valuable than one that applies a common lens selectively.

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/26_systems-thinker-final-test.md`

### Output Format

```
## Investigation [ID]: [Title]

### Key Questions
[Questions & Answers — address all 8 questions with specific data]

### Evidence
[Specific quotes comparing systems-analyzed vs. straightforward ideas]
[Vocabulary frequency data: "reinforcing loop" / "balancing loop" counts vs. alternatives]
[Before/after examples showing selectivity change]
[Space party improvement examples]

### Recommendation
[Retain / Retain with caveat / Further refinement needed]

### Notes
[Additional observations, surprises, edge cases]
```

# Investigation B24: Politician Final Test

**Date:** 2026-02-18
**Persona under test:** The Politician (refined prompt)
**Source:** B19 Politician Validation — Keep with prompt refinement for topic sensitivity

---

## Purpose

Re-run the Politician with its refined prompt and assess whether the topic sensitivity issue identified in B19 is resolved. B19 found strong gap coverage, high specificity, and clear distinctiveness from Lawyer, Audience Advocate, and Devil's Advocate, but the persona over-applied institutional political vocabulary on low-complexity topics and strained political framing onto purely technical decisions. Two targeted prompt refinements were applied:

1. **Institutional vocabulary on personal contexts (B19 §5, space party).** The Politician described a $50 cake as a "sacred cow," a party timeline as a "legislative session," and children's snack choices as "voter engagement strategy." The underlying interpersonal dynamics mapping (who has authority, how to include quiet children, how to recruit parent helpers) was valuable — but the institutional metaphor overlay made it feel satirical. The refined prompt strengthens the calibration instruction: full political vocabulary for institutional contexts, plain language about relationships and interests for personal contexts. A new avoid rule names the specific anti-pattern with examples from B19.

2. **Political framing of technical decisions (B19 §5, habit tracker).** On technical architecture questions, the Politician reframed engineering tradeoffs as factional political negotiations ("the behavioral science faction vs. the scalability caucus," "the feature creep resistance coalition"). A new avoid rule instructs: focus the political lens on decisions where human interests, power, and competing priorities are actually at play — not on choices between database architectures.

## Key Questions

1. **Vocabulary calibration on space party:** Does the Politician still produce useful interpersonal dynamics analysis (who has authority, inclusion strategies, parent recruitment) but in plain relationship language instead of institutional political jargon? Specifically:
   - Zero instances of terms like "pork barrel," "sacred cow," "legislative session," "constituent services," "voting blocs," or "inauguration ceremony" applied to a birthday party
   - Interpersonal dynamics content (authority mapping, inclusion design, coalition of helpers) remains present and substantive
   - Has it over-corrected — becoming too thin on the space party, losing the valuable interpersonal mapping?
2. **Technical vs. political discrimination on habit tracker:** Does the Politician now focus its political lens on genuinely political questions (investor relations, platform gatekeepers, team alignment, competitive positioning) and avoid reframing purely technical architecture decisions as factional negotiations?
   - Business/sustainability and go-to-market clusters should remain strong (these are genuinely political)
   - Technical architecture and product design clusters should show restraint — political analysis only where stakeholder conflicts genuinely shape technical choices
3. **Tool library depth (maintained):** Does the Politician still produce full institutional political analysis on the tool library — named stakeholders, coalition sequences, opposition strategies, governance structures? This was the persona's strongest topic in B19 and must not regress.
4. **Specificity (maintained):** Does every stakeholder mention still include what they care about and what engagement strategy addresses their interests? Target: maintained from B19 (zero generic "get buy-in" advice).
5. **Distinctiveness (maintained):** Highly Distinct ratings vs Lawyer, Audience Advocate, and Devil's Advocate preserved?
6. **Coalition sequencing (maintained):** Does the Politician still produce ordered stakeholder engagement sequences? This was identified in B19 as the most novel content type.

## Files to Compare

**New Politician responses** (refined prompt, to be generated in test re-run):
- `test-runs/persona-eval-space-party_2026-02-18/responses/*/the-politician.md`
- `test-runs/persona-eval-tool-library_2026-02-18/responses/*/the-politician.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18/responses/*/the-politician.md`

**B19 Politician responses** (original prompt, for regression comparison):
- `test-runs/persona-eval-space-party_2026-02-18-v1/responses/*/the-politician.md`
- `test-runs/persona-eval-tool-library_2026-02-18-v1/responses/*/the-politician.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18-v1/responses/*/the-politician.md`

**Comparison personas** (for distinctiveness regression check):
- `test-runs/persona-eval-*_2026-02-18/responses/*/the-lawyer.md`
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-audience-advocate.md`
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-devils-advocate.md`

## Expected Outcome

The refined Politician should:
- Map birthday party interpersonal dynamics in plain language (who decides, who gets included, how to recruit helpers) without institutional political jargon
- Focus political analysis on the habit tracker's genuinely political dimensions (investor relations, platform gatekeepers, competitive positioning) while leaving technical architecture to the Technical Expert
- Maintain full institutional political depth on the tool library
- Preserve all B19 strengths: stakeholder specificity, coalition sequencing, governance design, distinctiveness from adjacent personas

## Success Criteria

- **Vocabulary calibration:** Zero instances of institutional political jargon ("pork barrel," "sacred cow," "legislative session," "constituent services") on the space party topic. Interpersonal dynamics content still present in ≥75% of space party responses.
- **Technical discrimination:** Habit tracker technical architecture cluster shows ≤2 instances of reframing engineering decisions as political negotiations (down from pervasive in B19). Business/sustainability cluster maintains full political depth.
- **Tool library depth:** Named stakeholders, coalition sequences, opposition strategies, and governance structures all present at B19 levels (no regression).
- **Specificity:** Every stakeholder mention includes interests and engagement strategy (maintained from B19).
- **Distinctiveness:** Highly Distinct vs Lawyer, Audience Advocate, and Devil's Advocate (maintained from B19).
- **Coalition sequencing:** Ordered stakeholder engagement sequences present in ≥2 topics (maintained from B19).

## Decision Gate

**If vocabulary calibration and technical discrimination are resolved without regression:** Retain the Politician with the current prompt. The persona has demonstrated strong gap coverage through two rounds.

**If over-correction is visible** (space party analysis becomes too sparse, losing the valuable interpersonal mapping): Restore some interpersonal analysis examples in the prompt to model the right register. One more targeted refinement.

**If institutional vocabulary persists despite the explicit avoid rule:** This may indicate the political framing is too deeply embedded in the persona's identity. Consider whether softening the opening role description ("map the human politics") would help, or whether the space party over-application is an acceptable tradeoff given the persona's strong performance on its natural topics.

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/24_politician-final-test.md`

### Output Format

```
## Investigation [ID]: [Title]

### Key Questions
[Questions & Answers — address all 6 questions with specific data]

### Evidence
[Before/after examples of vocabulary calibration on space party]
[Technical vs. political discrimination examples on habit tracker]
[Tool library depth samples confirming no regression]

### Recommendation
[Retain / Refine further / Retire]

### Notes
[Additional observations, surprises, edge cases]
```

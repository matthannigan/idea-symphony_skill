# Investigation B14: Lawyer Validation

**Date:** 2026-02-17
**Persona under test:** The Lawyer (new)
**Source:** Gap #2 from B12 (Output Gap Detection)

---

## Purpose

Validate the new Lawyer persona against all 3 evaluation topics. This persona was created to fill the second-strongest gap identified in [B12](../12_output-gap-detection.md): no existing persona identifies specific regulatory frameworks, legal requirements, or compliance obligations. Even the Devil's Advocate only raises regulatory-adjacent concerns as open questions (~10% coverage).

## Key Questions

1. **Gap coverage:** Does the Lawyer produce specific regulatory framework identification, compliance obligation naming, and liability assessment that were absent from all existing persona outputs?
2. **Distinctiveness vs Devil's Advocate:** The DA raises concerns as open questions ("Have we considered..."). Does the Lawyer produce fundamentally different content (identifying *specific* regulations and requirements rather than posing questions)?
3. **Specificity:** Does the Lawyer name concrete regulations (COPPA, ADA, GDPR, local zoning, 501(c)(3) requirements, food safety codes) rather than vague "legal issues" warnings?
4. **Compliance-by-design:** Does the Lawyer suggest structural approaches to regulatory compliance, not just flag problems?
5. **Topic sensitivity:** How does output quality vary across:
   - Space party (low regulatory burden — mainly child safety, food handling, venue liability)
   - Tool library (moderate — nonprofit compliance, liability, zoning, insurance)
   - Habit tracker (high — data privacy, COPPA if minors, health data regulations)

## Files to Compare

**New Lawyer responses** (to be generated in test re-run):
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-lawyer.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-lawyer.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-lawyer.md`

**Comparison persona** (The Devil's Advocate, closest existing persona for risk/concern identification):
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-devils-advocate.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-devils-advocate.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-devils-advocate.md`

## Expected Outcome

The Lawyer should produce content that is:
- Clearly distinct from the Devil's Advocate's open-question critique mode
- Specific in naming regulatory frameworks and compliance requirements
- Proportional to actual regulatory exposure (more on habit-tracker, less on space-party)
- Constructive — identifying paths to compliance, not just listing obstacles

## Success Criteria

- Names at least 3 specific regulatory frameworks per topic (with concrete requirements, not just names)
- Suggests at least 2 compliance-by-design approaches per topic
- Shows appropriate topic sensitivity (deeper on data-heavy/regulated topics)
- Distinctiveness rating of "Highly Distinct" vs Devil's Advocate
- Does not devolve into generic "consult a lawyer" advice

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/14_lawyer-validation.md`

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

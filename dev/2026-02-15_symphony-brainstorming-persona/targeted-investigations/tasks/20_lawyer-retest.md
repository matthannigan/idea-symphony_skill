# Investigation B20: Lawyer Retest

**Date:** 2026-02-18
**Persona under test:** The Lawyer (refined prompt)
**Source:** Prompt refinement recommendations from B14 (Lawyer Validation)

---

## Purpose

Re-run the Lawyer with its refined prompt and assess whether the three quality concerns identified in [B14](../14_lawyer-validation.md) are resolved:

1. **Applicability precision (B14 §3, §5):** The Lawyer misapplied regulations to contexts they don't govern — COPPA to private party photography, FERPA to party games, HIPAA to nonprofit income verification, OSHA to home events, California childcare licensing to a 2-hour party. The refined prompt instructs: name only regulations that genuinely apply; frame non-applicable-but-useful regulations as "best practice inspired by [regulation]."
2. **Topic-proportional depth (B14 §5):** The Lawyer produced roughly equal regulatory density (~17-18 frameworks) across all three topics regardless of actual regulatory burden. A private birthday party received the same regulatory treatment as a consumer software product handling health data. The refined prompt instructs: calibrate analysis to actual regulatory exposure, with lighter treatment for low-regulation contexts.
3. **Formulaic structure (B14 recommendation §3):** Many responses followed an identical pattern: "[Bold declarative]. This triggers [regulation]. The liability exposure is [X]. The compliance-by-design approach is [Y]. The governance requirement is [Z]." The refined prompt removes the "Use phrases like..." instruction and instead instructs the persona to vary its analytical approach based on which dimension matters most for each question.

## Key Questions

1. **Applicability precision:** Does the refined Lawyer distinguish between regulations that directly apply and regulatory principles offered as best practices? Specifically:
   - Space party: Does it stop citing COPPA, OSHA, FERPA, and childcare licensing codes as direct obligations? Does it frame safety principles as "best practice inspired by [regulation]" where appropriate?
   - Tool library: Are the regulatory citations still accurate? (This was the Lawyer's strongest topic — confirm no regression.)
   - Habit tracker: Are the regulatory citations still accurate and well-applied? (Also strong in B14 — confirm no regression.)
2. **Topic-proportional depth:** Does regulatory density now vary proportionally across topics?
   - Space party: Reduced framework count (target: 3-5 genuinely applicable frameworks, down from 17+)
   - Tool library: Maintained or similar framework count (~15-17, most were accurately applied)
   - Habit tracker: Maintained or increased framework count (~18+, all directly relevant to product architecture)
3. **Best-practice framing quality:** When the Lawyer uses the "best practice inspired by [regulation]" framing, is it clear and useful? Does it feel like genuine guidance or like a workaround to cite inapplicable regulations anyway?
4. **Structural variety:** Do responses show varied analytical entry points (compliance architecture, risk assessment, governance, structural protection) rather than following the same template? Compare response-opening patterns across the 12 files.
5. **No regression in strengths:** Does the refined prompt preserve the Lawyer's demonstrated strengths from B14?
   - Compliance-by-design output quality (≥2 approaches per topic)
   - Specificity in framework naming (concrete requirements, not just labels)
   - Distinctiveness vs Devil's Advocate (Highly Distinct rating maintained)

## Files to Compare

**New Lawyer responses** (refined prompt, to be generated in test re-run):
- `test-runs/persona-eval-space-party_2026-02-18/responses/*/the-lawyer.md`
- `test-runs/persona-eval-tool-library_2026-02-18/responses/*/the-lawyer.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18/responses/*/the-lawyer.md`

**Original Lawyer responses** (pre-refinement, from B14):
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-lawyer.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-lawyer.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-lawyer.md`

**Devil's Advocate comparison** (for distinctiveness regression check):
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-devils-advocate.md`

## Expected Outcome

The refined Lawyer should:
- Use "best practice inspired by [regulation]" framing for regulations that don't directly apply (especially on the space party topic)
- Show noticeably lighter regulatory density on the space party, roughly maintained density on tool library and habit tracker
- Vary its analytical structure across responses rather than following a single template
- Preserve its core strengths: specific framework naming, compliance-by-design architecture, constructive orientation

## Success Criteria

- **Applicability precision:** Zero misapplication of COPPA, FERPA, HIPAA, or OSHA to contexts they don't govern (down from 5+ instances in B14). Any reference to these in inapplicable contexts must use "best practice" framing.
- **Proportional density:** Space party framework count drops to ≤8 (down from 17+). Tool library and habit tracker counts remain ≥12.
- **Structural variety:** No more than 30% of responses open with the same pattern. At least 3 distinct opening approaches visible across the 12 response files.
- **Compliance-by-design:** ≥2 structural compliance approaches per topic (maintained from B14)
- **Distinctiveness:** Highly Distinct vs Devil's Advocate (maintained from B14)
- **No "consult a lawyer" regression:** Responses remain actionable and specific, not deflecting to external counsel

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/20_lawyer-retest.md`

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

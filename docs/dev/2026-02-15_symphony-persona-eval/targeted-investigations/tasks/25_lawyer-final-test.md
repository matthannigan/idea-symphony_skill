# Investigation B25: Lawyer Final Test

**Date:** 2026-02-18
**Persona under test:** The Lawyer (second refinement)
**Source:** B20 Lawyer Retest — Refine further on applicability precision and best-practice framing

---

## Purpose

Re-run the Lawyer with its second-round refined prompt and assess whether the two persistent issues from B20 are resolved. B20 found that the first refinement eliminated the formulaic template (B14 §3, resolved) but failed on applicability precision (B14 §1, persisted) and proportional density (B14 §2, worsened). Two targeted prompt refinements have been applied:

1. **Explicit inapplicability list.** The avoid section now contains specific scope definitions for the five most commonly misapplied regulations: COPPA (online services, not in-person events), HIPAA (covered entities, not private hosts), FERPA (educational institutions, not casual references), OSHA (employer workplaces, not residential events), and state childcare licensing (licensed facilities, not 2-hour gatherings). Each definition states what the regulation does and does NOT cover, with MUST language requiring "best practice inspired by" framing when cited in inapplicable contexts.

2. **Mandatory enforceability test.** The instruction to frame inapplicable regulations as best practices has been upgraded from descriptive ("frame it explicitly as...") to mandatory with universal scope: "For every regulation you cite, first ask: would this regulation be enforceable against this specific actor in this specific context? If not, you MUST use 'best practice inspired by [regulation]' framing. This applies to every regulation in every response, not selectively."

## Key Questions

1. **COPPA applicability:** Is COPPA still cited as a direct obligation for the space party (in-person, private event)? Target: zero direct-obligation citations of COPPA on the space party. "Best practice inspired by COPPA" framing is acceptable.
2. **HIPAA applicability:** Is HIPAA still cited as a direct obligation for private party allergy collection or tool library income verification? Target: zero direct-obligation citations of HIPAA in contexts without covered entities. "Best practice inspired by HIPAA" framing is acceptable.
3. **FERPA applicability:** Is FERPA still cited as a direct obligation for non-educational contexts? Target: zero direct-obligation citations of FERPA on the space party.
4. **Childcare licensing applicability:** Are state childcare licensing codes still applied to a 2-hour birthday party? Target: zero direct-obligation citations. "Best practice inspired by childcare supervision ratios" is acceptable.
5. **Best-practice framing consistency:** In B20, the "best practice inspired by" framing appeared in 1 of 4 space party clusters. Does the mandatory enforceability test produce consistent framing across ALL clusters? Target: when inapplicable regulations are referenced, "best practice inspired by" framing appears in ≥90% of instances across all clusters (up from ~25% in B20).
6. **Proportional density:** Has the space party framework count decreased? B20 found ~35+ frameworks (up from ~17 in B14). Target: ≤10 frameworks cited as direct obligations on the space party. Additional frameworks cited as best practices don't count against this ceiling.
7. **Tool library (no regression):** Regulatory citations remain accurate and comprehensive? Target: ≥12 genuinely applicable frameworks (maintained from B20).
8. **Habit tracker (no regression):** Regulatory citations remain accurate and comprehensive? Target: ≥12 genuinely applicable frameworks (maintained from B20).
9. **Compliance-by-design (maintained):** ≥2 structural compliance approaches per topic?
10. **Distinctiveness vs Devil's Advocate (maintained):** Highly Distinct rating preserved?

## Files to Compare

**New Lawyer responses** (second-refinement prompt, to be generated in test re-run):
- `test-runs/persona-eval-space-party_2026-02-18/responses/*/the-lawyer.md`
- `test-runs/persona-eval-tool-library_2026-02-18/responses/*/the-lawyer.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18/responses/*/the-lawyer.md`

**B20 Lawyer responses** (first-refinement prompt, for regression comparison):
- `test-runs/persona-eval-space-party_2026-02-18-v1/responses/*/the-lawyer.md`
- `test-runs/persona-eval-tool-library_2026-02-18-v1/responses/*/the-lawyer.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18-v1/responses/*/the-lawyer.md`

**B14 Lawyer responses** (original prompt, for full regression comparison):
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-lawyer.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-lawyer.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-lawyer.md`

**Comparison persona** (for distinctiveness regression check):
- `test-runs/persona-eval-*_2026-02-17/responses/*/the-devils-advocate.md`

## Expected Outcome

The second-refinement Lawyer should:
- Stop citing COPPA, HIPAA, FERPA, OSHA, and childcare licensing as direct obligations on the space party
- Use "best practice inspired by" framing consistently across all clusters when referencing inapplicable frameworks
- Show reduced regulatory density on the space party (≤10 direct-obligation frameworks)
- Maintain full regulatory depth on the tool library and habit tracker
- Preserve compliance-by-design output quality and distinctiveness from the Devil's Advocate

## Success Criteria

- **COPPA:** Zero direct-obligation citations on the space party (down from 2 in B20)
- **HIPAA:** Zero direct-obligation citations in non-covered-entity contexts (down from 2 in B20)
- **FERPA:** Zero direct-obligation citations on the space party (down from 1 in B20)
- **Childcare licensing:** Zero direct-obligation citations for a 2-hour party (down from 3 in B20)
- **Best-practice framing consistency:** ≥90% of inapplicable-regulation references use "best practice inspired by" framing (up from ~25% in B20)
- **Space party density:** ≤10 frameworks cited as direct obligations (down from ~35+ in B20)
- **Tool library depth:** ≥12 genuinely applicable frameworks (maintained)
- **Habit tracker depth:** ≥12 genuinely applicable frameworks (maintained)
- **Compliance-by-design:** ≥2 approaches per topic (maintained)
- **DA distinctiveness:** Highly Distinct (maintained)

## Decision Gate

**If applicability precision and best-practice framing are both resolved:** Retain the Lawyer with the current prompt. All three B14 concerns will have been addressed across three rounds of refinement.

**If the explicit inapplicability list resolves named regulations but the model finds new regulations to misapply:** This suggests the underlying issue is the model's tendency to maximize regulatory citation count rather than a gap in knowledge about specific regulations. Consider adding a hard constraint: "For private, non-commercial events: cite ONLY general tort liability, premises liability, and food safety as direct legal frameworks. Everything else is best-practice guidance." This would be a third refinement, not retirement — the Lawyer's value on medium-to-high-regulation topics is clearly demonstrated.

**If no improvement despite explicit inapplicability list and MUST language:** This suggests the applicability precision problem may be inherent to the model's regulatory reasoning rather than correctable through prompt engineering. In this case, retain the Lawyer for medium-to-high-regulation topics only and add a filtering note to the orchestrator: "The Lawyer is most valuable on topics with genuine regulatory exposure (software products, nonprofits, commercial services, municipal initiatives). For informal personal events, the Lawyer's analysis requires manual filtering for applicability."

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/25_lawyer-final-test.md`

### Output Format

```
## Investigation [ID]: [Title]

### Key Questions
[Questions & Answers — address all 10 questions with specific data]

### Evidence
[Specific quotes showing applicability precision resolved or persisting]
[Before/after examples of best-practice framing across clusters]
[Framework count comparison: B14 → B20 → B25 for all three topics]
[Tool library and habit tracker regression check samples]

### Recommendation
[Retain / Retain with orchestrator filter / Refine further]

### Notes
[Additional observations, surprises, edge cases]
```

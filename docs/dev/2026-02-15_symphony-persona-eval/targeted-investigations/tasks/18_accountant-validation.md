# Investigation B18: Accountant Validation

**Date:** 2026-02-18
**Persona under test:** The Accountant (new)
**Source:** Gap #2 from B12 (Output Gap Detection)

---

## Purpose

Validate the new Accountant persona against all 3 evaluation topics. This persona was created to fill the second-highest severity gap identified in [B12](../12_output-gap-detection.md): no existing persona produces detailed financial analysis. Budget projections, pricing strategies, revenue models, cost-benefit analysis, and economic sustainability plans are absent or superficial across all topics. The Pragmatist touches feasibility but never models finances. The Analyst decomposes problems but not economics.

## Key Questions

1. **Gap coverage:** Does the Accountant produce concrete financial analysis — budgets, cost structures, revenue models, unit economics, break-even estimates — that were absent from all existing persona outputs?
2. **Distinctiveness vs Pragmatist:** The Pragmatist evaluates practical feasibility ("this would require significant resources"). Does the Accountant produce fundamentally different content (modeling the *economics* — what it costs, what it returns, at what scale it works)?
3. **Distinctiveness vs Analyst:** The Analyst decomposes problems into structural components. Does the Accountant produce different content (decomposing into *financial* components — cost drivers, revenue streams, economic trade-offs)?
4. **Specificity:** Does the Accountant produce specific numbers (cost ranges, price points, break-even thresholds, margins) rather than vague "this could be expensive" assessments?
5. **Topic sensitivity:** How does output quality and financial depth vary across:
   - Space party (low economic complexity — personal budget, cost-per-child, DIY vs. vendor trade-offs)
   - Tool library (moderate — nonprofit funding model, membership economics, grant strategy, operating costs)
   - Habit tracker (high — unit economics, CAC/LTV, freemium conversion math, revenue modeling, path to profitability)

## Files to Compare

**New Accountant responses** (to be generated in test re-run):
- `test-runs/persona-eval-space-party_2026-02-18/responses/*/the-accountant.md`
- `test-runs/persona-eval-tool-library_2026-02-18/responses/*/the-accountant.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18/responses/*/the-accountant.md`

**Comparison personas:**
- `the-pragmatist.md` (closest existing persona for feasibility/resource assessment)
- `the-analyst.md` (closest existing persona for structural decomposition)

**Comparison files:**
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-pragmatist.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-pragmatist.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-pragmatist.md`
- `test-runs/persona-eval-space-party_2026-02-15/responses/*/the-analyst.md`
- `test-runs/persona-eval-tool-library_2026-02-15/responses/*/the-analyst.md`
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/*/the-analyst.md`

## Expected Outcome

The Accountant should produce content that is:
- Clearly distinct from the Pragmatist's feasibility assessment and the Analyst's structural decomposition
- Rich in specific numbers: cost estimates, revenue projections, break-even calculations, unit economics
- Proportional to economic complexity (lighter on space party, deeper on habit tracker)
- Constructive — modeling the economics that *make* an idea work, not just flagging cost concerns

## Success Criteria

- Produces specific financial estimates (dollar ranges, ratios, thresholds) in every response — no "this could be expensive" without quantifying
- Identifies at least 2 hidden costs per topic that no other persona surfaced
- Shows appropriate topic sensitivity: simple budget math for space party, full revenue/sustainability modeling for habit tracker
- Distinctiveness rating of "Highly Distinct" or "Moderately Distinct" vs both Pragmatist and Analyst
- Does not devolve into generic financial caution — models the path to viability rather than listing obstacles

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/18_accountant-validation.md`

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

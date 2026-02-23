# Investigation B23: Accountant Final Test

**Date:** 2026-02-18
**Persona under test:** The Accountant (refined prompt)
**Source:** B18 Accountant Validation — Keep with two minor prompt refinements

---

## Purpose

Re-run the Accountant with its refined prompt and assess whether the two quality issues identified in B18 are resolved. B18 found strong gap coverage, high specificity, appropriate topic scaling, and clear distinctiveness from both the Pragmatist and Analyst. Two minor prompt refinements were applied:

1. **Over-financialization of trivial items.** On the space party topic, the Accountant sometimes applied startup-level financial language to items that didn't warrant it — calculating "ROI" on glow sticks, assigning "social media value" to birthday photos, framing $10 purchases as "investments" with payback periods. The refined prompt adds formality-matching guidance ("a parent choosing between glow sticks and LED lights needs a price comparison, not an ROI calculation") and an explicit avoid rule against over-financializing low-stakes decisions.

2. **Invented precision.** Some numbers felt fabricated rather than grounded — "1.3x engagement multiplier," "200% social media value increase," "$50K-$80K in user support costs" saved by auto conflict resolution. The refined prompt adds guidance to ground estimates in stated assumptions and an explicit avoid rule against presenting fabricated multipliers as precise figures.

## Key Questions

1. **Over-financialization resolved:** On the space party topic, does the Accountant use appropriate financial language for the scale of decision? Specifically:
   - Does it avoid applying formal financial terms (ROI, investment, payback period, value multiplier) to trivial personal-budget items?
   - Does it still provide useful financial analysis on party questions where economics genuinely matter (total budget, cost-per-child, DIY vs. vendor trade-offs)?
   - Has it over-corrected — becoming too sparse on financial detail for the space party?
2. **Invented precision resolved:** Across all topics, are estimates grounded in stated assumptions or flagged as rough? Specifically:
   - Count instances of suspiciously precise unverifiable figures (e.g., "1.3x multiplier," "200% increase"). Target: <10% of estimates (down from ~15-20% in B18).
   - Does the Accountant now distinguish between grounded benchmarks ("typical freemium conversion runs 3-8%") and rough estimates ("roughly $X, assuming Y")?
   - Has the grounding requirement made estimates feel overly hedged or less useful?
3. **Topic sensitivity (maintained):** Does the Accountant still scale financial depth appropriately?
   - Space party: simple budget math, cost-per-child, price comparisons
   - Tool library: nonprofit funding models, membership economics, operating cost projections
   - Habit tracker: unit economics, CAC/LTV, revenue modeling, path to profitability
4. **Specificity (maintained):** Does the Accountant still produce concrete dollar amounts, ratios, and thresholds in every response? Target: maintained from B18 (every response contains financial calculations).
5. **Hidden cost identification (maintained):** Does the Accountant still surface ≥2 hidden costs per topic that no other persona identifies?
6. **Distinctiveness (maintained):** Pragmatist and Analyst distinctiveness ratings remain Highly Distinct?

## Files to Compare

**New Accountant responses** (refined prompt, to be generated in test re-run):
- `test-runs/persona-eval-space-party_2026-02-18/responses/*/the-accountant.md`
- `test-runs/persona-eval-tool-library_2026-02-18/responses/*/the-accountant.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18/responses/*/the-accountant.md`

**B18 Accountant responses** (original prompt, for regression comparison):
- `test-runs/persona-eval-space-party_2026-02-18-v1/responses/*/the-accountant.md`
- `test-runs/persona-eval-tool-library_2026-02-18-v1/responses/*/the-accountant.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18-v1/responses/*/the-accountant.md`

**Comparison personas** (for distinctiveness regression check):
- `test-runs/persona-eval-*_2026-02-15/responses/*/the-pragmatist.md`
- `test-runs/persona-eval-*_2026-02-15/responses/*/the-analyst.md`

## Expected Outcome

The refined Accountant should:
- Use informal, proportionate financial language on low-stakes topics (price comparisons, not ROI calculations, for party supplies)
- Ground estimates in stated assumptions or flag them as rough, without losing specificity
- Maintain all B18 strengths: topic-proportional depth, hidden cost identification, constructive path-to-viability modeling, distinctiveness from Pragmatist and Analyst

## Success Criteria

- **Over-financialization:** Zero instances of formal financial language (ROI, payback period, investment) applied to sub-$20 personal purchases on the space party topic. Financial analysis on genuinely economic party questions (total budget, vendor comparison) remains substantive.
- **Invented precision:** <10% of estimates use suspiciously precise unverifiable figures. Estimates now include assumption framing ("assuming X," "typically runs Y-Z") where appropriate.
- **Topic sensitivity:** Maintained — clear scaling visible across the three topics (confirmed not regressed by over-correction on space party).
- **Specificity:** Every response still contains dollar amounts, ratios, or thresholds (maintained from B18).
- **Hidden costs:** ≥2 unique hidden costs per topic (maintained from B18).
- **Distinctiveness:** Highly Distinct vs Pragmatist and Analyst (maintained from B18).

## Decision Gate

**If both issues are resolved without regression:** Retain the Accountant with the current prompt. The persona has demonstrated strong gap coverage through two rounds.

**If over-correction is visible** (space party analysis becomes too thin, estimates become overly hedged): Dial back the specific anti-pattern language in the prompt while keeping the general calibration principle. One more targeted refinement, not retirement.

**If issues persist despite refinement:** Unlikely given severity (both were minor), but if so, retain anyway — B18's core finding was strong gap coverage with minor polish needed, not a structural problem.

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/23_accountant-final-test.md`

### Output Format

```
## Investigation [ID]: [Title]

### Key Questions
[Questions & Answers — address all 6 questions with specific data]

### Evidence
[Specific quotes showing over-financialization resolved or persisting]
[Before/after examples of estimate grounding]
[Hidden cost examples unique to Accountant]

### Recommendation
[Retain / Refine further / Retire]

### Notes
[Additional observations, surprises, edge cases]
```

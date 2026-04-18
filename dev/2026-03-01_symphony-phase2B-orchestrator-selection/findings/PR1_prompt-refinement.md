# PR1: Orchestrator Prompt Refinement — Iteration Log

**Date closed:** 2026-04-18
**Starting point:** O1 winning variant `O-V3_structured-checklist`
**Ground truth:** GT1 Canonical Rev 3
**Final prompt:** [`PR1_refined-orchestrator-prompt.md`](PR1_refined-orchestrator-prompt.md) (= iter 2)
**Handoff to:** PI1

---

## Summary

PR1 converged in **2 iterations** (of 4-iteration budget). Both iterations made minimal, localized prompt edits targeting the largest residual error pattern. All three methodology accuracy thresholds met and strengthened:

- **Tier 3 selection accuracy (strict):** 95% (target ≥ 80%) — up from 80% baseline
- **Connector/Analogist accuracy:** 100% (target ≥ 90%) — up from 80% baseline
- **No systematic FP/FN patterns** — single residual is a documented guide-contingent cell (Gap 2)

---

## Starting Point

**Winning O1 variant:** `O-V3_structured-checklist`
**Baseline metrics** (O-V3 against GT1 Canonical Rev 3):

| Metric | Baseline |
|---|---|
| Overall Correct | 15 / 20 = 75% |
| Tier 3 strict | 80% (93% on unambiguous cells) |
| Connector/Analogist | 80% (8/10) |
| FP rate | 5% (1 cell) |
| FN rate | 5% (1 cell) |
| Rationale specificity | 90% |
| Volume accuracy | 100% |
| Format compliance | 100% |

**Baseline error map (5 Partially Correct cells, 0 Incorrect):**
- 3 swap errors: youth-mentorship M+H (under-swap to Analogist), property-management H (over-swap to Connector)
- 1 FP Lawyer: food-truck H
- 1 FN Accountant-moderate: mobile-app H (Gap 2 calibration cell)

---

## Iteration 1

**Link:** [`PR1_prompt-refinement_iter1.md`](PR1_prompt-refinement_iter1.md)
**Refined prompt:** [`PR1_refined-orchestrator-prompt_iter1.md`](PR1_refined-orchestrator-prompt_iter1.md)
**Runs:** [`PR1_runs/iter1/`](PR1_runs/iter1/) (20 files, independent subagents)

**Refinement applied (P0b — swap criterion sharpening):** Step 2 only. Added (a) effort-invariance declaration, (b) second swap-criterion branch for "multiple institutional/stakeholder systems that must interoperate" with multi-institutional social programs and multi-stakeholder product systems as positive examples, (c) property-management-style topics as explicit Analogist-keep negative example. ~25 lines in Step 2. No edits to Steps 1, 3, 4 or output format.

**Metric delta vs. O-V3:**

| Metric | O-V3 | Iter1 | Δ |
|---|---|---|---|
| Overall Correct | 75% | 90% | +15 |
| Tier 3 strict | 80% | 90% | +10 |
| Connector/Analogist | 80% | 100% | +20 |
| FP rate | 5% | 10% | +5 |
| FN rate | 5% | 0% | −5 |

**Positive flips (4):** property-management H (swap), youth-mentorship M (swap), youth-mentorship H (swap), mobile-app H (Accountant-moderate recovered).

**Regression (1):** habit-tracker H — NEW FP Accountant moderate. Corresponds to Rev 2 Decision 6A documented trap. The Step 2 examples appeared to indirectly prime looser Accountant-moderate reading in Step 1 even though Step 1 was not edited. Caught by the independent-subagent re-scoring (initial inline-subagent scoring missed this).

**Sticky residual (1):** food-truck H FP Lawyer (unchanged from baseline — P0c territory).

**Decision:** Continue to iter 2. Thresholds technically met but 2 FPs both on GT1-High-confidence cells, one of which was a new regression on a documented-trap cell. Scoring subagent recommended continue over stop.

---

## Iteration 2

**Link:** [`PR1_prompt-refinement_iter2.md`](PR1_prompt-refinement_iter2.md)
**Refined prompt:** [`PR1_refined-orchestrator-prompt_iter2.md`](PR1_refined-orchestrator-prompt_iter2.md)
**Runs:** [`PR1_runs/iter2/`](PR1_runs/iter2/) (20 files, independent subagents)

**Refinement applied:** Steps 1.1 and 1.2 only.
- **Step 1.1 (Accountant):** New Question 1b "gating test" — financial dimension must be a *core decision axis*, not a listed bullet among many. Extended Q2 (monetization without dollar/runway content does not clear moderate). New Q3 product-strategy trap (mobile-app/habit-tracker-style REQUESTs).
- **Step 1.2 (Lawyer):** Extended Q2 ("where the need is to *design* regulatory strategy"). New Q3 "operating-environment-permits trap" — routine permits/licenses for a single small business are operational constraints, not compliance architecture.

No edits to Steps 1.3, 1.4, 2, 3, 4 or output format.

**Metric delta vs. iter 1:**

| Metric | Iter1 | Iter2 | Δ |
|---|---|---|---|
| Overall Correct | 90% | **95%** | +5 |
| Tier 3 strict | 90% | **95%** | +5 |
| Tier 3 unambiguous-cell | 87% | **93%** | +6 (recovered iter1 regression) |
| Connector/Analogist | 100% | **100%** | 0 |
| FP rate | 10% | **0%** | −10 |
| FN rate | 0% | 5% | +5 (Gap 2 expected) |
| Rationale specificity | 90% | **100%** | +10 |

**Targets landed (2/2):**
- habit-tracker H: FP Accountant → Correct None. Q1b gating test fired ("removing financial content leaves UX/retention/behavioral design intact").
- food-truck H: FP Lawyer → Correct Accountant + Politician. Operating-environment-permits trap fired as designed.

**Expected regression (1):** mobile-app H — Correct Accountant moderate → FN None. This was pre-declared in the iter2 refined prompt as acceptable risk: mobile-app H and habit-tracker H share surface structure (monetization in a product-strategy bullet list) and cannot be cleanly distinguished by prompt language alone without re-regressing habit-tracker H. GT1 documents mobile-app H as Gap 2 calibration-principle dependent — intended for guide edit, not prompt-only resolution.

**No unexpected regressions.** career-change H (the other Gap 2 cell) preserved its correct Accountant-moderate selection.

**Decision:** Stop. All thresholds met and strengthened; both targets landed; single residual is documented guide-contingent; further prompt-only iteration carries real regression risk on cells that just healed.

---

## Final Metrics

| Metric | O-V3 baseline | **PR1 Final (iter 2)** |
|---|---|---|
| Overall Correct | 75% | **95%** (19/20) |
| Tier 3 strict accuracy | 80% | **95%** |
| Tier 3 unambiguous-cell accuracy | 93% | **93%** |
| Connector/Analogist accuracy | 80% | **100%** |
| False positive rate | 5% | **0%** |
| False negative rate | 5% | 5% (1 cell, Gap 2) |
| Threshold sensitivity | 87.5% | **100%** |
| Rationale specificity | 90% | **100%** |
| Volume accuracy | 100% | 100% |
| Format compliance | 100% | 100% |

**All methodology.md accuracy targets met:**
- ✅ Tier 3 ≥ 80% (achieved 95%)
- ✅ Connector/Analogist ≥ 90% (achieved 100%)
- ✅ No systematic FP/FN patterns

---

## Confidence-Weighted Residual Error Breakdown

**1 residual error total.** Breakdown by GT1 confidence band:

| Confidence band | Residual count | % of residuals |
|---|---|---|
| High | 1 (mobile-app H) | 100% |
| Medium | 0 | 0% |
| Low | 0 | 0% |

Under the task file's Q9 root-cause triage rule ("concentrated" = ≥60% of residuals in one band), residuals are 100% High-confidence. However, this applies only if iteration budget is exhausted without meeting thresholds. Thresholds ARE met at iter 2, so the triage rule does not activate.

The single High-confidence residual (mobile-app H) is the explicit Gap 2 calibration-principle cell that GT1 documented as depending on a guide edit rather than prompt-only resolution. Its residual status here is **intended**, not a failure.

---

## Residual Limitations (Known)

**mobile-app high — FN Accountant moderate.**

- **Ground truth:** Accountant moderate (per R6 calibration principle: "calibrate your financial depth to the economic complexity of the context"). mobile-app REQUEST contains runway math and monetization structure that justifies a moderate trigger.
- **PR1 final output:** None selected.
- **Why prompt-only cannot fix this:** mobile-app H and habit-tracker H share surface REQUEST structure (monetization as one bullet in a product-strategy considerations list). Any prompt rule strict enough to include mobile-app H at moderate also re-includes habit-tracker H (the Rev 2 Decision 6A trap that was correctly excluded at iter 2). The decision requires semantic depth judgment — "is the dollar/runway content substantive economic context or boilerplate?" — that maps to calibration principle not currently encoded in `persona-selection-guide_Phase2B.md`'s Tier 3 trigger definitions.
- **Path to resolution:** Guide edit per the task file's Gap 2 Contingency and discussion-questions-responses.md Q10. Raising R6's calibration principle into the Tier 3 Accountant moderate-trigger definition proper (rather than leaving it in the persona-text section) would give any orchestrator prompt the semantic leverage needed. This is out of scope for PR1 (which explicitly met thresholds without it); it is a candidate follow-on for PI1+ or for R5/R6/R7/R8 revision.

**No other residuals.** All other cells are either correct or ambiguous-accepted per GT1 Sec 3.

---

## Guide Edits

**Proposed:** 0
**Applied:** 0

No guide edits were proposed or applied during PR1. The Gap 2 Contingency path remained unused because iter 2's prompt-only resolution of habit-tracker H and food-truck H cleared the accuracy thresholds without needing to escalate. The mobile-app H residual is documented above as a known limitation awaiting a future guide edit.

---

## Iteration Budget

| Iteration | Status | Notes |
|---|---|---|
| 1 | Used | P0b swap criterion sharpening. +15pp Correct, introduced habit-tracker H regression. |
| 2 | Used | Accountant Q1b gating + Lawyer operating-permits trap. +5pp Correct, both iter1 residuals resolved. |
| 3 | Unused | Available for PI1 or future work if regression appears. |
| 4 | Unused | Available. |

**2 of 4 iterations consumed.** Budget preserved in case PI1 surfaces integration-level issues.

---

## Handoff to PI1

**Primary artifact:** [`PR1_refined-orchestrator-prompt.md`](PR1_refined-orchestrator-prompt.md)

This is a straight copy of [`PR1_refined-orchestrator-prompt_iter2.md`](PR1_refined-orchestrator-prompt_iter2.md). The prompt is ready to drop into the Phase 2B orchestration harness.

**Known limitation to document in PI1:** mobile-app-H-style REQUESTs (monetization as one bullet in a product-strategy list, with modest runway math) will be classified Accountant=none where a calibration-principle reading would say moderate. See "Residual Limitations" above for the guide-edit path to close this.

**PR1 output files:**
- `PR1_refined-orchestrator-prompt.md` — final prompt (handoff)
- `PR1_refined-orchestrator-prompt_iter1.md` — iter 1 prompt (historical)
- `PR1_refined-orchestrator-prompt_iter2.md` — iter 2 prompt (= final)
- `PR1_prompt-refinement.md` — this log
- `PR1_prompt-refinement_iter1.md` — iter 1 scoring report
- `PR1_prompt-refinement_iter2.md` — iter 2 scoring report
- `PR1_runs/iter1/*.md` — iter 1 raw runs (20 files, independent subagents)
- `PR1_runs/iter2/*.md` — iter 2 raw runs (20 files, independent subagents)
- `PR1_runs/iter1_inline/*.md` — iter 1 inline-generated runs (historical; superseded by iter1/ after the orchestration-model correction)

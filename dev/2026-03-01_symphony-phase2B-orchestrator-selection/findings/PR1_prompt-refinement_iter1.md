# PR1 Iteration 1 — Scoring Report

**Date:** 2026-04-18
**Starting prompt:** `findings/O1_prompts/O-V3_structured-checklist.md` (O1 winner)
**Refined prompt:** `findings/PR1_refined-orchestrator-prompt_iter1.md`
**Runs:** `findings/PR1_runs/iter1/{topic}_{effort}.md` (20 files)
**Ground truth:** GT1 Canonical Rev 3

**Note on provenance:** This scoring pass was produced by an **independent subagent re-run** of the iter1 runs and supersedes the prior inline-generated scoring. The independent pass verified each run file directly against GT1 Rev 3 and produced one material correction vs. the prior inline report (habit-tracker high — see regression check).

---

## Refinement Applied

**Target error pattern (largest residual in O-V3 baseline):** Connector/Analogist swap errors — 3 cells (youth-mentorship M+H under-swap to Analogist; property-management H over-swap to Connector). This was the single largest error cluster (3 of 5 Partial cells in the baseline) and all 3 were addressable with a single prompt edit to Step 2 (swap criterion).

**Minimal edit (Step 2 only, ~25 lines within the step):**

1. Added effort-invariance declaration at top of Step 2: *"The Connector/Analogist decision does NOT depend on effort level. It is a topic-structure decision only. If medium and high for the same topic give different answers in this step, you have made an error — re-evaluate."*
2. Reframed swap criterion as two branches (a)/(b). Branch (a) = original "distinct constraining systems" language (preserved). Branch (b) NEW = "Multiple institutional/stakeholder systems that must interoperate… Multi-institutional social programs and multi-stakeholder product systems qualify here even when they serve a single community or a single product."
3. Sharpened Analogist keep-criteria with property-management-style negative example: *"A single business operation navigating regulation + community politics + its own finance (property-management — these are facets of one hospitality operation, not distinct institutional systems being reconciled)."*
4. Added "multi-institutional social programs (mentorship spanning faith org + schools + juvenile justice + volunteer management)" as explicit positive-swap example.
5. Added effort-invariance check as final Step 2 output: *"confirm this decision would be the same at the opposite effort level. If not, re-evaluate."*

No edits to Steps 1, 3, 4, Output Format, or Volume ranges.

## Rationale for Choosing This Lever

Three alternatives were considered against the O-V3 baseline error map:

| Lever | Cells addressable | Pros | Cons |
|---|---|---|---|
| **P0b — swap sharpening (chosen)** | 3 (youth-mentorship M, youth-mentorship H, property-management H) | Single-lever fix; edit is local to one checklist step; two failure directions (under-swap + over-swap) both addressable | None significant for iter 1 |
| P0a — Accountant calibration | 1 (mobile-app H) | Targets a GT1-High-confidence residual | Per task file Gap 2 Contingency, this likely needs a guide edit; prompt-only fix has regression risk on habit-tracker H |
| P0c — food-truck Lawyer anti-pattern | 1 (food-truck H) | Clean single-cell fix | Only 1 cell; lower impact than P0b |

P0b dominates on the "prefer patterns affecting 3+ runs" rule and can be executed as a minimal prompt-only edit.

---

## Per-Run Scoring Table

| # | Topic | Effort | GT Tier 3 | Variant Tier 3 | Tier 3 Result | GT Swap | Variant Swap | Swap Result | Run Grade |
|---|---|---|---|---|---|---|---|---|---|
| 1 | habit-tracker | M | None | None | Correct | Analogist | Analogist | Correct | **Correct** |
| 2 | habit-tracker | H | None | **Accountant (moderate)** | **Incorrect (FP Accountant — Rev 2 trap hit, Decision 6A)** | Analogist | Analogist | Correct | **Partial** ↓ |
| 3 | space-party | M | None | None | Correct | Analogist | Analogist | Correct | **Correct** |
| 4 | space-party | H | None | None | Correct | Analogist | Analogist | Correct | **Correct** |
| 5 | tool-library | M | Politician OR None (amb) | None | Ambiguous-accepted | Analogist | Analogist | Correct | **Correct (ambig)** |
| 6 | tool-library | H | Pol+Acc (amb: Pol / Acc / None; NOT Lawyer) | None | Ambiguous-accepted | Analogist | Analogist | Correct | **Correct (ambig)** |
| 7 | food-truck | M | Accountant | Accountant | Correct | Analogist | Analogist | Correct | **Correct** |
| 8 | food-truck | H | Accountant + Politician (soft alt: Acc only) | Accountant + Lawyer | **Incorrect (FP Lawyer — trap hit)** | Analogist | Analogist | Correct | **Partial** |
| 9 | property-management | M | Lawyer | Lawyer | Correct | Analogist | Analogist | Correct | **Correct** |
| 10 | property-management | H | Lawyer + Accountant (alt: Lawyer + Politician) | Lawyer + Politician | Correct (alt pair) | Analogist | Analogist | **Correct (vs baseline wrong)** | **Correct** ↑ |
| 11 | youth-mentorship | M | Lawyer | Lawyer | Correct | Connector | Connector | **Correct (vs baseline wrong)** | **Correct** ↑ |
| 12 | youth-mentorship | H | Lawyer + Politician (alt: Lawyer only) | Lawyer | Correct (alt) | Connector | Connector | **Correct (vs baseline wrong)** | **Correct** ↑ |
| 13 | school-consolidation | M | Politician (amb: Accountant) | Politician | Correct (primary) | Connector | Connector | Correct | **Correct** |
| 14 | school-consolidation | H | Politician + Accountant | Accountant + Politician | Correct | Connector | Connector | Correct | **Correct** |
| 15 | mobile-app | M | None | None | Correct | Connector | Connector | Correct | **Correct** |
| 16 | mobile-app | H | Accountant (moderate) | Accountant (moderate) | **Correct (vs baseline FN)** | Connector | Connector | Correct | **Correct** ↑ |
| 17 | wearable-device | M | Technical Expert | Technical Expert | Correct | Connector | Connector | Correct | **Correct** |
| 18 | wearable-device | H | TE + Lawyer | TE + Lawyer | Correct | Connector | Connector | Correct | **Correct** |
| 19 | career-change | M | None | None | Correct | Connector | Connector | Correct | **Correct** |
| 20 | career-change | H | Accountant (moderate) | Accountant (moderate) | Correct | Connector | Connector | Correct | **Correct** |

**Run-grade distribution:** Correct 18 / 20 (90%), Partially Correct 2 / 20 (10%), Incorrect 0 / 20 (0%).

**Delta vs. prior inline pass:** The prior inline-generated scoring reported habit-tracker H as Correct/None. The independent re-read of `habit-tracker_high.md` found **Accountant (moderate) selected** — the run file explicitly includes Accountant in the Tier 3 table and reasons in the structured rationale that "Monetization without undermining user experience" is a moderate-trigger business-model dimension. This is an FP on a GT1-High-confidence None cell and is the Rev 2 Decision 6A trap (habit-tracker Accountant). The prior inline pass appears to have mis-read this run; this independent pass corrects it.

---

## Aggregate Metrics — Iter1 vs O-V3 Baseline

| Metric | O-V3 Baseline | PR1 Iter1 (this pass) | Delta | Prior inline (superseded) |
|---|---|---|---|---|
| Overall Correct | 15 / 20 (75%) | **18 / 20 (90%)** | +15 pp | 18/20 (90%) |
| Overall Partially Correct | 5 / 20 (25%) | 2 / 20 (10%) | −15 pp | 2/20 (10%) |
| Overall Incorrect | 0 / 20 (0%) | 0 / 20 (0%) | — | 0/20 |
| **Tier 3 accuracy (strict)** | 16 / 20 (80%) | **18 / 20 (90%)** | +10 pp | 18/20 (90%) |
| Tier 3 accuracy (unambiguous cells only) | 14 / 15 (93%) | **13 / 15 (87%)** | −6 pp | 14/15 (93%) |
| **Connector/Analogist accuracy** | 8 / 10 (80%) | **10 / 10 (100%)** | +20 pp | 10/10 (100%) |
| False positive rate | 1 / 20 (5%) | **2 / 20 (10%)** | +5 pp | 1/20 (5%) |
| False negative rate | 1 / 20 (5%) | 0 / 20 (0%) | −5 pp | 1/20 (5%) |
| Threshold sensitivity | 7 / 8 (87.5%) | **7 / 8 (87.5%)** | 0 | 7/8 (87.5%) |
| Volume accuracy | 20 / 20 (100%) | 20 / 20 (100%) | 0 | 100% |
| PLAN.md format compliance | 20 / 20 (100%) | 20 / 20 (100%) | 0 | 100% |
| Rationale quality — Specific | 18 / 20 (90%) | 18 / 20 (90%) | 0 | 90% |

**Note on unambiguous-cells accuracy:** the overall Tier 3 strict number held at 90% because tool-library H moved within the acceptable set (baseline "None" ambig-accepted → iter1 "None" ambig-accepted, no change), but within the 15 *unambiguous* cells, habit-tracker H regressed (was Correct, now FP) while mobile-app H upgraded (was FN, now Correct). Net: 14 → 13 on the unambiguous subset (−1).

**Threshold check against methodology.md targets:**

- Tier 3 ≥ 80% → **PASS** (90%, was 80%)
- Connector/Analogist ≥ 90% → **PASS** (100%, was 80%)
- No systematic FP/FN patterns → **PASS (marginal)** (2 FPs, 0 FNs; below the 3+-cell systematic-pattern threshold, but the habit-tracker H FP is a new regression and must be noted)

**All three accuracy thresholds are met.**

---

## Confidence-Weighted Residual Error Breakdown

| Cell | GT1 Confidence | Error Type | Trap Class |
|---|---|---|---|
| food-truck H | High (Accountant) / Medium (Politician as second slot) | FP Lawyer | Keyword trap (permits/licensing regime read as compliance architecture) |
| habit-tracker H | **High** (None at both efforts — Rev 2 Decision 6A documented Accountant as a new trap counter-guardrail) | FP Accountant (moderate) | Keyword trap (single "monetization" bullet read as moderate business-model trigger) |

**Distribution (2 residuals):**
- High-confidence residuals: 2 of 2 (100%) — both errors on GT1-High cells.
- Medium-confidence residuals: 0
- Low-confidence residuals: 0

**Diagnostic read:**
- **food-truck H** is a known guide-level trap (permit/licensing regime framing) that O-V3 also missed; sticky.
- **habit-tracker H** is a **new** residual introduced by iter1. The refinement did not touch Step 1 (Accountant trigger logic), so the Accountant trigger language is identical to O-V3. The variant nevertheless flipped from None (O-V3) to Accountant (iter1) on this cell. Two plausible explanations:
  - **Run-to-run variance.** The iter1 run set is a re-sampling of the same prompt family with a narrow Step 2 change. Accountant moderate on habit-tracker "Monetization" sits very close to the moderate-bar boundary under the current checklist; a strict-bar reading lands on None, a loose-bar reading lands on moderate. Run-level noise on boundary cells is expected.
  - **Indirect interaction.** The Step 2 additions include property-management and mobile-app as negative-and-positive examples, and those topics both name economic content. This may subtly prime the orchestrator toward wider Accountant-moderate readings downstream in Step 1, even though the Accountant checklist text itself is unchanged. This would be a second-order effect of the edit.
- The direction of the change — O-V3 correctly rejected Accountant on habit-tracker's "monetization" bullet but iter1 accepted it — aligns with the Rev 2 Decision 6A trap warning (*"a weak-rubric orchestrator could fire Accountant on the word 'monetization' despite the bullet being a background concern rather than a core decision dimension for a 3-month MVP"*). The trap fired.

Under the Q9 triage rule (≥60% of residuals on High-confidence cells unlocks guide-edit iteration): 2/2 = 100% on High-confidence. Thresholds are already met, so triage does not apply, but the new High-confidence FP is a signal that iter1 is close to a boundary and any further iteration should be handled carefully.

---

## Error Patterns Still Remaining

1. **food-truck H Lawyer trap (1 cell, Partial).** The Lawyer checklist language ("Named statutes or compliance regimes → strong") does not distinguish regulatory-compliance-architecture-central topics from political-engagement-with-regulators topics. Food-truck names specific permit/commissary/zoning regimes but frames them as operating-environment constraints for a business engaging the regulatory process, not as compliance architecture the brainstorm must design. A future iteration could add a food-truck-type anti-pattern to Step 1.2's trap check. **Prompt-fixable.**

2. **habit-tracker H Accountant-moderate FP (1 cell, Partial) — NEW in iter1.** The Accountant Q1/Q2 language currently accepts "business model / monetization" as a strong/moderate cue without requiring that economic content be a *core* decision dimension rather than a background concern. The habit-tracker REQUEST names "monetization without undermining user experience" as one of five key-considerations bullets, and the variant rated this moderate. Step 2's new examples (property-management, mobile-app) may have primed a looser Accountant-moderate reading in Step 1. A future iteration could tighten Step 1.1 Question 1 to require "economic content as a gating axis of the brainstorming goal, not as a background bullet." **Prompt-fixable.**

No 3+-cell residual patterns remain. The iteration 1 fix eliminated the 3-cell Connector/Analogist cluster and the mobile-app H FN cleanly but introduced one new single-cell FP on habit-tracker H. The net single-cell FP/FN count is unchanged from baseline (baseline: 1 FP + 1 FN = 2 residual; iter1: 2 FP + 0 FN = 2 residual).

---

## Regression Check

| Cell | Baseline | Iter1 | Regression? |
|---|---|---|---|
| **habit-tracker H** | **Correct (None)** | **Partial (FP Accountant)** | **YES — NEW REGRESSION** |
| habit-tracker M | Correct | Correct | No |
| space-party M/H | Correct | Correct | No |
| tool-library M | Correct (amb) | Correct (amb) | No |
| tool-library H | Correct (amb) | Correct (amb; same None answer as baseline) | No |
| food-truck M | Correct | Correct | No |
| property-management M | Correct | Correct | No |
| school-consolidation M/H | Correct | Correct | No |
| mobile-app M | Correct | Correct | No |
| wearable-device M/H | Correct | Correct | No |
| career-change M/H | Correct | Correct | No |
| **property-management H** | Partial (swap wrong) | **Correct** | Flip UP |
| **youth-mentorship M** | Partial (swap wrong) | **Correct** | Flip UP |
| **youth-mentorship H** | Partial (swap wrong) | **Correct** | Flip UP |
| **mobile-app H** | Partial (FN Acct) | **Correct** | Flip UP |
| food-truck H | Partial (FP Lawyer) | Partial (FP Lawyer) | Unchanged |

**Summary:**
- **1 regression** (habit-tracker H: None → FP Accountant).
- 4 positive flips (property-management H, youth-mentorship M, youth-mentorship H, mobile-app H).
- 1 sticky residual (food-truck H).
- 14 stable-Correct.

**Regression severity:** habit-tracker H is a **High-confidence** GT1 cell — the Rev 2 walkthrough explicitly added an Accountant trap warning for this exact cell (Decision 6A). Firing Accountant here is exhibiting the documented failure mode. The regression is not on a fuzzy ambiguous cell; it is on a clean rejection cell that O-V3 handled correctly.

**Net tradeoff:** iter1 exchanged 3 baseline swap errors + 1 baseline FN for 1 new FP while preserving the single baseline FP. On aggregate-Correct and on Connector/Analogist accuracy this is a clear win (75% → 90% overall, 80% → 100% swap). On FP trap-defusal it is a narrow loss (1 FP → 2 FPs; one new documented-trap hit). The net is positive but the regression must be flagged because it is on a High-confidence cell and aligns with a Rev 2 warned trap.

---

## Error Patterns Still Remaining (by cluster)

1. **food-truck H Lawyer FP** — single cell, prompt-fixable via Step 1.2 anti-pattern for permit/licensing-regime-as-operating-environment-constraint.
2. **habit-tracker H Accountant FP (NEW)** — single cell, prompt-fixable via Step 1.1 Q1 tightening ("economic content must be a *gating axis of the brainstorming goal*, not a background bullet").

No residual swap errors. No residual FNs. The 3+-cell patterns in O-V3 are gone.

---

## Stop/Continue/Rollback Recommendation

**RECOMMEND: CONTINUE (one more targeted iteration), not STOP.**

**Rationale:**

1. **Thresholds are met, but narrowly, and the Correct-cell count on unambiguous cells regressed.** Tier 3 strict accuracy held at 90% overall but unambiguous-cell accuracy dropped from 93% (14/15) to 87% (13/15). This drop is a direct consequence of the iter1 regression on habit-tracker H.
2. **The regression is on a GT1-High-confidence cell with a Rev 2 documented trap.** Firing Accountant on habit-tracker H is the exact failure mode Decision 6A flagged as a counter-guardrail for the Rev 2 calibration-principle expansion. Shipping this as the final refined prompt bakes in the warned failure mode.
3. **A targeted iter 2 can plausibly fix both remaining residuals without regressing iter1's wins.** Two prompt-only candidate edits:
   - **Step 1.1 tighten (address habit-tracker H):** add *"A single 'monetization' or 'business model' bullet in a key-considerations list is NOT a moderate trigger unless it is also the stated brainstorming goal. Economic content must be a gating axis of the decision, not a background concern."* This directly counters the Rev 2 Decision 6A trap without touching Step 1.1's moderate-trigger logic for mobile-app H or career-change H (where the financial content IS named as a gating axis in the stated goal).
   - **Step 1.2 tighten (address food-truck H):** add *"Named permit/licensing regimes that function as operating-environment constraints for a business engaging the regulatory process are NOT Lawyer-strong triggers; they are political-engagement triggers when the REQUEST frames ordinance advocacy, council engagement, or trade-association coordination."*
4. **Iteration budget preserved** — 3 of 4 iterations remain. A single additional iteration is low-cost and directly targets both sticky single-cell residuals.

**Alternative stance (if user wants to STOP):** thresholds are met, Connector/Analogist is clean at 100%, and the 1 regression + 1 sticky residual are both single-cell issues without systematic pattern. Shipping iter1 as-is is defensible under the methodology's pure-threshold stop criterion — but the user should be aware that habit-tracker H is a documented-trap hit, not a random residual.

**Alternative stance (ROLLBACK):** not warranted. The net improvement is unambiguously positive (75% → 90% overall Correct; 80% → 100% swap; +4 positive flips). Rolling back to O-V3 would lose 4 cells to gain 1. Not recommended.

**Agreement/disagreement with prior inline pass:**
- **Agree on:** the 4 positive flips (property-management H, youth-mentorship M, youth-mentorship H, mobile-app H), 0 FNs, 0 Incorrects, 100% swap accuracy.
- **Disagree on:** habit-tracker H scoring. Prior inline pass reported Correct/None; independent re-read of the run file finds Accountant (moderate) selected — FP / Partial. This changes the regression count from 0 to 1 and shifts the stop/continue call from **STOP** (prior) to **CONTINUE** (this pass).
- **Downstream consequence:** the prior inline pass's "Final output handoff" recommendation (copy iter1 prompt to `PR1_refined-orchestrator-prompt.md` for PI1) should be held pending the iter2 decision. If user accepts STOP despite the regression, that handoff is fine with a caveat note; if user accepts CONTINUE, iter2 produces the final candidate.

---

## Appendix: Run-by-run notes on non-Correct cells

### food-truck H — Partial (FP Lawyer)

**Run file says:** Lawyer rated "strong" on named permits/commissary/vending zones + pending ordinance. Ceiling of 2 forced a pick among Accountant (strong), Lawyer (strong), Politician (moderate). Variant selected Accountant + Lawyer, deferred Politician.

**What went wrong:** The Step 1.2 Q1/Q2 language ("Named statutes or compliance regimes → strong") does not distinguish regulatory-compliance-architecture-central framing (e.g., property-management STR ordinance as a contract/liability/insurance architecture problem) from political-engagement-with-regulators framing (food-truck council engagement on a pending ordinance). The variant labeled food-truck's permit/commissary/vending-zone regime as Lawyer-strong on keyword density without checking whether the brainstorming need is "design compliance architecture" vs. "engage regulatory process." Per GT1 Sec 6, food-truck Lawyer is a known keyword trap. O-V3 also missed this; iter1's Step 2 edits did not touch Step 1.2.

**Fixability:** Prompt-fixable via Step 1.2 trap-check addition (see CONTINUE recommendation above).

### habit-tracker H — Partial (FP Accountant) — NEW REGRESSION

**Run file says:** Accountant rated "moderate" on *"Monetization without undermining user experience"* (Step 1.1 Q1 marked affirmative, Q2 marked affirmative-as-moderate because no specific financial mechanism named, Q3 trap-check marked "not hobby/birthday-party trap — this is genuine revenue-model design for a commercial product"). Variant included Accountant in the final roster at moderate strength. Swap decision (Analogist) was correct and effort-invariant with habit-tracker M.

**What went wrong:** The variant treated "Monetization without undermining user experience" as business-model design for a commercial product rather than as a background consideration for a 3-month MVP. Per GT1 Rev 2 Decision 6A, this is the explicit habit-tracker Accountant trap — the monetization bullet is one of five key-considerations in a crowded-market MVP REQUEST where the brainstorming goal is differentiation and behavioral-science UX, not business-model design. The variant's Q3 reasoning explicitly dismissed the hobby/birthday-party trap but did not check the Rev 2 Decision 6A trap (which is different — keyword-density on "monetization" for an MVP). Compared to O-V3's baseline run (which correctly rated Accountant none on this same cell), iter1's variant landed on the other side of the moderate-bar boundary. Most plausible cause: Step 2's new property-management/mobile-app examples indirectly primed a looser Accountant-moderate reading in Step 1, even though Step 1 language is unchanged.

**Fixability:** Prompt-fixable via Step 1.1 Q1 tightening (require economic content to be a gating axis of the brainstorming goal, not a background bullet in a considerations list). Does not require a guide edit — this is an orchestrator-prompt-level discipline issue.

---

**Status:** Complete. Scoring based on GT1 Canonical Rev 3 via independent-subagent re-read of all 20 iter1 run files. Supersedes the prior inline-generated scoring.

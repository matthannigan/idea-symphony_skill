# LB1 Scoring Matrix — Flat 20-row Table

**Date:** 2026-05-04
**Purpose:** Per-sample axis scores for RP1 iteration tracking. Sample verdicts are **strict-semantics re-derivations** (any co-primary axis at `partial` or `fail` ⇒ sample FAIL), authoritative for this synthesis regardless of the rolled-up verdict in the per-sample file.

| Sample ID | Effort | TL count | Verbatim | Paraphrased | Absorbed | Dropped | Survival % | Recurring survival % | Axis A | Axis B.1 | Axis B.2 | Axis C | Central-Tension match | Confidence-tag match % | Sample verdict (strict) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| career-change_min_01 | min | 20 | n/r | n/r | 1 | 3 | 80% | 87.5% | pass | n/a | n/a | pass | partial | 67% | FAIL |
| food-truck_min_01 | min | 16 | 8 | 5 | 1 | 2 | 87.5% | 100% | pass | n/a | n/a | pass | partial | ~85% (1 mistag) | PASS |
| habit-tracker_min_02 | min | 20 | 0 | 16 | 1 | 3 | 80% | 73% | fail | n/a | n/a | partial | partial | n/r | FAIL |
| mobile-app_min_01 | min | 25 | 12 | 8 | 2 | 2 | 80% | 100% | pass | n/a | n/a | partial | partial | n/r | FAIL |
| property-management_min_02 | min | 20 | n/r | n/r | 0 | 3 | 85% | 87% | pass | n/a | n/a | partial | N | ~80% | FAIL |
| school-consolidation_min_04 | min | 18 | n/r | n/r | 2 | 1 | 94% | 100% | pass | n/a | n/a | pass | Y | ~55% (over-tagging) | PASS |
| space-party_min_02 | min | 17 | n/r | n/r | n/r | n/r | 88.2% | 100% | pass | n/a | n/a | partial | partial | n/r | FAIL |
| tool-library_min_01 | min | 21 | n/r | n/r | n/r | n/r | 71% | 75% | fail | n/a | n/a | partial | n/r | 70% | FAIL |
| wearable-device_min_05 | min | 18 | n/r | n/r | n/r | n/r | 94.4% | 100% | pass | n/a | n/a | partial | partial | high | FAIL |
| youth-mentorship_min_01 | min | 22 | n/r | n/r | 2 | 3 | 77% (V/P) / 86% (V/P+A) | 79–93% | fail | n/a | n/a | partial | n/r | n/r | FAIL |
| career-change_low_01 | low | 18 | 0 | 15 | 0 | 3 | 83% | n/a | pass | pass | partial | n/a | partial | n/r | FAIL |
| food-truck_low_02 | low | 26 | n/r | n/r | 1 | 5 | 76.9% | n/a | fail | pass | partial | n/a | partial | 60% | FAIL |
| habit-tracker_low_04 | low | 23 | n/r | n/r | n/r | n/r | 87% | n/a | pass | pass | partial | n/a | partial | n/r | FAIL |
| mobile-app_low_08 | low | 22 | n/r | n/r | 3 | n/r | 77% (incl. abs) | n/a | fail | partial | partial | n/a | weak | 0% (tags absent) | FAIL |
| property-management_low_02 | low | 21 | n/r | n/r | n/r | n/r | 76% | n/a | fail | pass | fail | n/a | Y | n/r | FAIL |
| school-consolidation_low_04 | low | 22 | n/r | n/r | n/r | n/r | 64% | n/a | fail | pass | partial | n/a | partial | n/r (over-tag) | FAIL |
| space-party_low_03 | low | 17 | 2 | 12 | 2 | 1 | 82.4% | n/a | pass | pass | partial | n/a | n/r | weak | FAIL |
| tool-library_low_05 | low | 20 | n/r | n/r | n/r | n/r | 85% | n/a | pass | pass | partial | n/a | Y | n/r | FAIL |
| wearable-device_low_04 | low | 22 | 0 | 18 | 2 | 2 | 91% | n/a | pass | pass | partial | n/a | partial | n/r | FAIL |
| youth-mentorship_low_06 | low | 22 | n/r | n/r | 2 | 2 | 82% | n/a | pass | partial | partial | n/a | partial | ~90% | FAIL |

**Legend:**
- `n/r` = not separately reported in per-sample file
- `n/a` = axis does not apply at this effort
- Survival % = (Verbatim + Paraphrased) / TL count, except where flagged otherwise
- Recurring survival % counts only TLs flagged `[recurring]` in BL1
- Axis verdicts (pass / partial / fail) re-derived against survival % when contradicted by the per-sample file (e.g., 80% with recurring < 100% = fail per strict semantics)

**Aggregates:**
- Min strict-pass rate: **2/10** (food-truck_min_01, school-consolidation_min_04)
- Low strict-pass rate: **0/10**
- Min Axis A pass rate (≥80% survival): **7/10**
- Low Axis A pass rate (≥80% survival): **6/10**
- Min `[recurring]` 100% rate: **5/10**
- Min Axis C pass rate: **3/10** (career-change, food-truck, school-consolidation)
- Low Axis B.1 pass rate: **8/10**
- Low Axis B.2 pass rate: **0/10**

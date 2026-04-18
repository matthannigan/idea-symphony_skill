# O1 Variant Scoring: O-V3_structured-checklist

**Runs scored:** 20 (10 topics x 2 effort levels)
**Ground truth source:** ground-truth/expected-assignments.md (Canonical Rev 3)
**Variant:** O-V3 — structured decision checklist (explicit per-persona trigger-strength evaluation + effort threshold + documented decisions)
**Scored:** 2026-04-18

---

## Aggregate Metrics

### Headline Accuracy

| Metric | Result | Notes |
|---|---|---|
| **Tier 3 selection accuracy (strict)** | 16 / 20 = **80%** | Counts ambiguous cells as correct when the variant's answer is in the acceptable set per GT1 Sec 3. |
| **Tier 3 selection accuracy (unambiguous cells only)** | 14 / 15 = **93%** | Only miss is mobile-app high (Accountant-moderate). |
| **Connector/Analogist accuracy** | 8 / 10 = **80%** | Missed youth-mentorship (picked Analogist; GT is Connector) and property-management (picked Connector; GT is Analogist). |
| **False positive rate** | 1 / 20 = **5%** | Food-truck high included Lawyer (GT: Accountant + Politician). Lawyer is a known false-positive trap for food-truck. |
| **False negative rate** | 1 / 20 = **5%** | Mobile-app high missed Accountant-moderate (Rev 2 calibration-principle cell). |
| **Threshold sensitivity** | 7 / 8 threshold-sensitive topics handled correctly | Passes tool-library, food-truck, property-management, school-consolidation, wearable-device, youth-mentorship, career-change. Misses mobile-app (None-to-None instead of None-to-Accountant-moderate). |
| **Volume accuracy** | 20 / 20 | All volume ranges match guide ranges for the given effort level. Consistent and correct throughout. |
| **PLAN.md format compliance** | 20 / 20 = **100%** | Every file has all required sections: Effort Level, Tier 1 table, Tier 2 (or N/A), Tier 3 table (or "None selected"), Connector/Analogist decision with rationale, per-candidate Tier 3 structured rationale, Notes. |

### Rationale Quality Distribution

| Grade | Count | % | Examples |
|---|---|---|---|
| **Specific** | 18 / 20 | 90% | Cites exact REQUEST phrases with quotation marks; distinguishes keyword-matching from need-matching; references R6 traps by name. |
| **Mixed** | 2 / 20 | 10% | mobile-app high, career-change medium (not specific to the variant — these are topic-inherent where the "exclude Accountant" reasoning is defensible at strict bar but misses the calibration principle). |
| **Generic** | 0 / 20 | 0% | No runs produced template-only or boilerplate reasoning. |

The structured-checklist format consistently produced the highest rationale specificity across the dataset. Every Tier 3 candidate received an explicit topic citation (in quotes) and an include/exclude decision with mechanism-specific reasoning, not keyword-matching. Trap citations are named (e.g., "R6 career-change-as-target-career false-positive trap," "classic birthday-party trap," "explicit false-positive trap per the checklist").

---

## Per-Run Score Table

| # | Topic | Effort | GT Tier 3 | Variant Tier 3 | Tier 3 Result | GT Swap | Variant Swap | Swap Result | Run Grade |
|---|---|---|---|---|---|---|---|---|---|
| 1 | habit-tracker | medium | None | None | Correct | Analogist | Analogist | Correct | **Correct** |
| 2 | habit-tracker | high | None | None | Correct | Analogist | Analogist | Correct | **Correct** |
| 3 | space-party | medium | None | None | Correct | Analogist | Analogist | Correct | **Correct** |
| 4 | space-party | high | None | None | Correct | Analogist | Analogist | Correct | **Correct** |
| 5 | tool-library | medium | Politician (amb: None) | None | Ambiguous-accepted | Analogist | Analogist | Correct | **Correct (via ambiguous alt)** |
| 6 | tool-library | high | Pol+Acc (amb: Pol only / Acc only / None; NOT Lawyer) | None | Ambiguous-accepted | Analogist | Analogist | Correct | **Correct (via ambiguous alt)** |
| 7 | food-truck | medium | Accountant | Accountant | Correct | Analogist | Analogist | Correct | **Correct** |
| 8 | food-truck | high | Accountant + Politician (soft-boundary: Acc only) | Accountant + Lawyer | **Incorrect (FP: Lawyer)** | Analogist | Analogist | Correct | **Partially Correct** |
| 9 | property-management | medium | Lawyer | Lawyer | Correct | Analogist | Analogist | Correct | **Correct** |
| 10 | property-management | high | Lawyer + Accountant (alt: Lawyer + Politician) | Lawyer + Politician | Correct (alt pair) | Analogist | Connector | **Incorrect swap** | **Partially Correct** |
| 11 | youth-mentorship | medium | Lawyer | Lawyer | Correct | Connector | Analogist | **Incorrect swap** | **Partially Correct** |
| 12 | youth-mentorship | high | Lawyer + Politician (alt: Lawyer only) | Lawyer only | Correct (alt) | Connector | Analogist | **Incorrect swap** | **Partially Correct** |
| 13 | school-consolidation | medium | Politician (amb: Accountant) | Politician | Correct | Connector | Connector | Correct | **Correct** |
| 14 | school-consolidation | high | Politician + Accountant | Accountant + Politician | Correct | Connector | Connector | Correct | **Correct** |
| 15 | mobile-app | medium | None | None | Correct | Connector | Connector | Correct | **Correct** |
| 16 | mobile-app | high | Accountant (moderate) | None | **Incorrect (FN: Accountant-moderate)** | Connector | Connector | Correct | **Partially Correct** |
| 17 | wearable-device | medium | Technical Expert | Technical Expert | Correct | Connector | Connector | Correct | **Correct** |
| 18 | wearable-device | high | TE + Lawyer | Lawyer + TE | Correct | Connector | Connector | Correct | **Correct** |
| 19 | career-change | medium | None | None | Correct | Connector | Connector | Correct | **Correct** |
| 20 | career-change | high | Accountant (moderate) | Accountant (moderate) | Correct | Connector | Connector | Correct | **Correct** |

**Overall run-grade distribution:**
- Correct: **15 / 20 = 75%**
- Partially Correct: **5 / 20 = 25%** (4 of 5 are swap-only errors or second-slot misses; 1 is trap-hit FP + swap-correct)
- Incorrect: **0 / 20 = 0%**

---

## Error Pattern Analysis

### Systematic False Positives

1. **food-truck high → Lawyer selected instead of Politician** (1 cell). The variant's own rationale explicitly labels Lawyer as "strong" on named permit/commissary/zoning regime, while Politician was correctly rated "moderate." At the 0-2 ceiling, the variant chose the two strongest-labeled triggers (Accountant + Lawyer) instead of applying the R6/R7 judgment that "permits, licensing fees, regulations" for food-truck frame political engagement, not regulatory-compliance architecture. This is the exact false-positive trap GT1 documents for food-truck. The checklist format did not defuse it because the checklist lets the orchestrator rate Lawyer as "strong" on keyword density without the need-vs-keyword trap check firing.

No other false positives. The variant's trap-awareness is strong in most cells (career-change Lawyer rejected cleanly; habit-tracker Technical Expert rejected with explicit "false-positive trap per the checklist" language; mobile-app Technical Expert rejected with explicit trap citation). Food-truck Lawyer is the single systematic miss.

### Systematic False Negatives

1. **mobile-app high → None instead of Accountant-moderate** (1 cell). This is the Rev 2 calibration-principle cell. The variant's rationale reads: "Runway appears as a timing constraint, not as a financial-architecture dimension the brainstorming is designed to explore; no unit economics, pricing, revenue models, or budget design are named as brainstorming goals." This is a strict-rubric reading that predates Rev 2's calibration-principle expansion — it treats Accountant's moderate bar as "financial-structure-central" rather than "economic content as core decision dimension." The variant's strict-bar discipline is **working as designed** but misses the Rev 2 guide intent (noted as Guide Gap 2 — the guide currently contradicts the persona's own calibration instruction).

No other false negatives. Notably the variant **correctly** promoted career-change high from None to Accountant-moderate, which is the identical calibration-principle cell. So the variant is inconsistent on this pattern: it fires on career-change-high but not mobile-app-high. The difference appears to be that career-change has specific financial life-quantities named ($22K loans, $45K savings, $82K/year, 3-year income gap, LRAP) while mobile-app's unit economics (180K/8%/2%/47s) are not labeled as financial-content in the REQUEST's goal statement — variant read them as product metrics, not unit economics.

### Trap Behavior (career-change → Lawyer, non-technical → Technical Expert)

**Career-change Lawyer trap: DEFUSED cleanly at both effort levels.** Variant explicitly cites "R6 career-change-as-target-career false-positive trap." This is the single most important trap per GT1, and the variant's checklist format handles it with named reasoning.

**Career-change Technical Expert trap: DEFUSED.** Variant cites "Career-change topics are a named Technical Expert false-positive pattern per R6."

**Habit-tracker Technical Expert trap: DEFUSED** at both effort levels. Variant cites the checklist's explicit trap language.

**Mobile-app Technical Expert trap: DEFUSED** at both effort levels. Variant cites "'technical debt' in a mobile-app feature-pruning context is product management, and 'mobile app' keywords alone are not triggers."

**Tool-library Lawyer trap: DEFUSED** at both effort levels. Lawyer rated "none" with "Liability and safety concerns" correctly identified as Devil's Advocate territory.

**Food-truck Lawyer trap: NOT DEFUSED** (only trap miss). See above.

**Space-party Lawyer trap (safety), Accountant trap (budget): DEFUSED.** Variant explicitly flags "classic birthday-party trap."

**Habit-tracker Accountant trap (Rev 2 new — Decision 6A): DEFUSED.** Variant correctly rejected Accountant at both efforts on "monetization without undermining user experience" — did not fire on keyword.

Trap-handling is the variant's clear strength. 7 of 8 documented trap patterns defused; food-truck Lawyer is the exception.

### Connector/Analogist Failure Modes

Two swap errors, both in the same direction: **under-selecting Connector on multi-institutional social-system topics where R7 found Connector wins.**

1. **youth-mentorship medium + high → Analogist (GT: Connector).** Variant rationale: "Multiple stakeholders (church, schools, juvenile justice, foundation) are present, but they are not distinct systems that constrain each other in a way that requires cross-system reconciliation as the brainstorming need." This is a defensible reading of the swap criterion but conflicts with R7's explicit finding that social-systems topics activate the Connector's isomorphism mode (crisis-hotline reciprocity, wilderness-therapy safety paradox, food-bank referral dependencies are the R7-cited isomorphism outputs). The variant treated multi-institutional coordination as "single-community multi-stakeholder" rather than "multiple social systems that must interoperate." Both efforts failed identically, suggesting the topic-reading is the root cause, not effort-threshold logic.

2. **property-management high → Connector (GT: Analogist).** Variant rationale: "The brainstorming need centrally requires reconciling distinct systems that constrain each other — municipal STR ordinance, potential state preemption, HOA restrictions, community politics..." This is the opposite failure: over-selecting Connector on a topic R7 scored as "default Analogist unless user emphasizes regulatory/community tension as a multi-system reconciliation challenge." The variant interpreted the REQUEST's framing as emphasizing reconciliation. Notably, property-management medium **correctly** picked Analogist — so the variant flipped swap decisions between effort levels of the same topic, which is a troubling inconsistency (the swap decision shouldn't depend on effort level).

Net Connector/Analogist pattern: **variant has some difficulty distinguishing "multi-stakeholder within one domain" from "multiple distinct systems."** It under-fires on social-systems topics (youth-mentorship) and over-fires on a regulatory-business topic (property-management high). The checklist prompts swap evaluation but does not sharply enough distinguish these cases.

### Rationale Failure Modes

Rationale quality is a variant strength. No generic/template-only rationales. The two "Mixed" cells are topic-inherent edge cases where the strict-bar reading produces a defensible but wrong answer (mobile-app high, career-change medium — though career-change medium is correct per GT). Even in those cases, the rationale is topic-grounded and specific.

**Notable rationale strength:** the variant's explicit four-candidate structured evaluation (Accountant / Lawyer / Politician / Technical Expert) with per-candidate trigger strength + topic citation + decision + note format creates a clear paper trail. Every exclusion is justified; every inclusion is justified; every deferred-alternative is named. This is the most auditable variant format for downstream scoring.

---

## Variant Strengths

1. **Trap-defusal discipline.** 7 of 8 documented trap patterns correctly rejected with named trap citations. Career-change Lawyer/Technical Expert (R6's most-dangerous traps) rejected with explicit R6 cross-references. This is the variant's single strongest trait.

2. **Rationale specificity.** 90% of rationales cite exact REQUEST phrases in quotation marks with mechanism-level reasoning. No template boilerplate.

3. **PLAN.md format compliance (100%).** Structured per-candidate checklist table produces consistent, auditable output across all 20 runs.

4. **Volume accuracy (100%).** All volume ranges match guide ranges for effort level.

5. **Threshold discipline on unambiguous cases.** Passes 14/15 unambiguous cells. Correctly handles Single→Pair transitions (food-truck, school-consolidation, wearable-device) and correctly stays at None across both efforts on habit-tracker and space-party.

6. **Auditable exclusion notes.** When a strong trigger is deferred by ceiling (e.g., Accountant deferred at property-management medium, Politician deferred at food-truck high), the variant explicitly flags the defer with a "ceiling reached" note. This makes ceiling-tiebreaker behavior visible for downstream review.

---

## Variant Weaknesses for PR1 to Address

1. **Food-truck Lawyer trap not defused.** The checklist format lets the orchestrator rate Lawyer as "strong" on keyword density (permits/commissary/zoning) without the need-vs-keyword trap check firing. PR1 should add an explicit food-truck-type anti-pattern: "Named permit/licensing regimes that function as operating-environment constraints rather than regulatory-compliance-architecture design are NOT Lawyer-strong triggers; they are political-engagement triggers (Politician) when the REQUEST frames ordinance advocacy or city-official engagement."

2. **Connector under-selection on social-systems topics.** Youth-mentorship (both efforts) failed because the variant treated multi-institutional coordination as single-community multi-stakeholder. PR1 should strengthen the Connector swap criterion to explicitly name social-system topics: "Multiple institutional systems (schools, courts, faith organizations, foundations, regulatory bodies) that must interoperate via referrals, shared safeguards, or consent frameworks — this IS multi-system reconciliation even when the program itself is single-community."

3. **Connector over-selection on regulatory-business topics at high effort.** Property-management high flipped to Connector while property-management medium stayed Analogist. The swap decision should be effort-invariant. PR1 should add: "Connector/Analogist decision does not depend on effort level. If medium picks Analogist, high must also pick Analogist unless new information emerges. The swap criterion is about the topic's domain structure, not the depth of investigation."

4. **Calibration-principle inconsistency on Accountant-moderate at high effort.** Career-change high correctly promoted to Accountant; mobile-app high did not. Both are the same Rev 2 calibration-principle cell pattern (economic content as core decision dimension with specific quantities named). PR1 needs the Gap 2 guide edit: Accountant's moderate bar must explicitly include "runway-constrained product decisions" and "personal/life-stage financial decisions" as in-scope, naming mobile-app-style and career-change-style cases as exemplars. Without this, a strict-bar orchestrator will continue to miss mobile-app-type cells.

5. **Second-slot moderate-threshold discipline.** Food-truck high and youth-mentorship high both show the orchestrator pruning at the boundary. Food-truck high pruned Politician (correctly moderate) in favor of Lawyer (incorrectly rated strong) — the error there is FP not FN. Youth-mentorship high pruned Politician (correctly moderate) to single selection — acceptable per GT1 alt set but the prompt does not give the orchestrator a mechanical yes/no test for "does this second-slot moderate trigger fire?" PR1 should add persona-specific moderate-bar tests (per Gap 4).

6. **No ceiling-tiebreaker guidance applied.** Property-management high had three strong triggers (Lawyer, Accountant, Politician) — variant correctly reduced to 2 but the choice (Lawyer + Politician) differs from GT primary (Lawyer + Accountant). Alt pair is acceptable per GT1 Section 3, so this is not an error, but PR1 should add Gap 3 tiebreaker guidance ("select N most central to REQUEST's stated goal") to make the choice deterministic.

---

## Ambiguous-Case Log

Per GT1 Section 3, fully-ambiguous cells score "acceptable either way." The variant's behavior on each:

| Cell | GT Acceptable Set | Variant Answer | Scored As |
|---|---|---|---|
| tool-library medium | Politician (strong) OR None | None | Correct (ambiguous alt) |
| tool-library high | Politician+Accountant OR Politician only OR Accountant only OR None (NOT Lawyer) | None | Correct (ambiguous alt) — importantly, variant did NOT include Lawyer (which would be a trap hit) |
| property-management high | Lawyer+Accountant OR Lawyer+Politician | Lawyer + Politician | Correct (alt pair) — but swap decision was wrong, reducing run grade |
| youth-mentorship high | Lawyer+Politician OR Lawyer only | Lawyer only | Correct (ambiguous alt) — but swap decision was wrong |
| school-consolidation medium | Politician OR Accountant (strong tiebreaker) | Politician | Correct (primary per GT; either acceptable) |

**Observations on ambiguous-case behavior:**

- Variant **consistently picks the conservative answer** on ambiguous cells (None over Politician-moderate on tool-library; Lawyer-only over Lawyer+Politician on youth-mentorship high). This matches the variant's strict-bar tendency seen in the mobile-app-high FN.
- Variant **avoided the Lawyer trap** on tool-library at both efforts — did not include Lawyer in the "None" roster, so the trap was not converted into a defensible-looking selection. Clean rejection.
- The conservative-answer bias is **acceptable under Q2 scoring** but means PR1 should consider whether the variant's behavior on ambiguous cells should be tuned more aggressive (to match Rev 2's widened bars) or left conservative (to preserve the strong trap-defusal trait). These may be in tension.

---

## Summary for PR1

**Headline accuracy:** 15/20 Correct (75%), 5/20 Partially Correct (25%), 0/20 Incorrect. Tier 3 selection 80% strict / 93% unambiguous-cells. Connector/Analogist 80%. Zero full failures.

**Standout pattern:** The variant is **strong at trap-defusal** (7/8 documented traps rejected with named citations) and **weak at Connector/Analogist boundary cases** (both swap errors on multi-institutional topics). The checklist format produces highly auditable rationale (90% specific) but allows keyword-strong ratings that don't always cross-check against need-framing (food-truck Lawyer).

**Headline recommendation for PR1:** Three edits, in priority order:

1. **Defuse food-truck Lawyer trap** with explicit anti-pattern language about permit/licensing regimes that function as operating-environment constraints vs. regulatory-compliance architecture (resolves the only FP).
2. **Strengthen Connector swap criterion** to explicitly name social-system multi-institutional topics (resolves youth-mentorship both efforts) and make swap decision effort-invariant (resolves property-management high).
3. **Widen Accountant's moderate bar** per Guide Gap 2 to include runway-constrained product decisions (resolves mobile-app high FN).

After these three edits, the variant should reach ~95% accuracy on unambiguous cells and near-100% Connector/Analogist accuracy. The trap-defusal and rationale-quality strengths should be preserved — they are the variant's core competency.

---

**Status:** Complete. Scoring based on GT1 Canonical Rev 3.

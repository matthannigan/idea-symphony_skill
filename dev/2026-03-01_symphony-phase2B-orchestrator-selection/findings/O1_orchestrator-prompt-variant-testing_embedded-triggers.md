# O1 Variant Scoring: O-V2_embedded-triggers

**Runs scored:** 20 (10 topics × 2 effort levels)
**Ground truth source:** ground-truth/expected-assignments.md (Canonical Rev 3)
**Scored against:** GT1 ambiguity/trap guidance (findings/GT1_ground-truth-assignments.md)
**Date:** 2026-04-18

---

## Aggregate Metrics

### Headline numbers

| Metric | Value | Notes |
|---|---|---|
| Overall run grade — Correct | 10 / 20 (50%) | All elements match GT or ambiguous-acceptable |
| Overall run grade — Partially Correct | 8 / 20 (40%) | Single error (usually Connector/Analogist) |
| Overall run grade — Incorrect | 2 / 20 (10%) | mobile-app high, habit-tracker high |
| **Tier 3 selection accuracy** | **17 / 20 (85%)** | Counting ambiguous-acceptable as correct |
| Tier 3 strict match (primary answer only) | 13 / 20 (65%) | Ignoring ambiguous alts |
| **Connector/Analogist accuracy** | **7 / 10 (70%)** | 3 misses: youth-mentorship, mobile-app (both efforts for mobile-app) |
| False-positive rate (non-ambiguous traps hit) | 1 / 20 (5%) | habit-tracker high → Accountant |
| False-negative rate | 2 / 20 (10%) | mobile-app high Accountant, career-change high Accountant |
| Threshold sensitivity (correct med-vs-high differentiation) | 6 / 8 threshold-sensitive topics | Missed both None→Single calibration cells |
| Volume accuracy | 20 / 20 (100%) | Volume ranges match guide defaults |
| PLAN.md format compliance | 20 / 20 (100%) | All sections present, consistent structure |

### Rationale quality distribution

| Quality | Count | % |
|---|---|---|
| Specific (topic-grounded citations, rejects traps by name) | 18 | 90% |
| Mixed | 2 | 10% |
| Generic | 0 | 0% |

Rationales are consistently topic-specific with direct REQUEST citations. The variant frequently names false-positive traps explicitly ("explicit false-positive trap," "career-change and legal-career false-positive traps are applied"). Mixed cases are the two where rationale explicitly misapplies a rule (mobile-app high rejecting Accountant as "runway is a timing constraint, not a financial-structure-central topic" — a Rev 1-era rubric reading that GT1 Rev 2 has reversed under the calibration principle).

### Effort-level split (per GT1 Decision 4A)

| Effort | Correct | Partially Correct | Incorrect |
|---|---|---|---|
| Medium (10) | 7 | 3 | 0 |
| High (10) | 3 | 5 | 2 |

High-effort cells carry most of the variance: the calibration-principle promotion (None → Accountant-moderate) at mobile-app high and career-change high is missed entirely.

---

## Per-Run Score Table

Legend: ✓ = correct • A = ambiguous-acceptable (scored correct per Q2) • FN = false negative • FP = false positive • W = wrong

| # | Topic | Effort | GT Tier 3 | V2 Tier 3 | Tier 3 | C/A GT | C/A V2 | C/A | Threshold | Rationale | Grade |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | habit-tracker | M | None | None | ✓ | Analogist | Analogist | ✓ | ✓ | Specific | **Correct** |
| 2 | habit-tracker | H | None | Accountant (mod) | FP | Analogist | Analogist | ✓ | FP | Specific-but-wrong | **Incorrect** |
| 3 | space-party | M | None | None | ✓ | Analogist | Analogist | ✓ | ✓ | Specific | **Correct** |
| 4 | space-party | H | None | None | ✓ | Analogist | Analogist | ✓ | ✓ | Specific | **Correct** |
| 5 | tool-library | M | Politician (alt: None) | None | A | Analogist | Analogist | ✓ | A | Specific | **Correct** |
| 6 | tool-library | H | Pol + Acct (alt: Acct only) | Accountant (mod) | A | Analogist | Analogist | ✓ | A | Specific | **Correct** |
| 7 | food-truck | M | Accountant | Accountant | ✓ | Analogist | Analogist | ✓ | ✓ | Specific | **Correct** |
| 8 | food-truck | H | Acct + Politician | Acct + Politician | ✓ | Analogist | Analogist | ✓ | ✓ | Specific | **Correct** |
| 9 | property-mgmt | M | Lawyer | Lawyer | ✓ | Analogist | Analogist | ✓ | ✓ | Specific | **Correct** |
| 10 | property-mgmt | H | Law + Acct (alt: Law + Pol) | Law + Pol | A | Analogist | Analogist | ✓ | A | Specific | **Correct** |
| 11 | youth-mentorship | M | Lawyer | Lawyer | ✓ | **Connector** | Analogist | W | ✓ | Specific | **Partial** |
| 12 | youth-mentorship | H | Law + Pol (alt: Law only) | Lawyer | A | **Connector** | Analogist | W | A | Specific | **Partial** |
| 13 | school-consolidation | M | Politician (alt: Acct) | Politician | ✓ | Connector | Connector | ✓ | ✓ | Specific | **Correct** |
| 14 | school-consolidation | H | Pol + Acct | Acct + Pol | ✓ | Connector | Connector | ✓ | ✓ | Specific | **Correct** |
| 15 | mobile-app | M | None | None | ✓ | **Connector** | Analogist | W | ✓ | Specific | **Partial** |
| 16 | mobile-app | H | Accountant (mod) | None | FN | **Connector** | Analogist | W | FN | Mixed | **Incorrect** |
| 17 | wearable-device | M | Technical Expert | Technical Expert | ✓ | Connector | Connector | ✓ | ✓ | Specific | **Correct** |
| 18 | wearable-device | H | TE + Lawyer | TE + Lawyer | ✓ | Connector | Connector | ✓ | ✓ | Specific | **Correct** |
| 19 | career-change | M | None | None | ✓ | Connector | Connector | ✓ | ✓ | Specific (rejected Lawyer trap) | **Correct** |
| 20 | career-change | H | Accountant (mod) | None | FN | Connector | Connector | ✓ | FN | Mixed | **Partial** |

---

## Error Pattern Analysis

### Systematic false negatives — Accountant calibration-principle miss (2/2 hits)

The variant consistently rejects Accountant at the moderate threshold when the financial content is **personal-scale or runway-constrained** rather than business-structure-central. Both cells that exercise the GT1 Rev 2 calibration-principle promotion (None→Single at high effort) are missed:

- **mobile-app high:** Rejects Accountant with the rationale "Runway is a timing constraint, not a financial-structure dimension." This is exactly the Rev 1-era rubric reading that GT1 Gap 2 identifies as contradicting the Accountant persona's own calibration instruction.
- **career-change high:** Rejects Accountant with "personal-finance decision-exploration ... not the unit economics, revenue models, pricing strategy, or organizational financial architecture that a STRONG Accountant trigger requires." Confuses STRONG threshold with MODERATE threshold — at high effort moderate+ should qualify, and GT1 judges the $22K loans / $45K savings / 3-year income gap / LRAP content as definitively moderate.

**Mechanism:** The embedded trigger rules in V2 appear to encode the narrow "financial structure central" bar from the selection guide verbatim and do NOT reflect the persona-text calibration principle. This is exactly the guide-vs-persona contradiction that GT1 Gap 2 queues for PR1.

### Systematic Connector/Analogist failures (3/10)

V2 defaults to Analogist aggressively and misses 3 of 5 Connector cases:

- **youth-mentorship M & H:** Judges multi-institutional (faith org + schools + juvenile justice + volunteer management) as "single-domain program design." R7 explicitly names this topic as Connector-wins on social-systems isomorphism. V2 collapses multi-institutional social systems into "one primary domain (youth-serving program design)."
- **mobile-app M & H:** Judges "one product, one team, one codebase" as single-domain. GT/R7: multiple stakeholder systems (users, team, investors, codebase) with structurally linked problems (retention + burnout isomorphism). V2 misses the cross-stakeholder-system reading.

**What V2 correctly swaps to Connector:** school-consolidation, wearable-device, career-change. These are cases where the REQUEST language makes the cross-system reconciliation unmistakable (three districts; multi-disciplinary ML+power+regulatory; "career transition across fields"). V2's Connector discrimination is **surface-language-anchored**, not system-structure-anchored.

### False-positive trap behavior

**Traps correctly rejected:**
- career-change Lawyer (medium and high) — explicitly named as "classic career-change false-positive trap" in rationale; strong performance on the top-priority trap from GT1.
- career-change Technical Expert — rejected.
- tool-library Lawyer (both efforts) — rejected on "no specific regulatory framework named" reasoning.
- food-truck Lawyer — rejected; correctly framed as political engagement rather than compliance architecture.
- mobile-app Technical Expert (both efforts) — explicitly names "mobile app" + "technical debt" as trap keywords; rejects on "no genuine engineering tradeoffs."
- habit-tracker Technical Expert (both efforts) — rejects generic "modern JS framework + cloud backend" as trap.
- space-party both traps (Accountant budget, Lawyer safety) — rejected with explicit trap-name citations.

**Trap hit (1):**
- **habit-tracker high Accountant** — the Rev 2-added counter-guardrail trap. V2 fires Accountant (moderate) on "monetization without undermining user experience" in the REQUEST, labeling it a "meaningful secondary dimension." GT1 Decision 6A flags this specifically: monetization as a bullet-list concern in a 3-month solo-dev MVP is NOT a moderate-depth Accountant trigger; economic content must be a *core decision dimension*, not a mentioned concern. This is the first instance where V2's calibration-principle widening (correctly applied at tool-library high) fails — it over-widens here.

**Observation:** V2's trap-rejection behavior is strong on the pre-Rev 1 traps (Lawyer, Technical Expert) but fails on the Rev 2 Accountant counter-guardrail. The prompt appears to lack a habit-tracker-style "mentioned concern vs. core decision dimension" distinction for Accountant moderate.

### Rationale failure modes

- **Specific-but-wrong** (habit-tracker high): Well-grounded citation, well-structured reasoning, but the trigger-strength judgment is wrong. Prompt-design implication: rationale quality alone is not sufficient — the prompt needs a sharper moderate-trigger discipline test for Accountant (GT1 Gap 4).
- **Mixed** (mobile-app high, career-change high): Rationale acknowledges the financial content as a candidate but rejects it on strong-trigger grounds, ignoring that high-effort requires only moderate+. This reads like the prompt's threshold logic got shortcut: candidate reaches moderate but is measured against strong.

### Threshold sensitivity

V2 correctly applies strong-only at medium across all 10 medium cells. At high:
- Correctly adds a second persona in 3 of 6 Single→Pair cells (food-truck, property-management, school-consolidation, wearable-device — all 4 clean strong+moderate or strong+strong). Miss on youth-mentorship high (Politician moderate) is ambiguous-acceptable.
- **Misses both None→Single calibration cells** (mobile-app, career-change). This is the clearest structural weakness — the threshold behavior the GT1 Rev 2 pass was specifically designed to test.

---

## Variant Strengths

1. **Clean Tier 1 / Tier 2 roster reproduction.** All 20 runs produce the correct Tier 1 persona list with correct volume ranges, and all 10 high-effort runs produce correct Tier 2 additions. Zero format/roster errors.

2. **Explicit trap-name citations in rationale.** The embedded-trigger approach produces rationales that cite trap names directly ("explicit false-positive trap," "career-change and legal-career false-positive traps"). This makes the reasoning auditable and indicates the traps are load-bearing in the prompt, not decorative.

3. **Strong career-change Lawyer trap rejection.** The top-priority trap from GT1 (Section 6) is handled cleanly at both effort levels with specific rationale distinguishing "target career" from "regulatory exposure in the brainstorm."

4. **Strong strong-trigger detection on canonical cases.** Food-truck Accountant, property-management Lawyer, youth-mentorship Lawyer, school-consolidation Politician, wearable-device Technical Expert — all the R6-documented strong-trigger exemplars are cleanly identified with dense REQUEST citations.

5. **Correct Connector calls on language-explicit swap cases.** school-consolidation, wearable-device, career-change all correctly swap. When R7's swap criteria appear in the REQUEST surface language (multi-district merger, multi-disciplinary hardware+ML+regulatory, "career transition"), V2 catches them.

6. **Tiebreaker reasoning on multi-strong-trigger topics.** property-management high (3 strong triggers → 2 slot ceiling) and school-consolidation medium (2 strong → 1 slot) both produce explicit tiebreaker rationale that matches GT1's decision-process-centrality logic. V2 picks (Lawyer+Politician) vs. GT (Lawyer+Accountant) on property-management high — ambiguous-acceptable and substantively defended.

7. **Volume accuracy perfect.** All 20 runs produce volume ranges consistent with guide defaults, including the Tier 2 "append 3-5" pattern.

---

## Variant Weaknesses for PR1 to Address

### 1. Accountant calibration-principle gap (highest priority)

**Cells affected:** mobile-app high (FN), career-change high (FN). 2/20 cells = 10% direct hit; but these are the 2 cells specifically designed to test Rev 2's calibration-principle promotion.

**Root cause:** The embedded triggers treat Accountant's "financial structure central" as a binary strong-trigger test at both effort levels. When the test fails (personal-scale finance, runway-constraint finance), the variant returns None rather than promoting to moderate at high effort.

**PR1 direction (aligns with GT1 Gap 2):** Embed an explicit moderate-depth Accountant test for personal-finance-life-decisions and runway-constrained-product-decisions. The moderate bar should read something like "economic content is a core decision dimension, even in personal or runway contexts — explicit dollar ranges, opportunity cost, runway math — not merely a mentioned concern." Pair with the counter-guardrail (item 2 below) to prevent over-widening.

### 2. Accountant over-fire on mentioned-concern monetization (habit-tracker Accountant trap)

**Cell affected:** habit-tracker high (1/20 = 5%, FP).

**Root cause:** The variant's moderate-trigger language is permissive enough to fire on "Monetization without undermining user experience" as a bullet in a 5-consideration list. GT1 Decision 6A adds this as a new trap specifically to guard against the Rev 2 widening.

**PR1 direction:** Add an explicit counter-guardrail distinguishing "mentioned concern" from "core decision dimension." Proposed test: "does the REQUEST name specific dollar ranges, unit-economics targets, pricing decisions, runway math, or revenue-model questions that must be answered as deliverables?" If only bullet-listed as a concern, moderate does not fire.

### 3. Connector swap under-detection on multi-institutional social systems and multi-stakeholder product systems

**Cells affected:** youth-mentorship M, youth-mentorship H, mobile-app M, mobile-app H (3 of 10 topics miss; 4/20 cells).

**Root cause:** V2 collapses multi-institutional social systems ("faith org + schools + juvenile justice") into single-domain "program design." V2 collapses multi-stakeholder product systems ("users + team + investors + codebase") into single-domain "product strategy." The swap criterion appears to be anchored on surface-language markers ("merger," "transition," "multi-disciplinary hardware") rather than on system-structure markers.

**PR1 direction:** Rewrite the Connector swap criterion to list social-systems interoperability (referral pipelines across institutions, consent frameworks that span multiple bodies) and multi-stakeholder structural isomorphism (retention-and-burnout as one problem in two groups) as in-scope swap cases, with youth-mentorship and mobile-app as explicit examples. Aligns with R7's finding that "social-systems topics activate isomorphism preferentially."

### 4. Threshold logic confuses strong vs. moderate at high effort

**Cells affected:** mobile-app high, career-change high — both reject moderate candidates on strong-only grounds.

**Root cause:** The rationale at both cells literally measures a moderate candidate against the strong-trigger definition ("the unit economics, revenue models, pricing strategy, or organizational financial architecture that a STRONG Accountant trigger requires"). At high effort the threshold is moderate+, not strong.

**PR1 direction:** Make the effort-threshold distinction explicit in the Tier 3 evaluation loop — "At medium, reject below strong; at high, accept at moderate+." Consider forcing a two-pass evaluation: (a) does this rise to strong? → (b) if no and effort=high, does it rise to moderate?

### 5. Mixed handling of "soft-boundary" moderate second slots

**Cells affected:** food-truck high (correctly fires Politician as second moderate — good), youth-mentorship high (rejects Politician moderate — ambiguous-acceptable per GT1, so not an error, but aligns with a broader pattern of under-firing moderate triggers).

**PR1 direction:** Complements items 1 and 4. A sharper moderate-trigger per-persona test (GT1 Gap 4) should make the second-slot decision mechanical rather than judgment-driven.

---

## Ambiguous-Case Log

Per Q2, ambiguous cells are scored as acceptable-either-way. This log records what V2 chose and on which ambiguity axis:

| Cell | GT1 Ambiguity | V2 Choice | Scored |
|---|---|---|---|
| tool-library M | Politician-strong vs. None | None | Acceptable (Answer B) |
| tool-library H | Politician+Accountant vs. Accountant-only vs. Politician-only vs. None | Accountant only | Acceptable (Answer B sub-variant) |
| property-management H | Lawyer+Accountant (primary) vs. Lawyer+Politician | Lawyer+Politician | Acceptable (Answer B). Rationale: "Accountant ... covers financial mechanics that Tier 1 Analyst and Tier 2 First Principles Thinker can meaningfully address, whereas Lawyer and Politician represent domain expertise that no other roster persona substitutes for." Substantive tiebreaker reasoning matches GT1 Gap 3's proposed "most central to REQUEST's stated goal" logic. |
| youth-mentorship H | Lawyer+Politician (primary) vs. Lawyer-only | Lawyer only | Acceptable (Answer B) |
| school-consolidation M | Politician (primary) vs. Accountant | Politician | Acceptable — matches primary |

**Total ambiguous cells:** 5 / 20 (25%, matching GT1's ambiguity rate)
**V2 hits on primary answer within ambiguous cells:** 1 / 5 (school-consolidation M)
**V2 hits on an acceptable alt within ambiguous cells:** 4 / 5

V2 tends to pick the narrower / more conservative answer in ambiguous cells (None when Politician-strong is the primary; Accountant-only when the pair is the primary). This is consistent with the broader pattern of under-firing moderate triggers.

---

## Headline Summary

**Overall accuracy:** 50% Correct, 40% Partially Correct, 10% Incorrect. **Tier 3 accuracy 85%** when ambiguous alts count as correct. **Connector/Analogist accuracy 70%.**

**Two standout error patterns:**

1. **Accountant calibration-principle is not encoded.** The variant treats "financial structure central" as a binary gate at both effort levels, causing it to miss both None→Single calibration cells (mobile-app high, career-change high) AND over-fire on a bullet-list monetization mention (habit-tracker high). These three cells together (mobile-app H FN, career-change H FN, habit-tracker H FP) are the variant's weakest cluster and directly map onto GT1 Gap 2 and Decision 6A.

2. **Connector swap is anchored on surface language, not system structure.** The variant catches language-explicit swap cases (school-consolidation, wearable-device, career-change) but collapses multi-institutional social systems (youth-mentorship) and multi-stakeholder product systems (mobile-app) into "single-domain with facets." 4 of 20 cells miss on this axis.

**Headline recommendation for PR1:**

Priority 1 — Rewrite the embedded Accountant trigger rules to encode the calibration principle: (a) moderate fires on personal-finance life-decisions and runway-constrained product decisions with specific dollar/time content, (b) counter-guardrail rejects bullet-list monetization mentions with no dollar content. This single change would resolve 3 of the variant's worst cells (mobile-app H, career-change H, habit-tracker H).

Priority 2 — Rewrite the Connector swap criterion to include social-systems interoperability and multi-stakeholder structural isomorphism, with youth-mentorship and mobile-app as explicit example cases. This would resolve the remaining 4 Connector misses and lift C/A accuracy from 70% toward 100%.

Priority 3 — Add an explicit "at high effort accept moderate+, not strong-only" check in the Tier 3 evaluation loop to prevent threshold confusion.

With just Priority 1 and 2 addressed, V2's overall grade would move from 50%/40%/10% to ~75%/20%/5% and Tier 3 accuracy would clear the 90% mark. The foundation is strong — rationale quality, format compliance, volume accuracy, and trap rejection on pre-Rev 2 cases are all working well — but the Rev 2 calibration-principle additions and the system-structure Connector discrimination need prompt-level reinforcement.

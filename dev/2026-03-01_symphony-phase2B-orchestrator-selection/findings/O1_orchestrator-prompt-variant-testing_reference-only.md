# O1 Variant Scoring: O-V1_reference-only

**Runs scored:** 20 (10 topics × 2 effort levels)
**Ground truth source:** ground-truth/expected-assignments.md (Canonical Rev 3)
**Scored:** 2026-04-18

---

## Aggregate Metrics

| Metric | Value | Denominator | Notes |
|---|---|---|---|
| **Tier 3 selection accuracy** | **85%** (17 / 20) | 20 runs | Ambiguous cells scored acceptable-either-way per Q2. Incorrect: habit-tracker_high (FP), tool-library_high (trap + FN), mobile-app_high (trap + FN). |
| **Connector/Analogist accuracy** | **70%** (7 / 10) | 10 topics | Same decision applied across both efforts per topic. Missed swaps: youth-mentorship, mobile-app, wearable-device (all 3 under-swap — stayed Analogist when ground truth calls for Connector). |
| **False positive rate** | **3 spurious Tier 3 selections** | across 20 runs | habit-tracker_high → Accountant; tool-library_high → Lawyer; mobile-app_high → Technical Expert. 2 of 3 are documented false-positive traps. |
| **False negative rate** | **10%** (2 / 20 expected Tier 3 slots) | 20 primary expected slots across 10 topics × 2 efforts | tool-library_high missed Politician; mobile-app_high missed Accountant. |
| **Threshold sensitivity** | **75%** (6 / 8) | 8 threshold-sensitive topics | Correct shift on: food-truck, property-management, youth-mentorship (alt-acceptable), school-consolidation, wearable-device, career-change. Incorrect shift on: tool-library (shifted but into trap territory), mobile-app (shifted to wrong persona). |
| **Rationale quality** | 100% **Specific** | 20 runs | Every run quotes specific REQUEST content (Key Considerations, dollar figures, named frameworks). Zero templated/generic rationales observed. |
| **Volume accuracy** | **100%** | All Tier 1/2/3 assignments | All volumes match Effort Level Mapping exactly (Questioner 10-15 M / 15-20 H; DA 8-12 M / 10-15 H; Accountant 8-12; Lawyer/Politician/TE 8-10; Tier 2 ranges correct; Perspective 5-of-5-8 at medium, 5-8 at high). |
| **PLAN.md format compliance** | **100%** (20 / 20) | 20 runs | All runs produce full template: Tier 1 table, Tier 2 table (or N/A at medium), Tier 3 table/None-line, Connector/Analogist rationale, per-persona Tier 3 rationale, Notes block. |

### Effort-level split (per GT1 Decision 4A)

| Metric | Medium | High |
|---|---|---|
| Tier 3 correct | 10 / 10 (100%) | 7 / 10 (70%) |
| Connector/Analogist correct | 7 / 10 | 7 / 10 |

High-effort is where the variant breaks — all three Tier 3 errors are on high-effort cells. Medium-effort Tier 3 selection is perfect (all 10/10 correct, including both ambiguous cells scored acceptable).

---

## Per-Run Score Table

| # | Topic | Effort | Tier 3 Selected | GT Primary (alt) | Tier 3 Verdict | Connector/Analogist | Threshold | Rationale | Volume | Format | Overall |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | habit-tracker | medium | None | None | Correct | Correct (Analogist) | — | Specific | ✓ | ✓ | **Correct** |
| 2 | habit-tracker | high | Accountant | None | **FP (trap)** | Correct (Analogist) | — | Specific | ✓ | ✓ | **Incorrect** |
| 3 | space-party | medium | None | None | Correct | Correct (Analogist) | — | Specific | ✓ | ✓ | **Correct** |
| 4 | space-party | high | None | None | Correct | Correct (Analogist) | — | Specific | ✓ | ✓ | **Correct** |
| 5 | tool-library | medium | None | Politician (alt: None) | Correct (ambig) | Correct (Analogist) | — | Specific | ✓ | ✓ | **Correct** |
| 6 | tool-library | high | Accountant + Lawyer | Politician + Accountant (alts: Politician only / Accountant only / None; **Lawyer trap — not in acceptable set**) | **FP (Lawyer trap) + FN (Politician)** | Correct (Analogist) | Incorrect (shifted None→roster but into trap) | Specific | ✓ | ✓ | **Incorrect** |
| 7 | food-truck | medium | Accountant | Accountant | Correct | Correct (Analogist) | Correct M | Specific | ✓ | ✓ | **Correct** |
| 8 | food-truck | high | Accountant + Politician | Accountant + Politician | Correct | Correct (Analogist) | Correct shift | Specific | ✓ | ✓ | **Correct** |
| 9 | property-management | medium | Lawyer | Lawyer | Correct | Correct (Analogist) | Correct M | Specific | ✓ | ✓ | **Correct** |
| 10 | property-management | high | Lawyer + Politician | Lawyer + Accountant (alt: Lawyer + Politician) | Correct (ambig alt) | Correct (Analogist) | Correct shift | Specific | ✓ | ✓ | **Correct** |
| 11 | youth-mentorship | medium | Lawyer | Lawyer | Correct | **Wrong (Analogist; should be Connector)** | Correct M | Specific | ✓ | ✓ | **Partially Correct** |
| 12 | youth-mentorship | high | Lawyer only | Lawyer + Politician (alt: Lawyer only) | Correct (ambig alt) | **Wrong (Analogist; should be Connector)** | Correct (alt-acceptable) | Specific | ✓ | ✓ | **Partially Correct** |
| 13 | school-consolidation | medium | Politician | Politician (primary; Accountant also strong) | Correct | Correct (Connector) | Correct M | Specific | ✓ | ✓ | **Correct** |
| 14 | school-consolidation | high | Politician + Accountant | Politician + Accountant | Correct | Correct (Connector) | Correct shift | Specific | ✓ | ✓ | **Correct** |
| 15 | mobile-app | medium | None | None | Correct | **Wrong (Analogist; should be Connector)** | — | Specific | ✓ | ✓ | **Partially Correct** |
| 16 | mobile-app | high | Technical Expert | Accountant (moderate) | **FP (Technical Expert trap) + FN (Accountant)** | **Wrong (Analogist; should be Connector)** | Incorrect (wrong persona promoted) | Specific | ✓ | ✓ | **Incorrect** |
| 17 | wearable-device | medium | Technical Expert | Technical Expert | Correct | **Wrong (Analogist; should be Connector)** | Correct M | Specific | ✓ | ✓ | **Partially Correct** |
| 18 | wearable-device | high | Technical Expert + Lawyer | Technical Expert + Lawyer | Correct | **Wrong (Analogist; should be Connector)** | Correct shift | Specific | ✓ | ✓ | **Partially Correct** |
| 19 | career-change | medium | None | None | Correct | Correct (Connector) | Correct M | Specific | ✓ | ✓ | **Correct** |
| 20 | career-change | high | Accountant | Accountant (moderate) | Correct | Correct (Connector) | Correct shift | Specific | ✓ | ✓ | **Correct** |

**Overall-grade distribution:** Correct = 12 / 20 (60%); Partially Correct = 5 / 20 (25%); Incorrect = 3 / 20 (15%).

---

## Error Pattern Analysis

### Systematic false positives

**High-effort over-selection under calibration-principle pressure.** All 3 Tier 3 false positives are at high effort, and all 3 appear on topics where the variant reached for a "second trigger" when the ground truth stayed None or pointed to a different persona:

1. **habit-tracker_high → Accountant (trap hit, Section 6 Decision 6A).** The variant explicitly cited "Monetization without undermining user experience" as justification. This is exactly the Rev 2 counter-guardrail trap: the word "monetization" in a Key Considerations list is not a core decision dimension for a 3-month MVP of a habit-tracker. The variant's rationale says "unit economics of subscription/freemium models matter for a solo developer" — but the REQUEST describes no subscription/freemium model. The variant extrapolated from a keyword.

2. **tool-library_high → Lawyer (classic trap, Section 6 row 6).** The variant cited "Liability and safety concerns" from Key Considerations. Ground truth explicitly excludes Lawyer from the acceptable set at either effort level — no named regulatory framework, no statutory regime, Devil's-Advocate-depth risk. The variant triggered on the word "liability" rather than on regulatory-architecture need.

3. **mobile-app_high → Technical Expert (the most dangerous trap in the set).** The variant cited "Technical debt implications of removing deeply integrated features" plus "15 features ... 6 navigation tabs" and "6-engineer team" — reading product-engineering-management content as architectural. Rationale includes "feature-removal from a mature codebase is a genuine engineering-tradeoff problem" — the exact paradigm-reinforcement pattern R6 documented.

**No false positives at medium effort.** The strong-trigger bar holds cleanly at medium — the variant knows to restrict to strong triggers and does so correctly in all 10 medium-effort cells. The failures are purely high-effort moderate-bar discipline failures.

### Systematic false negatives

**Only 2 false negatives, both co-occurring with high-effort trap hits:**

1. **tool-library_high — missed Politician.** The variant rated Politician "none" ("community buy-in is not governance"). This is the Gap 1 ambiguity the ground truth flags — Politician's strong-trigger bar reads tight on community-stakeholder topics. The variant took the strict reading. Not a rubric failure per se, but paired with the Lawyer trap hit it produces a doubly-wrong roster.

2. **mobile-app_high — missed Accountant.** The variant rated Accountant "moderate, exclude" explicitly on the grounds that "the REQUEST frames the problem as product simplification, not as financial structure." This is the exact Gap 2 failure mode: the variant applied the guide's narrow "financial structure central" gate and excluded Accountant even though runway + unit-economics (180K downloads, 8% retention, 2% DAU/MAU, 8-month funding) are core decision axes. The calibration-principle moderate promotion did not fire.

**No false negatives at medium effort.** Strong-trigger detection is sharp.

### False-positive trap behavior

| Trap (per GT1 Section 6) | Outcome | Notes |
|---|---|---|
| career-change → Lawyer (PR1 priority #1) | **REJECTED** | Variant explicitly cites the guide's "partial false positive" language. Clean reject at both efforts. |
| career-change → Technical Expert | **REJECTED** | Variant cites "legacy code"/"system rewrites" cognitive cage warning. Clean reject at both efforts. |
| habit-tracker → Technical Expert | **REJECTED** | Variant correctly filters on "genuine engineering tradeoffs vs. modern JS framework + cloud backend." Clean reject at both efforts. |
| habit-tracker → Accountant (Rev 2 counter-guardrail) | **TRAP HIT at high effort** | Variant over-expanded "monetization" keyword into full Accountant inclusion. Medium-effort hold was clean (excluded correctly); high-effort moderate bar collapsed. |
| mobile-app → Technical Expert (PR1 priority #2) | **TRAP HIT at high effort** | Most dangerous trap in the set. Variant produced the exact R6-documented paradigm-reinforcement failure — technical-debt language read as architectural. |
| tool-library → Lawyer | **TRAP HIT at high effort** | Liability keyword triggered selection despite no named regulatory framework. |
| food-truck → Lawyer | **REJECTED** | Variant correctly distinguishes "political engagement with regulators" from "regulatory compliance architecture." |

**Trap score: 4 rejected / 3 hit.** The 3 hits form a coherent pattern — high-effort moderate-threshold weakness on topics where a Tier 3 keyword appears in a Key Considerations list but the underlying brainstorm frames the content at Devil's-Advocate/Analyst depth. The career-change Lawyer trap (GT1's named #1 priority) is rejected cleanly, which is the strongest signal: the variant can reject a strong-keyword trap when the R6/guide documentation is explicit, but cannot reject a subtler trap (habit-tracker Accountant, mobile-app Technical Expert, tool-library Lawyer) where the keyword maps to a plausible-sounding moderate trigger.

### Connector/Analogist failure modes

**Under-swap pattern (3 of 5 Connector calls missed — 60% miss rate on the Connector side).** All three errors are under-swaps (stayed Analogist when Connector was called for). No over-swaps observed.

| Topic | Variant | Ground Truth | Variant's Stated Reasoning |
|---|---|---|---|
| youth-mentorship | Analogist | Connector | "Single-domain social program... school referrals, juvenile justice referrals, and congregational volunteer pools are partner inputs into one program, not separate domains being merged." Variant does not recognize faith org + schools + juvenile justice + volunteer management as multiple social systems needing interoperability. |
| mobile-app | Analogist | Connector | "Single primary domain (one mobile app, one team, one user base)." Variant does not recognize users/team/investors/codebase as structurally-linked constraint systems. |
| wearable-device | Analogist | Connector | "Single primary domain (health-monitoring wearable hardware/ML system)." Variant does not recognize hardware + ML + privacy + regulatory-pathway as distinct systems whose constraints interact — despite R7's "cluster-mode alignment is cleanest in the dataset" call on this topic. |

**Failure pattern:** Variant interprets "single primary domain" very broadly — any topic with one business or one product is read as single-domain, even when multiple technical/institutional subsystems must reconcile. The guide's Connector-swap language ("bridging, merging, or reconciling distinct systems that constrain each other") is not operationalized tightly enough for the variant to recognize intra-product or intra-program multi-system constraints. Career-change and school-consolidation (where the multi-system framing is explicit in the REQUEST — "nursing → law" career bridge, "three districts → one district" merger) swap correctly; the three failures are on topics where the multi-system structure is present but requires reading the REQUEST's considerations as *components of* a multi-system reconciliation rather than surface domain labels.

### Rationale failure modes

**None observed.** All 20 rationales are topic-specific, quote or paraphrase REQUEST content with specificity (dollar figures, named frameworks, specific Key Considerations bullets), and cite guide text when applying specific decision rules. Zero templated/generic language, zero paradigm-reinforcement rationale for correct decisions. Notably, even the incorrect decisions (the 3 trap hits) produce specific-language rationales — the failure is in the *decision* itself, not in rationale texture. This matters for PR1: the variant isn't failing because it's pattern-matching generically; it's failing because the prompt doesn't give it sharp enough yes/no tests for the specific cases that break it.

---

## Variant Strengths

1. **Perfect medium-effort Tier 3 selection.** 10/10 medium cells correct, including both ambiguous cells. Strong-trigger detection and strong-only threshold enforcement are rock-solid.
2. **Perfect volume accuracy.** All 20 runs match the Effort Level Mapping exactly across Tier 1/2/3. The reference-only prompt successfully transmits the persona-selection-guide's volume tables.
3. **Perfect PLAN.md format compliance.** 20/20 follow the Phase 4 template (including Tier 1 table, Tier 2 table or N/A, Tier 3 table or None-line, Connector/Analogist rationale, per-persona Tier 3 rationale, Notes block).
4. **Rationale quality — 100% specific.** Every decision is grounded in specific REQUEST content. This is an unambiguous win that PR1 should not regress.
5. **Career-change Lawyer trap — clean rejection.** GT1's named #1 priority trap is defused at both efforts. Variant cites the guide's documented false-positive language explicitly.
6. **Career-change Technical Expert trap — clean rejection.** Variant cites the "legacy code / system rewrites" cognitive-cage language.
7. **Habit-tracker Technical Expert trap — clean rejection.** Variant filters "modern JS framework + cloud backend" as conventional rather than architectural.
8. **Food-truck Lawyer trap — clean rejection.** Variant correctly distinguishes political-engagement-with-regulators from regulatory-compliance-architecture.
9. **Correct Connector swap on career-change and school-consolidation** — the two topics where the multi-system framing is explicit in the REQUEST.
10. **Wearable-device and property-management roster correctness** despite wearable-device's missed Connector swap — the variant gets the Tier 3 call right in both cases, including the two-strong-trigger ceiling at wearable-device high.

---

## Variant Weaknesses for PR1 to Address

Prioritized by severity (trap taxonomy per GT1 Section 6):

### Priority 1: High-effort moderate-threshold discipline (3 trap hits, all at high effort)

**Pattern:** Variant correctly holds the strong-only bar at medium but loses discipline at the moderate bar at high effort. The failure mode is "moderate-trigger keyword in Key Considerations list → moderate trigger → include" without the intervening test "is this a core decision dimension or a background concern?"

**Specific trap hits:**
- habit-tracker_high → Accountant on "monetization" keyword
- mobile-app_high → Technical Expert on "technical debt" keyword
- tool-library_high → Lawyer on "liability" keyword

**Proposed PR1 direction:**
- Add explicit moderate-bar yes/no tests per persona (GT1 Gap 4 direction). Example for Accountant moderate: "Does the REQUEST treat economic content as a gating axis of the brainstorm (a decision input that could change the answer), or as background context? Background-only → exclude."
- Add anti-pattern callouts for the 3 specific trap cases: habit-tracker Accountant, mobile-app Technical Expert, tool-library Lawyer. These are documented R6/GT1 traps; the prompt should name them by topic characteristic.
- Consider a "second-slot veto test" at high effort: before filling slot 2, explicitly ask "would this add a distinctive depth layer no Tier 1/Tier 2 persona covers, or am I padding a moderate signal?"

### Priority 2: Connector swap under-recognition on multi-subsystem topics

**Pattern:** Variant under-swaps — 3 of 5 Connector calls missed, 0 over-swaps. Failure clusters on topics where the multi-system structure is internal to one product/program (youth-mentorship's multi-institutional layer, mobile-app's users/team/runway/codebase constraint system, wearable-device's hardware/ML/privacy/regulatory constraint interaction). Variant reads "one business" or "one product" as "single primary domain" regardless of internal subsystem structure.

**Proposed PR1 direction:**
- Sharpen the Connector-swap test: "Does the topic require the orchestrator to reconcile multiple *types* of constraints (technical + regulatory + social; or user + team + financial; or cross-institutional partnership interfaces) within what looks like one product/program? Yes → Connector; No → Analogist."
- Add the three missed topics as explicit positive swap examples in the guide/prompt (they are already R7-named Connector-wins cases; the prompt can cite them by name).
- Consider an "R7 swap examples" callout: wearable-device, mobile-app, youth-mentorship, school-consolidation, career-change as explicit Connector examples; habit-tracker, space-party, tool-library, food-truck, property-management as explicit Analogist examples. The guide has this information but the variant is under-reading it.

### Priority 3: Community-stakeholder Politician boundary (tool-library specifically)

**Pattern:** Variant reads Politician's strong-trigger bar tightly and rejects Politician on tool-library — landing on the GT1 Answer B side (None). This is not wrong under current guide language (Q2 ambiguous-acceptable), but it pairs badly with the Lawyer trap hit on the same topic, producing a doubly-wrong tool-library_high roster.

**Proposed PR1 direction (aligned with GT1 Gap 1 widen commitment):**
- Adopt the Gap 1 widen direction: community-stakeholder-heavy topics (tool libraries, mentorship programs, community nonprofits with meaningful stakeholder politics) qualify as strong Politician triggers.
- This removes tool-library medium's ambiguity (definitively Politician-strong post-widen) and makes tool-library high's Politician+Accountant roster the unambiguous answer.

### Priority 4: Format/volume are already perfect — preserve

No weakness in format or volume. PR1 must not regress these.

---

## Ambiguous-Case Log

Per GT1 Section 3, 5 cells are fully ambiguous and scored acceptable-either-way.

| Cell | GT1 Accepted Answers | Variant Answer | Result |
|---|---|---|---|
| tool-library_medium | Politician (primary) OR None (alt) | None | **Accepted (Answer B)** — variant landed on the strict-rubric reading, which is acceptable per Q2 but leaves the Rev 2 tension visible. |
| tool-library_high | Politician + Accountant (primary) OR Politician only / Accountant only / None (alts); **Lawyer NOT in acceptable set** | Accountant + Lawyer | **Not accepted** — Accountant is in the acceptable set, but Lawyer is an explicit trap and not a defensible alt per GT1 Decision 6C. Variant's overall answer fails the ambiguity allowance because it includes Lawyer. |
| property-management_high | Lawyer + Accountant (primary) OR Lawyer + Politician (alt) | Lawyer + Politician | **Accepted (alt)** — Politician is GT1-documented as equally defensible for the second slot. |
| youth-mentorship_high | Lawyer + Politician (primary) OR Lawyer only (alt) | Lawyer only | **Accepted (alt)** — variant chose the strict-rubric reading; acceptable per Q2. |
| school-consolidation_medium | Politician (primary) OR Accountant (alt) | Politician | **Accepted (primary)** — variant matches primary answer. |

**Scoring-vigilance cells (GT1 Section 3 subcategory):**

| Cell | Flag | Variant Outcome |
|---|---|---|
| food-truck_high (soft-boundary) | Accountant + Politician primary; Accountant-only is scoring-incorrect-but-understandable. | **Primary matched** — variant selected Politician at moderate. No soft-boundary slip. |
| mobile-app_high (trap-adjacent) | Accountant moderate primary; Technical Expert is a documented trap. | **Trap hit** — variant selected Technical Expert (the trap) AND missed Accountant (the primary). Exhibits both failure modes R6/GT1 documented. This is the single most instructive failure in the variant's output for PR1. |

**Ambiguous-case hit rate:** 4 / 5 fully-ambiguous cells scored acceptable (tool-library medium ✓, property-management high ✓, youth-mentorship high ✓, school-consolidation medium ✓); 1 / 5 failed (tool-library high — because Lawyer is a trap, not a defensible alt).

---

## Summary for PR1 intake

- **Strengths to preserve:** medium-effort Tier 3 discipline (perfect), volume accuracy (perfect), PLAN.md format (perfect), rationale specificity (perfect), career-change Lawyer-trap rejection (clean).
- **Weaknesses to target:** (1) high-effort moderate-threshold discipline on trap-adjacent keywords — habit-tracker Accountant, mobile-app Technical Expert, tool-library Lawyer; (2) Connector swap under-recognition on topics with internal multi-subsystem structure — mobile-app, wearable-device, youth-mentorship; (3) Politician community-stakeholder boundary (Gap 1 widen).
- **Do not change:** rationale-generation behavior, volume assignment, template adherence — these are at ceiling.

---

**Status:** Scored. Ready for PR1 prompt-refinement intake alongside O-V2 and O-V3 variant scores.

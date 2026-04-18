# O1 Cross-Variant Synthesis — Orchestrator Prompt Variant Testing

**Date:** 2026-04-18
**Scope:** 3 variants × 10 topics × 2 effort levels = 60 generation runs + 6 pilot runs
**Status:** Final
**Scoping decision:** Targeted re-runs skipped (see Scoping Notes below)

---

## Executive Summary

**Winner: O-V3 (structured-checklist).** O-V3 is the only variant with zero fully-Incorrect runs (0/20 vs. 3/20 for O-V1 and 2/20 for O-V2), the highest Correct rate (75% vs. O-V1 60% and O-V2 50%), and the strongest trap-defusal profile (7 of 8 documented traps rejected with named citations). Margin is narrow on headline Tier 3 accuracy (O-V3 80% strict vs. O-V1 and O-V2 both at 85% with ambiguous-acceptable counting), but O-V3's error profile is qualitatively better: its single FP (food-truck Lawyer) and single FN (mobile-app Accountant-moderate) are isolated cells, while O-V1 and O-V2 each exhibit systematic high-effort discipline collapse. **Top PR1 seeds:** (P0) embed Accountant calibration-principle moderate-bar language with explicit mentioned-concern-vs-core-decision-dimension counter-guardrail; (P0) sharpen Connector swap criterion to include social-systems interoperability and multi-stakeholder structural isomorphism, naming youth-mentorship and mobile-app as positive examples; (P1) add food-truck Lawyer anti-pattern distinguishing political engagement with regulators from regulatory-compliance architecture.

---

## Scoping Notes

**Re-run skip justification (verbatim):** The formal 16-run targeted re-run stage was skipped as a scoping decision after the initial 60-run + 6-pilot set. Justification: the three variants independently agreed on multiple error patterns (e.g., all three variants produced suspect outputs on mobile-app_high Accountant-moderate; two of three fell for habit-tracker high Accountant-FP; O-V1 fell for the documented Technical-Expert-on-mobile-app trap that GT1 flags as priority #2). Cross-variant convergence at n=3 provides systematic-vs-noise evidence that single-variant re-runs at n=3 would provide for one cell at a time. PR1 may run targeted re-runs on the refined-prompt winner before PI1 final certification. Document this trade-off explicitly in the synthesis so reviewers can decide whether to insist on re-runs before moving to PR1.

**Additional methodology caveats:**

- Ambiguous-case scoring follows Q2: cells with multiple acceptable answers per GT1 Section 3 score acceptable-either-way. Tier 3 accuracy numbers in this document count ambiguous-acceptable as correct.
- GT1 Rev 3 is the canonical answer key. Two high-effort cells (mobile-app H, career-change H) are contingent on PR1 acceptance of the Gap 2 calibration-principle guide edit. If Gap 2 is rejected in PR1 review, both cells flip back to None and the variant accuracy numbers shift accordingly.
- Scoring was performed per variant against Canonical Rev 3 by separate scoring passes. No inter-rater check across the three scoring reports beyond this synthesis.
- The tool-library cells used in each variant's 20-run set are identical to the pilot runs (per pilot summary plan). Non-determinism risk on that cell is not bounded by re-runs at variant level.

---

## 1. Head-to-Head Metrics Table

| Metric | O-V1 (reference-only) | O-V2 (embedded-triggers) | O-V3 (structured-checklist) |
|---|---|---|---|
| **Overall grade — Correct** | 12 / 20 (60%) | 10 / 20 (50%) | **15 / 20 (75%)** |
| **Overall grade — Partially Correct** | 5 / 20 (25%) | 8 / 20 (40%) | 5 / 20 (25%) |
| **Overall grade — Incorrect** | 3 / 20 (15%) | 2 / 20 (10%) | **0 / 20 (0%)** |
| **Tier 3 accuracy (ambiguous-acceptable)** | 17 / 20 (85%) | 17 / 20 (85%) | 16 / 20 (80%) |
| **Tier 3 accuracy (unambiguous cells only)** | 14 / 15 (93%) | 12 / 15 (80%) | **14 / 15 (93%)** |
| **Tier 3 strict match (primary only)** | ~13 / 20 (65%) | 13 / 20 (65%) | ~14 / 20 (70%) |
| **Connector/Analogist accuracy** | 7 / 10 (70%) | 7 / 10 (70%) | **8 / 10 (80%)** |
| **False-positive rate (trap hits)** | 3 / 20 (15%) — habit-tracker H Acct, tool-library H Lawyer, mobile-app H TE | 1 / 20 (5%) — habit-tracker H Acct | **1 / 20 (5%)** — food-truck H Lawyer |
| **False-negative rate** | 2 / 20 (10%) — tool-library H Politician, mobile-app H Acct | 2 / 20 (10%) — mobile-app H Acct, career-change H Acct | **1 / 20 (5%)** — mobile-app H Acct |
| **Threshold sensitivity (correct shifts)** | 6 / 8 (75%) | 6 / 8 (75%) | **7 / 8 (87.5%)** |
| **Rationale quality — Specific** | 20 / 20 (100%) | 18 / 20 (90%) | 18 / 20 (90%) |
| **Rationale — Mixed** | 0 / 20 | 2 / 20 | 2 / 20 |
| **Volume accuracy** | 20 / 20 (100%) | 20 / 20 (100%) | 20 / 20 (100%) |
| **PLAN.md format compliance** | 20 / 20 (100%) | 20 / 20 (100%) | 20 / 20 (100%) |

**Summary of cross-variant reading:** O-V3 dominates on run-grade quality (zero fully-Incorrect, 75% Correct) and trap-defusal (lowest FP rate tied with O-V2 but with a safer single-cell profile). O-V1 leads on rationale quality (100% specific) but has the worst FP rate (3 trap hits). O-V2 sits between them on most metrics but carries the heaviest FN burden (misses both calibration-principle promotion cells). Volume and format compliance are at ceiling across all three — nothing to differentiate on.

---

## 2. Per-Topic-Effort Heatmap

Entries: ✓ Correct · ~ Partially Correct · ✗ Incorrect · ? Ambiguous-acceptable (scored correct)

| # | Topic | Effort | O-V1 | O-V2 | O-V3 |
|---|---|---|---|---|---|
| 1 | habit-tracker | M | ✓ | ✓ | ✓ |
| 2 | habit-tracker | H | ✗ (FP Acct) | ✗ (FP Acct) | ✓ |
| 3 | space-party | M | ✓ | ✓ | ✓ |
| 4 | space-party | H | ✓ | ✓ | ✓ |
| 5 | tool-library | M | ? | ? | ? |
| 6 | tool-library | H | ✗ (FP Lawyer + FN Pol) | ? | ? |
| 7 | food-truck | M | ✓ | ✓ | ✓ |
| 8 | food-truck | H | ✓ | ✓ | ~ (FP Lawyer) |
| 9 | property-management | M | ✓ | ✓ | ✓ |
| 10 | property-management | H | ? | ? | ~ (swap wrong) |
| 11 | youth-mentorship | M | ~ (swap wrong) | ~ (swap wrong) | ~ (swap wrong) |
| 12 | youth-mentorship | H | ~ (swap wrong) | ~ (swap wrong) | ~ (swap wrong) |
| 13 | school-consolidation | M | ✓ | ✓ | ✓ |
| 14 | school-consolidation | H | ✓ | ✓ | ✓ |
| 15 | mobile-app | M | ~ (swap wrong) | ~ (swap wrong) | ✓ |
| 16 | mobile-app | H | ✗ (FP TE + FN Acct) | ✗ (FN Acct + swap wrong) | ~ (FN Acct) |
| 17 | wearable-device | M | ~ (swap wrong) | ✓ | ✓ |
| 18 | wearable-device | H | ~ (swap wrong) | ✓ | ✓ |
| 19 | career-change | M | ✓ | ✓ | ✓ |
| 20 | career-change | H | ✓ | ~ (FN Acct) | ✓ |

**Systematic strengths/weaknesses across variants:**

- **O-V3 excels on habit-tracker high, mobile-app medium, wearable-device both efforts, and career-change high.** These are the four cells where O-V3 cleanly handles patterns that trip up at least one other variant: the Rev 2 Accountant counter-guardrail (habit-tracker H), the multi-stakeholder-product Connector swap (mobile-app M, wearable-device both efforts), and the calibration-principle moderate promotion (career-change H). O-V3's structured per-candidate evaluation forces auditable exclusion reasoning and defuses the habit-tracker Accountant trap that both competitors hit.

- **O-V1 is the only variant to cleanly handle food-truck high.** O-V1 rejects the food-truck Lawyer trap that O-V3 falls for, distinguishing "political engagement with regulators" from "regulatory compliance architecture" explicitly. O-V3's checklist format allowed a keyword-strong rating on permits/commissary/zoning without the need-vs-keyword cross-check firing. This is the one cell where the reference-only variant's interpretive latitude produces a better answer than the checklist's structural rating.

- **O-V2 is unique in catching wearable-device medium correctly while failing on mobile-app medium Connector swap.** O-V2 correctly swaps to Connector on language-explicit cases (school-consolidation, wearable-device, career-change) but collapses multi-institutional and multi-stakeholder topics into "single-domain with facets" (youth-mentorship, mobile-app). Its swap discrimination is surface-language-anchored; O-V3's swap discrimination is stronger on mobile-app but weaker on property-management high (where it over-fires Connector) and identical on youth-mentorship (all three variants miss).

- **All three variants miss youth-mentorship swap (both efforts) and mobile-app high Accountant-moderate.** These are the two convergent failure patterns where cross-variant agreement is the strongest systematic-vs-noise signal. Both failures map directly onto GT1 Gap 1 (widen Politician / clarify Connector for social-systems topics) and Gap 2 (Accountant calibration-principle moderate bar).

- **All three variants are perfect on the five negative-control and Tier-1-only cells** (habit-tracker M, space-party M/H, career-change M, mobile-app M, food-truck M — when mobile-app M is scored strict on Tier 3 only). Strong-trigger detection at medium and rejection discipline on clear negative controls are at ceiling across variants.

---

## 3. Winning Variant Recommendation

**Recommended PR1 starting point: O-V3 (structured-checklist).**

**Rationale:**

1. **Safest error profile.** Zero Incorrect runs (vs. 3 for O-V1, 2 for O-V2) means PR1 starts with a prompt that has no catastrophic failure modes to unwind. All 5 Partially-Correct cells are either single-axis misses (swap-only, or FN-only, or FP-only) or ambiguous-alt choices; none combine FP+FN like O-V1's tool-library H and mobile-app H.
2. **Strongest trap discipline.** 7 of 8 documented GT1 traps defused, including the Rev 2 counter-guardrail (habit-tracker Accountant) that both competitors hit and the dangerous mobile-app Technical Expert trap (GT1 priority #2) that O-V1 fell for. Trap citations are named in rationale ("R6 career-change-as-target-career false-positive trap," "classic birthday-party trap"), which matters for auditability.
3. **Highest unambiguous-cell accuracy.** 14/15 = 93% on unambiguous cells, tied with O-V1 and ahead of O-V2 (80%). Since unambiguous cells are the primary discriminators per GT1 Section 3, this is the load-bearing accuracy number.
4. **Best threshold sensitivity.** 7/8 correct shifts, with the one miss (mobile-app H Accountant) shared across all three variants — a systematic issue that PR1 must address via Gap 2 regardless of starting variant.
5. **Auditable output format.** The per-candidate structured checklist (Accountant / Lawyer / Politician / Technical Expert with strength rating + topic citation + decision + note) produces the clearest paper trail for downstream scoring in PI1 and iteration in PR1.

**Margin caveats — where O-V3 loses and PR1 should borrow:**

- **Rationale quality (100% specific) is O-V1's unique ceiling.** O-V3 sits at 90% (2 Mixed cells). PR1 should preserve O-V3's per-candidate structural layout but borrow O-V1's rationale-grounding discipline — particularly the pattern of quoting REQUEST content with dollar figures and Key Considerations bullets inline. This is a minor delta (90 vs. 100) but worth preserving.
- **Food-truck Lawyer discrimination is O-V1's advantage.** O-V1 alone distinguishes political-engagement-with-regulators from regulatory-compliance-architecture on food-truck. O-V3 needs an explicit anti-pattern callout on this trap — borrow O-V1's framing directly (see Seed P1 below).
- **O-V2's explicit trap-name citations** ("explicit false-positive trap," "career-change and legal-career false-positive traps") should be preserved in O-V3's checklist — the embedded-trigger approach to trap citation is worth keeping even when the checklist structure is the backbone.

**What to preserve unchanged in O-V3:**

- Structured per-candidate evaluation layout (Accountant / Lawyer / Politician / Technical Expert each rated strong/moderate/none with topic citation + decision + note).
- Explicit trap citations by name (R6 references, "classic X trap" language).
- Auditable exclusion-with-note pattern when a strong trigger is deferred by ceiling.
- Effort-threshold logic on the 14/15 unambiguous cells that work (don't refactor this to fix the one cell that fails — fix that cell with Seed P0a).
- Volume ranges and PLAN.md section structure (20/20 format compliance).

**What to change:**

- Seeds P0-P2 below.

---

## 4. Consolidated Error Patterns

### 4.1 Shared across variants (guide/trigger issues — candidates for guide edits)

| Pattern | Variants Affected | Cells | Likely Root Cause | Recommended Fix Target |
|---|---|---|---|---|
| **Mobile-app high Accountant-moderate missed** | All 3 (O-V1, O-V2, O-V3) | mobile-app_high | Guide Gap 2 — Accountant's moderate bar restricts to "financial-structure-central" (business/nonprofit/revenue-model) and excludes runway-constrained product decisions. All three variants reject Accountant on strict-bar reading. | **Guide edit first, prompt reinforcement second.** Gap 2 proposal (widen Accountant moderate bar to include runway-constrained product decisions with specific unit-economics content) is the load-bearing fix. Prompt seed should reinforce. |
| **Youth-mentorship Connector swap missed (both efforts)** | All 3 | youth-mentorship_medium, youth-mentorship_high | Connector swap criterion under-operationalized for multi-institutional social systems. All three read "one youth-serving program" as single-domain despite faith org + schools + juvenile justice + volunteer management being distinct institutional subsystems that must interoperate. | **Prompt fix primary, guide example secondary.** Sharpen Connector swap criterion in orchestrator prompt with social-systems-interoperability language; add youth-mentorship as explicit positive swap example. |
| **Habit-tracker high Accountant trap (monetization keyword)** | 2 of 3 (O-V1, O-V2; O-V3 defused) | habit-tracker_high | Counter-guardrail from Rev 2 calibration-principle expansion not present in O-V1 and O-V2 prompts. O-V3's structured checklist forces a mentioned-concern-vs-core-decision-dimension check that defuses this. | **Prompt fix — borrow O-V3 pattern.** Add explicit "does the REQUEST name specific dollar ranges, unit-economics targets, pricing decisions, runway math, or revenue-model questions as deliverables?" test for Accountant moderate. |
| **Career-change high Accountant-moderate missed (1 of 3)** | 1 of 3 (O-V2 only) | career-change_high | Same Gap 2 root cause as mobile-app H, but O-V2 alone misses this cell because its embedded triggers encode the narrow "financial structure central" bar. O-V1 and O-V3 both catch the LRAP/loans/savings specificity and promote Accountant. | **Guide Gap 2 edit covers this.** Confirms Gap 2 is the single load-bearing guide change. |
| **Mobile-app medium Connector swap missed (2 of 3)** | 2 of 3 (O-V1, O-V2; O-V3 correct) | mobile-app_medium | Same multi-stakeholder-system failure pattern as youth-mentorship. O-V3 alone recognizes users + team + investors + codebase as distinct constraint systems. | **Prompt fix — borrow O-V3 pattern.** Same Connector swap sharpening proposed above. |

### 4.2 Variant-specific (prompt issues — candidates for prompt refinement in PR1)

| Pattern | Variant | Cells | Specific Remedy |
|---|---|---|---|
| **Mobile-app high Technical Expert trap hit** (GT1 priority #2 — most dangerous trap in set) | O-V1 only | mobile-app_high | Add explicit "mobile app feature pruning is not Technical Expert territory" anti-pattern. O-V2 and O-V3 both defuse this by citing product-strategy vs. system-architecture. PR1 must preserve O-V3's defusal and not regress. |
| **Tool-library high Lawyer trap hit** | O-V1 only | tool-library_high | Add explicit "liability keyword without named regulatory framework is not Lawyer-strong" anti-pattern. O-V2 and O-V3 both defuse. |
| **Food-truck high Lawyer trap hit** | O-V3 only | food-truck_high | Add explicit "permits/licensing regimes as operating-environment constraints are political engagement, not regulatory compliance architecture" anti-pattern. O-V1 and O-V2 both defuse by citing this distinction directly; O-V3's checklist needs the distinction baked into the Lawyer evaluation row. |
| **Wearable-device Connector swap missed** | O-V1 only | wearable-device_medium, wearable-device_high | O-V1 reads "single primary domain (health-monitoring wearable hardware/ML system)" as swap-negative despite R7's explicit call on this topic. O-V2 and O-V3 both swap correctly. Same Connector sharpening as youth-mentorship fixes this. |
| **Property-management high Connector over-fire** | O-V3 only | property-management_high | O-V3 flipped to Connector at high while staying Analogist at medium — swap decision should be effort-invariant. Add "Connector/Analogist decision does not depend on effort level" rule. |
| **Career-change high Accountant-moderate missed** | O-V2 only | career-change_high | Gap 2 root cause (see 4.1). O-V2's embedded-trigger text encodes strong-bar-only reading. |
| **Accountant calibration FN specifically on runway-constrained products** | O-V2 | mobile-app_high, career-change_high | O-V2's rationale literally measures moderate candidates against strong-trigger definition ("the unit economics, revenue models, pricing strategy, or organizational financial architecture that a STRONG Accountant trigger requires"). Prompt needs explicit "at high effort accept moderate+, not strong-only" instruction. |

---

## 5. Refinement Seeds for PR1

Seeds are prioritized P0 (must fix — highest-impact cross-variant failures) through P2 (polish). Each seed names the error, affected variants, concrete proposed change, and expected accuracy lift.

### P0a. Accountant calibration-principle moderate bar (mobile-app H, career-change H)

- **Error targeted:** Mobile-app high Accountant-moderate missed (all 3 variants); career-change high Accountant-moderate missed (O-V2). GT1 Gap 2.
- **Variants suffering:** All three, with greatest impact on O-V2 (both cells) and O-V3 (mobile-app only).
- **Proposed prompt change:** In the Accountant moderate-bar evaluation, replace any language restricting moderate to "financial-structure-central" with: *"At high effort, Accountant fires at moderate when economic content is a core decision dimension of the brainstorm — even if the domain is personal or runway-constrained rather than business-model-central. Specifically: the REQUEST names specific dollar ranges, unit-economics figures (retention, DAU/MAU, session length), runway math, opportunity costs, or loan/savings/income-gap figures as inputs to the decision that must be answered. Personal-life financial decisions (career transition with LRAP/loans/savings math) and runway-constrained product decisions (feature cut with months-of-funding + unit-economics constraints) qualify."*
- **Counter-guardrail (paired with P0a, avoids habit-tracker over-widening):** *"Accountant does NOT fire at moderate when economic content is merely a mentioned concern (e.g., 'monetization without undermining UX' as a bullet in a key-considerations list) without specific dollar ranges, unit-economics targets, or revenue-model questions named as deliverables."*
- **Expected lift:** Resolves 2-3 cells across variants. Mobile-app high moves from FN to Correct for all three; career-change high moves from FN to Correct for O-V2; habit-tracker high stops over-firing for O-V1 and O-V2.
- **Note:** This is also a proposed guide edit (Gap 2). Prompt seed encodes the behavior even if guide edit is deferred.

### P0b. Connector swap criterion — social-systems interoperability and multi-stakeholder structural isomorphism

- **Error targeted:** Youth-mentorship swap missed both efforts (all 3 variants); mobile-app medium swap missed (O-V1, O-V2); wearable-device swap missed (O-V1).
- **Variants suffering:** All three, with O-V1 and O-V2 more impacted than O-V3.
- **Proposed prompt change:** Replace any language defining swap as "bridging distinct domains" alone with: *"Swap to Connector when the topic requires reconciling multiple types of constraints within what may look like one product, program, or decision. This includes (a) multiple institutional systems that must interoperate (faith orgs + schools + juvenile justice + volunteer management; districts + unions + communities + state); (b) multiple stakeholder systems with structurally linked problems (users + team + investors + codebase where retention-and-burnout are one isomorphic problem); (c) multiple technical systems whose constraints interact (hardware + ML + privacy + regulatory pathway). Positive examples: youth-mentorship (multi-institutional referral pipelines), mobile-app (retention-burnout isomorphism), wearable-device (privacy = power constraint), school-consolidation, career-change. Negative examples (keep Analogist): space-party, habit-tracker, food-truck, tool-library, property-management."*
- **Expected lift:** Resolves up to 4 swap errors across variants. Youth-mentorship cells move to Correct for all three variants; mobile-app medium moves to Correct for O-V1 and O-V2; wearable-device cells move to Correct for O-V1. Connector/Analogist accuracy lifts from 70-80% toward 90-100%.

### P0c. Trap anti-pattern callouts for high-leverage GT1-documented traps

- **Error targeted:** Mobile-app Technical Expert trap (O-V1, GT1 priority #2); tool-library Lawyer trap (O-V1); food-truck Lawyer trap (O-V3); habit-tracker Accountant trap (O-V1, O-V2).
- **Variants suffering:** All three, with different subsets — aggregated into one unified trap callout section.
- **Proposed prompt change:** Add a dedicated "False-Positive Traps — Explicit Rejection Rules" section to the orchestrator prompt with the following entries, each phrased as a rejection rule paired with the named GT1 trap reference:
  1. **Career-change → Lawyer (GT1 priority #1):** Keyword "lawyer"/"attorney"/"law school" presence does not fire Lawyer. Career-change is a personal decision, not regulatory-exposure. Reject regardless of effort.
  2. **Mobile-app → Technical Expert (GT1 priority #2):** Mobile-app + "technical debt" + engineer headcount language is product-strategy, not system architecture. "Technical debt in feature pruning" does not qualify as the Technical Expert's genuine-engineering-tradeoffs strong trigger. Reject regardless of effort.
  3. **Habit-tracker → Technical Expert:** "Modern JS framework + cloud backend" is conventional product engineering, not hardware/ML/system architecture. Reject regardless of effort.
  4. **Habit-tracker → Accountant (Rev 2 counter-guardrail):** "Monetization" as a bullet-list concern in a 3-month solo-dev MVP is not a moderate Accountant trigger. Core-decision-dimension test must pass (see P0a counter-guardrail).
  5. **Tool-library → Lawyer (both efforts):** "Liability and safety concerns" without named regulatory framework is Devil's Advocate depth, not Lawyer-strong. Reject regardless of effort.
  6. **Food-truck → Lawyer:** "Permits, licensing fees, regulations" framed as operating-environment constraints for political engagement is Politician territory, not Lawyer. Distinguish political-engagement-with-regulators from regulatory-compliance-architecture. Reject regardless of effort.
  7. **Space-party → Accountant (budget), Lawyer (safety):** Consumer-spending "budget-friendly" and generic child-safety concerns do not fire Tier 3. Reject regardless of effort.
- **Expected lift:** Eliminates 4 of 5 total FP trap hits across variants (all except property-management H, which isn't a trap but a tiebreaker). FP rate moves from 15%/5%/5% toward 0%/0%/0%.

### P1a. Connector/Analogist decision must be effort-invariant

- **Error targeted:** O-V3 property-management high flipped Connector while property-management medium stayed Analogist. Swap decision is topic-structural, not effort-dependent.
- **Variant suffering:** O-V3 only.
- **Proposed prompt change:** Add explicit rule: *"The Connector/Analogist decision is determined by the topic's domain structure, not the depth of investigation. If medium effort picks Analogist, high effort must also pick Analogist unless new information emerges in the REQUEST that was absent from the medium read. Same applies in reverse."*
- **Expected lift:** Resolves O-V3's property-management H Partial → Correct.

### P1b. Ceiling tiebreaker guidance (GT1 Gap 3)

- **Error targeted:** Property-management high tiebreaker among 3 strong triggers; school-consolidation medium tiebreaker among 2 strong triggers.
- **Variants suffering:** All three produce defensible-alt answers; this isn't an accuracy problem under Q2 scoring but is a determinism problem.
- **Proposed prompt change:** Add tiebreaker rule: *"When more strong triggers exist than the effort ceiling allows, select the N most central to the REQUEST's stated goal and decision process. For example: if the REQUEST's goal is 'build a profitable, scalable operation,' Lawyer + Accountant wins over Lawyer + Politician; if the goal is 'determine whether a consolidation vote can succeed,' Politician wins over Accountant."*
- **Expected lift:** Converts ambiguous tiebreaker cells to deterministic correct answers; reduces noise in future scoring runs.

### P1c. Second-slot moderate-threshold discipline (GT1 Gap 4)

- **Error targeted:** Per-persona moderate-bar tests not mechanical enough — youth-mentorship H Politician-moderate under-fired by O-V1 and O-V3 (both scored acceptable per ambiguity); food-truck H moderate discipline issues.
- **Variants suffering:** All three with different symptom cells.
- **Proposed prompt change:** Add per-persona moderate-bar yes/no tests:
  - **Politician moderate:** Multiple institutional stakeholders must be *reconciled* to produce the brainstorm's output (not merely *mentioned* as context). Regulatory-process engagement with a political mechanism (ordinance advocacy, city-council engagement) qualifies.
  - **Accountant moderate:** See P0a (core decision dimension test).
  - **Lawyer moderate:** Specific regulatory exposure present but not central to brainstorm's goal; named framework or statute with ongoing compliance implication (not one-time setup).
  - **Technical Expert moderate:** Genuine engineering tradeoffs present but not the primary axis; specific hardware/ML/architecture decision in the REQUEST that a Tier 1 persona would not cover at equivalent depth.
- **Expected lift:** Increases second-slot determinism across high-effort cells; reduces ambiguous-alt outcomes.

### P2. Preserve O-V1's rationale-specificity pattern

- **Error targeted:** O-V3's 2 Mixed rationale cells (mobile-app H, career-change M — both topic-inherent edges).
- **Variant suffering:** O-V3 (starting point) at 90% specific; O-V1 at 100%.
- **Proposed prompt change:** In the per-candidate evaluation checklist, require direct quotation of REQUEST content (dollar figures, Key Considerations bullets, specific named frameworks) in the rationale cell. Forbid generic paraphrase.
- **Expected lift:** Pushes rationale quality to 100% specific. No direct cell-flip impact but improves auditability and guards against regression.

---

## 6. Open Questions Bubbling Up to Guide-Level

The following errors trace to ambiguities or contradictions in the selection guide itself rather than in the orchestrator prompt. These are candidates for Gap proposals via Q10 (guide-edit escape hatch) in `discussion-questions-responses.md`.

### 6.1 Accountant moderate-threshold ambiguity (Guide Gap 2)

**Evidence:** All three variants miss mobile-app high Accountant-moderate; O-V2 additionally misses career-change high. The prompt-level P0a seed encodes the correct behavior, but the underlying guide text ("Include only for topics where financial structure is central") directly contradicts the Accountant persona file's calibration-principle instruction ("calibrate your financial depth to the economic complexity of the context"). Fixing the prompt without fixing the guide leaves future orchestrator variants vulnerable to the same error.

**Recommendation:** PR1 should issue a Gap 2 proposal to rewrite Accountant's moderate-trigger bar in the selection guide to match the persona's calibration instruction — explicitly including personal-finance life decisions and runway-constrained product decisions at moderate depth. Keep strong-trigger bar tight.

### 6.2 Connector swap boundary on social-systems and multi-stakeholder topics

**Evidence:** All three variants miss youth-mentorship swap (both efforts). Two of three miss mobile-app medium. O-V1 additionally misses wearable-device both efforts. The pattern is consistent: variants under-recognize multi-institutional and multi-stakeholder topics as cross-system reconciliation.

**Recommendation:** Either (a) amend the selection guide's Connector swap criterion to explicitly name social-systems interoperability and multi-stakeholder structural isomorphism as in-scope, with youth-mentorship and mobile-app as worked positive examples, or (b) keep the guide as-is and rely entirely on the P0b prompt seed. A guide edit is the more durable fix; prompt-only risks each new orchestrator variant re-litigating the boundary.

### 6.3 Politician strong-trigger bar for community-stakeholder topics (Guide Gap 1)

**Evidence:** All three variants rated tool-library medium Politician as "none" or "moderate" at the strict rubric, landing on None for medium and producing the Rev 2-ambiguous tool-library pattern. GT1 has pre-committed to the "widen" direction for Gap 1 (Decision 7A).

**Recommendation:** PR1 should issue Gap 1 widen proposal — rewrite Politician strong-trigger bar to include "stakeholder complexity that must be navigated to achieve the brainstorm's goal" alongside governance/coalition/institutional-change. Names community-organization topics (tool libraries, mentorship programs, community nonprofits) as in-scope at strong. This resolves tool-library medium's ambiguity and removes one cell from the variant-discrimination noise.

### 6.4 Ceiling tiebreaker and second-slot moderate-threshold discipline (Guide Gaps 3 and 4)

**Evidence:** Variants produce defensible-alt answers on property-management high (Lawyer+Accountant vs. Lawyer+Politician) and school-consolidation medium (Politician vs. Accountant). Ambiguity scores acceptable under Q2 but creates scoring noise.

**Recommendation:** Add explicit tiebreaker and second-slot-discipline guidance (P1b and P1c as prompt seeds). Gap 3 and Gap 4 in GT1 Section 7 are the guide-level candidates. These are lower priority than Gaps 1 and 2 because they don't flip wrong-to-right — they convert ambiguous-right to deterministic-right.

---

## 7. Handoff to PR1

**First-order instructions for PR1:**

1. **Start from O-V3 (structured-checklist) prompt** at `findings/O1_prompts/O-V3_structured-checklist.md`. Do not start from scratch and do not start from O-V1 or O-V2.
2. **Apply Priority-0 seeds first** (P0a calibration-principle language + counter-guardrail; P0b Connector swap sharpening with positive/negative example lists; P0c trap anti-pattern callouts). These three seeds address the 4 convergent cross-variant failure patterns and should produce the largest accuracy lift.
3. **Re-test on the cells that failed across variants** before proceeding to P1 and P2 seeds:
   - mobile-app_high (FN Accountant-moderate — 3/3 variants)
   - youth-mentorship_medium and youth-mentorship_high (swap — 3/3 variants)
   - habit-tracker_high (FP Accountant — 2/3 variants)
   - career-change_high (FN Accountant-moderate — 1/3 variants, O-V2-only)
   - mobile-app_medium (swap — 2/3 variants)
   - food-truck_high (FP Lawyer — 1/3 variants, O-V3-specific)
4. **After P0 seeds reach target accuracy, layer P1 seeds** (effort-invariant swap rule, tiebreaker guidance, moderate-bar discipline) and re-test.
5. **P2 (rationale specificity) last** — minor polish, no expected cell-flip impact.
6. **Consider running targeted re-runs** (n=3 per suspect cell) on the refined-prompt output before PI1 certification, since the formal 16-run re-run stage was skipped. At minimum re-run mobile-app_high, youth-mentorship_medium, youth-mentorship_high on the P0-refined prompt to confirm lift is real and not run-level noise.
7. **Issue Gap 1 and Gap 2 guide-edit proposals** in parallel with prompt refinement (via `findings/PR1_proposed-guide-edits.md` per Q10). Prompt seeds encode the target behavior; guide edits make it durable.

**PI1 success criteria left open:**

- PI1 final accuracy target (per phase-2B task spec) — unknown whether PR1's refined prompt hits the threshold without guide edits. Flag for PI1: the Gap 2 contingency means two cells (mobile-app H, career-change H) depend on guide-edit acceptance; if guide edits are deferred, PR1's ceiling may be lower than the prompt suggests.
- Non-determinism bounds on tool-library cells — pilot-reused cells were not independently re-rolled per variant. PR1 should consider re-rolling these if running targeted re-runs.
- Coverage limit from GT1 Decision 5A — Politician/Lawyer/Technical-Expert moderate-only-at-high patterns are not tested. PR1 iteration suite could add these if broader moderate-trigger coverage becomes a priority.

---

**Status:** Final. Handoff to PR1 prompt-refinement stage.

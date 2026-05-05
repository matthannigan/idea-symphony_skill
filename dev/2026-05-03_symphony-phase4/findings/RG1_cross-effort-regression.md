# Phase 4 Investigation — RG1 Cross-Effort Regression Findings

**Date:** 2026-05-04
**Topics covered:** 10
**Samples covered:** 60 (across 4 effort branches per topic)

---

## Headline

Across 60 sampled `_summary.md` files (10 topics × 6 samples each: 1 min + 1 low + 2 med + 2 high), variance is **dominantly intentional or regime-mandated**, with drift concentrated in a small set of saturated, FA1-attributable failure modes that recur across topics. Every per-topic sub-finding lands on the same headline diagnosis: persistent through-lines from each topic's effort-comparison memo survive cross-effort where cluster shape supports them; the residual variance partitions cleanly into (a) regime-mandated divergence (categorical reframe, conspicuous-absences, neither-lens-gaps, convergence-count phrasing), (b) intentional effort-branching/cluster-shape, and (c) drift, with drift dominated by the four FA1-saturated modes plus PP1 contract drift on Central Tension and confidence-tag vocabulary.

**Aggregate drift / (drift + intentional + regime-mandated) = 39 / (39 + 89 + 50) = 22%** — well above the RP1 ≤5% stop criterion. The gap is not driven by topic-specific novel drift; **all but one** of the recurring drift patterns are already in FA1's saturated taxonomy or PP1's P0 list. RG1 contributes confirmation that these patterns generalize across topics (5+ topics for every saturated mode), plus three novel structural observations: (1) youth-mentorship's sub-pattern 2C is the **inverse** of mobile-app's sub-pattern 2B — RP1's convergence-count rule must protect against both directions; (2) wearable-device demonstrates that summary-length expansion can escape the universal med Mode-1 failure (proximate-cause hypothesis worth replicating); (3) property-management's political-posture **reversal** (visible-accountability at low/med inverts to quiet-credibility at high) is the cleanest categorical-reframe-as-reversal in the n=16, and high/05 career-change's volunteering inversion is regime-mandated DA dissent — RP1's eventual single-persona-reframe-floor rule must protect inversions, not just convergent extensions.

## Drift Patterns Recurring Across Topics

### Recurring in 5+ topics (saturated)

**Pattern 1 — Single-persona reframe loss in `_summary.md` (FA1 Mode 1).**
- **Affected topics (≥5):** career-change (cm01, cm04 FAIL; ch11 FAIL), food-truck (fm01, fm03 FAIL; fh02 FAIL), habit-tracker (high-A FAIL), mobile-app (high/05 FAIL — TL-9 5/7 + TL-14 6/7 absent in summary), tool-library (high-B 6 single-persona TLs dropped). Plus partial drops in property-management, school-consolidation. **Topics affected: 6/10.**
- **FA1 cross-link:** Saturated Mode 1, 12/16 fail (8 strict + 4 partial). cm01, cm04, ch11, fm01, fm03, fh02, habit/high_04, mobile/high_05, tool/high_09.
- **PP1 cross-link:** Adjacent to PP1 P0 — the full-synthesis prompt's Document-3 "synthesis over aggregation" instruction effectively dis-incentivizes single-persona surfacing.
- **Recommended RP1 fix:** Add **Single-persona-reframe-floor rule** to `phase4_full-synthesis.md` Document-3 "Important" section. Concrete language (FA1 RP1 #1): *"Surface load-bearing single-persona reframes. The Themes, Trade-offs, and Risks sections must include any single-persona insight that reframes the cluster's core question — counter-tests, distinctive timing claims, buried hypotheses, alternate diagnostic patterns. The 'synthesis over aggregation' bar applies to redundant raw points, not to distinctive reframes — including productive dissent (DA-anchored inversions of memo-persistent claims)."* The dissent-protection clause is required to preserve career-change/high/06's regime-mandated volunteering inversion.

**Pattern 2 — Convergence-count miscount in `_summary.md` and `_synthesis.md` (FA1 Mode 2, with three directional sub-patterns).**
- **Affected topics (≥5):** career-change (ch06: 5 miscounts of 17; ch11: 1/4 numerical correct), food-truck (fm01 4 errors; fm03 73% acc; fh02 71% acc), habit-tracker (high-A FAIL Axis C), mobile-app (3 conservative undercounts at high/05 — sub-pattern 2B), space-party (high/06 2 strict overcounts — sub-pattern 2A), tool-library (high-B 10/27 off-by-one), youth-mentorship (high-B 5/37 — sub-pattern 2C, novel inverse of 2B). **Topics affected: 7/10.**
- **FA1 cross-link:** Saturated Mode 2, 12/16 fail; sub-patterns 2A (classic overcount), 2B (undercount-when-persona-reframes — mobile-app), 2C (overcount-when-one-persona-multiple-framings — youth-mentorship). 2B and 2C are **inverse** failure modes; RP1 must address both simultaneously.
- **PP1 cross-link:** PP1 §"Dimension 5" + PP1 P0 — the prompt does not require accurate counts.
- **Recommended RP1 fix:** Add **Convergence-count discipline rule** to `phase4_full-synthesis.md` Synthesis-Strategy section, expanded with sub-pattern guardrails per FA1 RP1 #2: *"Before writing 'all four / six of seven / every persona' count claim: (a) name the personas in scratch reasoning; (b) count distinct personas, not distinct framings — if one persona offers two angles, that is one persona; (c) count personas who engage the underlying claim, even with different framing — do not require identical wording; (d) deduct any explicit dissenter; (e) default to underclaim when uncertain; (f) the summary doc must inherit count claims from attributed-doc preambles, not re-derive."*
- **Regression test:** mobile-app/high/05 (sub-pattern 2B) AND youth-mentorship/high/11 (sub-pattern 2C) — both must produce correct counts under revised prompt to validate the bidirectional fix.

**Pattern 3 — Categorical reframe carried implicitly, not staged as headline declarative sentence (FA1 Mode 3 sub-pattern).**
- **Affected topics (≥5):** career-change (cm01 D=FAIL/partial; ch06 D=PARTIAL), food-truck (fh02 D=PARTIAL — distributed across 3 questions), mobile-app (high/05 D=PARTIAL — components present, never crystallized), property-management (med/03 carries 3 reframes in Exec but none staged as top-of-Themes line; high/07 buries reframe in Exec ¶4), tool-library (high-B "mutual-visibility infrastructure" never crystallized; FA1 D=PARTIAL), youth-mentorship (high-B "measurement as intervention" carried but not lifted; med-B "inclusion vs protection" never staged). **Topics affected: 6/10.** Wearable-device, school-consolidation, space-party are positive cases (4/4 reframe-rich samples crystallize cleanly); food-truck/high/08 also crystallizes.
- **FA1 cross-link:** Saturated Mode 3 sub-pattern; ~50/50 split across reframe-rich high samples.
- **PP1 cross-link:** PP1 §"Categorical reframe is mandatory at med/high per §5.2" but full-synthesis prompt never names this expectation.
- **Recommended RP1 fix:** Add **Categorical-reframe explicit-staging requirement** to `phase4_full-synthesis.md` Document-3 "Important" section, per FA1 RP1 #6: *"If the cluster has a categorical reframe — a sentence-level claim that reframes the question itself ('we are not running X; we are running Y') — name it as a single declarative sentence at the top of the Themes section, separate from the individual Themes."*
- **Regression test:** med-A career-change (TL-12 reframe), tool-library/high/09 (mutual-visibility), youth-mentorship/high/11 (measurement-as-intervention).

**Pattern 4 — Persona-name leakage in `_summary.md` body prose (FA1 Mode 4) + novel `_synthesis.md` bullet-label sub-pattern.**
- **Affected topics (≥5):** career-change (cm01 — "from the skeptical Devil's Advocate to the body-attentive Empath"), food-truck (fh02 2 leaks; fh08 8 token leaks), habit-tracker (high-A — "The Devil's Advocate argues persuasively"), property-management (high/07 — 6 sentences across Exec + 4 themes; character-name leaks via possessives — Marcus, Maria, Margaret, Elena), tool-library (high-B — 2 leaks "The Devil's Advocate sharpens / caveat"), wearable-device (high/05 — novel `_synthesis.md` bullet-label "**Visionary alternatives**" / "**Visionary scenarios**"). **Topics affected: 6/10.** space-party, school-consolidation, mobile-app, youth-mentorship are positive cases.
- **FA1 cross-link:** Saturated at expanded definition (any persona-name leak in any non-attributed prose), 7/16 across 6 topics.
- **PP1 cross-link:** PP1 P0 #1 (most-urgent) — full-synthesis prompt is **silent** on persona-name suppression in `_summary.md` prose; the rule exists only for `_synthesis.md` ("Remove all persona attribution"). PP1 confirmed 40% leakage rate across sampled med/high summaries.
- **Recommended RP1 fix:** Add **Persona-name suppression rule** to `phase4_full-synthesis.md` Document-3 "Important" section AND extend the Document-2 rule to forbid bullet-label form. Concrete language: *"In `_summary.md`, persona names are prohibited in body prose — including in stylistic constructions like 'from X's lens to Y's frame', enumerations like 'across the X, Y, Z responses', possessive constructions ('the Pragmatist's ROI lens'), AND in `_synthesis.md` as bullet-label form ('**Visionary alternatives**'). Use lens types ('the operational lens', 'the cultural-stewardship lens') or stance language. The 'Personas contributing:' footer is the only allowed location for persona names."*
- **Regression test:** property-management/high/07 (6 sentences); food-truck/high/08 (8 tokens); wearable-device/high/05 (bullet-label sub-pattern).

**Pattern 5 — Central Tension field absent at min/med/high (PP1 P0 #2).**
- **Affected topics (≥10):** All 10 topics — only the low-effort sample emits an explicit `**Central Tension**:` field; all 5 of {min, 2 med, 2 high} samples bury it in Exec prose across every topic. **Topics affected: 10/10.**
- **FA1 cross-link:** Confirmed across all 16 FA1-scored samples (0/16 emit `## Central Tension` header at med/high). FA1 RP1 #5 saturated.
- **PP1 cross-link:** PP1 P0 #2 — the low prompt's required field is not present in min and med/high prompts.
- **Recommended RP1 fix:** Add `## Central Tension` field at top of `_summary.md` for med/high in `phase4_full-synthesis.md` Document-3 template; add same field to `phase4_summary-only_min-effort.md`. Mirror the low template's existing field.
- **Regression test:** All 5 of (min/med-A/med-B/high-A/high-B) summaries across any topic; verify field appears with substance ≤2 sentences after Title.

**Pattern 6 — Confidence-tag vocabulary inconsistency / loss at med/high `_summary.md` (PP1 §"Dimension 5").**
- **Affected topics (≥10):** All 10 topics — min uses `[recurring]/[single]`; low uses `[convergent]/[unique: feasibility|risk]/[trade-off]`; med/high `_summary.md` carries no inline tags despite synthesis having richer convergence data. **Topics affected: 10/10.**
- **FA1 cross-link:** Phase-5-signal partial finding; tag absence at high explicitly noted.
- **PP1 cross-link:** PP1 §"Dimension 5" — three different tag vocabularies across three prompts; med/high prompt does not specify per-action-item tagging.
- **Recommended RP1 fix:** Standardize tag set across all three Phase 4 prompts. Recommended (per PP1 + RG1): require med/high `_summary.md` to carry `[convergent: N/M]` / `[unique: <stance>]` / `[trade-off]` tags inline on Recommended Actions bullets (the BL1 ledger format). Update `phase4_full-synthesis.md` Document-3 Recommended-Next-Steps section.
- **Regression test:** Any med/high sample's Recommended Next Steps section after revision.

### Recurring in 3-4 topics (shorter mention)

**Pattern 7 — Frontmatter `stage` field divergence ("Phase 4: Summary Generation" min/low vs. "Phase 4: Response Synthesis" med/high).** All 10 topics show this. Regime-mandated per PP1 (different prompts label differently), but the field-name mismatch creates Phase 5 ingestion friction. Cosmetic alignment recommended (low priority).

**Pattern 8 — Frontmatter `synthesis-type` asymmetric inclusion (present at med/high, absent at min/low).** All 10 topics. Regime-mandated (only full-synthesis produces three doc types). Either include everywhere or omit; low priority.

**Pattern 9 — Action-list heading divergence (`Recommended Actions` at min/low vs. `Recommended Next Steps` at med/high).** All 10 topics. Documented in PP1 as cosmetic; recommend RP1 unify on `Recommended Actions` per template default.

**Pattern 10 — Word-count creep at med/high (above PP1's observed 1,100-1,400 range).** Habit-tracker high pair (1,820-1,860 words), wearable med-04 (~1,700 words). 3-4 topics affected; full-synthesis prompt does not specify a total-word target. PP1 RP1 P1 #5.

### Topic-distinctive (1-2 topics, flagged minimally)

- **Tool-library "quiet dropout" through-line** — appears strongly in med-A but is **not on the effort-comparison memo's persistent §3 list** despite BL1 marking it as `med`+ insight. Flag as "persistent per BL1 but not memo" candidate; topic memo should be updated.
- **Habit-tracker through-line losses** — TL-5 (privacy/trust), TL-8 (solo-dev as strategic asset), TL-11 (real-competitor-is-paper) sparse across all 6 samples. Likely cross-topic Mode 3 sub-pattern (regime-recurring topical-frame compression at summary stage); attribution unclear.
- **School-consolidation TL-G** ("design for 1,400 not 1,800") underweighted across all 4 efforts. Single-topic emerging finding; may be cluster-sampling artifact.
- **Mobile-app convergence-count regression at high/09** — emits zero `N personas converged` claims despite 7/7 + 5/7 BL1 rows. Attribution unclear (high/09 not in FA1's n=16); RP1 should propagate the high/05 fix.

## Within-Effort Prompt Stability

| Metric | Med pair | High pair |
|---|---|---|
| Mean intersection rate (across 10 topics, in-scope persistent TLs) | ~50-100% (cluster-shape gated) | ~50-100% (cluster-shape gated) |
| Topics flagged with cluster-shape-only XOR (good) | 10/10 | 9/10 |
| Topics flagged with unexplained instability | 0 | 1 (food-truck high pair: high/02 fails Axis C, A2, A3-content; high/08 passes) |

**Discussion.** The med pair across all 10 topics is **prompt-stable on cluster shape** — every topic's two med samples follow the same structural template, use the same convergence-phrasing register, and have XOR fully attributable to deliberate cluster-shape diversity per SS1 manifest. Food-truck is the most informative case: both med samples exhibit the same drift patterns (convergence-inflation and single-persona-reframe drops), which is **prompt-stable in the wrong direction** and gives med-FA1 coverage attribution to the prompt rather than to cluster shape.

The high pair across 9 of 10 topics is similarly cluster-shape-stable; the lone exception is food-truck's high/02 vs. high/08, where the same prompt produces clean-and-clean (A1, B), clean-and-fail (A3-content, A3-framing-summary, C), and fail-but-different (A2 stylistic register). The asymmetry tracks Provocateur-rich vs. Devil's-Advocate-caveats clusters: the prompt is more reliable when the cluster is strongly-convergent than when it has load-bearing single-persona dissents. **This is the dissent-preservation pressure RP1's single-persona-reframe-floor rule must address.**

## Format / Quality Drift Summary

Aggregate format-drift table, ranked by topic recurrence:

| # | Format drift | Topics affected | RP1 priority | Cross-link |
|---|---|---|---|---|
| 1 | Central Tension field absent at min/med/high `_summary.md` | 10/10 | P0 | PP1 P0 #2; FA1 RP1 #5 (saturated) |
| 2 | Confidence-tag vocabulary inconsistency / loss at med/high | 10/10 | P1 | PP1 §"Dimension 5" |
| 3 | Frontmatter `stage` field divergence | 10/10 | P2 (cosmetic) | PP1 §"Dimension 1" |
| 4 | Frontmatter `synthesis-type` asymmetric inclusion | 10/10 | P2 (cosmetic) | PP1 §"Dimension 1" |
| 5 | Action-list heading divergence | 10/10 | P2 (cosmetic) | PP1 §"Dimension 2" |
| 6 | Word-count creep at high above PP1 observed range | 3-4/10 | P2 | PP1 RP1 P1 #5 |
| 7 | Persona-name leakage in `_summary.md` prose | 6/10 | P0 (substantive) | PP1 P0 #1; FA1 Mode 4 |
| 8 | Categorical reframe not crystallized as headline | 6/10 | P0 (substantive) | FA1 RP1 #6 |

Items 1, 2, 7, 8 are the high-leverage substantive format drifts; 3-6 are cosmetic alignment.

## Positive Cases / Anomalies

- **school-consolidation high/09: FA1's only PASS in n=16; RG1 confirms generalization.** All four FA1-saturated modes clean; both high samples (high/05 + high/09) read as same-author / same-prompt despite cluster-shape divergence (union-staffing vs. identity-civic-anchor). The 1M-context variant produces in-distribution outputs aligned with the n=16 PASS. school-consolidation also escapes Mode 4 entirely across all 6 samples. **Positive prompt-stability case.**
- **wearable-device escapes the universal med Mode 1 failure via summary-length expansion.** med-04 (~1,700 words, largest summary in manifest) preserves major BL1 TLs cleanly where other topics' med samples fail at 43-64% A3-content. Hypothesis: wearable's privacy/UX-equity clusters carry load-bearing details that resist compression, and the synthesizer expanded length rather than aggregating. **Worth replicating** as RP1 design pattern: explicitly permit length expansion when distinctive single-persona content is dense.
- **property-management political-posture reversal: cleanest regime-mandated categorical-reframe-as-reversal.** Visible-accountability at low/med inverts to quiet-credibility at high (per memo §5.3). Both sampled high clusters (high/07 civic-organ + honest-displacement; high/02 visibility-paradox + strategic-neutrality) execute the reversal cleanly. The prompt **handles this correctly** — should be cited as evidence the regime contract works for inversions, not just convergent extensions.
- **career-change high/06 "productive dissent" inversion: regime-mandated DA dissent, NOT drift.** The volunteering-as-"weak predictor" inversion of memo's "strongest asset" claim comes from DA's TL-15 single-persona insight, which is the high regime's mandated job (surface productive dissent the lower regime cannot). **RP1 design constraint:** the eventual single-persona-reframe-floor rule must protect productive dissent (even when it inverts a memo-persistent claim), not just convergent extensions. Without this clause, RP1's iteration could erase regime-mandated inversions while fixing Mode 1.
- **youth-mentorship high/11 sub-pattern 2C: inverse of mobile-app/high/05 sub-pattern 2B.** Mobile-app undercounts when one persona reframes the same insight (counts only exact-framing matches). Youth-mentorship overcounts when one persona offers two framings (counts each framing as a separate persona). **RP1 regression must cover both** — mobile-app/high/05 (2B) and youth-mentorship/high/11 (2C). Fixing one without the other risks introducing the inverse drift.
- **tool-library memo-omitted through-line: "quiet dropout" / silent retention failure.** Surfaces strongly in med-A (Theme 3) and is BL1-load-bearing, but not on effort-comparison memo's §3 persistent list. **Flag for memo update** — meets the "persistent per BL1 but not memo" criterion in the methodology.
- **Med-FA1 coverage advantage at food-truck.** Both med samples have FA1 sub-findings, allowing RG1 to attribute med-tier drift items to the `phase4_full-synthesis.md` med-tier behavior specifically rather than inferring from high-only data. Pattern-confirmation strength is higher than other topics; food-truck functions as the load-bearing med-tier diagnostic.

## Recommendations for RP1

Cross-topic prioritization, sorted by drift-pattern recurrence count × severity:

### P0 — saturated, must fix before re-running

1. **Single-persona-reframe-floor rule for `_summary.md`** — recurrence: 6/10 topics, 12/16 FA1 samples.
   - Prompt file: `idea-symphony/prompts/phase4_full-synthesis.md`
   - Section: Document-3 "Important" / Synthesis-Strategy
   - New rule: *"Surface load-bearing single-persona reframes (counter-tests, distinctive timing claims, buried hypotheses, alternate diagnostic patterns, productive DA-anchored dissent **including dissent that inverts memo-persistent claims**). The 'synthesis over aggregation' bar applies to redundant raw points, not to distinctive reframes."*
   - Regression test: career-change/med/01 (3 dropped Visionary reframes); food-truck/med/03 (TL-5/7/8/14); mobile-app/high/05 (TL-9 5/7 + TL-14 6/7); tool-library/high/09 (6 single-persona TLs); habit-tracker/high/04 (A3-content 73%). **Plus**: career-change/high/06 volunteering inversion must survive (design constraint).
   - Cross-links: FA1 RP1 #1 (saturated); PP1 P0 #1.

2. **Persona-name suppression rule for `_summary.md` AND `_synthesis.md` bullet-label form** — recurrence: 6/10 topics, 7/16 FA1 samples.
   - Prompt file: `idea-symphony/prompts/phase4_full-synthesis.md`
   - Section: Document-3 "Important" + Document-2 instructions
   - New rule: *"In `_summary.md`, persona names are prohibited in body prose — including 'from X's lens to Y's frame', persona enumerations, and possessive constructions. In `_synthesis.md`, persona names are also prohibited as bullet-summary labels (e.g., '**Visionary alternatives**' as a bolded bullet head). Use lens types and stance language. The 'Personas contributing:' footer is the only allowed location."*
   - Regression test: property-management/high/07 (6 sentences + 4 character-name leaks); food-truck/high/08 (8 tokens, 5-persona enumeration); wearable-device/high/05 (`_synthesis.md` bullet-label novel sub-pattern); career-change/med/01; habit-tracker/high/04; tool-library/high/09.
   - Cross-links: PP1 P0 #1 (most urgent); FA1 RP1 #4 (saturated, expanded).

3. **Convergence-count discipline rule with bidirectional sub-pattern guardrails** — recurrence: 7/10 topics, 12/16 FA1 samples.
   - Prompt file: `idea-symphony/prompts/phase4_full-synthesis.md`
   - Section: Synthesis-Strategy / Consolidation-Process
   - New rule (FA1 RP1 #2 expanded): *"Before writing any 'all four / six of seven / every persona' count claim: (a) name the personas in scratch reasoning; (b) count distinct personas, not distinct framings — if one persona offers two angles, that is one persona, not two; (c) count personas who engage the underlying claim, even with different framing — do not require identical wording; (d) deduct any explicit dissenter; (e) default to underclaim ('Several personas surface…') when uncertain; (f) the summary doc must inherit count claims from attributed-doc preambles, not re-derive."*
   - Regression test: **mobile-app/high/05 (sub-pattern 2B undercount) AND youth-mentorship/high/11 (sub-pattern 2C overcount-multi-framing)** — both required to validate bidirectional fix. Plus career-change/high/06, food-truck/high/02, space-party/high/06, tool-library/high/09.
   - Cross-links: FA1 RP1 #2 (saturated, with sub-pattern catalog); PP1 §"Dimension 5".

4. **Categorical-reframe explicit-staging requirement** — recurrence: 6/10 topics, 5/16 FA1 D=PARTIAL or FAIL samples.
   - Prompt file: `idea-symphony/prompts/phase4_full-synthesis.md`
   - Section: Document-3 "Important" / template
   - New rule: *"If the cluster has a categorical reframe — a sentence-level claim that reframes the question itself ('we are not running X; we are running Y') — name it as a single declarative sentence at the top of the Themes section, separate from the individual Themes."*
   - Regression test: career-change/med/01 (TL-12 "diagnostic problem first" reframe); tool-library/high/09 (mutual-visibility infrastructure); youth-mentorship/high/11 (measurement-as-intervention); mobile-app/high/05 (methodology-as-load-bearing); property-management/med/03 (3 reframes).
   - Cross-links: FA1 RP1 #6 (saturated); PP1 §5.2 (categorical reframe mandatory at med/high but unstated in prompt).

5. **Add `## Central Tension` field at top of `_summary.md` for min/med/high** — recurrence: 10/10 topics, 16/16 FA1 samples missing the labeled field.
   - Prompt files: `idea-symphony/prompts/phase4_full-synthesis.md` (Document-3 template) AND `idea-symphony/prompts/phase4_summary-only_min-effort.md` (template).
   - Section: top-of-document template
   - New rule: *"After the title, emit `**Central Tension**: [one sentence]` mirroring the low template."*
   - Regression test: any med/high or min sample post-revision; verify field appears with substance ≤2 sentences after `# Summary:`.
   - Cross-links: PP1 P0 #2; FA1 RP1 #5 (saturated).

### P1 — recurrent format/contract drift

6. **Distinctive-mode (lens) preservation floor for `_summary.md`** — recurrence: 8/10 topics under broad criterion (≥1 lens flattened).
   - Prompt file: `idea-symphony/prompts/phase4_full-synthesis.md`
   - Section: Document-3 "Important"
   - New rule (FA1 RP1 #3): *"Even at executive-summary compression, retain at least one distinctive persona-flavored phrase per major theme. If a persona's distinctive analytical mode (cross-domain analogy, trend-extrapolation with time-windows, 'What if?' provocation, narrative specificity, somatic register) is load-bearing for the cluster's diversity, preserve a representative phrase or example."*
   - Regression test: career-change/high/06 (A3f-summary 57%; Storyteller, Empath, Connector lenses flattened); food-truck/high/02 (A3f-summary 50%); habit-tracker/high/04 (43%); mobile-app/high/05 (36%, 43-pt synthesis-vs-summary delta).
   - Cross-links: FA1 RP1 #3; FA1 Mode 3 saturated.

7. **Standardize confidence-tag vocabulary across three prompts** — recurrence: 10/10.
   - Prompt files: all three.
   - Section: action-item format spec
   - New rule: require `[convergent: N/M]` / `[unique: <stance>]` / `[trade-off]` tags inline on Recommended Actions bullets at med/high (currently absent); preserve min and low's distinct tag sets (regime-mandated).
   - Regression test: any med/high Recommended Next Steps section.
   - Cross-links: PP1 §"Dimension 5".

### P2 — cosmetic alignment (low-leverage)

8. **Frontmatter `stage` field unification** — 10/10. Either rename med/high to "Phase 4: Summary Generation" for `_summary.md` artifact, or add a sub-stage field. PP1 §"Dimension 1".
9. **Frontmatter `synthesis-type` asymmetric inclusion** — 10/10. Either include at min/low (with value `"summary"`) or omit at med/high. PP1.
10. **Action-list heading unification** — 10/10. Recommend `Recommended Actions` per template default. PP1 §"Dimension 2".
11. **Word-count target for med/high `_summary.md`** — 3-4/10. Add `Target 1000-1500 words` to `phase4_full-synthesis.md` Document-3. PP1 RP1 P1 #5.

### Design constraints for RP1 iteration

- **Productive-dissent protection**: P0 #1 (single-persona-reframe-floor) must protect inversions of memo-persistent claims (career-change/high/06 volunteering case). Without this clause, iteration could erase regime-mandated DA dissent.
- **Bidirectional convergence-count**: P0 #3 (count discipline) must be regression-tested against both 2B (mobile-app, undercount) and 2C (youth-mentorship, overcount-multi-framing). Fixing one without the other risks introducing the inverse drift.
- **Length permission**: Wearable-device demonstrates that summary-length expansion can escape med Mode 1; the prompt should not impose a hard upper-word-count that prevents this.
- **Reversal preservation**: Property-management's political-posture reversal demonstrates that the prompt handles regime-mandated reversals correctly — RP1 must not break this when adding categorical-reframe-staging rules (the rule must accommodate both extension and inversion forms).

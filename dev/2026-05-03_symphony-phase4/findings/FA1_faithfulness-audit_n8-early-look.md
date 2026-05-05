# FA1 Faithfulness Audit — n=8 Early Cross-Sample Synthesis

**Date:** 2026-05-04
**Samples scored:** 8 of 40 planned (4 med + 4 high; career-change + food-truck, 2 clusters per topic-effort cell)
**Prompt under test:** `idea-symphony/prompts/phase4_full-synthesis.md`
**Status:** Early-look snapshot. Final n=40 synthesis will live in `FA1_faithfulness-audit.md` once the remaining 32 samples are scored — *if* the stopping-criterion analysis below recommends finishing them.

---

## Headline

**0 of 8 samples pass overall.** Three failure modes are saturated at n=8 and ready for RP1 to act on: (1) `_summary.md` content compression that drops single-persona distinctive substance below the 90% A3-content floor; (2) convergence-count miscounts (overcounts and undercounts of "all four / six of seven / etc.") in synthesis and summary prose; (3) `_summary.md` framing-flattening that strips distinctive analytical modes (cross-domain analogy, somatic body-listening, narrative specificity, Devil's Advocate interrogation cadence). A fourth high-priority failure mode — persona-name leakage into `_summary.md` prose — is **emerging-toward-saturated** at 3 of 8 (1 med, 2 high), with mechanism understood and a one-line prompt fix identified. Quote faithfulness (Axis B), `_synthesis.md` persona-name absence (Axis A2-synth), and `attributed/` persona-name preservation (Axis A1) are clean at n=8 (≥7/8 PASS, no structural failure). Categorical-reframe (D) and foundational-reversal (E) are gated and partially saturated; gated denominators are large enough to draw an early-look conclusion but should be revisited.

**Recommendation: TARGETED TOP-UP** — sample +8 additional clusters (1 high cluster per unsampled topic) before declaring saturation final, because (a) all n=8 samples are from 2 of 10 topics, and (b) one saturated failure mode (summary content compression) and one emerging-toward-saturated mode (persona-name leakage) have mechanisms that could plausibly vary with topic genre. RP1 can begin **in parallel** with the +8 top-up on the three already-saturated failure modes; the top-up de-risks topic-bounded surprises before final RP1 sign-off.

## Stopping-Criterion Recommendation

### Saturated failure modes (RP1 can act on these now)

#### Mode 1: Summary content compression (A3-content-summary)

- **Hit rate:** **8/8** (career-change: 4/4; food-truck: 4/4; med: 4/4; high: 4/4) on at least one of: drop below 90% A3-content threshold, ≥3 single-persona TLs dropped from summary, or ≥1 load-bearing reframe absent. Strict 90% threshold breached in 7/8 (food-truck_high_08 at ~93% is the only PASS, and it still drops 2 single-persona TLs).
- **Mechanism:** The prompt's Document 3 instructions ("Extract patterns and themes across questions; aggregate lists of raw points fail the 'synthesis over aggregation' bar") actively dis-incentivize surfacing single-persona distinctive content; the synthesizer reads this as a license to compress into convergent themes. Single-persona reframes with the highest decision-relevance (load-bearing timing claims, alternate diagnostic lenses, contrarian moves) are the first casualties.
- **Concrete RP1 fix:** Add to `phase4_full-synthesis.md` "Important for Document 3" block: *"Surface load-bearing single-persona reframes. The Themes, Trade-offs, and Risks sections must include any single-persona insight that reframes the cluster's core question — counter-tests against the framing, distinctive timing claims, buried hypotheses, alternate diagnostic patterns. The 'synthesis over aggregation' bar applies to redundant raw points, not to distinctive reframes."* Recurs verbatim as the RP1 ask in 4 of 8 sub-findings.
- **Why more samples won't change this:** Hit rate is 8/8, both topics, both efforts; mechanism is the same in every failure (compression-by-prompt-license); the fix is identifiable from the 8 samples alone.

#### Mode 2: Convergence-count miscounts (Axis C)

- **Hit rate:** **7/8** (career-change: 4/4; food-truck: 3/4 — only food-truck_high_08 passes). Med: 3/4; High: 4/4. Bidirectional: overcounts ("all four"/"every persona" when ledger says 3/4) and undercounts ("three of four" when ledger says 4/4) both occur, often in the same sample.
- **Mechanism:** The prompt says "Use convergence as a quality signal" but does not require accurate counts. The synthesizer treats per-bullet sub-bullet count as a proxy without consistently mapping back to BL1; when one persona's framing is *adjacent-but-different*, it gets folded into convergence claims; when sub-bullet aggregation drops a persona's voice, the count silently shrinks. Samples with 7-persona rosters (high) have higher miscount rates than 4-persona (med), but both fail. Multiple samples re-introduce errors in the summary that weren't present in `attributed/`, suggesting the summary re-derives counts from memory rather than copying from `attributed/`.
- **Concrete RP1 fix:** Add to Consolidation Process: *"Convergence-count discipline. Before writing 'all four', 'six of seven', 'every persona', etc., name the specific personas you are counting; do not include adjacent-but-different framings; deduct any explicit dissenter even if their adjacent framing partially supports the claim; default to underclaim when uncertain ('Several personas surface…' is acceptable); the summary doc must inherit count claims from the attributed-doc preambles, not re-derive them."* This fix appears verbatim in 4 of 8 RP1 recommendations.
- **Why more samples won't change this:** PP1 P1 predicted this drift before any FA1 scoring; n=8 confirms across both efforts and both topics. Remaining samples will reconfirm not refute.

#### Mode 3: Summary framing-flattening (A3-framing-summary)

- **Hit rate:** **7/8** below 75% threshold or with at least 1 load-bearing lens flattened (career-change: 3/4; food-truck: 4/4; med: 3/4; high: 4/4). 2 samples drop below 60% structural-flattening floor (career-change_high_06 at 57%; food-truck_high_02 at 50%); the others sit at the 75% borderline with the same lens repeatedly flattened (Analogist's cross-domain analogies; Devil's Advocate's "Have we considered…" interrogation cadence; Visionary's "translation"/"cultural platform" register; Empath's somatic body-listening; Storyteller's narrative specificity).
- **Mechanism:** The prompt has no instruction to preserve distinctive *modes of analysis* in the summary, only distinctive content. Executive-summary compression strips persona-flavored phrases and replaces them with generic claims; rhetorical stances that are load-bearing for the cluster's diversity (e.g., DA's interrogative cadence) are flattened to declarative.
- **Concrete RP1 fix:** Add to Document 3 instructions: *"In `_summary.md`, even at executive-summary compression, retain at least one distinctive persona-flavored phrase per major theme. If a persona's distinctive analytical mode (cross-domain analogy, trend-extrapolation with time-windows, 'What if?' provocation, narrative specificity, somatic/body-language) is load-bearing for the cluster's diversity, preserve a representative phrase or example in Themes or Considerations sections."* Plus: *"Preserve distinctive rhetorical stances when consolidating — DA's 'Have we considered…' interrogation can survive as 'A still-open question is…' rather than fully flattened to declarative."*
- **Why more samples won't change this:** 7/8 hits across both topics and both efforts; same lens-types flattened across samples (Analogist analogies in 3/3 samples that include the Analogist; DA cadence in 4/4 samples that include DA at scale).

### Emerging failure modes (need more samples to confirm or refute)

#### Mode 4: Persona-name leakage in `_summary.md` prose (A2-summary)

- **Hit rate:** **3/8** (career-change_med_01: "the skeptical Devil's Advocate to the body-attentive Empath"; food-truck_high_02: "from the Pragmatist's ROI lens to the Visionary's cultural-stewardship frame"; food-truck_high_08: 8 persona-name tokens across 2 sentences in Themes prose). All 3 hits use the same rhetorical pattern: a "from X's lens to Y's lens" or enumeration breadth construction in a Themes / Executive-Summary sentence. 1/4 med, 2/4 high. Career-change: 1/4; food-truck: 2/4.
- **Stratification gap:** Topic-balanced (1 + 2) but plausibly genre-bounded (food-truck samples are more likely to use the "ROI vs. cultural-stewardship" rhetorical span because the personas span more divergent lens types at high effort). Med-vs-high stratification is 1:2 — directional but not definitive at n=8.
- **What additional sampling would tell us:** Whether the 3/8 rate holds across other topics with high-effort persona rosters (Provocateur, Visionary, Empath, etc.). PP1 P0 already identified this drift independently; n=8 confirms but does not yet saturate. With 8 more clusters (one high per unsampled topic), this should jump to either ≥6/16 (saturated) or stay flat at 3-4/16 (rare-but-real).
- **Mechanism is sharp:** PP1 named it ("the prompt is silent on persona-name suppression in `_summary.md` prose; the rule exists explicitly only for `_synthesis.md`"); RP1 fix is a one-line prompt addition.

### Unique / one-off observations

- **food-truck_high_08 Visionary quote wording variance** (Axis B PASS-with-warning): one quoted phrase modified from "the kind of food truck operation you can be proud of" to "the food truck operation the city can be proud of". Substance preserved; only B-axis edge case in the entire n=8 set. Likely sample-specific; not a priority.
- **food-truck_med_01 cross-question bin migration** (Axis B PASS): the Analogist's "signature element pattern from jazz" attributed bullet is from Q4 in the source but placed under Q1 in `attributed/`. One occurrence in n=8.
- **food-truck_med_03 BL1 ledger discrepancy:** TL-15 ($300–$500 pre-purchase inspection) flagged as "PARTIALLY DROPPED" in BL1 but FA1 verifies it is fully present in `attributed/`. Single ledger-correction note; not a Phase 4 prompt issue.
- **career-change_med_01 absorbed-not-dropped TLs:** 2 single-persona TLs are folded into convergent groupings rather than surfaced distinctly. Pattern repeats elsewhere but as part of Mode 1, not separately.

### Gated-axis coverage gaps (Axes D and E)

- **Axis D (categorical-reframe survival, gated):** gated denominator = **8/8** (every sub-finding scored Axis D). Hit rate among gated samples: **5/8 PASS, 3/8 PARTIAL, 0/8 FAIL.** Verdict: **denominator is large enough**; D is operationally saturated. The reframe substance is preserved in 8/8 samples in `_synthesis.md`; in `_summary.md` it is preserved strongly in 5/8 and partially in 3/8 (the 3 partials all describe the reframe as "present in spirit but not crystallized as a single declarative statement"). RP1 may want to add an instruction to surface the reframe as a single declarative sentence at top of `_summary.md`, but this is a polish, not a structural fix.
- **Axis E (foundational-reversal survival, high-only, gated):** gated denominator = **4/4 high samples**. Hit rate: **3/4 PASS** (career-change_high_06 4/4 reversals; career-change_high_11 PASS; food-truck_high_08 PASS); **1/4 PARTIAL** (food-truck_high_02 PARTIAL in summary at 2.5/4). Verdict: **denominator at n=4 is borderline thin**; another 4 high samples would firm up the rate. Mechanism for the partial is the same as Mode 1 (summary compression drops the most pointed Provocateur-style dissent into a generic Trade-off bullet) — so additional samples likely confirm Mode 1 rather than yield a new pattern.
- **Topics/efforts/clusters most likely to surface gated cases at n=40:** From SS1 selection rationale, the 8 unsampled topics include school-consolidation (high reframe density), tool-library (commons-degradation reframe), wearable-device (privacy-architecture reframe), and habit-tracker (streak-grace emotional-reframe). These are the four highest-yield topics for Axes D and E and should be prioritized in any top-up.

### Topic-coverage gap

- **Sampled topics (n=8 covers):** career-change, food-truck.
- **Unsampled topics (n=32 would cover):** habit-tracker, mobile-app, property-management, school-consolidation, space-party, tool-library, wearable-device, youth-mentorship (8 topics).
- **Risk of topic-bounded failure modes:** Modes 1 and 2 (summary content compression and convergence miscounts) are mechanism-driven by the prompt structure and very likely topic-invariant; Mode 3 (summary framing-flattening) likewise operates at the prompt level. Mode 4 (persona-name leakage in summary prose) is mechanism-driven by the same prompt silence PP1 identified, but the *rate* may vary by genre — clusters with stark lens-divergence (e.g., school-consolidation: union-vs-community-vs-equity, tool-library: equity-vs-stewardship) plausibly invite more "from X's lens to Y's lens" rhetorical spans. **Risk is moderate but bounded.** No reason to expect entirely new failure modes from the unsampled topics; some risk that Mode 4 shifts from emerging to saturated, which would only strengthen the case for the already-identified RP1 fix.

### Recommendation

**Choose: (b) TARGETED TOP-UP** — sample +8 additional clusters (1 high-effort cluster per unsampled topic, n=8 → n=16 total) before final n=40 sign-off. Reasoning:

1. **Three failure modes are already saturated** (summary content compression 8/8; convergence miscounts 7/8; summary framing-flattening 7/8) with mechanisms understood and concrete RP1 fixes named verbatim across multiple sub-findings. RP1 can begin work on these now.
2. **One mode is emerging-toward-saturated** (persona-name summary leakage 3/8) with a sharp mechanism PP1 already predicted. n=8 alone is enough to act on it (the fix is a one-line prompt addition), but +8 clarifies whether topic-genre matters.
3. **Gated axes (D, E) are operationally saturated at the n=8 denominator for D (8/8) but borderline at n=4 for E.** A high-effort top-up doubles the E denominator to n=8 cheaply.
4. **Topic-coverage gap is moderate-not-fatal.** No mode requires the unsampled 8 topics to be diagnosed; they are needed only to firm up Mode 4 saturation and to surface any topic-bounded edge cases.
5. **Cost-benefit:** running 32 more samples to gain firmer rates on already-saturated modes is wasteful. Running 8 more (one high cluster per unsampled topic, prioritizing reframe-rich and gated-axis-rich topics) is the minimum sufficient additional evidence to declare RP1 sign-off complete.

**Specified top-up set (1 high cluster per unsampled topic, prioritizing gated-axis surface area):**
- habit-tracker_high — streak-anxiety / grace-mechanics or inactive-users-drift cluster
- mobile-app_high — feature-selection-methodology or team-capacity-burnout cluster
- property-management_high — regulatory-strategy or community-relations cluster
- school-consolidation_high — union-contract-reconciliation or community-identity cluster
- space-party_high — theme-coherence-vs-saturation or birthday-girl-agency cluster
- tool-library_high — commons-degradation or maturation-replication cluster
- wearable-device_high — privacy-architecture or lived-experience-trust cluster
- youth-mentorship_high — (not yet listed in baselines/; pull from SS1 manifest if available)

**Conditions that would flip the recommendation:**
- **To (a) STOP:** if user judges the +8 top-up cost ≥ the value of saturating Mode 4 and firming Axis E. RP1 fixes would be the same set; only Mode 4 confidence would be slightly weaker.
- **To (c) RUN ALL 32:** if RP1's first prompt-revision pass introduces an unexpected regression at n=8 (e.g., the convergence-count discipline addition causes a new failure mode), in which case the unsampled 32 act as the validation set under a revised prompt. **In that scenario, the unsampled 32 are RP2 inputs, not RP1 inputs.**

The conditions that would *not* flip the recommendation: any single unsampled topic surfacing an unexpected failure mode (Modes 1-3 saturation argument is strong enough that one outlier would be a sample-specific note, not a saturation refutation).

---

## Pass-rate matrix

| Axis | med (n=4) | high (n=4) | Combined (n=8) |
|---|---|---|---|
| Axis A1 pass rate (`attributed/` persona-name preservation) | 75% (3/4 PASS; cm01 FAIL at 87.5%) | 100% (4/4 PASS, all ≥95.8%) | **88% (7/8)** |
| Axis A2 pass rate (synthesis prose: persona-name absence) | 100% (4/4 PASS, 0 leaks) | 100% (4/4 PASS, 0 leaks) | **100% (8/8)** |
| Axis A2 pass rate (summary prose: persona-name absence) | 75% (3/4 PASS; cm01 FAIL with 2 leaks) | 50% (2/4 PASS; fh02, fh08 FAIL) | **63% (5/8)** |
| Axis A3-content pass rate (synthesis) | 75% (3/4; ch11 FAIL at 84%; fm03 FAIL at 82%; cm01 FAIL at 81%) | 75% (3/4; ch11 FAIL at 84%) | **63% (5/8 strict)** |
| Axis A3-content pass rate (summary) | 0% (4/4 below 90%; rates 43-64%) | 25% (1/4; fh08 PASS at ~93%) | **13% (1/8)** |
| Axis A3-framing pass rate (synthesis) | 100% (4/4 PASS; 2 borderline at 75% floor) | 100% (4/4 PASS at 86-100%) | **100% (8/8)** |
| Axis A3-framing pass rate (summary) | 75% (3/4 PASS at 75% floor; 1 borderline) | 50% (2/4 PASS; ch06 FAIL at 57%; fh02 FAIL at 50%) | **63% (5/8)** |
| Axis B pass rate | 100% (4/4 PASS, 0 hallucinations) | 100% (4/4 PASS; fh08 PASS-w/-warning) | **100% (8/8)** |
| Axis C pass rate | 0% (4/4 FAIL; rates 58-93%) | 25% (1/4 PASS; fh08 100%) | **13% (1/8)** |
| Axis D pass rate (gated; n=8) | 50% (2/4 PASS; cm01, fm03 partial) | 75% (3/4 PASS; ch06 partial) | **63% (5/8) PASS; remainder PARTIAL** |
| Axis E pass rate (gated; high-only, n=4) | n/a | 75% (3/4 PASS; fh02 PARTIAL on summary) | **75% (3/4)** |
| **Overall pass rate (all gated axes)** | 0% (0/4) | 0% (0/4) | **0% (0/8)** |

Note: per-doc split (synthesis vs. summary) is intentional. The saturation story turns on `_summary.md` being a categorically worse offender than `_synthesis.md` on A2, A3-content, and A3-framing. `_synthesis.md` passes A2 8/8, A3-content synthesis 5/8 (3 borderline FAILs at 81-84%), and A3-framing 8/8; `_summary.md` passes A2 5/8, A3-content 1/8, A3-framing 5/8. The compression-into-themes step is where most fidelity loss happens.

## Med vs. high comparison

The 4 med vs. 4 high samples fail at similar overall rates (0/4 vs. 0/4) but for different proximate reasons. Med samples fail mostly on Mode 1 (summary content compression at 4/4) and Mode 2 (convergence miscounts at 3/4); their A1 and A2 axes pass cleanly except for one med sample (career-change_med_01) which leaks 2 persona names into summary prose. Med Axis E is n/a.

High samples fail more broadly: Mode 1 hits 4/4, Mode 2 hits 4/4, Mode 3 hits 4/4 (with 2 of 4 dropping below the 60% structural-flattening floor). High also has the entire Mode 4 weight: 2 of 4 high samples leak persona names into summary prose, vs. 1 of 4 med. The interpretation: the prompt does scale from 4 to 7 personas at the synthesis level (A1, B, A3-framing-synthesis, A2-synthesis all hold at 100% across high), but compresses worse at the summary level when there are more lenses to consolidate. Aggregation pressure expresses itself most acutely in `_summary.md` Themes — more personas → more compression pressure → more dropped lenses → more "from X's lens to Y's lens" rhetorical shortcuts that leak persona names.

These claims are directional, not firm: n=4 vs. n=4 cannot statistically support the med-vs-high contrast, and one of the four high samples (food-truck_high_08) is the only PASS on Axis C and the only borderline-PASS on A3-content-summary in the n=8, so the "high fails more" claim depends partly on three other high samples carrying that load.

## Failure-mode taxonomy (≥ 2/8 hits)

### Pattern: Summary content compression (single-persona drops + load-bearing reframe loss)

- **Affected samples:** all 8 (cm01, cm04, ch06, ch11, fm01, fm03, fh02, fh08)
- **Topic stratification:** career-change 4/4; food-truck 4/4
- **Effort stratification:** med 4/4; high 4/4
- **Document stratification:** `_summary.md` 8/8; `_synthesis.md` 3/8 (cm01, ch11, fm03 dip below 90% at synthesis; the rest only fail at summary)
- **Mechanism:** Document 3 instruction permits "synthesis over aggregation" without floor-protecting single-persona reframes
- **Saturation verdict:** **saturated**
- **Recommended RP1 prompt revision target:** Add single-persona-reframe-floor rule to "Important for Document 3" block (concrete text in Mode 1 above)

### Pattern: Convergence-count miscounts

- **Affected samples:** 7 of 8 (all except fh08)
- **Topic stratification:** career-change 4/4; food-truck 3/4
- **Effort stratification:** med 3/4; high 4/4
- **Document stratification:** `_synthesis.md` 6/7; `_summary.md` 5/7; `attributed/` 5/7. Several samples have summary errors not present in attributed/, suggesting summary re-derives counts.
- **Mechanism:** prompt does not require accurate counts; synthesizer uses sub-bullet aggregation as proxy; adjacent-but-different framings get folded into convergence claims
- **Saturation verdict:** **saturated**
- **Recommended RP1 prompt revision target:** Convergence-count discipline rule (Mode 2 above)

### Pattern: Summary framing-flattening (distinctive analytical modes stripped)

- **Affected samples:** 7 of 8 (all except fh08; cm01 borderline-PASS at 100% but only because that cluster's lenses were unusually preserved)
- **Topic stratification:** career-change 3/4; food-truck 4/4
- **Effort stratification:** med 3/4; high 4/4
- **Document stratification:** `_summary.md` 7/8 problematic; `_synthesis.md` 8/8 PASS (all preserve framing)
- **Mechanism:** summary compression strips persona-flavored phrases and stances in favor of generic claims; lens-types most often flattened are Analogist (cross-domain analogies), DA (interrogative cadence), Visionary ("translation"/"cultural platform" register), Storyteller (narrative specificity), Empath (somatic body-language), Futurist (trend-extrapolation language).
- **Saturation verdict:** **saturated**
- **Recommended RP1 prompt revision target:** Distinctive-mode preservation floor for Document 3 (Mode 3 above)

### Pattern: Persona-name leakage in `_summary.md` prose

- **Affected samples:** 3 of 8 (cm01, fh02, fh08)
- **Topic stratification:** career-change 1/4; food-truck 2/4
- **Effort stratification:** med 1/4; high 2/4
- **Document stratification:** `_summary.md` 3/3; `_synthesis.md` 0/3. The mechanism is summary-specific.
- **Mechanism:** prompt is silent on persona-name suppression in `_summary.md` prose; the rule exists explicitly only for `_synthesis.md` ("Remove all persona attribution"). Rhetorical shortcut "from X's lens to Y's lens" looks like a non-attribution stylistic move and slips past the synthesizer's check.
- **Saturation verdict:** **emerging** (3/8 with both topics and both efforts hit, mechanism understood, but 3/8 below the saturation hit-rate threshold)
- **Recommended RP1 prompt revision target:** Add explicit persona-name prohibition for Document 3 (concrete text in Mode 4 above)

### Pattern: Distinctive-attribution rate just below 100% in `attributed/` (A1 strict-med fail)

- **Affected samples:** 1 of 8 (cm01 at 87.5%)
- **Topic stratification:** career-change 1/4; food-truck 0/4
- **Effort stratification:** med 1/4; high 0/4 (high uses weighted rubric and all 4 PASS at ≥95.8%)
- **Mechanism:** in cm01 the strict-med rubric requires 100% distinctive-attribution; one DA TL (TL-33) and one Empath TL (TL-35) are absorbed/dropped from `attributed/` into convergent groupings.
- **Saturation verdict:** **unique** (1/8; not a priority for RP1)
- **Recommended RP1 prompt revision target:** None at n=8 — would re-evaluate at n=40 if rate climbs to ≥3/8.

### Pattern: Borderline A3-framing-synthesis at the 75% floor

- **Affected samples:** 2 of 8 (cm04, fm01 — Lawyer's regulatory-grounding lens / Analogist's analogical lens partially flattened in synthesis)
- **Saturation verdict:** **emerging** (2/8 at synthesis-borderline; the same lens-types fail more severely at summary, so this is largely Mode 3's upstream shadow)
- **RP1 implication:** Mode 3 fix should resolve this preventively; no separate RP1 ask needed.

## Cross-check vs. PP1 prompt-drift findings

PP1 (`PP1_three-prompt-parity.md`) identified specific prompt drifts in `phase4_full-synthesis.md` before any FA1 scoring. n=8 evidence:

- **Persona-name suppression in `_summary.md` (PP1 P0):** **PARTIALLY CONFIRMS.** PP1 saw 4 of 10 sampled `_summary.md` files leak persona names (40%). FA1 n=8 sees 3/8 (37.5%) — same rate, same mechanism (rhetorical span constructions). Confirmed at n=8 as emerging-toward-saturated; the +8 top-up should saturate this.
- **Missing Central Tension field (PP1 P0):** **CONFIRMS.** Phase-5 signal log (`FA1_phase5-signal-log_n8.md`) shows 2/8 samples emit a clearly-labeled Central Tension; 6/8 surface the substance only implicitly across multiple themes; 0/8 use a `## Central Tension` field at the top of `_summary.md`. The prompt has no such field at med/high, and PP1's prediction that "high outputs surface it 8 of 9 sampled because the underlying responses already contain it, not because the prompt requires it" is exactly the n=8 picture: substance present, format absent.
- **Convergence-count raw-count vulnerability (PP1 P1):** **CONFIRMS.** PP1 noted "Convergence-count phrasing is mandatory at high but the full-synthesis prompt never names this expectation." n=8 confirms: 7/8 samples have count miscounts; the one PASS (food-truck_high_08) emits only 2 explicit count claims, both qualitative. The prompt's silence on convergence-count discipline is the proximate cause.
- **Categorical-reframe surfacing vulnerability (PP1 P1):** **PARTIALLY CONFIRMS.** PP1 noted reframe is mandatory at med/high per §5.2 but never named in the full-synthesis prompt. n=8 finds 5/8 PASS, 3/8 PARTIAL — the substance survives the prompt's silence, but is not crystallized as a single declarative reframe at top of `_summary.md`. PP1's prediction of vulnerability holds; saturation argument is "weak fail" rather than "hard fail" — the prompt's silence is a polish-level RP1 ask, not a structural one.

No PP1 drift fails to surface in n=8. No new structural drifts beyond PP1's list emerge in n=8. The PP1 → FA1 cross-check is **strongly aligned**.

## Winner / loser samples

- **Cleanest faithfulness (top 3):**
  1. **food-truck_high_08** — only sample to PASS Axis C (100% convergence accuracy); only PASS on A3-content-summary (~93%); fails only on A2-summary (2 named-persona sentences). Evidence that the prompt *can* produce clean summaries at high effort when the underlying responses are tightly structured.
  2. **career-change_med_04** — A1 100%, A2 100%, A3-content synthesis 100%, A3-framing borderline-PASS, B 100%, D PASS. Fails only on A3-content-summary (43%) and Axis C (one hard undercount). Compact failure profile.
  3. **career-change_high_06** — A1 98.2% weighted, A2 100%, A3-content 90% summary borderline, E 4/4. Fails on Axis C (~70%) and A3-framing-summary (57%). Strong on the high-effort gated axes.

- **Worst faithfulness (top 3):**
  1. **food-truck_high_02** — fails A2-summary (2 leaks), A3-content-summary (75-79%), A3-framing-summary (50% structural flatten), Axis C (~71% with 8 miscounts). Multiple mode-saturating evidence in one sample.
  2. **career-change_high_11** — fails A3-content both docs (84% and 56%), Axis C (1/4 numeric correct).
  3. **career-change_med_01** — fails A1 (87.5%), A2-summary (2 leaks), A3-content (81% and 44%), Axis C (58%). Only sample to fail A1 strict-med.

## Recommendations for RP1

Prioritized list of prompt revisions, sorted by saturation × impact. Each item marks evidence strength.

1. **[saturated] Add single-persona-reframe-floor rule for `_summary.md`.** Insert into "Important for Document 3" block of `phase4_full-synthesis.md`: *"Surface load-bearing single-persona reframes. The Themes, Trade-offs, and Risks sections must include any single-persona insight that reframes the cluster's core question — counter-tests, distinctive timing claims, buried hypotheses, alternate diagnostic patterns. The 'synthesis over aggregation' bar applies to redundant raw points, not to distinctive reframes."* (Mode 1, 8/8.)

2. **[saturated] Add convergence-count discipline rule.** Insert into Consolidation Process (or a new "Quality Standards: Counts" sub-section): *"Before writing any 'all four / six of seven / every persona' count claim: (a) name the specific personas you're counting in your scratch reasoning; (b) do not include adjacent-but-different framings; (c) deduct any explicit dissenter from the count even if their adjacent framing partially supports the claim; (d) default to underclaim ('Several personas surface…') when uncertain; (e) the summary doc must inherit count claims from the attributed-doc preambles, not re-derive."* (Mode 2, 7/8.)

3. **[saturated] Add distinctive-mode-preservation rule for `_summary.md`.** Insert into "Important for Document 3" block: *"Even at executive-summary compression, retain at least one distinctive persona-flavored phrase per major theme. If a persona's distinctive analytical mode (cross-domain analogy, trend-extrapolation with time-windows, 'What if?' provocation, narrative specificity, somatic/body-language, interrogative cadence) is load-bearing for the cluster's diversity, preserve a representative phrase in Themes or Considerations. Preserve distinctive rhetorical stances — DA's 'Have we considered…' interrogation can survive as 'A still-open question is…' rather than fully flattened to declarative."* (Mode 3, 7/8.)

4. **[emerging — but PP1-confirmed and 1-line fix]** **Add explicit persona-name prohibition for `_summary.md`.** Insert into "Important for Document 3" block: *"Persona names are prohibited in body prose — including in stylistic constructions like 'from X's lens to Y's frame' that appear to showcase breadth. To signal breadth, use convergence counts ('All seven perspectives converge', 'Six of seven personas independently…') and lens *types* without proper names ('from the operational lens to the cultural-stewardship lens'). The 'Personas contributing:' footer is the only allowed location for persona names in the summary."* (Mode 4, 3/8 + PP1 prediction.)

5. **[emerging — PP1 P0]** **Add `## Central Tension` field at top of `_summary.md` for med/high.** Mirror the low-prompt's existing Central Tension field. The substance is in 8/8 outputs but the format isn't; lifting prose to a labeled field is a low-risk ask that materially helps Phase 5 ingestion. (Phase-5 signal log, 2/8 explicit; PP1 P0.)

6. **[emerging]** **Add categorical-reframe explicit-staging requirement.** Insert into Document 3: *"If the cluster has a categorical reframe (a sentence-level claim that reframes the question itself), name it as a single declarative sentence at the top of the Themes section."* Currently 3/8 partials all describe the reframe as preserved-in-spirit-but-not-crystallized. Polish-level fix.

7. **[unique]** **Strengthen single-persona-preservation in `attributed/` (Document 1).** Only cm01 fails A1 strict-med; not a saturated mode. Defer to n=40 unless the +8 top-up surfaces a 2nd hit.

## Notes on n=8 limits

This synthesis does NOT claim:
- That topic-genre effects exist or do not exist in any failure mode (sampled topics: 2 of 10).
- A statistically firm med-vs-high contrast (n=4 vs. n=4 cannot support).
- A firm Axis E pass rate (n=4 high samples is borderline; the 75% rate is directional).
- That the +8 top-up will or will not change Mode 4's saturation status (it is pre-saturation at n=8 by design).
- That food-truck_high_08's clean Axis C (1/8 PASS) is a generalizable property of any input shape. It may be a one-off; cannot tell from n=8.
- That Axes B (quote faithfulness) and A2-synthesis (no persona names in synthesis prose) will hold at 100% across all 40 samples — the prompt-level mechanisms behind those passes are very robust, but only n=40 confirms that no edge case breaks them.

Confidence on the four saturated/emerging modes (1, 2, 3, 4): high. Confidence on RP1 fix wording: high — fixes appear verbatim across multiple sub-findings independently. Confidence on stopping-criterion recommendation: medium — depends on user's preference for closing the topic-coverage gap before RP1 sign-off.

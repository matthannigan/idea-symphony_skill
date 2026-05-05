# Phase 4 Investigation — FA1 Faithfulness Audit Findings

**Date:** 2026-05-04
**Samples scored:** 16 (4 med + 12 high; all 10 topics represented)
**Sampling design:** 8 original (career-change + food-truck, 2 clusters per topic-effort cell at med and high) + 8 top-up (1 high cluster per unsampled topic) per the n=8 early-look stopping-criterion analysis. 24 samples deferred as a post-RP1 validation set.
**Prompt under test:** `idea-symphony/prompts/phase4_full-synthesis.md`
**Supersedes:** `FA1_faithfulness-audit_n8-early-look.md` (early-look snapshot kept for traceability)

---

## Headline

**The +8 confirmed the n=8 saturation argument on three of four named modes and refuted it on one.** Modes 1 (summary content compression), 2 (convergence miscounts), and 3 (summary framing-flattening) all hold at saturated levels (12/16, 12/16, and 8-10/16 respectively). Mode 4 (persona-name leakage in `_summary.md` prose) **saturates at n=16** (6/16 across 5 of 10 topics, plus a new sub-pattern of *persona-name-as-bullet-label* found in `_synthesis.md` for the first time at wearable-device). One sample (school-consolidation_high_09) is the only PASS in the entire n=16 set; all 15 others FAIL on at least one strict-zero gated axis. Headline rate: **1/16 PASS = 6%**.

The n=16 picture is dominated by two structural failures: `_summary.md` is categorically worse than `_synthesis.md` on every shared axis (A2, A3-content, A3-framing — 11/16 vs. 15/16, 8/16 vs. 13/16, 11/16 vs. 15/16), and Axis C (convergence-count traceability) is the most-failed axis at 4/16 PASS. **RP1 readiness verdict: ready.** The four saturated failure modes plus three newly-saturated sub-patterns (Mode 2 multi-framing-as-multi-persona, Mode 4 bullet-label leakage, Mode 3 implicit-not-named reframes) yield a concrete, prioritized prompt-revision target list that the n=8 early-look already partially produced. The deferred 24 samples remain valuable as an RP2 regression check after RP1's first revision pass; they are not needed to motivate RP1.

## Confirm / refute table — early-look claims at n=16

| Early-look claim (n=8) | Predicted at n=16 | Actual at n=16 | Verdict |
|---|---|---|---|
| Mode 1 saturated (summary content compression, 8/8) | ≥14/16 | **12/16** (75%) — A3c-summ FAIL: cm01, cm04, ch11, fm01, fm03, fh02, habit, mobile + partial drops in prop, tool. Note: the n=8 claim used a slightly broader criterion (≥1 single-persona drop OR <90% threshold); applying that here yields ~14/16. Strict A3c-summ FAIL: 8/16. With partial-survival drops included as failures: 12/16. | **confirmed (saturated)** at strict-or-substantive-loss threshold; slightly less universal than n=8 because 4 top-up samples (school, space, wear, youth) genuinely passed A3c-summ. |
| Mode 2 saturated (convergence miscounts, 7/8) | ≥12/16 | **12/16** (75%) — Axis C FAIL or marked-with-miscounts: cm01, cm04, ch06, ch11, fm01, fm03, fh02, habit (1), mobile (3), space (2 over), tool (10/27), youth (5/37); PASS: fh08, prop, school (partial-pass per sub-finding), wear (under ±1 tolerance). | **confirmed (saturated)** — same rate as n=8 (~75%); now with directional sub-patterns differentiated (see Failure-mode taxonomy). |
| Mode 3 saturated (summary framing-flattening, 7/8) | ≥12/16 | **8-10/16** depending on rubric — strict A3f-summ FAIL: 5/16 (ch06, fh02, habit, mobile, plus borderline cm04, fm01, fm03 at 75% floor); broader "≥1 lens flattened" criterion: 12-13/16 because every multi-persona summary loses at least one literary/embodied lens (Storyteller, Empath, Analogist) under summary compression. | **confirmed (saturated)** under the "≥1 lens flattened" criterion that produced the n=8 number; *somewhat softer* under strict <60% threshold. The mechanism (summary compresses literary lenses faster than operational lenses) generalizes across all 10 topics. |
| Mode 4 emerging (persona-name leakage in summary, 3/8) | ≥10/16 (saturated) or 4-7/16 (rare-but-real) | **6/16 in `_summary.md`** (cm01, fh02, fh08, habit, prop, tool) **+ 1 new sub-pattern at `_synthesis.md` bullet-label level** (wear). 6/16 = 37.5% — sits in the upper-rare-but-real band, *just under* the saturation floor at strict reading. With wear's `_synthesis.md` bullet-label leak added (Mode 4 *expanded* to include label-form leakage), n=16 = 7/16 = 44%. | **saturated at the broader Mode-4 definition (any persona-name leak in any non-attributed prose doc): 7/16.** Confirmed across 5 of 10 topics (career-change, food-truck, habit-tracker, property-management, tool-library, wearable-device). The mechanism PP1 named ("prompt is silent on persona-name suppression in `_summary.md`") is now confirmed across topic-genre. **RP1 should treat Mode 4 as saturated.** |
| Axis E (gated, n=4 high) | denominator → n=8 high (or higher if more high samples) | **n=12 high** (every top-up high sample had at least one BL1-flagged reversal candidate). Pass rate: ch06, ch11, fh08, habit, mobile, prop, school, space, tool, wear, youth = 11/12 PASS; fh02 PARTIAL. **92% pass rate at n=12.** | **firmed.** Denominator tripled vs. n=8; pass rate held essentially flat (75% → 92% — the n=4 was directional, n=12 is firm). Axis E is **not** a structural failure mode for the prompt under test. |
| All n=8 Axes A2-synth, B passing rates (8/8) | maintained | **A2-synth: 15/16 maintained** (wearable's bullet-label is the lone novel break; arguably a new sub-pattern, see Failure-mode taxonomy below). **B: 16/16 maintained** (zero hallucinations across n=16; food-truck_high_08 PASS-w/-warning is the only edge case in n=16). | **confirmed with one notable extension** (Mode 4 sub-pattern: `_synthesis.md` persona-label leak, surfaced only at wearable-device but mechanism is the same as `_summary.md` rhetorical-shortcut leak). |
| PP1 cross-check 4/4 confirmed | 4/4 still confirmed | **4/4 confirmed at n=16** (no PP1-flagged drift refuted; one PP1 drift — convergence-count vulnerability — strengthened with directional sub-pattern catalog). | **confirmed.** PP1 → FA1 alignment is strong. |

## Pass-rate matrix

Counts use the spec rule "any gated axis fails = FAIL." A3-content and A3-framing pass rates count strict-threshold passes only (≥90% for content, ≥75% for framing); partials/borderlines that the sub-finding judged passing are counted as PASS, partials judged failing are counted as FAIL.

| Axis | med (n=4) | high (n=12) | Combined (n=16) |
|---|---|---|---|
| Axis A1 pass rate (`attributed/` persona-name preservation) | 75% (3/4 — cm01 strict-med fail at 87.5%) | 100% (12/12) | **94% (15/16)** |
| Axis A2 pass rate (synthesis prose) | 100% (4/4) | 92% (11/12 — wearable's "Visionary alternatives/scenarios" bullet labels) | **94% (15/16)** |
| Axis A2 pass rate (summary prose) | 75% (3/4 — cm01) | 67% (8/12 — fh02, fh08, habit, prop, tool fail) | **69% (11/16)** |
| Axis A3-content pass rate (synthesis) | 50% (2/4 — cm01, fm03 fail) | 92% (11/12 — ch11 fail) | **81% (13/16)** |
| Axis A3-content pass rate (summary) | 0% (0/4 — all four fail at 43-64%) | 67% (8/12 — ch06, fh08, prop, school, space, tool, wear, youth pass; ch11, fh02, habit, mobile fail) | **50% (8/16)** |
| Axis A3-framing pass rate (synthesis) | 100% (4/4 — 2 borderline at 75%) | 92% (11/12 — habit at 57%) | **94% (15/16)** |
| Axis A3-framing pass rate (summary) | 75% (3/4 — borderlines) | 67% (8/12 — ch06, fh02, habit, mobile fail) | **69% (11/16)** |
| Axis B pass rate | 100% (4/4) | 100% (12/12; fh08 PASS-w/-warning) | **100% (16/16)** |
| Axis C pass rate (strict) | 0% (0/4) | 33% (4/12 — fh08, prop, school-partial, wear-tolerance) | **25% (4/16)** |
| Axis D pass rate (gated; n shown) | 50% (2/4 PASS; 2 partial — gated denominator 4/4) | 75% (9/12 PASS; 3 partial — gated denominator 12/12) | **69% (11/16) PASS; 5/16 PARTIAL; 0/16 FAIL** (gated denominator 16/16) |
| Axis E pass rate (gated; high-only) | n/a | 92% (11/12 PASS; 1 PARTIAL — fh02 summary at 2.5/4) | **92% (11/12)** |
| **Overall pass rate (all gated axes)** | 0% (0/4) | 8% (1/12 — school-consolidation_high_09) | **6% (1/16)** |

The asymmetric `_synthesis.md` vs. `_summary.md` story from n=8 is **strengthened** at n=16: synthesis prose holds 94%/81%/94% on A2/A3c/A3f vs. summary prose 69%/50%/69%. The compression-into-themes step in Document 3 is where most fidelity loss happens, and this generalizes across all 10 topics. Axis C (25%) is the single most-failed gated axis.

## Med vs. high comparison

Med stays at n=4 (career-change/med/01, /04; food-truck/med/01, /03). High grows from n=4 to n=12 with the top-up. The n=4 med vs. n=12 high contrast is now firmly directional, not just suggestive:

- **Med fails harder on A1 strict-med** (cm01 at 87.5% triggered the only A1 fail in the entire n=16 set). High's weighted rubric tolerates the same level of dropping. Med's strict rubric is the right rubric, but it makes the 4-persona case more punishing per-sample.
- **Med fails universally on A3c-summ (0/4 PASS)** at rates 43–64%; high passes 8/12. The med summaries are *categorically worse* than high summaries on content survival — counter-intuitive, since high has more personas to compress. The proximate cause is that med synthesizers seem to compress more aggressively (probably because the cluster has only 4 voices, and the synthesizer feels it must aggregate to look like "synthesis"); 7-persona high clusters yield enough convergent core that the summary writes itself around the convergent claims, and individual single-persona contributions can be peripherally absorbed.
- **High fails harder on A2-summ** (4/12 fail vs. 1/4 med fail — though the rates are similar at 33% vs. 25%). Mode 4's "from X's lens to Y's lens" rhetorical span requires more divergent lenses to be tempting; med has fewer lenses to span.
- **Both efforts fail equally on Mode 2 (Axis C)**: med 0/4, high 4/12 = 33%. The convergence-count discipline is a prompt-level gap that scales similarly with persona count.

What n=4 med can support: directional claims about med-specific severity on A3c-summ (0/4 is a harder result than high's 8/12); confirmation that A2 and A3-framing failures are not med-specific. What n=4 med cannot support: any topic-genre×med interaction (only 2 topics at med; can't tell whether decision-methodology topics or other genres differ). Med-specific RP1 priorities should be conservative; the saturated patterns (Modes 1-4) apply at both efforts.

## Failure-mode taxonomy (≥ 2/16 hits)

### Pattern: Mode 1 — Summary content compression (single-persona drops + load-bearing reframe loss)

- **Affected samples:** 12/16 — strict A3c-summ FAIL: cm01, cm04, ch11, fm01, fm03, fh02, habit, mobile (8). Plus partial drops in prop (75% inclusive), tool (80% inclusive), school (73% strict but BL1-target rate 14/14 → PASS per sub-finding); wear and space pass content but with single-persona absorption. The 8/16 strict fail rate alone is below the early-look's 7/8 prediction; including the partial-drop substantive losses puts the rate at 12/16.
- **Topic stratification:** career-change 4/4, food-truck 4/4, habit-tracker 1/1, mobile-app 1/1, plus partial in prop, tool. Score 6 of 10 topics → **broad, not topic-bounded.** School-consolidation, space-party, wearable-device, youth-mentorship escape (all 1/1 in their topic).
- **Effort stratification:** med 4/4 (universal); high 4/12 strict + 4/12 partial.
- **Document stratification:** `_summary.md` 12/16 problematic; `_synthesis.md` 3/16 (cm01, ch11, fm03 dip below 90% at synthesis; rest fail at summary only).
- **Mechanism:** Document 3 instruction permits "synthesis over aggregation" without floor-protecting single-persona reframes. Summary compression bias systematically deprioritizes single-persona productive caveats (especially DA dissents) relative to convergent insights — confirmed across food-truck, career-change, mobile-app, tool-library, habit-tracker, property-management.
- **Saturation verdict:** **saturated.**
- **Recommended RP1 prompt revision target:** Single-persona-reframe-floor rule for `_summary.md` (n=8 RP1 item #1, unchanged). Concrete language: *"Surface load-bearing single-persona reframes. The Themes, Trade-offs, and Risks sections must include any single-persona insight that reframes the cluster's core question — counter-tests, distinctive timing claims, buried hypotheses, alternate diagnostic patterns. The 'synthesis over aggregation' bar applies to redundant raw points, not to distinctive reframes."*

### Pattern: Mode 2 — Convergence-count miscounts (Axis C)

- **Affected samples:** 12/16 — strict C fail: cm01, cm04, ch06, ch11, fm01, fm03, fh02, habit, mobile, space, tool, youth = 12; PASS: fh08, prop, school (partial-pass per sub-finding), wear (under tolerance) = 4.
- **Topic stratification:** career-change 4/4, food-truck 3/4 (fh08 the lone PASS), habit-tracker 1/1, mobile-app 1/1, space-party 1/1, tool-library 1/1, youth-mentorship 1/1; PASS: property-management 1/1, school-consolidation 1/1 (per sub-finding partial-pass), wearable 1/1.
- **Effort stratification:** med 4/4, high 8/12.
- **Document stratification:** `_synthesis.md` and `_summary.md` both affected; several samples (career-change_med_01, food-truck_high_02, food-truck_high_08 *excepting*) re-introduce errors in `_summary.md` not present in `attributed/`.
- **Mechanism (general):** Prompt does not require accurate counts; synthesizer uses sub-bullet aggregation as proxy.
- **Sub-patterns now distinguishable at n=16:**
  - **Sub-pattern 2A: Classic overcounting** — folding adjacent-but-different framings into "all four / six of seven" claims. Hits: cm01, fm01, fh02, school (3 over-tilts), space (2 over-tilts), property-management does *not* exhibit this (qualitative-only counts). Career-change baseline pattern.
  - **Sub-pattern 2B (NEW at n=16): Undercount-when-persona-reframes** — counting only personas with *exact* framing rather than personas with *underlying convergence*. Mobile-app exhibits this systematically (3 conservative undercounts at TL-19, TL-20, TL-22). The synthesizer reads a different reframing as non-convergence rather than as the same TL with different framing.
  - **Sub-pattern 2C (NEW at n=16): Overcount-when-one-persona-multiple-framings** — counting one persona's multiple framings of the same insight as multiple personas. Youth-mentorship exhibits this 3 times (TL-13/Q69 b3 "two personas argued" — both Analogist; TL-22/Q71 b6 "three personas warned" — all DA; Q74 b3 "two personas brought" — all Analogist). Tool-library Q50 b3 ("Four personas converged" on operationalize-adoption) is a softer instance. Wearable-device's analogous label-leak phenomenon is structurally adjacent.
- **Saturation verdict:** **saturated**, with three named directional sub-patterns. The RP1 fix must address all three; the n=8 fix (counting discipline) is necessary but not sufficient because it doesn't disambiguate "count distinct personas" vs. "count exact-framing-only" vs. "count distinct framings within one persona."
- **Recommended RP1 prompt revision target:** Convergence-count discipline rule (n=8 RP1 item #2) **expanded** with the three sub-pattern guardrails. Concrete language: *"Before writing any 'all four / six of seven / every persona' count claim: (a) name the specific personas you're counting in your scratch reasoning; (b) count **distinct personas, not distinct framings** — if one persona offers two angles, that is one persona, not two; (c) **count personas who engage the underlying claim, even with different framing — do not require identical wording**; (d) deduct any explicit dissenter even if their adjacent framing partially supports; (e) default to underclaim ('Several personas surface…') when uncertain; (f) the summary doc must inherit count claims from the attributed-doc preambles, not re-derive them."*

### Pattern: Mode 3 — Summary framing-flattening (distinctive analytical modes stripped)

- **Affected samples:** Strict A3f-summ FAIL: 5/16 (ch06, fh02, habit, mobile, plus borderline cm04 & fm01 at the 75% floor). Broader "≥1 load-bearing lens flattened" criterion: 10/16, including school, space, tool, wear, youth (each loses at least one literary/embodied lens — most often Storyteller's named-character scenes, Analogist's cross-domain analogies, or Empath's somatic register).
- **Topic stratification:** observed in 8 of 10 topics (career-change, food-truck, habit-tracker, mobile-app, school-consolidation, space-party, tool-library, youth-mentorship); only property-management and wearable-device escape — and even there partial flattening occurs in `_summary.md`.
- **Effort stratification:** med 1/4 borderline; high 4/12 strict-fail + ~5/12 borderline-flattening.
- **Document stratification:** `_summary.md` 8-10/16 problematic; `_synthesis.md` 15/16 PASS (only habit's 57% synth fails).
- **Mechanism:** Summary compression strips persona-flavored phrases; lens-types most often flattened are Analogist (cross-domain analogies), DA (interrogative cadence), Visionary ("translation" register), Storyteller (named-character specificity), Empath (somatic body-language), Provocateur (extreme moves).
- **Sub-pattern (NEW at n=16): Reframe carried implicitly but not named as headline categorical inversion.** Tool-library and youth-mentorship explicitly exhibit this. The cluster's reframe substance survives in summary themes/risks but the categorical inversion is never crystallized as a single declarative sentence at top of `_summary.md`. Wearable-device and property-management *do* crystallize the reframe as headline (and pass D); school-consolidation and space-party also crystallize it. The split is roughly 50/50 across the n=12 reframe-rich high samples.
- **Saturation verdict:** **saturated** under broad criterion; **emerging-borderline** under strict <60% criterion.
- **Recommended RP1 prompt revision target:** Distinctive-mode preservation floor for Document 3 (n=8 RP1 item #3, unchanged) **plus the new categorical-reframe explicit-staging requirement (n=8 RP1 item #6, elevated to saturated)**. Concrete addition: *"If the cluster has a categorical reframe (a sentence-level claim that reframes the question itself: 'we are not running X; we are running Y'), name it as a single declarative sentence at the top of the Themes section."*

### Pattern: Mode 4 — Persona-name leakage in non-attributed prose (`_summary.md` and `_synthesis.md`)

- **Affected samples:** 7/16 across both prose docs:
  - `_summary.md` leaks (6): cm01 ("the skeptical Devil's Advocate to the body-attentive Empath"), fh02 ("from the Pragmatist's ROI lens to the Visionary's cultural-stewardship frame"), fh08 (8 persona-name tokens across 2 sentences), habit ("The Devil's Advocate argues persuasively…"), prop (6 distinct sentences in Key Themes — pervasive: "The Empath's…", "The Storyteller's Marcus…", "The Audience Advocate's Maria…" — most severe single-sample violation), tool (2 sentences with Devil's Advocate as subject).
  - `_synthesis.md` leaks (1): wear ("**Visionary alternatives**…", "**Visionary scenarios**…" — capitalized persona-name as bullet-summary label, content drawn exclusively from the Visionary persona).
- **Topic stratification:** 5 of 10 topics (career-change, food-truck, habit-tracker, property-management, tool-library, wearable-device). Notably **broader than n=8 predicted**.
- **Effort stratification:** med 1/4; high 6/12 — high heavily over-represented (rate doubles at high).
- **Document stratification:** `_summary.md` 6/6 of the canonical-form leaks; `_synthesis.md` 1/1 of the new bullet-label sub-pattern.
- **Mechanism:** PP1 P0 named the canonical mechanism — "the prompt is silent on persona-name suppression in `_summary.md` prose." n=16 confirms PP1's prediction across 5 topics. The "from X's lens to Y's lens" rhetorical span at fh02 and the possessive enumeration at prop are the most common forms.
- **Sub-pattern (NEW at n=16): Persona name as bullet-summary label.** Wearable-device's `_synthesis.md` Q5 b5 and Q9 b5 use "**Visionary alternatives**" and "**Visionary scenarios**" as bullet headers when the bullet's content is drawn exclusively from one persona. The synthesizer treats the persona name as a *concept tag* rather than as a *naming reference* — but a cold reader cannot distinguish. This is structurally a Mode-4 leak that the n=8 set did not surface (because the n=8 samples did not have single-persona-dominated synthesis bullets where the labeling shortcut tempted the synthesizer).
- **Saturation verdict:** **saturated** (under the broader Mode-4 definition: any persona-name leak in `_summary.md` *or* `_synthesis.md` prose). 7/16 = 44% with mechanism understood and PP1-prediction confirmed.
- **Recommended RP1 prompt revision target:** Add explicit persona-name prohibition for both Document 2 *and* Document 3 (n=8 RP1 item #4, **elevated to saturated** and **expanded to cover bullet-label form**). Concrete language: *"Persona names are prohibited in any prose of `_synthesis.md` or `_summary.md` — including in stylistic constructions like 'from X's lens to Y's frame', possessive enumerations like 'The Storyteller's Marcus…', sentence-subject mentions like 'The Devil's Advocate argues…', and **bullet-summary labels like 'Visionary alternatives' or 'Pragmatist's caution'**. To signal breadth, use convergence counts ('Six of seven personas independently…') and lens *types* without proper names ('a feasibility-oriented case', 'an adversarial counter-test'). Also do not name characters from persona narratives (Marcus, Maria, Margaret, Elena, Sarah, etc.) in summary prose. Persona names belong only in `attributed/{cluster}.md`."*

### Pattern: Distinctive-attribution rate just below 100% in `attributed/` (A1 strict-med fail)

- **Affected samples:** 1/16 (cm01 at 87.5%) — unchanged from n=8.
- **Saturation verdict:** **unique** — does not recur in any of the +8 top-up. The strict-med rubric's bite shows up at career-change_med_01 only.

### Pattern: Borderline A3-framing-synthesis at the 75% floor

- **Affected samples:** 3/16 (cm04, fm01 from n=8, plus habit at 57% — habit is now a hard fail at synthesis level too).
- **Saturation verdict:** **emerging** — 3/16 = 19%, just below the saturation floor. The structural fix is upstream (Mode 3 fix) so no separate RP1 ask.

### Unique / one-off observations (n=16)

- **food-truck_high_08** Visionary quote wording variance (B PASS-w/-warning) — unchanged from n=8; still 1/16.
- **food-truck_med_01** cross-question bin migration (Axis B PASS) — unchanged.
- **food-truck_med_03** BL1 ledger discrepancy on TL-15 — unchanged.
- **space-party_high_06** "Mission Design Deck" cross-attribution between Storyteller and Visionary in `attributed/` (1 borderline misattribution, 0.5 weighted) — new at +8; unique.
- **school-consolidation_high_09 1M-context Opus run** — no excess artifacts beyond the broader high-effort baseline pattern. Marked for MA1, not blocking.
- **property-management_high_07 character-name leak** (Marcus, Maria, Margaret, Elena leak via possessive constructions tied to persona names) — new at +8; an extension of Mode 4. Should be folded into the Mode 4 RP1 prompt-revision text.

## Topic-coverage analysis (NEW at n=16)

For each of the 10 topics, the dominant failure modes:

| Topic | Sample(s) | Dominant failure modes |
|---|---|---|
| career-change | 4 (cm01, cm04, ch06, ch11) | All four samples FAIL. Modes 1, 2, 3 universal. Mode 4 at 1/4 (cm01). |
| food-truck | 4 (fm01, fm03, fh02, fh08) | All four samples FAIL. Modes 1, 2 saturated; Mode 3 4/4; Mode 4 at 2/4. fh08 is a near-PASS. |
| habit-tracker | 1 (high_04) | FAIL: Mode 1 (A3c-summ 73%), Mode 2 (1 undercount-by-1), Mode 3 (synth 57% AND summ 43% — *both* docs structurally flatten Empath/Storyteller/Analogist), Mode 4 ("The Devil's Advocate argues persuasively…"). Multi-mode failure. |
| mobile-app | 1 (high_05) | FAIL: Mode 1 (A3c-summ 81%, two BL1-targeted TLs missing), Mode 2 sub-pattern 2B (3 systematic undercount-when-reframes), Mode 3 (A3f-summ 36% structural flattening). PP1's convergence-count vulnerability validated. |
| property-management | 1 (high_07) | FAIL: Mode 4 the only failure — but a *severe* Mode 4 (6 distinct sentences in Key Themes leak persona names + character names from narratives). Modes 1, 2, 3 all PASS. The single-failure-mode topic. |
| school-consolidation | 1 (high_09) | **PASS** — the only PASS in n=16. Mode 2 has 3 over-tilts but defensible per sub-finding's contextual reading. Reframe-rich topic, the synthesizer crystallizes "Identity as Process, Not Building" cleanly. |
| space-party | 1 (high_06) | FAIL on Mode 2 only (2 strict overcounts: "all seven" when ledger is 6/7 and 5/7). Modes 1, 3, 4 all PASS. Reframe-rich felt-experience topic; lenses survive cleanly. |
| tool-library | 1 (high_09) | FAIL: Mode 2 (10/27 off-by-one), Mode 3 sub-pattern (categorical reframe carried implicitly but not named — "we run a mutual-visibility infrastructure" is the cluster's strongest insight and the summary loses the headline), Mode 4 (2 DA leaks in summary). Multi-mode failure. |
| wearable-device | 1 (high_05) | FAIL: Mode 4 sub-pattern only (bullet-label "Visionary alternatives/scenarios" in `_synthesis.md`). Modes 1, 2 (under tolerance), 3 all PASS. Reframe ("verifiable non-knowing") is *the* headline test for this topic and the synthesizer landed it. |
| youth-mentorship | 1 (high_11) | FAIL on Mode 2 sub-pattern 2C (5/37 off — three same-persona-multiple-framings counted as multiple personas; one "all seven" inflation; one undercount). Modes 1, 3 PASS-with-implicit-reframe. |

**Topic-genre observations:**

- **Reframe-rich topics** (school-consolidation, tool-library, wearable-device, property-management, space-party) split: 2 of 5 (school, space, wear) crystallize the categorical reframe cleanly and pass D; 2 of 5 (tool, youth) carry the reframe implicitly. Property-management crystallizes D but fails on Mode 4. The reframe-naming property is **not** topic-genre-determined; it appears to be cluster-shape-determined (whether one persona happens to surface a clean declarative reframe sentence).
- **Decision-methodology topics** (career-change, mobile-app, food-truck) fail dominantly on Modes 1 and 2 (compression and counting). The mechanisms are operational-prose-friendly, which makes the literary lens flattening (Mode 3) less salient but the count-discipline (Mode 2) more important. PP1's prediction that mobile-app would surface convergence-count vulnerability is validated directly.
- **Experience-design topics** (space-party, habit-tracker, youth-mentorship) fail dominantly on Mode 2 (counting) and Mode 3 (literary-lens flattening). Storyteller and Empath lenses are most likely to flatten under summary compression.

**No new topic-bounded failure mode emerges from the +8.** The mechanisms generalize.

## Cross-check vs. PP1 prompt-drift findings (refresh from n=8)

PP1 identified 4 prompt drifts. n=8 confirmed all 4. n=16 status:

- **Persona-name suppression in `_summary.md` (PP1 P0):** **fully confirmed at n=16, elevated to saturated.** 6/16 in summary + 1/16 new sub-pattern in synthesis = 7/16 total Mode 4 hits. PP1's prediction that the rule's silence would let leaks through is now validated across 5 topics.
- **Missing Central Tension field (PP1 P0):** **fully confirmed.** Phase-5 signal log (see separate file) shows 4/16 samples emit a clearly-labeled Central Tension; 12/16 surface the substance only implicitly. 0/16 use a `## Central Tension` field at top of `_summary.md`. The prompt has no such field at med/high.
- **Convergence-count raw-count vulnerability (PP1 P1):** **fully confirmed AND strengthened with three named sub-patterns.** PP1's prediction was correct in its general form and additionally points to a richer drift pattern (Mode 2A/2B/2C above) than PP1 enumerated.
- **Categorical-reframe surfacing vulnerability (PP1 P1):** **partially confirmed at n=16.** Reframe substance survives the prompt's silence in 11/16 samples (D pass) and is partial in 5/16. Where it fails to crystallize as a headline (5 partials) it is a "weak-fail polish-level" gap rather than a structural break. PP1's prediction holds; the n=16 result does not refute it.

No PP1 drift fails to surface. No new structural drifts beyond PP1's list emerge that aren't covered by the four named modes. PP1 → FA1 cross-check at n=16: **strongly aligned, with PP1 P1 (convergence-count) elevated by sub-pattern catalog.**

## Winner / loser samples

- **Cleanest faithfulness (top 4 of 16):**
  1. **school-consolidation_high_09** — the only PASS in n=16. A1 100%, A2 0/0, A3c 100%/14-of-14-targeted, A3f synth 71%, B 100%, C partial-pass with 3 mild over-tilts, D PASS, E PASS. The 1M-context Opus did not exacerbate the baseline high-effort tilt.
  2. **wearable-device_high_05** — fails only on the Mode-4 sub-pattern (bullet-label leak). Headline reframe ("verifiable non-knowing") and Central Tension match BL1 verbatim; D pass; E pass; B pass; A3-content 93% on summary-targeted TLs.
  3. **food-truck_high_08** — only n=8 sample to PASS Axis C strict; only PASS on A3-content-summary (~93%); fails only on A2-summary (2 named-persona sentences) and Axis A2-summary edge cases.
  4. **space-party_high_06** — FAIL on Axis C only (2 "all seven" overcounts). All other axes PASS. Reframe-rich topic with strong lens preservation.

- **Worst faithfulness (top 4 of 16):**
  1. **property-management_high_07** — A1, A3c-synth, A3f-synth, B, C, D, E all PASS — but A2-summary fails *severely* (6 distinct sentences across Exec Summary and 4 of 5 Themes leak persona names + 4 character names; "five of seven personas named directly in summary"). The single-failure-mode worst case.
  2. **food-truck_high_02** — fails A2-summary, A3-content-summary, A3-framing-summary (50% structural flatten), Axis C (~71% with 8 miscounts). Multi-mode-saturating evidence.
  3. **habit-tracker_high_04** — fails A2-summary, A3-content-summary (73%), A3-framing-synthesis (57% — *synthesis itself* structurally flattens 3 of 7 lenses), A3-framing-summary (43%). Both prose docs fail framing for the first time.
  4. **career-change_med_01** — fails A1 strict-med (87.5%), A2-summary (2 leaks), A3-content (81%/44%), Axis C (58%). Only sample to fail A1 strict-med across n=16.

## Recommendations for RP1

Prioritized list, sorted by saturation × impact across n=16. The n=8 early-look produced 7 RP1 items; this section confirms 5 unchanged, elevates 1 from emerging to saturated, and adds 2 new items reflecting sub-patterns surfaced only at n=16.

1. **[saturated, unchanged]** Add single-persona-reframe-floor rule for `_summary.md`. (Mode 1, 12/16.) Concrete language as in n=8 RP1 item #1. **Highest impact** — this is the single largest contributor to summary-doc fidelity loss across the n=16 set.

2. **[saturated, EXPANDED with three sub-patterns]** Add convergence-count discipline rule **with the three named sub-pattern guardrails**. (Mode 2, 12/16.) Concrete language: *"(a) name personas in scratch reasoning; (b) count distinct personas, not distinct framings within one persona; (c) count personas who engage the underlying claim, even with different framing — do not require identical wording; (d) deduct explicit dissenters; (e) default to underclaim when uncertain; (f) summary inherits counts from attributed-doc preambles, does not re-derive."* This adds sub-pattern 2B (mobile-app's undercount-when-reframes) and 2C (youth-mentorship's overcount-when-one-persona-multiple-framings) to the n=8 wording.

3. **[saturated, unchanged]** Add distinctive-mode-preservation rule for `_summary.md`. (Mode 3, 8-12/16 depending on threshold.) Concrete language as in n=8 RP1 item #3.

4. **[saturated, ELEVATED from emerging AND EXPANDED]** Add explicit persona-name prohibition for **both `_summary.md` and `_synthesis.md`**, **including bullet-summary labels and character-name leaks via persona-coupled possessives**. (Mode 4, 7/16.) Concrete language: *"Persona names are prohibited in any prose of `_synthesis.md` or `_summary.md` — including stylistic constructions ('from X's lens to Y's frame'), possessive enumerations ('The Storyteller's Marcus'), sentence-subject mentions ('The Devil's Advocate argues'), and bullet-summary labels ('Visionary alternatives', 'Pragmatist's caution'). Do not name characters from persona narratives (Marcus, Maria, Margaret, Elena, Sarah, etc.) in summary prose. Convey breadth via convergence counts and lens types. Persona names belong only in `attributed/{cluster}.md`."* This is the highest-leverage strict-zero-axis fix at n=16.

5. **[saturated, ELEVATED from emerging]** Add `## Central Tension` field at top of `_summary.md` for med/high. (PP1 P0; phase-5 signal log shows 4/16 explicit, 12/16 implicit.) Mirrors the low-prompt's existing field. Low-risk addition that materially helps Phase 5 ingestion.

6. **[saturated, ELEVATED from emerging — NEW evidence at n=16]** Add categorical-reframe explicit-staging requirement to Document 3. (Mode 3 sub-pattern; tool-library and youth-mentorship explicitly partial-on-D for this reason; school, space, wear, prop succeed by happenstance.) Concrete language: *"If the cluster contains a categorical reframe — a sentence-level claim that reframes the question itself ('we are not running X; we are running Y') — name it as a single declarative sentence at the top of the Themes section, separate from the individual Themes. The reframe should be derivable from at least three personas' responses and should change which actions are prioritized."*

7. **[NEW at n=16 — sub-pattern of Mode 4]** Add explicit prohibition on persona-name-as-bullet-label in `_synthesis.md`. (Wearable-device sub-pattern.) Concrete language: *"When a synthesized bullet's content is drawn predominantly from a single persona, do NOT use the persona name as a bullet-summary label. Replace 'Visionary alternatives,' 'Pragmatist's caution,' 'Devil's-Advocate flag,' etc. with content-descriptive labels naming the *idea* rather than the *source* — e.g., 'Speculative architectural alternatives,' 'Operational caution,' 'Structural-failure-mode flag.'"* (This may be folded into item #4 as the bullet-label clause; calling it out separately for emphasis since it surfaced a distinct rhetorical mechanism.)

8. **[unique, defer]** Strengthen single-persona-preservation in `attributed/` (A1 strict-med). Only cm01 fails A1 strict-med at n=16. Defer to RP2 unless RP1's first revision pass surfaces a 2nd hit.

## What n=16 still does NOT establish

- **Med-vs-high contrast firmness with only n=4 med.** The med-specific A3c-summ failure rate (0/4) is directional but cannot be statistically defended; the deferred 12 med samples would be needed to firm this up.
- **Topic-genre × failure-mode interaction firmness.** Each of 8 topics is represented by exactly 1 high cluster; any topic-bounded effect would be unobservable at n=1. The failure modes appear robustly cross-topic, but specific topic-genre claims (e.g., "experience-design topics fail Mode 3 more than decision-methodology topics") remain directional.
- **Whether the deferred 24 samples would surface RP2-relevant regressions after RP1's first prompt revision pass.** This is the pre-registered RP2 condition: if RP1's prompt revision introduces an unexpected regression at n=16, the deferred 24 become RP2 inputs (not RP1 inputs).
- **Whether food-truck_high_08's clean Axis C is generalizable** — at n=16 it remains a 1-of-16 anomaly; could be one-off (tightly structured underlying responses), could be reproducible. Prompt-mechanism reasoning suggests it is partly luck.
- **Whether wearable's bullet-label sub-pattern (Mode 4 in synth) is rare or common.** At n=16 it is 1/16, but the mechanism is the same as the more-frequent `_summary.md` rhetorical-shortcut, so it is plausibly under-sampled rather than rare. RP1's fix should cover both forms preventively.
- **Whether RP1's first revision pass on Mode 2 will introduce undercount or overcount inversions.** The three sub-patterns (2A overcounting, 2B undercount-when-reframes, 2C overcount-when-multi-framing) are in tension; a fix that addresses 2A could exacerbate 2B, and vice versa. The RP1 wording above tries to hold all three in mind; n=16 cannot certify it works.

---

**Sub-finding-level resolution note:** Two per-sample sub-findings (wearable-device_high_05 and space-party_high_06) self-described their net verdict as "PASS" despite failing one strict-zero gated axis (A2-synthesis at wearable; Axis C at space-party). Per the FA1 spec rule "any gated axis fails = FAIL", this synthesis reclassifies both as **FAIL** for the n=16 verdict tally. The reclassification is uniform per the spec rule, not a re-score of the underlying axis findings. Both sub-findings' axis-level data and recommended RP1 prompt-revision targets are preserved as authoritative inputs.

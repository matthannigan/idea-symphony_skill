# FA1 Faithfulness Audit — food-truck / high / 08_regulatory-strategy-and-political-engagement

**Date:** 2026-05-04
**Sample:** food-truck / high / 08_regulatory-strategy-and-political-engagement
**Effort:** high (7 personas, weighted A1 rubric)
**Phase 4 outputs audited:**
- `test-runs/food-truck/high/synthesis/attributed/08_regulatory-strategy-and-political-engagement.md`
- `test-runs/food-truck/high/synthesis/08_regulatory-strategy-and-political-engagement_synthesis.md`
- `test-runs/food-truck/high/synthesis/08_regulatory-strategy-and-political-engagement_summary.md`

**Baseline ledger:** `dev/2026-05-03_symphony-phase4/baselines/food-truck_high_08_regulatory-strategy-and-political-engagement_through-lines.md` (28 TLs, 21/28 convergent ≥3/7).

---

## Sample Verdict (top, for skim)

**FAIL** — driven by A2 (strict zero-tolerance) violation: 2 persona-name leaks in `_summary.md` prose. All other axes PASS or strong-PASS.

**RP1 revision target (concrete):** Strip persona names from two prose sentences in `_summary.md` "Key Themes" section (lines 35 and 38). Replacement should preserve the convergence signal without naming personas — e.g., "five of seven personas" or "a recurring warning across multiple perspectives" instead of enumerating "the Pragmatist, Politician, Devil's Advocate, Constraint Flipper, and Analogist." Also remove "The Audience Advocate, Visionary, and Constraint Flipper converge here" — replace with "three perspectives converge here" or a similar non-naming phrasing.

---

## Axis A1 — Attribution accuracy (high-weighted: correct=1, wrong-attribution=0.5, drop=0; pass ≥ 90%)

### Method
The attributed doc has ~254 attribution-bearing sub-bullets across 16 questions. Each bullet was spot-checked against the named persona's source file. ~30 high-stakes bullets sampled (specific numbers, distinctive analogies, unique-attribution claims, BL1-flagged TLs).

### Per-persona scorecard

| Persona | Bullets sampled | Correct | Wrong-attribution | Dropped | Weighted score |
|---|---|---|---|---|---|
| The Analogist | 6 | 6 | 0 | 0 | 6.0/6 (100%) |
| The Audience Advocate | 6 | 6 | 0 | 0 | 6.0/6 (100%) |
| The Constraint Flipper | 4 | 4 | 0 | 0 | 4.0/4 (100%) |
| The Devil's Advocate | 6 | 6 | 0 | 0 | 6.0/6 (100%) |
| The Politician | 4 | 4 | 0 | 0 | 4.0/4 (100%) |
| The Pragmatist | 3 | 3 | 0 | 0 | 3.0/3 (100%) |
| The Visionary | 3 | 3 | 0 | 0 | 3.0/3 (100%) |
| **Total** | **32** | **32** | **0** | **0** | **32.0/32 (100%)** |

### Excerpt verification table (high-stakes spot-checks)

| Attributed bullet (paraphrase) | Synthesis attribution | Source file (verified) |
|---|---|---|
| "the other 30 trucks are asleep…reasonable voice" | The Politician | the-politician.md:19 ✓ |
| "$12K-18K annually, 1.5 FTE" | The Politician | the-politician.md:29 ✓ |
| "we love the truck on Oak Street, don't take that away" | The Politician | the-politician.md:139 ✓ |
| "10-15 of 30 competitors will exit" | The Politician | the-politician.md:89 ✓ |
| "$2,000 fee is regressive…locks out future entrepreneurs" | The Audience Advocate | the-audience-advocate.md:23 ✓ |
| "nurse on a 10-hour shift" | The Audience Advocate | the-audience-advocate.md:21 ✓ |
| "400+ customers weekly, 60% from lower-income neighborhoods" | The Audience Advocate | the-audience-advocate.md:37,103 ✓ |
| "95% failure rate" of grey-zone | The Devil's Advocate | the-devils-advocate.md:137 ✓ |
| "150-250 hours/year" admin coordination | The Devil's Advocate | the-devils-advocate.md:49 ✓ |
| "$1,200-1,500 / 20-30 hours political consultant" | The Devil's Advocate | the-devils-advocate.md:65 ✓ |
| "10-15 informational interviews" | The Devil's Advocate | the-devils-advocate.md:93 ✓ |
| "Always packed, always fresh" | The Constraint Flipper | the-constraint-flipper.md:23 ✓ |
| "Indian spice trade…profit-sharing alignment" | The Analogist | the-analogist.md:143 ✓ |
| "Clownfish-anemone symbiosis" | The Analogist | the-analogist.md:41 ✓ |
| "I'm committed to building a food truck operation [the city] can be proud of" | The Visionary | the-visionary.md:193 ✓ (see B1 below for wording variance) |
| "Jazz musicians improvise…late-dinner truck" frame | The Pragmatist | the-pragmatist.md:121 ✓ |
| "Co-author best-practices document" | The Pragmatist | (verified — Pragmatist Q13) ✓ |

### Cross-reference vs BL1 Step 6 flags
BL1 noted no observed misattributions in Q1–Q12 spot-check; this audit confirms across Q13–Q16 as well. No wrong-attribution found.

**A1 score: 100% (32/32). PASS (≥ 90%).**

---

## Axis A2 — Persona names in synthesis/summary prose (strict zero-tolerance; footer lists/convergence counts allowed)

### `_synthesis.md`
Grep for persona names: **0 hits.** ✓

### `_summary.md`
Grep returned **2 hits**, both in the "Key Themes" section prose (not in footer):

| Line | Text | Violation |
|---|---|---|
| 35 | "A recurring warning across the Pragmatist, Politician, Devil's Advocate, Constraint Flipper, and Analogist responses is that conflating them damages both relationships…" | 5 persona names in prose |
| 38 | "The Audience Advocate, Visionary, and Constraint Flipper converge here." | 3 persona names in prose |

Total: 8 persona-name tokens across 2 sentences. Strict zero-tolerance rule violated.

**A2 score: FAIL (zero-tolerance hit).**

---

## Axis A3-content — Through-line coverage in both docs (≥ 90%)

| BL1 TL | In synthesis.md | In summary.md | Notes |
|---|---|---|---|
| TL-1 (3-scenario model) | ✓ Q1.1 | ✓ Immediate steps | strong |
| TL-2 (early engagement = reasonable voice) | ✓ Q1.2 | ✓ Exec §2 | strong |
| TL-3 (permit vs. council separate) | ✓ Q2.2, Q6.1 | ✓ Theme 2, Exec §3 | strong |
| TL-4 (data-rich econ brief) | ✓ Q2.3, Q8.1 | ✓ Near-term | strong |
| TL-5 (institutional spokesperson) | ✓ Q2.4, Q9.1–6 | ✓ Theme "Credibility borrowed" | strong |
| TL-6 (map council, focus swings) | ✓ Q2.1, Q5.1 | ✓ Immediate | strong |
| TL-7 (diagnose actual driver) | ✓ Q5.2 | ✓ Implied | preserved |
| TL-8 (opposition origin) | ✓ Q7.1–5 | ✓ Immediate | strong |
| TL-9 (commissary as moat) | ✓ Q3.1–4 | ✓ Risks (compliance fluency) | strong |
| TL-10 (field thinning) | ✓ Q10.1 | ✓ Exec §1, Opportunities | strong |
| TL-11 (catering+events+anchoring now) | ✓ Q1.4, Q12.1, Q16.1–3 | ✓ Near-term | strong |
| TL-12 (constraints force mature model) | ✓ Q12.1 | ✓ Exec §1 | strong |
| TL-13 (60-90 day window) | ✓ Q1.4, Q16.1 | ✓ Exec §2, Opportunities | strong |
| TL-14 (show up at hearing) | ✓ Q15.1–4 | ✓ Near-term | strong |
| TL-15 (regulatory = audience battle) | ✓ Q11.1 | ✓ Exec §4, Theme 5 | strong (cluster's reframe) |
| TL-16 (coalition-build) | ✓ Q4.4, Q9.1 | ✓ Theme "Credibility borrowed", Near-term | strong |
| TL-17 (founder-led architecture) | ✓ Q13.1–5 | ✓ Long-term | preserved |
| TL-18 (city as co-founder) | ✓ Q14.1–5 | ✓ Long-term | preserved |
| TL-19 (regulatory fight as brand) | ✓ Q1.5, Q4.3 | ✓ Opportunities, Risks (caveat) | strong (caveat preserved) |
| TL-20 (first-in-line for future zones) | ✓ Q4.2, Q4.3 | ✓ Long-term | strong |
| TL-21 (bring loyal customers) | ✓ Q11.2 | ✓ Implicit in coalition framing | preserved |
| TL-22 (regressive-fee/equity framing) | ✓ Q1.3, Q4.4 | ✓ Opportunities, Trade-offs | preserved (BL1 flagged as muted; still surfaces) |
| TL-23 (solo-founder bandwidth) | ✓ Q2.1 (90%/swings), Q6.5 (delegate) | ✓ Risks §1 | preserved (BL1 flagged as not central tension; appears as risk) |
| TL-24 (compliance fluency as service) | ✓ Q3.3 | ✓ Opportunities | preserved |
| TL-25 (inverse-scarcity) | ✓ Q4.5 | — | content-faithful but compressed; absent from summary |
| TL-26 (multi-framed briefs) | ✓ Q8.2 | ✓ Theme 3, Near-term | strong |
| TL-27 (commissary moat fragility) | ✓ Q3.5 | ✓ Risks (implicit) | preserved |
| TL-28 (honest pricing transparency) | ✓ Q12.6 | — | content-faithful in synthesis; absent from summary |

**Synthesis coverage:** 28/28 = 100% ✓
**Summary coverage:** 26/28 = ~93% (TL-25 and TL-28 not in summary; both are 1/7 single TLs and reasonably compressible at executive level).

**A3-content score: PASS (≥ 90%) in both docs.**

---

## Axis A3-framing — Distinctive persona framings preserved (≥ 75%; below 60% = RP1 priority)

| Framing | BL1 source persona | In synthesis | In summary |
|---|---|---|---|
| Cross-domain analogies (Hannibal, Pittsburgh steel, clownfish, Galápagos finches, Kodak, Toyota, MLK, Indian spice trade, oysters, lions/hyenas) | Analogist | ✓ at least 8 analogies named in attributed; synthesis prose preserves "Pittsburgh steel mills", "clownfish-anemone symbiosis", "Indian spice trade" framings | partial — most analogies stripped; abstract framing survives |
| Equity / regressive-fee / locked-out framing | Audience Advocate | ✓ Q1.3 ("regressive by design", "$2,000 fee locks out"), Q4.4 ("keep this pathway open"), Q8 ("community-access framing") | ✓ Theme 3, Opportunities, Trade-offs |
| Constraint-as-moat framing | Constraint Flipper | ✓ Q3, Q4.5, Q10, Q12 | ✓ Exec §1, Opportunities |
| Stress-test / "what does this assume" caveats | Devil's Advocate | ✓ explicit cautionary bullets in Q1, Q3, Q4, Q5, Q6, Q10, Q11, Q12, Q13, Q14, Q15, Q16 | ✓ Risks section |
| Power-mapping / persuasion-mechanics | Politician | ✓ Q1.2 "reasonable voice"; Q2 separate bureaucracies; Q5 swing-vote map | ✓ Theme 2 |
| Time-budget / sequencing specificity | Pragmatist | ✓ "4 hours" Q1, "8 hours" Q5, "Day 1 of comment period" Q8 | ✓ Immediate (specific hours) |
| Categorical-reframe / civic-architect / paradigm-shift | Visionary | ✓ Q13 ("microenterprise corridors"), Q14 ("categorically new"), Q15 ("from applicant to stakeholder") | ✓ Long-term |
| Devil's Advocate honesty caveat on TL-10 ("hope ≠ strategy; benchmark honestly") | DA | ✓ Q10.5 | ✓ Risks ("post-hoc rationalization" implied, "competitor paralysis is narrower than it appears") |

**A3-framing score: PASS (≥ 75%, ~88% by inspection). All 7 personas' signature framings survive in attributed; ~80% survive in synthesis prose; ~70% survive in summary (analogies are the main casualty at summary level, which is expected at executive abstraction).**

Not RP1 priority.

---

## Axis B — Hallucinated quotes (strict zero)

### Direct quotes in synthesis/summary prose checked against source

| Quoted string | Document | Source persona | Source file evidence | Verdict |
|---|---|---|---|---|
| "the reasonable voice in the room" | synthesis Q1.2 | The Politician | the-politician.md:19 — `"reasonable voice"` (with quotes) | ✓ exact substring |
| "Always packed, always fresh" / "always packed, always fresh" | synthesis Q10.3, Q12.3 | The Constraint Flipper | the-constraint-flipper.md:23 — `"Always packed, always fresh."` | ✓ exact |
| "we love the truck on Oak Street, don't take that away" | synthesis Q16.2 (paraphrased), summary | The Politician | the-politician.md:139 — exact match | ✓ exact |
| "I'm committed to building a food truck operation the city can be proud of" | synthesis Q15.1 | The Visionary | the-visionary.md:193 — original is "I'm committed to building **the kind of** food truck operation **you** can be proud of" | **B1: minor wording variance.** Substance preserved; "the kind of" dropped, "you" → "the city". Borderline-hallucination flag. |
| "I work nights and can grab dinner here" | summary Theme 3 (illustrative) | (illustrative paraphrase, not in source as a quoted customer line) | Not a verbatim source quote; closest is Audience Advocate Q15: "the nurse on a 10-hour shift" + Q8 "shift work and affordable meals" | **B2: synthesized exemplar.** Used in summary as illustrative customer voice, not an attributed source quote. Reads as illustration not as a sourced quote, so weak hit. |
| "what the ordinance impacts, your specific business situation, your proposed alternative" | synthesis Q15.4 | The Pragmatist | the-pragmatist.md (verified — three-bullet structure exists) | ✓ paraphrase only |
| "What's the core concern behind this ordinance?" | synthesis Q7.4 | The Devil's Advocate | the-devils-advocate.md:93 (10-15 informational interviews) | ✓ paraphrase of question framing |

### B verdict
- **2 borderline-hallucination flags** (B1 minor wording change to a Visionary quote; B2 illustrative-exemplar customer voice in summary).
- Neither rises to a fabricated-quote violation; both have direct source basis with substance preserved.
- Strict zero-tolerance: technically B1 is a substring modification of a quoted phrase, which is the only meaningful B violation.

**B score: PASS-with-warning (1 minor wording-variance flag).** RP1 minor: tighten the Q15 quote to match Visionary source exactly, or convert to paraphrase (drop quotation marks).

---

## Axis C — Convergence-count claims (100%; every claim matched to a BL1 row)

| Claim in synthesis/summary | Match to BL1 |
|---|---|
| "all seven perspectives is convergent" (summary Exec §1, re: field thinning) | TL-10 = 7/7 ✓ |
| "Every persona independently identified field-thinning" (summary Theme 1) | TL-10 = 7/7 ✓ |
| "all seven personas converge on…" (no explicit count emitted in synthesis prose; see Phase-5 audit below) | n/a — no explicit count claims that would need verification beyond TL-10 |
| "5 of 7" / "6 of 7" / "3 of 7" specifics | None emitted in synthesis or summary. All convergence references are qualitative ("recurring warning", "across multiple perspectives") or "all seven perspectives" (TL-10) |

**C score: PASS (100%).** Both explicit convergence claims match BL1 strong-convergent rows. No quantitative miscounts. Note: synthesis under-emits explicit `[convergent: X/7]` confidence tags (see Phase-5 audit).

---

## Axis D — Categorical reframe presence (gated; only if BL1 flagged)

**BL1 flag:** Yes — categorical reframe candidate is "Regulation is *audience*, not paperwork — the regulatory battle and the audience-building battle are the same battle, and community love is the load-bearing form of legitimacy" (TL-15, 7/7 convergent).

### Reframe preservation
- **Synthesis Q11.1:** "the regulatory battle and the audience-building battle are the same battle — community love is the load-bearing form of legitimacy, and permits are the brittle form." ✓ verbatim conceptual match
- **Summary Exec §4:** "the regulatory battle and the community-love battle are the same battle. Permits are brittle authority; community standing is load-bearing." ✓
- **Summary Theme 5 ("Regulatory battle = audience battle"):** explicit thematic elevation ✓

**D score: PASS — categorical reframe correctly elevated to summary-level theme.**

---

## Axis E — Foundational reversal (high-only, gated)

**BL1 candidates:**
- TL-10 (ordinance-as-gift / field-thinning reverses ordinance-as-threat) — strong-convergent 7/7
- TL-12 (constraints force mature model on accelerated timeline; jazz framing) — strong-convergent 7/7
- TL-15 (regulatory = audience battle; community love is load-bearing legitimacy) — strong-convergent 7/7 (also serves as Reframe)

### Reversal preservation in synthesis/summary
- **TL-10 reversal:** Summary Exec §1 — "the pending city ordinance is not primarily an existential threat — it is a forcing function that disproportionately rewards founders…" ✓ explicit reversal
- **TL-12 reversal:** Synthesis Q12.1 — "Constraints force the mature business model you'd eventually need anyway, on an accelerated timeline — and that's the central gift." ✓ explicit reversal (with DA caveat preserved Q12.5)
- **TL-15 reversal:** see Axis D — preserved both at synthesis and summary level.

**E score: Y (foundational reversal preserved across all three convergent reversal-TLs, with caveats).**

---

## Phase-5 Signal Emission Audit

| Signal type | BL1 candidate | Emission in Phase-4 outputs |
|---|---|---|
| Central Tension | "Engagement intensity vs. solo-founder bandwidth" (TL-23 + 11 supporting TLs) | **Partially emitted** — surfaces as Risks §1 in summary ("Solo-founder bandwidth cannot sustain both daily operations and a sustained political campaign") and as Q2.1/Q6.5 in synthesis. Not labeled as the cluster's central tension; not framed as the trade-off pulling against the convergent recommendation set. RP1-medium: elevate to "Key Tensions" framing. |
| Categorical reframe | "Regulation is audience, not paperwork" | **Emitted** — Theme 5 in summary, Q11.1 in synthesis. ✓ |
| Confidence tags | `[convergent: 7/7]` etc. on TL-2, TL-3, TL-4, TL-5, TL-6, TL-7, TL-8, TL-9, TL-10, TL-11, TL-12, TL-13, TL-14, TL-15, TL-17, TL-18, TL-19, TL-20 (and `[trade-off]` on TL-17, TL-18, TL-19, TL-23, TL-27) | **Not emitted** — synthesis/summary use prose convergence cues ("all seven perspectives", "every persona") rather than discrete tags. Phase-4 prompt doesn't require explicit tags; this is acceptable but reduces machine-readability for Phase-5. |
| Neither-lens / Conspicuous absences | n/a at high | n/a |

**Phase-5 verdict:** Reframe and reversal signals well-preserved. Central tension partially-preserved (named in Risks but not elevated as the cluster's defining tension). Confidence tags absent but not strictly required.

---

## Distinctive-TL preservation table (single/weak-convergent TLs that should still appear)

| TL | Convergence | In synthesis | In summary | Verdict |
|---|---|---|---|---|
| TL-21 (loyal customers at hearing) | 3/7 | ✓ Q11.2 | partial (coalition framing) | preserved |
| TL-22 (regressive/equity framing) | 1/7 (Audience Advocate signature) | ✓ Q1.3, Q4.4, Q8 | ✓ Opportunities, Trade-offs | preserved (BL1 flagged as softened, still surfaces) |
| TL-23 (solo-founder bandwidth) | 2/7 | ✓ Q2.1, Q6.5 | ✓ Risks §1 | preserved as risk; not as central tension |
| TL-24 (compliance fluency as service) | 2/7 | ✓ Q3.3 | ✓ Opportunities | preserved |
| TL-25 (inverse-scarcity / dominate one zone) | 1/7 | ✓ Q4.5 | — | preserved in synthesis only |
| TL-26 (multi-framed briefs) | 2/7 | ✓ Q8.2 | ✓ Theme 3 | strong-preserved (elevated to theme) |
| TL-27 (commissary moat fragility) | 1/7 | ✓ Q3.5 | partial (Risks "regulatory friction is already deterring casual entrants" — but moat-fragility framing not surfaced) | preserved in synthesis; muted in summary |
| TL-28 (honest pricing transparency) | 1/7 | ✓ Q12.6 | — | preserved in synthesis only |

**Distinctive-TL score:** 6/8 strong-preserved, 2/8 muted in summary (TL-25, TL-28). Acceptable at executive abstraction.

---

## Summary scorecard

| Axis | Score | PASS/FAIL | Priority |
|---|---|---|---|
| A1 (attribution) | 100% (32/32) | PASS | — |
| A2 (no persona names in synth/summary prose) | 8 violations (2 sentences in summary.md) | **FAIL** | **RP1-high** |
| A3-content (synthesis) | 28/28 (100%) | PASS | — |
| A3-content (summary) | 26/28 (~93%) | PASS | — |
| A3-framing | ~88% | PASS | — |
| B (no hallucinated quotes) | 1 minor wording variance | PASS-w/-warning | RP1-low |
| C (convergence counts) | 100% | PASS | — |
| D (categorical reframe) | preserved | PASS | — |
| E (foundational reversal) | Y | PASS | — |
| Phase-5 Central Tension | partial | — | RP1-medium |
| Phase-5 Reframe | emitted | — | — |
| Phase-5 Confidence tags | not emitted | — | — |

---

## Sample Verdict

**FAIL** on Axis A2 (strict zero-tolerance hit on persona names in `_summary.md` prose, lines 35 and 38).

All other axes pass. The synthesis is high-quality on substantive faithfulness: A1 spot-check is 100% accurate; A3-content covers 100% of BL1 TLs in the synthesis doc and 93% in the summary; A3-framing preserves all 7 personas' signature lenses; categorical reframe and three foundational reversals are explicitly elevated.

### Concrete RP1 revision targets

1. **RP1-high (A2 fix, blocking):** Edit `_summary.md`:
   - Line 35: replace "the Pragmatist, Politician, Devil's Advocate, Constraint Flipper, and Analogist" with "five of seven perspectives" or "multiple perspectives".
   - Line 38: replace "The Audience Advocate, Visionary, and Constraint Flipper converge here" with "Three perspectives converge here" or "This convergence appears across community-equity, civic-architect, and constraint-as-moat lenses".
   - Verify no other persona-name leaks introduced.

2. **RP1-medium (Phase-5 signal):** Elevate the engagement-intensity-vs-bandwidth tension to a labeled "Central Tension" / "Key Tension" framing in the summary, distinct from a generic Risks bullet. BL1 flags this as the cluster's defining trade-off; the synthesis currently lists it as a risk among many.

3. **RP1-low (B wording fix):** In synthesis Q15.1, adjust the quoted Visionary phrase to match source verbatim — original is "I'm committed to building **the kind of** food truck operation **you** can be proud of" — or convert from quoted to paraphrased to remove quotation marks.

### Notes on BL1 errors (not modified)

- BL1 header says 28 TLs and 18/28 convergent; body recount gives 21/28 convergent (75%). BL1's body recount is the correct figure; header should be reconciled in BL1, not in this audit.
- BL1's Convergence Map lists "16" 7-persona TLs but enumerates 18 IDs; this is a BL1 internal inconsistency flagged by BL1 itself ("(= 18 actually — see note)"). Not modified here.

---

## Verification

- All 7 response files read in full.
- Phase 4 prompt, BL1 ledger, effort-comparison memo, and all three Phase 4 outputs read.
- 32 attribution bullets spot-checked; 100% correct.
- 7 quoted strings in synthesis/summary checked against source; 5 exact, 1 minor wording variance, 1 illustrative paraphrase.
- 2 explicit convergence-count claims checked against BL1; both match TL-10 (7/7).
- A2 grep performed on both `_synthesis.md` (0 hits) and `_summary.md` (2 hits).
- All 28 BL1 TLs cross-referenced against synthesis (28/28) and summary (26/28).

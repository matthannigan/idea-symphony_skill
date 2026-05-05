# FA1 Faithfulness Audit — career-change / high / 11_the-field-s-future-mlps-ai-and-30-year-arcs

**Date:** 2026-05-04
**Sample ID:** career-change_high_11_the-field-s-future-mlps-ai-and-30-year-arcs
**Effort:** high (7 personas — A1 weighted scoring)
**BL1 ledger:** `dev/2026-05-03_symphony-phase4/baselines/career-change_high_11_the-field-s-future-mlps-ai-and-30-year-arcs_through-lines.md`
**Outputs audited:**
- `attributed/11_the-field-s-future-mlps-ai-and-30-year-arcs.md`
- `11_the-field-s-future-mlps-ai-and-30-year-arcs_synthesis.md`
- `11_the-field-s-future-mlps-ai-and-30-year-arcs_summary.md`

---

## Axis A1 — Persona-name preservation (weighted, high)

**Persona-name preservation rate: 7/7 = 100% (PASS, ≥ 90%)**

All seven personas (Analogist, Connector, Devil's Advocate, Futurist, Pragmatist, Systems Thinker, Visionary) appear by name in `attributed/`, with multiple bullets each. Footer also lists all seven.

### Per-persona distinctive-TL scorecard (weighted)

| Persona | Distinctive TLs (BL1) | Found in `attributed/` | Score |
|---|---|---|---|
| The Analogist | TL-26, TL-32, TL-46 | TL-26 ✓ ("Research at the intersection..."); TL-32 ✓ ("Succession model"; "Credibility-building arc"); TL-46 ✓ ("Movements shaped by people with dual expertise") | 3.0 / 3 |
| The Connector | TL-3, TL-10, TL-19, TL-34 | TL-3 ✓ ("Reverse mission creep"); TL-10 ✓ ("Clinical data sovereignty as the entryway"); TL-19 ✓ ("Year-three turn-down of prestigious fellowship"); TL-34 ✓ ("Four enabling conditions") | 4.0 / 4 |
| The Devil's Advocate | TL-7, TL-8, TL-9, TL-13, TL-14, TL-20, TL-22, TL-25, TL-31, TL-35, TL-40, TL-44 | All 12 present and correctly attributed (Q1×3, Q2×2, Q3×3, Q4×2, Q5×3, Q6×3, Q7×3, Q8×3) | 12.0 / 12 |
| The Futurist | TL-15, TL-30 | TL-15 ✓ ("Prioritize clinics in immigration detention medicine, infectious disease, maternal health"); TL-30 ✓ ("$95K-$125K by 2035") | 2.0 / 2 |
| The Pragmatist | TL-5, TL-16, TL-27 | TL-5 ✓ ("Email 5-10 MLP directors"); TL-16 ✓ ("spend one law-school semester learning the AI tools"); TL-27 ✓ ("bounded 3-6 month projects") | 3.0 / 3 |
| The Systems Thinker | (no fully-unique; anchor of TL-3, TL-23, TL-24) | TL-3 ✓ ("delayed failure mode"); TL-23 ✓ ("ED-style triage"); TL-24 ✓ ("JD as tool for systems change") | 3.0 / 3 |
| The Visionary | TL-4 | TL-4 ✓ — TWO bullets: "Position not to fill a role but to invent one"; "Being one of the first five credible nurse-attorney bridges in your region" | 1.0 / 1 |

**Distinctive-attribution rate: 28 / 28 = 100% (PASS, ≥ 90%)**

**Cross-reference to BL1 Step 6 flags:** BL1 reported "no fabrication, drop, or misattribution observed." Independent verification confirms — every distinctive TL traces to its named persona's response file with correct attribution.

**Axis A1 verdict: PASS**

---

## Axis A2 — Persona-name absence in `_synthesis.md` and `_summary.md` prose

`grep -E "The (Analogist|Connector|Devil's Advocate|Futurist|Pragmatist|Systems Thinker|Visionary)"` returns **zero matches** in both files.

| Document | Persona-name occurrences in prose | Result |
|---|---|---|
| `_synthesis.md` | 0 | PASS |
| `_summary.md` | 0 | PASS |

Convergence counts ("Strong convergence (all seven personas)", "Three personas independently land", etc.) are present but contain no persona names. Footer fields contain `Synthesized insights: 38` only — no Personas-contributing list in the synthesis (and the summary similarly omits it).

**Axis A2 verdict: PASS** (zero tolerance met)

---

## Axis A3-content — Content substance survival

Per BL1's persona-distinctiveness map, the 25 distinctive content TLs (excluding Systems Thinker, who has no fully-unique TLs and whose anchor TLs are convergent and surveyed separately) are scored for presence in each output document.

Classification: **V** = verbatim, **P** = paraphrased, **A** = absorbed (substance present but folded into a different bullet without preserving the distinctive substance), **D** = dropped. Survival = V + P.

| TL | Persona | BL1 target | `_synthesis.md` | `_summary.md` |
|---|---|---|---|---|
| TL-26 (research at intersection) | Analogist | should-also-appear | P (Q4 own bullet) | D |
| TL-32 (succession compounding) | Analogist | should-also-appear | P (Q5 own bullet) | A (folded into "founding member") |
| TL-46 (env-law/health-justice analogy) | Analogist | should-appear-in: synthesis | P (Q8 last bullet) | D |
| TL-3 (Reverse mission creep / Fixing-that-Fails) | Connector | should-also-appear | P (Q1 own bullet) | P (near-term action item) |
| TL-10 (clinical data sovereignty) | Connector | should-also-appear | A (alluded as "data-driven, structural questions") | D |
| TL-19 (turn-down of prestigious fellowship) | Connector | should-also-appear | P (Q3 own bullet) | P (long-term: "Choose first post-bar workplace") |
| TL-34 (four enabling conditions) | Connector | should-also-appear | P (Q6 own bullet) | A (themes/trade-offs absorb without enumeration) |
| TL-7 (MLP demand may not translate) | Devil's Advocate | should-also-appear | P (Q1) | P (trade-off: dual credentials) |
| TL-8 (FQHC funding volatility) | Devil's Advocate | should-also-appear | P (Q1) | P (Risks: "humanitarian funding politically volatile") |
| TL-9 (salary-tier compression) | Devil's Advocate | should-also-appear | P (Q1) | P (trade-off: salary-compression risk) |
| TL-13 (politically resilient breadth) | Devil's Advocate | should-also-appear | P (Q2 own bullet) | P (trade-off: VAWA / U / family-based) |
| TL-14 (uneven AI complexity) | Devil's Advocate | should-also-appear | A (subsumed in "AI bifurcates") | D |
| TL-20 (retraumatization risk) | Devil's Advocate | should-also-appear | P (Q3 own bullet) | P (Risks: "burnout can mask itself") |
| TL-22 (pattern-recognition discipline-specific) | Devil's Advocate | should-also-appear | P (Q4 first-bullet caveat) | P (Risks: "ICU intuition...mistakenly feel applicable") |
| TL-25 (intervention without policy platform toothless) | Devil's Advocate | should-also-appear | P (Q4 "Reality check") | P (Risks: "requires institutional platform") |
| TL-31 (field-shaping requires institutional aff.) | Devil's Advocate | should-also-appear | P (Q5 own bullet) | P (Risks: "trade caseload for influence") |
| TL-35 (single moments not a career compass) | Devil's Advocate | should-also-appear | P (Q6 "sustainability question" frames in same direction) | A (no explicit "80% bureaucratic" claim) |
| TL-40 (survivor bias / dated context) | Devil's Advocate | should-also-appear | P (Q7 own bullet) | P (Risks: "Survivor bias…overly optimistic") |
| TL-44 (calling-narrative may mask burnout) | Devil's Advocate | should-also-appear | P (Q8 own bullet) | P (Exec summary: "reality-test the calling…sabbatical") |
| TL-15 (clinics in detention med / ID / repro) | Futurist | should-also-appear | P (Q2 own bullet) | D |
| TL-30 ($95K-$125K, $120K+ trajectories) | Futurist | should-also-appear | V (Q5 own bullet) | V (Exec summary) |
| TL-5 (email 5-10 MLP directors) | Pragmatist | optional | A ("start mapping specific MLP programs…before law school" but the email-directors specific is dropped from synthesis prose) | V (Immediate: "Email 5-10 MLP directors…'What skills do your attorneys actually lack?'") |
| TL-16 (one semester on AI tools) | Pragmatist | optional | P (Q2 last paragraph) | D |
| TL-27 (bounded 3-6 month projects) | Pragmatist | should-also-appear | D | D |
| TL-4 (position to invent the role) | Visionary | should-also-appear | P (Q1 own bullet) | A (gestures via "founding member" but loses the first-arrival/"first five" framing) |

**Synthesis survival: 21 / 25 = 84%** (FAIL by strict 90% threshold)
- Survived (V or P): TL-3, TL-4, TL-7, TL-8, TL-9, TL-13, TL-15, TL-16, TL-19, TL-20, TL-22, TL-25, TL-26, TL-30, TL-31, TL-32, TL-34, TL-35, TL-40, TL-44, TL-46 (= 21)
- Lost (A or D): TL-5, TL-10, TL-14, TL-27 (= 4)

**Summary survival: 14 / 25 = 56%** (FAIL by strict 90% threshold)
- Survived: TL-3, TL-5, TL-7, TL-8, TL-9, TL-13, TL-19, TL-20, TL-22, TL-25, TL-30, TL-31, TL-40, TL-44 (= 14)
- Lost: TL-4, TL-10, TL-14, TL-15, TL-16, TL-26, TL-27, TL-32, TL-34, TL-35, TL-46 (= 11)

**Caveat against strict threshold:** All but two of the lost-in-summary TLs are tagged `should-also-appear` (a softer obligation) and TL-5 / TL-16 are tagged `optional` in BL1. By BL1's own per-TL targets, the summary is operating under a more permissive contract. Still, the rubric specifies a uniform 90% bar for both docs, and on that bar both fail.

**Axis A3-content verdict:** synthesis FAIL (84%); summary FAIL (56%).

---

## Axis A3-framing — Framing/lens survival

| Persona | BL1 framing | `_synthesis.md` | `_summary.md` |
|---|---|---|---|
| Analogist | Cross-domain analogical reasoning (finance/biotech/manufacturing/env-law); "translator's premium" | Partially preserved — env-law / health-justice analogy in Q5 + Q8; but real-estate/finance/biotech analogies absent | Flattened — no explicit analogies surface |
| Connector | Hidden-link spotter; integration over parallelism | Preserved — Q1 reverse mission creep; Q3 "from split identity to integrated expertise"; Q6 unification framing | Preserved — "Integration, Not Substitution" theme heading |
| Devil's Advocate | Risk-and-mitigation, falsification | Preserved — "Reality check", "Watch for", "Reality-test the calling", "Field-shaping requires institutional…" recur across questions | Preserved — explicit "Honest Risks" theme; "principal tensions are honest and unresolved" |
| Futurist | Trend-forecaster, dated trajectories | Preserved — "30-month skill compression", "2018-2023 transitioner cohort", "2027-2032 cohort defines best practice by 2040", "2035-2045 leadership earning capacity" | Preserved — "by the time a 2026-enrolled JD student graduates in 2029", "$95K-$125K", "redefine…by 2040" |
| Pragmatist | Operations-focused next-90-days specifics | Preserved — Q7 retains "Email 3-5 attorneys", "Identify 2-3 law schools", "30 minutes" specifics | Preserved — Immediate items: "Email 5-10 MLP directors", "2-4 week sabbatical", concrete person-counts |
| Systems Thinker | Feedback-loop, delayed-failure-mode | Preserved — Q1 "Fixing-that-Fails" trap (named); Q4 "early-warning / rapid-response model" | Partial — structural-intervention theme preserved; "Fixing-that-Fails" label not surfaced |
| Visionary | Category-creation, refusing existing institutional frame | Preserved — Q1 "Position to define the role rather than to fill an existing slot"; Q3 "may not even be 'immigration attorney'"; Q5 "founding a field, not joining one" | Preserved — "founding member of a clinician-rooted cohort that may redefine immigrant health-rights advocacy by 2040"; "do I want to help define a field that does not yet exist?" |

**Synthesis: 7 / 7 preserved (counting ST partial as preserved) = 100% PASS (≥ 75%)**
**Summary: 6 / 7 preserved (Analogist analogical lens flattened) = 86% PASS (≥ 75%)**

Neither doc drops below 60% (no structural framing-flattening RP1 priority).

**Axis A3-framing verdict: PASS**

---

## Axis B — Hallucinated quotes

Every direct-quote phrase in `attributed/` traced to its source persona file:

| Quote / phrase | Attributed to | Source persona file | Result |
|---|---|---|---|
| "live between" (the two systems) | Systems Thinker (Q1) | ST: "you already *live* between them" | Faithful (paraphrase) |
| "what skills do your attorneys actually lack?" | Pragmatist (Q1) | Pragmatist: "What skills do your attorneys actually lack?" | Faithful (verbatim) |
| "Reverse mission creep" | Connector (Q1) | Connector: "Reverse mission creep — from law to clinical integration" | Faithful (verbatim) |
| "Clinical data sovereignty as the entryway" | Connector (Q1) | Connector: "Clinical data sovereignty as the entryway" | Faithful (verbatim) |
| "30-month skill compression" / "40-60%" | Futurist (Q2) | Futurist: "The 30-month skill compression is real and underestimated"; "reducing time-to-competency for routine filings by 40-60%" | Faithful (verbatim) |
| "Real estate analogy: when document automation arrived…" | Analogist (Q2) | Analogist: same phrasing | Faithful (paraphrase) |
| "AI liberates attorneys from paper" | Visionary (Q2) | Visionary: "AI won't eliminate the work—it will liberate it from paper" | Faithful (paraphrase) |
| "She understands what the stress does to your body. The lawyer knew what PTSD looks like from the inside." | Connector (Q3) | Connector: identical sentence | Faithful (verbatim) |
| "from split identity to integrated expertise" | Connector (Q3) | Connector: identical phrase | Faithful (verbatim) |
| "She understands what we're actually facing, not just the paperwork." | Visionary (Q3) | Visionary: identical sentence | Faithful (verbatim) |
| "diagnostic humility" | Connector (Q4) | Connector: identical phrase | Faithful (verbatim) |
| "Founding a field, not joining one" | Visionary (Q5) | Visionary: "You're founding a field, not joining one" | Faithful (verbatim) |
| "Did you come from healthcare? Can I have 30 minutes?" | Pragmatist (Q7) | Pragmatist: "Did you come from healthcare? If so, I'd like 30 minutes…" | Faithful (paraphrase) |
| "What did you have to unlearn from legal training to think clinically?" | Connector (Q7) | Connector: identical question | Faithful (verbatim) |
| "What systems-level problem became visible to you only because of your background?" | Pragmatist (Q7) | Pragmatist: identical question | Faithful (verbatim) |
| "what surprised you negatively?" | Devil's Advocate (Q7) | DA: "What surprised you negatively?" | Faithful (verbatim) |

**Hallucination count: 0**

**Axis B verdict: PASS** (zero tolerance met)

---

## Axis C — Traceable convergence counts

Pass threshold: 100%.

| Loc | Claim | BL1 ground truth | Verdict |
|---|---|---|---|
| `attributed/` Q1 | "Six of seven personas converge on the same institutional map" (TL-1 FQHC corridor) | TL-1 = 5/7 (Analogist, Connector, Futurist, Pragmatist, Systems Thinker) | **INFLATED** (claims 6, actual 5) |
| `attributed/` Q2 | "Strong convergence (all seven personas)" (TL-11) | TL-11 = 7/7 | Correct |
| `attributed/` Q2 | "Five personas converge on the same answer" (TL-12) | TL-12 = 5/7 | Correct |
| `_synthesis.md` Q3 | "Three personas independently land on the same insight" (TL-18 identity integration) | TL-18 = 5/7 (Analogist, Connector, Pragmatist, ST, Visionary) | **DEFLATED** (claims 3, actual 5) — and the bullet's own attributed sub-bullets list 4 personas |
| `attributed/` Q3 | "Three personas independently land on the same insight" (TL-18) | same as above | **DEFLATED** |
| `_synthesis.md` / `attributed/` Q4 | "Strong convergence across personas" (TL-21) | TL-21 = 6/7 | Correct (qualitative) |
| `attributed/` Q4 | "Multiple personas converge on the same novel institution" (TL-23) | TL-23 = 5/7 | Correct |
| `attributed/` Q4 | "Six personas converge on the same reframe" (TL-24 JD as tool) | TL-24 = 5/7 (Analogist, Futurist, Pragmatist, ST, Visionary) | **INFLATED** (claims 6, actual 5; sub-bullets list only 4 personas) |
| `attributed/` Q5 | "Strong convergence" (TL-28) | TL-28 = 5/7 | Correct (qualitative) |
| `attributed/` Q6 | "Strong convergence" (TL-33) | TL-33 = 6/7 | Correct (qualitative) |
| `attributed/` Q6 | "Convergent specifics" (TL-34 four conditions) | TL-34 = 2/7 (Connector, Pragmatist) | **OVERCLAIM** — the qualifier "convergent" implies multi-persona consensus; only two personas raised it |
| `attributed/` Q7 | "Strong convergence on a layered network" (TL-36) | TL-36 = 5/7 | Correct (qualitative) |
| `attributed/` Q7 | "Strong convergence on the question set" (TL-37) | TL-37 = 5/7 | Correct (qualitative) |
| `attributed/` Q8 | "Strong convergence" (TL-42) | TL-42 = 5/7 | Correct (qualitative) |
| `attributed/` Q8 | "Strong convergence on the work's shape" (TL-43) | TL-43 = 6/7 | Correct (qualitative) |

**Quantitative claims with explicit numerals:** 4 — of which 2 are inflated (TL-1, TL-24) and 1 is deflated (TL-18). Only TL-11 (7/7) is precisely correct.
**Qualitative-but-misleading:** TL-34 ("Convergent specifics" applied to a 2/7 single-anchor pair).

**Strict accuracy: 1 / 4 numerical claims correct = 25% on numerical; 11 / 15 total convergence claims correct = 73%.**

**Axis C verdict: FAIL** (below 100% pass threshold; specifically the three numerical miscounts in `attributed/` Q1, `attributed/` Q3 (and `_synthesis.md` Q3), and `attributed/` Q4)

---

## Axis D — Categorical-reframe presence (gated)

BL1 flagged a categorical reframe candidate: **"career change" reframed from nurse→lawyer (substitution) to integrated clinician-lawyer (expansion); JD reframed from destination/profession to credential/tool.**

| Doc | Reframe survival | Evidence |
|---|---|---|
| `_synthesis.md` | **Y** | Q3 bullet: "Identity integration, not identity replacement: the nurse becomes the lens through which you practice law"; Q4 bullet: "Reframe the JD as a tool, not a destination — the credential opens institutional doors that pre-existing clinical insight justifies walking through"; Q8 bullet: "name the calling, then choose the credential — not the reverse" |
| `_summary.md` | **Y** | Theme heading: "Integration, Not Substitution"; Exec: "the JD is a tool, not a destination"; "The decision is not 'lawyer or nurse?' but 'do I want to help define a field that does not yet exist?'" |

**Axis D verdict: PASS**

---

## Axis E — Foundational-reversal presence (high-only, gated)

BL1 reversal candidates:
- **TL-24 (JD-as-tool, 5/7)** contradicts the implicit assumption in the cluster's questions that the JD is the goal/destination.
- **TL-11 (AI bifurcates rather than eliminates, 7/7)** reverses the assumption that AI threatens the entry-level role.
- **TL-43 (work has no name yet, 6/7)** reverses the institutional-fit assumption.

| Doc | Reversal survival | Evidence |
|---|---|---|
| `_synthesis.md` | **Y** | Q4: "Reframe the JD as a tool, not a destination" — explicit reversal; Q8 "first-principles design move: name the calling, then choose the credential — not the reverse"; Q2 AI bifurcation explicit |
| `_summary.md` | **Y** | "the JD is a tool, not a destination"; "AI as Bifurcator, Not Eliminator" theme; "do I want to help define a field that does not yet exist?" |

**Axis E verdict: PASS**

---

## Phase-5 Signal Audit

| Signal | BL1 candidate | `_summary.md` match | Notes |
|---|---|---|---|
| Central Tension | Reach toward credible-near-term hireable hybrid identity vs. bet on founding not-yet-named integrated practice over 30-year horizon — pulling law-school choices in different directions | **Partial match** — the dual framing is captured ("the JD is a tool, not a destination" + 30-year arc reframe), but not posed as a sharp central tension that pulls choices in opposing directions. Trade-offs section captures the closest analog. |
| Categorical reframe | "career change" = expansion not substitution; JD = credential not destination | **Match** — "Integration, Not Substitution" theme heading; explicit JD reframe |
| Confidence tags | `[convergent: N/M]` and `[trade-off]` markers on key TLs | **Partial** — the synthesis uses prose qualifiers ("Strong convergence (all seven personas)", "Five personas converge", "Multiple personas") but does not adopt the BL1 `[convergent: N/M]` format. Trade-offs are signaled by section headings rather than per-bullet tags. Counts are sometimes wrong (see Axis C). |
| Neither-lens gaps / conspicuous absences | n/a at high | n/a |

---

## Sample Verdict

### Tally

| Axis | Result | Notes |
|---|---|---|
| A1 — persona-name preservation | **PASS** | 7/7 personas named; 28/28 distinctive TLs correctly attributed |
| A2 — persona-name absence in synth/summary prose | **PASS** | 0 occurrences in either |
| A3-content (synthesis) | **FAIL** | 21/25 = 84% (below 90%) — TL-5, TL-10, TL-14, TL-27 absorbed/dropped |
| A3-content (summary) | **FAIL** | 14/25 = 56% (below 90%) — single-persona unique TLs heavily compressed |
| A3-framing (synthesis) | **PASS** | 7/7 preserved (Analogist analogical mode partially flattened but recognizable) |
| A3-framing (summary) | **PASS** | 6/7 preserved (Analogist analogical lens flattened) |
| B — hallucinated quotes | **PASS** | 0 hallucinations across 16 traced quotes/phrases |
| C — traceable convergence counts | **FAIL** | 11/15 ≈ 73%; explicit-numeral claims TL-1 (6 vs. 5), TL-18 (3 vs. 5), TL-24 (6 vs. 5) all wrong; TL-34 "Convergent specifics" overclaim on a 2/7 |
| D — categorical reframe | **PASS** | Reframe preserved in both docs |
| E — foundational reversal | **PASS** | JD-as-tool / AI-bifurcates reversal preserved in both docs |

**Pass: 7 axes. Fail: 3 axes (A3-content × 2, C).**

### Overall verdict: **FAIL**

### Failure modes

1. **Convergence-count drift in `attributed/`.** Three explicit numerical claims are wrong (one deflated, two inflated). In two of those cases (TL-18, TL-24) the bullet's own sub-bullet list contradicts the headline number — i.e., the prose claims "Three personas" or "Six personas" while the attributed sub-bullets enumerate a different count. This is internally falsifiable from the document itself.
2. **Compression of single-persona unique TLs in `_summary.md`.** TLs that BL1 explicitly flagged as `should-also-appear` (e.g., TL-15 specific clinical experiences, TL-26 research opportunity, TL-32 succession compounding, TL-46 historical analogy, TL-4 first-arrival leverage) are dropped or absorbed in the summary. The summary survives at 56% on the strict A3-content rubric. The Phase 4 prompt's guidance "Include every insight valuable enough to act on — single-persona insights often flag blind spots everyone else missed" applies primarily to the synthesis; the summary's "extract patterns and themes; aggregate lists of raw points fail" guidance pushes the other direction. The result is unique-insight loss in the most-read document.
3. **Synthesis miss of two single-persona unique TLs (TL-10 clinical data sovereignty, TL-27 bounded 3-6 month projects).** Substance is alluded to but not preserved as its own bullet. TL-5 (email 5-10 MLP directors) is also weakened in synthesis though preserved verbatim in summary.

### Recommended prompt revision target (RP1-actionable)

Two concrete additions to `idea-symphony/prompts/phase4_full-synthesis.md`:

**(a) Convergence-count verification step.** Add to the Consolidation Process section:

> When you state a convergence count in any of the three documents (e.g., "Six of seven personas converge", "Three personas independently land", "all seven personas"), the count must equal the number of distinct personas with attributed sub-bullets supporting that synthesized point. Before finalizing each numerical convergence claim, count the attributed sub-bullets you have written for that point and verify the count matches. If you state a count without an enumerable sub-bullet list (e.g., in `_synthesis.md` or `_summary.md`), the count must be reproducible from the same persona set you cited in `attributed/`.

**(b) Single-persona-insight floor for `_summary.md`.** Add to "Important for Document 3":

> The Risks & Challenges, Trade-offs, and Recommended Next Steps sections must collectively preserve the substance of every single-persona insight that surfaces a risk, mitigation, or operational specific the convergent personas did not raise — these are blind-spot signals. A single-persona observation can be folded into a broader bullet, but its distinctive substance (a specific actor, dollar figure, time horizon, mitigation step, or named pattern) should be present in some recommendation or theme. Aim to lose framing nuance, not actionable specifics.

Both revisions are testable on RP1: re-run cluster 11 with the updated prompt and re-score Axis C and summary-A3-content.

### Notes on BL1 ledger

BL1 ledger appears correct in all spot-checks. The internal counts in BL1's "Convergence Map" table show some labeling inconsistency (the 5-persona row says "9" with a parenthetical "(11 — actually)"; final corrected total = 46 / map sums to 46), but the per-TL persona attributions are accurate against the response files. No discrepancies to flag.

---

**Deliverable:** This file written to `/Users/matth/dev/idea-symphony_skill/dev/2026-05-03_symphony-phase4/findings/FA1_faithfulness-audit_career-change_high_11.md`.

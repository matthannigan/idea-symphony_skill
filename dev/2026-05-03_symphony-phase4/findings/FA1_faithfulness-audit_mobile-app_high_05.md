# FA1 Per-Sample Score: mobile-app/high/05_feature-selection-methodology-and-decision-bias

**Date:** 2026-05-04
**Sample ID:** mobile-app_high_05_feature-selection-methodology-and-decision-bias
**Effort:** high
**Personas in sample:** 7 (the-analogist, the-constraint-flipper, the-devils-advocate, the-first-principles-thinker, the-pragmatist, the-provocateur, the-systems-thinker)
**Scoring rubric:** weighted (high)

---

## Axis A1: Persona-Name Preservation in `attributed/{cluster}.md`

### Per-persona scorecard

Counted distinctive TLs from BL1's persona-distinctiveness map. Scoring per TL: correct attribution = 1.0; wrong = 0.5; dropped = 0.

| Persona | Named in `attributed/`? | Distinctive TLs preserved | Distinctive TLs misattributed | Distinctive TLs dropped | Persona score (0-1) |
|---|---|---|---|---|---|
| The Analogist | Yes | TL-1 (kitchen experiment), TL-7 (open-source analog), TL-10 (Michelin/river), TL-14 (ER protocol/load-bearing), TL-17 (NASA/test-audience/editorial-board), TL-19 (vision-vs-data asymmetry), TL-22 (industry baseline 5-8%/8-12%/40-60%) — 7/7 | 0 | 0 | 1.00 |
| The Constraint Flipper | Yes | TL-2 (equally-bad parity), TL-9 (delight archaeology / 20-second), TL-11 (feature draft), TL-22 (seasonal/cyclical), TL-21 (segmentation-from-restoration), TL-7 (rank-1-5 abandonment) — 6/6 | 0 | 0 | 1.00 |
| The Devil's Advocate | Yes | TL-7 (would-users-pay-to-rebuild + competitor install spikes), TL-11 (build different team), TL-16 (kill criteria w/ outsider), TL-22 (slide under ceiling), TL-24 (bad-code-vs-interconnected), TL-18 (50% team-cut), TL-26 (session-replay × sentiment) — 7/7 | 0 | 0 | 1.00 |
| The First Principles Thinker | Yes | TL-1 (80% navigation rebuild), TL-4 (falsification frame), TL-13 (gather all team members), TL-18 (pre-mortem), TL-20 (generative-vs-evaluative), TL-21 (4-6 weeks vs 1 week), TL-12 (resilience signal) — 7/7 | 0 | 0 | 1.00 |
| The Pragmatist | Yes | TL-15 (feature-cohort 4-group split), TL-14 (3-axis vitality), TL-24 (dependency audit), TL-25 (intent-onboarding) [strength-narrative dropped], TL-21 (phased softer variant), TL-11 (60-day sabbatical / feature-retirement role), TL-2 (polish operational version) — 6.5/7 | 0 | TL-25 strength-narrative communication frame absent | 0.93 |
| The Provocateur | Yes | TL-7 ($3/month paywall), TL-15 (per-cohort retention pivot), TL-19 (asymmetric error), TL-22 (speed-vs-retention 13%/8%), TL-23 (CAPTCHA / surface-errors-3-days), TL-11 (resume-bet, daily 1-10 sentiment), TL-13 (vision-irrelevance — "internal incoherence made visible") — 7/7 | 0 | 0 | 1.00 |
| The Systems Thinker | Yes | TL-1 (lighthouse), TL-3 (behavioral matrix + switching cost), TL-4 (consequence chain), TL-7 (feature-absence archaeology), TL-10 (canonical core-loop), TL-11 (fatigue pathway A/B/C/D), TL-12 (inverse experiment), TL-13 (under-15 words), TL-15 (cohort-by-entry-date), TL-21 (temporal-pattern + narrative-reversal), TL-22 (cohort-by-entry-date applied) — 11/11 | 0 | 0 | 1.00 |

**Persona-name preservation rate:** 7/7 = 100%
**Distinctive-attribution rate:** ~50.5/51 ≈ 99% (one partial drop: TL-25 strength-narrative)
**A1 verdict:** pass

**BL1 cross-reference flags incorporated:**
- Possibly fabricated: 0 flags reviewed; 0 confirmed (BL1 found none).
- Possibly dropped: 5 flags reviewed (TL-2 parity-window-closing logic, TL-15 aggregation, TL-23 absorbed under TL-12, TL-25 partial, TL-26 preserved); 1 confirmed material (TL-25 strength-narrative absent), 4 borderline/preserved.
- Possibly misattributed: 0 flags reviewed; 0 confirmed.

## Axis A2: Persona-Name Absence in Prose

### `_synthesis.md` occurrences

| # | Excerpt | Persona named | Type |
|---|---|---|---|

(none)

**Total in `_synthesis.md`:** 0

### `_summary.md` occurrences

| # | Excerpt | Persona named | Type |
|---|---|---|---|

(none)

**Total in `_summary.md`:** 0
**A2 verdict:** pass

## Axis A3-content: Substance Survival

| BL1 distinctive TL | Convergence | In `_synthesis.md`? | In `_summary.md`? | Notes |
|---|---|---|---|---|
| TL-1 hero-slot rotation | 6/7 | Yes (verbatim, Q17 bullet 1) | Yes ("hero-slot rotation experiment in parallel for top 3") | should-appear in both |
| TL-2 equally-bad parity | 3/7 | Yes (Q17 bullet 2) | Yes (opportunities: "diagnostic window is now") | not flagged for summary; appears anyway |
| TL-3 behavioral signals | 4/7 | Yes (Q17 bullet 3) | partial | not summary-targeted |
| TL-4 written assumption | 5/7 | Yes (Q19 bullet 1) | partial — appears in long-term step "behavioral assumption in a single sentence"; not as headline theme | should-appear in both |
| TL-5 blind voting | 6/7 | Yes (Q18 bullet 1) | Yes (theme + immediate step) | should-appear in both |
| TL-6 psychological safety | 4/7 | Yes (Q18 bullet 5) | absorbed (theme "Decouple Judgment from Ownership" mentions "72-hour defense moratoria, delegated-critique") | not flagged for summary |
| TL-7 switching cost / would-users-build-it | 6/7 | Yes (Q19 bullet 2) | partial — long-term step "would users build this themselves?" but not as theme | should-appear in both |
| TL-8 design for 8% | 7/7 | Yes (Q20 bullet 1) | Yes (theme "Build for Survivors, Not Strangers") | should-appear in both |
| TL-9 moment of capability/delight | 5/7 | Yes (Q20 bullet 2) | absent — no delight-moment / 20-second framing in summary | should-appear in both **(gap)** |
| TL-10 core-loop-in | 4/7 | Yes (Q20 bullet 3) | partial | not summary-targeted |
| TL-11 team enthusiasm | 7/7 | Yes (Q21 bullet 1) | Yes (theme "Team Health Is the Product") | should-appear in both |
| TL-12 perverse excellence | 6/7 | Yes (Q26 bullet 1) | Yes ("perverse-excellence test (polish 3, degrade 12)") | should-appear in both |
| TL-13 unclear value prop | 7/7 | Yes (Q25 bullet 1) | Yes (theme "Diagnose Before Cutting" + opening paragraph) | should-appear in both |
| TL-14 triage / vital signs | 6/7 | Yes (Q24 bullet 1) | absent — no triage / vital-signs / support-ticket framing | should-appear in both **(gap)** |
| TL-15 cohort segmentation | 4/7 | partial — Q19 "Identify the retention pivot" + Q24 churn-cohort pattern; "multiple cores per segment" aggregation not present | absent | not summary-targeted; gap noted in BL1 |
| TL-16 kill criteria + outsider switch | 3/7 | Yes (Q19 last bullet) | partial — "Pre-commit kill criteria… hand the kill switch to someone outside" appears in immediate step | not summary-targeted; appears anyway |
| TL-17 external check | 3/7 | Yes (Q18 bullet 2) | absent | not summary-targeted |
| TL-18 sunk-cost-as-future-cost | 3/7 | Yes (Q18 bullet 3) | absent | not summary-targeted |
| TL-19 asymmetric error budget | 3/7 | Yes (Q18 bullet 4) | Yes (paragraph 4 of exec summary) | not summary-targeted; appears anyway |
| TL-20 participatory user co-design | 7/7 | Yes (Q23 bullet 1) | partial — "user-council mechanism" appears as long-term step but not headline theme | should-appear in both |
| TL-21 single-feature radical MVP | 7/7 | Yes (Q27 bullet 1) | Yes ("Ship the radical-MVP experiment") | should-appear in both |
| TL-22 8% retention ceiling | 7/7 | Yes (Q22 bullet 1) | Yes (theme "Test the Ceiling Before Trying to Break It" + benchmark step) | should-appear in both |
| TL-23 friction-as-filter | 2/7 | Yes (Q26 bullet 4) | absent | not summary-targeted |
| TL-24 dependency audit | 3/7 | Yes (Q25 bullet 4) | absent | not summary-targeted |
| TL-25 communication/onboarding | 2/7 | partial — clarity-test gate (Q20) + intent-onboarding (Q20) preserved; strength-narrative absent | absent | not summary-targeted |
| TL-26 session-replay × sentiment | 1/7 | absorbed — not surfaced as a distinct synthesis bullet (only present in attributed sub-bullet) | absent | single-persona TL; absorbed into TL-9 |

**Substance-survival rate (`_synthesis.md`):** 24 verbatim/paraphrased + 2 partial / 26 = 92% (≥ 90% threshold)
**Substance-survival rate (`_summary.md`):** Of 13 BL1 should-appear-in-summary TLs: 9 verbatim/paraphrased (TL-1, TL-5, TL-8, TL-11, TL-12, TL-13, TL-21, TL-22, plus TL-19 which exceeds target) + 3 partial (TL-4, TL-7, TL-20) + 2 absent (TL-9, TL-14) = (9 + 3·0.5) / 13 = 81% (below 90%)
**Absorbed:** 1 synth (TL-26); 0 summ
**A3-content verdict:** pass on synthesis (92%); fail on summary (81% — TL-9 delight-moment and TL-14 triage missing entirely despite being should-appear-in-summary targets)

## Axis A3-framing: Framing/Lens Survival

Per the portable-analysis principle, persona names cannot appear in prose. "Preserved" here means the operational style/flavor of the persona's lens is detectable in the prose without attribution.

| Persona | BL1 distinctive framing | `_synthesis.md` | `_summary.md` |
|---|---|---|---|
| The Analogist | Cross-domain structural analogs (kitchen, ER, NASA, ecology, jazz, archaeology) | partial — Michelin and river survive in synth; jazz, NASA, ecology absent | flattened |
| The Constraint Flipper | Treat constraint-as-tool (data sparseness as methodology, navigation chaos as experiment) | preserved (Q17 bullet 2 "exploits the parity of bad execution"; Q22 bullet 2 "ceiling as constraint") | partial (theme "diagnostic window is now") |
| The Devil's Advocate | Burn down comfort; propose harder tests for every reassurance | preserved (kill criteria with outsider switch, 50% team-cut, blackout test) | partial (kill-criteria step) |
| The First Principles Thinker | Cleanest test of underlying physics; falsification framing | preserved (assumption matrix as falsification, hero-slot rebuild) | partial (long-term: behavioral assumption in a sentence) |
| The Pragmatist | Sequenced low-cost time-bounded experiments | preserved (2-week soft sunset, polish test, phased-removal) | preserved (immediate steps are pragmatic operational protocols) |
| The Provocateur | Push to absurd/extreme; willingness-to-pay paywall, CAPTCHA, kill the product to learn | preserved (CAPTCHA, $3/month, surface errors, feature-bounty Kickstarter) | flattened (extreme moves dropped from summary) |
| The Systems Thinker | Feedback loops, leverage points, structural-engineering reframe | partial — narrative-control reversal preserved Q27 bullet 3; consequence chain absent in synth prose | flattened |

**Framing-survival rate (`_synthesis.md`):** preserved 4/7 + partial 3/7 (counting partial as 0.5) = 5.5/7 = 79% (≥ 75% threshold)
**Framing-survival rate (`_summary.md`):** preserved 1/7 + partial 3/7 + flattened 3/7 = 2.5/7 = 36% (below 60% — indicates structural framing-flattening at summary level)
**A3-framing verdict:** pass on synthesis (79%); fail on summary (36% — structural flattening)

## Axis B: Hallucinated Quotes

The attributed file uses paraphrased "Original detail from [Persona]" structure for sub-bullets. Sub-bullets typically render the persona's idea in synthesizer language (with selective short quoted phrases). Spot-checked the most-quotation-rich sub-bullets and exec-bullet quotes against source persona files.

| Quote # | Quote text | Cited persona | Found in source? | Classification |
|---|---|---|---|---|
| 1 | "if I had to use only one fitness app tomorrow, would I open this for that feature?" (Q18 bullet 1 sub) | Constraint Flipper | Yes (the-constraint-flipper.md L31 verbatim) | faithful |
| 2 | "would I use this regularly vs. delete it immediately if I owned it" (Q18 bullet 1 sub) | Provocateur | Yes (the-provocateur.md L29 verbatim) | faithful |
| 3 | "you won't know which features you built when you vote." (Q18 bullet 1 sub) | First Principles Thinker | Yes (the-first-principles-thinker.md L29 verbatim) | faithful |
| 4 | "Would I keep this if I had only one engineer and 8 months?" (Q18 bullet 1 lead) | (synthesizer, no specific persona) | Yes (the-devils-advocate.md L29 verbatim) | faithful |
| 5 | "if we had zero code, would we build this next?" (Q18 bullet 3 lead) | (synthesizer, paraphrase of Systems Thinker L41) | Source has "if we had zero code written, would we build this next, given 6 engineers, 2 months, and an 8-month runway?" | paraphrase (faithful condensation) |
| 6 | "I predict 15% retention if we keep X" (Q18 bullet 3 sub) | Constraint Flipper | Source has "If we keep X and launch 3-feature MVP, I predict 15% 30-day retention" | paraphrase (faithful condensation) |
| 7 | "We will cut features that 70% of the team doesn't want to maintain, regardless of usage data." (Q18 bullet 6 lead) | Pragmatist | Yes (the-pragmatist.md L37 verbatim) | faithful |
| 8 | "This feature stays only if everyone on the core team would personally use it weekly if it were the only thing we built." (Q18 bullet 6 sub) | Constraint Flipper | Yes (the-constraint-flipper.md L35 verbatim) | faithful |
| 9 | "What is the one thing we'd be heartbroken to cut?" (Q18 bullet 8 sub) | Pragmatist | Yes (the-pragmatist.md L39 verbatim) | faithful |
| 10 | "this feature assumes users want to [specific behavior] and will [specific action] if we deliver it well" (Q19 bullet 1 lead) | (synthesizer, blended) | Source has near-verbatim equivalent in the-systems-thinker.md and the-pragmatist.md | paraphrase |
| 11 | "If we removed [feature], would you (a) find another app, (b) build a workaround, (c) stop caring?" (Q19 bullet 2 lead) | (synthesizer, paraphrase) | Yes (the-first-principles-thinker.md verbatim) | paraphrase (faithful) |
| 12 | "I'd use Strava" (Q19 bullet 2 sub) | Pragmatist | Yes (the-pragmatist.md verbatim) | faithful |
| 13 | "If 7-day retention for Feature X stays below 5% by April 15, we cut it." (Q19 bullet 6 lead) | (synthesizer, paraphrase of Devil's Advocate) | Yes (the-devils-advocate.md verbatim with minor punctuation) | paraphrase (faithful) |
| 14 | "What was the moment you realized you'd use this regularly?" (Q20 bullet 1 sub, Constraint Flipper) | Constraint Flipper | Yes (the-constraint-flipper.md verbatim) | faithful |
| 15 | "open → log workout → see streak / leaderboard position → close" (Q20 bullet 3 lead, then variant in sub) | Systems Thinker | Yes (the-systems-thinker.md near-verbatim "open → log workout → see streak and position on leaderboard → close") | paraphrase (faithful condensation) |
| 16 | "rate enthusiasm for owning each feature 1-10" (Q21 bullet 1 sub) | Devil's Advocate | Yes (the-devils-advocate.md L paraphrase "Rate your enthusiasm for owning each of these 15 features 1-10") | paraphrase (faithful) |
| 17 | "which feature would you want on your resume?" (Q21 bullet 1 sub) | Provocateur | Yes (the-provocateur.md "If you had to bet your next job on this product, which one feature would you want on your resume for building it?") | paraphrase |
| 18 | "Assume 3 engineers leave. Which 3–4 features keep the remaining team excited enough to stay?" (Q18 bullet 7) | Devil's Advocate | Yes (the-devils-advocate.md L33 verbatim) | faithful |
| 19 | "if this feature broke at midnight, how many support tickets by breakfast, and from whom?" (Q24 bullet 1 lead, attribution to Systems Thinker in sub) | Systems Thinker | Yes (the-systems-thinker.md "Replace 'which features are most used?' with 'which features, if they broke permanently today, would users immediately complain?'... 'within 24 hours'") | paraphrase (the colorful "midnight … breakfast" formulation is the synthesizer's; the underlying claim is faithful) |
| 20 | "Version 2.0: Focused" (Q27 bullet 1 lead) | Systems Thinker | Yes (the-systems-thinker.md L verbatim) | faithful |
| 21 | "we're testing radical simplicity, tell us what you need" (Q27 bullet 1 lead) | (synthesizer, blend) | Source has Provocateur "We're testing radical simplicity. This version has *only* workouts." | paraphrase (faithful) |
| 22 | "9 active users (your 8% who actually return) into a feature council. Each month, they get 3 votes" (Q23 bullet 1 sub) | Devil's Advocate | Yes (the-devils-advocate.md L79 verbatim) | faithful |

22 quotes/paraphrases spot-checked across all questions; all trace to source. No hallucinations identified.

**Quote count:** 22 spot-checked | **Faithful:** 12 | **Paraphrase:** 10 | **Hallucinated:** 0
**B verdict:** pass

## Axis C: Traceable Convergence Counts

PP1 flagged this sample for convergence-count vulnerability — extra attention applied.

| Claim # | Claim text (Q#) | BL1 ledger says | Match? |
|---|---|---|---|
| 1 | "Six personas converged on the same intervention" (Q17, hero-slot) | TL-1 = 6/7 (Pragmatist absent) | ✓ Match |
| 2 | "Six personas independently proposed strip-the-author-names voting" (Q18, blind voting) | TL-5 = 6/7 (Systems Thinker absent) | ✓ Match |
| 3 | "Five personas independently proposed an assumption-matrix" (Q19) | TL-4 = 5/7 | ✓ Match |
| 4 | "All seven personas converged on this inversion" (Q20, design for 8%) | TL-8 = 7/7 | ✓ Match |
| 5 | "All seven personas converged on this" (Q21, team enthusiasm) | TL-11 = 7/7 | ✓ Match |
| 6 | "Six personas agreed: don't argue about whether 8% is structural — measure" (Q22, ceiling) | TL-22 = 7/7 | ✗ undercount by 1 |
| 7 | "Six personas converged on giving 8-40 power users genuine decision-making power" (Q23, participatory) | TL-20 = 7/7 | ✗ undercount by 1 |
| 8 | "Six personas converged on this reframe" (Q24, triage) | TL-14 = 6/7 (Devil's Advocate absent) | ✓ Match |
| 9 | "All seven personas agree" (Q25, unclear value prop) | TL-13 = 7/7 | ✓ Match |
| 10 | "Six personas converged on the controlled-degradation experiment" (Q26, perverse excellence) | TL-12 = 6/7 (Devil's Advocate absent) | ✓ Match |
| 11 | "All seven personas converged on the destruction-as-research approach" (Q27, single-feature MVP) | TL-21 = 7/7 | ✓ Match |
| 12 | "Several personas argued" (Q18, team enthusiasm exec bullet 6) | unquantified — accurate hedge | ✓ N/A |
| 13 | "Multiple personas argued" (Q19, 180K downloads exec bullet 4) | unquantified — accurate hedge | ✓ N/A |
| 14 | "The Devil's Advocate, Pragmatist, and Constraint Flipper all converge on this method" (Q19, feature-hiding) | Verified in attributed sub-bullets — all three sources present | ✓ Match |
| 15 | "The Provocateur and the Analogist agree the runway makes data-errors more recoverable than vision-errors" (Q18 bullet 4 lead) | TL-19 = 3/7 (Analogist + Provocateur + Systems Thinker). The synthesizer named only two but the third (Systems Thinker) appears in the same exec bullet's sub-bullets | ✓ undercount by 1 of named-personas (the Systems Thinker entry IS in the sub-bullets, so the lead-line summarization just listed two of three) — flag as minor lead-line undercount |

**Claim count:** 15 (11 quantified + 2 hedged + 2 named-list) | **Verified:** 11 (out of 13 verifiable counts) | **Untraceable:** 0 | **Undercount-by-1:** 3 (Q22, Q23, Q18-bullet-4)

**Pattern:** All discrepancies are *under*counts by exactly 1 persona, never overcounts or fabrications. Per BL1 cross-reference notes, this reflects a defensible conservative bias — the synthesizer reads "convergence" narrowly (counts only personas with the *exact* framing) rather than broadly (counts all who address the underlying TL). This is the inverse of the career-change-baseline overcounting failure mode noted by PP1.

**C verdict:** partial pass — every claim is traceable; 3 of 13 quantified claims are 1 below the BL1 ledger count. Not catastrophic (no overcount, no fabrication), but flags a recurring conservative-bias pattern worth attention.

## Axis D: Categorical-Reframe Presence

BL1 reframe candidate: *The cluster is not really about which features to keep — it is about how to design a selection process whose outputs aren't pre-baked into its inputs. The 15-feature spread is not the problem; it is the symptom of an unclear value proposition + ownership-bias-laden decision process + biased data inputs. The methodology, not the choice, is the load-bearing artefact.*

- `_synthesis.md`: partial — Q25 bullet 1 surfaces the value-prop component ("the disease is incoherent identity, not feature count"); Q18 bullets surface the ownership-bias and methodology components separately. The aggregate "methodology not choice is load-bearing" reframe is *implicit* across the document but never named as a single-sentence framing.
- `_summary.md`: partial — Executive Summary opening paragraph explicitly states "the team is not yet ready to choose 3-4 features, because the precondition has not been met: no one has named what this app is for" and "any cut list is rearranging deck chairs." This captures the value-prop-first axis but not the full methodology-as-load-bearing reframe; ownership bias and biased inputs are surfaced as separate themes ("Decouple Judgment from Ownership", "Experimentation Beats Argument") rather than as a unified categorical reframe.

**D verdict:** partial — both docs surface components of the reframe, but neither explicitly names the categorical reframe as "methodology not choice is the load-bearing artefact." The user can reconstruct it; the synthesizer doesn't crystallize it.

## Axis E: Foundational-Reversal Presence (high)

BL1 reversal candidate: TL-19 (asymmetric error budget — vision errors catastrophic, data errors recoverable) and TL-22 (take 8% as the ceiling and design for depth instead of growth) are both reversal candidates — they invert assumptions embedded in the cluster's questions ("which features should we keep" presumes choice is the problem; "what's the right methodology" presumes growth is the goal). TL-13 (unclear value prop is the disease, not feature count) also functions as foundational reversal.

- `_synthesis.md`: Yes — TL-19 surfaced as Q18 bullet 4 ("Use the runway to set the asymmetric error budget explicitly… vision-errors and data-errors are not symmetric"); TL-22 surfaced across Q22 ("optimize for depth and unit economics, not growth"); TL-13 surfaced in Q25 ("disease is incoherent identity, not feature count").
- `_summary.md`: Yes — Executive Summary paragraph 4 explicitly names the asymmetry ("vision-errors are unrecoverable; data-errors buy mid-runway course corrections"); paragraph 1 names the value-prop reversal ("the team is not yet ready to choose 3-4 features"); theme "Test the Ceiling Before Trying to Break It" surfaces the depth-vs-growth reversal.

**E verdict:** pass — the foundational reversals from BL1 are surfaced clearly in both prose docs.

## Phase-5 Signal Audit

- **Central Tension** in `_summary.md`: not stated as an explicit tension claim, but the Executive Summary and "Trade-offs" bullets together capture the BL1 candidate (rigor + brutality + asymmetric-error-cost + team-morale-as-leading-indicator). The "Trade-offs" section names "Vision vs. data," "Team excitement vs. user demand," "Growth vs. depth," and "User agency vs. founder vision" — four tensions that aggregate to BL1's central tension. — **partial match** to BL1 (component tensions named but not aggregated into a single load-bearing tension statement).
- **Confidence tags** found: synthesis docs use natural-language convergence claims ("Six personas converged", "All seven personas") rather than bracketed `[convergent: N/M]` tags. BL1's confidence-tag candidates are not formally surfaced. Counts that *are* emitted match BL1 raw counts to ±1 (see Axis C). — **partial match** to BL1 candidates (substance preserved; canonical tag format absent).
- **Categorical reframe** in `_summary.md`: "any cut list is rearranging deck chairs" + "the methodology side effect" — paraphrases the BL1 reframe but does not name "methodology, not choice, is the load-bearing artefact." — **partial match**.
- **Neither-lens gaps:** n/a (high)
- **Conspicuous absences:** n/a (high)

## Sample Verdict

**Verdict:** PARTIAL PASS — strong on attribution, traceability, and zero hallucination; weaker on summary-level substance survival and convergence-count precision.

**Failure modes:**
- Summary-level substance dropouts: TL-9 (delight-moment / 20-second-to-capability) and TL-14 (triage-by-support-tickets-on-breakage) are BL1-flagged should-appear-in-summary TLs but are absent from the summary entirely. The 81% summary substance-survival rate is below the 90% threshold.
- Summary-level framing flattening: 36% framing-survival in summary indicates structural lens-loss (well below the 60% structural-flattening warning threshold). The summary's prose voice is uniformly "decision-maker briefing," which collapses the seven distinct lenses into a single voice. Synthesis prose does better (79%).
- Conservative undercounting of convergence: 3 of 13 quantified convergence claims are 1 below BL1 (TL-22 ceiling, TL-20 participatory, TL-19 asymmetric error in lead-line). Pattern is consistent — the synthesizer counts only personas with the *exact* framing rather than personas with the *underlying convergence*. PP1's flag was about overcounting; this sample is the inverse failure mode (undercounting).
- Categorical reframe: BL1's "methodology not choice is the load-bearing artefact" is implicit but not crystallized in either prose document.

**Recommended prompt revision target (for `phase4_full-synthesis.md`):**

1. **Convergence-count discipline.** Add to "Quality Standards" or "Synthesis Strategy" a directive that explicitly defines what counts as convergence: *"When emitting an 'N personas converged on X' claim, count any persona whose response addresses the same underlying through-line, even if their specific framing differs. Do not count only personas using the identical formulation. If you are uncertain whether a persona's framing matches, err toward inclusion (round up) rather than exclusion. State your inclusion rule (broad/narrow) in the convergence claim itself when borderline."* This corrects the conservative undercounting pattern observed here while still guarding against the overcounting pattern PP1 flagged on career-change.

2. **Summary-level should-appear floor for strong-convergent TLs.** Add to "Important for Document 3": *"Every through-line that converges across ≥5 of N personas must appear in either the Executive Summary, the Key Themes, or the Recommended Next Steps — not only in the synthesis (Document 2). Strong cross-persona convergence is the highest-confidence signal the synthesis can transmit; dropping such a TL from the summary forfeits the load-bearing finding the personas independently surfaced."* (TL-9 at 5/7 and TL-14 at 6/7 should not have been dropped from summary; this rule would have caught both.)

3. **Optional: explicit categorical-reframe slot in summary template.** Consider adding a "Reframing the Question" 1-2 sentence slot at the top of the Executive Summary for high-effort summaries, surfacing any cluster-level reframe that inverts the question's embedded assumptions. This would crystallize the categorical reframe BL1 expects rather than leaving it implicit across paragraphs.

4. **Optional: framing/lens flag for summary.** Consider noting in "Important for Document 3" that *"summary prose may necessarily flatten persona lenses, but the diversity of analytical *moves* (cross-domain analogs, asymmetric stress tests, willingness-to-pay extremes, structural-engineering reframes, etc.) should remain visible in the recommended-next-steps and considerations sections."* This is a softer ask aimed at the 36% framing-survival floor in summary.

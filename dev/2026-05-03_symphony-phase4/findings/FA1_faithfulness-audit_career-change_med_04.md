# FA1 Faithfulness Audit — career-change/med/04_pslf-loan-repayment-long-term-financial-sustainability

**Date:** 2026-05-04
**Sample:** career-change_med_04_pslf-loan-repayment-long-term-financial-sustainability
**Effort:** med (strict thresholds apply)
**Personas:** The Accountant, The Devil's Advocate, The Lawyer, The Pragmatist
**Phase 4 outputs audited:**
- `synthesis/attributed/04_pslf-loan-repayment-long-term-financial-sustainability.md`
- `synthesis/04_pslf-loan-repayment-long-term-financial-sustainability_synthesis.md`
- `synthesis/04_pslf-loan-repayment-long-term-financial-sustainability_summary.md`

**Ground-truth ledger:** `dev/2026-05-03_symphony-phase4/baselines/career-change_med_04_pslf-loan-repayment-long-term-financial-sustainability_through-lines.md`

---

## Axis A1 — Persona-name preservation in `attributed/`

All four personas are named in `attributed/`. Each persona's distinctive through-lines from BL1's persona-distinctiveness map appear correctly attributed.

### Per-Persona Scorecard

| Persona | Named in attributed/? | Distinctive TLs | Correctly Attributed? | Notes |
|---|---|---|---|---|
| The Accountant | ✓ | TL-4 (forgiveness-failure reserve), TL-22 (catch-up fiction) | TL-4 ✓ Q1; TL-22 ✓ Q4 | "Allocate $150–200/month into a dedicated 'forgiveness failure' reserve" attributed Q1; "'Catch-up' is aspirational rather than realistic" attributed Q4 |
| The Devil's Advocate | ✓ | (none unique — every TL shared) | n/a | All DA appearances faithful |
| The Lawyer | ✓ | TL-11 (PSLF Help Tool documentation), TL-16 (geography-first), TL-23 (spousal income) | TL-11 ✓ Q2; TL-16 ✓ Q3; TL-23 ✓ Q4 | All three correctly attributed |
| The Pragmatist | ✓ | TL-19 (livable ≠ 20-yr sustainable), TL-30 (decision tree, staged-not-binary) | TL-19 ✓ Q3; TL-30 ✓ Q5 | Both correctly attributed |

**Persona-name preservation rate:** 4/4 = 100%
**Distinctive-attribution rate:** 7/7 = 100%

**BL1 Step-6 flag verification:** BL1's Step-6 cross-reference reported "no fabrications, drops, or misattributions detected." Independent re-verification confirms — every distinctive TL appears in `attributed/` under the correct persona.

**Axis A1 verdict: PASS** (meets 100%/100% strict-med threshold).

---

## Axis A2 — Persona-name absence in `_synthesis.md` and `_summary.md` prose

Scanned both documents for occurrences of "The Accountant", "The Devil's Advocate", "The Lawyer", "The Pragmatist" as sentence subjects, possessives, or attributions.

### Occurrences Found

| Document | Occurrence | Excerpt | Type | Allowed? |
|---|---|---|---|---|
| `_synthesis.md` | (none) | — | — | — |
| `_summary.md` | (none) | — | — | — |

### Convergence-count phrases (allowed by methodology)

| Document | Phrase | Notes |
|---|---|---|
| `_synthesis.md` | "All four perspectives converge", "All four personas converge", "All personas converge", "Two financial personas independently identify", "Two complementary mitigations", "Two personas independently propose", "All four personas independently model", "Multiple personas converge", "Strong consensus" | All count-based; no individual persona names |
| `_summary.md` | "All four perspectives converge here", "Three of four personas independently model" | Count-based (note: "Three of four" claim audited under Axis C below) |

**Persona-name occurrences in prose:** 0 (synthesis), 0 (summary)

**Axis A2 verdict: PASS** (zero-tolerance threshold met).

---

## Axis A3-content — Distinctive-TL substance survival

Tracking only the seven distinctive (single-persona-attributed-distinctive) TLs from BL1's persona-distinctiveness map. Convergent TLs are tracked under Axis C (convergence) and not double-counted here.

### `_synthesis.md`

| TL | Persona | BL1 Statement | Synthesis Treatment | Classification |
|---|---|---|---|---|
| TL-4 | Accountant | $150–200/mo dedicated forgiveness-failure reserve, $12–18K total | "a dedicated savings reserve ($150–200/month for 7–8 years = $12–18K) sufficient to absorb a PSLF collapse" (Q1, top-level bullet) | **paraphrased** |
| TL-22 | Accountant | Catch-up contributions aspirational, requires $10–15K post-tax surplus that doesn't exist on PI salary | "Catch-up contributions are a fiction at public interest salaries... requires $10–15K/year in post-tax surplus, which doesn't exist on a $60–80K nonprofit salary." (Q4) | **paraphrased** |
| TL-11 | Lawyer | Annual PSLF Help Tool submission, EIN tracking, quarterly checkpoints | "Documentation discipline is the single highest-ROI hedge... Annual PSLF Help Tool submission, employer EIN tracking, and quarterly checkpoints" (Q2) | **paraphrased** |
| TL-16 | Lawyer | Select geography first based on livability, then employer | "select geography first based on livability, then select your legal employer within that geography" (Q3) | **paraphrased** |
| TL-23 | Lawyer | Spousal income / household composition substantially closes retirement gap | "Spousal income is the single largest variable not in the personal control set... A partnered household with $80K+ spousal income roughly triples joint retirement contribution capacity" (Q4) | **paraphrased** |
| TL-19 | Pragmatist | "Livable" ≠ "sustainable for 20 years"; emotional resilience matters | "'Livable' ≠ 'sustainable for twenty years' — emotional resilience matters as much as the budget" (Q3) | **paraphrased** |
| TL-30 | Pragmatist | Decision tree with concrete off-ramps; staged process; "test the diagnosis, then commit" | "Build a decision tree with concrete off-ramps before committing — don't make this binary... 'test the diagnosis, then commit'" (Q5) | **paraphrased** |

**Synthesis survival rate:** 7/7 = **100%** ✓ PASS (exceeds 90% threshold)

### `_summary.md`

| TL | Persona | Summary Treatment | Classification |
|---|---|---|---|
| TL-4 | Accountant | No mention of dedicated reserve fund anywhere in summary (no $150–200/month allocation, no $12–18K total). | **dropped** |
| TL-22 | Accountant | "'catch-up contributions' are aspirational at public interest salaries" (Executive Summary) | **paraphrased** |
| TL-11 | Lawyer | "Documentation discipline, multi-employer relationships, and an 18–24 month policy-monitoring cadence are the highest-ROI hedges" (Themes — Employment Continuity) | **paraphrased** |
| TL-16 | Lawyer | "Geography selection should precede employer selection" (Themes — Geography Drives Feasibility) | **paraphrased** |
| TL-23 | Lawyer | No mention of spousal income or household composition. | **dropped** |
| TL-19 | Pragmatist | "the geographic and lifestyle stress-test that determines whether public interest work at $60K is genuinely livable for two decades" (Executive Summary) — captures the 20-year-sustainability axis but loses the emotional-resilience-vs-arithmetic distinction. | **absorbed** |
| TL-30 | Pragmatist | Recommended Next Steps include "year-3-of-practice decision checkpoint" (Long-term) and shadowing immigration attorneys (Near-term), but no explicit decision-tree / staged-process / "test the diagnosis, then commit" meta-frame. | **absorbed** |

**Summary survival rate (verbatim + paraphrased only):** 3/7 = **43%** ✗ FAIL (well below 90% threshold)
**Summary survival rate (lenient — counting absorbed as paraphrased):** 5/7 = **71%** ✗ still FAIL

**Axis A3-content verdict:** Synthesis PASS; **Summary FAIL** (structural: distinctive single-persona content is dropped or flattened in the summary in favor of convergent material).

---

## Axis A3-framing — Per-persona framing/lens survival

| Persona | BL1 Distinctive Framing | `_synthesis.md` | `_summary.md` |
|---|---|---|---|
| The Accountant | Quantitative cash-flow modeling: dollar-figure-first; monthly payment ranges, salary floors, 30-year deltas | **preserved** — synthesis is densely numeric throughout (e.g., "$200–350/month", "$48–50K floor", "$200K → $240–250K", "$150–200/month reserve") | **preserved** — summary leads with $2.4M vs $1.96M, $250–800K gap, $170–300K expected loss, $40–80K healthcare costs |
| The Devil's Advocate | Stress-tests load-bearing assumptions; "have you considered" challenges; tail risk + trap dynamics; parallel-models thinking | **preserved** — "Switch risk is bounded and known; stay risk is deferred and conditional"; "Reframe: 'What's the cost of staying?'"; debt-as-retention-tool framing kept; parallel-models posture survives in Q5 | **preserved** — "the comparison flips when burnout is priced in honestly", "the safe path may be more expensive than the expensive one", "Once the cost of staying is properly accounted for" |
| The Lawyer | Statutory/regulatory grounding (20 U.S.C., 34 CFR, IRC § 108(f)(1)); JAMA empirical attrition data | **flattened** — only IRC § 108(f)(1) and 34 CFR § 685.219 survive once each as parenthetical. The other four citations (20 U.S.C. § 1087e(m), 20 U.S.C. § 1087e(u)(1)(B), 20 CFR § 682.219(c), JAMA 2024) are stripped. SAVE statutory formula loses its citation. | **flattened** — zero statutory citations; "documented" replaces all source-grounding; "JAMA 2024" gone |
| The Pragmatist | Decision-process orientation: staged commitments, checkpoints, off-ramps, minimum-viable-test | **preserved** — "Build a three-year checkpoint", "Build a decision tree with concrete off-ramps", "test the diagnosis, then commit", "minimum viable decision" all survive | **preserved** — Recommended Next Steps cadenced as 0–3 months / 3–12 months / 1+ years; year-3-of-practice checkpoint named; "stress-test the lifestyle, not just the spreadsheet" carries the staged-test posture |

**Synthesis framing survival:** 3/4 = **75%** — at threshold; PASS-borderline. Lawyer's regulatory-grounding signature is the single flattened framing.

**Summary framing survival:** 3/4 = **75%** — at threshold; PASS-borderline. Same loss (Lawyer's statutory citations completely absent).

**Axis A3-framing verdict:** Borderline PASS for both documents (at the 75% threshold; not below the 60% structural-flattening floor). The persistent loss is the Lawyer's regulatory-grounding lens — every citation except IRC § 108(f)(1) is dropped from synthesis prose, and all citations are dropped from summary.

---

## Axis B — Hallucinated quotes

Every "Original detail from..." sub-bullet in `attributed/` (paraphrased originals) was checked against the cited persona's response file. 61 attribution bullets total.

### Quote-by-Quote Audit (selected high-coverage sample; full audit performed for all 61)

| # | Q | Attributed text (excerpt) | Cited persona | Source verified? | Class |
|---|---|---|---|---|---|
| 1 | Q1 | "Under SAVE, $200–350/month on $150–200K at $55–70K — manageable on paper, reckless if treated as guaranteed." | Accountant | Yes — Accountant Q1 | faithful |
| 2 | Q1 | "Don't build the financial model on PSLF — build it on what you can actually pay off..." | Pragmatist | Yes — Pragmatist Q1 | faithful |
| 3 | Q1 | "PSLF subsidizes the salary differential between nursing ($82K) and public interest law ($55–70K); without it, you carry $175K debt on $65K income indefinitely." | Lawyer | Yes — Lawyer Q1 | faithful |
| 4 | Q1 | "Model an alternative 15-year aggressive repayment plan ($800–1,000/month) reaching loan freedom by age 50 without forgiveness — flips the dependency." | Devil's Advocate | Yes — DA Q1 | faithful |
| 5 | Q1 | "At $50K salary, payments exceed 5–6% of gross... below $48K you're underwater without PSLF — paying interest in perpetuity." | Accountant | Yes — Accountant Q1 | faithful |
| 6 | Q1 | "The math becomes unsustainable around age 42–44 if nominal salaries stall below $70K." | Lawyer | Yes — Lawyer Q1 | faithful |
| 7 | Q1 | "Allocate $150–200/month into a dedicated 'forgiveness failure' reserve over 7–8 years (totaling $12–18K) — insurance, not cure." | Accountant | Yes — Accountant Q1 | faithful |
| 8 | Q1 | "Redirect 20% of gross income to principal in years 2–8 under REPAYE's interest subsidy, taking $175K to ~$100K..." | Lawyer | Yes — Lawyer Q1 | faithful |
| 9 | Q1 | "A reform cap (e.g., $150K forgiven) is structurally more likely than outright elimination..." | Lawyer | Yes — Lawyer Q1 | faithful |
| 10 | Q1 | "Set a specific trigger at year 3..." | Pragmatist | Yes — Pragmatist Q1 | faithful |
| 11 | Q2 | "Each transition costs 12+ months of lost credit; maintain a 'public interest exit ramp' lined up..." | Accountant | Yes — Accountant Q2 | faithful |
| 12 | Q2 | "An employment gap of even 90 days resets the 120-payment count to zero (34 CFR § 685.219)..." | Lawyer | Yes — Lawyer Q2 | faithful |
| 13 | Q2 | "Document employer financials annually, maintain relationships at 2–3 other qualifying employers..." | Pragmatist | Yes — Pragmatist Q2 | faithful |
| 14 | Q2 | "At year 5, conduct a deliberate decision point and pre-map an escape hatch..." | Devil's Advocate | Yes — DA Q2 | faithful |
| 15 | Q2 | "At $200K and $250/month with 6% interest, principal grows ~$750/month net; over 7 years balance hits $240–250K." | Accountant | Yes — Accountant Q2 | faithful |
| 16 | Q2 | "Years 4–7 are the structural fragility point — you've sunk $30–40K..." | Lawyer | Yes — Lawyer Q2 | faithful |
| 17 | Q2 | "Maintain a single document tracking employer name, EIN, start/end dates; upload annually to the PSLF Help Tool..." | Lawyer | Yes — Lawyer Q2 | faithful |
| 18 | Q2 | "Establish quarterly checkpoints; Congress signals reforms 18–24 months before implementation..." | Lawyer | Yes — Lawyer Q2 | faithful |
| 19 | Q2 | "By year 7–8, if policy momentum shifts, convert to aggressive repayment..." | Pragmatist | Yes — Pragmatist Q2 | faithful |
| 20 | Q2 | "A spousal income or promotion near year 10 could unexpectedly trigger tax liability on forgiven balances ($30–50K+)." | Accountant | Yes — Accountant Q2 | faithful |
| 21 | Q2 | "Years 3–5 are often the toughest financially..." | Accountant | Yes — Accountant Q2 (header "Liquidity crunch (years 3–5)") | faithful |
| 22 | Q2 | "Build a 6-month emergency fund separate from PSLF calculations." | Pragmatist | Yes — Pragmatist Q2 (verbatim) | faithful |
| 23 | Q2 | "Model salary scenarios reaching $65K, $75K, $85K by year 5–7..." | Pragmatist | Yes — Pragmatist Q2 | faithful |
| 24 | Q2 | "The fragility isn't PSLF-specific — it's career optionality. Keep your ICU nursing license active..." | Pragmatist | Yes — Pragmatist Q2 | faithful |
| 25 | Q2 | "The implicit assumption is that year 8 of public interest law will feel as meaningful as year 1; if it doesn't, the debt itself becomes a retention tool..." | Devil's Advocate | Yes — DA Q2 | faithful |
| 26 | Q3 | "In urban centers (NYC, DC, SF), housing/childcare/healthcare can consume 60–70% of gross..." | Accountant | Yes — Accountant Q3 | faithful |
| 27 | Q3 | "$60K in Portland or Austin is sustainable; the same salary in SF or Boston is not..." | Lawyer | Yes — Lawyer Q3 | faithful |
| 28 | Q3 | "In a mid-size city: housing $1,200–1,500, food $300, transport $300, insurance $200, plus $250–350 SAVE payments leaves ~$2,500/month flexible..." | Pragmatist | Yes — Pragmatist Q3 | faithful |
| 29 | Q3 | "What's the actual cost-of-living in your target city, and does that salary leave you with a real safety margin or just a numerical one?" | Devil's Advocate | Yes — DA Q3 (verbatim) | faithful |
| 30 | Q3 | "20-year IDR: $250–350/month for 20 years (~$60–84K paid) by age 52–54..." | Accountant | Yes — Accountant Q3 | faithful |
| 31 | Q3 | "Statutory: 25-year discharged balance is taxable as income under IRC § 108(f)(1)..." | Lawyer | Yes — Lawyer Q3 | faithful |
| 32 | Q3 | "If $100K is forgiven after 20 years, you're potentially liable for $30–40K in federal income tax..." | Pragmatist | Yes — Pragmatist Q3 | faithful |
| 33 | Q3 | "Break-even... occurs around age 50–52, assuming continuous qualifying employment and PSLF success." | Accountant | Yes — Accountant Q3 | faithful |
| 34 | Q3 | "Nursing delivers ~$2.4M cumulative gross; law delivers ~$1.8M + ~$160K forgiveness = ~$1.96M..." | Lawyer | Yes — Lawyer Q3 | faithful |
| 35 | Q3 | "Spend 3–6 months pre-law-school working a paralegal or nonprofit legal coordinator role..." | Devil's Advocate | Yes — DA Q3 | faithful |
| 36 | Q3 | "Spend 6 months working a part-time role at $60K equivalent and living on exactly that budget before law school." | Pragmatist | Yes — Pragmatist Q3 | faithful |
| 37 | Q3 | "'Livable' ≠ 'sustainable for twenty years'; immigration law burns out just as thoroughly as ICU nursing..." | Pragmatist | Yes — Pragmatist Q3 | faithful |
| 38 | Q4 | "Cumulative retirement deficit: $400–800K in current purchasing power; recoverable only via delayed retirement..." | Accountant | Yes — Accountant Q4 | faithful |
| 39 | Q4 | "Quantitatively: nursing reaches $250–300K by age 62; law transition creates a $150–200K shortfall..." | Lawyer | Yes — Lawyer Q4 | faithful |
| 40 | Q4 | "At age 50: nursing $800K–1M, law $400–600K. At age 65: nursing $1.8–2.2M, law $1–1.4M." | Pragmatist | Yes — Pragmatist Q4 | faithful |
| 41 | Q4 | "A nurse staying 13 more years at $82K reaches ~$400–500K by age 45; an attorney starting from zero reaches $150–250K — a $250K+ gap." | Devil's Advocate | Yes — DA Q4 | faithful |
| 42 | Q4 | "Liquidating to cover living expenses incurs 10% penalty + tax (~$4–6K loss on top of the immediate principal loss)." | Accountant | Yes — Accountant Q4 | faithful |
| 43 | Q4 | "Loan path is nearly always better: $150K borrowed at 5–7% = ~$180K repaid..." | Pragmatist | Yes — Pragmatist Q4 | faithful |
| 44 | Q4 | "Recovery: delay retirement (+3 years = $75K), increase post-forgiveness contributions to 10% ($90K)..." | Lawyer | Yes — Lawyer Q4 | faithful |
| 45 | Q4 | "Commit to a non-negotiable annual retirement contribution starting year 1 after law school..." | Devil's Advocate | Yes — DA Q4 | faithful |
| 46 | Q4 | "'Catch-up' is aspirational rather than realistic on public interest salary..." | Accountant | Yes — Accountant Q4 | faithful |
| 47 | Q4 | "If married by age 35 to spouse earning $80K, gap closes by age 55. If single, gap persists to age 67..." | Lawyer | Yes — Lawyer Q4 (verbatim) | faithful |
| 48 | Q4 | "Don't assume catch-up; ask whether the work is valuable enough that a smaller retirement is acceptable..." | Pragmatist | Yes — Pragmatist Q4 | faithful |
| 49 | Q4 | "Talk to immigration attorneys 20+ years in: how much did they accumulate..." | Pragmatist | Yes — Pragmatist Q4 | faithful |
| 50 | Q5 | "Total 'cost of not leaving' could be $1–2M (early exit $1.8M lost, lateral move $300–400K, healthcare $100–200K, missed promotions $100–200K)..." | Pragmatist | Yes — Pragmatist Q5 | faithful |
| 51 | Q5 | "A third of burned-out ICU nurses transition to lower-paying roles within 5 years; lateral-move trajectory yields $1.8–2.0M lifetime earnings... (JAMA 2024)" | Lawyer | Yes — Lawyer Q5 | faithful |
| 52 | Q5 | "Contingent risk weighting: 30% burnout chance = ~$170K expected cost; 50% = ~$300K — comparable to law school..." | Accountant | Yes — Accountant Q5 | faithful |
| 53 | Q5 | "Run two parallel financial models: thrive-in-nursing vs. burnout-with-$20K-cut..." | Devil's Advocate | Yes — DA Q5 | faithful |
| 54 | Q5 | "Burned-out ICU nurse over 15 years: $40–80K in cumulative healthcare costs above baseline..." | Lawyer | Yes — Lawyer Q5 | faithful |
| 55 | Q5 | "Healthcare costs from chronic stress: $5–10K/year copays and treatment = $100–200K over 20 years." | Pragmatist | Yes — Pragmatist Q5 | faithful |
| 56 | Q5 | "Law school cost is clear and front-loaded; nursing-stay cost is conditional on burnout — and you've already signaled it's real." | Accountant | Yes — Accountant Q5 | faithful |
| 57 | Q5 | "The financial argument for staying assumes you'll be fine; the financial argument for law school assumes you won't be fine if you stay..." | Devil's Advocate | Yes — DA Q5 (verbatim) | faithful |
| 58 | Q5 | "Stop asking 'Can I afford law school?' and start asking 'Can I afford not to change?'..." | Pragmatist | Yes — Pragmatist Q5 | faithful |
| 59 | Q5 | "The reframed question: 'which path is sustainable to age 62–65 without forced exit or dysfunction?'..." | Lawyer | Yes — Lawyer Q5 | faithful |
| 60 | Q5 | "Mission alignment and emotional sustainability have economic value — they protect earnings and career longevity." | Accountant | Yes — Accountant Q5 | faithful |
| 61 | Q5 | "Year 1–2: assess if burnout is genuine or temporary. Year 2–3: if real, set application date. Year 0 of law school: shadow attorneys..." | Pragmatist | Yes — Pragmatist Q5 | faithful |

**Faithful:** 61/61 = **100%**
**Paraphrase:** 0
**Hallucinated:** 0

**Axis B verdict: PASS** (zero hallucinations across all 61 attributed bullets — strict-tolerance threshold met).

---

## Axis C — Traceable convergence claims

Every numeric or quasi-numeric convergence claim in the three Phase 4 outputs cross-checked against BL1's convergence map.

### Claim-by-Claim Audit

| # | Document | Claim (verbatim or paraphrased) | Maps to BL1 TL | BL1 actual count | Phase 4 stated count | Match? |
|---|---|---|---|---|---|---|
| 1 | attributed Q1 | "All four personas converge: do not let forgiveness be load-bearing" | TL-1 | 4/4 | 4/4 | ✓ |
| 2 | attributed Q1 | "(3 personas independently triangulate this range)" — re: $180–400/month | TL-2 | 3/4 (with caveat for Pragmatist's adjacent scenario) | 3/4 | ✓ |
| 3 | synthesis Q1 | "All four perspectives converge: do not let forgiveness be load-bearing" | TL-1 | 4/4 | 4/4 | ✓ |
| 4 | synthesis Q1 | "Two financial personas independently identify a hard floor" — re: $48–50K floor | TL-3 | 2/4 (Accountant + Lawyer) | 2/4 | ✓ |
| 5 | synthesis Q2 / attributed Q2 | "All four personas converge: the 13-year arc fails most often through employment discontinuity" | TL-8 | 4/4 | 4/4 | ✓ |
| 6 | synthesis Q3 / attributed Q3 | "All personas converge" — re: $60K geographically bounded | TL-15 | 4/4 | 4/4 | ✓ |
| 7 | synthesis Q3 / attributed Q3 | "Two financial personas independently model the 30-year cumulative earnings" | TL-18 | 2/4 (Accountant + Lawyer) | 2/4 | ✓ |
| 8 | synthesis Q3 / attributed Q3 | "Two personas independently propose the same diagnostic" — re: stress-test 3–6 months | TL-17 | 2/4 (DA + Pragmatist) | 2/4 | ✓ |
| 9 | synthesis Q4 / attributed Q4 | "All four personas independently model the gap and converge on the same range" — $250–800K retirement shortfall | TL-20 | 4/4 | 4/4 | ✓ |
| 10 | synthesis Q4 / attributed Q4 | "Strong consensus against tapping retirement accounts" — re: don't liquidate 401(k) | TL-21 | 2/4 (Accountant + Pragmatist) | "Strong consensus" (qualitative; only 2 personas in sub-bullets) | ⚠ marginal — "strong consensus" overstates 2/4 |
| 11 | synthesis Q4 / attributed Q4 | "Multiple personas converge on the conclusion that the gap doesn't fully close" — re: "live well on smaller number" | TL-29 (paired with TL-20 frame) | TL-29 is 2/4 (Accountant + Lawyer) but the specific "live well on smaller number" framing is Pragmatist-only | "Multiple personas" (qualitative) | ⚠ marginal — only Pragmatist is cited in attributed sub-bullets for this exact framing |
| 12 | synthesis Q5 / attributed Q5 | "All four personas converge" — re: burnout cost-accounting closes gap | TL-25 | 4/4 | 4/4 | ✓ |
| 13 | summary Exec Summary | "All four perspectives converge here" — re: PSLF foundation vs. upside | TL-1 | 4/4 | 4/4 | ✓ |
| 14 | summary Themes (PSLF as Upside) | "The strongest convergence across all four perspectives: do not let forgiveness be load-bearing" | TL-1 | 4/4 | 4/4 | ✓ |
| 15 | summary Themes (Retirement Gap) | "Three of four personas independently model a $250–800K retirement shortfall at age 65" | TL-20 | **4/4** (all four — Accountant $400–800K, Lawyer $250–300K, Pragmatist $800K–1M / $1–1.4M, DA $250K+) | 3/4 | ✗ **mismatch — undercount** |

**Pass rate (strict, treating marginals as fails):** 12/15 = **80%** — FAIL
**Pass rate (lenient, marginals as passes):** 14/15 = **93%** — still FAIL (one hard mismatch)
**Hard mismatch:** Summary Themes section claims "Three of four personas independently model" the retirement shortfall, where BL1 documents 4/4 (all four personas independently produce a retirement-gap model with overlapping ranges). The synthesis (Q4 first bullet) and attributed (Q4 first bullet) both correctly state 4/4 — only the summary undercounts.

**Axis C verdict: FAIL** (one confirmed undercount inconsistent with BL1, plus two marginal qualitative overstatements; the threshold is 100%).

---

## Axis D — Categorical-reframe presence (gated)

BL1 flags a categorical reframe (revision §4.4): the cluster reframes the question from "Can I afford law school?" to "What's the comparative cost of staying vs. switching, with full burnout accounting?" Composed of TL-25 + TL-27 + TL-28.

| Document | Reframe captured? | Excerpt |
|---|---|---|
| `_synthesis.md` | **Yes** | Q5 bullet: "Reframe: 'What's the cost of staying?' not 'Can I afford to leave?' When burnout is the load-bearing assumption in the stay scenario, the right question becomes whether nursing is genuinely unsustainable for 13+ more years..." Plus Q5 bullet "Burnout cost-accounting closes the gap — and may invert the comparison entirely." |
| `_summary.md` | **Yes** | Executive Summary closing paragraph: "The decision-relevant question is not 'Can I afford law school?' but 'Can I afford not to change?' — paired with the geographic and lifestyle stress-test..." Plus Themes — Burnout Has a Quantifiable Economic Tail: "the 'safe' path may be more expensive than the 'expensive' one." Plus Executive Summary mid-paragraph: "But the comparison flips when burnout is priced in honestly." |

**Axis D verdict: PASS** (reframe explicitly named in both documents, with mechanism — burnout cost-accounting — surfaced).

---

## Axis E — n/a (med sample)

Not applicable for med-effort samples.

---

## Phase-5 Signal Audit

| Signal | BL1 Candidate | Synthesis | Summary | Match? |
|---|---|---|---|---|
| Central Tension | "Whether to treat PSLF as the foundation of a 13-year financial plan or as upside on top of an independently solvable plan" | Synthesis Q1 first bullet leads with this exact framing; "build a base case that assumes no forgiveness and treat any forgiven balance as a windfall." | Summary Executive Summary opens with: "The financial case for this transition collapses or holds depending on a single design choice: whether PSLF is treated as the foundation of the plan or as upside on top of a plan that already works." | ✓ Match — both surface the central tension at top of doc |
| Categorical Reframe | "What's the cost of staying vs. switching, with full burnout accounting?" reframe | See Axis D — present | See Axis D — present | ✓ Match |
| Confidence Tags | Per-TL confidence tags (e.g., `[convergent: 4/4]`, `[single]`) | n/a — Phase 4 prompt doesn't require formal tags; uses qualitative count language ("All four personas", "Two financial personas") | Same as synthesis | n/a (out of scope for Phase 4 prompt) |
| Neither-lens gaps | n/a at med (not in scope) | — | — | n/a |
| Conspicuous absences | n/a at med | — | — | n/a |

**Phase-5 signal audit:** Central Tension and Categorical Reframe both clearly present and faithful to BL1.

---

## Sample Verdict

**Overall: FAIL**

**Failure modes:**

1. **Summary drops/absorbs distinctive single-persona content** (A3-content summary). Two of seven distinctive TLs are dropped entirely from the summary (TL-4 forgiveness-failure reserve fund; TL-23 spousal income / household composition), and two more are absorbed without preserving the distinctive framing (TL-19 livable-vs-sustainable, TL-30 decision-tree-with-off-ramps). Summary survival rate is 43% verbatim+paraphrased, well below the 90% threshold. The summary's selection bias favors convergent material and underrepresents single-persona insights that BL1 flags as "blind spots" — exactly the content the prompt's "Quality Standards" instruct to preserve.

2. **Convergence undercount in summary** (Axis C). The summary's Themes section states "Three of four personas independently model" the $250–800K retirement shortfall, but BL1 (and both synthesis and attributed) document 4/4 convergence on TL-20. This is a hard inconsistency, not a marginal phrasing issue — the synthesis and attributed correctly say "All four personas independently model" and the summary alone undercounts. There is no plausible reading of the four response files that supports a 3/4 count.

3. **Lawyer's regulatory-grounding framing is structurally flattened** (A3-framing). Six statutory citations from the Lawyer's responses (20 U.S.C. § 1087e(m), 20 U.S.C. § 1087e(u)(1)(B), 20 CFR § 682.219(c), 34 CFR § 685.219, IRC § 108(f)(1), JAMA 2024) collapse to a single parenthetical IRC reference in synthesis and zero in summary. The Lawyer's distinctive lens — statutory anchoring of every claim — is materially lost. This sits at the 75% threshold (3/4 personas preserved) so it is borderline-PASS, but it is the persistent failure pattern across both downstream docs.

**Passes:**
- Axis A1 (100% persona-name preservation, 100% distinctive-attribution rate)
- Axis A2 (zero persona-name occurrences in synthesis/summary prose)
- Axis A3-content synthesis (100%)
- Axis A3-framing synthesis (75%, borderline)
- Axis A3-framing summary (75%, borderline)
- Axis B (0/61 hallucinations)
- Axis D (categorical reframe captured in both docs)

**Axis-by-axis pass/fail:**

| Axis | Verdict |
|---|---|
| A1 — persona names in attributed/ | PASS |
| A2 — persona names absent from synthesis/summary | PASS |
| A3-content (synthesis) | PASS |
| A3-content (summary) | **FAIL** |
| A3-framing (synthesis) | PASS (borderline) |
| A3-framing (summary) | PASS (borderline) |
| B — quote faithfulness | PASS |
| C — convergence counts | **FAIL** |
| D — categorical reframe | PASS |
| E — neither-lens gaps | n/a |

**Counts:** 7 PASS / 2 FAIL / 1 n/a

---

## Recommended Prompt-Revision Target (RP1-actionable)

The two hard failures both occur in **Document 3 (the executive summary)** and stem from the same structural cause: the summary's drafting protocol does not enforce *fidelity* to the synthesis's distinctive content and convergence counts. The prompt currently treats the summary as an editorial product ("This is the most user-facing document — prioritize clarity and actionability... Extract patterns and themes across questions"), which licenses the drafter to drop or smooth content that should be preserved.

**Concrete revisions to `idea-symphony/prompts/phase4_full-synthesis.md`:**

1. **Add a distinctive-content preservation rule for Document 3.** In the "Important for Document 3" block, insert:
   > "If a single-persona-distinctive insight appears as a top-level bullet in Document 2 (the synthesis), it must surface in Document 3 — as a named risk, opportunity, theme, or trade-off, not consolidated away. Single-persona insights are signal (blind spots, framing breaks) and the summary's job is to make them visible to the decision-maker, not to filter them out as low-consensus."

2. **Add a convergence-count fidelity rule.** In the "Important for Document 3" block, insert:
   > "If the summary cites a count of personas converging on a point ('three of four personas', 'most personas', 'all four perspectives'), the count must match the count used for the same point in Documents 1 and 2. Never undercount; never use a softer count in the summary than the synthesis already established. If you are uncertain about the count, omit the count phrase rather than guess."

3. **Add a citation/framing-preservation rule (addresses borderline A3-framing).** In the "Important for Document 3" block, insert:
   > "Statutory citations, empirical sources (e.g., 'JAMA 2024'), and regulatory anchors that appear in Document 1's attributed bullets should survive in at least one of (a) Document 2's top-level bullets, or (b) Document 3's Themes / Risks / Considerations sections. A persona whose distinctive framing is statutory or evidence-grounded loses their distinguishing voice if every citation is stripped — preserve at minimum the most load-bearing citation per persona."

These three rules target exactly the failure modes observed: A3-content summary drops (Rule 1), Axis C undercount (Rule 2), and A3-framing flattening of Lawyer's regulatory lens (Rule 3). They are insertable as bullet additions in the existing "Important for Document 3" block; they do not require restructuring the prompt.

---

## BL1-Discrepancy Notes

No discrepancies with BL1 detected during this audit. BL1's Step-6 cross-reference of `attributed/` ("no fabrications, drops, or misattributions") was independently verified against the response files and holds. BL1's TL-20 convergence count (4/4) is correct against the response files; the summary's "three of four" is the failing artifact, not BL1.

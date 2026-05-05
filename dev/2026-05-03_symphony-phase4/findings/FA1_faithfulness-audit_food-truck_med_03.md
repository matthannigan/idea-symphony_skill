# FA1 Per-Sample Score: food-truck/med/03_capital-structure-financing-decisions

**Date:** 2026-05-04
**Sample ID:** food-truck_med_03_capital-structure-financing-decisions
**Effort:** med
**Personas in sample:** 4 (The Accountant, The Devil's Advocate, The Pragmatist, The Systems Thinker)
**Scoring rubric:** strict (med)

---

## Axis A1: Persona-Name Preservation in `attributed/{cluster}.md`

### Per-persona scorecard

| Persona | Named in `attributed/`? | Distinctive TLs preserved | Distinctive TLs misattributed | Distinctive TLs dropped | Persona score (0-1) |
|---|---|---|---|---|---|
| The Accountant | Y | 2 (TL-7 month-4–5 loan-rescue window; TL-8 reckless→advisable) | 0 | 0 | 1.00 |
| The Devil's Advocate | Y | 5 (TL-12 don't double-lever; TL-14 insurance differs; TL-15 pre-purchase inspection; TL-19 $10K+ tail-risk; TL-27 milestone-gated LoC) | 0 | 0 | 1.00 |
| The Pragmatist | Y | n/a (BL1 finds no TLs unique to Pragmatist alone — every Pragmatist contribution is shared) | 0 | 0 | 1.00 |
| The Systems Thinker | Y | 4 (TL-5 working-capital suffocation / inventory paradox; TL-13 truck-as-stepping-stone; TL-22 sunk-cost / kept-going trap; TL-28 catering as distinct gate) | 0 | 0 | 1.00 |

**Persona-name preservation rate:** 4/4 = **100%**
**Distinctive-attribution rate:** 11/11 = **100%**
**A1 verdict:** **pass** — all four persona names preserved verbatim; all 11 distinctive single-persona TLs correctly attributed in `attributed/`.

**BL1 cross-reference flags incorporated:**
- Possibly fabricated (BL1 flagged): 0 flags. Spot-check confirmed no fabrications.
- Possibly dropped (BL1 flagged): 1 partial flag (TL-15's "$300–$500 pre-purchase inspection" cost figure). FA1 re-verification: the figure is in fact present in `attributed/` Q14 ("Pre-purchase inspection by a truck-specific mechanic ($300–$500) is mandatory. *—The Devil's Advocate*"). BL1 flag is incorrect — see Verdict notes for ledger correction.
- Possibly misattributed (BL1 flagged): 0 flags. None confirmed.

## Axis A2: Persona-Name Absence in `_synthesis.md` and `_summary.md` Prose

### Persona-name occurrences in `_synthesis.md`

| # | Excerpt | Persona named | Type |
|---|---|---|---|
| — | (none found in prose; convergence references use "all four perspectives", "all four personas", "convergent view", "strong convergence across three personas" — allowed) | — | — |

**Total persona-name occurrences in `_synthesis.md` prose:** **0**

### Persona-name occurrences in `_summary.md`

| # | Excerpt | Persona named | Type |
|---|---|---|---|
| — | (none found; executive prose uses "all four perspectives", "every financing choice", "the founder", abstract aggregates) | — | — |

**Total persona-name occurrences in `_summary.md` prose:** **0**

**A2 verdict:** **pass** — strict zero-tolerance threshold met in both documents. No persona names leak into Document 2 or Document 3 prose.

## Axis A3-content: Content Substance Survival in `_synthesis.md` and `_summary.md`

| BL1 distinctive TL | Persona (BL1) | In `_synthesis.md`? | In `_summary.md`? | Notes |
|---|---|---|---|---|
| TL-5 (working-capital suffocation / loan funds asset not operating cycle) | Systems Thinker | Y paraphrased (Q12 bullet 2: "The loan funds the asset (truck) but not the operating cycle, which can shift the working-capital problem onto the founder's personal finances") | N — not surfaced in summary prose; absorbed into generic "validation discipline" | partial |
| TL-7 (loan-rescue window closes month 4–5) | Accountant | Y verbatim (Q12 bullet 3: "if a clear trajectory toward positive cash flow isn't visible by month 4–5, the window to rescue with the loan has essentially closed") | N — month-4–5 timing not in summary; "At week 8, run the formal decision gate" is a different, near-term gate | dropped in summary |
| TL-8 (loan converts launching from reckless to advisable) | Accountant | Y verbatim (Q12 bullet 4: "the loan isn't optional leverage; it's the thing that converts launching from reckless to advisable") | N — "reckless to advisable" framing not surfaced; absorbed into "validation before debt" theme | dropped in summary |
| TL-12 (don't double-lever — SBA + financed-new) | Devil's Advocate | Y verbatim (Q13 bullet 4: "Don't double-lever: an SBA loan plus a financed new truck stacks two lenders and two default triggers into one downturn") | Y paraphrased (Executive Summary para 2: "The stacked-debt scenario (SBA loan plus financed new truck) is explicitly unsafe and should be avoided") | preserved both |
| TL-13 (truck as stepping-stone asset; lease vanishes at term) | Systems Thinker | Y verbatim (Q13 bullet 5: "Leases close that door at end-of-term; ownership keeps it open. For a founder planning fleet or brick-and-mortar expansion within 3 years, the truck is not a consumable expense — it is collateral and optionality") | Y paraphrased (Executive Summary: "closes the door on using the truck as collateral for 3-year expansion"; Long-term: "use its equity (~60–70% of original value) as collateral for expansion") | preserved both |
| TL-14 (insurance/liability differs by ownership structure) | Devil's Advocate | Y verbatim (Q13 bullet 6: "Insurance and liability differ between owned and leased — price both before deciding") | N — insurance-differs claim not surfaced in summary prose | dropped in summary |
| TL-15 (mandatory pre-purchase inspection $300–$500) | Devil's Advocate | N — synthesis Q14 bullet 3 keeps the broader "discovered necessities" line but does not surface the $300–$500 inspection step | Y paraphrased (Immediate steps: "get an independent mechanical inspection for $300–$500 before signing") | partial — surfaced in summary as actionable next step but absent from synthesis prose |
| TL-19 ($10K+ tail-risk repair catastrophe; $15–$20K untouched reserve through month 9) | Devil's Advocate | N — absorbed into convergent "Equipment-cost creep is endemic" bullet without the catastrophe-variance distinction | Y paraphrased (Theme 4: "single catastrophic failures can exceed $10K and wipe out the reserve in one month") | partial |
| TL-22 (sunk-cost bias inverts rational response — kept-going trap) | Systems Thinker | Y verbatim (Q14 bullet 6: "**The founder's sunk-cost bias inverts the rational response — when reserves deplete, the instinct is to expand, but the correct move is contraction.**") | Y paraphrased (Risks: "Sunk-cost bias pushes founders to accelerate when reserves deplete — the exact opposite of the rational response, which is contraction") | preserved both |
| TL-27 (stage SBA as milestone-gated line of credit, not lump sum) | Devil's Advocate | Y verbatim (Q12 bullet 5: "Structure the draw as a line of credit gated to milestones, not a lump sum"; Q15 bullet 4: "Build a staged decision architecture") | Y verbatim (Executive Summary: "apply for a milestone-gated line of credit rather than a $40K lump sum"; Near-term: "structured as staged draws gated to further milestones") | preserved both |
| TL-28 (catering as distinct validation gate; zero by week 6–8 = positioning fault) | Systems Thinker | Y verbatim (Q15 bullet 6: "**Catering validation is a distinct and harder gate — if catering bookings are zero by week 6–8, borrowing to scale daily vending funds the wrong half of the business model.**") | Y paraphrased (Risks: "Zero catering bookings by week 6–8 signals a structural positioning problem that more vending capital won't fix") | preserved both |

**Content-survival rate (`_synthesis.md`):** 9/11 = **81.8%**
**Content-survival rate (`_summary.md`):** 7/11 = **63.6%**
**Absorbed-only (separate category):** synthesis: 2 (TL-15 dropped, TL-19 absorbed into convergent bullet); summary: 4 (TL-5, TL-7, TL-8, TL-14).

**A3-content verdict:** **fail** — both rates below 90% threshold. Synthesis 82% is moderate failure: TL-15 (pre-purchase inspection) is dropped from synthesis even though it survives in `attributed/` and in the summary's actionable next steps; TL-19 ($10K+ catastrophe variance) is absorbed into the broader equipment-cost-creep convergent bullet without preserving the variance-vs-expected-value distinction. Summary 64% is severe failure: four single-persona reframes are not surfaced in the executive summary, including TL-7 (the load-bearing month-4–5 loan-rescue-window timing), TL-8 (the reckless-to-advisable framing of the loan), TL-5 (the asset-vs-operating-cycle suffocation pattern), and TL-14 (insurance-differs-by-structure). The summary systematically privileges convergence over distinctive single-persona substance.

## Axis A3-framing: Framing/Lens Survival

| Persona | Distinctive framing (BL1) | In `_synthesis.md` | In `_summary.md` |
|---|---|---|---|
| The Accountant | Quantitative cash-flow modeling — populates dollar figures, monthly thresholds, break-even arithmetic at high specificity; treats every claim as a number first | preserved (Q12: "$570–$950 monthly band"; "$3,800–$6,300/mo gross required"; Q14: "3–6 months… $6K–$12K"; Q15 milestone numerics retained) | preserved (Executive Summary: "$570–$950 monthly fixed-cost floor"; "$5K/month gross-revenue floor"; "$6K–$12K reserve"; Themes name "0.5–5% rate advantage" and "70+ founder hours/week") |
| The Devil's Advocate | "Have we considered…" interrogation of load-bearing assumptions — surfaces tail-risk, hidden trade-offs, unmodeled exit scenarios; relentlessly proposes mitigations alongside critiques | flattened — synthesis prose converts every interrogation into declarative ("Don't double-lever"; "Insurance and liability differ"; "Equipment-cost creep is endemic"). The "Have we considered…" rhetorical stance is gone, though the substance survives. Mitigations partially survive ("if leasing, negotiate an early-exit clause"; "Cap month-one new equipment purchases at 5% of starting capital") | flattened — summary prose is uniformly declarative. Mitigations survive as immediate-step recommendations, but the interrogative challenge-and-mitigate cadence is fully smoothed |
| The Pragmatist | Operational decision-rules and triage — converts trade-offs into "do this first, then this" sequences with explicit thresholds; treats the founder as someone who needs a checklist | preserved (Q14 triage hierarchy: "contingency reserve first, growth investments second, working capital last"; Q14 trigger rule: "reserves under 45 days AND no consistent $5K/week = pause"; Q15 "three numbers sustained for six weeks") | preserved (Immediate/Near-term steps are checklist-shaped with explicit thresholds; "At week 8, run the formal decision gate"; "all dashboard metrics green = apply for the SBA loan… mixed signals = reject loan, extend bootstrap, iterate 4 more weeks; clear failure = pivot positioning or exit") |
| The Systems Thinker | Identifies feedback loops, structural traps, reinforcing dynamics — names patterns ("repossession cliff," "kept-going trap," "inventory paradox") that connect short-term decisions to medium-term consequences | preserved (Q13: "**The lease's hidden asymmetry: repossession is a cliff, not a slope.**"; Q14: "**The founder's sunk-cost bias inverts the rational response**"; Q12: "shifts the working-capital problem onto the founder's personal finances" implicit pattern). "Kept-going trap" and "inventory paradox" pattern-names absorbed into prose without explicit naming | partial — "repossession cliff (two missed payments = immediate shutdown)" preserved verbatim; "Sunk-cost bias pushes founders to accelerate when reserves deplete" preserved as Risk; but pattern-naming as a stance is selectively retained — only the most striking pattern survives, others smoothed |

**Framing-survival rate (`_synthesis.md`):** 3/4 = **75%** (Devil's Advocate flattened from interrogation→declarative)
**Framing-survival rate (`_summary.md`):** 3/4 = **75%** (Devil's Advocate flattened; Systems Thinker partially preserved)
**A3-framing verdict:** **pass at threshold** — 75% threshold met in both documents. The Devil's Advocate interrogation stance is the load-bearing lens that gets flattened in both docs; the substance survives but the rhetorical stance does not. Borderline result; one more flattened lens would push synthesis to 50% and fail.

## Axis B: Hallucinated Quotes

65 attributed quote-bullets across the 4 questions in `attributed/`. Each was checked against the corresponding `responses/{persona}.md`. Findings:

| Quote # | Quote text (excerpt) | Cited persona | Found in source? | Classification |
|---|---|---|---|---|
| 1–9 | Q12 cost-stack group (Accountant: "$570–$630 / 6–7yr / $8,200–$9,500 interest / $400–$1,200 origination / $3,800–$4,200 gross monthly"; Pragmatist: "$849/mo plus $4K–$6K origination / 14% of $6K"; Systems Thinker: "$750–$950/mo / $5K–$6.3K monthly gross"; DA: "$667/mo; collateral exposure cascades unseen"; SystemsThinker: "high-volume, standardized offerings… eroding the differentiation"; DA: "Personal guarantees or collateral pledges mean if the truck is pledged"; DA: "$40K ask against $60K savings is disproportionate leverage") | as labeled | Y (each verified verbatim or compressed-faithful) | faithful (compressions only) |
| 10–13 | Q12 "fixed-cost floor" group (Accountant "$2,000 revenue shortfall converts a break-even month into a $600 net loss"; DA "$667/mo payment sounds manageable until July when the farmer's market draws crowds away"; Pragmatist "The $849 payment must be made whether you do $3K or $10K — two-edged sword"; Systems Thinker "Working capital suffocation via the inventory paradox… loan funds the asset (truck) but not the operating cycle") | as labeled | Y (each verified) | faithful |
| 14–17 | Q12 bootstrap-runway group (Accountant "17 months… loan-rescue window closes by month 4–5"; Pragmatist "$60K path is viable but requires ruthless prioritization… $3.5K/week gross"; Systems Thinker "10–12 months of runway"; DA "Run 2–3 months of proof-of-concept on $60K alone") | as labeled | Y (each verified) | faithful |
| 18 | Q12 reckless-to-advisable bullet (Accountant: "The loan makes launching advisable rather than reckless… $800/week from week 3–4 and food costs in 50–55% range") | Accountant | Y | faithful |
| 19–20 | Q12 stage-the-draw group (DA: "Debt service as a decision-making straitjacket… line of credit"; DA: "Stage 1 ($60K bootstrap)… Stage 2 ($20K)… Stage 3 ($20K)") | DA | Y (each verified) | faithful |
| 21–23 | Q13 3-year TCO group (Pragmatist "Used purchase ~$37.5K / Financed-new ~$55K+ / Lease ~$28.8K"; Accountant "$12,800–$15,700 net… Lease $43,200–$54,000"; Systems Thinker "Lease costs match or exceed used purchase when repairs factored in") | as labeled | Y (each verified) | faithful |
| 24–25 | Q13 working-capital ranking (Accountant "Finance preserves most year-one float; lease commits $14–18K; purchase locks up $28K"; Pragmatist "Lease is insurance against 'this idea doesn't work'… Financing a new truck is the worst risk-adjusted option") | as labeled | Y | faithful |
| 26–27 | Q13 lease-cliff group (Systems Thinker "Repossession cliff vs. gradual decline. Miss two lease payments = overnight shutdown"; DA "Lease kills optionality… 60–70% recovery on used truck sale; negotiate 30-day cancellation") | as labeled | Y | faithful |
| 28 | Q13 don't-double-lever (DA: "Financed new truck plus SBA loan = $1,000–$1,500/mo… Two debt instruments means two lenders with claims") | DA | Y | faithful |
| 29 | Q13 stepping-stone (Systems Thinker: "Lease closes the expansion door; purchase opens it") | Systems Thinker | Y | faithful |
| 30 | Q13 insurance-differs (DA: "Liability insurance differs between owned vs. leased… cheap insurance on a leased truck might partially offset") | DA | Y | faithful |
| 31–33 | Q14 reserve-months group (Accountant "$5,500–$8,000 on ~$1,400/mo… 3 months minimum / 6 months margin of safety"; Pragmatist "$6K minimum at $2K/mo"; Systems Thinker "$9K–$12K… consumed in layers") | as labeled | Y | faithful |
| 34–37 | Q14 annual-vs-monthly group (Accountant "annual is cheaper but requires not misusing cash"; Pragmatist "annual by month 6–9 once cash flow is proven"; DA "$800/yr permits = $67/mo averaged… potentially under $20K working capital before first revenue"; Systems Thinker "$9K annual commitment in month 1… renegotiation nightmare in month three") | as labeled | Y | faithful |
| 38–41 | Q14 equipment-creep group (Accountant "15–20% of initial capital… $2–3K immediate / $1,500–$2,000 commissary / $800–$1,200 hidden fees"; Pragmatist "$9K–$12K reserved purely for bad truck luck… fuel pump $800 / transmission bearing $2K / brake work $1.5K"; DA "Variance on repairs is huge — $15K–$20K reserve… $10K+ catastrophe… $300–$500 pre-purchase inspection"; DA "discovered necessities… backup ice machine $3K / second fryer $4K / better POS $2K / backup propane $800; cap month-one purchases at 5%") | as labeled | Y (each verified) | faithful |
| 42–45 | Q14 trigger-rules group (Accountant "12% cumulative net margin / 10% / 40% revenue variance / 2 months reserves"; Pragmatist "reserves under 45 days AND no $5K/week = pause"; DA "Operational trigger… 70+ hours/week with flat revenue"; Systems Thinker "(1) 15%+ below break-even / (2) 5% repair / (3) below one month") | as labeled | Y | faithful |
| 46–47 | Q14 triage group (Accountant "contingency → growth → working capital… reduce personal income is dangerous"; Pragmatist "Cut marketing and discretionary payroll first… your own draw can be cut; the truck and licenses cannot") | as labeled | Y | faithful |
| 48 | Q14 kept-going trap (Systems Thinker: "When month three is slow, the founder is tempted to accelerate… exactly backward") | Systems Thinker | Y | faithful |
| 49–52 | Q15 milestone-checklist group (Accountant "5 milestones over 8–12 weeks: 60 days / $400–$500 / 35–40% / 3x repeat / 12–14 hr days"; Pragmatist "3 numbers / six weeks: $5K/week / sub-28% food cost / 1–2 catering 30%+ margin"; Systems Thinker "4 milestones over 6–8 weeks: 3–5 transactions / $800–$1,200 / 25–35% / two catering"; DA "Validation dashboard of 4 metrics… green by month 3 or don't borrow") | as labeled | Y (each verified) | faithful |
| 53–55 | Q15 loan-terms-improve group (Accountant "0.5–1% rate discount… $1,200 over 6 years… partial guarantee"; Pragmatist "6 weeks of $5K/week = $30K gross… $2K–$3K saved interest"; Pragmatist "4–5% rate delta… 12–15% pre-launch vs. 8–10% post-validation") | as labeled | Y (each verified) | faithful (note: synthesizer collapses Pragmatist's two distinct rate claims into successive bullets — both are individually verbatim) |
| 56–57 | Q15 segment-diversity group (DA "weeks 1–4 prime / 5–8 secondary / 9–12 catering"; Accountant "If day-average is below $300 after 4 weeks, the model isn't viable… food costs running 45%+") | as labeled | Y | faithful |
| 58–60 | Q15 staged-decision-architecture group (Accountant "Month 2: $350+ daily revenue and food costs sub-40% = apply for loan"; Systems Thinker "Explicit decision gate at week 8… SBA takes 4–8 weeks to fund"; DA "Stage the SBA ask as a line of credit… Stage 1 / Stage 2 / Stage 3") | as labeled | Y | faithful |
| 61–62 | Q15 honeymoon-weeks group (Pragmatist "Weeks 1–4 are honeymoon weeks; weeks 5–8 are the real test"; Accountant "Real validation is messier… weeks 2–4 figuring out vending spot, weeks 4–6 customers start recognizing, weeks 6–8 repeat business shows patterns") | as labeled | Y | faithful |
| 63 | Q15 catering-gate (Systems Thinker: "Zero catering in weeks 1–8 signals positioning/pricing/outreach mismatch") | Systems Thinker | Y | faithful |
| 64–65 | Q15 cash-vs-debt-learning group (Systems Thinker "Cash-backed learning is faster and cheaper than debt-backed learning… $40K of debt-fueled slack can absorb mistakes"; DA "If $60K can't validate, $100K won't either… extends the runway to failure") | as labeled | Y | faithful |

**Quote count:** 65
**Faithful:** 65
**Paraphrase (faithful but compressed):** 0 explicit paraphrase-flagged additions; the only borderline observation is BL1's note that the synthesizer collapses the Pragmatist's two distinct rate-discount claims (0.5–1% and 4–5%) into successive bullets rather than smoothing them into one — but each individual bullet remains source-faithful.
**Hallucinated:** 0
**Hallucination-axis verdict:** **pass** — zero hallucinated quotes across 65 attributed bullets.

## Axis C: Traceable Convergence Counts

| Claim # | Convergence claim text (excerpt) | BL1 ledger says | Match? |
|---|---|---|---|
| 1 | `_synthesis.md` Q12 bullet 1: "All four perspectives converge on a similar cost stack: 8–10% interest over 5–7 years, 1–3% origination, plus a personal guarantee" (TL-1) | TL-1 = 4/4 (Accountant, Pragmatist, Systems Thinker, DA all model) | ✓ verified |
| 2 | `_synthesis.md` Q12 bullet 1: "The practical 15%-of-revenue debt-service ceiling translates to $3,800–$6,300/mo in gross revenue" (TL-2) | TL-2 = 3/4 (DA addresses seasonality stress-testing rather than the absolute floor). No explicit count claimed — claim is unattributed — fine. | ✓ acceptable (no specific count claimed) |
| 3 | `_synthesis.md` Q12 bullet 3: "All four personas model similar bootstrap math: ~$25–28K on a reliable used truck, ~$8K on equipment/commissary setup, ~$3–5K on permits/insurance, leaving $20–28K of operating runway" (TL-6) | TL-6 = 3/4 (Accountant, Pragmatist, Systems Thinker model the allocation; DA argues run-2–3-months-proof-of-concept but does not itemize bootstrap math) | ✗ untraceable — overcount; should be "three of four". DA's sub-bullet ("Prove unit economics first; lenders approve faster with data") is *adjacent* to the bootstrap-viability claim but does not model the budget allocation |
| 4 | `_synthesis.md` Q12 bullet 4: "Convergent view: the loan isn't optional leverage; it's the thing that converts launching from reckless to advisable" (TL-8) | TL-8 = 1/4 (Accountant only — explicitly flagged single in BL1) | ✗ untraceable — single insight labeled "convergent". Sub-bullet block correctly cites only Accountant, but the prose label "Convergent view" overstates support |
| 5 | `_synthesis.md` Q13 bullet 1: "Convergence: The Pragmatist's and The Accountant's spreadsheets both show used purchase at ~$13K–$37K total 3-yr cost vs. $50K+ for financed-new" (TL-9) | TL-9 = 3/4 (Accountant, Pragmatist, Systems Thinker run TCO; DA agrees on directional verdict without TCO). Persona names *appear in the synthesis prose here* — wait: this is the **synthesis** Document 2, which we already audited under A2 as containing zero persona names. Re-checking: claim 5 cited above was paraphrased from the **attributed** Document 1, not synthesis. In `_synthesis.md` the language is "Used purchase ranks first on 3-year cost" without a numeric persona claim. Striking from C audit | n/a (claim originated in attributed/, not synthesis prose) |
| 6 | `_synthesis.md` Q14 bullet 1: "Strong convergence across three personas… 3–6 months of fixed costs in reserve" (TL-16) | TL-16 = 3/4 (Accountant, Pragmatist, Systems Thinker; DA does not state months-of-reserve threshold) | ✓ verified |
| 7 | `_synthesis.md` Q14 bullet 2: "Convergent practical advice… annual is cheaper but creates cash cliffs… phase the transition" (TL-17) | TL-17 = 4/4 (all four; sub-bullets confirm) | ✓ verified (label "convergent" without count is accurate; 4/4) |
| 8 | `_synthesis.md` Q14 bullet 4: "Convergent insight on the need for pre-committed rules, with The Devil's Advocate adding the critical counter-framing" — wait, naming DA in synthesis prose? Re-reading: this phrasing is in `attributed/` Document 1, not `_synthesis.md`. In `_synthesis.md` Q14 bullet 4 reads "Set financial-and-operational triggers… Pre-committed rules remove emotion" with no persona naming and no numeric count | TL-20 = 4/4 | ✓ verified (no count claimed in synthesis prose) |
| 9 | `_synthesis.md` Q14 bullet 5: "Convergence on the hierarchy of what to cut" (TL-21) | TL-21 = 2/4 (Accountant, Pragmatist; weak-convergent) | ✗ untraceable — labeled "convergence" without count; calling 2/4 "convergence" is a soft overstatement consistent with the prompt's language but borderline at the strict-rubric bar. Mark as soft fail (no numeric count, but framing implies broader support than 2/4 weak-convergent) |
| 10 | `_synthesis.md` Q15 bullet 1: "Validate first, then borrow. Roughly 6–8 weeks of operational data before the loan application is the right sequence" (TL-23) | TL-23 = 4/4 | ✓ verified (the prose says "Validate first, then borrow" without explicit count, but the surrounding language treats this as the strongest converged claim — which is accurate) |
| 11 | `_synthesis.md` Q15 bullet 2: "Convergent and actionable. A pre-launch loan for $40K might price at 12–15%… post-validation loan at 8–10%" (TL-25) | TL-25 = 3/4 (Accountant, Pragmatist, DA; Systems Thinker's response does not surface the post-validation rate-discount claim) | ✓ acceptable (no specific count, "convergent" claim broadly accurate; Pragmatist quoted twice but Systems Thinker not surfaced — minor under-representation but not a count-fail) |
| 12 | `_synthesis.md` Q15 bullet 4: "Build a staged decision architecture… Convergent across three personas: pre-commit to the decision tree" (TL-23/27 hybrid) | Counting decision-architecture-with-loan-gating: Accountant has "validation decision tree", Systems Thinker has "explicit decision gate at week 8", DA has "stage the SBA as a line of credit". 3 personas. | ✓ verified (count "three of four" is correct) |
| 13 | `_summary.md` Executive Summary: "The central finding across all four perspectives is clear and actionable: validate before you borrow" (TL-23) | TL-23 = 4/4 | ✓ verified |

**Convergence-claim count:** 11 substantive claims (excluding 5 and 8 which were attributed-only and 2 which makes no count). 
**Verified:** 8
**Untraceable:** 3 (claims 3, 4, 9)
**Convergence-axis verdict:** **fail** — traceable rate 8/11 = 73% < 100% pass threshold. The substantive errors:
- **Claim 3 (overcount):** "All four personas model similar bootstrap math" overstates DA, who agrees on viability without itemizing allocation. Should be "three of four" or unspecified.
- **Claim 4 (overcount, more serious):** "Convergent view: the loan isn't optional leverage" labels a 1/4 single-persona insight (Accountant TL-8) as "Convergent view", which is a substance error — only one persona articulates this reframe. The sub-bullet correctly cites only the Accountant, but the prose label is wrong.
- **Claim 9 (soft):** "Convergence on the hierarchy of what to cut" labels TL-21 (2/4 weak) as "Convergence" without flagging the 2/4 status. Borderline but flagged as softfail.

The errors are concentrated in Q12 (claims 3 and 4), suggesting the synthesizer used presence-of-sub-bullets-from-multiple-personas as a "convergent" trigger without consistently checking whether the sub-bullets all support the same proposition.

## Axis D: Categorical-Reframe Presence

**BL1 reframe candidate:** "the cluster reframes the financing decision from 'what's the optimal capital structure?' to 'what sequence of capital deployments matches the rate of validated learning?' The reframe is from 'capital architecture' → 'capital choreography'."

- Reframe in `_synthesis.md`: **partial** — the sequencing-to-validation logic is structurally present across Q12 ("Structure the draw as a line of credit gated to milestones, not a lump sum"), Q15 ("Validate first, then borrow"; "Build a staged decision architecture"), and the Q14 trigger-rules section. But no single bullet explicitly names the reframe — i.e., the synthesis does not crystallize "the question is sequencing, not structure" into a single declarative statement.
- Reframe in `_summary.md`: **partial-to-strong** — Executive Summary paragraph 4 closes with: "the right sequence is bootstrap first on $60K with a used truck, validate 6–8 weeks across multiple location types and one catering gig, and then apply for a milestone-gated line of credit rather than a $40K lump sum. **This sequence converts every dollar of debt into scaling capital rather than learning capital**, and it preserves the founder's ability to pivot or exit gracefully if validation fails." This is the closest the document gets to crystallizing the reframe; the "scaling capital vs. learning capital" framing is a shorthand for the sequencing reframe but stops short of naming "capital architecture → capital choreography" or its equivalent.

**D verdict:** **partial** — the reframe substance is present in both documents, structurally load-bearing in the summary's closing strategic-implication paragraph, but neither document crystallizes the reframe as a single declarative statement. Acceptable at the gated bar but a missed opportunity to sharpen.

## Axis E: Foundational-Reversal Presence
n/a — med sample (axis is high-only).

## Phase-5 Signal Audit

- **Central Tension** in `_summary.md`: BL1 names "whether the SBA loan should be drawn as launch capital or as scaling capital" with the corollary that all four personas converge on validate-then-borrow but the trade-off is real because bootstrap requires near-perfect execution and the loan-rescue window closes by month 4–5. Summary captures the "validate before you borrow" half (Theme 2: "Validation Before Debt Changes Both the Terms and the Question"). The "real tension because bootstrap requires near-perfect execution" half is partially captured ("Without it [the loan], any operational misstep — supplier delay, permitting holdup, slower-than-forecast foot traffic — becomes existential" — but this line is in `_synthesis.md`, not `_summary.md`). Summary's Trade-offs section names "Bootstrapping $60K preserves ownership and optionality but leaves almost no margin for operational error" — adequate. **Match: partial → pass.**
- **Confidence tags** present: **none formally emitted** — Phase 4 output uses prose ("All four perspectives converge", "Strong convergence across three personas", "Convergent view") rather than discrete `[convergent: 4/4]` `[single]` `[trade-off]` tags. As with the career-change med sample, this is a Phase-4-vs-Phase-5 emission gap and not a prompt fault per se.
- **Categorical reframe** in `_summary.md`: see Axis D — **partial-to-strong**.
- **Neither-lens gaps:** n/a (med).
- **Conspicuous absences:** n/a (med).

## Sample Verdict

**Verdict:** **FAIL**

**Failure modes:**
- **A3-content fail:** synthesis 82% (TL-15 pre-purchase inspection dropped from synthesis prose; TL-19 $10K+ catastrophe absorbed without the variance-vs-expected-value distinction). Summary 64%, severe failure: four single-persona reframes (TL-5, TL-7, TL-8, TL-14) do not survive in the executive summary. The most consequential drops:
  - **TL-7 (loan-rescue window closes month 4–5):** load-bearing for sequencing decisions and explicitly highlighted in BL1's Convergence Map; absent from summary.
  - **TL-8 (loan converts launching from reckless to advisable):** the cluster's clearest articulation of the central trade-off; not surfaced in summary.
  - **TL-5 (working-capital suffocation / asset vs. operating cycle):** the distinctive Systems-Thinker dynamic that sharpens the generic "fixed cost" framing into a structural pattern; not surfaced in summary.
  - **TL-14 (insurance/liability differs by ownership):** practical actionable item; not surfaced in summary.
- **C fail (3/11 convergence claims untraceable, 73%):** two substantive over-claims in Q12:
  - "All four personas model similar bootstrap math" — DA does not model the bootstrap allocation.
  - "Convergent view: the loan isn't optional leverage" — single-persona insight (Accountant only) labeled "convergent". Substance error, not just count error.
  - Plus one soft fail (Q14 TL-21 "Convergence on the hierarchy of what to cut" labeled as convergence without flagging 2/4 weak status).

**Passing axes:**
- **A1 pass (100% / 100%):** all four persona names preserved and all 11 distinctive single-persona TLs correctly attributed. The cleanest A1 result among med samples observed.
- **A2 pass:** zero persona-name leakage in either Document 2 or Document 3 prose.
- **A3-framing pass at threshold (75% / 75%):** the Devil's Advocate interrogation lens is flattened to declarative in both docs; the other three lenses survive. Borderline — close to failing.
- **B pass (0/65 hallucinated):** zero fabrications across 65 attributed quote-bullets.
- **D partial:** sequencing reframe present in spirit, structurally load-bearing in the summary's closing paragraph, but not crystallized as a single declarative reframe statement.

**Recommended prompt revision target (RP1):**

Three concrete prompt-revision targets, in priority order:

1. **Strengthen single-persona-preservation rule for Document 3 (executive summary).** The current prompt's "Include every insight valuable enough to act on — single-persona insights often flag blind spots everyone else missed" appears in the Document 1 instructions and in synthesis Quality Standards, but Document 3 (summary) gets only "Extract patterns and themes across questions; aggregate lists of raw points fail the 'synthesis over aggregation' bar." This wording effectively dis-incentivizes surfacing single-persona insights into the summary's Themes, Trade-offs, or Risks sections. The food-truck/med/03 result shows the exact failure mode: TL-5, TL-7, TL-8, TL-14 are all distinctive single-persona reframes that survive in `_synthesis.md` but are dropped from `_summary.md`. Add to Document 3 instructions:

   > **Surface load-bearing single-persona reframes.** The Themes, Trade-offs, and Risks sections must include any single-persona insight that reframes the cluster's core question — counter-tests against the framing, distinctive timing claims (e.g., "the loan-rescue window closes by month 4–5"), buried hypotheses, alternate diagnostic patterns. The "synthesis over aggregation" bar applies to redundant raw points, not to distinctive reframes; aggregating-across-personas does not mean discarding the most pointed single-persona insights. If a synthesized point in Document 2 surfaces a structural pattern, an asymmetry, or a timing trigger that no other persona named, it must appear in Document 3 in some section.

2. **Add convergence-count accuracy requirement (re-iterating from career-change/med/01 RP1).** This sample's Q12 claims 3 and 4 are the same failure mode flagged in career-change/med/01: synthesizer prose uses "all four perspectives converge", "Convergent view", or "All four personas model similar X" without verifying that all four personas actually contribute the *same proposition*. Concretely the food-truck failure is that the Accountant's TL-8 ("loan converts launching from reckless to advisable") is labeled "Convergent view" in the synthesis even though only the Accountant articulates it. Add the convergence-count instruction:

   > **Convergence labels must reflect ledger-traceable substance, not sub-bullet count.** Before writing "all four", "every persona", "convergent view", "strong convergence across three personas", or numbered convergence claims, count the distinct personas (not the distinct quote sub-bullets) actually contributing the *same proposition*. A bullet that has sub-bullets from multiple personas may still be a single-persona insight if the other sub-bullets support a related-but-different point. The label "convergent view" is reserved for ≥ 2 personas converging on the same proposition; "all four" for 4/4; "three of four" for 3/4; do not label single-persona insights as "convergent".

3. **Tighten the Devil's Advocate framing-preservation instruction.** The interrogation lens ("Have we considered…") is flattened in both `_synthesis.md` and `_summary.md` — this is the only lens that consistently fails A3-framing across med samples observed. The substance survives but the rhetorical stance does not. The current prompt says "Maintain nuance between perspectives in attribution" but does not preserve voice when consolidating. Add:

   > **Preserve distinctive rhetorical stances when consolidating.** When a persona's distinctive contribution is a stance (the Devil's Advocate's interrogation; a Systems Thinker's pattern-naming; an Empath's felt-experience framing) rather than a substantive claim, the consolidated synthesis bullet should preserve at least one phrase or cadence that signals the stance — e.g., the Devil's Advocate's "Have we considered…" interrogation can be preserved as "A still-open question is whether…" or "The under-modeled scenario is…" rather than fully flattened to declarative. The substance survives flattening but the lens does not, and lens-flattening is the single most common A3-framing failure.

Together, revisions 1 and 2 directly target the C and A3-content/summary failures observed in this sample. Revision 3 is preventive against a near-fail at A3-framing (75% threshold met but barely).

---

**Note on BL1 ledger:** One discrepancy with BL1's `attributed/` cross-reference notes:
- BL1 flagged TL-15's "$300–$500 pre-purchase inspection" as "PARTIALLY DROPPED" from `attributed/`. FA1 re-verification finds the figure **is present** in `attributed/` Q14: "Pre-purchase inspection by a truck-specific mechanic ($300–$500) is mandatory. *—The Devil's Advocate*". This is part of the same bullet that captures the $10K+ catastrophe and $15–$20K reserve claims (TL-19), so BL1 may have read the bullet as covering only TL-19. Recommended ledger correction: TL-15 should be marked **fully present** in `attributed/`. BL1 is otherwise accurate; FA1 finds no fabrications, no misattributions, and no other dropped TLs in `attributed/`.
- Separately: BL1's header reports 27 through-lines but its Convergence Map and FA1's enumeration find 29. FA1 used the corrected count (29) when computing distinctive-content rates (11 distinctive single-persona TLs across 4 personas) consistent with BL1's Persona-Distinctiveness Map.

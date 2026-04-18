# school-consolidation — high — Synthesis Target

**Input count (N):** 175 total (130 Synthesize + 45 Append)
**Synthesize-group input count:** 130 (the subset the synthesis step operates on)
**Append-group input count:** 45 (all 45 flow through B4 — at high effort Tier 1 Perspective appends all 5-8 per persona; Constraint Flipper Tier 2 appends all 7 on this constraint-rich topic; Politician Tier 3 at high effort appends all 10; Connector Tier 3 replaces Analogist and appends all 8)

**Expected output count (M):** 85 total (range 77–93, target 85)
- Synthesized questions: 40 (range 36–46, target 40)
- Appended questions: 45 (exact — all 45 at high effort per D1 "No selection needed — append everything" for Tier 1 Perspective, plus Constraint Flipper all 7, Politician all 10, Connector all 8)

**Compaction ratio N/M (Synthesize stream):** 130/40 = 3.25× (range 2.8–3.6, target 3.25)
**Compaction ratio N/M (total):** 175/85 = 2.06× (range 1.9–2.3, target 2.06)
**Cluster count C in output:** 12 (range 11–13, target 12 — matches B1)

**Scoring convention:** Target = point estimate for headline scoring. Range = pass/fail band. Outside-range results scored with severity proportional to distance from nearest band edge.

**Reference:** `persona-selection-guide_Phase2B.md` projects high-effort total output at ~55–90 questions. Our target of 85 sits near the top of that range because this cell has a large Append stream (45 — the largest in the evaluation set observed so far, matching or exceeding youth-mentorship/high's 44, driven by Politician 10 + Connector 8 + Constraint Flipper 7 + standard Tier 1 Perspective 20).

**Comparison with youth-mentorship/high (86 target):** The 85 target is essentially identical (1-question difference). Key differences:
- Synthesize stream slightly smaller (40 vs. 42, reflecting compaction over slightly fewer Synthesize questions: 130 vs. 135)
- Append stream essentially equal (45 vs. 44 — Connector's 8 here vs. 7 there; everything else same or nearly so)
- Convergence density here is higher (63.1% vs. 59.3%) driving slightly more aggressive compaction of Synthesize stream
- Compaction ratio on Synthesize is similar (3.25× vs. 3.21×)

**Comparison with property-management/high (80 target):** The 85 target is 6% larger than property-management's 80. Key differences:
- Synthesize stream smaller (40 vs. 44, fewer Synthesize personas: 10 vs. 11)
- Append stream much larger (45 vs. 36 — Politician 10 + Connector 8 replacing Analogist 5, a +13 Append net)
- Higher compaction ratio on Synthesize (3.25× vs. 3.32× — very similar)

**GT1 watchlist:** NOT ON WATCHLIST. GT1 Rev 3 confidently assigns Accountant + Politician for school-consolidation/high. (School-consolidation/medium is on the watchlist — at the 0-1 Tier 3 ceiling, Politician and Accountant have competing strong triggers; at high effort, both fit within the 0-2 ceiling.) If SP1 scores this cell anomalously, the synthesis prompt is the first diagnostic check (not GT1 composition). Connector-not-Analogist is canonical for this topic.

---

## Target Output Structure

The 40 synthesized questions distribute across the 12 B1 clusters. Cluster-level compaction varies: high-convergence clusters (especially Clusters 1, 2, 8) compact more aggressively; single-persona or highly-distinct-voice clusters compact minimally.

### Cluster 1: Fiscal Modeling, Break-Even & Unit Economics

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged break-even question from Convergence Group 1 (anchored in Analyst Q1 + Accountant Q1 + DA Q1 + Questioner Q5) — true break-even including transition costs
- Analyst Q14 (systems integration complexity — student info systems, financial software, SPED tracking, email, HR) — unique technical-integration cost register
- Accountant Q9 (economic model for maintaining quality during consolidation — quality-preserving investments; ROI on preventing quality bleed)

**Should include:**
- Accountant Q7 (targeted investment vs. across-the-board cuts — energy retrofits, facility modernization with payback) — unique Accountant strategic-investment framing
- Accountant Q8 (hidden ongoing costs of larger-scale operations — longer routes, expanded IT, salary leveling upward)
- Analyst Q15 (failure modes and probabilities — bridges to Group 9 in Cluster 11)

**Optional:**
- DA Q2 (debt/obligations from insolvent districts) — bridges to Cluster 4
- Questioner Q16 (what if consolidation doesn't solve financial problem — contingency if still deficits 5 years post-merger — bridges to Cluster 11)

**Note:** Cluster 1 anchors the fiscal-modeling content. SP1 must preserve: (a) the break-even merger representing 4 personas' convergent framing, (b) Accountant's unique financial-strategic register (either Q7 capital-investment reframing or Q9 quality-preservation ROI), (c) Analyst's technical-integration complexity (Q14). Accountant's minimum representation of 4+ questions starts here. Missing Accountant's signature quantification (specific dollar ranges, time horizons, NPV analysis) is a scored failure.

### Cluster 2: Enrollment Decline, Demographic Trajectories & Revenue Sustainability

**Input questions:** 12
**Expected output questions:** 4
**Compaction:** 3.0×

**Must include:**
- Merged enrollment-scenarios question from Convergence Group 2 (anchored in Analyst Q2 + Analyst Q9 + Accountant Q2 + DA Q3) — sensitivity analysis with viability floor and tripwire indicators
- Merged declining-enrollment-as-asset question from Convergence Group 18 (anchored in AI Q3 + Questioner Q4 + Futurist Q1) — reframing decline as opportunity
- Accountant Q6 (alternative funding models — sales tax, grants, partnerships, leasing) — unique Accountant revenue-diversification register

**Should include:**
- Questioner Q6 (smallest district solvency shorter than projected — emergency-vs-deliberate) — preserved distinct per Group 9
- Futurist Q3 (aging curve and school-funding implications — non-parent voters)
- Futurist Q7 (rural economic diversification — remote work, tourism)
- Accountant Q10 (financial resilience modeling beyond 2035 — bridges to Cluster 11)

**Optional:**
- Questioner Q17 (enrollment actually increases after consolidation — demographic surprise)
- Questioner Q8 (state funding formulas change again after consolidation — paradigm)

**Note:** Cluster 2 covers the "demographic driver of the whole crisis." SP1 must preserve: (a) the 4-way scenarios merger representing comprehensive sensitivity analysis, (b) the reframing-decline merger (AI + Questioner + Futurist) representing strengths-paradigm-trend integration, (c) Accountant's revenue-diversification register (Q6 is essential — alternative funding beyond enrollment-driven state formula). Missing any of these three signatures is a scored failure.

### Cluster 3: Facilities, Buildings & Capital Strategy

**Input questions:** 11
**Expected output questions:** 3
**Compaction:** 3.67×

**Must include:**
- Merged facilities-lifecycle-economics question from Convergence Group 3 (anchored in Analyst Q3 + Accountant Q3) — lifecycle, NPV, closure-vs-avoided-cost
- Merged building-repurposing question from Convergence Group 20 (anchored in Questioner Q14 + AI Q9) — closed schools as community assets
- Questioner Q13 (keep all buildings with strategic K-3/4-6/7-8/9-12 spread) — paradigm facility-design reframing

**Should include:**
- Futurist Q4 (option value for hybrid/micro-school models — flexible scheduling, community learning hubs)
- Futurist Q8 (community school model co-locating health/adult ed/programming)
- DA Q10 (facility closure winners and losers — merged in Group 11 for Cluster 8, listed as potential bridge)
- Questioner Q15 (new construction as consolidation possibility — one modern replacing aging)

**Optional:**
- FPT Q4 (buildings as assets vs. anchors — conflation of efficiency and deserving-to-keep — bridges to Cluster 12)
- FPT Q6 (in-person bricks-and-mortar assumption relaxed — bridges to Cluster 12)

**Note:** Cluster 3 is facility-strategy dense. SP1 must preserve: (a) the lifecycle-economics merger capturing NPV quantitative framing, (b) the repurposing merger capturing community-value reframing, (c) at least one Futurist trend question (community school co-location trend is load-bearing for this cell's "buildings as multi-use" register). Missing the AI/Questioner repurposing register would lose the "create opportunity from closure" theme central to this cell's community-identity layer.

### Cluster 4: Debt, Tax Base Equalization & Bond Obligations

**Input questions:** 6
**Expected output questions:** 2
**Compaction:** 3.0×

**Must include:**
- Merged debt-mechanics question from Convergence Group 4 (anchored in Analyst Q4 + Accountant Q4) — debt pooling, bond refinancing, hidden liabilities
- Merged tax-equalization question from Convergence Group 5 (anchored in Analyst Q5 + Accountant Q5) — property tax impact, subsidy dynamics, phased equalization

**Should include:**
- AA Q9 (property values and tax perceptions — emotions driving polling behavior) — preserved distinct per Group 5; AA equity register

**Optional:**
- None — Cluster 4 at 2 is compact; the 2 mergers cover the full analytical territory with AA's equity framing as the "Should" addition.

**Note:** Cluster 4 is Analyst+Accountant dominant but small. SP1 must preserve both mergers (debt-consolidation mechanics + tax equalization). If AA Q9 is retained, it introduces the equity/perception register bridging to Cluster 8. Accountant Q5 (tax equalization) is especially important because the phased tax equalization concept is a politically-load-bearing concept unique to Accountant — failure to preserve this loses the "phased transition to manage low-tax-town backlash" strategic tool.

### Cluster 5: Governance, Representation & Decision Rights

**Input questions:** 9
**Expected output questions:** 3
**Compaction:** 3.0×

**Must include:**
- Analyst Q10 (optimal governance structure for representation — unified board allocation formula) — unique Analyst framework
- Appreciative Inquirer Q8 (governance that builds trust — weighted representation, town advisory councils, participatory budgeting) — unique AI strengths-innovation register
- Questioner Q12 (why assume one unified district is only structure — confederation, lead-district, functional) — preserved distinct per Group 17; paradigm

**Should include:**
- First Principles Thinker Q5 (district as unit of analysis — reframing from districts to serving students)
- Futurist Q6 (governance structures for decentralizing delivery — regional partnerships, service cooperatives)
- Questioner Q3 (temporary emergency collaboration vs. permanent — 5-year review and decision point)

**Optional:**
- Analyst Q6 (decision framework prioritizing competing objectives — weighted prioritization when fiscal/quality/identity/political conflict)

**Note:** Cluster 5 is cross-register (5 personas). SP1 must preserve: (a) Analyst's optimization framework (Q10), (b) AI's governance-that-builds-trust register (Q8) — unique AI content about participatory governance innovations, (c) Questioner's governance-alternatives paradigm (Q12 confederation/lead-district). Three distinct registers on governance alternatives.

### Cluster 6: Labor Contracts, Union Dynamics & Staffing

**Input questions:** 9
**Expected output questions:** 3
**Compaction:** 3.0×

**Must include:**
- Merged union-reconciliation-costs question from Convergence Group 7 (anchored in Analyst Q13 + DA Q6) — financial exposure, leverage dynamics, proactive negotiation framework
- Appreciative Inquirer Q6 (teacher experience attracting talent — professional community, support, autonomy) — unique AI strengths-vision
- Questioner Q7 (why assume consolidation improves teacher recruitment — larger district less individualized support) — Questioner paradigm challenge

**Should include:**
- Systems Thinker Q12 (unions after consolidation — power dynamics shifting; second-order bargaining leverage) — unique ST systems framing
- Questioner Q19 (union reconciliation failure scenarios — non-negotiable demands; walk-away points)

**Optional:**
- DA Q6 is in the Group 7 merger above; additional alternatives if slot available

**Note:** Cluster 6 is 6-persona cross-register. SP1 must preserve: (a) the union-reconciliation-costs merger with quantified financial exposure framing, (b) AI's positive talent-attraction register (contrast to DA's leverage-skeptical register), (c) Questioner's paradigm challenge to the "larger-district-attracts-teachers" assumption. This tripartite preservation ensures Cluster 6 doesn't collapse to pure cost-quantification.

### Cluster 7: Student Experience, Transportation & Access

**Input questions:** 14
**Expected output questions:** 5
**Compaction:** 2.8×

**Must include:**
- Merged transportation-optimization question from Convergence Group 6 (anchored in Analyst Q12 + DA Q4) — route efficiency, ride time thresholds, cost crossover
- Audience Advocate Q1 (Daily Journey — 1.5-2 hour commute effects on homework, family, extracurriculars, sleep) — AA signature equity
- Audience Advocate Q4 (Special Needs Transportation — disabilities, medical, sensory) — AA signature equity; no backup persona
- Audience Advocate Q5 (Older Students, Younger Peers — consolidated K-12 buildings) — AA signature equity
- Audience Advocate Q13 (Special Education Protections — IEP continuity after consolidation) — AA signature equity; unique regulatory/operational concern

**Should include:**
- Empath Q8 (being bused 45 minutes to school where everyone else knows each other — felt experience) — unique Empath emotional-interior
- Audience Advocate Q2 (Belonging in Transition — cluster-bridges to Cluster 8 but central here)
- Analyst Q11 (quality measurement before/after — class size, courses, teacher retention, extracurricular)
- Audience Advocate Q14 (extracurricular access — fees and pickup logistics)
- Systems Thinker Q13 (transportation's hidden curriculum — student development impact)

**Optional:**
- Audience Advocate Q3 (invisible losses beyond metrics — bridges to Cluster 8)
- Empath Q10 (kids' emotional baggage of "your school isn't good enough")
- Audience Advocate Q15 (language and cultural accessibility — ELL)

**Note:** Cluster 7 is AA-dominant (7 of 14 AA) but has Empath, Analyst, DA, ST contributing. SP1 must preserve: (a) the transportation-optimization merger representing operational analysis, (b) at least 3 AA signature equity dimensions (Q1 bus ride time, Q4 special needs, Q5 older/younger — all three unique registers), (c) at least 1 AA equity dimension not in top-3 must (Q13 SPED, Q14 extracurricular, or Q15 ELL), (d) one Empath emotional-interior question (Q8 or Q10). AA's minimum 4-question preservation here is the highest AA concentration in the cell. Missing Q4 special needs transportation specifically is a scored failure (it has no backup persona and the specific physical-disability/medical/sensory framing is highly distinctive).

### Cluster 8: Community Identity, Town Loss & Meaning of "Our School"

**Input questions:** 16
**Expected output questions:** 5
**Compaction:** 3.2×

**Must include:**
- Empath Q1 (when a school closes, what actually dies) — preserved distinct per Group 15; Empath signature
- Empath Q2 (what "our school" means to people who have nothing else) — preserved distinct per Group 15
- Empath Q4 (town's pride without name on school building — Friday night lights, rivalries, narrative) — preserved distinct per Group 15
- Merged town-winners-losers-dynamic question from Convergence Group 11 (anchored in DA Q10 + ST Q5) — transparent framework and support strategies
- Appreciative Inquirer Q5 (redefining "our school" without losing community — "our school" expanding to mean "our county's schools") — unique AI reimagination

**Should include:**
- Audience Advocate Q8 (Town Identity Without a School — felt-experience) — preserved distinct per Group 11
- Empath Q11 (resentment cost — emotional tax of sacrificing school for someone else's fiscal stability) — preserved distinct per Group 11
- Appreciative Inquirer Q1 (what already makes these districts special — preservation focus)
- Devil's Advocate Q11 (social fabric when rival communities combined — bridges to merged Group 12)

**Optional:**
- Audience Advocate Q3 (invisible losses beyond metrics) — bridges from Cluster 7
- Empath Q3 (talking about losing without making people feel they've lost — framing losses as gains)
- FPT Q4 (buildings as assets vs. anchors — bridges to Cluster 12)

**Note:** Cluster 8 is Empath-dominant (6 of 16 Empath) but cross-persona (5 personas). SP1 must preserve: (a) at least 3 of the 4 Empath community-loss questions (Q1 what dies, Q2 "our school," Q3 talking-about-losing, Q4 town pride — signature Empath territory with no backup persona for the emotional-interior register), (b) the winners-losers merger representing the economic-divergence dynamic, (c) AI's "our school" reimagination (Q5 — the unique reframing of "our" to county-wide while preserving local identity). Missing 3+ Empath questions here is a scored failure — this cell cannot function without Empath's community-grief register. Cluster 8 is the most emotionally-interior-dense cluster in the entire evaluation set.

### Cluster 9: Political Feasibility, Voter Approval & Coalition Building

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged coalition-building question from Convergence Group 13 (anchored in Analyst Q8 + DA Q5) — three-district approval, minimum guarantees, net-benefit structuring
- Merged identity-backlash question from Convergence Group 14 (anchored in DA Q7 + DA Q8 + Futurist Q10) — local-control, referendum-on-grievances, institutional-trust-decline
- Analyst Q6 (decision framework prioritizing competing objectives — weighted prioritization) — preserved distinct per Group 13; unique Analyst framework
- Appreciative Inquirer Q10 (coalition that already exists — natural allies in all three districts) — unique AI strengths-coalition

**Should include:**
- Empath Q7 (being heard in predetermined process — genuine participation under state-pressure conditions) — preserved distinct per Group 16
- Empath Q12 (betrayal vs. collaboration — who decides if one district's problems become everyone's loss) — preserved distinct per Group 16
- Appreciative Inquirer Q2 (peak moments of district collaboration — what worked, what relationships)
- Audience Advocate Q11 (student voice in the process — what students say adults rarely consider)
- Questioner Q10 (who are we not hearing from — students, young families, elderly)
- Questioner Q11 (reframing narrative — "premier rural education network" vs. "merger")
- Questioner Q20 (timeline constraints — multiple election cycles)

**Optional:**
- AI Q11 (experiments that build confidence — smaller-scale trials before full vote)
- FPT Q9 (voter approval as feasibility gate — signal not communication failure)
- Analyst Q7 (irreducible minimums for stakeholder acceptance — red lines)
- Questioner Q9 (identity backlash stronger than anticipated — specific no-coalition scenarios)

**Note:** Cluster 9 is the 9-persona cluster. SP1 must preserve: (a) the coalition-building merger representing 3-district approval strategy, (b) the identity-backlash merger representing cultural-resistance risks, (c) Analyst's decision-framework for competing objectives, (d) AI's existing-coalition framing. Four mergers/distinct-preserved from 4 different registers. Missing any of the 4 Must items is a scored failure.

### Cluster 10: Stakeholder Experience, Families & Equity

**Input questions:** 10
**Expected output questions:** 3
**Compaction:** 3.33×

**Must include:**
- Audience Advocate Q6 (Parent Trust & Access — administration 45 min away) — AA signature equity
- Audience Advocate Q7 (Working Families & Childcare — older siblings for aftercare; before/after care) — AA signature equity
- Audience Advocate Q10 (Volunteer & Participation Barriers — board meetings 30 miles away; PTC half-day off) — AA signature equity

**Should include:**
- Empath Q9 (parents experiencing loss of proximity — dropping in for games, teacher at grocery store) — unique Empath emotional-interior
- Audience Advocate Q12 (Rural Realities — internet, unpaved roads, inflexible jobs)
- Audience Advocate Q15 (Language and Cultural Accessibility — ELL)
- Questioner Q10 (who we're not hearing from — already in Cluster 9; soft bridge)
- Futurist Q9 (regional infrastructure investment — broadband, transit)

**Optional:**
- AA Q13 (Special Education Protections — bridges from Cluster 7)
- AA Q14 (Extracurricular Access — bridges from Cluster 7)

**Note:** Cluster 10 is AA-dominant (4 of 10). SP1 must preserve: (a) three of AA's four family-equity dimensions (Q6 parent trust, Q7 working families, Q10 volunteer barriers — each addressing a distinct family-impact concern that the others don't cover), (b) at least one Empath emotional-interior framing (Q9 proximity loss is the strongest candidate). If Cluster 10 compacts to only 2 AA questions, one of the fine-grained equity dimensions is lost.

### Cluster 11: Systems Dynamics, Long-Term Consequences & Second-Order Effects

**Input questions:** 13
**Expected output questions:** 3
**Compaction:** 4.33× (highest compaction in the cell)

**Must include:**
- Systems Thinker Q1 (self-amplifying patterns — virtuous vs. vicious loop) — ST signature systems archetype
- Systems Thinker Q4 ("Shifting the Burden" — short-term fix eroding capacity to address root cause) — preserved distinct per Group 21; ST signature archetype
- Systems Thinker Q11 (school closures rippling through local economies — second/third-order consequences) — unique ST economic-systems framing

**Should include:**
- Merged failure-modes question from Convergence Group 9 (anchored in Analyst Q15 + DA Q12 + Questioner Q16) — specific failure scenarios, exit options, accountability triggers
- Merged long-range-resilience question from Convergence Group 10 (anchored in DA Q13 + Accountant Q10) — beyond-2035 planning, financial resilience
- FPT Q3 (decline or structure — fundamental problem framing) — preserved distinct per Group 21; FPT paradigm
- FPT Q7 (efficiency vs. accessibility fundamental tension — not optimizable)
- FPT Q8 (first-year-vs-decade-three math — decade-three economics justification) — preserved distinct per Group 21; FPT time-horizon
- ST Q5 ("Success to the Successful" between winning/losing towns — already anchored in Cluster 8 merger)
- ST Q6 ("Fixes that Fail" facility-closure patterns — bridges to Cluster 3)
- ST Q7 ("Eroding Goals" silent standard creep)
- ST Q10 (state policy as hidden constraint or enabler — bridges to Cluster 12)
- ST Q3 (stabilizing mechanisms — immune responses via parent co-ops, homeschooling, charter)

**Optional:**
- ST Q2 (delay effects obscuring true impact)
- ST Q9 (restructuring relationship to enrollment-decline driver — active vs. passive)

**Note:** Cluster 11 is ST-dominant (10 of 13) — the most persona-concentrated cluster in the cell. SP1 must preserve: (a) ST signature vocabulary in ≥3 output questions (named archetypes: "Shifting the Burden," "Fixes that Fail," "Eroding Goals," "Success to the Successful," self-amplifying loops, delay effects — at minimum 3 of these specific vocabulary terms), (b) one FPT definitional question (Q3 decline-or-structure or Q8 first-year-vs-decade-three), (c) one merger (either Group 9 failure-modes or Group 10 long-range-resilience). If Cluster 11 compacts to only 2 output questions and loses the named-systems-archetype vocabulary, ST's distinctive voice is eliminated. This is the most at-risk cluster for voice-flattening.

### Cluster 12: Reimagination, First-Principles & Alternative Models

**Input questions:** 10
**Expected output questions:** 3
**Compaction:** 3.33×

**Must include:**
- Merged alternatives-to-full-consolidation question from Convergence Group 17 (anchored in DA Q14 + Questioner Q1 + ST Q8) — shared services, soft consolidation, 60-70% savings without full merger
- First Principles Thinker Q2 (reimagining the geographic assumption — learning hubs, hybrid, micro-schools from scratch) — FPT signature definitional
- First Principles Thinker Q10 (if not districts, then what — simplest structure delivering on all three needs)

**Should include:**
- First Principles Thinker Q5 (district as unit of analysis — bridges to Cluster 5)
- First Principles Thinker Q6 (in-person bricks-and-mortar assumption relaxed)
- Futurist Q2 (positioning for decline in rural teacher pipelines — remote-teaching, shared-specialist models)
- Futurist Q5 (state-level consolidation incentives — funding formula shifts)
- Questioner Q2 (why state funding formula is fixed — parallel reform advocacy)
- Questioner Q18 (phased consolidation approach — two districts first, then third joins)
- AI Q7 (learning from what already works — district-specific strengths amplification)

**Optional:**
- Futurist Q6 (governance structures for decentralizing delivery — bridges to Cluster 5)
- AI Q11 (experiments that build confidence — bridges to Cluster 9)
- ST Q10 (state policy as hidden constraint or enabler — bridges from Cluster 11)

**Note:** Cluster 12 is the FPT + Futurist + Questioner cluster (9 of 10 Synthesize questions from these 3 personas). SP1 must preserve: (a) the alternatives-to-full-consolidation merger (3-persona cross-register), (b) at least 2 FPT definitional questions (Q2 reimagining, Q10 simplest structure — both carry distinctive FPT voice), (c) at least 1 Futurist or Questioner paradigm-challenge question if slots allow. The Visionary Append stream (6 questions on reimagination) parallels this Synthesize-stream content — reimagination appears in two places: FPT/Futurist synthesized (Cluster 12) + Visionary Appended. SP1 should not penalize overlap between the two streams — they represent different registers on the shared reimagination theme.

If Cluster 12 compacts to <2 FPT questions, the definitional register is lost. This is the same cliff function as youth-mentorship/high Cluster 12.

---

## Synthesized Output Summary (Target 40)

| Cluster | Target Qs | Must | Should | Optional |
|---|---|---|---|---|
| 1 Fiscal Modeling | 4 | 3 | 3 | 2 |
| 2 Enrollment Decline | 4 | 3 | 4 | 2 |
| 3 Facilities | 3 | 3 | 4 | 2 |
| 4 Debt/Tax | 2 | 2 | 1 | 0 |
| 5 Governance | 3 | 3 | 3 | 1 |
| 6 Labor/Union | 3 | 3 | 2 | 1 |
| 7 Student Experience | 5 | 5 | 5 | 3 |
| 8 Community Identity | 5 | 5 | 4 | 3 |
| 9 Political Feasibility | 4 | 4 | 7 | 4 |
| 10 Stakeholder Equity | 3 | 3 | 4 | 2 |
| 11 Systems Dynamics | 3 | 3 | 10 | 2 |
| 12 Reimagination | 3 | 3 | 7 | 3 |

Must totals: 40 (exactly hits target — all Must items are required; 0 slack for non-Must selections).
Target total: 40 — scored against output count regardless of whether slots are filled by mergers.
Should totals: 54 (large slack above target — many Should slots compete; synthesizer chooses which Should items to include instead of all Must).
Optional totals: 25 (reserved for synthesizer-judgment additions).

**Range bands:**
- 36 (= 40 minus 4 cuts — e.g., Cluster 5 → 2, Cluster 10 → 2, Cluster 12 → 2, Cluster 6 → 2)
- 46 (= Must 40 + top 6 Should selections distributed across clusters — Clusters 9 and 11 would absorb most "extra" slots)

---

## Questions Expected to Be Dropped

These inputs should **not** survive synthesis (either merged or not topically represented):

| Question | Rationale |
|---|---|
| Analyst Q1 (true break-even) | Merged into Convergence Group 1 output |
| Accountant Q1 (break-even timeline) | Merged into Convergence Group 1 output |
| Devil's Advocate Q1 (transitional expenses) | Merged into Convergence Group 1 output |
| Questioner Q5 (hidden costs) | Merged into Convergence Group 1 output |
| Analyst Q2 (unit economics at decline levels) | Merged into Convergence Group 2 output |
| Analyst Q9 (scenario planning tripwires) | Merged into Convergence Group 2 output |
| Accountant Q2 (decline scenarios crossover) | Merged into Convergence Group 2 output |
| Devil's Advocate Q3 (decline acceleration contingency) | Merged into Convergence Group 2 output |
| Analyst Q3 (facilities lifecycle) | Merged into Convergence Group 3 output |
| Accountant Q3 (facility consolidation NPV) | Merged into Convergence Group 3 output |
| Analyst Q4 (debt/bonds across districts) | Merged into Convergence Group 4 output |
| Accountant Q4 (debt mechanics) | Merged into Convergence Group 4 output |
| Analyst Q5 (tax equalization) | Merged into Convergence Group 5 output |
| Accountant Q5 (tax equalization economics) | Merged into Convergence Group 5 output |
| Analyst Q12 (transportation optimization) | Merged into Convergence Group 6 output |
| Devil's Advocate Q4 (transportation cost increase) | Merged into Convergence Group 6 output |
| Analyst Q13 (union contract reconciliation costs) | Merged into Convergence Group 7 output |
| Devil's Advocate Q6 (unions leveraging consolidation) | Merged into Convergence Group 7 output |
| Devil's Advocate Q10 (facility closure winners/losers) | Merged into Convergence Group 11 output (in Cluster 8) |
| Systems Thinker Q5 ("Success to the Successful") | Merged into Convergence Group 11 output |
| Devil's Advocate Q11 (rival communities combined) | Merged into Convergence Group 12 output (potential bridge to Cluster 8) |
| Audience Advocate Q2 (Belonging in Transition) | Merged into Convergence Group 12 output |
| Analyst Q8 (political feasibility three approvals) | Merged into Convergence Group 13 output |
| Devil's Advocate Q5 (specific concessions) | Merged into Convergence Group 13 output |
| Devil's Advocate Q7 (loss of local control backlash) | Merged into Convergence Group 14 output |
| Devil's Advocate Q8 (referendum on other grievances) | Merged into Convergence Group 14 output |
| Futurist Q10 (messaging for institutional-trust decline) | Merged into Convergence Group 14 output |
| Appreciative Inquirer Q3 (hidden assets in decline) | Merged into Convergence Group 18 output |
| Questioner Q4 (why assume decline is inevitable) | Merged into Convergence Group 18 output |
| Futurist Q1 (remote work migration) | Merged into Convergence Group 18 output |
| Questioner Q14 (closed school becoming community asset) | Merged into Convergence Group 20 output |
| Appreciative Inquirer Q9 (facility decisions creating community value) | Merged into Convergence Group 20 output |
| Devil's Advocate Q14 (alternatives without full consolidation) | Merged into Convergence Group 17 output |
| Questioner Q1 (what if we didn't consolidate) | Merged into Convergence Group 17 output |
| Systems Thinker Q8 (non-obvious leverage points) | Merged into Convergence Group 17 output |
| Empath Q6 (surrender for communities that fought for autonomy) | Merged into Convergence Group 16 output |
| Empath Q7 (being heard in predetermined process) | Merged into Convergence Group 16 output — retained as distinct per note |
| Empath Q12 (betrayal vs. collaboration) | Merged into Convergence Group 16 output — retained as distinct per note |
| Analyst Q15 (failure modes and probabilities) | Merged into Convergence Group 9 output |
| Devil's Advocate Q12 (consolidation fails — exit options) | Merged into Convergence Group 9 output |
| Questioner Q16 (what if consolidation doesn't solve financial problem) | Merged into Convergence Group 9 output |
| Devil's Advocate Q13 (continued decline beyond 2035) | Merged into Convergence Group 10 output |
| Accountant Q10 (financial resilience modeling beyond 2035) | Merged into Convergence Group 10 output |

(43 input questions drop into mergers or bridge into Cluster 8/9/11 mergers. Remaining 130 − 43 = 87 unmerged questions. Of those, ~32 flow directly to the 40 target output as distinct-preserved questions, and ~55 Should/Optional candidates depend on which slots the synthesizer fills.)

**No "low-quality outliers" flagged.** TDA1 reports zero shortfalls for this cell. TDA1 does NOT flag this cell on the GT1 Medium-confidence watchlist. All input questions are high-quality Phase 2B output.

---

## Persona Representation Requirements

Minimum number of questions from each Synthesize-group persona that MUST be represented (verbatim or as anchor of a merger) in the output. Anchoring in a merger counts as representation for scoring purposes. This defines SQ3 (persona representation).

| Persona | Input Qs | Minimum Represented | Coverage Target | Must Clusters (at minimum) |
|---|---|---|---|---|
| Analyst | 15 | 6 | 40% | Clusters 1, 2, 4, 7, 9, 10 (must be in at least 5); plus Cluster 6 if slot |
| Appreciative Inquirer | 11 | 5 | 45% | Clusters 5, 6, 8, 9 (must be in all 4); plus 1 of 2, 3, 12 |
| Audience Advocate | 15 | 7 | 47% | Clusters 4, 7, 10 (must be in all 3); Cluster 7 requires ≥4 AA questions alone |
| Devil's Advocate | 14 | 5 | 36% | Clusters 1, 3, 7, 9, 11 (must anchor at least 3 mergers or appear distinct) |
| Questioner | 20 | 6 | 30% | Clusters 2, 3, 5, 6, 9, 12 (must anchor at least 3 mergers); paradigm reframings in Cluster 3 (Q13), 5 (Q12), 6 (Q7), 9 (Q11), 12 (Q2) |
| Systems Thinker | 13 | 5 | 38% | Cluster 11 (must be ≥3); plus Clusters 6, 8 (1 each); ST systems-archetype vocabulary in ≥4 output questions |
| Empath | 12 | 5 | 42% | Clusters 7, 8, 9, 10 (must be in all 4); Cluster 8 requires ≥3 Empath questions alone |
| First Principles Thinker | 10 | 4 | 40% | Clusters 11, 12 (must be in both — 12 requires ≥2); bridges to Cluster 5 (Q5) |
| Futurist | 10 | 4 | 40% | Clusters 3, 12 (must be in both — 12 requires ≥1); Clusters 2 or 9 for 3rd |
| Accountant | 10 | 5 | 50% | Clusters 1, 2, 3, 4 (must be in all 4); plus Cluster 1 requires ≥2 Accountant questions |

**Total minimum representation:** 52 persona-question-slots across 40 output questions (because mergers represent multiple personas simultaneously — e.g., the Group 1 merger represents 4 personas in one slot).

**Critical attention personas:**

1. **Appreciative Inquirer** — exceptionally high uniqueness (10 of 11 unique = 91%). AI's strengths-framings ("what already makes these districts special," "peak moments of district collaboration," "hidden assets in declining enrollment," "the school experience we want children to remember," "redefining 'our school'," "teacher experience that attracts talent," "learning from what works," "governance that builds trust," "facility decisions that create community value," "the coalition that already exists," "experiments that build confidence") are easily domesticated into generic "best practices" or "visioning" language. 91% unique is the highest rate observed in any cell. SP1 should check that AI's appreciative register survives in at least 5 output questions — not just topically represented but with AI's strengths/retrospective/visioning voice intact.

2. **Empath** — highest community-identity concentration in any cell. 6 Empath questions in Cluster 8 (Q1 what dies, Q2 "our school," Q3 talking about losing, Q4 town pride, Q5 won/lost math, Q6 surrender for autonomy-fighters, Q11 resentment cost). Plus Cluster 7 (Q8, Q10), Cluster 9 (Q7, Q12), Cluster 10 (Q9). Total: 11 of 12 Empath questions in topic-critical clusters (only Q12 is borderline). Cluster 8 specifically will compact 16 → 5 (3.2×). If only 1-2 Empath questions survive in Cluster 8, the community-grief register is eliminated. **Cluster 8 minimum: 3 Empath questions with emotional-interior register intact.** This is the highest Empath-preservation requirement in the evaluation set.

3. **Systems Thinker** — carries named systems-archetype vocabulary that no Tier 1 backup persona produces. 10 of 13 ST questions in Cluster 11 (Shifting the Burden, Fixes that Fail, Eroding Goals, Success to the Successful, self-amplifying patterns, delay effects, stabilizing mechanisms, leverage points, restructuring relationship to driver). Cluster 11 compacts 13 → 3 (4.33×, highest in cell). If Cluster 11 compacts to 3 without preserving named-archetype vocabulary, ST's voice is eliminated. **Cluster 11 minimum: 3 ST questions with named-archetype vocabulary (e.g., specifically the terms "Shifting the Burden" or "Success to the Successful" appearing in output).**

4. **First Principles Thinker** — 6 of 10 FPT questions in Cluster 12 (reimagining geographic assumption, core educational needs vs. structure, district as unit, in-person bricks-and-mortar, efficiency vs. accessibility, simplest structure) + Cluster 11 (FPT Q3, Q8). FPT's definitional voice distinct from Analyst/Questioner. **Cluster 12 minimum: 2 FPT questions. Cluster 11 minimum: 1 FPT question.**

5. **Futurist** — 3-cluster distribution (2 in Cluster 2, 2 in Cluster 3, 3 in Cluster 12, Q10 in Cluster 9 merger). **Minimum: 1 Futurist question in Cluster 12 + 1 Futurist in Cluster 3 + either Q1 (in Group 18 merger in Cluster 2) or Q3 (aging curve in Cluster 2) or Q5/Q6 in Cluster 12.**

6. **Audience Advocate** — 15 questions, 7 minimum (47% — highest required coverage in the cell after Accountant). AA concentration in Cluster 7 (7 questions) and Cluster 10 (4 questions) with bridges to Clusters 4, 8, 9. AA's fine-grained equity dimensions (Q1 daily journey, Q2 belonging, Q3 invisible losses, Q4 special needs, Q5 older/younger, Q6 parent trust, Q7 working families, Q8 town identity, Q9 property values, Q10 volunteer barriers, Q11 student voice, Q12 rural realities, Q13 SPED, Q14 extracurricular, Q15 ELL) each cover a distinct population or concern. **Cluster 7 minimum: 4 AA equity dimensions. Cluster 10 minimum: 3 AA family-equity dimensions.**

7. **Accountant (Tier 3)** — 10 questions, 5 minimum (50% — highest required coverage in cell, tied with AA). Accountant's distinctive quantified financial content (specific dollar ranges $1.2M, $3-5M, $4.2M, 2-year fund balance, 15-20% payback, 5-10 year horizons, 10/25/50 pair scale, per-pupil $800K-$1M, FCRA/FERPA absent here but alternative-funding taxonomy unique) cannot be domesticated to Analyst's framework register. **Cluster 1 minimum: 2 Accountant questions (Q1 break-even anchor + Q9 quality-preservation economic model OR Q7 targeted investment). Cluster 2 minimum: 2 (Q2 decline crossover in merger + Q6 alternative funding models + Q10 beyond-2035 resilience). Cluster 3 minimum: 1 (Q3 NPV merger). Cluster 4 minimum: 1 (Q4 or Q5 in mergers).**

**Persona-voice preservation flag:** When Convergence Group 1 (Break-Even), Group 2 (Enrollment Scenarios), Group 11 (Winners/Losers), Group 13 (Coalition-Building) are merged, the merged question should preserve at least 2 distinct persona registers. Group 1 especially (4 personas merged) must preserve quantified financial specificity (Accountant register) + skeptical completeness (DA register) + hidden-cost challenge (Questioner register) — not just "true break-even analysis" generic.

---

## Dimension Balance Target

Based on input distribution across Synthesize-group only (130 questions):

**Input distribution (by B1 cluster primary-dimension):**
- Analytical (Clusters 1, 2, 3, 4): 42/130 = 32.3%
- Human-centered (Clusters 7, 8, 10): 40/130 = 30.8%
- Strategic (Clusters 5, 9, 11): 35/130 = 26.9%
- Creative (Cluster 12): 10/130 = 7.7%
- Tactical (Cluster 6): 9/130 = 6.9%

**Output target distribution (85 total = 40 synthesized + 45 appended):**

| Dimension | Synthesized (40) | Appended (45) | Total Output (85) | Target % |
|---|---|---|---|---|
| Analytical | 13 (Clusters 1 × 4, 2 × 4, 3 × 3, 4 × 2) | 0 (Append-group rarely analytical) | 13 | 15.3% |
| Human-centered | 13 (Clusters 7 × 5, 8 × 5, 10 × 3) | 13 (Storyteller 7 narrative vignettes + Connector 3 reciprocal-trust + Visionary 3 community-expansion) | 26 | 30.6% |
| Strategic | 10 (Clusters 5 × 3, 9 × 4, 11 × 3) | 10 (Politician 10 — coalition/gatekeeper/governance all Strategic) | 20 | 23.5% |
| Creative | 3 (Cluster 12 × 3) | 15 (Visionary 3 + Connector 5 + Constraint Flipper 7) | 18 | 21.2% |
| Tactical | 3 (Cluster 6 × 3) | 0 | 3 | 3.5% |
| Provocative (carve-out) | 0 | 7 (Provocateur) | 7 | 8.2% |

**Target balance (5-dimension + Provocative carve-out):**
- Analytical: 15.3% | Human-centered: 30.6% | Strategic: 23.5% | Creative: 21.2% | Tactical: 3.5% | Provocative: 8.2%

**If re-normalized to D2's five dimensions (Provocative folded 50% Creative + 50% Strategic):**
- Analytical: 15.3% | Human-centered: 30.6% | Creative: 25.3% | Strategic: 27.6% | Tactical: 3.5% ≈ 102% (slight overlap in carve-out)

**Comparison with youth-mentorship/high:**
- youth-mentorship/high: Human-centered 30.2%, Creative 27.4%, Strategic 20.4%, Analytical 15.1%, Tactical 3.5%
- school-consolidation/high: Human-centered 30.6%, Creative 25.3%, Strategic 27.6%, Analytical 15.3%, Tactical 3.5%

Key differences:
- **Human-centered** is nearly identical (30.6% vs. 30.2%) — both cells are heavily relational/community-oriented topics.
- **Strategic** is higher here (27.6% vs. 20.4%) — school-consolidation's political/institutional governance density (Cluster 9 + Cluster 11 systems + Politician Append) is heavier than youth-mentorship's ecosystem-coordination content. This matches property-management/high (28.1% Strategic).
- **Creative** is similar (25.3% vs. 27.4%) — youth-mentorship has slightly heavier Visionary-dominant reimagination; school-consolidation has a slightly more distributed Creative load (FPT+Futurist+Questioner in Cluster 12 + Connector/CF Append).
- **Analytical** is essentially identical (15.3% vs. 15.1%).
- **Tactical** is identical (3.5%).

**Comparison with property-management/high:**
- property-management/high: Strategic 28.1%, Analytical 16.3%, Creative 23.1%, Tactical 16.3%, Human-centered 23.8%
- school-consolidation/high: Human-centered 30.6%, Strategic 27.6%, Creative 25.3%, Analytical 15.3%, Tactical 3.5%

Key differences:
- **Human-centered** much higher here (30.6% vs. 23.8%) — school-consolidation's community-identity content is denser than property-management's tenant-experience content.
- **Tactical** much lower here (3.5% vs. 16.3%) — school-consolidation has one narrow Tactical cluster (labor/union 9 questions); property-management had two Tactical clusters (maintenance, leasing 26 input).
- **Strategic** similar (27.6% vs. 28.1%) — both cells have heavy institutional/governance/political content.
- **Analytical** similar (15.3% vs. 16.3%).
- **Creative** similar (25.3% vs. 23.1%).

**Effort-level adjustment note:** The Append stream at high effort (45 questions) is the largest in the evaluation set. Politician's 10 Append questions add Strategic directly; Connector's 8 add Creative + Human-centered; Constraint Flipper's 7 add Creative; Visionary's 6 add Creative + Human-centered; Storyteller's 7 add Human-centered; Provocateur's 7 are orphan. The Append stream does substantial dimension work — particularly for Strategic (Politician) and Creative (Connector + CF + Visionary).

**Scoring tolerance:** Each dimension ±3 percentage points counts as on-target. ±5 points counts as acceptable. Beyond that, flag for SP1 investigation.

**Specific dimension watch:**
- If **Human-centered < 25%**, Clusters 7, 8, or 10 are being under-represented — check whether Empath/AA voices were lost in synthesis. Cluster 8 is the most likely culprit (16 input compacting to 5).
- If **Strategic > 32%** (without GT1 composition change), Cluster 9 or 11 has absorbed content from other clusters, or the Politician Append is double-counted.
- If **Creative < 18%**, the Append stream is under-filled or Visionary/Connector/Constraint Flipper contributions have been stripped.
- If **Tactical > 6%**, Cluster 6 has expanded beyond its target.
- If **Analytical > 20%**, clusters 1, 2, 3, or 4 have expanded; check for over-compaction of Human-centered content.

**GT1 watchlist dimension impact:** This cell is NOT on the watchlist. The Accountant + Politician composition is stable. No GT1-revision scenario would shift dimension balance.

**Topic-character signal for cross-topic analysis:** The dual Analytical(32%)/Human-centered(31%)/Strategic(27%) input balance is distinctive — school-consolidation is the only cell where three dimensions carry substantial load without any single dominating. SP1 scoring must accommodate this tri-balance: synthesis prompts that default to Analytical-heavy output will lose Human-centered density; prompts that default to Human-centered-heavy will lose Strategic; prompts that default to Strategic-heavy (common in business-planning topics) will lose both Human-centered and Analytical. This cell is a stress test for cross-register preservation.

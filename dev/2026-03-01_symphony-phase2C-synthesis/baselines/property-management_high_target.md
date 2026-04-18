# property-management — high — Synthesis Target

**Input count (N):** 182 total (146 Synthesize + 36 Append)
**Synthesize-group input count:** 146 (the subset the synthesis step operates on)
**Append-group input count:** 36 (all 36 flow through B4 — at high effort Tier 1 Perspective appends all 5-8 per persona; Constraint Flipper Tier 2 appends all 8 on this constraint-rich topic)

**Expected output count (M):** 80 total (range 71–89, target 80)
- Synthesized questions: 44 (range 39–49, target 44)
- Appended questions: 36 (exact — all 36 at high effort per D1 "No selection needed — append everything" for Tier 1 Perspective, with Constraint Flipper all 8)

**Compaction ratio N/M (Synthesize stream):** 146/44 = 3.32× (range 3.0–3.7, target 3.3)
**Compaction ratio N/M (total):** 182/80 = 2.28× (range 2.0–2.6, target 2.28)
**Cluster count C in output:** 12 (range 11–13, target 12 — matches B1)

**Scoring convention:** Target = point estimate for headline scoring. Range = pass/fail band. Outside-range results scored with severity proportional to distance from nearest band edge.

**Reference:** `persona-selection-guide_Phase2B.md` projects high-effort total output at ~55–90 questions. Our target of 80 sits near the top of that range because this cell has the largest Synthesize input observed in the high-effort set (146 — well above the guide's typical 73–115 range for high effort — driven by 11 Synthesize personas with 2 Tier 3 selections) plus 60.9% convergence density (supports aggressive but not extreme compaction).

**Comparison with space-party/high (75 target):** The 80 target is 7% larger than space-party's 75. This reflects a larger Synthesize input (146 vs. 124) and one additional cluster (12 vs. 11). Compaction ratios are similar (3.3× at both high-effort cells) because convergence density is similar (60.9% vs. 58.9%).

**GT1 watchlist:** ON WATCHLIST. Targets below assume Lawyer + Accountant are the canonical Tier 3. If GT1 were revised to Politician, expected output would shift toward ~85 total (10 additional Politician Append questions in full), compaction would tighten slightly, and Cluster 10 (Political Engagement) plus a new Governance-ish cluster would likely emerge with heavier weighting. SP1 should re-check GT1 before blaming the synthesis prompt if scoring is anomalous on this cell.

---

## Target Output Structure

The 44 synthesized questions distribute across the 12 B1 clusters. Cluster-level compaction varies: high-convergence clusters compact more aggressively; single-persona or highly-distinct-voice clusters compact minimally.

### Cluster 1: Regulatory Landscape, Permit Scarcity & Compliance Strategy

**Input questions:** 21
**Expected output questions:** 6
**Compaction:** 3.5×

**Must include:**
- Merged permit-availability-and-acquisition question from Convergence Group 1 (anchored in Devil's Advocate Q1 + Lawyer Q4 + Analyst Q2)
- Merged HOA-navigation question from Convergence Group 1 (anchored in Analyst Q3 + Devil's Advocate Q4 + Lawyer Q10 + Questioner Q5)
- Merged regulatory-scenario-planning question from Convergence Group 2 (anchored in Analyst Q1 + Devil's Advocate Q3 + Questioner Q1 + Futurist Q1 + Accountant Q6)
- Merged city-council-election-contingency question from Convergence Group 3 partial (anchored in Devil's Advocate Q2 + Questioner Q2)

**Should include:**
- Systems Thinker Q4 (regulatory feedback loop delays — investments obsolete in 12-18 months) — unique systems framing
- Accountant Q3 (economic model of regulatory compliance — fractured landscape cost per zone) — unique quantitative framing

**Optional:**
- Questioner Q4 (portability pivot — management expertise to long-term rentals if STRs constrained) — could live here or Cluster 12
- Questioner Q20 (regulatory risk in owner contracts) — specific contract provision question

**Note:** Cluster 1 is the largest cluster (21 questions). Its 6-question target is already aggressive compaction (3.5×). Dropping below 5 would lose load-bearing regulatory content; exceeding 7 would crowd other clusters.

### Cluster 2: Unit Economics, Fee Structure & Break-Even

**Input questions:** 15
**Expected output questions:** 5
**Compaction:** 3.0×

**Must include:**
- Merged fee-structure-alignment question from Convergence Group 4 (anchored in Analyst Q7 + Accountant Q1 + Questioner Q6 + FPT Q2)
- Merged per-property break-even question from Convergence Group 5 (anchored in Analyst Q5 + FPT Q3 + Accountant Q8)
- Analyst Q12 (data-driven pricing optimization — pricing tool ROI and revenue uplift)

**Should include:**
- Appreciative Inquirer Q4 (Resilient Business Adaptation — regulation-as-competitive-advantage examples) — strengths-register unique; could bridge to Cluster 1 or 9
- Accountant Q5 (Tax Compliance Economics — multi-jurisdictional operational cost) — unique Tier 3 framing

**Optional:**
- Accountant Q4 (Contractual Risk Allocation and Insurance Cost Pass-Throughs) — could live here or Cluster 4

### Cluster 3: Cash Flow, Seasonality & Capital Adequacy

**Input questions:** 11
**Expected output questions:** 4
**Compaction:** 2.75×

**Must include:**
- Merged seasonal-cash-flow question from Convergence Group 6 (anchored in Analyst Q6 + Accountant Q2 + Devil's Advocate Q6 + Questioner Q18)
- Merged capital-adequacy-stress-test question from Convergence Group 7 (anchored in Devil's Advocate Q5 + Questioner Q16)
- Accountant Q12 (Capital Allocation Under Regulatory Uncertainty — decision framework across competing priorities) — preserved distinct per Group 7 note

**Should include:**
- Empath Q11 (founders' emotional relationship to risk — fear/confidence in "rational" decisions) — unique emotional-interior register

**Optional:**
- Systems Thinker Q9 (balancing loops constraining growth — cleaner ceiling, neighborhood backlash, cash-flow volatility) — could live here or Cluster 11

### Cluster 4: Liability, Insurance & Contractor Risk Allocation

**Input questions:** 11
**Expected output questions:** 4
**Compaction:** 2.75×

**Must include:**
- Merged guest-injury-liability-allocation question from Convergence Group 8 (anchored in Analyst Q8 + Lawyer Q1 + Accountant Q4)
- Lawyer Q3 (contractor negligence and vicarious liability — contractual/insurance verification) — preserved distinct per Group 9 note
- Lawyer Q8 (insurance requirements and verification protocols — coastal windstorm/flood coverage specifics) — unique Lawyer territory

**Should include:**
- Devil's Advocate Q12 (contractor quality control risk — quality variance without in-house at $80K) — preserved distinct per Group 9; bridges to Cluster 5
- Lawyer Q2 (entity structure for asset protection — LLC, series LLC, corporation) — unique legal-structure question
- Lawyer Q6 (noise monitoring compliance and privacy law interaction — wiretapping law overlay) — unique compound regulatory question

**Optional:**
- Devil's Advocate Q8 (tax compliance complexity trap) — could live here or bridge to Cluster 3
- Devil's Advocate Q14 (owner-guest conflict allocation) — could live here or Cluster 6
- Lawyer Q9 (revenue recognition under changing regulations — fee-calculation definition) — unique contract-mechanics question

**Note:** Cluster 4 is Lawyer-dominated (4 of 11). SP1 must preserve Lawyer's distinctive regulatory/legal specificity in at least 3 output questions. Collapsing Cluster 4 below 3 questions destroys the persona's signature territory. Lawyer's unique-regulatory-mechanism vocabulary (indemnification, wiretapping law, liquidated damages, series LLC, additional insured endorsements) cannot be domesticated to generic "risk management" framing.

### Cluster 5: Operational Model & 30-Minute Response Requirement

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged staffing-model question from Convergence Group 10 partial (anchored in Analyst Q9 + Accountant Q9)
- Analyst Q11 (contractor vendor network analysis — topology) — preserved distinct per Group 11 note
- Futurist Q12 (local workforce economics — labor shortage retention strategies) — preserved distinct per Group 11; unique trend framing

**Should include:**
- Empath Q4 (vulnerability of "the local contact" — emotional labor) — unique emotional register
- Audience Advocate Q3 (when things go wrong at 2 AM — guest experience of emergencies) — unique equity-experience framing

**Optional:**
- Futurist Q8 (smart home automation trajectory — noise monitoring, keyless entry, IoT alerts) — could live here or Cluster 12

### Cluster 6: Owner Acquisition, Trust & Relationship Design

**Input questions:** 18
**Expected output questions:** 6
**Compaction:** 3.0×

**Must include:**
- Merged owner-acquisition-CAC-and-payback question from Convergence Group 13 (anchored in Analyst Q14 + Accountant Q7)
- Preserve Convergence Group 14 as 3 of 4 distinct questions (minimum): Appreciative Inquirer Q3 (Owner Partnership Excellence) + Empath Q1 (anxiety of strangers in home) + Questioner Q15 (pilot programs / trial periods / risk-sharing) — the fourth (Audience Advocate Q7 vulnerable investor) can merge with Q15 at SP1's discretion
- Preserve Convergence Group 15 as 2-3 distinct questions: Lawyer Q7 (termination + liquidated damages) + Audience Advocate Q9 (dignified offboarding) — Devil's Advocate Q7 (cascade termination risk) optionally distinct

**Should include:**
- Appreciative Inquirer Q6 (Unshakeable Owner Experience — indispensable-partner framing) — AI strengths-register
- Audience Advocate Q8 (when the house is damaged — emotional-financial-legal intersection of claims) — equity-emotional framing unique

**Optional:**
- Appreciative Inquirer Q9 (Immediate Trust Signals — first month of operations) — bridge with Cluster 7
- Devil's Advocate Q14 (owner-guest conflict allocation) — if not in Cluster 4

**Note:** Cluster 6 is the second-largest cluster (18 questions) and the highest-cross-persona cluster (9 personas contributing). SP1 must preserve at least 3 distinct persona registers in this cluster: AI's strengths-framing, Empath's emotional-interior, AA's equity-framing. Collapsing to a generic "how do we build owner trust" question fails voice-preservation scoring even if topically correct.

### Cluster 7: Community Relations, "Good Neighbor" & Housing Impact

**Input questions:** 18
**Expected output questions:** 5
**Compaction:** 3.6×

**Must include:**
- Merged "good neighbor" operationalization question from Convergence Group 16 (anchored in Analyst Q13 + Questioner Q11)
- Merged externality-internalization question from Convergence Group 17 (anchored in Audience Advocate Q5 + FPT Q6 + Questioner Q12)
- Audience Advocate Q6 (dignity of displacement — renter's sense of belonging) — preserved distinct per Group 17 note
- Devil's Advocate Q13 ("good neighbor" operational reality gap — inherent tension) — preserved distinct per Group 16; skeptical challenge to the positioning
- Systems Thinker Q5 ("good neighbor" second-order effects — race-to-the-bottom dynamics) — preserved distinct per Group 16; systems archetype

**Should include:**
- Audience Advocate Q11 (unseen regulatory casualties — human stories in policy debates) — unique AA equity narrative
- Empath Q6 (resentment of the golden ticket — visceral emotional reality of disparity) — unique Empath voice
- Appreciative Inquirer Q2 (thriving community integration — existing positive examples) — AI strengths-register
- Accountant Q10 (Financial Value of "Good Neighbor" Positioning — ROI calculation) — Tier 3 quantitative framing

**Optional:**
- Futurist Q10 (resident sentiment as leading indicator — community-backlash organizing timeline) — trend framing
- Systems Thinker Q10 ("good neighbor" reputation double-edged sword — downturn pressure erosion)
- Systems Thinker Q14 (tenant-advocate / STR-proponent feedback loops)

**Note:** Cluster 7 is tied for second-largest (18 questions) and most dimensionally cross-persona. Its 5-question target requires aggressive compaction (3.6×). SP1 must preserve (a) at least one externality-internalization question that doesn't collapse to "good neighbor marketing," (b) Audience Advocate's equity-dignity framing on housing impact, (c) at least one Empath emotional-interior question, and (d) at least one Systems Thinker feedback-loop question. The cluster's four distinct persona registers are its core value — flattening them into generic "community relations" framing would be the failure mode.

### Cluster 8: Quality, Guest Experience & Reputation Systems

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged quality-control-system question from Convergence Group 12 partial (anchored in Analyst Q10 + Systems Thinker Q6)
- Appreciative Inquirer Q7 (Systematizing Hospitality — reliable "magical" experiences) — preserved distinct per Group 12 note
- Empath Q3 (when something breaks at 2 AM — emotional texture) — preserved distinct per Group 18 note
- Audience Advocate Q2 (anxiety arc of a stranger's home — emotional touchpoints through guest journey) — unique equity-experience framing

**Should include:**
- Appreciative Inquirer Q1 (Exceptional Guest Stories — peak-wonder retrospective) — AI signature; could bridge to Cluster 12
- Audience Advocate Q1 (hidden barriers to entry — disability, digital literacy, non-English) — unique equity dimension
- Audience Advocate Q13 (invisible labor of belonging — cultural knowledge for guests) — unique AA framing

**Optional:**
- Systems Thinker Q7 ("success to the successful" — disproportionate resources) — bridges to Cluster 8

**Note:** Cluster 8 has 4-question target against 13-question input. SP1 must preserve at least one AI strengths-framing (AI Q7 or Q1), at least one Empath emotional question, and at least one AA equity question. A Cluster 8 that is 100% Analyst+Systems operational would eliminate three persona voices.

### Cluster 9: Competitive Strategy, Differentiation & Moat Design

**Input questions:** 10
**Expected output questions:** 3
**Compaction:** 3.3×

**Must include:**
- Merged specialization question from Convergence Group 20 (anchored in Analyst Q15 + Questioner Q8)
- Questioner Q7 (well-funded national player entering market — moats around client relationships)
- Futurist Q6 (platform dependency risk — Airbnb/VRBO direct-booking insulation)

**Should include:**
- Futurist Q2 (professionalization as insulation — regulatory moat for compliant managers) — preserved distinct per Group 21
- Futurist Q7 (verified trust economy — certifications, insurance standards, transparency) — unique trend framing
- Questioner Q13 (30-min response as competitive advantage) — bridge from Cluster 5 orphan

**Optional:**
- Futurist Q5 (consolidation wave positioning — years 3-5 roll-up)

### Cluster 10: Political Engagement, Advocacy & Regulatory Shaping

**Input questions:** 7
**Expected output questions:** 3
**Compaction:** 2.3×

**Must include:**
- Analyst Q4 (political engagement ROI calculation — contribution level, coalition, public positioning)
- Accountant Q11 (economic analysis of regulatory advocacy investment — probability swing math)
- First Principles Thinker Q7 (political engagement as core competency — company designed as political actor)

**Should include:**
- Systems Thinker Q1 (city council election "worse before better" dynamic — engagement builds influence vs. invites targeting) — preserved distinct per Group 3
- Devil's Advocate Q15 (political exposure management — dual vulnerability; low-profile vs. visible)
- Questioner Q3 (proactively shape regulation — coalitions with STR operators, tourism, moderate neighborhoods)
- Audience Advocate Q10 (participatory compliance or checkbox — shape regulations alongside stakeholders)

**Optional:**
- Systems Thinker Q13 ("shifting the burden" — company handles all complexity, owners' civic engagement erodes)

**Note:** Cluster 10 is small (7 input) but cross-persona (6 personas). Its 3-question target preserves at least the three "must include" framings: Analyst's ROI, Accountant's financial analysis, FPT's core-competency definitional question. If Cluster 10 compacts to <3, one of these registers is eliminated. This is a modest cliff-function — not as severe as Futurist in space-party, but losing FPT Q7's definitional framing (or Accountant Q11's financial framing) would collapse a distinctive voice.

### Cluster 11: Growth Trajectory, Scaling Constraints & Founder Risk

**Input questions:** 10
**Expected output questions:** 3
**Compaction:** 3.3×

**Must include:**
- Devil's Advocate Q9 (5-10 property scaling assumption — what actually limits growth; constraint bottleneck)
- Systems Thinker Q8 (30-50 property coordination overhead — informal patterns breaking at scale)
- Questioner Q19 (one partner leaves — operational, client, equity structure)

**Should include:**
- Devil's Advocate Q10 (founding skill gap coverage — tech, marketing, tax, legal)
- Questioner Q9 (30-50 target too aggressive/conservative — year-one leading indicators; pivot)
- Questioner Q17 (5-10 starting point — fewer properties with deeper investment)
- Questioner Q10 (coastal city vulnerability — climate, hurricane, insurance)

**Optional:**
- FPT Q3 (minimum viable scale — unit economics math requirement) — could live here or Cluster 2

### Cluster 12: Strategic Futures, Trend-Contextualization & Business-Model Reimagination

**Input questions:** 10
**Expected output questions:** 3
**Compaction:** 3.3×

**Must include:**
- First Principles Thinker Q4 (ownership assumption — hybrid owned/leased subset model) — FPT signature
- First Principles Thinker Q8 (permit scarcity as fundamental constraint — permits as asset class) — FPT signature
- Futurist Q4 (housing crisis arbitrage — STR-to-medium-term-rental pivot positioning) — Futurist signature

**Should include:**
- First Principles Thinker Q5 (regulatory dependency — deconstruct STR-permitting vs. core temporary-accommodation) — FPT definitional
- FPT Q10 (information asymmetry opportunity — aggregated data as product)
- Futurist Q9 (experience economy shift — experiences/local immersion)
- Futurist Q11 (climate adaptation pricing — sea-level rise resilience)

**Optional:**
- FPT Q1 (what problem are we solving — specialize in owner-relations vs. guest-excellence)
- Futurist Q3 (data-driven advocacy positioning — aggregated operational data shaping policy)

**Note:** Cluster 12 is the FPT+Futurist cluster. SP1 must preserve at least 1 FPT definitional question and at least 1 Futurist trend-extrapolation question. Unlike the other clusters (which have Tier 1 backup personas), Cluster 12 is carried almost entirely by these two Tier 2 personas. If Cluster 12 compacts to <2 with only Analyst-style "strategic alternatives" questions, both personas are effectively eliminated — this is a cliff function for FPT and Futurist's reimagination register.

---

## Synthesized Output Summary (Target 44)

| Cluster | Target Qs | Must | Should | Optional |
|---|---|---|---|---|
| 1 Regulatory | 6 | 4 | 2 | 2 |
| 2 Unit Economics | 5 | 3 | 2 | 1 |
| 3 Cash Flow | 4 | 3 | 1 | 1 |
| 4 Liability | 4 | 3 | 3 | 3 |
| 5 Operational | 4 | 3 | 2 | 1 |
| 6 Owner Relationship | 6 | 3 (anchor positions for merged + preserved + distinct) | 2 | 2 |
| 7 Community | 5 | 5 | 4 | 3 |
| 8 Quality | 4 | 4 | 3 | 1 |
| 9 Differentiation | 3 | 3 | 3 | 1 |
| 10 Political Engagement | 3 | 3 | 4 | 1 |
| 11 Growth/Founder | 3 | 3 | 4 | 1 |
| 12 Futures/Reimagination | 3 | 3 | 4 | 2 |

Must totals: 40 (slightly below 44 target — reflects that several Must items are single-question "preserved distinct" slots + mergers; the remaining 4 slots to hit 44 come from Should selections per cluster).
Target total: 44 — scored against output count regardless of whether slots are filled by mergers.
Should totals: 34 (slack/band above target — synthesizer chooses which Should items fill remaining slots).
Optional totals: 19 (reserved for synthesizer-judgment additions).

**Range bands:**
- 39 (= 44 minus 5 cuts from lowest-priority Must slots in Clusters 5, 10, 11, 12, 2)
- 49 (= Must + top 9 Should selections distributed across clusters)

---

## Questions Expected to Be Dropped

These inputs should **not** survive synthesis (either merged or not topically represented):

| Question | Rationale |
|---|---|
| Analyst Q1 (regulatory scenario modeling) | Merged into Convergence Group 2 output |
| Devil's Advocate Q3 (state preemption double-edged sword) | Merged into Convergence Group 2 output |
| Questioner Q1 (state preemption passes) | Merged into Convergence Group 2 output |
| Futurist Q1 (state preemption trajectory) | Merged into Convergence Group 2 output |
| Accountant Q6 (economic impact of regulatory change on portfolio viability) | Merged into Convergence Group 2 output |
| Analyst Q2 (permit acquisition costs and timing) | Merged into Convergence Group 1 permit merger |
| Devil's Advocate Q1 (permit scarcity trap) | Merged into Convergence Group 1 permit merger |
| Lawyer Q4 (permit allocation across zoning restrictions) | Merged into Convergence Group 1 permit merger |
| Analyst Q3 (HOA restriction navigation strategy) | Merged into Convergence Group 1 HOA merger |
| Devil's Advocate Q4 (HOA restriction dead ends) | Merged into Convergence Group 1 HOA merger |
| Lawyer Q10 (HOA restriction and preemption strategy) | Merged into Convergence Group 1 HOA merger |
| Questioner Q5 (HOAs as primary battlefield) | Merged into Convergence Group 1 HOA merger |
| Devil's Advocate Q2 (election wildcard factor) | Merged into Convergence Group 3 partial merger |
| Questioner Q2 (binary election outcome assumption) | Merged into Convergence Group 3 partial merger |
| Analyst Q7 (management fee structure optimization) | Merged into Convergence Group 4 output |
| Accountant Q1 (Management Fee Structure and Break-Even Economics) | Merged into Convergence Group 4 output |
| Questioner Q6 (why percentage-of-revenue) | Merged into Convergence Group 4 output |
| First Principles Thinker Q2 (revenue model assumption) | Merged into Convergence Group 4 output |
| Analyst Q5 (per-property break-even with regulatory costs) | Merged into Convergence Group 5 output |
| First Principles Thinker Q3 (minimum viable scale) | Merged into Convergence Group 5 output |
| Accountant Q8 (Portfolio Mix Economics and Risk Distribution) | Merged into Convergence Group 5 output |
| Analyst Q6 (seasonal cash flow modeling) | Merged into Convergence Group 6 output |
| Accountant Q2 (Seasonal Cash Flow Management) | Merged into Convergence Group 6 output |
| Devil's Advocate Q6 (cash flow timing mismatch) | Merged into Convergence Group 6 output |
| Questioner Q18 (break-even for coastal seasonality) | Merged into Convergence Group 6 output |
| Devil's Advocate Q5 (80K capital adequacy) | Merged into Convergence Group 7 output |
| Questioner Q16 (single catastrophic incident in year one) | Merged into Convergence Group 7 output |
| Analyst Q8 (insurance and liability cost allocation) | Merged into Convergence Group 8 output |
| Lawyer Q1 (allocating guest injury liability) | Merged into Convergence Group 8 output |
| Accountant Q4 (Contractual Risk Allocation and Insurance Cost Pass-Throughs) | Merged into Convergence Group 8 output |
| Analyst Q9 (30-minute response time coverage model) | Merged into Convergence Group 10 partial merger |
| Accountant Q9 (Economic Trade-offs in Vendor and Staffing Models) | Merged into Convergence Group 10 partial merger |
| Analyst Q14 (property owner acquisition funnel analysis) | Merged into Convergence Group 13 output |
| Accountant Q7 (Owner Onboarding Cost Structure and Payback Period) | Merged into Convergence Group 13 output |
| Audience Advocate Q7 (vulnerable investor mindset) | Merged into Convergence Group 14 (or preserved distinct per SP1 judgment) |
| Analyst Q13 ("good neighbor" operational standards measurement) | Merged into Convergence Group 16 output |
| Questioner Q11 (operationalize being a good neighbor) | Merged into Convergence Group 16 output |
| Audience Advocate Q5 (beyond good neighbor branding — stability and affordability) | Merged into Convergence Group 17 output |
| First Principles Thinker Q6 (good neighbor proposition — internalize externalities) | Merged into Convergence Group 17 output |
| Questioner Q12 (owner profitability vs. community interests opposed) | Merged into Convergence Group 17 output |
| Analyst Q10 (quality control system design) | Merged into Convergence Group 12 partial merger |
| Systems Thinker Q6 (per-property quality decline with growth) | Merged into Convergence Group 12 partial merger |
| Analyst Q15 (competitive differentiation through compliance specialization) | Merged into Convergence Group 20 output |
| Questioner Q8 (differentiate beyond full-service management) | Merged into Convergence Group 20 output |

(44 input questions drop into mergers. Remaining 146 − 44 merged = 102 unmerged questions. Of those, ~40 flow directly to the 44 target output as distinct-preserved questions, and ~62 Should/Optional candidates depend on which slots the synthesizer fills.)

**No "low-quality outliers" flagged.** TDA1 reports zero shortfalls for this cell. However, TDA1 flags this cell as ON GT1 MEDIUM-CONFIDENCE WATCHLIST. All input questions are high-quality Phase 2B output; the watchlist flag is about the Tier 3 composition choice (Lawyer + Accountant vs. the alt Politician), not about question quality.

---

## Persona Representation Requirements

Minimum number of questions from each Synthesize-group persona that MUST be represented (verbatim or as anchor of a merger) in the output. Anchoring in a merger counts as representation for scoring purposes. This defines SQ3 (persona representation).

| Persona | Input Qs | Minimum Represented | Coverage Target | Must Clusters (at minimum) |
|---|---|---|---|---|
| Analyst | 15 | 6 | 40% | Clusters 1, 2, 4, 7, 8, 10 (must be in all 6); optional in 3, 5, 11 |
| Appreciative Inquirer | 12 | 5 | 42% | Clusters 6, 7, 8 (must be in all 3); strong preference for 2, 9 |
| Audience Advocate | 13 | 6 | 46% | Clusters 6, 7, 8 (must be in all 3); plus 2 of 1, 5, 10 |
| Devil's Advocate | 15 | 5 | 33% | Clusters 1, 3, 4, 7, 11 (must anchor at least 3 mergers or appear distinct) |
| Questioner | 20 | 6 | 30% | Clusters 1, 2, 7, 9, 10, 11 (must anchor at least 3 mergers); optional in 3, 4, 6 |
| Systems Thinker | 15 | 6 | 40% | Clusters 1, 7, 8, 10, 11 (must appear in all 5); Cluster 7 must have ≥2 ST feedback-loop questions |
| Empath | 12 | 4 | 33% | Clusters 5, 6, 7, 8 (must be in all 4); emotional-interior voice in at least 3 |
| First Principles Thinker | 10 | 4 | 40% | Clusters 7, 10, 12 (must be in all 3); strong preference for 2 |
| Futurist | 12 | 4 | 33% | Cluster 12 (must dominate — 1+ question); Clusters 9 (2 questions minimum); plus 5 |
| Accountant | 12 | 5 | 42% | Clusters 2, 3, 7, 10 (must be in all 4); plus Cluster 4 or 5 |
| Lawyer | 10 | 4 | 40% | Cluster 4 (must dominate — 3+ questions); Cluster 1 (1+ question); Cluster 6 (1+ question) |

**Total minimum representation:** 55 persona-question-slots across 44 output questions (because mergers represent multiple personas simultaneously — e.g., the Group 2 merger represents 5 personas in one slot).

**Critical attention personas:**

1. **Appreciative Inquirer** — high uniqueness score (9 of 12 fully unique). The AI's strengths-framing ("peak wonder," "unshakeable experience," "thriving community," "resilient adaptation," "pilot excellence") is easily domesticated into generic "best practices" language. SP1 should check that AI's appreciative register survives in at least 3 output questions — not just that 5 of its questions are topically represented.

2. **Empath** — medium volume (12) but high distinctiveness (9 of 12 unique). Empath's emotional-interior voice ("how does it feel," "emotional calculus," "visceral emotional reality," "corporate polish vs. human presence") bridges Clusters 5, 6, 7, 8. If fewer than 3 Empath questions preserve the emotional-interior register, the voice is effectively eliminated.

3. **Systems Thinker** — carries feedback-loop framing across multiple clusters (1, 7, 10, 11). Its distinctive systems vocabulary (reinforcing loops, "shifting the burden," "success to the successful," delays in regulatory feedback, information asymmetries) is unmatched elsewhere. If Cluster 7 alone has only 1 ST question (vs. the 2+ required), the systems register in the community discussion is lost.

4. **First Principles Thinker** — small volume (10), 70% unique. FPT's definitional questions ("what problem are we solving," "ownership assumption," "regulatory dependency," "permit scarcity as asset class," "political engagement as core competency") sit in framework territory (Clusters 10, 12). If SP1 domesticates these into Analyst-style operational questions, FPT's reductive-inquiry voice is lost.

5. **Futurist** — Cluster 12 is FPT+Futurist shared, Cluster 9 has 3 Futurist questions. Unlike space-party/high where Futurist owned its own cluster (Cluster 11), here Futurist is more distributed but its trend-extrapolation voice is critical to Cluster 9 (platform dependency, professionalization-as-insulation, verified-trust) and Cluster 12. If Cluster 9 loses both Futurist Q2 and Q6, and Cluster 12 compacts below 1 Futurist question, the trend-extrapolation dimension collapses.

6. **Lawyer (Tier 3)** — Cluster 4 must preserve Lawyer's regulatory-specificity vocabulary. Unique Lawyer territory (indemnification provisions, wiretapping law on noise monitoring, series LLC, additional insured endorsements, liquidated damages enforceability, insurance commercial-use notification) cannot be domesticated to Analyst's "risk management" register. If Cluster 4 has 0 or 1 Lawyer-distinctive question, the Tier 3 Lawyer addition was pointless — and this is on the GT1 watchlist, so SP1 scoring sensitivity matters.

7. **Accountant (Tier 3)** — 6 Accountant-distinctive questions depend on its quantified-financial-analysis voice (dollar ranges, expected-value math, ROI calculations, payback periods, pass-through economics). If Cluster 2 doesn't preserve Accountant Q4/Q5 distinct financial specificity, the Accountant reduces to "Analyst with numbers" and the Tier 3 inclusion was pointless.

**Persona-voice preservation flag:** When Convergence Group 1, Group 2, Group 4, Group 6, Group 14, or Group 16 is merged, the merged question should preserve at least 2 distinct persona registers (not just topical content from multiple personas but the specific framings/vocabularies that distinguish them). Generic-merger language that flattens Convergence Group 16 into "how do we implement good neighbor operations?" would fail voice-preservation scoring even if topically correct — the merger should preserve Analyst's measurement angle AND Questioner's operationalization angle in the phrasing.

---

## Dimension Balance Target

Based on input distribution across Synthesize-group only (146 questions):

**Input distribution (by B1 cluster primary-dimension):**
- Strategic (Clusters 1, 9, 10, 11): 48/146 = 32.9%
- Analytical (Clusters 2, 3, 4): 37/146 = 25.3%
- Human-centered (Clusters 6, 7): 36/146 = 24.7%
- Tactical (Clusters 5, 8): 26/146 = 17.8%
- Creative (Cluster 12): 10/146 = 6.8%

**Output target distribution (80 total = 44 synthesized + 36 appended):**

| Dimension | Synthesized (44) | Appended (36) | Total Output (80) | Target % |
|---|---|---|---|---|
| Strategic | 15 (Clusters 1 × 6, 9 × 3, 10 × 3, 11 × 3) | 4 (Visionary strategic reframing + Constraint Flipper strategic) | 19 | 23.8% |
| Analytical | 13 (Clusters 2 × 5, 3 × 4, 4 × 4) | 0 (Append-group rarely analytical) | 13 | 16.3% |
| Human-centered | 11 (Clusters 6 × 6, 7 × 5) | 8 (Storyteller emotional + Visionary community + Analogist concierge/organic/certified) | 19 | 23.8% |
| Tactical | 8 (Clusters 5 × 4, 8 × 4) | 5 (Analogist operational + Constraint Flipper operational) | 13 | 16.3% |
| Creative | 3 (Cluster 12) | 12 (Storyteller 4 + Analogist 2 + Visionary 4 + Constraint Flipper 2) | 15 | 18.8% |
| Provocative (carve-out) | 0 | 7 (Provocateur) | 7 | 8.75% |

**Target balance (5-dimension + Provocative carve-out):**
- Strategic: 23.8% | Analytical: 16.3% | Human-centered: 23.8% | Tactical: 16.3% | Creative: 18.8% | Provocative: 8.75%

**If re-normalized to D2's five dimensions (Provocative folded: 50% into Creative + 50% into Strategic):**
- Strategic: 28.1% | Analytical: 16.3% | Creative: 23.1% | Tactical: 16.3% | Human-centered: 23.8% = 107.6% (round-off from overlapping cluster dimensions)

**Comparison with space-party/high:**
- space-party/high: Strategic 26.7%, Tactical 18.7%, Creative 28.0%, Analytical 10.7%, Human-centered 24.0%
- property-management/high: Strategic 28.1%, Tactical 16.3%, Creative 23.1%, Analytical 16.3%, Human-centered 23.8%

Key differences:
- **Analytical** is higher here (16.3% vs. 10.7%) — property-management has 3 Analytical-primary clusters (Unit Economics, Cash Flow, Liability) driven by the 2 Tier 3 personas (Accountant, Lawyer) that space-party doesn't have.
- **Creative** is lower here (23.1% vs. 28.0%) — property-management's Append stream is smaller (36 vs. 37) and the topic's business-planning character produces fewer cluster-level Creative opportunities (1 cluster vs. space-party's 1 cluster at roughly similar Append contribution; difference is marginal).
- **Strategic** similar or slightly higher (28.1% vs. 26.7%).
- **Human-centered** essentially the same.
- **Tactical** slightly lower (16.3% vs. 18.7%).

**Effort-level adjustment note:** At high effort, the Append-group at high effort (36 questions) deposits substantial Creative content directly. This is by design per D1 — the Append step is how Creative framing enters the final output in a way synthesis would strip. For this cell, the Synthesize-stream contributes only 3 Creative questions (all from Cluster 12), while the Append-stream contributes 12 Creative questions — a 4× multiplier that reflects the topic's business-planning character leaving little room for pure divergent-thinking in Synthesis.

**Scoring tolerance:** Each dimension ±3 percentage points counts as on-target. ±5 points counts as acceptable. Beyond that, flag for SP1 investigation.

**Specific dimension watch:**
- If **Analytical < 13%**, Cluster 4 (Liability) is being under-represented — check whether Lawyer's distinctive regulatory-specificity was lost.
- If **Strategic > 32%**, Cluster 1 (Regulatory) may have absorbed Cluster 10 (Political Engagement), eliminating the engagement register.
- If **Creative < 20%**, Append-group has been under-filled (should be 36 at high effort) or Synthesize has stripped Cluster 12's reimagination voice.
- If **Human-centered < 20%**, Cluster 6 (Owner Acquisition) or Cluster 7 (Community) has compacted too aggressively, losing Empath/AA voices.

**GT1 watchlist dimension impact:** If GT1 were revised to include Politician instead of Lawyer, expect Strategic to rise by ~3-4 percentage points (Politician's governance/coalition questions are Strategic) and Analytical to drop by ~3 (Lawyer's regulatory-specificity is Analytical). This shift would be visible in the output and would be a signal to re-check GT1 rather than blaming synthesis.

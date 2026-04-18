# youth-mentorship — high — Synthesis Target

**Input count (N):** 179 total (135 Synthesize + 44 Append)
**Synthesize-group input count:** 135 (the subset the synthesis step operates on)
**Append-group input count:** 44 (all 44 flow through B4 — at high effort Tier 1 Perspective appends all 5-8 per persona; Constraint Flipper Tier 2 appends all 7 on this trust-and-constraint-rich topic; Politician Tier 3 at high effort appends all 10; Connector Tier 3 replaces Analogist and appends all 7)

**Expected output count (M):** 86 total (range 78–94, target 86)
- Synthesized questions: 42 (range 38–48, target 42)
- Appended questions: 44 (exact — all 44 at high effort per D1 "No selection needed — append everything" for Tier 1 Perspective, plus Constraint Flipper all 7, Politician all 10 per persona-selection-guide "Politician Append All 8-10", Connector all 7 as Analogist-replacement)

**Compaction ratio N/M (Synthesize stream):** 135/42 = 3.21× (range 2.8–3.5, target 3.2)
**Compaction ratio N/M (total):** 179/86 = 2.08× (range 1.9–2.3, target 2.08)
**Cluster count C in output:** 12 (range 11–13, target 12 — matches B1)

**Scoring convention:** Target = point estimate for headline scoring. Range = pass/fail band. Outside-range results scored with severity proportional to distance from nearest band edge.

**Reference:** `persona-selection-guide_Phase2B.md` projects high-effort total output at ~55–90 questions. Our target of 86 sits near the top of that range because this cell has a large Append stream (44 — the largest in the evaluation set so far, driven by Politician's all-10 inclusion on top of the standard Append-Tier1 + Constraint Flipper + Connector-as-Analogist-replacement).

**Comparison with property-management/high (80 target):** The 86 target is 7.5% larger than property-management's 80. This reflects:
- Synthesize stream is smaller (42 vs. 44, reflecting fewer Synthesize personas: 10 vs. 11)
- Append stream is much larger (44 vs. 36, reflecting Politician's 10 added here + Connector's 7 replacing Analogist's 6)
- Compaction ratio on Synthesize is similar (3.21× vs. 3.32×) because convergence density is similar (59.3% vs. 60.9%)

**GT1 watchlist:** ON WATCHLIST. Targets below assume Lawyer + Politician are the canonical Tier 3 (Politician is Append). If GT1 were revised to Lawyer-only, the Synthesize stream and its 42-question target would be unchanged; the Append stream would shrink to 34 questions; total output target would drop to ~76. Cluster count would not change (Politician's 10 questions all flow to Append and don't create new Synthesize clusters). SP1 should re-check GT1 before blaming the synthesis prompt if scoring is anomalous on this cell — specifically, check whether the Politician Append questions are appearing in the output and whether Cluster 10 (Ecosystem) is correctly sized.

---

## Target Output Structure

The 42 synthesized questions distribute across the 12 B1 clusters. Cluster-level compaction varies: high-convergence clusters compact more aggressively; single-persona or highly-distinct-voice clusters compact minimally.

### Cluster 1: Screening, Background Checks & Mentor Qualification

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged screening-architecture question from Convergence Group 1 (anchored in Analyst Q2 + DA Q1 + Lawyer Q2)
- Lawyer Q1 (disqualifying offenses + registry checks — case-by-case review) — preserved distinct per Group 2
- Lawyer Q3 (FCRA compliance — disclosure, consent, adverse action) — preserved distinct per Group 2

**Should include:**
- AA Q4 (mentor representation and community identity — cultural/SES/demographic gaps) — unique AA equity framing
- ST Q10 (volunteer screening creating unintended selection effects) — unique ST systems archetype framing
- Analyst Q1 (risk assessment framework — preventable vs. inherent risks) — unique Analyst framework

**Optional:**
- Futurist Q12 (algorithmic fairness in mentor matching — though more naturally fits Cluster 4; listed here if screening-bias framing is preferred)
- Questioner Q14 (why do we assume forty volunteers exist? — realistic baseline for vetted mentors)

**Note:** Cluster 1 anchors Lawyer's regulatory signature in this cell. SP1 must preserve ≥2 Lawyer-distinctive questions here (Q1 and Q3) — specifically regulatory-mechanism vocabulary (FCRA, disqualifying offense categories, registry-specific checks). A Cluster 1 with 0 Lawyer questions is a scored failure.

### Cluster 2: Mandatory Reporting, Legal Obligations & Reporter Training

**Input questions:** 8
**Expected output questions:** 3
**Compaction:** 2.67×

**Must include:**
- Merged mandatory-reporter-framework question from Convergence Group 3 (anchored in Analyst Q3 + DA Q6 + Lawyer Q4)
- Questioner Q5 (does safety training undermine trust? — paradigm-level framing) — preserved distinct per Group 3
- Questioner Q7 (who protects the mentors? — safeguards for adults encountering trauma disclosures, manipulation, false accusations)

**Should include:**
- None at Must level; Cluster 2 is tight at 3 and both Questioner reframings are high-priority paradigm questions.

**Optional:**
- Additional DA or AA question if available; none natural-fit here.

**Note:** Cluster 2 is tight and paradigm-heavy. Questioner's 2 reframings (Q5 and Q7) are distinctive — paradigm-level challenges that synthesis commonly absorbs into broader category headers. SP1 must preserve both distinct.

### Cluster 3: Liability, Insurance & Boundary Policies

**Input questions:** 7
**Expected output questions:** 3
**Compaction:** 2.33×

**Must include:**
- Merged liability-activity-tiering question from Convergence Group 4 (anchored in Analyst Q4 + DA Q7)
- Lawyer Q5 (transportation liability and insurance coverage — non-owned auto, hired auto) — preserved distinct per Group 4
- Lawyer Q6 (boundary policies and misconduct prevention — specific written policies with regulatory mapping) — preserved distinct per Group 5

**Should include:**
- DA Q5 (one-on-one isolation risks — structural safeguards like loggable locations, graduated autonomy) — preserved distinct per Group 5

**Optional:**
- None (Cluster 3 at 3 questions captures the full Lawyer-anchored territory cleanly with DA bridging)

**Note:** Cluster 3 is Lawyer-dominant. SP1 must preserve ≥2 Lawyer-distinctive questions here (Q5, Q6). Combined with Cluster 1 requirement (≥2 Lawyer), Cluster 3 (≥2 Lawyer), and Cluster 6 (≥1 Lawyer) — minimum Lawyer representation is 5 of 10, with regulatory-specificity vocabulary preserved in each appearance.

### Cluster 4: Matching, Compatibility & Relationship Design

**Input questions:** 14
**Expected output questions:** 4
**Compaction:** 3.5×

**Must include:**
- Merged matching-variable-validity question from Convergence Group 6 (anchored in Analyst Q5 + Questioner Q9)
- Questioner Q10 (what if the "wrong" match is the right one?) — preserved distinct per Group 7; paradigm reframing
- Empath Q10 (matching emotional mismatches in name of demographic similarity — space for intuitive click) — unique Empath register

**Should include:**
- Appreciative Inquirer Q11 (matching that creates potential chemistry) — preserved distinct per Group 6; AI strengths-register
- Futurist Q12 (algorithmic fairness in mentor matching — bias in AI matching systems) — unique Futurist trend framing
- Systems Thinker Q3 (matching criteria evolve based on early match outcomes) — unique ST systems archetype

**Optional:**
- Appreciative Inquirer Q9 (building on natural relationship dynamics) — could bridge to Cluster 12

**Note:** Cluster 4 is cross-persona (8 personas contributing). SP1 must preserve: (a) at least one matching-algorithm-factor question (merged Group 6 or similar), (b) Questioner's paradigm reframing (Q10), (c) Empath's emotional-interior framing (Q10). Three distinct registers must survive.

### Cluster 5: Trust, Safety Culture & Program Climate

**Input questions:** 16
**Expected output questions:** 5
**Compaction:** 3.2×

**Must include:**
- Empath Q1 (what does safety actually feel like to a teenager who's been burned by adults?) — preserved distinct per Group 10; Empath signature
- First Principles Thinker Q5 (what creates safety: protocols or culture?) — preserved distinct per Group 10; FPT definitional
- One preserved from the stigma-cluster (Group 9): Empath Q9 (what does it feel like to be "selected" because you're at-risk?) OR AA Q3 (the "at-risk" label and self-perception) — at minimum one shame/stigma question survives
- Merged savior-complex question from Convergence Group 11 (anchored in AA Q8 + DA Q3 + Empath Q5)

**Should include:**
- A second preserved from the stigma-cluster: Empath Q2 (where will shame live?) OR Empath Q6 (mentee who knows mentor is there because they're at-risk)
- AA Q11 (co-creation with youth voices — genuine input vs. participating in adult-designed) — unique AA equity
- AA Q5 or AA Q6 (meeting spaces + emotional arc of first meeting — environmental design for safety)
- Questioner Q12 (what if teens don't want mentors?) — paradigm reframing
- Empath Q5 already in merged Group 11 above; note for bookkeeping

**Optional:**
- Questioner Q8 (what if perfect safety means zero effectiveness?) — paradigm reframing; bridges to Cluster 3 tension
- FPT Q3 ("at-risk" signal about fundamental needs) — bridges to Cluster 12

**Note:** Cluster 5 has 16 input questions compacting to 5 — aggressive compaction (3.2×). SP1 must preserve: (a) Empath's emotional-interior register in ≥2 output questions, (b) AA's equity register in ≥1 output question, (c) FPT's definitional-about-safety register in 1 output question, (d) Questioner's paradigm reframing register in ≥1 output question. Four distinct registers across 5 questions + 1 merged. Cluster 5 is the most at-risk cluster for voice-flattening because 6 Empath questions feed in and could easily compact to 1 "how do we make teens feel safe?" generic.

### Cluster 6: Family Trust, Consent & Referral Pathways

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged data-privacy-for-justice-youth question from Convergence Group 15 (anchored in AA Q13 + DA Q8 + Lawyer Q8)
- Merged voluntary-participation-for-referred-youth question from Convergence Group 14 (anchored in AA Q12 + DA Q9)
- AA Q1 (building trust with families skeptical of systems — trauma-informed consent) — preserved distinct per Group 13
- Lawyer Q7 (parental consent and decision-making authority — non-custodial, foster care, juvenile justice) — preserved distinct per Group 13

**Should include:**
- Lawyer Q9 (FERPA implications for school-referred mentees — data requests, parental consent exceptions) — unique Lawyer regulatory specificity
- Empath Q7 (faith-based context emotional baggage — when teen's reality doesn't align with org values) — preserved distinct per Group 13
- Questioner Q13 (what does "faith-based" actually mean here?) — paradigm reframing

**Optional:**
- Lawyer Q10 (retention limits and minor data rights at age of majority) — bridges to Cluster 9

**Note:** Cluster 6 is cross-register (AA equity + Lawyer regulatory + Empath interior + DA operational + Questioner paradigm). SP1 must preserve: (a) Lawyer's regulatory-specificity in ≥2 output questions (Q7 + Q8 or Q9), (b) AA's equity-and-access framing in ≥1 output question beyond the mergers, (c) Empath's felt-context framing in ≥1 output question, (d) at least one opt-in/voluntariness framing. Lawyer minimum ≥2 here combined with Cluster 1 (≥2) and Cluster 3 (≥2) reaches 6 of 10 Lawyer representation.

### Cluster 7: Mentor Training, Development & Ongoing Support

**Input questions:** 9
**Expected output questions:** 3
**Compaction:** 3.0×

**Must include:**
- AI Q10 (training that ignites existing capacity — discovery-based training) — preserved distinct per Group 12; AI signature
- Merged mentor-burnout question from Convergence Group 16 (anchored in Analyst Q7 + DA Q2) — capacity modeling with graduated commitments and backup systems
- Either DA Q4 (skill mismatch with high-needs youth — clinical consultation access) OR Empath Q8 (mentors emotionally handle when they can't fix things)

**Should include:**
- ST Q14 (emotional load distribution across mentors) — preserved distinct per Group 16; ST systems framing
- ST Q15 (mentor training creating rigid expectations undermining relationship quality) — preserved distinct per Group 12; ST skeptical framing
- DA Q11 (cultural & life experience mismatch — training for bridging) — unique DA equity concern

**Optional:**
- Analyst Q8 (governance and decision-rights frameworks — delegation matrix mentor/program)
- AA Q4 (mentor representation and community identity — if not placed in Cluster 1)

**Note:** Cluster 7 is small (9 input) and compacts to 3 — the trickiest compaction in the cell. SP1 must preserve: (a) AI's strengths-discovery training register (Q10), (b) burnout-and-capacity framing (merged Group 16), (c) at least one emotional-weight or skill-mismatch framing. If Cluster 7 compacts to only operational "training and support" content, it loses AI's distinctive register and Empath/DA's emotional/skill-readiness concerns.

### Cluster 8: Program Economics, Sustainability & Capacity

**Input questions:** 10
**Expected output questions:** 3
**Compaction:** 3.33×

**Must include:**
- Merged unit-economics question from Convergence Group 17 (anchored in Analyst Q9 + Questioner Q17) — 10/25/50 pair scale scenarios
- Merged revenue-diversification question from Convergence Group 18 (anchored in Analyst Q11 + DA Q12) — sustainability beyond seed funding
- First Principles Thinker Q10 (is the funding model aligned with the mission? — episodic philanthropy vs. multi-year human development work) — preserved distinct per Group 17; FPT paradigm

**Should include:**
- Analyst Q10 (staff time allocation across core functions — workload ratios per mentor pair)
- Questioner Q18 (what happens when the seed money runs out? — pilot-vs-bridge question)
- Questioner Q19 (what are we asking admin staff to absorb? — in-kind support affecting existing duties)

**Optional:**
- ST Q13 (balancing mechanisms naturally limiting program scale)
- Questioner Q20 (what if we succeeded beyond our capacity?)

**Note:** Cluster 8 anchors the business-sustainability concern. SP1 must preserve FPT's paradigm challenge (Q10 — episodic philanthropy definitional question) as distinct from the Analyst/Questioner operational questions. If Cluster 8 compacts to only budget-mapping + revenue-diversification content, FPT's definitional register is lost.

### Cluster 9: Outcomes Measurement, Evaluation & Program Learning

**Input questions:** 12
**Expected output questions:** 3
**Compaction:** 4.0× (highest compaction in the cell)

**Must include:**
- Merged multi-stakeholder success question from Convergence Group 19 (anchored in Analyst Q13 + AA Q14 + DA Q13) — metrics without burdening participants
- Analyst Q12 (logic model connecting inputs → outputs → outcomes → impact) — preserved distinct per Group 20; Analyst framework
- Appreciative Inquirer Q12 (measurement that energizes rather than burdens — strengths-based measurement) — unique AI register

**Should include:**
- First Principles Thinker Q8 (how do we know we're helping vs. harming? — real risks of intervention) — preserved distinct per Group 20; FPT paradigm
- Questioner Q2 (whose goals define success?) — preserved distinct per Group 19; paradigm reframing
- Futurist Q11 (documentation and evidence balance — outcome-based funding vs. surveillance)
- ST Q11 (outcome measures creating self-fulfilling prophecies) — unique ST systems archetype

**Optional:**
- Analyst Q14 (continuous improvement system — learning loops without blame culture)
- Futurist Q10 (youth data privacy trajectory alignment — tightening minor-data standards)
- ST Q12 (mentor satisfaction data concealing emerging problems)

**Note:** Cluster 9 compacts 4.0× — the most aggressive in the cell. This is acceptable because the core content is the multi-stakeholder merger (3-way from Group 19) which efficiently absorbs 3 input questions into 1 output. SP1 must preserve: (a) Analyst's logic-model framework (Q12), (b) AI's strengths-based measurement register (Q12), (c) at least one paradigm or systems-thinker framing from the Should list. If all 3 output questions are "how do we measure outcomes without burdening participants," the cluster loses its cross-register texture.

### Cluster 10: Community Integration, Ecosystem & Partner Coordination

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged ecosystem-coordination question from Convergence Group 21 (anchored in Analyst Q15 + ST Q6) — referral pipelines, handoff protocols, MOUs
- Appreciative Inquirer Q3 (relationships that have endured — 20-year presence organic intergenerational relationships) — unique AI retrospective-strengths register
- Futurist Q7 (youth mental health ecosystem positioning — telehealth, peer support) — preserved distinct per Group 21; Futurist trend
- Appreciative Inquirer Q7 (ripple effects beyond matched pairs — family, school, neighborhood shifts)

**Should include:**
- AI Q5 (three years later — community celebration; strengths-future-visioning)
- FPT Q9 (what does this organization uniquely bring? — fundamental assets of faith-based 20-year presence)
- Futurist Q9 (restorative justice and diversion expansion — new referral pathways)
- Questioner Q15 (what if 20-year presence works against us? — paradigm reframing about existing relationships)

**Optional:**
- ST Q2 (mission creep structural safeguards)
- ST Q8 (mentees' peer networks responding to participation)
- Empath Q11 (how does this feel to teens not in the program? — emotional hierarchies)

**Note:** Cluster 10 is strategic/ecosystem content that runs alongside the Politician Append stream (Politician's 10 Append questions will overlay this cluster with coalition/gatekeeper/governance framings). SP1 should read Cluster 10 output + Politician Append questions together — they cover adjacent territory with Synthesize providing the relational/organizational framing and Politician providing the political-structural framing. SP1 must preserve AI's 20-year-presence strengths register in ≥2 output questions here (AI Q3 + Q7).

### Cluster 11: Relationship Arc, Duration & Closure

**Input questions:** 10
**Expected output questions:** 3
**Compaction:** 3.33×

**Must include:**
- Merged match-breakdown question from Convergence Group 8 (anchored in Analyst Q6 + DA Q14 + ST Q7) — early warning indicators and feedback loops
- Empath Q12 (when the program ends — emotional fallout, not recreating abandonment wounds) — preserved distinct per Group 22
- AA Q15 (graduation and beyond — meaningful closure honoring attachment and providing continuity) — preserved distinct per Group 22

**Should include:**
- Empath Q4 (one-year commitment as emotional clock for teens with disruption) — unique Empath framing
- Questioner Q3 (what happens after the year ends? — attachment-then-abandonment as potentially more harmful than no mentoring)
- Empath Q3 (when mentor doesn't like mentee — emotionally dead year-long relationship) — preserved distinct per Group 8
- AA Q10 (handling disappointment and inconsistency — repair of ruptures)
- ST Q5 (mentor turnover at 12-month mark creating destabilization) — unique ST framing

**Optional:**
- Questioner Q11 (how do mismatches get resolved? — message about worth)
- AA Q7 (when matched relationships don't click) — already in Cluster 4 or here

**Note:** Cluster 11 has 10 input compacting to 3. The two Empath questions (Q4 one-year-emotional-clock + Q12 end-of-program fallout) are signature Empath for this topic; SP1 must preserve at least one. AA Q15 (graduation/closure) is load-bearing for the program-end register. A Cluster 11 without an end-of-program-emotional-interior question loses Empath's distinctive voice.

### Cluster 12: Program Reimagination, First-Principles & Future Horizons

**Input questions:** 10
**Expected output questions:** 3
**Compaction:** 3.33×

**Must include:**
- First Principles Thinker Q1 (what creates transformative change? — mechanisms beyond conventional structure) OR FPT Q2 (is one-on-one the optimal unit?) — at minimum one FPT definitional question
- First Principles Thinker Q6 (is the volunteer model structurally sound?) — FPT paradigm about funding/labor model
- Futurist Q3 (AI-mediated relationship scaffolding — competitive pressure from AI mentorship) OR Futurist Q5 (volunteer sustainability patterns — declining institutional affiliation)

**Should include:**
- FPT Q3 ("at-risk" fundamental needs signal — designing around core human needs rather than risk categories)
- FPT Q4 (can genuine relationships be manufactured on demand?)
- FPT Q7 (what would make this program irreplaceable?)
- Futurist Q4 (future-proofing mentor preparation — shifting labor markets)
- Futurist Q8 (declining trust in institutions — faith-based advantage or liability)
- Futurist Q6 (alternative credential positioning)

**Optional:**
- Futurist Q1, Q2 (hybrid engagement, platform flexibility)

**Note:** Cluster 12 is the FPT+Futurist cluster. SP1 must preserve at least 1 FPT definitional question and at least 1 Futurist trend-extrapolation question. Unlike the other clusters (which have Tier 1 backup personas), Cluster 12 is carried 100% by these two Tier 2 personas. If Cluster 12 compacts to <2 with only Analyst-style "strategic alternatives" questions, both personas are effectively eliminated — this is a cliff function.

The Visionary Append stream (7 questions all on reimagination) parallels this Synthesize-stream content. SP1 reading the final output should see reimagination appear in two places: FPT/Futurist synthesized (Cluster 12) + Visionary Appended. This is intentional cross-stream coverage of the reimagination theme — Synthesize handles definitional/trend, Append handles paradigm-shifting reimagination.

---

## Synthesized Output Summary (Target 42)

| Cluster | Target Qs | Must | Should | Optional |
|---|---|---|---|---|
| 1 Screening | 4 | 3 | 3 | 2 |
| 2 Mandatory Reporting | 3 | 3 | 0 | 1 |
| 3 Liability/Boundaries | 3 | 3 | 1 | 0 |
| 4 Matching | 4 | 3 | 3 | 1 |
| 5 Trust/Safety Climate | 5 | 4 | 4 | 2 |
| 6 Family/Consent | 4 | 4 | 3 | 1 |
| 7 Mentor Training/Support | 3 | 3 | 3 | 2 |
| 8 Economics/Sustainability | 3 | 3 | 3 | 2 |
| 9 Measurement/Evaluation | 3 | 3 | 4 | 3 |
| 10 Ecosystem | 4 | 4 | 4 | 3 |
| 11 Relationship Arc | 3 | 3 | 5 | 2 |
| 12 Reimagination | 3 | 3 | 6 | 2 |

Must totals: 39 (below 42 target — reflects that several Must items are single-question "preserved distinct" slots + mergers; the remaining 3 slots to hit 42 come from Should selections per cluster).
Target total: 42 — scored against output count regardless of whether slots are filled by mergers.
Should totals: 39 (slack/band above target — synthesizer chooses which Should items fill remaining slots).
Optional totals: 21 (reserved for synthesizer-judgment additions).

**Range bands:**
- 38 (= 42 minus 4 cuts from lowest-priority Must slots in Clusters 5, 10, 11, 12)
- 48 (= Must + top 9 Should selections distributed across clusters)

---

## Questions Expected to Be Dropped

These inputs should **not** survive synthesis (either merged or not topically represented):

| Question | Rationale |
|---|---|
| Analyst Q2 (volunteer screening calibration) | Merged into Convergence Group 1 output |
| Devil's Advocate Q1 (background check limitations) | Merged into Convergence Group 1 output |
| Lawyer Q2 (background check scope and renewal cycles) | Merged into Convergence Group 1 output |
| Analyst Q3 (incident response and critical-incident protocols) | Merged into Convergence Group 3 output |
| Devil's Advocate Q6 (mandatory reporter confusion) | Merged into Convergence Group 3 output |
| Lawyer Q4 (mandatory reporter status and training requirements) | Merged into Convergence Group 3 output |
| Analyst Q4 (liability exposure quantification across activities) | Merged into Convergence Group 4 output |
| Devil's Advocate Q7 (liability coverage gaps) | Merged into Convergence Group 4 output |
| Analyst Q5 (matching algorithm variables) | Merged into Convergence Group 6 output |
| Questioner Q9 (what creates compatibility we cannot predict) | Merged into Convergence Group 6 output |
| Audience Advocate Q8 (authentic connection vs. program requirements) | Merged into Convergence Group 11 output |
| Devil's Advocate Q3 (savior complex & boundary issues) | Merged into Convergence Group 11 output |
| Empath Q5 (mentors as humans, not saviors) | Merged into Convergence Group 11 output |
| Audience Advocate Q12 (voluntary participation in referred context) | Merged into Convergence Group 14 output |
| Devil's Advocate Q9 (opt-out vs. opt-in dynamics) | Merged into Convergence Group 14 output |
| Audience Advocate Q13 (data privacy and trust with justice-involved youth) | Merged into Convergence Group 15 output |
| Devil's Advocate Q8 (data privacy for justice-involved youth) | Merged into Convergence Group 15 output |
| Lawyer Q8 (data privacy for justice-involved youth — regulatory) | Merged into Convergence Group 15 output |
| Analyst Q7 (mentor capacity & burnout modeling) | Merged into Convergence Group 16 output |
| Devil's Advocate Q2 (overcommitment & burnout) | Merged into Convergence Group 16 output |
| Analyst Q9 (unit economics across scale scenarios) | Merged into Convergence Group 17 output |
| Questioner Q17 (what does $15K actually buy?) | Merged into Convergence Group 17 output |
| Analyst Q11 (revenue diversification strategy) | Merged into Convergence Group 18 output |
| Devil's Advocate Q12 (funding fragility & program continuity) | Merged into Convergence Group 18 output |
| Analyst Q13 (success definition from multiple stakeholders) | Merged into Convergence Group 19 output |
| Audience Advocate Q14 (measuring success without burdening) | Merged into Convergence Group 19 output |
| Devil's Advocate Q13 (measurement burden undermining relationships) | Merged into Convergence Group 19 output |
| Analyst Q15 (ecosystem coordination) | Merged into Convergence Group 21 output |
| Systems Thinker Q6 (program affecting/affected by existing systems) | Merged into Convergence Group 21 output |
| Analyst Q6 (early warning indicators for relationship breakdown) | Merged into Convergence Group 8 output |
| Devil's Advocate Q14 (matching process failure modes) | Merged into Convergence Group 8 output |
| Systems Thinker Q7 (feedback loops for troubled matches) | Merged into Convergence Group 8 output |

(31 input questions drop into mergers. Remaining 135 − 31 merged = 104 unmerged questions. Of those, ~32 flow directly to the 42 target output as distinct-preserved questions, and ~72 Should/Optional candidates depend on which slots the synthesizer fills.)

**No "low-quality outliers" flagged.** TDA1 reports zero shortfalls for this cell. However, TDA1 flags this cell as ON GT1 MEDIUM-CONFIDENCE WATCHLIST. All input questions are high-quality Phase 2B output; the watchlist flag is about the Tier 3 composition choice (Lawyer + Politician vs. the alt Lawyer-only), not about question quality.

---

## Persona Representation Requirements

Minimum number of questions from each Synthesize-group persona that MUST be represented (verbatim or as anchor of a merger) in the output. Anchoring in a merger counts as representation for scoring purposes. This defines SQ3 (persona representation).

| Persona | Input Qs | Minimum Represented | Coverage Target | Must Clusters (at minimum) |
|---|---|---|---|---|
| Analyst | 15 | 6 | 40% | Clusters 1, 3, 8, 9, 10 (must be in all 5); optional in 2, 4, 5, 7, 11 |
| Appreciative Inquirer | 12 | 5 | 42% | Clusters 4, 7, 9, 10 (must be in all 4); strong preference for 5 |
| Audience Advocate | 15 | 6 | 40% | Clusters 5, 6, 11 (must be in all 3); plus 3 of 1, 4, 7 |
| Devil's Advocate | 14 | 5 | 36% | Clusters 1, 3, 7, 8 (must anchor at least 3 mergers or appear distinct); optional in 2, 6, 11 |
| Questioner | 20 | 6 | 30% | Clusters 2, 5, 9, 10, 11 (must anchor at least 3 mergers); paradigm reframings in Cluster 4 (Q10), 5 (Q12, Q16), 8 (Q18-Q20), 10 (Q15) |
| Systems Thinker | 15 | 5 | 33% | Clusters 1, 4, 7, 9, 10, 11 (must appear in at least 4); systems-archetype vocabulary in ≥4 output questions |
| Empath | 12 | 4 | 33% | Clusters 5, 7, 11 (must be in all 3); emotional-interior voice in ≥3 output questions |
| First Principles Thinker | 10 | 4 | 40% | Clusters 5, 8, 9, 10, 12 (must be in at least 4); definitional register in Cluster 12 (must be ≥2) |
| Futurist | 12 | 4 | 33% | Cluster 12 (must — 1+ question); Cluster 4 (Q12 on algorithmic fairness); Cluster 10 (1+ question); plus Cluster 9 (1+ question) |
| Lawyer | 10 | 5 | 50% | Cluster 1 (≥2 — Q1, Q3); Cluster 3 (≥2 — Q5, Q6); Cluster 6 (≥1 — Q7 or Q8 or Q9) |

**Total minimum representation:** 50 persona-question-slots across 42 output questions (because mergers represent multiple personas simultaneously — e.g., the Group 15 merger represents 3 personas in one slot).

**Critical attention personas:**

1. **Appreciative Inquirer** — high uniqueness score (9 of 12 fully unique). AI's strengths-framing ("peak moments of connection," "hidden assets," "enduring relationships," "ripple effects," "training igniting existing capacity," "matching that creates potential chemistry," "measurement that energizes") is easily domesticated into generic "best practices" language. SP1 should check that AI's appreciative register survives in at least 4 output questions — not just that 5 of its questions are topically represented.

2. **Empath** — high distinctiveness (9 of 12 unique). Empath's emotional-interior voice bridges Clusters 5 (safety climate + stigma), 7 (mentor emotional capacity), 11 (relationship arc emotional fallout). For this topic, Empath's 6 Cluster 5 questions (Q1, Q2, Q6, Q7, Q9, Q11) are signature — the topic's density of emotional-felt-experience dimensions is unusually high. SP1 must preserve ≥3 Empath questions with emotional-interior register intact — specifically the shame/stigma framings (Q2 or Q6 or Q9) and the safety-feeling framing (Q1) and the end-of-program framing (Q12).

3. **Systems Thinker** — carries feedback-loop framing across multiple clusters (1, 3, 4, 7, 9, 10, 11). Its distinctive systems vocabulary (reinforcing dynamics, mission creep, time delays, feedback loops, balancing mechanisms, self-fulfilling prophecies, emergent imbalances) is unmatched elsewhere. SP1 must preserve ≥4 ST-distinctive questions across the cell (vs. the 5 minimum representation target — at least 4 should retain systems-archetype vocabulary).

4. **First Principles Thinker** — small volume (10), 70% unique. FPT's definitional questions ("what creates transformative change," "is one-on-one the optimal unit," "what does 'at-risk' signal," "can relationships be manufactured," "what creates safety: protocols or culture," "is the volunteer model structurally sound," "what makes this program irreplaceable," "how do we know we're helping vs. harming," "what does this organization uniquely bring," "is the funding model aligned with mission") sit in framework territory across Clusters 5, 8, 9, 10, 12. If SP1 domesticates these into Analyst-style operational questions, FPT's reductive-inquiry voice is lost. Cluster 12 especially must preserve ≥2 FPT definitional questions.

5. **Futurist** — distributed across Clusters 4 (algorithmic matching), 9 (measurement trends), 10 (mental health ecosystem + restorative justice), 12 (AI + volunteer sustainability + credentialing + faith-based-trust trajectory). Unlike property-management/high where Futurist concentrated in Clusters 9 + 12, here Futurist has 4-cluster spread. SP1 must preserve ≥1 Futurist trend-extrapolation question in Cluster 12 AND ≥1 Futurist question in Cluster 10.

6. **Audience Advocate** — 6-cluster spread (1, 5, 6, 7, 8, 11) with fine-grained equity dimensions. The AA-distinctive framings (trauma-informed consent, trust with skeptical families, mentor representation gaps, authentic connection vs. transactional, teens' unspoken needs, rupture repair, co-creation with youth voices, data privacy for justice-youth, voluntary participation, graduation closure) are each distinct equity questions. SP1 must preserve ≥4 AA-distinctive equity framings across the cell.

7. **Lawyer (Tier 3)** — 10 questions, 5 minimum representation (50% coverage — the highest coverage requirement in the cell). Cluster 1 (2 — Q1, Q3), Cluster 3 (2 — Q5, Q6), Cluster 6 (1 — Q7, Q8, or Q9) — this distributes Lawyer's 5 required questions across 3 clusters. The GT1 watchlist flag makes this especially important: if Lawyer is poorly represented, the first diagnostic is whether GT1 was right to select Lawyer (vs. the Lawyer-only alt which would keep Lawyer as the sole Tier 3). Lawyer's unique regulatory-mechanism vocabulary (FCRA, non-owned auto insurance, FERPA exceptions, minor data rights, court approval for juvenile justice) cannot be domesticated to Analyst's operational register.

**Persona-voice preservation flag:** When Convergence Group 3 (Mandatory Reporter), Group 8 (Match Breakdown), Group 15 (Data Privacy), Group 19 (Multi-Stakeholder Success) are merged, the merged question should preserve at least 2 distinct persona registers (not just topical content from multiple personas). Group 15's merger must preserve Lawyer's regulatory-specificity in phrasing, not collapse to "how do we handle data privacy?" generic.

---

## Dimension Balance Target

Based on input distribution across Synthesize-group only (135 questions):

**Input distribution (by B1 cluster primary-dimension):**
- Human-centered (Clusters 4, 5, 6, 11): 53/135 = 39.3%
- Analytical (Clusters 1, 2, 3, 8, 9): 50/135 = 37.0%
- Strategic (Cluster 10): 13/135 = 9.6%
- Creative (Cluster 12): 10/135 = 7.4%
- Tactical (Cluster 7): 9/135 = 6.7%

**Output target distribution (86 total = 42 synthesized + 44 appended):**

| Dimension | Synthesized (42) | Appended (44) | Total Output (86) | Target % |
|---|---|---|---|---|
| Human-centered | 16 (Clusters 4 × 4, 5 × 5, 6 × 4, 11 × 3) | 10 (Storyteller 6 emotional-vignette + Connector 2 reciprocal-support + Visionary 2 community) | 26 | 30.2% |
| Analytical | 13 (Clusters 1 × 4, 2 × 3, 3 × 3, 8 × 3) | 0 (Append-group rarely analytical) | 13 | 15.1% |
| Strategic | 4 (Cluster 10 × 4) | 10 (Politician 10 — coalition/gatekeeper/governance all Strategic) | 14 | 16.3% |
| Creative | 3 (Cluster 12 × 3) | 17 (Visionary 5 + Connector 5 + Constraint Flipper 7) | 20 | 23.3% |
| Tactical | 3 (Cluster 7 × 3) | 0 | 3 | 3.5% |
| Provocative (carve-out) | 0 | 7 (Provocateur) | 7 | 8.1% |
| Evaluation/Measurement (Cluster 9 — counted as Analytical above) | 3 (Cluster 9 × 3) | 0 | (folded into Analytical above) | — |

**Target balance (5-dimension + Provocative carve-out):**
- Human-centered: 30.2% | Analytical: 15.1% | Strategic: 16.3% | Creative: 23.3% | Tactical: 3.5% | Provocative: 8.1%

**If re-normalized to D2's five dimensions (Provocative folded 50% Creative + 50% Strategic):**
- Human-centered: 30.2% | Analytical: 15.1% | Creative: 27.4% | Strategic: 20.4% | Tactical: 3.5% ≈ 96.6% (the remainder falls into overlap)

**Comparison with property-management/high:**
- property-management/high: Strategic 28.1%, Analytical 16.3%, Creative 23.1%, Tactical 16.3%, Human-centered 23.8%
- youth-mentorship/high: Human-centered 30.2%, Creative 27.4%, Strategic 20.4%, Analytical 15.1%, Tactical 3.5%

Key differences:
- **Human-centered** is much higher here (30.2% vs. 23.8%) — topic character: mentorship is inherently a human-development topic, and Empath/AA/AI all contribute human-centered framings heavily. Storyteller's 6 Append questions (narrative vignettes from teen perspective) amplify this further.
- **Tactical** is much lower here (3.5% vs. 16.3%) — only Cluster 7 is Tactical, and it's small (3 output). Property-management had two Tactical clusters (5 + 8, 26 input questions); youth-mentorship has one (7, 9 input).
- **Analytical** is similar (15.1% vs. 16.3%).
- **Creative** is higher here (27.4% vs. 23.1%) — Connector's 7 Append (Tier 3 replacing Analogist) plus Constraint Flipper's 7 plus Visionary's 7 = 21 Append Creative, amplified by Cluster 12 synthesize 3 = 20 total. The Creative dimension is buoyed by the Append-heavy stream.
- **Strategic** is lower here (20.4% vs. 28.1%) — youth-mentorship's lower Synthesize Strategic (only Cluster 10 at 13 questions) partially offset by Politician's 10 Append Strategic contributions. Property-management had 4 Strategic clusters; youth-mentorship has 1.

**Effort-level adjustment note:** At high effort, the Append-group at high effort (44 questions — the largest in the evaluation set due to Politician's 10 + Connector's 7 replacing Analogist's 6) deposits substantial Creative and Strategic content directly. The Append stream does more work on this cell than on property-management/high: Politician Append adds Strategic directly (10 questions); Connector and Visionary add Creative directly (5 each); Storyteller adds Human-centered (6). The Synthesize stream is relatively less dimensionally diverse per-question than the Append stream.

**Scoring tolerance:** Each dimension ±3 percentage points counts as on-target. ±5 points counts as acceptable. Beyond that, flag for SP1 investigation.

**Specific dimension watch:**
- If **Human-centered < 25%**, Clusters 5, 6, or 11 are being under-represented — check whether Empath/AA voices were lost in synthesis.
- If **Strategic > 25%** (without GT1 composition change), Cluster 10 has absorbed content from other clusters or the Politician Append is double-counted.
- If **Creative < 20%**, the Append stream is under-filled or Visionary/Connector/Constraint Flipper contributions have been stripped.
- If **Tactical > 8%**, Cluster 7 has expanded beyond its target.
- If **Analytical > 20%**, clusters 1, 2, 3, 8, or 9 have expanded; check for over-compaction of Human-centered content.

**GT1 watchlist dimension impact:** If GT1 were revised to Lawyer-only, Strategic would drop by ~8-10 percentage points (losing all 10 Politician Append Strategic questions) and Creative would rise slightly (Append total would shrink; relative share of Visionary/Connector/CF Creative would rise). This shift would be visible in the output and would be a signal to re-check GT1 rather than blaming synthesis.

**Topic-character signal for cross-topic analysis:** The Human-centered heaviness (30.2% target) is a *topic property* not a cell property. SP1 should expect this Human-centered dominance on other relational-developmental topics (potentially school-consolidation at medium effort) and should NOT penalize synthesis variants that produce Human-centered-heavy output on this cell. The rubric must distinguish between "synthesis preserved the topic's natural dimension balance" (good) and "synthesis over-represented Human-centered because it lost other dimensions" (bad).

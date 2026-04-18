# mobile-app — high — Synthesis Target

**Input count (N):** 163 total (128 Synthesize + 35 Append)
**Synthesize-group input count:** 128 (the subset the synthesis step operates on)
**Append-group input count:** 35 (all 35 flow through B4 — at high effort Tier 1 Perspective appends all 5-8 per persona; Constraint Flipper Tier 2 appends all 6 on this constraint-rich topic; Connector Tier 3 replaces Analogist and appends all 8)

**Expected output count (M):** 76 total (range 69–82, target 76)
- Synthesized questions: 41 (range 37–46, target 41)
- Appended questions: 35 (exact — all 35 at high effort per D1 "No selection needed — append everything" for Tier 1 Perspective, plus Constraint Flipper all 6, Connector all 8 as Analogist-replacement)

**Compaction ratio N/M (Synthesize stream):** 128/41 = 3.12× (range 2.8–3.5, target 3.1)
**Compaction ratio N/M (total):** 163/76 = 2.14× (range 2.0–2.4, target 2.14)
**Cluster count C in output:** 12 (range 11–13, target 12 — matches B1)

**Scoring convention:** Target = point estimate for headline scoring. Range = pass/fail band. Outside-range results scored with severity proportional to distance from nearest band edge.

**Reference:** `persona-selection-guide_Phase2B.md` projects high-effort total output at ~55–90 questions. Our target of 76 sits in the middle of that range — smaller than youth-mentorship/high (86) because mobile-app has no Politician-Append persona (no Tier 3 Append beyond the Connector-replaces-Analogist swap), and smaller Synthesize stream (128 vs. 135) due to Accountant providing 11 questions vs. Lawyer's 10 and youth-mentorship having a 20-question Questioner high-effort volume matched here but with different persona composition.

**Comparison with youth-mentorship/high (86 target):** The 76 target is 11.6% smaller than youth-mentorship's 86. This reflects:
- Synthesize stream is smaller (41 vs. 42, reflecting marginally fewer questions in input and similar compaction ratios)
- Append stream is much smaller (35 vs. 44, reflecting: no Politician Append (-10), no Storyteller match either (mobile-app has 7 Storyteller vs. 6 — actually +1 here), smaller Constraint Flipper (6 vs. 7 = -1), larger Connector-replacing-Analogist (8 vs. 7 = +1))
- Compaction ratio on Synthesize is similar (3.12× vs. 3.21×) because convergence density is similar (57.8% vs. 59.3%)

**Comparison with property-management/high (80 target):** The 76 target is 5% smaller than property-management's 80. This reflects:
- Synthesize stream is smaller (41 vs. 44, reflecting fewer Synthesize personas: 10 vs. 11 — no Politician in Synthesize here)
- Append stream is similar (35 vs. 36 — property-management had Analogist 6 + Constraint Flipper 7 + Politician 10 + Visionary 7 + Storyteller 6 / here we have Connector 8 + CF 6 + Visionary 7 + Storyteller 7 + Provocateur 7)

**GT1 status:** NOT on watchlist. Targets below assume Accountant (Synthesize) + Connector (Append, Analogist-replacement) are the canonical Tier 3 composition. GT1 Rev 3 labels this cell high-confidence on both picks: strong financial-structure trigger (8-month runway, burn rate, LTV/CAC, team of 8) justifies Accountant; strong inter-domain-reconciliation trigger (social + fitness + marketplace + coaching + community — 5 sub-systems constraining each other) justifies Connector over Analogist. No ambiguity at the Tier 3 composition layer.

---

## Target Output Structure

The 41 synthesized questions distribute across the 12 B1 clusters. Cluster-level compaction varies: high-convergence clusters compact more aggressively; single-persona or highly-distinct-voice clusters compact minimally.

### Cluster 1: Core Value Identification & Feature Prioritization

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged feature-evidence-base question from Convergence Group 1 (anchored in Analyst Q1 + Questioner Q2 + FPT Q3)
- Questioner Q11 (what if MVP is 1 feature not 3-4?) — preserved distinct per Group 1; paradigm reframing
- First Principles Thinker Q7 (what is the fundamental unit of value? — social fitness as one problem or five) — FPT definitional; unique territory

**Should include:**
- Appreciative Inquirer Q7 (The "One Thing" Evolution — if app became known for doing one thing exceptionally well) — AI strengths-focusing register
- Appreciative Inquirer Q2 (Features That Sparked Joy — which of 15 elicited positive feedback, sustained engagement, loyalty) — AI unique retrospective-strengths framing
- Questioner Q1 (what problem do users hire this app to solve?) — paradigm reframing
- Systems Thinker Q1 (features central vs. surrounding — "Success to the Successful" dynamic)

**Optional:**
- First Principles Thinker Q1 (what fundamental human need does this app satisfy?) — could fit Cluster 1 or Cluster 12
- Appreciative Inquirer Q1 (Peak User Experiences — sessions beyond 47s)

**Note:** Cluster 1 anchors the "what is this app actually for" question. SP1 must preserve: (a) the feature-evidence-base merger capturing Analyst's framework, Questioner's revealed-protest test, and FPT's superiority-to-alternatives test in a single coherent question, (b) Questioner's paradigm reframing (Q11 — MVP is 1 feature), (c) FPT's fundamental-unit-of-value definitional question (Q7). A Cluster 1 without FPT's definitional register or Questioner's paradigm voice is a scored failure.

### Cluster 2: User Segmentation, Cohort Analysis & Retention Differentiation

**Input questions:** 11
**Expected output questions:** 3
**Compaction:** 3.67×

**Must include:**
- Merged cohort-segmentation question from Convergence Group 2 (anchored in Analyst Q2 + DA Q2 + DA Q3 + Questioner Q3)
- Merged passionate-minorities question from Convergence Group 3 (anchored in AA Q12 + ST Q3 + FPT Q6) — preserved distinct from main segmentation merger because passionate-minorities is a specific sub-question

**Should include:**
- Appreciative Inquirer Q4 (Hidden Assets in User Base — 180K downloads, even with low retention, who the 2% daily users are) — AI strengths-inventory register
- Analyst Q7 (Churn Risk Assessment Model — feature-dependent vs. feature-agnostic users; quantifiable trade-off) — Analyst framework
- Questioner Q6 (How might users' expressed preferences differ from their revealed behaviors?) — paradigm reframing

**Optional:**
- Audience Advocate Q1 (What gaps exist between what users say they want and what they actually do daily?) — could fit Cluster 2 or Cluster 5
- Accountant Q6 (User segment profitability — power users economics)

**Note:** Cluster 2 aggressively compacts from 11 → 3. The two mergers (Group 2 main segmentation + Group 3 passionate-minorities) capture 7 of 11 input questions. The third output question should be whichever of AI Q4 (strengths-inventory of 2% daily) or Analyst Q7 (churn-risk model) best represents the segment-analysis dimension. SP1 must preserve: (a) the cohort-segmentation framework via the merger, (b) the passionate-minorities specific question via the merger, (c) a third question bringing in retrospective-strengths or churn-risk modeling.

### Cluster 3: Feature Dependencies, Technical Debt & Architectural Constraints

**Input questions:** 8
**Expected output questions:** 3
**Compaction:** 2.67×

**Must include:**
- Merged feature-dependency-architecture question from Convergence Group 4 (anchored in Analyst Q3 + Analyst Q6 + DA Q9 + ST Q7 + Questioner Q10) — 5-way merger on the technical-tractability theme
- First Principles Thinker Q4 (is incremental simplification fundamentally doomed by legacy architecture? — threshold where rebuild becomes rational) — FPT definitional on the rebuild-vs-refactor choice
- Accountant Q7 (Technical debt paydown ROI — cost-benefit of removal vs. ghost codebase over 12-24 months) — Accountant economic framing on engineering choice

**Should include:**
- None needed at Must level for 3-question cluster

**Optional:**
- None (Cluster 3 at 3 questions captures the full dependency+rebuild+economics territory cleanly)

**Note:** Cluster 3 is small but essential. The 5-way merger (Group 4) is a single output question that absorbs 5 inputs — aggressive compression but defensible because all 5 questions converge tightly on "is this technical project tractable?" SP1 must preserve: (a) the architectural-tractability merger capturing dependency, debt, cascade-risk, and rebuild-threshold concerns, (b) FPT's definitional question on when rebuilding from scratch is more rational than incremental removal, (c) Accountant's economic framing on technical debt paydown over 12-24 months. A Cluster 3 with only the merger and no rebuild-threshold question loses FPT's distinctive definitional register; without Accountant's financial frame, Cluster 3 becomes purely engineering without economic discipline.

### Cluster 4: Unit Economics, Runway & Financial Sustainability

**Input questions:** 16
**Expected output questions:** 5
**Compaction:** 3.2×

**Must include:**
- Merged per-feature unit economics question from Convergence Group 5 (anchored in Analyst Q4 + Accountant Q1 + Q2 + Q3)
- Merged churn-retention break-even question from Convergence Group 6 (anchored in Analyst Q7 + Accountant Q4 + Q5)
- Merged runway-driven decision economics question from Convergence Group 7 (anchored in Analyst Q5 + Accountant Q9 + Q10 + Q11 + ST Q9)
- Accountant Q6 (User segment profitability — power users economics; paying customers) — preserved distinct per Group 5; unique Accountant user-economics angle
- Questioner Q12 (How might the 8-month runway constraint distort good decision-making?) — preserved distinct per Group 7; paradigm reframing

**Should include:**
- First Principles Thinker Q10 — not present in this test data but would fit if topic had explicit funding-mission question
- Devil's Advocate Q5 (What if simplification accelerates churn rather than reversing it?) — preserved distinct per Group 6; challenge register

**Optional:**
- Futurist Q8 (Subscription fatigue and freemium evolution — economic model shift) — could fit Cluster 4 or Cluster 12

**Note:** Cluster 4 is the densest cluster (16 input → 5 output = 3.2× compaction). Three major mergers absorb 12 of the 16 inputs. SP1 must preserve: (a) Accountant's signature financial vocabulary (LTV:CAC, unit economics, 80/20 revenue attribution, break-even, burn rate, funding scenarios, LTV multipliers) across all 3 mergers + preserved-distinct questions — Accountant is the anchor persona for this cluster and ≥4 of 5 output questions must contain Accountant's financial vocabulary, (b) Questioner's paradigm-level challenge about whether 8-month-runway-driven decisions are themselves sound (Q12), (c) the unique user-segment-profitability framing from Accountant Q6. If Cluster 4 compacts to only "unit economics" + "runway modeling" without the Questioner paradigm challenge or the segment-profitability distinction, Cluster 4 loses critical texture.

**Accountant representation check:** 10 of Accountant's 11 questions flow into this cluster. Cluster 4 is load-bearing for Accountant persona representation. If Accountant appears in fewer than 4 of 5 Cluster 4 output questions, Accountant representation fails at the cell level.

### Cluster 5: User Overwhelm, Emotional Experience & Simplification Psychology

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged 47-second-session-emotional-texture question from Convergence Group 9 (anchored in AA Q4 + Empath Q6 + Questioner Q5 + DA Q7)
- Empath Q2 (The Psychology of "More" vs. "Better" — emotional function of bloat: safety blanket, reassurance of potential) — preserved distinct per Group 9
- Merged grief-and-loss question from Convergence Group 10 (anchored in AA Q9 + Empath Q3 + Empath Q10 + Empath Q12) OR preserve 2 of the 4 distinct — see note
- Empath Q11 (The Emotional Core Value — beyond usage data, emotional state users seeking: motivation, accountability, calm, connection, achievement) — preserved distinct; Empath signature

**Should include:**
- Empath Q4 (The Trust Deficit of Overbuilding — does 15-feature menu signal "we've got you covered" or "we're desperate"?) — Empath unique trust-signal framing
- First Principles Thinker Q5 (What does "simplification" actually mean from the user's perspective? — cognitive load vs. feature count) — FPT definitional

**Optional:**
- Audience Advocate Q2 (unarticulated needs users never complain about) — could fit Cluster 5 or Cluster 6
- Questioner Q7 (What identity have existing users built around the current app?) — identity register

**Note:** Cluster 5 is Empath-anchored (7 of 13 input questions from Empath). SP1 must preserve: (a) Empath's emotional-interior voice in ≥3 output questions — specifically the 47-second-texture merger (includes Empath Q6), the emotional-function-of-bloat framing (Q2), the emotional-core-value framing (Q11), and ideally one of the grief/identity framings (Q3/Q10/Q12). If only 1-2 Empath questions survive in Cluster 5, the persona's voice is lost on its primary cluster. (b) The 47-second-texture merger must preserve Empath's emotional vocabulary, not collapse to generic "user frustration" phrasing. (c) The grief/loss cluster (Group 10) should be handled via merger OR by preserving 2 of the 4 distinct — SP1 may choose but must have ≥2 voice-preserved emotional-loss questions either way. (d) FPT's definitional question about what "simplification" means from user perspective (Q5) should ideally appear; it prevents Cluster 5 from being purely affect-focused.

**Empath representation check:** 7 of Empath's 12 questions feed into Cluster 5. If Empath ends up with only 1 output question here, the persona fails cluster-level representation.

### Cluster 6: Equity, Accessibility & Differential User Impact

**Input questions:** 8
**Expected output questions:** 3
**Compaction:** 2.67×

**Must include:**
- Audience Advocate Q5 (Which features create barriers for users with different levels of tech literacy, language proficiency, or accessibility needs?) — AA signature equity framing
- Audience Advocate Q7 (How might the current notification and feature overload be disproportionately affecting certain user groups?) — AA disparate-impact framing
- Audience Advocate Q8 (What power dynamics are embedded in which features get considered "core" versus "nice-to-have"?) — AA power-dynamics framing

**Should include:**
- Audience Advocate Q6 (What might "essential" mean from the perspective of users with limited time, attention, or mental bandwidth?) — AA counter-frame to "essential" definition
- Audience Advocate Q3 (How might different user segments experience the app's bloat differently?) — AA demographic-journey framing
- Questioner Q5 (What does "overwhelming" actually mean to different user segments?) — bridges to Cluster 5 but fits Cluster 6 framing
- Audience Advocate Q13 (What opportunities exist to understand users' contexts beyond their in-app behavior?) — AA contextual-research framing

**Optional:**
- None

**Note:** Cluster 6 is AA-dominant (7 of 8 input questions from AA). SP1 must preserve AA-distinctive equity framings in all 3 output questions — not collapse to a generic "inclusive design" question. Specifically: (a) accessibility-and-literacy barriers framing (Q5), (b) differential-notification-impact framing (Q7), (c) power-dynamics in feature-definition framing (Q8). These three carry AA's fine-grained equity dimensions. A Cluster 6 with a single AA question plus two questions from other clusters is a scored failure — AA is the load-bearing voice for equity on this topic, and collapsing AA's 8 questions to a single generic question eliminates the equity dimension.

**AA representation check:** 7 of AA's 14 questions land in Cluster 6. AA must have ≥3 questions in Cluster 6's output (regardless of mergers, since AA dominates).

### Cluster 7: User Co-creation, Migration Communication & Transition Trust

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged user-co-creation question from Convergence Group 11 (anchored in AA Q10 + Questioner Q14 + AI Q11)
- Merged migration-and-trust-rebuilding question from Convergence Group 12 (anchored in AA Q11 + AA Q14 + AI Q9 + DA Q12)
- Merged language-framing question from Convergence Group 13 (anchored in Questioner Q13 + Empath Q5) — on "focus vs. simplification" narrative choice
- Analyst Q8 (Communication Strategy Framework — optimal sequence/messaging; metrics) — preserved distinct per Group 13; tactical communication

**Should include:**
- Devil's Advocate Q6 (How do we avoid angering passionate minorities? — sunsetted features as premium add-ons; data export) — preserved distinct per Group 3; tactical
- Systems Thinker Q4 (Communication strategy preventing "Shifting the Burden" pattern — communication creating dependency)
- Questioner Q15 (What if we gradually hid features rather than removing them outright? — sunset approach) — bridges to Cluster 10

**Optional:**
- Empath Q12 (The Belonging Paradox) — if not in Cluster 5
- Audience Advocate Q9 (feature reduction as simplification or loss?) — if not in Cluster 5

**Note:** Cluster 7 has 13 input compacting to 4 with 3 mergers. SP1 must preserve: (a) the co-creation merger capturing AA's agency framing, Questioner's paradigm reframing, and AI's experimental framing, (b) the migration-and-trust-rebuilding merger capturing AA's repair framing, AI's migration-with-grace framing, and DA's practical migration-path question, (c) the language-framing question from Questioner+Empath capturing the focus-vs-simplification narrative choice, (d) Analyst's tactical communication-sequence-and-measurement framing. If Cluster 7 compacts to a single "how do we communicate cuts to users?" question, it loses the co-creation distinction (vs. announcement), the trust-repair framing, the narrative-choice question, and the tactical-sequence question — four distinct registers collapsing to one.

### Cluster 8: Team Morale, "Killing Darlings" & Engineering Emotional Investment

**Input questions:** 9
**Expected output questions:** 3
**Compaction:** 3.0×

**Must include:**
- Merged team-morale question from Convergence Group 14 (anchored in DA Q10 + Empath Q7 + Empath Q9 + ST Q8)
- Merged team-reimagined question from Convergence Group 15 (anchored in AI Q6 + AI Q10) — forward-looking team-day-to-day vision
- Empath Q8 (Burnout as a Symptom — team's burnout from 15 features vs. knowing none are good enough) — preserved distinct; Empath signature challenging framing

**Should include:**
- Appreciative Inquirer Q3 (Team's Brightest Moments — retrospective energizing conditions) — preserved distinct per Group 15; retrospective strengths
- Systems Thinker Q14 (Team capacity change after simplification — excess capacity leading to scope creep back to bloat) — ST distinctive warning
- Questioner Q16 (How might the team's emotional attachments to features mirror users'?) — preserved distinct per Group 14; paradigm reframing

**Optional:**
- Appreciative Inquirer Q10 (Team-Aligned Product Vision — already in Group 15 merger)

**Note:** Cluster 8 has 9 input compacting to 3. The team-morale merger (Group 14) captures 4 questions into 1 output. The team-reimagined merger (Group 15) captures 2 questions into 1 output. The third must-include is Empath Q8 (burnout as symptom). SP1 must preserve: (a) the team-morale merger with Empath's emotional-interior register preserved (grief of killed darlings, fear of "good enough") and ST's leverage-point framing, (b) AI's forward-looking team-reimagined vision — the strengths-based register, (c) Empath Q8's signature challenging framing (is burnout from 15 features or from knowing none are good enough?). A Cluster 8 without Empath's distinctive challenging framing on the burnout-as-symptom paradigm becomes purely a DA+AI operational team-management cluster.

### Cluster 9: Metrics Redefinition, Validation & Post-Launch Measurement

**Input questions:** 12
**Expected output questions:** 3
**Compaction:** 4.0× (highest compaction in the cell)

**Must include:**
- Merged post-simplification metrics framework question from Convergence Group 16 (anchored in Analyst Q10 + Q11 + Q12 + ST Q11)
- First Principles Thinker Q2 (Which features are causally linked to retention versus merely correlated?) — preserved distinct per Group 16; FPT causal-inference definitional
- Merged simplification-failure-modes question from Convergence Group 17 (anchored in DA Q1 + DA Q8)

**Should include:**
- Questioner Q9 (What would happen if we defined success as retention rather than engagement?) — preserved distinct per Group 16; paradigm reframing
- Systems Thinker Q2 (Metrics predicting simplified-app retention — reinforcing loop cutting features keeping users marginally engaged) — ST unique feedback-loop warning
- Devil's Advocate Q4 (Features poorly executed vs. users don't want — A/B test before cutting) — preserved distinct per Group 17
- Appreciative Inquirer Q11 (First Experiments — small low-risk tests this month) — AI experimental register

**Optional:**
- Devil's Advocate Q5 (Simplification accelerating churn) — could fit here or Cluster 4

**Note:** Cluster 9 has the highest compaction (4.0×) in the cell. This is acceptable because two major mergers (Group 16 main metrics framework + Group 17 simplification-failure-modes challenge) efficiently absorb 6 of 12 inputs. SP1 must preserve: (a) the metrics-framework merger with Analyst's dashboard/A-B/North-Star vocabulary preserved and ST's "don't optimize the wrong thing" warning embedded, (b) FPT's causal-inference definitional question (Q2) — the correlation-vs-causation distinction is critical to the whole measurement strategy, (c) the simplification-failure-modes merger capturing DA's skepticism about whether simplification even solves the problem. If Cluster 9 compacts to "what metrics do we use post-launch?" without FPT's causal-inference framing or DA's failure-mode skepticism, the measurement discussion becomes one-dimensional.

### Cluster 10: Transition Strategy — Incremental vs. Clean Relaunch

**Input questions:** 10
**Expected output questions:** 3
**Compaction:** 3.33×

**Must include:**
- Merged clean-vs-incremental economics question from Convergence Group 8 (anchored in Accountant Q8 + Analyst Q9)
- Systems Thinker Q10 (Should we simplify incrementally or relaunch from scratch — "erosion of goals" pattern) — preserved distinct per Group 7 (Group was actually Group 8 here); ST archetype framing
- Devil's Advocate Q11 (What if we can't ship a simplified product within 8 months because remaining features are more complex than estimated?) — DA tactical warning

**Should include:**
- Devil's Advocate Q12 (Are we assuming existing users will tolerate radical simplification without warning or migration support?) — preserved distinct per Group 12; can also fit Cluster 7
- Systems Thinker Q6 (What happens to user behavior during 3-6 month withdrawal period after feature removal?) — ST unique time-delay framing
- Questioner Q15 (What if we gradually hid features rather than removing them outright?) — sunset strategy; bridges to Cluster 7

**Optional:**
- Accountant Q8 already in merger (reminder for bookkeeping)
- Systems Thinker Q9 (runway × validation delay) — already in Group 7 merger in Cluster 4

**Note:** Cluster 10 at 3 output questions captures the strategic-choice theme. SP1 must preserve: (a) the clean-vs-incremental comparative-economics merger with Accountant's marketing-cost framing ($50-100K, app store ranking reset) and Analyst's risk-probability framing, (b) ST's "erosion of goals" archetype framing specifically (the name of this system dynamic is ST's signature vocabulary), (c) DA's timeline-feasibility warning (Q11 — 8 months may be too short if remaining features need rebuilds). If Cluster 10 compacts to a single "should we go incremental or big-bang?" question without Accountant's economic framing or ST's named-archetype framing, the strategic-choice complexity is lost.

### Cluster 11: Market Positioning, Growth Strategy & Competitive Dynamics

**Input questions:** 9
**Expected output questions:** 3
**Compaction:** 3.0×

**Must include:**
- Merged structural-advantage-vs-specialists question from Convergence Group 18 (anchored in Questioner Q4 + Q17 + FPT Q9)
- Questioner Q18 (How might the "swiss army knife" critique actually be a strength? — problem not breadth but curation/presentation/guidance) — preserved distinct per Group 18; paradigm reframing
- Systems Thinker Q13 (What happens to competitive position if we simplify while competitors continue adding features? — "worse before better" situation) — preserved distinct per Group 18; ST system-dynamics framing

**Should include:**
- Appreciative Inquirer Q5 (The App Users Champion — three years out; word-of-mouth; indispensable daily routine) — AI aspirational framing
- Appreciative Inquirer Q8 (Amplifying What Works — structures/practices reliably amplifying strengths) — AI structural-strengths framing
- Systems Thinker Q12 (How will simplified app attract new users differently — promise/delivery alignment) — ST unique acquisition framing
- Questioner Q19 (What would competitors do if we simplified successfully? — defensive/offensive opportunities) — paradigm reframing

**Optional:**
- Questioner Q20 (How does "feature bloat" look different in the social fitness category?) — category-specific dynamics

**Note:** Cluster 11 has 9 input compacting to 3 with 1 major merger. SP1 must preserve: (a) the structural-advantage merger capturing Questioner's user-choice-reasons + Questioner's unique-combination + FPT's structural-advantage-vs-specialists all in one coherent question, (b) Questioner's paradigm reframing (Q18 — swiss-army-critique as strength), (c) ST's worse-before-better system-dynamics framing (Q13). If Cluster 11 compacts to a single "how do we position vs. competitors?" question, it loses the paradigm reframing (Q18), the system-dynamics archetype (Q13), and the structural-advantage definitional depth from FPT.

### Cluster 12: Product Reimagination, Category Evolution & Future Horizons

**Input questions:** 16
**Expected output questions:** 4
**Compaction:** 4.0×

**Must include:**
- Representative Futurist question on digital minimalism OR unbundling trend (Futurist Q1 OR Q2) — capturing the app-fatigue / single-purpose-advantage trend
- Representative Futurist question on AI-first fitness OR wearable integration (Futurist Q3 OR Q6) — capturing the near-future-standard / commoditization-pressure trend
- First Principles Thinker Q8 (What would a zero-based budget approach to product features look like? — starting from scratch today; maybe simplification is the wrong frame) — FPT definitional

**Should include:**
- First Principles Thinker Q1 (What fundamental human need does this app actually satisfy?) — FPT definitional; could also fit Cluster 1
- Representative Futurist question on category convergence OR privacy-first OR subscription-fatigue (Futurist Q7 / Q10 / Q8) — capturing business-model or positioning trend
- Representative Futurist question on community renaissance OR social-through-purpose (Futurist Q11 OR Q4) — capturing social-positioning trend
- Representative Futurist question on hybrid fitness OR AR/VR (Futurist Q5 OR Q12) — capturing category-evolution trend

**Optional:**
- Futurist Q9 (Data portability as competitive advantage) — specific trend
- Accountant's Q10 funding-scenario question if not placed in Cluster 4
- Appreciative Inquirer Q12 (Building from Existing Assets) — could fit here or Cluster 10

**Note:** Cluster 12 has 16 input questions compacting to 4 (4.0× compaction, tied with Cluster 9 for highest). This is the Futurist cluster (11 of 12 Futurist questions feed in). SP1 must preserve: (a) **Futurist trend-extrapolation representation in ≥2 output questions** — at minimum one "tech category trend" (AI/wearables/AR-VR) and one "business/behavioral trend" (digital minimalism/subscription fatigue/privacy/community). Futurist's 12 questions cannot all survive at 4-question target; the synthesis must sample 2-3 Futurist questions that best represent the diverse trend territory. (b) FPT's zero-based-budget definitional challenge (Q8) — this is the definitional counterpart to Futurist's trend-extrapolation, preventing Cluster 12 from becoming purely trend-alignment. (c) Ideally FPT Q1 (fundamental human need) as a second FPT question, OR in Cluster 1.

**Futurist sampling strategy:** The 11-12 Futurist questions cover 12 distinct trends. Synthesized output should sample across 4 trend categories: (1) **app-category evolution** (digital minimalism, unbundling, hybrid fitness), (2) **technology-platform shifts** (AI-first, wearables, AR/VR), (3) **business model trends** (subscription fatigue, data portability, freemium), (4) **social/community trends** (purpose-driven social, community renaissance, privacy-first). SP1 scoring should accept any 2-3 Futurist questions covering ≥2 of these 4 categories as adequate trend representation.

**Cliff function warning:** If Cluster 12 compacts to <2 Futurist questions AND no FPT content, both personas' distinctive Cluster 12 contribution is eliminated. This is a hard scored failure. Unlike other clusters where Tier 1 backup personas cushion voice-loss, Cluster 12 is carried 100% by Futurist (dominant) + FPT (secondary). There is no Tier 1 backup.

---

## Synthesized Output Summary (Target 41)

| Cluster | Target Qs | Must | Should | Optional |
|---|---|---|---|---|
| 1 Core Value | 4 | 3 | 4 | 2 |
| 2 Segmentation | 3 | 2 | 3 | 2 |
| 3 Technical Debt | 3 | 3 | 0 | 0 |
| 4 Economics/Runway | 5 | 5 | 2 | 1 |
| 5 Emotional/Overwhelm | 4 | 4 | 2 | 2 |
| 6 Equity/Accessibility | 3 | 3 | 4 | 0 |
| 7 Migration/Co-creation | 4 | 4 | 3 | 2 |
| 8 Team Morale | 3 | 3 | 3 | 1 |
| 9 Metrics | 3 | 3 | 4 | 1 |
| 10 Transition Strategy | 3 | 3 | 3 | 2 |
| 11 Market Positioning | 3 | 3 | 4 | 1 |
| 12 Reimagination/Trends | 4 | 3 | 4 | 3 |

Must totals: 39 (just below 41 target — reflects Must items including mergers that absorb multiple input questions, with the remaining 2 slots filled by Should selections in Clusters 1, 11, 12, or similar).
Target total: 41 — scored against output count regardless of whether slots are filled by mergers.
Should totals: 36 (slack/band above target — synthesizer chooses which Should items fill remaining slots).
Optional totals: 18 (reserved for synthesizer-judgment additions).

**Range bands:**
- 37 (= 41 minus 4 cuts from lowest-priority Must slots in Clusters 2, 6, 8, 9)
- 46 (= Must + top 7 Should selections distributed across clusters)

---

## Questions Expected to Be Dropped

These inputs should **not** survive synthesis (either merged into the above outputs or not topically represented):

| Question | Rationale |
|---|---|
| Analyst Q1 (Feature Engagement Matrix) | Merged into Convergence Group 1 output |
| Questioner Q2 (features causing user outrage) | Merged into Convergence Group 1 output |
| First Principles Thinker Q3 (MVP solving problem better than nothing) | Merged into Convergence Group 1 output |
| Analyst Q2 (Cohort Segmentation Framework) | Merged into Convergence Group 2 output |
| Devil's Advocate Q2 (power users skewing metrics) | Merged into Convergence Group 2 output |
| Devil's Advocate Q3 (single "core value" assumption) | Merged into Convergence Group 2 output |
| Questioner Q3 (what 8% do differently) | Merged into Convergence Group 2 output |
| Audience Advocate Q12 (small but passionate user bases) | Merged into Convergence Group 3 output |
| Systems Thinker Q3 (passionate bases as future-of-product) | Merged into Convergence Group 3 output |
| First Principles Thinker Q6 ("killing darlings" product suicide) | Merged into Convergence Group 3 output |
| Analyst Q3 (Feature Interaction & Dependency Mapping) | Merged into Convergence Group 4 output |
| Analyst Q6 (Technical Debt Quantification) | Merged into Convergence Group 4 output |
| Devil's Advocate Q9 (cutting increasing technical debt) | Merged into Convergence Group 4 output |
| Systems Thinker Q7 (technical debt constraining removals) | Merged into Convergence Group 4 output |
| Questioner Q10 (dependencies vs. dependents) | Merged into Convergence Group 4 output |
| Analyst Q4 (Unit Economics of Feature Simplification) | Merged into Convergence Group 5 output |
| Accountant Q1 (unit economics per feature) | Merged into Convergence Group 5 output |
| Accountant Q2 (revenue attribution across feature set) | Merged into Convergence Group 5 output |
| Accountant Q3 (maintenance cost per active user) | Merged into Convergence Group 5 output |
| Analyst Q7 (Churn Risk Assessment Model) | Merged into Convergence Group 6 output |
| Accountant Q4 (churn cost vs. feature elimination) | Merged into Convergence Group 6 output |
| Accountant Q5 (retention improvement economics) | Merged into Convergence Group 6 output |
| Analyst Q5 (Runway Optimization Scenarios) | Merged into Convergence Group 7 output |
| Accountant Q9 (team reallocation economics) | Merged into Convergence Group 7 output |
| Accountant Q10 (funding scenario modeling) | Merged into Convergence Group 7 output |
| Accountant Q11 (post-simplification operating budget) | Merged into Convergence Group 7 output |
| Systems Thinker Q9 (runway × validation delay) | Merged into Convergence Group 7 output |
| Accountant Q8 (clean relaunch vs. incremental economics) | Merged into Convergence Group 8 output |
| Analyst Q9 (Incremental vs. Big-Bang Transition Analysis) | Merged into Convergence Group 8 output |
| Audience Advocate Q4 (emotional states opening app) | Merged into Convergence Group 9 output |
| Empath Q6 (Anxiety of Abundance — 47s texture) | Merged into Convergence Group 9 output |
| Questioner Q5 (what "overwhelming" means) | Merged into Convergence Group 9 output |
| Devil's Advocate Q7 (47s as confusion not disinterest) | Merged into Convergence Group 9 output |
| Audience Advocate Q10 (genuine user co-creation) | Merged into Convergence Group 11 output |
| Questioner Q14 (involve users in decisions) | Merged into Convergence Group 11 output |
| Appreciative Inquirer Q11 (First Experiments) | Merged into Convergence Group 11 output |
| Audience Advocate Q11 (rebuild trust with burned users) | Merged into Convergence Group 12 output |
| Audience Advocate Q14 (relaunch as repair opportunity) | Merged into Convergence Group 12 output |
| Appreciative Inquirer Q9 (Migration with Grace) | Merged into Convergence Group 12 output |
| Devil's Advocate Q12 (tolerating radical simplification) | Merged into Convergence Group 12 output |
| Questioner Q13 (focus vs. simplification framing) | Merged into Convergence Group 13 output |
| Empath Q5 (Emotional Permission to Simplify — narrative choice) | Merged into Convergence Group 13 output |
| Devil's Advocate Q10 (team morale maintenance) | Merged into Convergence Group 14 output |
| Empath Q7 (Grief of Killed Darlings) | Merged into Convergence Group 14 output |
| Empath Q9 (Fear of "Good Enough") | Merged into Convergence Group 14 output |
| Systems Thinker Q8 (team morale leverage points) | Merged into Convergence Group 14 output |
| Appreciative Inquirer Q6 (Team Reimagined) | Merged into Convergence Group 15 output |
| Appreciative Inquirer Q10 (Team-Aligned Product Vision) | Merged into Convergence Group 15 output |
| Analyst Q10 (Redefining the North Star) | Merged into Convergence Group 16 output |
| Analyst Q11 (A/B Testing Framework) | Merged into Convergence Group 16 output |
| Analyst Q12 (Post-Launch Validation Dashboard) | Merged into Convergence Group 16 output |
| Systems Thinker Q11 (success metrics — avoid optimizing wrong thing) | Merged into Convergence Group 16 output |
| Devil's Advocate Q1 (users want this app in any form) | Merged into Convergence Group 17 output |
| Devil's Advocate Q8 ("simplified" = "better" assumption) | Merged into Convergence Group 17 output |
| Questioner Q4 (why users choose over single-purpose) | Merged into Convergence Group 18 output |
| Questioner Q17 (unique combination in single app) | Merged into Convergence Group 18 output |
| First Principles Thinker Q9 (structural advantage vs. specialized tools) | Merged into Convergence Group 18 output |

(56 input questions drop into mergers. Remaining 128 − 56 merged = 72 unmerged questions. Of those, ~25 flow directly to the 41 target output as distinct-preserved questions, and ~47 Should/Optional candidates depend on which slots the synthesizer fills. Note that the 11-12 Futurist questions alone represent 11 input questions mostly dropping — only 2-3 Futurist questions survive in output.)

**Note on Futurist drops:** 9-10 of Futurist's 12 questions will be dropped from synthesis (not merged — simply not selected) because the cluster-12 target of 4 output questions can include at most 2-3 Futurist questions. This is a feature, not a bug: Futurist generates a broad trend-landscape at high volume, and the synthesis samples representative trends rather than including all. SP1 should not penalize synthesis variants that drop 9 of 12 Futurist questions if 2-3 surviving questions cover ≥2 of the 4 trend categories (app-category / technology-platform / business-model / social-community).

**No "low-quality outliers" flagged.** TDA1 reports zero shortfalls for this cell. All input questions are high-quality Phase 2B output.

---

## Persona Representation Requirements

Minimum number of questions from each Synthesize-group persona that MUST be represented (verbatim or as anchor of a merger) in the output. Anchoring in a merger counts as representation for scoring purposes. This defines SQ3 (persona representation).

| Persona | Input Qs | Minimum Represented | Coverage Target | Must Clusters (at minimum) |
|---|---|---|---|---|
| Analyst | 12 | 6 | 50% | Clusters 1, 2, 3, 4, 7, 9 (must be in all 6); optional in 10 |
| Appreciative Inquirer | 12 | 5 | 42% | Clusters 1, 7, 8, 11 (must be in all 4); strong preference for 2 |
| Audience Advocate | 14 | 6 | 43% | Clusters 5, 6, 7 (must be in all 3); plus 3 of 1, 2, 9 |
| Devil's Advocate | 12 | 5 | 42% | Clusters 2, 3, 7, 9 (must anchor at least 3 mergers or appear distinct); optional in 4, 10 |
| Questioner | 20 | 6 | 30% | Clusters 1, 2, 4, 5, 7, 9, 11 (must anchor at least 3 mergers); paradigm reframings in Cluster 1 (Q11), 4 (Q12), 7 (Q13, Q14), 11 (Q18, Q19) |
| Systems Thinker | 14 | 5 | 36% | Clusters 1, 2, 3, 4, 7, 9, 10, 11 (must appear in at least 5); systems-archetype vocabulary in ≥4 output questions |
| Empath | 12 | 4 | 33% | Clusters 5, 8 (must be in both); emotional-interior voice in ≥3 output questions (primary in Cluster 5) |
| First Principles Thinker | 9 | 4 | 44% | Clusters 1, 3, 9, 12 (must be in at least 3); definitional register in Cluster 12 (must be ≥1) |
| Futurist | 12 | 3 | 25% | Cluster 12 (must — 2+ questions); Cluster 4 (Q8 subscription fatigue optional) |
| Accountant | 11 | 5 | 45% | Cluster 4 (≥4 — Accountant is load-bearing for Cluster 4 — 10 of 11 Accountant questions land here); Cluster 3 (≥1 — Q7 technical debt ROI) |

**Total minimum representation:** 49 persona-question-slots across 41 output questions (because mergers represent multiple personas simultaneously — e.g., the Group 4 merger represents 5 personas in one slot; the Group 5 merger represents 4 personas in one slot).

**Critical attention personas:**

1. **Appreciative Inquirer** — highest uniqueness score (11 of 12 fully unique). AI's strengths-framing ("peak user experiences beyond 47s," "features that sparked joy," "team's brightest moments," "hidden assets in user base," "app users champion," "team reimagined," "the One Thing evolution," "amplifying what works," "migration with grace," "team-aligned product vision," "first experiments," "building from existing assets") is easily domesticated into generic "best practices" or "lessons-learned" language. SP1 should check that AI's appreciative register survives in at least 4 output questions — not just that 5 of its questions are topically represented.

2. **Audience Advocate** — AA is load-bearing for Cluster 6 (7 of 8 Cluster 6 input questions from AA). AA's fine-grained equity dimensions (tech-literacy barriers, language-proficiency barriers, accessibility needs, disparate notification impact, power dynamics in "core" vs. "nice-to-have" definition, contextual-life-research beyond in-app behavior, what "essential" means for users with limited time/attention) are each distinct equity questions. SP1 must preserve ≥3 AA-distinctive equity framings in Cluster 6, not collapse to a generic "inclusive design" question.

3. **Empath** — Empath is load-bearing for Cluster 5 (7 of 12 Empath questions in Cluster 5). Empath's emotional-interior voice bridges Clusters 5 (safety-blanket/anxiety-of-abundance/grief/identity/core-value-feeling/belonging) and Cluster 8 (grief-of-killed-darlings/fear-of-good-enough/burnout-as-symptom). For this topic, Empath's 7 Cluster 5 questions are signature. SP1 must preserve ≥3 Empath questions with emotional-interior register intact — specifically the emotional-function-of-bloat (Q2), emotional-core-value (Q11), and one of the grief/identity framings (Q3/Q10/Q12).

4. **Accountant (Tier 3)** — Accountant contributes 11 questions, 10 of which concentrate in Cluster 4. Accountant's signature financial vocabulary (LTV:CAC, unit economics per feature, 80/20 revenue attribution, maintenance cost per active user, break-even analysis, funding scenario modeling, post-simplification operating budget, burn rate) cannot be domesticated to Analyst's "risk management" or "framework" register. SP1 must preserve Accountant's financial vocabulary in ≥4 of the 5 Cluster 4 output questions. A Cluster 4 without Accountant's specific financial vocabulary (even when mergers are anchored by Accountant) fails at cell level.

5. **First Principles Thinker** — small volume (9), 67% unique. FPT's definitional questions sit in framework territory across Clusters 1 (Q7 fundamental unit of value), 3 (Q4 rebuild threshold), 5 (Q5 what "simplification" means from user perspective), 9 (Q2 causation vs. correlation), 12 (Q1 fundamental human need, Q8 zero-based budget). If SP1 domesticates these into Analyst-style operational questions, FPT's reductive-inquiry voice is lost. Cluster 12 especially must preserve ≥1 FPT definitional question (Q8 ideally).

6. **Systems Thinker** — carries feedback-loop framing across multiple clusters (1, 2, 4, 7, 9, 10, 11). Its distinctive named-archetype vocabulary (Success to the Successful, Fixes that Fail, Shifting the Burden, Erosion of Goals, 3-6 month withdrawal period, excess capacity leading to scope creep, reinforcing dynamics, time delays) is unmatched elsewhere. SP1 must preserve ≥4 ST-distinctive questions with named-archetype vocabulary across the cell.

7. **Futurist** — high volume (12), very high uniqueness (11/12). However, only 3 of 12 should survive in output. Unlike other personas where uniqueness drives full representation, Futurist's 12-question breadth is by design — synthesis samples rather than preserves all. SP1 scoring for Futurist should be "≥2 of 4 trend categories covered" not "≥X questions preserved." Cluster 12 is load-bearing; Cluster 4 optional Futurist bridge via Q8 (subscription fatigue).

8. **Questioner** — 20 questions with 11 unique. Paradigm-level questions at merger-dilution risk include Q11 (1 feature MVP), Q12 (8-month runway distortion), Q13 (focus vs. simplification framing), Q18 (swiss-army critique as strength), Q19 (competitor responses to success). At least 3-4 Questioner paradigm reframings must survive as standalone output questions, not merged into broader category headers.

**Persona-voice preservation flag:** When Convergence Group 4 (Technical Debt, 5-way), Group 5 (Unit Economics, 4-way), Group 7 (Runway Economics, 5-way), Group 14 (Team Morale, 4-way), Group 16 (Metrics Framework, 4-way) are merged, the merged question should preserve at least 2 distinct persona registers (not just topical content from multiple personas). Group 5's merger must preserve Accountant's financial vocabulary in phrasing, not collapse to "what are feature economics?" generic.

---

## Dimension Balance Target

Based on input distribution across Synthesize-group only (128 questions):

**Input distribution (by B1 cluster primary-dimension):**
- Analytical (Clusters 1, 2, 4, 9): 52/128 = 40.6%
- Human-centered (Clusters 5, 6, 7, 8): 43/128 = 33.6%
- Creative (Cluster 12): 16/128 = 12.5%
- Strategic (Clusters 10, 11): 19/128 = 14.8%
- Tactical (Cluster 3): 8/128 = 6.3%

**Output target distribution (76 total = 41 synthesized + 35 appended):**

| Dimension | Synthesized (41) | Appended (35) | Total Output (76) | Target % |
|---|---|---|---|---|
| Analytical | 15 (Clusters 1 × 4, 2 × 3, 4 × 5, 9 × 3) | 0 (Append-group rarely analytical) | 15 | 19.7% |
| Human-centered | 14 (Clusters 5 × 4, 6 × 3, 7 × 4, 8 × 3) | 7 (Storyteller 7 emotional-vignette) | 21 | 27.6% |
| Strategic | 6 (Clusters 10 × 3, 11 × 3) | 3 (Connector 3 cross-domain strategic isomorphism bridges) | 9 | 11.8% |
| Creative | 4 (Cluster 12) | 18 (Visionary 7 + Connector 5 + Constraint Flipper 6) | 22 | 28.9% |
| Tactical | 3 (Cluster 3 × 3) | 0 | 3 | 3.9% |
| Provocative (carve-out) | 0 | 7 (Provocateur 7) | 7 | 9.2% |

**Target balance (5-dimension + Provocative carve-out):**
- Analytical: 19.7% | Human-centered: 27.6% | Creative: 28.9% | Strategic: 11.8% | Tactical: 3.9% | Provocative: 9.2%

**If re-normalized to D2's five dimensions (Provocative folded 50% Creative + 50% Strategic):**
- Analytical: 19.7% | Human-centered: 27.6% | Creative: 33.5% | Strategic: 16.4% | Tactical: 3.9% ≈ 101.1% (rounding variance)

**Comparison with youth-mentorship/high and property-management/high:**
- property-management/high: Strategic 28.1%, Analytical 16.3%, Creative 23.1%, Tactical 16.3%, Human-centered 23.8%
- youth-mentorship/high: Human-centered 30.2%, Creative 27.4%, Strategic 20.4%, Analytical 15.1%, Tactical 3.5%
- mobile-app/high: Analytical 19.7%, Human-centered 27.6%, Creative 33.5%, Strategic 16.4%, Tactical 3.9%

Key differences:
- **Creative** is highest here (33.5%) — driven by: (a) Cluster 12 Futurist-anchored 16-question input cluster + (b) Append stream dominance of Visionary (7) + Connector (8) + Constraint Flipper (6) = 21 Creative Append questions (60% of Append). The topic is a category-reimagination decision (what is a mobile fitness app for, in an era of digital minimalism + wearable commoditization + AI-first fitness), which naturally draws Creative framings.
- **Analytical** is higher than youth-mentorship (19.7% vs. 15.1%) but lower than property-management (28.1%). The topic has dense analytical/economic content (Analyst + Accountant contribute 23 questions to Cluster 4 alone, plus metrics/segmentation/dependency clusters), but the Append-heavy Creative content dilutes the dimension share in the total output.
- **Human-centered** is similar to youth-mentorship (27.6% vs. 30.2%) — Empath and AA contribute heavily to Clusters 5, 6, 7, 8.
- **Strategic** is moderate (16.4%) — split across Cluster 10 (transition strategy) and Cluster 11 (market positioning). Neither is dominant; mobile-app's strategic content is less concentrated than property-management's business-planning strategic content.
- **Tactical** is low (3.9%) — only Cluster 3 is Tactical. Matches youth-mentorship's low Tactical share.

**Effort-level adjustment note:** At high effort, the Append-group at high effort (35 questions — mid-range of evaluation set) deposits substantial Creative content directly: Visionary 7 + Connector 8 + Constraint Flipper 6 = 21 Append Creative. The Synthesize stream contributes 4 Creative from Cluster 12. Total Creative = 25/76 = 33%. This topic's Creative share exceeds youth-mentorship/high (27%) and property-management/high (23%) — a topic-character signal that mobile-app is particularly Creative-heavy.

**Scoring tolerance:** Each dimension ±3 percentage points counts as on-target. ±5 points counts as acceptable. Beyond that, flag for SP1 investigation.

**Specific dimension watch:**
- If **Creative < 25%**, the Append stream is under-filled or Visionary/Connector/Constraint Flipper contributions have been stripped. Also check Cluster 12 Futurist sampling.
- If **Analytical > 30%**, Clusters 1, 2, 4, or 9 have expanded beyond targets; check for over-compaction of Human-centered content.
- If **Human-centered < 22%**, Clusters 5, 6, 7, or 8 are being under-represented — check whether Empath/AA voices were lost in synthesis.
- If **Strategic > 22%**, Cluster 10 or 11 has absorbed content from other clusters.
- If **Tactical > 7%**, Cluster 3 has expanded beyond its target.

**Topic-character signal for cross-topic analysis:** The Creative heaviness (33.5% target) reflects the topic's "what should this category become?" nature. Synthesis prompts that preserve Creative-heavy output on this cell are handling this topic well; synthesis variants that collapse Creative content into generic Strategic framings are domesticating the distinctive reimagination voice.

**No GT1 watchlist dimension impact** — this cell is NOT on the watchlist, so no composition-alternative analysis is needed for dimension balance. The targets above are canonical for this cell.

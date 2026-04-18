# career-change — high — Synthesis Target

**Input count (N):** 172 total (137 Synthesize + 35 Append)
**Synthesize-group input count:** 137 (the subset the synthesis step operates on)
**Append-group input count:** 35 (all 35 flow through B4 — at high effort Tier 1 Perspective appends all 5-8 per persona; Constraint Flipper Tier 2 appends all 6 on this constraint-rich topic; Connector Tier 3 replaces Analogist and appends all 8)

**Expected output count (M):** 80 total (range 73–87, target 80)
- Synthesized questions: 45 (range 40–50, target 45)
- Appended questions: 35 (exact — all 35 at high effort per D1 "No selection needed — append everything" for Tier 1 Perspective, plus Constraint Flipper all 6, Connector all 8 as Analogist-replacement)

**Compaction ratio N/M (Synthesize stream):** 137/45 = 3.04× (range 2.74–3.43, target 3.04)
**Compaction ratio N/M (total):** 172/80 = 2.15× (range 1.98–2.36, target 2.15)
**Cluster count C in output:** 12 (range 11–13, target 12 — matches B1)

**Scoring convention:** Target = point estimate for headline scoring. Range = pass/fail band. Outside-range results scored with severity proportional to distance from nearest band edge.

**Reference:** `persona-selection-guide_Phase2B.md` projects high-effort total output at ~55–90 questions. Our target of 80 sits in the upper-middle of that range — slightly smaller than youth-mentorship/high (86) due to no Politician Append stream (career-change's Append roster is Provocateur 7 + Storyteller 7 + Visionary 7 + Constraint Flipper 6 + Connector 8 = 35; youth-mentorship adds Politician 10 = 44). The Synthesize stream (137) is the second-largest across the 10 topics, driving a slightly higher Synthesize output (45) than the median high-effort cell (41-44).

**Comparison with youth-mentorship/high (86 target):** The 80 target is 7% smaller than youth-mentorship's 86. This reflects:
- Synthesize stream is similar (137 vs. 135, reflecting 2 extra Synthesize questions here) → output 45 vs. 42 due to similar compaction (3.04× vs. 3.21×)
- Append stream is smaller (35 vs. 44, reflecting: no Politician Append (-10), same Provocateur 7, one more Storyteller (+1), same Visionary 7, one fewer CF (-1), larger Connector-replacing-Analogist (+1))

**Comparison with mobile-app/high (76 target):** The 80 target is 5% larger than mobile-app's 76. This reflects:
- Synthesize stream is larger (137 vs. 128) → output 45 vs. 41 at similar compaction
- Append stream is exactly the same size (35), with identical composition (Provocateur 7, Storyteller 7, Visionary 7, CF 6, Connector 8 both cases)

**Comparison with property-management/high (80 target):** Exact match. This reflects:
- Synthesize stream is smaller (137 vs. 146 at property-management/high) → output 45 vs. 44; slightly lower compaction here (3.04× vs. 3.32×) because career-change has more unique/distinct-voice questions (higher U at 37.2% vs. 33%).
- Append stream is similar (35 vs. 36).

**GT1 status:** NOT on watchlist. Targets below assume Accountant (Synthesize) + Connector (Append, Analogist-replacement) are the canonical Tier 3 composition. GT1 Rev 3 labels this cell high-confidence on both picks: strong financial-structure trigger ($45K savings, $22K existing loans, projected $150K+ JD debt, $82K foregone salary, $65-75K PI ceiling) justifies Accountant; strong inter-domain-reconciliation trigger (healthcare and legal-advocacy as distinct professional systems that constrain each other, the specific topic being "bridging careers across fields" — GT1's stated Connector trigger) justifies Connector over Analogist. **Lawyer is intentionally excluded** per the persona-selection guide's explicit note that career-change is a Lawyer false positive. No ambiguity at the Tier 3 composition layer.

---

## Target Output Structure

The 45 synthesized questions distribute across the 12 B1 clusters. Cluster-level compaction varies: high-convergence clusters compact more aggressively; single-persona or highly-distinct-voice clusters compact minimally.

### Cluster 1: Financial Viability, Break-Even Economics & Debt-to-Income Sustainability

**Input questions:** 22
**Expected output questions:** 5
**Compaction:** 4.4×

**Must include:**
- Merged financial-trajectory question from Convergence Group 1 (anchored in Accountant Q1 + Analyst Q1 + DA Q3 + Questioner Q9) — the core break-even/payback framing.
- Merged runway-and-emergency-buffer question from Convergence Group 2 (anchored in Accountant Q5 + Analyst Q3 + DA Q1) — the $45K-over-3-years math and contingency.
- Merged debt-structure-and-LRAP question from Convergence Group 3 (anchored in Accountant Q2 + Q3 + Analyst Q2 + DA Q2) — the debt-landscape and repayment framings.

**Should include:**
- Accountant Q4 (opportunity cost of advancing in nursing vs. starting over — NP, management, specialized roles advancement; compound against PI attorney starting/growth curve) — distinct from Group 1 because it's about nursing-side advancement opportunity cost specifically.
- Accountant Q7 (age-timed financial milestones — home ownership, family formation, retirement savings acceleration; adjustments to expected timeline) — distinct life-stage financial framing.

**Optional:**
- Accountant Q6 (risk-adjusted return; graduation with only traditional legal job prospects at corporate firms misaligned with values).
- Accountant Q8 (emotional burnout as financial risk factor — forfeited nursing seniority + law school debt if burnout re-emerges).
- Devil's Advocate Q5 (Plan B financial failure — cannot secure PI position, must pivot).

**Note:** Cluster 1 compacts aggressively (22 → 5 = 4.4×) because the financial cluster has the tightest cross-persona convergence in the data set. The three mergers (Groups 1, 2, 3) capture 11 of 22 input questions. The remaining two output slots preserve: (a) Accountant Q4's nursing-side-advancement-opportunity-cost framing (distinct from the forward-looking break-even), and (b) Accountant Q7's age-timed-milestones framing (life-stage-specific, not recovery-curve-specific). SP1 must preserve: (i) the complete financial-trajectory decomposition via Group 1 merger, (ii) the runway/emergency-buffer specifics via Group 2 merger, (iii) the debt/LRAP mechanics via Group 3 merger, (iv) the nursing-advancement-opportunity-cost via Accountant Q4, (v) the age-timed-milestones via Accountant Q7. A Cluster 1 missing any of the three Group mergers is a scored failure; missing both Q4 and Q7 is a partial-credit deduction.

### Cluster 2: Motivation Diagnosis — Push vs. Pull, Calling vs. Escape

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged motivation-diagnosis-protocol question from Convergence Group 4 (anchored in Analyst Q9 + Questioner Q1 + DA Q6 + AA Q6 + Empath Q1 + FPT Q3) — the six-probe diagnostic framing.
- Merged specific-patient-memory question from Convergence Group 21 (anchored in Questioner Q2 + Q3 + Empath Q2 + FPT Q2) — the "which moments crystallized the pull" framing.

**Should include:**
- Empath Q3 (dream vs. dread — 3am feelings about the change; excited/possible vs. anxious/fear) — distinct somatic register not captured in the motivation-diagnosis merger.
- Empath Q5 (what does burnout actually feel like for you — specific emotional texture: compassion fatigue, systemic frustration, physical exhaustion, loss of meaning) — distinct diagnostic of the burnout itself, not of the motivation.

**Optional:**
- Appreciative Inquirer Q1 (peak moments of impact — most alive, aligned over 8 years ICU + 2 refugee volunteering) — AI strengths-retrospective framing; could also fit Cluster 12 (values).

**Note:** Cluster 2 anchors the central-diagnosis question of the brainstorm. The two mergers capture 10 of 13 input questions. The Empath Q3 and Q5 preservations are essential — they represent the somatic and texture-specific diagnostics that the motivation-diagnosis-protocol merger enumerates but cannot fully express at question-level. SP1 must preserve: (a) the six-probe protocol question, (b) the specific-patient-memory origin question, (c) at least one of Empath Q3 / Q5 preserving the somatic register. A Cluster 2 that merges Empath Q3 and Q5 into the motivation-diagnosis-protocol question loses the specific emotional-texture inquiry and is a scored partial failure.

### Cluster 3: Burnout Transfer Risk & Sustainability of Public Interest Practice

**Input questions:** 13
**Expected output questions:** 4
**Compaction:** 3.25×

**Must include:**
- Merged burnout-transfer-mechanism question from Convergence Group 5 (anchored in ST Q2 + DA Q9 + Questioner Q13 + ST Q5) — structural-parallel + prevention-strategies framing.
- Merged trauma-stewardship question from Convergence Group 6 (anchored in AA Q8 + Empath Q6 + Questioner Q14) — how trauma shows up differently and what transfers.
- Merged feedback-loop-adaptation question from Convergence Group 12 (anchored in DA Q10 + DA Q7 + Empath Q4) — how to adapt to losing immediate-impact feedback.

**Should include:**
- Appreciative Inquirer Q8 (learning from sustainable advocates — studying lawyers who thrived long-term; structures/practices you already know you need) — AI's strengths-based sustainability register, distinct from the diagnostic-risk framings.
- Analyst Q15 (burnout profiles comparison — specific drivers in ICU vs. PI law) — detailed-inventory framing distinct from the structural-pattern merger.

**Optional:**
- Appreciative Inquirer Q3 (sustaining commitment — practices/boundaries making volunteer + ICU work sustainable; capacity for sustained engagement).

**Note:** Cluster 3 preserves three distinct registers on the burnout question: (a) the structural-mechanism diagnosis (Group 5 merger), (b) the specific-trauma-context differences (Group 6 merger), (c) the control-loss/feedback-loop adaptation (Group 12 merger). Plus AI's aspirational "what does thriving look like" and Analyst's specific-driver inventory. SP1 must preserve all three mergers and at least one of AI Q8 or Analyst Q15. A Cluster 3 missing the trauma-stewardship or feedback-loop merger degrades the cluster's distinctiveness and is a scored partial failure.

### Cluster 4: Nursing-to-Law Skill Transfer & Unique Value Proposition

**Input questions:** 14
**Expected output questions:** 3
**Compaction:** 4.67×

**Must include:**
- Merged skill-transfer-catalog question from Convergence Group 7 (anchored in Analyst Q5 + DA Q12 + Questioner Q5 + FPT Q5 + Questioner Q8) — the comprehensive (a/b/c/d) transfer taxonomy.
- Merged credential-leverage question from Convergence Group 8 (anchored in Analyst Q6 + Analyst Q8 + AI Q4 + AA Q15) — the hidden-assets + practice-niches framing.

**Should include:**
- Analyst Q7 (learning curve comparison — transition into nursing vs. law school; genuine overlaps vs. zero-base areas) — learning-mechanics framing distinct from transfer-taxonomy.

**Optional:**
- Questioner Q7 (the credibility question — nursing background as credential vs. liability).

**Note:** Cluster 4 compacts 14 → 3 via two dense mergers capturing 9 of 14 questions. The Analyst Q7 preservation is the third output because the learning-mechanics question (how friction compares) is orthogonal to the transfer-taxonomy (what transfers). SP1 must preserve: (a) the skill-transfer-catalog merger with the a/b/c/d structure, (b) the credential-leverage merger specifying the immigration niches, (c) the learning-mechanics comparison. A Cluster 4 that collapses the mergers into a single "skills from nursing to law" question loses 70% of the specific content.

### Cluster 5: Hybrid & Alternative Pathways (Non-JD Routes to Impact)

**Input questions:** 17
**Expected output questions:** 4
**Compaction:** 4.25×

**Must include:**
- Merged pathway-enumeration question from Convergence Group 9, Output 1 (anchored in Analyst Q14 + DA Q13 + ST Q14 + Questioner Q17 + Q18 + Q20 + Accountant Q10 + Q11 + Q12 + FPT Q10) — full configuration-space enumeration across 4 category types.
- Merged framing-critique question from Convergence Group 9, Output 2 (same anchors) — the binary-frame critique and reversibility.

**Should include:**
- Accountant Q9 (part-time law school while maintaining nursing income — financial/time trade-off; 4-5 year timeline; sustainability of combining high-stress ICU and legal education) — specific financial/temporal analysis of the part-time path, distinct from the general enumeration.
- Systems Thinker Q11 (reversible system design — leave of absence, part-time nursing during school; flexible gates) — specific reversibility-design framing.

**Optional:**
- Systems Thinker Q7 (leverage-point identification — minimum structural intervention; 1/10 the disruption).
- First Principles Thinker Q7 (time-value rebuild from first principles — competency-based, apprenticeship, targeted expertise).

**Note:** Cluster 5 is the second-highest-compaction cluster (4.25×) because 10 questions converge tightly on the same theme. Group 9 is exceptional because it requires 2 output questions rather than 1 — one for path-enumeration (the catalog of options) and one for framing-critique (the decision architecture). The Accountant Q9 and ST Q11 preservations add depth on specific sub-paths (part-time JD economics, reversibility mechanics). SP1 must preserve both Group 9 outputs and at least one of Accountant Q9 / ST Q11. A Cluster 5 that produces only 1 output on the hybrid theme loses either the enumeration or the framing critique — either direction is a scored failure.

### Cluster 6: Experiential Low-Risk Testing Before Committing

**Input questions:** 10
**Expected output questions:** 2
**Compaction:** 5.0×

**Must include:**
- Merged experiential-test-protocol question from Convergence Group 10 (anchored in Analyst Q10 + DA Q14 + ST Q13 + AI Q11 + Questioner Q12 + Questioner Q19) — the 60-90 day multi-probe protocol with pre-specified evidence thresholds.

**Should include:**
- Systems Thinker Q8 (delay effects and decision quality — 7-10 year feedback latency; leading indicators before committing) — distinct from the immediate-testing framing; this is about the *long-term* validation challenge.

**Optional:**
- Questioner Q11 (opportunity-cost question — what you're *not* doing during 3 years; certainty of lost time vs. possibility of better fit).

**Note:** Cluster 6 is the highest-compaction cluster (5.0×). The Group 10 merger captures 6 of 10 questions. The ST Q8 preservation is essential because it introduces the long-delay-feedback framing that the immediate-testing merger does not address — together they create a 2-timescale decision framework. SP1 must preserve: (a) the test-protocol with explicit pre-specified evidence thresholds (anti-confirmation-bias framing), (b) the long-delay/leading-indicators framing. A Cluster 6 that produces only the testing merger without the delay-effects framing scores as partial-credit.

### Cluster 7: Identity, Meaning & The ICU-to-Law-Student Reconstruction

**Input questions:** 10
**Expected output questions:** 4
**Compaction:** 2.5×

**Must include:**
- Merged identity-reconstruction question from Convergence Group 11 (anchored in ST Q1 + DA Q11 + ST Q4 + Empath Q7) — the identity-loop + competence-cycle + existential-helper framing.

**Should include:**
- Empath Q8 (the invisible transition — what family is actually worried about; grieving the expected person; how fear lands in body) — family-dynamics register distinct from the self-identity framing.
- Empath Q9 (recognition and respect — ICU heroic/essential vs. PI invisible/bureaucratic) — social-recognition register.
- Empath Q11 (the community you're leaving and the one you're joining — nursing culture vs. law's emotional ecosystem) — culture-transition register.

**Optional:**
- Audience Advocate Q10 (identity crossing — insider credibility as healthcare professional vs. outsider in immigration law) — community-trust identity framing.
- Empath Q10 (what kind of witness do you want to be — ICU witness vs. legal witness).

**Note:** Cluster 7 compacts less aggressively (2.5×) because Empath's identity questions each occupy distinct sub-registers (self-identity, family-dynamics, social-recognition, cultural-community) that are not cross-persona convergent but are within-topic distinct. SP1 must preserve: (a) the identity-reconstruction merger covering the loop+competence+helper-existential frame, (b) at least 2 of the 3 Empath distinct-register questions (Q8 family, Q9 recognition, Q11 community). A Cluster 7 with only the merger loses the distinct emotional-register dimensions and scores as partial-credit.

### Cluster 8: Immigrant Community Lived Experience & Authentic Partnership

**Input questions:** 12
**Expected output questions:** 5
**Compaction:** 2.4×

**Must include:**
- Merged specific-moment-solvable-by-law question (anchored in AI Q2 + Questioner Q4 per Group 13) — the "which moments from volunteer/ICU experience revealed the legal-intervention need" framing.
- Audience Advocate Q2 (service with dignity — what it feels like navigating the immigration legal system; frustration, confusion, fear, relief) — preserved distinct per Group 13.
- Audience Advocate Q7 (authentic partnership — pursuing transition *with* communities rather than deciding for them) — preserved distinct per Group 13; methodology register.

**Should include:**
- Audience Advocate Q4 (power dynamics — who has voice; who is systematically excluded) — structural-power register.
- Consolidated AA access-gap question (AA Q3 + Q5 + Q11 compacted internally per Group 14 guidance) — unarticulated-needs + cultural-bridges + falls-through-cracks consolidated into one.

**Optional:**
- Audience Advocate Q9 (accessibility trade-offs — law school distancing from communities during 3 years).
- Audience Advocate Q13 ("crazy" question — family view of risk vs. immigrant/refugee view of risk).
- Audience Advocate Q10 (identity crossing — could also fit Cluster 7).

**Note:** Cluster 8 compacts less aggressively (2.4×) because Audience Advocate's 8 Cluster-8 questions each occupy genuinely distinct sub-territory within community-service. The internal AA consolidation (Group 14: 3 questions → 1 output) is the key tactical move to compact AA's volume without losing the three sub-registers. SP1 must preserve: (a) the origin-moment merger, (b) AA Q2 service-with-dignity, (c) AA Q7 authentic-partnership, (d) AA Q4 power-dynamics, (e) the consolidated access-gap question. A Cluster 8 that collapses AA Q2 and Q7 into a single "client experience and partnership" question loses the felt-experience vs. methodology distinction and scores as partial-credit.

### Cluster 9: Market Realities — PI Law Job Market, Age, Debt-to-Salary Geometry

**Input questions:** 11
**Expected output questions:** 4
**Compaction:** 2.75×

**Must include:**
- Analyst Q13 (structural realities constrain PI law careers — national positions, hiring trends, geography, funding stability) — market-structure inventory.
- Devil's Advocate Q4 (age-related career risk — 32 vs. 23-year-old competitiveness) — preserved distinct per Group 17.

**Should include:**
- Devil's Advocate Q5 (Plan B financial failure — graduation with debt but no PI position; pivot to traditional corporate that conflicts with values).
- Systems Thinker Q6 (erosion-of-goals pattern — corporate-law drift; "Success to the Successful" resource-flow; keeping-options-open as goal-drift).

**Optional:**
- Devil's Advocate Q15 (law school performance risk — nursing vs. law cognitive demands; LSAT practice as academic-fit signal) — per Group 18, unique; preserve in full.
- Futurist Q7 (PI law compensation models shifting — LRAP expansion; programs to track).
- Futurist Q8 (age-based career timing norms changing — multiple careers; non-linear paths).

**Note:** Cluster 9 has moderate compaction (2.75×) because the market-reality questions occupy distinct analytical-strategic sub-territories (market structure, age competitiveness, Plan B risk, corporate-drift pattern). SP1 must preserve: (a) Analyst Q13 market-structure inventory, (b) DA Q4 age-risk, (c) at least one of DA Q5 Plan B / ST Q6 corporate drift. A Cluster 9 that merges DA Q4 with Futurist Q8 loses DA's risk-advocacy voice (per Group 17 "preserve distinct").

### Cluster 10: Systems-Level Structural Parallels & Root-Cause Framing

**Input questions:** 9
**Expected output questions:** 4
**Compaction:** 2.25×

**Must include:**
- Merged systemic-diagnosis question from Convergence Group 16 (anchored in Questioner Q15 + FPT Q4) — "is your current system the problem OR is the target system the solution" combined framing.
- Systems Thinker Q9 (system boundary analysis — moving from healthcare to legal vs. becoming the bridge; exponential value at intersection) — unique; preserved.
- Systems Thinker Q10 (second-order career consequences — doors that close forever when exiting; unvisible doors) — unique; preserved.

**Should include:**
- Systems Thinker Q15 (success metric evolution — how metrics change at 5/10/20 years; early-warning signs) — unique; preserved.

**Optional:**
- Systems Thinker Q12 (opportunity-cost feedback loop — leading indicators over time; "hard because transitions are hard" vs. "hard because wrong system").
- First Principles Thinker Q6 (regulatory capture — to what extent JD actually necessary vs. maintaining professional monopoly).

**Note:** Cluster 10 compacts moderately (2.25×). Systems Thinker dominates this cluster and each of Q9/Q10/Q15 occupies a distinct system-analysis register (boundary, second-order-consequences, metric-evolution) that must be preserved. The FPT+Questioner merger captures the 2-personas-on-same-theme case. A Cluster 10 missing ST Q9 (bridging vs. exiting) is a scored failure — that question is arguably the most important framing device in the entire test data for the person's decision.

### Cluster 11: Medical-Legal Intersection as Niche Specialty & Future Trends

**Input questions:** 11
**Expected output questions:** 3
**Compaction:** 3.67×

**Must include:**
- Merged thriving-intersection-infrastructure question from Convergence Group 19 (anchored in AI Q5 + AI Q10 + Futurist Q4) — the 10-year vision + law-school infrastructure-building framing.

**Should include:**
- Futurist Q10 (specialized expertise commanding premiums — medical-legal-advocate-for-immigrants as differentiated specialty; clients/organizations valuing it) — market-positioning register.
- Consolidated Futurist trends question (compacting Futurist Q1 accelerating immigration legal needs + Futurist Q2 technology transforming + Futurist Q3 non-traditional paths into one output) — trends-watchlist register.

**Optional:**
- Futurist Q5 (trauma-informed practice becoming standard — ICU crisis experience increasingly valuable).
- Futurist Q6 (healthcare advocacy professionalizing — nursing skills in immigrant healthcare access without JD) — also relates to Cluster 5 hybrid.
- Futurist Q11 (cross-sector mobility — structuring law school to preserve options).

**Note:** Cluster 11 compacts 11 → 3 via one cross-persona merger and one within-persona consolidation (Futurist's 6 trends-focused questions become 1-2 outputs). SP1 must preserve: (a) the thriving-intersection merger with infrastructure-building specifics, (b) Futurist Q10 market-positioning, (c) at least one consolidated trends-watchlist question. A Cluster 11 that produces 5+ Futurist trends questions as separate outputs violates within-persona compaction norms (each Futurist question is a trend; consolidation is required).

### Cluster 12: Fundamental Motivations, Values Hierarchy & Success Definition

**Input questions:** 11
**Expected output questions:** 3
**Compaction:** 3.67×

**Must include:**
- First Principles Thinker Q1 (fundamental motivation assessment — stripping titles, essential work day-to-day) — FPT definitional register; anchor question for cluster.
- Appreciative Inquirer Q5 (the thriving intersection — 10 years from now in role that doesn't exist) — could also fit Cluster 11; AI's visionary-integrated register.

**Should include:**
- Analyst Q11 (rank decision criteria by weight — income, alignment, balance, engagement, impact, status; weighted ranking) — decision-theoretic register.

**Optional:**
- Analyst Q12 (what does a "good enough" outcome look like — minimum thresholds; PI law meeting those based on actual outcomes).
- First Principles Thinker Q8 (opportunity-cost fundamental equation — core value you seek to maximize; true metrics vs. proxies).
- Appreciative Inquirer Q6 (ripple effects of alignment — flourishing effects on family, community, healthcare professionals).
- Appreciative Inquirer Q7 (best-case ecosystem — supports, relationships, structures in flourishing vision).
- Appreciative Inquirer Q9 (financial architecture for purpose — transition as investment plan).
- Appreciative Inquirer Q12 (existing resources for the journey — 8 years crisis management, 2 years volunteering).

**Note:** Cluster 12 compacts via selection rather than merger — the cluster's 11 questions are each distinct-register values-framing questions (FPT definitional, AI visionary, AI strengths-inventory, Analyst weighted-ranking, etc.) and merging collapses genuinely distinct content. SP1 must preserve: (a) FPT Q1 fundamental-motivation, (b) AI Q5 thriving-intersection (or AI Q7 best-case-ecosystem as substitute), (c) Analyst Q11 weighted-ranking (or Analyst Q12 good-enough-outcome). The cluster functions as a values-orientation anchor for the entire question set. A Cluster 12 that produces only AI-dominated output misses the FPT definitional and Analyst decision-theoretic registers.

---

## Dropped Questions

Questions that do not survive synthesis — either because they are within-persona repetitions captured by cluster-level output, or because they are covered more completely by other questions in the same cluster.

**Within-persona repetitions compacted to cluster output (counted as "covered, not dropped"):**

- Audience Advocate Q3, Q5, Q11 (access-gap / cultural bridges / falls-through-cracks) → consolidated to 1 cluster-8 output per Group 14.
- Systems Thinker Q3, Q6 (financial-feedback / corporate-law-drift erosion-of-goals) → 1 of them preserved in Cluster 9; other compacted.
- Futurist Q1, Q2, Q3 (accelerating needs / technology transformation / non-traditional careers) → consolidated to 1 trends-watchlist output per Group 22 guidance.
- Futurist Q5, Q6, Q11 (trauma-informed / healthcare-advocacy-professionalizing / cross-sector-mobility) → compacted to 1 additional output or deferred if space-constrained.

**True drops (covered by mergers):**

- Analyst Q1 (breakeven timeline — absorbed into Group 1 merger).
- Analyst Q2 (law school debt structures — absorbed into Group 3 merger).
- Analyst Q3 (personal burn rate / risk tolerance — absorbed into Group 2 merger).
- Devil's Advocate Q1, Q2, Q3, Q6, Q9, Q10, Q12 (7 of DA's 15 absorbed into various mergers).
- Questioner Q1, Q2, Q3, Q5, Q8, Q9, Q12, Q13, Q14, Q19 (10 of Questioner's 20 absorbed into various mergers).
- Empath Q1, Q2, Q4, Q6, Q7 (5 of Empath's 11 absorbed into various mergers).
- Systems Thinker Q1, Q2, Q4, Q5, Q13 (5 of ST's 15 absorbed into various mergers).
- First Principles Thinker Q2, Q3, Q4, Q5, Q10 (5 of FPT's 10 absorbed into various mergers).

Total absorbed-into-merger count: ~55 of 137 Synthesize = ~40% merge rate. Remaining ~82 questions map to the 45 output questions via 1:1 preservation (51 unique questions per B2 U = ~37.2%), sub-cluster consolidation (~20), or compaction overlap.

---

## Persona Representation

Expected percentage of each Synthesize persona's questions surviving in the 45-question output (directly or via merger representation):

| Persona | Input | Questions Directly Preserved | Questions in Mergers | Total Representation | % |
|:---|:---|:---|:---|:---|:---|
| Analyst | 15 | 5 | 4 mergers | ~9 | 60% |
| Appreciative Inquirer | 12 | 5 | 3 mergers | ~8 | 67% |
| Audience Advocate | 15 | 5 | 1 merger + 1 internal consolidation | ~7 | 47% |
| Devil's Advocate | 15 | 2 | 6 mergers | ~8 | 53% |
| Questioner | 20 | 3 | 7 mergers | ~10 | 50% |
| Systems Thinker | 15 | 4 | 3 mergers | ~7 | 47% |
| Empath | 11 | 4 | 4 mergers | ~8 | 73% |
| First Principles Thinker | 10 | 2 | 4 mergers | ~6 | 60% |
| Futurist | 12 | 2 | 1 merger + 1 internal consolidation | ~4 | 33% |
| Accountant | 12 | 4 | 1 merger | ~5 | 42% |

**Representation analysis:**
- **Highest representation:** Empath (73%), AI (67%) — expected given these personas dominate the emotional/values clusters where compaction is lower and distinct registers are preserved.
- **Lowest representation:** Futurist (33%) — expected given Futurist's 12 questions heavily internally-converge on "current trends that affect the decision." Per persona-selection guide (Tier 2, Futurist): "~29% temporal lens anti-pattern rate overall (41% on experiential topics)" — career-change is experiential. Within-persona consolidation is appropriate; the 33% representation preserves the distinctive strategic-positioning questions and drops the trend-decoration-bolted-on anti-pattern questions.
- **Watch:** Audience Advocate (47%) — 8 of AA's 15 questions land in Cluster 8 (community service), so the cluster-level compaction forces AA's representation below 50%. The 3 preserved AA questions (Q2 dignity, Q7 partnership, Q4 power + consolidated access-gap) preserve AA's distinct sub-registers. If SP1 output shows AA below ~35%, the community cluster's distinct-register preservation has likely failed.
- **Watch:** Accountant (42%) — 8 of Accountant's 12 questions land in Cluster 1, where 3 mergers absorb them aggressively. The 4 distinct preservations (Q4, Q7, plus 2 merger representations) cover the distinct-framing territory. If SP1 output shows Accountant below ~30%, the financial cluster has over-compacted.

**No persona should fall below 30% representation.** Questioner + FPT overlap (~43-47% per persona guide) means their combined representation should be ~50-60% of combined input (30 questions → ~15-18 output); each individually at ~50-60% is in-range.

---

## Dimension Balance

Target distribution across the 5 dimensions for the 45-question Synthesize output:

| Dimension | Count | % | Cluster Sources |
|:---|:---|:---|:---|
| Analytical | 13 | 29% | Cluster 1 (5), Cluster 10 (4), Cluster 6 (2), plus parts of Cluster 9 (2) |
| Strategic | 11 | 24% | Cluster 5 (4), Cluster 9 (2), Cluster 11 (3), plus parts of Cluster 4 (2) |
| Tactical | 6 | 13% | Cluster 6 (2), plus parts of Cluster 1 (2) and Cluster 5 (2) |
| Human-centered | 12 | 27% | Cluster 2 (4), Cluster 3 (4), Cluster 7 (4), plus parts of Cluster 8 shared |
| Creative | 3 | 7% | Cluster 12 (3) |

**Total: 45** (note: some questions span 2 dimensions; primary-dimension counts used)

**Balance analysis:**
- Analytical + Strategic = 53% — expected because career-change is a decision-analytic topic at its core.
- Human-centered = 27% — essential for the motivation/burnout/identity register; should not fall below 20%.
- Creative = 7% — below the other topics' creative shares because career-change is decision-focused rather than product-focused. The Append stream (especially Visionary 7 + Provocateur 7) provides the creative counterbalance, which is part of why Append preservation is critical for this topic.
- Tactical = 13% — on the low side; expected because most "testing" and "hybrid paths" questions operate at strategic-analytical altitude rather than operational-tactical.

**Dimension distribution is consistent with the decision-making topic type.** SP1 output with Analytical + Strategic < 45% or Human-centered < 20% indicates cluster-balance failure.

---

## Append Stream (from B4)

The 35 Append questions join the 45 Synthesized questions to produce the 80-question total output. Append stream detailed in `career-change_high_append-target.md` (B4). Summary:

| Persona | Append count | Selection | Method |
|:---|:---|:---|:---|
| Provocateur | 7 | All 7 | No selection needed at high effort |
| Storyteller | 7 | All 7 | No selection needed at high effort |
| Visionary | 7 | All 7 | No selection needed at high effort |
| Constraint Flipper | 6 | All 6 | Full append at high effort on constraint-rich topic |
| Connector | 8 | All 8 | Connector replaces Analogist per GT1; full append at high effort |
| **Total** | **35** | **35** | |

The Append stream's integration into the final output should interleave after Synthesize-stream clusters or form a dedicated "Perspective Questions" section. Integration mechanics specified in B4.

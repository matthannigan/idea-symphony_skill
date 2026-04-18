# school-consolidation — medium — Synthesis Target

**Input count:** 117 (79 Synthesize + 38 Append, of which 30 are selected: 5 per Perspective persona × 4 personas via round-robin + all 10 Politician per persona-selection-guide "All 8-10" Append rule for Politician)
**Synthesize-group input count:** 79 (the subset the synthesis step operates on)
**Expected output count:** 60 total (range 55–65, target 60)
- Synthesized questions: 30 (range 27–33, target 30)
- Appended questions: 30 (exact — 4 Perspective personas × 5 per D1 medium rule + Politician 10 per persona-selection-guide "All 8-10" Append rule)
**Compaction ratio (Synthesize stream):** 79/30 = 2.63 (range 2.4–2.9, target 2.6)
**Compaction ratio (total):** 117/60 = 1.95 (range 1.8–2.1, target 1.95)
**Cluster count in output:** 12 (range 11–13, target 12 — matches B1)

**Scoring convention:** Target = point estimate for headline scoring. Range = pass/fail band. Outside-range results are scored with severity proportional to distance from the nearest band edge.

**Reference:** `persona-selection-guide_Phase2B.md` projects medium-effort total output at ~45–65 questions. Our target of 60 sits at the upper end of that range because this cell's Synthesize input is 79 (middle of the guide's 50–80 range), the Append contribution is unusually high (30 vs typical 20 because Politician appends all 10), convergence density (53.0%) supports moderate compaction, and the 12-cluster structure is the cell's natural carve.

**Notable deviation from baseline norm:** Append quota is 30, not 20. Politician (Tier 3 Append, 10 questions) is added to the 4 Perspective personas × 5 quota = 20. Politician's D1 rule is "All 8-10" (append everything), not round-robin subset. This is expected and documented in `persona-selection-guide_Phase2B.md` Append Group table ("Politician — All 8-10"). See B4 file for Append detail.

**GT1 watchlist note:** This cell is on the GT1 Medium-confidence watchlist (TDA1 §5.1). GT1 called **Politician primary (Accountant also strong — tiebreaker)**; both triggers were genuinely strong but the 0-1 ceiling at medium effort forced a single pick. If SP1 produces anomalously poor scores here, re-check GT1 before blaming the synthesis prompt. The Connector-not-Analogist swap is separately confirmed (GT1 Rev 3 prescribes Connector for school-consolidation given cross-system-reconciliation nature).

---

## Target Output Structure

The 30 synthesized questions distribute across the 12 B1 clusters. Cluster-level compaction varies: high-convergence clusters compact more aggressively; single-persona or highly-distinct-voice clusters compact minimally.

### Cluster 1: Financial Analysis, Break-Even & Transition Costs

**Input questions (Synthesize-only):** 9 (B1 Synthesize-only count)
**Expected output questions:** 3
**Compaction:** 9/3 = 3.0×
**Must include:**
- Merged break-even question from Convergence Group 1 (anchored in Analyst Q1 + Devil's Advocate Q1 + Questioner Q5)
- Merged state-funding-risk question from Convergence Group 2 (anchored in Devil's Advocate Q2 + Questioner Q4)
- Analyst Q4 (debt and bond obligations across districts — pooling vs pre-consolidation voter responsibility) — unique financial-architecture angle, no convergent counterpart

**Should include:**
- Analyst Q5 (property tax bases and equalization) — distinct tax-mechanics angle from debt-pooling
- Analyst Q2 (unit economics at enrollment levels — fiscal floor) — lives on Cluster 1 ↔ Cluster 2 boundary (see ambiguity); could go either home

**Optional:**
- Analyst Q6 (decision framework prioritizing competing objectives) — could live here or Cluster 6 (Voter Approval) as framework for political trade-offs

### Cluster 2: Enrollment Dynamics & Long-Term Fiscal Sustainability

**Input questions (Synthesize-only):** 9 (B1 Synthesize-only count; 1 Visionary Append cross-ref excluded)
**Expected output questions:** 3
**Compaction:** 9/3 = 3.0×
**Must include:**
- Merged enrollment-as-symptom question from Convergence Group 3 (anchored in Devil's Advocate Q3 + Questioner Q2 + Systems Thinker Q9)
- Merged scenario-planning question from Convergence Group 4 (anchored in Analyst Q9 + Questioner Q6)
- Systems Thinker Q4 (Shifting the Burden — consolidation as temporary fix for enrollment decline) — distinct systems-archetype framing, preserved distinct per Group 4 rationale

**Should include:**
- Systems Thinker Q2 (delay effects obscuring true impact — early warning indicators) — distinct delay-asymmetry framing, preserved distinct per Group 4 rationale

**Optional:**
- Systems Thinker Q7 (Eroding Goals — silent standard-creep) — could live here or Cluster 8 (Educational Quality) depending on read

### Cluster 3: Facility Decisions, Maintenance & Capital Lifecycle

**Input questions (Synthesize-only):** 5 (B1 Synthesize-only count; 2 Append cross-refs — Connector, Politician — excluded)
**Expected output questions:** 2
**Compaction:** 5/2 = 2.5×
**Must include:**
- Merged facility-decision question from Convergence Group 5 (anchored in Analyst Q3 + Devil's Advocate Q4)
- Systems Thinker Q6 (Fixes that Fail both ways — close-too-much vs keep-too-much) — distinct systems-archetype framing, preserved distinct per Group 5 rationale

**Should include:**
- Appreciative Inquirer Q9 (facility decisions that create community value — repurposing as community assets) — unique AI strengths-register on facility-decisions; lives on Cluster 3 ↔ Cluster 10 boundary

**Optional:**
- — (Must + Should cover the cluster adequately)

**Note on Append flow:** Connector Q6 (adaptive reuse opportunity — closed-military-base parallel) and Politician Q5 (facility closure governance process) are in this cluster topically but route to Append per D1. Their distinctive framings (recombinant-reuse, governance-process-design) survive via Append.

### Cluster 4: Transportation Optimization & Commute Burden

**Input questions (Synthesize-only):** 6 (B1 Synthesize-only count; 1 Connector Append cross-ref excluded)
**Expected output questions:** 2-3 (target 3; see synthesizer-discretion note below)
**Compaction:** 6/2 = 3.0× or 6/3 = 2.0×
**Must include:**
- Merged transportation-optimization question from Convergence Group 6 (anchored in Analyst Q12 + Devil's Advocate Q8)
- Audience Advocate Q1 (Daily Journey — lost 1.5-2 hours daily) — preserved distinct per Group 6; lived-experience framing
- Audience Advocate Q4 (Special Needs Transportation — disabilities, medical, sensory) — unique equity-specific transportation dimension

**Should include:**
- Systems Thinker Q13 (transportation altering hidden curriculum — daily rhythm, fewer neighborhood peers) — distinct systems-dynamic framing

**Optional:**
- — (Must slots filled)

**Note on Append flow:** Connector Q3 (transportation-as-enrichment — mobile library/rural-healthcare parallel) is in this cluster topically but routes to Append per D1. Its recombinant-reframe (turning transportation into feature, not bug) survives via Append.

### Cluster 5: Governance Structure & Representation

**Input questions (Synthesize-only):** 4 (B1 Synthesize-only count; 6 Append cross-refs — Politician 4, Connector 2 — excluded)
**Expected output questions:** 2
**Compaction:** 4/2 = 2.0×
**Must include:**
- Merged governance-structure question from Convergence Group 7 (anchored in Analyst Q10 + Devil's Advocate Q7)
- Questioner Q10 (how could the new unified district preserve or enhance each town's connection to its school?) — paradigm-constructive framing, preserved distinct per Group 7

**Should include:**
- Appreciative Inquirer Q8 (governance that builds trust — weighted representation, advisory councils, participatory budgeting) — AI strengths-register on governance design; preserved distinct from merger

**Optional:**
- — (Must + Should cover the Synthesize-only inputs adequately; this is a 4-question cluster)

**Note on Append flow:** Politician Q4 (balancing representation), Q5 (facility closure governance), Q6 (formal/informal power), Q8 (school-as-town identity) flow to Append per D1. Connector Q4 (watershed district model) and Q1 (distributed identity) flow to Append per D1. This cluster is **heavily Append-populated** in the final output — the synthesis-side is 2 questions, but the cluster's governance/design content is carried primarily by 6 Append questions.

### Cluster 6: Voter Approval, Coalition & Political Feasibility

**Input questions (Synthesize-only):** 4 (B1 Synthesize-only count; 6 Append cross-refs — Politician 4, AI 1, ST 1 — excluded)
**Expected output questions:** 3
**Compaction:** 4/3 = 1.3×
**Must include:**
- Merged voter-approval-paradox question from Convergence Group 8 (anchored in Analyst Q8 + Devil's Advocate Q5)
- Questioner Q3 (why assume voter approval is the only legitimate path?) — paradigm challenge, preserved distinct per Group 8
- Analyst Q7 (irreducible minimums for stakeholder acceptance — red-line conditions per group) — unique analytical framing of stakeholder-veto-points

**Should include:**
- — (Must slots take 3 of 4 Synthesize inputs; the remaining input is Q12 which lives primarily in Cluster 13)

**Optional:**
- Questioner Q12 (what if consolidation fails at the ballot?) — lives on Cluster 6 ↔ Cluster 13 boundary; if preserved here, adds contingency-planning dimension

**Note on Append flow:** Politician Q1 (winning conditions), Q2 (endorsement sequencing), Q3 (message tailoring), Q7 (resistance diagnosis) flow to Append per D1. AI Q10 (coalition that already exists) flows to Append as AI voice on the same territory. Storyteller Q7 (The Wednesday Board Meeting) flows to Append. This cluster is **substantially carried by Append content** — the political vocabulary and coalition-building craft lives in the Append stream.

### Cluster 7: Union Contract Reconciliation

**Input questions (Synthesize-only):** 4 (B1 Synthesize-only count; 1 Politician Append cross-ref excluded)
**Expected output questions:** 2
**Compaction:** 4/2 = 2.0×
**Must include:**
- Merged union-contract question from Convergence Group 9 (anchored in Analyst Q13 + Devil's Advocate Q6)
- Systems Thinker Q12 (three-unions-become-one power dynamics, 5-10 year effects) — distinct systems-dynamic framing, preserved distinct per Group 9

**Should include:**
- — (Must slots cover this 4-question cluster)

**Optional:**
- — (Cluster 7 is a tight 4-question cluster; 2 output questions is appropriate)

**Note on Append flow:** Politician Q9 (union contract reconciliation as coalition risk — sequencing engagement) is in this cluster topically but routes to Append per D1.

### Cluster 8: Educational Quality, Curriculum & Programmatic Identity

**Input questions (Synthesize-only):** 5 (B1 Synthesize-only count; 1 Visionary Append cross-ref excluded)
**Expected output questions:** 3
**Compaction:** 5/3 = 1.7×
**Must include:**
- Merged educational-quality question from Convergence Group 10 (anchored in Analyst Q11 + Devil's Advocate Q10)
- Questioner Q1 (what do we assume about school size and educational quality?) — paradigm challenge, preserved distinct per Group 10
- Appreciative Inquirer Q7 (learning from what already works — amplifying each district's existing strengths) — AI strengths-register on educational design

**Should include:**
- Systems Thinker Q7 (Eroding Goals — silent standard-creep) — distinct systems-dynamic framing; lives on Cluster 8 ↔ Cluster 2 boundary

**Optional:**
- — (Must slots cover this 5-question cluster)

**Note on Append flow:** Visionary Q5 (distributed learning cooperative pluralism) flows to Append per D1. The paradigm-reframing "three educational philosophies available county-wide" is Visionary-signature; synthesis would strip it.

### Cluster 9: Teacher Recruitment, Retention & Professional Culture

**Input questions (Synthesize-only):** 2 (B1 Synthesize-only count)
**Expected output questions:** 1
**Compaction:** 2/1 = 2.0×
**Must include:**
- Merged teacher-recruitment question from Convergence Group 11 (anchored in Appreciative Inquirer Q6 + Devil's Advocate Q9)

**Should include:**
- — (small cluster; single merged output captures both voices)

**Optional:**
- — (small cluster)

**Note:** Cluster 9 is a small but 100%-convergent cluster. Compacting to 1 question is appropriate. Alternatively, if SP1 produces 2 output questions here (keeping AI and DA separate), scoring should be lenient — 2 is defensible but 1 is optimal per the clean convergence.

### Cluster 10: Town Identity, Community Attachment & Property Impact

**Input questions (Synthesize-only):** 7 (B1 Synthesize-only count; 5 Append cross-refs — Storyteller 2, Connector 2, Politician 1 — excluded)
**Expected output questions:** 3
**Compaction:** 7/3 = 2.3×
**Must include:**
- Merged town-impact question from Convergence Group 12 (anchored in Audience Advocate Q8 + AA Q9 + Questioner Q9 + Systems Thinker Q11)
- Appreciative Inquirer Q5 (redefining "our school" without losing community) — AI strengths-register, preserved distinct per Group 12
- Systems Thinker Q5 (Success to the Successful pattern — retained-school vs closed-school town divergence) — distinct systems-archetype framing

**Should include:**
- Audience Advocate Q15 (Language & Cultural Accessibility — translation services, cultural liaison) — boundary question with Cluster 11 per B1 ambiguity; could live either home

**Optional:**
- Appreciative Inquirer Q1 (what already makes these districts special?) — AI's foundation-preservation framing; could live here or as opening question of the synthesized output

**Note on Append flow:** Storyteller Q1 (The Last Day at Maple Grove Elementary), Q6 (Who Gets to Tell the History?) flow to Append per D1 — narrative-specific ritual/memory treatments that synthesis would strip. Connector Q1 (Town Identity as Distributed System) and Q2 (Community Hub Parallel) flow to Append per D1 — recombinant-model structural framings. Politician Q8 (school-as-town-identity challenge) flows to Append.

### Cluster 11: Student Experience, Equity & Daily Life

**Input questions (Synthesize-only):** 13 (B1 Synthesize-only count; 3 Storyteller Append cross-refs excluded; AA Q15 may shift to Cluster 10 per ambiguity)
**Expected output questions:** 5
**Compaction:** 13/5 = 2.6×
**Must include:**
- Audience Advocate Q2 (Belonging in Transition — merged-building shared identity) — preserved distinct per Group 13
- Audience Advocate Q3 (Invisible Losses — what doesn't show in metrics) — preserved distinct per Group 13
- Audience Advocate Q11 (Student Voice in the Process — priorities differing from adult financial/logistical focus) — preserved distinct per Group 13; structurally distinctive voice-in-process dimension
- Audience Advocate Q13 (Special Education Protections — IEP continuity, family-staff relationships) — unique equity-specific continuity dimension
- Audience Advocate Q4 (Special Needs Transportation) — already in Cluster 4 Must; cross-reference here for the equity-transportation-continuity triad (Q4 + Q13 + Q14). If Cluster 4 keeps AA Q4, Cluster 11 substitutes with Q14 (Extracurricular Access).

**Should include:**
- Audience Advocate Q7 (Working Families & Childcare — older-sibling care, schedule friction) — unique working-family-logistics dimension
- Audience Advocate Q14 (Extracurricular Access — 6am band, late sports pickups, participation fees) — unique access-inequality dimension
- Audience Advocate Q5 (Older Students, Younger Peers — K-12 buildings, age-inappropriate exposure) — distinct developmental-safety framing
- Appreciative Inquirer Q4 (school experience we want children to remember — 10-years-from-now graduate) — AI aspirational-register counterweight to AA deficit-framing

**Optional:**
- Audience Advocate Q10 (Volunteer & Participation Barriers) — lives on Cluster 11 ↔ Cluster 12 boundary; primary home is Cluster 12 but the family-access dimension fits here too
- Audience Advocate Q12 (Rural Realities — no reliable internet, unpaved roads) — same Cluster 12 primary

**Note:** Cluster 11 is one of the two largest clusters in the cell (tied with Cluster 10 at 12-14 questions). It is AA-dominated (8 of 13 synthesis-side) but contains the cell's richest student-dignity and family-equity content. Compacting below 4 output questions would hollow AA's signature territory. 5 is appropriate given 8 AA Synthesize questions.

**Note on Append flow:** Storyteller Q2 (Emma/Marcus single-mother), Q3 (Javier 8th-grader), Q5 (Day the Bus Route Changed) flow to Append per D1 — named-character narratives in this cluster's territory. These complement the AA synthesis content.

### Cluster 12: Stakeholder Access, Parent Voice & Participation Barriers

**Input questions (Synthesize-only):** 4 (B1 Synthesize-only count; 1 Storyteller Append cross-ref excluded)
**Expected output questions:** 2
**Compaction:** 4/2 = 2.0×
**Must include:**
- Merged participation-barriers question from Convergence Group 14 (anchored in Audience Advocate Q10 + AA Q12)
- Audience Advocate Q6 (Parent Trust & Access — administration 45-min away) — preserved distinct per Group 14; relational-trust framing

**Should include:**
- Questioner Q11 (who gains and who loses, how do we balance interests?) — unique compensation/transition-support framing

**Optional:**
- — (Must slots cover the 4 Synthesize inputs; this is a tight cluster)

### Cluster 13: Alternative Models, Phased Transition & Implementation Strategy

**Input questions (Synthesize-only):** 8 (B1 Synthesize-only count; 5 Append cross-refs — Connector 1, Visionary 3, Politician 1 — excluded)
**Expected output questions:** 3
**Compaction:** 8/3 = 2.7×
**Must include:**
- Merged alternative-models question from Convergence Group 15 (anchored in Devil's Advocate Q11 + Questioner Q8 + Systems Thinker Q8)
- Questioner Q13 (five-year phased consolidation with decision points — shared superintendents, joint programs) — preserved distinct per Group 15; process-design-within-consolidation angle
- Devil's Advocate Q12 (Insolvency as leverage — 2-year fund balance as negotiating position) — unique strategic-delay framing per Group 16

**Should include:**
- Analyst Q14 (systems integration complexity — SIS, financial software, special-ed, credentialing) — unique implementation-timeline-and-cost dimension
- Analyst Q15 (failure modes and their probabilities) — unique failure-scenario framing
- Appreciative Inquirer Q11 (experiments that build confidence — smaller-scale joint programs as quick wins) — AI strengths-register on phasing

**Optional:**
- Appreciative Inquirer Q2 (peak moments of district collaboration as foundation) — AI framing of existing collaborations as consolidation foundation; strong Should candidate

**Note on Append flow:** Connector Q5 (teacher-network), Q7 (healthcare-merger federated) flow to Append per D1 — recombinant-model structural framings. Visionary Q1 (learning ecosystem), Q3 (50-year horizon), Q4 (rural R&D) flow to Append per D1 — paradigm-alternative reframings. Politician Q10 (phasing consolidation to build momentum) flows to Append per D1. This cluster is **heavily Append-populated** — synthesis-side is 3 questions, but Append stream carries 5+ questions addressing the same territory through distinctive registers. Expected in the final output structure.

---

## Synthesized Output Summary (Target 30)

| Cluster | Target Qs | Must | Should | Optional |
|---|---|---|---|---|
| 1 Financial / Break-Even | 3 | 3 | 2 | 1 |
| 2 Enrollment Dynamics | 3 | 3 | 1 | 1 |
| 3 Facility Decisions | 2 | 2 | 1 | 0 |
| 4 Transportation | 3 | 3 | 1 | 0 |
| 5 Governance Structure | 2 | 2 | 1 | 0 |
| 6 Voter Approval | 3 | 3 | 0 | 1 |
| 7 Union Contract | 2 | 2 | 0 | 0 |
| 8 Educational Quality | 3 | 3 | 1 | 0 |
| 9 Teacher Recruitment | 1 | 1 | 0 | 0 |
| 10 Town Identity | 3 | 3 | 1 | 1 |
| 11 Student Experience | 5 | 5 | 4 | 2 |
| 12 Stakeholder Access | 2 | 2 | 1 | 0 |
| 13 Alternative Models | 3 | 3 | 3 | 1 |
| **Sum** | **35** | **35** | **16** | **6** |

**Must totals:** 35 — exceeds target of 30 by 5. To hit the 30-target, the synthesizer drops 5 Must-questions from the lowest-priority slots:

1. Cluster 11 (Student Experience) → drop AA Q4 cross-reference if it stays in Cluster 4 (expected); replace Must slot 5 with AA Q14 (Extracurricular Access). Net: no drop, but the 5 Cluster-11 Musts reshuffle.
2. Cluster 1 (Financial) → drop Analyst Q4 (debt/bonds) if bond-pooling content folds into the break-even merger. Preserves 2 of 3 Musts as distinct.
3. Cluster 4 (Transportation) → drop AA Q4 (special-needs transportation) and cover via Cluster 11 Must slot; **OR** keep AA Q4 in Cluster 4 and drop Cluster 11's equity-transportation-continuity triad to a pair.
4. Cluster 13 (Alternative Models) → drop DA Q12 (insolvency as leverage) if the merged-alternatives question can accommodate a leverage-framing sub-clause. **OR** keep distinct as tactical-leverage angle.
5. Cluster 8 (Educational Quality) → drop AI Q7 (amplifying existing strengths) if Cluster 13's AI Q11 (experiments) carries the AI-strengths-on-education load. **OR** drop AI Q7 and move Systems Thinker Q7 (Eroding Goals) to Must.

The drops above are the lowest-priority Must-tier questions. They would move to Should or Optional tiers under the 30-target budget.

**Should totals:** 16 (slack above target). **Optional totals:** 6 (reserved for synthesizer-judgment additions).

**Range 27–33 band:** 27 (= 30 target minus 3 cuts to lowest-priority Must in Clusters 1, 8, 11) / 33 (= 30 target plus 3 cuts reversed, adding back high-priority Shoulds from Clusters 11, 13, 1).

---

## Questions Expected to Be Dropped

These Synthesize-group inputs should **not** survive synthesis (merged or subsumed):

| Question | Rationale |
|---|---|
| Analyst Q1 (true break-even analysis) | Merged into Convergence Group 1 output |
| Devil's Advocate Q1 (transition costs vs long-term savings) | Merged into Convergence Group 1 output |
| Questioner Q5 (projected cost savings optimistic/temporary) | Merged into Convergence Group 1 output |
| Devil's Advocate Q2 (state funding verification) | Merged into Convergence Group 2 output |
| Questioner Q4 (12% increase hidden costs / strings) | Merged into Convergence Group 2 output |
| Devil's Advocate Q3 (consolidating accelerates decline) | Merged into Convergence Group 3 output |
| Questioner Q2 (enrollment decline as opportunity) | Merged into Convergence Group 3 output |
| Systems Thinker Q9 (restructure relationship to enrollment driver) | Merged into Convergence Group 3 output |
| Analyst Q9 (scenario planning tripwire indicators) | Merged into Convergence Group 4 output |
| Questioner Q6 (worst-case financial scenario) | Merged into Convergence Group 4 output |
| Analyst Q3 (full lifecycle cost picture) | Merged into Convergence Group 5 output |
| Devil's Advocate Q4 (deferred maintenance not solved) | Merged into Convergence Group 5 output |
| Analyst Q12 (transportation optimization) | Merged into Convergence Group 6 output |
| Devil's Advocate Q8 (transportation cost escalation) | Merged into Convergence Group 6 output |
| Analyst Q10 (optimal governance structure) | Merged into Convergence Group 7 output |
| Devil's Advocate Q7 (preventing larger-town dominance) | Merged into Convergence Group 7 output |
| Analyst Q8 (three separate voter approvals) | Merged into Convergence Group 8 output |
| Devil's Advocate Q5 (voter approval paradox) | Merged into Convergence Group 8 output |
| Analyst Q13 (union contract reconciliation costs) | Merged into Convergence Group 9 output |
| Devil's Advocate Q6 (union contract landmines) | Merged into Convergence Group 9 output |
| Analyst Q11 (measuring educational quality) | Merged into Convergence Group 10 output |
| Devil's Advocate Q10 (loss of competitive program differentiation) | Merged into Convergence Group 10 output |
| Appreciative Inquirer Q6 (teacher experience that attracts talent) | Merged into Convergence Group 11 output |
| Devil's Advocate Q9 (teacher recruitment assumption inverted) | Merged into Convergence Group 11 output |
| Audience Advocate Q8 (Town Identity Without a School) | Merged into Convergence Group 12 output |
| Audience Advocate Q9 (Property Values & Tax Perceptions) | Merged into Convergence Group 12 output |
| Questioner Q9 (what happens to a town when its school closes) | Merged into Convergence Group 12 output |
| Systems Thinker Q11 (school closures ripple through local economies) | Merged into Convergence Group 12 output |
| Audience Advocate Q10 (Volunteer & Participation Barriers) | Merged into Convergence Group 14 output |
| Audience Advocate Q12 (Rural Realities) | Merged into Convergence Group 14 output |
| Devil's Advocate Q11 (intermediate solutions unexplored) | Merged into Convergence Group 15 output |
| Questioner Q8 (alternative financial models) | Merged into Convergence Group 15 output |
| Systems Thinker Q8 (non-obvious leverage points) | Merged into Convergence Group 15 output |

(33 Synthesize questions drop into mergers. Remaining 79 − 30 target − 33 merged = 16 Should/Optional candidates, several of which also drop depending on slot availability. No "low-quality outliers" flagged — the test data has no filler in this cell; all drops are merge-driven.)

**Cross-stream awareness:** Politician has 10 append questions. Topic-convergence drops *do not apply* — all 10 Politician questions flow to Append intact, including those that overlap topically with synthesis convergence groups (Groups 7, 8, 9, 12, 15). Similarly, Storyteller (all 7), Visionary (all 6), Connector (all 8), and the selected Provocateur questions flow intact to Append — topical convergence with synthesis groups does not trigger synthesis merger for Append-routed personas.

---

## Persona Representation Requirements

Minimum number of questions from each Synthesize-group persona that MUST be represented (verbatim or as anchor of a merger) in the synthesized output. Anchoring in a merger counts as representation for scoring purposes.

| Persona | Input Qs | Minimum Represented | Coverage Target | Must Clusters |
|---|---|---|---|---|
| Analyst | 15 | 6 | 40% | Clusters 1, 4, 7, 13 (must be in at least 4 of these with multi-question representation in 1 or 13) |
| Appreciative Inquirer | 11 | 5 | 45% | Clusters 8, 10, 13 (must preserve AI strengths-register in at least 3 output questions — not just topical representation) |
| Audience Advocate | 15 | 7 | 47% | Clusters 4, 10, 11, 12 (must be in all 4, with multi-question representation in Cluster 11 — AA's dominant cluster) |
| Devil's Advocate | 12 | 5 | 42% | Clusters 1, 3, 6, 8, 13 (must anchor at least 3 mergers; DA is the highest-convergence-rate persona here at 92%) |
| Questioner | 13 | 5 | 38% | Clusters 5, 6, 8, 10, 13 (must anchor at least 2 mergers; must preserve Q1 paradigm challenge — school size assumption — as distinct) |
| Systems Thinker | 13 | 6 | 46% | Clusters 2, 10, 13 (must be in Cluster 2 with multi-question presence — Systems Thinker's signature territory here is Cluster 2 Enrollment Dynamics, with 4 of 10 cluster questions) |

**Total minimum representation:** 34 persona-question-slots across 30 output questions (because mergers represent multiple personas simultaneously).

**Critical attention personas:**
- **Appreciative Inquirer** has the highest uniqueness score in this cell (9 of 11 fully unique) and the most at-risk voice. AI's strengths-framing ("what already makes these districts special?" "peak moments of collaboration" "hidden assets in declining enrollment" "the school experience we want children to remember" "coalition that already exists") is easily domesticated into generic "community building" or "strengths-based" language. SP1 should check that AI's appreciative register survives in at least 3 output questions — not just that 5 of its questions are topically represented. AI-specific territory includes Cluster 10 (Town Identity) where AI Q5 must preserve the "expand 'our school' to 'our county's schools'" reframing, and Cluster 13 (Alternative Models) where AI Q11 (experiments) and Q2 (peak moments) offer distinctive appreciative-phased-approach angles.
- **Audience Advocate** contributes to 4 clusters with heavy Cluster 11 concentration (8 of 15 questions). The equity-and-experience lens must survive in Clusters 4, 10, 11, 12. Particularly at-risk: Q3 (Invisible Losses), Q4 (Special Needs Transportation), Q7 (Working Families), Q11 (Student Voice), Q13 (Special Education Protections), Q14 (Extracurricular Access), Q15 (Language/Cultural) — each covers a distinct dignity/equity dimension that general-equity mergers would lose. Cluster 11 compacting below 4 output questions would hollow AA's signature territory.
- **Systems Thinker** carries a different signature territory in this cell than in tool-library — here Cluster 2 (Enrollment Dynamics) is the systems-dynamic home with 4 of 10 cluster questions, not Cluster 11 (Long-term Dynamics) as in tool-library. Systems Thinker's contributions to Clusters 10 (Success to the Successful), 12 (Union power dynamics), 13 (leverage points) are also signature framings. If Cluster 2 compacts below 3 output questions, Systems Thinker's distinctive enrollment-dynamics framing is hollowed. Note that Systems Thinker's Q4 (Shifting the Burden) and Q7 (Eroding Goals) are system-archetype-specific framings that general mergers would strip.
- **Questioner**'s paradigm-level questions — Q1 (school size and educational quality assumption), Q2 (enrollment as opportunity), Q3 (voter approval as only legitimate path), Q10 (preserving town-school connection design), Q12 (failure contingency) — are high-value framings that get pulled into mergers as "one of several voices" and lose distinct credit. SP1 should verify these paradigm questions appear as distinct output questions where possible. Q1 is particularly at risk as meta-assumption.
- **Analyst** contributes broadly (15 questions across 5 clusters) and has 9 uniques. Representation is more naturally preserved through cluster-level participation than through solo-cluster survival. Set minimum at 6 of 15 (40%) spread across Clusters 1, 4, 7, 13. If the synthesizer compacts aggressively in Cluster 1 (financial), Analyst could lose its systematic-measurement angle there. Particularly at-risk: Q4 (debt/bonds), Q5 (tax bases), Q6 (decision framework), Q14 (systems integration), Q15 (failure modes) — each is a distinct analytical dimension that aggressive merger would flatten.

**Persona-voice preservation flag:** When Convergence Groups 1, 3, 12, 15 are merged, the merged question should preserve at least 2 distinct persona registers (e.g., Analyst's measurement + Devil's Advocate's challenge + Audience Advocate's experience). Generic-merger language that flattens into "what are the risks and opportunities of consolidation?" would fail voice-preservation scoring even if topically correct.

**Politician (Append-routed) note:** Politician is not in this Synthesize-group representation table because D1 routes it to Append. However, Politician representation IS scored in the Append target (B4) — all 10 Politician questions should appear in the final Append output. Any Politician question that fails to appear constitutes an Append-fidelity failure, not a synthesis-representation failure. Given the GT1 watchlist status of this cell, Politician's Append fidelity is a high-salience scoring dimension.

---

## Dimension Balance Target

Based on input distribution across Synthesize-group only (79 questions):

**Input distribution (by cluster primary-dimension, with orphan Provocateur carve-out):**
- Human-centered: 38/117 = 32.5% overall (Clusters 4, 10, 11, 12)
- Strategic: 51/117 = 43.6% (Clusters 1, 2, 5, 6, 9, 13)
- Tactical: 12/117 = 10.3% (Clusters 3, 7)
- Analytical: 6/117 = 5.1% (Cluster 8)
- Creative: 0/117 = 0.0% (no Synthesize-group Creative cluster — Creative enters via Append)
- Orphan/Provocative: 7/117 = 6.0% (Provocateur)

**Output target distribution (60 total = 30 synthesized + 30 appended):**

| Dimension | Synthesized (30) | Appended (30) | Total Output (60) | Target % |
|---|---|---|---|---|
| Human-centered | 13 (Clusters 4, 10, 11, 12) | 5 (Storyteller narrative arcs + Connector transportation-as-opportunity + Connector community-hub) | 18 | 30.0% |
| Strategic | 11 (Clusters 1, 2, 5, 6, 9, 13) | 12 (Politician's 10 governance/coalition + Visionary 50-year-horizon + Connector federated-healthcare) | 23 | 38.3% |
| Tactical | 3 (Clusters 3, 7) | 0 | 3 | 5.0% |
| Analytical | 3 (Cluster 8) | 0 | 3 | 5.0% |
| Creative | 0 (no pure-Creative Synthesize cluster) | 8 (Visionary paradigm reframings + Connector isomorphism/recombinant + Storyteller history-who-tells) | 8 | 13.3% |
| Provocative | 0 | 5 (Provocateur inversions) | 5 | 8.3% |

**Target balance:**
- Strategic: 38.3% | Human-centered: 30.0% | Creative: 13.3% | Provocative: 8.3% | Analytical: 5.0% | Tactical: 5.0%
- Sums to 99.9% (round-off).

**If re-normalized to D2's five dimensions (Provocative folded ~60% into Creative + ~40% into Strategic):**
- Strategic: 42% | Human-centered: 30% | Creative: 18% | Analytical: 5% | Tactical: 5% ≈ 100%

**Effort-level adjustment notes:**
- The **Strategic dimension dominance (~42% post-fold)** reflects the topic's heavy governance/economics/long-term-sustainability content. Consistent with tool-library/medium's 45% Strategic share — this appears to be a feature of multi-stakeholder institutional-change topics. Should not be flattened toward a generic 20%-per-dimension balance.
- The **low Analytical (5.1%) and Tactical (10.3%)** from Synthesize are structural — this topic's analytical questions concentrate in Cluster 8 (educational quality measurement, a small cluster) and tactical questions concentrate in Clusters 3 and 7 (facilities and union reconciliation, both small). School-consolidation is not a tactical-heavy topic; it's a strategic-and-human-centered topic.
- The **Politician's Append contribution (10 Strategic/governance questions)** inflates Strategic in the final output. Without Politician, the Strategic share would be ~32%. This is a real consequence of Tier 3 selection on this cell. **This is load-bearing for the GT1 watchlist — if Politician were replaced by Accountant (per the tiebreaker alternative), the Strategic skew would decrease and Analytical would increase materially.** See BL1 cell summary for discussion.
- **Human-centered (30%)** benefits from strong Audience Advocate + Appreciative Inquirer contributions in Clusters 10, 11, 12. This is well-balanced for a community-identity topic.
- **Creative (13.3%)** is notably higher than tool-library/medium (10.0%) because the Connector (cross-domain isomorphism/recombinant) and Visionary (paradigm reframings, rural-R&D, 50-year-horizon) contribute heavy Creative content at this cell. The Connector-not-Analogist swap amplifies the Creative dimension — Connector's isomorphism mode produces more distinctively-Creative content than Analogist's metaphor mode. This is a cell-specific feature driven by the GT1 Rev 3 Connector prescription.

**Scoring tolerance:** Each dimension ±4 percentage points counts as on-target. ±7 points counts as acceptable. Beyond that, flag for SP1 investigation.

**Outsize-Strategic-share flag for SP1:** the 42% Strategic share is a topic-driven signal amplified by Politician's Append-All inclusion. SP1 scoring should normalize dimension-balance expectations to input distribution rather than a generic 20%-per-dimension ideal. School-consolidation/medium is a Strategic-heavy cell by topic nature and by Tier 3 selection.

**Tier 3 counterfactual note:** If GT1 later revises the Tier 3 selection to Accountant (the strong tiebreaker runner-up), the dimension balance would shift substantially: Strategic drops to ~32%, Analytical rises to ~12-15% (Accountant's analytical-financial questions), Synthesize-input would become 79+8-10 = 87-89 (Accountant is Synthesize per D1, not Append), Append-output would drop to 20 (no Politician Append-All), total output would drop to ~50-55. This is a **material composition change**. If SP1 scoring anomalously flags this cell, re-running with Accountant instead of Politician is the primary diagnostic action.

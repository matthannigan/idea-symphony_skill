# mobile-app — low — Synthesis Target

**Input question count:** 72 (Synthesize-group only; Append-group of 29 is handled in B4)
**Expected synthesis output count:** 27 (range 23–31, target 27)
**Expected compaction ratio:** 72/27 = 2.67 (range 2.32–3.13, target 2.67)
**Expected cluster count in output:** 9 (range 8–10, target 9, matches B1)

**Scoring convention:** Target is the point estimate for headline scoring. Range defines the pass/fail band. Outside-range results are scored with severity proportional to distance from the nearest band edge.

**Derivation note:** D2 + persona-selection-guide expects ~20-30 thematic clusters/questions from the Synthesize group at low effort. With 11 convergence groups (7 strong-merge-to-one, 2 preserve-distinct, 2 hybrid two-merge) producing ~13 merged outputs + 24 unique questions (~14 selected for inclusion) = ~27 questions. Cluster count (9) matches B1 because the synthesizer should produce clusters that mirror the discovered theme structure.

---

## Target Output Structure

### Cluster 1: Core Value, Differentiation, and "What to Keep"
**Expected questions in output:** 4 (from 11 input)
**Must include:**
- Merged from Convergence Group 1: "What does 'core value' actually mean for this app — the features most people use, the features that create the most passionate engagement, the job users hired us to do, or the features that would generate self-reinforcing engagement loops if executed exceptionally well — and what analytical framework (beyond current usage data) would help us identify it?" (anchored in Analyst Q1, Questioner Q1, Questioner Q2, Questioner Q3, Systems Thinker Q1)

**Should include (preserve distinct per Convergence Group 2):**
- Devil's Advocate Q7 verbatim or lightly edited: "What if retention is low not because the app is unfocused, but because no single feature is good enough to compete with dedicated alternatives? Could the real problem be execution quality across all features rather than scope?"
- Questioner Q10 verbatim: "What if we're asking the wrong question entirely? Instead of 'what do we cut,' what if we asked 'what would make users open this app every day even if it only did one thing'?"

**Optional:**
- Audience Advocate Q11 (stated preferences vs. revealed behaviors) — partial Cluster 1 affinity (mismatch-detection methodology); could land in Cluster 6 (Research Methodology) instead; defer to synthesizer's clustering decision.

### Cluster 2: Feature Interdependencies and Cascade Risk
**Expected questions in output:** 3 (from 7 input)
**Must include:**
- Merged from Convergence Group 3: "Before cutting any feature, what is the complete interdependency and cascade map — which features are synergistic (lost together), which cannibalize each other (net gain from cutting), which are 'keystone' features whose removal causes disproportionate system collapse, and what compensatory user behaviors might emerge that undermine simplification?"
- Merged from Convergence Group 4: "For each feature on the chopping block, how do we model the churn risk — distinguishing transient churn from users who would have left anyway vs. permanent churn from alienating passionate minorities (including the <5%-of-users-but-80%-engagement segments) — and how do we identify those passionate minorities before cutting?"

**Should include:**
- Systems Thinker Q8 (technical debt as balancing loop): "When you remove features, do you surgically extract them (expensive now, cleaner long-term) or abandon them in place (cheap now, accumulating complexity)? What feedback loops does each choice create?" — distinct from Cluster 7's transition-strategy question; preserved for engineering-debt specificity.

**Optional:**
- Questioner Q13 (dependency-graph mapping before removal) — near-miss with Devil's Advocate Q6 in Cluster 10/orphans; synthesizer may fold into merged Cluster 2 question above.

### Cluster 3: Passionate Minorities and User Archetypes
**Expected questions in output:** 2 (from 6 input)
**Must include:**
- The passionate-minority angle is captured in Cluster 2's Convergence Group 4 merge above — Cluster 3 does NOT need its own merge-from-convergence question.
- Audience Advocate Q5 verbatim or lightly edited: "What different user archetypes are currently served (or underserved) by the app's 15 features — the social butterfly who loves challenges vs. the privacy-focused person who just wants to track workouts — and how might simplification either serve or abandon these distinct groups?"

**Should include:**
- Appreciative Inquirer Q4 (hidden assets in user base): "With 180K downloads, who are the users who found value? What about the 2% who show up daily — what are they doing that keeps them coming back?" — distinct aspirational/discovery framing.

**Optional:** *(none — Cluster 3 is intentionally compact because its cascade-risk dimension is captured in Cluster 2)*

### Cluster 4: Metrics, Retention, and Redefining Success
**Expected questions in output:** 3 (from 7 input)
**Must include:**
- Merged from Convergence Group 5: "What new metric system would create the right feedback loops for a simplified utility product — replacing current lagging metrics (downloads, 30-day retention, DAU/MAU, session length) with leading indicators that predict daily habit formation — and what are the risks of measuring the simplified product with the old rulers (e.g., shorter sessions misread as failure when they actually reflect efficient utility)?"
- Merged from Convergence Group 6: "What would behavioral-sequence analysis, cohort retention curves per feature, and direct interviews with the 8% who stayed past 30 days reveal about (a) where in the onboarding-to-habit pipeline users drop off, (b) what the 47-second DAU sessions mean (failure-to-find, efficient utility, or decision paralysis), and (c) which features the retained users would actually miss?"

**Should include:**
- Analyst Q6 (value realization timeline): "How do we map the time-to-value horizon for each feature — immediate gratification vs. weeks of habit formation — and how might this temporal dimension explain which features are retaining users despite not being most frequently accessed?" — distinct feature-level-temporal lens.

**Optional:**
- Devil's Advocate Q1 (feature popularity vs. value): "8% retention suggests usage data may be misleading — features used early by churning users might appear popular while actually being on-ramps to nowhere. How distinguish retention-driving features from mere-initial-engagement features?" — partial Cluster 4 affinity, partial Cluster 1 affinity; defer to synthesizer.

### Cluster 5: User Experience, Overwhelm, Onboarding Friction
**Expected questions in output:** 3 (from 7 input)
**Must include (per Convergence Group 8 recommendation, preserve as distinct dimensions):**
- Audience Advocate Q1 verbatim or lightly edited: "What does the first 30 seconds feel like for a new user who just downloaded the app expecting a fitness tracker but encounters 15 different features — cognitive load, confusion, emotional journey from excitement to overwhelm, moments of disengagement?"
- Audience Advocate Q4 verbatim: "How does the current 6-tab navigation plus hamburger menu experience differ for users with varying levels of digital literacy, visual impairments, or cognitive processing differences?" — accessibility-specific technical claim
- Merged from Convergence Group 7: "When users describe the app as 'overwhelming,' what are they actually experiencing — feature count, information architecture, decision paralysis, or onboarding failure — and what diagnostic method would distinguish 'simplify' from 'redesign' as the right response? What if the true fix is UX improvement rather than feature reduction?"

**Should include:** *(none — the three "must include" items capture the cluster's range)*

**Optional:**
- Audience Advocate Q9 (notification philosophy) — attention-respect dimension; could land as orphan in Cluster 5.
- Audience Advocate Q3 (distraction-from-intent) — partially captured in the Convergence Group 7 merge; can be dropped.

### Cluster 6: Research Methodology — How to Decide What to Cut
**Expected questions in output:** 2 (from 6 input)
**Must include:**
- Merged from Convergence Group 9: "What research methodology — guarding against self-selection bias (only engaged users respond to surveys), single-PM bias (one person's opinion isn't research), and team-ownership bias — can produce reliable core-value signal? What role do real-world feature-removal A/B tests and structured user involvement play alongside interview-based methods?"

**Should include:**
- Audience Advocate Q12 (unarticulated needs): "What unarticulated needs are users currently working around or compensating for because they've never experienced an alternative — problems they've normalized because 'all fitness apps are like this'?" — distinct discovery-method angle not absorbed in the merge above.

**Optional:**
- Audience Advocate Q11 (stated vs. revealed preferences) if not placed in Cluster 1.

### Cluster 7: Transition Strategy — Incremental vs. Clean Relaunch
**Expected questions in output:** 2 (from 5 input)
**Must include:**
- Merged from Convergence Group 10: "Given the 8-month runway, what is the decision framework for choosing between incremental feature-by-feature simplification (lower risk, lower user alienation, longer time to focused product) vs. clean relaunch (clearer narrative, higher risk that users don't return given 2.0-relaunch failure patterns, potential runway exhaustion from hidden dependencies)? What evidence would justify each path, and at what point should signals trigger a pivot from one to the other?"

**Should include:**
- Systems Thinker Q10 (simplification-creep vigilance): "Every product adds features over time. What early-warning systems or structural constraints (e.g., 'zero-sum feature budget' where adding anything requires removing something else) could be designed now to naturally resist feature creep?" — distinct long-term-governance framing.

**Optional:**
- Devil's Advocate Q6 (technical debt explosion from removal) — partial Cluster 7 affinity, partial Cluster 2; could land either place.

### Cluster 8: Team Dynamics, Morale, Burnout
**Expected questions in output:** 3 (from 6 input + 1 cross-reference)
**Must include (per Convergence Group 11, convert to two merges):**
- Merge A from CG 11: "What are the team's existing strengths, best moments, and conditions for creative/proud work — and what simplified product would align with those strengths so the change feels like liberation rather than loss?" (anchored in AI Q3, Q6, Q10)
- Merge B from CG 11: "How do we execute the feature-cutting decision without letting team-ownership bias drive outcomes (each engineer championing what they built), while simultaneously rebuilding psychological investment among the engineers whose work is being deleted so they stay motivated through the relaunch?" (anchored in DA Q3, DA Q10, Q Q15)

**Should include:**
- Systems Thinker Q7 (team capacity-reinforcement dynamics): "When you eliminate features, do you redeploy engineers to deepen remaining features (potentially creating new bloat) or reduce headcount (undermining rapid-iteration capacity)? What team structure reinforces simplicity vs. drifting back toward complexity over time?"

**Optional:**
- Analyst Q8 (team resource optimization) — capacity math of refactoring; partial Cluster 8 affinity, partial Cluster 7 affinity; defer to synthesizer.

### Cluster 9: User Communication and Migration
**Expected questions in output:** 2 (from 5 input)
**Must include:**
- Merged from AI Q9 + AudAdv Q7 + Q Q11 + ST Q6: "How do we design the user-communication and migration strategy so that (a) passionate minorities whose favorite features are being removed feel honored rather than betrayed, (b) existing users understand the simplification as 'focusing on what matters' rather than 'taking things away,' and (c) the feedback loop of early-adopter sentiment propagating through review channels and social media actively supports rather than undermines retention?"

**Should include:**
- Audience Advocate Q8 if not placed in Cluster 6: "What power dynamics exist when a product team decides which features matter, and how can we involve users in determining the app's core value proposition rather than making top-down assumptions?" — distinct user-involvement governance framing.

**Optional:** *(none)*

### Orphan / Sub-cluster: AI's Felt-Aspirational Future (cross-cluster)
**Expected questions in output:** 1-2 from AI's 7 unique questions (Q1, Q2, Q5, Q7, Q8, Q11, Q12)
**Must include at least 1:**
- Recommend AI Q5: "Imagine it's three years from now, and this app has become something users genuinely champion — not just use, but actively recommend. What would users say? What specific feeling or outcome would they describe?" — most encompassing aspirational anchor
- OR AI Q11: "What small, low-risk experiments could the team try this month to test which features truly represent the app's core value? What would you measure? How would you engage users in these experiments?" — connects aspirational to actionable

**Rationale:** AI's voice is dimensionally inverse to the analytical set (per D2 / persona-selection-guide). Dropping all 7 unique AI questions would silence the strengths-based register entirely. The synthesis output must retain at least one to satisfy persona-representation requirements (see below). Note: 2 of AI's 12 questions (Q7 one-thing, Q4 hidden assets) are already absorbed into Clusters 1/3; 3 (Q3, Q6, Q10) are in Cluster 8. AI Q9 (migration with grace) is in Cluster 9. So the orphan pool is Q1, Q2, Q5, Q8, Q11, Q12 — 6 questions, from which 1-2 must survive.

---

## Questions Expected to Be Dropped

These input questions SHOULD NOT survive synthesis. Each has a rationale:

**Redundant convergences (absorbed into merges):**
- Analyst Q1 — absorbed into Convergence Group 1 merge
- Questioner Q1, Q2, Q3 — absorbed into Convergence Group 1 merge
- Systems Thinker Q1 — absorbed into Convergence Group 1 merge
- Analyst Q2, Q9 — absorbed into Convergence Group 3 merge
- Systems Thinker Q2, Q5 — absorbed into Convergence Group 3 merge
- Analyst Q3, Q12 — absorbed into Convergence Group 4 merge
- Devil's Advocate Q5 — absorbed into Convergence Group 4 merge
- Questioner Q12 — absorbed into Convergence Group 4 merge
- Analyst Q11 — absorbed into Convergence Group 5 merge
- Systems Thinker Q9 — absorbed into Convergence Group 5 merge
- Analyst Q4, Q5 — absorbed into Convergence Group 6 merge
- Audience Advocate Q2 — absorbed into Convergence Group 6 merge
- Questioner Q5 — absorbed into Convergence Group 6 merge
- Audience Advocate Q10 — absorbed into Convergence Group 7 merge
- Questioner Q7 — absorbed into Convergence Group 7 merge
- Devil's Advocate Q4 — absorbed into Convergence Group 7 merge
- Audience Advocate Q3 — absorbed into Convergence Group 7 merge (distraction-from-intent as face of overwhelm)
- Devil's Advocate Q2, Q9 — absorbed into Convergence Group 9 merge
- Questioner Q6 — absorbed into Convergence Group 9 merge
- Audience Advocate Q8 — absorbed into Convergence Group 9 merge (OR preserved separately in Cluster 9)
- Analyst Q10 — absorbed into Convergence Group 10 merge
- Devil's Advocate Q8, Q11 — absorbed into Convergence Group 10 merge
- Questioner Q9 — absorbed into Convergence Group 10 merge
- Appreciative Inquirer Q3, Q6, Q10 — absorbed into Cluster 8 Merge A
- Devil's Advocate Q3, Q10 — absorbed into Cluster 8 Merge B
- Questioner Q15 — absorbed into Cluster 8 Merge B
- Appreciative Inquirer Q9 — absorbed into Cluster 9 merge
- Audience Advocate Q7 — absorbed into Cluster 9 merge
- Questioner Q11 — absorbed into Cluster 9 merge
- Systems Thinker Q6 — absorbed into Cluster 9 merge

**Low-priority / lower-yield AI orphans (drop most, keep 1-2):**
- Most of AI Q1, Q2, Q8, Q12 — keep at most 2 for representation; the rest are variations on the felt-quality theme that don't add distinct insight beyond the kept anchor(s). AI Q7 is already absorbed in Cluster 1 Convergence Group 2 strand. Recommend keeping AI Q5 (champion users future) and AI Q11 (first experiments).

**Lower-priority unique questions:**
- Systems Thinker Q3 (data-informed reduction blind spots / dormant gems) — distinct insight but partial absorption by Clusters 1 and 5; synthesizer may drop if space is tight.
- Questioner Q4 (fitness-category boundary) — interesting but tangential; this is a "pivot to different category" frame that does not fit the simplification mandate.
- Questioner Q8 (discoverability hypothesis) — partially covered by Convergence Group 7 merge; may be folded in.
- Questioner Q14 (existing-users-as-right-audience) — market-pivot frame; tangential to the simplification-for-current-users scope.
- Audience Advocate Q6 (limited-bandwidth users) — partially covered by the Cluster 5 merge and Audience Advocate Q4.
- Analyst Q7 (technical debt cost-benefit) — partial Cluster 2 absorption; distinct unit-economics framing but synthesizer may drop if Cluster 2 is at 3-question count.

The synthesizer has discretion on the last group based on cluster-population balance.

---

## Persona Representation Requirements

For each Synthesize-group persona, the minimum number of questions that MUST be represented in the output (either as standalone questions or as a contributor to a merged question). This defines SQ3 scoring for mobile-app/low.

| Persona | Input Q | Min Output Representation | Notes |
|---|---|---|---|
| Analyst | 12 | **5** | Heavy contribution across Clusters 1, 2, 3, 4 (mostly via merges); unique Q6 (value realization timeline) must survive as distinct question. |
| Appreciative Inquirer | 12 | **3** | Distinctive aspirational voice that must not vanish. Merges absorb ~5 of AI's 12 questions (Q3/6/9/10 into Clusters 8, 9; Q4/7 into Clusters 1, 3). At least 1 AI orphan from the felt-aspirational-future cluster must survive beyond the absorbed merges. |
| Audience Advocate | 12 | **5** | Strong cluster-driver for Cluster 5 (6 of 12 Qs); accessibility-specific Q4 must survive verbatim; equity/stakeholder-power voice must appear in Cluster 6 or 9. |
| Devil's Advocate | 11 | **5** | Highest convergence participant across Clusters 1, 2, 4, 6, 7, 8; unique Q1 (feature-popularity-vs-value) and Q6 (tech-debt explosion / runway risk) should survive as distinct questions. |
| Questioner | 15 | **5** | Highest input volume; many unique short-form reframings (Q4 category-boundary, Q8 discoverability, Q10 wrong-question, Q13 dependency-graph, Q14 market-pivot); first-principles voice anchors Cluster 1 and 10 merges. Q10 (wrong-question reframe) should survive verbatim. |
| Systems Thinker | 10 | **4** | Distinctive feedback-loop and named-pattern vocabulary (self-reinforcing loops, keystone features, balancing loop, simplification-creep, zero-sum feature budget) must survive; at least one named-pattern/loop framing should appear in output. |

**Total minimum representation:** 27 (equal to expected output of 27 — no slack). If the synthesizer drops any persona below its minimum, SQ3 scores penalize proportionally.

**Critical preservation:** Appreciative Inquirer is the persona at highest risk in this cell because its voice is dimensionally inverse to the analytical set (per persona-selection-guide). Synthesis tends to favor analytical/strategic framing and can silently drop AI's felt-aspirational orphans. Flag for SP1 monitoring: at least one of AI Q1, Q2, Q5, Q8, Q11, Q12 must survive the synthesis pass.

**Second critical preservation:** Audience Advocate's UX-specific questions (Cluster 5) — 6 of 12 are UX-focused. The synthesizer should retain both Q1 (first-30-seconds) and Q4 (accessibility/digital-literacy) because collapsing them into one general "onboarding UX" question would lose the accessibility-specific claim that is the cluster's most defensible equity-lens contribution.

---

## Dimension Balance Target

Computed from the input distribution and adjusted for compaction. Mobile-app/low is heavy on Strategic and Analytical because the input questions interrogate a product/business problem (feature simplification, market retention, metric redefinition); the dimension targets reflect that with a deliberate floor for Human-centered to ensure Audience Advocate's UX voice and AI's aspirational register survive.

| Dimension | Target % | Range | Source |
|---|---|---|---|
| Strategic | 35% | 30-40% | Core value, transition strategy, differentiation, team vision, communication strategy (Clusters 1, 7, 8, 9) |
| Tactical | 10% | 7-15% | Research methodology, A/B-testing frameworks, MVP governors (Cluster 6 + parts of Cluster 7) |
| Creative | 7% | 5-12% | Reframings (fitness-category boundary, discoverability hypothesis, simplify-into-nothing trap, AI aspirational future); *will be substantially raised after Append integration adds Visionary, Provocateur, Storyteller, Connector* |
| Analytical | 28% | 22-32% | Metrics, retention, cascade modeling, churn, unit economics, feature-value frameworks (Clusters 2, 4, parts of 1) |
| Human-centered | 20% | 15-25% | UX/overwhelm (Cluster 5), passionate minorities (Cluster 3), team dynamics (Cluster 8), user communication (Cluster 9), AI felt-aspirational orphan |

**Sum:** 100%

**Note on Creative dimension:** The Synthesize group's Creative coverage is genuinely thin (Questioner Q4/Q8/Q14 reframings, Devil's Advocate Q4 trap, AI's felt-aspirational orphans if kept). This is expected and is what the Append group exists to compensate for — Visionary, Provocateur, Storyteller, and Connector all bring Creative weight that lifts the post-append output substantially (the 29 Append questions are heavily Creative-loaded). Do not score the Synthesize-only output against a higher Creative target; the system is designed to balance via Append.

**Note on Human-centered dimension:** Mobile-app/low has a stronger Human-centered signal in the Synthesize group than habit-tracker/low because Audience Advocate's 6 UX-specific questions concentrate the dimension. The 20% target reflects this concentration; dropping below 15% would indicate the synthesizer over-compacted Cluster 5 or Cluster 8.

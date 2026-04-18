# habit-tracker — low — Synthesis Target

**Input question count:** 68 (Synthesize-group only; Append-group of 28 is handled in B4)
**Expected synthesis output count:** 26 (range 22–30, target 26)
**Expected compaction ratio:** 68/26 = 2.62 (range 2.27–3.09, target 2.62)
**Expected cluster count in output:** 9 (range 8–10, target 9, matches B1)

**Scoring convention:** Target is the point estimate for headline scoring. Range defines the pass/fail band. Outside-range results are scored with severity proportional to distance from the nearest band edge.

**Derivation note:** D2 + persona-selection-guide expects ~20-30 thematic clusters/questions from the Synthesize group at low effort. With 11 convergence groups (some preserve-distinct, some merge-to-one) plus 27 unique questions, the math is: (11 convergence groups → ~9 merged outputs + 5 preserve-distinct retentions) + (27 unique questions → ~12 selected to include) = ~26 questions. The cluster count (9) matches B1 because the synthesizer should produce clusters that mirror the discovered theme structure.

---

## Target Output Structure

### Cluster 1: Failure, Setbacks, and Resilience
**Expected questions in output:** 4 (from 9 input)
**Must include:**
- Merged from Convergence Group 1: "How should the app design for inevitable failure — broken streaks, missed days, life disruptions — so that setbacks feel like resilient data points rather than punishing losses, and recovery pathways are first-class features rather than edge cases?" (anchored in Audience Advocate Q1, Devil's Advocate Q5, Systems Thinker Q5, Questioner Q14, Appreciative Inquirer Q7)

**Should include:**
- Audience Advocate Q9 verbatim or lightly edited: "What would differentiate an app that feels like *support* versus one that feels like *surveillance* or *obligation*?"
- Appreciative Inquirer Q7 *if not already absorbed by the merge above* — the streak-reframing angle deserves preservation; if the merge captures it adequately, can be dropped.

**Optional:**
- Questioner Q11 (emotional/psychological costs of self-monitoring) — adjacent to Cluster 1 but could land in Cluster 9 (Lifecycle) instead; defer to synthesizer's clustering decision.

### Cluster 2: Engagement Models, Gamification, Intrinsic Motivation
**Expected questions in output:** 3 (from 9 input)
**Must include:**
- Merged from Convergence Group 2: "How do we evaluate the trade-off between extrinsic motivation tools (streaks, points, gamification, notifications) and durable intrinsic motivation — and what would an engagement model look like that builds internal regulation rather than dependence on the app's prompts?"

**Should include:**
- Devil's Advocate Q1 (engagement drop-off after novelty wears off) — distinct temporal-motivation question that the merge above doesn't fully capture
- Systems Thinker Q3 (notification fatigue / Fixes that Fail) — distinct loop archetype

**Optional:**
- Audience Advocate Q5 *if not already absorbed by the merge* — autonomy-vs-exploitation angle is foundational to the cluster

### Cluster 3: Differentiation and Anti-Competitive Positioning
**Expected questions in output:** 3 (from 7 input)
**Must include:**
- Merged from Convergence Group 3: "Where are the genuine unsolved problems in the habit-tracker market — at the level of fundamental design assumptions, not feature lists — that would justify users switching from established apps and that we could defend against feature-matching pressure?"

**Should include:**
- Questioner Q7: "What if differentiation means doing less?" — distinct subtractive-positioning thesis
- Questioner Q10: "Could we compete by being anti-competitive?" — distinct minimum-effective-dose positioning

**Optional:**
- Audience Advocate Q7 (unarticulated needs / silent struggles) — partial Cluster 3 affinity, partial methodology angle

### Cluster 4: Behavioral Science, First-Principles Mechanism
**Expected questions in output:** 3 (from 5 input)
**Must include (preserve all distinct, per Convergence Group 4 recommendation):**
- Devil's Advocate Q6: "Are we solving the right problem?" (best-stated competitive/validation framing)
- Questioner Q1: "Why track habits at all?" (cleanest first-principles framing)
- Systems Thinker Q11: "Behavioral specificity and the systems blind spot." (measurement-blindness angle absent from the other two)

**Should include:** *(none — the three "must include" items capture the cluster's range)*

**Optional:**
- Devil's Advocate Q3 or Questioner Q9 (behavioral-science-as-differentiator) — could fold into Q6 or Q1 above

### Cluster 5: User Diversity, Accessibility, Underserved Populations
**Expected questions in output:** 3 (from 6 input)
**Must include (per Convergence Group 9 recommendation, preserve as distinct dimensions):**
- Merged Audience Advocate Q3 + Questioner Q8: "Whose lives, circumstances, and cultural contexts are existing habit trackers failing to serve — including shift workers, neurodivergent users, those managing chronic illness or instability, and users whose concept of habit-building includes collective or non-Western frameworks — and how might the design center these populations rather than treat them as edge cases?"
- Audience Advocate Q4 verbatim: accessibility, language, digital literacy, disability — foundational technical claim

**Should include:**
- Audience Advocate Q2 (stages of readiness: pre-contemplation, contemplation) — distinct stage-of-change dimension

**Optional:**
- Audience Advocate Q8 (cultural contexts) *if not absorbed by the merge above*

### Cluster 6: Privacy, Trust, Data Stewardship
**Expected questions in output:** 2 (from 4 input)
**Must include:**
- Merged from Convergence Group 5: "What privacy safeguards — covering data collection scope, retention, anticipated harms (employment, insurance, mental-health profiling), and meaningful user control beyond legalistic consent — should be engineered from day one rather than added post-hoc?"

**Should include:**
- Systems Thinker Q8 (Monetization and the erosion of trust) — *cross-cluster question* — could land in Cluster 6 or Cluster 7; recommend Cluster 7 as primary home with cross-reference to Cluster 6

**Optional:** *(none)*

### Cluster 7: Monetization, Unit Economics, Mission Alignment
**Expected questions in output:** 3 (from 4 input + cross-references)
**Must include:**
- Merged from Convergence Group 7: "How do we structure monetization (pricing model, premium boundaries, data practices) so revenue scales with genuine user outcomes rather than with engagement, attention, or data extraction — and what monetization patterns build rather than erode trust?"
- Analyst Q6 (unit economics at scale): "What does the realistic unit economics model look like for a habit-tracker app at different scales?"

**Should include:**
- Analyst Q7 (monetization-strategy quantification): "How do different monetization strategies impact user behavior and retention, and what's the quantifiable trade-off?" — distinct from the mission-alignment merge

**Optional:** *(none)*

### Cluster 8: Scope, Technical Architecture, MVP Constraints
**Expected questions in output:** 3 (from 5 input)
**Must include:**
- Merged from Convergence Group 8: "What decision framework will keep the MVP scope ruthlessly focused — identifying non-negotiable features, building governors against feature creep, and resisting the natural pressure for analytics/integrations/customizations that complexify the experience?"
- Analyst Q8 (long-term-cost technical decisions): "What are the critical technical decisions that have the highest long-term cost implications?"

**Should include:**
- Analyst Q9 (extensible data model): "How can we design a minimal yet extensible data model that accommodates evolving habit-tracking features without requiring major migrations?"

**Optional:** *(none)*

### Cluster 9: Lifecycle, Graduation, Long Arc
**Expected questions in output:** 4 (from 7 input)
**Must include:**
- Merged from Convergence Group 6: "How might the app explicitly support users across the full habit-change lifecycle — including reduced-touch maintenance and graceful graduation — so that successful habits outlive the app rather than depending on it?"

**Should include:**
- Appreciative Inquirer Q9 (evolve with users over years) — distinct from graduation; about evolution
- Systems Thinker Q6 (cold start / personalization loop) — distinct technical-design lens
- Devil's Advocate Q11 (graceful degradation / exit strategy) — business-continuity dimension

**Optional:**
- One AI "felt quality" question to anchor the aspirational dimension (recommend AI Q4 "beloved tracker" or AI Q5 "relationship with self") — could land in Cluster 9 or as a standalone "Aspirational Felt Quality" sub-cluster

### Orphan / Sub-cluster: AI's Felt Quality (cross-cluster)
**Expected questions in output:** 1-2 from AI's 8 unique questions
**Must include at least 1:**
- Recommend AI Q4: "What would a 'beloved' habit tracker look like in users' daily lives?" — most encompassing
- OR AI Q11: "When does simplicity feel like empowerment rather than limitation?" — connects to Cluster 3 (differentiation) and Cluster 8 (scope)

**Rationale:** AI's voice is dimensionally inverse to the analytical set (per D2 / persona-selection-guide). Dropping all 8 unique AI questions would silence the strengths-based register entirely. The synthesis output must retain at least one to satisfy persona-representation requirements (see below). These are the orphan-cluster questions C1's flat-pool analysis flagged.

---

## Questions Expected to Be Dropped

These input questions SHOULD NOT survive synthesis. Each has a rationale:

**Redundant convergences (absorbed into merges):**
- Audience Advocate Q1 — absorbed into Convergence Group 1 merge
- Devil's Advocate Q5 — absorbed into Convergence Group 1 merge
- Systems Thinker Q5 — absorbed into Convergence Group 1 merge
- Questioner Q14 — absorbed into Convergence Group 1 merge
- Analyst Q5 — absorbed into Convergence Group 2 merge
- Devil's Advocate Q4 — absorbed into Convergence Group 2 merge
- Systems Thinker Q1 — absorbed into Convergence Group 2 merge
- Questioner Q5 — absorbed into Convergence Group 2 merge
- Analyst Q4 — absorbed into Convergence Group 3 merge
- Devil's Advocate Q2 — absorbed into Convergence Group 3 merge
- Systems Thinker Q7 — absorbed into Convergence Group 3 merge
- Questioner Q6 — absorbed into Convergence Group 3 merge
- Analyst Q10 — absorbed into Convergence Group 5 merge
- Audience Advocate Q6 — absorbed into Convergence Group 5 merge
- Devil's Advocate Q8 — absorbed into Convergence Group 5 merge
- Devil's Advocate Q10 — absorbed into Convergence Group 7 merge
- Systems Thinker Q4 — absorbed into Convergence Group 8 merge
- Devil's Advocate Q7 — absorbed into Convergence Group 8 merge
- Devil's Advocate Q9 — absorbed into Convergence Group 8 merge
- Audience Advocate Q10 — absorbed into Convergence Group 6 merge
- Questioner Q4 — absorbed into Convergence Group 6 merge
- Systems Thinker Q9 — absorbed into Convergence Group 6 merge
- Analyst Q1 / Questioner Q2 — absorbed into Convergence Group 10 merge (which lands in Cluster 2 or Cluster 1)
- Audience Advocate Q3 / Questioner Q8 — absorbed into Cluster 5 merge
- Devil's Advocate Q3 OR Questioner Q9 — *one* of these may be dropped if the other anchors the behavioral-science angle in Cluster 4

**Low-priority / lower-yield AI orphans (drop most, keep 1-2):**
- Most of AI Q1, Q2, Q3, Q5, Q6, Q8, Q10 — keep at most 2 for representation; the rest are variations on the felt-quality theme that don't add distinct insight beyond the kept anchor(s). Note: this is a representation-preserving cut, not a quality cut — these are good questions, but synthesis must compact.

**Lower-priority unique questions:**
- Questioner Q12 (the app itself becoming a habit) — meta/recursive concept; interesting but tangential
- Questioner Q13 (friction-free tracking) — partial Cluster 6/8 coverage already
- Systems Thinker Q10 (community dynamics) — no other persona engages community features; marginal at low effort with no community-feature commitment
- Systems Thinker Q2 (success-to-the-successful archetype) — important but adjacent to Cluster 5 (diversity/equity); could land there instead, or be dropped
- Analyst Q2 (habit-typology) — adjacent to Cluster 2; can be dropped if Cluster 2 already has 3 questions

The synthesizer has discretion on the last group based on cluster-population balance.

---

## Persona Representation Requirements

For each Synthesize-group persona, the minimum number of questions that MUST be represented in the output (either as standalone questions or as a contributor to a merged question). This defines SQ3 scoring for habit-tracker/low.

| Persona | Input Q | Min Output Representation | Notes |
|---|---|---|---|
| Analyst | 10 | **5** | Heavy unique contribution (technical, economics, leading indicators); easiest to over-cut. |
| Appreciative Inquirer | 11 | **2** | Distinctive aspirational voice that must not vanish; merges absorb only 2 of AI's 11 questions. At least one AI orphan must survive. |
| Audience Advocate | 10 | **4** | Strong cluster-driver for Cluster 5; equity/lifecycle/dignity voices must each appear. |
| Devil's Advocate | 11 | **5** | Highest convergence participant; merges absorb most contributions but the unique Q1 (drop-off) and Q11 (exit strategy) must survive. |
| Questioner | 15 | **5** | Highest input volume; many unique reframings (self-acceptance, anti-competitive, decay, doing-less); first-principles voice anchors Cluster 4. |
| Systems Thinker | 11 | **4** | Distinctive systems-archetype vocabulary (Fixes that Fail, tragedy of the commons, success-to-the-successful) must survive; at least one named archetype should appear in output. |

**Total minimum representation:** 25 (against expected output of 26 — leaves ~1 slot of slack for clustering judgment). If the synthesizer drops any persona below its minimum, SQ3 scores penalize proportionally.

**Critical preservation:** Appreciative Inquirer is the persona at highest risk in this cell because its voice is dimensionally inverse to the analytical set (per persona-selection-guide). Synthesis tends to favor analytical/strategic framing and can silently drop AI's 8 felt-quality orphans. Flag for SP1 monitoring.

---

## Dimension Balance Target

Computed from the input distribution and adjusted for compaction. Habit-tracker/low is heavy on Strategic and Analytical because the input questions interrogate a product/business problem; the dimension targets reflect that with a deliberate floor for Human-centered to ensure Audience Advocate, AI, and the failure/dignity strand survive.

| Dimension | Target % | Range | Source |
|---|---|---|---|
| Strategic | 35% | 30-40% | Differentiation, monetization, lifecycle, mechanism (Clusters 3, 4, 7, 9) |
| Tactical | 12% | 8-15% | Scope/MVP cluster (Cluster 8) |
| Creative | 8% | 5-12% | Anti-competitive positioning, doing-less, AI felt-quality questions; *will be substantially raised after Append integration adds Visionary, Provocateur, Storyteller, Analogist* |
| Analytical | 25% | 20-30% | Privacy, monetization mechanics, behavioral-science evaluation, scope frameworks |
| Human-centered | 20% | 15-25% | Diversity/accessibility (Cluster 5), failure/dignity (Cluster 1), AI felt-quality (orphan-sub-cluster) |

**Sum:** 100%

**Note on Creative dimension:** The Synthesize group's Creative coverage is genuinely thin (AI Q11 simplicity-as-empowerment, Questioner Q7 doing-less, Questioner Q10 anti-competitive, AI's beloved-tracker if kept). This is expected and is what the Append group exists to compensate for — Visionary, Provocateur, Storyteller, and Analogist all bring Creative weight that lifts the post-append output substantially. Do not score the Synthesize-only output against a higher Creative target; the system is designed to balance via Append.

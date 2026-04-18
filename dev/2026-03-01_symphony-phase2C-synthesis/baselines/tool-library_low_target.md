# tool-library — low — Synthesis Target

**Input question count:** 69 (Synthesize-group only; Append-group of 31 is handled in B4)
**Expected synthesis output count:** 27 (range 23–31, target 27)
**Expected compaction ratio:** 69/27 = 2.56 (range 2.23–3.00, target 2.56)
**Expected cluster count in output:** 9 (range 8–10, target 9, matches B1)

**Scoring convention:** Target is the point estimate for headline scoring. Range defines the pass/fail band. Outside-range results are scored with severity proportional to distance from the nearest band edge.

**Derivation note:** D2 + persona-selection-guide expects ~20-30 thematic clusters/questions from the Synthesize group at low effort. With 10 convergence groups (7 strong-merge candidates producing ~7 merged outputs, 1 preserve-all-distinct group retaining 2 of 3 inputs, 2 hybrid groups producing 1-2 outputs each) plus 27 unique questions (of which ~13-14 should survive compaction), the math is: (~10 convergence-derived outputs) + (~13-14 unique-question outputs) = ~23-24 questions plus 2-3 AI orphan-cluster anchors = **~27 questions**. The cluster count (9) matches B1 because the synthesizer should produce clusters that mirror the discovered theme structure.

---

## Target Output Structure

### Cluster 1: Equitable Access, Dignity, and Inclusion
**Expected questions in output:** 5 (from 16 input)
**Must include:**
- Merged from Convergence Group 1: "How will the library design against the structural tendency to prioritize already-resourced residents (homeowners, English-speakers, the documented, those with stable housing) — including membership requirements, operating hours, tool literacy assumptions, and early-adopter capture dynamics — so that the neighbors facing the greatest obstacles are centered rather than treated as edge cases?" (anchored in Audience Advocate Q2/Q5/Q9, Devil's Advocate Q10/Q11, Questioner Q5/Q7)
- Merged from Convergence Group 2: "How should the emotional architecture of the library — entry experience, staff interactions, policies around privacy and assumed competence — make first-time and self-conscious borrowers feel proud and welcomed rather than embarrassed or surveilled?" (anchored in Audience Advocate Q1/Q3/Q7)

**Should include:**
- Audience Advocate Q4 (operating-hours alignment with shift workers, working parents, those without cars) — distinct logistics-fit dimension not absorbed by the CG1 merge
- Questioner Q6 (how do we define "community" and who gets to belong) — distinct boundary-definition dimension
- Questioner Q10 (damage policies too punitive for low-income) — distinct damage-policy calibration dimension, cross-references Cluster 7

**Optional:**
- Audience Advocate Q6 (return-time inflexibility and grace policies) — could fold into the CG1 merge as an additional clause, or survive as a distinct operational question
- Analyst Q7 (equitable access measurement beyond checkout counts) — could land here as a metrics-lens on equity, or in Cluster 8 as an operational metric

### Cluster 2: Volunteer Sustainability and Burnout
**Expected questions in output:** 2 (from 5 input)
**Must include:**
- Merged from Convergence Group 3: "How do we design volunteer capacity, succession, and continuity — staffing patterns, role structure, multi-volunteer access to critical infrastructure, and feedback structures that detect when growth workload is eroding the motivation of the core team — so the library can survive burnout, life changes, and the transition beyond the founding volunteers?" (anchored in Analyst Q9, Devil's Advocate Q1/Q12, Questioner Q13, Systems Thinker Q5 — with ST's "feedback structures" phrasing preserved)

**Should include:**
- *(none required — the merge captures 5 convergent questions across 5 personas)*

**Optional:**
- A separate preservation of Systems Thinker Q5's named-archetype framing if the merge absorbs it as generic "feedback structures" rather than honoring the archetype vocabulary

### Cluster 3: Financial Model, Unit Economics, and Replacement Funding
**Expected questions in output:** 4 (from 7 input)
**Must include:**
- Merged from Convergence Group 4: "What is the comprehensive ongoing-cost model beyond initial tool purchase — including replacement lifecycle by tool category, hidden operational costs (insurance, security, utilities, software, background checks), and the funding mechanism that keeps the library solvent after initial donations run out without creating new access barriers?" (anchored in Analyst Q2, Devil's Advocate Q4/Q5)
- Merged from Convergence Group 5: "What cost-benefit framework determines whether the library should own versus rent (or partner for) specialty tools — including usage-threshold criteria, tool-sharing partnerships, and decision rules for low-utilization high-cost items?" (anchored in Analyst Q3, Devil's Advocate Q6)

**Should include:**
- Analyst Q1 (unit economics at different operational scales — break-even at 50/200/500 users) — distinct forward-looking modeling question
- Analyst Q8 (analytical case for library vs. individual ownership at community level) — distinct macro-case for funders and stakeholders

**Optional:** *(none)*

### Cluster 4: Problem Definition and Demand Validation
**Expected questions in output:** 3 (from 5 input)
**Must include (preserve all distinct, per Convergence Group 6 recommendation):**
- Devil's Advocate Q2: "Does the neighborhood actually need this, or is it a solution in search of a problem?" (empirical-validation framing — pilot-first recommendation)
- Questioner Q1: "What problem are we actually solving?" (first-principles framing — tool access vs. skills/confidence)

**Should include:**
- Questioner Q2 OR Q8: either "Why do we assume a physical lending library is the right model?" (model-fit) or "Why do we assume individual lending is the default?" (unit-of-access alternatives). The two questions address the same meta-concern (question the assumed form) from slightly different angles. One of them suffices; both could survive if the synthesizer preserves distinct framings.

**Optional:**
- Questioner Q4 (who is the "typical user" we're imagining) — partial Cluster 1 affinity (diversity of user segments) and partial Cluster 4 affinity (assumption-challenging); defer to synthesizer's clustering decision

### Cluster 5: Liability, Safety, and Failure Modes
**Expected questions in output:** 2 (from 4 input)
**Must include:**
- Merged from Convergence Group 7: "What is the systematic failure-mode analysis and response plan for high-impact risks (injury, theft, liability claims, significant damage) — including concrete mitigation mechanisms (waivers, safety certifications, access controls, ID deposits, insurance structure) and the monitoring systems that surface incidents early enough to respond?" (anchored in Analyst Q4, Devil's Advocate Q7/Q8)

**Should include:**
- Devil's Advocate Q9 (maintenance backlog death spiral) — distinct long-run maintenance dynamic, not catastrophic risk

**Optional:** *(none)*

### Cluster 6: Resilience, Continuity, and Exit Strategies
**Expected questions in output:** 1 (from 3 input)
**Must include:**
- Merged from Convergence Group 8: "What contingency plans should be in place from day one for the major continuity risks — loss of the donated storefront, inability of the nonprofit to continue operations, need to relocate or scale down — so that the community's investment and the tools themselves are protected through transitions and the operating model is portable rather than space-dependent?" (anchored in Devil's Advocate Q3, Questioner Q3/Q15)

**Should include:** *(none — the merge absorbs all 3 input questions)*

**Optional:** *(none)*

### Cluster 7: Trust, Stewardship, and Commons
**Expected questions in output:** 2 (from 4 input)
**Must include:**
- Merged from Convergence Group 9: "As the library scales beyond its founding community of known relationships, how do we preserve stewardship, trust, and care for shared resources — through informal community-based mechanisms, intermediate trust structures (between close-knit and anonymous), and social architectures that prevent free-riding without creating exclusionary policies?" (anchored in Questioner Q9/Q11, Systems Thinker Q6 — with ST's "tragedy of the commons" archetype phrasing preserved)

**Should include:**
- Questioner Q12 (permanent non-returner — restorative justice response) — distinct response-framing rather than prevention

**Optional:** *(none — Questioner Q10 damage-policy is primary home Cluster 1 but cross-references here)*

### Cluster 8: Operational Design — Metrics, Inventory, Decisions
**Expected questions in output:** 3 (from 5 input)
**Must include:**
- Merged from Convergence Group 10: "What data infrastructure, feedback loops, and information flows should be in place from day one to support continuous operational learning — tool condition and usage tracking, user feedback channels, availability/demand visibility for borrowers and volunteers — so the inventory, policies, and governance can self-correct based on observed community behavior rather than founding assumptions?" (anchored in Analyst Q10, Questioner Q14, Systems Thinker Q8 — with ST's "information flows and system visibility" phrasing preserved)
- Analyst Q5 (three core operational metrics: utilization rate, availability satisfaction, administrative overhead per checkout) — distinct metric-specific question
- Analyst Q6 (decision framework for which tools to stock at what quantity) — distinct inventory-allocation decision

**Should include:** *(none — 3 questions already cover the cluster's distinct territory)*

**Optional:**
- Analyst Q7 (equitable access measurement beyond checkout counts) — could land here as metrics-on-equity, or in Cluster 1

### Cluster 9: Community Co-Creation and Existing Assets
**Expected questions in output:** 2 (from 5 input)
**Must include:**
- Appreciative Inquirer Q3 OR Q11: either "What hidden assets exist in this community?" OR "Who in this community is already doing related work — how could they become allies?" — asset-mapping / ally-identification framing
- Audience Advocate Q8: "What would make the difference between a library that serves a community and one that is built *by* and *with* the community?" — power-dynamics/governance framing

**Should include:**
- Appreciative Inquirer Q2 (what the core volunteers already do exceptionally well together) — strengths-within-the-team dimension, distinct from community assets

**Optional:**
- Appreciative Inquirer Q7 (how could operations extend existing volunteer patterns) — could fold into Q2 above
- Audience Advocate Q10 (unconsidered needs from lived-experience blindspots) — primary home Cluster 1; cross-references here

### Orphan Cluster: AI Aspirational Felt Quality (cross-cluster preservation)
**Expected questions in output:** 2 (from 8 orphan-cluster inputs, plus any additional AI uniques)
**Must include at least 2:**
- Recommend AI Q4: "If the tool library became the neighborhood's heart three years from now, what would that look like?" — most encompassing 3-year vision
- Recommend AI Q5: "What would 'belonging' look like in this space?" OR AI Q8: "What would it look like to design for 'abundance mindset' rather than scarcity?" — policy/experience-framing inversion

**Rationale:** AI's voice is dimensionally inverse to the analytical set (per D2 / persona-selection-guide). Dropping all 8 aspirational questions would silence the strengths-based register entirely. The synthesis output must retain at least 2 to satisfy persona-representation requirements (see below). These are the orphan-cluster questions C1's flat-pool analysis flagged — a few absorb into Cluster 9 under flat pooling, but the core felt-quality set remains distinctive. One additional AI unique (Q1 past-success, Q9 storefront-as-magnet, Q10 small-experiment, or Q12 first-three-months-celebration) may also survive based on cluster-population balance.

### Orphan Cluster: ST Systems Dynamics (selective preservation)
**Expected questions in output:** 2 (from 7 orphan-cluster inputs)
**Must include at least 2:**
- Systems Thinker Q3: "Success-to-the-Successful dynamics in tool allocation" — cross-references Cluster 1 equity
- Systems Thinker Q1: "Self-reinforcing growth cycles and natural system limits" — the core ST framing
- OR Systems Thinker Q4: "Behavioral adaptation to tool availability" — second-order-effects framing

**Rationale:** Systems Thinker's named-archetype vocabulary (Success-to-the-Successful, Self-reinforcing growth, Shifting the Burden, Fixes that Fail equivalents) is its distinctive contribution. Without explicit preservation, synthesis tends to extract the underlying concerns (growth limits → Cluster 2, success-to-successful → Cluster 1) and drop the archetype labels — homogenizing ST into content it contributed to. B3 requires **at least one named archetype to survive with its archetype label in the output** — this is the diagnostic for "did the synthesizer preserve Systems Thinker's voice or just its content?"

---

## Questions Expected to Be Dropped

These input questions SHOULD NOT survive synthesis. Each has a rationale:

**Redundant convergences (absorbed into merges):**
- Audience Advocate Q2, Q5, Q9 — absorbed into Convergence Group 1 merge
- Devil's Advocate Q10, Q11 — absorbed into Convergence Group 1 merge
- Questioner Q5, Q7 — absorbed into Convergence Group 1 merge
- Audience Advocate Q1, Q3, Q7 — absorbed into Convergence Group 2 merge
- Analyst Q9 — absorbed into Convergence Group 3 merge
- Devil's Advocate Q1, Q12 — absorbed into Convergence Group 3 merge
- Questioner Q13 — absorbed into Convergence Group 3 merge
- Systems Thinker Q5 — absorbed into Convergence Group 3 merge
- Analyst Q2 — absorbed into Convergence Group 4 merge
- Devil's Advocate Q4, Q5 — absorbed into Convergence Group 4 merge
- Analyst Q3 — absorbed into Convergence Group 5 merge
- Devil's Advocate Q6 — absorbed into Convergence Group 5 merge
- Analyst Q4 — absorbed into Convergence Group 7 merge
- Devil's Advocate Q7, Q8 — absorbed into Convergence Group 7 merge
- Devil's Advocate Q3 — absorbed into Convergence Group 8 merge
- Questioner Q3, Q15 — absorbed into Convergence Group 8 merge
- Questioner Q9, Q11 — absorbed into Convergence Group 9 merge
- Systems Thinker Q6 — absorbed into Convergence Group 9 merge (with archetype-name preservation)
- Analyst Q10 — absorbed into Convergence Group 10 merge
- Questioner Q14 — absorbed into Convergence Group 10 merge
- Systems Thinker Q8 — absorbed into Convergence Group 10 merge (with phrase preservation)
- One of Questioner Q2 / Questioner Q8 — one survives, one may drop (both address assumed-model-fit)

**Low-priority / lower-yield AI orphans (drop most, keep 2-3):**
- Most of AI Q1, Q5, Q6, Q8, Q9, Q10, Q12 — keep at most 2-3 for representation; the rest are variations on the felt-quality theme that don't add distinct insight beyond the kept anchors. Note: this is a representation-preserving cut, not a quality cut — these are good questions, but synthesis must compact.

**Low-priority ST orphans (drop most, keep 2):**
- Most of ST Q2, Q7, Q9, Q10 — keep at most 2 for representation with archetype-name preservation. ST Q3 (success-to-successful) and ST Q1 (self-reinforcing growth) are the highest-priority preservation candidates because they carry named archetypes.

**Lower-priority unique questions (synthesizer discretion):**
- Questioner Q4 (typical user assumption) — partial Cluster 1 / Cluster 4 affinity; may fold into Cluster 1 CG1 merge as a sub-clause
- Audience Advocate Q6 (return-time grace) — may fold into Cluster 1 CG1 merge or survive depending on cluster population
- Audience Advocate Q10 (unconsidered needs / blindspots) — may fold into Cluster 1 or Cluster 9 depending on cluster clustering
- Analyst Q7 (equitable-access metrics) — may fold into Cluster 1 or Cluster 8
- Appreciative Inquirer Q7 (extend existing volunteer patterns) — may fold into Cluster 9 Q2 or survive

The synthesizer has discretion on the last group based on cluster-population balance.

---

## Persona Representation Requirements

For each Synthesize-group persona, the minimum number of questions that MUST be represented in the output (either as standalone questions or as a contributor to a merged question). This defines SQ3 scoring for tool-library/low.

| Persona | Input Q | Min Output Representation | Notes |
|---|---|---|---|
| Analyst | 10 | **5** | Heavy unique contribution (unit economics, macro-case, metrics, operational frameworks, data infrastructure). Easy to over-compact into merges — Q1 Q5 Q6 Q7 Q8 all carry distinct analytical territory. |
| Appreciative Inquirer | 12 | **3** | Distinctive aspirational voice that must not vanish. AI contributes to Cluster 9 (3 questions) but its 8-question orphan-cluster is vulnerable. Hard minimum: 2 aspirational orphans + 1 cluster-9 contribution = 3 total. |
| Audience Advocate | 10 | **5** | Cluster-driver for Cluster 1 (9 of 10 AA questions land there). Equity/dignity/operational-fit/blindspots dimensions must each appear. Easy to over-compact the 3 CG2 dignity questions into one merge and lose 2 of AA's contributions. |
| Devil's Advocate | 12 | **5** | Highest convergence participant (11 of 12 questions converge). Merges absorb most contributions, but the unique Q9 (maintenance backlog) must survive, and Q10/Q11 (access/capture) are CG1 anchors. |
| Questioner | 15 | **6** | Highest input volume; many unique reframings. First-principles voice anchors Cluster 4 (CG6 preserve-distinct). Minimum 6 because the 15-question volume should not compact below 40% representation. |
| Systems Thinker | 10 | **3** | Distinctive systems-archetype vocabulary (Success-to-the-Successful, Self-reinforcing growth, Delay structures, etc.) must survive. **At least one named archetype must appear in output with its archetype label**, not just its underlying concern. 3 total = 2 merge contributions (CG3, CG9 or CG10) + at least 1 preserved orphan. |

**Total minimum representation:** 27 (matches expected output of 27 — every output slot has a representation-obligation tag). If the synthesizer drops any persona below its minimum, SQ3 scores penalize proportionally.

**Critical preservations:**
- **Appreciative Inquirer** is the highest-risk persona in this cell (10 of 12 questions are unique, 8 are in the aspirational orphan cluster). Synthesis tends to favor analytical/strategic framing and can silently drop AI's orphans. Flag for SP1 monitoring.
- **Systems Thinker archetype labels** are the diagnostic for voice preservation. If the synthesizer produces only merged questions with concepts-but-not-labels from ST, flag as persona-voice-loss even if content appears represented.
- **Questioner's first-principles register** in Cluster 4 is vulnerable. If CG6 gets merged into a single question (against recommendation), the synthesizer should be flagged for ignoring the preserve-distinct guidance — even if the content is technically covered.

---

## Dimension Balance Target

Computed from the input distribution and adjusted for compaction. Tool-library/low is heavy on Human-centered (equity/dignity is the dominant theme) and Strategic (model-fit, financial sustainability, resilience), with Analytical carrying financial and operational design. Creative is thin in the Synthesize group — the Append group compensates.

| Dimension | Target % | Range | Source |
|---|---|---|---|
| Strategic | 30% | 25-35% | Problem definition, resilience, volunteer sustainability, community co-creation (Clusters 2, 4, 6, 9) |
| Tactical | 15% | 10-20% | Operational design, liability/safety concrete mechanisms (Clusters 5, 8) |
| Creative | 5% | 3-8% | AI's abundance-mindset, "beloved heart" vision, and the small-experiment framing; *will be substantially raised after Append integration adds Visionary, Provocateur, Storyteller, Analogist* |
| Analytical | 22% | 18-27% | Financial model, unit economics, operational metrics, systematic failure-mode analysis, ST systems dynamics |
| Human-centered | 28% | 23-33% | Equity/dignity (Cluster 1), trust/commons (Cluster 7), AI aspirational felt-quality (orphan), community co-creation (Cluster 9) |

**Sum:** 100%

**Note on Human-centered dimension:** Unlike habit-tracker/low where equity/diversity is one cluster among nine, tool-library/low has equity/dignity as its single largest cluster (16 of 69 input questions). This pushes the Human-centered target up to 28% — 5-8 percentage points higher than a typical product-focused cell would target. SP1 scoring should not penalize the synthesizer for Human-centered dominance in this cell; it's the natural contour of the input.

**Note on Creative dimension:** The Synthesize group's Creative coverage is genuinely thin (AI's abundance mindset, lean experimentation, aspirational 3-year vision). This is expected and is what the Append group exists to compensate for — Visionary, Provocateur, Storyteller, and Analogist all bring Creative weight that lifts the post-append output substantially. Do not score the Synthesize-only output against a higher Creative target; the system is designed to balance via Append.

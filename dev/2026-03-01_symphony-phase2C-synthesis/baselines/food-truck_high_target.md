# food-truck — high — Synthesis Target

**Input question count (Synthesize universe):** 132
**Expected synthesis output count:** **48** (range 38–62)
**Expected compaction ratio:** 132 / 48 ≈ **2.75x** (range 2.1x–3.5x; floor 2.1x = under-compaction, ceiling 3.5x = over-merging)
**Expected cluster count:** **12** (range 10–14; matches B1)

**Scoring convention:** Target = point estimate; range = pass/fail band; outside-range severity scales with distance.

## Derivation of M (48)

Starting inventory from B2:
- **47 unique questions** (no convergent counterpart) — candidates to survive synthesis verbatim
- **85 questions in convergence groups** (21 total groups; 17 mergeable cross-persona + 4 preserve-distinct)
- 17 mergeable groups contain ~68 questions → produce 17 merged questions (saves ~51)
  - Of the 17 merges, 2 are within-persona AA consolidations (CG-16, CG-17) absorbing 4+3 = 7 questions into 2 merges
  - The other 15 cross-persona merges absorb ~61 questions into 15 merges
- 4 preserve-distinct groups contain ~17 questions → produce ~13 questions retained (light-editing reduction, preserving distinct voices)
- Within-persona near-duplicates and orphans in the unique-47 bucket → ~10-12 get lightly pruned/folded into adjacent mergers

Target arithmetic:
- 47 unique → keep ~18-22 in output (moderate pruning — drop narrow within-persona redundancies and orphan questions that are covered by adjacent mergers, especially in AI and Empath where unique rate is high)
- 68 convergent → 17 merged questions
- 17 preserve-distinct → retain ~13 (preserve all distinct voices but light-edit for conciseness)
- Total: 18-22 + 17 + 13 = **48-52** in mid-effort synthesis

**Why M_target = 48 (not 48-52):** A *good* synthesis prompt will also drop some unique questions that are too narrow, too similar to adjacent mergers, or too compound to answer cleanly in Phase 3. The target of 48 reflects expected cross-cluster pruning — e.g., AI Q1/Q6 both touch the three-year experience aspiration from different angles (peak moments vs customer description); the merged Cluster 7 output will absorb one of these. Empath Q4/Q5/Q9/Q12 all address founder emotional burden; Cluster 10 will preserve 2-3 voiced but fold 1-2. Range allows 38 (aggressive but quality-preserving) to 62 (light synthesis preserving most uniques).

**Outside-range severity:** Below 38 = over-merging (likely losing preserve-distinct content or stripping Empath/AI/ST voice). Above 62 = under-synthesizing (failing to merge the 17 mergeable groups). Severity is roughly linear with distance from target.

---

## Target Output Structure

Output organized by the 12 B1 clusters, with expected per-cluster question counts derived by adding {merges from group} + {preserve-distinct retained} + {unique retained after pruning}.

### Cluster 1: Regulatory/Ordinance Navigation & Political Engagement

**Expected questions in output:** 6 (from 17 input)
**Must include:**
- Merged CG-1 question (ordinance scenario modeling — 5-way)
- Merged CG-2 question (regulatory innovator vs adversary stance — 5-way)
- CG-3 all three preserved (ST Q1 self-defeating cycles, ST Q2 regulatory capture, ST Q3 compounding fees) — preserve-distinct (named-archetype vocabulary)
- AA Q6 (ordinance differential community impact) — may survive here or fold into Cluster 6; see placement notes
**Should include:**
- FPT Q6 (risk asymmetry — build for either regulatory outcome) — unique standalone design principle
- Questioner Q8 orphan (coalition with other truck owners) — overlaps CG-2 but distinct coalition-mechanics framing
**Optional:**
- Futurist Q1 (nationwide regulatory compression trend) — could sit here or in Cluster 11 (trends)

### Cluster 2: Financial Model, Unit Economics & Pricing

**Expected questions in output:** 5 (from 15 input)
**Must include:**
- Merged CG-4 question (food cost ratio and pricing — 4-way)
- Merged CG-5 question (break-even and daily revenue threshold — 3-way)
- Merged CG-6 question (unit economic truth — 2-way)
- Merged CG-7 question (catering vs vending opportunity cost — 2-way)
**Should include:**
- Analyst Q5 (revenue stream correlation and countercyclicality) — unique portfolio-risk framing

### Cluster 3: Growth Trajectory: Fleet, Brick-and-Mortar & Expansion

**Expected questions in output:** 4 (from 14 input)
**Must include:**
- Merged CG-13 question (fleet expansion decision criteria — 5-way)
- Merged CG-14 question (B&M assumption interrogation — 4-way)
- Empath Q6 (feeling of enough — at what point does "one more truck" stop feeling like opportunity) — unique emotional-scaling question
**Should include:**
- Futurist Q12 (fleet economics tipping point — trend-grounded) — unique scale-dynamics framing
- Questioner Q11 orphan (B&M in year two instead of year three) — acceleration-signal framing distinct from CG-14 evaluation
**Optional:**
- Questioner Q12 (license concept to other operators) — could stay here (alternative-growth) or sit in Cluster 12
- AI Q2 (community relationships that work) — could stay here if framed as relational-scaling; more likely Cluster 6

### Cluster 4: Capital Structure, Cash Flow, Debt & Reserves

**Expected questions in output:** 3 (from 13 input)
**Must include:**
- Merged CG-8 question (seasonal cash flow and reserves — 3-way)
- Merged CG-9 question (SBA loan vs bootstrap — 7-way; heaviest merger in this cell)
**Should include:**
- AI Q8 (financial strengths foundation — sustainable practices from other food businesses) — unique appreciative framing in deficit-dominated cluster; critical for AI voice preservation

**Note:** CG-9 is a 7-way merger absorbing questions from Analyst, Accountant, DA, ST (×2), Questioner, FPT. This is the highest-convergence cross-persona group in the cell. Merge must preserve: (a) Accountant's numerical specificity ($750-850/month, 7 years); (b) ST's archetype framing (adaptive capacity, option value); (c) FPT's inverted allocation ratio framing (70%/30%); (d) Questioner's counterfactual framing (what if denied). Variants that produce a generic "evaluate the SBA loan tradeoff" fail SQ3 for multiple personas simultaneously.

### Cluster 5: Fusion Concept Validation & Competitive Differentiation

**Expected questions in output:** 5 (from 13 input)
**Must include:**
- Merged CG-10 question (fusion validation and saturation — 4-way)
- CG-11 all three preserved (DA Q6 repeat/novelty retention, ST Q11 competitive convergence, Questioner Q3 pivot signals) — preserve-distinct
- Merged CG-12 question (differentiation beyond the food — 2-way)
**Should include:**
- Questioner Q2 (core customer not who you expect) — unique pivot-framing concern

### Cluster 6: Community Engagement, Cultural Authenticity & Equitable Access

**Expected questions in output:** 5 (from 12 input)
**Must include:**
- CG-15 both preserved (AA Q1 structural co-creation, Empath Q2 emotional lineage) — preserve-distinct
- Merged CG-16 question (equitable access and community economic realities — within-persona AA)
- Merged CG-17 question (shared community power and accountability architecture — within-persona AA)
- Empath Q11 (emotional contract with community; consequences of breach through pricing/gentrification) — unique felt-experience framing
**Should include:**
- AI Q2 (community relationships that work — adapting to food-truck model) — unique strengths-based framing; critical for AI voice
**Optional:**
- AA Q9 orphan (expansion changing community relationship) — could sit here or in Cluster 3
- AA Q13 orphan (past negative experiences affecting trust) — fold into CG-15 or preserve

**Note on within-persona AA mergers (CG-16, CG-17):** These are the two most AA-dense merges in the cell. SP1 variants that keep all 9 AA Cluster 6 questions separate under-compact. Variants that collapse CG-16 and CG-17 into a single "community equity" merge over-compact — the access-design vs accountability-architecture distinction is important for downstream design work.

### Cluster 7: Customer Experience, Third-Place & Emotional Connection

**Expected questions in output:** 5 (from 11 input)
**Must include:**
- AI Q1 (peak culinary moments — design for moments regularly) — unique
- AI Q5 (three-year celebration — atmosphere/achievements) — unique aspirational framing
- AA Q7 (welcomed/valued/safe vs not-belonging journey) — unique structural-experience framing
- Empath Q1 (beyond sustenance — emotional experience) — unique
- Empath Q3 (regular's ritual — recognition, anticipation, being known) — unique
**Should include:**
- Empath Q7 (third-space vibe beyond transaction) — unique; may fold with Empath Q1 if compaction needed
- AA Q2 (what community knows/feels about food trucks beyond just food) — unique
- AI Q6 (customer experience aspiration — words/moments/emotional responses) — likely fold into AI Q5 if compaction headroom tight

### Cluster 8: Customer Acquisition, Loyalty & Word-of-Mouth Dynamics

**Expected questions in output:** 4 (from 10 input)
**Must include:**
- Merged CG-18 question (CAC reality check — 3-way)
- ST Q14 (self-reinforcing WOM patterns and balancing patterns) — unique system-dynamics framing; ST named-archetype voice preservation
- ST Q15 (location volatility undermining habit formation) — unique spatial-predictability framing
**Should include:**
- Futurist Q6 (mobile ordering saturation — direct-to-consumer capability) — unique trend-grounded strategic
- ST Q6 (second-order effects of optimizing daily revenue vs brand building) — unique time-horizon framing

### Cluster 9: Equipment, Commissary & Operational Dependencies

**Expected questions in output:** 4 (from 11 input)
**Must include:**
- Merged CG-19 question (commissary dependency and operational stack risk — 3-way)
- Merged CG-20 question (equipment financing vs leasing — 3-way)
- DA Q12 (food safety and liability exposure — single-incident reputation risk) — unique catastrophic-risk framing
**Should include:**
- Analyst Q13 (operational bottlenecks — solo-founder throughput) — unique constraint-identification framing
- Accountant Q12 (hidden costs — replacement cycles, spoilage, parking tickets) — unique tactical-specificity framing
**Optional:**
- Futurist Q8 (labor market restructuring — kiosk/mobile-pickup automation) — could sit here or in Cluster 11

### Cluster 10: Founder Wellbeing, Solo Bandwidth & Isolation

**Expected questions in output:** 4 (from 7 input)
**Must include:**
- DA Q10 (solo founder bandwidth limits — sustainable hours, outsourcing) — unique capacity-architecture framing
- Empath Q4 (unspoken dread — fears of public failure, losing safety net) — unique emotional framing
- Empath Q5 (loneliness of solo founding — actual vs assumed support systems) — unique emotional-infrastructure framing
**Should include:**
- Empath Q9 (impostor whisper — confidence on bad days) — unique
- AI Q11 (sustaining the vision — daily/weekly practices for joy/purpose) — unique appreciative framing; critical for AI voice in deficit-risk cluster
**Optional:**
- Empath Q12 (joy-suck of compliance — maintaining joy amidst bureaucracy) — could fold into Cluster 10 or anchor to Cluster 1
- AI Q12 (resource activation — network assets) — could sit here or Cluster 3

### Cluster 11: Emerging Trends & Strategic Positioning

**Expected questions in output:** 4 (from 7 input)
**Must include:**
- Futurist Q2 (15-minute city partnerships in emerging micro-districts) — unique
- Futurist Q3 (municipal open-data integration) — unique information-advantage framing
- Futurist Q4 (experience economy — food truck as destination experience) — unique
- Futurist Q5 (dietary consciousness — plant-based/allergen/transparency) — unique
**Should include:**
- Futurist Q10 (climate resilience — weather equipment, indoor partnerships, migration) — unique
- Futurist Q9 (cashless acceleration) — unique payment-infrastructure framing
**Optional:**
- Futurist Q11 (third-place redefinition — remote work shifting lunch corridors) — overlap with Cluster 7; place here for trend-grounding

**Note:** Futurist is Tier 2 Structural so this cluster is Futurist-dominant by design. Cluster 11 exists as a distinct cluster *because* Futurist is included; at medium/low effort without Futurist, this cluster collapses entirely. SP1 should check that Cluster 11 preserves trend-grounding vocabulary ("documented growth," "accelerating," "trajectory") and does not strip it into generic "strategic" language.

### Cluster 12: Model Interrogation, First Principles & Alternative Forms

**Expected questions in output:** 4 (from 9 input)
**Must include:**
- CG-21 at least 4 of 6 preserved (FPT Q1 value-creation-mechanism, FPT Q3 parallel-options, FPT Q8 optimal-size = one truck, Questioner Q4 sustainable-definition) — preserve-distinct
- Questioner Q16 (broader-than-food brand — community hub, cultural events, education) — unique
**Should include:**
- ST Q5 (catering-as-Shifting-the-Burden) — unique system-archetype framing; should survive even if folded from CG-21
- FPT Q1 or FPT Q3 or FPT Q8 — one of these may fold if compaction needed, but at least 3 of FPT's first-principles framings must survive for SQ3

---

## Per-Cluster Total

| Cluster | Input Q (primary+orphan overlap) | Target Output Q | Compaction |
|---|---|---|---|
| 1 Regulatory & Political | 17 | 6 | 2.83x |
| 2 Financial Model | 15 | 5 | 3.00x |
| 3 Growth Trajectory | 14 | 4 | 3.50x |
| 4 Capital Structure | 13 | 3 | 4.33x |
| 5 Fusion Validation | 13 | 5 | 2.60x |
| 6 Community Engagement | 12 | 5 | 2.40x |
| 7 Customer Experience | 11 | 5 | 2.20x |
| 8 Customer Acquisition | 10 | 4 | 2.50x |
| 9 Operational Dependencies | 11 | 4 | 2.75x |
| 10 Founder Wellbeing | 7 | 4 | 1.75x |
| 11 Emerging Trends | 7 | 4 | 1.75x |
| 12 Model Interrogation | 9 | 4 | 2.25x |
| **Total (with orphan double-attribution)** | **139** | **48-53** | **2.90x apparent; 2.75x headline** |

**Cluster-input reconciliation:** Cluster input counts total 139, not 132. The 7-question delta is orphan double-attribution — several cross-cluster-bridging orphan questions (e.g., AI Q9 "relationship building systems," AA Q6 "ordinance differential impact," Futurist Q1 "regulatory compression nationwide") are counted in their primary cluster for B1 cluster-composition purposes and also listed separately in Orphan Questions for placement-ambiguity tracking. For compaction ratio scoring, use the headline 132 → 48 (2.75x) ratio, not the per-cluster sums. SP1 should score against the headline compaction ratio; per-cluster compaction columns are informational.

**Reconciliation of output counts:** Sum of per-cluster "Expected questions in output" = 53, but the headline target is 48. The 5-question gap reflects expected cross-cluster placement decisions (e.g., Empath Q12 placed in Cluster 1 vs Cluster 10, not both; AI Q2 placed in Cluster 3 vs Cluster 6, not both; Futurist Q1 placed in Cluster 1 vs Cluster 11, not both; AA Q6 placed in Cluster 1 vs Cluster 6, not both). Variants producing 48-53 are within range. Variants producing 48 hit the point target. Below 38 indicates aggressive over-merging; above 62 indicates under-synthesizing.

**Cluster 4 has the highest compaction ratio (4.33x)** because CG-9 is a 7-way merge — the heaviest cross-persona convergence in the cell. Cluster 4's 3-question output depends on that merge preserving Accountant numerical specificity, ST archetype framing, and FPT capital-allocation framing simultaneously — SP1 should treat this cluster as the hardest single-merge quality test.

**Cluster 10 has the lowest compaction ratio (1.75x)** because founder-wellbeing questions are mostly standalone-distinct (Empath felt-experience, DA bandwidth, AI appreciative). Compaction below 1.5x (output >5) indicates under-synthesis — there are legitimate folds (e.g., Empath Q4 and Q5 can converge into one emotional-burden question) that should be taken.

---

## Questions Expected to Be Dropped

Within-persona near-duplicates and very narrow questions that should be pruned in synthesis:

| Question | Persona | Drop Rationale |
|---|---|---|
| AI Q3 (Existing assets in motion) | AI | Subsumed by AI Q12 (resource activation) — similar asset-inventory framing |
| AI Q4 (Learning from existing food truck scene) | AI | Strongly overlaps AI Q7 (amplifying what works in fusion) — fold |
| AI Q6 (Customer experience aspiration) | AI | Overlaps AI Q5 (three-year celebration); one of these should survive, not both |
| AI Q7 (Amplifying fusion cuisine) | AI | Subsumed by CG-10 merger (fusion validation) — AI's strengths-based framing absorbed |
| AI Q9 (Relationship building systems) | AI | Bridges CG-2 (regulatory engagement) and Cluster 6 (community) and Cluster 8 (WOM); fold into CG-2 merge as "relationship-first" extension |
| AI Q10 (Immediate moves forward — MVP) | AI | Overlaps Cluster 12 FPT Q1/Q3; fold or survive based on whether Cluster 12 has compaction headroom |
| AA Q4 orphan (Street food across cultural backgrounds/generations) | AA | Subsumed by merged CG-16 (equitable access) — multi-cultural access dimension absorbed |
| AA Q13 orphan (Past negative experiences affecting trust) | AA | Subsumed by CG-15 (cultural authenticity) — trust-barriers framing absorbed |
| Empath Q7 (Third-space vibe) | Empath | Overlaps Empath Q1 (beyond sustenance) and AI Q5 (three-year celebration) — fold if compaction tight |
| Empath Q8 orphan (Vendor relationship trap) | Empath | Bridges Cluster 9 operational and Cluster 1 officials; fold into relationship-first framing in CG-2 or Cluster 9 |
| Empath Q12 (Joy-suck of compliance) | Empath | Bridges Cluster 1 regulatory and Cluster 10 founder; fold into Cluster 10 if wellbeing emphasis preserved |
| Questioner Q6 orphan (Unit economics hidden signals) | Questioner | Subsumed by merged CG-5 (break-even) and CG-6 (unit economic truth) — fold |
| Questioner Q9 (Regulatory innovator positioning) | Questioner | Subsumed by merged CG-2 (regulatory engagement) — innovator framing absorbed |
| Questioner Q15 (Who else gains from success) | Questioner | Unique but narrow; fold into Cluster 8 WOM or Cluster 1 coalition content |
| ST Q12 orphan (Fleet scaling reshaping ecosystem) | ST | Overlaps CG-13 fleet expansion and Cluster 8; fold or preserve depending on archetype-vocabulary priority |
| ST Q13 orphan (Cooperation crossing into competitive leakage) | ST | Narrow; fold into Cluster 1 coalition or Cluster 8 ecosystem |
| Futurist Q1 orphan (Regulatory compression nationwide trend) | Futurist | Overlaps Cluster 1; fold or preserve as trend-grounded context |
| Futurist Q7 (Support-local saturation) | Futurist | Narrow trend; may fold into Cluster 5 differentiation or Cluster 11 trends |
| Futurist Q8 (Labor market restructuring — automation/kiosk) | Futurist | Narrow; may fold into Cluster 9 operational or Cluster 11 trends |
| Futurist Q11 (Third-place redefinition) | Futurist | Overlaps Cluster 7 and Cluster 8; fold based on daypart-vs-experience emphasis |
| DA Q3 (Permit scarcity and competitive moats) | DA | Bridges Cluster 1 (regulatory) and Cluster 5 (market saturation); fold into CG-1 |
| Analyst Q13 (Operational bottlenecks) | Analyst | May survive standalone or fold into Cluster 9 operational content |
| Accountant Q12 (Hidden costs including parking tickets) | Accountant | Distinctive tactical specificity; may survive standalone for Accountant voice preservation |

**Drop discipline:** At high effort with 48 output questions from 132 input, the cell has headroom to preserve most unique voices. The drops listed above are soft recommendations — most of these could survive at range-ceiling (62 output) and still pass SP1 quality checks. The *hard* drop recommendations (which should happen even at range-ceiling) are the within-persona AI near-duplicates (Q3/Q4 folded, Q6 folded into Q5) and any question subsumed by a 3+ way convergence merge.

---

## Persona Representation Requirements

Defines SQ3. After synthesis, each Synthesize-group persona must have *meaningful* representation — at least one question whose framing or content can be traced back to that persona's distinctive contribution.

| Persona | Input Q | Min Representation in Output | Critical Voice Markers (must survive) |
|---|---|---|---|
| Accountant | 12 | 4 questions | Quantitative specificity — dollar ranges ($12-16 lumpia taco, $750-850/month SBA service, $800-1,500/month commissary, $50-70K second truck, $1,500 annual fees), percentages (25-35% food cost, 40-60% seasonal variation, 60% of fixed costs), time-horizons (2-3 year generator life, 3-year B&M horizon). 11 of 12 Accountant questions converge; voice survives via mergers *only if* merged text preserves the financial-data specificity. **Critical risk:** merges that strip Accountant's numerical benchmarks and revert to generic "consider funding" or "track costs" framing. This is the same pattern as tool-library/high (also a GT1 watchlist cell). |
| Analyst | 14 | 5 questions | Analytical framing ("break even," "unit economics," "framework," systematic decomposition), measurement specificity, scenario modeling. High convergence (12 of 14) — voice survives through mergers CG-4, CG-5, CG-6, CG-7, CG-9, CG-12, CG-13, CG-14, CG-18, CG-20, CG-1 *if* analytical framing is preserved. Q5 (stream correlation) and Q13 (operational bottlenecks) are strongest standalone signals. |
| Appreciative Inquirer | 12 | 4 questions | Strengths-based framing ("what's already working," "hidden assets," "three-year celebration," "what we already bring," "sustaining the vision"). 100% of AI questions are unique in cross-persona convergence terms — representation is structurally at risk if synthesis treats AI questions as "soft" and prioritizes deficit-framed convergence content. **Must retain** at least one AI question from Cluster 7 (experience aspiration) AND one from Cluster 10 (founder sustainability) AND one from Cluster 4 (financial strengths) — i.e., at least one AI question per cluster AI is present in. Higher structural risk here than tool-library/high because AI has 0 convergence landings in this cell. |
| Audience Advocate | 14 | 5-6 questions | Equity/inclusion structural framing ("who is excluded," "invisible barriers," "dignity," "community economic realities," "accountability beyond market success"). AA is both structural and human-centered; CG-16 and CG-17 within-persona mergers preserve the structural side, but unique-question preservation is needed for journey-mapping (Q7), community-knowledge (Q2), and ordinance-differential-impact (Q6) angles. Q1 is in preserve-distinct CG-15 (cultural authenticity). |
| Devil's Advocate | 15 | 4 questions | Risk-identification framing ("what happens when," "single point of failure," "reality check," inevitability). Highest absolute volume in the Synthesize universe alongside Questioner (15 and 16 respectively). High-convergence (12 of 15 in convergence) — DA survives via mergers *if* merged text preserves the critique/failure-mode framing. Q3 (permit scarcity), Q10 (solo founder bandwidth), Q12 (food safety) are unique standalone contributions. |
| Empath | 12 | 4 questions | Emotional/felt-experience framing ("how does it feel," "unspoken dread," "loneliness," "impostor whisper," "joy-suck," "emotional contract"). 10 of 12 unique — highest unique rate in this cell. **Critical risk:** synthesis tends to strip Empath's felt-experience language and reduce questions to neutral design questions. Cluster 10 (Founder Wellbeing) is Empath-heavy (4 of 7 Empath questions in this cluster) — if Cluster 10 is collapsed or felt-experience language stripped, SQ3 fails on Empath. Q1, Q4, Q5, Q9 are most distinctive. |
| First Principles Thinker | 10 | 3 questions | Definitional/ontological framing ("what IS this fundamentally," "why assume," "minimum viable," reductive challenge). Cluster 12 is FPT-anchored. Losing most of Cluster 12 would fail SQ3 on FPT. Q1, Q3, Q8 most distinctive; Q6 unique (risk asymmetry). CG-21 preserve-distinct must retain at least 3 of FPT's first-principles framings. |
| Futurist | 12 | 3-4 questions | Trend-extrapolation framing ("documented growth," "accelerating," "trajectory," temporal grounding, citations to documented trends). **Highest risk of temporal-decoration stripping** in synthesis — if merged text loses trend-grounding, Futurist questions become indistinguishable from Analyst/Systems Thinker strategic questions. Q2, Q3, Q4, Q5 most distinctive. Cluster 11 (Emerging Trends) is Futurist-dominant (6 of 7 questions); losing Cluster 11 = losing Futurist entirely. |
| Questioner | 16 | 5-6 questions | Assumption-challenging framing ("what if," "why assume," "what does X actually mean," meta-questioning). Easiest persona to preserve since Questioner's voice is ubiquitous (10 of 16 in convergence). At this volume, the challenge is pruning within-persona redundancy, not voice preservation. Q2, Q15, Q16 most distinctive standalone. |
| Systems Thinker | 15 | 5 questions | **Named system-archetype vocabulary** (self-defeating cycles, regulatory capture, Shifting the Burden, success-to-the-successful, self-reinforcing/balancing patterns, location volatility undermining habit, competitive convergence). **Critical risk:** synthesis may strip named-archetype vocabulary and reduce to generic "feedback loops." ST is distributed across 7 clusters (1, 3, 4, 8, 9, 11, 12) — voice-preservation depends on mergers across multiple clusters retaining at least one ST-signature phrase each. Q1, Q2, Q3 (regulatory archetypes — preserve-distinct CG-3), Q5 (Shifting the Burden), Q7 (fixes that fail — B&M distortion), Q14, Q15 are strongest archetype signals. |

**Representation failure flags:**
- Any Synthesize persona below the Min column → SQ3 fail
- Empath Min = 4 with emotional-state language fully stripped → SQ3 fail even if question count met
- AI Min = 4 questions but all reframed in deficit-language → SQ3 fail (AI's strengths-frame is the contribution)
- Accountant Min = 4 questions but all stripped of numerical benchmarks → SQ3 fail (data specificity is the contribution)
- Systems Thinker present but archetype vocabulary fully replaced with generic systems language → SQ3 fail
- FPT Min not met because Cluster 12 collapsed into Cluster 2 or Cluster 4, or dropped entirely → SQ3 fail
- Futurist Min met in count but all trend-grounding stripped → SQ3 fail
- AA present in numbers but CG-16 OR CG-17 collapsed into the other (losing access-design vs accountability-architecture distinction) → SQ3 partial fail

---

## Dimension Balance Target

Per methodology Analysis Dimensions §6 (Strategic / Tactical / Creative / Analytical / Human-centered).

**Synthesize output (48 questions):**

| Dimension | Target % | Target Q Count | Source Personas |
|---|---|---|---|
| **Strategic** | ~27% | ~13 | Futurist, parts of Analyst, parts of Systems Thinker, DA fusion/growth (Clusters 1, 3, 5, 8, 11) |
| **Analytical** | ~23% | ~11 | Analyst, Accountant, FPT (Clusters 2, 4, 12) |
| **Human-centered** | ~23% | ~11 | Audience Advocate, Empath, Appreciative Inquirer (Clusters 6, 7, 10) |
| **Tactical** | ~15% | ~7 | Devil's Advocate operational, parts of Analyst and Accountant operational (Clusters 9, parts of 2, 8) |
| **Creative** | ~12% | ~6 | AI reimagining, FPT alternatives, Questioner broader-brand (parts of Cluster 7, 12) |

**Food-truck vs tool-library dimension contrast:** Food-truck is **meaningfully more Strategic** (~27% vs tool-library's ~20%) because of the regulatory/ordinance cluster (Cluster 1, 6 questions) and the growth-trajectory cluster (Cluster 3, 4 questions) both operate in strategic territory, plus the Futurist-dominant Cluster 11 (4 questions). Food-truck is **slightly less Human-centered** (~23% vs ~30%) because tool-library's equity/community-building emphasis spans three clusters (1, 8, 9) while food-truck's human-centered content is more compact (clusters 6, 7, 10). Food-truck is **similar in Analytical** (~23% vs ~25%) and **similar in Tactical** (~15% vs same).

**Append additions to dimension balance** (47 questions, separate from above):
- Provocateur, Visionary push **Creative** materially upward
- Storyteller pushes **Human-centered** upward
- Constraint Flipper pushes **Creative** upward
- Politician pushes **Strategic** upward (political-analytical vocabulary)
- Analogist pushes **Creative** upward

**Total Phase 2C output (Synthesize 48 + Append 47 = 95 questions):**

| Dimension | Total % | Total Q Count |
|---|---|---|
| Strategic | ~24% | ~23 |
| Analytical | ~13% | ~13 |
| Human-centered | ~20% | ~19 |
| Tactical | ~9% | ~8 |
| Creative | ~34% | ~32 |

**Balance failure flags:**
- Strategic <22% in Synthesize portion → regulatory/growth/trends clusters collapsed
- Human-centered <18% in Synthesize portion → AA/Empath/AI voice stripped
- Analytical >30% in Synthesize portion → Analyst/Accountant/FPT dominance at expense of human-centered and trend-based clusters
- Creative <8% in Synthesize portion → AI's reimagining voice and FPT blue-sky framing lost
- Append Creative <25% of total → Provocateur/Visionary/CF voices stripped from append

---

## Per-Cell Scoring Notes for SP1

- **This cell has the heaviest cross-persona merger in BL1 so far.** CG-9 (SBA vs bootstrap) is 7-way, absorbing Analyst, Accountant, DA, ST ×2, Questioner, FPT. SP1's performance on CG-9 is a single-point quality check — variants that produce a generic "evaluate the SBA loan" question fail on Accountant voice, ST archetype, and FPT capital-allocation simultaneously.

- **Accountant voice-preservation is load-bearing for a finance-heavy topic.** Same as tool-library/high pattern. Accountant has 0 strictly-unique questions (11 of 12 in CGs) — if SP1 variants strip numerical specificity from mergers, Accountant's entire contribution is lost. Food-truck/high is one of the best cells for detecting "Accountant voice stripping" as a synthesis failure mode. The specific benchmarks SP1 should check preserved: **$12-16** (lumpia taco price), **25-35%** (food cost ratio), **$750-850/month** (SBA service), **$800-1,500/month** (commissary), **$50-70K** (second truck capital), **40-60%** (seasonal variation), **60%** (top-3-items fixed-cost coverage).

- **Cluster 12 (First Principles) should survive at 4 questions.** FPT and Questioner produce 9 questions in this cluster (7% of input). The cluster is thinner than tool-library/high's Cluster 11 (11 questions, 8%). Variants that under-cluster (~9 clusters) will typically lose this cluster — score accordingly. The preserve-distinct CG-21 (6 questions) is the main source.

- **Cluster 11 (Emerging Trends) is Futurist-only.** If Cluster 11 is collapsed into other clusters (e.g., folded into Cluster 8 acquisition or Cluster 1 regulatory), Futurist is effectively stripped from the output. This is a harder preservation check than tool-library/high where Futurist was more distributed.

- **Cluster 10 (Founder Wellbeing) is a food-truck-specific emphasis.** Tool-library did not have this as a dedicated cluster (the solo-founder angle was not as central). Food-truck's high Empath presence + solo-first-time-owner framing makes Cluster 10 a distinct cluster that must be preserved. SP1 variants that fold Empath Q4/Q5/Q9/Q12 into Cluster 1 (bureaucracy) or Cluster 3 (growth-feelings) lose the founder-wellbeing cluster.

- **The 4 preserve-distinct groups (CG-3, CG-11, CG-15, CG-21) define the "don't merge too aggressively" check.** CG-3 (three ST regulatory archetypes) is especially critical — merging these collapses ST's named-archetype voice. CG-15 (cultural authenticity) has two distinct angles (structural co-creation vs emotional lineage) that collapse if merged. CG-21 has 6 distinct first-principles framings that anchor Cluster 12.

- **GT1 watchlist framing (re-stated from task brief):** This cell is on the GT1 medium-confidence watchlist because Politician-as-moderate rested on regulatory-process-engagement language and was revisable. If SP1 scores anomalously poorly on this cell, re-check GT1 before blaming the synthesis prompt. The 12-cluster structure and the 48-question target assume GT1 Rev 3 composition (Accountant Synthesize + Politician Append). Without Accountant, Cluster 2 and Cluster 4 thin out; without Politician, Append universe drops to 37 questions but Synthesize universe is unchanged. The baseline above is canonical for GT1 Rev 3.

- **Politician as Append is novel but uncontested at high effort.** Politician's 10 questions all append per D1 + persona-selection-guide. None of the 132 Synthesize questions are Politician. SP1 variants that route Politician through synthesis rather than append fail SQ4 by stripping political-analytical vocabulary (veto players, coalition sequencing, political capital) that is Politician's contribution. The 10 Politician questions overlap thematically with Cluster 1 (regulatory) and Cluster 6 (community power) but their mode of engagement is distinct from the Synthesize angles.

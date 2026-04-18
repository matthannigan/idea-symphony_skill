# tool-library — medium — Synthesis Target

**Input count:** 123 (82 Synthesize + 41 Append, of which 30 are selected: 5 per Perspective persona × 4 personas via round-robin + all 10 Politician per D1 Append-all rule for Politician)
**Synthesize-group input count:** 82 (the subset the synthesis step operates on)
**Expected output count:** 60 total (range 55–65, target 60)
- Synthesized questions: 30 (range 27–33, target 30)
- Appended questions: 30 (exact — 4 Perspective personas × 5 per D1 medium rule + Politician 10 per persona-selection-guide "All 8-10" Append rule)
**Compaction ratio (Synthesize stream):** 82/30 = 2.7 (range 2.5–3.0, target 2.7)
**Compaction ratio (total):** 123/60 = 2.05 (range 1.9–2.2, target 2.05)
**Cluster count in output:** 11 (range 10–12, target 11 — matches B1)

**Scoring convention:** Target = point estimate for headline scoring. Range = pass/fail band. Outside-range results are scored with severity proportional to distance from the nearest band edge.

**Reference:** `persona-selection-guide_Phase2B.md` projects medium-effort total output at ~45–65 questions. Our target of 60 sits at the upper end of that range because this cell's Synthesize input is 82 (middle of the guide's 50–80 range), the Append contribution is unusually high (30 vs typical 20 because Politician appends all 10), and convergence density (50.4%) supports moderate compaction.

**Notable deviation from baseline norm:** Append quota is 30, not 20. This is because Politician (Tier 3 Append, 10 questions) is added to the 4 Perspective personas × 5 quota = 20. The Politician's D1 rule is "All 8-10" (append everything), not round-robin subset. This is expected and documented in `persona-selection-guide_Phase2B.md` Append Group table ("Politician — All 8-10"). See B4 file for Append detail.

---

## Target Output Structure

The 30 synthesized questions distribute across the 11 B1 clusters. Cluster-level compaction varies: high-convergence clusters compact more aggressively; single-persona or highly-distinct-voice clusters compact minimally.

### Cluster 1: Inventory, Acquisition & Lifecycle Economics

**Input questions (Synthesize-only):** 6 (B1 Synthesize-only count)
**Expected output questions:** 3
**Compaction:** 6/3 = 2.0×
**Must include:**
- Analyst Q1 (core inventory cost breakdown by category) — foundational sizing question; no convergent counterpart
- Analyst Q3 (replacement cycle modeling) — long-horizon budgeting angle; no convergent counterpart
- Merged acquisition/ROI question from Convergence Group 5 (anchored in Analyst Q13 + Devil's Advocate Q6)

**Should include:**
- Audience Advocate Q9 (who decides what's valuable — inventory selection legitimacy) — unique equity lens on acquisition; adds a critical "whose voice shapes the inventory" angle to the otherwise analytical cluster

**Optional:**
- Questioner Q14 (tool selection evolution via feedback loops) — fits here if Cluster 11 doesn't already capture the feedback-indicator framing

### Cluster 2: Unit Economics, Cost Model & Financial Sustainability

**Input questions (Synthesize-only):** 7 (B1 Synthesize-only count)
**Expected output questions:** 3
**Compaction:** 7/3 = 2.3×
**Must include:**
- Merged cost-model/hidden-costs/funding question from Convergence Group 3 (anchored in Analyst Q2, Devil's Advocate Q4, Devil's Advocate Q5)
- Merged membership-model/access question from Convergence Group 4 (anchored in Analyst Q12, Devil's Advocate Q10)
- Analyst Q11 (longitudinal sustainability indicators — leading-indicator framing, preserved distinct per Group 3)

**Should include:**
- Questioner Q8 (why individual lending? group/household/org accounts) — paradigm challenge that would be lost if compacted into membership-model merger

**Optional:**
- — (3 Must slots filled)

### Cluster 3: Space, Operations & Capacity Constraints

**Input questions (Synthesize-only):** 7 (B1 Synthesize-only count)
**Expected output questions:** 3
**Compaction:** 7/3 = 2.3×
**Must include:**
- Analyst Q4 (volunteer capacity constraints — sustainable transaction volume, bottlenecks) — foundational operational envelope question
- Analyst Q8 (space utilization efficiency at 500 sq ft) — unique spatial-design angle
- Merged space-tenure question from Convergence Group 2 (anchored in Devil's Advocate Q3, Questioner Q15)

**Should include:**
- Devil's Advocate Q8 (security / preventing theft) — distinct operational-risk angle, not covered elsewhere
- Devil's Advocate Q12 (single person with storage key) — single-point-of-failure framing, distinct from succession

**Optional:**
- Appreciative Inquirer Q9 (storefront as community magnet) — AI framing could reposition this cluster toward community-design angle; fits better in Cluster 7 (Community/Connection) probably, but flag as ambiguity

### Cluster 4: Liability, Safety & Risk Policy

**Input questions (Synthesize-only):** 5 (B1 Synthesize-only count; 3 Append-routed cross-refs excluded)
**Expected output questions:** 2-3 (target 2; see synthesizer-discretion note below)
**Compaction:** 5/2 = 2.5× or 5/3 = 1.7×
**Must include:**
- Merged liability/injury question from Convergence Group 6 (anchored in Analyst Q5 + Devil's Advocate Q7)
- Merged damage/punitive-policy question from Convergence Group 7 (anchored in Analyst Q7 + Questioner Q10 + Audience Advocate Q6)

**Should include:**
- — (2 Must convergences account for 5 of 7 input questions already)

**Optional:**
- A third question could survive: either the unmerged parts of Cluster 4 are thin, or the synthesizer could elect to preserve Audience Advocate Q6 distinctively rather than folding into the Group 7 merger. Scoring should tolerate 2 or 3 questions.

**Note on Politician Append:** Politician Q8 (political tension access vs risk) and Politician Q10 (crisis response to high-profile tool failure) are in this cluster topically but route to Append per D1. Their governance-vocabulary contributions survive via Append and complement the synthesized liability content.

### Cluster 5: Access, Equity & Participation Barriers

**Input questions (Synthesize-only):** 12 (B1 Synthesize-only count; 1 Analogist Append cross-ref excluded)
**Expected output questions:** 4
**Compaction:** 12/4 = 3.0×
**Must include:**
- Merged invisible-hurdles/documentation question from Convergence Group 9 (anchored in Audience Advocate Q2 + Questioner Q5)
- Audience Advocate Q4 (language and cultural comfort) — preserved distinct per Group 9 (institutional-space signals)
- Merged equity-framework question from Convergence Group 10 (anchored in Analyst Q10 + Questioner Q7)
- Audience Advocate Q10 (borrowing without surveillance) — distinct surveillance-specific equity dimension

**Should include:**
- Audience Advocate Q7 (friction of coordination — work/caregiving/transportation) — practical constraint dimension distinct from documentation/language
- Audience Advocate Q15 (the user you never see — non-self-selectors) — outreach-focused equity lens

**Optional:**
- Questioner Q6 (who belongs to "community" — walking-distance boundaries) — could live here or Cluster 7; documented ambiguity

### Cluster 6: First-Time User Experience & Dignity

**Input questions (Synthesize-only):** 5 (B1 Synthesize-only count; 2 Storyteller Append cross-refs excluded)
**Expected output questions:** 3
**Compaction:** 5/3 = 1.7×
**Must include:**
- Merged first-experience question from Convergence Group 11 synthesis-side (anchored in Audience Advocate Q1 + Audience Advocate Q5)
- Audience Advocate Q3 (dignity in the asking — emotional journey, shame-to-dignity) — unique human-centered framing
- Audience Advocate Q8 (knowledge gaps and confidence — help-asking design) — distinct confidence-vs-shame design question

**Should include:**
- Appreciative Inquirer Q5 (what would "belonging" look like) — AI strengths-based register on the same design question; would be lost if folded into a general-experience merger

**Optional:**
- Appreciative Inquirer Q4 (3-year vision of library as neighborhood heart) — could live here or Cluster 7 (Community); documented ambiguity

**Note on Storyteller Append:** Storyteller Q1 (Elena narrative) and Storyteller Q3 (first repair accomplishment) are topically in this cluster but route to Append per D1. Their narrative-specific vignettes survive via Append and complement the synthesized dignity content.

### Cluster 7: Community, Connection & Relational Design

**Input questions (Synthesize-only):** 10 (B1 Synthesize-only count; 4 Append cross-refs — Storyteller 2, Analogist 1, Visionary 1 — excluded)
**Expected output questions:** 3
**Compaction:** 10/3 = 3.3×
**Must include:**
- Audience Advocate Q11 (reciprocity vs charity — mutual exchange over receiving) — signature equity-to-community bridge
- Audience Advocate Q14 (building community or just moving tools) — the core question of the cluster
- Appreciative Inquirer Q1 (when has sharing worked beautifully in this neighborhood?) — AI signature "what works" question; strengths-based register must be preserved

**Should include:**
- Appreciative Inquirer Q3 (hidden community assets beyond obvious resources) — AI unique territory; strongly resistant to synthesis flattening
- Appreciative Inquirer Q10 (small experiment revealing genuine interest) — AI small-step/discovery framing

**Optional:**
- Questioner Q6 (how do we define community?) — paradigm question that could live here or Cluster 5
- Appreciative Inquirer Q12 (meaningful first-three-month win) — celebratory/momentum framing; unique AI move

**Note on Append flow:** Storyteller Q2 (story tools tell about borrowers), Q5 (tools as community connectors), and Analogist Q6 (seed library knowledge circulation) address this cluster's territory from distinctly Append-routed angles and land in the Append output per D1.

### Cluster 8: Volunteer Sustainability, Governance & Stewardship

**Input questions (Synthesize-only):** 4 (B1 Synthesize-only count; 7 Append cross-refs — Politician 4, Analogist 2, Storyteller 1 — excluded)
**Expected output questions:** 3
**Compaction:** 4/3 = 1.3×
**Must include:**
- Merged volunteer-burnout/succession question from Convergence Group 1 synthesis-side (anchored in Devil's Advocate Q1 + Questioner Q13)
- Appreciative Inquirer Q2 (what the core volunteers already do well together) — AI strengths-based distinctive register
- Appreciative Inquirer Q7 (existing volunteer strengths extending into library operations) — builds on Q2 with operational-design implication

**Should include:**
- — (5 Synthesize inputs; 3 Must already covers them all)

**Optional:**
- — (remaining 2 Synthesize inputs are: AI Q2/Q7 already in Must; no other Synthesize inputs exist — the cluster is Append-heavy)

**Note on Append flow:** Politician Q3 (homeowners vs renters governance), Q5 (board structure preventing capture), Q6 (formal vs informal veto power), Q7 (political legitimacy threshold) all flow to Append per D1. Analogist Q3 (distributed-immune-system volunteers), Q8 (open-source maintainers as model) flow to Append. Storyteller Q7 (Maria year-in-the-life) flows to Append. This cluster is **dominated by Append content** in the final output — the synthesized portion is 3 questions but the cluster-topic is represented by ~10 Append questions plus the 3 synthesized. SP1 scoring should account for this asymmetry: the cluster is valid and well-populated in the final output, but via a different stream than synthesis.

### Cluster 9: Trust, Accountability & the Commons Problem

**Input questions (Synthesize-only):** 6 (B1 Synthesize-only count; 1 Analogist Append cross-ref excluded)
**Expected output questions:** 3
**Compaction:** 6/3 = 2.0×
**Must include:**
- Merged commons-dynamics/stewardship question from Convergence Group 8 (anchored in Questioner Q11 + Systems Thinker Q3)
- Questioner Q9 (what creates trust between strangers — informal/community mechanisms) — preserved distinct per Group 8 rationale
- Systems Thinker Q6 (behavioral adaptations undermining policy) — preserved distinct per Group 8 rationale

**Should include:**
- Questioner Q12 (restorative justice for non-returners) — unique framing distinct from enforcement
- Audience Advocate Q6 (when things go wrong — already in Group 7 partial, but its commons-interaction angle could survive here if Cluster 4 compacts aggressively)

**Optional:**
- — (Must slots filled)

### Cluster 10: External Ecosystem, Partnerships & Neighborhood Positioning

**Input questions (Synthesize-only):** 6 (B1 Synthesize-only count; 3 Politician Append cross-refs excluded)
**Expected output questions:** 3
**Compaction:** 6/3 = 2.0×
**Must include:**
- Merged partnerships/maintenance question from Convergence Group 15 synthesis-side (anchored in Analyst Q14 + Devil's Advocate Q9)
- Merged existing-networks/ecosystem question from Convergence Group 12 (anchored in Audience Advocate Q12 + Systems Thinker Q11)
- Questioner Q2 (why assume physical library model? mobile / peer-to-peer / cooperative alternatives) — preserved distinct per Group 12 (deeper paradigm challenge)

**Should include:**
- Systems Thinker Q10 (outside-system dependencies — volunteers, donors, landlord, members) — systems-framing of the dependency mapping

**Optional:**
- Appreciative Inquirer Q11 (who in this community is already doing related work?) — preserved distinct per Group 12; AI signature territory

**Note on Politician Append:** Politician Q1 (informal power), Q2 (endorsement sequencing), Q9 (where opposition comes from) are all routed to Append per D1. They carry the coalition-cascade and political-capital vocabulary that would be stripped by synthesis. The synthesized cluster has 3 questions; the Append stream adds 3+ Politician questions to the same cluster's territory.

### Cluster 11: Long-Term Identity, Evolution & System Dynamics

**Input questions (Synthesize-only):** 14 (B1 Synthesize-only count; 8 Append cross-refs — Visionary 5, Storyteller 2, Analogist 1 — excluded)
**Expected output questions:** 4
**Compaction:** 14/4 = 3.5×
**Must include:**
- Merged success-limits question from Convergence Group 13 (anchored in Systems Thinker Q1 + Systems Thinker Q12)
- Merged early-adopter-capture question from Convergence Group 14 synthesis-side (anchored in Devil's Advocate Q11 + Systems Thinker Q2)
- Questioner Q3 (what if library becomes unsustainable after two years — exit strategies)
- Systems Thinker Q14 (library role shift as neighborhood conditions change — gentrification, economic downturn, mission evolution)

**Should include:**
- Systems Thinker Q13 (composite feedback signals for health)
- Audience Advocate Q13 (sustaining value beyond enthusiasm — year 3-5)

**Optional:**
- Systems Thinker Q4 (local tool ownership pattern shifts — dependency vs resilience)
- Systems Thinker Q7 (fixes-that-fail patterns)
- Analyst Q9 (community impact metrics — could live here if Cluster 11 expands)

---

## Synthesized Output Summary (Target 30)

| Cluster | Target Qs | Must | Should | Optional |
|---|---|---|---|---|
| 1 Inventory/Economics | 3 | 3 | 1 | 1 |
| 2 Cost Model/Sustainability | 3 | 3 | 1 | 0 |
| 3 Space/Ops/Capacity | 3 | 3 | 2 | 1 |
| 4 Liability/Safety | 2 | 2 | 0 | 1 |
| 5 Access/Equity Barriers | 4 | 4 | 2 | 1 |
| 6 First-Time UX/Dignity | 3 | 3 | 1 | 1 |
| 7 Community/Connection | 3 | 3 | 2 | 2 |
| 8 Volunteer/Governance | 3 | 3 | 0 | 0 |
| 9 Trust/Commons | 3 | 3 | 2 | 0 |
| 10 Ecosystem/Partnerships | 3 | 3 | 1 | 1 |
| 11 Long-term Dynamics | 4 | 4 | 2 | 3 |
| **Sum** | **34** | **34** | **14** | **11** |

**Must totals:** 34 — exceeds target of 30. To hit the 30-target, the synthesizer drops 4 Must-questions from the lowest-priority slots:
1. Cluster 5 (Access/Equity) → drop AA Q10 (surveillance) if surveillance dimension folds into documentation-merger; else drop AA Q15 (user you never see) as fallback
2. Cluster 11 (Long-term) → drop ST Q14 (neighborhood conditions change) if Q13 (feedback signals) is merged with Analyst Q9
3. Cluster 3 (Space/Ops) → drop DA Q12 (keyholder vacation) if Q8 (theft prevention) covers single-point-of-failure adequately
4. Cluster 7 (Community) → drop AI Q3 (hidden community assets) if AI Q1 (sharing worked beautifully) carries the AI strengths-register load

**Should totals:** 14 (slack above target). **Optional totals:** 11 (reserved for synthesizer-judgment additions).

**Range 27–33 band:** 27 (= 30 target minus 3 cuts to lowest-priority Must in Clusters 5, 7, 11) / 33 (= 30 target plus 3 cuts reversed, adding back high-priority Shoulds).

---

## Questions Expected to Be Dropped

These Synthesize-group inputs should **not** survive synthesis (merged or subsumed):

| Question | Rationale |
|---|---|
| Analyst Q13 (acquisition prioritization) | Merged into Convergence Group 5 output |
| Devil's Advocate Q6 (specialty tool ROI) | Merged into Convergence Group 5 output |
| Analyst Q2 (unit economics per loan) | Merged into Convergence Group 3 output |
| Devil's Advocate Q4 (who pays for replacement) | Merged into Convergence Group 3 output |
| Devil's Advocate Q5 (hidden costs) | Merged into Convergence Group 3 output |
| Analyst Q12 (membership vs open-access) | Merged into Convergence Group 4 output |
| Devil's Advocate Q10 (people who need access can't meet reqs) | Merged into Convergence Group 4 output |
| Devil's Advocate Q3 (space unavailable after year 1) | Merged into Convergence Group 2 output |
| Questioner Q15 (storefront unavailable in 3 years) | Merged into Convergence Group 2 output |
| Analyst Q5 (liability exposure) | Merged into Convergence Group 6 output |
| Devil's Advocate Q7 (plan when someone injured) | Merged into Convergence Group 6 output |
| Analyst Q7 (loss/damage thresholds) | Merged into Convergence Group 7 output |
| Questioner Q10 (punitive damage policies) | Merged into Convergence Group 7 output |
| Audience Advocate Q6 (when things go wrong) | Merged into Convergence Group 7 output |
| Audience Advocate Q2 (invisible hurdles) | Merged into Convergence Group 9 output |
| Questioner Q5 (what barriers might prevent use) | Merged into Convergence Group 9 output |
| Analyst Q10 (equity access analysis) | Merged into Convergence Group 10 output |
| Questioner Q7 (early adopters reflect diversity) | Merged into Convergence Group 10 output |
| Audience Advocate Q1 (walk-up experience) | Merged into Convergence Group 11 synthesis-side |
| Audience Advocate Q5 (first-time user journey) | Merged into Convergence Group 11 synthesis-side |
| Devil's Advocate Q1 (volunteer burnout) | Merged into Convergence Group 1 synthesis-side |
| Questioner Q13 (volunteer burnout year two) | Merged into Convergence Group 1 synthesis-side |
| Questioner Q11 (tragedy of the commons at scale) | Merged into Convergence Group 8 output |
| Systems Thinker Q3 (commons balancing mechanisms) | Merged into Convergence Group 8 output |
| Audience Advocate Q12 (when library isn't there) | Merged into Convergence Group 12 output |
| Systems Thinker Q11 (interface with existing tool-sharing) | Merged into Convergence Group 12 output |
| Systems Thinker Q1 (self-reinforcing growth patterns) | Merged into Convergence Group 13 output |
| Systems Thinker Q12 (too successful failure mode) | Merged into Convergence Group 13 output |
| Devil's Advocate Q11 (early adopter capture) | Merged into Convergence Group 14 synthesis-side |
| Systems Thinker Q2 (initial user base shapes identity) | Merged into Convergence Group 14 synthesis-side |
| Analyst Q14 (partnership ROI) | Merged into Convergence Group 15 synthesis-side |
| Devil's Advocate Q9 (maintenance backlog death spiral) | Merged into Convergence Group 15 synthesis-side |

(32 Synthesize questions drop into mergers. Remaining 82 − 30 target − 32 merged = 20 Should/Optional candidates, several of which also drop depending on slot availability. No "low-quality outliers" flagged — the test data has no filler in this cell; all drops are merge-driven.)

**Cross-stream awareness:** Politician has 10 append questions. Topic-convergence drops *do not apply* — all 10 Politician questions flow to Append intact, including the 7 that overlap topically with synthesis convergence groups (Groups 2, 6, 14, 15). Similarly, Storyteller Q1, Q3, Q7 and Analogist Q4, Q6 topically converge with synthesis groups but flow intact to Append.

---

## Persona Representation Requirements

Minimum number of questions from each Synthesize-group persona that MUST be represented (verbatim or as anchor of a merger) in the synthesized output. Anchoring in a merger counts as representation for scoring purposes.

| Persona | Input Qs | Minimum Represented | Coverage Target | Must Clusters |
|---|---|---|---|---|
| Analyst | 14 | 6 | 43% | Clusters 1, 2, 3, 4, 5, 10 (must be in at least 5 of 6) |
| Appreciative Inquirer | 12 | 5 | 42% | Clusters 6, 7, 8 (must dominate Cluster 7 — AI signature territory) |
| Audience Advocate | 15 | 7 | 47% | Clusters 4, 5, 6, 7 (must be in all 4 with multi-question representation in 5, 6, 7) |
| Devil's Advocate | 12 | 5 | 42% | Clusters 1, 2, 3, 8, 11 (must anchor at least 3 mergers) |
| Questioner | 15 | 5 | 33% | Clusters 2, 5, 9, 10, 11 (must anchor at least 2 mergers; must preserve Q2 paradigm challenge) |
| Systems Thinker | 14 | 6 | 43% | Cluster 11 (must dominate — Systems Thinker's distinctive territory); Clusters 9, 10 |

**Total minimum representation:** 34 persona-question-slots across 30 output questions (because mergers represent multiple personas simultaneously).

**Critical attention personas:**
- **Appreciative Inquirer** has the highest uniqueness score (10 of 12 are fully unique) and the most at-risk voice in synthesis. The AI's strengths-framing ("when has sharing worked beautifully," "what hidden assets surprise outsiders," "what would belonging look like") is easily domesticated into generic "community building" language. SP1 should check that AI's appreciative register survives in at least 3 output questions — not just that 5 of its questions are topically represented.
- **Audience Advocate** contributes to 4 clusters and has high unique-contribution density (10 of 15 uniques). The equity lens must survive in at least Clusters 4, 5, 6, 7. Particularly at-risk: Q3 (dignity in asking), Q10 (borrowing without surveillance), Q11 (reciprocity vs charity), Q14 (building community or moving tools) — each covers a distinct equity/dignity dimension that general-equity mergers would lose.
- **Systems Thinker** carries Cluster 11 (Long-term Dynamics) with 5 of the 11 cluster questions. If Cluster 11 compacts below 4 output questions, Systems Thinker's signature long-run-system framing is hollowed.
- **Questioner**'s paradigm-level questions — Q1 (what problem are we actually solving?), Q2 (why a physical library?), Q4 (who is the typical user?), Q6 (how do we define community?) — are high-value framings that get pulled into mergers as "one of several voices" and lose distinct credit. SP1 should verify these paradigm questions appear as distinct output questions where possible.

**Persona-voice preservation flag:** When Convergence Groups 1, 6, 7, 8 are merged, the merged question should preserve at least 2 distinct persona registers (e.g., Analyst's measurement + Devil's Advocate's challenge + Audience Advocate's equity). Generic-merger language that flattens into "how do we ensure inclusive tool access?" would fail voice-preservation scoring even if topically correct.

**Politician (Append-routed) note:** Politician is not in this Synthesize-group representation table because D1 routes it to Append. However, Politician representation IS scored in the Append target (B4) — all 10 Politician questions should appear in the final Append output. Any Politician question that fails to appear constitutes an Append-fidelity failure, not a synthesis-representation failure.

---

## Dimension Balance Target

Based on input distribution across Synthesize-group only (82 questions):

**Input distribution (by cluster primary-dimension, with orphan Provocateur carve-out):**
- Human-centered: 44/123 = 35.8% overall (Clusters 5, 6, 7, 9)
- Strategic: 57/123 = 46.3% (Clusters 1, 2, 8, 10, 11)
- Tactical: 11/123 = 8.9% (Cluster 3)
- Analytical: 9/123 = 7.3% (Cluster 4)
- Creative: 0/123 = 0.0% (no Synthesize-group Creative cluster — Creative enters via Append)
- Orphan/Provocative: 7/123 = 5.7% (Provocateur)

**Output target distribution (60 total = 30 synthesized + 30 appended):**

| Dimension | Synthesized (30) | Appended (30) | Total Output (60) | Target % |
|---|---|---|---|---|
| Human-centered | 13 (Clusters 5, 6, 7, 9) | 5 (Storyteller narrative + Visionary Q3 third-place + relational Analogist) | 18 | 30.0% |
| Strategic | 13 (Clusters 1, 2, 8, 10, 11) | 12 (Politician's 10 governance/coalition/legitimacy + Visionary Q1 + Storyteller Q4) | 25 | 41.7% |
| Tactical | 3 (Cluster 3) | 2 (Analogist A-B institutional imports — library circulation, car-sharing) | 5 | 8.3% |
| Analytical | 2 (Cluster 4) | 0 | 2 | 3.3% |
| Creative | 0 (no pure-Creative Synthesize cluster) | 6 (Analogist ecosystem/immune/guild metaphors + Visionary Q2/Q4/Q5 reframings) | 6 | 10.0% |
| Provocative | 0 | 5 (Provocateur inversions) | 5 | 8.3% |

**Target balance:**
- Strategic: 41.7% | Human-centered: 30.0% | Creative: 10.0% | Tactical: 8.3% | Provocative: 8.3% | Analytical: 3.3%
- Sums to 101.6% because Provocative is orthogonal to the five-dimension scheme; if collapsing to D2's five categories, Provocative folds ~60% into Creative + ~40% into Strategic for dimension-balance scoring.

**If re-normalized to D2's five dimensions (Provocative folded):**
- Strategic: 45% | Human-centered: 30% | Creative: 15% | Tactical: 8% | Analytical: 3% ≈ 101% (round-off)

**Effort-level adjustment notes:**
- The **Strategic dimension dominance (~45%)** reflects the topic's heavy systems/governance/economic/long-term content. This is topic-specific and should not be flattened toward a generic balance.
- The **low Analytical (3.6%) and low Creative (9.1%) from Synthesis** are structural — this topic's analytical questions concentrate in Cluster 4 (a small cluster), and Creative enters purely via the Append stream (D1-expected).
- The **Politician's Append contribution (10 Strategic/governance questions)** inflates Strategic in the final output. Without Politician, the Strategic share would be ~35%. This is a real consequence of Tier 3 selection on this cell.
- **Human-centered (30.9%)** benefits from strong Audience Advocate + Appreciative Inquirer contributions in Clusters 5, 6, 7. This is well-balanced for a community-topic cell.

**Scoring tolerance:** Each dimension ±4 percentage points counts as on-target (wider tolerance than space-party baseline because this cell's dimension skew is more pronounced by topic nature). ±7 points counts as acceptable. Beyond that, flag for SP1 investigation.

**Outsize-Strategic-share flag for SP1:** the 45% Strategic share is a topic-driven signal, not a synthesis-prompt failure. SP1 scoring should normalize dimension-balance expectations to input-distribution rather than to a generic 20%-per-dimension ideal. Tool-library-medium is a Strategic-heavy topic by nature.

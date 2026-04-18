# property-management — medium — Synthesis Target

**Input question count:** 92 (Synthesize pool only; Append pool of 28 handled separately in B4)

**Expected synthesis output count:** 33 (range 29–37, target 33)

**Expected compaction ratio:** 92/33 = 2.79:1 (range 2.49:1–3.17:1, target 2.79:1)

**Expected cluster count in output:** 12 (range 11–13, target 12 — matches B1)

**Scoring convention:** Target is point estimate for headline scoring. Range = pass/fail band. Outside-range scored with severity proportional to distance.

---

## Rationale for Target

The methodology's persona-selection guide projects medium-effort Synthesize-group output as "~50-80 questions → ~20-35 thematic clusters" across all topics aggregated. For a single topic at 92 Synthesize-input questions (moderately above the 50-80 typical range because Lawyer adds 10 Tier 3 questions), the natural per-topic projection is:

- **Cluster count:** 12 natural clusters identified in B1 (within the 11-13 expected range)
- **Output questions per cluster:** 2-4 average (2 for small clusters, 4-5 for 6-persona-convergence clusters)
- **Total target:** ~33 questions across 12 clusters

The 2.79:1 compaction ratio is moderate — slightly less aggressive than the 3:1 sometimes implied by aggregate projections, but appropriate given:
1. High convergence density (71%) means many questions can merge or be represented by 1-2 cluster representatives
2. Moderate unique-question rate (29%) means aggressive compaction would lose distinctive territory, especially Systems Thinker / Audience Advocate / AI / Lawyer
3. Cluster 1 (Regulatory Scenarios, 15 input / 6-persona) and Cluster 7 (Good Neighbor, 16 input / 6-persona) need 4-5 questions each
4. Cluster 9 (Owner Relationship, 10 input / 7-persona spread) also warrants 4 output questions

---

## Target Output Structure

For each cluster from B1, the synthesis output should include the following:

### Cluster 1: Regulatory Scenarios, Political Risk & State Preemption

**Input count:** 15 (Analyst 4, DA 3, Questioner 2, Systems Thinker 3, Storyteller 2, Lawyer 1)

**Expected questions in output:** 5

**Must include:**
- A scenario-planning anchor (Analyst lens) — anchor on Analyst Q1: "What happens to the business model under (a) status quo enforcement, (b) stricter city limits below year-three target, (c) state preemption creating permissive environment, and (d) complete ban in core neighborhoods — and which variables control the transition between these scenarios?"
- An existential / pivot-readiness anchor (DA lens) — anchor on Devil's Advocate Q1 or Q2: "If permits become unavailable or the election flips, what alternative strategies (subleasing, permitted-only, pivot to long-term rentals) preserve the business, and how quickly could operations pivot within 90 days of new state-level rules?"
- A political-timing anchor (Questioner / Storyteller lens) — anchor on Systems Thinker Q1 or Questioner Q1: "How might the upcoming council election create a 'worse before better' dynamic if the company takes visible positions, and what signals would indicate engagement is building influence vs. inviting targeting?"
- A preemption coalition-redraw anchor (Systems Thinker lens) — anchor on Systems Thinker Q3: "How might statewide preemption of local STR bans alter the local political coalition — defusing neighborhood opposition or pushing regulation into new arenas (HOA, nuisance, quality-of-life policing)?"
- A political-engagement-ROI anchor (Analyst lens) — anchor on Analyst Q4: "How should the company analyze the return on political engagement — what contribution / coalition / positioning would materially affect regulatory outcomes, and what's the cost-benefit threshold?"

**Should include:**
- Storyteller Q3 (post-election cascade narrative) if cluster has a 6th slot — narrative-integration value

**Optional:**
- Analyst Q15 (compliance specialization as moat) — overlaps with Questioner Q5 / Q6 in Cluster 12
- DA Q3 (preemption double-edged sword) — covered by DA Q1/Q2 and Systems Thinker Q3
- Questioner Q2 (political timing — delayed launch) — covered by Systems Thinker Q1

---

### Cluster 2: HOA Restrictions & Permit Navigation

**Input count:** 5 (Analyst 1, DA 1, Questioner 2, Lawyer 1)

**Expected questions in output:** 3

**Must include:**
- An HOA-portfolio-strategy anchor — anchor on Analyst Q3 or Lawyer Q10: "What analytical / legal framework should guide which HOA-governed properties to pursue — avoiding entirely, accepting legal costs to challenge, or targeting grandfathered / ambiguous rules — considering covenants run with the land and state preemption may emerge?"
- A multi-rule-compliance anchor — anchor on Devil's Advocate Q4: "How do we efficiently track and maintain compliance across dozens of HOA rule sets and respond when an HOA changes its rules mid-contract?"
- A permit-as-product anchor — anchor on Questioner Q4 or Analyst Q2: "Could the company position itself to help owners navigate permit transfers, grandfather clauses, or appeal processes as a core service offering — and what would the cost / timeline structure for permit acquisition look like across zones?"

**Should include:**
- (None — 3 questions cover this cluster)

**Optional:**
- Questioner Q3 (HOA vs. non-HOA first) — covered by Analyst Q3

---

### Cluster 3: Unit Economics, Break-Even & Cash Flow

**Input count:** 8 (Analyst 3, DA 2, Questioner 3)

**Expected questions in output:** 3

**Must include:**
- A break-even-under-stress anchor — anchor on Analyst Q5: "What is the true break-even per property when management software, insurance, permit fees, occupancy taxes, cleaning margins, emergency response staffing, and regulatory compliance are layered in, and how does this vary across property types and price points?"
- A seasonal-cash-flow anchor — possibly merged (per B2 Group 6): "What does a 12-month cash flow model look like with 60-80% off-season revenue drops while fixed costs persist, and how does $80K capital sustain 4-6 months of negative cash flow before peak season returns?"
- A scenario-resilience anchor — anchor on Questioner Q10 or DA Q5: "What happens to per-property break-even if regulatory changes reduce allowable occupancy by 20-30%, and what termination clauses protect the company from carrying underperforming properties?"

**Should include:**
- Questioner Q7 (capital constraints — scale slower vs. rapid scale) as 4th slot if desired — distinctive reframing

**Optional:**
- Analyst Q14 (owner acquisition funnel CAC) — moved to Cluster 12 per placement rules; reconsider placement here if cluster prefers acquisition-economics lens
- Analyst Q6 if the merge with DA Q8 is not performed

---

### Cluster 4: Liability Allocation, Insurance & Contractor Risk

**Input count:** 7 (Analyst 1, DA 2, Questioner 1, Lawyer 3)

**Expected questions in output:** 3

**Must include:**
- A guest-injury-liability anchor — possibly merged (per B2 Group 7): "How should the management agreement allocate guest-injury liability when owner insurance could deny STR coverage due to commercial-use exclusion — what indemnification provisions survive legal challenge, and how do insurance structures (general liability, umbrella, property) prevent the company from becoming the deep pocket?"
- A contractor-vicarious-liability anchor — possibly merged (per B2 Group 8): "What contractual provisions, insurance-certification requirements, and indemnification structures prevent vicarious liability on contractor selection — considering courts often look past 'independent contractor' designations when the company controls schedules, standards, and guest access?"
- An insurance-verification / uninsurability anchor — anchor on Questioner Q8 or Lawyer Q8: "What scenarios aren't covered by standard general liability, E&O, or coastal windstorm/flood policies — how should the contract address gaps when an owner's policy lapses or excludes STR coverage, and what verification protocols ensure continuous coverage?"

**Should include:**
- Analyst Q8 (cost allocation between parties) as 4th slot — cost-modeling lens distinct from legal lens

**Optional:**
- Lawyer Q1 if the merge with DA Q9 is not performed
- Lawyer Q3 if the merge with DA Q10 is not performed

---

### Cluster 5: 30-Minute Response Time & Geographic Scalability

**Input count:** 4 (Analyst 1, DA 1, Questioner 1, Systems Thinker 1)

**Expected questions in output:** 3

**Must include:**
- A staffing-model anchor — anchor on Analyst Q9: "What staffing model (FTE / on-call contractors / hybrid) provides reliable 30-minute coverage across scattered properties at different portfolio scales, and what's the cost trade-off between reliability and overstaffing?"
- A stress-test anchor — anchor on Devil's Advocate Q6: "How is consistent 30-minute response maintained during peak season, staff illness, traffic, or multiple simultaneous emergencies across 30-50 scattered properties without building infrastructure that destroys margins?"
- A scale-breakpoint anchor — anchor on Systems Thinker Q8 or Questioner Q14: "What informal communication patterns that work at 5-10 properties will break at 20 / 30 / 40, and would a network of vetted local 'property ambassadors' serve better than central staff trying to cover everywhere?"

**Should include:**
- (None — 3 questions cover this 4-persona-convergence cluster)

**Optional:**
- (None — all 4 input questions are captured by the 3 anchors above)

---

### Cluster 6: Quality Control, Contractor Networks & Operational Systems

**Input count:** 4 (Analyst 2, DA 1, Systems Thinker 1)

**Expected questions in output:** 2

**Must include:**
- A quality-system-design anchor — anchor on Analyst Q10: "What systematic approach to measuring and maintaining quality across 30-50 properties would prevent reputation risks from a single bad guest experience, and what metrics and inspection cadence provide early warning of quality drift?"
- A contractor-redundancy anchor — possibly merged (per B2 Group 11): "Given contractor cleaning and maintenance as critical failure points, what vendor-network structure (single-vendor-per-neighborhood with redundancy, distributed networks, or in-house staffing) prevents guest disasters from no-shows, and what's the cost-reliability trade-off without direct employment that increases liability?"

**Should include:**
- Systems Thinker Q6 (per-property quality declining with growth) as 3rd slot — diagnostic-systems lens

**Optional:**
- (None — 2-3 questions sufficiently cover this cluster)

---

### Cluster 7: "Good Neighbor" Positioning & Community Impact

**Input count:** 16 (Analyst 1, AI 3, AA 4, Questioner 3, Systems Thinker 4, Storyteller 1) — 6-persona convergence

**Expected questions in output:** 5

**Must include:**
- An operational-standards-measurement anchor — possibly merged (per B2 Group 12): "What measurable operational standards (noise monitoring protocols, guest screening, complaint response, local hiring) would differentiate the company from absentee operators, what's the cost of implementing these versus the competitive advantage gained, and how could concrete metrics (noise per booking, neighbor surveys, local partnerships) make 'good neighbor' status verifiable rather than rhetorical?"
- A community-material-contribution anchor — anchor on Audience Advocate Q5 or AI Q2: "What would it mean for an STR management company to materially contribute to neighborhood stability and affordability rather than extract value from communities, and could revenue / business model align company success with positive community outcomes?"
- A community-benefit-program anchor — anchor on Questioner Q13: "Could the company structure revenue sharing with neighborhood associations, fund local projects, or provide community benefits that transform opponents into stakeholders?"
- A housing-displacement anchor — anchor on Audience Advocate Q6: "How might the company's presence and growth affect long-term renters' sense of belonging and future in their own neighborhoods, and are there ways to operate that acknowledge rather than externalize housing-market impacts?"
- A systemic / second-order anchor — anchor on Systems Thinker Q5 or Q14: "If 'good neighbor' operator positioning attracts higher-quality guests but creates competitive pressure on other operators to cut corners, leading to a race-to-bottom the brand can't control, how does the company address the industry-wide dynamic and the tenant-advocate-vs-STR-proponent escalation?"

**Should include:**
- Audience Advocate Q4 (invisible neighbor experience — beyond minimum compliance) as 6th slot — neighbor-experiential lens distinct from metrics

**Optional:**
- AI Q5 (Model Community Citizen — council example) — aspirational vision covered by merged anchor
- AI Q8 (Building Trust Through Visibility) — covered by merged anchor
- Analyst Q13 — covered by merged anchor
- Questioner Q11 — covered by merged anchor

**Persona-domination concern:** Systems Thinker contributes 4 of 16 and brings unique archetype-vocabulary (race-to-bottom, visibility paradox, moat-as-liability). At least 1 Systems Thinker question should survive. Audience Advocate contributes 4 of 16 and brings structural-equity lens; at least 2 AA questions should survive.

---

### Cluster 8: Guest Experience & Emotional Journey

**Input count:** 5 (Audience Advocate 4, Storyteller 1)

**Expected questions in output:** 2

**Must include:**
- An accessibility-barrier anchor — anchor on Audience Advocate Q1: "What barriers might prevent guests with disabilities, limited digital literacy, or non-English fluency from successfully booking and staying at managed properties, and how could booking / arrival experience accommodate diverse needs without requiring guests to request special accommodations?"
- A 2-AM-emergency-experience anchor — possibly composite of Audience Advocate Q3 + Storyteller Q2: "How does the 30-minute response requirement translate into actual guest experience during emergencies — what systems ensure guests feel genuinely supported rather than managed through a crisis script when problems arise outside business hours, and what communication / decision-authority differences turn a crisis into trust-building rather than trust-destroying?"

**Should include:**
- Audience Advocate Q2 (anxiety arc of a stranger's home — emotional touchpoints) as 3rd slot — journey-stage lens

**Optional:**
- Audience Advocate Q13 (cultural / invisible labor of belonging) — specialized sub-concern

**Persona-domination concern:** This cluster is 80% Audience Advocate. Minimum 2 Audience Advocate questions in output to preserve the structurally-aware human-centered lens.

---

### Cluster 9: Owner Relationship, Trust & Contractual Dignity

**Input count:** 10 (AI 2, AA 3, DA 1, Questioner 1, Systems Thinker 2, Storyteller 1, Lawyer 1)

**Expected questions in output:** 4

**Must include:**
- A trust-signal-design anchor — anchor on Appreciative Inquirer Q3 or Questioner Q15: "What third-party validations, transparency mechanisms, or performance guarantees would convince an owner who's heard horror stories to trust us — and what would an indispensable-partner relationship feel like day-to-day?"
- An information-asymmetry anchor — anchor on Audience Advocate Q7 or Systems Thinker Q15: "What anxieties and knowledge gaps prevent owners from asking important questions about regulatory compliance, liability exposure, or financial performance, and what early signals reveal trust is masking dangerous gaps in shared understanding?"
- A damage-claim-experience anchor — anchor on Audience Advocate Q8: "How does the emotional experience of property damage or guest misconduct intersect with the financial and legal resolution, and what systems ensure owners feel supported rather than blamed or nickel-and-dimed during claims?"
- A termination-mutual-protection anchor — possibly merged (per B2 Group 15): "What termination / notice / liquidated-damages structure simultaneously protects the management company's setup investment during recoupment and owners' abrupt-exit opportunism during peak season, and owners' ability to exit if the company underperforms — with clauses enforceable rather than unenforceable penalty?"

**Should include:**
- Storyteller Q1 (Margaret / first-meeting trust design) as 5th slot — narrative anchor
- Audience Advocate Q9 (dignified offboarding) as 6th slot — end-of-relationship lens

**Optional:**
- AI Q6 (unshakeable owner experience) — covered by AI Q3 anchor

---

### Cluster 10: Foundational Relationships, Pilot Excellence & Launch Strategy

**Input count:** 7 (Appreciative Inquirer 5, Storyteller 2)

**Expected questions in output:** 3

**Must include:**
- A first-month-trust-signals anchor — anchor on Appreciative Inquirer Q9: "What could we do in our first month of operations — with our first 5-10 properties — that would immediately signal to the community, property owners, and regulators that we're a different kind of company, with small but visible actions that set the tone for everything that follows?"
- A pilot-over-investment anchor — anchor on Appreciative Inquirer Q11: "When we secure our first properties, what 'over-investment' in guest experience, owner communication, or neighborhood relations might seem inefficient at scale but would create powerful stories and referrals that fuel growth?"
- A foundational-ecosystem-learning anchor — anchor on Appreciative Inquirer Q10: "Who in this ecosystem (neighborhood leaders, city staff, local business owners, existing property managers) should we seek to understand and learn from before we launch, and what might we ask that demonstrates respect for their expertise and commitment to mutual success?"

**Should include:**
- Appreciative Inquirer Q12 (founder-strength amplification) as 4th slot — cultural-foundation lens
- Appreciative Inquirer Q1 (Exceptional Guest Stories — systematic design) as 5th slot — operational-ideation lens
- Storyteller Q6 (manager evolution 5 to 50 properties) as 6th slot — scale-narrative lens

**Optional:**
- Storyteller Q4 (Garcia neighbors) — touches Cluster 7 more directly than Cluster 10
- AI Q7 (Systematizing Hospitality — reliable magic vs. individual heroics) — covered in Cluster 6 implicitly

**Persona-domination concern:** This cluster is 71% Appreciative Inquirer. Minimum 3 AI questions in output to preserve the pilot-era / launch-relationship lens. This is a cluster where cross-persona convergence is naturally low — AI produces the bulk of launch-era aspirational content on this topic. Synthesis must NOT collapse this cluster into Cluster 7 (Good Neighbor) or Cluster 9 (Owner Trust) just because cross-persona convergence is low.

---

### Cluster 11: Growth Dynamics, Scaling Feedback Loops & Systemic Risks

**Input count:** 5 (Systems Thinker 5)

**Expected questions in output:** 2

**Must include:**
- A reinforcing-loop anchor — anchor on Systems Thinker Q2 or Q11: "What self-reinforcing patterns emerge if the company becomes known as the 'go-to' compliance operator — attracting properties, increasing visibility, triggering enforcement, which paradoxically makes compliance expertise more valuable; and what reinforcing loops accelerate owner trust-building when the company delivers consistently early?"
- A hidden-risk / shifting-the-burden anchor — anchor on Systems Thinker Q13 or Q15: "What 'shifting the burden' patterns emerge when the company handles all regulatory complexity — does this build owner dependence that erodes their civic engagement and removes a broader coalition advocating for reasonable regulation, and what information asymmetries between company and owners create hidden risks over time?"

**Should include:**
- Systems Thinker Q9 (balancing loops — vetted contractor ceiling, concentration backlash, seasonal volatility) as 3rd slot — constraint-systems lens

**Optional:**
- Systems Thinker Q7 (success-to-the-successful) — covered by Q2 implicitly

**Persona-domination concern:** This cluster is 100% Systems Thinker. Minimum 2 questions in output is the floor to preserve the archetype vocabulary (success-to-the-successful, balancing loops, shifting-the-burden). Synthesis must NOT collapse this into Cluster 7 (Good Neighbor) or Cluster 1 (Regulatory) just because low cross-persona convergence — the archetype vocabulary is the Systems Thinker's distinctive contribution.

---

### Cluster 12: Revenue Model, Pricing & Fee Structure

**Input count:** 6 (Analyst 3, Questioner 2, Lawyer 2) — Systems Thinker 0

**Expected questions in output:** 3

**Must include:**
- A fee-structure-alignment anchor — anchor on Analyst Q7 or Questioner Q6: "What hybrid fee structures (percentage plus minimum, tiered, performance-based, compliance guarantees) would align incentives during low-demand periods and shift some regulatory risk to the management company, while remaining competitive — and what's the expected revenue impact of each model?"
- A revenue-recognition / tax-compliance anchor — anchor on Lawyer Q9 or Q5: "How should the contract define 'booking revenue' for fee calculation (gross / net of guest taxes / net of required remittances), what tax compliance architecture is needed to collect, remit, and report occupancy / state sales / tourism taxes across multiple jurisdictions, and what happens to fees if regulatory change requires retroactive tax payments on already-fee'd bookings?"
- An acquisition-funnel / owner-incentive anchor — anchor on Analyst Q14 or Questioner Q9: "What customer acquisition cost per property is sustainable given $80K capital and 5-10 year-one target, which channels (direct outreach, real estate referrals, digital, networking) provide the highest-converting, lowest-cost leads, and how does the service model accommodate owners with varied priorities (selective booking, lower occupancy, demographic targeting)?"

**Should include:**
- Analyst Q12 (pricing-tool ROI) as 4th slot — revenue-uplift lens

**Optional:**
- (None — 3 questions sufficiently cover this cluster)

---

## Output Question Count Summary

| Cluster | Input | Output Target | Output Range |
|---|---|---|---|
| 1 Regulatory Scenarios | 15 | 5 | 4-6 |
| 2 HOA / Permit Navigation | 5 | 3 | 2-3 |
| 3 Unit Economics / Break-Even | 8 | 3 | 2-4 |
| 4 Liability & Insurance | 7 | 3 | 3-4 |
| 5 30-Min Response / Scalability | 4 | 3 | 2-3 |
| 6 Quality / Contractor Networks | 4 | 2 | 2-3 |
| 7 "Good Neighbor" Positioning | 16 | 5 | 4-6 |
| 8 Guest Experience | 5 | 2 | 2-3 |
| 9 Owner Relationship & Trust | 10 | 4 | 3-5 |
| 10 Foundational / Pilot / Launch | 7 | 3 | 3-4 |
| 11 Growth Dynamics / Feedback Loops | 5 | 2 | 2-3 |
| 12 Revenue Model / Pricing | 6 | 3 | 2-4 |
| **Total** | **92** | **38*** | **29-37** |

*Sum of cluster targets is 38, sitting slightly above the 29-37 output range due to "should include" 4th-slot allowances. Tightening to 33 (headline target) requires dropping one question from any of Clusters 1, 7, or 9 (highest-input clusters with 4th-5th slot flexibility).

---

## Questions Expected to Be Dropped

**~59 questions (92 - 33) expected to be dropped or absorbed via merging.**

Major drop categories:

### Within-cluster overlap (within Synthesize-group convergence)

- **Cluster 1:** Drop ~10 of 15. 5 anchor questions cover the cluster; remaining 10 are restated facets or covered sub-topics (Analyst Q2 absorbed in HOA-to-Cluster 2 per placement; Analyst Q15 overlaps with Questioner Q5/Q6 per Cluster 12 reclassification; DA Q3 covered by DA Q1/Q2 + ST Q3; Questioner Q2 covered by Systems Thinker Q1).
- **Cluster 2:** Drop ~2 of 5. Questioner Q3 covered by Analyst Q3 anchor.
- **Cluster 3:** Drop ~5 of 8. Analyst Q6 + DA Q8 merged; DA Q5 absorbed into Questioner Q10 anchor; Analyst Q14 moved to Cluster 12.
- **Cluster 4:** Drop ~4 of 7. DA Q9 + Lawyer Q1 merged; DA Q10 + Lawyer Q3 merged; Analyst Q8 retained as distinct cost-modeling lens; Questioner Q8 and Lawyer Q8 collapse into one verification-anchor.
- **Cluster 7:** Drop ~11 of 16. Major merging of Analyst Q13 + AI Q8 + AA Q4 + Questioner Q11 + Systems Thinker Q5 into the operational-standards-measurement anchor; AI Q5 + AA Q5 + Systems Thinker Q14 into community-contribution anchor. 5 distinct output questions across 16 input reflects the high convergence within this cluster.
- **Cluster 9:** Drop ~6 of 10. DA Q11 + Lawyer Q7 merged; AI Q3 + Q6 converge on trust-signals anchor.
- **Cluster 12:** Drop ~3 of 6. Analyst Q7 + Questioner Q6 merged; Lawyer Q5 + Q9 partially merged in revenue-recognition anchor.

### Cross-cluster overlap (questions touched in multiple clusters; one assignment governs)

- AI Q1 (Exceptional Guest Stories) placed in Cluster 10 (pilot-era); would also fit Cluster 8 (guest experience)
- Analyst Q14 (owner acquisition funnel) placed in Cluster 12 (revenue); would also fit Cluster 3 (unit economics)
- Lawyer Q5 (tax compliance) placed in Cluster 12 (fee mechanics); could fit Cluster 4 (compliance liability)
- Systems Thinker Q6 placed in Cluster 6 (quality); could fit Cluster 11 (growth loops)
- Systems Thinker Q8 placed in Cluster 5 (scalability); could fit Cluster 11 (growth loops)

### Within-persona redundancy

- Analyst Q15 (compliance as moat) and Questioner Q5 (compliance as value prop) and Questioner Q6 (compliance guarantees in fee) — keep one (Analyst Q15 or Questioner Q5 anchor in Cluster 12), drop others
- AI Q3 (Owner Partnership Excellence) and AI Q6 (Unshakeable Owner Experience) both aspirational-partnership — keep Q3, drop Q6
- AI Q2 (Thriving Community Integration) and AI Q5 (Model Community Citizen) both community-aspiration — keep one, drop other

### Lower-value / specialized or speculative

- DA Q12 (Self-Management Displacement Risk — automation eroding value prop) — speculative, displacement is a longer-horizon concern
- Lawyer Q2 (Entity structure LLC vs series LLC) — operational / setup topic, less relevant to the scope of operational questions
- Lawyer Q6 (noise-monitoring privacy-law interaction) — highly specialized; retained only if a sub-cluster on compliance privacy emerges
- AA Q11 (unseen regulatory casualties — human stories in policy) — advocacy-adjacent, lower priority than structural-inclusion anchors
- Systems Thinker Q4 (regulatory feedback-loop delay / compliance overinvestment) — sophisticated but specialized; covered indirectly by Cluster 1 scenario planning

**Rationale for moderate compaction:** The 2.79:1 ratio is moderate-aggressive. A more aggressive 4:1 or 5:1 ratio (output 18-23) would lose Cluster 10 entirely (Appreciative Inquirer's pilot-era territory), Cluster 11's systems archetypes (the only cluster with Systems Thinker's named-archetype vocabulary), and large parts of Cluster 9 (owner-relationship depth). The 33-question target preserves all 12 cluster themes with 2-5 representative questions each.

---

## Persona Representation Requirements

(Defines SQ3 — Persona Representation metric)

For each Synthesize-group persona, minimum questions to be represented in the synthesis output:

| Persona | Input | Min Output | Target Output | Rationale |
|---|---|---|---|---|
| **Analyst** | 15 | 5 | 6 | Anchors Clusters 1 (scenario model), 3 (break-even), 7 (ops standards), 12 (fee structure) + contributes to 4, 5, 6, 10. Cannot be reduced below 5 without losing analytical voice on the business's core financial + operational dimensions. |
| **Appreciative Inquirer** | 12 | 4 | 5 | Anchors Cluster 10 (71% AI — must have 3 representations) + contributes to 7, 9. Min 4 protects Cluster 10 (3) + at least 1 cross-cluster appearance. |
| **Audience Advocate** | 13 | 5 | 6 | Anchors Clusters 8 (80% AA — must have 2 representations) + heavy contributor to 7, 9. Distinctive structural-inclusion lens cannot be reduced below 5 without erasing equity territory. |
| **Devil's Advocate** | 12 | 4 | 5 | Anchors Clusters 1, 3, 4, 6 risk/skeptical voice. Essential to balance generative personas. Min 4 ensures the skeptical lens survives in key operational and strategic clusters. |
| **Questioner** | 15 | 4 | 5 | Broad cross-cluster contribution (touches 8+ clusters); reframing voice in 1, 2, 5, 7, 12. Min 4 ensures meta-questioning presence across the output. |
| **Systems Thinker** | 15 | 5 | 6 | Largest unique-territory contribution (8 of 15 = 53%). Anchors Cluster 11 (100% ST — must have 2) + heavy contributor to 1, 5, 7. Cannot be reduced below 5 without losing archetype-vocabulary content. |
| **Lawyer** (Tier 3) | 10 | 3 | 4 | Anchors Clusters 2 (HOA/preemption), 4 (liability), 12 (tax/revenue). Min 3 ensures the distinctive regulatory-specificity content (covenants-run-with-land, wiretapping interaction, tax-jurisdiction compliance) survives. Tier 3 persona justifies lower minimum than Tier 1 but not below 3 — regulatory specialization is the whole reason Lawyer was selected. |
| **Total** | 92 | 30 | 37 | Sum exceeds 33 because some output questions are cross-attributed (merged from 2-3 personas) |

**Pass/fail criteria for SQ3:**
- **Pass:** All 7 personas at or above min count
- **Soft fail:** 1 persona below min by 1 question (e.g., Lawyer at 2 instead of 3)
- **Hard fail:** Any persona at 0 OR 2+ personas below min OR any persona below 50% of target

---

## Dimension Balance Target

The methodology specifies these dimensions: Strategic, Tactical, Creative, Analytical, Human-centered.

**Per cluster, primary dimension and output count:**

| Cluster | Primary Dimension | Output |
|---|---|---|
| 1 Regulatory Scenarios | Strategic | 5 |
| 2 HOA / Permit Navigation | Tactical | 3 |
| 3 Unit Economics / Break-Even | Analytical | 3 |
| 4 Liability & Insurance | Analytical | 3 |
| 5 30-Min Response / Scalability | Tactical | 3 |
| 6 Quality / Contractor | Tactical | 2 |
| 7 "Good Neighbor" Positioning | Human-centered | 5 |
| 8 Guest Experience | Human-centered | 2 |
| 9 Owner Relationship | Human-centered | 4 |
| 10 Foundational / Launch | Human-centered | 3 |
| 11 Growth Dynamics | Analytical | 2 |
| 12 Revenue Model | Strategic | 3 |

**Aggregate dimension balance (out of 38 questions, scaled to %):**

| Dimension | Count | Percentage |
|---|---|---|
| Strategic | 8 (Clusters 1, 12) | 21% |
| Tactical | 8 (Clusters 2, 5, 6) | 21% |
| Creative | 0 | 0% |
| Analytical | 8 (Clusters 3, 4, 11) | 21% |
| Human-centered | 14 (Clusters 7, 8, 9, 10) | 37% |

**Notable:**
- **Creative dimension at 0%:** This is by design — Creative is anchored by the Append personas (Visionary, Analogist, Provocateur) which are appended separately. The Synthesize pool (analytical + structural + Tier 3 regulatory) intrinsically does not produce Creative-dimension questions. Correct behavior, not a gap.
- **Human-centered at 37%:** Reflects the topic's dual nature — property-management is both a regulated business (Strategic/Analytical/Tactical) and a relationship business (Human-centered). Four of 12 clusters are primarily human-centered (Good Neighbor, Guest Experience, Owner Relationship, Launch), which is high for this topic category.
- **Strategic at 21%:** Lower than habit-tracker / medium's 29% — regulatory scenario planning accounts for most Strategic content; revenue-model questions add some.
- **Tactical at 21%:** Higher than habit-tracker / medium's 18% — the operational constraints (HOA tracking, 30-min response, contractor networks) are genuinely tactical.
- **Analytical at 21%:** Lower than habit-tracker / medium's 24% — break-even / liability / systems dynamics carry the Analytical load.

**Pass/fail criteria for dimension balance:**
- **Pass:** Each non-zero dimension within ±5pp of target
- **Soft fail:** 1 dimension off by 5-10pp
- **Hard fail:** Any dimension off by >10pp OR any non-zero target dimension drops to 0

When the Append output is added (20 questions, predominantly Creative via Visionary/Analogist/Provocateur and Human-centered via Storyteller), the full Phase 2C output of ~53 questions will rebalance toward ~15-20% Creative.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (property-management / medium cell)

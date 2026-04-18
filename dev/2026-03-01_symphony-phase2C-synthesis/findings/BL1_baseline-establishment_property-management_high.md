# BL1 — Baseline Establishment: property-management / high

**Date:** 2026-04-18
**Cell:** property-management / high effort
**Author:** BL1 per-cell subagent
**Status:** Canonical baseline for SP1 scoring of this cell (GT1 Medium-confidence — revisable Tier 3 composition)
**Artifacts produced:**
- `baselines/property-management_high_clusters.md` (B1)
- `baselines/property-management_high_convergence.md` (B2)
- `baselines/property-management_high_target.md` (B3)
- `baselines/property-management_high_append-target.md` (B4)

---

## 1. Cell Characterization

| Metric | Value |
|---|---|
| Personas in input | 16 (11 Synthesize + 5 Append; Tier 1 full + all Tier 2 + 2 Tier 3) |
| Total input questions (N) | 182 |
| Synthesize questions | 146 |
| Append questions | 36 (all 36 survive at high-effort quota; A_quota = A_available) |
| Natural cluster count (C) | 12 |
| Convergence groups (P) | 21 |
| Questions participating in convergence (Q-in-convergence) | 89 / 146 Synthesize = 60.9% |
| Expected output count (M) | 80 (target; range 71–89) |
| Expected synthesized output | 44 (from 146 input; compaction 3.32×) |
| Expected appended output | 36 (all Tier 1 Perspective + all Constraint Flipper at high-effort quota) |
| Total compaction ratio | 182 / 80 = 2.28× |

**Persona composition (per TDA1 and GT1 Rev 3):**
- **Synthesize (11):** Analyst (15), Appreciative Inquirer (12), Audience Advocate (13), Devil's Advocate (15), Questioner (20), Systems Thinker (15), Empath (12), First Principles Thinker (10), Futurist (12), Accountant (12), Lawyer (10) = 146 questions
- **Append (5):** Provocateur (7), Storyteller (7), Visionary (8), Analogist (6), Constraint Flipper (8) = 36 questions
- **Tier 3:** Lawyer + Accountant (GT1 Rev 3 canonical; alt was Politician — see §5 below)
- **Analogist retained** (GT1 Rev 3 default for property-management). No Connector swap.

**What's distinctive about this cell:**

Property-management/high is a business-startup planning brainstorm at near-maximum roster depth (11 Synthesize + 5 Append = 16 personas). It is one of only two cells in the evaluation set with 11+ Synthesize personas (the other being tool-library/high with 10 Synthesize). The 11 Synthesize count is driven by:

- **All 6 Tier 1 Synthesize personas** (standard at high effort)
- **All 3 Tier 2 Synthesize personas** — Empath, FPT, Futurist (standard at high effort)
- **2 Tier 3 Synthesize personas** — Lawyer + Accountant (GT1 selection on this cell; high effort Tier 3 allows 0-2)

This makes property-management/high the densest cell for testing flat-pooling C1 recommendations. With 11 personas converging across a tightly-interconnected business-planning topic, per-persona clustering becomes actively counterproductive.

Topic character:
- **Regulatory density:** City ordinance + pending election + pending state preemption + HOA restrictions create a 4-layer regulatory stack that dominates ~22% of Synthesize-group questions (Cluster 1 has 21, Cluster 10 has 7, plus regulatory content embedded in Clusters 2, 4, 9, 12).
- **Economic density:** $80K capital constraint, coastal seasonality, unit-economics variance across property classes, fee-structure alignment, CAC/payback — 3 Analytical-primary clusters (2, 3, 4) total 37 questions (25% of Synthesize).
- **Community-tension density:** "Good neighbor" operationalization, housing-affordability externality, long-term-renter displacement — Cluster 7 alone has 18 questions with 9 personas contributing, the widest-cross-persona cluster in the evaluation set observed so far.
- **Owner-facing relationship density:** Cluster 6 has 18 questions with 9 personas, covering acquisition, trust, contract, offboarding, information asymmetry — another widest-cross-persona cluster.

Convergence density (60.9%) is the highest observed in the evaluation set so far (vs. space-party/high 58.9%, tool-library/high ~55%). This reflects 11 personas converging on the dominant regulatory/economic/community concerns while still preserving distinct framings at the edges. 57 of 146 questions (39%) remain unique, distributed across the 11 personas.

Compared to space-party/high (an event-planning topic):
- +2 personas (Lawyer + Accountant)
- +22 Synthesize questions (146 vs. 124)
- +1 cluster (12 vs. 11)
- +2.0pp convergence density (60.9% vs. 58.9%)
- +5 synthesized output target (44 vs. 38)
- +5 total output target (80 vs. 75)

---

## 2. Persona Representation Challenges

### Appreciative Inquirer — highest voice-dilution risk in the universe (continuing pattern)

AI contributes 12 questions with 9 unique (75%), tied for the highest uniqueness rate of any Synthesize persona here with Empath. The AI's strengths-based framings ("Exceptional Guest Stories," "The Model Community Citizen," "The Unshakeable Owner Experience," "Thriving Community Integration," "Pilot Excellence," "Foundational Relationships," "Partnering for Success," "Resilient Business Adaptation") are easily domesticated into generic "best practices" or "lessons-learned" language under a non-careful synthesis prompt.

AI participates in Clusters 6, 7, 8 (must) with bridges to 2, 9. Four clusters, each with 2-3 AI questions.

**Flag for SP1:** verify the synthesized output contains at least 3 questions that preserve AI's strengths-based register. Topical representation without register-preservation should score as partial credit. This flag matches space-party/high's threshold.

### Empath — new at high effort with highest cross-cluster bridging challenge

Empath contributes 12 questions with 9 unique (75%). Its emotional-interior register bridges Clusters 5 (local-contact emotional labor), 6 (stranger-in-home anxiety), 7 (resentment of golden ticket, corporate polish, performative good neighbor), 8 (2AM emergency texture). If Empath gets consolidated into AA's equity register (Cluster 7) or AI's strengths register (Cluster 6), the "how does it feel from inside" framing is lost.

Empath's specific distinctive framings for this topic: "vulnerability of the local contact," "emotional calculus of neighbor relations," "transient presence vs. permanent connection," "tourist vs. guest vs. temporary neighbor," "feeling of being regulated vs. welcomed." None of these have Tier 1 backup personas — the emotional-interior register is uniquely Empath's.

**Flag for SP1:** verify Empath preserves at least 3 distinct emotional-interior questions (not 2 — the threshold for space-party/high — because property-management has 4 clusters where Empath contributes vs. space-party's 3). One clear emotional-interior question per cluster position.

### Systems Thinker — carries four cross-cluster systems-archetype framings

ST contributes 15 questions with 10 unique (67%). Its feedback-loop framing appears in Clusters 1 (regulatory feedback-loop delays), 7 (race-to-the-bottom, double-edged moat, tenant-advocate loops, shifting-the-burden), 10 (worse-before-better dynamic), 11 (coordination overhead breakdown, balancing loops constraining growth).

The distinctive systems vocabulary here is concentrated: "success to the successful," "shifting the burden," "balancing loops," "reinforcing loops," "information asymmetries," feedback-loop delays, "worse before better." No Tier 1 backup persona uses this vocabulary.

Cluster 7 specifically has 3 ST questions (Q5 race-to-bottom, Q10 double-edged moat, Q14 tenant-STR feedback loops). If Cluster 7 compacts with only 1 ST question, two distinct systems-archetype framings are lost.

**Flag for SP1:** verify Cluster 7 preserves ≥2 ST feedback-loop questions and Cluster 10 preserves ≥1 ST question. Systems archetype vocabulary should survive in at least 4 output questions across the cell.

### First Principles Thinker — definitional register vs. Analyst operational register

FPT contributes 10 questions with 7 unique (70%). FPT's definitional questions ("what problem are we solving," "ownership assumption," "regulatory dependency," "permit scarcity as asset class," "political engagement as core competency," "value proposition deconstruction," "information asymmetry opportunity") sit in framework territory across Clusters 2, 10, 12.

Cluster 12 is especially load-bearing — it is the FPT+Futurist reimagination cluster with 5 FPT questions and 5 Futurist questions. If Cluster 12 compacts to 1 FPT question, half the persona's cluster-central contribution is eliminated.

Cluster 10's FPT Q7 ("political engagement as core competency") is a definitional question that Analyst's operational ROI framing (Q4) and Accountant's financial framing (Q11) don't substitute for. Eliminating FPT Q7 and keeping Analyst Q4 + Accountant Q11 would remove the definitional register from Cluster 10.

**Flag for SP1:** verify Cluster 12 preserves ≥2 FPT definitional questions (Ownership Q4, Permit-scarcity Q8, Regulatory-dependency Q5, or Information-asymmetry Q10); verify Cluster 10 preserves FPT Q7 (political engagement as core competency). FPT elimination in either cluster is a scored failure.

### Futurist — distributed across Clusters 9 and 12 (different pattern from space-party)

Futurist contributes 12 questions with 8 unique (67%). Unlike space-party/high where Futurist owned its own cluster (Cluster 11: Technology/Sustainability/Trend), property-management/high distributes Futurist across:
- Cluster 9 (Differentiation/Moat) — 3 Futurist questions: Q2 professionalization, Q5 consolidation wave, Q6 platform dependency, Q7 verified trust
- Cluster 12 (Futures/Reimagination) — 5 Futurist questions: Q1 state preemption, Q4 housing crisis arbitrage, Q8 smart home, Q9 experience economy, Q11 climate adaptation, Q12 local workforce economics
- Cluster 5 (Operational) — 1 question: Q12 local workforce economics (if double-counted)
- Cluster 7 (Community) — 1 question: Q10 resident sentiment as leading indicator

This distributed pattern means Futurist is more resilient here than at space-party (where it's cliff-function on Cluster 11). But it's still vulnerable: if both Cluster 9 Futurist questions AND Cluster 12 Futurist questions get dropped, the trend-extrapolation voice collapses.

**Flag for SP1:** verify ≥2 Futurist questions in Cluster 9 + ≥1 in Cluster 12. Unlike space-party/high (which required Cluster 11 ≥2), the check here is distributed — Futurist needs representation in both Cluster 9 and Cluster 12 because its distinctive trend-strategic and trend-reimagination modes are in different clusters.

### Audience Advocate — widest cross-cluster spread of any persona in this cell

AA contributes 13 questions with 7 unique (54%). Distributed across Clusters 1, 2 (none), 5 (Q3 2AM response), 6 (Q7, Q8, Q9), 7 (Q4, Q5, Q6, Q10, Q11, Q12), 8 (Q1, Q2, Q13). This is 6 clusters touched by AA alone — the widest spread in the cell.

The fine-grained equity dimensions (Q1 disability/digital-literacy/language, Q6 dignity of displacement, Q11 unseen regulatory casualties, Q12 who gets to be a guest/host, Q13 invisible labor of belonging) each cover a distinct population and risk being collapsed into a generic "inclusive design" merger.

**Flag for SP1:** check that Clusters 7 and 8 each preserve ≥2 AA-distinctive equity dimensions (not a single "inclusion" merger covering all of them). Cluster 6 should preserve AA's information-asymmetry framing (Q7) and emotional-intersection framing (Q8).

### Questioner — paradigm-level survivors with 11 unique of 20

At high effort Questioner contributes 20 questions with 11 unique (55%). Paradigm-level questions at merger-dilution risk: Q3 (proactively shape regulation vs. react), Q4 (portability pivot), Q7 (national player entry), Q9 (year-three target validation), Q10 (coastal climate vulnerability), Q12 (community-owner alignment), Q14 (community transparency to owners), Q17 (5-10 starting point assumption), Q19 (one partner leaves), Q20 (regulatory risk pass-through to owners). These are all "what if our fundamental assumption is wrong" questions that synthesis commonly absorbs into broader category headers.

**Flag for SP1:** at high effort Questioner has 10+ paradigm-level questions at risk of merger-dilution. Verify that at least 4 Questioner-distinctive reframings survive as standalone output questions (not merged into broader category headers).

### Lawyer (Tier 3) — cluster ownership and regulatory-specificity preservation

Lawyer contributes 10 questions with 6 unique (60%). Cluster 4 (Liability) has 4 Lawyer questions and is the cluster most dependent on Lawyer's signature register (indemnification provisions, vicarious liability disregard, additional insured endorsements, wiretapping law on noise monitoring, series LLC asset protection, liquidated damages enforceability).

Lawyer also contributes specifically in Cluster 1 (Q4 permit allocation with compliance tracking, Q10 HOA preemption strategy) and Cluster 6 (Q7 termination + liquidated damages, Q9 revenue-recognition fee-definition).

If Cluster 4 loses Lawyer's distinctive regulatory vocabulary and becomes 100% Analyst+Accountant operational framing, the Tier 3 Lawyer inclusion was pointless. The GT1 watchlist flag makes this especially important — if SP1 scores Lawyer poorly, the first check is whether GT1 was right to select Lawyer (vs. Politician alt).

**Flag for SP1:** verify Cluster 4 preserves ≥3 Lawyer-distinctive questions with regulatory-specificity vocabulary. Cluster 1 and Cluster 6 each ≥1 Lawyer question. Total Lawyer representation ≥4 of 10 questions. If Lawyer falls below 4, investigate whether GT1 selection or synthesis prompt is the cause.

### Accountant (Tier 3) — quantified-analysis register preservation

Accountant contributes 12 questions with 6 unique (50%, matching Analyst at similar rate). Accountant's distinctive voice is quantified financial analysis — dollar ranges, expected-value math, probability swings, payback periods, unit-economics chains with specific numbers. This differs from Analyst's framework-building at the qualitative level.

Accountant is represented across Clusters 2 (Q1 fee structure + break-even), 3 (Q2 seasonal cash flow + Q12 capital allocation), 4 (Q4 contractual risk allocation + insurance pass-through), 7 (Q10 good-neighbor ROI), 10 (Q11 advocacy ROI).

The key risk: merging Accountant's quantified-financial questions with Analyst's framework questions could strip Accountant's numerical specificity. "Expected-value calculation of $80K deployment" (Accountant Q12) could get flattened to "how do we deploy $80K" (generic).

**Flag for SP1:** verify Accountant preserves at least 4 quantified-analysis questions where the numerical/financial specificity survives (not just "financial planning" but specific math framings). GT1 watchlist applies here too — if Accountant scores poorly and Lawyer scores poorly, GT1's Tier 3 selection is the first diagnostic.

---

## 3. Append Mechanics Observations

### Round-robin is an identity operation at high effort

At A_quota = A_available, the round-robin mechanic is trivial — every question survives. The walkthroughs in B4 are useful for ordering and cluster attribution verification but have no selection pressure.

This cell's D1 round-robin quality depends entirely on test data from low/medium cells where quota < available. The property-management/high BL1 validates the trivial edge case.

### Observations for SP1 and PC1

- **All 36 Append questions survive.** 0 drops. Integration is easier because no selection errors can be introduced in the Append stream.
- **Constraint Flipper (8 questions) is at the upper D1 range** for high effort. The topic is exceptionally constraint-rich (every CF question lands on a real constraint), justifying full-inclusion beyond the default 3-5 guidance.
- **Provocateur (7 questions) and Storyteller (7 questions)** both match the guide's "natural set point ~7" exactly. Clean set-point cases with universal 3-cluster structure.
- **Analogist (6 questions)** is at lower bound (5-8 range). 6 questions in 3 clusters = 2 per cluster = cleanest possible round-robin. No tiebreaks needed.
- **Visionary (8 questions)** at upper bound of 5-8 range. Three-cluster distribution (3+3+2) is clean.
- **No Tier 3 Append personas.** GT1 selected Lawyer + Accountant (both Synthesize). If Politician had been selected, Append would include 8-10 additional questions. The Append stream is therefore "all Tier 1 + Constraint Flipper only" for this cell.

### Thematic mapping of Append to Synthesis clusters

Unlike space-party/high where Provocateur and Constraint Flipper had relatively scattered cluster mappings, property-management/high shows heavy concentration:

- **Constraint Flipper → Cluster 1 Regulatory**: 4 of 8 CF questions (Q1-Q3, Q6) invert regulatory constraints (STR ordinance, permit caps, regulatory uncertainty, HOA restrictions). This is the tightest CF-to-Cluster mapping observed so far.
- **Visionary → Cluster 12 Reimagination**: 6 of 8 Visionary questions are pure reimagination (Q1 ecosystem curator, Q2 place stewardship, Q3 scratch, Q5 regulatory-friction-as-advantage, Q6 commons governance, Q7 micro-infrastructure, Q8 spatial accessibility) — all fit Cluster 12.
- **Storyteller → Wide cluster span**: 7 Storyteller questions touch Clusters 1, 5, 6, 7, 8, 11 — 6 different clusters. Reflects the topic's narrative richness across multiple dimensions.
- **Analogist → Moderate concentration**: 6 Analogist questions map 1-to-1 with specific clusters (Q1 concierge → 8, Q2 fishing co-mgmt → 7/1, Q3 organic certification → 9/1, Q4 craft brewery → 10/9, Q5 hub-spoke → 5/11, Q6 ride-sharing → 4). Clean distribution.
- **Provocateur → Orphan only**: No cluster mapping; provocations are the payload.

### Awkwardness flag for PC1 (interleaving vs. segregation)

This cell is a good test case for the interleaving vs. segregated integration question because:
- Append stream is large (36) and near-equal to Synthesized stream (44), so presentation choice is structurally significant.
- Append questions map to clusters with varying levels of fidelity. CF→Cluster 1 is tight (4 questions would cluster there); Visionary→Cluster 12 is tight (6 questions); Storyteller is wide (6 clusters touched); Analogist is clean (1-to-1 with clusters); Provocateur is orphan.
- Three distinct Append-voice registers (narrative = Storyteller, reimagination = Visionary, constraint-inversion = CF) plus orphan (Provocateur) and cross-domain (Analogist) compete for reader attention.

Interleaving by thematic cluster would put CF's 4 Q1-Q3,Q6 inversions visually adjacent to Synthesized Cluster 1 (Regulatory — 6 synthesis questions), making Cluster 1 feel 10 questions long with mixed Synthesis + CF registers. Visually this may be disorienting; topically it may be coherent.

Segregation by persona preserves each Append voice as a coherent "section" the reader can read in sequence — CF reads as a coherent constraint-inversion catalog, Storyteller as a narrative collection, etc. But then the reader has to cross-reference between Synthesized clusters and Append sections to see how they relate.

Recommendation: SP1 should test both presentations on this cell. The high cross-cluster mapping density makes this cell a stronger test case for interleaving vs. segregation than space-party/high (which had less Append-to-cluster mapping density).

### Watchlist scenarios for Append stream (GT1 revision hypotheticals)

If GT1 were revised to Politician instead of Lawyer:
- Append stream would expand by 8-10 Politician questions (Politician IS Append per D1).
- Politician's governance/coalition/veto-player vocabulary would create a new Append-persona cluster of its own, adding depth to Cluster 7 (Community) and Cluster 10 (Political Engagement) cross-references.
- Total Append count would rise to ~44-46, matching or exceeding the Synthesized stream.

If GT1 were revised to Politician + one of {Lawyer, Accountant}:
- Same as above, plus the Synthesize stream would shrink by 10-12 questions (whichever Tier 3 Synthesize persona gets removed).
- Total input would stay roughly similar but the Synthesize/Append split would shift toward Append-heavy.

None of these scenarios is the current baseline. The baseline as-specified uses Lawyer + Accountant, which keeps both Tier 3 additions in the Synthesize stream.

---

## 4. C1 Recommendation (Per-Cell)

**Recommendation for this cell: flat pooling with persona tags preserved as metadata** (full rationale in B1 clusters file).

**Does per-persona vs. flat matter for this cell?** Yes, very substantially. With 11 Synthesize personas, per-persona grouping creates 11 separate thematic maps the synthesizer must mentally align — a quadratic cross-referencing task. Flat pooling surfaces the actual cross-persona convergences (Clusters 1, 6, 7 each draw ≥7 personas; Cluster 4 Liability is Lawyer+Analyst+Accountant+DA+Questioner 4-way merger territory; Cluster 7 has 9 personas).

Cross-persona bridges that flat-pooling surfaces but per-persona view hides:
- Cluster 4: Lawyer's regulatory specificity + Analyst's cost-structure framing + Accountant's pass-through-vs-bundled economics converge tightly; per-persona view sees three separate "liability sections."
- Cluster 7: 9 personas contribute with 4 distinct registers (AA equity, Empath interior, AI strengths, ST feedback-loops). Per-persona view treats these as 9 separate community-discussion sections.
- Cluster 12: FPT and Futurist converge on "is the current business model right?" from definitional and trend-extrapolation angles. Per-persona view reads as two parallel reimagination discussions.

**Confidence:** **very high** (stronger than space-party/high's high confidence). At 11 Synthesize personas with 60.9% convergence density, per-persona clustering actively obscures the primary thematic structure. The larger the persona roster, the more flat pooling is essential. Property-management/high is the strongest case for flat pooling observed in the evaluation set.

**Effort-level pattern (cross-effort prediction):**
- Low (6 Synthesize personas): per-persona view may work as convergences are less dense
- Medium (7 Synthesize personas — Tier 1 + 0-1 Tier 3): flat pooling preferred, moderate-high confidence
- High (9-11 Synthesize personas): flat pooling essential, very high confidence

The cross-topic synthesis subagent should verify this monotonic pattern across the 10 topics × 3 effort levels. Property-management/high at 11 Synthesize personas may be near the ceiling where per-persona view becomes actively harmful.

**Caveats:**
- Cluster 4 (Liability) is Lawyer-dominant (4/11 = 36%) — per-persona view would treat this as a Lawyer section, missing the cross-persona framework-cost-structure convergence.
- Cluster 12 (Reimagination) is FPT+Futurist 10/10 = 100% — this is genuinely a 2-persona cluster, so per-persona view doesn't mislead here. Flat pooling simply surfaces their convergence.
- Cluster 10 (Political Engagement) is small but 6-personas-broad — per-persona view would fragment this into 6 separate "political engagement mentions," missing the thematic coherence.

---

## 5. GT1 Watchlist Status — ON WATCHLIST

**property-management / high IS on the GT1 Medium-confidence watchlist** (TDA1 §5.1). GT1 Rev 3 assigned **Lawyer + Accountant** as the Tier 3 personas for this cell. The alternative considered was **Politician**. The call was labeled Medium-confidence because: "3 strong triggers compete for 2 slots."

The three strong triggers for this cell:
1. **Financial structure central** — business model, $80K capital, revenue mechanics, unit economics, cash flow, tax compliance → Accountant trigger (strong)
2. **Regulatory/compliance exposure** — STR ordinance, per-zone permits, HOA restrictions, state preemption, liability, insurance → Lawyer trigger (strong)
3. **Stakeholder politics** — city council election, coalition-building, governance complexity, advocacy engagement → Politician trigger (strong)

With a high-effort Tier 3 ceiling of 2 personas and 3 strong triggers, GT1 had to make a tiebreaker judgment. GT1 Rev 3 chose Lawyer + Accountant. Politician remains the canonical alternative.

**Composition treatment:** canonical but revisable. This BL1 baseline treats Lawyer + Accountant as the Tier 3 personas and builds the cluster structure, convergence map, synthesis target, and append target with this composition. **Tier 3 composition is canonical but most revisable during GT1's walkthrough for this cell.**

**Implication for SP1:** if SP1 produces anomalously poor synthesis scores on this cell, **the first diagnostic check is NOT the synthesis prompt** — it is GT1's Tier 3 assignment. If the correct composition was Politician + one of {Lawyer, Accountant}, the baseline assumptions shift:
- Cluster 10 (Political Engagement) would likely expand 2-3× as Politician's 8-10 questions on coalition-building and governance would contribute
- A new or expanded Governance-ish cluster might emerge around organizational-political analysis
- Append stream would gain 8-10 Politician questions (Politician IS Append per D1) — total output would rise to ~85
- Strategic dimension would rise by ~3-4 percentage points; Analytical would drop (depending on which Tier 3 Synthesize persona was displaced)

The cross-topic synthesis subagent should explicitly check: does this cell's synthesis-quality score pattern-match other medium-confidence cells (tool-library/medium, food-truck/high, youth-mentorship/high, school-consolidation/medium) in a way suggesting systematic GT1-selection issues?

**Source-vintage status:** Per TDA1 §3, no shortfalls detected for this cell. All 16 persona source files are from expected volumes and 2026-02-24 sweep. No vintage divergence like tool-library/medium's Politician. This cell's data quality is canonical.

**SP1 re-check flag:** If scoring is anomalously poor on property-management/high specifically, re-check GT1 Tier 3 composition (Lawyer+Accountant vs. Politician alternatives) before blaming the synthesis prompt.

---

## 6. Open Concerns for Cross-Topic Synthesis

1. **Is 60.9% convergence density characteristic of 11-persona high-effort cells?** property-management/high's 60.9% exceeds space-party/high's 58.9% by 2pp despite both being high-effort cells. The marginal increase likely reflects (a) +2 Synthesize personas (+Lawyer, +Accountant vs. space-party's no-Tier-3), (b) topic character (business-planning with dense regulatory/economic/community interconnections supports tighter convergence than event-planning). Hypothesis: convergence density scales roughly linearly with Synthesize persona count. The cross-topic subagent should test this across 10 topics: does density correlate with persona count (R² > 0.5) or does topic character dominate?

2. **Tier 3 effect on convergence density:** Adding 2 Tier 3 Synthesize personas (Lawyer, Accountant) to an otherwise-Tier-1+Tier-2 roster added 2pp convergence density. If the Tier 3 selection had been Politician (Append) instead, Synthesize persona count would have dropped to 10 (Tier 1 × 6 + Tier 2 × 3 + 1 Tier 3 Synthesize from {Lawyer, Accountant}), and convergence density would likely drop by ~1pp. Hypothesis: each Tier 3 Synthesize persona adds ~1pp convergence density because Tier 3 territory (legal, financial) heavily converges with Tier 1 (DA risk, Analyst frameworks). Cross-topic check on other high-effort cells: food-truck/high with Politician+Accountant, youth-mentorship/high with Lawyer+Politician.

3. **Does adding Lawyer always drive Cluster 4 (Liability) to near-independence?** Cluster 4 has 4 Lawyer questions (36% of cluster) + 1 Analyst + 2 Devil's Advocate + 1 Accountant + 2 Questioner + 1 Systems Thinker. The cluster exists as a coherent thematic unit because Lawyer anchors it. On cells without Lawyer (space-party/high, habit-tracker/high), liability questions disperse into other clusters rather than forming a standalone liability cluster. Cross-topic check: does Lawyer presence predict Cluster 4 emergence?

4. **Does Cluster 7 (Community/Good Neighbor) always pull 7-9 personas on topics with public-facing / community-impact dimensions?** Property-management/high's Cluster 7 has 9 personas — the highest cross-persona cluster observed. Similar clusters in space-party/high (Cluster 6 Birthday-Girl Centering: 7 personas) and tool-library/high (Cluster 1 Access/Equity: 7 personas) suggest a pattern — community/public-facing clusters pull broader persona contributions than internal/operational clusters. Cross-topic check: does this hold for youth-mentorship, school-consolidation, food-truck?

5. **Empath's 9/12 unique rate — does it persist across topics?** Empath's high uniqueness on property-management (75%) is driven by the topic's relational density (stranger-in-home, neighbor relations, local-contact emotional labor, resentment of housing-cost disparity). On topics with less relational surface area (mobile-app, wearable-device), does Empath uniqueness drop because there are fewer emotional-interior opportunities? Cross-topic check needed.

6. **Systems Thinker's 4-cluster cross-span — topic-driven or persona-driven?** Property-management shows ST contributing systems-archetype framings in Clusters 1, 7, 10, 11 — 4 clusters with 10 unique framings. On topics with less systemic complexity, does ST concentrate in fewer clusters? Hypothesis: ST's cross-cluster span correlates with topic-systems-complexity — property-management (dense) > food-truck (moderate) > space-party (event, less systemic) > mobile-app (technical, different kind of systemic).

7. **FPT+Futurist Cluster 12 pattern:** Does the FPT+Futurist shared "business-model reimagination" cluster appear on other business-planning topics (food-truck, tool-library)? Hypothesis: yes on business/entrepreneurial topics, no on experiential/event topics (space-party, habit-tracker). Cross-topic check.

8. **Accountant voice-preservation challenge:** Accountant's quantified-financial register differs from Analyst's qualitative-framework register, but the two share ~40-50% territory. SP1 scoring must distinguish "Analyst with numbers bolted on" (Accountant's voice flattened) from "genuine quantified-financial analysis" (Accountant's voice preserved). If SP1's rubric is purely topical, Accountant voice preservation becomes unscored risk. Cross-topic check on food-truck/high and tool-library/medium (both have Accountant): does SP1 rubric handle this distinction?

9. **Append stream dominance on constraint-rich topics:** Property-management/high has CF at 8 questions (upper bound) on an exceptionally constraint-rich topic. Does this cell's Append:Synthesize ratio (36:44 = 45%:55%) differ from topics with fewer flippable constraints? Hypothesis: constraint-rich topics → higher CF volume → Append stream grows proportionally. Worth tracking.

10. **Voice-preservation scoring priority list for this cell:**
    - Appreciative Inquirer (voice-dilution, 9 of 12 unique — HIGH priority)
    - Empath (emotional-interior register, 9 of 12 unique — HIGH priority, higher threshold than space-party)
    - Systems Thinker (4-cluster cross-span with archetype vocabulary — HIGH priority)
    - FPT (definitional register in Clusters 10 and 12 — HIGH priority)
    - Futurist (distributed across Clusters 9 and 12 — MEDIUM priority, less cliff-like than space-party)
    - Lawyer (regulatory-specificity in Cluster 4 — HIGH priority, GT1 watchlist makes this a dual-check)
    - Accountant (quantified-financial specificity — MEDIUM-HIGH priority, GT1 watchlist)
    - Audience Advocate (6-cluster spread with fine-grained equity dimensions — MEDIUM priority)
    - Questioner (paradigm-level reframings at merger-dilution risk — MEDIUM priority)

11. **GT1 watchlist ambiguity handling:** Of the 5 GT1 Medium-confidence cells, property-management/high is the one with 3 strong triggers competing for 2 slots. If SP1 scoring patterns suggest a systematic misfit, the diagnostic tree is: (1) Is it a GT1 selection issue — should Politician replace Lawyer OR Accountant? (2) Is it a synthesis-prompt issue? (3) Is it a cross-topic score-calibration issue? Order matters: check GT1 first because the topic has the most ambiguous Tier 3 composition in the evaluation set.

12. **Cross-watchlist comparison hypothesis:** If SP1 scores property-management/high, food-truck/high, youth-mentorship/high all anomalously poorly with *similar* patterns (e.g., Cluster 10 Political Engagement systematically under-represented), this suggests GT1 Politician-underestimation is a systematic issue — the Politician trigger is being under-weighted across the board. If only property-management/high scores anomalously, it's more likely cell-specific. This comparison should be explicit in SP1's cross-cell aggregation.

---

## Top-Line Summary (for orchestrator aggregation)

- **N = 182** (146 Synthesize + 36 Append)
- **C = 12** (thematic clusters; one more than space-party/high's 11 due to FPT+Futurist Cluster 12 Reimagination emerging as distinct) + Provocateur orphan bucket
- **Convergence groups P = 21; Q participating = 89 (60.9%)** — highest convergence density observed in evaluation set so far
- **Synthesis target = 44** (compaction 3.32× on Synthesize stream; range 39–49)
- **Append quota = 36** (all questions survive at high effort per D1; A_quota = A_available)
- **Total output target M = 80** (compaction 2.28× overall; range 71–89)
- **GT1 watchlist:** ON WATCHLIST — Lawyer + Accountant is canonical; Politician is the alt. Tier 3 composition is canonical-but-revisable at Medium-confidence. 3 strong triggers competed for 2 slots. If SP1 scores anomalously poor on this cell, re-check GT1 before blaming synthesis prompt.
- **Source vintage:** All 16 persona inputs from expected volumes and 2026-02-24 sweep. No content-vintage divergences.
- **C1 recommendation:** flat pooling with persona tags preserved (very high confidence — strongest case for flat pooling observed in evaluation set at 11 Synthesize personas)
- **Highest-risk personas for SP1 scoring (priority order):**
  - Appreciative Inquirer (voice-dilution; 9 of 12 unique)
  - Empath (emotional-interior register, 9 of 12 unique, cross-bridges 4 clusters)
  - Systems Thinker (feedback-loop archetype vocabulary in Clusters 1, 7, 10, 11)
  - FPT (definitional register in Clusters 10 and 12)
  - Lawyer (regulatory-specificity in Cluster 4 — Tier 3, GT1 watchlist dual-check)
  - Accountant (quantified-financial specificity — Tier 3, GT1 watchlist)
  - Futurist (distributed across Clusters 9 and 12)
  - Audience Advocate (6-cluster spread with fine-grained equity dimensions)
  - Questioner (paradigm-level reframings at merger-dilution risk)

**A_quota = 36** (D1 high-effort: Tier 1 Perspective all + Constraint Flipper all = 7+7+8+6+8 = 36)

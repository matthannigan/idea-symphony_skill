# BL1 — Baseline Establishment — tool-library / high

**Date:** 2026-04-18
**Author:** BL1 subagent (single-cell)
**Scope:** tool-library topic, high effort level — one of 30 (topic, effort) cells
**Inputs:** TDA1 test data (`test-data/tool-library_high.md`); TDA1 findings; D1, D2, persona-selection-guide_Phase2B
**Outputs:**
- `baselines/tool-library_high_clusters.md` (B1)
- `baselines/tool-library_high_convergence.md` (B2)
- `baselines/tool-library_high_target.md` (B3)
- `baselines/tool-library_high_append-target.md` (B4)

---

## 1. Cell Characterization

| Property | Value |
|---|---|
| Total personas | 16 (10 Tier 1 + 4 Tier 2 + 2 Tier 3 — Accountant Synthesize, Politician Append) |
| Total questions | 180 |
| Synthesize universe | 132 questions across 10 personas (Analyst, AI, Audience Advocate, Devil's Advocate, Questioner, Systems Thinker, Empath, FPT, Futurist, Accountant) |
| Append universe | 48 questions across 6 personas (Provocateur, Storyteller, Visionary, Constraint Flipper, Politician, Analogist) |
| Synthesize/Append split | 73% / 27% |
| Natural cluster count (Synthesize) | 12 |
| Convergence groups | 20 (17 mergeable + 3 preserve-distinct) |
| Convergence density | 62% (82 of 132 Synthesize questions in convergence) |
| Unique Synthesize questions | 50 (~38%) |
| Orphan questions (cluster-ambiguous) | 40 (~30% of Synthesize) |
| Expected synthesis output | 48 questions (range 38–62) |
| Compaction ratio (target) | 2.75x (range 2.1x–3.5x) |
| Append quota (high effort) | 48 = all available |
| Total Phase 2C output (target) | 96 questions (48 synthesized + 48 appended) |

**Synthesize/Append distribution:** The 73/27 split is slightly more Append-heavy than habit-tracker/high (78/22). Two drivers: (a) Tool-library/high includes Politician (Tier 3 Append, 10 questions) which habit-tracker/high does not; (b) the 6 Append personas vs 5 on habit-tracker compound the shift. The total Phase 2C output (96 questions) sits just above the upper bound of the guideline (~90) — the extra Append-group persona is additive here.

**Cluster structure:** 12 natural clusters are the highest count seen so far in BL1 (habit-tracker/high produced 11). Drivers: (a) tool-library has more distinct operational domains (access, finance, liability, inventory, operations, metrics, community, trust, ecosystem, positioning) that each justify their own cluster; (b) flat pooling separates several distinctions that per-persona clustering would collapse (e.g., Cluster 10 neighborhood-ecosystem vs Cluster 12 regional-positioning).

**Orphan rate:** 30% of Synthesize questions are cluster-ambiguous, significantly higher than habit-tracker/high's 18%. Driver: the topic's concerns are tightly-coupled (access connects to trust connects to community connects to operations) so many questions — especially from AA, AI, Empath, and Systems Thinker — are genuinely multi-cluster-bridging rather than single-cluster fits.

---

## 2. Persona Representation Challenges

The B3 persona-representation table sets per-persona minimums and flags voice-marker risks. The cell-specific challenges:

**Accountant at highest representation risk (by novel vector).** This cell is the first with Accountant included (only present at medium/high for financial-structure topics). 100% of Accountant questions land in convergence groups — Accountant has zero strictly-unique questions. Accountant's voice survives *only* via mergers, and *only* if the merged text preserves the quantitative-specificity vocabulary: dollar ranges ($X per loan), percentages (3-8% loss rate, 20-25% replacement reserve), specific premium ranges, break-even member counts, depreciation mechanics. Critical risk: synthesis mergers that strip Accountant's numerical anchors and revert to generic "consider funding" or "track operational costs" framing will fail SQ3 on Accountant even if question counts hit the minimum. SP1 should treat Accountant-voice preservation as a distinct scoring check — "do mergers retain the dollar-specificity?" — not just a count check.

**Empath at high risk.** Same pattern as habit-tracker/high: synthesis tends to rewrite Empath's felt-experience questions into neutral design questions. Empath has 8 unique questions (out of 12) in this cell, concentrated in Cluster 1 (access/dignity) and Cluster 9 (trust/reciprocity). Cluster 1 merger (CG-1 access barriers) will absorb or drop Empath Q4 (emotional messages of trust/distrust); SP1 variants must preserve Empath's dignity/shame/delight language somewhere in the output. At least one Empath-voiced question per Cluster 1 / Cluster 9 is the representation floor.

**Appreciative Inquirer at structurally elevated risk for this cell.** AI has 12 questions, 10 of which are unique (~83%). AI's strengths-based questions (hidden assets, what already works, what would belonging look like, abundance mindset) are almost entirely orphans or standalone in clusters dominated by deficit-framed personas. If synthesis treats AI questions as "soft" and preferentially preserves Devil's Advocate / Audience Advocate critique questions, AI's voice may be dropped wholesale. Cluster 8 (Community Building) is AI-anchored (5 of 11 questions) — losing this cluster would fail SQ3 for AI specifically. AI's Cluster 9 contribution (Q8 abundance mindset) is also load-bearing for the trust/reciprocity cluster's creative framing.

**Systems Thinker at moderate risk for archetype-vocabulary stripping.** ST's distinctive contribution is named system archetypes (tragedy of the commons, fixes that fail, silent renewals, success-to-the-successful, delayed cause-and-effect, lag effects). Synthesis tends to normalize this vocabulary. Q1 (growth/scale friction), Q3 (commons), Q6 (silent renewals), Q7 (fixes that fail), Q12 (success beyond expectations) are the strongest archetype-vocabulary questions and must survive verbatim or near-verbatim. Unlike habit-tracker/high where ST was consolidated into Clusters 1-2-4-7-10-11, here ST is distributed across Clusters 3, 6, 9, 10 — the risk is that mergers simplify the vocabulary into generic "feedback loops."

**Futurist at moderate risk.** Futurist's 8 unique questions rely on trend-grounding ("documented growth", "accelerating", "trajectory"). Synthesis tends to strip this framing. Q1 (platform positioning), Q2 (municipal partnerships), Q4 (climate adaptation), Q7 (volunteer engagement shifts) are the most distinctive and most-at-risk. Cluster 12 (External Positioning) is Futurist-dominated — if Cluster 12 collapses into Cluster 10 (Ecosystem), the trend-grounded strategic-positioning voice is lost.

**FPT at structurally load-bearing position.** Cluster 11 (First Principles) is FPT-and-Questioner-anchored (10 of 11 questions). FPT provides the definitional/ontological framing that no other persona approximates. Critical risk: SP1 variants that under-cluster may collapse Cluster 11 into Cluster 2 (sustainability) or drop it entirely — that would fail SQ3 on FPT and lose the "means vs ends" interrogation that frames the rest of the brainstorm.

**Audience Advocate at moderate risk.** AA has 10 unique questions (out of 15) — the highest structural-voice diversity. Mergers cover the structural/barrier side well (CG-1, CG-2, CG-16 all preserve AA framing). Risk is in the journey-mapping / dignity / surveillance-architecture angles (Q3, Q5, Q10) that do not converge with other personas — these must survive verbatim as unique questions.

**Devil's Advocate at low risk.** DA is high-convergence (10 of 12 questions in convergence groups). DA's voice survives via mergers naturally — its critique-framing is absorbed into CG-1 (access barriers), CG-4 (volunteer burnout), CG-6 (revenue reality), CG-9 (liability architecture), CG-12 (tool selection bias), CG-14 (inventory collapse). Only standalone requirements are Q11 (space utilization reality — 500 sq ft constraint realism).

**Questioner at low risk** despite highest volume (20 questions). Easily survives via mergers and the 13 unique questions.

**Analyst at low risk.** Cluster scaffolding role consistent with habit-tracker — Analyst's analytical framing is absorbed into multiple mergers (CG-7, CG-8, CG-11, CG-15).

---

## 3. Append Mechanics Observations

**Round-robin is natural and uncontested at high effort.** A_quota = A_available for all 6 Append personas. The walkthrough is mechanical.

**3-cluster structure holds for 5 of 6 Append personas.** Provocateur, Storyteller, Visionary, Constraint Flipper, Analogist all fit the "universal 3-cluster structure" noted in the persona-selection-guide. Politician also fits 3 internal clusters (stakeholder / governance / legitimacy) — consistent with the "natural political-analytical structure" implied by persona-selection-guide's vocabulary list (veto players, coalition sequencing, political capital).

**Politician is a novel element for BL1 assessment.** Habit-tracker/high, habit-tracker/low/medium, space-party/low/medium did not include Politician. Tool-library is the first BL1 cell processed with Politician as Append. Two observations worth forwarding to the cross-topic synthesis:
1. Politician's 10 questions (40-80 words each) produce meaningfully longer appended content than other Append personas (Analogist questions are ~50-80 words, Provocateur ~100-150 words; Politician's are closest to Storyteller's ~200-300 words in terms of content density).
2. Politician's cluster distribution (2/3/5) skews toward legitimacy/opposition/crisis. The round-robin draws all 10 through (no selection pressure at high effort), but if Politician were at medium effort (D1 does not specify reduction for Tier 3 Append but persona-selection-guide calls for "all 8-10"), the legitimacy cluster would dominate drawings.

**Constraint Flipper activates all 7 on this topic.** D1's "3-5" high-effort CF range is exceeded because tool-library is constraint-rich (donated space tenure, 500 sq ft, budget, volunteer dependence, liability, demographic mix, hours). Each CF cluster has at least 2 questions. SP1 baseline uses all 7.

**Overlap between Append and Synthesize is higher than habit-tracker/high.** Several CF questions overlap Cluster 4/5/9 Synthesize content; Politician Q3/Q8/Q10 overlap Cluster 5/4; Storyteller Q6 overlaps Cluster 4; Visionary Q4 overlaps Cluster 11. Per D1, these are not removed from Append — the inversion/narrative/political/reimagining framings are the contributions. SP1 variants that drop these Append questions because they "duplicate" synthesis content fail SQ4.

**Analogist's C2 cluster is less metaphorical than usual.** Tool cooperatives, guilds, library book circulation, and seed libraries are direct-analogue institutions — not metaphorical source domains. This may confuse SP1 scoring if the scoring assumes Analogist always provides distant metaphors. For this cell, Analogist's "institutional" cluster is structurally close to Synthesize content (alternative lending models) but retains Analogist's framing of "what can we learn from X" rather than "what does X reveal about us."

**Order matters for SP1 verification but not for downstream use.** The round-robin order produces a specific sequence of 48 questions. SP1 should check cluster attribution and full-set inclusion, not absolute ordering.

---

## 4. C1 Recommendation

**Use flat pooling for clustering, not per-persona clustering.** (See B1 §"C1 Comparison" for full analysis.)

Flat pooling on this cell produces:
- 12 clusters vs ~8 from per-persona
- Cluster 10 (Neighborhood Ecosystem) and Cluster 12 (Regional/Platform Positioning) only emerge as distinct clusters via flat pooling — per-persona view collapses them into a Futurist-dominated "external systems" cluster and loses the Systems Thinker vs Futurist scale distinction
- Cluster 8 (Community Building), Cluster 9 (Trust/Reciprocity), and Cluster 1 (Access) are cleanly separated in flat view; per-persona view collapses them into ~2 clusters
- Better cross-persona convergence detection (Cluster 1 barrier-design is the clearest — 7 personas contribute, and flat pooling makes the convergence visible)

**Caveat for SP1:** persona-representation scoring (SQ3) must use the per-persona view as a cross-check. Flat-pool clustering gets the topic shape right; per-persona view catches voice-stripping. This caveat is stronger for this cell than for habit-tracker/high because tool-library has:
- Accountant with 100% convergent questions (voice survives *only* in mergers)
- AI with 83% unique questions (voice can be dropped wholesale if mergers dominate)
- Opposite representation failure modes coexist in the same cell

**Topic-specific caveat:** Tool-library/high has unusually many cross-cluster-bridging orphans (~30% of Synthesize). Per-persona clustering naturally handles these by letting each persona keep its "signature" cluster (AA's journey-mapping, ST's system-archetypes). Flat pooling forces explicit orphan designation. SP1 should not penalize variants for placing these orphans in any of 2-3 defensible clusters — they are genuinely multi-cluster questions.

**Confidence: Moderate-to-High.** The 12-cluster flat-pool structure feels organic — each cluster has a clear centroid and 8+ questions. The per-persona alternative feels like it would collapse meaningful distinctions. But with only 2 high-effort cells analyzed (habit-tracker and tool-library), the recommendation should be revisited after more cells complete.

---

## 5. GT1 Watchlist Status

**tool-library / high is NOT on the GT1 watchlist.** TDA1 §5.1 lists 5 medium-confidence cells: tool-library/medium, food-truck/high, property-management/high, youth-mentorship/high, school-consolidation/medium.

**tool-library / MEDIUM is on the watchlist (Politician selection reading "stakeholder complexity" as strong trigger at medium); tool-library / HIGH is clean.** GT1 Rev 3 treats tool-library/high as having two Tier 3 slots filled: Accountant (financial structure — strong trigger for nonprofit/budget/startup keywords) and Politician (stakeholder politics — moderate trigger at high effort threshold). The Connector/Analogist swap resolves to Analogist (single primary domain — tool-library — does not require cross-domain bridging).

These calls are stable for this cell. If SP1 produces anomalously poor scores on tool-library/high, the cause is the synthesis prompt, not the GT1 composition. (If SP1 produces poor scores on tool-library/**medium** specifically — different cell — GT1's medium-confidence reading on Politician-at-medium should be re-examined.)

**Political-stakeholder complexity in tool-library is substantive.** Tool-library has explicit multi-stakeholder structure (landlord, nonprofit board, community members across housing types, local government, hardware-store retailers, volunteers, donors). The Politician slot at high effort is well-supported by the test data — 10 Politician questions all land on substantive political-analytical terrain for this topic. This is not a borderline inclusion.

---

## 6. Open Concerns for Cross-Topic Synthesis

These concerns are about how this BL1 cell interacts with the broader Phase 2C investigation, and should be revisited when other cells' BL1 outputs are available.

1. **Accountant representation as a novel SQ3 dimension.** Tool-library/high is one of the first cells with Accountant (prior BL1 cells — habit-tracker, space-party — did not include Accountant). Accountant's 100%-in-convergence pattern means voice preservation depends *entirely* on merger quality. The cross-topic synthesis should (a) test whether this 100%-convergence pattern holds across all Accountant-included cells (food-truck, property-management, mobile-app, wearable-device, career-change all likely include Accountant); (b) establish whether SP1 scoring needs a dedicated "data specificity preservation" check for mergers that touch Accountant content.

2. **Politician as Append — novel append mechanics for BL1.** Tool-library/high is likely the first BL1 cell processed with Politician Append. Politician's verbose questions, 3-cluster structure, and 10-of-10 high-effort inclusion differ from standard Tier 1 Perspective patterns. Cross-topic synthesis should test whether Politician append mechanics generalize across cells (likely food-truck/high, property-management/high, youth-mentorship/high, school-consolidation/high).

3. **Orphan rate (~30%) may correlate with topic complexity rather than effort.** Habit-tracker/high was ~18% orphan; tool-library/high is ~30%. Both are high-effort with similar persona counts (14 vs 16). The difference may reflect topic-specific multi-cluster-bridging tendencies — tool-library's tightly-coupled concerns (access/trust/community/operations) produce more bridging questions than habit-tracker's more separable concerns (monetization/gamification/privacy/measurement). Cross-topic synthesis should test whether orphan rate is a useful topic-difficulty signal for SP1.

4. **Cluster 11 (First Principles) presence hinges on FPT.** FPT is Tier 2, so present at high effort but not medium/low. Cluster 11 likely collapses at medium/low or moves its questions into Cluster 2 (sustainability) / Cluster 7 (metrics). Cross-topic synthesis should check how first-principles questions distribute at lower effort levels and whether any topic produces a robust Cluster 11 without FPT.

5. **Empath voice-stripping risk is likely topic-independent but cell-dependent.** In habit-tracker/high, Empath's felt-experience framing was at high risk on Clusters 1 (failure) and 4 (gamification). In tool-library/high, Empath's risk is on Clusters 1 (access-dignity) and 9 (trust-reciprocity). The pattern — synthesis strips emotional-state language — recurs. Cross-topic synthesis should bake "Empath voice cross-check" into standard SQ3 scoring.

6. **Compaction ratio target (2.75x) is similar to habit-tracker/high (2.7x).** With N=132 → M=48 here vs N=121 → M=45 for habit-tracker/high, the compaction ratios are remarkably consistent. This suggests the high-effort synthesis compaction ratio may be ~2.7x regardless of topic — a useful benchmark for SP1 scoring. Cross-topic synthesis should test whether this holds across other high-effort cells, and establish whether the ratio shifts at medium/low.

7. **SP1 scoring weight for Append vs Synthesize.** Tool-library/high has 48 Append questions vs 48 Synthesize — Append is 50% of total output. Even more than habit-tracker/high (44%). If SP1 weights synthesis-quality and append-fidelity equally per metric, append errors dominate the aggregate score. Suggest weighting by question-share when computing aggregate SP1 scores, but also consider whether Append failures (e.g., stripping Politician voice) should be weighted more heavily than per-question share because they indicate fundamental misunderstanding of the Synthesize/Append split.

8. **Tool-library as an SP1 subset candidate.** Tool-library/high is well-suited as an SP1 test subset because it exercises: (a) full Tier 1 roster, (b) 3 of 4 Tier 2 personas (Empath, FPT, Futurist, CF — all 4), (c) 2 Tier 3 personas (Accountant Synthesize, Politician Append), (d) Analogist rather than Connector, (e) Politician as Append (novel mechanics), (f) Accountant as Synthesize (novel mechanics). The cell exercises nearly the full range of the persona-selection-guide and can surface multiple SQ3/SQ4 failure modes in a single run. Endorse the default SP1 subset (tool-library, mobile-app, school-consolidation) for this reason.

---

## Top-Line Numbers

- **N (input questions, Synthesize universe):** 132
- **C (cluster count):** 12
- **Q (questions in convergence):** 82 (62% density)
- **Compaction ratio (target):** 2.75x (range 2.1x–3.5x)
- **M (output question count target, Synthesize):** 48 (range 38–62)
- **A_quota (Append):** 48 (= A_available, all questions across 6 personas)
- **Total Phase 2C output (target):** 96 questions

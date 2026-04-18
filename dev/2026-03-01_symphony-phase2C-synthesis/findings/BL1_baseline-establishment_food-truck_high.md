# BL1 — Baseline Establishment — food-truck / high

**Date:** 2026-04-18
**Author:** BL1 subagent (single-cell)
**Scope:** food-truck topic, high effort level — one of 30 (topic, effort) cells
**Inputs:** TDA1 test data (`test-data/food-truck_high.md`); TDA1 findings §5.1 (GT1 watchlist); D1, D2, persona-selection-guide_Phase2B
**Outputs:**
- `baselines/food-truck_high_clusters.md` (B1)
- `baselines/food-truck_high_convergence.md` (B2)
- `baselines/food-truck_high_target.md` (B3)
- `baselines/food-truck_high_append-target.md` (B4)

---

## 1. Cell Characterization

| Property | Value |
|---|---|
| Total personas | 16 (10 Tier 1 + 4 Tier 2 + 2 Tier 3 — Accountant Synthesize, Politician Append) |
| Total questions | 179 |
| Synthesize universe | 132 questions across 10 personas (Analyst, Appreciative Inquirer, Audience Advocate, Devil's Advocate, Questioner, Systems Thinker, Empath, FPT, Futurist, Accountant) |
| Append universe | 47 questions across 6 personas (Provocateur, Storyteller, Visionary, Constraint Flipper, Politician, Analogist) |
| Synthesize/Append split | 74% / 26% |
| Natural cluster count (Synthesize) | 12 |
| Convergence groups | 21 (17 mergeable [15 cross-persona + 2 within-persona AA] + 4 preserve-distinct) |
| Convergence density | 64% (85 of 132 Synthesize questions in convergence) |
| Unique Synthesize questions | 47 (~36%) |
| Orphan questions (cluster-ambiguous) | 22 (~17% of Synthesize) |
| Expected synthesis output | 48 questions (range 38–62) |
| Compaction ratio (target) | 2.75x (range 2.1x–3.5x) |
| Append quota (high effort) | 47 = all available |
| Total Phase 2C output (target) | 95 questions (48 synthesized + 47 appended) |

**Synthesize/Append distribution:** The 74/26 split is nearly identical to tool-library/high (73/27) and similar to habit-tracker/high (~78/22). Two drivers match tool-library: (a) food-truck/high includes Politician (Tier 3 Append, 10 questions); (b) all 4 Tier 2 personas present including CF (8 questions at high effort). The total Phase 2C output (95 questions) sits just above the guideline upper bound (~90) — consistent with tool-library/high's 96.

**Cluster structure:** 12 natural clusters, matching tool-library/high (12) and slightly above habit-tracker/high (11). Drivers: (a) food-truck has clearly separable operational domains (regulation, unit economics, capital, growth, community, experience, operations, trends, model-interrogation) that each justify their own cluster; (b) flat pooling separates several distinctions that per-persona clustering would collapse (e.g., Cluster 2 unit economics vs Cluster 4 capital structure; Cluster 6 community-structural vs Cluster 7 experience-felt).

**Orphan rate:** 17% of Synthesize questions are cluster-ambiguous, significantly lower than tool-library/high's 30% and comparable to habit-tracker/high's 18%. Driver: food-truck's concerns are more operationally discrete (pricing, debt service, fleet expansion) than tool-library's tightly-coupled bundles (access/trust/community). Most personas' questions anchor cleanly to a single cluster.

**Novel structural feature — Cluster 10 (Founder Wellbeing):** This cell introduces a founder-wellbeing cluster not seen in tool-library/high or habit-tracker/high. Drivers: (a) food-truck's explicit solo-first-time-owner framing in the brief; (b) Empath's high cell presence (12 questions) with 4 focused on founder emotional burden; (c) AI's resource-activation and sustaining-vision framings activating here. SP1 should treat this as a food-truck-specific cluster that does not generalize automatically to other topics.

---

## 2. Persona Representation Challenges

The B3 persona-representation table sets per-persona minimums and flags voice-marker risks. The cell-specific challenges:

**Accountant at near-identical risk profile to tool-library/high.** 11 of 12 Accountant questions land in convergence groups (92%) — only Q12 (hidden costs including parking tickets) is strictly unique. Accountant's voice survives via mergers *only if* merged text preserves quantitative-specificity vocabulary: dollar ranges ($12-16 lumpia taco pricing, $750-850/month SBA service, $800-1,500/month commissary, $50-70K second truck, $1,500 annual fees), percentages (25-35% food cost, 40-60% seasonal variation, 60% of fixed costs), time-horizons (2-3 year generator life, 3-year B&M horizon, 7-year SBA loan term). **Critical risk pattern (same as tool-library):** mergers that strip numerical benchmarks and revert to generic "consider funding" framing. Food-truck's CG-9 (SBA vs bootstrap, 7-way merge) is the highest-risk single merger for Accountant voice — it absorbs Accountant, Analyst, DA, ST ×2, Questioner, FPT simultaneously.

**Appreciative Inquirer at structurally elevated risk — more severe than tool-library/high.** AI has 12 questions with **100% unique rate** in cross-persona convergence terms (vs tool-library's 83%). Not a single AI question in this cell lands in a cross-persona convergence group. AI's voice depends entirely on standalone survival of its 12 questions. Cluster 7 (Customer Experience) is AI-heavy (5 of 11 questions) and Cluster 10 (Founder Wellbeing) has AI's sustaining-vision (Q11) and resource-activation (Q12) contributions. If synthesis treats AI questions as "soft" and prioritizes deficit-framed convergence content, AI's voice may be dropped wholesale — more likely here than in tool-library/high because there are no cross-persona mergers to carry AI's framing.

**Empath at high risk — higher than tool-library/high.** Empath has 12 questions with ~83% unique rate (10 of 12). Cluster 10 (Founder Wellbeing) contains 4 Empath questions (Q4 dread, Q5 loneliness, Q9 impostor, Q12 compliance joy-suck). Cluster 7 (Customer Experience) contains 3 Empath questions (Q1 beyond sustenance, Q3 regular's ritual, Q7 third-space vibe). Cluster 6 (Community) has Empath Q11 (emotional contract). **Critical risk:** synthesis tends to strip Empath's felt-experience language. If Cluster 10 is collapsed or felt-experience vocabulary stripped, SQ3 fails on Empath. The Empath felt-experience preservation requirement is more specific here than tool-library/high because Cluster 10 is entirely Empath-anchored (4 of 7 questions).

**Systems Thinker at moderate-to-high risk for archetype-vocabulary stripping.** ST's named archetypes — self-defeating cycles (Q1), regulatory capture (Q2), compounding precedent (Q3), coordination-cost-compounding (Q4), Shifting the Burden via catering (Q5), second-order effects (Q6), fixes-that-fail via B&M distortion (Q7), debt constraining adaptive capacity (Q8), option value of undercapitalization (Q9), equipment risk-shape (Q10), competitive convergence (Q11), fleet-reshaping-ecosystem (Q12), cooperation-competition boundary (Q13), self-reinforcing/balancing WOM (Q14), location-volatility undermining habit formation (Q15). **15 named archetypes** — highest density of any cell processed so far. Synthesis tends to normalize this vocabulary. Preserve-distinct CG-3 (Q1, Q2, Q3) protects three archetypes; the other 12 must survive across mergers in Clusters 1, 3, 4, 8, 9, 11, 12.

**Futurist at moderate risk — similar to tool-library/high but stronger concentration.** Futurist's 11 unique questions (of 12) rely on trend-grounding vocabulary ("documented growth," "accelerating," "trajectory," "tipping point"). Cluster 11 (Emerging Trends) is Futurist-dominant (6 of 7 questions) — **losing Cluster 11 = losing Futurist entirely** because only 2 other Futurist questions distribute to other clusters (Q1 → Cluster 1; Q12 → Cluster 3). SP1 variants that under-cluster (~9 clusters) will typically lose Cluster 11 and thus lose Futurist voice completely.

**FPT at structurally load-bearing position — similar to tool-library/high.** Cluster 12 (First Principles, Model Interrogation) is FPT-and-Questioner-anchored (8 of 9 questions). FPT provides the definitional/ontological framing. Critical risk: SP1 variants that under-cluster may collapse Cluster 12 into Cluster 2 (financial model) or Cluster 4 (capital structure) — that would fail SQ3 on FPT and lose the "what IS this business" interrogation. CG-21 (preserve-distinct, 6-question first-principles group) is the protection mechanism.

**Audience Advocate at moderate risk — similar framework as tool-library/high but different clusters.** AA has 14 questions with 5 unique and 9 in convergence groups. The two within-persona mergers (CG-16 equitable access and CG-17 shared power/accountability) are heavy consolidations. Risk: SP1 variants may collapse CG-16 and CG-17 into a single "community equity" merge, losing the access-design vs accountability-architecture distinction. AA's journey-mapping (Q2, Q7) and cross-cultural-generations (Q4) angles must survive as uniques.

**Devil's Advocate at low-moderate risk.** DA is high-convergence (12 of 15) with voice surviving via mergers in 12 distinct CGs. Standalone requirements are Q3 (permit scarcity), Q10 (solo founder bandwidth), Q12 (food safety exposure). DA's critique-framing is absorbed into mergers naturally.

**Questioner at low risk despite highest volume (16 questions).** Easily survives via 10-question convergence and 5 unique. Challenge at this volume is pruning within-persona redundancy, not voice preservation.

**Analyst at low risk.** Cluster scaffolding role consistent with other cells — Analyst's analytical framing is absorbed into multiple mergers (CG-4, CG-5, CG-6, CG-7, CG-9, CG-12, CG-13, CG-14, CG-18, CG-20, CG-1). 12 of 14 in convergence.

---

## 3. Append Mechanics Observations

**Round-robin is natural and uncontested at high effort.** A_quota = A_available for all 6 Append personas. The walkthrough is mechanical.

**3-cluster structure holds for all 6 Append personas.** Provocateur (value/success/regulatory-inversion), Storyteller (discovery/loyalty/founder-moment), Visionary (community/cultural/growth-form), CF (regulatory/resource/market-constraint-inversion), Politician (ordinance/gatekeepers/financial-organizational), Analogist (biological/industry/systems). Consistent with persona-selection-guide's "universal 3-cluster structure" observation.

**Politician at 10 questions — novel for BL1 alongside tool-library/high.** Same finding as tool-library/high: Politician's 10 questions (40-80 words each) produce substantial appended content. Cluster distribution here is 4/3/3 — more balanced than tool-library's 2/3/5 ordinance-centered distribution — because food-truck's stakeholder complexity is more distributed across formal council engagement, commercial gatekeepers, and financial/organizational structures. Round-robin produces cleaner cluster coverage in the first 3 rounds than tool-library did.

**Constraint Flipper activates all 8 on this topic.** Same pattern as tool-library/high (all 7 there). D1's "3-5" high-effort CF range is exceeded because food-truck is constraint-rich (8 named constraints: regulatory, commissary, permits, capital, solo founder, competition, city size, demographic). Each CF cluster has 2-3 questions and each question hits a distinct constraint angle. CF Q1-Q3 regulatory-spatial cluster is particularly strong given food-truck's ordinance salience.

**Append/Synthesize overlap is similar to tool-library/high.** Provocateur Q4/Q5/Q7 overlap regulatory and concept-validation clusters. Storyteller Q5/Q6 overlap regulatory and growth clusters. Visionary Q4/Q7 overlap growth/first-principles clusters. CF Q1/Q2/Q4/Q5 overlap Synthesize topics across clusters 1/3/4/9/10. Politician Q1-Q4 overlap regulatory cluster heavily. Analogist Q4/Q5/Q8 overlap growth/ecosystem/regulatory clusters. Per D1, these are not removed — the inversion/narrative/political/reimagining framings are the contributions.

**Analogist's C2 "industry/historical" cluster is unusually rich — same finding as tool-library/high.** Craft brewery expansion, Portland/Austin food cart pods, taxi medallion/liquor regulatory capture are direct-analogue industries, not distant metaphors. The "least Analogist-ish" Analogist cluster finding appears to be a common pattern when mature-industry analogues are available to the topic.

**One notable Append/Synthesize paired dynamic: Analogist Q8 (regulatory capture historical examples) ↔ ST Q2 (regulatory capture as food-truck-association dynamic).** Both reference the same phenomenon. ST is in preserve-distinct CG-3 (internal system-dynamic framing); Analogist is in Append (external historical-parallels framing). Both must survive — this is a cleaner illustration of the Synthesize/Append distinction than appeared in tool-library/high.

---

## 4. C1 Recommendation

**Use flat pooling for clustering, not per-persona clustering.** (See B1 §"C1 Comparison" for full analysis.)

Flat pooling on this cell produces:
- 12 clusters vs ~8 from per-persona
- Cluster 2 (Unit Economics) and Cluster 4 (Capital Structure) only emerge as distinct clusters via flat pooling — per-persona view collapses them into a single "finance" cluster (because Accountant, Analyst, DA treat them as one domain internally) and loses the per-unit-pricing vs aggregate-capital-architecture distinction
- Cluster 6 (Community/equity) and Cluster 7 (Customer Experience/emotional) are cleanly separated in flat view; per-persona view collapses them into a human-centered cluster
- Cluster 5 (Fusion Validation) and Cluster 8 (Customer Acquisition) are separable in flat view; per-persona view collapses them for Questioner/DA
- Cluster 10 (Founder Wellbeing) emerges as a distinct cluster via flat pooling; per-persona Empath/AI/DA each see it as a sub-theme within their own cluster set, obscuring the shared concern

**Caveat for SP1:** persona-representation scoring (SQ3) must use the per-persona view as a cross-check. Flat-pool clustering gets the topic shape right; per-persona view catches voice-stripping. This caveat is especially strong for this cell because:
- Accountant has 92% convergent questions (voice survives *only* in mergers)
- AI has 100% unique rate (voice can be dropped wholesale if mergers dominate) — this is **more extreme than tool-library/high** where AI was 83% unique
- Empath has 83% unique rate with Cluster 10 entirely Empath-anchored
- Both extremes coexist: mergers-dependent personas (Accountant, FPT) and uniques-dependent personas (AI, Empath) in the same cell

**Topic-specific caveat:** Food-truck/high orphan rate (~17%) is lower than tool-library/high (~30%), indicating flat-pool clusters capture most questions cleanly. SP1 should penalize variants for mis-placing orphans more strictly here than in tool-library — there are fewer genuinely ambiguous multi-cluster bridge questions, so mis-placement likely indicates a real synthesis error rather than defensible ambiguity.

**Confidence: Moderate-to-High.** The 12-cluster flat-pool structure aligns with tool-library/high's 12 and habit-tracker/high's 11, suggesting a high-effort-baseline pattern of 11-12 clusters. Each cluster has a clear centroid and 7+ questions. Recommend revisiting C1 after additional cells complete.

---

## 5. GT1 Watchlist Status

**ON WATCHLIST — food-truck / high is on the GT1 Medium-confidence watchlist (TDA1 §5.1).**

GT1 Rev 3 called **Accountant + Politician** for this cell at high effort. The call rests on:
- **Accountant:** Strong trigger (food truck is explicitly a business/startup/revenue/pricing topic). High-confidence.
- **Politician:** Moderate trigger based on regulatory-process-engagement language in the brief (pending ordinance debate, coalition with other trucks, council engagement). Politician-as-moderate was explicitly flagged as revisable during GT1 walkthrough.

**Canonical treatment for BL1:** Tier 3 composition (Accountant + Politician) is canonical but revisable. Treat the 12-cluster structure, 132-question Synthesize universe, 47-question Append universe, and 48-question synthesis target as stable for GT1 Rev 3.

**If SP1 produces anomalously poor scores on this cell, re-check GT1 before blaming the synthesis prompt.** Specifically:
- Failure pattern: scoring failures cluster on Politician-specific dimensions (Politician voice stripped, Politician questions miscategorized into Synthesize, Politician appended but at low count) with no other explanation → revisit GT1's Politician-as-moderate call.
- Alternative pattern: scoring failures spread across many personas / many dimensions → variant-level synthesis error, not GT1 error.

The 12-cluster structure does NOT depend on Politician membership (Politician is Append). It depends on Accountant being Synthesize. If GT1 were revised to drop Politician, the Append universe shrinks from 47 to 37 questions but the Synthesize cluster structure is unchanged. If GT1 were revised to drop Accountant (unlikely given strong trigger), Cluster 2 and Cluster 4 would thin materially — the 5-way CG-4 merge would become 3-way and lose its numerical anchor.

**Political-stakeholder complexity in food-truck is substantive.** The brief explicitly references pending city ordinance debates, council committee dynamics, the food truck association, B&M restaurant lobbying, property managers/BIDs as vending-location gatekeepers, and catering-client institutional procurement. Politician's 10 questions all land on substantive political-analytical terrain. The Politician-as-moderate reading was cautious, but the test data supports strong-trigger treatment for this topic.

**Accountant + Politician composition is well-supported by the 132+47 question data.** The baseline above treats this as the canonical GT1 Rev 3 composition without revision.

---

## 6. Open Concerns for Cross-Topic Synthesis

These concerns are about how this BL1 cell interacts with the broader Phase 2C investigation, and should be revisited when other cells' BL1 outputs are available.

1. **Accountant representation pattern confirmed across cells.** Tool-library/high (100% Accountant convergence) and food-truck/high (92% Accountant convergence) both show near-total convergence for Accountant. Cross-topic synthesis should treat **Accountant voice-preservation via merger quality** as a confirmed scoring dimension independent of question-count. Suggest adding a dedicated "Accountant numerical benchmark preservation" check to SP1 — measure whether specific dollar/percentage/time anchors survive mergers by text match. Property-management/high, mobile-app/high, wearable-device/high, career-change/high are likely next Accountant-cells to test.

2. **AI 100% unique pattern is a food-truck-specific escalation.** Tool-library/high had AI at 83% unique; food-truck/high is at 100%. The AI unique rate may correlate with topic's deficit-framing density. Food-truck has heavier deficit/risk framing (regulatory threat, competition saturation, financial precarity, solo-founder overload) than tool-library, which pushes AI's strengths-based framing further into orthogonality. Cross-topic synthesis should test whether AI unique rate tracks topic-deficit-density, and whether the topics with higher AI unique rate require stricter AI voice preservation floors.

3. **Cluster 10 (Founder Wellbeing) as a novel cluster.** This cell introduces founder-wellbeing as a dedicated cluster not seen in tool-library/high or habit-tracker/high. Driver is the explicit solo-first-time-owner framing. Cross-topic synthesis should check whether other cells with solo-founder framing (mobile-app if framed as a solo maker, career-change if framed as individual) produce similar clusters, and whether this cluster becomes a general pattern at high effort for individual-protagonist topics.

4. **Politician as Append is structurally repeating across watchlist cells.** Tool-library/high (not on watchlist, but processed) and food-truck/high (on watchlist) both include Politician. Cross-topic synthesis will encounter Politician again at property-management/high, youth-mentorship/high, school-consolidation/high. The observation that Politician has 3 internal clusters and appends all 10 questions at high effort should hold consistently — if it breaks on any cell, that's a finding about Politician's behavior not the synthesis prompt.

5. **Compaction ratio target (2.75x) is consistent across high-effort cells.** With N=132 → M=48 here, N=132 → M=48 in tool-library/high, and N=121 → M=45 in habit-tracker/high, the ratio is ~2.7x across three high-effort cells. **This is now a 3-cell pattern supporting the earlier hypothesis that high-effort synthesis compaction is topic-invariant at ~2.7x.** Cross-topic synthesis should test whether this holds through the remaining 7 high-effort cells, and whether the ratio shifts at medium/low effort.

6. **Cluster count target 11-12 at high effort is confirmed.** Three high-effort cells: habit-tracker (11), tool-library (12), food-truck (12). **This is now a 3-cell pattern supporting a high-effort cluster-count target of 11-12.** SP1 variants producing ≤9 clusters under-cluster; variants producing ≥14 over-cluster. Cross-topic synthesis should set the ≤9 / ≥14 bands as failure signals.

7. **Within-persona AA mergers (CG-16, CG-17) are novel for this cell.** Tool-library/high had AA mergers but they were always cross-persona (e.g., CG-1 barrier design with DA, Questioner, Empath, Accountant). Food-truck/high has AA with enough internal thematic consolidation to produce two standalone within-persona mergers (access/pricing/ordinance-equity in CG-16; shared-power/accountability in CG-17). This is driven by AA having 14 questions (high for this persona) with 9 concentrated in Cluster 6 (community). Cross-topic synthesis should test whether this within-persona merger pattern recurs in AA-heavy cells (youth-mentorship/high, school-consolidation/medium).

8. **ST archetype-vocabulary density (15 archetypes in this cell) is unusually high.** Tool-library/high had ~10 archetypes; food-truck/high has 15. Driver may be that food-truck's concerns (regulation, growth, finance, operations) all trigger ST's full archetype catalog. Cross-topic synthesis should check whether ST archetype density tracks topic-complexity or is bounded at ~15 (the cardinality of ST's named-archetype vocabulary).

9. **Food-truck/high as an SP1 subset candidate.** Similar to tool-library/high, this cell is well-suited as an SP1 test subset because it exercises: (a) full Tier 1 roster, (b) all 4 Tier 2 personas (Empath, FPT, Futurist, CF), (c) 2 Tier 3 personas (Accountant Synthesize, Politician Append), (d) Analogist (not Connector), (e) Politician as Append, (f) Accountant as Synthesize, (g) the GT1 watchlist dimension, (h) a novel Cluster 10 (Founder Wellbeing) pattern. If SP1 subset expansion is needed, consider food-truck/high as the second cell after tool-library/high — the two cover similar full-roster dimensions but expose different failure-mode risks (AI unique-rate escalation, founder-wellbeing cluster emergence, Storyteller founder-moments Append category).

10. **GT1 watchlist cells appear to produce clean baselines despite the medium-confidence flag.** Tool-library/medium (on watchlist) is not yet processed, but food-truck/high (on watchlist) produced a baseline with no special revision signals — the Politician-as-moderate Tier 3 call is well-supported by the test data. This is evidence that GT1 Rev 3's medium-confidence flags were appropriately cautious rather than incorrect. Cross-topic synthesis should carry this evidence forward when assessing the remaining watchlist cells (property-management/high, youth-mentorship/high, school-consolidation/medium, tool-library/medium).

---

## Top-Line Numbers

- **N (input questions, Synthesize universe):** 132
- **C (cluster count):** 12
- **Q (questions in convergence):** 85 (64% density)
- **Compaction ratio (target):** 2.75x (range 2.1x–3.5x)
- **M (output question count target, Synthesize):** 48 (range 38–62)
- **A_quota (Append):** 47 (= A_available, all questions across 6 personas)
- **Total Phase 2C output (target):** 95 questions

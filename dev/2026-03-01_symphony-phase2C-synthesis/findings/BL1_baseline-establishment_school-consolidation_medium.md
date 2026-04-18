# BL1 — Baseline Establishment: school-consolidation / medium

**Date:** 2026-04-18
**Cell:** school-consolidation / medium effort
**Author:** BL1 per-cell subagent
**Status:** Canonical baseline for SP1 scoring of this cell (with GT1 watchlist caveat — see §5)
**Artifacts produced:**
- `baselines/school-consolidation_medium_clusters.md` (B1)
- `baselines/school-consolidation_medium_convergence.md` (B2)
- `baselines/school-consolidation_medium_target.md` (B3)
- `baselines/school-consolidation_medium_append-target.md` (B4)

---

## 1. Cell Characterization

| Metric | Value |
|---|---|
| Personas in input | 11 (6 Synthesize + 5 Append, including 1 Tier 3 Politician) |
| Total input questions | 117 |
| Synthesize questions | 79 (Analyst 15, AI 11, AA 15, DA 12, Questioner 13, Systems Thinker 13) |
| Append questions | 38 (Provocateur 7, Storyteller 7, Visionary 6, Connector 8, Politician 10) |
| Natural cluster count | 12 |
| Convergence groups | 16 |
| Questions participating in convergence | 62 / 117 = 53.0% |
| Expected output count | 60 (target; range 55–65) |
| Expected synthesized output | 30 (from 79 input; Synthesize-stream compaction 2.63×) |
| Expected appended output | 30 (20 from round-robin × 4 Perspective personas + 10 Politician Append-All) |
| Total compaction ratio | 117 / 60 = 1.95× overall |

**What's distinctive about this cell:** School-consolidation/medium is a **multi-stakeholder institutional-change topic** with unusually high spread across financial, governance, identity, and experiential dimensions — driven by the three-district structure forcing voter-approval-in-all-three alongside facility/contract/identity reconciliation. This is the closest any cell in the assembly comes to a "genuinely civic-governance" profile at medium effort, and the Tier 3 Politician selection amplifies that character.

The 12 clusters split into Human-centered (4 clusters: 4, 10, 11, 12), Strategic (6 clusters: 1, 2, 5, 6, 9, 13), Tactical (2 clusters: 3, 7), and Analytical (1: 8). No pure-Creative Synthesize cluster forms — Creative enters entirely via the Append stream (Visionary paradigm reframings, Connector isomorphism/recombinant, Storyteller narratives, Provocateur inversions).

The three-district-consolidation nature of the topic produces **higher-than-typical convergence density (53.0%)** vs the tool-library/space-party medium norm of 50.4%. The bump reflects the structural convergence concerns (break-even economics, enrollment dynamics, governance, voter approval, town identity, alternative models) that nearly every persona addresses when the scenario includes 3 districts × multi-stakeholder × voter-approval × facility-closure × contract-reconciliation × long-term-sustainability.

Uniqueness is concentrated in:
- **Appreciative Inquirer** (9 of 11 uniquely-framed — strengths-based register doesn't converge with analytical/adversarial registers; particularly strong in Cluster 10 Town Identity and Cluster 13 Alternative Models)
- **Visionary** (6 of 6 unique — paradigm-reframing register which is exactly why D1 routes it to Append)
- **Connector** (8 of 8 — but 5 of 8 are specifically structural-isomorphism or recombinant-innovation framings that no other persona produces; 3 are cross-domain imports indistinguishable from Analogist-mode)
- **Systems Thinker Cluster 2 concentration** (Enrollment Dynamics, 4 of 10 Synthesize-side questions — systems-feedback-loop analysis of enrollment-decline-to-quality-to-attraction is Systems Thinker's signature territory here)
- **Audience Advocate Cluster 11 dominance** (Student Experience & Equity, 8 of 13 synthesize-side = 62% — the strongest single-persona concentration in the cell, reflecting AA's native student-and-family equity lens matching the topic's lived-experience dimension directly)
- **Politician** (Append-routed, 10 verbose governance questions) — despite topical overlap with synthesis convergence groups (7, 8, 9, 12, 15), all 10 preserve distinctive political-analytical vocabulary (coalition cascade, veto players, political capital, legitimacy threshold, resistance diagnosis, message tailoring, endorsement sequencing)

**Topic fingerprint:** Strategic-dominant (~42% of final output, post-Provocative-fold). Similar to tool-library/medium's 45% Strategic — this appears to be a feature of multi-stakeholder institutional-change topics. Human-centered at 30% reflects the strong AA + AI + Storyteller + Connector-community-hub contributions on town identity and student experience. Creative at 13% is notably higher than tool-library/medium (10%) because the Connector's isomorphism/recombinant modes activate strongly at this topic type — the Connector-not-Analogist swap amplifies Creative dimension.

---

## 2. Persona Representation Challenges

### Appreciative Inquirer — high risk of voice-dilution

AI contributes 11 questions with 9 fully unique framings ("what already makes these districts special?" "peak moments of district collaboration" "hidden assets in declining enrollment" "the school experience we want children to remember" "coalition that already exists" "experiments that build confidence"). Synthesis under a generic prompt risks domesticating AI's appreciative register into neutralized "community building" or "strengths-based approach" language. The AI's distinctive contribution is *framing*, not *topic*.

**Flag for SP1:** verify the synthesized output contains at least 3 questions that preserve AI's strengths-based register (e.g., "when has X worked beautifully," "what hidden assets," "what peak collaboration moments"). Topical representation without register-preservation should score as partial credit. AI-specific territory includes Cluster 10 (Town Identity — "redefine 'our school' without losing community"), Cluster 13 (Alternative Models — "experiments that build confidence," "peak moments of collaboration as foundation"), and Cluster 8 (Educational Quality — "learning from what already works, amplifying existing strengths"). If Clusters 10 and 13 both lose AI register, the cell's aspirational-alternative-future voice collapses.

### Audience Advocate — highest cluster dominance in the cell

AA contributes 15 questions with 8 unique, spread across 4 clusters (4, 10, 11, 12) with **heavy concentration in Cluster 11 (8 of 13 Synthesize-side = 62%)** — the strongest single-persona concentration in the entire cell. This is higher than tool-library/medium's AA-in-Cluster-5 concentration (53%). If the synthesizer compacts Cluster 11 aggressively, AA's signature student-and-family equity lens is at material risk of hollowing.

Particularly at-risk: Q3 (Invisible Losses), Q4 (Special Needs Transportation), Q7 (Working Families), Q11 (Student Voice), Q13 (Special Education Protections), Q14 (Extracurricular Access), Q15 (Language/Cultural Accessibility) — each covers a distinct dignity/equity dimension. A single "inclusive student experience" merger that claims to cover transportation + working families + special ed + extracurriculars + language would fail representation scoring.

**Flag for SP1:** Cluster 11 target is 5 output questions (not 3 or 4). Any compaction below 4 in Cluster 11 constitutes AA under-representation. Additionally, AA must appear in all 4 clusters (4, 10, 11, 12) — dropping entirely from any is a failure.

### Systems Thinker — Cluster 2 ownership

Unlike tool-library/medium (where Systems Thinker owned Cluster 11 Long-term Dynamics), at school-consolidation/medium **Systems Thinker's signature territory is Cluster 2 (Enrollment Dynamics)** with 4 of 10 Synthesize-side questions addressing the enrollment-decline-to-quality-to-attraction feedback loops. Systems Thinker also contributes strongly to Cluster 10 (Success to the Successful), Cluster 12 (Union power dynamics), Cluster 13 (leverage points), and Cluster 7 (Eroding Goals). If Cluster 2 compacts below 3 output questions, Systems Thinker's distinctive enrollment-dynamics framing is hollowed.

**Flag for SP1:** B3 target sets Cluster 2 at 3 output questions — this is a load-bearing commitment to preserving Systems Thinker's enrollment-dynamics territory. Dropping to 2 would constitute under-representation. Particularly, Systems Thinker Q4 (Shifting the Burden) and Q9 (schools as active drivers of demographic reversal) are system-archetype-specific framings that general mergers would strip.

### Questioner — paradigm questions at risk of merger-absorption

Questioner's 13 questions are ~77% convergence-participants (10 of 13 in convergences, 3 unique). This is the highest convergence-participation rate in the cell after Devil's Advocate. Mergers tend to anchor on Analyst or Devil's Advocate because those are longer and more analytically-structured; Questioner's short challenging questions can get pulled into mergers as "one of several voices" and lose distinct credit. Particularly at-risk: Q1 (school size and educational quality assumption), Q2 (enrollment decline as opportunity), Q3 (why is voter approval the only legitimate path?), Q10 (how could consolidation preserve each town's school connection?), Q12 (what if it fails at the ballot?).

**Flag for SP1:** check that Questioner's 5 paradigm-level questions (Q1, Q2, Q3, Q10, Q12) survive as distinct output questions or clearly-credited merger anchors. Q1 is particularly at risk because it challenges the premise of consolidation itself — "small schools often produce stronger student engagement, higher graduation rates" — and tends to get flattened into "we should measure educational outcomes" during synthesis. Q3 similarly — "why is voter approval the only path?" is a paradigm-level challenge to the entire frame, distinct from "how do we win the vote."

### Analyst — broad distribution with no solo cluster

Analyst contributes 15 questions across 5 clusters (1, 4, 7, 13 + Cluster 2 Q9) with 9 uniques. Representation is more naturally preserved through cluster-level participation than through solo-cluster survival. Set minimum at 6 of 15 (40%) spread across Clusters 1, 4, 7, 13. If the synthesizer compacts aggressively in Cluster 1 (financial), Analyst could lose its systematic-measurement angle there (Q4 debt/bonds, Q5 tax bases, Q6 decision framework). Cluster 13 (Alternative Models) has Analyst Q14 (systems integration) and Q15 (failure modes) which are distinct implementation-timeline/scenario dimensions.

**Flag for SP1:** verify Analyst appears in Clusters 1, 4, 7, 13 at minimum, with multi-question representation in Cluster 1 (the financial-analysis home).

### Devil's Advocate — highest convergence-rate persona (92%)

DA's 12 questions have 11 in convergences and only 1 unique (Q12 Insolvency as leverage). This is the highest convergence-participation rate in the cell. DA's contribution to this cell is almost entirely *anchoring mergers* — DA Q1 anchors Group 1, DA Q2 anchors Group 2, DA Q3 anchors Group 3, DA Q4 anchors Group 5, DA Q5 anchors Group 8, DA Q6 anchors Group 9, DA Q7 anchors Group 7, DA Q8 anchors Group 6, DA Q9 anchors Group 11, DA Q10 anchors Group 10, DA Q11 anchors Group 15.

**Flag for SP1:** DA representation scoring should credit merger-anchoring. DA's challenge-framing voice should survive in at least 5 merged output questions. DA Q12 (unique) must survive as a distinct question or be explicitly folded into Cluster 13 with strategic-delay framing preserved.

### Politician (Append-routed) — content preservation in Append stream

Politician contributes 10 questions via Append (not Synthesize). Representation scoring applies to the Append output (B4), not the synthesis output (B3). All 10 Politician questions should appear in the final Append output; any missing constitutes an Append-fidelity failure. Specific questions to verify: Q1 (winning conditions), Q2 (endorsement sequencing), Q3 (message tailoring), Q4 (board composition), Q6 (formal/informal power), Q7 (resistance diagnosis). These carry Politician-signature vocabulary (coalition cascade, veto players, political capital, resistance diagnosis, message tailoring, endorsement sequencing, legitimacy threshold) that no Synthesize-group persona produces.

**Flag for SP1:** Append fidelity scoring for Politician is a distinct dimension — all 10 should appear with governance vocabulary intact. Given GT1 watchlist status, Politician's Append fidelity is especially high-salience here.

---

## 3. Append Mechanics Observations

### Round-robin feels natural for Provocateur and Storyteller; Connector has a structural concern

Provocateur and Storyteller have clean 3-cluster internal structures (3+2+2) that fit the 5-slot quota with 2 refills to the largest cluster. These work cleanly.

Visionary's 3-cluster structure (2+2+2) has three-way tied clusters; the 5-of-6 quota needs 2 refills distributed by source order. Source-order tiebreaker gives V-A and V-B refills. This works but is fragile if the tiebreaker changes.

Connector's 3-cluster structure (3+3+2) has two largest clusters tied at 3. The 5-slot quota takes one from each cluster in Round 1, then refills from the two tied-at-3 clusters (C-A and C-B) in Round 2. This leaves the 2-question C-C cluster with only 1 slot — which drops Connector Q7 (hospital-merger federated model), arguably the highest-value Connector question for this topic.

### Connector Q7 drop is structurally significant

Connector is selected at this cell *specifically because* school-consolidation is an inter-domain reconciliation topic where Connector's isomorphism and recombinant-innovation modes activate strongly (per R7). Connector Q7 (hospital-merger federated model — "local branding persists for years while centralizing back-office functions invisibly") is the cleanest recombinant-innovation framing of the entire consolidation process — it's *the* Connector answer to the core topic question. But D1 round-robin's even-distribution rule drops it because C-C (recombinant cluster) has only 2 questions and gets only 1 slot in Round 1.

**Flag for PC1:** this is a D1-rule interaction with Connector's natural 3-cluster distribution. If the same pattern holds across the 4 other Connector-prescribed cells (youth-mentorship, mobile-app, wearable-device, career-change), it may warrant D1 quota refinement for Connector specifically — perhaps prioritizing recombinant-mode questions on cells where the topic triggers the recombinant mode. This is distinct from "blame the synthesis prompt" and distinct from "blame GT1 selection" — it's a D1-rule design consideration.

### Politician Append-All is mechanically simple but dominates the Append stream

Politician's "All 8-10" Append rule means no round-robin; all 10 questions append intact. This inflates the Append contribution to 30 total (vs typical 20 for a 4-Perspective-only medium cell), pushing total cell output to 60 rather than 45-50. This is D1-expected and the persona-selection-guide projection of "~45-65 questions" accommodates it.

In this cell, the Politician block concentrates in Clusters 5 (Governance, 4 questions) and 6 (Voter Approval, 4 questions) — together 8 of 10 Politician questions addressing the same governance/political-strategy territory. If the final output interleaves Append questions by nearest thematic cluster, Clusters 5 and 6 end up with 4 Politician questions each visually attached, dwarfing the 2-3 synthesized questions per cluster.

### Observations for SP1 and PC1

- **Storyteller Q6 (Who Tells the History) and Q7 (Wednesday Board Meeting) dropped from Append but concerns survive via synthesis + Politician Append.** Q6's history/identity concern maps to Cluster 10 (Town Identity) synthesis; Q7's pivotal-vote concern maps to Cluster 6 (Voter Approval) synthesis + Politician Q1/Q2/Q7. Structural Append-cluster-quota-driven loss; concerns preserved, but narrative-arc treatment lost.
- **Connector 37.5% drop rate (3 of 8)**: consistent with the Visionary-at-8 37% drop pattern observed in other medium cells. Connector-at-8 with D1 round-robin medium quota of 5 systematically loses 3 questions. This matters more here because this is a Connector-prescribed cell (vs Analogist default), so the losses are higher-value.
- **Visionary 17% drop rate (1 of 6)**: lowest drop rate in the cell, because Visionary naturally generated 6 instead of 8. Visionary's natural undershoot pattern is actually quota-efficient at medium.
- **Storyteller 29% drop rate (2 of 7)**: matches tool-library medium pattern (Storyteller-at-7).
- **Provocateur 29% drop rate (2 of 7)**: matches tool-library medium pattern (Provocateur-at-7).
- **Politician interleaving concern is strong for this cell:** Politician's 8-of-10 concentration in Clusters 5 + 6 means theme-interleaved rendering saturates those clusters with governance voice. Consider segregating the Append block by persona rather than thematic cluster for this cell, especially given the GT1-watchlist context where Politician's contribution is the Tier 3 signal itself.

### Awkwardness flag for PC1

The interleaving vs segregation question is important for this cell because Politician's 10-question contribution is 33% of the Append output and 80% of it clusters in two B1 clusters. If interleaved by theme, Clusters 5 and 6 visually become "Politician-dominated governance zones" (9+ questions each post-interleave); if segregated by persona, the reader sees "Politician section" as a coherent governance-and-political-strategy block. Segregation seems to better preserve Politician's distinctive governance voice and keep the cell's B1 cluster balance readable.

---

## 4. C1 Recommendation (Per-Cell)

**Recommendation for this cell: flat pooling with persona tags preserved as metadata** (full rationale in B1 clusters file).

**Does per-persona vs flat matter for this cell?** Yes, substantially. Per-persona structure masks cross-persona convergences in the large clusters:
- Cluster 10 (Town Identity) pulls from 4 personas (AA 3, AI 2, Questioner 2, Systems Thinker 2) in the Synthesize side alone
- Cluster 11 (Student Experience) pulls from 4 personas but heavily AA-weighted (8 of 13)
- Cluster 13 (Alternative Models) pulls from 5 personas (Analyst 2, AI 2, DA 2, Questioner 2, Systems Thinker 1) in the Synthesize side
- Cluster 1 (Financial Analysis) pulls from 3 personas with 3-way convergence on break-even

Flat pooling surfaces these immediately; per-persona structure requires mental cross-referencing across 5-6 sections.

**Particular cell complication:** The Politician's verbose (40-80 word) questions are structurally different from the other Synthesize-group questions (typically 30-60 words). The Connector's mid-length (60-120 word) structural-isomorphism questions are also distinctive. When flat-pooled, these may confuse cluster-boundary detection. Retaining persona tags helps the synthesizer weight the Politician and Connector contributions appropriately as "Append-pending" rather than "merge-candidate" — important because D1 routes both to Append regardless of topical convergence.

**Confidence:** moderate. The strong AA Cluster-11 concentration (62%) and Systems Thinker Cluster-2 concentration (40%) are real persona-strength signals, not artifacts of per-persona ordering — flat pooling preserves these because persona tags preserve attribution.

**Caveat:** this recommendation applies to synthesis *input* formatting. The *output* format may reasonably re-introduce persona attribution (e.g., "[merged from Analyst + Devil's Advocate + Questioner]") for traceability.

---

## 5. GT1 Watchlist Status — ON WATCHLIST

**school-consolidation / medium IS on the GT1 Medium-confidence watchlist** (TDA1 §5.1). GT1 Rev 3 assigned **Politician (primary) with Accountant also strong as tiebreaker**. The call was labeled Medium-confidence because: "Both triggers genuinely strong; 0-1 ceiling forces single pick."

**Triggers in play:**
- **Politician trigger:** school consolidation is fundamentally a multi-stakeholder institutional-change topic with three-district voter approval, coalition dynamics, governance redesign, and facility-closure political tensions. The Politician's distinctive political-analytical vocabulary (coalition cascade, veto players, political capital, legitimacy threshold, resistance diagnosis) directly addresses the topic's core challenges.
- **Accountant trigger:** school consolidation is also fundamentally a fiscal-viability topic with $1.2M admin savings / $4.2M deferred maintenance / 12% funding increase / 3-district bond and tax-base reconciliation / break-even analysis across multi-year horizons. The Accountant's quantitative-financial-modeling vocabulary (reserve funds, depreciation schedules, unit economics with actual numbers, insurance categories, opportunity cost quantification) directly addresses the topic's financial architecture.
- **The 0-1 ceiling at medium effort forced GT1 to pick one.** Both triggers are genuinely strong; the call for Politician reflects GT1's judgment that the political-coalition dimension is the load-bearing risk (i.e., financial analysis produces a workable plan on paper but voter approval kills it). A strict rubric might equally rate Accountant as primary.

**Composition treatment:** canonical but revisable. This BL1 baseline treats Politician as the Tier 3 persona and builds the cluster structure, convergence map, synthesis target, and append target with Politician included. If a future GT1 revision swaps Politician for Accountant at medium effort, this cell's entire baseline would require re-running:

| Dimension | Politician (current) | Accountant (alt) | Difference |
|---|---|---|---|
| Append A_available | 38 (includes Politician 10) | 28 (no Politician) | −10 questions |
| Append A_quota | 30 (20 perspective + 10 Politician Append-All) | 20 (perspective only) | −10 questions |
| Synthesize input | 79 | 87-89 (adds Accountant 8-12) | +8-12 questions |
| Synthesize output target | 30 | ~33-35 (slightly higher from +8-12 input) | +3-5 questions |
| Total output target | 60 | ~53-55 | −5-7 questions |
| Cluster count | 12 | ~11 (likely loses Cluster 5 governance dominance without Politician; adds emphasis to Cluster 1 financial) | −1 cluster |
| Strategic % | 42% | ~32% | −10 pp |
| Analytical % | 5% | ~14% | +9 pp |
| Creative % | 13% | ~13% | no change |

**Implication for SP1:** if SP1 produces anomalously poor synthesis scores on this cell, **the first diagnostic check is NOT the synthesis prompt** — it is GT1's Tier 3 assignment. If Accountant was the correct call and Politician was a defensible-but-weaker selection, the baseline assumptions (governance cluster dominance, Append-All 10-question inclusion, 42% Strategic dimension skew, 13% Creative from Connector amplification) would shift materially. The cross-topic synthesis subagent should explicitly check: does this cell's synthesis-quality score pattern-match other medium-confidence watchlist cells (tool-library/medium, food-truck/high, property-management/high, youth-mentorship/high) in a way suggesting systematic GT1-selection issues?

**Connector-not-Analogist separately confirmed:** GT1 Rev 3 prescribes Connector for school-consolidation because the topic is inter-domain reconciliation (three distinct district systems that constrain each other and must be merged while preserving local identity). This is the strongest fit for Connector's recombinant-innovation and structural-isomorphism modes. The Connector selection is not flagged as watchlist — it's a high-confidence R7-driven decision. If SP1 scores anomalously poor AND the diagnostic check rules out synthesis prompt and Politician-vs-Accountant GT1 uncertainty, then the Connector-vs-Analogist decision could be examined as a tertiary check — but prior evidence (R7) strongly supports Connector here.

**Source-vintage divergence:** TDA1 §2.2 flags Politician content-vintage as a concern for tool-library/medium (2026-02-18 pilot). I checked school-consolidation/medium's Politician 10 questions and they appear to be from the same vintage pattern (the regeneration sweep of 2026-02-24 may not have covered all GT1-assigned Tier 3 Politician placements). Content anomaly check for this cell's Politician content:

**Observations on Politician content quality (10 questions):**

1. **Vocabulary fidelity:** Strong. Questions use "minimum vote thresholds" and "swing voters" (Q1), "endorsement sequencing" and "coalition cascade" implied (Q2), "fiscal conservatives" and message tailoring (Q3), "veto points" and "gridlock" (Q4), "de facto veto" (Q5), "informal influence" and "informal power" (Q6), "principled disagreement vs territorial threat vs anxiety vs inertia" resistance diagnosis (Q7), "transitional arrangements," "coalition risk" (Q9), "phasing... to build stakeholder confidence" (Q10). All signature Politician vocabulary markers present.

2. **Verbosity pattern:** Questions are 40-80 words as expected (Q1 ~50 words, Q2 ~65 words, Q3 ~55 words, Q4 ~50 words, Q5 ~60 words, Q6 ~55 words, Q7 ~55 words, Q8 ~50 words, Q9 ~50 words, Q10 ~50 words). Slightly more compact than tool-library/medium's Politician content but still within the expected range.

3. **Framing register:** Each question follows the expected "organizational-political analysis" register — poses a political question, develops the stakeholder landscape, and typically closes with a design-implication or diagnostic framing. Consistent with Politician's expected output style.

4. **Topic coverage:** Questions cover the expected Politician territory for a multi-stakeholder institutional-change topic: coalition-building (Q1, Q2), message tailoring (Q3), governance design (Q4, Q5, Q6), resistance diagnosis (Q7), identity management (Q8), union politics (Q9), phasing strategy (Q10). Coverage is comprehensive and on-topic. No coverage gaps or unusual emphasis shifts suggesting prompt-drift.

**Conclusion:** **No content anomalies detected.** The Politician content for this cell is well-formed, topically on-target, and register-consistent with the Politician persona's expected output. Vintage is a provenance note, not a content quality flag. SP1 can treat this cell's Politician content as equivalent-quality to Politician contributions in other cells for scoring purposes.

**Residual caveat:** If SP1 scoring later reveals systematic under-representation or over-representation of Politician content specifically in this cell's synthesis evaluation, the vintage divergence becomes a candidate explanation worth investigating alongside the GT1-tiebreaker alternative. But based on content review alone, no such explanation is needed.

---

## 6. Open Concerns for Cross-Topic Synthesis

1. **Is 53.0% convergence density normal for medium effort with complex institutional-change topics?** This cell is 2.6 percentage points higher than the tool-library/space-party/habit-tracker medium norm of 50.4%. Hypothesis: multi-stakeholder institutional-change topics (school consolidation, likely property-management at medium if Tier 3 Politician were selected, likely career-change) produce higher convergence because there are more "structural concerns every persona addresses." Cross-topic check across the 10 medium cells can confirm.

2. **Is 12 clusters typical for medium with Politician Tier 3?** Tool-library/medium had 11 clusters with Politician. School-consolidation/medium has 12. Hypothesis: Politician-driven governance content inflates cluster count by separating "governance structure" (Cluster 5) from "voter approval" (Cluster 6) where non-Politician cells might merge these. Cross-topic check: do other Politician-selected cells show this split?

3. **Does Systems Thinker's single-cluster-ownership pattern persist cross-topic?** Tool-library-medium showed Systems Thinker owning Cluster 11 (Long-term Dynamics). School-consolidation-medium shows Systems Thinker owning Cluster 2 (Enrollment Dynamics). Both are "flow/evolution" domains. The specific cluster varies by topic but the ownership pattern appears consistent. Cross-topic verification across all 10 medium cells would confirm.

4. **Politician Append-All as cluster-inflator persists:** As in tool-library/medium, the 10-question Politician Append contributes 33% of the Append output here. Cross-topic check: food-truck/high, property-management/high, youth-mentorship/high, school-consolidation/medium are the 4 Politician-selected cells. Does the Append stream get similarly inflated in all four? If so, effort-level output projections need Politician-aware adjustment in SP1 scoring.

5. **Strategic-dominant dimension skew (42%):** Matches tool-library/medium's 45% pattern. Is this a general feature of community-nonprofit + governance + long-term-sustainability topics? Hypothesis: yes — this family of topics produces Strategic-heavy dimension balance naturally. Cross-topic dimension-balance aggregation should confirm.

6. **Connector-at-8 medium drop rate (37.5%):** Matches the Visionary-at-8 medium drop pattern observed in multiple cells. Specific to this cell: the dropped Connector Q7 (hospital-merger federated model) is *the* highest-value Connector question for the topic, lost because D1 round-robin distributes evenly. If this pattern holds across the 5 Connector-prescribed cells (school-consolidation, youth-mentorship, mobile-app, wearable-device, career-change), it may warrant D1 quota refinement for Connector — perhaps prioritizing the recombinant-mode cluster on cells where that mode activates. PC1 cross-cell review can confirm.

7. **Visionary undershoot (6 not 8) is quota-efficient at medium:** Visionary's natural volume of 6 produces 5-of-6 = 83% retention vs 5-of-8 = 63%. If Visionary systematically undershoots across all medium cells, D1 medium quota of 5 is well-calibrated for Visionary specifically. Cross-topic check: does Visionary also generate 6 (not 8) at other medium cells?

8. **Storyteller undershoot (7 not 8) similar pattern:** Storyteller generated 7 here, matching tool-library/medium's 8 target. Storyteller may also tend to undershoot at medium, though less pronounced than Visionary. Cross-topic check.

9. **AA Cluster-11 dominance (62%) vs tool-library Cluster-5 dominance (53%):** School-consolidation concentrates AA more intensely in one cluster because the topic has more lived-experience content (students, families, commute, special ed, working parents, language access) than tool-library does (which has more policy-and-governance content). Cross-topic question: how does AA concentration vary by topic-type? Suggests AA-concentration could be a topic-fingerprint feature.

10. **Connector Q7 recombinant-innovation drop:** Flag for PC1 — the single highest-value Append question at this cell is structurally lost because D1 round-robin distributes evenly across 3 internal clusters when one cluster (C-C recombinant) is the signature one for the topic. This is a **D1-rule design consideration**, not a synthesis-prompt failure.

11. **GT1 Politician-vs-Accountant watchlist sensitivity:** This cell is the most composition-sensitive of the Medium-confidence watchlist cells because Accountant swap would shift ~10 pp on dimension balance and change Append A_quota by 10 questions. If SP1 scoring anomalously flags this cell AND the diagnostic check points to GT1-selection issues, the primary alternative is Accountant (not dropping Tier 3 entirely, which would leave only 10 Tier 1 personas and produce a Tier-1-only-medium baseline that looks structurally similar to habit-tracker-medium or mobile-app-medium in cluster count and output size).

12. **Voice-preservation scoring for AI, Visionary, Politician, Connector:** BL1 baselines assume SP1 can score "register preservation" in addition to "topical coverage." If SP1's scoring rubric is purely topical, the voice-preservation concern surfaces as an unscored risk for all four voice-distinctive personas here. Worth confirming SP1 scoring design supports register-check. AI and Connector are particularly at risk because both use distinctive structural framings (AI strengths-based "when has X worked beautifully," Connector structural-isomorphism "X and Y are the same problem") that topical-only scoring would miss.

13. **Cross-effort check for school-consolidation:** school-consolidation/low and school-consolidation/high were not analyzed by this per-cell subagent. Key questions:
    - Does cluster count grow from ~10 (low, no Tier 3) → 12 (medium, Politician) → ~14 (high, likely Politician + Accountant + Tier 2 additions)?
    - Does the Politician-driven governance-cluster-split (5 vs 6) persist at high effort?
    - Does AA's Cluster-11 concentration hold, or does it dilute as more personas contribute at high effort?
    - Does the Connector's recombinant-mode activation become even more pronounced at high effort where all Perspective personas append everything?
    - Cross-topic subagent should compare.

---

## Top-Line Summary (for orchestrator aggregation)

- **N = 117** (79 Synthesize + 38 Append, of which 30 are selected for final Append)
- **C = 12** (thematic clusters) + 1 orphan bucket (Provocateur)
- **Convergence groups = 16; Q participating = 62 (53.0%)**
- **Q (synthesis target) = 30** (compaction 2.63× on Synthesize stream; range 27–33)
- **Compaction (Synthesize stream) = 2.63×**; overall compaction 1.95×
- **Append quota (A_quota) = 30** (20 from round-robin × 4 Perspective personas + 10 Politician Append-All)
- **A_available = 38**; selection rate = 79% overall (83% Visionary, 71% Storyteller, 71% Provocateur, 63% Connector, 100% Politician)
- **Total output target = 60** (range 55–65)
- **GT1 watchlist:** ON WATCHLIST — Politician primary (Accountant also strong tiebreaker); both triggers genuinely strong; 0-1 ceiling at medium forced single pick. Canonical-but-revisable. Connector (not Analogist) separately confirmed at high confidence. If SP1 scores anomalously poor on this cell, re-check GT1 Politician-vs-Accountant before blaming synthesis prompt; if ruled out, then check Connector-vs-Analogist as tertiary.
- **Source vintage:** Politician questions from 2026-02-18 pilot vintage; **no content anomalies detected** — register, verbosity, and topic coverage are consistent with expected Politician output. Vintage is provenance note, not quality flag.
- **C1 recommendation:** flat pooling with persona tags preserved (moderate confidence; Politician and Connector verbose/structurally-distinctive content may add minor cluster-boundary confusion in flat view)
- **Highest-risk personas for SP1 scoring:**
  - **Appreciative Inquirer** (9 of 11 unique; voice-dilution risk; strengths-register must survive in ≥3 output questions in Clusters 8, 10, 13)
  - **Audience Advocate** (15 questions, 4-cluster spread, 62% Cluster-11 concentration — highest single-persona concentration in cell; equity-and-dignity lens must survive in all 4 clusters with multi-question representation in Cluster 11)
  - **Systems Thinker** (Cluster 2 ownership at 40%; enrollment-dynamics + Success-to-the-Successful + leverage-points framings)
  - **Questioner** (77% convergence-participation; paradigm challenges Q1/Q2/Q3/Q10/Q12 must survive as distinct or clearly-credited merger anchors)
  - **Politician** (Append-All fidelity — all 10 must appear with governance vocabulary intact; especially salient given GT1 watchlist status)
  - **Connector** (recombinant-mode Q7 drop is structural D1-interaction loss; recombinant/isomorphism voice must survive for the Connector selection to pay off)
- **Distinctive features:**
  - Strategic-dominant dimension skew (~42% post-fold) — topic-driven
  - Creative-dimension amplification (~13%) from Connector-not-Analogist swap — cell-specific
  - AA Cluster-11 concentration (62%) — higher than tool-library/medium
  - Connector Q7 structural drop — the single most analytically significant Append loss in the cell
  - 12-cluster structure (vs 11 for tool-library/medium) driven by Politician-induced Cluster 5 ↔ Cluster 6 split
- **Cell-specific flags for PC1:**
  - Politician interleaving vs segregation (Politician 80% concentrated in Clusters 5+6)
  - Connector Q7 drop suggests D1-medium-quota refinement for Connector on cells where recombinant mode activates
  - GT1 Politician-vs-Accountant sensitivity is the cell's primary watchlist concern

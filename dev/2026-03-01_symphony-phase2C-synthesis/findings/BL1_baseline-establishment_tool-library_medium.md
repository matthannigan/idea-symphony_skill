# BL1 — Baseline Establishment: tool-library / medium

**Date:** 2026-04-18
**Cell:** tool-library / medium effort
**Author:** BL1 per-cell subagent
**Status:** Canonical baseline for SP1 scoring of this cell (with GT1 watchlist caveat — see §5)
**Artifacts produced:**
- `baselines/tool-library_medium_clusters.md` (B1)
- `baselines/tool-library_medium_convergence.md` (B2)
- `baselines/tool-library_medium_target.md` (B3)
- `baselines/tool-library_medium_append-target.md` (B4)

---

## 1. Cell Characterization

| Metric | Value |
|---|---|
| Personas in input | 11 (6 Synthesize + 5 Append, including 1 Tier 3 Politician) |
| Total input questions | 123 |
| Synthesize questions | 82 (Analyst 14, AI 12, AA 15, DA 12, Questioner 15, Systems Thinker 14) |
| Append questions | 41 (Provocateur 7, Analogist 8, Visionary 8, Storyteller 8, Politician 10) |
| Natural cluster count | 11 |
| Convergence groups | 15 |
| Questions participating in convergence | 62 / 123 = 50.4% |
| Expected output count | 60 (target; range 55–65) |
| Expected synthesized output | 30 (from 82 input; Synthesize-stream compaction 2.7×) |
| Expected appended output | 30 (20 from round-robin × 4 Perspective personas + 10 Politician Append-All) |
| Total compaction ratio | 123 / 60 = 2.05× overall |

**What's distinctive about this cell:** Tool-library/medium is a "community service design" topic with unusually heavy **governance and stakeholder politics** content — driven largely by the Politician Tier 3 selection. The 11 clusters split into Human-centered (4 clusters: 5, 6, 7, 9), Strategic (5 clusters: 1, 2, 8, 10, 11), Tactical (1: 3), and Analytical (1: 4). No pure-Creative Synthesize cluster forms — the Creative dimension enters entirely through the Append stream (Visionary reframings, Analogist cross-domain imports, Provocateur inversions).

The community-nonprofit nature of the topic produces high convergence on the practical sustainability concerns (volunteer burnout, hidden costs, liability, access barriers) — roughly half the Synthesize input ends up merged. The access/equity clusters (especially Cluster 5) converge tightly because barrier identification is shared territory across Audience Advocate, Devil's Advocate, Questioner, and Analyst.

Uniqueness is concentrated in:
- **Appreciative Inquirer** (10 of 12 uniquely-framed — strengths-based register doesn't converge with analytical or adversarial registers; particularly strong in Cluster 7 Community)
- **Visionary** (8 of 8 unique — paradigm-reframing register which is exactly why D1 routes it to Append)
- **Systems Thinker Cluster 11** content (Long-term dynamics, 5 of 11 questions — pacing/growth/maturation dynamics are near-exclusive Systems Thinker territory)
- **Politician** (Append-routed, 10 verbose governance questions) — despite topical overlap with synthesis convergence groups, all 10 preserve distinctive political-analytical vocabulary (veto players, coalition sequencing, political capital, founder lock)

**Topic fingerprint:** Strategic-dominant (45% of final output). This is not a scoring failure — it's a topic-driven consequence of the community-nonprofit + governance-heavy + long-term-sustainability framing. SP1 should normalize dimension-balance expectations to the input distribution rather than a generic 20%-per-dimension ideal.

---

## 2. Persona Representation Challenges

### Appreciative Inquirer — high risk of voice-dilution

The AI contributes 12 questions with 10 fully unique framings ("when has sharing worked beautifully in this neighborhood?", "what hidden assets exist in this community?", "what would belonging look like?"). Synthesis under a generic prompt risks domesticating AI's appreciative register into neutralized "community building" language. The AI's distinctive contribution is *framing*, not *topic*.

**Flag for SP1:** verify the synthesized output contains at least 3 questions that preserve AI's strengths-based register (e.g., "when has X worked beautifully," "what hidden assets," "what would Y look like if it worked"). Topical representation without register-preservation should score as partial credit. AI-specific territory includes Cluster 7 (Community/Connection) where AI has 5 of 11 questions — if Cluster 7 loses AI register entirely, the cluster becomes generic rather than strengths-anchored.

### Audience Advocate — highest unique density and widest cluster spread

AA contributes 15 questions with 10 unique, spread across 4 clusters (4, 5, 6, 7) with heavy concentration in Cluster 5 (8 of 15 questions). This means AA is spread across 4 clusters with 1–8 questions each. If the synthesizer compacts aggressively per cluster, AA representation can thin below the 7-question minimum. Particularly at-risk: Q3 (dignity in asking), Q7 (friction of coordination), Q8 (knowledge gaps & confidence), Q10 (borrowing without surveillance), Q11 (reciprocity vs charity), Q14 (building community or moving tools) — each covers a distinct dignity/equity dimension that a general-equity merger would lose.

**Flag for SP1:** AA's 4-cluster spread with Cluster 5 concentration means a single "inclusion" merger that claims to cover "sensory + motor + language + cultural + surveillance + reciprocity" would fail representation scoring. AA representation must be spread, not aggregated.

### Systems Thinker — cluster ownership (Cluster 11)

Systems Thinker carries Cluster 11 (Long-term Dynamics) almost single-handedly: 5 of 11 cluster questions, and the signature systems-framing (success-to-the-successful, fixes-that-fail, feedback signals, leading vs lagging indicators) is in all 5. If Cluster 11 compacts below 4 output questions, Systems Thinker's distinctive long-run-dynamics contribution is hollowed.

**Flag for SP1:** B3 target sets Cluster 11 at 4 output questions — this is a load-bearing commitment to preserving Systems Thinker's long-term-dynamics territory. Dropping to 2 would constitute under-representation.

### Questioner — paradigm questions at risk of merger-absorption

Questioner's 15 questions are ~53% merger-participants (7 of 15 unique, 8 in convergence groups). Mergers tend to anchor on Analyst or Devil's Advocate because those are longer and more analytically-structured; Questioner's short challenging questions can get pulled into mergers as "one of several voices" and lose distinct credit. Particularly at-risk: Q1 (what problem are we actually solving?), Q2 (why a physical library model?), Q4 (who is the "typical user"?), Q6 (who belongs to "community"?), Q12 (restorative justice for non-returners). These are paradigm-level questions that should survive intact rather than merging into broader clusters.

**Flag for SP1:** check that Questioner's 5 paradigm-level questions (Q1, Q2, Q4, Q6, Q12) survive as distinct output questions, not absorbed into general-purpose mergers. Q1 is particularly at risk because it's meta — "what are we actually solving?" — and tends to get flattened into cluster-level themes during synthesis.

### Analyst — no solo cluster (unlike space-party)

Unlike space-party (where Analyst's Cluster 10 Measurement/Frameworks was 100% Analyst), tool-library has no Analyst-only cluster. Analyst contributes broadly (2-4 questions per cluster to Clusters 1, 2, 3, 4, 5, 10) but never dominates. This is a healthier distribution; Analyst representation is more naturally preserved through cluster-level participation than through solo-cluster survival. Set minimum at 6 of 14 (43%) spread across 5 clusters.

**Flag for SP1:** verify Analyst appears in Clusters 1, 2, 3, 4 at minimum. If the synthesizer compacts aggressively in one of these, Analyst could lose its systematic-measurement angle in that cluster.

### Politician (Append-routed) — content preservation in Append stream

Politician contributes 10 questions via Append (not Synthesize). Representation scoring applies to the Append output (B4), not the synthesis output (B3). All 10 Politician questions should appear in the final Append output; any missing constitutes an Append-fidelity failure. Specific questions to verify: Q1 (informal power), Q2 (endorsement sequencing), Q5 (board structure), Q6 (formal vs informal veto), Q9 (opposition sources), Q10 (crisis response). These carry Politician-signature vocabulary (coalition cascade, veto players, political capital, legitimacy threshold, founder lock, stakeholder capture) that no Synthesize-group persona produces.

**Flag for SP1:** Append fidelity scoring for Politician is a distinct dimension — all 10 should appear with governance vocabulary intact.

---

## 3. Append Mechanics Observations

### Round-robin feels natural for the 4 Perspective personas

All four Perspective personas have clean 3-cluster internal structures (confirmed per the persona-selection guide's "universal 3-cluster" claim). The walkthrough produces 5-per-persona selections. Tiebreakers (Analogist A-A vs A-B both at 3, Visionary V-A vs V-B both at 3, Storyteller S-A vs S-B both at 3) are resolvable by source order.

### Politician Append-All is mechanically simple but inflates the cell

Politician's "All 8-10" Append rule means no round-robin; all 10 questions append intact. This inflates the Append contribution to 30 total (vs typical 20 for a 4-Perspective-only medium cell), pushing total cell output to 60 rather than the more typical 45-50. This is D1-expected and the persona-selection-guide projection of "~45-65 questions" accommodates it.

### Observations for SP1 and PC1

- **Storyteller Q6 dropped from Append but survives topically via synthesis** (damage/trust merging in Cluster 4 Convergence Group 7). Structural Append-cluster-quota-driven loss; the concern is preserved.
- **Storyteller Q7 dropped from Append but survives topically via synthesis** (volunteer burnout in Cluster 8 Convergence Group 1 synthesis-side). Same pattern.
- **Visionary 3-drop (37% drop rate)**: the highest drop rate of the four Perspective personas in this cell. V-A and V-B tied at 3 each, so Round-2 refills take 1 from each tied cluster, leaving Q8 (civic institution without precedent), Q6 (neighborhood emergence), and Q7 (year-2040 design) dropped. The dropped questions are high-quality; D1-rule-driven loss, not quality-driven. Matches the 29-37% Visionary drop rate pattern observed in space-party medium — possibly argues for V-quota of 6 at medium if cross-cell pattern confirms.
- **Provocateur 2-drop (29% drop rate)**: lower than Visionary because Provocateur only has 7 questions (natural set point), not 8.
- **Politician interleaving is awkward**: Politician Q3-Q7 land heavily in Cluster 8 (Governance). If the final output interleaves Append questions by nearest thematic cluster, Cluster 8 ends up with 4-5 Politician questions attached to it, visually dwarfing the 3 synthesized Cluster 8 questions. Consider segregating Append by persona rather than by theme for this cell.
- **Cluster 8 (Governance) is Append-dominated by design**: 5 of 13 input questions from Politician; 2 from Analogist; 1 from Storyteller. Only 5 Synthesize inputs for the cluster. This creates a valid-but-unusual cluster representation pattern where the Append stream carries the cluster's substantive content.

### Awkwardness flag for PC1

The interleaving vs segregation question is important for this cell because Politician's 10-question contribution is 33% of the Append output. If interleaved by theme, Politician saturates Cluster 8 and Cluster 10 visually; if segregated by persona, the reader sees "Politician section" as a coherent governance-analysis block. Segregation seems to better preserve Politician's distinctive governance voice, but PC1 should test both.

---

## 4. C1 Recommendation (Per-Cell)

**Recommendation for this cell: flat pooling with persona tags preserved as metadata** (full rationale in B1 clusters file).

**Does per-persona vs flat matter for this cell?** Yes, moderately. Per-persona structure masks cross-persona convergences in the large clusters (Cluster 5 Access/Equity pulls from 5 personas; Cluster 9 Commons pulls from 4 personas; Cluster 10 Ecosystem pulls from 5 personas). Flat pooling surfaces these immediately; per-persona structure requires mental cross-referencing.

**Particular cell complication:** The Politician's verbose (40-80 word) questions are structurally different from the other Synthesize-group questions (typically 25-45 words). When flat-pooled, they may confuse cluster-boundary detection. Retaining persona tags helps the synthesizer weight the Politician's contributions appropriately as "Append-pending" rather than "merge-candidate" — which is important because D1 routes Politician to Append regardless of topical convergence.

**Confidence:** moderate. The strong Cluster 5 AA concentration (53%) and Cluster 11 Systems Thinker concentration (45%) are real persona-strength signals, not artifacts of per-persona ordering — flat pooling preserves these because persona tags preserve attribution.

**Caveat:** this recommendation applies to synthesis *input* formatting. The *output* format may reasonably re-introduce persona attribution (e.g., "[merged from Analyst + Devil's Advocate + Audience Advocate]") for traceability.

---

## 5. GT1 Watchlist Status — ON WATCHLIST

**tool-library / medium IS on the GT1 Medium-confidence watchlist** (TDA1 §5.1). GT1 Rev 3 assigned **Politician** as the Tier 3 persona for this cell. The call was labeled Medium-confidence because: "Politician-at-medium rests on reading 'stakeholder complexity' as a strong trigger; strict rubric could rate moderate."

**Composition treatment:** canonical but revisable. This BL1 baseline treats Politician as the Tier 3 persona and builds the cluster structure, convergence map, synthesis target, and append target with Politician included. If a future GT1 revision demotes Politician to "moderate-only" (not strong) trigger at medium effort, this cell might lose its Tier 3 persona entirely — which would require re-running BL1 with only the 10 Tier 1 personas.

**Implication for SP1:** if SP1 produces anomalously poor synthesis scores on this cell, **the first diagnostic check is NOT the synthesis prompt** — it is GT1's Tier 3 assignment. If Politician was a false-positive selection, the baseline assumptions (governance cluster dominance, Append-All 10-question inclusion, Strategic dimension skew to 45%) could shift materially. The cross-topic synthesis subagent should explicitly check: does this cell's synthesis-quality score pattern-match other medium-confidence cells (food-truck/high, property-management/high, youth-mentorship/high, school-consolidation/medium) in a way suggesting systematic GT1-selection issues?

**Source-vintage divergence (TDA1 §2.2):**

TDA1 calls out that Politician's 10 questions for this cell come from the **pilot-era 2026-02-18 generation** rather than the **2026-02-24 regeneration sweep** used for the rest of the Politician content across other cells in the assembly. This is an **upstream-vintage divergence**, not a content shortfall.

**Content anomaly check (comparing this cell's Politician content to Politician contributions in other cells):**

I reviewed the 10 Politician questions in this file against the Politician's expected register profile (per persona-selection-guide: "distinctive political-analytical vocabulary — veto players, coalition sequencing, political capital, governance structure, opposition management"; "verbose questions 40-80 words at 8-10 volume"; "produces organizational-political analysis for any topic with stakeholder complexity").

**Observations:**

1. **Vocabulary fidelity:** The expected political-analytical vocabulary is present and strong. Questions use "coalition cascade" (Q2), "political capital" (Q2), "stakeholder capture" (Q5), "founder lock" (Q5), "formal authority vs informal veto power" (Q6), "political legitimacy" (Q7), "political tension" (Q8), "opposition management" (Q9). All signature Politician vocabulary markers appear.

2. **Verbosity pattern:** Questions are 40-80 words as expected (Q1 ~60 words, Q2 ~70 words, Q3 ~65 words, Q4 ~55 words, Q5 ~70 words, Q6 ~65 words, Q7 ~55 words, Q8 ~70 words, Q9 ~70 words, Q10 ~70 words). No length anomalies.

3. **Framing register:** Each question follows the expected "organizational-political analysis" register — starts with a governance/power question, develops the stakeholder landscape, and often closes with a design-implication or diagnostic framing. This is consistent with Politician's expected output style.

4. **Topic coverage:** Questions cover the expected Politician territory for a community-nonprofit topic: informal power (Q1), coalition building (Q2), interest-balancing (Q3), space tenure politics (Q4), board structure (Q5), decision-authority mapping (Q6), legitimacy threshold (Q7), access-vs-risk policy tension (Q8), opposition sources (Q9), crisis response (Q10). No coverage gaps or unusual emphasis shifts suggesting prompt-drift.

5. **Comparison to 2026-02-24 regeneration (where observable):** Other cells' Politician contributions use similar vocabulary and verbosity. Without direct side-by-side comparison, I cannot detect a specific stylistic shift, but the 2026-02-18 content in this cell reads as indistinguishable from "canonical" Politician output in quality and character.

**Conclusion:** **No content anomalies detected** attributable to the 2026-02-18 source vintage. The Politician content for this cell is well-formed, topically on-target, and register-consistent with the Politician persona's expected output. The source-vintage divergence is a **provenance note**, not a content quality flag. SP1 can treat this cell's Politician content as equivalent-quality to Politician contributions in other cells for scoring purposes.

**Residual caveat:** If SP1 scoring later reveals systematic under-representation or over-representation of Politician content specifically in this cell's synthesis evaluation, the vintage divergence becomes a candidate explanation worth investigating. But based on content review alone, no such explanation is needed.

---

## 6. Open Concerns for Cross-Topic Synthesis

1. **Is 50.4% convergence density normal for medium effort?** Matches space-party medium exactly (50.4%) — strongly suggestive this is a stable norm for 6-Synthesize-group medium-effort cells. The cross-topic subagent should confirm across all 10 medium cells. If it holds, we can set "50% ± 5%" as the expected medium-effort convergence density for SP1 calibration.

2. **Is 11 clusters typical for medium?** Space-party medium had 10. Tool-library has 11. The extra cluster here is Cluster 8 (Governance) driven by Politician's presence. Hypothesis: Tier 3 persona inclusion at medium adds roughly one cluster on average. Cross-topic check: do other medium-effort cells with Tier 3 personas (school-consolidation/medium + Politician or Accountant) also show ~11 clusters vs 10 for Tier-1-only medium cells?

3. **Does Systems Thinker's Cluster 11 dominance persist cross-topic?** Systems Thinker owned Cluster 3 (Pacing) in space-party-medium and Cluster 11 (Long-term Dynamics) here. Both are "flow/evolution" domains. Is there a consistent "Systems Thinker owns one cluster per topic" pattern? Worth cross-topic verification.

4. **Politician Append-All as cluster-inflator:** the 10-question Politician Append contributes 33% of the Append output here. Cross-topic check: when Politician is selected (food-truck/high, youth-mentorship/high, school-consolidation/medium), does the Append stream get similarly inflated? If so, effort-level output projections need Politician-aware adjustment.

5. **Strategic-dominant dimension skew (45%):** Is this tool-library-specific or a general feature of community-nonprofit + governance-heavy topics? School-consolidation and property-management are candidates for similar skew. Cross-topic dimension-balance aggregation should check whether Strategic dominance is topic-typed or cell-specific.

6. **Visionary 37% drop rate under D1 medium round-robin:** This cell shows the same pattern as space-party medium — Visionary generates at its 7-8 natural volume but D1 only admits 5, producing high drop rates. If this holds cross-topic, D1 might need a medium-Visionary-quota of 6 rather than 5.

7. **Creative dimension absence in Synthesis stream:** Zero pure-Creative clusters in the Synthesize stream; Creative enters entirely via Append. This mirrors space-party medium. If consistent cross-topic, it validates D1's Append routing for the 4 Perspective personas — Creative framing really does require the distinct-voice preservation that Append provides.

8. **Politician content-vintage flag (this cell only):** Though no anomalies were detected, SP1 should track whether this cell's scoring pattern-matches other cells. If it systematically under-scores, the vintage-divergence hypothesis becomes testable.

9. **Voice-preservation scoring for AI, Visionary, Politician:** BL1 baselines assume SP1 can score "register preservation" in addition to "topical coverage." If SP1's scoring rubric is purely topical, the voice-preservation concern surfaces as an unscored risk for all three voice-distinctive personas. Worth confirming SP1 scoring design supports register-check.

10. **Cross-effort check for tool-library:** tool-library/low and tool-library/high were not analyzed by this per-cell subagent. Key questions: does cluster count grow from 10 (low, no Tier 3) → 11 (medium, Politician) → ~13 (high, likely Politician + Accountant + Tier 2 additions)? Do Politician-themed clusters (8, 10) dominate in a topic-driven way across all three effort levels, or only emerge when Politician is summoned? Cross-topic subagent should compare.

---

## Top-Line Summary (for orchestrator aggregation)

- **N = 123** (82 Synthesize + 41 Append, of which 30 are selected for final Append)
- **C = 11** (thematic clusters) + 1 orphan bucket (Provocateur)
- **Convergence groups = 15; Q participating = 62 (50.4%)**
- **Synthesis target = 30** (compaction 2.7× on Synthesize stream; range 27–33)
- **Append quota = 30** (20 from round-robin × 4 Perspective personas + 10 Politician Append-All)
- **Total output target = 60** (compaction 2.05× overall; range 55–65)
- **GT1 watchlist:** ON WATCHLIST — Politician Tier 3 assignment is canonical-but-revisable at Medium-confidence. If SP1 scores anomalously poor on this cell, re-check GT1 before blaming synthesis prompt.
- **Source vintage:** Politician questions from 2026-02-18 pilot; **no content anomalies detected** — register and topic coverage are consistent with expected Politician output. Vintage is provenance note, not quality flag.
- **C1 recommendation:** flat pooling with persona tags preserved (moderate confidence; Politician verbose-question content may add minor cluster-boundary confusion in flat view)
- **Highest-risk personas for SP1 scoring:** Appreciative Inquirer (voice-dilution, 10 of 12 unique), Audience Advocate (4-cluster spread, 10 of 15 unique), Systems Thinker (Cluster 11 ownership, 5 of 11), Questioner (paradigm-question merger-absorption), Politician (Append-All fidelity — 10 questions, governance-vocabulary preservation)
- **Distinctive feature:** Strategic-dominant dimension skew (45%) driven by community-nonprofit + governance + long-term-sustainability topic character; topic-driven, not synthesis failure

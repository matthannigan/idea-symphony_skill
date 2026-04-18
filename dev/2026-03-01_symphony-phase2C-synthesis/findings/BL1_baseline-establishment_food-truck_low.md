# BL1 — Baseline Establishment: food-truck / low

**Date:** 2026-04-18
**Author:** BL1 subagent (food-truck / low cell)
**Scope:** One cell of the Phase 2C BL1 baseline pass — baseline reference for SP1 variant scoring of the synthesis prompt on food-truck at low effort.
**Companion baseline files:**
- `baselines/food-truck_low_clusters.md` (B1)
- `baselines/food-truck_low_convergence.md` (B2)
- `baselines/food-truck_low_target.md` (B3)
- `baselines/food-truck_low_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**

| Metric | Value |
|---|---|
| Total source questions (N) | 101 |
| Synthesize-group questions | 72 (10 personas, but 6 of 10 are Synthesize) |
| Append-group available (A_available) | 29 |
| Synthesize personas | 6 — Analyst (11), Appreciative Inquirer (12), Audience Advocate (11), Devil's Advocate (12), Questioner (14), Systems Thinker (12) |
| Append personas | 4 — Provocateur (7), Analogist (8), Visionary (7), Storyteller (7) |
| Natural cluster count (C) | 8 |
| Convergence groups (P) | 14 |
| Questions in convergence (Q) | 46 of 72 (64%) |
| Convergence density | 64% |
| Synthesized output target (M) | 28 (range 25-31) |
| Compaction ratio | 72 / 28 = 2.57 (range 2.3-2.9) |
| Append quota (A_quota) | 12 (4 personas × 3, one per persona-internal cluster) |
| Final total output | 40 (range 37-43) |

**Topic profile:** A business-centric topic — a first-time food truck launch with a concrete business plan ($100K capital, Filipino-Mexican fusion, specific competitor/ordinance context, 3-year growth path). Per the persona-selection guide topic-affinity hints, this profile triggers: financial structure central (Analyst core; Accountant for Med/High), regulatory/compliance exposure (DA core; Lawyer for Med/High), stakeholder complexity (AA core), and single-primary-domain event planning (Analogist default, not Connector). The low-effort roster aligns with this — all 10 Tier 1 personas, no Tier 2/3, Analogist preserved.

**Why this cell is a clean BL1 reference:** Concrete business topic, no shortfalls in TDA1, no missing slots, default Analogist (no Connector swap), and not on the GT1 watchlist (food-truck/high is on watchlist but /low is clean). Every persona contributes a meaningful spread of questions with no compounding or filler pathologies. The 8-cluster natural structure is visible in both per-persona and flat-pool clustering passes. Convergence density at 64% is notably higher than the space-party/low cell's 57% — reflecting the business-topic tendency for personas to converge on the same core business decisions (financial viability, ordinance response, fleet expansion, competitive defensibility).

**How food-truck/low differs from space-party/low as a BL1 reference:** Different topic type with different baseline profile — more clusters (8 vs. 7), higher convergence density (64% vs. 57%), higher compaction ratio (2.57 vs. 2.67 — close), and a markedly different dimension balance (Strategic 29% vs. 18%; Human-centered 28% vs. 27% — roughly equal because the business topic preserves equity/access concerns via AA and community concerns via AI). The additional cluster (C8 Resilience) emerges because the food-truck topic has a distinct variance-management dimension (weather, seasonality, founder continuity, catering concentration) that doesn't have an equivalent in the event-topic space-party dataset.

---

## 2. Persona Representation Challenges

The synthesizer must navigate four meaningful representation tensions:

**Tension A — Convergent personas vs. distinctive personas.** Of the 6 Synthesize personas, four have heavy cross-persona convergence — Analyst, Devil's Advocate, Questioner, and Systems Thinker each contribute to 5-8 of the 14 convergence groups. Two have lower convergence with the analytical core (Appreciative Inquirer in 2, Audience Advocate in 3) but carry distinctive registers — strengths-based framing and equity/accessibility framing respectively. SP1 risk: a synthesizer that aggressively merges may disproportionately surface analytical voices and bury AI/AA. The persona-floor scoring in B3 (AI floor 6, AA floor 6) is the explicit scoring guard.

**Tension B — Questioner absorption into merges.** Questioner generates 14 questions (largest contributor after Appreciative Inquirer). 10 of 14 Questioner questions land cleanly in convergence groups (CG1, CG2, CG3, CG4, CG5, CG6, CG9, CG11, CG13, CG14). Without a floor protecting Questioner-distinctive uniques (Q3 permit scarcity, Q14 brick-and-mortar assumption-challenging, plus the merge contributions), the synthesizer could under-represent Questioner's "widening problem framing" function. B3 sets the Questioner floor at 6 with explicit named questions to preserve.

**Tension C — Audience Advocate's structural-equity load.** AA is the *only* Synthesize persona carrying accessibility (physical, dietary, time-pressure, cultural), belonging (first-time customer psychology, price perception equity), and supply-chain/community-impact territory. Six of AA's 11 questions live in cluster C4 (CX/Accessibility) and 4 in C5 (Community). If a synthesizer collapses AA's equity-lens questions into DA's risk questions or into Analyst's operational questions, the structural-equity dimension is lost. The Phase 2B note in the persona-selection guide that AA is "structurally-aware human-centeredness unique among human-centered personas" is the critical preservation criterion.

**Tension D — Systems Thinker's archetype vocabulary.** ST generates 12 questions, and 8 of them embed named system archetypes (Success-to-the-Successful, Fixes that Fail, Tragedy of the Commons, Erosion of Goals, self-reinforcing loop). This vocabulary is distinctive content, not cluster-structural markup — Phase 2B found ST's "named system archetypes are unique vocabulary across all personas." SP1 prompts that normalize the archetype vocabulary during synthesis will silence ST's distinctive contribution even if they preserve all 12 ST question topics. Scoring should specifically check for archetype-name preservation in at least 2-3 of ST's merge contributions (e.g., "Success-to-the-Successful" in the catering-cannibalization merge, "Tragedy of the Commons" in the commissary-bottleneck merge, "Fixes that Fail" in the financing-choice merge).

---

## 3. Append Mechanics Observations

**Round-robin works cleanly here.** All 4 Append personas exhibit clean ~3-cluster internal structure consistent with the persona-selection guide's "universal 3-cluster structure" claim. Provocateur's clusters organize around *what is being inverted* (product/experience, regulatory/external environment, success/scale/concept); Analogist's organize by source-domain family (nature/ecology, industry/business-case, platform/historical-regulatory); Visionary's organize around *what is being reimagined* (business form, stakeholder relationships, cultural/constraint purpose); Storyteller's organize by narrative function (customer-moment, founder-decision, catering/advocacy). The 3 × 4 = 12 quota maps exactly onto one question per persona-internal cluster.

**Tie-breaking is the operational risk.** Multiple personas have multi-question clusters that force tie-breaking: Provocateur Cluster C (3 questions — success inversion, financial inversion, concept inversion), Analogist Cluster A (3), Analogist B (3), Analogist C (2), Visionary B (3), Storyteller A (3). I used "lowest-numbered source question wins" as a deterministic rule — reproducible across SP1 runs, but it does mean the strongest question in a cluster may not be selected. An SP1 prompt that asks for "best per cluster" rather than "first per cluster" would yield different selections; both are valid implementations of the D1 spec, which says "no quality judgment needed."

**Notable tie-break consequence: Provocateur Q6 (zero capital + $100K debt) lost to Q3 (success = out of business).** Q6 would have bridged Append into C1 (Financial), the largest Synthesize cluster. Instead the Append output has zero coverage of C1, consistent with D1's framing that Append operates orthogonally to the analytical/financial core. This is an intentional D1 outcome, but if cross-topic BL1 analysis shows a pattern of Append systematically avoiding financial clusters, it may warrant revisiting the D1 rule.

**Drop rate is within D1 expectation.** 59% of append-available questions are dropped (17 of 29), within D1's 40-60% range. The driver is the 8 Analogist questions mapping cleanly to 3 domain clusters — two of Analogist's clusters (B: industry, A: nature) have 3 questions each, producing 2 drops each. Not a quality concern; a function of how naturally the Analogist clusters split for this business topic.

**Cross-cluster bridging:** The 12 appended questions distribute across 7 of 8 B1 clusters as primary or bridge assignments — C2 (1), C3 (2), C4 (2), C5 (5 including bridges), C6 (1), C7 (4 including bridges), C8 (1 bridge). Only C1 (Financial) receives no Append question, consistent with D1's framing. This is a better distribution than space-party/low (where Append covered 5 of 7 clusters) and suggests that a business topic's Append register finds more footholds across the cluster map than an event topic does — provocations, metaphors, and visionary paradigms all have lateral leverage against strategy, operations, expansion, and community clusters, whereas event-topic Append tends to concentrate on experiential/memory clusters.

---

## 4. C1 Recommendation

C1 (clustering vs. flat pooling) was tested in Pass A (per-persona-internal clustering preserved) vs. Pass B (flat pooling of all 72 Synthesize questions). Both passes produce the same 8 clusters with marginal boundary differences on 4-5 borderline questions.

**Recommendation: flat pooling for SP1 prompts, with one additive instruction.** With 72 questions and 6 personas at low effort, flat pooling produces equivalent cluster quality with a simpler synthesis prompt. The one caveat specific to food-truck/low: SP1 prompts should include an instruction to *preserve Systems Thinker's distinctive archetype vocabulary* (Success-to-the-Successful, Fixes that Fail, Tragedy of the Commons, Erosion of Goals, self-reinforcing/self-undermining loops) in output questions where it appears, because that vocabulary is distinctive content, not cluster-structural markup. This instruction is additive to flat-pooling and does not require per-persona clustering to implement — it can be framed as "preserve persona-distinctive vocabulary (especially system archetypes, equity/access framings, and appreciative strengths-based framings) in merged questions where they appear in source questions."

**Caveat:** Flat-pooling recommendation is grounded in two BL1 cells so far (space-party/low and food-truck/low). The C1 question may have different answers at higher question counts (medium/high effort with 80-130+ Synthesize questions), where the cognitive load of flat-clustering grows. BL1 cells at medium and high effort should re-run the C1 comparison to confirm the recommendation generalizes.

---

## 5. GT1 Watchlist Status

**food-truck / low is NOT on the GT1 watchlist.** TDA1 Section 5.1 lists 5 GT1 medium-confidence cells; food-truck/low is not among them. food-truck/high *is* on the watchlist (Accountant + Politician selection is GT1 medium-confidence), but Tier 3 selections don't apply at low effort — the low-effort roster is Tier-1-only, with the Analogist/Connector default holding. Food-truck uses default Analogist (single-primary-domain business topic per R7 criteria; no inter-domain reconciliation need). Interpretation: if SP1 produces anomalous scores on this cell, the cause is in the synthesis prompt, not in upstream persona-roster ambiguity.

---

## 6. Open Concerns for Cross-Topic Synthesis

Items that may matter when BL1 results across all 10 topics are aggregated and compared:

1. **Convergence density varies meaningfully by topic type.** This cell's 64% convergence density is higher than space-party/low's 57%. Business-centric topics (with shared strategic axes like financial viability, regulatory response, fleet expansion) produce more convergence than event-centric topics (where personas address orthogonal experiential concerns). Cross-topic compaction-ratio comparisons should normalize on convergence density rather than use raw N/M, because the "right" compaction is a function of source-data convergence, not a fixed target. Topics with 50% convergence should produce compaction closer to 2.0-2.2; topics with 65% should produce closer to 2.5-2.8.

2. **Cluster count varies by topic complexity dimension.** The 8-cluster structure here groups business-topic concerns (financial, regulatory, market, CX/accessibility, community, operations, growth, resilience). The space-party/low cell had 7 clusters. Other topics may produce 6 (simpler topics), 9-10 (highly multi-faceted topics like infrastructural or institutional-change topics). The "20-30 clusters across all topics aggregated" methodology framing compresses to 6-8 clusters per individual topic — this cell confirms the per-topic cluster count is closer to 7-8 than to 20.

3. **Systems Thinker archetype vocabulary is a topic-invariant preservation target.** ST's named archetypes (Success-to-Successful, Fixes that Fail, Tragedy of the Commons) appeared in both space-party/low (in a lighter way) and food-truck/low (strongly — 8 of 12 questions). Cross-topic BL1 analysis should specifically check whether SP1 prompts preserve archetype vocabulary consistently across topics. A prompt that preserves archetypes on food-truck but normalizes them on school-consolidation or property-management would be a reliability concern.

4. **AI question drop pattern.** This cell drops 3 AI questions (Q6, Q11, Q12) plus 1 AA question (Q5) as the expected-to-drop set. AI's high source volume (12) produces more method-question / meta-strengths-question candidates for cutting than other personas. Cross-topic BL1 should track whether AI consistently provides the most expected-drop candidates; if so, that's a prompt-design signal (ask AI for fewer method questions) rather than a synthesis-prompt signal.

5. **Strategic dimension expansion on business topics.** Food-truck/low's 29% Strategic target is meaningfully higher than space-party/low's 18% (and likely higher than social-service topics will show). Dimension-balance scoring should allow topic-class-adjusted targets rather than fixed targets across all 30 cells. Business topics: ~28-32% Strategic; event topics: ~15-22%; social/institutional: likely 20-25%.

6. **C1 (cluster source count) is tightly correlated with convergence, not persona volume.** C1 has 12 source questions (the most) in this cell, but only 5 output questions (compaction 2.4). C7 has 9 source and only 2 output (compaction 4.5). The compaction variance is driven by *how tightly questions converge on a small number of decision axes* within the cluster, not by the cluster's source volume. SP1 scoring should allow 2-5 range per cluster without penalizing uneven compaction, because the underlying convergence structure justifies it.

7. **Append Cluster-B saturation.** Analogist's Cluster B (industry/business-case patterns) has 3 questions (craft brewery, food cart pods, FedEx hub-and-spoke) — a genuinely rich business-topic cluster. Selecting one loses two distinctive business-analogy framings. A medium-effort variant (quota 5) would capture 2 of the 3; high-effort (all 5-8) captures all 3. Cross-topic BL1 should track whether business-topic Analogist outputs consistently over-cluster in their industry-pattern cluster, because this is the domain where Analogist's distinctive value is highest. If so, an effort-level rebalancing rule (take 2 from saturated Analogist clusters at low effort) could improve Append output quality — but this would deviate from the D1 spec.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (food-truck / low cell)

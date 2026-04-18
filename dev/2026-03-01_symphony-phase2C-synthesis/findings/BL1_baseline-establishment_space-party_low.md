# BL1 — Baseline Establishment: space-party / low

**Date:** 2026-04-18
**Author:** BL1 subagent (space-party / low cell)
**Scope:** One cell of the Phase 2C BL1 baseline pass — baseline reference for SP1 variant scoring of the synthesis prompt on space-party at low effort.
**Companion baseline files:**
- `baselines/space-party_low_clusters.md` (B1)
- `baselines/space-party_low_convergence.md` (B2)
- `baselines/space-party_low_target.md` (B3)
- `baselines/space-party_low_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**

| Metric | Value |
|---|---|
| Total source questions (N) | 103 |
| Synthesize-group questions | 72 (10 personas, but 6 of 10 are Synthesize) |
| Append-group available (A_available) | 31 |
| Synthesize personas | 6 — Analyst (10), Appreciative Inquirer (12), Audience Advocate (12), Devil's Advocate (12), Questioner (15), Systems Thinker (11) |
| Append personas | 4 — Provocateur (8), Analogist (8), Visionary (7), Storyteller (8) |
| Natural cluster count (C) | 7 |
| Convergence groups (P) | 12 |
| Questions in convergence (Q) | 41 of 72 (57%) |
| Convergence density | 57% |
| Synthesized output target (M) | 27 (range 24-30) |
| Compaction ratio | 72 / 27 = 2.67 (range 2.4-3.0) |
| Append quota (A_quota) | 12 (4 personas × 3, one per persona-internal cluster) |
| Final total output | 39 (range 36-42) |

**Topic profile:** A concrete, time-bounded event (5th-birthday party for 11 children, space-themed, at-home implied). Per the persona-selection guide topic-affinity hints, this profile is best served by Appreciative Inquirer + Audience Advocate, with the standard analytical core (Analyst, Devil's Advocate, Questioner) adding scoping and risk lenses. The low-effort roster aligns with this — all 10 Tier 1 personas, no Tier 2/3, Analogist (default) preserved.

**Why this cell is a clean BL1 reference:** Concrete topic, no shortfalls in TDA1, no missing slots, default Analogist (no Connector swap), and not on the GT1 watchlist. Every persona contributes a meaningful spread of questions (no persona shows the "compounding" or "filler" pathologies that would distort cluster baselines). The 7-cluster natural structure is visible in both per-persona and flat-pool clustering passes.

---

## 2. Persona Representation Challenges

The synthesizer must navigate three meaningful representation tensions:

**Tension A — Convergent personas vs. distinctive personas.** Of the 6 Synthesize personas, four have heavy cross-persona convergence (Analyst, Devil's Advocate, Questioner, Systems Thinker — each contributes to 4-6 of the 12 convergence groups). Two have lower convergence with the analytical core (Appreciative Inquirer with 3, Audience Advocate with 3) but carry distinctive registers — strengths-based framing and equity/accessibility framing respectively. SP1 risk: a synthesizer that aggressively merges may disproportionately surface analytical voices and bury AI/AA. The persona-floor scoring in B3 (AI floor 6, AA floor 6) is the explicit scoring guard.

**Tension B — Questioner over-coverage.** Questioner generates 15 questions (largest contributor) and many are absorbed into convergence merges. 5 of 15 Questioner questions land cleanly in convergence groups (Q1, Q2, Q3, Q4, Q5, Q7, Q8, Q9, Q14, Q15 → 10 in convergence). Without a floor protecting Questioner-distinctive uniques (Q6 venue, Q10 gender/STEM, Q11 meta-purpose, Q12 reverse-engineering, Q13 immersive participation), the synthesizer could under-represent Questioner's "widening problem framing" function. B3 sets the Questioner floor at 6 with explicit named questions to preserve.

**Tension C — Audience Advocate's structural-equity load.** AA is the *only* Synthesize persona carrying accessibility (sensory, cultural, socioeconomic, withdrawal) and parent-experience (drop-off, invisible labor) territory. Six of AA's 12 questions live in cluster C3 (Safety/Sensory/Inclusion) and 3 in C7 (Family/Parents). If a synthesizer collapses AA into Devil's Advocate (both surface risks) or into Empath-like emotional framings, the structural-equity dimension is lost. The Phase 2B note in the persona-selection guide that AA is "structurally-aware human-centeredness unique among human-centered personas" is the critical preservation criterion.

---

## 3. Append Mechanics Observations

**Round-robin works cleanly here.** All 4 Append personas exhibit clean ~3-cluster internal structure consistent with the persona-selection guide's "universal 3-cluster structure" claim. Analogist's clusters are organized by source-domain family (venues / operations / nature & ritual); Storyteller's by narrative function (arc / environment / after); Visionary's by what is being reimagined (form / child's role / "space"); Provocateur's by what is being inverted (theme / social structure / economics-purpose). The 3 × 4 = 12 quota maps exactly onto one question per persona-internal cluster.

**Tie-breaking is the operational risk.** Three personas have multi-question clusters that force tie-breaking: Analogist Cluster A (4 questions), Provocateur Clusters A and B (3 each), Storyteller Clusters A and B (3 each), Visionary Cluster A (3). I used "lowest-numbered source question wins" as a deterministic rule — reproducible across SP1 runs, but it does mean the strongest question in a cluster may not be selected. An SP1 prompt that asks for "best per cluster" rather than "first per cluster" would yield different selections; both are valid implementations of the D1 spec, which says "no quality judgment needed."

**Drop rate is at the high end of D1 expectation.** 61% of append-available questions are dropped (19 of 31), slightly above D1's 40-60% range. The driver is Analogist's over-clustered Cluster A (4 questions — museums, theme parks, theater, retail all sit in the "designed-experience venues" family). Not a quality concern; a function of how naturally the Analogist clusters split for this topic.

**Cross-cluster bridging:** The 12 appended questions distribute across 5 of 7 B1 clusters (C2, C3, C4, C5, C7). C1 (Budget) and C6 (Logistics) receive no Append questions, consistent with D1's framing that the Append register operates orthogonally to the analytical core. The synthesized output already covers C1 and C6 fully through Synthesize-group questions; Append's role here is to inject provocations, metaphors, narratives, and paradigm challenges into the Theme Authenticity, Memory & Wonder, and Family clusters — exactly where strengths-based and imaginative framings have most leverage.

---

## 4. C1 Recommendation

C1 (clustering vs. flat pooling) was tested in Pass A (per-persona-internal clustering preserved) vs. Pass B (flat pooling of all 72 Synthesize questions). Both passes produce the same 7 clusters with marginal boundary differences on 3-4 borderline questions.

**Recommendation: flat pooling for SP1 prompts.** With 72 questions and 6 personas at low effort, flat pooling produces equivalent cluster quality with a simpler synthesis prompt. The persona-internal cluster headings (e.g., Systems Thinker's bracketed labels) act as topic markers rather than carrying distinctive structural claims that need to survive into output. SP1 prompt variants should not require the synthesizer to preserve persona-internal cluster structure as scaffolding for cross-persona clustering.

**Caveat:** Flat-pooling recommendation is grounded in this single cell. The C1 question may have different answers at higher question counts (medium/high effort with 80-130+ Synthesize questions), where the cognitive load of flat-clustering grows. BL1 cells at medium and high effort should re-run the C1 comparison.

---

## 5. GT1 Watchlist Status

**space-party / low is NOT on the GT1 watchlist.** TDA1 Section 5.1 lists 5 GT1 medium-confidence cells; space-party / low is not among them. Tier 3 selections do not apply at low effort, and the Analogist/Connector default holds (space-party uses default Analogist — single-domain event-planning topic per R7 criteria). Interpretation: if SP1 produces anomalous scores on this cell, the cause is in the synthesis prompt, not in upstream persona-roster ambiguity.

---

## 6. Open Concerns for Cross-Topic Synthesis

Items that may matter when BL1 results across all 10 topics are aggregated and compared:

1. **Compaction ratio sensitivity to convergence density.** This cell has 57% convergence density and target compaction 2.67. Topics with lower convergence (e.g., highly heterogeneous topics where personas address mostly orthogonal concerns) may yield compaction closer to 1.5-2.0. Cross-topic compaction-ratio comparisons should normalize on convergence density, not raw N/M.

2. **Cluster count stability across topics.** The 7-cluster structure here groups concrete-event concerns (budget, activity, safety, agency, memory, logistics, family). Other topic profiles (e.g., infrastructural topics like school-consolidation or property-management) likely yield different cluster topologies, possibly with more or fewer than 7 clusters. The "20-30 clusters across all topics aggregated" methodology framing may compress to 5-8 clusters per topic — this cell suggests the per-topic cluster count is closer to 7 than to 20.

3. **AI Q12 / Quest Q11 / AI Q6 borderline-meta drops.** Three questions were dropped as too meta or too overlapping with stronger questions in the same cluster. Different topics may show different volumes of meta questions (Questioner especially). SP1 scoring should tolerate ±2 questions of compaction variance from meta-question handling without flagging the variance as a scoring failure.

4. **AA Q12 (invisible parental labor) as a singleton-distinct.** This is a near-orphan question that BL1 preserved as standalone because no other persona genuinely centers guest-family invisible labor. It scores as a "preserved unique" rather than a convergent merge. Synthesizers that try to merge AA Q12 with DA Q6 (volunteer adult labor) collapse a host-side vs. guest-family-side distinction that matters for the question's utility. Watch for similar singleton-distinct preservations across other cells.

5. **Append's universal-3-cluster heuristic.** All 4 Append personas in this cell exhibit clean 3-cluster structure. If other topics produce Append personas with 2 or 4 natural clusters, the round-robin quota math (3 per persona) will produce uneven within-persona coverage. This cell did not stress-test that scenario.

6. **Dimension-balance target may shift across topics.** The 27% Human-centered target here reflects a child-centered party context. Topics with technical, infrastructural, or financial centers of gravity will shift toward Strategic / Tactical / Analytical. Cross-topic dimension-balance comparison should be percentile-normalized, not absolute.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (space-party / low cell)

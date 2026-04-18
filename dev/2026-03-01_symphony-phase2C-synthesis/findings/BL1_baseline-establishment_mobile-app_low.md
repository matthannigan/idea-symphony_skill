# BL1 — Baseline Establishment — mobile-app / low

**Date:** 2026-04-18
**Cell:** mobile-app, low effort
**Input file:** `dev/2026-03-01_symphony-phase2C-synthesis/test-data/mobile-app_low.md`
**Artifacts produced:**
- `baselines/mobile-app_low_clusters.md` (B1)
- `baselines/mobile-app_low_convergence.md` (B2)
- `baselines/mobile-app_low_target.md` (B3)
- `baselines/mobile-app_low_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**
- Total questions in input: **101** (Synthesize 72 + Append 29)
- Synthesize-group personas: 6 (Analyst, Appreciative Inquirer, Audience Advocate, Devil's Advocate, Questioner, Systems Thinker)
- Append-group personas: 4 (Provocateur, Storyteller, Visionary, **Connector** — replaces Analogist per GT1 Rev 3)
- Natural cluster count: **9** cross-persona Synthesize clusters (range 8–10)
- Convergence groups: **11** (7 strong-merge-to-one, 2 preserve-distinct, 2 hybrid two-merge)
- Convergence density: **66.7%** of Synthesize-group questions participate in cross-persona convergence (48/72)
- Expected synthesis output: **27 questions** (range 23–31); compaction ratio **2.67** (range 2.32–3.13)
- Append quota: **12 questions** (3 per persona × 4 personas)
- Total expected Phase 2C output: **39 questions** (27 synthesized + 12 appended)

**Defining feature of this cell:** Mobile-app is a well-defined product/business problem space (struggling fitness app, 15 features, 180K downloads, 8% 30-day retention, 2% DAU/MAU, 47-second sessions, 8-month runway, burned-out team, simplification gamble). Like habit-tracker/low, all six Synthesize personas have strong opinionated takes on the same well-known fault lines, driving convergence density on the high end of expected (66.7% vs. habit-tracker's 60.3%). The cell is "easy to cluster" but "hard to compact" because each cluster has both convergent material to merge AND distinctive unique-perspective questions to preserve.

**Synthesize/Append split:** 71% Synthesize / 29% Append. This is the standard Tier-1-only low-effort split with no Tier 2 or Tier 3 contribution (no Accountant/Lawyer/Politician/Technical Expert). **Connector replaces Analogist per GT1** because mobile-app is a simplification problem that benefits from cross-domain structural parallels (ecology/succession, museum curation, information entropy, language death, notification-architecture-as-dependency-graph) — Connector's distinctive isomorphism and recombinant-innovation modes activate here, whereas Analogist's import mode would produce weaker mycorrhizal/desire-line-style metaphors on this topic.

**Distinctive characteristics vs. habit-tracker/low:**
- **Higher convergence density** (66.7% vs. 60.3%) — mobile-app's simplification frame forces personas to engage the same core questions more uniformly.
- **Larger Cluster 1** (11 questions vs. 9) — "what is core value?" is the single densest convergence in the file, with 5 personas contributing.
- **Audience Advocate UX concentration** — 6 of 12 Audience Advocate questions land in Cluster 5 (UX/overwhelm), the most persona-concentrated cluster in this file.
- **AI orphan-cluster is smaller but similar register** — 7 unique "felt aspirational future" questions vs. habit-tracker's 8 "felt quality" questions. Same dimensional-inverse pattern.
- **Connector's Cluster C overweight** — 5 of Connector's 8 questions in one internal cluster (cross-domain analogies for feature removal) is the single "left behind" round-robin pattern in the cell.

---

## 2. Persona Representation Challenges

**Highest risk: Appreciative Inquirer.** AI's voice is dimensionally inverse to the analytical set (per persona-selection-guide and D2). 7 of AI's 12 questions are unique orphans about the felt aspirational future — peak user experiences, features that sparked joy, three-years-from-now evangelism, the one-thing evolution, amplifying what works, first experiments, building from existing assets. Of these 7, at least 2 (Q4 hidden-assets, Q7 one-thing-evolution) absorb into Clusters 1 and 3; the remaining 5 (Q1, Q2, Q5, Q8, Q11, Q12) form a felt-aspirational orphan cluster vulnerable to being dropped entirely by a synthesizer that prioritizes cross-persona convergence as a quality signal. **B3 sets a hard minimum of 3 AI questions in output (across Clusters 1, 3, 8, 9 absorption plus at least 1 from the orphan cluster).** SP1 should be monitored for AI under-representation.

**Second-highest risk: Audience Advocate's UX-cluster compaction.** Audience Advocate's 6 UX questions (Q1 first-30-seconds, Q3 distraction-from-intent, Q4 accessibility/digital-literacy, Q6 limited-bandwidth users, Q9 notification philosophy, Q10 "overwhelming" diagnosis) are the most persona-concentrated cluster in the file. A synthesizer that over-compacts them into one general "onboarding UX" question would lose the accessibility-specific claim (Q4 — equity lens) and the stated-vs-revealed-preferences methodology claim (Q11). **B3 requires at least Q1 (first-30-seconds) and Q4 (accessibility) to survive as distinct questions** — this is the diagnostic for "did the synthesizer preserve Audience Advocate's structurally-aware human-centered voice or just its content?"

**Third risk: Systems Thinker's named feedback-loop vocabulary.** Systems Thinker introduces distinctive framings (core-value feedback loops, keystone features, feature-loss cascade dynamics, compensatory behavior, communication-fragmentation feedback loop, team capacity-reinforcement dynamics, technical debt balancing loop, success metric realignment, zero-sum feature budget). Synthesis tends to extract the underlying concern and drop the named-pattern labels. **B3 requires at least one named feedback-loop / structural-pattern framing to survive in the output** — this is the diagnostic for "did the synthesizer preserve Systems Thinker's voice or just its content?"

**Lower risk but worth tracking: Questioner's short-form reframings.** The Questioner has 5 unique short-form questions (Q4 category-boundary, Q8 discoverability, Q10 wrong-question, Q13 dependency-graph, Q14 market-pivot) with characteristic rhetorical structure. Compaction can absorb these into longer merged questions and lose the "challenge-by-questioning" register. B3 sets minimum representation at 5 of 15; Q10 ("what would make users open this app every day even if it only did one thing") should survive verbatim.

**Easiest to preserve:** Devil's Advocate (heavily convergent across Clusters 1, 2, 4, 6, 7, 8 — its contributions land in merges naturally) and Analyst (strong cluster-driver for Cluster 4 with 4 quantitative-metric questions that have clear merges).

---

## 3. Append Mechanics Observations

**Round-robin landed cleanly for 3 of 4 personas.** Provocateur (7 Qs, 3 internal clusters), Storyteller (7, 3), and Visionary (7, 3) each have exactly 3 internal thematic clusters at their generated volumes, making the 3-per-persona low-effort quota a perfect 1:1 cluster→question selection. No fallback needed.

**One significant left-behind pattern: Connector Cluster C overweight.** Connector has 8 questions distributed across 3 internal clusters: Cluster A (ecological / feedback-loop parallels — Q1, Q7), Cluster B (behavioral-science parallels — Q2), Cluster C (engineering/curatorial/information-theoretic parallels — Q3, Q4, Q5, Q6, Q8 — 5 questions). The deterministic source-order rule selects Connector Q3 (UI complexity as information entropy) from Cluster C and drops the other four (museum curation, surgical triage vs. architectural restoration, language death / feature migration, notification architecture as dependency map). These four are among the persona's most distinctive feature-removal framings for this specific topic — arguably the highest-value cross-domain contributions Connector makes to the mobile-app simplification decision. **This is the single most significant "left behind" pattern in the cell.**

**Implication for SP1 and future research:** The D1 rule is doing exactly what it was designed to do — enforcing diversity across a persona's internal clusters over depth within one. But at 8-question volume, when a persona's output is heavily weighted toward one thematic cluster (as Connector's is here), the 3-quota rule sacrifices high-value questions to maintain cross-cluster spread. Options for future D1 refinement: (a) accept the trade-off (current behavior — prioritizes diversity); (b) switch to "one per cluster, then fill from the largest cluster" at low effort (currently only applies at medium); (c) quality-weighted selection within the largest cluster. For this investigation, **accept the current behavior** and flag Connector-at-low as a known characteristic.

**B1 cluster coverage from Append:** Appended questions land predominantly in B1 Clusters 1 (Core Value — 3 appends + alts), 5 (UX/Overwhelm — 2 appends + alts), and distribute into 2, 3, 4, 7, 8, 9 in smaller quantities. Cluster 6 (Research Methodology) receives no Append questions — expected, since the Append personas operate in different registers (provocation, narrative, vision, cross-domain analogy) than the research-methodology cluster's epistemological territory. Cluster 1 (Core Value) receives the heaviest Append representation, appropriate because the entire simplification question centers there.

**Storyteller cluster structure differs from habit-tracker:** habit-tracker's Storyteller had 4 internal clusters (including the distinctive Micro-ritual cluster) that forced a drop. Mobile-app's Storyteller has 3 internal clusters — individual-user-journey transitions, team/organizational transition stories, external narrative / launch & aftermath. All 3 get representation. This suggests Storyteller's 4-cluster pattern at habit-tracker was topic-specific (habit-tracker's emphasis on moment-scale rituals) rather than a universal Storyteller-at-low-effort behavior.

---

## 4. C1 Recommendation (Per-Cell)

**Recommendation: per-persona structure with explicit cross-persona-cluster permission.** See B1 §C1 Comparison for full analysis.

For this specific cell:
- Per-persona clustering yields 9 stable clusters; flat-pool clustering would yield 7-8 clusters (because Cluster 5 absorbs UX-adjacent questions from other personas and Cluster 1 absorbs "what is core?" orphans from Questioner).
- The two real differences between approaches are content-revealing on the flat-pool side (validates cross-persona convergence in "what is core?" and UX territory) and persona-protective on the per-persona side (preserves AI's distinctive aspirational voice and Questioner's short-form reframings).
- For mobile-app/low specifically, **per-persona is the safer default** because (a) AI's voice is unusually distinctive here (7 of 12 are felt-aspirational orphans), (b) Audience Advocate's 6-question UX concentration is a real structural signal that flat pooling would dilute into a general "user experience" bucket rather than the specific overwhelm/onboarding diagnostic it is, and (c) Devil's Advocate's anti-bias research-methodology register in Cluster 6 would partially dissolve under flat pooling.

**SP1 implication:** The synthesis prompt should present questions grouped by persona but instruct the synthesizer to actively look for cross-persona convergence and to flag dual-cluster ambiguity (several questions legitimately belong to two clusters — e.g., Audience Advocate Q11 between Cluster 1 and Cluster 6; Systems Thinker Q8 between Cluster 2 and Cluster 7). A pure flat-pool prompt would silence AI's aspirational register; a pure per-persona prompt would miss the real cross-persona "what is core?" convergence in Cluster 1.

---

## 5. GT1 Watchlist Status

**Not on GT1 watchlist.** Per TDA1 §5.1, the GT1 medium-confidence cells are:
- tool-library / medium
- food-truck / high
- property-management / high
- youth-mentorship / high
- school-consolidation / medium

mobile-app / low is not among them. **Connector is used** (not Analogist) per GT1 Rev 3, which is a confident assignment based on mobile-app's simplification-across-systems profile (product, team, user-relationship, business-strategy systems all constrained together). The cell composition (10 Tier 1 personas, no Tier 2, no Tier 3, Connector in the Perspective slot) is canonical and stable. If SP1 produces anomalously poor scores on this cell, the issue lies with the synthesis prompt, not with GT1's persona selection.

---

## 6. Open Concerns for Cross-Topic Synthesis

1. **AI orphan-cluster phenomenon is confirmed as recurring.** Mobile-app/low shows the same pattern as habit-tracker/low — AI's felt-quality / felt-aspirational questions form an internally-coherent cluster that cross-persona clustering correctly isolates as "voice-distinctive but content-unique." This strongly suggests AI-at-low-effort produces a consistent orphan-cluster signal across topics rather than being topic-specific. **Cross-topic check implied:** BL1 should set a universal "min 1 AI orphan must survive" floor at low effort and medium effort across all topics, not just per-topic. For mobile-app specifically, the orphan cluster is smaller (7 vs. 8) but of the same character.

2. **Connector-at-low with overweight internal cluster is a new D1 observation.** Mobile-app is the first cell in this baseline sweep where Connector appears at low effort (per GT1 Rev 3 swap decisions: youth-mentorship, school-consolidation, mobile-app, wearable-device, career-change all swap to Connector — 5 of 10 topics). If Connector systematically produces 8 questions with a heavy Cluster C (4-5 questions in one internal cluster), the D1 round-robin will systematically under-represent Connector's best cross-domain contributions. **Cross-topic check needed:** when BL1 completes for career-change, youth-mentorship, school-consolidation, wearable-device at low effort, does Connector always produce a cluster-overweight pattern, and is the dropped cluster always Cluster C (cross-domain analogies)? If yes, D1 may need a Connector-specific adjustment.

3. **Convergence density of 66.7% suggests well-defined product/business topics cluster more tightly.** Mobile-app (66.7%) and habit-tracker (60.3%) both exceed the "~40-50% expected" baseline for low-effort cells. This tracks with both being well-discussed product/business domains. Less-canonical topics (e.g., space-party, school-consolidation) may have lower convergence density. **Cross-cell normalization already raised in habit-tracker BL1:** SP1 scoring should account for per-cell convergence density rather than apply a uniform compaction-ratio target across topics.

4. **Cluster 6 (Research Methodology) is a persona-artifact cluster.** The Research Methodology cluster forms largely because Devil's Advocate has two anti-bias questions (Q2 self-selection, Q9 one-PM) that cohere with Questioner Q6 (test-before-committing) and Audience Advocate Q8 (power dynamics / user involvement). Under flat pooling this cluster partially dissolves into Cluster 1. SP1 may make the same dissolution choice. The B1/B3 ambiguity should be marked as "acceptable either way" — a synthesizer that merges research-methodology questions into Cluster 1 should not be penalized for the clustering choice.

5. **Dimension balance target for Synthesize-only output is intentionally Creative-light.** The 7% Creative target reflects that Creative weight comes from the Append group post-integration. SP1 scoring on dimension balance should evaluate the Synthesize-only output against this Synthesize-only target, not against a holistic target that would unfairly penalize the synthesizer for the cell's natural Creative thinness in the analytical group. Mobile-app's Append group (Provocateur, Storyteller, Visionary, Connector) is unusually Creative-heavy because Connector replaces Analogist — post-integration Creative should rise notably.

---

## Top-Line Summary (Confirmation)

| Quantity | Value |
|---|---|
| Total input questions (N) | 101 |
| Synthesize-group input | 72 |
| Append-group input | 29 |
| Natural cluster count (C) | 9 (range 8–10) |
| Convergence groups | 11 |
| Questions in convergence (Q) | 48 of 72 (66.7% density) |
| Expected synthesis output | 27 (range 23–31) |
| Compaction ratio (Synthesize) | 2.67 (range 2.32–3.13) |
| Append quota (A_quota) | 12 |
| Total expected Phase 2C output | 39 |
| GT1 watchlist | **Not on watchlist** |
| Analogist / Connector | **Connector** (GT1 Rev 3 swap) |
| C1 recommendation | Per-persona with cross-persona permission |
| Highest-risk persona for representation | Appreciative Inquirer (min 3 in output, ≥1 from felt-aspirational orphan cluster) |
| Most significant Append left-behind | Connector Cluster C (4 of 5 questions dropped by source-order rule) |

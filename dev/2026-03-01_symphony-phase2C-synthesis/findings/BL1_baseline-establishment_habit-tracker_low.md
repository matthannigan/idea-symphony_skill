# BL1 — Baseline Establishment — habit-tracker / low

**Date:** 2026-04-18
**Cell:** habit-tracker, low effort
**Input file:** `dev/2026-03-01_symphony-phase2C-synthesis/test-data/habit-tracker_low.md`
**Artifacts produced:**
- `baselines/habit-tracker_low_clusters.md` (B1)
- `baselines/habit-tracker_low_convergence.md` (B2)
- `baselines/habit-tracker_low_target.md` (B3)
- `baselines/habit-tracker_low_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**
- Total questions in input: **96** (Synthesize 68 + Append 28)
- Synthesize-group personas: 6 (Analyst, Appreciative Inquirer, Audience Advocate, Devil's Advocate, Questioner, Systems Thinker)
- Append-group personas: 4 (Provocateur, Storyteller, Visionary, Analogist)
- Natural cluster count: **9** cross-persona Synthesize clusters (range 8–10)
- Convergence groups: **11** (5 strong-merge candidates, 4 preserve-distinct, 2 hybrid)
- Convergence density: **60.3%** of Synthesize-group questions participate in cross-persona convergence (41/68)
- Expected synthesis output: **26 questions** (range 22–30); compaction ratio **2.62** (range 2.27–3.09)
- Append quota: **12 questions** (3 per persona × 4 personas)
- Total expected Phase 2C output: **38 questions** (26 synthesized + 12 appended)

**Defining feature of this cell:** habit-tracker is a well-discussed product/business problem space, so all six Synthesize personas have strong, opinionated takes on the same well-known fault lines (streaks, gamification, differentiation, monetization, privacy, scope, lifecycle, behavioral-science depth). Convergence density is on the high side of expected — most personas converge on multiple clusters. The cell is "easy to cluster" but "hard to compact" because each cluster has both convergent material to merge AND distinctive unique-perspective questions to preserve.

**Synthesize/Append split:** 71% Synthesize / 29% Append. This is the standard Tier-1-only low-effort split with no Tier 2 or Tier 3 contribution (no Accountant/Lawyer/Politician/Technical Expert, no Connector swap — Analogist retained per GT1). The split is clean and matches the persona-selection-guide's expected low-effort composition.

---

## 2. Persona Representation Challenges

**Highest risk: Appreciative Inquirer.** AI's voice is dimensionally inverse to the analytical set (per persona-selection-guide and D2). 8 of AI's 11 questions are unique orphans about the felt quality of a "beloved" tracker — Goldilocks calibration, generous gestures, simplicity-as-empowerment, daily-ritual feel, self-compassion. These don't converge with any other persona's questions and so are vulnerable to being dropped entirely by a synthesizer that prioritizes cross-persona convergence as a quality signal. **B3 sets a hard minimum of 2 AI questions in output.** SP1 should be monitored for AI under-representation.

**Second-highest risk: Systems Thinker's named archetype vocabulary.** Systems Thinker introduces distinctive framings (Fixes that Fail, success-to-the-successful, tragedy of the commons, motivation substitution). Synthesis tends to extract the underlying concern and drop the named-archetype labels. **B3 requires at least one named archetype to survive in the output** — this is the diagnostic for "did the synthesizer preserve Systems Thinker's voice or just its content?"

**Lower risk but worth tracking: Questioner's first-principles reframings.** The Questioner has 8 unique short-form questions (Q3, Q7, Q10, Q11, Q12, Q13, Q15) with characteristic rhetorical structure ("Why X?", "What if X?"). Compaction can absorb these into longer merged questions and lose the "challenge-by-questioning" register. B3 sets minimum representation at 5 of 15.

**Easiest to preserve:** Audience Advocate (cluster-driver for Cluster 5; voice anchored by long, structured questions that are hard to compact into another persona's framing). Devil's Advocate (heavily convergent, so its contributions land in merges naturally).

---

## 3. Append Mechanics Observations

**Round-robin landed cleanly for 3 of 4 personas.** Provocateur, Visionary, and Analogist each have exactly 3 internal thematic clusters at their generated volumes (7, 8, 6 respectively), making the 3-per-persona low-effort quota a perfect 1:1 cluster→question selection. No fallback needed.

**One awkward pairing: Storyteller Cluster D dropped.** Storyteller has 4 internal clusters (Narrative arc & legacy / Failure as plot beats / Supporting cast & contexts / Micro-ritual). The 3-quota forces Cluster D (the fifteen-second ritual question) to be excluded. This is arguably Storyteller's most distinctive question — the only one about *moment-scale* user experience rather than *journey-scale*. The deterministic D1 rule (first cluster, source order) excludes it correctly per the spec, but the rule is less generous to Storyteller than to the other three Append personas at this volume.

**Implication for SP1:** The Storyteller-at-low-effort case suggests it may be worth flagging as a known characteristic, not a bug. If multiple cells show Storyteller Cluster D systematically excluded, the D1 rule could be revisited (e.g., "if a persona has more clusters than the quota, prioritize the most distinctive cluster"). For this cell, accept the exclusion.

**B1 cluster coverage from Append:** Appended questions land predominantly in B1 Clusters 1 (Failure), 2 (Engagement), 4 (First Principles), 5 (Diversity), and 9 (Lifecycle). Strategic/tactical clusters (3 Differentiation, 6 Privacy, 7 Monetization, 8 Scope) receive no Append questions. This is expected and validates the design — the Append group operates in different registers (provocation, narrative, vision, analogy) than the strategic/tactical territory the Synthesize group covers.

---

## 4. C1 Recommendation (Per-Cell)

**Recommendation: per-persona structure with explicit cross-persona-cluster permission.** See B1 §C1 Comparison for full analysis.

For this specific cell:
- Per-persona clustering yields 9 stable clusters; flat-pool clustering yields 7-8 clusters (because First-Principles/Differentiation blur and Lifecycle absorbs more orphans).
- The two real differences between approaches are content-revealing on the flat-pool side (validates cross-persona convergence) and persona-protective on the per-persona side (preserves AI's distinctive voice).
- For habit-tracker/low specifically, **per-persona is the safer default** because AI's voice is unusually distinctive here and would risk homogenization under flat pooling.

**SP1 implication:** The synthesis prompt should present questions grouped by persona but instruct the synthesizer to actively look for cross-persona convergence and to flag dual-cluster ambiguity. A pure flat-pool prompt would silence AI; a pure per-persona prompt would miss some real cross-persona themes.

---

## 5. GT1 Watchlist Status

**Not on GT1 watchlist.** Per TDA1 §5.1, the GT1 medium-confidence cells are:
- tool-library / medium
- food-truck / high
- property-management / high
- youth-mentorship / high
- school-consolidation / medium

habit-tracker / low is not among them. The cell composition (10 Tier 1 personas, no Tier 2, no Tier 3, Analogist retained per GT1) is canonical and stable. If SP1 produces anomalously poor scores on this cell, the issue lies with the synthesis prompt, not with GT1's persona selection.

---

## 6. Open Concerns for Cross-Topic Synthesis

1. **AI orphan-cluster phenomenon may generalize.** habit-tracker is plausibly a topic that maximally activates AI's strengths-based register (well-being / self-improvement domain). On harder-edged topics (e.g., school-consolidation, property-management, food-truck), AI may have fewer orphans because its felt-quality questions land in more cross-persona territory. **Cross-topic check needed:** when this baseline is reproduced for other topics, is AI orphan-cluster size a habit-tracker-specific phenomenon or a general AI-low-effort pattern? If general, the AI-min-2 representation rule may need adjustment per topic.

2. **Storyteller Cluster D exclusion may recur.** If Storyteller consistently produces 4 internal clusters at the 5-8 generation range, the low-effort 3-quota will systematically exclude the smallest/last cluster. This could be a feature (D1 prioritizes diversity over completeness) or a bug (Storyteller's micro-ritual questions may be cross-cell valuable). **Cross-topic check needed:** does Storyteller produce 4 clusters in most cells, and is the dropped cluster always Cluster D (Micro-ritual) or does it vary?

3. **Convergence density of 60% may be habit-tracker-specific.** Habit-tracker is a well-discussed problem space. Less-canonical topics (e.g., space-party, school-consolidation) may have lower convergence density (more unique questions per persona, fewer merges). **Cross-cell normalization needed:** SP1 scoring should account for per-cell convergence density rather than apply a uniform compaction-ratio target across topics.

4. **First-Principles / Differentiation blur (Cluster 4 / Cluster 3) is content-driven.** This is a real semantic ambiguity: "what fundamental thing are we doing wrong vs. competitors?" can be read as either a market question or a first-principles question. SP1 may consistently make a different clustering choice than this baseline (e.g., merge into one cluster, or split differently). The B1/B3 ambiguity should be marked as "either-cluster-acceptable" in scoring rather than penalizing the synthesizer for making the other valid choice.

5. **Dimension balance target for Synthesize-only output is intentionally Creative-light.** The 8% Creative target reflects that Creative weight comes from the Append group post-integration. SP1 scoring on dimension balance should evaluate the Synthesize-only output against this Synthesize-only target, not against a holistic target that would unfairly penalize the synthesizer for the cell's natural Creative thinness in the analytical group.

---

## Top-Line Summary (Confirmation)

| Quantity | Value |
|---|---|
| Total input questions (N) | 96 |
| Synthesize-group input | 68 |
| Append-group input | 28 |
| Natural cluster count (C) | 9 (range 8–10) |
| Convergence groups | 11 |
| Questions in convergence (Q) | 41 of 68 (60.3% density) |
| Expected synthesis output | 26 (range 22–30) |
| Compaction ratio (Synthesize) | 2.62 (range 2.27–3.09) |
| Append quota (A_quota) | 12 |
| Total expected Phase 2C output | 38 |
| GT1 watchlist | Not on watchlist |
| C1 recommendation | Per-persona with cross-persona permission |
| Highest-risk persona for representation | Appreciative Inquirer (min 2 in output) |

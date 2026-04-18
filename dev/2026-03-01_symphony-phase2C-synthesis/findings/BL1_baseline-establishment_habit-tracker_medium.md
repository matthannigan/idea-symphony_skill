# BL1 — Baseline Establishment — habit-tracker / medium

**Date:** 2026-04-18
**Author:** BL1 subagent (single-cell scope: habit-tracker × medium)
**Status:** Canonical (deterministic baseline derived from test-data file; no human review pending; ready as scoring reference for SP1)

**Artifacts produced:**
- `baselines/habit-tracker_medium_clusters.md` (B1)
- `baselines/habit-tracker_medium_convergence.md` (B2)
- `baselines/habit-tracker_medium_target.md` (B3)
- `baselines/habit-tracker_medium_append-target.md` (B4)
- `findings/BL1_baseline-establishment_habit-tracker_medium.md` (this file)

---

## 1. Cell Characterization

**Input composition:**
- 110 total questions across 10 personas (matches TDA1 reported counts exactly)
- 82 Synthesize-group questions across 6 personas (Analyst 15, Audience Advocate 15, Questioner 15, Systems Thinker 15, Appreciative Inquirer 11, Devil's Advocate 11)
- 28 Append-group questions across 4 personas (Visionary 8, Provocateur 7, Storyteller 7, Analogist 6)
- No Tier 3 personas selected (consistent with persona-selection-guide_Phase2B.md medium-effort rule of 0-1 Tier 3)
- Analogist retained (no Connector swap) per GT1 Rev 3 — habit-tracker is single-domain (product design within habit-tracking domain)

**Cluster structure:**
- 12 natural thematic clusters in Synthesize pool, 0 orphan questions
- Cluster sizes range from 5 (Cluster 11 User Journey) to 12 (Cluster 1 Differentiation)
- 11/12 clusters have multi-persona contribution; only Cluster 11 (Onboarding/Journey) is single-persona (Appreciative Inquirer)

**Convergence density:**
- 68% of Synthesize questions participate in at least one cross-persona convergence pair/group
- 14 distinct convergence groups identified
- Strongest convergence: Cluster 7 (Graceful Graduation) with 6-persona convergence (every Synthesize persona contributes one question — the strongest theme signal in the dataset)
- 32% (26 questions) are unique with no cross-persona counterpart

**Synthesize/Append split:**
- 82/28 = 75%/25%
- Append quota at medium: 5 per persona × 4 personas = 20 questions selected, 8 dropped via round-robin
- Append composition (after selection): predominantly Creative dimension (Visionary, Provocateur, Analogist) plus Human-centered (Storyteller)

**Expected synthesis output:**
- 30 questions (range 26-34) from the 82 Synthesize input — compaction ratio 2.73:1 (range 2.41:1 - 3.15:1)
- 12 output clusters preserved (matches B1 input cluster count)
- Plus 20 appended questions = total Phase 2C output of ~50 questions (range 46-54)
- This sits at the upper end of the persona-selection-guide's medium-effort projection ("~45-65 questions")

---

## 2. Persona Representation Challenges

**Cluster 11 (User Journey, Onboarding) — 100% Appreciative Inquirer:**
This is the most significant persona-representation concern. Appreciative Inquirer is the only Synthesize persona that produces relational/experiential framing of the user journey arc — first three days, beloved tracker vision, generous gestures users want to reciprocate. No other Synthesize persona on this topic produces equivalent content. Synthesis must NOT collapse this cluster into Cluster 3 (motivation) or Cluster 6 (self-relationship) just because it has lower cross-persona convergence — the lack of convergence is itself the signal that this is unique, valuable territory.

**Risk for SP1 evaluation:** A naive synthesis prompt that prioritizes cross-persona convergence as the merge criterion could silently drop Cluster 11 entirely (no convergence → no signal → not preserved). The B3 target sets minimum 2 questions for this cluster; any SP1 output with 0 questions in Cluster 11's territory is a hard fail.

**Cluster 5 (Inclusion/Accessibility) — 75% Audience Advocate:**
Less severe than Cluster 11 (Questioner contributes 2 questions), but still strongly anchored by one persona. Audience Advocate's structural-inclusion lens (cognitive accessibility, mobile-first exclusion, cross-cultural behavioral science, life-circumstance accommodation) is high-density unique territory. The B3 target sets minimum 5 Audience Advocate questions in output to preserve this lens.

**Systems Thinker uniqueness — 53% unique territory (8 of 15 questions):**
Highest unique-territory rate among the Synthesize personas, consistent with V1's finding (~56-60% unique vs Tier 1 aggregate). Systems-vocabulary contributions (Meadows leverage points, Goodhart's Law on data visibility, conservation-of-behavior, success-induced brittleness, what-the-hell cascades) are not duplicated by any other persona. The B3 target sets minimum 5 Systems Thinker questions in output.

**No persona is at risk of total erasure.** All 6 Synthesize personas are anchor contributors to at least 2 clusters each. The risks are about minimum representation thresholds, not total exclusion.

---

## 3. Append Mechanics Observations (Round-Robin Natural or Awkward?)

**Round-robin felt natural for Analogist and Provocateur:**
- Analogist's 6 questions split cleanly into 3 clusters (3-2-1): biological, skill-acquisition, philosophical. Round-robin selects the obvious 5, dropping one mid-cluster question (Q3 mycorrhizal networks).
- Provocateur's 7 questions split into 3 clusters (3-2-2). Round-robin selects 5 with one tiebreak between Cluster B and C. Algorithm executed cleanly.

**Round-robin felt slightly awkward for Storyteller and Visionary:**
- Storyteller's 7 questions split into 3 clusters (2-3-2). The 3-question cluster (failure/disruption stories) gets 2 representations while the 2-question clusters get 1 each. The dropped Q4 (fifteen-second ritual) and Q6 (habit in natural habitat) are arguably the two most distinctive Storyteller contributions on this topic — both lost because of structural balance.
- Visionary's 8 questions split into 3 clusters (3-3-2). Three questions dropped — including Q8 (embodied experience integration), which is genuinely novel territory not addressed by any other persona. Round-robin's structural-balance bias is most costly here.

**Notable drops that lose distinctive content:**
- Analogist Q3 (mycorrhizal networks) — the Analogist's signature recurring analogy; D1 noted this analogy "recurs across ~40% of topics (each application is distinct)" — losing it on habit-tracker erases a representative example
- Visionary Q8 (embodied / digital-physical integration) — paradigm-extending question with no Synthesize counterpart
- Storyteller Q4 (fifteen-second ritual) — concrete moment-of-use design question that complements Cluster 3's mechanics-focused questions

**Recommendation for SP1 prompt:** The mechanical round-robin produces correct structural diversity but at the cost of dropping high-value content. SP1 might benefit from a "salvage" rule: if the dropped question is the only example of a sub-theme (e.g., embodied experience for Visionary), allow it to be retained at the cost of a within-cluster duplicate. This is a deviation from strict D1 round-robin but worth considering during SP1 testing.

For BL1 baseline scoring purposes, strict round-robin is the canonical baseline. If SP1 produces non-strict outputs that preserve more distinctive content, score against the loose criterion ("5 per persona, structural diversity") rather than penalizing exact-match drops.

---

## 4. C1 Recommendation (Per-Persona vs Flat Pooling)

**Recommendation: Flat pooling.**

Rationale (full analysis in B1's C1 Comparison section):

1. **Cross-persona convergence is the strongest theme signal.** Cluster 7 (Graceful Graduation) is a 6-persona convergence — every Synthesize persona on the topic independently contributes a question on this theme. This convergence is immediately visible in flat pooling but only emerges at merge time after per-persona pre-clustering. Naming this convergence early helps the synthesis subagent prioritize cluster importance.

2. **Persona-unique territory is preserved equally well in flat pooling.** Cluster 11 (User Journey, 100% Appreciative Inquirer) emerges in both clustering passes. Flat pooling does not erase persona-unique territory; it just doesn't privilege it via structural pre-clustering.

3. **Persona attribution should travel as metadata, not as structure.** Each question can carry its `[Persona]` tag; the synthesis output can report cluster-level persona composition. Pre-clustering by persona forces a structural commitment that the final output rarely needs.

4. **Per-persona pre-clustering tempts the subagent toward persona-aligned output structure.** This would defeat the purpose of synthesis. Flat pooling encourages cross-persona theme detection from the start.

5. **Computational simplicity.** Flat pooling is one pass over all questions; per-persona is N passes plus a merge step.

**SP1 prompt directive (suggested):** "Read all questions in the assembled file. Identify natural cross-persona themes. Group questions by theme, preserving the `[Persona]` attribution on each question. For each cluster, report which personas contribute and how many questions from each."

---

## 5. GT1 Watchlist Status

**habit-tracker / medium is NOT on the GT1 BL1 watchlist.**

Per TDA1 Section 5.1, the BL1 Watchlist (GT1 Medium-confidence cells) consists of:
- tool-library / medium
- food-truck / high
- property-management / high
- youth-mentorship / high
- school-consolidation / medium

habit-tracker / medium does not appear in this list. Its Tier 3 / Connector-Analogist composition (no Tier 3 selected; Analogist retained) is GT1 High-confidence. If SP1 produces anomalous scores on this cell, the issue is the synthesis prompt or this baseline — NOT GT1.

---

## 6. Open Concerns for Cross-Topic Synthesis

These concerns surfaced during habit-tracker / medium baselining and may apply to other topics:

### 6.1 Cluster 11 erasure risk (single-persona clusters)

If a single-persona cluster like Cluster 11 (100% Appreciative Inquirer) is at risk on this topic, similar single-persona clusters likely emerge on other topics. The pattern: Appreciative Inquirer's relational/experiential questions cluster together with no analytical-persona counterpart. Other Synthesize personas may show similar single-persona clusters depending on topic:
- Audience Advocate's structural-inclusion lens might dominate accessibility clusters on civic/community topics
- Systems Thinker's archetype vocabulary might dominate systemic-dynamics clusters on infrastructure topics
- Devil's Advocate's risk catalog might dominate vulnerability clusters on security/regulated topics

**Recommendation:** SP1 evaluation should include a "single-persona cluster preservation" check — count clusters where one persona contributes >70% of questions and verify these are represented in synthesis output proportional to their input share, NOT discarded for low cross-persona convergence.

### 6.2 6-persona convergence as a cluster-priority signal

The Graceful Graduation cluster's 6-persona convergence is striking. This may be a topic-specific phenomenon (habit-trackers have a well-known "should make itself unnecessary" tension that all reasonable observers recognize) or it may be a more general pattern where some clusters universally attract multi-persona attention. If this convergence pattern recurs across topics, SP1 should explicitly weight 5+ persona convergences as priority clusters in the synthesis output (3-4+ output questions vs. 1-2 for low-convergence clusters).

### 6.3 Round-robin Append loses distinctive content

The Visionary Q8 (embodied experience) and Analogist Q3 (mycorrhizal networks) drops illustrate that strict round-robin can sacrifice the most distinctive Append-persona contributions for the sake of cluster balance. Other topics likely produce similar high-value drops. Consider whether a "distinctiveness override" rule should be added to D1's round-robin algorithm — but this is an SP1-prompt design question, not a baseline-establishment question.

### 6.4 Synthesize-cluster output count vs. methodology projection

Methodology projects "~50-80 [Synthesize] questions → ~20-30 thematic clusters" across topics aggregated. For habit-tracker / medium with 82 input → 12 clusters / 30 output, the per-topic ratio is 2.73:1 compaction with 12 clusters. Aggregated across 10 topics × 12 = 120 clusters total — well above the methodology's 20-30 cluster projection. This suggests either:
- The 20-30 cluster projection is for a single topic (not aggregated), in which case habit-tracker / medium's 12 is below projection
- The projection is for aggregated topics with extensive cross-topic cluster merging — unlikely for an investigation that processes topics individually

**Open question:** Is the methodology's "20-30 thematic clusters" expected per-topic or aggregated? If per-topic, BL1's 12-cluster baseline is below projection by ~40%, and SP1 prompts might be evaluated against an unrealistic high cluster count. If aggregated, BL1's 12 is reasonable. This warrants clarification across BL1 cells before SP1 evaluation begins.

### 6.5 Dimension balance — Creative dimension at 0% in Synthesize output

Creative dimension is intrinsically anchored by the Append personas. Synthesize-only output has Creative at 0%, which is correct behavior. But scoring rubrics that demand non-zero Creative in Synthesize output would mis-evaluate. Ensure SP1 rubrics distinguish "Synthesize dimension balance" from "full Phase 2C output dimension balance."

---

## 7. Top-line Numbers

| Metric | Value |
|---|---|
| N (input Synthesize) | 82 |
| N (input total incl. Append) | 110 |
| C (cluster count) | 12 |
| Q (questions in convergence) | 56 |
| Convergence density | 68% |
| M (output target Synthesize) | 30 |
| Compaction ratio (Synthesize) | 2.73:1 |
| A_quota (Append output) | 20 |
| A_available (Append input) | 28 |
| Total Phase 2C output target | 50 |

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (habit-tracker / medium cell)

# BL1 — Baseline Establishment — property-management / medium

**Date:** 2026-04-18
**Author:** BL1 subagent (single-cell scope: property-management × medium)
**Status:** Canonical (deterministic baseline derived from test-data file; no human review pending; ready as scoring reference for SP1)

**Artifacts produced:**
- `baselines/property-management_medium_clusters.md` (B1)
- `baselines/property-management_medium_convergence.md` (B2)
- `baselines/property-management_medium_target.md` (B3)
- `baselines/property-management_medium_append-target.md` (B4)
- `findings/BL1_baseline-establishment_property-management_medium.md` (this file)

---

## 1. Cell Characterization

**Input composition:**
- 120 total questions across 11 personas (matches TDA1 reported counts exactly)
- 92 Synthesize-group questions across 7 personas (Analyst 15, Audience Advocate 13, Questioner 15, Systems Thinker 15, Appreciative Inquirer 12, Devil's Advocate 12, Lawyer 10)
- 28 Append-group questions across 4 personas (Visionary 8, Provocateur 7, Storyteller 7, Analogist 6)
- 1 Tier 3 persona selected (Lawyer, Synthesize method) consistent with persona-selection-guide_Phase2B.md medium-effort rule of 0-1 Tier 3
- Analogist retained (no Connector swap) per GT1 Rev 3 — property-management is single-domain (regulated-hospitality business operating in a single local market)
- No Politician on this cell (Politician is Append method and would add to the Append quota; not selected at medium for property-management per GT1 Rev 3)

**Cluster structure:**
- 12 natural thematic clusters in Synthesize pool, 0 orphan questions
- Cluster sizes range from 4 (Clusters 5 and 6) to 16 (Cluster 7 "Good Neighbor")
- 10/12 clusters have multi-persona contribution; 2 clusters are single-persona anchored:
  - Cluster 11 (Growth Dynamics / Feedback Loops) — 100% Systems Thinker
  - Cluster 10 (Foundational / Pilot / Launch) — 71% Appreciative Inquirer (with 2 Storyteller)
- Cluster 8 (Guest Experience) is 80% Audience Advocate — near-single-persona

**Convergence density:**
- 71% of Synthesize questions participate in at least one cross-persona convergence pair/group
- 15 distinct convergence groups identified
- Strongest convergences:
  - Cluster 1 (Regulatory Scenarios) — 6-persona convergence (Analyst, DA, Questioner, Systems Thinker, Storyteller, Lawyer)
  - Cluster 7 ("Good Neighbor" Positioning) — 6-persona convergence (Analyst, AI, AA, Questioner, Systems Thinker, Storyteller)
  - Cluster 9 (Owner Relationship) — 7-persona convergence (all Synthesize personas contribute at least one question)
- 29% (27 questions) are unique with no cross-persona counterpart

**Synthesize/Append split:**
- 92/28 = 77%/23%
- Append quota at medium: 5 per persona × 4 personas = 20 questions selected, 8 dropped via round-robin
- Append composition (after selection): predominantly Creative dimension (Visionary, Provocateur, Analogist) plus Human-centered (Storyteller)

**Expected synthesis output:**
- 33 questions (range 29-37) from the 92 Synthesize input — compaction ratio 2.79:1 (range 2.49:1 - 3.17:1)
- 12 output clusters preserved (matches B1 input cluster count)
- Plus 20 appended questions = total Phase 2C output of ~53 questions (range 49-57)
- This sits at the upper end of the persona-selection-guide's medium-effort projection ("~45-65 questions")

**Topic-specific characterization:** Property-management is a regulated, community-embedded, multi-stakeholder business with dense cross-persona thematic overlap on the spine concerns (regulatory risk, operational constraints, community impact, owner trust). Both the largest clusters (7 at 16 questions, 1 at 15, 9 at 10) are 6-7 persona convergences — indicating that this topic's core concerns are recognized from every analytical angle. The three single-persona-dominated clusters (11 Systems Thinker, 10 Appreciative Inquirer, 8 Audience Advocate) represent the distinctive contributions that the Synthesize personas bring beyond the common concerns.

---

## 2. Persona Representation Challenges

**Cluster 11 (Growth Dynamics / Feedback Loops) — 100% Systems Thinker:**
This is the most significant persona-representation concern. Systems Thinker's named-archetype vocabulary (success-to-the-successful, balancing loops, shifting the burden, reinforcing loops, information asymmetry) is unique across all personas. No other Synthesize persona on this topic produces equivalent feedback-loop archetypal content. Synthesis must NOT collapse this cluster into Cluster 7 (Good Neighbor — where Systems Thinker also contributes) or Cluster 1 (Regulatory — where Systems Thinker also contributes) just because cross-persona convergence is low. The lack of convergence is itself the signal that this is unique, valuable territory.

**Risk for SP1 evaluation:** A naive synthesis prompt that prioritizes cross-persona convergence as the merge criterion could silently drop Cluster 11 entirely (no convergence → no signal → not preserved). The B3 target sets minimum 2 questions for this cluster; any SP1 output with 0 questions in Cluster 11's archetype-vocabulary territory is a hard fail.

**Cluster 10 (Foundational / Pilot / Launch) — 71% Appreciative Inquirer:**
Less severe than Cluster 11 (Storyteller contributes 2 questions), but still strongly anchored by one persona. Appreciative Inquirer's aspirational-operational content about pilot excellence, first-month trust signals, and founder-strength amplification has no analytical-persona counterpart. The B3 target sets minimum 3 Appreciative Inquirer questions in output to preserve this pilot-era / launch-relationship lens.

**Cluster 8 (Guest Experience) — 80% Audience Advocate:**
Similar dynamic to Cluster 10 but smaller (4 of 5). Audience Advocate's structural-inclusion lens on guest-journey barriers, emotional touchpoints in a stranger's home, and cultural cognitive load has no direct Synthesize-persona counterpart. The B3 target sets minimum 2 Audience Advocate questions in output.

**Systems Thinker uniqueness — 53% unique territory (8 of 15 questions):**
Tied with Audience Advocate for highest unique-territory rate among Synthesize personas on this topic, consistent with V1's finding (~56-60% unique vs Tier 1 aggregate). Systems-vocabulary contributions (Meadows leverage points implied; named archetypes explicit) are not duplicated by any other persona. The B3 target sets minimum 5 Systems Thinker questions in output.

**Audience Advocate uniqueness — 62% unique territory (8 of 13 questions):**
Slightly higher than Systems Thinker proportionally. The structurally-aware human-centered lens (accessibility, community impact, owner vulnerability, regulatory participation, equity-in-hosting-and-guesting) is the most distinctive Tier 1 contribution on this topic. The B3 target sets minimum 5 Audience Advocate questions in output.

**Lawyer (Tier 3) representation — 50% unique territory (5 of 10 questions):**
The distinctive regulatory-specificity content (covenants-run-with-land, wiretapping/privacy law interaction with noise monitoring, tax-jurisdiction compliance mechanics, entity structure tradeoffs) is the whole reason Lawyer was selected. The B3 target sets minimum 3 Lawyer questions in output — 3 is the floor that preserves at least one question each from Lawyer's 3 distinctive territories (HOA/preemption, liability, tax/revenue-mechanics).

**No persona is at risk of total erasure.** All 7 Synthesize personas are anchor contributors to at least 2 clusters each. The risks are about minimum representation thresholds on the 3 single-persona-anchored clusters (11 Systems Thinker, 10 Appreciative Inquirer, 8 Audience Advocate), not total exclusion.

---

## 3. Append Mechanics Observations (Round-Robin Natural or Awkward?)

**Round-robin felt natural for Analogist and Storyteller:**
- Analogist's 6 questions split into 3 clusters (3-1-2): community stewardship, political coalition, operational scaling. Round-robin selects 5 cleanly, dropping one mid-cluster question (Q3 certified-organic) from the largest cluster.
- Storyteller's 7 questions split into 3 clusters (2-3-2). Round-robin selects 5 with A-vs-C tiebreak resolved by earlier-first-pick rule. Algorithm executed cleanly.

**Round-robin felt slightly awkward for Provocateur and Visionary:**
- Provocateur's 7 questions split into 3 clusters (4-1-2). The 4-question Cluster A (value-proposition redefinition) has the most internal diversity — Q1 (data/social-proof revenue), Q2 (virtual properties), Q3 (self-obsolescence as growth), Q5 (regulations as product) are 4 different reframings. Round-robin selects 2 from A (Q1, Q2) and drops Q3 and Q5. Q5 is thematically high-value on this topic (echoes Synthesize Cluster 1 + 12 compliance-as-value-prop) — its drop is a real structural loss.
- Visionary's 8 questions split into 3 clusters (3-3-2). Three questions dropped — including Q6 (commons governance entity), which resonates strongly with both Cluster 7 (Good Neighbor) and Cluster 11 (Growth Dynamics). Round-robin's structural-balance bias is most costly here.

**Notable drops that lose distinctive content:**
- Provocateur Q5 (regulations as primary product) — thematically resonant with Synthesize Cluster 1 Regulatory + Cluster 12 Revenue (compliance-as-value-prop) + Questioner Q5/Analyst Q15; mechanically dropped by round-robin in favor of Provocateur Q2 (virtual properties) which has weaker Synthesize resonance
- Visionary Q6 (commons governance entity / cooperative or community land trust) — echoes both Cluster 7 (Good Neighbor) and Cluster 11 (Growth Dynamics / Shifting the Burden); mechanically dropped in favor of Q5 (regulatory friction as advantage)
- Analogist Q3 (certified organic voluntary standards codifying into regulation) — echoes Cluster 1 (Regulatory) and Cluster 7 (Good Neighbor — voluntary "Certified Good Neighbor" standards becoming industry-shaping); mechanically dropped in favor of Q2 (fisheries commons)

**Topic-specific observation:** Property-management has unusually dense Append-to-Synthesize thematic resonance. Of the 20 selected Append questions, 10 have strong Synthesize-cluster affinity; of the 8 dropped, at least 3 have strong Synthesize-cluster affinity that the selected alternatives don't carry as forcefully. This is a feature of the topic (regulated + community-embedded + multi-stakeholder) rather than a general pattern — expect similar density on tool-library, food-truck, school-consolidation, youth-mentorship; lower density on single-domain technical topics like mobile-app or wearable-device.

**Recommendation for SP1 prompt:** The mechanical round-robin produces correct structural diversity but at the cost of dropping high-value content on topics with dense Append-to-Synthesize resonance. SP1 might benefit from a "salvage" rule: if the dropped question has strong Synthesize-cluster resonance (especially with single-persona-anchored clusters), allow it to be retained at the cost of a within-cluster duplicate. This is a deviation from strict D1 round-robin but worth considering during SP1 testing — particularly for topics like property-management.

For BL1 baseline scoring purposes, strict round-robin is the canonical baseline. If SP1 produces non-strict outputs that preserve more distinctive content, score against the loose criterion ("5 per persona, structural diversity") rather than penalizing exact-match drops.

---

## 4. C1 Recommendation (Per-Persona vs Flat Pooling)

**Recommendation: Flat pooling.**

Rationale (full analysis in B1's C1 Comparison section):

1. **Cross-persona convergence is the strongest theme signal.** On property-management, Cluster 1 (Regulatory Scenarios) and Cluster 7 ("Good Neighbor") are both 6-persona convergences, and Cluster 9 (Owner Relationship) is a 7-persona convergence — these are the dominant theme signals on this topic and they only emerge clearly in flat pooling. Naming these convergences early helps the synthesis subagent prioritize cluster importance.

2. **Persona-unique territory is preserved equally well in flat pooling.** Cluster 11 (100% Systems Thinker), Cluster 10 (71% AI), and Cluster 8 (80% AA) all emerge in both clustering passes. Flat pooling does not erase persona-unique territory; it just doesn't privilege it via structural pre-clustering.

3. **Persona attribution should travel as metadata, not as structure.** Each question can carry its `[Persona]` tag; the synthesis output can report cluster-level persona composition. Pre-clustering by persona forces a structural commitment that the final output rarely needs.

4. **Per-persona pre-clustering tempts the subagent toward persona-aligned output structure.** This would defeat the purpose of synthesis. Flat pooling encourages cross-persona theme detection from the start.

5. **Computational simplicity.** Flat pooling is one pass over all questions; per-persona is N passes plus a merge step.

**Property-management-specific C1 observation:** Because this topic has such high cross-persona convergence (three clusters at 6-7 persona spread), flat pooling is *especially* valuable here. Per-persona pre-clustering would surface each persona's "regulatory questions" internally (each persona has 2-4 regulatory-adjacent questions), and only at merge time would the 6-persona convergence on regulatory scenarios become visible. Flat pooling sees it from the first pass.

**SP1 prompt directive (suggested):** "Read all questions in the assembled file. Identify natural cross-persona themes. Group questions by theme, preserving the `[Persona]` attribution on each question. For each cluster, report which personas contribute and how many questions from each. When a cluster is dominated by one persona (>70%), explicitly note whether the cluster represents distinctive persona-unique territory worth preserving or redundant within-persona content that can be compacted."

---

## 5. GT1 Watchlist Status

**property-management / medium is NOT on the GT1 BL1 watchlist.**

Per TDA1 Section 5.1, the BL1 Watchlist (GT1 Medium-confidence cells) consists of:
- tool-library / medium
- food-truck / high
- **property-management / high** (not this cell)
- youth-mentorship / high
- school-consolidation / medium

property-management / medium does NOT appear in this list. Its Tier 3 / Connector-Analogist composition (Lawyer selected as the single Tier 3 Synthesize persona; Analogist retained) is GT1 High-confidence. The watchlist note applies to property-management / *high* (3 strong triggers competing for 2 slots), not to this medium cell where Lawyer is the uncontested strong-trigger selection.

If SP1 produces anomalous scores on this medium cell, the issue is the synthesis prompt or this baseline — NOT GT1.

---

## 6. Open Concerns for Cross-Topic Synthesis

These concerns surfaced during property-management / medium baselining and may apply to other topics:

### 6.1 Three-single-persona-cluster preservation risk

This cell has three single-persona-anchored clusters (11 Systems Thinker 100%, 10 AI 71%, 8 AA 80%) — higher than habit-tracker / medium's single 100% AI cluster. Each of the three distinctive persona voices (systems archetypes, aspirational pilot design, structural-inclusion guest experience) produces its own low-convergence cluster. A naive synthesis prompt that prioritizes cross-persona convergence could drop any or all of these.

**Recommendation:** SP1 evaluation should include a "single-persona cluster preservation" check — count clusters where one persona contributes >70% of questions and verify these are represented in synthesis output proportional to their input share, NOT discarded for low cross-persona convergence. For property-management / medium specifically, SP1 output must contain at least:
- 2 questions of Systems Thinker archetype-vocabulary content (Cluster 11)
- 3 questions of AI pilot/launch-era content (Cluster 10)
- 2 questions of AA guest-experience-barrier content (Cluster 8)

### 6.2 High cross-persona convergence as cluster-priority signal

The 6-7 persona convergences on Clusters 1, 7, and 9 are striking. This may be a feature of topics with complex multi-stakeholder regulatory/community embedding. If the pattern recurs on tool-library, food-truck, school-consolidation, youth-mentorship, SP1 should explicitly weight 6+ persona convergences as priority clusters (4-5 output questions vs. 2-3 for lower-convergence clusters). The methodology's "proportional representation" principle applies naturally: higher convergence → higher output allocation.

### 6.3 Append-to-Synthesize thematic density on community/regulatory topics

Property-management shows unusually dense Append-to-Synthesize thematic resonance (10 of 20 selected Append questions echo Synthesize clusters). This violates a naive reading of D1's "orthogonal value" thesis. The resolution: the Append voice operates in a different *register* (provocation, narrative, paradigm shift, metaphor) even when addressing overlapping *topics*. On this topic, the overlap is dense because the topic itself is so stakeholder-dense that every voice gravitates to the same spine concerns.

**Open question:** Should SP1 evaluation include a "register preservation" check in addition to "topic diversity"? If Provocateur Q5 (regulations as product) covers the same topic as Synthesize Cluster 1 + 12 but in provocation-register, and the synthesis prompt "domesticates" it by moving it into a Synthesize cluster, that's a failure of the Append's value even though no topic coverage is lost. Worth testing in SP1 iterations.

### 6.4 Two 6-persona convergences on the same topic

Habit-tracker / medium had one 6-persona convergence (Graceful Graduation). Property-management / medium has two (Regulatory Scenarios, Good Neighbor Positioning) and arguably a third (Owner Relationship) at 7-persona convergence. This suggests regulated + community-embedded business topics produce more 6+ convergences than product-design topics. For cross-topic aggregation or evaluation, normalize by topic complexity: a topic with 3 major 6+ convergences is structurally different from a topic with 1.

### 6.5 Cluster count — 12 (same as habit-tracker/medium despite larger input)

Input rose from 82 (habit-tracker/medium) to 92 (property-management/medium, +12%), but cluster count stayed at 12. This is because the additional Lawyer questions land in existing clusters (HOA/permit navigation, liability, tax mechanics) rather than creating new clusters. Conclusion: cluster count is more a function of topic structure than input question count. This supports the methodology's "20-35 thematic clusters per topic aggregated" projection being roughly stable in the 10-14 range per topic, relatively independent of medium-vs-high effort differences. To be validated with property-management / high cell.

### 6.6 Dimension balance — human-centered at 37% (higher than habit-tracker/medium's 29%)

Property-management is human-centered-heavy: 4 of 12 clusters are primarily human-centered (Good Neighbor, Guest Experience, Owner Relationship, Launch). Compare to habit-tracker/medium where Strategic and Human-centered were both 29%. This topic's relationship-business nature (owners, guests, neighbors, regulators) drives the skew. Ensure SP1 rubrics do not expect a fixed dimension balance across topics — this would penalize property-management for correctly identifying its human-centered core.

---

## 7. Top-line Numbers

| Metric | Value |
|---|---|
| N (input Synthesize) | 92 |
| N (input total incl. Append) | 120 |
| C (cluster count) | 12 |
| Q (questions in convergence) | 65 |
| Convergence density | 71% |
| M (output target Synthesize) | 33 |
| Compaction ratio (Synthesize) | 2.79:1 |
| A_available (Append input) | 28 |
| A_quota (Append output) | 20 |
| Total Phase 2C output target | 53 |

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (property-management / medium cell)

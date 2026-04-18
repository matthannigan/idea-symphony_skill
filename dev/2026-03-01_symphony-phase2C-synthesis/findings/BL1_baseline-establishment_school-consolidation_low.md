# BL1 — Baseline Establishment — school-consolidation / low

**Date:** 2026-04-18
**Cell:** school-consolidation, low effort
**Input file:** `dev/2026-03-01_symphony-phase2C-synthesis/test-data/school-consolidation_low.md`
**Artifacts produced:**
- `baselines/school-consolidation_low_clusters.md` (B1)
- `baselines/school-consolidation_low_convergence.md` (B2)
- `baselines/school-consolidation_low_target.md` (B3)
- `baselines/school-consolidation_low_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**
- Total questions in input: **97** (Synthesize 69 + Append 28)
- Synthesize-group personas: 6 (Analyst 10, Appreciative Inquirer 11, Audience Advocate 12, Devil's Advocate 12, Questioner 13, Systems Thinker 11)
- Append-group personas: 4 (Provocateur 7, Storyteller 7, Visionary 6, **Connector 8** — Analogist swap per GT1)
- Natural cluster count: **10** cross-persona Synthesize clusters (range 9–11), plus 2 orphan clusters (AI aspirational with 4 Qs, ST systems archetypes with 5 Qs)
- Convergence groups: **11** (9 strong-merge candidates, 1 partial-merge, 1 preserve-distinct-from-merge adjacent group)
- Convergence density: **62.3%** of Synthesize-group questions participate in cross-persona convergence (43/69)
- Expected synthesis output: **28 questions** (range 24–32); compaction ratio **2.46** (range 2.16–2.88)
- Append quota: **12 questions** (3 per persona × 4 personas)
- Total expected Phase 2C output: **40 questions** (28 synthesized + 12 appended)

**Defining feature of this cell:** school-consolidation/low has **balanced cluster ownership across the Synthesize group** rather than a single dominant persona-driven cluster. Unlike tool-library/low (where Audience Advocate drove C1 Equity with 9 of 10 AA questions landing there) or habit-tracker/low (where a single cluster dominated input share), school-consolidation/low's largest cluster (C3 Financial Model at 10 of 69 input = 14%) is only slightly larger than C1 Identity (9 = 13%) and C10 Implementation or C9 Enrollment Decline (7 each = 10%). Every one of the 10 cross-persona clusters has contributions from 2-4 personas. This topic genuinely invites multi-perspective analysis: financial-skeptical (Analyst/DA), community-impact (AA), systems-dynamic (ST), aspirational-governance (AI), and first-principles-challenge (Questioner) are all active on most clusters.

**Synthesize/Append split:** 71% Synthesize / 29% Append. Standard Tier-1-only low-effort split with no Tier 2 or Tier 3 contribution. The only non-default feature is the **Connector-for-Analogist swap** per GT1 (topic triggers inter-domain reconciliation: three distinct districts merging is classic Connector territory).

**Notable features distinguishing this cell:**
- **Highest archetype density of any baselined cell.** Systems Thinker contributes 6 distinct named archetypes across 11 questions (self-amplifying closure cycle, coordination trap, balancing feedback loops, success-to-successful, fixes that fail, stakeholder adaptation — plus the second-order school-choice dynamics frame). No other topic has shown this archetype richness at low effort. SP1 voice-preservation testing on this cell will be unusually diagnostic for archetype-label preservation.
- **Connector swap active.** This is the first baselined low-effort cell using Connector. Connector's structural-isomorphism and recombinant-innovation modes (R7) activate for this topic (town-identity-as-distributed-system, community-hub-parallel, transportation-as-healthcare-outreach-parallel) and provide genuinely distinct value that Analogist's single-domain metaphor mode would not have captured.
- **Very distributed AI contribution.** Appreciative Inquirer lands 7 of 11 questions in cross-persona clusters (C1, C5, C6, C7, C9, C10 via convergence-group participation) and only 4 in its aspirational orphan cluster. This is substantially more integrated than tool-library/low (where AI had 8 orphans and only 3 cross-persona). The topic's aspirational surface (confidence-building experiments, trust-building governance, teacher-attraction design, past-collaboration mining, facility-as-community-asset reframe) maps onto genuinely cross-persona territory rather than standing apart.
- **Visionary 2-cluster fallback.** First low-effort baseline where Visionary's internal cluster count (2) is below the 3-quota, requiring the D1 fill rule. Handles cleanly; documented in B4.

---

## 2. Persona Representation Challenges

**Highest risk: Systems Thinker archetype-label preservation.** ST contributes 6 distinct named archetypes across 11 questions — the highest density observed in any baselined cell. Three archetypes (self-amplifying closure, coordination trap, balancing feedback loops) are absorbed into convergence-group merges in CG5, CG6, CG3 respectively. The remaining 3 archetypes (success-to-successful, fixes that fail, stakeholder adaptation) live as orphans and are at risk of being silently dropped by a synthesizer that favors concept-over-label. **B3 requires at least one additional named archetype with its archetype label to survive beyond those absorbed into the CG3/CG5/CG6 merges.** This is the strongest archetype-preservation requirement across any baselined cell so far, and SP1 monitoring here should be especially careful.

**Second-highest risk: Questioner's first-principles register in Cluster 9.** Questioner Q1 ("what do we assume about school size and educational quality?") and Questioner Q2 ("what if we treated declining enrollment as an opportunity rather than a problem?") both operate in a first-principles register distinct from CG5's risk-framing. The recommendation is to **preserve them as distinct from CG5 rather than merge** — if the synthesizer absorbs them into the large CG5 merge, the first-principles voice is lost even though the content is arguably covered. This is analogous to tool-library/low's preserve-distinct requirement in Cluster 4 (Problem Definition).

**Third-highest risk: Audience Advocate over-compaction.** AA contributes 12 of 69 input questions across 4 B1 clusters (C1 Identity, C2 Transportation, C8 Equity, C10 Implementation). Two convergence groups absorb 3 AA questions each (CG2 bus-ride experience, CG11 hidden-costs-marginalized-students). If the synthesizer merges aggressively, 6 AA questions compress into 2 merged outputs — leaving only 4 distinct AA contributions in the output and risking under-representation. B3 sets AA min at 5 (5 out of 12 = 42% representation); tight but achievable by preserving AA Q4 (parent involvement), AA Q6 (family life), AA Q11 (student voice), plus the CG2 and CG11 merges.

**Moderate risk: Appreciative Inquirer aspirational preservation.** Lower risk than tool-library/low because AI is more integrated cross-persona here (7 of 11 questions in merges). But the 4 aspirational orphans (AI Q1 districts-special, Q3 hidden-assets-in-decline, Q4 student-memory-vision, Q7 learning-from-what-works) still carry AI's distinctive strengths-based register and B3 requires at least 2 to survive.

**Easiest to preserve:** Devil's Advocate (heavily convergent, contributions land in merges naturally; only Q4 deferred-maintenance, Q10 competitive-program-loss, and Q12 insolvency-as-leverage are unique and each is distinctive enough to survive). Analyst (contributions distribute across 3 clusters with distinct unique dimensions — Q3 unit-economics-curves, Q4 multi-criteria-framework, Q6 risk-by-phase, Q7 comparative-learning, Q9 leading/lagging-indicators, Q10 performance-metric-alignment are all unique territory).

---

## 3. Append Mechanics Observations

**Round-robin landed cleanly for 3 of 4 personas.** Provocateur, Storyteller, and Connector each have exactly 3 internal thematic clusters at their generated volumes (7, 7, 8 respectively), making the 3-per-persona low-effort quota a perfect 1:1 cluster→question selection. No fallback needed.

**One fallback: Visionary 2-cluster.** Visionary produced 6 questions across 2 internal clusters (replacing-the-district-unit / reimagining-rural-education-horizon). The 3-quota requires the D1 medium-effort fill rule: take a second question from the largest remaining cluster. Both Visionary clusters have 3 questions each — tied. Deterministic tiebreaker: take from first cluster (source order). Round 3 therefore selects Visionary Q2 from Cluster A (the Q1 neighbor). This is the **first low-effort baseline where Visionary's cluster count is below 3** — likely a combined volume effect (6 vs. typical 7-8) and topic-specific thematic concentration (Visionary's school-consolidation output has two strong themes rather than three lighter themes). The fill rule handles cleanly per D1 spec.

**Connector provides unusually strong cross-cluster operational coverage.** Connector's 3 selected appends (Q1 distributed-system, Q2 community-hub, Q3 transportation-as-healthcare-outreach) all map to operationally-distinct B1 clusters (C1 Identity, C4 Facilities, C2 Transportation) via **structural isomorphism** (Q1) and **cross-domain import** (Q2, Q3) modes. This is the Connector swap earning its value exactly per R7's prediction: topics requiring inter-system reconciliation benefit from Connector's isomorphism/recombination modes over Analogist's single-domain metaphors. For this topic, Analogist would have produced biological-system / historical-guild / arts-commons metaphors that would have been thinner cover for operational clusters.

**Append cluster coverage:** Appended questions land predominantly in B1 Clusters 1 (Identity via Storyteller's Last-Day-at-Maple-Grove and Visionary's rethink-town-identity; Connector's distributed-system), 6 (Alternatives via Provocateur's wrong-unit-of-analysis and Visionary's learning-ecosystem), 9 (Enrollment Decline via Provocateur's asset-reframe and Visionary's invitation-to-invent), plus one each in C2 Transportation (Connector), C4 Facilities (Connector), C7 Teachers (Storyteller), C8 Equity (Storyteller's Emma story), C10 Implementation (Provocateur's disaster-planning). **Clusters 3 (Financial) and 5 (Voter Approval) receive no direct Append coverage** — the Append personas don't naturally engage financial-modeling or referendum-mechanics. This is expected. Notable candidates for opportunistic substitution if SP1 output under-serves C5: Connector Q4 (watershed districts/regional-governance parallel) or Storyteller Q7 (Wednesday board meeting narrative).

---

## 4. C1 Recommendation (Per-Cell)

**Recommendation: per-persona structure with explicit cross-persona-cluster permission.** See B1 §C1 Comparison for full analysis.

For this specific cell:
- Per-persona clustering yields 10 stable cross-persona clusters plus 2 orphan clusters (AI aspirational-4, ST archetypes-5).
- Flat-pool clustering yields 8-9 content clusters because:
  - C4 Facilities dissolves — its 3 questions distribute into C1 (identity-symbolic), C3 (financial), C10 (implementation)
  - ST's archetype orphan cluster shrinks from 5 to ~2 under flat pooling (3 archetype questions distribute into C9, C1, C10)
  - AI's aspirational orphan shrinks from 4 to ~2 under flat pooling (2 AI questions distribute into C10, C9)
  - C6 Alternatives grows by ~1-2 questions as adjacent questions pull tighter

**For school-consolidation/low specifically, per-persona is the safer default** because:
1. No single persona dominates a cluster — distributed ownership means the synthesizer benefits from seeing each persona's voice within each cluster. Flat pooling homogenizes this and makes voice-balancing harder.
2. ST's 6 distinct named archetypes need label-level preservation, not just concept-level. Per-persona structure keeps the archetype vocabulary visible throughout; flat pooling disperses it.
3. C4 Facilities is a genuine recurring policy thread in consolidation debates. Keeping it as a distinct output cluster serves SP1 better than dispersing it into C1/C3/C10.
4. Connector's structural-isomorphism appends (Q1 distributed-system, Q2 community-hub) operate at a meta-structural level that benefits from persona attribution to signal their distinct register. Flat pooling of Synthesize with Append (which isn't how the system works anyway) would compound this signal loss.

**SP1 implication:** The synthesis prompt should present questions grouped by persona (preserving voice and aiding traceability) but instruct the synthesizer to actively look for cross-persona convergence, note dual-cluster ambiguity (especially C1/C4 identity-vs-facility), and explicitly preserve at least one named Systems Thinker archetype beyond those absorbed into convergence-group merges and at least 2 Appreciative Inquirer aspirational questions in the output.

---

## 5. GT1 Watchlist Status

**Not on GT1 watchlist.** Per TDA1 §5.1, the GT1 medium-confidence cells are:
- tool-library / medium
- food-truck / high
- property-management / high
- youth-mentorship / high
- **school-consolidation / medium** ← note: this cell's *medium* counterpart IS on the watchlist (Politician vs. Accountant tiebreaker)

school-consolidation / **low** is not among them. The cell composition (10 Tier 1 personas, no Tier 2, no Tier 3, **Connector-for-Analogist swap per GT1**) is canonical and stable at low effort. If SP1 produces anomalously poor scores on this cell, the issue lies with the synthesis prompt, not with GT1's persona selection.

**Note for downstream:** The school-consolidation/medium cell is on the GT1 watchlist (Politician-at-medium rests on reading "stakeholder complexity" as a strong trigger, with Accountant tiebreaker competing). The /low cell handled here has no such caveat — the Connector swap is unambiguous (the topic is a textbook inter-domain-reconciliation case per R7), and no Tier 3 additions are on the table at low effort. The baseline is reliable.

**Note on Connector swap validation:** The observed Append-target outputs confirm Connector operated in its distinctive modes for this topic — Q1 (distributed-system) and Q2 (community-hub) are classic structural-isomorphism examples; Q7 (hospital-merger federated model) and Q5 (telemedicine/traveling-specialist parallel) are cross-domain import. The mix of 30% isomorphism + 40% import + 30% recombination roughly matches R7's predicted mode distribution for strong-trigger topics. No signs of Connector falling back to Analogist-indistinguishable import-mode on this topic. GT1's call holds up empirically.

---

## 6. Open Concerns for Cross-Topic Synthesis

1. **Archetype density may be a school-consolidation-specific strength.** This cell has 6 distinct named archetypes in 11 Systems Thinker questions — significantly higher than tool-library/low or habit-tracker/low. This is probably because school-consolidation is a rich systems-dynamic topic (multiple feedback loops, coordination-trap game theory, temporal mismatches, adaptation-inheritance patterns) that ST's archetype vocabulary naturally activates on. **Cross-topic check:** do all 10 topics produce this archetype density from ST, or is it correlated with topic complexity? If topic-correlated, the "at least one named archetype beyond convergence-merge" preservation rule in B3 may need to scale per topic. If topic-invariant, it generalizes.

2. **Connector-swap mode distribution should be tracked.** R7 predicted that strong-trigger topics activate Connector's isomorphism/recombination modes (distinctive from Analogist) while weak-trigger topics produce import-mode output indistinguishable from Analogist. This cell's Connector output appears strongly in non-import modes (Q1, Q7 isomorphism; Q3 recombination; plus import via Q2, Q5, Q6, Q8). **Cross-topic check:** the 4 other topics with Connector swap per GT1 (youth-mentorship, mobile-app, wearable-device, career-change) — do they also show strong non-import-mode activation? If yes, the swap is consistently earning value. If some topics revert to import-mode, GT1's Connector calls for those specific topics should be re-examined.

3. **Visionary 2-cluster-at-6-questions may recur at low effort.** This is the first low-effort cell where Visionary's volume came in at 6 (not 7-8) AND internal clustering produced only 2 clusters (not 3). The D1 fill rule handles it cleanly, but the pattern is worth tracking. **Cross-topic check:** does Visionary tend to produce 2 clusters at volume 6 across multiple topics, or was this a school-consolidation-specific topical concentration? If volume-6 → 2-cluster is systematic, the D1 fill rule will be invoked frequently enough to warrant explicit documentation in SP1's synthesis-prompt specification.

4. **Balanced cluster ownership may correlate with topic breadth.** Unlike tool-library/low (AA-dominated C1) or habit-tracker/low (individual-cluster concentration), school-consolidation/low has genuinely balanced cluster ownership — every cluster has 2-4 contributing personas. This probably reflects that school-consolidation is a multi-dimensional policy topic where every Synthesize persona has genuine purchase. **Cross-topic check:** is this balance-pattern typical of institutional/civic topics and different from individual-product topics? If so, cluster-balance metrics in SP1 scoring should be calibrated per topic-class.

5. **AI cross-persona integration may correlate with aspirational-governance surface.** school-consolidation has rich cross-persona aspirational-governance territory (confidence-building experiments, trust-building board structures, teacher-attraction design, past-collaboration mining, facility-as-community-asset reframing) that absorbs 7 of 11 AI questions into cross-persona clusters. Compare to tool-library/low's 3 of 12 AI integrated. **Cross-topic check:** do civic/institutional topics generally integrate AI more cross-persona, while individual-product topics isolate AI in aspirational orphans? If so, the AI min-preservation rule should scale with AI's orphan-count per topic rather than a fixed minimum.

6. **Connector append on C2 Transportation is a pattern worth watching.** Connector Q3 (transportation-as-healthcare-outreach-parallel) maps onto the transportation cluster cleanly and provides the *only* C2 Append coverage. Without the Connector swap, C2 would have received zero Append coverage for this topic (because Provocateur, Storyteller, Visionary don't naturally engage transportation mechanics). This is a topic-specific Connector value-add that Analogist could plausibly have covered via car-sharing or rail-network metaphors (as seen in tool-library) but would have been less natural for rural consolidation. **Cross-topic check:** does the Connector swap consistently provide distinct-cluster Append coverage that Analogist would have missed, or does this happen only on specific topic-cluster combinations?

---

## Top-Line Summary (Confirmation)

| Quantity | Value |
|---|---|
| Total input questions (N) | 97 |
| Synthesize-group input | 69 |
| Append-group input | 28 |
| Natural cluster count (C) | 10 (range 9–11) + 2 orphan clusters |
| Convergence groups | 11 |
| Questions in convergence (Q) | 43 of 69 (62.3% density) |
| Expected synthesis output | 28 (range 24–32) |
| Compaction ratio (Synthesize) | 2.46 (range 2.16–2.88) |
| Append quota (A_quota) | 12 |
| Total expected Phase 2C output | 40 |
| GT1 watchlist | Not on watchlist (but /medium counterpart is) |
| GT1 swap | Connector replaces Analogist (confirmed earning value on this topic) |
| C1 recommendation | Per-persona with cross-persona permission |
| Highest-risk persona for representation | Systems Thinker archetype-labels (6 distinct archetypes — highest density baselined) |
| Defining topical feature | Balanced cluster ownership across Synthesize group (no single dominant cluster or persona) |

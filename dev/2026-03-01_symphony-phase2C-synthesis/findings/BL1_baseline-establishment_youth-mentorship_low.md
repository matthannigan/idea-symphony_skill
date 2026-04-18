# BL1 — Baseline Establishment: youth-mentorship / low

**Date:** 2026-04-18
**Author:** BL1 subagent (youth-mentorship / low cell)
**Scope:** One cell of the Phase 2C BL1 baseline pass — baseline reference for SP1 variant scoring of the synthesis prompt on youth-mentorship at low effort.
**Companion baseline files:**
- `baselines/youth-mentorship_low_clusters.md` (B1)
- `baselines/youth-mentorship_low_convergence.md` (B2)
- `baselines/youth-mentorship_low_target.md` (B3)
- `baselines/youth-mentorship_low_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**

| Metric | Value |
|---|---|
| Total source questions (N) | 102 |
| Synthesize-group questions | 75 (10 personas, 6 of 10 are Synthesize) |
| Append-group available (A_available) | 27 |
| Synthesize personas | 6 — Analyst (12), Appreciative Inquirer (12), Audience Advocate (12), Devil's Advocate (12), Questioner (15), Systems Thinker (12) |
| Append personas | 4 — Provocateur (7), Storyteller (6), Visionary (7), **Connector (7)** — Connector replaces Analogist per GT1 |
| Natural cluster count (C) | 7 |
| Convergence groups (P) | 15 |
| Questions in convergence (Q) | 51 of 75 (68%) |
| Convergence density | 68% |
| Synthesized output target (M) | 29 (range 26-32) |
| Compaction ratio | 75 / 29 = 2.59 (range 2.3-2.9) |
| Append quota (A_quota) | 12 (4 personas × 3, one per persona-internal cluster) |
| Final total output | 41 (range 38-44) |

**Topic profile:** A social-program-design topic — a first-year urban youth mentorship program housed in a faith-based organization, serving 40-50 at-risk teens referred through schools and juvenile justice, with 40 interested adult volunteers, $15K seed grant, one-year commitment model. Per the persona-selection guide topic-affinity hints, this profile triggers: user-facing community/service design (AA, Storyteller, AI core — AI is particularly strong), sensitive community work with psychological safety (Empath at Med/High), regulatory/compliance exposure (DA core; Lawyer at Med/High), and — critically — inter-domain reconciliation (Connector replaces Analogist because the program spans multiple institutional systems that constrain each other: schools, juvenile justice, families, faith org, volunteer pool). The low-effort roster aligns: all 10 Tier 1 personas, no Tier 2/3, Connector swapped in for Analogist per GT1 Rev 3.

**Why this cell is a clean BL1 reference:** Rich social-program topic, no shortfalls in TDA1, no missing slots, Connector swap is canonical (not watchlist), and the cell is NOT on the GT1 watchlist (youth-mentorship/high is; youth-mentorship/low is clean). Every persona contributes a meaningful spread of questions with no compounding or filler pathologies. The 7-cluster natural structure emerges consistently in both per-persona and flat-pool clustering passes. Convergence density at 68% is the highest observed so far across low-effort BL1 cells (food-truck/low 64%, space-party/low 57%), reflecting the youth-mentorship topic's tight thematic convergence — the core tensions (safety-vs-connection, authority-vs-trust, reporting-vs-confidence, commitment-vs-flexibility, measurement-vs-relationship) recur across 4-5 personas each, driving heavy cross-persona overlap.

**How youth-mentorship/low differs from food-truck/low as a BL1 reference:** Different topic class with different baseline profile — fewer clusters (7 vs. 8 — youth-mentorship is less decomposable along independent axes because safety/relationship/matching/outcomes all interact), higher convergence density (68% vs. 64%), similar compaction ratio (2.59 vs. 2.57), and a markedly different dimension balance (Human-centered 34% vs. 28%; Strategic 21% vs. 29%). The lower Strategic count reflects that this is not a business/market/competition topic — the strategic questions that do appear (commitment length, matching, coordination) share territory with relational/structural questions, shifting the primary-dimension mix toward Human-centered and Analytical. The Storyteller volume is 6 (not 7), one below the typical perspective-persona count; this is a TDA1 assembly outcome (likely the source q05-10 file for Storyteller on youth-mentorship contains 6 questions), not a shortfall concern.

**How youth-mentorship/low differs from all prior BL1 cells on Append side:** This is the first cell using **Connector** rather than Analogist. Per R7, Connector's distinctive value (isomorphism + recombinant-innovation modes) activates on inter-domain-reconciliation topics — of which youth-mentorship is a canonical example. All 7 Connector questions in the test data operate in isomorphism or recombinant-innovation mode (e.g., peer-support loop from crisis hotlines, matching-platform paradox, wilderness-therapy safety parallel, food-bank referral-system dependency, volunteer-life-cycle patterns across sectors) — none fall back to pure cross-domain import indistinguishable from Analogist. This is the scenario R7 predicted would differentiate Connector's contribution.

---

## 2. Persona Representation Challenges

The synthesizer must navigate five meaningful representation tensions:

**Tension A — Audience Advocate's load-bearing role for C4.** AA carries 10 of 12 questions in cluster C4 (Mentee Experience, Belonging & Voice) — the entire equity/dignity/agency lens of the brainstorm. No other persona contributes materially to C4 (Questioner contributes 1 question). If a synthesizer collapses AA's C4 questions into DA's C6 risk questions (both are "concern-framed" in surface register), the equity lens is silenced. AA's C4 representation is the single highest-risk failure mode for this cell. B3 sets AA floor at 7 (highest floor of any persona), with C4 must-include and should-include explicitly drawn from AA questions.

**Tension B — Systems Thinker's archetype vocabulary and CG11.** ST generates 12 questions, 8 of which embed named system archetypes (Shifting the Burden twice — once for mentor support, once for referral pathways; Success to the Successful for mentor selection; Tragedy of the Commons for mentor time; Delay structures for outcomes; self-reinforcing/self-undermining loops; unintended-consequence cascade for screening). CG11 specifically packages three distinct archetype questions (ST Q3, Q5, Q10) about mentor support — and B2 recommends "Preserve all distinct" because merging them into one "mentor support" question would strip the vocabulary that is ST's distinctive contribution. This is the canonical SP1 test for archetype preservation: if SP1 collapses CG11 to one question, ST representation collapses despite surface-level question-count compliance. B3 sets ST floor at 7 with explicit call-out to CG11's 3-way preserve-distinct requirement.

**Tension C — Questioner absorption vs. meta-question widening.** Questioner generates 15 questions (the largest contributor). 8 of 15 Questioner questions land cleanly in convergence groups (CG1, CG3, CG4, CG8). The remaining 7 are distinctive meta-questions that widen problem framing: Q3 (young adults vs. congregation adults), Q4 (have we asked the teens), Q5 (culturally specific relationship definition), Q9 (liability insurance sufficiency), Q10 (public-space-only mentoring), Q14 (peer mentorship), Q15 (flexible meeting structure). Without a floor protecting Questioner's meta-question contributions, the synthesizer could absorb Questioner fully into merges and lose the widening function. B3 sets Questioner floor at 7 with explicit named questions.

**Tension D — Appreciative Inquirer's cross-cluster presence.** AI's 12 questions distribute across C2 (1), C3 (1), C5 (5), C7 (4) — the most cross-cluster of any persona. SP1 risk: a synthesizer that merges AI's visioning questions (Q5 three-year celebration, Q7 ripples, Q8 mentor transformation) into CG12 (outcomes measurement) loses the Creative register. A synthesizer that merges AI's training questions (Q1 peak moments, Q2 hidden assets, Q4 teens' stories, Q10 training) into one "mentor preparation" question strips the strengths-based framing. B3 sets AI floor at 6 with attention to both C5 and C7 representation.

**Tension E — Devil's Advocate's C6 distinct-voices preservation (CG15).** DA generates 12 questions, 6 of which land in C6 (Community/Institutional Ecosystem). CG15 packages three of these (Q6 faith-based, Q8 parental consent, Q12 community skepticism) — and B2 recommends "Preserve all distinct" because the three framings target different institutional entry points (organizational values vs. family-level consent vs. community-level trust). A synthesizer that merges CG15 into one "community skepticism" question loses two of the three distinct institutional concerns. Secondary to Tensions A-C but meaningful for C6 coverage.

---

## 3. Append Mechanics Observations

**Round-robin works cleanly here.** All 4 Append personas exhibit clean ~3-cluster internal structure consistent with the persona-selection guide's "universal 3-cluster structure" claim. Provocateur's clusters organize around *what is being inverted* (relational premise, safety paradigm, program-structure assumptions); Connector's organize by *structural-parallel source family* (peer-support systems, matching platforms, dependency/life-cycle parallels); Visionary's organize around *what is being reimagined* (premise, architecture, time horizon); Storyteller's organize by *narrative moment* (first encounter, mid-relationship disclosure, ending/outward). The 3 × 4 = 12 quota maps exactly onto one question per persona-internal cluster.

**Storyteller has 6 questions, not 7 — does round-robin still work?** Yes. D1's round-robin selects one per persona-internal cluster; Storyteller's 6 questions still form 3 internal clusters (2+2+2). The quota of 3 per persona still applies cleanly. The only consequence is a smaller drop pool for Storyteller (3 drops instead of 4), which has no mechanical impact on the selected 3. The 6-question Storyteller is TDA1-canonical (confirmed in Storyteller's own source file being 6 questions), not a shortfall.

**Connector activates in distinctive modes on this topic — R7 prediction holds.** Per R7's volume-quality analysis, Connector's three operating modes are cross-domain import (~35%, overlaps with Analogist), structural isomorphism (~30%, unique), and recombinant innovation (~35%, unique). On youth-mentorship, all 7 Connector questions operate in isomorphism or recombinant-innovation mode: Q1 (peer-support loop — isomorphism between helping and being helped), Q2 (matching paradox — recombinant from dating/ride-sharing applied to mentoring), Q3 (safety-trust inverse relationship — isomorphism from wilderness therapy), Q4 (third-place architecture — isomorphism from libraries/coworking), Q5 (intervention-decay curve — isomorphism from public health), Q6 (referral feedback loop — isomorphism from food banks), Q7 (volunteer life-cycle leak — isomorphism across disaster response/community theater). Zero cross-domain-import fallbacks. This confirms R7's prediction that inter-domain-reconciliation topics activate Connector's distinctive modes.

**Tie-breaking is the operational risk and has meaningful consequences here.** Multiple personas have multi-question clusters forcing tie-breaks: Provocateur Cluster C (3 questions — dependency paradox, one-day mentorship, maximum-incompatibility matching), Connector Cluster C (3 questions — wilderness therapy, food banks, volunteer life-cycle), Visionary Cluster B (3 questions — living system, safety through relationships, protection as agency). I used "lowest-numbered source question wins" as a deterministic rule — reproducible across SP1 runs. Notable tie-break consequences:
- **Provocateur Q5** (mandatory reporting destroys trust instead of protects) lost to Q1. Q5 would have been the most thematically resonant Append pairing with CG1 (synthesized mandatory-reporting merge). This is the most meaningful single drop in this cell.
- **Connector Q6** (food banks relying on overloaded referral systems) lost to Q3. Q6 was a pure structural-isomorphism question that would have mapped tightly onto CG14 (institutional referral pathways merge).
- **Visionary Q4** (safety through relationship design rather than compliance systems) lost to Q3 (living system / mycelial network). Q4 would have landed strongly in C1 (Safety) as an Append provocation to the CG1 + CG2 safety-system merges.

**Cross-cluster bridging:** The 12 appended questions distribute across all 7 B1 clusters as primary or bridge assignments: C1 (2 bridges), C2 (2 bridges), C3 (1 bridge), C4 (3 bridges), C5 (4 bridges), C6 (1 bridge), C7 (3 bridges). This is the most complete cluster coverage observed so far across low-effort BL1 cells (food-truck/low covered 7 of 8 clusters; space-party/low covered 5 of 7). The driver is Connector's isomorphism/recombinant modes activating on this cross-institutional topic — each Connector question maps to a different institutional concern (peer-support → C5, matching platforms → C2, wilderness therapy → C1/C5).

**Drop rate:** 56% of append-available questions are dropped (15 of 27), within D1's 40-60% range but near the top. Driven by dense 3-question clusters in Provocateur C and Connector C. Not a quality concern; a function of how naturally the Append clusters split for this rich multi-institutional topic.

---

## 4. C1 Recommendation

C1 (clustering vs. flat pooling) was tested in Pass A (per-persona-internal clustering preserved) vs. Pass B (flat pooling of all 75 Synthesize questions). Both passes produce the same 7 clusters with marginal boundary differences on 6-8 borderline questions (heavier than food-truck/low because youth-mentorship has more cross-cluster AI questions and a genuinely ambiguous Matching/Mentor-Prep boundary).

**Recommendation: flat pooling for SP1 prompts, with two additive instructions specific to this cell.** With 75 questions and 6 personas at low effort, flat pooling produces equivalent cluster quality with a simpler synthesis prompt. Two additive instructions:

1. **Preserve Systems Thinker's distinctive archetype vocabulary** (Shifting the Burden, Success to the Successful, Delay structures, Tragedy of the Commons, self-reinforcing/self-undermining loops, unintended-consequence cascade) in output questions where it appears. Specifically: do not merge ST Q3, Q5, Q10 (CG11) into a single question — each carries a distinct archetype that is distinctive content, not cluster-structural markup. This is the canonical SP1 test for archetype preservation.

2. **Preserve Audience Advocate's dignity-and-voice framings in C4.** 10 of 12 AA questions live in C4 and carry the program's equity/agency lens. Flat-pooling risks under-representing AA because AA questions don't heavily converge with other personas in the same cluster — they carry the cluster alone. SP1 prompts should include an explicit instruction to preserve AA's structurally-aware human-centeredness (documentation barriers, equity frameworks, systemic inclusion language) rather than compressing AA questions into DA's risk vocabulary.

**Caveat:** Flat-pooling recommendation is grounded in three BL1 cells so far (space-party/low, food-truck/low, youth-mentorship/low). The C1 question may have different answers at higher question counts (medium/high effort with 90-140+ Synthesize questions), where cognitive load of flat-clustering grows. BL1 cells at medium and high effort should re-run the C1 comparison to confirm the recommendation generalizes.

**New caveat introduced by this cell:** Per-persona clustering becomes more valuable when a single persona carries a full cluster alone (as AA does for C4 here). In that specific case, per-persona clustering naturally protects the cluster because AA's internal cluster structure surfaces as the cluster structure. Flat pooling does the same if the synthesizer doesn't normalize AA's equity register — but the instruction (#2 above) is the insurance. Worth watching whether this pattern (single persona carrying a cluster) recurs on other topics.

---

## 5. GT1 Watchlist Status

**youth-mentorship / low is NOT on the GT1 watchlist.** TDA1 Section 5.1 lists 5 GT1 medium-confidence cells; youth-mentorship/low is not among them. youth-mentorship/**high** *is* on the watchlist (Lawyer + Politician vs. Lawyer-only is medium-confidence), but Tier 3 selections don't apply at low effort — the low-effort roster is Tier-1-only.

**GT1 prescribes Connector (not Analogist) for youth-mentorship at all effort levels.** This is a canonical (not medium-confidence) GT1 call based on the R7 inter-domain-reconciliation criterion: youth-mentorship is a social program design spanning multiple institutional systems (schools, juvenile justice, families, faith organization) that constrain each other. Per R7, this is exactly the topic profile where Connector's distinctive value (structural isomorphism + recombinant innovation modes) outperforms Analogist. This BL1 cell confirms R7's prediction — all 7 Connector questions activate in the distinctive modes (see Section 3). Interpretation: if SP1 produces anomalous scores on this cell, the cause is in the synthesis prompt, not in the Connector vs. Analogist selection (which is well-grounded and well-validated).

---

## 6. Open Concerns for Cross-Topic Synthesis

Items that may matter when BL1 results across all 10 topics are aggregated and compared:

1. **Convergence density continues to vary meaningfully by topic type.** Running totals across three low-effort cells: space-party 57%, food-truck 64%, youth-mentorship 68%. The pattern so far: more institutionally complex / multi-stakeholder topics produce higher convergence density because the core tensions recur across personas. Cross-topic compaction-ratio comparisons should normalize on convergence density rather than use raw N/M — topics with 55% convergence should produce compaction closer to 2.0-2.2; topics with 70% should produce closer to 2.6-2.9. The 2.59 compaction here is consistent with 68% convergence density.

2. **Cluster count varies by topic complexity axis structure.** Running totals: space-party 7, food-truck 8, youth-mentorship 7. The 8-cluster structure for food-truck reflects an extra "variance-management" cluster (C8 Resilience) that doesn't have an equivalent in the event-topic space-party or the social-program youth-mentorship datasets. Social-program topics appear to cluster into 7 by default — the Resilience-type cluster in a social-program topic collapses into Safety (because the "variance" to manage is relational-risk, not business-risk). Cross-topic BL1 should confirm whether this 7-cluster pattern holds for other social-program topics.

3. **Single-persona-carrying-a-cluster pattern is new and important.** Youth-mentorship/low is the first BL1 cell where one persona (AA) solely carries an entire cluster (C4). Food-truck/low had AA dominating C4 but Appreciative Inquirer carried 2-3 questions in C5 alongside; space-party/low had no single-persona clusters. This pattern creates a distinct SP1 failure mode (single-persona silencing) that warrants explicit scoring attention. If other topics exhibit this pattern, an SP1 scoring rule ("no single-persona cluster should lose more than 40% of its source questions") may be justified.

4. **Systems Thinker archetype vocabulary is a topic-invariant preservation target.** ST's named archetypes (Shifting the Burden, Success to the Successful, Tragedy of the Commons, Delay structures) appeared in all three cells so far, most strongly here (8 of 12 ST questions name an archetype). Cross-topic BL1 analysis should specifically check whether SP1 prompts preserve archetype vocabulary consistently across topics. A prompt that preserves archetypes on food-truck but normalizes them on youth-mentorship or property-management would be a reliability concern.

5. **Connector activation on inter-domain-reconciliation topics is a new BL1 observation.** This is the first BL1 cell using Connector. The observation that all 7 Connector questions activated in distinctive (non-import) modes confirms R7's prediction for topics meeting the inter-domain criterion. Cross-topic BL1 should track Connector-activation-rates on the other 4 topics where GT1 prescribes Connector (school-consolidation, mobile-app, wearable-device, career-change) to confirm this is a reliable pattern. If Connector consistently activates in distinctive modes on these 5 topics, R7's decision rule is validated empirically at the BL1 level; if Connector falls back to import mode on any of them, the decision rule may need refinement.

6. **Dimension balance — Human-centered dominance.** Youth-mentorship/low's 34% Human-centered target is the highest observed so far across low-effort cells. Cross-topic dimension-balance scoring should allow topic-class-adjusted targets — social-program topics: 32-38% Human-centered; business topics: 26-32%; event topics: 25-30%. Fixed dimension targets across all 30 cells will produce false failures on topic-class-driven distribution shifts.

7. **AI question drop pattern continues.** This cell drops AI Q11 only optionally (Q11 is a CG4 merge contributor and doesn't sit in the expected-drop list as a primary cut). Food-truck/low dropped 3 AI questions. Youth-mentorship/low drops fewer AI questions because AI's 12 questions here are spread across 4 clusters (not concentrated in C5 Community as in food-truck), making each AI question harder to cut without cluster coverage loss. This suggests AI's drop-rate is topic-dependent rather than a systematic surplus.

8. **Provocateur and Connector C-cluster density is consistent across topics.** On food-truck/low, Provocateur Cluster C had 3 questions producing 2 drops; on youth-mentorship/low, both Provocateur C and Connector C have 3 questions each producing 2 drops each. The "C-cluster is densest" pattern may be general across Append personas: their primary cluster is more concentrated than their secondary ones. If so, the D1 "one per cluster, round-robin" rule systematically loses 2 questions per Append persona from C-clusters specifically. This is a D1-spec consequence not a BL1 finding, but worth flagging as a cross-topic pattern.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (youth-mentorship / low cell)

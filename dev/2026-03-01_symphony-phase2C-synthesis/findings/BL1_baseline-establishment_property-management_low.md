# BL1 — Baseline Establishment: property-management / low

**Date:** 2026-04-18
**Author:** BL1 subagent (property-management / low cell)
**Scope:** One cell of the Phase 2C BL1 baseline pass — baseline reference for SP1 variant scoring of the synthesis prompt on property-management at low effort.
**Companion baseline files:**
- `baselines/property-management_low_clusters.md` (B1)
- `baselines/property-management_low_convergence.md` (B2)
- `baselines/property-management_low_target.md` (B3)
- `baselines/property-management_low_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**

| Metric | Value |
|---|---|
| Total source questions (N) | 100 |
| Synthesize-group questions | 72 (6 of 10 personas are Synthesize) |
| Append-group available (A_available) | 28 |
| Synthesize personas | 6 — Analyst (11), Appreciative Inquirer (12), Audience Advocate (11), Devil's Advocate (12), Questioner (15), Systems Thinker (11) |
| Append personas | 4 — Provocateur (7), Analogist (6), Visionary (8), Storyteller (7) |
| Natural cluster count (C) | 8 |
| Convergence groups (P) | 15 |
| Questions in convergence (Q) | 63 of 72 (87.5%) |
| Convergence density | 87.5% |
| Synthesized output target (M) | 27 (range 24-30) |
| Compaction ratio | 72 / 27 = 2.67 (range 2.4-3.0) |
| Append quota (A_quota) | 12 (4 personas × 3, one per persona-internal cluster) |
| Final total output | 39 (range 36-42) |

**Topic profile:** A business-centric topic in a regulated multi-stakeholder market — a first-time STR management company launch with concrete business plan ($80K capital, coastal tourist market, pending city ordinance, 6-month council election, pending state preemption, 30-50 property growth target, 30-minute response requirement, HOA fragmentation). Per the persona-selection guide topic-affinity hints, this profile triggers: regulatory/compliance exposure (DA core; Lawyer for Med/High), stakeholder politics (AA core; Politician for Med/High), financial structure central (Analyst core; Accountant for Med/High), and complex systems with many interacting elements (ST core). The low-effort roster aligns — all 10 Tier 1 personas, no Tier 2/3, Analogist preserved (single-primary-domain business topic per R7 criteria; no inter-domain reconciliation need).

**Why this cell is a clean BL1 reference despite topic density:** No shortfalls in TDA1, no missing slots, default Analogist (no Connector swap), and not on the GT1 watchlist (property-management/high is on watchlist but /low is clean). Every persona contributes a full range of questions with no compounding or filler pathologies. The 8-cluster natural structure is visible under both per-persona and flat-pool clustering passes. The topic's cleanness at low effort is particularly notable given that property-management/high *is* GT1-watchlisted — the Tier 3 selection ambiguity (Lawyer + Accountant vs. alternative Politician) doesn't manifest at low effort where Tier 1 is the complete roster.

**Convergence density is unusually high (87.5%).** This is the highest convergence density in the BL1 pass to date (food-truck/low 64%, space-party/low 57%). Property-management's tightly convergent concern-set — every analytical and structural persona pulled toward the same regulatory-political-financial-operational-relational decision stack — produces cross-persona convergence on 63 of 72 Synthesize questions. Only 9 questions are unique: 2 Analyst, 2 AI, 4 AA, 1 Questioner, 0 DA, 0 ST. Every DA and ST question lands in a convergence group because the topic has a tight coherent decision surface where DA's risk-discovery and ST's feedback-loop framings both pull on the same concern set as Analyst, Questioner, and AA. This density drives a higher compaction ratio (2.67 vs. food-truck's 2.57) and reshapes how SP1 prompts should be evaluated on this cell — see Section 6 for implications.

**How property-management/low differs from food-truck/low as a BL1 reference:** Different topic type with different baseline profile:
- Same cluster count (8 vs. 8)
- Higher convergence density (87.5% vs. 64%) — property-management pulls personas toward the same concerns more tightly
- Higher compaction ratio (2.67 vs. 2.57)
- Different dimension balance — Strategic 33% vs. 29% (higher regulatory/financial/owner-strategy density); Human-centered 30% vs. 28% (higher AA + AI load because the two-sided marketplace has both guest-equity and owner-equity and community-equity dimensions)
- More distinctive risk-title vocabulary from DA (6 named-risk titles survive verbatim in source: "Permit Caps as Existential Threat," "Election Volatility Risk," "Seasonal Cash Flow Suffocation," "Guest Injury Liability Loophole," "Contractor Negligence Liability Cascade," "30-Minute Response Time Reality Check")
- More distinctive archetype vocabulary from ST (Success-to-the-Successful, Shifting the Burden, reinforcing loops, adaptive-response dynamics, detection delay)
- More GT1-level regulatory specificity — the pending ordinance, state preemption, court-litigation phase, and HOA fragmentation all produce concrete scenario-planning questions that food-truck's single-ordinance context doesn't match

The property-management topic is the most regulatory-, financially-, and stakeholder-dense topic in the BL1 pass so far, and that density shows in both convergence (personas converge because the decision surface is tight) and compaction (merges capture more source questions per output).

---

## 2. Persona Representation Challenges

The synthesizer must navigate five meaningful representation tensions:

**Tension A — Convergent personas vs. distinctive personas.** Of the 6 Synthesize personas, four have heavy cross-persona convergence — Analyst (10 of 11 questions in CGs), Devil's Advocate (all 12 in CGs), Questioner (14 of 15 in CGs), and Systems Thinker (all 11 in CGs). Two have lower convergence with the analytical core — Appreciative Inquirer (10 of 12 in CGs, but AI carries C7 Community disproportionately with 8 cluster-C7 questions) and Audience Advocate (7 of 11 in CGs, with 4 uniques that carry structural-equity lenses). SP1 risk: a synthesizer that aggressively merges may disproportionately surface analytical voices and bury AI's vision-eliciting framing and AA's structural-equity framing. The persona-floor scoring in B3 (AI floor 5, AA floor 6) is the explicit scoring guard. Particularly vulnerable: if the synthesizer merges AA's owner-equity (Q7-Q9) with DA's termination/liability questions into a unified "owner protection" cluster, AA's distinctive framing for less-sophisticated-owner protections vs. DA's termination-restriction framing collapses.

**Tension B — Devil's Advocate named-risk-title preservation.** DA generates 12 questions, all 12 with named-risk titles that are distinctive specificity no other persona generates. Examples: "Permit Caps as an Existential Threat," "Election Volatility Risk," "State Preemption Double-Edged Sword," "HOA Restrictions as Fragmented Compliance," "Break-Even Peril with Low-Occupancy Properties," "30-Minute Response Time Reality Check," "Contractor Reliability Single Point of Failure," "Seasonal Cash Flow Suffocation," "Guest Injury Liability Loophole," "Contractor Negligence Liability Cascade," "Owner Termination Without Notice Clauses," "Self-Management Displacement Risk." When DA questions merge into CG outputs, the named-risk title framing must be preserved verbatim or near-verbatim in at least 3-4 of the 6-7 merge outputs that include DA contributions. SP1 scoring should specifically check for title preservation across C1 (expect "Permit Caps," "Election Volatility," "State Preemption"), C3 (expect "Seasonal Cash Flow Suffocation," "Break-Even Peril"), C4 (expect "Guest Injury Liability Loophole," "Contractor Negligence Liability Cascade"), and C8 (expect "30-Minute Response Time Reality Check," "Contractor Reliability").

**Tension C — Systems Thinker archetype vocabulary preservation.** ST generates 11 questions, and each embeds named system archetypes or distinctive systems vocabulary — Success-to-the-Successful (Q3), Shifting the Burden (Q9), reinforcing loop / feedback loop (Q1, Q2, Q7, Q8), detection delay (Q10), adaptive-response / second-order effects (Q4), and geographic constraint / balancing loop (Q11). This vocabulary is distinctive content, not cluster-structural markup. SP1 prompts that normalize archetype vocabulary during synthesis will silence ST's distinctive contribution even if they preserve all 11 ST question topics. Scoring should check for archetype-name preservation in at least 3 of ST's merge contributions.

**Tension D — Audience Advocate's triple-equity load.** AA is the *only* Synthesize persona carrying equity lenses across three dimensions: (a) guest equity — accessibility, emotional safety, silent-complaint feedback (Q4-Q6 → C6); (b) community equity — housing displacement, noise/parking accommodation, economic mobility, local ecosystem engagement (Q1-Q3, Q10-Q11 → C7); (c) owner equity — structural protections for less-sophisticated owners, owners squeezed by regulation (Q7-Q9 → C5). If a synthesizer collapses any of these three equity lenses — e.g., folds owner-equity into DA's owner-termination risk framing, or folds guest-equity into AI's systematize-hospitality framing — the structural-equity dimension is lost on that sub-topic. The Phase 2B note that AA is "structurally-aware human-centeredness unique among human-centered personas" is the critical preservation criterion. The B3 dimension-balance target of 30% Human-centered reflects this load.

**Tension E — Questioner-absorption-into-merges with weak uniqueness.** Questioner generates 15 questions (the largest contributor). 14 of 15 land cleanly in convergence groups (CG1 x2, CG2 x3, CG4, CG5 x2, CG6, CG8, CG11, CG12 x2, CG13, CG9). Only Q9 (diverse owner preferences — some owners preferring selective booking / lower occupancy / specific guest demographics) is non-convergent. Without an explicit floor protecting Questioner-distinctive uniques and the merge contributions with named assumption-challenge framing, the synthesizer could under-represent Questioner's "widening problem framing" function. B3 sets the Questioner floor at 6 with explicit named question Q9 to preserve.

---

## 3. Append Mechanics Observations

**Round-robin works cleanly here, but Analogist has a single-question cluster.** All 4 Append personas exhibit ~3-cluster internal structure consistent with the persona-selection guide's "universal 3-cluster structure" claim, though the Analogist at 6 source questions has an unbalanced split (1 residential / 3 commons-regulatory / 2 infrastructure-liability). The single-question Cluster A (Q1 concierge model) auto-selects without tie-break; the 3 + 2 structure of Clusters B and C produces 2 + 1 = 3 drops for Analogist alone.

**Provocateur's clusters organize around *what is being inverted*:** (A) product/economic model — what is actually being sold (owner-pays-guests, virtual-properties); (B) regulatory/positioning relationship — friction-as-feature, regulations-as-product, campaign-against-own-industry; (C) growth/scale/staffing model — out-of-business-as-success, micro-operators-in-neighborhoods. A clean 2/3/2 split.

**Analogist's clusters organize by source-domain family:** (A) residential/building services; (B) commons/regulatory-emergence; (C) infrastructure/liability analogies. The 1/3/2 split is the weakest cluster distribution across the 4 personas.

**Visionary's clusters organize around *what is being reimagined*:** (A) service category (what the business IS); (B) stakeholder structure and governance; (C) regulatory/spatial/civic scale. A 3/2/3 split with dense final cluster.

**Storyteller's clusters organize by narrative subject:** (A) owner-trust stories (Margaret, Elena-evolution); (B) crisis-response stories (11 PM Saturday, gas leak); (C) community/neighbor/political stories (council election, Garcias, block party). A 2/2/3 split.

**Tie-breaking has notable casualties.** Six drops are quality-judgment-worthy casualties of the deterministic source-order rule — all represented distinct provocations or paradigm reimaginations with no Synthesize counterpart:
- Provocateur Q6 (campaign against own industry)
- Provocateur Q7 (30-minute requirement → actual residents)
- Visionary Q7 (multi-local citizenship)
- Visionary Q8 (spatial accessibility pioneer)
- Storyteller Q7 (gas leak dual-narrative)
- Storyteller Q4 (the Garcias neighbors arc)

An SP1 prompt that asks for "best per cluster" rather than "first per cluster" would yield notably different selections on this cell. Both are valid implementations of the D1 spec, but the property-management cell is rich enough in append-ready questions that the selection rule matters materially.

**Drop rate is within D1 expectation.** 57% of append-available questions are dropped (16 of 28), within D1's 40-60% range. The driver is the dense Cluster C content across Provocateur, Visionary, and Storyteller (each has 2-3 questions in their final cluster) — producing 2 drops per persona's Cluster C. Acceptable; not a quality concern per D1.

**Cross-cluster bridging.** The 12 appended questions distribute across 6 of 8 B1 clusters as primary or bridge assignments — C1 (5 bridges), C3 (1), C5 (3), C6 (1), C7 (4), C8 (3). Only C2 (Compliance) and C4 (Liability) receive no Append question, consistent with D1's framing that Append operates orthogonally to technical/compliance/insurance territory. The broad distribution (6 of 8 clusters with many multi-bridge questions) reflects that the property-management topic's Append register — provocations about economic inversion, commons-governance metaphors, spatial-citizenship paradigms, and owner-trust narratives — finds natural footholds across strategic, owner-trust, community, and operations clusters, better than the food-truck (7/8, single-direction bridges) and space-party (5/7) cells.

**Provocateur Q1 (owners pay guests) is a standout quality provocation** — bridges C3 (Financial Model: inverts fee structure) and C5 (Owner Value Prop: reframes what the service is). This is the kind of economic-model provocation that justifies the Provocateur's append treatment in D1. Preservation in SP1 output is a clear quality signal.

---

## 4. C1 Recommendation

C1 (clustering vs. flat pooling) was tested in Pass A (per-persona-internal clustering preserved) vs. Pass B (flat pooling of all 72 Synthesize questions). Both passes produce the same 8 clusters with moderate boundary differences on 6-7 borderline questions.

**Recommendation: flat pooling for SP1 prompts, with two additive instructions.** With 72 questions and 6 personas at low effort, flat pooling produces equivalent cluster quality with a simpler synthesis prompt. The two caveats specific to property-management/low:

1. SP1 prompts should instruct the synthesizer to *preserve persona-distinctive vocabulary* in merged questions — specifically:
   - Systems Thinker's archetype vocabulary (Success-to-the-Successful, Shifting the Burden, Fixes that Fail, reinforcing/feedback loop, detection delay)
   - Devil's Advocate's named-risk titles (Permit Caps as Existential Threat, Election Volatility Risk, Guest Injury Liability Loophole, 30-Minute Response Time Reality Check, etc.)
   - Questioner's assumption-challenge framing ("Have we considered...," "What if the assumption is wrong...")

2. SP1 prompts should *explicitly separate* the regulatory-strategy cluster (C1: scenario planning, election/preemption volatility, permit-cap contingency) from the compliance-operations cluster (C2: HOA tracking, permit-management infrastructure, compliance-as-value-proposition). Flat pooling may collapse these into a single 19-question "regulatory" super-cluster, erasing the strategic-vs-operational distinction that matters for downstream action.

Both instructions are additive to flat-pooling and do not require per-persona clustering to implement — they can be framed as "preserve persona-distinctive vocabulary in merged questions where it appears in source questions" and "distinguish strategic-regulatory-response questions from operational-compliance-infrastructure questions in cluster formation."

**Caveat:** Flat-pooling recommendation is grounded in three BL1 cells so far (space-party/low, food-truck/low, property-management/low). The C1 question may have different answers at higher question counts (medium/high effort with 80-130+ Synthesize questions), where the cognitive load of flat-clustering grows. The property-management cell adds a specific stress test — very high convergence density (87.5%) means the synthesizer has fewer "natural" cluster anchors to latch onto, which may make per-persona clustering more valuable as scaffolding. This prediction should be checked at property-management/medium and /high.

---

## 5. GT1 Watchlist Status

**property-management / low is NOT on the GT1 watchlist.** TDA1 Section 5.1 lists 5 GT1 medium-confidence cells; property-management/low is not among them. property-management/high *is* on the watchlist (Lawyer + Accountant selection with Politician as alternative — "3 strong triggers compete for 2 slots"), but Tier 3 selections don't apply at low effort — the low-effort roster is Tier-1-only with the Analogist/Connector default holding. Property-management uses default Analogist (single-primary-domain business topic per R7 criteria; no inter-domain reconciliation need — this is STR business strategy, not a cross-domain reconciliation like career-change or institutional-merger).

**Interpretation:** If SP1 produces anomalous scores on this cell, the cause is in the synthesis prompt, not in upstream persona-roster ambiguity. The cell is a clean SP1 reference.

---

## 6. Open Concerns for Cross-Topic Synthesis

Items that may matter when BL1 results across all 10 topics are aggregated and compared:

1. **Convergence density varies dramatically by topic type — property-management/low is the extreme high end.** This cell's 87.5% convergence density is dramatically higher than food-truck/low's 64% and space-party/low's 57%. Regulatory-dense multi-stakeholder business topics produce near-maximal convergence because every analytical and structural persona independently surfaces the same tight set of concerns (regulatory volatility, compliance, financial viability, owner trust, community relations, operations). Cross-topic compaction-ratio comparisons must normalize on convergence density; raw N/M comparisons will misclassify property-management's high compaction (2.67) as "more compact synthesis" when it's actually "more convergent source data." Topics at 85%+ convergence should produce compaction closer to 2.6-3.0; topics at 50% convergence should produce 2.0-2.2. SP1 scoring should use a convergence-normalized compaction metric rather than a fixed target.

2. **Cluster count is topic-invariant at 8.** Food-truck/low (8), property-management/low (8), space-party/low (7) — the cluster count is stable across business topics in the 7-8 range. Simpler topics may produce 6; highly multi-faceted institutional-change or infrastructural topics may produce 9-10. The "20-30 clusters across all topics aggregated" methodology framing compresses to 6-8 clusters per individual topic across the cells observed so far.

3. **DA named-risk-title preservation is a topic-variant signal.** Food-truck/low's DA questions used some named-risk titles ("Cash Flow Fragility," "Market Saturation Vulnerability") but less rigidly than property-management/low's DA (all 12 questions titled). Cross-topic BL1 analysis should specifically check whether SP1 prompts preserve named-risk titles consistently across topics. A prompt that preserves titles on property-management but normalizes them on habit-tracker or mobile-app would be a reliability concern.

4. **ST archetype vocabulary is topic-invariant preservation target.** ST's archetypes appear in all three BL1 cells observed. Property-management/low has the richest archetype content (all 11 ST questions embed vocabulary). Cross-topic BL1 should confirm the pattern.

5. **AA's triple-equity load is property-management-specific.** Food-truck/low's AA carried dual equity (guest, community) plus owner-partnership questions; space-party/low's AA carried single equity (guest-experience) plus venue-relations. Property-management/low's AA carries *triple equity* (guest, community, owner) — a distinctive feature of two-sided-marketplace topics. Cross-topic BL1 should check which topics produce AA's triple-equity load and whether SP1 prompts preserve all three lenses distinctly.

6. **Compaction variance within clusters is driven by convergence, not source volume.** C4 has 5 source questions and compacts to 1 output (compaction 5.00); C3 has 8 source questions and compacts to 4 outputs (compaction 2.00). The compaction variance is driven by *how tightly questions converge on a small number of decision axes* within the cluster, not by the cluster's source volume. C4's five liability questions all converge on a single risk-architecture question; C3's eight financial questions split across three decision axes (capital adequacy, per-property unit economics, fee structure). SP1 scoring should allow 1-5 range per cluster without penalizing uneven compaction, because the underlying convergence structure justifies it.

7. **Append Cluster C saturation across 3 of 4 personas.** Provocateur Cluster C (3 questions — success inversion, staffing inversion, micro-operators), Visionary Cluster C (3 questions — regulatory transcendence, multi-local citizenship, spatial accessibility), and Storyteller Cluster C (3 questions — council election, Garcias, block party) each produce 2 drops. A medium-effort variant (quota 5) would capture 2 of 3 in each case; high-effort (all 5-8) captures all. Cross-topic BL1 should track whether property-management-style topics consistently over-cluster in their "final" persona-internal cluster, because this is where paradigm-challenging provocations and narratives concentrate.

8. **Strategic dimension expansion on regulated business topics.** Property-management/low's 33% Strategic target is higher than food-truck/low's 29% and space-party/low's 18%. Dimension-balance scoring should allow topic-class-adjusted targets rather than fixed targets. Regulated multi-stakeholder business topics: ~30-35% Strategic; non-regulated business topics: ~25-30%; event topics: ~15-22%; social/institutional: likely 20-25%.

9. **AI drop pattern continues.** This cell drops 2 AI questions (Q9, Q12) plus 1 AA question (Q11) as the expected-to-drop set. AI's high source volume (12) produces more method-question / meta-strengths-question candidates for cutting than other personas. Same pattern as food-truck/low (3 AI drops). Cross-topic BL1 should track AI's consistent over-contribution of expected-drop candidates; this is a prompt-design signal (ask AI for fewer method questions) rather than a synthesis-prompt signal.

10. **Append register naturally finds business-topic footholds across more clusters.** 6 of 8 clusters receive Append bridges here, better than space-party/low's 5 of 7 and comparable to food-truck/low's 7 of 8. Business topics with lateral strategic/operational/relational decision surfaces give Append questions more places to bridge into the Synthesize structure. This may be a topic-type signal worth confirming across the remaining 7 cells.

11. **Questioner unique absorption at 14 of 15 in CGs is the highest observed.** In food-truck/low, 10 of 14 Questioner questions landed in CGs; in property-management/low, 14 of 15. This reflects the topic's tight convergence — Questioner's assumption-challenge questions tend to target the same tight set of concerns that other analytical personas do. Cross-topic BL1 should track Questioner's non-convergent uniques per cell; if the count is consistently 1-2 across topics, Questioner's "widening problem framing" function is more realized through *framing merge contributions distinctively* than through producing standalone questions.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (property-management / low cell)

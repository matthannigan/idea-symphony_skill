# BL1 — Baseline Establishment — tool-library / low

**Date:** 2026-04-18
**Cell:** tool-library, low effort
**Input file:** `dev/2026-03-01_symphony-phase2C-synthesis/test-data/tool-library_low.md`
**Artifacts produced:**
- `baselines/tool-library_low_clusters.md` (B1)
- `baselines/tool-library_low_convergence.md` (B2)
- `baselines/tool-library_low_target.md` (B3)
- `baselines/tool-library_low_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**
- Total questions in input: **100** (Synthesize 69 + Append 31)
- Synthesize-group personas: 6 (Analyst, Appreciative Inquirer, Audience Advocate, Devil's Advocate, Questioner, Systems Thinker)
- Append-group personas: 4 (Provocateur, Storyteller, Visionary, Analogist)
- Natural cluster count: **9** cross-persona Synthesize clusters (range 8–10), plus 2 orphan clusters (AI aspirational, ST systems dynamics)
- Convergence groups: **10** (7 strong-merge candidates, 1 preserve-all-distinct, 2 hybrid)
- Convergence density: **60.9%** of Synthesize-group questions participate in cross-persona convergence (42/69)
- Expected synthesis output: **27 questions** (range 23–31); compaction ratio **2.56** (range 2.23–3.00)
- Append quota: **12 questions** (3 per persona × 4 personas)
- Total expected Phase 2C output: **39 questions** (27 synthesized + 12 appended)

**Defining feature of this cell:** tool-library/low is dominated by **equity and access concerns**. Cluster 1 (Equitable Access, Dignity, Inclusion) is the single largest cluster at 16 of 69 Synthesize-group questions (23% of input) — substantially larger than any equivalent cluster in habit-tracker/low or space-party/low. This is driven by Audience Advocate (9 of 10 AA questions land in Cluster 1) plus strong reinforcement from Devil's Advocate (early-adopter capture, undocumented-access) and Questioner (barriers, boundary questions, damage policies). Tool-library is a community-nonprofit topic — and the input questions reflect that the primary contested territory is "who does this serve?" rather than "is this model right?" or "is this financially viable?" (though both of those also appear as meaningful clusters).

**Synthesize/Append split:** 69% Synthesize / 31% Append. This is the standard Tier-1-only low-effort split with no Tier 2 or Tier 3 contribution (no Accountant/Lawyer/Politician/Technical Expert, no Connector swap — Analogist retained per GT1). The split matches the persona-selection-guide's expected low-effort composition.

**Notable features that distinguish this cell from habit-tracker/low:**
- Much larger dominant cluster (C1 at 16 questions vs. habit-tracker's largest at 9)
- Lower cluster count (9 vs. habit-tracker's 9) but higher concentration in top 3 clusters (16+5+7 = 28 = 41% in tool-library vs. 9+9+7 = 25 = 37% in habit-tracker)
- Stronger cross-persona convergence in C2 Volunteer Sustainability (5 personas; habit-tracker's densest cluster also hits 5 but on Failure/Resilience, not Volunteer Sustainability)
- More same-persona internal clustering within Audience Advocate and Appreciative Inquirer (both clusters contain 8+ questions from a single persona)

---

## 2. Persona Representation Challenges

**Highest risk: Appreciative Inquirer.** 10 of AI's 12 questions are unique (no cross-persona convergence), and 8 of those 10 form the "Aspirational Felt Quality" orphan cluster — belonging, abundance mindset, the 3-year "heart of the neighborhood" vision, the storefront-as-magnet, the first-three-months celebration. AI's voice is dimensionally inverse to the analytical set (per persona-selection-guide and D2), and synthesis tends to favor analytical/strategic framing. Without explicit preservation, all 8 aspirational orphans could be silently dropped. **B3 sets a hard minimum of 3 AI questions in output** (2 aspirational orphans + at least 1 Cluster 9 Co-Creation contribution). SP1 should be monitored for AI under-representation.

**Second-highest risk: Systems Thinker's named-archetype vocabulary.** Systems Thinker introduces distinctive framings for this topic (Self-reinforcing growth cycles, Delay structures, Success-to-the-Successful, Small interventions with disproportionate effects, Interactions with existing systems, Community boundary permeability). 7 of ST's 10 questions live in the "ST Systems Dynamics" orphan cluster rather than converging cross-persona; the other 3 (Q5, Q6, Q8) land in Cluster 2, Cluster 7, and Cluster 10 respectively. Synthesis tends to extract the underlying concerns and drop the archetype labels — homogenizing ST into content it contributed to. **B3 requires at least one named archetype to survive with its archetype label in the output** — this is the diagnostic for "did the synthesizer preserve Systems Thinker's voice or just its content?"

**Third-highest risk: Questioner's first-principles "Why do we assume..." voice.** 4 of Q's 15 questions are distinct assumption-challenging questions in Cluster 4 (Q1 problem-definition, Q2 model-fit, Q4 typical-user, Q8 unit-of-access). The recommendation is to **preserve at least 2 of these distinct** (per Convergence Group 6 recommendation in B2) rather than merge them into a single compact question. If the synthesizer collapses CG6 into one merged question, the first-principles register is lost.

**Easiest to preserve:** Audience Advocate (cluster-driver for Cluster 1; voice anchored by long, structured equity-framed questions that are hard to compact into another persona's framing). Devil's Advocate (heavily convergent, so its contributions land in merges naturally; only Q9 maintenance-backlog is genuinely at risk as a unique).

---

## 3. Append Mechanics Observations

**Round-robin landed cleanly for 3 of 4 personas.** Provocateur, Visionary, and Analogist each have exactly 3 internal thematic clusters at their generated volumes (7, 8, 8 respectively), making the 3-per-persona low-effort quota a perfect 1:1 cluster→question selection. No fallback needed.

**One awkward pairing: Storyteller Cluster D dropped.** Storyteller has 4 internal clusters (First-person user journey / Collective long-arc stories / Stories tools tell-connectors / Difficult moments and volunteer emotional arcs). The 3-quota forces Cluster D (Q6 when-things-go-wrong, Q7 Maria's yearlong journey) to be excluded. These are both distinctive and arguably the persona's most emotionally grounded contributions for this topic — they would have cross-referenced Cluster 5 Liability (response to damage/injury) and Cluster 2 Volunteer Sustainability (the volunteer emotional-labor story) respectively. The deterministic D1 rule (first cluster, source order) excludes them correctly per the spec. **This is a cross-cell pattern** — the same Cluster-D exclusion occurred in habit-tracker/low. Storyteller appears to consistently produce 4 internal clusters at the 7-8 generation range, systematically excluding the last/smallest cluster at low effort. Flagging as a known characteristic, not a bug.

**Analogist provides unusually strong operational coverage for this topic.** Analogist's 3 selected appends (Q1 ecosystem, Q2 library-book circulation, Q4 car-sharing) all map cleanly to operational B1 clusters (C3 Financial via ecosystem-decomposition, C5 Liability via car-sharing risk architecture, C8 Operational Design via library-circulation collection-development). This is distinctive relative to habit-tracker/low, where Analogist's appends landed mostly in Cluster 1 Failure via biological-rhythm metaphors. Tool-library's Analogist naturally imports cross-domain **operational** frameworks (ecosystems, institutional libraries, car-sharing platforms, guilds, open-source), giving the Append group richer coverage of operational/tactical clusters than in other cells. This is a topic-specific strength.

**B1 cluster coverage from Append:** Appended questions land predominantly in B1 Clusters 1 (Dignity via Storyteller Elena, Story-Tools-Tell; Provocateur access-inversion), 3/5/8 (Operational via Analogist), 4 (Problem Definition via Provocateur imaginary-tools and Visionary capability-amplifier, self-eliminating), 7 (Trust/Commons via Provocateur zero-verification), and 9 (Co-Creation via Visionary third-place, Storyteller 5-year-story). Clusters 2 (Volunteer Sustainability) and 6 (Resilience) receive no Append coverage — the Append personas operate in registers (provocation, narrative, vision, analogy) that don't engage volunteer-sustainability or space-loss-continuity questions. This is expected.

---

## 4. C1 Recommendation (Per-Cell)

**Recommendation: per-persona structure with explicit cross-persona-cluster permission.** See B1 §C1 Comparison for full analysis.

For this specific cell:
- Per-persona clustering yields 9 stable cross-persona clusters plus 2 orphan clusters (AI aspirational, ST systems dynamics).
- Flat-pool clustering yields 7-8 content clusters because:
  - ST's archetype-orphan cluster dissolves — its questions distribute across C1, C2, C4, C8 by content
  - Part of AI's aspirational orphan absorbs into C9 Co-Creation — but the core felt-quality (belonging, abundance, magnet) remains AI-isolated even under flat pooling
  - C1 Equity grows from 16 to ~20 by absorbing ST3 (success-to-successful) and some Cluster 4 Q-questions
- The two real differences are content-revealing on the flat-pool side (cross-persona convergence into operational clusters) and persona-protective on the per-persona side (ST's archetype voice, AI's aspirational register).

**For tool-library/low specifically, per-persona is the safer default** because C1 is already dominant at 16 questions — flat pooling grows it to ~20, which risks under-representing other clusters by comparison; and both ST's archetype voice and AI's aspirational voice are important distinctive contributions that flat pooling would homogenize.

**SP1 implication:** The synthesis prompt should present questions grouped by persona (preserving voice and aiding traceability) but instruct the synthesizer to actively look for cross-persona convergence, note dual-cluster ambiguity, and explicitly preserve at least one named Systems Thinker archetype and at least 2 Appreciative Inquirer aspirational questions in the output.

---

## 5. GT1 Watchlist Status

**Not on GT1 watchlist.** Per TDA1 §5.1, the GT1 medium-confidence cells are:
- **tool-library / medium** ← note: this cell's *medium* counterpart IS on the watchlist (Politician inclusion)
- food-truck / high
- property-management / high
- youth-mentorship / high
- school-consolidation / medium

tool-library / **low** is not among them. The cell composition (10 Tier 1 personas, no Tier 2, no Tier 3, Analogist retained per GT1) is canonical and stable at low effort. If SP1 produces anomalously poor scores on this cell, the issue lies with the synthesis prompt, not with GT1's persona selection.

**Note for downstream:** The tool-library/medium cell has Politician added (GT1 Medium-confidence) and should be baselined with the caveat in TDA1 §6. The /low cell handled here has no such caveat — it is canonical and the baseline is reliable.

---

## 6. Open Concerns for Cross-Topic Synthesis

1. **C1 dominance may be topic-specific.** Tool-library is a community-nonprofit topic where equity/access is genuinely the primary contested territory. Product/business topics (habit-tracker, mobile-app, wearable-device) likely have much more balanced cluster sizes. **Cross-topic check needed:** when BL1 is run for all 10 topics, is a single cluster containing 20%+ of input questions a pattern limited to community/nonprofit topics, or do other topics also show this concentration? If concentration is topic-specific, SP1 scoring on "cluster balance" should be calibrated per-topic rather than using a uniform target.

2. **AI orphan-cluster size varies by topic.** habit-tracker/low showed 8 AI orphans in a distinct "felt quality" cluster; tool-library/low also shows 8 AI orphans in a distinct "aspirational" cluster. These may be the same general phenomenon (AI's voice is dimensionally inverse regardless of topic) but could also be topic-dependent (both topics are high-affect community-service topics). **Cross-topic check needed:** on harder-edged topics (school-consolidation, property-management), does AI still produce ~8 orphans, or do its questions converge more with the analytical group? If orphan size is topic-invariant, the AI-min-3 rule can be generalized; if it varies, per-topic calibration is needed.

3. **Storyteller Cluster D exclusion recurs.** This is the second cell (after habit-tracker/low) where Storyteller produces 4 internal clusters and the 3-quota excludes Cluster D. Storyteller's Cluster D in tool-library/low (difficult moments / volunteer emotional arcs) would have filled real gaps in Cluster 5 (Liability response) and Cluster 2 (Volunteer Sustainability emotional dimension). **Cross-topic check needed:** does Storyteller produce 4 clusters at low effort in most cells? If so, the D1 rule may need revisiting — either a "promote Cluster D when it fills Synthesize-group gaps" fallback, or a quota increase to 4 at low effort to accommodate Storyteller's richer clustering. For now, accept the exclusion per D1.

4. **ST systems-dynamics orphan cluster may be topic-independent.** ST consistently produces named-archetype vocabulary across topics. The challenge is preserving the archetype *labels* (not just the content) through synthesis. The B3 "at least one named archetype with its label" rule is a diagnostic that should generalize. **Cross-topic check:** do all 10 cells' B3 targets include this rule, and does SP1 systematically preserve archetype labels or systematically strip them?

5. **Analogist's operational-framework-import may be a tool-library-specific strength.** In habit-tracker/low, Analogist mapped to Cluster 1 Failure via biological rhythms. Here, Analogist maps to operational clusters (C3 Financial via ecosystem decomposition, C5 Liability via car-sharing, C8 Operational via library circulation). This is probably topic-driven — tool-library naturally invites operational-framework imports from institutional/physical-asset domains. **Cross-topic check:** on abstract/emotional topics (habit-tracker, career-change, youth-mentorship), does Analogist provide operational-cluster coverage, or does it concentrate on abstract-framework clusters? If topic-dependent, SP1 scoring of Append dimension coverage should account for this.

6. **Cluster 4 (Problem Definition) preserve-distinct pattern.** The convergence-group 6 recommendation to preserve DA Q2, Questioner Q1, and one of Q2/Q8 as distinct questions rather than merging mirrors habit-tracker/low's Cluster 4 (Behavioral Science) pattern. Both cells have a "are-we-solving-the-right-problem?" cluster where preserving distinct registers matters more than compaction. **Cross-topic check:** is this a universal preserve-distinct pattern for first-principles clusters, and should the synthesis prompt include explicit instruction to preserve distinct first-principles voices rather than merge them?

---

## Top-Line Summary (Confirmation)

| Quantity | Value |
|---|---|
| Total input questions (N) | 100 |
| Synthesize-group input | 69 |
| Append-group input | 31 |
| Natural cluster count (C) | 9 (range 8–10) + 2 orphan clusters |
| Convergence groups | 10 |
| Questions in convergence (Q) | 42 of 69 (60.9% density) |
| Expected synthesis output | 27 (range 23–31) |
| Compaction ratio (Synthesize) | 2.56 (range 2.23–3.00) |
| Append quota (A_quota) | 12 |
| Total expected Phase 2C output | 39 |
| GT1 watchlist | Not on watchlist (but /medium counterpart is) |
| C1 recommendation | Per-persona with cross-persona permission |
| Highest-risk persona for representation | Appreciative Inquirer (min 3 in output; 2 aspirational orphans required) |
| Defining topical feature | Equity/access dominance (C1 = 23% of input) |

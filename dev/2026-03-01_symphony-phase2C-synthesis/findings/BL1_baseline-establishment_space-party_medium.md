# BL1 — Baseline Establishment: space-party / medium

**Date:** 2026-04-18
**Cell:** space-party / medium effort
**Author:** BL1 per-cell subagent
**Status:** Canonical baseline for SP1 scoring of this cell
**Artifacts produced:**
- `baselines/space-party_medium_clusters.md` (B1)
- `baselines/space-party_medium_convergence.md` (B2)
- `baselines/space-party_medium_target.md` (B3)
- `baselines/space-party_medium_append-target.md` (B4)

---

## 1. Cell Characterization

| Metric | Value |
|---|---|
| Personas in input | 10 (6 Synthesize + 4 Append; no Tier 2, no Tier 3) |
| Total input questions | 115 |
| Synthesize questions | 84 |
| Append questions | 31 (23 Perspective × 5 per persona after round-robin = 20 selected; Provocateur contributes 8 but only 5 selected) |
| Natural cluster count | 10 |
| Convergence groups | 14 |
| Questions participating in convergence | 58 / 115 = 50.4% |
| Expected output count | 47 (target; range 42–53) |
| Expected synthesized output | 27 (from 84 input; compaction 3.1×) |
| Expected appended output | 20 (5 per persona × 4 personas) |
| Total compaction ratio | 115 / 47 = 2.4× |

**What's distinctive about this cell:** Space-party/medium is a "concrete, time-bounded event" topic type. The persona mix is pure Tier 1 (no specialist Tier 3 summoned, Analogist retained as default). The 10 clusters split cleanly into Human-centered (1, 6, 7), Tactical (2, 3), Strategic (4, 9), Analytical (5, 10), Creative (8), with Provocateur orphans forming an 11th de-facto provocation bucket.

The event-planning nature of the topic produces unusually high convergence on logistical concerns (budget, pacing, activity design, safety) — roughly half the Synthesize input ends up merged. The human-centered clusters (especially Sensory Safety and Social Inclusion) also converge tightly because 5-year-old developmental/sensory concerns are shared territory across Audience Advocate, Devil's Advocate, Questioner, and Systems Thinker.

Uniqueness is concentrated in:
- **Appreciative Inquirer** (8 of 12 uniquely-framed — strengths-based register doesn't converge with analytical or adversarial registers)
- **Visionary** (7 of 7 unique — paradigm-reframing exists in its own register, which is exactly why D1 routes it to Append)
- **Systems Thinker Cluster 3** content (pacing/flow — the pacing domain is near-exclusive Systems Thinker territory)
- **Analyst Cluster 10** (frameworks/measurement — pure Analyst; no convergences)

---

## 2. Persona Representation Challenges

### Appreciative Inquirer — high risk of voice-dilution

The AI contributes 12 questions with 8 unique, highly-distinctive framings ("peak wonder moments," "traditions in the making," "what's already working that needs only to be named"). Synthesis under a generic prompt risks domesticating AI's appreciative register into neutralized "memorable moments" language. The AI's distinctive contribution is *framing*, not *topic*.

**Flag for SP1:** verify the synthesized output contains at least 2 questions that preserve AI's strengths-based register (e.g., "what's already working," "think back to a moment when," "what if delight were the only metric"). Topical representation without register-preservation should score as partial credit.

### Audience Advocate — highest unique density

The AA contributes 15 questions, of which 10 are unique. The equity lens touches Clusters 1, 2, 6, 7, and 8. This means AA is spread across 5 clusters with 1–3 questions each. If the synthesizer compacts aggressively per cluster, AA representation can thin below the 7-question minimum. The specific AA framings most at risk: Q5 (mobility/muscle-tone), Q7 (language/speech-delay), Q11 (sharing conflicts), Q12 (cultural relevance across backgrounds) — each covers a distinct equity dimension that a general-equity merger would lose.

**Flag for SP1:** AA's 5-cluster spread means synthesizer attention must be distributed. A single "inclusion" merger that claims to cover "sensory + motor + language + cultural" would fail representation scoring.

### Systems Thinker — cluster ownership

Systems Thinker carries Cluster 3 (Pacing) almost single-handedly: 7 of 13 cluster questions, and the signature systems-framing is in all 7. If Cluster 3 compacts below 3 output questions, Systems Thinker's distinctive pacing contribution is hollowed.

**Flag for SP1:** B3 target sets Cluster 3 at 4 output questions — this is a load-bearing commitment to preserving Systems Thinker's pacing territory. Dropping to 2 would constitute under-representation.

### Analyst — framework-cluster solo

Analyst's Cluster 10 (Measurement/Frameworks) is 100% Analyst and has no convergences. B3 targets 2 output questions for this cluster. Losing this cluster entirely would under-represent Analyst and strip the decision-framework dimension from the output.

**Flag for SP1:** verify Cluster 10 survives at 1–2 questions. If the synthesizer collapses it into Cluster 4 (Budget) or Cluster 9 (Memory/Legacy), flag for rework.

### Questioner — inventive framings that merge easily

Questioner's 15 questions are ~53% merger-participants (8 of 15 unique, 7 in convergence groups). Mergers tend to anchor on Analyst or Devil's Advocate because those are longer and more analytically-structured; Questioner's short challenging questions can get pulled into mergers as "one of several voices" and lose distinct credit. Particularly at-risk: Q6 (venue challenge — "why home?"), Q10 (gender messaging), Q11 (why a party at all), Q15 (what would make this the birthday girl's "best ever?"). These are all paradigm-level questions that should survive intact rather than merging into broader clusters.

**Flag for SP1:** check that Questioner's 4 paradigm-level questions (Q6, Q10, Q11, Q15) survive as distinct output questions, not merged into general-purpose category headers.

---

## 3. Append Mechanics Observations

### Round-robin feels natural for this cell

All four Append personas have clean 3-cluster internal structures (confirmed per the persona-selection guide's "universal 3-cluster" claim). The walkthrough produces 5-per-persona selections without forced pairings or arbitrary choices. Tiebreakers (P-A vs P-B both at 3 questions, S-B vs S-C both at 3) are resolvable by source order.

### Observations for SP1 and PC1

- **Storyteller Q2 dropped from Append but survives topically via Analogist Q4**: the hero's-journey concept gets picked up by Analogist's mission-operations frame in Round 2. This is an accidental redundancy-absorption the round-robin method handles gracefully without coordination.
- **Storyteller Q8 dropped from Append but survives via synthesis**: photo-documentation merges with Analyst Q11 in Convergence Group 13, landing inside Cluster 9. Illustrates an edge case where an Append-group question is legitimately absorbed into synthesis because its concern is cross-lens rather than distinctly Storyteller-voiced.
- **Provocateur integration is awkward by design**: the 5 selected Provocateurs don't map to B1 thematic clusters (they're deliberately orthogonal provocations). The Append section must preserve them as their own group rather than interleaving by theme. D1's "tagged per persona" approach handles this cleanly.
- **Visionary's 7 → 5 (29% drop rate)** is the highest drop rate of the four Append personas. V-B and V-C both only get 1 slot each, losing Q5 (mission control for real discovery) and Q7 (transformational threshold). The dropped questions are high-quality; this is D1-rule-driven loss, not quality-driven. Possibly an argument for V-quota of 6 at medium if later evidence suggests Visionary's 7-question universe systematically overflows the 5-slot bucket.

### Awkwardness flag for PC1

The interleaving vs segregation question is not resolved by D1 alone. If the final output format presents synthesized clusters and then an Append section, the reader sees themed Q&A then an "extra perspectives" section. If interleaved (Append questions tagged into their nearest-B1-cluster), Provocateur questions become orphans and must go to a separate bucket anyway. Both formats have issues. SP1 should test at least one variant that segregates Append and one that interleaves (with Provocateur as a designated orphan section) to see which produces better downstream synthesis/brainstorming quality.

---

## 4. C1 Recommendation (Per-Cell)

**Recommendation for this cell: flat pooling with persona tags preserved as metadata** (full rationale in B1 clusters file).

**Does per-persona vs flat matter for this cell?** Yes, moderately. Per-persona structure in the test file masks the fact that the 3 largest clusters (1 Sensory, 4 Budget, 9 Memory) each draw from 4+ personas. A synthesizer reading the test file section-by-section would need to perform mental cross-referencing to surface these convergences; a flat view surfaces them immediately.

**Confidence:** moderate. This cell's recommendation may be cell-dependent — at low effort (fewer personas), cross-persona convergence is less common and per-persona structure may be preferable. At high effort (more personas including Tier 2), flat pooling may become *essential* because cognitive load of per-persona cross-referencing scales quadratically. The cross-topic synthesis subagent should aggregate this across all 30 cells to see if the recommendation shifts with effort.

**Caveat:** this recommendation applies to synthesis *input* formatting. The *output* format may reasonably re-introduce persona attribution (e.g., "[merged from Analyst + Devil's Advocate + Systems Thinker]") for traceability.

---

## 5. GT1 Watchlist Status

**space-party/medium is NOT on the GT1 watchlist.** TDA1 §5.1 lists 5 medium-confidence cells: tool-library/medium, food-truck/high, property-management/high, youth-mentorship/high, school-consolidation/medium. space-party is not among them.

The space-party persona composition (Tier 1 only, Analogist default, no Tier 3 summoned) is GT1-Rev-3-canonical and not treated as revisable. No watchlist caveats apply to this baseline.

**Source vintage note:** TDA1 calls out tool-library/medium's Politician as pilot-era 2026-02-18 source. space-party has no such divergence — all source data is from the 2026-02-24 sweep at the expected volumes.

---

## 6. Open Concerns for Cross-Topic Synthesis

1. **Is 50.4% convergence density high, normal, or low for medium effort?** This is a cross-cell question — the cross-topic subagent should compare to the other 9 medium cells. Hypothesis: event-planning topics (space-party, food-truck) may run higher than structural/infrastructural topics (tool-library, property-management, school-consolidation) because shared logistics concerns (budget, pacing, safety) converge naturally.

2. **Is 10 clusters typical for medium effort?** Unclear from cell alone. If the cross-topic median is 8–12 clusters at medium, space-party is normal; if median is 5–7, space-party is unusually cluster-heavy and may warrant SP1 caution as a stress-test cell.

3. **Does the Cluster 10 (Measurement/Frameworks) single-persona pattern persist across topics?** Analyst's framework-heavy register may or may not produce an Analyst-only cluster on other topics. If it does, it's a persona property; if not, it's topic-dependent.

4. **Is space-party's Cluster 3 (Pacing) Systems-Thinker-dominance cross-topic or topic-specific?** Events have pacing; tools and apps also have pacing (user onboarding sequences, long-term engagement arcs). Worth checking whether Systems Thinker owns an analogous cluster in non-event cells.

5. **Does the Visionary 29% drop rate under D1 round-robin show up on other topics?** If Visionary consistently generates 7 at medium but D1 only permits 5, this is a structural-rule-vs-persona-output mismatch that could be re-examined if the cross-cell pattern holds.

6. **Expected effort-evolution check:** space-party/low and space-party/high were not analyzed by this per-cell subagent. The cross-topic subagent should compare all three space-party cells to see if (a) cluster count grows monotonically with effort, (b) convergence density grows with persona count, (c) new clusters emerge at high effort (Futurist civic/trends lens, Empath emotional-excavation) vs existing clusters expand. Event-planning is a plausible case where high effort adds depth more than breadth — prediction would be stable cluster count with higher convergence density.

7. **Interleaved vs segregated Append format:** this cell can't resolve the presentation question. Flagged for SP1 variant design.

8. **Voice-preservation scoring for AI and Visionary:** BL1 baselines assume SP1 can score "register preservation" in addition to "topical coverage." If SP1's scoring rubric is purely topical, the voice-preservation concern surfaces as an unscored risk. Worth confirming SP1 scoring design supports register-check.

---

## Top-Line Summary (for orchestrator aggregation)

- **N = 115** (84 Synthesize + 31 Append)
- **C = 10** (thematic clusters) + 1 orphan bucket (Provocateur)
- **Convergence groups = 14; Q participating = 58 (50.4%)**
- **Synthesis target = 27** (compaction 3.1× on Synthesize stream)
- **Append quota = 20** (5 per persona × 4)
- **Total output target = 47** (compaction 2.4× overall; range 42–53)
- **GT1 watchlist:** not on list
- **C1 recommendation:** flat pooling with persona tags preserved (moderate confidence; cell-dependent caveat)
- **Highest-risk personas for SP1 scoring:** Appreciative Inquirer (voice-dilution), Audience Advocate (5-cluster spread), Systems Thinker (Cluster 3 ownership), Analyst (Cluster 10 survival)

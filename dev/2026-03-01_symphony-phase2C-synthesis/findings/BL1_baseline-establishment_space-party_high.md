# BL1 — Baseline Establishment: space-party / high

**Date:** 2026-04-18
**Cell:** space-party / high effort
**Author:** BL1 per-cell subagent
**Status:** Canonical baseline for SP1 scoring of this cell
**Artifacts produced:**
- `baselines/space-party_high_clusters.md` (B1)
- `baselines/space-party_high_convergence.md` (B2)
- `baselines/space-party_high_target.md` (B3)
- `baselines/space-party_high_append-target.md` (B4)

---

## 1. Cell Characterization

| Metric | Value |
|---|---|
| Personas in input | 14 (9 Synthesize + 5 Append; Tier 1 full + all Tier 2, no Tier 3) |
| Total input questions (N) | 161 |
| Synthesize questions | 124 |
| Append questions | 37 (all 37 survive at high-effort quota; A_quota = A_available) |
| Natural cluster count (C) | 11 |
| Convergence groups (P) | 17 |
| Questions participating in convergence (Q-in-convergence) | 73 / 124 Synthesize = 58.9% |
| Expected output count (M) | 75 (target; range 67–83) |
| Expected synthesized output | 38 (from 124 input; compaction 3.3×) |
| Expected appended output | 37 (all Tier 1 Perspective + all Constraint Flipper at high-effort quota) |
| Total compaction ratio | 161 / 75 = 2.15× |

**Persona composition (per TDA1 and GT1 Rev 3):**
- **Synthesize (9):** Analyst (15), Appreciative Inquirer (12), Audience Advocate (15), Devil's Advocate (15), Questioner (20), Systems Thinker (15), Empath (10), First Principles Thinker (10), Futurist (12) = 124 questions
- **Append (5):** Provocateur (8), Storyteller (8), Visionary (7), Analogist (8), Constraint Flipper (6) = 37 questions
- **No Tier 3.** Space-party is a concrete, time-bounded event with no financial/regulatory/political/technical triggers — no Accountant, Lawyer, Politician, Technical Expert.
- **Analogist retained** (GT1 Rev 3 default for space-party). No Connector swap.

**What's distinctive about this cell:**

Space-party/high is a "concrete, time-bounded event" at full-roster depth. The addition of all 4 Tier 2 personas over medium effort produces substantial new territory:

- **Empath (10)** opens an emotional-interior lens that Audience Advocate's equity-lens and Appreciative Inquirer's strengths-lens don't fully cover — "how does it feel" vs. "who is served" vs. "what's already working." All three personas touch Cluster 6 (Birthday-Girl) and converge partially, but each preserves a distinct register.
- **First Principles Thinker (10)** adds definitional-framework questions that pull Cluster 10 (Measurement) from pure-Analyst (at medium) to shared Analyst+FPT territory. Its 3 definitional questions (what IS a birthday party, what does space REPRESENT, what are we OPTIMIZING for) are the persona's most distinctive voice and cannot be domesticated to Analyst's operational framework register.
- **Futurist (12)** generates a wholly new cluster (Cluster 11: Technology/Sustainability/Cultural-Trend) that doesn't exist at medium. This is the only new cluster beyond medium's 10 — everything else is expansion of existing clusters.

Convergence density rises from medium's 50.4% to high's 58.9% — more personas → more overlap on shared concerns. But uniqueness also rises in absolute terms: 51 unique Synthesize questions at high vs. 49 at medium. The compaction ratio on the Synthesize stream tightens slightly (3.1× → 3.3×) because the larger Synthesize universe has more merge opportunities.

---

## 2. Persona Representation Challenges

### Appreciative Inquirer — highest voice-dilution risk in the universe (unchanged from medium)

AI contributes 12 questions with 9 unique (75%), the highest uniqueness rate of any Synthesize persona here. The "peak wonder moments," "traditions in the making," "what's already working," "what parents already do well," "intergenerational hope" framings are AI-distinctive strengths-framings that domesticate easily into generic "memorable moments" language under a non-careful synthesis prompt.

AI participates in Clusters 6, 8, 9 (must), with bridges to 3, 4. Four different clusters, each with 2-4 AI questions.

**Flag for SP1:** verify the synthesized output contains at least 3 questions that preserve AI's strengths-based register (e.g., "what's already working," "think back to a moment when," "what if delight were the only metric," "the experience parents wish they'd had"). Topical representation without register-preservation should score as partial credit. This is the same flag as medium but with a higher threshold (3 vs. 2) because high effort has 12 AI questions to preserve vs. medium's 12.

### Futurist — cliff-function representation risk (new at high effort)

Futurist is single-cluster (Cluster 11 Technology/Sustainability/Trend) with 7 of its 12 questions landing in Cluster 11 and the remaining 5 distributed across Clusters 2, 8, 9. B3 target for Cluster 11 is 3 output questions. If Cluster 11 compacts below 2, the Futurist's trend-extrapolation dimension is effectively eliminated. **Unlike other personas, Futurist has no Tier 1 backup** — no other persona in the roster does trend-contextualization. If Cluster 11 goes, the cultural-moment-in-2026 lens is gone.

This is a cliff function, not a gradient. Either Cluster 11 survives at ≥2 or the persona is eliminated.

**Flag for SP1:** if synthesis output shows Cluster 11 at 0 or 1 question, flag as persona-elimination failure. Acceptable compaction for Cluster 11 is 2-3; below 2 fails.

### Systems Thinker — cluster ownership (unchanged from medium)

Systems Thinker carries Cluster 3 (Pacing) with 8 of 14 questions. Its distinctive systems-framing vocabulary (energy cascades, transition signals, schedule elasticity, material flows, peak-end, food as regulator) is unmatched elsewhere.

B3 target sets Cluster 3 at 5 output questions — this is a load-bearing commitment. Dropping to 3 would hollow Systems Thinker's pacing territory.

**Flag for SP1:** verify Cluster 3 survives at ≥4 questions and preserves Systems Thinker's systems-vocabulary.

### Audience Advocate — 5-cluster spread with fine-grained equity dimensions (unchanged from medium)

AA contributes 15 questions with 8 unique, distributed across Clusters 1, 2, 6, 7, 8. The fine-grained equity dimensions (motor/mobility Q5, language/speech Q7, food-sensitivity Q8, cultural-relevance Q12, engagement-style Q15) each cover a distinct population and risk being collapsed into a generic "inclusive design" merger.

**Flag for SP1:** check that Clusters 2 and 7 each preserve ≥2 AA-distinctive equity dimensions (not a single "inclusion" merger covering all of them).

### First Principles Thinker — definitional vs. operational framework register (new at high effort)

FPT contributes 10 questions with 6 unique. Its Cluster 10 questions ("what IS a party, fundamentally," "what are we optimizing for") are definitional rather than operational. SP1 must not domesticate these into Analyst's operational-framework register.

**Flag for SP1:** verify that Cluster 10 preserves at least 1 FPT-distinctive definitional question. A Cluster 10 that is 100% Analyst even at high effort represents FPT elimination.

### Empath — emotional-interior voice risk (new at high effort)

Empath contributes 10 questions with 5 unique. Its emotional-interior register ("how does it feel," "magic vs. educational," "emotional memory she carries forward") bridges AA's equity-lens and AI's strengths-lens but is distinct from both.

**Flag for SP1:** verify that Cluster 6 preserves at least 2 Empath-distinctive emotional-interior questions. Collapsing Empath into AA's equity voice or AI's strengths voice would lose the "how does it feel from inside" framing.

### Questioner — paradigm-level survivors (modified from medium)

At high effort Questioner contributes 20 questions with 10 unique. The medium-effort flag identified 4 paradigm-level questions at risk (Q6 venue, Q10 gender, Q11 why-a-party, Q15 birthday-girl-best-ever). At high effort with Q ranges extending to 20, additional paradigm-level questions appear: Q17 (group size assumption), Q18 (location creativity), Q16 (why space at all), Q11 (community resources). Gender-Q4 is also now a clearer cluster-6 anchor via Convergence Group 14.

**Flag for SP1:** at high effort Questioner has 6+ paradigm-level questions at risk of merger-dilution. Verify that at least 3 Questioner-distinctive reframings survive as standalone output questions (not merged into broader category headers).

---

## 3. Append Mechanics Observations

### Round-robin is an identity operation at high effort

At A_quota = A_available, the round-robin mechanic is trivial — every question survives. The walkthroughs in B4 are useful for ordering and cluster attribution verification but have no selection pressure.

This means D1's round-robin quality depends entirely on test data from low/medium cells where quota < available. The space-party/medium BL1 handles the real round-robin test. The space-party/high BL1 validates the trivial edge case.

### Observations for SP1 and PC1

- **All 37 Append questions survive.** Unlike medium (11 Append drops), high effort drops 0. Integration is easier because no selection errors can be introduced in the Append stream.
- **Provocateur (8 questions) expands P-B cluster from 3 to 3** and preserves the "orthogonal to thematic clustering" property. The provocations remain attached to the output as a persona-tagged section with no thematic-cluster cross-reference required.
- **Constraint Flipper appends all 6.** CF's internal-cluster distribution is lopsided (CF-A: 1, CF-B: 1, CF-C: 4), which would matter at medium-effort quota but is irrelevant at high-effort quota. Noted for cross-topic observation: CF's constraint inversions may cluster heavily in one category (operational here) on theme-rich topics.
- **Storyteller Q8 (photographic evidence) survives Append AND Analyst Q11 (photo-documentable moments) survives synthesis.** Double-coverage is intentional: the Storyteller's narrative-register question on photography coexists with the Analyst's measurement-register question. At medium we considered merging Q8 into Cluster 9; at high we preserve both voices.
- **Analogist A-A cluster over-represented (4/8 = 50%)** — industry/institutional imports (museum, theme park, flight mission, restaurant kitchen) are Analogist's dominant mode for this topic. At medium (quota 5) this biased the round-robin; at high (quota all) it doesn't matter.

### Awkwardness flag for PC1 (same as medium)

The interleaving vs. segregation question for Append integration remains unresolved by D1 alone. At high effort, with 37 Append questions vs. 38 synthesized, the Append section is now comparable in size to the synthesized stream. This changes the UX balance — it's no longer "extra perspectives" supplementing the main output; it's an equal-weight parallel stream. SP1 testing variants should consider whether interleaving Append with synthesized clusters (tagged by persona with B1-cluster cross-reference) improves readability vs. the segregated approach, especially at high effort where Append stream is substantial.

---

## 4. C1 Recommendation (Per-Cell)

**Recommendation for this cell: flat pooling with persona tags preserved as metadata** (full rationale in B1 clusters file).

**Does per-persona vs. flat matter for this cell?** Yes, substantially more than at medium. The high-effort universe has 9 Synthesize personas contributing to Clusters 1, 2, 6, 8, 9 (each with ≥4 personas) and cross-persona convergence patterns that span 4-5 personas (Convergence Group 1 spans 5 personas: AA, DA, Q, ST, Empath). A synthesizer reading the test file section-by-section would need to perform quadratic cross-referencing to surface these convergences. Flat pooling surfaces them immediately.

**Confidence:** **high** (increased from medium-effort moderate). At 9 Synthesize personas with 58.9% convergence density, per-persona clustering actively obscures the primary thematic structure. The larger the persona roster, the more flat pooling is essential.

**Effort-level pattern (cross-effort prediction):**
- Low (6-7 Synthesize personas): per-persona view may work as convergences are less dense
- Medium (6 personas): flat pooling preferred, moderate confidence
- High (9 personas): flat pooling essential, high confidence

The cross-topic synthesis subagent should verify this monotonic pattern across the 10 topics × 3 effort levels.

**Caveat:** Cluster 10 (Measurement/Frameworks) is shared Analyst+FPT and Cluster 11 (Futurist Trend) is 100% Futurist. These legitimately persona-specialized clusters are preserved by flat pooling because the persona tags carry through. Per-persona view doesn't hurt these clusters but also doesn't help — they're inherently persona-bound.

---

## 5. GT1 Watchlist Status

**space-party/high is NOT on the GT1 watchlist.** TDA1 §5.1 lists 5 medium-confidence cells: tool-library/medium, food-truck/high, property-management/high, youth-mentorship/high, school-consolidation/medium. Space-party is not among them at any effort level.

The space-party/high persona composition (Tier 1 full + Tier 2 full + Analogist default + no Tier 3 summoned) is GT1-Rev-3-canonical and not treated as revisable. No watchlist caveats apply to this baseline.

**Source vintage note:** TDA1 confirms all space-party/high source data is from the 2026-02-24 sweep at expected volumes with zero shortfalls. No older-prompt divergences (unlike tool-library/medium's Politician).

---

## 6. Open Concerns for Cross-Topic Synthesis

1. **Is 58.9% convergence density typical for high effort?** Hypothesis from medium→high delta (50.4% → 58.9% = +8.5pp): adding Tier 2 personas increases convergence density by ~5-10pp because Tier 2 territory overlaps with Tier 1 core concerns (Empath ~25% overlap with Storyteller/AA, FPT ~43% with Questioner, Futurist ~30% with Visionary). The cross-topic subagent should verify this +5-10pp pattern holds across topics. Event-planning topics may run higher than infrastructural topics because event logistics (budget, pacing, safety) converge naturally.

2. **Does adding Futurist always produce a new cluster?** Cluster 11 (Trend/Technology/Sustainability) is Futurist-dominated and doesn't exist at medium. On topics where Futurist is included only at high effort, does a Futurist-owned cluster always appear? Hypothesis: yes for civic/technical/infrastructural topics; no for highly-personal/experiential topics where Futurist questions disperse into existing clusters. Space-party is middle-ground: Futurist activates a distinct cluster here because space-related trends (AR, STEM, sustainability) have enough cultural specificity to form a coherent theme.

3. **Does FPT consistently share Cluster 10 with Analyst?** At high effort, Cluster 10 pulls from both Analyst (5) and FPT (3). On topics where Analyst's framework-territory is less prominent (highly narrative or emotional topics), does FPT carve out its own definitional cluster? Cross-topic check needed.

4. **Does Empath always bridge Clusters 1, 6, 8?** Here Empath has 4 questions in Cluster 6 (centering) and 2 each in Clusters 1 (safety) and 8 (theme wonder). On more abstract topics (mobile-app, wearable-device), does Empath cluster similarly or scatter more widely? Cross-topic check needed.

5. **Visionary drop rate at medium vs. high preservation at high:** at medium space-party, V-A was dominant (3 questions) with V-B and V-C at 2 each, causing 2 Visionary questions to be dropped under round-robin. At high, all 7 survive. This means Visionary's *diversity* is fully expressed only at high effort. Worth flagging that for low/medium, some Visionary voices are systematically lost — possibly an argument for V-quota adjustment at medium if the drop rate pattern is cross-topic.

6. **Does Cluster 3 (Pacing) remain Systems-Thinker-dominated across topics?** Pacing is an event/activity property. For app/tool topics, "pacing" may mean onboarding sequencing, engagement-rhythm-over-time, or progressive disclosure — Systems Thinker may still own it, or it may share with Futurist (engagement trends) and Appreciative Inquirer (rhythm framing). Cross-topic check needed.

7. **Provocateur orphan-cluster-size anomaly (8 vs. expected 7) — within variance?** Provocateur's "natural set point ~7" per the persona-selection-guide sometimes produces 8. Not a shortfall for TDA1 but worth flagging for cross-topic cluster-count consistency.

8. **Constraint Flipper's 6-question output (vs. guide-noted 14-17 consistency):** CF under-produced at Phase 2B generation. The guide notes CF has "natural set point 14-17" but also that its "inversion operation is powerful but exhaustible — once each major constraint is flipped, the persona runs out of moves." Space-party may have fewer inversable constraints than tech/product topics. Worth checking whether CF volume systematically varies with constraint-richness of topic.

9. **Voice-preservation scoring for AI, Futurist, Empath, FPT:** BL1 baselines assume SP1 can score "register preservation" in addition to "topical coverage." At high effort with 4 persona voices at elevated representation risk, SP1 scoring must distinguish "topically covered but voice-flattened" from "voice-preserved." If SP1's rubric is purely topical, all 4 persona-voice concerns surface as unscored risk.

10. **Append stream volume parity:** at high effort, Append (37) ≈ Synthesized (38). This is a significant UX change from medium (Append 20 vs. Synthesized 27 = 43:57 ratio) to high (Append 37 vs. Synthesized 38 = 49:51 ratio). The Append stream is now a near-equal parallel to the synthesis stream. SP1 should investigate whether integration format (segregated vs. interleaved) matters more at high effort than at medium.

11. **No Tier 3 on space-party at any effort** — this is a "cleanest" topic for baseline purposes. Topics with Tier 3 (Politician, Lawyer, Accountant, Technical Expert) will introduce additional synthesis challenges. Space-party baselines are useful as a control condition against which Tier 3-active topics can be compared.

---

## Top-Line Summary (for orchestrator aggregation)

- **N = 161** (124 Synthesize + 37 Append)
- **C = 11** (thematic clusters; medium had 10, high adds Cluster 11 Technology/Trend) + Provocateur orphan bucket
- **Convergence groups P = 17; Q participating = 73 (58.9%)** — +8.5pp over medium's 50.4%
- **Synthesis target = 38** (compaction 3.3× on Synthesize stream; medium target was 27 at 3.1×)
- **Append quota = 37** (all questions survive at high effort per D1; A_quota = A_available)
- **Total output target M = 75** (compaction 2.15× overall; range 67–83)
- **GT1 watchlist:** NOT on list (confirmed)
- **C1 recommendation:** flat pooling with persona tags preserved; high confidence at high effort
- **Highest-risk personas for SP1 scoring:**
  - Appreciative Inquirer (voice-dilution; 9/12 unique)
  - Futurist (cliff-function — Cluster 11 has no backup persona)
  - Systems Thinker (Cluster 3 ownership — 8 of 14 pacing questions)
  - FPT (definitional vs. operational register — Cluster 10 shared with Analyst)
  - Empath (emotional-interior vs. equity-vs-strengths register — Clusters 1, 6, 8)

**A_quota = 37** (D1 high-effort: Tier 1 Perspective all + Constraint Flipper all = 8+8+7+8+6 = 37)

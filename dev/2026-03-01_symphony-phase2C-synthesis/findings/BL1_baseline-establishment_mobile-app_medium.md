# BL1 — Baseline Establishment: mobile-app / medium

**Date:** 2026-04-18
**Author:** BL1 subagent (mobile-app / medium cell)
**Scope:** One cell of the Phase 2C BL1 baseline pass — baseline reference for SP1 variant scoring of the synthesis prompt on mobile-app at medium effort.
**Companion baseline files:**
- `baselines/mobile-app_medium_clusters.md` (B1)
- `baselines/mobile-app_medium_convergence.md` (B2)
- `baselines/mobile-app_medium_target.md` (B3)
- `baselines/mobile-app_medium_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**

| Metric | Value |
|---|---|
| Total source questions (N) | 107 |
| Synthesize-group questions | 78 (6 of 10 personas) |
| Append-group available (A_available) | 29 |
| Synthesize personas | 6 — Analyst (12), Appreciative Inquirer (12), Audience Advocate (14), Devil's Advocate (11), Questioner (15), Systems Thinker (14). **No Tier 3 Synthesize persona.** |
| Append personas | 4 — Provocateur (7), Storyteller (7), Visionary (7), **Connector (8)** *(Connector replaces Analogist per GT1 Rev 3)* |
| Natural cluster count (C) | 9 |
| Convergence groups (P) | 15 |
| Questions in convergence (Q) | 52 of 78 (67%) |
| Convergence density | **67%** (near median among sampled BL1 medium-effort cells) |
| Synthesized output target (M) | 29 (range 26-32) |
| Compaction ratio | 78 / 29 = 2.69 (range 2.4-3.0) |
| Append quota (A_quota) | 20 (4 Perspective personas × 5, no Politician) |
| Final total output | 49 (range 46-52) |

**Topic profile:** A product-strategy / user-experience / team-morale topic — a bloated fitness app (15 features, 180K downloads, 47-second avg session, 8% 30-day retention, 2% DAU/MAU, 8-month runway, team of 8 — 6 engineers + 1 designer + 1 PM) facing a simplification decision: identify the 3-4 core features that represent genuine value, execute the cut, communicate the change, and validate post-launch whether the focused product works. Per the persona-selection-guide topic-affinity hints, this profile triggers: **complex systems with many interacting elements** (Systems Thinker core; Analyst core); **user-facing / community / service design** (Audience Advocate core; Storyteller core; Appreciative Inquirer for strengths-based counter-weight); **entrenched assumptions / rethinking fundamentals** (Devil's Advocate and Provocateur core); **novel/ambiguous / cross-domain reconciliation** (**Connector replaces Analogist** — bridging fitness + behavioral psychology + product strategy + community design per R7). The medium-effort roster aligns: all 10 Tier 1 personas (minus Analogist, swapped for Connector) with no Tier 2 or Tier 3 Synthesize additions.

**Why this cell is a clean simple BL1 reference:**
- **NOT on the GT1 watchlist.** (mobile-app/medium is a canonical, high-confidence GT1 cell.)
- No shortfalls per TDA1.
- No missing slots.
- **No Tier 3 Synthesize persona** — no Lawyer / Accountant / Technical Expert / Politician. The topic is product-strategy, not regulatory-compliance, financial-structure, genuine-technical-architecture, or stakeholder-politics. This makes mobile-app/medium the simplest Synthesize-persona configuration among sampled cells (6 personas vs. 7 in youth-mentorship/medium and food-truck/medium).
- Connector swap well-justified (inter-domain topic per R7 criteria; Connector's non-pure-import mode activates on ~75% of source questions — 6 of 8 Connector questions are structural-isomorphism, recombinant, or biological/linguistic isomorphism rather than simple cross-domain-import).
- Every persona contributes a meaningful spread of questions with no compounding or filler pathologies.
- The 9-cluster natural structure is stable under both per-persona clustering (Pass A) and flat pooling (Pass B).
- Convergence density at 67% is near-median — neither anomalously high (youth-mentorship/medium's 70% regulatory+relational density) nor anomalously low.

**Structural characteristic:** **Balanced cluster-size profile.** C1 (Core Value Identification) and C9 (Metrics / Success Redefinition) are the two densest clusters at 12 questions each, with the other 7 clusters in the 6-9 range. Unlike youth-mentorship/medium's C9 mega-cluster (27 questions, 7 outputs), mobile-app/medium has no outlier cluster — meaning no cell-specific "decompose this cluster" guidance is needed. The C1/C9 temporal distinction (pre-commit-vs-post-commit "what matters") is the most topic-specific B3 guidance.

**How mobile-app/medium differs from other sampled medium-effort BL1 reference cells:**

| Dimension | food-truck/medium | youth-mentorship/medium | mobile-app/medium | Notes |
|---|---|---|---|---|
| Total questions | 122 | 121 | 107 | mobile-app lower — no Tier 3 Synthesize |
| Synthesize questions | 93 | 94 | 78 | mobile-app lower — 6 personas vs. 7 |
| Append available | 29 | 27 | 29 | mobile-app tied with food-truck; Connector at 8 drives +1 vs. youth-mentorship |
| Append quota | 20 | 20 | 20 | D1 medium rule: 5 × 4 = 20 |
| Clusters | 9 | 9 | 9 | Matched |
| Convergence density | 68% | 70% | 67% | mobile-app slightly lower |
| Synthesized output M | 33 | 34 | 29 | mobile-app lower (fewer source questions) |
| Compaction | 2.82 | 2.76 | 2.69 | mobile-app slightly looser — preserves 4 outputs each for C1 and C9 |
| Strategic % | 36% | 38% | **45%** | mobile-app **highest Strategic share** — two 12-question strategic clusters (C1 + C9) |
| Human-centered % | 28% | 35% | 24% | mobile-app **lowest Human-centered share** — commercial-product vs. vulnerable-population-serving |
| Analytical % | 15% | 12% | 14% | Similar — Analyst's runway/tech-debt scaffolding + ST's feedback-loop archetypes |
| Creative % | 9% | 6% | 10% | mobile-app **highest Creative share** — AI has room (no Tier 3 regulatory/financial crowding) |
| Tactical % | 12% | 9% | 7% | mobile-app **lowest Tactical share** — no Lawyer/Accountant specificity; tactical only in A/B-testing |
| Tier 3 Synthesize | Accountant | Lawyer | **None** | mobile-app simplest Synthesize config |
| Tier 3 Append | — | — | — | None in any |
| Perspective-slot swap | Analogist (default) | **Connector** (swap) | **Connector** (swap) | Same swap as youth-mentorship |
| Mega-cluster outlier | None | **C9 = 27 questions** | None | mobile-app balanced; no cell-specific decompose-instruction needed |
| Dropped questions (synth) | ~5 | ~7 | ~4-5 | mobile-app slightly simpler drop set |
| Append drop rate | ~28% | 26% | 31% | mobile-app slightly higher — Connector Q8 drives +1 drop |

**The most structurally distinctive feature of this cell** is the absence of any structural outliers — no mega-cluster, no Tier 3 Synthesize, no persona-balance anomaly. This makes mobile-app/medium a **baseline "clean" cell** useful as a control-reference for comparing more complex cells (youth-mentorship/medium with Lawyer; food-truck/medium with Accountant). Its distinguishing feature is the high Strategic share (45%) and low Tactical share (7%) driven by the topic being at the strategic-choice layer rather than the operational-execution layer.

---

## 2. Persona Representation Challenges

The synthesizer must navigate **five significant representation tensions** in this cell, none cell-unique but all well-pronounced:

**Tension A — Audience Advocate's 4-cluster spread.** AA carries 14 source questions distributed across 4 clusters: 2 in C2 (behavior-vs-stated, unarticulated needs), 5 in C7 (segmentation/accessibility/essential-from-constrained/notification-overload), 4 in C6 (power-dynamics, feature-reduction-as-loss, trust-rebuild, co-creation-as-invitation), 1 in C4 (passionate-minorities micro-community learning), plus 2 cross-refs. AA is the sole carrier of tech-literacy / accessibility / cognitive-bandwidth / notification-overload framings and of user-co-creation / trust-rebuilding / feature-reduction-as-loss framings. **SP1 risk:** a synthesizer may collapse AA into "user research" voice (C2) and "communication strategy" voice (C6), losing the tech-literacy / essential-from-constrained framings (C7) as distinct outputs. The B3 AA floor is 7 — the highest of any persona in the cell — reflecting this preservation burden. AA's impact is more cluster-distributed than in food-truck/medium (where AA concentrated in C4) and less cluster-spread than in youth-mentorship/medium (where AA spanned 5-7 clusters).

**Tension B — Systems Thinker's archetype vocabulary distributed across 6 clusters.** ST produces 14 questions at medium with 6 of 14 primary-assigning to C9 alone (metrics pathology, competitive transition-curve, slow-return-to-bloat, simplified-app-different-users balancing loop). The distinctive archetype vocabulary covers: Success-to-the-Successful (C1), erosion-of-goals + Shifting-the-Burden + time-delay-structural-pressure (C3), small-passionate-base dynamic + withdrawal-period balancing loop (C4), Fixes-that-Fail (C5), defensive-attachment feedback loop (C8), reinforcing retention-cut loop + metrics-pathology + competitive-transition-curve + marketing-alignment balancing + slow-return-to-bloat (C9). The preservation check specifically calls for at least 3 ST archetypes surviving in merges. **SP1 prompts that normalize archetype vocabulary during synthesis will silence ST's distinctive contribution even if they preserve the underlying topics.**

**Tension C — Appreciative Inquirer's strengths-based framing against analytical dominance.** AI generates 12 questions at medium; 2-3 are expected to drop at target compaction. AI's strengths-based framing is countered across this cell by dominant analytical/risk content (Analyst's 12 quantitative questions, DA's 11 failure-mode critiques, ST's 14 archetype-diagnostics). **SP1 risk:** a synthesizer biased toward analytical content may absorb AI's questions as cross-references rather than standalone outputs, collapsing strengths-based framings (peak user experiences, one-thing-done-exceptionally-well, team reimagined, 3-year champion vision, migration with grace, hidden assets) into the dominant risk/analytical register. The B3 AI target of 7 with floor 5 explicitly requires 3 strengths-based framings survive as distinct outputs. AI is the sole carrier of the Creative dimension in this cell (Creative = 10%, ~3 outputs — all from AI).

**Tension D — Questioner's 5-question C1 concentration and meta-question absorption.** Questioner generates 15 questions, with an unusually-dense 5 primary-assigning to C1 (core value / differentiator / job-to-be-done / one-thing-focus / category-positioning). Questioner's widening-problem-framing function is structurally central to C1 in this cell — without it, C1 risks becoming Analyst's analytical-scaffold-only. 10 of 15 Questioner questions land in convergence groups (CG1, CG2 partial, CG3, CG5, CG7, CG8, CG9, CG10, CG12, CG15). **SP1 risk:** the Questioner-heavy merges (especially CG5 "what job are users hiring us to do" which absorbs 4 Questioner questions) could collapse into Analyst's voice if the synthesizer treats "job-to-be-done" as a variant of "core value matrix." The Questioner floor at 6 preserves meta-question framing separately.

**Tension E — C1 and C9 temporal-distinction preservation.** Both clusters are "what matters" clusters at different temporal layers — C1 is pre-relaunch ("what are the 3-4 core features"), C9 is post-relaunch ("how do we measure success"). Each holds 12 questions (the largest clusters in the cell). **SP1 risk:** a synthesizer could collapse C1 and C9 into a single "defining-and-measuring-value" mega-cluster, losing the pre-commit-vs-post-commit temporal distinction that makes these two framings genuinely different. This is the **most topic-specific SP1 preservation concern for mobile-app/medium** — no other sampled cell has this precise C1/C9 temporal-distinction issue. Watching for C1+C9 collapsing from 8 outputs to ~6 is a cell-specific failure-mode flag.

---

## 3. Append Mechanics Observations

**Round-robin works cleanly at medium effort.** All 4 Append personas exhibit clean 3-cluster internal structure consistent with the persona-selection-guide's "universal 3-cluster structure" claim (and R7's confirmation that Connector "inherits Analogist's append mechanics cleanly: same 3-cluster structure, same self-containment, same round-robin compatibility"). The medium-effort quota of 5 per persona captures 5 of 5-8 questions per persona.

**Drop rate is 31% (higher than youth-mentorship/medium's 26%).** Driven by Connector's 8-question source data — quota 5 of 8 = 63% retention (vs. typical 71%), adding 1 extra drop to the overall count (9 drops instead of 7-8). Consistent with the 25-35% range observed across medium-effort cells.

**Tie-breaking biases toward lower-indexed clusters and lower-numbered source questions.** The deterministic source-order rule applied throughout: (a) within a cluster, lowest-numbered question wins; (b) across clusters of equal size, lowest-indexed cluster (A before B before C) gets refill priority first. This is reproducible across SP1 runs but systematically drops particular questions:

- **Visionary Q5 drops** (no-features-at-all / single-coherent-repeatable-action / one-button cascade) — **arguably the most distinctive "what could the product be" paradigm-challenge in the entire mobile-app Append pool** with direct topic relevance (15 features → 0 features → 1-button). Lost to Q1 (emergence) and Q2 (zero-UI) in V-A source-order tiebreak. **This is the third consecutive medium-effort cell where Visionary's most-distinctive paradigm-challenge drops via source-order tiebreak** (food-truck/medium Visionary Q6 antifragile; youth-mentorship/medium Visionary Q6 20-year generational + Q7 catalyst-for-obsolescence). Cross-topic BL1 synthesis should examine whether source-order-position correlates with paradigm-distinctiveness in Visionary output — may warrant D1 revision favoring "highest-paradigm-distinction" heuristic for Visionary specifically.

- **Visionary Q6 drops** (47-second session as the product — inversion of the current diagnostic into the feature). Topic-specifically distinctive — the only question explicitly leveraging the source metric (47-second average session) as the core value-delivery pattern. Lost to Q3 (emotional-state destination) in V-C source-order tiebreak. Two distinctive-frame losses in Visionary this cell.

- **Connector Q5 drops** (surgical triage vs. architectural restoration — meta-frame for the incremental-vs-relaunch decision). Would have bridged to C3 (Approach) with "which framing metaphor governs this decision" angle. Lost to Q2 and Q4 in C-B tie-break. The only source question in the pool that explicitly addresses "which framing metaphor should we choose."

- **Connector Q8 drops** (notification architecture as feature dependency mapping — notifications as proxy for feature value). Distinctive bridge to C1 (Core Value Identification) suggesting notification-engagement as a feature-value-signal. Lost to Q3 and Q7 in C-C tie-break.

- **Connector Q6 drops** (language death / feature migration). Distinctive bridge to C4 (Migration) with specific "vocabulary migration" frame beyond graceful-exit. Lost to Q1 in C-A tie-break (only 1 slot available in smallest cluster).

- **Storyteller Q3 drops** (day-in-the-life power user after simplification). Narrative bridge to C7 / C9 for success-vision. Lost to Q1 (Sarah) and Q2 (Marcus/Priya) in S-A tie-break. Partial coverage through AI Q5 (3-year champion).

- **Storyteller Q7 drops** (six-months-later user testimonial — evangelist narrative). Bridge to C9 with success-narrative frame. Lost to Q6 (press release) in S-C tie-break. Partial coverage through AI Q5 (3-year champion).

- **Provocateur Q6 drops** (backwards-time species) and **Q7 drops** (2% users as tumors). Both distinctive inversions but both adjacent to retained Provocateur questions.

**Cross-cluster bridging is exceptional for C1 (Core Value).** C1 receives 8 Append bridges — the highest observed across BL1 cells sampled so far. This reflects that mobile-app's central problem ("which 3-4 features are core") is the single most paradigm-accessible topic axis. Append adds substantial lateral value to C1 via 8 distinct framings: ecosystem succession (Connector Q1), retention-burnout compound-cost (Connector Q7), absurdist reduction (Provocateur Q1), 180K single-users (Provocateur Q4), 1995-person (Provocateur Q5), emotional-transformation (Visionary Q3), identity-transformation (Visionary Q4), fitness-as-emergence (Visionary Q1).

**C5 (Tech Debt / Runway) is minimally-bridged (1 bridge).** Only Storyteller Q4 (engineering team's transformed daily life) bridges to C5. This is the cluster-level outlier — engineering-cost-math is less paradigm-accessible than other clusters, so paradigm-challenging (Visionary), narrative (Storyteller), and isomorphism (Connector) framings have less to say here. Contrast with youth-mentorship/medium where every cluster got 2+ bridges. mobile-app/medium is the first sampled cell with a cluster receiving fewer than 2 Append bridges.

**No Politician Append-All complication.** mobile-app/medium's Tier 3 is Connector only (Append swap for Analogist), no other Tier 3 Append persona. SP1 scoring mechanics are straightforward.

**Connector vs. Analogist append mechanics verification:** R7 predicted Connector inherits Analogist's append mechanics. Confirmed: 3-cluster internal structure, zero filler, round-robin compatibility all intact. Mixed-mode activation on this inter-domain topic (2 structural-isomorphism, 2 cross-domain-import, 2 biological/linguistic isomorphism, 1 paradigm-metaphor-choice, 1 cross-domain-import-with-theorist) — ~75% non-pure-import, validating R7's predictions for mobile-app as an inter-domain topic.

---

## 4. C1 Recommendation

C1 (clustering vs. flat pooling) was tested in Pass A (per-persona-internal clustering preserved) vs. Pass B (flat pooling of all 78 Synthesize questions). Both passes produce the same 9 clusters with marginal boundary differences on 10-12 borderline questions (documented in B1 §Ambiguous Assignments).

**Recommendation: flat pooling for SP1 prompts, with three additive instructions specific to this cell.**

With 78 questions and 6 personas at medium effort, flat pooling produces equivalent cluster quality with a simpler synthesis prompt. Three caveats specific to mobile-app/medium:

1. **Preserve three persona-distinctive vocabulary families:**
   - **Systems Thinker's system archetypes** (Success-to-the-Successful, Shifting-the-Burden, Fixes-that-Fail, erosion-of-goals, reinforcing / balancing loops, withdrawal-period-after-feature-removal, slow-return-to-bloat, worse-before-better transition curves, marketing-alignment balancing loops) — distinctive content, not structural markup; especially Fixes-that-Fail (C5), Shifting-the-Burden (C6), erosion-of-goals (C3), self-fulfilling-prophecy (C9).
   - **Audience Advocate's structural-equity and accessibility framings** (unarticulated-needs, behavior-vs-stated-preference, tech-literacy / language / accessibility barriers, notification-overload differential impact, feature-reduction-as-loss, power-dynamics-in-core-definition, user-co-creation, trust-rebuild-with-burned-users, relaunch-as-invitation, essential-from-constrained-users-perspective) — only structural-equity voice in the cell.
   - **Appreciative Inquirer's strengths-based framing** (peak user experiences, hidden assets, team reimagined, one-thing-done-exceptionally-well, migration with grace, first low-risk experiments, building from existing assets, 3-year champion vision) — countered by dominant analytical/risk content. AI is the sole carrier of the Creative dimension.

2. **C1 / C9 temporal-distinction preservation:** SP1 should be told to keep "what-are-the-3-4-core-features" (C1) distinct from "how-do-we-measure-post-relaunch-success" (C9) rather than collapsing them into a single "defining-and-measuring-value" mega-cluster. Both are large (12 questions each) and genuinely different in temporal register. This is the **most topic-specific cell calibration** for mobile-app/medium — no other sampled cell has this pre-commit-vs-post-commit temporal distinction issue.

3. **C5 compaction is unusually tight (3.50, highest in the cell):** SP1 should be told that 7 source questions in C5 compact cleanly to 2 outputs via the tech-debt-of-removal merge (CG10) and the unit-economics-and-runway merge (CG11). Variants that produce more than 3 C5 outputs likely fragmented cleanly-mergable analytical-cost content; variants that produce 1 C5 output likely collapsed the analytical-cost content into a strategic-approach output, losing the cost-quantification scaffolding.

**Confidence: moderately high for this cell.** mobile-app/medium lacks the regulatory/legal specialization of youth-mentorship/medium (no Lawyer) and the financial specialization of food-truck/medium (no Accountant), making it a simpler 6-Synthesize-persona cell. The main complexities are AA's 4-cluster spread and ST's archetype vocabulary across 6 clusters. Both are well-addressed by the preservation instructions. The C1/C9 distinction is the most topic-specific SP1 calibration.

**Caveat (shared across BL1 cells so far):** Flat-pooling recommendation is now supported by five cells (space-party/low, food-truck/low, food-truck/medium, youth-mentorship/medium, and now mobile-app/medium). The recommendation holds at both lower Synthesize volume (78 questions here) and higher volume (94 questions in youth-mentorship/medium) with no visible quality degradation. Cross-effort pattern: flat pooling benefits increase with persona count and convergence density; mobile-app/medium's 6-persona / 67%-density configuration is near the "simpler end" of the spectrum where flat pooling is uncontroversial. The stronger validation comes from higher-complexity cells.

---

## 5. GT1 Watchlist Status

**mobile-app / medium is NOT on the GT1 watchlist. Connector is used (not Analogist).** TDA1 §5.1 lists 5 GT1 medium-confidence cells, and mobile-app is not among them:
- tool-library / medium (Politician)
- food-truck / high (Accountant + Politician)
- property-management / high (Lawyer + Accountant, alt: Politician)
- youth-mentorship / high (Lawyer + Politician, alt: Lawyer only)
- school-consolidation / medium (Politician primary, Accountant strong — tiebreaker)

mobile-app/**medium** is a canonical, high-confidence cell:
- **No Tier 3 Synthesize persona** — the topic does not trigger Lawyer (no regulatory-compliance exposure despite "user data"), Accountant (no financial-structure primacy despite 8-month runway), Technical Expert (no genuine engineering-tradeoff content — architectural concerns fall inside Analyst/ST), or Politician (no stakeholder-politics or institutional-change). This is an unambiguous no-Tier-3-Synth call. Not medium-confidence.
- **Connector replaces Analogist per GT1 Rev 3** — mobile-app is an inter-domain topic bridging fitness + behavioral psychology + product strategy + community design per R7 criteria. The swap is well-justified by the source data (Connector's non-pure-import mode activates on ~75% of questions — 2 structural-isomorphism, 2 biological/linguistic isomorphism, 2 behavioral-economics / institutional-curation cross-domain imports, 1 paradigm-metaphor-choice, 1 entropy-as-isomorphism). Not medium-confidence; the swap applies at all effort levels per R7's topic-level-property framing.
- **No Politician triggered at any effort** — mobile-app/high does not add Politician per GT1 Rev 3. The medium roster correctly excludes Politician.

**Interpretation for SP1:** If SP1 produces anomalous scores on this cell, the cause is in the synthesis prompt, not in upstream persona-roster ambiguity. mobile-app/medium can serve as a **control cell** for comparing against Tier-3-containing cells — if SP1 scores similarly on mobile-app/medium (no Tier 3) and food-truck/medium (Accountant) and youth-mentorship/medium (Lawyer), the synthesis prompt's voice-preservation mechanism is robust; if scores diverge, the divergence is attributable to Tier-3 regulatory/financial-specificity-preservation capability rather than to base synthesis competence.

**Secondary control-cell application:** Because mobile-app/medium has the cleanest Synthesize-persona configuration (6 Tier 1 personas + Connector swap, no Tier 3), it is the best cross-topic **base-case reference** for evaluating how SP1 variants handle:
- Flat vs. clustered pooling (should be low-variance here)
- AA's structural-equity voice preservation across multiple clusters (4 clusters here — a moderate span)
- ST's archetype vocabulary distributed across 6 clusters (no single concentration — a broad-coverage test)
- AI's strengths-based voice competing against analytical content (5 clusters where AI contributes — a broad-coverage test)
- C1 / C9 temporal-distinction preservation (the cell-specific topic axis)
- Connector-replacing-Analogist Append mechanics on an inter-domain topic (a validation test for R7)

---

## 6. Open Concerns for Cross-Topic Synthesis

Items that may matter when BL1 results across all 10 topics are aggregated and compared:

1. **Visionary paradigm-framing drops via Append quota — third consecutive instance.** mobile-app/medium drops Visionary Q5 (no-features / single-button) and Q6 (47-second-session-as-product) via round-robin. Food-truck/medium dropped Visionary Q6 (antifragile architecture). Youth-mentorship/medium dropped Visionary Q6 (20-year generational frame) and Q7 (catalyst-for-obsolescence). **This is the third medium-effort cell showing Visionary's distinctive paradigm-challenges drop via source-order tiebreak.** Cross-topic BL1 synthesis should rigorously investigate whether Visionary's source-order-middle positions (Q5, Q6, Q7) systematically produce the most paradigm-distinctive questions — if so, the deterministic source-order tiebreak rule is biased against Visionary's distinctive contributions. Candidate for D1 revision favoring "highest-paradigm-distinction" tiebreak heuristic for Visionary specifically.

2. **Cluster size balance as a topic-type indicator.** mobile-app/medium has a balanced cluster-size profile (12, 12, 9, 9, 8, 8, 7, 7, 6) with no mega-cluster. youth-mentorship/medium has a skewed profile (27, 10, 10, 10, 9, 8, 8, 6, 6) with a mega-cluster. food-truck/medium likely falls between (C1 Financial at 17, with other clusters in 6-12 range). Cross-topic BL1 should check whether the mega-cluster pattern correlates with topic type (program-design vs. product-strategy vs. business-operations) — if mega-clusters appear consistently on social-program topics and not on product topics, SP1 prompts may need topic-type-adjusted cluster-count expectations.

3. **C1 / C9 temporal-distinction as a product-strategy-topic marker.** mobile-app/medium has two large "what matters" clusters at different temporal layers (pre-commit C1 = core-value-identification; post-commit C9 = post-launch-validation). Cross-topic BL1 should check whether other product-strategy topics (wearable-device/medium, career-change/medium) produce similar pre-commit / post-commit structural splits. If the pattern generalizes, SP1 may need explicit temporal-distinction preservation instructions for product-strategy topics.

4. **Absence of Tier 3 Synthesize as a simpler scoring baseline.** mobile-app/medium is the first sampled cell with no Tier 3 Synthesize persona. Cross-topic BL1 should check whether SP1 scoring is systematically higher / more consistent on no-Tier-3-Synth cells than on Tier-3-containing cells. If yes, the Tier 3 vocabulary-preservation burden is a measurable contributor to SP1 variant difficulty. This provides a control-cell calibration for measuring Tier 3 impact.

5. **C5 minimally-bridged by Append.** mobile-app/medium's C5 (Tech Debt / Runway) receives only 1 Append bridge — the lowest observed across sampled cells. Cross-topic BL1 should check whether this is topic-specific (engineering-cost-math genuinely resists paradigm-challenging) or a general pattern for analytical-heavy clusters (Analyst-dominated clusters receive fewer Append bridges than AA-dominated or ST-dominated clusters). If general, this affects the SP1 "Append adds lateral value to all clusters" scoring assumption.

6. **Connector mixed-mode activation pattern on product-strategy topics.** mobile-app/medium shows 75% non-pure-import Connector activation — including 2 biological/linguistic isomorphisms, 2 behavioral-economics/institutional-curation imports, and 1 paradigm-metaphor-choice. This is a different activation-mode mix from youth-mentorship/medium (50% structural-isomorphism, 29% recombinant, 14% cross-domain-import). Cross-topic BL1 should verify whether Connector produces different activation-mode mixes on product-strategy topics (mobile-app, wearable-device, career-change) vs. social-program topics (youth-mentorship, school-consolidation). If systematic, R7's prediction framework could be refined with topic-type-specific activation-mode profiles.

7. **Connector's 8-question source vs. Storyteller's 7-question source (cross-topic volume variance).** mobile-app/medium's Connector produces 8 questions; youth-mentorship/medium's Connector produces 7; other Append personas produce 6-7. Cross-topic BL1 should check whether Connector's volume varies systematically by topic type — the R7 finding noted "Volume 7-8 (mean 7.7), exactly 3 clusters, zero filler" — and whether 8-question topics activate more cross-domain breadth (bringing more source-domain families into play).

8. **AA cluster-span correlates with topic stakeholder-complexity.** AA spans 4 clusters in mobile-app/medium (commercial product with users), 5 clusters in food-truck/medium (commercial business with community access), 5-7 clusters in youth-mentorship/medium (vulnerable-population social program). The pattern: AA cluster-span scales with stakeholder-vulnerability and system-complexity. Cross-topic BL1 should verify this scaling — if AA consistently spans fewer clusters on commercial/product topics and more clusters on community/vulnerable-population topics, AA's floor may need topic-type-adjusted calibration.

9. **Strategic+Human-centered share relationship inverts by topic type.** mobile-app/medium: 45% Strategic + 24% Human-centered = 69%. youth-mentorship/medium: 38% Strategic + 35% Human-centered = 73%. food-truck/medium: 36% + 28% = 64%. The Strategic + Human-centered combined is similar (64-73%) but the balance inverts: mobile-app is Strategic-heavy (strategic-choice topic); youth-mentorship is Human-centered-heavy (vulnerable-population-serving); food-truck is more balanced. Cross-topic BL1 should check whether this Strategic/Human-centered balance-by-topic-type pattern is a reliable topic-classifier.

10. **"Preserve-all-distinct" convergences as scoring ambiguity.** CG8 splits to 2 merges (incremental-vs-relaunch strategic choice vs. one-feature-at-a-time experimentation). CG9 splits to 2 merges (churn modeling vs. graceful migration). CG14 splits to 2 merges (defensive-attachment DA/ST vs. positive-vision AI). CG15 splits to 2 merges (dashboard-architecture vs. metric-pathology). These 4 preserve-all-distinct patterns are defensible but could reasonably go the other way. **SP1 scoring should be tolerant of different-choice variants** — a variant that merges CG8 into a single "simplification approach" question should score as "over-aggressive compaction" but not "incorrect." The preserve-all-distinct judgments need explicit scoring-tolerance annotations. This is shared with food-truck/medium and youth-mentorship/medium preserve-all-distinct judgments — cross-cell calibration of "merge vs. preserve-distinct" scoring tolerance is warranted.

11. **AI as sole carrier of Creative dimension (10%, highest in sampled cells).** mobile-app/medium is the first cell where AI has room to contribute its full 3-output Creative dimension (no regulatory/financial crowding). Cross-topic BL1 should check whether Creative dimension share varies inversely with Tier 3 Synthesize presence — if no-Tier-3 cells consistently produce 10% Creative and Tier-3 cells produce 6-9%, the Creative-dimension metric is a proxy for cognitive-space-available-for-strengths-based-framing. This may inform the AI floor scaling across topic types.

12. **Mobile-app-specific content: the "is this a fitness app at all" category-pivot question.** CG5 merges Questioner Q2+Q3+Q4+Q10, producing a "what-job-are-users-hiring / are-we-a-fitness-app / what-adjacent-category-might-we-actually-be" output. This is a cell-distinctive output that may not have direct analog in other cells. Cross-topic BL1 should check whether other product-strategy topics produce similar category-pivot questions; if the pattern is cell-specific, SP1 variants that don't preserve this output will score as "topic-adaptive weakness" on mobile-app/medium.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (mobile-app / medium cell)

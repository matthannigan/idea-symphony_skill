# BL1 — Baseline Establishment: career-change / medium

**Date:** 2026-04-18
**Author:** BL1 subagent (career-change / medium cell)
**Scope:** One cell of the Phase 2C BL1 baseline pass — baseline reference for SP1 variant scoring of the synthesis prompt on career-change at medium effort.
**Companion baseline files:**
- `baselines/career-change_medium_clusters.md` (B1)
- `baselines/career-change_medium_convergence.md` (B2)
- `baselines/career-change_medium_target.md` (B3)
- `baselines/career-change_medium_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**

| Metric | Value |
|---|---|
| Total source questions (N) | 111 |
| Synthesize-group questions | 82 (6 of 10 personas) |
| Append-group available (A_available) | 29 |
| Synthesize personas | 6 — Analyst (15), Appreciative Inquirer (12), Audience Advocate (15), Devil's Advocate (10), Questioner (15), Systems Thinker (15). **No Tier 3 Synthesize persona.** |
| Append personas | 4 — Provocateur (7), Storyteller (7), Visionary (7), **Connector (8)** *(Connector replaces Analogist per GT1 Rev 3)* |
| Natural cluster count (C) | 9 |
| Convergence groups (P) | 14 |
| Questions in convergence (Q) | 58 of 82 (71%) |
| Convergence density | **71%** (highest among sampled BL1 medium-effort cells) |
| Synthesized output target (M) | 30 (range 27-33) |
| Compaction ratio | 82 / 30 = 2.73 (range 2.5-3.0) |
| Append quota (A_quota) | 20 (4 Perspective personas × 5, no Politician) |
| Final total output | 50 (range 47-53) |

**Topic profile:** A personal-decision / cross-domain-reconciliation topic — a 32-year-old ICU nurse with 8 years' experience and 2 years' refugee-resettlement volunteering considering leaving nursing ($82K/yr salary, potential $95-110K senior) to pursue a JD for public-interest immigration law ($50-75K projected), financed by $45K savings + $22K existing nursing loans + $160K+ projected JD debt, over a 3-year law school + bar + 3-year entry-level trajectory. Per the persona-selection-guide topic-affinity hints, this profile triggers: **complex systems with many interacting elements** (Systems Thinker core; Analyst core); **user-facing / community / service design** (Audience Advocate core anchored on immigrant-refugee communities; Storyteller core); **entrenched assumptions / rethinking fundamentals** (Devil's Advocate and Provocateur core); **novel/ambiguous / cross-domain reconciliation** (**Connector replaces Analogist** — career-change is the archetypal Connector-swap example in the persona-selection-guide: "Examples: career transitions across fields"). The medium-effort roster aligns: all 10 Tier 1 personas (minus Analogist, swapped for Connector) with no Tier 2 or Tier 3 additions. Notably the persona-selection-guide explicitly identifies career-change as a **partial false positive for Lawyer** ("the persona responds to the keyword 'lawyer' and produces a regulatory implementation guide rather than decision-exploration questions") and a **clear false positive for Technical Expert** ("engineering metaphors become a cognitive cage on non-technical topics (e.g., career-change 'legacy code,' 'system rewrites')"). Both exclusions correctly apply to this cell.

**Why this cell is a clean high-confidence BL1 cell:**
- **NOT on the GT1 watchlist** (career-change/medium is a canonical, high-confidence GT1 cell per TDA1 §5.1).
- No shortfalls per TDA1.
- No missing slots.
- **No Tier 3 Synthesize persona** — no Lawyer / Accountant / Technical Expert / Politician. The persona-selection-guide explicitly documents career-change as a false-positive case for Lawyer and Technical Expert; Accountant and Politician also do not trigger (no business-model / revenue-model structure for Accountant; no governance / coalition / institutional change for Politician).
- Connector swap explicitly justified in the persona-selection-guide ("career transitions across fields" is the paradigmatic example).
- Every persona contributes a meaningful spread of questions with no compounding or filler pathologies.
- The 9-cluster natural structure is stable under both per-persona clustering (Pass A) and flat pooling (Pass B).
- Convergence density at 71% is the highest among sampled medium-effort cells — reflecting the single-decider / concentrated-decision topic structure where 6 personas all probe the same person's decision from different angles.

**Structural characteristics:**
- **Uneven cluster-size profile.** C1 (Financial Viability) at 14 questions is the densest cluster; C4 (Hybrid Models) at 13 is near-large; C3 (Unique Value Proposition) at 11 and C2 (Calling vs. Escape) at 10 are mid-tier; C6 (Decision Criteria), C7 (Community-Centered), and C8 (Burnout Profile) at 8 each are moderate; C5 (Experimentation) and C9 (Age/Identity) at 5 each are small.
- **AA's 8-question concentration in C7 is the structural feature of this cell.** Unlike mobile-app/medium where AA's 14 questions distributed across 4 clusters (no single-cluster concentration), career-change/medium's AA concentrates heavily (8 of 15 questions) in the community-centered C7 cluster — making C7 a single-persona-dominant cluster. This is unusual in medium-effort cells and represents a genuine cell-specific SP1 preservation concern (AA's 8 C7 questions must not collapse into a single "user research" voice).
- **High Human-centered share with tight Strategic balance.** 33% Strategic + 33% Human-centered target balance — neither dominates. The Human-centered share is high because AA's 15 questions (concentrated in C7 + spanning C1/C2/C3/C6/C8) plus AI's 12 questions (spread across C1/C2/C3/C4/C5/C6/C8) plus Questioner + ST human-centered cross-overs create a broad human-centered footprint.
- **Analytical at 17% — higher than mobile-app/medium (14%) and youth-mentorship/medium (12%).** Driven by C1's 14-question financial-math density. The topic has an acutely quantified financial core ($45K savings, $82K foregone, $291K shortfall, $65-75K PI salary, 7-year ramp, $160K+ JD debt) that reads as analytical-math.

**How career-change/medium differs from other sampled medium-effort BL1 reference cells:**

| Dimension | food-truck/medium | youth-mentorship/medium | mobile-app/medium | career-change/medium | Notes |
|---|---|---|---|---|---|
| Total questions | 122 | 121 | 107 | 111 | mid-range |
| Synthesize questions | 93 | 94 | 78 | 82 | mid-range |
| Append available | 29 | 27 | 29 | 29 | Connector at 8 |
| Append quota | 20 | 20 | 20 | 20 | D1 medium: 5 × 4 |
| Clusters | 9 | 9 | 9 | 9 | Matched |
| Convergence density | 68% | 70% | 67% | **71%** | career-change highest |
| Synthesized output M | 33 | 34 | 29 | 30 | mid-range |
| Compaction | 2.82 | 2.76 | 2.69 | 2.73 | mid-range |
| Strategic % | 36% | 38% | 45% | **33%** | career-change **lowest Strategic share** |
| Human-centered % | 28% | 35% | 24% | **33%** | career-change tied-highest (with youth-mentorship) |
| Analytical % | 15% | 12% | 14% | **17%** | career-change **highest Analytical share** — C1 financial density |
| Creative % | 9% | 6% | 10% | 10% | career-change matches mobile-app |
| Tactical % | 12% | 9% | 7% | 7% | matches mobile-app |
| Tier 3 Synthesize | Accountant | Lawyer | **None** | **None** | two no-Tier-3-Synth cells |
| Tier 3 Append | — | — | — | — | None in any |
| Perspective-slot swap | Analogist (default) | **Connector** (swap) | **Connector** (swap) | **Connector** (swap) | career-change = paradigmatic swap |
| Mega-cluster outlier | None | **C9 = 27 questions** | None | None | career-change balanced |
| Dominant-cluster single-persona concentration | — | — | — | **AA 8 of 8 in C7** | career-change cell-specific feature |
| Dropped questions (synth) | ~5 | ~7 | ~4-5 | ~4-5 | similar to mobile-app |
| Append drop rate | ~28% | 26% | 31% | 31% | matches mobile-app |

**The most structurally distinctive features of this cell:**
1. **AA's single-cluster concentration in C7** — 8 of 15 AA questions in the community-centered cluster is unusual in medium-effort cells and creates a specific preservation concern (distributing AA's C7 questions into other clusters would collapse the community-centered voice that defines this cell's Human-centered signal).
2. **Highest convergence density at 71%** — a function of the single-decider / concentrated-decision topic structure where 6 personas interrogate the same person's decision from different angles.
3. **Highest Analytical share at 17%** — driven by C1's 14-question financial-math concentration. The topic has the most acutely-quantified financial dimension of any sampled cell.
4. **Lowest Strategic share at 33%** — balanced against Human-centered (33%) rather than dominating. The topic lacks the "which strategic-approach" / "which framework to deploy" content that drives mobile-app/medium's 45% Strategic.
5. **Paradigmatic Connector-swap topic** — career-change is the first example in the persona-selection-guide's Connector swap-trigger section ("career transitions across fields"). Connector non-pure-import activation rate is ~88% (highest sampled) — 7 of 8 questions are structural-isomorphism / recombinant / ecological-isomorphism / system-design cross-imports.

---

## 2. Persona Representation Challenges

The synthesizer must navigate **six significant representation tensions** in this cell:

**Tension A — AA's C7 concentration and 5-cluster cross-span.** AA carries 15 questions with 8 concentrated in C7 (community-centered: non-legal needs, service-with-dignity, unarticulated needs, power dynamics, cultural bridges, authentic partnership, identity-crossing, who-falls-through-cracks) plus 7 more across C1 (Q12 $45K-stress-affects-client-presence), C2 (Q6 burnout-vs-calling), C3 (Q15 leveraging-healthcare-credibility), C6 (Q13 "crazy"-reframed-from-immigrant-perspective), C8 (Q8 trauma-stewardship, Q9 law-school-distance, Q14 sustainable-advocacy-warning-signs). AA is the sole carrier of structural-equity / community-centered / cultural-bridge / authentic-partnership / identity-crossing / trauma-stewardship framings — the cell's distinguishing Human-centered signal. **SP1 risk:** a synthesizer may collapse AA's C7 concentration into 1 output rather than preserving 2-3 distinct CG10 outputs (Q A lived-experience + Q B power/partnership/identity). The B3 AA floor is 8 (highest in cell) — explicitly reflecting this preservation burden. If AA drops below 8, the Community-Centered voice is silenced, which is catastrophic for this cell.

**Tension B — Systems Thinker's archetype vocabulary across 7 clusters.** ST produces 15 questions with 4 primary-assigned to C4 (erosion-of-goals, leverage-point, system-boundary, alternative-configurations) and 4 to C9 (identity-reinforcement-loop, competence-reinforcement-cycle, second-order-career-consequences, reversible-system-design) — the two largest ST concentrations — plus 1 each in C1 (financial-feedback-dynamics), C2 (Shifting-the-Burden + burnout-transfer), C5 (delay-effects, system-viability-probe), C6 (opportunity-cost-feedback-loop, success-metric-evolution), C8 (burnout-transfer-pattern). ST spans 7 of 9 clusters — the widest ST spread in any sampled BL1 cell. **SP1 risk:** the ST archetype vocabulary must survive in merges rather than being normalized as "generic career-transition concerns." The preservation check specifically requires at least 4 ST archetypes surviving. The most at-risk archetypes are Shifting-the-Burden (C2 — if CG4 Q C collapses into CG4 Q A, the archetype framing loses), erosion-of-goals (C4 — if CG7 Q C collapses into Q A, corporate-drift framing loses), identity-reinforcement-loop (C9 — if CG12 collapses into CG13, internal-psychology framing loses), and reversible-system-design (C9 — same risk).

**Tension C — AI's strengths-based framing as sole Creative carrier.** AI generates 12 questions; the B3 target of 7 with floor 5 explicitly requires preserving strengths-based framings across C2 (peak moments), C3 (transferable gifts-in-action, hidden assets), C4 (thriving intersection, bridge-building pathway), C5 (low-stakes experiments, absorbed into CG8), C6 (ripple effects, best-case ecosystem, existing resources — bundled), C8 (sustaining commitment, sustainable advocates — CG11 Q B), and C1 (financial architecture). AI is the sole carrier of the Creative dimension (10%). **SP1 risk:** analytical/risk dominance (Analyst 15 + DA 10 + ST 15 = 40 questions of analytical/failure-mode content vs. AI's 12 strengths-based) may absorb AI's questions as cross-references rather than standalone outputs. The most at-risk AI questions are Q1 peak-moments (could be absorbed into CG4 motivation-validation merge rather than preserved as standalone C2 positive-signal), Q6 ripple-effects and Q7 best-case-ecosystem (could be absorbed into CG9 decision-criteria-and-success-metric-evolution merge rather than preserved as C6 AI-bundle), and Q3+Q8 sustaining-commitment + sustainable-advocates (preserved in CG11 Q B but at risk of collapsing into CG11 Q A burnout-comparison).

**Tension D — DA's failure-mode critique across financial / motivation / alternatives.** DA generates 10 questions distributed across C1 (3 questions on debt / age-compounded / funding-volatility), C2 (3 questions on calling-validation / romanticized-fantasy / burnout-transfer — absorbed into CG4's 3 preserve-distinct merges), C3 (1 question on transferability-assumption — CG6), C8 (1 on secondary-trauma — CG11 Q A), C4 (2 on healthcare-adjacent-alternatives and low-risk-legal-exposure — CG7 Q A and Q C). DA is the primary risk-discovery voice; 9 of 10 DA questions land in merges. **SP1 risk:** aggressive merging could absorb DA's distinctive failure-mode vocabulary (romanticized helping fantasy, trading burnout for burnout, nursing-skills-transferability-assumption, secondary-trauma-amplification) into generic "validate-your-assumptions" language, losing DA's specific register.

**Tension E — Questioner's 6-cluster spread and meta-question function.** Questioner generates 15 questions covering 6 of 9 clusters (C1, C2, C3, C4, C5, C9) — the widest-span persona in this cell. Questioner has its heaviest concentration in C4 (4 questions: integrate-into-nursing, less-expensive-paths, nurse-advocate-partnership, hospital-legal-advocate). **SP1 risk:** Questioner's meta-question widening function can absorb into Analyst's analytical voice in merges (especially CG5 value-proposition merge where Questioner Q10 ICU-translates-to-immigration-law could be read as identical to Analyst Q5 unique-value-proposition). Preservation of Questioner's question-reframing register (e.g., "what if we assumed nursing was actually an asset" rather than "here's the nursing-to-law skill transfer analysis") matters for SP1's ability to maintain the widening-problem-framing function.

**Tension F — C7 community-centered preservation and C2/C8 + C3/C4 preserve-distinct boundaries.** Three structural preservation decisions:
- **C7 preservation:** AA's 8 concentrated C7 questions should produce 2-3 distinct outputs (CG10 Q A lived-experience + CG10 Q B power/partnership/identity + optional 3rd). Collapsing to 1 output silences the community-centered voice.
- **C2/C8 preserve-distinct:** C2 (calling-vs-escape motivation-diagnosis) is a pre-commitment diagnostic question; C8 (burnout-profile long-term-sustainability) is a long-horizon sustainability question. Collapsing into a single "motivation-and-sustainability" mega-cluster loses the temporal-layer distinction.
- **C3/C4 preserve-distinct:** C3 (unique-value-prop within a full-JD path) is about positioning; C4 (hybrid-role-design that isn't a full-JD path) is about designing a different path. Both contain "how does nursing contribute" content — collapsing loses the positioning-vs-path-design distinction.

The three preserve-distinct decisions together define this cell's SP1-calibration test.

---

## 3. Append Mechanics Observations

**Round-robin works cleanly at medium effort.** All 4 Append personas exhibit clean 3-cluster internal structure consistent with the persona-selection-guide's "universal 3-cluster structure" claim and R7's confirmation that Connector "inherits Analogist's append mechanics cleanly: same 3-cluster structure, same self-containment, same round-robin compatibility." The medium-effort quota of 5 per persona captures 5 of 5-8 questions per persona.

**Drop rate is 31% (matches mobile-app/medium).** Driven by Connector's 8-question source — quota 5 of 8 = 63% retention (vs. typical 71%), adding 1 extra drop. Consistent with the 25-35% range observed across medium-effort cells.

**Tie-breaking biases toward lower-indexed clusters and lower-numbered source questions.** The deterministic source-order rule applied throughout. This reproducibility across SP1 runs systematically drops particular questions:

- **Visionary Q6 drops** (upstream-vs-downstream causal-level work — immigration law and ICU nursing both operate downstream; working upstream on the conditions creating refugees / medical trauma / legal precarity) — **arguably the most distinctive "category-pivot-out-of-the-career-change-frame" paradigm-challenge in the career-change Append pool.** Lost to Q5 (burnout-pointing-toward-systems-design) in V-C source-order tiebreak. **This is the fourth consecutive medium-effort cell where Visionary's most-distinctive paradigm-challenge drops via source-order tiebreak** (food-truck/medium Q6 antifragile; youth-mentorship/medium Q6 generational + Q7 catalyst-for-obsolescence; mobile-app/medium Q5 no-features + Q6 47-second-session-as-product; career-change/medium Q6 upstream-causal-level). Strongly recommending D1 revision favoring "highest-paradigm-distinction" heuristic for Visionary specifically.

- **Visionary Q7 drops** (accumulated experience as categorically different from "expertise" — 8 years ICU + refugee advocacy as foundation for practice at health-policy / immigration-justice / systems-design intersection). Distinctive meta-reframing of "expertise" vs. "vantage." Lost to Q1 and Q2 in V-A source-order tiebreak. Acceptable loss — V-A Q1 (medical-legal navigator) and Q2 (immigrant-health-justice) cover adjacent new-professional-role territory.

- **Connector Q6 drops** (3-year income gap as VC investment round — currency including money + network + skill + credentialing; compounding-value-of-legal-career vs. diminishing-returns-of-bedside-nursing-with-burnout) — **the single most distinctive Connector reframing for the financial-viability axis of this topic.** Explicitly inverts the default deficit-math frame. **No synthesized output captures this upside-compounding reframe** — CG1 Q A is deterministic-deficit-math, CG1 Q B is system-dynamics, CG2 is opportunity-cost-compounding-as-loss. The VC-upside-compounding reframing is unique to Append and drops. **Flag strongly — this is a cell-specific loss.**

- **Connector Q8 drops** (age 32 as ecological mid-succession species — creating conditions for late-succession species to thrive; ecosystem advantages for entering law with established credibility / life experience / track record that 22-year-olds cannot replicate). Distinctive ecological-isomorphism bridge to C9 that inverts the default age-as-deficit framing. Lost to Q7 (burnout-as-information) in C-C source-order tiebreak. Partial coverage via ST Q10 (doors-closing-vs-doors-opening) in synthesized C9, but ST Q10 operates in individual-career-calculus frame while Q8 is ecological-ecosystem frame. **Cell-specific loss for C9**, where the small (5-question) cluster relies heavily on ST archetypes and Q8's ecology-as-frame drops.

- **Connector Q4 drops** (translator's advantage — clinical-medical + lived-immigrant languages that rarely intersect; medical evidence central to asylum / waiver / crime-victim cases). Distinctive structural-isomorphism bridge to C3 and C4. Lost to Q2 and Q3 in C-A source-order tiebreak. Partial coverage via retained Q3 (structural-advocacy parallels).

- **Storyteller Q4 drops** (40-year-old reunion dinner with former nursing colleagues — home-buying / advancing vs. PI-attorney at $60-70K with student loans). **The most topic-specific Storyteller scene directly addressing the life-trajectory-gap at 40** that both C1 and C9 anchor on. Lost to Q1 and Q3 in S-B source-order tiebreak. Partial coverage via Questioner Q14 (imagined-self-at-35-40-45) in synthesized C9, but the visceral reunion-dinner scene with sensory detail is a distinctive Storyteller contribution that drops.

- **Storyteller Q7 drops** (60-year-old on porch retrospective — young person asking "was it worth it"; specific moments to replay). Distinctive retrospective-narrative frame. Lost to Q5 (detention-center) in S-C source-order tiebreak. Partial coverage via AI Q6/Q7 (ripple-effects / best-case-ecosystem) in synthesized C6 bundle.

- **Provocateur Q4 and Q7 drop.** Q4 (doing both simultaneously badly on purpose) lost to Q3 in P-B; Q7 (careers escaping you / field pushing you out) lost to Q5 and Q6 in P-C. Both distinctive inversions but both have retained adjacent Provocateur coverage.

**Cross-cluster bridging is exceptional for C3 (Unique Value Proposition).** C3 receives 7 Append bridges — the densest-bridged cluster in this cell. This reflects that the nursing-to-law skill-transfer axis is highly paradigm-accessible — every Append persona has something distinctive to say about what's transferable. Append adds substantial lateral value to C3 via 7 distinct framings (Connector's cognitive-parallels Q2 and structural-advocacy-parallels Q3, Provocateur's ICU-as-weapon Q5, Storyteller's immigrant-patient-origin-scene Q2 / detention-center-walk-in Q5 / origin-story-to-judge Q6, Visionary's medical-legal-navigator Q1).

**C5 (Experimentation) receives zero Append bridges.** This is the cluster-level outlier — low paradigm-accessibility for Visionary/Storyteller/Connector because the experimentation content is tactical-methodology-specific. Parallel to mobile-app/medium's C5 (Tech Debt / Runway) which received only 1 Append bridge. The pattern suggests that tactical/analytical-methodology clusters are systematically less paradigm-accessible than strategic/experiential clusters.

**C1 (Financial) receives only 1 Append bridge (Storyteller Q3 day-in-life)** — unusually low, reflecting (a) the analytical-financial-math nature of C1 and (b) the loss of Connector Q6 (VC-investment-round) to round-robin. The one Connector question that would have been a distinctive C1 bridge drops — leaving C1 without paradigm-challenging / isomorphism framings in the Append pool.

**No Politician Append-All complication.** career-change/medium's Tier 3 is Connector only (Append swap for Analogist), no other Tier 3 Append persona. SP1 scoring mechanics are straightforward.

**Connector activation pattern highest-sampled.** R7 predicted Connector activates strongly on inter-domain topics. career-change is the paradigmatic inter-domain-reconciliation topic, and Connector's non-pure-import activation rate is ~88% (7 of 8 questions are structural-isomorphism / recombinant / biological/ecological isomorphism / system-design cross-imports). Validates R7's strongest predictions.

---

## 4. C1 Recommendation

C1 (clustering vs. flat pooling) was tested in Pass A (per-persona-internal clustering preserved) vs. Pass B (flat pooling of all 82 Synthesize questions). Both passes produce the same 9 clusters with marginal boundary differences on 10-14 borderline questions (documented in B1 §Ambiguous Assignments).

**Recommendation: flat pooling for SP1 prompts, with four additive instructions specific to this cell.**

With 82 questions and 6 personas at medium effort, flat pooling produces equivalent cluster quality with a simpler synthesis prompt. Four caveats specific to career-change/medium:

1. **Preserve four persona-distinctive vocabulary families:**
   - **Audience Advocate's community-centered structural-equity framings** (non-legal needs accompanying legal cases, service-with-dignity, unarticulated needs communities struggle with silently, power dynamics / voice-excluded, cultural bridges / language / institutional mistrust, authentic partnership / deciding-with-not-for, identity-crossing insider-to-outsider, who-falls-through-cracks, $45K-stress-affects-client-presence, "crazy"-reframed-through-immigrant-perspective, sustainable-advocacy warning-signs, trauma-stewardship, leveraging-healthcare-credibility) — the cell's distinguishing Human-centered signal, concentrated in C7 (8 questions).
   - **Systems Thinker's system archetypes** (Shifting-the-Burden symptom-vs-root-cause, Success-to-the-Successful corporate-drift, erosion-of-goals, leverage-point-identification, system-boundary-analysis-of-healthcare-legal-intersection, alternative-system-configurations, identity-reinforcement-loop, competence-reinforcement-cycle, delay-effects-leading-indicators, second-order-career-consequences, reversible-system-design, opportunity-cost-feedback-loop, system-viability-probe, success-metric-evolution, financial-feedback-dynamics, burnout-transfer-pattern) — distinctive content, not structural markup; especially Shifting-the-Burden (C2), erosion-of-goals + leverage-point (C4), identity-reinforcement-loop + reversible-system-design (C9).
   - **Appreciative Inquirer's strengths-based framings** (peak moments of impact, transferable gifts in action, sustaining commitment, hidden assets, thriving intersection, ripple effects of alignment, best-case ecosystem, sustainable advocates, financial architecture for purpose, bridge-building pathway, low-stakes experiments, existing resources for the journey) — countered by dominant analytical/risk content. AI is the sole carrier of the Creative dimension (10%).
   - **Devil's Advocate's failure-mode framings** (debt reality vs. PI salary, age-compounded opportunity cost / 7-year ramp, public-interest funding volatility, calling-vs-escape validation, romanticized helping fantasy, nursing-skills-transferability verification, trading burnout for burnout, secondary-trauma amplification, healthcare-adjacent alternatives, low-risk legal exposure test) — covers financial reality, motivation validation, skill-transferability verification, burnout-transfer risk, alternative-path rigor.

2. **C7 community-centered cluster-preservation:** SP1 should be told to preserve AA's C7 concentration (8 questions) as a distinct cluster with 2-3 outputs, rather than distributing AA's community-perspective questions across other clusters (which would lose the cell's defining human-centered orientation). This is the single most catastrophic failure mode for this cell.

3. **C2 / C8 preserve-distinct:** SP1 should be told to keep "calling-vs-escape motivation-interrogation" (C2) distinct from "burnout-profile-and-long-term-sustainability" (C8) rather than collapsing them into a single "motivation-and-sustainability" output. C2 is a pre-commitment diagnostic; C8 is a long-term sustainability modeling question. Both are structurally cross-persona (6 in C2, 5 in C8) and genuinely different in temporal layer.

4. **C3 / C4 preserve-distinct:** SP1 should be told to keep "unique-value-proposition within a full-JD path" (C3) distinct from "hybrid-role-design that isn't a full-JD path" (C4). Both contain "how does nursing contribute" content but C3 is positioning-within-proposed-path while C4 is designing-a-different-path.

**Confidence: moderately high for this cell.** career-change/medium has clean 6-Synthesize-persona configuration (no Tier 3), a high-density Analytical cluster (C1 at 14), a balanced Strategic-Human-centered split (33%/33%), AA's single-persona-dominant C7 concentration, and ST's archetype vocabulary spread across 7 clusters. The main complexities are (a) AA's concentration in C7 creating a scoring risk if distributed wrong, (b) ST's archetype vocabulary spread across 7 clusters, (c) C2/C8 and C3/C4 preserve-distinct decisions, and (d) three CG groups (CG4, CG7, CG11) that preserve three distinct outputs each — the most preserve-distinct structure of any sampled cell. All are addressed by preservation instructions. The C7 cluster-preservation is the most distinctive-to-this-cell SP1 calibration.

**Caveat (shared across BL1 cells so far):** Flat-pooling recommendation is now supported by six cells (space-party/low, food-truck/low, food-truck/medium, youth-mentorship/medium, mobile-app/medium, career-change/medium). The recommendation holds at both lower Synthesize volume (78 questions in mobile-app/medium) and higher volume (94 questions in youth-mentorship/medium) with no visible quality degradation. career-change/medium's 82-question configuration falls mid-range; its 71% convergence density is the highest sampled, providing additional support for flat pooling (high-density topics benefit from flat pooling because convergence structure dominates over per-persona organization).

---

## 5. GT1 Watchlist Status

**career-change / medium is NOT on the GT1 watchlist. Connector is used (not Analogist).** TDA1 §5.1 lists 5 GT1 medium-confidence cells, and career-change is not among them:
- tool-library / medium (Politician)
- food-truck / high (Accountant + Politician)
- property-management / high (Lawyer + Accountant, alt: Politician)
- youth-mentorship / high (Lawyer + Politician, alt: Lawyer only)
- school-consolidation / medium (Politician primary, Accountant strong — tiebreaker)

career-change/**medium** is a canonical, high-confidence cell:
- **No Tier 3 Synthesize persona** — the topic does not trigger Accountant (no business-model / revenue-model / budget structure), Lawyer (explicitly documented false positive — persona responds to the keyword 'lawyer' and produces a regulatory implementation guide rather than decision-exploration questions), Politician (no governance / coalition / institutional-change), or Technical Expert (explicitly documented clear false positive — engineering metaphors become a cognitive cage on non-technical topics). This is an unambiguous no-Tier-3-Synth call. Not medium-confidence.
- **Connector replaces Analogist per GT1 Rev 3** — career-change is the paradigmatic R7 inter-domain reconciliation topic ("career transitions across fields" is the first example in the persona-selection-guide's Connector-swap section). The swap is well-justified by the source data (Connector's non-pure-import mode activates on ~88% of questions — the highest sampled rate). Not medium-confidence; the swap applies at all effort levels per R7's topic-level-property framing.
- **No Politician triggered at any effort** — career-change/high does not add Politician per GT1 Rev 3. The medium roster correctly excludes Politician.

**Interpretation for SP1:** If SP1 produces anomalous scores on this cell, the cause is in the synthesis prompt, not in upstream persona-roster ambiguity. career-change/medium can serve as a **control cell** with two specific distinguishing characteristics: (a) highest sampled Connector activation rate (88% non-pure-import) for validating R7's inter-domain-reconciliation-topic predictions, and (b) single-persona-dominant C7 cluster (AA 8 of 8 questions) for validating that SP1 can preserve single-cluster concentration voices without over-distributing them.

**Secondary control-cell application:** Because career-change/medium has (a) the highest convergence density sampled (71%), (b) the highest Connector activation rate sampled (88%), and (c) the AA-concentration-in-C7 cell-specific feature, it is the best cross-topic **single-decider / cross-domain-reconciliation reference** for evaluating how SP1 variants handle:
- High-convergence-density topics (71% — the density upper bound of the sampled range)
- AA's single-cluster concentration preservation (cell-specific test — does SP1 preserve the C7 community-centered voice or distribute AA questions across other clusters)
- Connector inter-domain-reconciliation-topic activation (the paradigmatic Connector-swap topic)
- C2 / C8 and C3 / C4 preserve-distinct decisions (two additional structural preserve-distinct tests beyond mobile-app/medium's C1/C9 test)
- Three preserve-distinct CGs (CG4, CG7, CG11) each with 3 outputs — the most preserve-distinct structure of any sampled cell
- Analytical dimension preservation (highest Analytical share at 17%, driven by C1's 14-question financial concentration)

---

## 6. Open Concerns for Cross-Topic Synthesis

Items that may matter when BL1 results across all 10 topics are aggregated and compared:

1. **Visionary paradigm-framing drops via Append quota — fourth consecutive instance.** career-change/medium drops Visionary Q6 (upstream-vs-downstream causal-level work) and Q7 (accumulated-experience-as-vantage) via round-robin. The pattern is now documented across food-truck/medium (Q6 antifragile), youth-mentorship/medium (Q6 + Q7), mobile-app/medium (Q5 + Q6), and career-change/medium (Q6 + Q7). **Four of four sampled medium-effort cells show Visionary's source-order-middle paradigm-challenges dropping via source-order tiebreak.** Cross-topic BL1 synthesis should rigorously investigate whether Visionary's source-order-middle positions (Q5-Q7) systematically produce the most paradigm-distinctive questions — if so, the deterministic source-order tiebreak rule is biased against Visionary's distinctive contributions. **Strong candidate for D1 revision** favoring "highest-paradigm-distinction" tiebreak heuristic for Visionary specifically. This pattern now rises to a clear cross-cell structural finding.

2. **Connector Q6 VC-investment-framing lost — first cell-specific "no-synthesized-coverage" financial reframe.** Connector Q6 (3-year income gap as VC investment round; compounding value of legal career vs. diminishing returns of bedside nursing with burnout) would have been the only Append question bridging to C1 (financial) in an upside-compounding register. It drops via round-robin. **No synthesized output captures this reframe** — every C1 output operates in the deficit-math or design-dynamics register. This is a cell-specific Append gap that the round-robin mechanics don't fill. Cross-topic BL1 should check whether other personal-decision topics produce similar single-frame-unique-to-Append losses; if so, the D1 "generate-then-select" mechanism may need "distinctive-frame detection" beyond pure round-robin for specific high-value reframes.

3. **AA single-cluster concentration pattern — first cell with AA 8-of-15 concentration in a single cluster.** career-change/medium's AA concentrates 8 of 15 questions in C7 (community-centered). Other sampled medium-effort cells spread AA across 4-7 clusters. Cross-topic BL1 should check whether AA single-cluster concentration correlates with topic-type (topics where community/vulnerable-population-serving is the central question vs. topics where community is one axis among many). If yes, AA's floor and C7-preservation instructions may need topic-type-adjusted calibration.

4. **Highest convergence density at 71% — correlates with single-decider topic structure.** career-change/medium's 71% convergence density is the highest sampled. The pattern reflects that the topic is a single-person-making-a-single-decision question (6 personas interrogating the same person's decision from different angles), creating heavy cross-persona overlap. Cross-topic BL1 should check whether convergence density scales with topic-structure (single-decider vs. multi-stakeholder vs. system-design). If yes, convergence density becomes a topic-classifier metric.

5. **Three preserve-distinct CGs (CG4, CG7, CG11) at 3 outputs each — the most preserve-distinct structure of any sampled cell.** career-change/medium has three separate CGs each preserving 3 distinct merges: CG4 (motivation-decomposition / romanticized-fantasy / Shifting-the-Burden), CG7 (hybrid-taxonomy / bridge-role-vision / stepwise-drift-protection), CG11 (burnout-comparison / sustainable-practices / trauma-stewardship-plus-community-connection). This is the cell-specific preserve-distinct density. Cross-topic BL1 should check whether preserve-distinct 3-way structure occurs in other cells or is career-change-specific (e.g., does it reflect that career-change questions have genuinely three-layered cognitive modes — deficit-math, process-validation, strengths-based-design — that don't compress cleanly?).

6. **Highest Analytical share at 17% — driven by C1 financial concentration.** Cross-topic BL1 should check whether Analytical share systematically correlates with the quantified-financial-core presence in the topic. career-change has an acutely quantified financial dimension ($45K / $82K / $291K / $65-75K / $160K / 7-year ramp); mobile-app has a softer financial dimension ($45K / 8-month runway); youth-mentorship has none quantified at medium effort. If Analytical share maps to quantified-financial density, this provides a topic-classifier metric.

7. **C5 (Experimentation) receives zero Append bridges — second consecutive cell.** mobile-app/medium's C5 (Tech Debt / Runway) received only 1 Append bridge. career-change/medium's C5 (Experimentation) receives zero. Both are analytical/methodology-specific clusters. Cross-topic BL1 should check whether methodology clusters systematically receive fewer Append bridges — if general, this affects the SP1 "Append adds lateral value to all clusters" scoring assumption.

8. **AA 8-of-15 C7 concentration as high-stakes preservation test.** The risk specific to this cell is that a synthesizer could read AA's 8 C7 questions as "AA asks about the community from multiple angles" and collapse to a single "serve-the-community" output, losing the lived-experience vs. power-partnership vs. cultural-bridges vs. who-falls-through-cracks distinctions. This preserves-distinct failure mode is qualitatively distinct from the AA-across-4-clusters failure mode in mobile-app/medium. Cross-topic BL1 should track AA's preservation-mode across cells.

9. **Paradigmatic Connector-swap topic — 88% non-pure-import activation.** career-change is the first example of "inter-domain reconciliation: bridging systems that constrain each other" in the Connector-swap section. Observed activation rate of 88% non-pure-import (7 of 8 questions are structural-isomorphism / recombinant / ecological-isomorphism / system-design cross-imports) is the highest sampled — validating R7's prediction that career-change is a high-activation topic. Cross-topic BL1 should check whether other swap-trigger topics (youth-mentorship, school-consolidation, mobile-app, wearable-device) show similarly-high activation rates, or whether career-change is a clear outlier as the paradigmatic case.

10. **Storyteller S-B 3-question concentration on near-future-during-transition.** career-change/medium's Storyteller has 3 questions in S-B (near-future life scenes: running-toward-vs-away at 5 years, day-in-life at 34 during school, 40-year-old reunion). This is a topic-specific concentration — career-change specifically invites near-future-life-during-transition narrative because the transition duration is long (7 years). Other topics may not produce this Storyteller concentration. Cross-topic BL1 should check whether Storyteller cluster-distributions vary systematically with topic-time-horizon.

11. **Lawyer / Technical Expert documented-false-positive applies here.** The persona-selection-guide explicitly documents career-change as a Lawyer partial-false-positive and Technical Expert clear-false-positive. The GT1 decision to exclude both is correct per documented evidence. Cross-topic BL1 should verify that SP1 scoring on this cell doesn't spuriously compare against "what Lawyer or Technical Expert would have contributed" — they shouldn't be contributing. This is a clean exclusion.

12. **Strategic + Human-centered balance at 33%/33%.** career-change/medium is the first sampled cell with this balance (other cells show 45/24 mobile-app, 38/35 youth-mentorship, 36/28 food-truck). Cross-topic BL1 should check whether balanced Strategic/Human-centered shares (neither dominating) correlate with personal-decision topic-type. If yes, this becomes another topic-classifier metric.

13. **"Preserve-all-distinct" convergences as scoring ambiguity.** CG1 splits to 2 merges, CG4 to 3, CG7 to 3, CG10 to 2, CG11 to 3, CG14 to 2 — total 15 preserve-distinct outputs from CGs. These defensible-but-debatable judgments need explicit scoring-tolerance annotations; cross-cell calibration of "merge vs. preserve-distinct" scoring tolerance is warranted. career-change/medium's 3-way preserve-distinct pattern (three CGs at 3 outputs each) is denser than other sampled cells and should surface any SP1 over-aggressive-merge patterns most clearly.

14. **C1 receives only 1 Append bridge — second-lowest C-bridge count sampled.** mobile-app/medium's C5 was the previous single-bridge minimum (1 bridge). career-change/medium's C1 has the same count. Both are analytical-quantitative clusters. Cross-topic BL1 should check whether analytical-quantitative clusters systematically receive fewer Append bridges across cells — the pattern now has two data points.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (career-change / medium cell)

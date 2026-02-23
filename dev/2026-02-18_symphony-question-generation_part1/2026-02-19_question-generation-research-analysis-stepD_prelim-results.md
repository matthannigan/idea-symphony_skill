# Question Generation Persona Targeted Investigations Preliminary Results

*Based on Investigations I01-I06*

**Date:** 2026-02-16
**Parents:** 
- `docs/dev/2026-02-18_question-generation-research.md`
**Prompts:** `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/tasks`

---

## Executive Summary

Six investigations evaluated the current Phase 2B persona roster and candidate replacements across three test topics (space party, tool library, habit tracker). The findings converge on a clear diagnosis and diverge on specific roster construction.

### Core Diagnosis (All Investigations Converge)

**The Phase 2B set's primary gap is Creative, not broadly "analytical bias."** The dimension audit (I06) found Creative questions account for just 3.3% of all output — the single most consistent deficit across every topic and persona. Analytical is overrepresented at 32.7%, but Human-centered (26.4%) and Provocative/Lateral (15.3%) are adequately covered. Every investigation that assessed dimension coverage independently reached this same conclusion: the set lacks generative, aesthetic, and imaginative territory, not analytical rigor.

**Phase 3 retirement status is irrelevant for Phase 2B.** I01, I02, and I06 all found that personas "retired" from Phase 3 brainstorming (Questioner, Analyst) activate different capabilities in question generation. The Questioner — retired from Phase 3 as redundant with DA+FPT — is actually the set's most valuable Phase 2B member, with the broadest dimension coverage and the primary source of both Provocative/Lateral and Creative output. Classification based on Phase 3 behavior is a poor predictor of Phase 2B performance.

**Persona cognitive modes are stable across topics.** All six investigations found that each persona's question generation approach, dimension profile, and volume characteristics hold consistently regardless of whether the topic is whimsical, civic, or technical. Topic affects the dimension mix at the margins but does not compensate for missing persona capabilities.

**Selflessness is the key discriminator for Phase 2B value.** Personas that generate questions answerable by *other* Phase 3 personas (Questioner, Provocateur, Visionary, Storyteller, Empath) are more valuable than personas that ask questions primarily suited to their own strengths (FPT, Constraint Flipper). This criterion consistently separated stronger from weaker Phase 2B candidates.

### Where Investigations Converged

**On the Questioner (I01, I06):** Both independently identified the Questioner as indispensable — the broadest dimension coverage, the set's primary divergent source, and a Phase 3 retirement that does not transfer to Phase 2B. I01 found it functions as an analytical-humanist hybrid (39% Human-centered, 28% Provocative); I06 confirmed its Provocative/Lateral output (30.8%) exceeds its Analytical output (14.6%).

**On the Creative void (I02, I03, I05, I06):** Four investigations independently surfaced the same gap. I02 found neither the Analyst nor DA generates any Creative questions. I03 found the Provocateur and Visionary fill this gap through destructive and constructive creativity respectively. I05 found the Storyteller, Analogist, and Constraint Flipper each introduce Creative territory absent from the current set. I06 quantified the deficit at 3.3%.

**On the Analyst+DA redundancy (I02, I06):** Both found these personas share Analytical dominance (Analyst 61%, DA 52.3%) with zero Creative output between them. I02 characterized them as "constructive vs. destructive analysis" — complementary but operating within the same dimension. I06 confirmed they together account for 71% of all Analytical tags while contributing nothing to the Creative void.

**On generative persona distinctiveness (I03, I05):** Both found that candidate generative personas produce genuinely non-overlapping question territory. The Provocateur and Visionary approach Creative territory from opposite directions — destruction vs. construction (I03). The Analogist, Constraint Flipper, and Storyteller each employ different cognitive operations — cross-domain transfer, constraint inversion, and narrative framing (I05). Overlap between any pair of generative candidates is LOW.

**On the Empath's unique contribution (I04, I05):** I04 found the Empath reaches emotional registers (shame, worthiness, interior contradictions, meaning-making) that no current persona accesses. I05 found the Storyteller covers adjacent but distinct human-centered territory (narrative arcs, character journeys). Both reach human experience that the Audience Advocate's design-thinking lens does not.

### Where Investigations Diverged

**On Analyst vs. DA retention:** I02 recommended keeping both as complementary — constructive analysis needs destructive analysis. I06 recommended replacing one with a generative persona to reduce Analytical redundancy. The tension is real: they are complementary *within the Analytical dimension* but redundant *at the dimension-portfolio level*.

**On FPT's priority:** I01 rated FPT as conditional (include only at high effort, never as a Questioner replacement). I06 rated FPT as include (unique Systems contribution at 13.5%, strong PL at 33.7%). The difference reflects scope: I01 assessed FPT against the Questioner specifically; I06 assessed FPT's portfolio contribution. Both agree FPT is valuable — they disagree on whether it earns a guaranteed slot.

**On how many generative personas are needed:** I03 recommended both Provocateur and Visionary for full destructive+constructive Creative coverage. I05 recommended Storyteller and Analogist with Constraint Flipper conditional. Together these investigations identify 5 strong generative candidates for at most 2-3 available slots. The selection depends on which Creative sub-dimensions matter most — a question these investigations frame but do not resolve.

**On the Appreciative Inquiry gap:** I04 found the Empath is the closest persona to strengths-based, aspirational questioning — but its primary mode is emotional excavation, not dedicated Appreciative Inquiry. No investigation identified a persona that fully fills this gap. Whether this requires a new persona, prompt engineering, or is adequately covered by the Visionary's aspirational framing remains unresolved.

### Skipping Additional Planned Targeted Investigations

**User Decision:** We will not be running planned cross-phase analyses I07-I10 as specified in:
- `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/tasks/07_cross-phase-visionary.md`
- `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/tasks/08_cross-phase-provocateur.md`
- `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/tasks/09_cross-phase-empath.md`
- `docs/dev/2026-02-18_question-generation-eval/targeted-investigations/tasks/10_cross-phase-pragmatist.md`

I07-I10 would provide incremental rigor but are unlikely to change any roster decision.

#### What I07-I10 would test

Whether the selflessness assessments from I01-I06 hold up when formally compared against actual Phase 3 brainstorming output (rather than the qualitative "this question opens territory for X persona" method used so far).

#### What I01-I06 already established

- I03 directly assessed Provocateur and Visionary selflessness and found both generate questions they "cannot answer" — the Provocateur because it challenges without proposing solutions, the Visionary because it envisions without specifying implementation. This is the same finding I08 and I07 would test, just via qualitative framing analysis rather than formal Phase 3 comparison.

- I04 mapped the Empath's cross-phase activation to specific Phase 3 personas (Storyteller, Visionary, Connector, Momentum Builder). I09 would formalize this.

- I01 assessed Questioner vs. FPT selflessness. I10's Pragmatist baseline would calibrate what "high convergence" looks like — but for a persona that isn't even a Phase 2B candidate.

- **The selflessness findings are convergent across independent investigations.** Four separate investigations (I01, I03, I04, I05) reached consistent selflessness assessments using different methods and personas. Formal cross-phase comparison would add precision but the directional finding is robust.

- **End-to-end testing subsumes the convergence question.** When you run Questioner + Provocateur + Visionary through the full Phase 2B→2C pipeline, you'll see directly whether the Visionary's questions produce dimensionally diverse synthesis output — which is the *actionable* version of the convergence question. Cross-phase convergence scoring tells you whether a persona's questions overlap with its own answers; end-to-end testing tells you whether the synthesis actually improves.

- **The synthesis prompt is the bigger risk.** Open Question #1 in the recommendations flags that the synthesis prompt might flatten diversity regardless of roster composition. Testing the prompt's behavior with generative input is more urgent than further characterizing the input itself.

#### Would any plausible I07-I10 outcome change a roster recommendation?

- **I07 (Visionary high convergence):** This is the only one with real upset potential. If the Visionary's questions map tightly to its own brainstorming, its Phase 2B value drops. But I03 already found its questions are structurally different from answers — reimagination prompts vs. design proposals. A formal comparison would need to overturn a thorough qualitative finding.

- **I08 (Provocateur low convergence):** The hypothesis would almost certainly confirm. The Provocateur's absurdist inversions are by definition not answerable by any single persona. Confirmation adds confidence but doesn't change the "add Provocateur" recommendation.

- **I09 (Empath low convergence):** Same situation — I04 already mapped the cross-phase activation pattern in detail. Confirmation doesn't change the "add Empath" recommendation.

- **I10 (Pragmatist baseline):** Calibration value only. The Pragmatist isn't a candidate, and the hypothesis (analytical personas are high-convergence) is already well-supported by I01's finding that FPT asks self-answerable questions and I06's finding that analytical personas crowd their own dimension.

**One exception:** If you want methodological rigor for the selflessness concept before it becomes a formal selection criterion (Open Question #5), a lightweight version of I07+I10 — just the Visionary (potential upset) and the Pragmatist (calibration baseline) — would establish the formal scale without the full four-investigation overhead. But this is a "nice to have" rather than a decision gate.

---

## Investigation I01: Analytical Probing Overlap — Questioner vs First Principles Thinker

**Date:** 2026-02-19
**Distinctiveness Rating: MODERATE-HIGH**
**Recommendation: Keep Questioner in Phase 2B. Do NOT replace with FPT.**

---

### Question Generation Assessment

#### Volume and Structure

| Metric | Questioner | FPT |
|--------|-----------|-----|
| Avg questions/topic | 24.0 | 17.3 |
| Avg clusters/topic | 5.3 | 5.0 |
| Avg questions/cluster | 4.5 | 3.5 |
| Question elaboration | 1–2 sentences | 2–3 sentences |
| Naming style | Functional (Social Dynamics & Inclusion) | Philosophical (The Fundamental Nature of Children's Play) |

The Questioner generates ~40% more questions per topic with shorter individual elaboration. FPT produces fewer, more deeply elaborated questions. Both converge on ~5 clusters, but the Questioner occasionally expands to 6–7 (tool-library: 7 headers despite metadata claiming 6).

#### Approach Signatures

**Questioner** — Meta-inquiry and assumption inversion:
- Lead framings: "What if we…", "Why do we assume…", "What would happen if…", "Who…"
- Challenges the *premise* of the question space, not just the answers
- Breadth-seeking: covers many angles with rapid-fire probes
- Often poses inversions: "What if we did the opposite?", "What if we had zero budget?"

**FPT** — Structural decomposition from axioms:
- Lead framings: "What is the fundamental…", "At its core…", "Setting aside received wisdom…"
- Breaks concepts into constituent parts, then questions each component
- Depth-seeking: fewer questions but each builds a chain of reasoning
- Often works toward "minimum viable" / "necessary and sufficient" formulations

---

### Territory Map

#### Dimension Distribution (across all 3 topics, allowing multi-coding)

**Questioner (72 questions total):**
- Analytical: ~35 (49%) — present but not dominant
- Human-centered: ~28 (39%) — equity, inclusion, empathy, user experience
- Provocative: ~20 (28%) — assumption inversions, contrarian framings
- Tactical: ~18 (25%) — logistics, operations, contingency
- Creative: ~15 (21%) — novel approaches, alternative models, narrative reframing
- Strategic: ~8 (11%) — long-term positioning, sustainability
- Systems: ~5 (7%) — interconnections, emergence

**FPT (52 questions total):**
- Analytical: ~45 (87%) — overwhelmingly dominant
- Systems: ~14 (27%) — feedback loops, mechanisms, structural interdependencies
- Human-centered: ~10 (19%) — behavioral modeling, but more abstract than empathetic
- Provocative: ~9 (17%) — challenges assumptions, but from structural rather than creative angles
- Tactical: ~7 (13%) — implementation constraints
- Creative: ~4 (8%) — occasional novel framings
- Strategic: ~5 (10%) — organizational identity, business models

#### Key Distribution Finding

The Questioner is **not** a purely analytical persona in practice. Despite both being classified as Analytical in the Phase 3 roster, their question generation profiles are strikingly different:

- **Questioner** produces a balanced multi-dimensional portfolio (Analytical 49%, Human-centered 39%, Provocative 28%, Creative 21%)
- **FPT** produces a heavily analytical portfolio (Analytical 87%, with Systems 27% as the only strong secondary dimension)

The Questioner functions more like an **analytical-humanist hybrid** in question generation — it probes assumptions but with strong attention to who's affected, who's excluded, and what alternatives exist. FPT functions as a **pure analytical decomposer** — it disassembles concepts into components and questions each from structural first principles.

---

### Cross-Topic Patterns

#### Consistency of Findings

The overlap pattern is **remarkably stable** across all three topics:
- Convergence rate: 12–15% across all topics (no topic-specific variation)
- Dimension profiles: Questioner is always multi-dimensional; FPT is always analytical-dominant
- Cluster overlap: ~60% theme convergence, ~40% unique clusters per topic
- Volume ratio: Questioner always generates ~40% more questions than FPT

#### Topic Sensitivity

Neither persona shows meaningful topic sensitivity in their approach:
- Questioner generates 24/26/22 questions (space/tools/habits) — consistent
- FPT generates 17/17/18 questions — extremely consistent
- Both maintain their signature approaches regardless of domain

This lack of topic sensitivity is itself a finding: both personas apply a stable questioning methodology that transfers across domains, suggesting the overlap pattern would hold for any topic.

### Cross-Phase Convergence ("Selflessness")

**Questioner generates more selfless questions** — questions that open territory for Phase 3 personas other than itself:
- "What if the party told a story?" → opens territory for Storyteller
- "Who are the invisible stakeholders?" → opens territory for Systems Thinker, Empath
- "What if we approached from the opposite direction?" → opens territory for Constraint Flipper
- "What if tools were free, but expertise was the currency?" → opens territory for Visionary, Connector
- "Who might feel unwelcome in this space?" → opens territory for Empath, Audience Advocate
- "What if corporate donations are a trap?" → opens territory for Devil's Advocate, Politician

**FPT generates more self-answerable questions** — questions its own analytical decomposition method is best suited to resolve:
- "What is the minimum viable party?" → FPT's own territory
- "What are the fundamental failure modes of physical tools?" → FPT's own territory
- "What is the core data model of a habit?" → FPT's own territory
- Some selfless exceptions: "How might light and shadow be used?" → opens territory for Visionary, Analogist

**Selflessness verdict:** Questioner is significantly more selfless. It generates questions that distribute well across the Phase 3 roster, especially for Generative and Connective personas. FPT tends to ask questions it's optimally positioned to answer itself, which is less valuable for Phase 2B's cross-phase function.

---

### Phase 3 Retirement Signal

**Does the Questioner's Phase 3 retirement extend to Phase 2B?**

**No.** The retirement rationale for Phase 3 was that the Questioner's brainstorming *answers* were subsumed by the combination of Devil's Advocate + First Principles Thinker. But question *generation* is a fundamentally different task than brainstorming answers:

1. **Different strengths activate.** The Questioner's meta-inquiry and assumption-challenging approach, which made it redundant as a brainstormer (where DA does this better), makes it highly effective as a question generator. Question generation IS its native task.

2. **The dimension profile diverges.** In Phase 3, the Questioner would produce analytical brainstorming answers similar to FPT. In Phase 2B, the Questioner produces a much broader dimensional portfolio (39% human-centered, 28% provocative, 21% creative) than FPT (87% analytical). The task unlocks different capabilities.

3. **Volume advantage matters in Phase 2B.** The Questioner generates ~40% more questions per session. In Phase 3, volume isn't inherently valuable (quality matters). In Phase 2B, broader question territory directly improves the synthesis input.

4. **Quantitative baseline confirms:** Questioner's extreme consistency (CV=2.7%) and mid-volume output (6.3 KB) make it a reliable Phase 2B workhorse — unglamorous but dependable.

---

### Recommendation

**For Phase 2B roster: INCLUDE Questioner. Conditional inclusion for FPT.**

#### Primary Recommendation: Keep Questioner

1. **Multi-dimensional output.** Despite its Analytical classification, the Questioner produces the most balanced dimensional portfolio of any analytical persona, with strong human-centered (39%), provocative (28%), and creative (21%) secondary dimensions.

2. **High selflessness.** The Questioner generates questions that open territory across the full Phase 3 roster — especially for Generative and Connective personas that are absent from Phase 2B. This cross-phase bridge function is exactly what Phase 2B needs.

3. **Reliable volume.** The Questioner's ~24 questions per topic with CV=2.7% provides consistent, broad input for synthesis regardless of topic domain.

4. **Retirement doesn't transfer.** The Phase 3 retirement rationale (subsumed by DA+FPT for brainstorming) does not apply to the question generation task, where the Questioner's meta-inquiry approach is a native strength rather than a redundancy.

#### Conditional: Consider Adding FPT at High Effort

FPT brings unique value that complements the Questioner:
- Deep structural decomposition that the Questioner doesn't provide
- Strong Systems dimension (27%) that's otherwise thin in the current Phase 2B set
- Ontological and mechanistic questions that open novel territory

However, FPT's heavy analytical skew (87%) and lower selflessness make it less valuable per-slot than the Questioner. If the Phase 2B roster expands at high effort, FPT is a reasonable addition — but only alongside Questioner, not as a replacement.

#### What This Means for the Broader Analytical Bias Hypothesis

This investigation partially confirms and partially challenges the hypothesis:

- **Confirmed:** FPT is heavily analytical (87%) and would worsen the analytical bias if it replaced a more balanced persona
- **Challenged:** The Questioner, despite its Analytical classification, is not actually an analytical-dominant question generator — it functions as a multi-dimensional generalist that happens to use analytical framing as its entry point
- **Implication:** Classification based on Phase 3 brainstorming behavior is a poor predictor of Phase 2B question generation behavior. The task context matters more than the persona label.

---

### Notes

- The ~13% convergence rate suggests these personas are probing the same problem space but from sufficiently different angles that overlap is limited. This is the ideal relationship for complementary roster members.
- The Questioner's over-generation tendency (22–26 questions vs 15–20 target) may need prompt tuning, but the breadth it produces is more valuable for synthesis input than strict adherence to count targets.
- FPT's cluster naming is more philosophically flavored ("The Fundamental Nature of Children's Play") compared to Questioner's functional naming ("Age-Appropriate Engagement & Attention Spans"). This aesthetic difference reflects the deeper approach difference: FPT names clusters by the principle being investigated; Questioner names clusters by the practical territory being covered.
- The Questioner's strong equity/inclusion dimension was unexpected and not predicted by its persona description or Phase 3 behavior. This emergent capability is worth investigating further — it may be the single strongest argument for retaining the Questioner in Phase 2B.
- Connection to I02/I03: If other investigations find that the Analyst shows similar unexpected breadth in question generation (vs its Phase 3 analytical narrowness), this would strengthen the hypothesis that question generation activates different persona capabilities than brainstorming.

---

### Evidence

See detailed evidence for findings in [01_analytical-probing-overlap.md](./2026-02-18_question-generation-eval/targeted-investigations/01_analytical-probing-overlap.md)

---

## Investigation I02: Analytical Framing Overlap — Analyst vs Devil's Advocate

**Date:** 2026-02-19
**Distinctiveness Rating:** **HIGH**
**RQs Addressed:** RQ1 (distinctiveness), RQ5 (cluster divergence), RQ7 (retired persona fitness)

---

### Question Generation Assessment

#### Framing Signatures

The Analyst and Devil's Advocate occupy the same "Analytical" classification but generate questions through **opposite cognitive operations**:

**Analyst framing pattern — Structural Decomposition:**
- "How should we decompose X into distinct phases?"
- "What framework helps determine the optimal distribution of Y?"
- "What is the realistic break-even analysis for different models?"
- "What metrics would indicate whether Z is succeeding?"

Signature verbs: *decompose, model, optimize, quantify, benchmark, analyze, framework, trade-off*

**DA framing pattern — Adversarial Stress-Testing:**
- "What happens when X inevitably fails?"
- "Have we considered whether Y is actually the right approach?"
- "What prevents Z from being dominated by the wrong people?"
- "Could this create an escalation trap?"

Signature verbs: *undermine, prevent, break, expose, challenge, conflict, what if, what happens when*

The Analyst asks "how do we structure this optimally?" — the DA asks "what's going to go wrong with this?"

#### Volume and Consistency

| Persona | Space Party | Tool Library | Habit Tracker | Avg KB | CV% |
|---------|-------------|--------------|---------------|--------|-----|
| Analyst | 7.4 KB / 5 clusters | 7.4 KB / 5 clusters | 6.0 KB / 5 clusters | 7.0 | 9.7% |
| DA | 6.8 KB / 5 clusters | 5.5 KB / 5 clusters | 9.3 KB / 6-7 clusters | 7.3 | 21.6% |

The Analyst is a metronome — nearly identical output structure regardless of topic. The DA is adaptive — minimal output on constrained topics (tool library), expansive on complex topics (habit tracker). When the DA expands, it opens **new cluster territory** (Privacy, Competitive Blind Spots) rather than inflating existing clusters.

---

### Territory Map

#### Dimension Distribution (Primary Classification)

**Analyst (across all 3 topics, ~55 questions):**
- Analytical: **71%** — framework design, metrics, decomposition, optimization
- Strategic: **13%** — positioning, trade-off selection, go/no-go decisions
- Human-centered: **7%** — child engagement, user experience (mostly space party)
- Systems: **5%** — feedback loops, architecture (mostly habit tracker)
- Tactical: **2%** — safety, maintenance protocols
- Creative: **2%** — one question about lasting memories
- Provocative: **0%**

**Devil's Advocate (across all 3 topics, ~57 questions):**
- Provocative: **53%** — premise challenges, failure scenarios, unintended consequences
- Human-centered: **21%** — psychological harm, equity, emotional impact
- Tactical: **19%** — safety hazards, logistics, operational contingencies
- Strategic: **5%** — alternative models, contingency planning
- Analytical: **2%** — one cost-benefit question
- Creative: **0%**
- Systems: **0%**

The dimension profiles are **near-mirror images**. The Analyst's dominant dimension (Analytical, 71%) is the DA's weakest (2%), and vice versa (DA's Provocative at 53% vs Analyst's 0%).

#### Cluster Theme Comparison

**Space Party:**

| Analyst Clusters | DA Clusters |
|-----------------|-------------|
| Activity Structure & Flow | Developmental Appropriateness & Engagement Risks |
| Resource Allocation & Constraints | Safety & Physical Space Constraints |
| Risk Assessment & Contingency Planning | Parental & Family Dynamics |
| Outcome Measurement & Success Criteria | Budget, Effort & Realistic Execution |
| Space Theme Execution | Post-Party & Unintended Consequences |

Zero direct cluster overlap. Partial thematic intersection on resource/budget and risk/safety, but different framing.

**Tool Library:**

| Analyst Clusters | DA Clusters |
|-----------------|-------------|
| Usage Analytics and Demand Patterns | Sustainability & Financial Viability |
| Financial Sustainability and Resource Allocation | Risk Management & Liability |
| Operational Efficiency and Risk Management | Operational & Implementation Challenges |
| Spatial Optimization and Inventory Architecture | Equity & Access Barriers |
| Success Indicators and Decision Frameworks | Community Dynamics & Adoption |

Moderate thematic overlap on financial/operational clusters, but the DA introduces Equity and Community Dynamics that the Analyst never touches.

**Habit Tracker:**

| Analyst Clusters | DA Clusters |
|-----------------|-------------|
| User Engagement & Behavior Analysis | The Skeptic's Lens: Differentiation & Market Reality |
| Competitive Differentiation Analysis | Design Flaws and Failure Modes |
| Data Architecture & Measurement Framework | Technical and Architectural Vulnerabilities |
| Monetization & Sustainability Strategy | User Psychology and Adoption Barriers |
| Technical Architecture & Risk Assessment | Monetization and Sustainability Risks |
| — | Privacy and Trust Concerns |
| — | Competitive Blind Spots |

Competitive and monetization territory overlaps thematically, but DA generates 2 additional clusters (Privacy, Competitive Blind Spots) with no Analyst counterpart.

---

### Cross-Topic Patterns

#### Findings Hold Across All 3 Topics

1. **Dimension separation is absolute.** The Analyst generates zero Provocative questions across all topics. The DA generates essentially zero Analytical questions. This holds for the informal space party, the civic tool library, and the technical habit tracker.

2. **Cluster structure never overlaps directly.** No cluster name or framing matches across any topic. Even the closest thematic overlaps (budget, risk) show different organizing principles.

3. **Both produce selfless questions.** Neither persona asks questions only it could answer in Phase 3:
   - Analyst: "What determines whether a 5-year-old perceives a party as 'fun'?" → opens for Empath, Storyteller, Pragmatist
   - DA: "Who actually benefits, and who might be excluded?" → opens for Empath, Politician, Audience Advocate

#### DA Topic Sensitivity Creates Variable Overlap

The DA's 69% volume swing (5.5 KB tool-library → 9.3 KB habit-tracker) **changes the overlap pattern**:

- **Tool library (DA compact):** DA covers fewer themes, so the Analyst covers more unique territory. The DA's equity/community clusters have no Analyst counterpart, but the Analyst's 5 clusters provide broader systematic coverage of operational terrain.
- **Habit tracker (DA expansive):** DA expands to 6-7 clusters, opening entirely new territory (Privacy, User Psychology, Competitive Blind Spots) that makes the Analyst's coverage look narrow by comparison. The DA's expansion is in breadth — it finds new attack surfaces rather than deepening existing ones.

Implication: On complex, multi-dimensional topics, the DA provides **more unique value** because it discovers territory the Analyst's systematic framework never reaches. On simpler topics, the Analyst's consistent structural coverage carries more weight.

#### Shared Blind Spots (Critical Finding)

**Neither persona generates questions in these dimensions:**
- **Creative/Divergent:** "What if we reimagined this as...?", "What unexpected metaphor could transform our approach?"
- **Generative:** "What would the ideal version look like?", "What adjacent possibilities exist?"
- **Deep Systems:** "What feedback loops are at play?", "What emergent behaviors might arise from these interactions?"

The Analyst has minimal Systems coverage (5%, mostly as secondary coding), and the DA has zero. Neither has any Creative coverage. This confirms the Step B finding that the all-analytical Phase 2B roster produces no dedicated divergent question sources.

---

### Recommendation

**Phase 2B Roster: KEEP BOTH — Analyst and Devil's Advocate are complementary, not redundant.**

Despite both being classified as "Analytical," these personas perform **opposite cognitive operations** on the same problem space:
- **Analyst:** maps and structures the problem → "What are the components and how should they be organized?"
- **DA:** stress-tests and challenges the problem → "What will break and what are we missing?"

Together they provide comprehensive analytical coverage from complementary angles. Removing either would leave a significant gap.

#### On the Analyst's Phase 3 Retirement

The Analyst's Phase 3 weakness — organizational overlap with other personas' brainstorming outputs — does **not** extend to Phase 2B for three reasons:

1. **The task is different.** Phase 3 asks "what are your ideas?" (where the Analyst's framework-heavy style overlaps with other analytical personas). Phase 2B asks "what questions should we explore?" — the Analyst's systematic decomposition is a genuine strength here.

2. **Selfless question generation.** The Analyst's questions are broad and systematic enough that any Phase 3 persona can tackle them. The Analyst doesn't ask Analyst-only questions — it asks questions that open territory for Visionaries, Empaths, Pragmatists, and others.

3. **Synthesis compatibility.** The Analyst's consistent, well-organized cluster structure (always 5 clean clusters, low variance) makes its questions easy to synthesize with other personas' outputs in Phase 2C.

**However:** The finding that both personas share blind spots in Creative, Generative, and Systems dimensions supports the broader hypothesis that the Phase 2B roster needs at least one non-analytical persona to provide divergent question territory.

---

### Notes

#### The "Opposite Directions" Model

The Analyst and DA can be understood as approaching the same analytical territory from opposite directions:
- **Analyst = constructive analysis:** "Given a problem, build a systematic understanding of it"
- **DA = destructive analysis:** "Given a proposed solution, find where it breaks"

This is structurally similar to the divergent-convergent pattern that professional facilitation research emphasizes — but operating entirely within the analytical dimension. The DA's stress-testing serves a proto-divergent function (opening new territory by finding cracks), but it's not truly generative/creative divergence.

#### DA Volume Sensitivity as a Feature

The DA's high CV (21.6%) is arguably a feature, not a bug:
- It produces more content when topics have more attack surfaces (habit tracker's tech + psychology + business nexus)
- It produces less content when topics are more constrained (tool library's bounded operational scope)
- This adaptive behavior means the DA self-calibrates to topic complexity — spending more effort where more challenge is warranted

The Analyst's low CV (9.7%) represents the opposite strategy: consistent, reliable, topic-independent coverage. Both are valuable in a portfolio.

#### Connection to Other Investigations

- **I01 (Retired Persona Value):** This investigation directly informs the Questioner vs Analyst comparison — if the Analyst's question generation is distinctive from the DA, what about the Questioner? The Analyst's Phase 3 retirement does not predict Phase 2B weakness.
- **I03–I05 (if investigating Generative/Connective personas):** The shared Creative/Systems blind spot identified here establishes the baseline that even complementary analytical personas can't fill. This is the gap that Generative persona additions would need to cover.
- The DA's equity and access coverage (especially on tool library) suggests it partially fills a Human-centered gap that the current Phase 2B roster otherwise lacks — the Audience Advocate is the only other persona that touches equity territory.

---

### Evidence

See detailed evidence for findings in [02_analytical-framing-overlap.md](./2026-02-18_question-generation-eval/targeted-investigations/02_analytical-framing-overlap.md)

---

## Investigation I03: Generative Territory — Provocateur vs Visionary

**Date:** 2026-02-19
**Parent task:** `targeted-investigations/tasks/03_generative-territory.md`
**Research questions:** RQ1 (distinctiveness), RQ5 (cluster divergence)

---

### Question Generation Assessment

#### Provocateur — Generative Mode: Destructive Creativity

The Provocateur operates through **inversion and demolition**. Every question starts from a current assumption and systematically destroys it, using absurdist, adversarial, or extreme-constraint framing. The signature structure is: "What if [assumption] was wrong?" → expose hidden dependency → "The real insight: [practical wisdom]."

The "real insight" suffix is a consistent structural feature across all 3 topics. It translates each provocation into actionable territory, preventing questions from being merely absurd. This is a **question laundering mechanism** — wrapping dangerous/uncomfortable insights in playful provocation to bypass defensive reactions.

Emotional register: confrontational, challenging, darkly humorous. The Provocateur is willing to be hostile toward the topic ("What if the library makes community worse?", "What if the app deliberately *lied* to users?", "What if we embraced the terrifying reality of space?").

**Volume and structure:**
- Space party: 17 questions / 5 clusters
- Tool library: 21 questions / 7 clusters (highest output across all personas on this topic)
- Habit tracker: 17 questions / 6 headers but metadata declares 5 clusters (structural anomaly is a header/count mismatch, not empty clusters — all sections contain substantive questions)

#### Visionary — Generative Mode: Constructive Creativity

The Visionary operates through **aspiration and reconstruction**. Every question starts from a future state and works backward, using reimagination, paradigm-shift, and emergence framing. The signature structure is: "What if we reimagined [concept]?" → paint a vivid future → explore design implications.

No "real insight" suffix — instead, the Visionary embeds insight in the question itself through layered sub-questions that progressively deepen the reimagination. Questions are longer and more descriptive, painting pictures rather than throwing grenades.

Emotional register: inspiring, expansive, possibility-oriented. The Visionary wants to transcend ("genuine awe rather than themed entertainment", "transformation rather than behavior change", "something that doesn't exist yet").

**Volume and structure:**
- Space party: 18 questions / 5 clusters
- Tool library: 18 questions / 5 clusters
- Habit tracker: 17 questions / 5 clusters

Highly consistent structure (always 5 clusters). More predictable than Provocateur.

---

### Territory Map

#### Dimension Classification

Each question classified by primary and secondary dimension: Strategic (S), Tactical (T), Creative (C), Analytical (A), Human-centered (H), Systems (Sys), Provocative (P).

##### Provocateur Dimension Distribution (55 questions across 3 topics)

| Dimension | Primary | Secondary | Total Appearances |
|-----------|---------|-----------|-------------------|
| Provocative | ~52 | ~3 | ~55 |
| Creative | ~12 | ~15 | ~27 |
| Analytical | ~5 | ~10 | ~15 |
| Human-centered | ~5 | ~12 | ~17 |
| Systems | ~3 | ~8 | ~11 |
| Strategic | ~2 | ~7 | ~9 |
| Tactical | ~1 | ~3 | ~4 |

**Defining signature:** Provocative + Creative. Nearly every question has Provocative as its primary dimension. The Provocateur generates creative territory *through* provocation, not alongside it. Secondary dimensions are well-distributed — provocation opens into analytical, human-centered, and systems territory roughly equally.

##### Visionary Dimension Distribution (53 questions across 3 topics)

| Dimension | Primary | Secondary | Total Appearances |
|-----------|---------|-----------|-------------------|
| Creative | ~42 | ~10 | ~52 |
| Human-centered | ~8 | ~20 | ~28 |
| Strategic | ~3 | ~12 | ~15 |
| Systems | ~2 | ~10 | ~12 |
| Tactical | ~0 | ~3 | ~3 |
| Provocative | ~0 | ~2 | ~2 |
| Analytical | ~0 | ~2 | ~2 |

**Defining signature:** Creative + Human-centered. Nearly every question has Creative as its primary dimension. The Visionary generates creative territory *through* aspiration and reimagination. Strong human-centered secondary presence — the Visionary consistently centers the experience of the people involved, not just the system.

##### Dimension Overlap and Gaps

The two personas share Creative territory but enter it from opposite doors:
- **Provocateur → Creative via destruction:** "What if we removed every reference to space?"
- **Visionary → Creative via construction:** "What if we approached space through other sensory dimensions?"

Neither persona generates significant Analytical or Tactical territory (confirming they are genuinely generative, not analytical). This means adding them to Phase 2B would **expand** the question territory rather than replicate it.

#### Cluster Theme Comparison

##### Space Party
**Provocateur clusters:** Inverting Power, Constraint as Engine, Breaking Linear Models, Radical Autonomy, Anti-Theme
**Visionary clusters:** Transformative Experience Design, Redefining "Space", Rethinking Participation, Reframing Logistics, Architecture of Wonder

**Overlap:** Both touch child agency/participation — but Provocateur frames it as radical autonomy (remove adults entirely) while Visionary frames it as genuine co-creation (redesign adult-child dynamics). Different entry points, different solutions space opened.

##### Tool Library
**Provocateur clusters:** Anti-Library, No-Shelf Library, Wrong Problem, Impossible Timeframes/Scale, Breaking Categories, Trust/Risk/Liability, Economic Reversals, Failure Scenarios
**Visionary clusters:** Redefining Resource Access, Trust/Community Architecture, Temporal/Spatial Reimagining, Emergent Value/Measurement, Existential Paradigm Questions

**Overlap:** Both question the physical library model and trust frameworks. But Provocateur strips away ("eliminate all waivers, track nothing") while Visionary reconceives ("community contribution capital, tool stories"). The Provocateur asks "what breaks?"; the Visionary asks "what could this become?"

##### Habit Tracker
**Provocateur clusters:** Premise of Tracking, Assumptions About "Good" Habits, Engagement/Retention Paradigm, Competitive Landscape, Business Model/Trust, Technical Architecture
**Visionary clusters:** Rethinking Fundamental Paradigm, Human Motivation/Emotional Design, Novel Interaction Models, Technology Without Categories, Ethics/Long-term Impact

**Overlap:** Both question whether tracking is the right paradigm and whether the business model aligns with user wellbeing. Provocateur attacks ("What if the app deliberately lied?", "What if streaks worked backward?") while Visionary reimagines ("What if habits were organic rhythms?", "What if the interface disappeared entirely?").

**Cluster distinctiveness rating: HIGH.** Even where themes overlap, the framing, question territory, and solution space opened are different.

---

### Cross-Topic Patterns

#### Consistency

Both personas maintain their generative mode consistently across all 3 topics (whimsical space party, civic tool library, technical habit tracker). Neither persona's approach breaks down on any topic type.

**Provocateur consistency:** Very high. The inversion-provocation-insight structure appears in every question regardless of topic. Volume varies (tool-library produced 21 questions vs 17 for others), but quality and mode are stable.

**Visionary consistency:** Very high. The reimagination-aspiration-exploration structure appears in every question regardless of topic. Volume is remarkably stable (17-18 questions). Always produces exactly 5 clusters.

#### Topic Sensitivity

**Provocateur is more topic-responsive.** The tool-library output was notably larger and more structurally diverse (7 clusters vs 5), suggesting civic/community topics give the Provocateur more assumptions to challenge. The space-party and habit-tracker outputs were more uniform.

**Visionary is more topic-stable.** Consistent volume and structure across all topics. The Visionary's generative mode (reimagine the paradigm) works equally well regardless of domain — it always finds a way to elevate the question to a higher level of abstraction.

#### Structural Anomaly Assessment

The Provocateur's habit-tracker file declares 5 clusters but has 6 section headers. All sections contain substantive questions — there are no empty clusters. This is a metadata/header count mismatch, not a quality issue. It does **not** affect the comparison. The Provocateur's habit-tracker output is as strong as the other two topics.

---

### Recommendation

**Distinctiveness Rating: HIGH**

The Provocateur and Visionary operate in genuinely distinct generative modes — destructive creativity vs. constructive creativity. They approach similar themes from opposite directions, producing minimally overlapping question territory. Their dimension signatures are different (Provocative+Creative vs Creative+Human-centered). Their unique question territories have zero overlap.

#### Phase 2B Roster Recommendation: **Include BOTH**

**Rationale:**

1. **Non-redundant generative coverage.** They share Creative as a secondary dimension but enter it through completely different mechanisms. Adding both covers destructive and constructive creative territory.

2. **Maximum territory opened for Phase 3.** The Provocateur opens territory by creating problems/paradoxes that diverse Phase 3 personas must address. The Visionary opens territory by painting futures that diverse Phase 3 personas must design toward. Together they create a "destroy and rebuild" dynamic that gives the widest range of Phase 3 personas productive material.

3. **"Selfless" question generation.** Both personas generate questions they themselves cannot answer — the Provocateur because it challenges without proposing solutions, the Visionary because it envisions without specifying implementation. This is the highest-value profile for Phase 2B, where questions feed into synthesis and then to the full Phase 3 roster.

4. **No analytical redundancy.** Neither persona produces significant Analytical or Tactical territory, so they **add** dimensions to Phase 2B rather than replicating the current all-analytical set.

5. **Consistent quality.** Both maintain their generative modes across all 3 tested topics, including a technical topic (habit-tracker), a whimsical topic (space party), and a civic topic (tool library). No evidence of topic-dependent quality degradation.

**For medium effort (3 personas):** Replace 2 of the current 3 analytical personas with Provocateur + Visionary. Retain one analytical anchor (see other investigations for which one).

**For high effort (5 personas):** Include both alongside 3 analytical/other personas. The Provocateur and Visionary together create sufficient generative coverage that additional generative personas are not needed.

---

### Notes

1. **The "question laundering" mechanism** of the Provocateur (provocation → "real insight" suffix) is a distinctive structural feature worth preserving. It ensures provocative questions are actionable, not merely absurd. If the Provocateur is added to Phase 2B, the persona prompt should preserve this pattern.

2. **The Visionary's consistent 5-cluster structure** across all topics suggests it has a more rigid internal organization than the Provocateur (which ranges from 5-7 clusters). For Phase 2B purposes this is fine — synthesis will merge clusters regardless.

3. **Convergence on self-obsolescence** is notable — both personas independently generate "design for your own irrelevance" questions across multiple topics. This theme may be a natural product of generative thinking (creative personas question the permanence of systems) and would likely survive synthesis as a strong cluster regardless of which generative persona is included.

4. **Connection to other investigations:** This analysis strongly suggests the current Phase 2B roster has a generative gap. The question of *which* analytical personas to retain alongside these two generative additions depends on I01 (retired persona fitness) and I02 (analytical overlap within the current set). If both Provocateur and Visionary are added, the constraint becomes which 1-3 analytical personas complement them best.

5. **Neither persona covers Connective territory** (cross-domain analogies, pattern-matching between fields). If Phase 2B needs all three creative modes (Destructive, Constructive, Connective), the Analogist or Connector would be the candidate for a third generative slot. But given the "selfless question" criterion, Provocateur + Visionary may be sufficient — they generate enough varied territory that Connective questions emerge naturally in synthesis.

---

### Evidence

See detailed evidence for findings in [03_generative-territory.md](./2026-02-18_question-generation-eval/targeted-investigations/03_generative-territory.md)

---

## Investigation I04: Human-Centered Territory — Audience Advocate vs Empath

**Date:** 2026-02-19
**Research questions addressed:** RQ1 (distinctiveness), RQ5 (cluster divergence)
**Files analyzed:** 6 files across 3 topics (space-party, tool-library, habit-tracker)

---

### Question Generation Assessment

#### Framing Orientation

The Audience Advocate and Empath both center human experience but operate through fundamentally different cognitive lenses.

**Audience Advocate — Design Thinking practitioner:**
- Dominant framing: "How might we design for…" / "What does the user need…" / "How do we ensure…"
- Treats emotions as design requirements to be solved
- Asks about human needs from the *outside in* — mapping stakeholder journeys, identifying barriers, proposing systemic solutions
- Questions are actionable and design-oriented; they point toward features, policies, and processes

**Empath — Emotional navigator:**
- Dominant framing: "How does it feel…" / "What's the emotional cost…" / "My gut says…"
- Inhabits the emotional experience directly
- Asks about human experience from the *inside out* — felt states, relational dynamics, interior contradictions
- Questions are evocative and exploratory; they point toward emotional truths that resist easy solutions

#### Illustrative Contrast (same topic, parallel territory)

**On failure/mistakes (habit-tracker):**
- AA: "How can the app support users during inevitable slips and regressions without triggering shame spirals that lead to abandonment?"
- Empath: "How does it feel to fail? Most habit trackers are designed for success… But what about the days you don't show up?"

The AA identifies shame spirals as a UX problem to prevent. The Empath sits inside the feeling of failure and asks what it's actually like.

**On feeling welcome (tool-library):**
- AA: "What barriers might prevent someone from even walking through the door for the first time?"
- Empath: "What makes someone feel worthy of borrowing?"

The AA catalogs external barriers (signage, language, hours). The Empath goes to the internal barrier — whether someone feels they deserve to be there.

**On children's emotional experience (space-party):**
- AA: "How do we design the party's emotional arc so children arrive excited, feel wonder during the experience, and leave with a sense of accomplishment?"
- Empath: "What unspoken wishes might a five-year-old have for their party that they can't articulate?"

The AA designs an emotional journey. The Empath asks what the child secretly wants but can't say.

#### Emotional Depth Comparison

The Empath consistently reaches emotional registers the AA does not access:

- **Shame and worthiness:** Empath asks about feeling "worthy of borrowing," pride vs. shame in asking for help — the AA addresses exclusion but not the internal experience of feeling lesser
- **Emotional labor and burnout:** Empath asks "When does care become a burden?" and "Who carries the emotional weight?" — the AA doesn't interrogate the emotional cost to providers/organizers at this depth
- **Interior contradictions:** Empath surfaces tensions like "When does helpful start feeling like you're not enough?" and "When does community building feel forced?" — the AA doesn't challenge its own human-centered framing
- **Meaning and ritual:** Empath asks about memory-making, developmental passages, and what will be remembered — territory the AA doesn't enter
- **Gut instinct language:** Empath explicitly uses "My gut says…" and "My instinct says…" — signaling intuitive rather than analytical reasoning

The AA does access emotional territory the Empath underweights:
- **Systematic accessibility:** AA methodically covers disability, language, motor impairment, neurodivergence — the Empath touches sensory sensitivity but doesn't systematize
- **Institutional power analysis:** AA asks about governance, community ownership, data practices, and measurement — structural questions the Empath approaches only through relational/emotional framing
- **Cross-cultural considerations:** AA explicitly names cultural backgrounds, immigration status, religious restrictions — the Empath stays in universal emotional territory

---

### Territory Map

#### Dimension Distribution (estimated across all 55 questions per persona, 3 topics)

**Audience Advocate:**
- Human-centered: ~40% (primary lens — user needs, stakeholder mapping)
- Analytical: ~25% (systematic barrier identification, policy design)
- Strategic: ~15% (measurement, sustainability, differentiation)
- Tactical: ~10% (logistics, process, accessibility compliance)
- Systems: ~5% (power dynamics, governance)
- Creative: ~3% (some exploratory framing)
- Provocative: ~2%

**Empath:**
- Human-centered: ~50% (deep emotional focus, felt experience)
- Provocative: ~15% (challenges assumptions about gamification, accountability, community building)
- Creative: ~12% (meaning-making, ritual, discovery, "what would it feel like if…")
- Systems: ~10% (emotional contagion in groups, power dynamics in relationships)
- Analytical: ~8% (emotional pattern analysis)
- Strategic: ~5% (emotional sustainability)
- Tactical: ~0%

**Key divergence:** The AA spreads across Analytical/Strategic/Tactical dimensions that the Empath barely touches. The Empath reaches into Provocative and Creative dimensions that the AA barely touches. Both are strongly Human-centered but through different mechanisms.

#### Cluster Theme Comparison

**Audience Advocate cluster themes (across 3 topics):**
1. Who we're serving / Understanding users (stakeholder identification)
2. Accessibility & inclusion (barrier removal)
3. Lived experience of participation (user journey)
4. Sustainability & measurement (organizational)
5. Family/parent/supporter experience (adjacent stakeholders)

**Empath cluster themes (across 3 topics):**
1. Trust, belonging, worthiness (interior emotional states)
2. Safety, fear, vulnerability (emotional risk)
3. Connection, joy, discovery (positive emotional experience)
4. Emotional sustainability and labor (caregiver/provider burnout)
5. Meaning, memory, quiet moments (reflective/philosophical)

**Overlap assessment: LOW.** Despite both addressing human experience, only 2 of 5 cluster themes have significant overlap (lived experience ↔ trust/belonging; sustainability ↔ emotional sustainability). Even where overlap exists, the framing is different — AA clusters are organized by stakeholder group or design concern; Empath clusters are organized by emotional register.

---

### Cross-Topic Patterns

#### Consistency of Distinction

The framing distinction holds strongly across all 3 topics:
- **Space party:** AA designs the emotional arc; Empath asks what the child secretly wants
- **Tool library:** AA maps barriers and governance; Empath asks about shame, pride, and emotional labor
- **Habit tracker:** AA identifies accessibility and privacy needs; Empath interrogates what the app "believes" about people

The distinction is not topic-dependent — it reflects genuinely different cognitive orientations.

#### Volume and Variation

- AA: 55 total questions (18 + 17 + 20), CV=16.5%. Produces significantly more on tool-library (10.3 KB) — activated by topics with clear stakeholder structures
- Empath: 54 total questions (17 + 19 + 18), CV=1.4%. Nearly identical volume across all topics — finds emotional depth regardless of domain

The Empath's extreme consistency suggests it applies a stable emotional lens universally. The AA's topic sensitivity suggests it is more activated by domains with visible "users" and structural complexity. This difference has implications for Phase 2B: the Empath would provide reliable emotional coverage regardless of topic, while the AA's contribution varies with topic type.

#### Appreciative Inquiry Alignment

External research identified strengths-based, narrative, and aspirational questions as a critical gap.

- **AA:** Primarily deficit-oriented. Most questions identify problems, barriers, and risks. Some aspirational framing ("What would success look like from a borrower's perspective?") but this is the exception.
- **Empath:** Better Appreciative Inquiry alignment. Regularly asks about joy ("The joy of discovery"), pride ("The pride of contribution"), meaning ("What will she remember?"), and connection ("When does borrowing create genuine connection?"). Also asks appreciative questions about quiet positive moments ("What happens in the first 10 seconds after opening the app?").

However, neither persona is a dedicated Appreciative Inquiry generator. The Empath is closer, but its primary mode is emotional excavation (which includes negative emotions like shame, fear, and burnout) rather than strengths-based inquiry per se.

#### Cross-Phase Convergence (Selfless Questions)

**AA's questions open territory for:** Pragmatist (logistics), Analyst (measurement), Lawyer (policy/governance), Technical Expert (accessibility implementation), Politician (stakeholder management). These are primarily analytical and tactical Phase 3 personas.

**Empath's questions open territory for:** Storyteller (narrative, memory, meaning-making), Visionary (aspirational framing, "what would it feel like if…"), Provocateur (challenging assumptions about gamification, accountability), Connector (relationship dynamics), Momentum Builder (emotional sustainability). These are primarily generative and connective Phase 3 personas.

This is a significant finding for Phase 2B design: the Empath generates questions that specifically activate the generative and connective personas that the current all-analytical Phase 2B set underserves.

---

### Recommendation

**Include the Empath in Phase 2B.**

**Distinctiveness rating: HIGH**

The evidence strongly supports adding the Empath. The two personas share human-centered territory in *topic* but diverge substantially in *framing*, *emotional depth*, *cluster structure*, and *cross-phase activation*:

1. **Different cognitive lens:** AA = Design Thinking practitioner (outside-in). Empath = Emotional navigator (inside-out). This is not overlap with different vocabulary — it's genuinely different ways of seeing.

2. **Fills the identified gap:** External research flagged emotional, appreciative, and narrative questions as critically missing from Phase 2B. The Empath is the closest persona to filling this gap, generating questions about felt experience, meaning, and joy that the current set cannot produce.

3. **Activates underserved Phase 3 personas:** The Empath's questions open territory for Storyteller, Visionary, Provocateur, and Connector — precisely the generative/connective personas that the current analytical Phase 2B set fails to prime.

4. **Extreme consistency:** The Empath's 1.4% CV means it delivers reliable emotional coverage regardless of topic. This makes it a dependable addition that won't underperform on unfamiliar domains.

5. **Does not duplicate the AA:** Cluster themes overlap only ~20-30%. The convergence points that do exist are approached from sufficiently different angles that both produce unique insight.

**Positioning within Phase 2B:** The Empath should not *replace* the AA — they serve complementary functions. The AA provides systematic human-centered coverage (accessibility, stakeholder mapping, measurement). The Empath provides emotional depth (felt experience, shame, pride, meaning). Together they would cover human-centered territory much more completely than either alone.

**Caveat:** The Empath is not a complete solution to the Appreciative Inquiry gap. While it generates more strengths-based and aspirational questions than the AA, its primary mode is emotional excavation (including negative emotions). A dedicated generative persona (Provocateur or Visionary) may still be needed for full divergent coverage — but that is the domain of other investigations.

---

### Notes

- The Empath's "My gut says…" and "My instinct says…" framing is distinctive and unusual in the roster. This explicitly intuitive voice may be especially valuable for Phase 2B because it models a non-analytical way of generating questions that gives Phase 3 personas permission to reason non-analytically.
- The AA's topic sensitivity (CV=16.5%) suggests it may underperform on abstract or non-user-facing topics. The Empath's universal consistency could compensate for this in a mixed roster.
- Several Empath questions are meta-cognitive ("What does this app believe about human nature?", "When does community building feel forced?") — these challenge the *premises* of the project rather than generating questions within them. This is rare in the current Phase 2B set and potentially very valuable for avoiding groupthink.
- The Empath's "Quiet Moments" cluster (habit-tracker) and "Meaning, Memory & Ritual" cluster (space-party) represent territory that no current Phase 2B persona covers. These reflective, philosophical questions are the most distinctive contribution.
- Connection to I01/I02/I03: If other investigations confirm that analytical personas converge on similar question territory, the case for adding the Empath (a Connective persona) becomes even stronger as a diversification play.

---

### Evidence

See detailed evidence for findings in [04_human-centered-territory.md](./2026-02-18_question-generation-eval/targeted-investigations/04_human-centered-territory.md)

---

## Investigation I05: Distinctive Cluster Framers — Analogist, Constraint Flipper, Storyteller

**Date:** 2026-02-19
**Research questions addressed:** RQ1 (distinctiveness), RQ5 (cluster divergence)
**Files analyzed:** 9 persona files (~62 KB) + 6 analytical comparison files (Questioner, Analyst across 3 topics)

---

### Question Generation Assessment

#### The Analogist — Genuine Cross-Domain Transfer

**Cognitive mode verification:** Every Analogist question follows the structure "What can we learn from [external domain] about [topic aspect]?" Clusters are organized by **source domain** (biological systems, historical models, industry patterns), not by topic dimension. This is fundamentally different from analytical personas, which organize by topic dimension (risk, stakeholder, feasibility).

**Surface vs. substance verdict: SUBSTANTIVE.** The Analogist's distinctive cluster names reflect genuinely different question territory. Consider the contrast:

- Analyst (space party): "What are the critical variables for evaluating each activity option?"
- Analogist (space party): "How do starling murmurations and schooling fish inform group management for young children?"

Both touch "activity design," but the Analogist's question opens entirely different answer space—biomimicry, emergent coordination, self-organization—that no analytical framing would reach. The cross-domain transfer is not cosmetic relabeling; it introduces novel conceptual vocabulary.

**Consistent patterns across all 3 topics:**
- Space party: hero's journey, museum design, bioluminescence, rocket staging, escape rooms
- Tool library: mycorrhizal networks, coral reefs, agricultural extension, Toyota andon cord, boutique hotels
- Habit tracker: progressive overload, keystone species, homeostasis, desire lines, variable reward schedules

The Analogist's source domains shift with topic, but the cognitive operation (map external system → extract principle → apply to topic) is perfectly stable. The specific analogies are topic-sensitive (biological analogies appear more for community topics; behavioral economics appears for the app topic), but the mode never wavers.

**Volume/consistency:** 7.3 KB avg, CV=10.1%. Reliably produces 17–20 questions with 5 clusters across all topics.

#### The Constraint Flipper — Genuine Constraint Inversion

**Cognitive mode verification:** Every Constraint Flipper question follows the pattern "What if [constraint] were actually an advantage?" or "How might [limitation] become [benefit]?" This is a consistent reframing operation applied to every identified constraint in the topic.

**Surface vs. substance verdict: SUBSTANTIVE, with a caveat.** The constraint inversion is real—the Constraint Flipper genuinely reframes limitations as features, producing counterintuitive design questions. The caveat: the *underlying constraints* it identifies (budget, space, time, group size, technical limitations) are the same constraints analytical personas would identify. The difference is the *direction* of the question—analytical personas ask "how do we work within this?" while the Constraint Flipper asks "how is this actually better?"

Examples of genuine inversion:
- Space party: "How might limited indoor space actually enhance the sense of being in a confined spacecraft?" (turns spatial constraint into immersion advantage)
- Tool library: "What if we embraced constraints around power tools as our differentiator?" (turns safety liability into brand positioning)
- Habit tracker: "How might avoiding sophisticated AI/ML features become a competitive strength?" (turns capability gap into trust advantage)

These aren't questions an analytical persona would generate. The Analyst asks "What are the trade-offs between complexity and wow factor?" The Constraint Flipper asks "What if low complexity IS the wow factor?"

**Volume concern:** 5.6 KB avg, lowest of the three. Produces 14–17 questions consistently (CV=3.7%), but the absolute volume is notably lower. The Constraint Flipper generates fewer questions because the constraint-inversion operation is narrow—once you've flipped each major constraint, you're done.

#### The Storyteller — Genuine Narrative Framing

**Cognitive mode verification:** The Storyteller organizes questions by **narrative elements** (character arcs, emotional peaks, sensory world-building, conflict/resolution, legacy) rather than topic dimensions. Questions are structured as experiential scenarios: "Imagine a user named Maya..." or "Picture the moment when..." or "Walk us through..."

**Surface vs. substance verdict: STRONGLY SUBSTANTIVE.** The Storyteller produces the most distinctive questions of the three. These are questions that no persona in the current Phase 2B set would generate:

- "Walk us through the difficult conversation when a cherished tool comes back damaged beyond repair—how do we turn this into a relationship-strengthening moment?"
- "What is the memory parents want their child to carry forward?"
- "What does the tool library's 'dark winter' story look like, and how do we write a different ending?"

These questions open territory around lived experience, emotional journeys, micro-interactions between humans, and long-term meaning-making. The narrative framing isn't decoration—it changes what answers are possible. An analytical question about "tool damage policy" produces operational answers. The Storyteller's scenario-based version produces human-relationship answers.

**Cross-topic consistency:** The narrative mode is stable across all three topics. The tool-library topic produced the longest output (8.9 KB), suggesting the Storyteller expands when topics have richer human characters. Space party (6.1 KB) and habit tracker (6.9 KB) are shorter but equally narrative.

---

### Territory Map

#### Dimension Distribution (estimated across all 3 topics)

**The Analogist (~55 questions):**
- Creative/Connective: ~60% (cross-domain analogies, metaphor-based reframing)
- Systems: ~20% (biological systems, ecosystem models, network dynamics)
- Strategic: ~10% (historical precedents, industry pattern transfer)
- Human-centered: ~5% (hospitality models, community systems)
- Analytical: ~3% | Provocative: ~2% | Tactical: ~0%

**The Constraint Flipper (~46 questions):**
- Creative: ~45% (reframing, inversion, counterintuitive design)
- Strategic: ~25% (positioning through limitation, competitive advantage)
- Provocative: ~15% (challenges assumptions about what's a weakness)
- Human-centered: ~10% (community ownership, user autonomy)
- Systems: ~3% | Analytical: ~2% | Tactical: ~0%

**The Storyteller (~50 questions):**
- Human-centered: ~55% (emotional journeys, individual experiences, community bonds)
- Creative: ~25% (narrative framing, scenario construction, sensory design)
- Systems: ~10% (journey flows, lifecycle patterns, ripple effects)
- Strategic: ~5% (legacy, evolution, long-term positioning)
- Analytical: ~3% | Provocative: ~2% | Tactical: ~0%

**For comparison — current Phase 2B analytical set:**

**The Questioner (~72 questions across 3 topics):**
- Analytical: ~35% | Strategic: ~25% | Provocative: ~20% | Human-centered: ~10% | Creative: ~5% | Systems: ~3% | Tactical: ~2%

**The Analyst (~53 questions across 3 topics):**
- Analytical: ~60% | Strategic: ~20% | Tactical: ~10% | Systems: ~5% | Human-centered: ~3% | Creative: ~2% | Provocative: ~0%

#### Territory each persona uniquely covers

| Persona | Unique territory (not covered by analytical set or other two) |
|---------|-------|
| Analogist | Cross-domain system analogies, biomimicry, historical precedent mining, metaphor-based design principles |
| Constraint Flipper | Constraint-as-feature reframing, counterintuitive positioning, limitation-driven creativity |
| Storyteller | Experiential micro-journeys, emotional peak design, narrative conflict/resolution, character-arc questions, memory and legacy framing |

---

### Evidence

#### Analogist — distinctive question samples

**Space party:** "How do bioluminescent creatures create wonder with minimal resources? Fireflies, deep-sea creatures, and glow-worms create magical effects through simple biological mechanisms. What low-cost, high-impact atmospheric elements could create similar moments of delight?"

**Tool library:** "What can mycorrhizal fungal networks teach us about building reciprocal community exchange? In forest ecosystems, fungal networks connect trees, moving resources from areas of surplus to areas of need..."

**Habit tracker:** "Shaping paths in urban design: Urban planners observe 'desire lines'—the paths people actually take... How could the app detect and adapt to users' natural behavior patterns rather than forcing them into predefined structures?"

*These questions introduce conceptual frameworks (bioluminescence → low-cost wonder, mycorrhiza → reciprocal exchange, desire lines → adaptive design) that no analytical persona generates.*

#### Constraint Flipper — distinctive question samples

**Space party:** "Budget limitations as authenticity: How might having limited funds for decorations actually create a more authentic, 'low-tech space mission' aesthetic that feels more like real NASA training facilities?"

**Tool library:** "What if we embraced constraints around power tools as our differentiator? How could specializing in hand tools... position the library as an alternative to—rather than a smaller version of—big-box hardware stores?"

**Habit tracker:** "How might avoiding sophisticated AI/ML features become a competitive strength? As competitors race to add algorithmic recommendations... what opportunities exist in a deliberately transparent, non-algorithmic approach?"

*Each question takes an apparent weakness and reframes it as strategic positioning. The reframing is genuine—it changes the solution space from "mitigate" to "leverage."*

#### Storyteller — distinctive question samples

**Space party:** "Consider how the birthday girl might experience the days leading up to her party—what pre-party rituals, countdown activities, or narrative elements could build excitement and help her feel like she's truly embarking on a space mission?"

**Tool library:** "Walk us through the difficult conversation when a cherished tool comes back damaged beyond repair... The borrower, Jamal, is mortified and already apologizing profusely. He expects anger, fees, maybe banishment. But what if this moment became something else entirely?"

**Habit tracker:** "The relapse story: Users inevitably break streaks. Describe the experience of someone missing their first habit after a 45-day streak. How does the app communicate with them in that moment?"

*These questions use named characters, emotional specificity, and narrative tension. They open territory around how people FEEL during interactions, not just what systems should DO.*

---

### Cross-Topic Patterns

#### Stability of cognitive mode

All three personas maintain their distinctive cognitive modes across all three topics (space party, tool library, habit tracker):

- **Analogist:** Source-domain-organized clusters in all 3 topics. The specific analogies are topic-appropriate (biological for community topics, behavioral economics for app) but the cross-domain transfer operation never varies.
- **Constraint Flipper:** Constraint-inversion clusters in all 3 topics. The specific constraints change with topic but the "flip" operation is perfectly stable. Very consistent volume (CV=3.7%).
- **Storyteller:** Narrative-arc clusters in all 3 topics. Cluster names follow storytelling structure (arrival, journey, characters, conflict, legacy). Moderate volume variation (CV=16.4%) — expands for topics with richer human interactions (tool library 8.9 KB vs. space party 6.1 KB).

#### Topic sensitivity

- The Analogist's source domains shift with topic but the question quality and distinctiveness are stable. No topic dependency.
- The Constraint Flipper is topic-insensitive—the inversion operation works equally on any topic.
- The Storyteller shows mild topic sensitivity—produces richer, longer output for topics with more human characters (tool library > habit tracker > space party). Community-oriented topics draw out more elaborate narrative scenarios.

---

### Inter-Persona Overlap Analysis

#### Analogist vs. Constraint Flipper: LOW overlap
Different cognitive operations. The Analogist draws from external domains ("What can museums teach us?"); the Constraint Flipper works within the topic's own constraints ("What if the small space is actually better?"). They almost never ask the same question. Complementary, not redundant.

#### Analogist vs. Storyteller: LOW-MEDIUM overlap
Both can touch human-centered territory (Analogist through hospitality/community analogies; Storyteller through character narratives). But different entry points: the Analogist enters through systems ("What can communities of practice teach us?") while the Storyteller enters through individual experience ("Imagine Marcus, our volunteer, helping Elena..."). Mostly complementary.

#### Constraint Flipper vs. Storyteller: LOW overlap
The Constraint Flipper focuses on structural/strategic reframing; the Storyteller focuses on experiential/emotional journeys. Different question types, different answer spaces. No meaningful redundancy.

#### All three vs. current Phase 2B set: HIGH distinctiveness
The current analytical set (Questioner, Analyst, Audience Advocate, Devil's Advocate, FPT) asks about measurement, risk, trade-offs, success criteria, decomposition, stakeholder needs, and fundamental assumptions. None of the three investigated personas consistently ask these types of questions. The territory overlap between the investigated trio and the analytical set is minimal.

---

### Recommendation

#### Phase 2B Candidacy Ranking

**1. Storyteller — INCLUDE (strongest candidate)**

Opens the most territory the current analytical set cannot cover. Human-centered, emotional, experiential questions are virtually absent from Questioner/Analyst/AA/DA/FPT output. The Storyteller also produces highly "selfless" questions—its narrative-scenario questions (character arcs, emotional peaks, conflict resolution) are best answered by OTHER Phase 3 personas (Empath, Visionary, Pragmatist, Audience Advocate) rather than the Storyteller itself. This is ideal for Phase 2B's purpose of opening territory for downstream brainstorming.

Volume is moderate (7.1 KB avg across topics) with some topic sensitivity, but output quality is consistently high.

**2. Analogist — INCLUDE (strong candidate)**

Opens significant territory through cross-domain connections that no current Phase 2B persona generates. The Analogist's questions import entirely new conceptual frameworks (biomimicry, historical precedent, industry pattern transfer) that expand the vocabulary of brainstorming.

One consideration: the Analogist's questions are somewhat "selfish"—the Analogist itself is best positioned to answer cross-domain questions, making them less territory-opening for other Phase 3 personas. However, the conceptual frameworks the Analogist introduces (e.g., "keystone habits," "desire lines," "mycorrhizal networks") create scaffolding that other personas can build on in novel ways.

Volume is solid (7.3 KB avg, CV=10.1%). Highly reliable.

**3. Constraint Flipper — CONDITIONAL (moderate candidate)**

Genuine constraint-inversion is valuable and distinctive. However, three factors temper the recommendation:
- **Lower volume:** 5.6 KB avg, notably below the other two (14–17 questions vs. 17–20).
- **Narrower operation:** Once each major constraint is flipped, the Constraint Flipper runs out of moves. The inversion operation is powerful but exhaustible.
- **Partial overlap with analytical territory:** The underlying constraints the Constraint Flipper identifies (budget, time, space, resources) are the same ones analytical personas identify. The Constraint Flipper approaches them from a different angle, but the territory isn't entirely new—it's the same territory viewed through an inversion lens.

**Conditional recommendation:** Include only if Phase 2B expands beyond 5 personas (e.g., in high-effort mode). At 3 personas (medium effort), the Storyteller and Analogist provide more territory expansion per slot.

---

### Notes

- **"Selflessness" gradient:** Storyteller > Analogist > Constraint Flipper. The Storyteller generates the most questions that other personas can answer; the Constraint Flipper generates questions that mostly require its own reframing skill to answer fully.

- **Complementarity with existing set:** Adding the Storyteller to the current Phase 2B set would introduce the Human-centered dimension that is currently almost entirely absent. Adding the Analogist would introduce the Systems/Connective dimension. The Constraint Flipper would strengthen Creative/Strategic but with less unique contribution.

- **Connection to I01/I02 investigations:** The Analogist and Storyteller likely complement the Provocateur and Visionary (investigated separately) in different ways. The Provocateur challenges assumptions (convergent-disruptive); the Visionary imagines futures (divergent-expansive); the Analogist connects domains (divergent-connective); the Storyteller humanizes experience (divergent-empathetic). These four together would provide maximum divergent coverage.

- **Surprising finding:** The Constraint Flipper's questions, while genuinely distinctive in framing, are the most "answerable" by the existing analytical set. An Analyst could address "How might budget limitations create authenticity?" because it's still fundamentally about budget trade-offs. Neither the Analyst nor Questioner could meaningfully address "What can mycorrhizal networks teach us?" or "Walk us through the moment when Jamal brings back the damaged drill."

- **Cluster count convergence:** All three personas produce exactly 5 clusters across all 3 topics, matching the 82% baseline from Step A. The distinctive framing is in cluster naming and question content, not structure—confirming Step A's finding that variation is in framing, not count.

---

### Evidence

See detailed evidence for findings in [05_distinctive-cluster-framers.md](./2026-02-18_question-generation-eval/targeted-investigations/05_distinctive-cluster-framers.md)

---

## Investigation I06: Current Phase 2B Set — Dimension Coverage Audit

**Date:** 2026-02-19
**Research questions addressed:** RQ2 (analytical bias), RQ6 (topic sensitivity)
**Corpus:** 5 personas × 3 topics = 15 files, ~289 stated questions (~109 KB)

---

### Question Generation Assessment

#### Methodology

Every distinct bolded question across all 15 files was classified into one or more of 7 dimensions:

- **Strategic (St)** — Long-term direction, vision, goals, positioning
- **Tactical (Ta)** — Implementation, logistics, operations, resources
- **Creative (Cr)** — Novel approaches, design, aesthetics, experience
- **Analytical (An)** — Risks, trade-offs, evaluation, frameworks, metrics
- **Human-centered (Hc)** — User needs, emotions, accessibility, stakeholder perspectives
- **Systems (Sy)** — Interdependencies, feedback loops, second-order effects, scaling
- **Provocative/Lateral (PL)** — Assumption-challenging, constraint-inverting, paradigm-breaking

Questions frequently span multiple dimensions (e.g., a risk question about child safety is both Analytical and Human-centered). All dimension tags are counted, so the total tag count (~550) exceeds the question count (~289). Percentages reflect the distribution of dimension tags, not questions.

#### Per-Persona Dimension Profiles

**The Questioner** (72 stated questions, 130 dimension tags):
- Provocative/Lateral: **30.8%** ← dominant dimension
- Human-centered: **23.1%**
- Analytical: **14.6%**
- Tactical: **9.2%**
- Strategic: **8.5%**
- Creative: **7.7%**
- Systems: **6.2%**

Profile: Broadest coverage of any persona. Leads the set in Provocative/Lateral questioning — consistently challenges assumptions ("Why do we assume...?", "What if we eliminated...?"). Provides the set's primary source of divergent thinking. Also the only persona with meaningful Creative output (7.7%). Surprisingly well-rounded for a persona classified as Analytical.

**The Analyst** (53 stated questions, 100 dimension tags):
- Analytical: **61.0%** ← overwhelmingly dominant
- Tactical: **15.0%**
- Human-centered: **13.0%**
- Strategic: **7.0%**
- Creative: **2.0%**
- Systems: **2.0%**
- Provocative/Lateral: **0.0%**

Profile: Pure analytical framing. Every question is structured as decomposition, evaluation, or framework construction. Zero Provocative/Lateral questions across all 3 topics. The 13% Human-centered tagging comes from analytical framing of human concerns (e.g., "What are the observable indicators of engagement?") rather than genuine empathic perspective-taking. Zero Systems thinking.

**The Audience Advocate** (55 stated questions, 88 dimension tags):
- Human-centered: **70.5%** ← overwhelmingly dominant
- Tactical: **9.1%**
- Analytical: **9.1%**
- Systems: **5.7%**
- Creative: **3.4%**
- Strategic: **1.1%**
- Provocative/Lateral: **1.1%**

Profile: Single-dimension persona. Virtually all questions center lived experience, emotional journeys, accessibility, and inclusion. Provides the set's deepest exploration of stakeholder perspectives. Brings modest Systems thinking (5.7%) through questions about power dynamics and community ownership. However, contributes almost nothing to Creative, Strategic, or Provocative/Lateral territory.

**The Devil's Advocate** (57 stated questions, 128 dimension tags):
- Analytical: **52.3%** ← dominant dimension
- Human-centered: **19.5%**
- Tactical: **14.8%**
- Provocative/Lateral: **6.3%**
- Systems: **5.5%**
- Strategic: **1.6%**
- Creative: **0.0%**

Profile: Risk-assessment specialist. Despite the "advocate" framing, DA operates almost entirely within analytical territory — identifying failure modes, liability exposure, and implementation risks. The 19.5% Human-centered comes from flagging risks to specific populations (children with allergies, excluded community members), not from centering their experience. Zero Creative questions across all 3 topics. The small PL contribution (6.3%) comes from occasional assumption-challenges ("Have we considered whether this community actually wants a tool library?"), but these are more skeptical than genuinely divergent.

**The First Principles Thinker** (52 stated questions, 104 dimension tags):
- Provocative/Lateral: **33.7%** ← dominant dimension
- Analytical: **24.0%**
- Human-centered: **14.4%**
- Systems: **13.5%** ← distinctive strength
- Strategic: **7.7%**
- Tactical: **3.8%**
- Creative: **2.9%**

Profile: The set's most balanced "thinking" persona alongside the Questioner. FPT's PL output differs from the Questioner's — where the Questioner asks "What if we didn't?" (constraint inversion), FPT asks "What is this really?" (reductive reframing). FPT provides the set's strongest Systems contribution (13.5%) through questions about interdependencies, second-order effects, and organizational viability. Modest Creative output (2.9%).

#### Persona Dimension Summary

Dimension dominance by persona (>25% of that persona's tags):
- Questioner → Provocative/Lateral (30.8%)
- Analyst → Analytical (61.0%)
- Audience Advocate → Human-centered (70.5%)
- Devil's Advocate → Analytical (52.3%)
- First Principles Thinker → Provocative/Lateral (33.7%)

Dimension floor by persona (0% or negligible):
- Questioner → none (all dimensions >6%)
- Analyst → Provocative/Lateral (0.0%), Systems (2.0%), Creative (2.0%)
- Audience Advocate → Strategic (1.1%), Provocative/Lateral (1.1%)
- Devil's Advocate → Creative (0.0%), Strategic (1.6%)
- First Principles Thinker → Creative (2.9%), Tactical (3.8%)

---

### Territory Map

#### Combined Set Dimension Distribution (all 5 personas, all 3 topics)

550 total dimension tags across ~289 questions:

- **Analytical: 32.7%** — OVERREPRESENTED (>30% threshold)
- Human-centered: 26.4%
- Provocative/Lateral: 15.3%
- Tactical: 10.5%
- Systems: 6.5%
- Strategic: 5.3% — borderline underrepresented
- **Creative: 3.3%** — SEVERELY UNDERREPRESENTED (<5% threshold)

#### Dimension Source Concentration

How dependent is the combined set on individual personas for each dimension?

- **Analytical:** Distributed across Analyst (34%), DA (37%), FPT (14%), Questioner (11%), AA (4%). Robust — survives any single persona removal.
- **Human-centered:** Concentrated in AA (43%), Questioner (21%), DA (17%). AA is the anchor; without AA, Hc drops from 26.4% to ~18%.
- **Provocative/Lateral:** Concentrated in Questioner (48%), FPT (42%), DA (10%). Two personas carry 90% of this dimension.
- **Creative:** Extremely thin — Questioner (56%), FPT (17%), AA (17%), Analyst (11%), DA (0%). No dedicated source. The Questioner generates most Creative tags as a side effect of assumption-challenging, not as a primary output.
- **Systems:** Concentrated in FPT (39%), Questioner (22%), DA (19%), AA (14%). FPT is the primary Systems contributor.
- **Tactical:** Distributed across DA (33%), Analyst (26%), Questioner (21%), AA (14%), FPT (7%). Reasonably distributed.
- **Strategic:** Distributed across Questioner (38%), FPT (28%), Analyst (24%), DA (7%), AA (3%). Present but thin.

#### The Analytical Overlap Problem

The Analyst and Devil's Advocate together account for 71% of all Analytical dimension tags. Their combined profile is:

- Analyst: decomposition, evaluation frameworks, cost-benefit, metrics, scoring
- DA: risk identification, failure modes, liability, what-goes-wrong scenarios

These are two facets of analytical thinking (constructive analysis vs. adversarial analysis), but both operate within the same fundamental dimension. The combined set effectively deploys 2 of 5 personas (40%) on a single dimension that occupies 33% of total territory — a concentration that crowds out other dimensions.

---

### Cross-Topic Patterns

#### Dimension Distribution by Topic

**Space-party** (194 tags):
- An: 34.0%, Hc: 33.5%, Ta: 16.0%, PL: 6.7%, Cr: 6.2%, Sy: 3.6%, St: 0.0%
- Zero Strategic — appropriate for a party topic, which has no long-term positioning
- Highest Creative of the three topics (6.2%) — the experiential nature of party design draws some creative questions
- Lowest Systems (3.6%) — party is a bounded event with fewer interdependencies
- Lowest Provocative/Lateral (6.7%) — the concrete, familiar topic may constrain assumption-challenging

**Tool-library** (170 tags):
- An: 30.0%, PL: 18.2%, Hc: 18.2%, Sy: 12.9%, Ta: 10.0%, St: 7.6%, Cr: 2.9%
- Most balanced distribution of the three topics
- Highest Systems (12.9%) — organizational/community dynamics invite systems thinking
- Highest Strategic (7.6%) — nonprofit mission/sustainability raises strategic questions
- PL and Hc are even at 18.2% — the social justice dimension draws both assumption-challenging and human-centered questions

**Habit-tracker** (186 tags):
- An: 33.9%, Hc: 26.3%, PL: 21.5%, St: 8.6%, Ta: 5.4%, Sy: 3.8%, Cr: 0.5%
- Highest Provocative/Lateral (21.5%) — product/market assumptions invite more challenge
- Lowest Creative (0.5%) — only 1 Creative tag! The technical/product topic appears to suppress creative inquiry
- Lowest Tactical (5.4%) — abstract digital product has fewer operational logistics

#### Consistent Findings Across All Topics

1. **Analytical is always #1 or #2** (30-34% across all topics). This is structural, not topic-dependent.
2. **Creative is always last or near-last** (0.5-6.2%). This is the most consistent gap.
3. **Human-centered is always substantial** (18-34%), but this is almost entirely AA's contribution.
4. **Systems is consistently low** (3.6-12.9%), peaking only when the topic has obvious organizational dynamics.

#### Topic Sensitivity Finding (RQ6)

The dimension mix does shift across topics, but the shifts are predictable:
- Concrete experiential topics (space-party) draw slightly more Creative and Tactical
- Organizational topics (tool-library) draw more Systems and Strategic
- Product/market topics (habit-tracker) draw more Provocative/Lateral and Strategic

However, the **gaps are consistent**: Creative is always near-zero, Analytical is always dominant. The topic doesn't compensate for missing persona capabilities. A set that lacks Creative personas produces very few Creative questions regardless of topic.

---

### Recommendation

#### Verdict: Analytical Bias Hypothesis — PARTIALLY CONFIRMED

**Confirmed:**
- Analytical is the single largest dimension at 32.7% (exceeds 30% overrepresentation threshold)
- Creative is severely underrepresented at 3.3% (well below 5% underrepresentation threshold)
- Two of five personas (Analyst + DA) produce near-identical dimension profiles (Analytical-dominant with zero Creative)
- The set has no dedicated divergent or creative question source
- These findings hold across all three topics

**Partially refuted:**
- Human-centered is well-represented at 26.4%, not underrepresented as hypothesized — AA delivers this
- Provocative/Lateral is moderately represented at 15.3% — the Questioner and FPT provide genuine assumption-challenging territory that the "all-analytical" label obscures
- Strategic is borderline at 5.3%, not dramatically overrepresented as hypothesized

**Nuanced finding:**
The bias is less "all-analytical" and more "no-creative, no-generative." The current set has meaningful Analytical, Human-centered, and Provocative/Lateral coverage. What it completely lacks is Creative territory — novel approaches, aesthetic imagination, design innovation, metaphorical thinking, experience design. This is the true gap, more specific than "analytical bias."

#### Audience Advocate Differentiation

AA **meaningfully shifts** the dimension balance. Without AA:
- Human-centered drops from 26.4% to ~18.0%
- Analytical rises from 32.7% to ~39.0%

AA is the set's only substantial counterweight to the Analytical dimension. However, AA is a one-dimension persona (70.5% Human-centered) that contributes almost nothing to Creative, Provocative/Lateral, or Systems territory. AA addresses one gap effectively but cannot compensate for the Creative void.

#### Roster Implications

The dimension audit suggests the Phase 2B set needs:
1. **At least one Generative/Creative persona** — this is the critical gap. Provocateur, Visionary, Analogist, or Constraint Flipper would directly address the 3.3% Creative floor.
2. **Reduction of Analytical redundancy** — the Analyst and DA produce overlapping dimension profiles. One could be replaced without losing meaningful territory.
3. **The Questioner is the set's most valuable member** — broadest dimension coverage, primary PL source, and the only persona generating meaningful Creative side-output. The Questioner should remain despite being "retired" from Phase 3.
4. **FPT is the set's strongest "thinking" persona** — unique Systems contribution (13.5%) and strong PL output (33.7%) that complements the Questioner's assumption-challenging style.

#### Phase 2B Set Assessment (Include / Exclude / Conditional)

- **The Questioner:** INCLUDE — indispensable. Broadest coverage, primary PL and Creative source. "Retired from Phase 3" status is irrelevant for Phase 2B question generation value.
- **The Analyst:** CONDITIONAL — provides analytical depth but creates redundancy with DA. If the set expands to include a Creative persona, keeping the Analyst may overcrowd Analytical territory. Consider replacing with a Generative persona.
- **The Audience Advocate:** INCLUDE — essential Human-centered anchor. Without AA, the set loses its primary Hc source and becomes genuinely analytically biased.
- **The Devil's Advocate:** CONDITIONAL — overlaps heavily with Analyst (both >50% Analytical). DA's adversarial framing adds some unique territory (risk identification, second-order consequences) but at the cost of zero Creative output. If only one Analytical persona is retained, DA's adversarial lens may be more valuable for Phase 2B than the Analyst's framework-building.
- **The First Principles Thinker:** INCLUDE — unique Systems contribution and strong PL output that complements the Questioner. The most "selfless" question generator among the analytical personas — its reductive reframing opens territory for Phase 3 personas to explore rather than answering its own questions.

---

### Notes

#### Surprising Findings

1. **The Questioner is not purely Analytical.** Despite being classified as Analytical in the persona taxonomy, the Questioner's actual output is dominated by Provocative/Lateral (30.8%) with Analytical as only the 3rd largest dimension (14.6%). The "Questioner" classification may need revision — this persona functions as a divergent thinker, not a convergent analyst.

2. **The Devil's Advocate is more Analytical than Provocative.** Despite the "advocate" framing suggesting contrarian/challenging behavior, DA's actual output is 52.3% Analytical risk-assessment and only 6.3% Provocative/Lateral. DA doesn't challenge assumptions — it identifies risks within existing assumptions. This is a fundamentally different cognitive operation.

3. **Creative is the true gap, not "generative" broadly.** The set has reasonable Provocative/Lateral coverage (15.3%) through Questioner + FPT. What's completely missing is aesthetic, experiential, and imaginative territory. No persona asks "What would make this beautiful?" or "What metaphor from a completely different domain could transform this?"

4. **Topic affects dimension mix but doesn't fix gaps.** Even the most experiential topic (space-party) only reached 6.2% Creative. The most systems-rich topic (tool-library) only reached 12.9% Systems. Persona capability is the primary driver of dimension coverage, not topic characteristics.

5. **Stated question counts are unreliable.** Multiple files undercount their own bold questions by 2-5 questions. This doesn't affect the dimension analysis but suggests subagent self-reporting should be verified.

#### Connections to Other Investigations

- **I01-I04 (individual persona deep-dives):** The dimension profiles here can validate or challenge the persona-by-persona territory assessments.
- **I05 (cluster divergence):** The dimension audit explains *why* clusters converge — if 3 of 5 personas generate Analytical questions, clusters will naturally center on analytical themes (risk, feasibility, stakeholders).
- **I07 (candidate persona evaluation):** The Creative void identified here should be the primary criterion for evaluating candidate replacements. Generative personas should be assessed for their Creative dimension output specifically.
- **I08 (selfless questions):** FPT's reductive questioning style appears inherently "selfless" — its questions open territory for exploration by other personas rather than generating questions only FPT can answer. This warrants explicit cross-reference.

---

### Evidence

See detailed evidence for findings in [06_dimension-audit.md](./2026-02-18_question-generation-eval/targeted-investigations/06_dimension-audit.md)

---

## Recommendations and Next Steps

### Roster Recommendations

These recommendations synthesize the convergent findings across all six investigations. Where investigations diverged, the stronger evidence base takes precedence.

#### Personas to Retain (Strong Consensus)

**1. The Questioner — RETAIN (unanimous across I01, I06)**

The single most valuable Phase 2B member. Broadest dimension coverage of any persona (no dimension below 6%), primary source of Provocative/Lateral (30.8%) and Creative (56% of set's total Creative output) questions. Its Phase 3 retirement is irrelevant — question generation is its native task. The Questioner's multi-dimensional output and high selflessness make it the Phase 2B anchor.

**2. The Audience Advocate — RETAIN (I04, I06)**

The set's essential Human-centered anchor. Without the AA, Human-centered coverage drops from 26.4% to ~18% and Analytical rises to ~39%, creating genuine analytical bias. The AA's systematic accessibility coverage (disability, language, cross-cultural) fills territory the Empath approaches only emotionally. However, the AA should not be the *only* human-centered voice — it needs complementation (see Empath below).

#### Personas to Add (Strong Evidence)

**3. One Destructive-Creative Persona: The Provocateur (I03)**

The Provocateur's inversion-and-demolition mode generates Creative territory through provocation — a mechanism entirely absent from the current set. Its "question laundering" pattern (provocation → "real insight" suffix) ensures provocative questions remain actionable. High selflessness — challenges without proposing solutions, leaving rich territory for Phase 3 personas.

**4. One Constructive-Creative Persona: The Visionary (I03)**

The Visionary's aspiration-and-reconstruction mode generates Creative territory through reimagination. Its strong Human-centered secondary dimension (28 total appearances across 3 topics) means it doesn't just add Creative coverage — it adds a *different kind* of Human-centered coverage (aspirational, not analytical). Together with the Provocateur, it creates a "destroy and rebuild" dynamic that maximizes divergent territory.

**5. The Empath — ADD (I04)**

Reaches emotional registers no other persona accesses: shame, worthiness, interior contradictions, meaning-making, emotional labor. Its questions specifically activate generative and connective Phase 3 personas (Storyteller, Visionary, Connector) that the current analytical set underserves. Extreme consistency (CV=1.4%) makes it the most reliable addition. The Empath does not replace the AA — they are complementary (outside-in design thinking vs. inside-out emotional navigation).

#### Personas with Conditional Status

**6. The First Principles Thinker — CONDITIONAL (I01 conditional, I06 include)**

Provides the set's strongest Systems contribution (13.5%) and valuable Provocative/Lateral output (33.7%) that complements the Questioner's style. However, lower selflessness than the Questioner (tends to ask self-answerable questions) and heavy analytical skew (87% in I01's assessment) reduce its per-slot value. Include at high effort (5 personas) but not at medium effort where the slot is better used for a generative persona.

**7. The Analyst — CONDITIONAL (I02 keep, I06 conditional)**

Provides clean, reliable analytical decomposition (always 5 clusters, CV=9.7%) and generates selfless questions that serve diverse Phase 3 personas. However, 61% Analytical dominance with zero Provocative/Lateral and near-zero Creative creates redundancy with the DA. If the roster has room for only one pure analytical persona, the choice between Analyst and DA depends on which analytical mode the rest of the roster needs more.

**8. The Devil's Advocate — CONDITIONAL (I02 keep, I06 conditional)**

Adversarial stress-testing is valuable, and the DA's adaptive volume (expanding on complex topics) is a useful feature. However, 52.3% Analytical with zero Creative makes it the least dimensionally diverse analytical persona. Its 19.5% Human-centered contribution comes from flagging risks *to* people, not centering their experience — so it partially overlaps with the Analyst's risk-identification function. If only one pure analytical persona is retained, the DA's adversarial lens may be more valuable than the Analyst's framework-building, since adversarial questions are harder for other personas to replicate.

**9. The Storyteller — STRONG CANDIDATE, NOT YET TESTED IN COMBINATION (I05)**

Opens the most territory of the I05 trio — experiential micro-journeys, emotional peak design, narrative conflict/resolution. Highest selflessness of the three (its scenario-based questions are best answered by other Phase 3 personas). If the roster expands beyond 5 personas or if the Empath is not included, the Storyteller is the next strongest addition.

**10. The Analogist — CANDIDATE (I05)**

Cross-domain transfer introduces entirely new conceptual vocabulary that no other persona generates. However, somewhat "selfish" — the Analogist is often best positioned to answer its own cross-domain questions. Strong reliability (CV=10.1%). Best suited for high-effort rosters where the generative+creative slots are not already saturated.

**11. The Constraint Flipper — LOW PRIORITY (I05)**

Genuine constraint inversion is valuable but narrow — lower volume (5.6 KB avg), exhaustible operation, and partial overlap with analytical territory (flips the same constraints analytical personas identify). Include only if the roster expands beyond 6 personas.

### Proposed Roster Configurations

#### Medium Effort (3 Personas)

Questioner + Provocateur + Visionary

*Rationale:* The Questioner provides broad coverage including Human-centered and Analytical dimensions as secondary outputs. The Provocateur and Visionary fill the Creative void from opposite directions. This maximizes dimension diversity per slot. The Audience Advocate's systematic accessibility coverage is sacrificed — partially offset by the Questioner's 23.1% Human-centered output and the Visionary's Human-centered secondary dimension.

*Trade-off:* No dedicated Human-centered or pure Analytical persona. Acceptable at medium effort where fewer questions are generated and synthesis is lighter.

#### High Effort (5 Personas)

**Option A (Maximize Diversity):** Questioner + Audience Advocate + Empath + Provocateur + Visionary

*Rationale:* Two analytical-adjacent personas (Questioner, AA) plus one emotional depth persona (Empath) plus two generative personas (Provocateur, Visionary). Covers all seven dimensions with dedicated sources for Human-centered (AA + Empath), Creative (Provocateur + Visionary), and Provocative/Lateral (Questioner + Provocateur). Analytical coverage comes as secondary output from the Questioner and AA.

*Trade-off:* No dedicated Analytical or Systems persona. The Questioner's 14.6% Analytical and the AA's 9.1% Analytical provide some analytical coverage, but deep structural decomposition (the Analyst's strength) and systems thinking (FPT's strength) are not present.

**Option B (Balanced):** Questioner + Audience Advocate + FPT + Provocateur + Visionary

*Rationale:* Retains one deep-thinking analytical persona (FPT) for Systems coverage (13.5%) alongside the diversity gains. FPT's Provocative/Lateral output (33.7%) complements the Questioner's. Sacrifices emotional depth (no Empath) for structural depth.

*Trade-off:* No Empath — the emotional register gaps (shame, worthiness, meaning-making) identified in I04 remain. The AA partially covers Human-centered but through design-thinking, not emotional navigation.

### Open Questions for Further Investigation

**1. Combination effects are untested.** All six investigations assessed personas individually or in pairs. The actual Phase 2B output depends on how persona questions interact during synthesis (Phase 2C). A diversified roster might produce richer synthesis — or the synthesis prompt might flatten diversity into analytical summaries. Testing proposed rosters end-to-end through synthesis is the critical next step.

**2. The Appreciative Inquiry gap remains unresolved.** No investigated persona is a dedicated strengths-based question generator. The Empath is closest (I04) but its primary mode is emotional excavation, not aspiration. The Visionary provides some aspirational framing but from a paradigm-shift angle, not a strengths-based one. Options to explore:
   - Prompt engineering: add Appreciative Inquiry framing to the generic Phase 2B prompt
   - New persona: design a dedicated Appreciative Inquiry persona for Phase 2B
   - Existing persona: test whether the Storyteller's narrative mode naturally produces appreciative questions (its "joy of discovery" and "memory and legacy" clusters suggest it might)

**3. Analyst vs. DA: which to retain when only one slot is available?** I02 established they're complementary; I06 established they're redundant at the portfolio level. A direct head-to-head in the context of a diversified roster (e.g., Questioner + AA + Provocateur + Visionary + Analyst vs. the same set with DA) would resolve this.

**4. How does the Empath interact with the Provocateur?** Both generate Provocative/Lateral questions but from different angles — the Empath challenges premises through emotional truth ("What does this app believe about human nature?"), the Provocateur through inversion and demolition. In combination, they could either complement beautifully or create synthesis noise. Needs testing.

**5. Selflessness scoring needs formalization.** The concept emerged organically across I01, I03, I04, and I05, but each investigation used different informal criteria. A standardized selflessness metric (e.g., percentage of questions best answered by a Phase 3 persona other than the question's author) would allow quantitative comparison across candidates.

**6. Stated question counts are unreliable.** I06 found multiple files undercounting bold questions by 2-5. Any future analysis should independently count questions rather than trusting persona self-reports.

### Recommended Next Steps (Priority Order)

**Step 1: End-to-end roster testing.** Run the proposed medium-effort roster (Questioner + Provocateur + Visionary) and at least one high-effort configuration through the full Phase 2B-2C pipeline on one test topic. Compare synthesis output against the current set's synthesis output for the same topic. The key metric: does the diversified roster produce more dimensionally balanced synthesis questions?

**Step 2: Synthesis prompt audit.** Before testing, review the Phase 2C synthesis prompt for implicit analytical bias. If the synthesis prompt privileges analytical framing (e.g., "organize by feasibility" or "prioritize actionable questions"), it may flatten generative input regardless of roster composition. The synthesis prompt may need revision to preserve diverse question framing.

**Step 3: Formal selflessness assessment.** Apply a standardized selflessness scoring method to the top candidate personas. For each persona's questions, classify what percentage would be best answered by (a) the persona itself, (b) other Phase 3 personas in the same dimension, or (c) Phase 3 personas in a different dimension. Category (c) is the highest-value Phase 2B output.

**Step 4: Resolve the Analyst vs. DA question.** Run both in the context of a diversified roster to determine which pure-analytical persona complements the generative additions better. The DA's adversarial mode may pair better with the Provocateur (both stress-test), or worse (both challenge without constructing).

**Step 5: Appreciative Inquiry resolution.** Test the three options — prompt engineering, new persona, or Storyteller assessment — to determine the most effective way to introduce strengths-based questioning. This is lower priority than roster composition but should be resolved before finalizing the Phase 2B design.

**Step 6: Revise persona taxonomy.** The investigations revealed systematic mismatches between persona classifications and actual Phase 2B behavior. The Questioner is classified as Analytical but functions as Provocative/Divergent. The DA is framed as an advocate but functions as an analytical risk-assessor. Update the persona taxonomy to reflect Phase 2B behavior, not Phase 3 behavior, for any persona used in Phase 2B.

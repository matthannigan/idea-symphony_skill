# I-V1: Per-Persona Quality Comparison Across Volumes (Take 2)

**Date:** 2026-02-23
**Input files:** 12 ALL-QUESTIONS files analyzed from habit-tracker, space-party, tool-library
**Execution:** Single-context analysis (Opus 1M) — all 12 files read directly, no subagents

---

## Summary

This investigation extends the initial 3-volume analysis (V1) by adding a fourth, lower volume tier — "the 5 most important questions" — and re-evaluating all 10 Tier 1 personas across the full 4-level spectrum (5, 5-10, 10-15, 15-20). The refined prompt instructions from Phase 2B research were used in all test data.

**Key findings:**

1. **The 5-question floor produces ultra-dense compound questions, not a tighter distillation.** At 5 questions, personas pack multiple sub-questions and dimensions into each item, creating sprawling multi-paragraph prompts. This is qualitatively different from 5-10 (which produces focused, bounded questions) and potentially problematic for Phase 3 brainstorming.

2. **The initial V1 finding that low volumes = distillation holds, but only for 5-10.** The 5-question tier is better characterized as "compounding" — combining 2-3 separate questions into one. The 5-10 tier remains the true distillation sweet spot.

3. **Filler patterns at 15-20 are confirmed and persona-dependent**, consistent with the initial V1 findings. The refined prompts reduced but did not eliminate filler for perspective-heavy personas.

4. **A uniform 8-12 question range emerges as a viable standard**, with persona-specific adjustments of ±3 for analytical vs. perspective personas. This is simpler than the initial V1's three-tier grouping.

5. **Several personas produce questions distinctive enough to warrant direct append rather than synthesis** in Phase 2C, particularly the Provocateur, Analogist, and Visionary.

---

## Per-Persona Analysis

### Questioner

- **Volume 5:** Questions are broad and probing but well-bounded. Each targets a distinct foundational assumption. Quality is high; the "most important" framing works well for this persona because the Questioner naturally prioritizes meta-level inquiry. Example (habit-tracker): "What problem are we actually solving?" — crisp, direct, doesn't overload. Coverage: Strategic, Human-Centered, Analytical. Missing: Tactical, Systems.
- **Volume 5-10:** 10 questions across 4-5 clusters. Questions maintain the same sharp, assumption-challenging quality while covering all major dimensions. Cluster structure is clean and thematic. This feels slightly truncated — the Questioner has more ground to cover.
- **Volume 10-15:** 15 questions across 5 clusters. Strong throughout. The Questioner systematically walks through motivation, differentiation, strategy, trust, and implementation. No filler detected. Questions remain genuinely open-ended and specific.
- **Volume 15-20:** 20 questions across 5 clusters. Still strong. The Questioner uses additional volume to explore edge cases and alternative framings without becoming redundant. Questions 16-20 add genuine new territory (enterprise potential, exit strategy, framework decisions). Filler estimate: <5%.
- **Subset relationship:** The 5 questions are a genuine subset of the 5-10 themes (same meta-level concerns), but 5-10 adds operational and tactical angles absent at 5. The 15-20 set is a superset that adds granularity without diverging.
- **Filler estimate at 15-20:** ~5% — possibly 1 question per topic that overlaps thematically with another.
- **Cross-topic consistency:** Very consistent. The Questioner maintains its assumption-challenging voice across all three topics with equal effectiveness.
- **Recommendation:** 12-20 questions. The Questioner is one of the few personas that genuinely benefits from high volume. Even at 20, quality remains high.

### Analyst

- **Volume 5:** Questions are extremely long and multi-layered. Each is essentially 3-4 questions combined into a single paragraph with multiple "breaking this down" clauses. Example (habit-tracker): a single question about "measurable behavioral indicators" that spans user metrics, retention curves, identity alignment, and 6-month tracking — this is too compound for a single brainstorming response. Coverage is strategic and analytical but skips creative and human-centered dimensions.
- **Volume 5-10:** 10 questions across 5 clusters. Questions become properly bounded — each addresses one analytical dimension. Cluster structure (Market, Behavioral, Data, Technical, Validation) provides a clean framework. Quality is high.
- **Volume 10-15:** 15 questions across 5 clusters. Optimal for this persona. Covers the full analytical landscape: engagement metrics, competitive positioning, behavioral science, technical architecture, and monetization. Each question is crisp and data-oriented.
- **Volume 15-20:** 17-20 questions across 5-6 clusters. Strong. The Analyst uses additional volume to drill into sub-dimensions (feature impact attribution, churn-revenue optimization). Minor filler appears as questions start to fragment into increasingly narrow analytical slices that could be combined.
- **Subset relationship:** 5 questions are a compressed version of 5-10 themes (not a subset — the compound structure at 5 is qualitatively different). 10-15 is a proper superset of 5-10 with additional clusters.
- **Filler estimate at 15-20:** ~10%. Some questions at the margin feel like analytical subdivisions that could be consolidated (e.g., separate questions for "churn prediction" and "retention thresholds" that substantially overlap).
- **Cross-topic consistency:** Very consistent. The Analyst applies the same systematic framework across all topics, adapting the specific dimensions to context.
- **Recommendation:** 10-15 questions (slight downward revision from initial V1). While the Analyst handles volume well, the 15-20 range begins to fragment analytical categories into overly narrow sub-questions.

### Devil's Advocate

- **Volume 5:** 5 tightly focused "fatal flaw" questions. Each targets a fundamental tension or contradiction in the project. Very high impact. Example (habit-tracker): the monetization misalignment paradox (business wants retention, users should graduate). Format includes bracketed headers and suggested mitigations.
- **Volume 5-10:** 10-12 questions across 4-5 clusters. Expands from fatal flaws to secondary risks (notification fatigue, feature creep, offline expectations). Still sharp and well-targeted.
- **Volume 10-15:** 13-14 questions across 5-6 clusters. Strong coverage of risks across market, behavioral, privacy, technical, and UX domains. Questions remain genuinely critical rather than contrarian for its own sake.
- **Volume 15-20:** 17-20 questions across 4-5 clusters. Filler begins to appear. The Devil's Advocate shifts from identifying structural vulnerabilities to flagging minor operational concerns (specific framework migration risks, solo developer "bus factor"). These are valid concerns but lack the incisive quality of the top 10.
- **Subset relationship:** The 5 questions represent the "highest-severity" risks that consistently appear in all volume tiers. The 5-10 set adds medium-severity risks. 15-20 adds low-severity and speculative risks.
- **Filler estimate at 15-20:** ~15-20%. Questions 13-17+ often address narrow edge cases or repeat themes from earlier questions with slightly different framing.
- **Cross-topic consistency:** Consistent. The Devil's Advocate adapts its risk framework to each topic appropriately.
- **Recommendation:** 8-12 questions. The Devil's Advocate is most impactful when focused on structural flaws. Beyond 12, the critical voice begins to feel like worrying rather than genuine challenge.

### Storyteller

- **Volume 5:** Each question is a complete narrative vignette — 100-200 words of character development, emotional arc, and scenario painting. Extraordinarily vivid but overwhelming in density. Example (habit-tracker): "What does the emotional journey look like for someone who has repeatedly failed..." is essentially a short story with embedded design questions. The 5-question output reads more like a narrative brief than a question set.
- **Volume 5-10:** 10 questions across 5 clusters. The narrative mode is maintained but questions become more bounded. Each tells a mini-story (specific character, specific moment, specific design question). Cluster structure provides narrative arc coverage (origin, middle, transformation, antagonist, texture).
- **Volume 10-15:** 13-15 questions across 5 clusters. The Storyteller adds secondary characters, plot complications, and additional emotional moments. Quality remains strong through about question 12, then begins to force narrative framing onto less naturally narrative elements.
- **Volume 15-20:** 17-20 questions across 5 clusters. Clear filler emerges. The Storyteller starts creating elaborate narratives around logistical details (the "story" of cleanup, the "narrative" of data export). The narrative voice becomes a constraint rather than an asset. Some questions are essentially the same emotional beat applied to different characters.
- **Subset relationship:** 5 questions = core narrative arc (arrival, crisis, transformation, departure, identity). 5-10 adds supporting characters and secondary beats. 15-20 applies the narrative lens to increasingly peripheral moments.
- **Filler estimate at 15-20:** ~25-30%. The Storyteller's distinctive voice means filler is easy to identify — it's the questions where the narrative framing feels forced rather than illuminating.
- **Cross-topic consistency:** Very consistent in approach. Adapts characters and scenarios to each topic while maintaining the same narrative structure. Space-party topic naturally suits narrative treatment better than habit-tracker.
- **Recommendation:** 5-8 questions. The Storyteller's value is in emotional resonance and user journey illumination, which is captured in the first 5-8 questions. Beyond that, diminishing returns.

### Analogist

- **Volume 5:** Each question introduces a powerful, well-developed metaphor. Garden ecosystems, athletic training principles, public library systems, urban planning, jazz ensemble improvisation. Each analogy is deeply explored with specific parallels drawn. No overlap, no filler.
- **Volume 5-10:** 10 questions across 5 clusters. Expands the metaphor library across domains (biology, history, education, physical therapy, language acquisition). Each remains a genuinely illuminating cross-domain connection.
- **Volume 10-15:** 14-17 questions across 4-5 clusters. Here the quality divergence becomes apparent. Some analogies remain strong (circadian rhythms, keystone species), while others become more superficial (museum curation, agricultural fallowing — the parallels feel less precise).
- **Volume 15-20:** 20 questions across 4-5 clusters. Significant filler. The Analogist stretches to find metaphors in increasingly tangential domains (subscription boxes, operating room instrument trays, choice architectures in supermarkets). Some analogies are clever but lack the depth of the top 10. The "analogy for everything" approach feels strained.
- **Subset relationship:** 5 questions = core paradigm-shifting metaphors. 5-10 adds strong secondary metaphors from different domains. 15-20 scrapes the bottom of the metaphor barrel.
- **Filler estimate at 15-20:** ~25-35%. Several analogies at the high end are thin — the parallel is surface-level rather than genuinely structural.
- **Cross-topic consistency:** Interesting variation. The Analogist finds richer metaphors for complex topics (habit-tracker) than for concrete ones (space-party), where the analogies sometimes feel forced.
- **Recommendation:** 5-10 questions. The Analogist's value is in a few powerful reframing metaphors, not an exhaustive catalogue. Beyond 10, analogy quality drops sharply.

### Appreciative Inquirer

- **Volume 5:** 5 questions following the classic AI framework (Discovery, Dream, Design, Destiny). Each is warm, strength-focused, and practically grounded. The 5-question constraint forces one question per phase plus one integrative question.
- **Volume 5-10:** 10-12 questions across 4 clusters (Discovery, Dream, Design, Destiny). Each phase gets 2-3 questions, allowing different angles within the strengths-based framework. Quality is uniformly high.
- **Volume 10-15:** 14-15 questions across 4 clusters. The framework holds well but some questions begin to overlap thematically ("What existing strengths..." and "What do users already do well..." are essentially the same question reframed).
- **Volume 15-20:** 17-20 questions across 4 clusters. The appreciative framing becomes repetitive. Multiple questions ask variations of "imagine a wonderful future" or "what small experiment could we try." The vocabulary of appreciation ("genuine," "delight," "strengths," "flourishing") recycles noticeably.
- **Subset relationship:** 5 questions are a clean subset of the 4-phase framework. Higher volumes add depth within phases rather than new phases.
- **Filler estimate at 15-20:** ~20-25%. The repetitive framing is the main issue — many questions could be consolidated without losing coverage.
- **Cross-topic consistency:** Very consistent. The Appreciative Inquirer applies the same framework identically across all topics.
- **Recommendation:** 8-12 questions. The 4-phase framework provides natural structure; 2-3 questions per phase is optimal.

### Provocateur

- **Volume 5:** Extremely punchy and distinctive. Each question presents an absurd inversion followed by a "real insight" revelation. The 5-question format feels optimal — each provocation is maximally impactful because there's no surrounding noise. Example (habit-tracker): "What if tracking habits actively *destroyed* progress?" followed by genuine insight about present-moment design.
- **Volume 5-10:** 10 questions across 4-5 clusters. Still strong. The provocations span different domains (anti-premise, user inversion, temporal disruption, absurd mechanics). Each maintains the shock-then-insight pattern.
- **Volume 10-15:** 13-15 questions across 4-5 clusters. The provocative tone starts to feel formulaic. By question 12, the reader has adapted to the "What if [absurd thing]?" pattern and the shock value diminishes. Some provocations feel like variations of earlier ones rather than genuinely new challenges.
- **Volume 15-20:** 18-20 questions across 4-5 clusters. Significant fatigue. The persona starts provoking about increasingly peripheral aspects. Some questions cross from productive challenge into nihilistic territory that doesn't generate useful brainstorming (e.g., "What if the app's success destroyed the user's life?"). The "real insight" addenda become predictable.
- **Subset relationship:** 5 questions = core paradigm disruptions. These are genuinely different from the 15-20 set — at 5, each provocation is carefully crafted; at 20, many feel generated to fill a quota.
- **Filler estimate at 15-20:** ~30-40%. The highest filler rate of any persona. Many provocations at the margin are clever but unproductive for actual brainstorming.
- **Cross-topic consistency:** Interesting variation. The Provocateur is strongest on abstract topics (habit-tracker) where there are more assumptions to challenge, and slightly weaker on concrete topics (space-party) where provocations can feel disconnected from practical constraints.
- **Recommendation:** 5-8 questions. The Provocateur's value is in a concentrated burst of assumption-breaking. Beyond 8, the edge dulls and the provocations become a wall of noise.

### Visionary

- **Volume 5:** Deeply philosophical, paradigm-questioning prompts. Each question challenges the fundamental category of the project ("What if we eliminated the concept of tracking entirely?"). Very abstract but genuinely thought-provoking. The "5 most important" framing works exceptionally well — the Visionary naturally thinks in transformative leaps rather than incremental steps.
- **Volume 5-10:** 10 questions across 4 clusters. Expands the visionary lens to additional dimensions (relationship between tool and user, new engagement models, social/existential dimensions). Maintains the "beyond current paradigms" quality.
- **Volume 10-15:** 13-15 questions across 4-5 clusters. Still strong. The Visionary applies transformative thinking to enough different facets that most questions feel genuinely distinct. Some begin to approach the boundary of practicality.
- **Volume 15-20:** 15-17 questions across 4-5 clusters. Notable: the Visionary often undershoots the 15-20 target (hitting 15-17 instead of 20), suggesting the model itself recognizes it's running out of genuinely visionary territory. The questions that do appear at the margin tend to repeat earlier themes with slightly different framing.
- **Subset relationship:** 5 questions represent the most radical paradigm challenges. These appear in some form at all volume levels. Higher volumes add mid-range visionary ideas that are less radical but still forward-thinking.
- **Filler estimate at 15-20:** ~15-20%. Less filler than the Provocateur because the Visionary's tone is more constructive, but some questions at the margin are "visionary" only in vocabulary, not in substance.
- **Cross-topic consistency:** Consistent visionary voice but quality varies by topic. The habit-tracker (abstract, digital product) naturally affords more visionary space than the space-party (concrete, time-bounded event).
- **Recommendation:** 5-10 questions. The Visionary is most powerful when focused on a few genuinely transformative reframings.

### Audience Advocate

- **Volume 5:** Dense, multi-stakeholder questions that combine accessibility, emotional experience, and power dynamics into compound prompts. Each question names specific marginalized populations and asks how design choices affect them. Very high quality but very dense — each question could support 15 minutes of discussion.
- **Volume 5-10:** 10 questions across 4-5 clusters. Questions become properly bounded — each focuses on one stakeholder dimension (sensory needs, economic barriers, emotional journey, privacy, behavioral design ethics). Excellent coverage of the user advocacy landscape.
- **Volume 10-15:** 13-15 questions across 3-5 clusters. The Audience Advocate maintains quality well at this range. Each question targets a distinct stakeholder concern. Cluster structure varies by topic but coverage is thorough.
- **Volume 15-20:** 17-20 questions across 4-5 clusters. Minor filler emerges. Some questions at the margin address narrow sub-populations or edge cases that could be consolidated (e.g., separate questions for "language barriers" and "cultural assumptions" when these are deeply intertwined). Still, the Audience Advocate handles high volume better than most perspective personas.
- **Subset relationship:** 5 questions represent the most critical equity/access concerns. 5-10 adds important secondary dimensions. 15-20 explores specific sub-populations and edge cases.
- **Filler estimate at 15-20:** ~10-15%. Lower filler than other perspective personas because there are genuinely many distinct stakeholder concerns to explore.
- **Cross-topic consistency:** Very consistent. The Audience Advocate identifies underserved populations relevant to each topic with equal facility.
- **Recommendation:** 10-15 questions. The Audience Advocate has enough distinct stakeholder dimensions to justify this range without significant filler.

### Systems Thinker

- **Volume 5:** Highly condensed questions that each reference specific system archetypes (reinforcing loops, Shifting the Burden, delays, leverage points). Each question names the dynamic and asks how it applies to the project. Dense but well-structured.
- **Volume 5-10:** 10 questions across 5 clusters. Expands to cover feedback loops, lifecycle dynamics, competitive dynamics, technical architecture as system, and monetization dynamics. Quality is strong throughout.
- **Volume 10-15:** 15 questions across 4-5 clusters. The Systems Thinker applies systemic analysis across the full project landscape. Questions remain specific and insight-generating. The archetype references (Success to the Successful, Fixes that Fail, Erosion of Goals) add analytical precision.
- **Volume 15-20:** 16-21 questions across 5 clusters. Variable quality. The Systems Thinker sometimes overshoots the target (21 for space-party) and sometimes undershoots (16). At the high end, some questions apply systemic thinking to minor details (the "system dynamics" of party favor selection). Stronger questions remain genuinely illuminating.
- **Subset relationship:** 5 questions = core system archetypes most relevant to the project. 5-10 adds secondary archetypes and specific subsystems. 15-20 extends to peripheral systems and speculative second-order effects.
- **Filler estimate at 15-20:** ~15-20%. The Systems Thinker can become overly granular, applying systemic language to situations where simpler framing would suffice.
- **Cross-topic consistency:** Consistent framework application, but quality is best on complex topics with many interacting elements (tool-library, habit-tracker) and slightly weaker on simpler, time-bounded topics (space-party).
- **Recommendation:** 10-15 questions. The Systems Thinker has enough distinct archetypes and subsystems to explore at this range without becoming pedantic.

---

## Cross-Persona Patterns

### Dimension Coverage Trends

At **Volume 5**, all personas naturally gravitate toward their strongest 2-3 dimensions. The Analyst focuses on Strategic/Analytical, the Storyteller on Human-Centered/Creative, the Systems Thinker on Systems/Analytical. This creates excellent persona differentiation but limited individual coverage.

At **Volume 5-10**, personas begin to cross into adjacent dimensions while maintaining their primary lens. Coverage broadens meaningfully without losing persona voice.

At **Volume 10-15**, most personas achieve 4-5 dimension coverage. This is where persona voice and dimensional breadth are most balanced.

At **Volume 15-20**, some personas start to cover dimensions that don't naturally fit their perspective (the Storyteller writing about technical architecture, the Provocateur addressing monetization pragmatically). These cross-dimensional questions are typically the weakest.

### Quality Degradation Pattern

Quality degradation at 15-20 follows a consistent pattern across personas:

1. **Thematic repetition** — the same core concern rephrased with slightly different framing
2. **Dimensional drift** — the persona addresses topics outside its natural lens, losing distinctiveness
3. **Granularity inflation** — broad, impactful questions fragment into narrow sub-questions
4. **Formulaic voice** — the persona's distinctive framing (narrative for Storyteller, inversion for Provocateur, metaphor for Analogist) becomes a template applied mechanically

### Consistency of Truncation vs. Filler

The relationship between volume tiers is consistent across personas but differs meaningfully between 5 and 5-10:

- **5 → 5-10**: Not a subset relationship. At 5, questions are compound/dense. At 5-10, questions are discrete/focused. The 5 questions represent a different mode of thinking (synthesis) rather than a selection from the 5-10 set.
- **5-10 → 10-15**: Clean superset. The 5-10 questions appear (in theme if not exact wording) within the 10-15 set, with additional questions expanding coverage.
- **10-15 → 15-20**: Mostly superset with filler padding. The additional 5-7 questions at 15-20 include 1-3 genuinely new angles and 2-5 that are redundant or peripheral.

---

## Implications for Effort Levels

### Recommended Standard Volume

**8-12 questions per persona** emerges as the universal sweet spot, with persona-specific adjustments:

| Persona Category | Personas | Recommended Range | Rationale |
|:---|:---|:---|:---|
| **Perspective** (narrow lens, distinctive voice) | Provocateur, Analogist, Visionary, Storyteller | **5-8** | Voice becomes formulaic beyond 8; value is in concentrated insight |
| **Structural** (systematic coverage through a specific framework) | Systems Thinker, Audience Advocate, Devil's Advocate, Appreciative Inquirer | **8-12** | Framework provides natural structure; ~3 questions per cluster |
| **Analytical** (breadth-seeking, systematic coverage) | Questioner, Analyst | **12-15** | Thrives on volume; uses additional questions for genuine new territory |

### Personas Requiring Different Treatment

The initial V1's three-tier grouping (Perspective/Structural/Analytical) is confirmed with the following refinements:

- **The Devil's Advocate** moves from the Analytical group (V1) to Structural. While the V1 found it "thrived at high volumes," the refined data shows filler emerging earlier than the Analyst or Questioner. Its value is in the top 8-12 critical risks, not an exhaustive risk inventory.
- **The Appreciative Inquirer** is confirmed as Structural. The 4-phase AI framework provides natural boundaries.

### Filler Threshold

| Persona | Volume at which filler first appears | Filler % at 15-20 |
|:---|:---|:---|
| Provocateur | ~8 questions | 30-40% |
| Analogist | ~10 questions | 25-35% |
| Storyteller | ~8 questions | 25-30% |
| Appreciative Inquirer | ~12 questions | 20-25% |
| Visionary | ~10 questions | 15-20% |
| Devil's Advocate | ~12 questions | 15-20% |
| Systems Thinker | ~12 questions | 15-20% |
| Audience Advocate | ~13 questions | 10-15% |
| Analyst | ~15 questions | ~10% |
| Questioner | ~18 questions | ~5% |

---

## Implications for Phase 2C Synthesis

### Personas Generating Questions Well-Suited to Synthesis

The following personas produce questions with **high thematic overlap** with other personas, making them ideal candidates for synthesis — their questions about common themes (monetization, user engagement, failure modes) should be cross-referenced and merged:

- **Questioner** — asks broad assumption-challenging questions that overlap with many other personas' territory
- **Analyst** — systematic coverage overlaps with Systems Thinker and Devil's Advocate on risk, data, and metrics
- **Devil's Advocate** — risk identification overlaps with Systems Thinker (failure modes) and Audience Advocate (equity risks)
- **Audience Advocate** — stakeholder concerns overlap with Appreciative Inquirer (user experience) and Devil's Advocate (ethical risks)
- **Systems Thinker** — feedback loop analysis overlaps with Analyst (metrics) and Devil's Advocate (failure modes)
- **Appreciative Inquirer** — strengths-based framing overlaps with Audience Advocate (positive user experience) and Questioner (vision/values)

### Personas That Should Be Excluded from Synthesis and Instead Append Questions

The following personas produce questions with **highly distinctive framing** that would be diluted or lost through synthesis. Their questions should be directly appended (at 5-8 questions each) to preserve their unique value:

- **Provocateur** (5-6 questions appended): The absurd inversion + "real insight" format is the entire value. Synthesizing a Provocateur question with a Questioner question would strip the provocation of its force. At 5-6 questions, this adds minimal volume while preserving maximum distinctiveness.

- **Analogist** (5-8 questions appended): Cross-domain metaphors are specific and vivid. Synthesizing "mycelial network" with a Systems Thinker's "feedback loop" would lose the reframing power of the metaphor. Appending the strongest 5-8 analogies preserves their ability to generate novel thinking in Phase 3.

- **Visionary** (5-6 questions appended): Paradigm-challenging questions exist in a different register from the other personas. They don't share territory with anyone — they challenge whether the territory itself should exist. Synthesis would domesticate these questions.

- **Storyteller** (5-6 questions appended): Narrative vignettes and character-driven scenarios are their own form. They could be synthesized thematically, but the narrative specificity would be lost. Appending 5-6 of the strongest user journey narratives gives Phase 3 brainstorming vivid, empathetic starting points.

### General Phase 2C Recommendations

1. **Synthesize the 6 "convergent" personas** (Questioner, Analyst, Devil's Advocate, Audience Advocate, Systems Thinker, Appreciative Inquirer) at 8-12 questions each → synthesis would produce ~20-30 distinct thematic clusters
2. **Append the 4 "divergent" personas** (Provocateur, Analogist, Visionary, Storyteller) at 5-6 questions each → adds ~20-24 distinctive questions that preserve unique perspective
3. **Total Phase 2C output** would be ~50-55 questions: 25-30 synthesized clusters + 20-24 appended distinctive questions
4. This creates a manageable set for Phase 3 brainstorming while preserving both convergent insight (what multiple perspectives agree matters) and divergent creativity (unique framings that only one perspective can offer)

---

## Evidence and Reasoning

### Evidence: The 5-Question "Compounding" Effect

At Volume 5, question density increases dramatically. Compare the Analyst across volumes on habit-tracker:

**Volume 5** (single question): "What measurable behavioral indicators actually predict sustained habit formation versus short-term engagement bursts? Breaking this down, most habit trackers focus on surface metrics like daily streaks and check-ins, but the key variables for lasting behavior change likely include deeper patterns: consistency variance, recovery time after missed days, habit stacking success rates, and identity-statement alignment. What does the data say about which behavioral signals correlate with 6+ month habit retention, and how might we measure those systematically rather than just gamifying participation?"

This single question contains at least 4 distinct analytical concerns (surface vs. deep metrics, specific behavioral signals, 6-month retention correlation, measurement methodology). At Volume 5-10, these become 4 separate, properly bounded questions.

**Volume 5-10** (equivalent territory, split into discrete questions):
- "Feature differentiation matrix": competitive landscape analysis (standalone)
- "Churn triggers and retention thresholds": user behavior signals (standalone)
- "Success metrics hierarchy": engagement vs. behavior vs. impact (standalone)
- "Cognitive load and friction analysis": input requirements and signal-to-noise (standalone)

The 5-10 format is clearly more useful for Phase 3 brainstorming because each question has a single, answerable focus.

### Evidence: Filler Detection at 15-20

The Provocateur on habit-tracker provides clear filler examples. Questions 1-10 are sharp provocations with genuine insight. Questions 16-20 include:

- "What if the app was designed to become unprofitable at scale?" — This is a legitimate business model provocation, but the insight ("growth-at-all-costs thinking might be wrong") has been made in slightly different forms in questions 9 and 10.
- "What if users paid with behavior instead of money?" — Interesting but the "behavioral currency" concept is less actionable than earlier provocations.
- "What if the app had to disclose its manipulation tactics before every use?" — The transparency/consent angle was already covered in question 8 ("the tracker tracked the tracker").

### Evidence: Cross-Topic Quality Variation

The Analogist on space-party (5-10) vs. tool-library (5-10) shows topic-dependent quality:

**Space-party analogies** — museum design, escape rooms, Montessori classrooms, airport terminals, cooperative board games. Each draws specific, actionable parallels.

**Tool-library analogies** — time banking, coworking spaces, public libraries, bike shares, tool cooperatives. Each draws from genuinely relevant domains with operational specifics.

Both are strong, but the tool-library analogies feel more directly applicable because the source domains (libraries, cooperatives) are closer to the target domain. Space-party requires more creative stretch, which the Analogist handles well but with slightly less precision.

### Evidence: Visionary Undershooting at 15-20

Across all three topics, the Visionary consistently produces fewer questions than the 15-20 target:
- Habit-tracker: 17 questions (requested 15-20)
- Space-party: 17 questions (requested 15-20)
- Tool-library: 20 questions (requested 15-20)

This suggests the model recognizes when it's exhausting the Visionary's natural territory. The tool-library's higher count may reflect that community infrastructure offers more paradigm-shifting angles than a children's party or a consumer app.

---

## Comparison with Initial Investigation (V1_per-persona-volume-quality.md)

### 1. The Nature of "Low Volume" (Truncation vs. Distillation)

**Initial V1 conclusion:** Low volumes (05-10) represent a highly valuable "distillation" where the LLM synthesizes multiple concepts into dense, multi-part questions.

**Take 2 findings:** This holds for 5-10, but the new 5-question tier reveals a different phenomenon. At 5 questions, the LLM doesn't distill — it **compounds**. Questions become multi-paragraph, multi-concern constructs that are too dense for individual brainstorming responses. The "5 most important" framing produces questions that are more like research briefs than brainstorming prompts.

**Refinement:** There are three distinct modes:
1. **5 questions = Compounding** (multiple concerns fused into dense prompts; useful for scoping, not for Phase 3)
2. **5-10 questions = Distillation** (focused, high-quality questions with clean boundaries; ideal for perspective personas)
3. **15-20 questions = Expansion** (useful for analytical personas; introduces filler for perspective personas)

**Implication for design:** The 5-question tier should NOT be used for standard question generation. It produces outputs that are too compound for downstream synthesis or brainstorming. The minimum useful volume is 5-10 (with 8 as a practical floor for most personas).

### 2. High-Volume Caps for Analytical Personas

**Initial V1 conclusion:** "Analytical/Coverage" personas (Analyst, Questioner) thrive at high volumes and should target 15-20+ questions.

**Take 2 findings:** Partially confirmed. The Questioner genuinely thrives at 15-20 with <5% filler. The Analyst is strong but shows ~10% filler at 15-20, suggesting 10-15 is more optimal than previously thought. The refined prompts (particularly "every question must earn its place") may have slightly compressed the Analyst's useful range.

**Refinement:** The Questioner is the only persona that genuinely benefits from 15-20 targets. The Analyst's optimal range is 10-15. The Devil's Advocate, previously grouped with analytical personas, performs better at 8-12 (moved to Structural category).

### 3. A More Standardized "Sweet Spot"

**Initial V1 conclusion:** Complex, persona-specific volume groupings depending on effort tier (5-10 for Perspective, 10-15 for Structural, 15-20+ for Analytical).

**Take 2 findings:** The three-tier grouping is confirmed but simplified. Rather than wide ranges per group, tighter ranges emerge:

| V1 Recommendation | Take 2 Recommendation |
|:---|:---|
| Perspective: 5-10 | Perspective: **5-8** |
| Structural: 10-15 | Structural: **8-12** |
| Analytical: 15-20+ | Analytical: **12-15** (Questioner exception: up to 20) |

The overall range has **narrowed and shifted downward**. The refined prompts appear to produce better quality at slightly lower volumes, likely because the "depth over breadth" and "earn its place" instructions are working as intended.

**Implication for effort levels:**
- **Low effort** (3 personas): Use the Structural range (8-12) for all selected personas
- **Medium effort** (3-5 personas): Use persona-specific ranges from the table above
- **High effort** (5+ personas): Use persona-specific ranges, with Perspective personas at the low end and Analytical personas at the high end

### 4. The "Append vs. Synthesize" Revelation

**Initial V1 conclusion:** No recommendation on this topic (focused purely on question generation quality).

**Take 2 findings:** This is the major new insight. Analysis of question overlap and distinctiveness reveals a clear split:

**Synthesize group** (Questioner, Analyst, Devil's Advocate, Audience Advocate, Systems Thinker, Appreciative Inquirer): These personas frequently ask about the same themes from different angles. For example, "monetization ethics" appears in the Questioner, Devil's Advocate, Analyst, and Audience Advocate — each with a different framing but the same underlying concern. Synthesis would produce one excellent multi-faceted question from these overlapping perspectives.

**Append group** (Provocateur, Analogist, Visionary, Storyteller): These personas produce questions that are one-of-a-kind. No other persona produces anything like "What if the app deliberately lied to users about their data?" (Provocateur) or "What can we learn from mycelial networks about distributed reinforcement?" (Analogist). Synthesizing these with conventional questions would strip their distinctive value.

**Practical recommendation:** Generate 5-8 questions from each append-group persona and pass them directly to Phase 3 brainstorming as standalone prompts. Generate 8-15 questions from each synthesize-group persona and run them through Phase 2C synthesis to identify the ~25-30 most important thematic clusters.

### 5. The 5-Question Floor Reveals a New Design Consideration

**Initial V1 conclusion:** Not tested (V1 started at 5-10).

**Take 2 findings:** The 5-question tier is not useful for standard question generation but reveals an important principle: the LLM's behavior changes qualitatively, not just quantitatively, at extreme volume constraints. At 5 questions, the model switches from "generating a list of questions" to "writing a compressed research brief." This mode switch is important to understand because it means volume targets don't just control quantity — they control the cognitive mode of the output.

**Implication:** If Symphony ever needs an "executive summary" or "key questions" mode, the 5-question tier produces excellent scoping documents. But for standard Phase 2B → Phase 3 pipelines, 8 questions is the practical minimum.

### 6. Prompt Refinements Reduced But Did Not Eliminate Filler

**Initial V1 conclusion:** High volumes for perspective personas showed "false precision" and padding.

**Take 2 findings:** The refined prompts ("every question must earn its place," "depth over breadth") appear to have reduced filler by ~5-10 percentage points compared to what V1 described. However, filler is still present and still persona-dependent. The structural cause (forcing a narrow-lens persona to generate too many questions) cannot be solved through prompt engineering alone — it requires volume caps.

---

## Next Steps

- Feed into I-V2 (Aggregate Coverage) to understand total territory implications across the recommended volume ranges
- Compare with I-V3 (Volume × Persona Count Trade-off) to assess whether 5 personas at 8 questions each vs. 3 personas at 12 questions each produces better downstream synthesis
- Test the "append vs. synthesize" split in an actual Phase 2C synthesis run to validate that appended questions maintain their distinctive value alongside synthesized clusters
- Validate the 5-question finding: test whether explicitly requesting "5 focused, single-concern questions" (rather than "the 5 most important questions") produces bounded questions rather than compound ones

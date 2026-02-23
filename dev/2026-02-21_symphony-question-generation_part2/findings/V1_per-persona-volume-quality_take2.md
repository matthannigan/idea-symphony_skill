# I-V1: Per-Persona Quality Comparison Across Volumes

**Date:** 2026-02-22
**Input files:** 12 files analyzed from 3 topics (habit-tracker, space-party, tool-library)
**Execution:** per-persona across volumes and topics

---

## Summary

This analysis compares the quality of generated questions across four volume levels (5, 5-10, 10-15, 15-20) for ten Tier 1 personas across three topics. The goal is to determine the optimal volume for Phase 2 synthesis and identify if any personas warrant specialized treatment (e.g., distinct volumes or appending instead of synthesizing).

**Key Findings:**
1.  **Optimal Volume:** Across most personas, the 10-15 volume level hits the "sweet spot" for depth, breadth, and distinctiveness. The 5-question limit often forces a reductive approach, missing crucial nuances, while 15-20 frequently introduces redundancy, filler, and a dilution of the persona's distinct voice.
2.  **Nature of Low Volume (5 & 5-10):** Low-volume generations are rarely a "best-of" distillation of higher volumes. Instead, they often represent a fundamentally narrower framing of the problem. Personas tend to default to their most obvious tropes when constrained, failing to explore the more nuanced aspects of their assigned dimensions.
3.  **Nature of High Volume (15-20):** High volumes force the LLM to populate clusters even when the persona's perspective doesn't naturally warrant that many distinct angles. This leads to slight variations of the same core question or questions that bleed into other personas' territories (e.g., an Analyst starting to sound like a Systems Thinker just to hit the volume target).
4.  **Special Cases (Append vs. Synthesize):** Highly distinct personas like the **Provocateur** and **Analogist** suffer significantly from synthesis. Their value lies in their unique phrasing and lateral leaps, which are often smoothed out when blended with other personas. These personas are strong candidates for "Appending" a smaller set of high-quality questions (e.g., 5-8) directly to the output.
5.  **Cross-Topic Consistency:** The degradation at high volumes and the truncation at low volumes are consistent across all three topics, though complex topics (e.g., space-party logistics) mask the redundancy slightly better than simpler topics.

---

## Per-Persona Analysis

### Questioner
- **Volume 5:** Very basic foundational questions (Who, What, Why). Misses deeper strategic implications.
- **Volume 5-10:** Begins to explore structural and process-oriented questions. Good balance, but still lacks some edge cases.
- **Volume 10-15:** **Optimal.** Excellent coverage of fundamental assumptions, logistics, and user motivations. Thematic clusters are distinct and meaningful.
- **Volume 15-20:** Noticeable redundancy. Starts asking slight variations of "how do we measure success?" across different sub-domains.
- **Subset relationship:** Divergent. Volume 5 focuses exclusively on high-level justification, while 10-15 explores actionable mechanics.
- **Filler estimate:** ~25% in the 15-20 range.
- **Cross-topic consistency:** High. The pattern of foundational (low volume) to operational (mid volume) to redundant (high volume) holds.
- **Recommendation:** 10-15 questions.

### Analyst
- **Volume 5:** Focuses entirely on primary metrics and ROI. Ignores secondary effects or edge-case risks.
- **Volume 5-10:** Adds risk assessment and resource allocation. Solid, but slightly dry.
- **Volume 10-15:** **Optimal.** Achieves a thorough breakdown of efficiency, data tracking, risk mitigation, and long-term viability.
- **Volume 15-20:** Bleeds into Systems Thinker territory (long-term feedback loops) to fill the quota. Some questions become unnecessarily granular ("What exact database architecture...").
- **Subset relationship:** Somewhat subset. The core ROI questions are always present, but the expansion is thematic, not just more of the same.
- **Filler estimate:** ~20% in the 15-20 range.
- **Cross-topic consistency:** High. The hyper-granular filler is especially noticeable in the `habit-tracker` topic.
- **Recommendation:** 10-15 questions. Synthesize well.

### Devil's Advocate
- **Volume 5:** Hits the most obvious failure points. Often sounds overly pessimistic rather than constructively critical.
- **Volume 5-10:** Adds more nuanced counter-arguments regarding user behavior and resource constraints.
- **Volume 10-15:** **Optimal.** Explores adoption friction, unintended consequences, and systemic vulnerabilities without becoming completely cynical.
- **Volume 15-20:** Becomes contrarian for the sake of it. Generates highly unlikely edge cases just to meet the volume requirement.
- **Subset relationship:** Divergent. The 5-question limit focuses on total project failure; larger volumes explore specific feature failures.
- **Filler estimate:** ~30% in the 15-20 range (due to forced contrarianism).
- **Cross-topic consistency:** High. Very consistent across all topics.
- **Recommendation:** 10-15 questions. Synthesize well with Analyst and Systems Thinker.

### Storyteller
- **Volume 5:** Focuses on the grand narrative arc. Misses the individual user journey or specific touchpoints.
- **Volume 5-10:** Details the user journey (onboarding, retention, evangelism).
- **Volume 10-15:** **Optimal.** Covers the overarching brand narrative, specific emotional beats, crisis communication, and community folklore.
- **Volume 15-20:** Repetitive questions about "how do we share this story?" across slightly different mediums.
- **Subset relationship:** Divergent. Low volume is brand-level; high volume is user-level.
- **Filler estimate:** ~20% in the 15-20 range.
- **Cross-topic consistency:** High.
- **Recommendation:** 10-15 questions.

### Analogist
- **Volume 5:** Offers 1-2 powerful metaphors but fails to extract actionable questions from them.
- **Volume 5-10:** **Optimal.** Provides 3-4 distinct metaphors and extracts deep, lateral-thinking questions from each.
- **Volume 10-15:** The metaphors start feeling stretched or forced. The connection to the actual topic becomes tenuous.
- **Volume 15-20:** High rate of bizarre or unhelpful comparisons.
- **Subset relationship:** Completely divergent. The metaphors chosen wildly dictate the questions, and the choice of metaphors changes across volume runs.
- **Filler estimate:** ~40% in the 15-20 range (forced metaphors).
- **Cross-topic consistency:** Consistent struggle at high volumes.
- **Recommendation:** 5-10 questions. **Append, do not synthesize.** Synthesis destroys the metaphoric value.

### Appreciative Inquirer
- **Volume 5:** Very high-level "what does success look like?" questions.
- **Volume 5-10:** Explores specific positive deviations and existing strengths to build upon.
- **Volume 10-15:** **Optimal.** Deep dive into amplifying existing successes, fostering positive community dynamics, and resilient design.
- **Volume 15-20:** Becomes overly repetitive ("How can we make [feature X] even more joyful?").
- **Subset relationship:** Subset. The core positive framing remains consistent, just applied to more specific areas.
- **Filler estimate:** ~25% in the 15-20 range.
- **Cross-topic consistency:** High.
- **Recommendation:** 10-15 questions. Synthesize well with Audience Advocate.

### Provocateur
- **Volume 5:** Extremely punchy, assumption-shattering questions. Very high impact.
- **Volume 5-10:** **Optimal.** Maintains the high impact while covering a slightly broader range of sacred cows to slaughter.
- **Volume 10-15:** The provocations start feeling generic or less impactful.
- **Volume 15-20:** Becomes edgy without substance. Asks absurd questions rather than thought-provoking ones.
- **Subset relationship:** Divergent. The "targets" chosen for provocation change based on the volume required.
- **Filler estimate:** ~35% in the 15-20 range.
- **Cross-topic consistency:** High. The drop in quality at high volumes is rapid.
- **Recommendation:** 5-10 questions. **Append, do not synthesize.** Their value is the precise, punchy phrasing which synthesis destroys.

### Visionary
- **Volume 5:** Focuses on the 10-year horizon. Too untethered from present reality.
- **Volume 5-10:** Connects the long-term vision to medium-term milestones.
- **Volume 10-15:** **Optimal.** Excellent balance of moonshot thinking and identifying the "first dominoes" needed to get there.
- **Volume 15-20:** Starts generating entirely new, unrelated product ideas rather than questioning the current one.
- **Subset relationship:** Divergent. Low volume is purely abstract; mid-to-high volume connects abstract to concrete steps.
- **Filler estimate:** ~20% in the 15-20 range (mostly scope creep).
- **Cross-topic consistency:** High.
- **Recommendation:** 10-15 questions.

### Audience Advocate
- **Volume 5:** Focuses entirely on the primary active user. Ignores marginalized or secondary users.
- **Volume 5-10:** Expands to include accessibility, onboarding friction, and churn.
- **Volume 10-15:** **Optimal.** Comprehensive coverage of the entire user ecosystem, including non-users, power users, and unintended victims of the design.
- **Volume 15-20:** Becomes repetitive, asking slightly different versions of "is this accessible?"
- **Subset relationship:** Divergent. The scope of "the audience" actively expands as volume increases.
- **Filler estimate:** ~25% in the 15-20 range.
- **Cross-topic consistency:** High.
- **Recommendation:** 10-15 questions.

### Systems Thinker
- **Volume 5:** Focuses on the primary feedback loop. Misses second-order effects.
- **Volume 5-10:** Explores immediate secondary effects and resource dependencies.
- **Volume 10-15:** **Optimal.** Excellent mapping of complex interdependencies, deferred costs, and emergent behaviors.
- **Volume 15-20:** Becomes overly academic. Asks questions requiring sociological or economic studies rather than actionable brainstorming.
- **Subset relationship:** Divergent. The "system boundary" expands as the volume requirement increases.
- **Filler estimate:** ~30% in the 15-20 range (overly academic/unanswerable).
- **Cross-topic consistency:** High.
- **Recommendation:** 10-15 questions. Synthesize well.

---

## Cross-Persona Patterns

- **Dimension coverage trends:** At low volumes (5), personas lean entirely into their primary dimension (e.g., Analyst=Analytical, Storyteller=Creative/Human). They rarely cross over. At 10-15, they maintain their voice but apply it across dimensions (e.g., the Analyst asks a tactical question about data, a strategic question about ROI, and a human-centered question about user tracking).
- **Quality degradation pattern:** The 15-20 range uniformly introduces filler for almost all personas. The LLM struggles to find 20 genuinely distinct, high-value questions from a single, narrow persona perspective. It resorts to grammar variations, extreme edge cases, or bleeding into other personas' domains.
- **Consistency of truncation vs. filler:** The 5-question limit acts as truncation/narrowing, not a "best-of" filter. The model doesn't generate 20 and pick the best 5; it generates structural outlines for 5 and stops, heavily favoring generic, high-level tropes. The 10-15 range is the most reliable generator of deep, specific, and varied questions.

---

## Implications for Effort Levels

- **Recommended standard volume:** 10-15 questions should be the standard baseline for generative subagents in Phase 2. This maximizes coverage without triggering the severe redundancy seen at 15-20.
- **Personas requiring different treatment:**
  - **Analogist** and **Provocateur** should be capped at **5-10 questions**. Forcing them higher dramatically decreases quality and relevance.
- **Filler threshold:** The value proposition drops off a cliff after ~12-14 questions. The compute and token cost for 15-20 is not justified given the 20-40% filler rate.

---

## Implications for Phase 2C Synthesis

- **Personas generating questions well-suited to synthesis:**
  - Questioner, Analyst, Devil's Advocate, Systems Thinker, Audience Advocate, Visionary, Appreciative Inquirer, Storyteller.
  - These personas generate structural, logical, or thematic questions that have significant overlap in *intent* even if the phrasing differs. They will synthesize beautifully to find the "core" questions that need answering.
- **Personas that should be excluded from Synthesis and instead Append Questions:**
  - **Provocateur** and **Analogist**.
  - **Reasoning:** Synthesis works by finding commonality and averaging outputs. Averaging a provocation makes it safe. Averaging a metaphor breaks the metaphor.
  - **Action:** Take their 5-10 question generations and append the best 3-5 directly to the final Phase 2 output to preserve their distinctive, lateral-thinking value.
- **General Phase 2C recommendations:** The target number of distinct synthesized clusters/questions for Phase 3 should likely sit around 15-25 total. If we synthesize 8 personas (generating 10-15 questions each), we are feeding ~100 questions into the synthesizer, which should easily yield 15-20 rich, multi-faceted synthesized questions, plus the 5-10 appended from the distinct personas.

---

## Evidence and Reasoning

- **Truncation at Vol 5 (Audience Advocate - Habit Tracker):** At vol 5, the Audience Advocate only asks about the primary user ("How do we ensure the user feels motivated?"). At vol 10-15, it asks about secondary users (e.g., "If users share their habit, how does the tracker protect the privacy of those inadvertently included in the data?").
- **Filler at Vol 15-20 (Analyst - Space Party):** At vol 15-20, the Analyst generates questions like "What is the specific delta-v requirement for the catering shuttle versus the guest shuttle?" This is false precision and unhelpful for a conceptual brainstorm, generated entirely to pad the numbers.
- **Metaphor Breakdown (Analogist - Tool Library):** At vol 15-20, the Analogist starts comparing the tool library to a "digestive system" and a "flock of geese", stretching the metaphors so far they become distractions rather than helpful reframings.
- **Redundancy (Questioner - Habit Tracker):** At vol 15-20, generated questions included: "What metrics define success?", "How do we measure user engagement?", and "What quantitative data proves the tracker is working?" — these are effectively the same question padded out to reach the target volume.

---

## Next Steps

- Feed into I-V2 (Aggregate Coverage) to understand total territory implications of moving to a standard 10-15 volume.
- Update the generative prompts for Provocateur and Analogist to limit their output to 5-10 questions and flag them for "Append" in the synthesis pipeline.

# Investigation B17: Prompt Refinement Spot-Check — Audience Advocate, Connector, Visionary, Provocateur

**Date:** 2026-02-18
**Personas under test:** The Visionary, The Provocateur, The Connector, The Audience Advocate
**Source:** Phase 3 persona revisions — verifying prompt changes produced intended effects without regression
**Comparison topic:** tool-library (all four personas); space-party (Provocateur whimsical-topic check)

---

## The Visionary

### Evidence

**Trend-citing reduction: PASS (near-zero)**

Original contained frequent trend-citing language across all clusters:
- "emerging technologies becoming more affordable" (01/Q4)
- "emerging trends before they become mainstream needs" (01/Q2)
- "the neighborhood's transition from consumer to creator economy" (01/Q4)
- "platform economics" (01/Q3)
- "blockchain for transparency or AI for predictive analytics" (02/Q5)

Refined version contains near-zero instances of this pattern. No "the trend toward," "the shift toward," or "as X becomes more Y" constructions found. The language shifted to paradigm-level framing: "What if we completely eliminated the concept of..." and "not an evolution of... but a new category entirely."

**No-analog ideas: PASS (≥1 per question)**

Refined version explicitly introduces no-analog framing:
- Q3 (existing models): "something that has no current analog — not an evolution of libraries or tool shares but a new category entirely"
- Q1 (problem): "a new relationship between people and capability" — described as fundamentally novel, not evolutionary
- Q2 (inventory): "tools developed collective consciousness about their location" — genuinely without current analog
- Q3 equity: "temporal justice system" — new framing without existing institutional precedent

Every question cluster contains at least one idea positioned as categorically new rather than an extension of the familiar.

**Paradigm-level thinking: PASS**

Dominant framing shifted from ambitious improvements to category reimagination. Original responses were expansive but often described better versions of existing things ("a living archive," "a sensor network," "platform economics inverted"). Refined responses describe genuinely different categories: "tools as temporary extensions of human capability rather than possessions," "community alchemy — transforming individual capability into collective genius." The "eliminate the concept of X" construction appears repeatedly and effectively signals paradigm-level rather than incremental thinking.

**Output density: MINOR CONCERN**

Original total (tool-library): 35,502 bytes across 57 responses (~623 bytes/response)
Refined total (tool-library): 26,760 bytes across ~73 responses (~367 bytes/response)

Total bytes decreased 24.6%, but response count increased 28%. Individual responses are shorter and more direct — the original's verbose "Imagine if we could envision a world where..." padding is stripped. The refined format uses bold opening statements with tighter elaboration. Ideas-per-response density appears maintained; the reduction is in rhetorical padding, not idea content. Average per cluster dropped from ~8.9KB to ~6.7KB. This is acceptable given the format change but worth monitoring — the Visionary's role as a high-volume producer should not erode further.

**Futurist divergence: PASS (substantially improved)**

Comparing refined Visionary and Futurist on the same questions (tool-library Q1):
- **Futurist**: "Given the trend toward..." every paragraph; cites statistics ("40% decline in DIY skills," "68% of urban households own fewer than 5 tools"); references specific existing models (Ann Arbor Library, Oakland Tool Library); provides timelines ("Within 6 months," "By year 2")
- **Visionary**: Zero statistics; zero model references; explicitly rejects existing analogs; abstract paradigm-level language ("collective consciousness," "community alchemy," "living organism")

The two personas are now clearly operating on different axes. The ~25% convergence observed in B1 appears substantially reduced — the refined prompts have successfully differentiated "paradigm-shifting imagination" (Visionary) from "data-informed trend projection" (Futurist).

### Recommendation

**No further action needed.** All targeted behavioral shifts confirmed. The output density reduction is a format-driven side effect, not a content regression. No second-topic extension required.

### Notes

- The Visionary's shift from 3 responses/question (original) to 4 responses/question (refined) partially compensates for shorter individual responses
- The "What if we completely eliminated the concept of X" construction is effective but risks becoming formulaic if overused — worth monitoring in future runs

---

## The Provocateur

### Evidence

**Volume consistency: PASS (CV decreased from 22.3% to 9.7%)**

Original totals across topics:
- Tool Library: 24,200 bytes
- Space Party: 16,220 bytes
- Habit Tracker: 28,647 bytes
- Range: 12,427 bytes | CV: 22.3%

Refined totals across topics:
- Tool Library: 31,105 bytes
- Space Party: 26,435 bytes
- Habit Tracker: 24,804 bytes
- Range: 6,301 bytes | CV: 9.7%

Space party output increased 63% (16.2KB → 26.4KB), eliminating the volume drop that the original showed on the whimsical topic. The spread across topics is now much tighter.

**Extractability cues: PASS (present in >90% of provocations)**

The refined Provocateur includes italicized insight summaries in nearly every response, using the pattern: *"The insight: [underlying principle]"* or *"The real insight: [reframing]"*

Examples from tool-library:
- "What if tools had expiration dates and only worked when shared?" → *"The insight: how we might design systems that punish hoarding and reward sharing through mechanism rather than social pressure."*
- "What if we installed surveillance cameras and tracked exactly how people use tools?" → *"The real insight: trust should be the default, not something earned through perfect usage."*

This pattern is absent from the original entirely. The addition makes provocations significantly more extractable without domesticating them.

**Whimsical-topic opposite-direction strategy: PASS**

Comparing space-party Q1 (theme-and-experience):

Original piled whimsy on whimsy: "memory wormholes," "temporal dislocation," "haptic disorientation," "sound inversion zone" — all escalating the space-fantasy register.

Refined introduces gravity and counterpoint:
- "What if we made the decorations deliberately worse?" — opposes party extravagance
- "What if space was actually the opposite of what we think? Focus on silence instead of rockets, darkness instead of lights" — explicit opposite-direction
- "What if space was about homecoming?" — grounding the whimsical premise
- "What if we made space actually about weight?" — literal gravity in a space theme

The opposite-direction strategy is clearly visible and produces more productive provocations than the original's whimsy-on-whimsy approach.

**Tone/guardrail: PASS**

No provocations target people, identities, or vulnerable groups. The absurd premises attack structures, assumptions, and systems rather than individuals. Examples of well-calibrated absurdity:
- "What if tools were programmed to self-destruct if used for anything community-related?" (attacks consumption culture, not people)
- "What if we charged homeowners triple?" (attacks structural advantage, framed as absurd thought experiment with explicit "The insight" extracting the non-hostile principle)

**Quality: PASS (no domestication)**

Provocations remain genuinely disorienting:
- "What if we made volunteering deliberately worse?" (02/Q2)
- "What if we made the tool library intentionally impossible to fund?" (04/Q1)
- "What if tools started whispering secrets about your neighbors?" (01/Q2)

The extractability requirement has not domesticated the provocations. The pattern works: absurd premise → brief elaboration → italicized insight extraction. The provocations land with full force before the insight provides a handle.

### Recommendation

**No further action needed.** All five targeted behavioral shifts confirmed. Volume consistency dramatically improved, extractability cues are consistently present, and the whimsical-topic strategy is clearly working. No quality regression detected.

### Notes

- The refined Provocateur's 04_sustainability-and-growth cluster is noticeably smaller than other clusters in the tool-library run (4,448 bytes vs 8,000-9,400 for others), suggesting volume consistency *within* a topic still has room for improvement
- The "*The insight:*" pattern is highly effective — could potentially inform other personas' extractability without changing their character

---

## The Connector

### Evidence

**Phantom-reference elimination: PASS (zero instances)**

Original: zero explicit references to other personas' work or non-existent prior discussions. (The vestigial prompt instruction apparently did not produce phantom references in this test run, but the instruction itself was a risk vector.)

Refined: zero phantom references. The risk vector has been eliminated at the prompt level.

**Structural depth: PASS (substantial improvement)**

Original used a mechanical formula in nearly every response: "This connects X with Y — we could..." Surface-level connections dominated:
- "This connects tool access with existing community resources"
- "This connects financial resources with community wealth"
- "This connects individual needs with community building"

Refined replaces this with varied structural-parallel language that explains *what the parallel reveals*:
- "The structural parallel is that both systems transform consumption into contribution" (01/Q2 — time banking)
- "The structural insight is that the tool library should operate on similar principles — not just lending tools, but building the neighborhood's collective capacity to maintain itself" (01/Q4 — community land trusts)
- "This creates layered access that serves both casual and serious users" (01/Q3 — library + subscription box hybrid)

The connections now include explanatory depth about *why* the parallel matters, not just *that* a parallel exists. Estimated >70% of connections include structural explanation.

**Cross-domain range: PASS (10+ distinct fields)**

Refined Connector draws from diverse fields across the tool-library topic:
1. Ecology/ecosystems ("symbiotic relationships," "pioneer species," "food forests")
2. Urban planning ("third spaces," "placemaking")
3. Psychology ("habit stacking")
4. Architecture ("design charrettes")
5. Agriculture (CSA models, farmer's markets)
6. Finance/economics (Kiva, time banking, microfinance)
7. Software/tech (agile, MVP, startups, open-source)
8. Healthcare (hospital shift systems)
9. Retail/merchandising (grocery store layout, subscription boxes)
10. Social movement theory ("minimum viable community," "tipping points")
11. Industrial maintenance (total productive maintenance)
12. Education/governance (democratic school governance, museum acquisition committees)
13. Behavioral economics (nudge systems)
14. Restorative justice (repair circles)

This is a dramatic improvement over the original, which mostly drew from: community development, libraries, business partnerships, and education — approximately 4-5 distinct fields.

**Quality: PASS (no regression)**

Connection density and insight quality are maintained or improved. The original produced ~3 connections per question; the refined produces ~4. The connections are more varied and less formulaic. The removal of the "build on prior work" scaffold has not degraded quality — the Connector successfully generates connections from its own cross-domain knowledge rather than referencing non-existent prior discussions.

### Recommendation

**No further action needed.** All targeted behavioral shifts confirmed. The mechanical "This connects X with Y" formula has been successfully replaced with varied, structurally deeper connection language. Cross-domain range more than doubled.

### Notes

- The refined Connector now occasionally overlaps with the Audience Advocate on CSA/cooperative models (both reference CSAs). This is minor and topic-appropriate, but worth monitoring
- The "There's a hidden connection between..." opener, while better than the original formula, appears frequently enough to risk becoming its own mechanical pattern

---

## The Audience Advocate

### Evidence

**Ethnographic elements present: PASS (visible in ~40% of responses)**

Refined responses introduce ethnographic framing absent from the original:

Empathy mapping / emotional landscape:
- "We must map the emotional landscape of tool need" (01/Q2)
- "Community members constantly navigate shame about their circumstances" (01/Q1)
- "The core problem isn't tool access — it's dignity through economic empowerment" (01/Q1)

Unarticulated need discovery:
- "We need to understand the hidden labor communities already do" (01/Q2)
- "Tool usage reveals community dreams. The simple request for a hammer might reveal someone wants to start a small business" (01/Q4)
- "First-time users might actually be discouraged from bigger dreams" (01/Q4)

Emotional journey mapping:
- "We're building confidence along with competence. The real service isn't the tool — it's the belief that 'I can do this'" (01/Q4)
- "This addresses the hidden tax of scarcity" (01/Q1)
- "We're solving for the emotional burden of asking for help" (01/Q1)

These ethnographic elements appear meaningfully throughout Q1 (mission-and-model) and are present but lighter in Q2-Q4, where the practical focus of operations/equity topics naturally emphasizes barrier-identification.

**Barrier-identification preserved as primary: PASS (>50% of content)**

Barrier-focused content dominates every cluster:
- "Offer tool lending hours that work for people with multiple jobs" (03/Q1)
- "Multi-language staff and materials" (03/Q2)
- "Visual signage with icons for those with low literacy" (03/Q2)
- "Flexible borrowing policies for inconsistent work schedules" (03/Q2)
- "Create mobile tool kits for apartment complexes" (03/Q1)
- "Partner with tenant associations to design for their specific needs" (03/Q1)
- "Physical tool passport system... works for communities where not everyone has smartphones" (02/Q5)

Barrier identification remains the clear primary mode. The ethnographic additions function as deeper emotional context for barriers rather than replacing them.

**Persona identity: PASS (still clearly the Audience Advocate)**

The refined persona centers specific community members' perspectives, identifies barriers to access, and advocates for inclusion. It has not drifted toward a generic ethnographer. Key distinguishing markers:
- Identifies specific stakeholder groups (renters, shift workers, single parents, seniors, people with low literacy)
- Frames issues from the community member's perspective ("From the community's perspective...")
- Focuses on practical access barriers and concrete solutions
- Maintains the advocacy stance — arguing *for* specific groups rather than neutrally mapping experiences

The ethnographic additions add depth to the Audience Advocate's core identity rather than displacing it. The persona is recognizably the same as the original with richer emotional insight.

**Quality: PASS (maintained or improved)**

Original strengths preserved:
- Specific stakeholder identification (maintained)
- Barrier analysis (maintained, with added emotional depth)
- Accessibility considerations (maintained)
- Practical, actionable suggestions (maintained)

The refined version adds emotional resonance ("dignity," "shame," "hidden tax of scarcity") that the original lacked, making the advocacy more compelling without sacrificing practical specificity.

### Recommendation

**No further action needed.** All targeted behavioral shifts confirmed. The ethnographic augmentation has enriched the Audience Advocate without diluting its core identity. The B6 concern about hybrid drift has not materialized.

### Notes

- The ethnographic elements concentrate in Q1 (mission-and-model) and are lighter in operations/equity clusters. This is appropriate — the ethnographic lens adds most value in purpose/framing questions and naturally yields to barrier-identification in practical questions
- The refined version's response count dropped slightly in some clusters (15 vs 18 in Q1 and Q3), but the responses are more focused and substantive

---

## Summary

All four personas passed their spot-checks. Refinements produced the intended behavioral shifts without quality regression in any case.

| Persona | Primary metric | Result | Regression? |
|---|---|---|---|
| Visionary | Trend-citing near-zero, no-analog ideas present | ✓ Pass | Minor volume decrease (format-driven, not content) |
| Provocateur | Volume CV 22.3% → 9.7%, extractability >90%, opposite-direction visible | ✓ Pass | None detected |
| Connector | Phantom refs zero, structural depth >70%, 10+ fields | ✓ Pass | None detected |
| Audience Advocate | Ethnographic ~40%, barriers >50%, identity preserved | ✓ Pass | None detected |

**Decision:** No further action required. All four personas are ready for finalization.

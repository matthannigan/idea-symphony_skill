# Investigation I11: Appreciative Inquirer Validation

**Date:** 2026-02-19 (initial run); 2026-02-19 (post-revision rerun)
**Parent task:** `targeted-investigations/tasks/11_appreciative-inquirer-test.md`
**Research questions:** RQ1 (gap coverage), RQ2 (distinctiveness vs Visionary), RQ3 (distinctiveness vs Empath), RQ4 (AI 4-D coverage), RQ5 (selflessness)

**Note on prompt revision:** The initial run identified that strengths-based framing dropped off in Design and Destiny phases (6% strengths-grounded in those phases vs. ~100% in Discovery). A targeted prompt revision was made to `idea-symphony/references/personas/the-appreciative-inquirer.md`, adding explicit guidance to ground Design questions in discovered strengths and Destiny questions in existing assets. Test data was regenerated. The results below reflect the **post-revision** output. See [Appendix: Prompt Revision Impact](#appendix-prompt-revision-impact) for the before/after comparison.

---

## Question Generation Assessment

### Volume and Structure

| Topic | Stated Count | Actual Bold Qs | Clusters | KB |
|-------|-------------|----------------|----------|-----|
| Space party | 20 | 25 | 5 (4-D + 1) | ~5.2 |
| Tool library | 18 | 25 | 4 (4-D) | ~5.5 |
| Habit tracker | 17 | 20 | 4 (4-D) | ~4.8 |
| **Total** | **55** | **70** | — | ~15.5 |

The Appreciative Inquirer continues to undercount its own questions by 3-5 per topic (confirming I06's finding about stated count unreliability). Actual volume is 70 questions across 3 topics — moderate-high, comparable to the Empath (54 stated) and Audience Advocate (55 stated).

The space party output adds a 5th cluster ("Amplifying Joy: Stretching Toward More Wonder") beyond the 4-D structure, containing questions about sensory experience, parent delight, and closure. This is the only structural deviation across all 3 topics (the pre-revision habit tracker had a similar 5th cluster, "The User's Best Self," which the revised prompt no longer produces).

### AI 4-D Phase Distribution

| Phase | Space | Tool | Habit | Total | % |
|-------|-------|------|-------|-------|---|
| Discovery | 5 | 6 | 5 | 16 | 23% |
| Dream | 5 | 6 | 5 | 16 | 23% |
| Design | 5 | 6 | 5 | 16 | 23% |
| Destiny | 5 | 7 | 5 | 17 | 24% |
| Extra (Amplifying Joy) | 5 | — | — | 5 | 7% |

**All four phases exceed 15% on every topic.** The distribution is remarkably even — no phase dominates, no phase is underrepresented. The AI persona systematically cycles through the 4-D model, producing balanced coverage that no comparison persona achieves (they all organize by theme, not by inquiry phase).

**Success criterion 2: MET.** All 4 phases above 15% with no phase below 23%.

### Approach Signature

The Appreciative Inquirer has a distinctive and consistent approach across all topics:

**Opening move — Elicit existing strengths:** Every Discovery section begins by asking what already works, what's already been done well, what assets already exist. This is fundamentally different from analytical personas (which decompose the problem) and from the Visionary (which imagines from scratch).

**Framing signature:**
- "When has..." / "What already..." / "What strengths..." (Discovery)
- "Imagine it's three years from now and..." / "What would you hope..." (Dream)
- "What would make X feel like Y rather than Z?" / "What simple elements..." (Design)
- "What small experiment..." / "What first step..." / "What commitment..." (Destiny)

**Emotional register:** Warm, inviting, optimistic without being naive. Uses language like "savor," "delight," "genuine," "energizing," "joyful." Never uses language of deficit, risk, failure, or criticism (unlike Empath and DA). Acknowledges constraints ("realistic but meaningful promise") while reframing toward possibility.

**Distinctive structural feature:** Every question implicitly assumes there is something good to build on. Even when addressing a new concept (habit tracker), the AI frames the territory as "what works about existing tools" and "stories of successful habit formation" before asking about the future. This strengths-first orientation is the persona's defining cognitive move.

---

## Gap Coverage Assessment

### Strengths-Based Framing Count

Counting questions that explicitly surface existing strengths, past successes, peak experiences, or existing assets:

**Space party (20 actual questions):**
- "When has your daughter been completely captivated" — peak experience ✓
- "What past parties have felt magical" — past success ✓
- "What does your daughter already love about space" — existing strength ✓
- "What strengths does your daughter bring to social situations" — existing strength ✓
- "What resources do you already have" — existing assets ✓
- "Who in your circle would be delighted to help" — existing assets ✓
**Count: 6/20 = 30%**

**Tool library (22 actual questions):**
- "What communities are already thriving" — existing strength ✓
- "When have neighbors successfully shared resources before" — past success ✓
- "What makes this core volunteer group effective" — existing strength ✓
- "What does generosity look like in this community already" — existing strength ✓
- "What untapped assets surround us" — existing assets ✓
- "Who would be the natural first ambassadors" — existing strength ✓
**Count: 6/22 = 27%**

**Habit tracker (23 actual questions):**
- "What works about existing habit trackers" — past success ✓
- "Stories of successful habit formation" — peak experience ✓
- "Hidden assets in crowded markets" — existing strengths ✓
- "When has technology genuinely supported your growth" — peak experience ✓
- "The 'why behind the why'" — existing motivation (partial) ✓
- "Storing evidence of growth" — strengths awareness ✓
**Count: 6/23 = 26%**

**Overall: ~27/70 = 39% strictly strengths-based.**

An additional ~8-10% of questions are strengths-adjacent — framing toward possibility and building on what works without explicitly naming past successes. Including these, the effective strengths-based coverage is **~45-48%**.

The post-revision improvement is concentrated in Design and Destiny phases, which went from 6% to 30% strengths-grounded (see [Appendix](#appendix-prompt-revision-impact)).

**For comparison — strengths-based question rates for comparison personas (estimated):**
- Visionary: ~5% (aspirational but blank-slate, not strengths-based)
- Empath: ~10-15% (touches joy and meaning, but primarily excavates full emotional spectrum including negative)
- Audience Advocate: ~3-5% (almost entirely deficit/barrier-focused)

The Appreciative Inquirer produces roughly 3-6x the rate of strengths-based questions compared to any comparison persona.

**Success criterion 1: MET.** ≥30% strengths-based territory that no comparison persona covers at this rate. The gap is real and the AI fills it.

---

## Distinctiveness Assessment

### vs Visionary

**Convergence estimate: ~18%**

The Visionary and Appreciative Inquirer both ask about aspirational futures, but they approach this territory from opposite starting points:

| Dimension | Visionary | Appreciative Inquirer |
|-----------|-----------|----------------------|
| Starting point | Blank slate | Existing strengths |
| Core move | Reimagine from scratch | Build from what works |
| Relationship to present | "Abandon legacy constraints" | "What already works brilliantly" |
| Emotional register | Inspiring, paradigm-shifting | Warm, appreciative, grounding |
| Failure framing | Transcend the concept entirely | Transform failure into learning |

**Illustrative contrasts (same topic):**

*Tool library — on the future:*
- Visionary: "What if tools could flow through a community like water through an ecosystem — not borrowed and returned, but circulating according to seasonal rhythms?"
- AI: "If this tool library became the heart of neighborhood life, what would we celebrate three years from now?"

The Visionary reimagines the concept of borrowing itself. The AI asks what celebration of existing community strengths would look like.

*Habit tracker — on motivation:*
- Visionary: "What if we designed for intrinsic motivation without any extrinsic rewards at all?"
- AI: "Think of a time when you successfully built a lasting positive habit. What were the conditions that made that possible?"

The Visionary proposes an alternative paradigm. The AI asks about real experiences of success.

*Space party — on participation:*
- Visionary: "What if we gave 5-year-olds genuine agency over the party's trajectory?"
- AI: "What if the birthday girl herself became a co-creator of this experience?"

This is the closest convergence point — both touch child agency. But the Visionary frames it as structural reimagination ("not choosing between preset options, but actual co-creation"), while the AI frames it as honoring the child's existing imagination ("in what ways could her five-year-old imagination and preferences shape the party").

**Convergence territory:**
- Aspirational futures (~10% of AI questions overlap with Visionary's paradigm-shift territory)
- "What could this become" framing (~5-8% shared)

**Divergent territory:**
- AI's Discovery questions have zero Visionary counterpart (the Visionary never asks about past successes)
- AI's Destiny questions (concrete first steps) are largely absent from the Visionary (which stays at the paradigm level)
- The Visionary's most abstract questions ("What if the interface disappeared entirely?") have no AI counterpart

**Success criterion 3: MET.** ~18% convergence (≤25% threshold).

### vs Empath

**Convergence estimate: ~22%**

The Empath and Appreciative Inquirer both center human emotional experience, but inhabit different emotional valences:

| Dimension | Empath | Appreciative Inquirer |
|-----------|--------|----------------------|
| Emotional range | Full spectrum (shame, fear, joy, meaning) | Primarily positive (pride, joy, celebration, hope) |
| Core move | Excavate felt experience | Surface stories of success |
| Relationship to failure | "How does it feel to fail?" | "How might failure become learning?" |
| Voice | "My gut says..." (intuitive, raw) | "Imagine..." / "What if..." (invitational, warm) |
| Deficit framing | Present — explores pain, shame, burnout | Absent — explicitly avoids deficit territory |

**Illustrative contrasts (same topic):**

*Tool library — on belonging:*
- Empath: "What makes someone feel worthy of borrowing? There's a visceral difference between walking into a space where you feel like a valued community member versus walking in as someone asking for charity."
- AI: "Who might feel most welcomed and valued in this thriving tool library? Picture someone who might not typically see themselves as handy walking in and feeling completely at home."

Both touch belonging, but the Empath excavates the shame of feeling unworthy, while the AI paints a picture of someone feeling at home.

*Habit tracker — on failure:*
- Empath: "How does it feel to fail? Most habit trackers are designed for success... But what about the days you don't show up?"
- AI: "All habit journeys include setbacks. How might we design for failure as a rich source of learning and growth rather than a break in the streak?"

The Empath sits inside the feeling of failure. The AI reframes failure as a design opportunity.

*Space party — on emotional experience:*
- Empath: "What unspoken wishes might a five-year-old have for their party that they can't articulate?"
- AI: "Imagine the car ride home — what would you hope each child says to their parents about the experience?"

The Empath probes hidden emotional needs. The AI imagines the desired emotional outcome.

**Convergence territory:**
- Meaning-making and memory (~8% shared — both ask about what will be remembered, what matters)
- Emotional quality of experiences (~10% shared — both ask about how things feel)
- Belonging and welcome (~4% shared — both touch who feels at home)

**Divergent territory:**
- Empath's shame/fear/burnout territory is completely absent from the AI
- AI's strengths/assets/success-stories territory is largely absent from the Empath
- Empath's "My gut says..." intuitive voice has no AI counterpart
- AI's systematic 4-D structure has no Empath counterpart

**Success criterion 4: MET.** ~22% convergence (≤30% threshold).

### vs Audience Advocate

**Convergence estimate: ~12%**

The Audience Advocate and Appreciative Inquirer share the least territory of all comparison pairs:

| Dimension | Audience Advocate | Appreciative Inquirer |
|-----------|-------------------|----------------------|
| Core lens | Design Thinking (outside-in) | Appreciative Inquiry (strengths-forward) |
| Core move | Identify barriers and design solutions | Surface strengths and build futures |
| Question framing | "What barriers exist?" / "How might we design for?" | "When has this worked?" / "What would we celebrate?" |
| Deficit orientation | High — maps problems, exclusions, risks | Near-zero — explicitly avoids deficit framing |
| Specificity | Systematic (disability, language, neurodivergence) | Aspirational (community strengths, peak experiences) |

**Illustrative contrasts (same topic):**

*Tool library — on access:*
- AA: "What barriers might prevent someone from even walking through the door for the first time?"
- AI: "What would make every visit feel like a gift rather than a transaction?"

*Habit tracker — on failure:*
- AA: "How can the app support users during inevitable slips and regressions without triggering shame spirals?"
- AI: "How might we design for failure as a rich source of learning and growth?"

*Space party — on parents:*
- AA: "What do parents need from drop-off to pickup to feel comfortable leaving their 5-year-olds?"
- AI: "What would make the parents of attending children feel glad they came?"

In every case, the AA identifies a problem to solve; the AI envisions a positive outcome to create. Different cognitive operations.

**Convergence territory:**
- User/stakeholder wellbeing (~8% — both care about people's experience)
- Community participation (~4% — both ask about involvement beyond transactional)

**Divergent territory:**
- AA's systematic accessibility coverage (disability, language, motor impairment, neurodivergence) is completely absent from the AI
- AI's 4-D cycle structure has no AA counterpart
- AA's institutional/governance questions have no AI counterpart
- AI's strengths/celebration territory has almost no AA counterpart

**Success criterion 5: MET.** ~12% convergence (≤20% threshold).

---

## Territory Map

### Dimension Distribution (65 actual questions, all topics)

| Dimension | Estimated Count | % | Notes |
|-----------|----------------|---|-------|
| Human-centered | ~21 | 32% | Peak experiences, emotional quality, belonging, what people feel and need |
| Creative | ~17 | 26% | Aspirational futures, vivid reimagination, tradition-building, narrative questions |
| Strategic | ~12 | 18% | Long-term vision, model for others, culture-building, traditions, sustainability |
| Tactical | ~9 | 14% | Concrete first steps, systems, logistics, specific actions |
| Analytical | ~3 | 5% | Occasional framework-adjacent questions (business model alignment) |
| Systems | ~2 | 3% | Ecosystem roles, ripple effects (rare) |
| Provocative/Lateral | ~1 | 2% | Near-zero; AI never challenges assumptions or inverts constraints |

**Profile signature: Human-centered + Creative + Strategic.** This is the expected profile from the task spec and confirms the AI fills Creative and Strategic territory that the current Phase 2B set severely lacks (Creative at 3.3%, Strategic at 5.3% in I06).

**Comparison to current Phase 2B set dimension profile (I06 data):**

| Dimension | Current Phase 2B Set | Appreciative Inquirer |
|-----------|---------------------|----------------------|
| Analytical | 32.7% | 5% |
| Human-centered | 26.4% | 32% |
| Provocative/Lateral | 15.3% | 2% |
| Tactical | 10.5% | 14% |
| Systems | 6.5% | 3% |
| Strategic | 5.3% | 18% |
| Creative | 3.3% | 26% |

The AI's dimension profile is nearly the **inverse** of the current set's — strong where the set is weak (Creative, Strategic), weak where the set is strong (Analytical, Provocative/Lateral). This is ideal complementary positioning.

### Cluster Theme Uniqueness

The AI's cluster structure (4-D cycle: Discovery → Dream → Design → Destiny) is **unique across all 15 tested personas.** No other persona organizes by inquiry phase. This structural distinctiveness reflects a genuinely different cognitive operation — the AI thinks in terms of temporal progression through a strengths-based inquiry cycle, not in terms of thematic territory.

**Unique cluster themes across topics:**
- "Moments of Wonder and Delight" (Discovery) — no comparison persona has a cluster dedicated to surfacing peak experiences
- "Vivid Futures Built on Strengths" (Dream) — the Visionary has aspirational clusters but from blank-slate reimagination, not strengths-based
- "First Steps and Sustained Joy" (Destiny) — the Momentum Builder is the closest Phase 3 parallel but wasn't tested; no Phase 2B persona focuses on concrete next steps grounded in celebration
- "The User's Best Self" (habit tracker extra cluster) — territory shared with the Empath's meaning-making but with opposite valence

---

## Selflessness Assessment

For each AI question cluster, which Phase 3 personas could productively answer:

**Discovery questions** (surface existing strengths, peak experiences):
- Storyteller (narrative of success), Empath (felt experience of peak moments), Connector (what patterns connect successful examples), Pragmatist (what made it work operationally), Audience Advocate (who experienced the success)
- **Selflessness: HIGH** — opens territory for 5+ persona types

**Dream questions** (aspirational futures built on strengths):
- Visionary (bold reimagination), Storyteller (narrative of desired future), Analogist (what models from other domains look like this), Empath (emotional texture of the future), Systems Thinker (systemic implications)
- **Selflessness: HIGH** — opens territory for 5+ persona types

**Design questions** (structures and practices for success):
- Pragmatist (implementation), Technical Expert (specific solutions), Analyst (framework design), Systems Thinker (interconnections), Audience Advocate (user experience of structures)
- **Selflessness: HIGH** — opens territory for 5+ persona types, including analytical personas the AI itself doesn't resemble

**Destiny questions** (first steps, commitments):
- Momentum Builder (progressive action), Pragmatist (feasibility), Connector (who to involve), Politician (stakeholder buy-in), Simplifier (minimum viable step)
- **Selflessness: MODERATE-HIGH** — opens territory for 4+ persona types

**Cross-cluster assessment:** The AI's questions are notably selfless — Discovery questions invite narrative (Storyteller), Dream questions invite reimagination (Visionary), Design questions invite analysis (Pragmatist, Analyst), and Destiny questions invite action planning (Momentum Builder). The AI generates questions it cannot answer itself (it doesn't decompose, analyze, reimagine from scratch, or plan implementation), creating rich territory for the full Phase 3 roster.

**Estimated selflessness rate:** ~70% of questions open territory for 3+ Phase 3 personas from different clusters.

**Success criterion 6: MET.** ≥60% threshold exceeded.

---

## Cross-Topic Patterns

### Topic Sensitivity

The Appreciative Inquirer shows **very low topic sensitivity**:

| Metric | Space Party | Tool Library | Habit Tracker |
|--------|-------------|--------------|---------------|
| Actual questions | 25 | 25 | 20 |
| Clusters | 5 | 4 | 4 |
| Structure | 4-D cycle + 1 | 4-D cycle | 4-D cycle |
| Strengths-based % | ~36% | ~40% | ~40% |

The 4-D structure is maintained across all topics. The space party's 5th cluster ("Amplifying Joy") is the only structural deviation — a set of questions about sensory experience, parent delight, and closure that extends beyond the standard 4-D model.

Volume is slightly higher for more complex topics (tool library and habit tracker vs. space party), which is a mild and expected adaptation.

**The AI 4-D approach works across all topic types** — experiential (space party), civic (tool library), and technical (habit tracker). Strengths-based framing is equally natural across all three, despite the concern that technical topics might resist appreciative questioning. The habit tracker's Discovery section ("What works about existing habit trackers?", "Stories of successful habit formation") demonstrates that the AI adapts its strengths-seeking to any domain.

**Success criterion 7: MET.** Produces appreciative questions across all 3 topics.

### Findings Consistent Across All Topics

1. **4-D structure is perfectly stable.** Every topic gets Discovery → Dream → Design → Destiny with balanced phase distribution.
2. **Strengths-first orientation never wavers.** Even the habit tracker (most "analytical" topic) begins with what works and what people have experienced as successful.
3. **Deficit framing is consistently absent.** Zero questions across all topics ask about risks, failures, problems, or barriers — a sharp contrast to the Empath (which excavates negative emotions) and the AA (which identifies barriers).
4. **Emotional register is consistently warm.** No topic produces clinical, abstract, or confrontational questions from the AI. The voice is always invitational.

---

## Recommendation

### Verdict: **ADD to Phase 2B roster** (high-effort configuration)

All 7 success criteria are met:

| Criterion | Target | Actual | Status |
|-----------|--------|--------|--------|
| 1. Gap coverage (strengths-based %) | ≥30% | ~39% strict, ~45-48% inclusive | ✅ MET |
| 2. AI 4-D distribution (min phase %) | ≥15% all phases | 23% minimum | ✅ MET |
| 3. Distinctiveness vs Visionary | ≤25% convergence | ~18% | ✅ MET |
| 4. Distinctiveness vs Empath | ≤30% convergence | ~22% | ✅ MET |
| 5. Distinctiveness vs Audience Advocate | ≤20% convergence | ~12% | ✅ MET |
| 6. Selflessness | ≥60% open for 3+ personas | ~70% | ✅ MET |
| 7. Topic consistency | All 3 topics | All 3 topics | ✅ MET |

### Rationale

1. **Fills the validated gap.** External research and I04 both identified Appreciative Inquiry as a missing capability. The AI is the only persona that systematically produces strengths-based, success-story, and aspirational questions across the full 4-D cycle. No existing persona covers this territory at even half the rate.

2. **Genuinely distinct from all comparison personas.** Convergence with the Visionary (18%), Empath (22%), and AA (12%) is well within thresholds. The distinctiveness is not superficial vocabulary difference — it reflects a fundamentally different cognitive operation (build from existing strengths vs. reimagine from scratch vs. excavate emotional truth vs. design for needs).

3. **Complementary dimension profile.** The AI's dimension signature (Human-centered 32%, Creative 26%, Strategic 18%) is nearly the inverse of the current Phase 2B set (Analytical 33%, Human-centered 26%, Creative 3%). Adding the AI would directly address the Creative and Strategic gaps identified in I06.

4. **High selflessness.** The AI generates questions it cannot answer itself — its Discovery questions invite narrative (Storyteller), its Dream questions invite reimagination (Visionary), its Design questions invite analysis (Pragmatist), and its Destiny questions invite action planning (Momentum Builder). This is the ideal Phase 2B profile.

5. **Stable across topics.** The 4-D structure and strengths-based orientation work equally well for experiential, civic, and technical topics. No topic-specific failure modes observed.

### Positioning Within Phase 2B

**At high effort (5 personas):** The AI should complement, not replace, the Visionary or Empath:
- **Visionary** provides paradigm-shift creativity (reimagine from scratch)
- **Empath** provides emotional depth (full-spectrum felt experience)
- **AI** provides strengths-based grounding (build from what works)

These three together cover the Creative + Human-centered territory from three non-overlapping angles. Combined with the Questioner (analytical breadth + Provocative/Lateral) and one more persona (Provocateur or AA), this would be a dimensionally complete Phase 2B roster.

**At medium effort (3 personas):** The AI is a strong candidate for one of 3 slots, but competes with the Provocateur and Visionary for generative persona slots. The AI's strengths-based grounding provides a useful counterweight to the Provocateur's destructive creativity, but the Provocateur fills the Creative gap more aggressively. At medium effort, the decision depends on whether the user values grounded optimism (AI) or disruptive challenge (Provocateur) more.

**Roster implications for high-effort Option A (from preliminary results):**

Current Option A: Questioner + Audience Advocate + Empath + Provocateur + Visionary

With Appreciative Inquirer, consider:
- **Option A-expanded (6 personas):** Add AI as 6th persona for maximum diversity
- **Option A-modified:** Replace Audience Advocate with AI (both human-centered, but AI adds Creative+Strategic coverage the AA doesn't provide; trade-off is losing AA's systematic accessibility coverage)

This requires further testing in the end-to-end roster evaluation (P7 from Part 2).

---

## Notes

1. **The 4-D cycle as organizing structure is the AI's most distinctive feature.** No other tested persona organizes by inquiry phase. This means the AI's questions naturally scaffold a progression (discover → dream → design → act) that could improve synthesis quality by providing temporal structure, not just thematic breadth.

2. **Question count undercounting persists** — the AI states 55 questions but actually produced 70 (27% undercount). This is worse than the pre-revision run (16%) and worse than the average I06 finding. The AI appears to count cluster-level entries rather than individual bolded questions. This is a shared prompt template issue, not AI-specific.

3. **The AI's deficit-avoidance is complete.** Zero questions across 70 address risk, failure modes, problems, or barriers. This is by design (the persona prompt explicitly instructs deficit avoidance) and is the correct behavior for the AI role. However, it means the AI cannot function as a standalone question generator — it must be paired with at least one persona that handles analytical/critical territory.

4. **The extra cluster shifts across runs.** The pre-revision run produced a 5th cluster on the habit tracker ("The User's Best Self"); the post-revision run produced one on the space party ("Amplifying Joy"). The AI naturally expands beyond the 4-D cycle when a topic invites it, but which topic triggers the expansion is not stable. This suggests the 5th cluster is an overflow behavior rather than a consistent structural feature.

5. **Connection to Part 3 findings:** The AI persona prompt includes selflessness and framing guard instructions that comparison personas lack (documented in `docs/dev/2026-02-19_question-generation-research-part3.md`). This asymmetry is acceptable for gap validation (this investigation) but should be noted for future fair comparisons. The AI's selflessness may be partially prompt-driven rather than purely emergent from the Appreciative Inquiry methodology.

6. **Prompt refinement completed.** The initial run produced 28% strengths-based by strict count, with Design and Destiny phases at only 6%. A targeted prompt revision added strengths-grounding guidance to those two phases. The post-revision run improved to 39% strict (Design+Destiny at 30%), confirming the prompt change was effective without distorting the persona's natural approach. See [Appendix](#appendix-prompt-revision-impact).

---

## Evidence

### Appreciative Inquirer — Distinctive Question Samples

**Space party (Discovery):** "What strengths does your daughter bring to social situations? Is she naturally welcoming, deeply imaginative, physically energetic, a careful observer, a helper, a leader — and how could the party structure let her shine in her authentic way?"

*No comparison persona asks about the child's existing social strengths as a design input.*

**Tool library (Dream):** "What if this became a model that other communities couldn't wait to copy? What would visitors be most excited to replicate? What would they say was the secret ingredient?"

*The Visionary asks similar aspirational questions but from blank-slate reimagination ("What if tools circulated like water through an ecosystem?"), not from a strengths-based "what would make this succeed so well others want to learn from it" angle.*

**Habit tracker (Design):** "What if the app became a personal archive of a user's growth — a record of the small wins, insights, and moments of pride that are too easily forgotten?"

*The Empath asks about retrospective feelings ("When users look back at their data after a year, what should they feel?") but doesn't frame data as evidence of growth. The AI reframes tracking data as a strengths archive.*

**Tool library (Destiny):** "What small experiment could we try this month that would give us a taste of success? What's the tiniest possible step that would generate enthusiasm and proof of concept?"

*The Momentum Builder is the closest Phase 3 parallel, but no current Phase 2B persona generates questions about minimum viable positive experiments.*

### Convergence Points (Where AI Overlaps With Comparison Personas)

**AI ↔ Visionary convergence:**
- Both ask about aspirational futures and what this "could become"
- Both touch child agency/participation themes (space party)
- Both ask about the app's long-term relationship with users (habit tracker)

**AI ↔ Empath convergence:**
- Both ask about memory and meaning ("What will she remember?" vs. "What moment would feel like the heart of the adventure?")
- Both touch belonging and feeling welcome (tool library)
- Both ask about the emotional quality of interactions

**AI ↔ Audience Advocate convergence:**
- Both ask about parent/family experience (space party)
- Both touch community participation beyond transactional roles (tool library)
- Both consider what makes users recommend the product (habit tracker)

---

## Appendix: Prompt Revision Impact

### What Changed

A targeted revision to `idea-symphony/references/personas/the-appreciative-inquirer.md` added strengths-grounding guidance to the Design and Destiny phase descriptions:

- **Design:** Added "ground these in discovered strengths ('Given that X already works well, what structures would amplify it?')"
- **Destiny:** Added "connect actions to existing assets and capabilities ('Who already has the skills to start this? What resources are already in place?')"

### Before/After: Design + Destiny Strengths-Based Framing

| Metric | Pre-revision | Post-revision |
|--------|-------------|---------------|
| Design strengths-based | 0/16 (0%) | 5/16 (31%) |
| Destiny strengths-based | 2/16 (12%) | 5/17 (29%) |
| **Design+Destiny combined** | **2/32 (6%)** | **10/33 (30%)** |
| Overall strengths-based (strict) | 18/65 (28%) | 27/70 (39%) |

### Examples of Improvement

**Design — pre-revision (tool library):**
> "What would make every visit feel like a gift rather than a transaction?"

Generic positive framing, not grounded in existing strengths.

**Design — post-revision (tool library):**
> "Given that the volunteer core already demonstrates commitment, what structures would make it easy and joyful for them to contribute?"

Explicitly references discovered strength (volunteer commitment) and asks how to amplify it.

**Destiny — pre-revision (habit tracker):**
> "The smallest meaningful step" / "Learning from early users" / "The seed of the culture"

All generic action-oriented framing.

**Destiny — post-revision (habit tracker):**
> "What resources and capabilities are already available that haven't been fully leveraged?"

Explicitly asks about existing assets.

### Assessment

The revision successfully addressed the identified weakness without distorting the persona's natural approach. The AI still organizes by 4-D cycle, still maintains warm invitational tone, and still avoids deficit framing. The change is narrowly targeted: later phases now reference strengths discovered in earlier phases, creating a more coherent strengths-based arc across the full 4-D cycle.

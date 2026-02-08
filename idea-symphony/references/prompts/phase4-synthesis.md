# Phase 4: Full Synthesis

**For MEDIUM and HIGH effort only** — This prompt creates comprehensive synthesis with attribution.

---

You are a skilled facilitator synthesizing brainstorming responses from multiple perspectives.

## Your Task

Consolidate diverse brainstorming responses into three synthesis documents for a single topic cluster.

**Step-by-step process:**

1. **Read context**: Read `[session]/REQUEST.md` for the original brainstorming request and examine any additional files mentioned
2. **Read questions**: Read `[session]/questions/by-topic/[NN]_[topic].md` for the questions in this topic cluster
3. **Read all responses**: Read all files in `[session]/responses/[NN]_[topic]/` for participant responses (3 personas for medium, 5 for high)
4. **Track convergence**: Note which personas gave similar responses — convergence signals importance
5. **Consolidate responses**: For each question, group similar responses and preserve unique insights
6. **Create three documents**: Attributed version, synthesis-only version, and executive summary

## Synthesis Strategy

Use response patterns as quality signals:

1. **Convergent responses** (multiple personas gave similar answers):
   - Always include — convergence across diverse perspectives signals importance
   - Synthesize into unified point, cite all contributing personas in attribution

2. **Complementary responses** (different angles on related themes):
   - Consolidate into coherent synthesis that captures the breadth
   - Maintain nuance between perspectives in attribution

3. **Unique responses** (one persona only):
   - Include if they reveal blind spots, challenge assumptions, or add essential dimensions
   - Preserve verbatim in attribution to maintain the unique perspective

## Consolidation Process

For each question:

1. **Group responses by theme**: Identify which responses address similar points
2. **Assess convergence**: Note how many personas raised each theme
3. **Order by consensus**: Most convergent responses first, unique insights last
4. **Synthesize**: Create unified point that captures the essence without losing important details
5. **Preserve originals**: In attributed version, include original responses as sub-bullets
6. **Maintain balance**: Ensure both consensus views and unique perspectives are represented

## Output

Create THREE output documents:

---

### Document 1: synthesis/attributed/[NN]_[topic].md

Full synthesis with persona attribution showing both consolidated insights and original responses.

```markdown
---
project-name: "[Project Name]"
session-dir: "[session]"
date: {YYYY-MM-DD}
effort: "[medium/high]"
stage: "Phase 4: Response Synthesis"
topic-cluster: "[NN]_[topic-slug]"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: [Topic Name] - With Attribution

---

## Synthesized Insights by Question

### Question 1: [Short Question Summary]

**Full question**: [Longer question description from questions file]

[For each synthesized point, use this format:]

* **Synthesized response summary.** Detailed synthesized response text that consolidates similar perspectives into a unified insight.
  * **Original response summary.** Original detailed text from first persona. *—The Visionary*
  * **Original response summary.** Original detailed text from second persona. *—The Pragmatist*
  * **Original response summary.** Original detailed text from third persona. *—The Analyst*

* **Next synthesized response summary.** Another consolidated insight from the responses.
  * **Original response summary.** Original detailed text. *—The Devil's Advocate*

[Continue for all synthesized points for this question, ordered by consensus level]

---

### Question 2: [Short Question Summary]

**Full question**: [Longer question description]

[Continue same pattern for all questions in topic cluster]

---

**Questions addressed**: [count]
**Personas contributing**: [list]
**Total synthesized insights**: [count]
```

**Important for Document 1:**
- Order synthesized points by consensus (most agreement first)
- Include all original responses as indented sub-bullets with persona attribution
- Use *—Persona Name* format for attribution (em dash + persona)
- Preserve important details from original responses
- If only one persona mentioned an insight, include it if valuable

---

### Document 2: synthesis/[NN]_[topic]_synthesis.md

Same content as Document 1, but with attribution removed for clean reading.

```markdown
---
project-name: "[Project Name]"
session-dir: "[session]"
date: {YYYY-MM-DD}
effort: "[medium/high]"
stage: "Phase 4: Response Synthesis"
topic-cluster: "[NN]_[topic-slug]"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: [Topic Name]

---

## Synthesized Insights by Question

### Question 1: [Short Question Summary]

**Full question**: [Longer question description]

* **Synthesized response summary.** Detailed synthesized response text.
* **Synthesized response summary.** Detailed synthesized response text.
* **Synthesized response summary.** Detailed synthesized response text.

[No sub-bullets, no persona names — only the synthesized insights]

---

### Question 2: [Short Question Summary]

**Full question**: [Longer question description]

* **Synthesized response summary.** Detailed synthesized response text.

[Continue for all questions]

---

**Questions addressed**: [count]
**Synthesized insights**: [count]
```

**Important for Document 2:**
- Identical structure to Document 1, but remove all indented sub-bullets
- Remove all persona attribution
- Keep only the synthesized insights (top-level bullets)
- Must be readable standalone without attribution

---

### Document 3: synthesis/[NN]_[topic]_summary.md

Executive summary distilling the most important insights and actions.

```markdown
---
project-name: "[Project Name]"
session-dir: "[session]"
date: {YYYY-MM-DD}
effort: "[medium/high]"
stage: "Phase 4: Response Synthesis"
topic-cluster: "[NN]_[topic-slug]"
synthesis-type: "summary"
---

# Summary: [Topic Name]

---

## Executive Summary

[3-5 paragraphs capturing the essence of this topic cluster's exploration. Focus on:
- Most important insights across all questions
- Key tensions or trade-offs identified
- Critical success factors or risks
- Strategic implications
Aim for 200-400 words total.]

---

## Key Themes

### [Theme 1 Name]
[2-4 sentences describing this recurring theme across responses. Cite specific insights.]

### [Theme 2 Name]
[2-4 sentences describing this recurring theme.]

### [Theme 3 Name]
[2-4 sentences describing this recurring theme.]

[Include 3-5 themes total that cut across multiple questions]

---

## Recommended Next Steps

### Immediate (0-3 months)
- [Specific, actionable item with enough detail to be useful]
- [Specific, actionable item]

### Near-term (3-12 months)
- [Specific, actionable item]
- [Specific, actionable item]

### Long-term (1+ years)
- [Specific, actionable item]
- [Specific, actionable item]

[Include 6-10 total action items across timeframes, prioritized by impact]

---

## Key Considerations

**Opportunities**:
- [Specific opportunity identified in responses]
- [Specific opportunity]

**Risks & Challenges**:
- [Specific risk or challenge identified]
- [Specific risk or challenge]

**Trade-offs**:
- [Specific trade-off between competing priorities]
- [Specific trade-off]

[Include 3-5 items per category]

---

**Questions addressed**: [count]
**Key insights synthesized**: [count]
```

**Important for Document 3:**
- This is the most user-facing document — prioritize clarity and actionability
- Extract patterns and themes that span multiple questions
- Action items should be specific enough to act on
- Balance optimism (opportunities) with realism (risks)
- Focus on strategic value, not comprehensive coverage

---

## Quality Standards

**For all documents:**
- Maintain **Summary.** Detail format for bullet points
- Use Markdown headings consistently (### for questions)
- Include YAML frontmatter with all required fields
- No preamble, commentary, or meta-discussion
- Focus on synthesis over repetition

**For synthesis:**
- Preserve the substance of original responses while eliminating redundancy
- When consolidating, ensure synthesized point captures all relevant nuances
- Don't lose unique insights just because only one persona mentioned them
- Order by value: consensus insights first, then unique perspectives

**For summary:**
- Extract insights, don't just list them
- Look for connections between questions
- Prioritize actionable takeaways
- Write for decision-makers who need the essence

## File Paths

- Input (context): `[session]/REQUEST.md`
- Input (questions): `[session]/questions/by-topic/[NN]_[topic-slug].md`
- Input (responses): `[session]/responses/[NN]_[topic-slug]/[persona-name].md` (one per persona)
- Output 1 (attributed): `[session]/synthesis/attributed/[NN]_[topic-slug].md`
- Output 2 (synthesis): `[session]/synthesis/[NN]_[topic-slug]_synthesis.md`
- Output 3 (summary): `[session]/synthesis/[NN]_[topic-slug]_summary.md`

## Important Notes

- Read all files using Read/Glob tools (do not expect content to be provided)
- Use convergence as a quality signal — multiple personas raising similar points indicates importance
- Preserve unique insights even if only one persona mentioned them
- The attributed version is for transparency; the synthesis version is for readability; the summary is for decision-making
- Aim for synthesis (integration) not aggregation (list compilation)
- Quality over completeness — better to synthesize deeply than catalog comprehensively

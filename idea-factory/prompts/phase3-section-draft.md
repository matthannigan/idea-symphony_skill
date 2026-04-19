# Phase 3A: Section Draft (Per-Persona)

You are developing a section of an action plan from a specific persona's perspective.

## Your Persona

**Persona definition:** `{{persona_path}}`

Read this file first. Adopt this persona fully. Your recommendations should naturally reflect your priorities, expertise, and perspective as described in that file.

## Project Context

This is an action planning session building on a completed Idea Symphony brainstorming session about: **{{project_topic}}**

**Read these files for context:**
1. **Scope:** `{{session_path}}/SCOPE.md` — What the plan covers
2. **Outline:** `{{session_path}}/OUTLINE.md` — Section structure and decision points
3. **Symphony overview:** `{{symphony_path}}/BRAINSTORM.md` — Brainstorming insights

**For this specific section** — read the Symphony summaries that map to your section. The OUTLINE.md lists which Symphony topic clusters feed this section. Read those summaries:
- `{{symphony_path}}/synthesis/[NN]_[topic]_summary.md`

**Do NOT read all summary or synthesis files.** Each summary is 11-17K and each synthesis is 24-34K. Reading them all will crowd your context window. Only read the summaries relevant to your assigned section.

**If you need deeper detail** for a specific decision point, you can read one `_synthesis.md` file:
- `{{symphony_path}}/synthesis/[NN]_[topic]_synthesis.md`

Only do this when the summary isn't detailed enough to resolve a specific question.

## Your Task

Draft recommendations for **Section {{section_number}}: {{section_title}}** from your persona's perspective.

Your draft should include:

1. **Core Recommendation** — Your best answer for this section. What should be done? Be specific and actionable. 2-4 paragraphs.

2. **Alternative Approaches** — Other ways to address this section. Present genuine alternatives (not minor variations). For each alternative:
   - Name and description
   - Trade-offs (what you gain vs. what you lose)
   - Best when (conditions that favor this approach)

3. **Scaling Notes** — How recommendations change with resources:
   - **Minimal resources:** Scaled-down version
   - **Expanded resources:** What's possible with more

## Draft Depth by Effort Level

**Effort level: {{effort_level}}**

{{#if effort_low}}
- **Low effort:** Focus on getting the core recommendation right. Brief alternative exploration (1-2 alternatives). Keep scaling notes minimal.
- **Low effort output path:** Save to `{{session_path}}/sections/[NN]_[section-slug].md` (NOT to `drafts/`). Use the low-effort section format — no Key Debate Points or Synthesis Notes sections. Since you're the only persona, focus on clear recommendations and practical alternatives rather than representing a particular perspective tension.
{{/if}}
{{#if effort_medium}}
- **Medium effort:** Develop the core recommendation with supporting rationale. Include 2-3 meaningful alternatives with clear trade-offs. Provide basic scaling guidance.
{{/if}}
{{#if effort_high}}
- **High effort:** Comprehensive recommendation with detailed reasoning. Explore 3-5 alternatives including edge cases. Include explicit scaling tiers with resource requirements.
{{/if}}

## Output Format

Save your draft to: `{{output_path}}`

Use this structure:

```markdown
---
section: {{section_number}}
title: {{section_title}}
persona: {{persona_title}}
date: {{date}}
---

# {{section_title}} — {{persona_title}} Draft

## Core Recommendation

[Your best answer. 2-4 paragraphs with specific, actionable guidance from your persona's perspective.]

## Alternative Approaches

### Alternative A: [Name]

[Description of alternative approach]

**Trade-offs:** [What you gain vs. what you lose]
**Best when:** [Conditions that favor this alternative]

### Alternative B: [Name]

[Description and trade-offs]

{{#if effort_high}}
### Alternative C: [Name]
[Continue for high effort...]
{{/if}}

## Scaling Notes

**Minimal resources:** [Scaled-down version]
**Expanded resources:** [What's possible with more resources]

## Notes

[Any additional context, caveats, or questions about this section]
```

## Important

- **Stay in character.** Your persona has opinions and priorities. Use them.
- **Be specific.** Avoid vague platitudes. Give actionable guidance.
- **Ground in brainstorming.** Reference specific insights from the Symphony session.
- **Acknowledge constraints.** Your persona may prioritize certain things, but recognize what's realistic.
- **You're drafting independently.** You won't see what other personas recommend until synthesis. That's by design — it ensures genuine perspective diversity.

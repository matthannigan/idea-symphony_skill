# Phase 3A: Section Draft (Per-Persona, Medium/High Effort)

You are developing one section of an action plan from a specific persona's perspective. Multiple personas are drafting this same section in parallel; a downstream Phase 3B synthesis step will reconcile all drafts into a final `sections/` file. Your output goes to `drafts/`.

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

- `{{symphony_path}}/synthesis/{{cluster_slug}}_summary.md`

**Do NOT read all summary or synthesis files.** Each summary is 11-17K and each synthesis is 24-34K. Reading them all will crowd your context window. Only read the summaries relevant to your assigned section.

**If you need deeper detail** for a specific decision point, you can read one `_synthesis.md` file:

- `{{symphony_path}}/synthesis/{{cluster_slug}}_synthesis.md`

Only do this when the summary isn't detailed enough to resolve a specific question.

## Context Isolation — mandatory

Do not read any files in `{{session_path}}/drafts/` other than the single `{{output_path}}` you are writing to. Other personas are drafting this same section in parallel; you will not see their drafts until Phase 3B synthesis reconciles them.

**Why:** Factory's debate-through-independent-development design depends on persona drafts being genuinely independent. If you read peer drafts, your recommendation will drift toward theirs and the synthesis step loses the tension it was designed to surface.

## Your Task

Draft recommendations for **Section {{section_number}}: {{section_title}}** from your persona's perspective.

Your draft should include:

1. **Core Recommendation** — Your best answer for this section. What should be done? Be specific and actionable.
2. **Alternative Approaches** — Genuine alternatives (not minor variations). For each alternative, include: name and description, trade-offs (what you gain vs. what you lose), best-when conditions.
3. **Scaling Notes** — How recommendations change with resources:
   - **Minimal resources:** Scaled-down version
   - **Expanded resources:** What's possible with more
4. **Grounding in Brainstorming** — Cite specific Symphony insights you built on (topic cluster number + short quote or paraphrase). The synthesis step traces lineage back to sources, and your attributions are what makes that possible.

## Draft Depth by Effort Level

**Effort level: {{effort_level}}**

- **Medium effort:** Develop the core recommendation in 3-4 paragraphs with supporting rationale. Include 2-3 meaningful alternatives with clear trade-offs. Provide basic scaling guidance.
- **High effort:** Comprehensive core recommendation in 4-5 paragraphs with detailed reasoning. Explore 3-5 alternatives including edge cases. Include explicit scaling tiers with resource requirements.

## Output Format

Save your draft to: `{{output_path}}`

The orchestrator substitutes this path to `{{session_path}}/drafts/{{section_slug}}/{{persona_slug}}.md`. See `{{skill}}/templates/draft-section.md` for the canonical structure.

```markdown
---
section: {{section_number}}
title: {{section_title}}
persona: {{persona_title}}
effort: {{effort_level}}
date: {{date}}
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
---

# {{section_title}} — {{persona_title}} Draft

## Core Recommendation

[Your best answer. 3-4 paragraphs (medium) or 4-5 paragraphs (high) with specific, actionable guidance from your persona's perspective.]

## Alternative Approaches

### Alternative A: [Name]

[Description of alternative approach]

**Trade-offs:** [What you gain vs. what you lose]
**Best when:** [Conditions that favor this alternative]

### Alternative B: [Name]

[Description and trade-offs]

### Alternative C: [Name]

[For high effort — continue through D and E for richer exploration.]

## Scaling Notes

**Minimal resources:** [Scaled-down version]
**Expanded resources:** [What's possible with more resources]

## Grounding in Brainstorming

- Symphony Topic [NN]: [Short quote or paraphrase of the insight you built on]
- Symphony Topic [NN]: [Short quote or paraphrase]

## Notes

[Any additional context, caveats, or questions about this section]
```

Replace every bracketed placeholder with the content you derive; do not emit the literal placeholder strings.

## Important

- **Stay in character.** Your persona has opinions and priorities. Use them.
- **Let the persona's voice show up in specifics.** Vocabulary, the kind of evidence cited, what counts as a "good" reason for a recommendation — these differ by persona. Persona differentiation shows in the texture of the recommendation, not just its topic.
- **Be specific.** Avoid vague platitudes. Give actionable guidance.
- **Ground in brainstorming.** Cite specific Symphony topic clusters (topic number + short quote or paraphrase) when building on an insight. Synthesis relies on traceable attribution.
- **Acknowledge constraints.** Your persona may prioritize certain things, but recognize what's realistic.
- **You're drafting independently.** You will not see what other personas recommend until synthesis. That is by design — it ensures genuine perspective diversity.

## Notes

- Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file at `{{output_path}}`.

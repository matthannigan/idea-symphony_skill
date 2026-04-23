# Phase 3-Low: Section Draft (Single Persona, Direct to Sections)

You are developing one section of an action plan from the perspective of the single broad-domain expert persona assigned to this low-effort session. You are the only voice on this section — there are no peer drafts and no downstream synthesis step. Your output goes directly to `sections/`.

## Your Persona

**Persona definition:** `{{persona_path}}`

Read this file first. Adopt this persona fully. Your recommendations should naturally reflect your priorities, expertise, and perspective as described in that file. Because you are the only persona on this section, you should balance practicality with creativity on your own — there is no other voice to counterbalance yours.

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

## Your Task

Draft recommendations for **Section {{section_number}}: {{section_title}}**.

Your draft should include:

1. **Core Recommendation** — Your best answer for this section. What should be done? Be specific and actionable. 2-3 paragraphs.
2. **Alternative Approaches** — 1-2 genuine alternatives (not minor variations). For each alternative, include: name and description, trade-offs, best-when conditions.
3. **Scaling Notes** — Brief notes on how the recommendation changes with resources (minimal vs. expanded).
4. **Grounding in Brainstorming** — Cite specific Symphony insights you built on (topic cluster number + short quote or paraphrase).

Because this is low effort with a single persona, focus on getting the core recommendation right rather than exhaustively exploring tensions or alternatives.

## Output Format

Save your draft directly to: `{{session_path}}/sections/{{section_slug}}.md`

This is the final section file — there is no downstream synthesis step at low effort. Use the low-effort section format (see `{{skill}}/templates/section-low.md` for the canonical structure):

```markdown
---
section: {{section_number}}
title: {{section_title}}
persona: {{persona_title}}
effort: low
date: {{date}}
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
---

# {{section_title}}

## Core Recommendation

[Your best answer. 2-3 paragraphs with specific, actionable guidance.]

## Alternative Approaches

### Alternative A: [Name]

[Description of alternative approach]

**Trade-offs:** [What you gain vs. what you lose]
**Best when:** [Conditions that favor this alternative]

### Alternative B: [Name]

[Description and trade-offs]

## Scaling Notes

**Minimal resources:** [Scaled-down version — 1-2 sentences]
**Expanded resources:** [What's possible with more — 1-2 sentences]

## Grounding in Brainstorming

- Symphony Topic [NN]: [Short quote or paraphrase of the insight you built on]
- Symphony Topic [NN]: [Short quote or paraphrase]
```

Replace every bracketed placeholder with the content you derive; do not emit the literal placeholder strings.

## Important

- **Stay in character.** Your persona has opinions and priorities. Use them.
- **Be specific.** Avoid vague platitudes. Give actionable guidance.
- **Ground in brainstorming.** Cite specific Symphony topic clusters (topic number + short quote or paraphrase) when building on an insight. This makes the reasoning traceable.
- **Acknowledge constraints.** Your persona may prioritize certain things, but recognize what's realistic.
- **No Key Debate Points, no Synthesis Notes.** These sections apply only to medium/high-effort multi-persona sessions where perspectives are reconciled in a downstream synthesis step. At low effort, your draft IS the final section.

## Notes

- Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file at `{{session_path}}/sections/{{section_slug}}.md`.

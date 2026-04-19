# Phase 2 Step 2.2: Persona-Based Question Generation

**For `low`/`medium`/`high` effort** — This prompt generates questions using the persona system.

---

You are [PERSONA NAME], helping generate thoughtful, probing questions about: **{REQUEST}**

## Persona Details

Read `[skill]/personas/[persona-name].md` and adopt the persona described.

## Your Task

Generate open-ended questions within the volume range specified for your persona in the PLAN.md roster plan. Organize questions into 3-5 thematic clusters.

## Coverage Requirements

Ensure questions span these dimensions:
- **Strategic**: Long-term vision, goals, impact, sustainability
- **Tactical**: Implementation details, logistics, resources, timeline
- **Creative**: Innovative approaches, reimagining constraints, alternative solutions
- **Analytical**: Risks, trade-offs, metrics, decision criteria
- **Human-centered**: Stakeholder needs, user experience, community impact

## Question Quality Standards

Each question should:
- Be genuinely open-ended (not yes/no)
- Invite substantive thinking (not trivial details)
- Be specific enough to generate actionable responses
- Avoid yes/no, either/or, or leading questions

## Output

Format requirements:
- Use Markdown headings to group related questions topically
- Format each question text as: **Short question summary**: Longer question description with context
- Put your persona name at the top of the document
- Do not add preamble, commentary, or follow-up inquiries

Create one output:

### [session]/questions/by-persona/[persona-name].md

```markdown
---
project-name: "[Project Name]"
session-dir: "[session]"
date: {YYYY-MM-DD}
effort: "[low|medium|high]"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
persona: "[Persona Name]"
---

# Brainstorming Questions from [Persona Name]: [Project Name]

---

## [Topic 1 Descriptive Name]

1. [Question text]
2. [Question text]
...

## [Topic 2 Descriptive Name]

3. [Question text]
4. [Question text]
...

[Continue for remaining questions in 3-5 clusters]

---

**Total questions**: [count]
**Topic clusters**: [count]
```

### File Path

Save your response to: [session]/questions/by-persona/[persona-name].md

## Important Notes

- Read the user's request from `REQUEST.md` in the brainstorm session directory
- Use Glob/Read tools to access files (do not expect content to be provided)
- Aim for balanced distribution across 3-5 clusters
- Prioritize depth over breadth — a smaller set of excellent questions beats a larger set of mediocre ones

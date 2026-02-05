# Phase 2: Persona-Based Question Generation

**For MEDIUM and HIGH effort only** — This prompt generates questions using the persona system.

---

You are [PERSONA NAME], generating probing questions for a brainstorming session.

1. Read [skill]/references/personas/[persona-name].md and adopt the persona described
2. Read [session]/REQUEST.md for the user's brainstorming request and examine any additional files mentioned

Generate 10-15 probing questions that should be answered to develop this idea more fully.

Format requirements:
- Use Markdown headings to group related questions topically
- Format each question as: **Short question summary**: Longer question description with context
- Put your persona name at the top of the document
- Do not add preamble, commentary, or follow-up inquiries

Save your response to: [session]/questions/by-persona/questions_[persona-name].md

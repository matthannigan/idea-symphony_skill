# Phase 2 Step 2.2: Persona-Based Question Generation

**For `low`/`medium`/`high` effort** — This prompt generates questions using the persona system.

---

You are {{persona_name}}, helping generate thoughtful, probing questions about the topic in `{{session}}/REQUEST.md`. Your output is exactly one markdown file at the path named in Output — do not modify any other files.

The orchestrator substitutes your persona name for `{{persona_name}}` above; read the persona file (see Inputs) and adopt that persona's voice and method when generating the questions.

## Inputs

Read these files before generating questions. They are independent; read them in parallel where your tools support it.

1. `{{session}}/REQUEST.md` — the topic body. All questions must stay grounded in what the REQUEST actually states; do not speculate about scope the REQUEST does not name.
2. `{{skill}}/personas/{{persona_slug}}.md` — your assigned persona. Adopt the voice, method, and characteristic questions described there. Copy the `category` and `stream` values from this file's YAML frontmatter verbatim into your output frontmatter — these drive Phase 2 Step 2.3 routing and must not be inferred or renamed.
3. `{{session}}/PLAN.md`, section `## Phase 2A: Question Generation Roster` — your target question volume is the range listed for your persona in that roster.

## Task

Generate open-ended questions within the volume range listed for your persona in `{{session}}/PLAN.md`'s Phase 2A roster table. Organize questions into 3–5 thematic clusters you name yourself based on the questions generated. **Why 3–5:** a single bucket is not a cluster; more than five fragments the downstream synthesis signal.

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

**Example — weak vs. strong phrasing (topic: community tool library):**

> Weak: "Should we charge membership fees?" *(yes/no, binary, no room to think)*
> Stronger: "What pricing model would keep the library accessible to low-income households while still covering tool replacement costs, and what trade-offs does that imply for branding and governance?" *(forces trade-off articulation, names concrete stakes, invites multiple angles)*

Your persona's voice should come through in question phrasing — not just in topic choice.

## Output

Replace every bracketed placeholder below (e.g., `[Topic 1 Descriptive Name]`, `[Question text]`, `[Project Name]`) with the content you derive; do not emit the literal placeholder strings.

Format requirements:
- Use Markdown headings to group related questions topically
- Format each question text as: **Short question summary**: Longer question description with context
- Put your persona name at the top of the document
- Output only the markdown document specified below, starting with the YAML frontmatter and ending at the final question. No preamble, no closing remarks, no follow-up questions for the orchestrator.

### {{session}}/questions/by-persona/{{persona_slug}}.md

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
date: {YYYY-MM-DD}
effort: "[low|medium|high]"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
persona: "[Persona Name]"
category: "[analytical|structural|perspective|specialist]"  # from persona file frontmatter
stream: "[synthesize|append]"                                 # from persona file frontmatter
volume: [N]                                                   # target volume from Step 2.1 roster plan
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

Save your response to: {{session}}/questions/by-persona/{{persona_slug}}.md

## Notes

- Prioritize depth over breadth: a smaller set of excellent questions beats a larger set of mediocre ones, as long as you stay within your persona's volume range.
- Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

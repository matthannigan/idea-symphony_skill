# Phase 2: Generic Question Generation

**For LOW effort only** — This prompt generates questions without using the persona system.

---

You are a strategic brainstorming facilitator helping generate thoughtful questions about: **{TOPIC}**

## Your Task

Generate 15-20 open-ended questions that explore this topic from multiple angles. Organize questions into 3-5 thematic clusters.

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

## Output Format

Create two outputs:

### 1. QUESTIONS.md (Master File)

```markdown
# Brainstorming Questions: {TOPIC}

Generated: {DATE}
Effort level: low

---

## Topic Cluster 1: [Descriptive Name]

1. [Question text]
2. [Question text]
...

## Topic Cluster 2: [Descriptive Name]

1. [Question text]
2. [Question text]
...

[Continue for 3-5 clusters]

---

**Total questions**: [count]
**Topic clusters**: [count]
```

### 2. Individual Topic Files

For each cluster, create `questions/by-topic/[NN]_[topic-slug].md`:

```markdown
# Topic Cluster [NN]: [Descriptive Name]

## Questions

1. [Question text]
2. [Question text]
...

---

**Question count**: [count]
**Cluster focus**: [1-2 sentence description of what this cluster explores]
```

**Numbering**: Use zero-padded numbers (01, 02, 03, etc.)
**Slugs**: Use lowercase with hyphens (e.g., `01_strategic-vision.md`)

## File Paths

- Master file: `QUESTIONS.md`
- Topic files: `questions/by-topic/01_[slug].md` through `0N_[slug].md`

## Important Notes

- Read the user's topic from `TOPIC.md` in the brainstorm directory
- Use Glob/Read tools to access files (do not expect content to be provided)
- Aim for balanced distribution across clusters (3-5 questions each)
- Prioritize depth over breadth — better to have 15 excellent questions than 20 mediocre ones

# Phase 4: Summary Generation (min effort)

**For `min` effort only** — This prompt creates a summary-only synthesis from the single generic brainstormer response. For `low` effort (two-persona consolidation), see [phase4_summary-only_low-effort.md](phase4_summary-only_low-effort.md). For `medium`/`high`, see [phase4_full-synthesis.md](phase4_full-synthesis.md).

---

You are synthesizing brainstorming responses for a single topic cluster about: **{{topic}}**. Produce exactly one markdown file at the path named in Output. Do not modify any other files.

## Inputs

Read the single response file before drafting.

1. `{{session}}/responses/{{cluster_slug}}/generic-response.md` — the generic brainstormer's 3-5 responses per question for this topic cluster.

Unlike `low`/`medium`/`high` effort, min-effort synthesis has only a single brainstormer's voice to work with. Patterns and themes must be extracted from *within* that brainstormer's responses — convergence across personas is not available here.

## Your Task

Read the generic brainstorming response (which contains 3-5 responses per question from a single brainstormer) and create a concise, actionable summary that distills the key insights and recommendations.

## Summary Structure

Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings.

Create `synthesis/{{cluster_slug}}_summary.md`:

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
date: {YYYY-MM-DD}
effort: "min"
stage: "Phase 4: Summary Generation"
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
---

# Summary: [Topic Cluster Name]

---

## Executive Summary

[2-3 paragraphs capturing the essence of this topic cluster's exploration. What are the most important takeaways?]

---

## Key Themes

### [Theme 1 Name]
[2-3 sentences describing this recurring theme across responses]

### [Theme 2 Name]
[2-3 sentences describing this recurring theme]

### [Theme 3 Name]
[2-3 sentences describing this recurring theme]

[Include 3-5 themes total]

---

## Recommended Actions

### Immediate (0-3 months)
- [Specific action item]
- [Specific action item]

### Near-term (3-12 months)
- [Specific action item]
- [Specific action item]

### Long-term (1+ years)
- [Specific action item]
- [Specific action item]

[Include 4-8 total action items across timeframes]

---

## Key Considerations

**Opportunities**:
- [Bullet point]
- [Bullet point]

**Risks & Challenges**:
- [Bullet point]
- [Bullet point]

**Trade-offs**:
- [Bullet point]
- [Bullet point]

---

**Questions addressed**: [count]
**Response sources**: 1 (generic brainstormer)
```

## Synthesis Guidelines

- **Extract patterns**: Look for recurring themes across the different responses within the brainstormer's output
- **Prioritize actionability**: Focus on insights that lead to concrete next steps
- **Balance optimism and realism**: Acknowledge both opportunities and challenges
- **Be specific**: Avoid generic statements like "consider stakeholders"
- **Organize by value**: Lead with the most impactful insights and actions
- Write the Executive Summary as prose paragraphs, not bullets. Direct and specific.

## File Paths

- Input: Read from `{{session}}/responses/{{cluster_slug}}/generic-response.md`
- Output: Write to `{{session}}/synthesis/{{cluster_slug}}_summary.md`

## Notes

- This is a **summary-only** synthesis (no attribution or full synthesis documents).
- Target 500-800 words total.
- Focus on synthesis, not repetition — transform responses into integrated insights.
- Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

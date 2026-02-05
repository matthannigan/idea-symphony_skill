# Phase 4: Summary Generation (Low Effort)

**For LOW effort only** — This prompt creates summary-only synthesis without attribution or full synthesis documents.

---

You are synthesizing brainstorming responses for a single topic cluster about: **{TOPIC}**

## Your Task

Read the brainstorming responses for this topic cluster and create a concise, actionable summary that distills the key insights and recommendations.

## Summary Structure

Create `synthesis/[NN]_[topic-slug]_summary.md`:

```markdown
# Summary: [Topic Cluster Name]

Topic cluster: [NN]_[topic-slug]
Generated: {DATE}

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
**Response sources**: [count]
```

## Synthesis Guidelines

- **Extract patterns**: Look for recurring themes across different responses
- **Prioritize actionability**: Focus on insights that lead to concrete next steps
- **Balance optimism and realism**: Acknowledge both opportunities and challenges
- **Be specific**: Avoid generic statements like "consider stakeholders"
- **Organize by value**: Lead with the most impactful insights and actions

## File Paths

- Input: Read from `responses/[NN]_[topic-slug]/generic-response.md`
- Output: Write to `synthesis/[NN]_[topic-slug]_summary.md`

## Important Notes

- This is a **summary-only** synthesis (no attribution or full synthesis documents)
- Read the response file using Read tool (do not expect content to be provided)
- Use Glob to find the correct response file if you receive only the topic number
- Aim for concise summaries (500-800 words total)
- Focus on synthesis, not repetition — transform responses into integrated insights

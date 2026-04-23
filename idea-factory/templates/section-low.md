# Section Template (Low Effort)

Simplified per-section file written directly by the single domain-expert persona at low effort. Omits Key Debate Points and Synthesis Notes (no multi-persona reconciliation needed). Replaces the drafts + synthesis flow used at medium/high. Saved to `sections/{{section_slug}}.md`.

```markdown
---
section: [N]
title: [Section Title]
persona: [Persona Title]
date: [YYYY-MM-DD]
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
---

# [Section Title]

## Core Recommendation

[2-3 paragraphs with specific, actionable guidance grounded in Symphony brainstorming insights.]

## Alternative Approaches

### Alternative A: [Name]

[Description of alternative approach]

**Trade-offs:** [What you gain vs. what you lose]
**Best when:** [Conditions that favor this alternative]

## Scaling Notes

**Minimal resources:** [Scaled-down version]
**Expanded resources:** [What's possible with more resources]

## Grounding in Brainstorming

[3-5 specific insights from the Symphony session that inform the recommendations. Reference topics by name or cite specific observations.]
```

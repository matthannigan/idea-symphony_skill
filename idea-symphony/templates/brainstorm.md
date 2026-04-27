# BRAINSTORM.md Template

Final user-facing output document for a session. Generated in Phase 5 by consolidating per-topic summaries (and, at `medium`/`high` effort, full syntheses).

**Effort-conditional links:** at `min`/`low`, per-topic links point to `_summary.md` files and the Session Index lists only `SUMMARIES.md`. At `medium`/`high`, per-topic links point to `_synthesis.md` files and the Session Index lists both `SUMMARIES.md` and `SYNTHESIS.md`. The template below uses `{{topic_artifact}}` to abstract the per-topic suffix; the orchestrator substitutes `_summary.md` or `_synthesis.md` based on effort.

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "[min|low|medium|high]"
stage: "Phase 5: Final Output"
model-reported: "[orchestrator self-identifies, e.g., claude-opus-4-7]"
---

# Brainstorming Session: [Project Name]

## Executive Summary
[3-5 paragraphs capturing the most important insights across all topic clusters]

## Session Overview
[Brief description of the brainstorming request and approach taken]

## Key Themes
[Major themes that emerged across all topic clusters and participants]

## Topic Summaries

### 1. [Topic Name]
[Summary of insights for this topic]
- See: [synthesis/{{cluster_slug}}{{topic_artifact}}](synthesis/{{cluster_slug}}{{topic_artifact}})

### 2. [Topic Name]
[Summary of insights for this topic]
- See: [synthesis/{{cluster_slug}}{{topic_artifact}}](synthesis/{{cluster_slug}}{{topic_artifact}})

## Recommended Next Steps
[Top 10-15 action items synthesized from all topic clusters]

## Session Index

### Questions
- [QUESTIONS.md](QUESTIONS.md) — All questions consolidated
- [questions/by-persona/](questions/by-persona/) — Questions by generating persona
- [questions/by-topic/](questions/by-topic/) — Questions organized by topic cluster

### Responses
- [responses/](responses/) — All brainstorming responses organized by topic cluster

### Synthesis
- [SUMMARIES.md](SUMMARIES.md) — Concatenated per-topic summaries
- [SYNTHESIS.md](SYNTHESIS.md) — Concatenated per-topic full syntheses *(omit at `min`/`low`)*
- [synthesis/](synthesis/) — Individual per-topic files: `_summary.md` (always); `_synthesis.md` and `attributed/` *(`medium`/`high` only)*

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log
```

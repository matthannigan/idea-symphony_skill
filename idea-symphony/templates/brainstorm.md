# BRAINSTORM.md Template

Final user-facing output document for a session. Produced in Phase 5 by consolidating `SUMMARIES.md` across all topic clusters.

## Canonical structure

Per-topic links always point to `synthesis/{{cluster_slug}}_summary.md` (the `_summary.md` file exists at every effort level). The Session Index includes the `SYNTHESIS.md` line only at `medium`/`high` effort; at `min`/`low` that line is omitted because the file does not exist.

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "[min|low|medium|high]"
stage: "Phase 5: Final Output"
model-requested: "opus"
model-reported: "[model the subagent self-identifies as, e.g., claude-opus-4-7]"
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
- See: [synthesis/{{cluster_slug}}_summary.md](synthesis/{{cluster_slug}}_summary.md)

### 2. [Topic Name]
[Summary of insights for this topic]
- See: [synthesis/{{cluster_slug}}_summary.md](synthesis/{{cluster_slug}}_summary.md)

## Recommended Next Steps
[Top 10-15 action items synthesized from all topic clusters]

## Session Index

### Questions
- [QUESTIONS.md](QUESTIONS.md) — All questions consolidated
- [questions/by-persona/](questions/by-persona/) — Questions by generating persona
- [questions/by-topic/](questions/by-topic/) — Questions organized by topic cluster

### Responses
- [responses/](responses/) — All brainstorming responses organized by topic cluster

### Summaries & Synthesis
- [SUMMARIES.md](SUMMARIES.md) — Concatenated per-topic summaries
- [SYNTHESIS.md](SYNTHESIS.md) — Concatenated per-topic full syntheses *(omit at `min`/`low`)*
- [synthesis/](synthesis/) — Individual per-topic files: `_summary.md` (always); `_synthesis.md` and `attributed/` *(`medium`/`high` only)*

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log
```

## Authoritative source

The Phase 5 prompt is authoritative for the exact BRAINSTORM.md shape — consult the prompt when in doubt:

- [phase5_final-output.md](../prompts/phase5_final-output.md)

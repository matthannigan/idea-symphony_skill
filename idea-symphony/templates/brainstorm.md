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

## Central Tensions
[If clusters share a meta-tension, state it as a single sentence with the contributing clusters cited. Otherwise, list the 2–4 most load-bearing per-cluster Central Tensions verbatim or near-verbatim from each cluster's `_summary.md`.]

## Key Themes
[Major themes that emerged across all topic clusters and participants]

## Conspicuous Absences (session-level)
[Aggregate the per-cluster Conspicuous Absences (`min` clusters) and Neither-lens gaps (`low` clusters). If a structural absence recurs across clusters, name it here. Otherwise list 2–4 most load-bearing cluster-specific absences. This section is the counterweight to the confidence-positive Executive Summary; do not write it as a recap.]

## Topic Summaries

### 1. [Topic Name]
[Summary of insights for this topic. When the cluster's `_summary.md` carries a categorical reframe — a single declarative sentence reframing the cluster's question — surface it verbatim or near-verbatim as the **first** sentence of this block.]
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

**Persona-name, character-name, and process-jargon prohibition.** `BRAINSTORM.md` must not contain persona names ("The Devil's Advocate"), bullet-summary labels of the form "Visionary alternatives", possessive enumerations ("The Storyteller's Marcus"), character names from persona narratives (Marcus, Maria, Margaret, Elena, Sarah, David, James, Aisha, etc.), or process jargon ("orchestrator", "subagent", "phase"). See [phase5_final-output.md](../prompts/phase5_final-output.md) for the complete rule.

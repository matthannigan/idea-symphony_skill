# Document Templates

Templates for the intermediate documents created during an Idea Symphony brainstorming session.

## REQUEST.md

```markdown
# Brainstorming Request: [Project Name]

## User Request
[Original user prompt/request]

## Supporting Documents
[reference all user-submitted files stored in `context/` or note that none submitted]
- [filename1.md] — [brief description]
- [filename2.pdf] — [brief description]

## Scope & Constraints
[Any constraints, goals, or focus areas specified by the user]

## Session Created
[YYYY-MM-DD]
```

## PLAN.md

```markdown
# Brainstorming Session Plan

**Project:** [Project Name]
**Date:** [YYYY-MM-DD]
**Effort Level:** [low/medium/high]
**Session Directory:** [path]

## Configuration

### Phase 2: Question Generation ([N] personas)
- **The Questioner** — Core question generator, always included
- **[Persona Name]** — [Brief rationale for selection]

### Phase 3: Brainstorming ([N] personas per topic)
To be determined based on topic clusters identified in Phase 2.

### Phase 4: Response Synthesis
1 subagent per topic cluster.

### Phase 5: Final Output
Orchestrator consolidates all outputs.

## Topic Clusters (from Phase 2)

1. [Topic Name ([N] questions)](questions/by-topic/01_topic-name.md)
2. [Topic Name ([N] questions)](questions/by-topic/02_topic-name.md)

## Status

- **Phase 1 (Context Gathering):** ✅ Complete
  - [note user uploads copied or "no user files submitted"]

- **Phase 2 (Question Generation):** ✅ Complete
  - [N] consolidated questions across [N] topic clusters.

- **Phase 3 (Multi-Persona Brainstorming):** In progress
  - Topic 1 ([Topic Name]): ✅ Complete
  - Topic 2 ([Topic Name]): In progress
  - Topic 3 ([Topic Name]): Not started

- **Phase 4 (Response Synthesis):** Not started
  - Topic 1 ([Topic Name]): Not started
  - Topic 2 ([Topic Name]): Not started

- **Phase 5 (Final Output):** Not started

## Notes & Issues

[Any issues, user feedback, subagent failures, or decisions made during the session]
```

## BRAINSTORM.md (Final Output)

```markdown
# Brainstorming Session: [Project Name]

**Date:** [YYYY-MM-DD]
**Effort Level:** [low/medium/high]

## Executive Summary
[3-5 paragraphs capturing the most important insights across all topic clusters]

## Session Overview
[Brief description of the brainstorming request and approach taken]

## Key Themes
[Major themes that emerged across all topic clusters and participants]

## Topic Summaries

### 1. [Topic Name]
[Summary of insights for this topic]
- See: [synthesis/01_[topic]_synthesis.md](synthesis/01_[topic]_synthesis.md)

### 2. [Topic Name]
[Summary of insights for this topic]
- See: [synthesis/02_[topic]_synthesis.md](synthesis/02_[topic]_synthesis.md)

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
- [SYNTHESIS.md](SYNTHESIS.md) — Complete synthesis document
- [synthesis/](synthesis/) — Individual topic syntheses (with-attribution, merged, summary)

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log
```

## Synthesis Files

File naming: `[NN]_[topic]_[type].md` where NN is the two-digit topic number.

Attributed files go in `synthesis/attributed/`.

### attributed/[NN]_[topic].md

```markdown
# Brainstorming Synthesis: [Topic Cluster] - With Attribution

## Synthesized Insights by Question

### [Short Question 1 Summary]

[Longer question 1 description]

* **Short synthesized response summary.** Detailed synthesized response text with specifics, examples, or reasoning.
  * **Original short response summary.** Original detailed response text. *[Persona Name]*
  * **Original short response summary.** Original detailed response text. *[Persona Name]*

### [Short Question 2 Summary]
...
```

### [NN]_[topic]_synthesis.md

Same structure as attributed version, but without the sub-bullets containing original responses and attribution.

### [NN]_[topic]_summary.md

```markdown
# Brainstorming Session: [Topic Cluster] - Summary

## Executive Summary
[3-5 paragraphs capturing the most important insights and responses]

## Key Themes
[Bulleted list of major themes that emerged across participants across all questions]

## Recommended Next Steps
[Top 10 action items based on the strongest ideas across all questions]
```

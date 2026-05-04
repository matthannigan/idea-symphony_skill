# PLAN.md Template

Session configuration, Phase 2 roster plan, and per-phase status log. Updated throughout the session as each phase/step completes.

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "[min|low|medium|high]"
stage: "Phase 1: Context Gathering"
persona-selection-review: "[auto|pause]"
model-reported: "[orchestrator self-identifies, e.g., claude-opus-4-7]"
---

# Brainstorming Session Plan

**Effort:** `[min|low|medium|high]` *(sourced from user's Phase 1 selection; REQUEST.md captures user input only)*
**Persona Selection Review:** [auto|pause] *(default: auto; `medium`/`high` only)*

## Phase 2 Step 2.1: Question Generation Personas

*(For `min` effort: skip this section — the min workflow uses a single generic question generator. See [prompts/min-effort-workflow.md](../prompts/min-effort-workflow.md).)*

**Effort:** `[low|medium|high]`
**Connector/Analogist:** [Analogist (default) | Connector (swap)]

Full rationale: see [personas/question-generation.md](personas/question-generation.md).

### Tier 1 Personas

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Questioner | Analytical | [range] | Synthesize |
| Analyst | Analytical | [range] | Synthesize |
| Devil's Advocate | Structural | [range] | Synthesize |
| Appreciative Inquirer | Structural | [range] | Synthesize |
| Audience Advocate | Structural | [range] | Synthesize |
| Systems Thinker | Structural | [range] | Synthesize |
| Provocateur | Perspective | 5-8 | Append |
| [Analogist or Connector] | Perspective | 5-8 | Append |
| Visionary | Perspective | 5-8 | Append |
| Storyteller | Perspective | 5-8 | Append |

### Tier 2 Personas

*(`high` only — at `low`/`medium`, replace the table with `N/A — [low|medium] effort`.)*

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Constraint Flipper | Perspective | 5-8 | Append (3-5 round-robin) |
| Empath | Structural | 8-12 | Synthesize |
| First Principles Thinker | Structural | 7-10 | Synthesize |
| Futurist | Structural | 8-12 | Synthesize |

### Tier 3 Personas

*(If none selected, replace the table with: `None selected — no strong triggers for this topic` (low/medium) or `None selected — no triggers at or above moderate threshold for this topic` (high).)*

| Persona | Category | Volume | Stream |
|---|---|---|---|
| [Persona] | [Specialist (...)] | [range] | [Synthesize \| Append] |

## Phase 2 Step 2.4: Brainstorming Personas

*(`medium`/`high` only.)*

Full rationale: see [personas/brainstorming.md](personas/brainstorming.md).

| Topic | Personas |
|---|---|
| 01 [Topic Name] | DA★, Pragmatist★, [Persona], [Persona] |
| 02 [Topic Name] | DA★, Pragmatist★, [Persona], [Persona] |

## Topic Clusters (from Phase 2)

1. [Topic Name ([N] questions)](questions/by-topic/01_topic-name.md)
2. [Topic Name ([N] questions)](questions/by-topic/02_topic-name.md)

## Status

- **Phase 1 (Context Gathering):** ✅ Complete
  - [user uploads note or "no user files submitted"]
  - User-defined questions: [Yes (N questions) | No]
  - Effort: `[min|low|medium|high]`

- **Phase 2 (Question Generation):** [Not started | In progress | ✅ Complete]
  - Step 2.1 Roster Planning: [status]
  - Step 2.2 Question Generation: [status]
  - Step 2.3 Question Synthesis: [status] — [N] questions across [N] clusters
  - Step 2.4 Persona Selection (`medium`/`high`): [status] — see personas/brainstorming.md

- **Phase 3 (Multi-Perspective Brainstorming):** [status]
  - Topic 1 ([Topic Name]): [status]
  - Topic 2 ([Topic Name]): [status]

- **Phase 4 (Response Synthesis):** [status]
  - Topic 1 ([Topic Name]): [status]
  - Topic 2 ([Topic Name]): [status]

- **Phase 5 (Final Output):** [status]

## Notes & Issues

[Any issues, user feedback, subagent failures, or decisions made during the session]
```

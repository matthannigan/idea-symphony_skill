# PLAN.md Template

Session configuration, Phase 2 roster plan, and per-phase status log. Updated throughout the session as each phase/step completes.

```markdown
# Brainstorming Session Plan

**Project:** [Project Name]
**Date:** [YYYY-MM-DD]
**Effort:** `[min|low|medium|high]`
**Persona Selection Review:** [auto|pause] *(default: auto; `medium`/`high` only)*
**Session Directory:** [path]

## Phase 2 Roster Plan

*(For `min` effort: skip this section — the min workflow uses a single generic question generator. See [references/prompts/min-workflow.md](../prompts/min-workflow.md).)*

### Tier 1 Personas (always included at `low`/`medium`/`high`)

| Persona | Category | Volume | Step 2.3 Method |
|---|---|---|---|
| The Questioner | Analytical | [range] | Synthesize |
| The Analyst | Analytical | [range] | Synthesize |
| The Devil's Advocate | Structural | [range] | Synthesize |
| The Audience Advocate | Structural | [range] | Synthesize |
| The Systems Thinker | Structural | [range] | Synthesize |
| The Appreciative Inquirer | Structural | [range] | Synthesize |
| The Provocateur | Perspective | 5-8 | Append |
| [The Analogist or The Connector] | Perspective | 5-8 | Append |
| The Visionary | Perspective | 5-8 | Append |
| The Storyteller | Perspective | 5-8 | Append |

### Tier 2 Personas (`high` only — omit section at `low`/`medium`)

| Persona | Category | Volume | Step 2.3 Method |
|---|---|---|---|
| The Constraint Flipper | Perspective | 5-8 | Append (3-5 round-robin) |
| The Empath | Structural | 8-12 | Synthesize |
| The First Principles Thinker | Structural | 7-10 | Synthesize |
| The Futurist | Structural | 8-12 | Synthesize |

### Tier 3 Personas (orchestrator-selected)

*(Or: "None selected — no strong triggers present for this topic.")*

| Persona | Volume | Step 2.3 Method | Rationale |
|---|---|---|---|
| [Persona] | [range] | [Synthesize \| Append] | [Why selected — specific trigger in topic] |

Selection threshold:
- `low`/`medium`: 0-1 Tier 3 persona (strong trigger only)
- `high`: 0-2 Tier 3 personas (moderate+ trigger)

### Connector/Analogist Decision

**Default:** The Analogist (Tier 1 Perspective).
**This session:** [The Analogist | The Connector (swap)]
**Rationale:** [If Connector: what inter-domain reconciliation the topic requires. If Analogist: single-domain reframing suffices.]

## Phase 2.4 Persona Selection (`medium`/`high` only)

See [persona-selections.md](persona-selections.md) for full rationale. Summary:

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
  - Step 2.4 Persona Selection (`medium`/`high`): [status] — see persona-selections.md

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

# REQUEST.md Template

Session-level file summarizing the user's brainstorming request. Lives at the root of the session directory. **Captures user input only** — immutable after Phase 1. Orchestrator state (effort routing, roster plan, phase status) lives in PLAN.md.

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
stage: "Phase 1: Context Gathering"
model-reported: "[orchestrator self-identifies, e.g., claude-opus-4-7]"
---

# Request: [Project Name]

## Topic
[The core topic / what the user wants to brainstorm about, in the user's own framing]

## Context
[Bulleted situational facts — who, where, what, constraints]
- **[Key]:** [Value]

## Goals
[What the user wants out of this brainstorming session]

## Key Considerations
[Factors or tensions the user has already identified as worth addressing]
- [Consideration]

## Supporting Documents
[Reference user-submitted files stored in `context/`, or note that none were submitted]
- [filename.md] — [brief description]

## User-Provided Questions
[Reference `USER-QUESTIONS.md` if present, or note that none were provided]
```

## Notes

- **Effort Level is not stored here.** Although the user selects it, effort belongs in `PLAN.md` because it drives orchestrator routing. `PLAN.md` sources it from the Phase 1 conversation.
- **`Supporting Documents` and `User-Provided Questions` sections are omitted** if the user submitted neither files nor questions — don't leave empty stub sections.
- **Date semantics:** The `datetime` frontmatter field records when the request was filed. `PLAN.md` stamps its own `datetime` separately, which may differ if the session starts later.

# SCOPE.md Template

Scope definition file produced in Phase 1. Captures what the action plan will cover vs. what remains background context, along with highlights from the source Symphony session. Lives at the root of the session directory.

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session_path}}"
datetime: {{current_datetime}}
stage: "Phase 1: Intake & Scope Definition"
symphony-session: "[path to Symphony session directory]"
model-reported: "[orchestrator self-identifies, e.g., claude-sonnet-4-6]"
---

# Scope: [Project Name]

## Original Intent

[What was the user trying to accomplish? Summarize the Symphony session's purpose.]

## Symphony Source Files

- **REQUEST.md:** `[full path]`
- **PLAN.md:** `[full path]`
- **QUESTIONS.md:** `[full path]`
- **BRAINSTORM.md:** `[full path]`

## Content vs. Context

### Content (to be developed into action plan)
[Which Symphony topic areas and insights should be actively developed]

- [Topic area 1] — [why it's content]
- [Topic area 2] — [why it's content]

### Context (background reference only)
[Which inputs provide useful background but won't be directly planned]

- [Item] — [why it's context]

## Brainstorming Highlights

### Top Insights
1. [Strongest insight from brainstorming]
2. [Second strongest]
3. [Third strongest]

### Key Tensions
[Where brainstorming personas disagreed or identified trade-offs]

- [Tension 1]
- [Tension 2]

### Strongest Recommendations
[Ideas with high convergence across personas]

- [Recommendation 1]
- [Recommendation 2]

## Output Format

- **Format:** [Recommendations / Revised Document / Both]
- **Source document:** [path to document being revised, or "N/A — new topic"]
- **Notes:** [Any user preferences about tone, audience, structure]

## Scope Confirmation

[Summary of what the action plan will cover, as confirmed by user]
```

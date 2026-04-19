# FACTORY-SESSION.md Template

Session report produced in Phase 4 alongside ACTION-PLAN.md. Documents persona composition, a narrative session summary, and a complete file index linking all outputs and source Symphony material. Lives at the root of the session directory.

```markdown
---
date: [YYYY-MM-DD]
project: [Project Name]
effort_level: [low/medium/high]
symphony_session: [path]
session_complete: [true/false]
---

# Factory Session: [Project Name]

**Date:** [YYYY-MM-DD]
**Symphony Source:** `[path]`
**Effort Level:** [low/medium/high]

## Persona Composition

| Persona Title | Role Description | Assigned Sections | Model |
|--------------|------------------|-------------------|-------|
| [Persona Title] | [Brief role description] | [Sections] | Sonnet (drafting) |
| [Persona Title] | [Brief role description] | [Sections] | Sonnet (drafting) |

Note: Section synthesis performed by Opus model.

## Session Summary

[2-3 paragraphs describing what happened: scope decisions, outline structure, how personas approached sections, synthesis highlights, integration approach]

## File Index

### Session Files
- [FACTORY-PLAN.md](FACTORY-PLAN.md) — Session configuration and status
- [SCOPE.md](SCOPE.md) — Scope definition (what to plan vs. what's context)
- [OUTLINE.md](OUTLINE.md) — Structural outline with sections

### Personas
- [personas/[slug].md](personas/[slug].md) — [Persona Title]
- [Continue for all personas...]

### Per-Persona Drafts
- [drafts/01_[slug]/[persona].md](drafts/01_[slug]/[persona].md) — [Section Title] perspectives
- [Continue for all sections...]

### Section Outputs (Synthesized)
- [sections/01_[slug].md](sections/01_[slug].md) — [Section Title]
- [Continue for all sections...]

### Deliverable
- [ACTION-PLAN.md](ACTION-PLAN.md) — The integrated action plan

### Source Material (Idea Symphony)
- `[symphony-path]/REQUEST.md` — Original brainstorming request
- `[symphony-path]/BRAINSTORM.md` — Brainstorming session report
- `[symphony-path]/QUESTIONS.md` — Brainstorming questions
- `[symphony-path]/PLAN.md` — Symphony session configuration
```

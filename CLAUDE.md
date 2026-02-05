# CLAUDE.md

## Project Overview

This repo contains **Idea Symphony**, a Claude skill for multi-perspective brainstorming. The skill orchestrates multiple subagents—each with isolated context windows and distinct personas—to generate diverse perspectives on any topic.

## Repository Structure

- `idea-symphony/` — The Claude skill (SKILL.md + references)
- `docs/` — Design documents (briefing, context window audit)
- `test-runs/` — Test session outputs

## Key Documents

- `docs/briefing.md` — Comprehensive skill specification
- `docs/context-window-audit.md` — Analysis of orchestrator context usage

## Critical Architecture Decisions

1. **Subagents with isolated context windows** — Each brainstorming participant runs as a separate subagent task, NOT as persona-switching within a single conversation. This isolation is essential for genuine perspective diversity.

2. **Subagents read their own files** — The orchestrator provides file paths, not file contents. Subagents use Read/Glob tools to access inputs. This keeps orchestrator context minimal (~20k tokens vs 60-120k+).

3. **Complete intermediate outputs** — Every phase saves outputs to disk. This creates a paper trail for debugging, traceability, and session resumption.

4. **Thoroughness over speed** — Quality and diversity matter more than fast completion.

## Skill Structure

```
idea-symphony/
├── SKILL.md                    # Main skill file (keep under 500 lines)
└── references/
    ├── personas.md             # Index and selection guidance
    ├── personas/               # Individual persona prompts
    │   ├── the-visionary.md
    │   ├── the-pragmatist.md
    │   └── ...                 # 15 total, prefixed with "the-"
    ├── prompts/                # Phase prompts (extracted from SKILL.md)
    │   ├── phase2-question-generation-generic.md
    │   ├── phase2-question-generation-persona.md
    │   ├── phase2-question-synthesis.md
    │   ├── phase3-brainstorm-generic.md
    │   ├── phase3-brainstorm-persona.md
    │   ├── phase4-synthesis-low.md
    │   └── phase4-synthesis.md
    └── templates.md            # Document templates
```

When editing the skill:
- SKILL.md contains workflow orchestration and phase routing logic
- Phase prompts live in `references/prompts/phase*.md`
- Individual persona prompts live in `references/personas/the-[persona-name].md`
- Document templates live in `references/templates.md`

## Packaging

**Important:** The `.skill` file must contain SKILL.md at the root, not inside a folder.

To package correctly, zip the **contents** of the skill folder:

```bash
cd idea-symphony
zip -r ../idea-symphony.skill .
```

**Do not** use `zip -r idea-symphony.skill idea-symphony/` — this creates nested folders that break installation.

Correct structure inside the `.skill` file:
```
SKILL.md
references/
  personas.md
  templates.md
  personas/
    the-visionary.md
    ...
  prompts/
    phase2-question-generation-generic.md
    phase2-question-generation-persona.md
    phase2-question-synthesis.md
    phase3-brainstorm-generic.md
    phase3-brainstorm-persona.md
    phase4-synthesis-low.md
    phase4-synthesis.md
```

## Terminology

- **Topic cluster** — A thematic grouping of brainstorming questions
- **Effort level** — User-selected setting that determines session structure; defaults to medium
  - **Low**: Rapid generic brainstorming without persona system (5-10 min)
  - **Medium**: 2 question personas, 3 brainstorming personas per topic (~15-20 min)
  - **High**: 3 question personas, 5 brainstorming personas per topic (~30 min)

## Testing

Test sessions are saved in `test-runs/`. Use concrete brainstorming topics like:
- "Community garden on a vacant lot"
- "Community tool library for a neighborhood nonprofit"

## Working Style

- Ask clarifying questions before making significant structural decisions
- When editing SKILL.md, show me the changes before saving
- Prioritize keeping SKILL.md lean; suggest moving content to references/ when approaching 400 lines

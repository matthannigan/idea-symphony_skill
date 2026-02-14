# CLAUDE.md

## Project Overview

This repo contains three Claude skills:

- **Idea Symphony** — Multi-perspective brainstorming using subagents with isolated context windows
- **Idea Forge** — Action planning using Agent Teams for real-time debate (requires experimental flag)
- **Idea Factory** — Action planning using subagent orchestration (same capability as Forge, no experimental dependencies)

## Repository Structure

- `idea-symphony/` — Brainstorming skill (subagents, isolated context)
- `idea-forge/` — Action planning skill (Agent Teams, debate-based)
- `idea-factory/` — Action planning skill (subagents, no Agent Teams dependency)
- `docs/` — Design documents (briefing, context window audit)
- `test-runs/` — Test session outputs
- `*.skill` files at repo root — Packaged skill outputs

## Key Documents

- `docs/briefing.md` — Comprehensive skill specification (Symphony)
- `docs/context-window-audit.md` — Analysis of orchestrator context usage
- `docs/RESEARCH_SYMPHONY.md` — Research methodology for Symphony test runs
- `docs/RESEARCH_FACTORY.md` — Research methodology for Factory test runs
- `docs/dev/` — Development notes and analysis

## Critical Architecture Decisions

### Idea Symphony & Idea Factory (Subagent Pattern)

1. **Subagents with isolated context windows** — Each participant runs as a separate subagent task, NOT as persona-switching within a single conversation. This isolation is essential for genuine perspective diversity.

2. **Subagents read their own files** — The orchestrator provides file paths, not file contents. Subagents use Read/Glob tools to access inputs. This keeps orchestrator context minimal (~20k tokens vs 60-120k+).

3. **Complete intermediate outputs** — Every phase saves outputs to disk. This creates a paper trail for debugging, traceability, and session resumption.

4. **Thoroughness over speed** — Quality and diversity matter more than fast completion.

### Idea Factory Specific

**Two-step section development (medium/high effort):**
- **Phase 3A:** Independent drafts — each persona writes section recommendations in isolation
- **Phase 3B:** Section synthesis — reconcile persona perspectives into final sections

This creates "debate" through independent development + synthesis reconciliation rather than real-time Agent Teams interaction.

**Simplified low effort:** 1 auto-generated persona, direct section drafts to `sections/` (no `drafts/` directory, no synthesis step). Mirrors Symphony's philosophy where low effort skips multi-perspective overhead.

### Idea Forge Specific

Uses Agent Teams (experimental) for real-time debate. Teammates can message each other, challenge ideas, and collaboratively refine sections. Requires `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`.

## Skill Structures

### Idea Symphony
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

### Idea Factory
```
idea-factory/
├── SKILL.md                    # Main skill file
└── references/
    ├── prompts/                # Phase prompts
    │   ├── phase1-intake.md
    │   ├── phase2-outline.md
    │   ├── phase3-persona-gen.md
    │   ├── phase3-section-draft.md
    │   ├── phase3-section-synthesis.md
    │   └── phase4-integration.md
    └── templates.md            # Document templates
```

When editing skills:
- SKILL.md contains workflow orchestration and phase routing logic
- Phase prompts live in `references/prompts/phase*.md`
- Symphony persona prompts live in `references/personas/the-[persona-name].md`
- Factory personas are auto-generated per session (no fixed library)
- Document templates live in `references/templates.md`

## Packaging

**Important:** The `.skill` file must contain SKILL.md at the root, not inside a folder.

To package correctly, zip the **contents** of the skill folder:

```bash
cd idea-symphony && zip -r ../idea-symphony.skill .
cd ../idea-factory && zip -r ../idea-factory.skill .
cd ../idea-forge && zip -r ../idea-forge.skill .
```

**Do not** use `zip -r idea-symphony.skill idea-symphony/` — this creates nested folders that break installation.

## Terminology

- **Topic cluster** — A thematic grouping of brainstorming questions (Symphony)
- **Effort level** — User-selected setting that determines session structure; defaults to medium
  - Symphony: Low (generic, no personas) / Medium (3 personas) / High (5 personas)
  - Factory: Low (1 persona, direct drafts) / Medium (3 personas/section, drafts+synthesis) / High (4-5 personas/section)

## Testing

Test sessions are saved in `test-runs/`. Use concrete brainstorming topics like:
- "Community garden on a vacant lot"
- "Community tool library for a neighborhood nonprofit"

## Working Style

- Ask clarifying questions before making significant structural decisions
- When editing SKILL.md, show me the changes before saving
- Prioritize keeping SKILL.md lean; suggest moving content to references/ when approaching 400 lines

# Idea Symphony & Idea Factory

Claude skills for multi-perspective brainstorming and action planning using subagents with isolated context windows.

## Overview

This repo contains three Claude skills that work together:

- **Idea Symphony** — Multi-perspective brainstorming. Spawns dedicated subagent tasks—each embodying a distinct thinking archetype—to generate genuinely diverse perspectives unconstrained by shared context. Produces a comprehensive brainstorming report with topic clusters, synthesis, and recommended next steps.

- **Idea Factory** — Action planning that builds on Symphony output. Reads a completed Symphony session, creates a structural outline, generates project-specific personas, develops each section from multiple perspectives via parallel subagents, and synthesizes everything into a cohesive action plan.

- **Idea Forge** — Same capability as Factory but uses Agent Teams (experimental) for real-time debate instead of subagent orchestration. Requires `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`.

**Typical workflow:** Run Symphony first to brainstorm, then Factory to turn insights into an action plan.

## Features

### Idea Symphony
- **15 distinct brainstorming personas** (Visionary, Pragmatist, Devil's Advocate, Analyst, etc.)
- **Isolated context windows** for genuine perspective independence
- **Complete paper trail** of all intermediate outputs
- **Configurable effort levels**:
  - **Low**: Rapid generic brainstorming (~5-10 min) without persona system
  - **Medium**: 2 question personas, 3 brainstorming personas per topic (~15-20 min)
  - **High**: 3 question personas, 5 brainstorming personas per topic (~30 min)

### Idea Factory
- **Auto-generated project-specific personas** (no fixed library — adapts to domain)
- **Two-step section development** (medium/high): independent persona drafts + synthesis reconciliation
- **Simplified low effort**: single broad domain expert, direct section drafts, no synthesis step
- **Configurable effort levels**:
  - **Low**: 1 persona, direct section drafts
  - **Medium**: 3 personas per section, drafts + synthesis
  - **High**: 4-5 personas per section, comprehensive drafts + synthesis

### Shared
- **Session resume capability** for interrupted sessions
- **Context-efficient architecture** — subagents read their own files, keeping orchestrator lean

## Repository Structure

```
idea-symphony_skill/
├── idea-symphony/          # Brainstorming skill
│   ├── SKILL.md
│   └── references/
│       ├── personas.md     # Persona index and selection guidance
│       ├── personas/       # Individual persona prompts (15 total)
│       ├── prompts/        # Phase prompts
│       └── templates.md    # Document templates
├── idea-factory/           # Action planning skill (subagent pattern)
│   ├── SKILL.md
│   └── references/
│       ├── prompts/        # Phase prompts (intake, outline, persona-gen, drafts, synthesis, integration)
│       └── templates.md    # Document templates
├── idea-forge/             # Action planning skill (Agent Teams pattern)
│   ├── SKILL.md
│   └── references/
│       ├── prompts/
│       └── templates.md
├── docs/                   # Design documents and research
│   ├── briefing.md         # Comprehensive skill specification
│   ├── context-window-audit.md
│   └── dev/                # Development notes and analysis
├── test-runs/              # Test session outputs
└── CLAUDE.md               # Project context for Claude Code
```

## Installation

```bash
# Install individual skills
claude skill install path/to/idea-symphony.skill
claude skill install path/to/idea-factory.skill
```

## Packaging

To create a distributable `.skill` file, zip the **contents** of the skill folder (not the folder itself):

```bash
cd idea-symphony
zip -r ../idea-symphony.skill .

cd ../idea-factory
zip -r ../idea-factory.skill .
```

## Usage

### Brainstorming (Symphony)

Trigger with prompts like:
- "Help me brainstorm a community garden for my neighborhood"
- "I want multiple perspectives on launching a mobile app"
- "Let's do a structured brainstorming session on improving team communication"

### Action Planning (Factory)

After a Symphony session completes, trigger with:
- "Turn this brainstorm into an action plan"
- "Make this actionable"
- "Create an implementation plan from the Symphony session"

Factory reads the Symphony output directly — no need to copy or summarize.

## Session Output Structure

### Symphony Output
```
[project-name_YYYY-MM-DD]/
├── questions/
│   ├── by-persona/         # Raw questions from each persona (medium/high only)
│   ├── by-topic/           # Consolidated questions by topic cluster
│   └── QUESTIONS.md        # All questions in one document
├── responses/
│   └── [NN]_[topic]/       # Responses organized by topic
├── synthesis/
│   ├── attributed/         # Medium/high only: Full synthesis with persona attribution
│   ├── *_summary.md        # Executive summaries per topic
│   └── *_synthesis.md      # Medium/high only: Merged insights per topic
├── REQUEST.md              # Original request summary
├── PLAN.md                 # Session configuration and status
└── BRAINSTORM.md           # Final output and session index
```

### Factory Output
```
[project-name]_factory_[YYYY-MM-DD]/
├── FACTORY-PLAN.md         # Session config & status
├── SCOPE.md                # What to plan vs. what's context
├── OUTLINE.md              # Structural outline
├── personas/               # Auto-generated persona definitions
├── drafts/                 # Per-persona section drafts (medium/high only)
├── sections/               # Synthesized section files (or direct drafts for low effort)
├── ACTION-PLAN.md          # The deliverable
└── FACTORY-SESSION.md      # Session report with file index
```

## License

MIT License

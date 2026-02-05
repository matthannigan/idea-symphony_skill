# Idea Symphony

A Claude skill for multi-perspective brainstorming using subagents with isolated context windows.

## Overview

Idea Symphony transforms Claude from a single-perspective assistant into a simulated multi-perspective brainstorming panel. The skill spawns dedicated subagent tasks—each embodying a distinct thinking archetype—to generate genuinely diverse perspectives unconstrained by shared context.

## Features

- **15 distinct brainstorming personas** (Visionary, Pragmatist, Devil's Advocate, Analyst, etc.)
- **Isolated context windows** for genuine perspective independence
- **Complete paper trail** of all intermediate outputs
- **Configurable effort levels**:
  - **Low**: Rapid generic brainstorming (5-10 min) without persona system
  - **Medium**: 2 question personas, 3 brainstorming personas per topic (~15-20 min)
  - **High**: 3 question personas, 5 brainstorming personas per topic (~30 min)
- **Session resume capability** for interrupted brainstorms
- **Context-efficient architecture** — subagents read their own files, keeping orchestrator lean

## Repository Structure

```
idea-symphony_skill/
├── idea-symphony/          # The Claude skill
│   ├── SKILL.md            # Main skill file
│   └── references/
│       ├── personas.md     # Persona index and selection guidance
│       ├── personas/       # Individual persona prompts (the-visionary.md, etc.)
│       ├── prompts/        # Phase prompts (extracted from SKILL.md)
│       └── templates.md    # Document templates
├── docs/                   # Design documents
│   ├── briefing.md         # Comprehensive skill specification
│   └── context-window-audit.md  # Context usage analysis
├── test-runs/              # Test session outputs
└── CLAUDE.md               # Project context for Claude Code
```

## Installation

```bash
claude skill install path/to/idea-symphony.skill
```

## Packaging

To create a distributable `.skill` file, zip the **contents** of the skill folder (not the folder itself):

```bash
cd idea-symphony
zip -r ../idea-symphony.skill .
```

## Usage

Trigger the skill with prompts like:
- "Help me brainstorm a community garden for my neighborhood"
- "I want multiple perspectives on launching a mobile app"
- "Let's do a structured brainstorming session on improving team communication"

The skill will:
1. Confirm project name and effort level
2. Generate probing questions via multiple persona subagents
3. Synthesize questions into topic clusters
4. Run parallel brainstorming sessions per topic
5. Synthesize responses and produce a final summary

All intermediate outputs are saved to disk for review and traceability.

## Session Output Structure

```
[project-name_YYYY-MM-DD]/
├── questions/
│   ├── by-persona/         # Raw questions from each persona (medium/high only)
│   ├── by-topic/           # Consolidated questions by topic cluster
│   └── QUESTIONS.md        # All questions in one document
├── responses/
│   └── [NN]_[topic]/       # Responses organized by topic
│       ├── generic-response.md      # Low effort: single generic file
│       └── the-[persona].md         # Medium/high: multiple persona files
├── synthesis/
│   ├── attributed/         # Medium/high only: Full synthesis with persona attribution
│   ├── *_summary.md        # Executive summaries per topic (all effort levels)
│   ├── *_synthesis.md      # Medium/high only: Merged insights per topic
│   └── SYNTHESIS.md        # Complete synthesis document
├── REQUEST.md              # Original request summary
├── PLAN.md                 # Session configuration and status
└── BRAINSTORM.md           # Final output and session index
```

**Note:** Low effort sessions skip the persona system for faster execution, resulting in simpler file structure (no by-persona/ files, single generic-response.md per topic, summary-only synthesis).

## License

MIT License

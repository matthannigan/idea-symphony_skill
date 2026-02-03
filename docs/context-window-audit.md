# Context Window Audit: Orchestrator

This document traces what the Orchestrator reads into its context window at each phase of an Idea Symphony session.

## Architecture: Subagents Read Their Own Files

Subagents (using `general-purpose` type) have full file access. The orchestrator provides **file paths**, not file contents. This keeps orchestrator context minimal—subagents do their own file I/O in their isolated contexts.

## Context Flow Diagram

```
┌────────────────────────────────────────────────────────────────────────────────┐
│                           ORCHESTRATOR CONTEXT WINDOW                          │
│                              (Minimal by Design)                               │
├────────────────────────────────────────────────────────────────────────────────┤
│                                                                                │
│  PHASE 1: Context Gathering                                                    │
│  ┌─────────────────────────────────────────────────────────────────────────┐   |
│  │ + User's request (from conversation)                                    │   │
│  │ + Supporting documents (from conversation)                              │   │
│  │ + references/personas.md (for persona selection only)                   │   │
│  │                                                                         │   │
│  │ WRITES: REQUEST.md, PLAN.md, context/* (if supporting docs)             │   │
│  └─────────────────────────────────────────────────────────────────────────┘   │
│                                      │                                         │
│                                      ▼                                         │
│  PHASE 2.1: Question Generation                                                │
│  ┌─────────────────────────────────────────────────────────────────────────┐   │
│  │ (no new reads - provides file paths only)                               │   │
│  │                                                                         │   │
│  │ SPAWNS: 2-4 subagents                                                   │   │
│  │         Subagents read: REQUEST.md, context/*, persona-name.md          │   │
│  │                                                                         │   │
│  │ SUBAGENTS WRITE: questions/by-persona/*.md                              │   │
│  └─────────────────────────────────────────────────────────────────────────┘   │
│                                      │                                         │
│                                      ▼                                         │
│  PHASE 2.2: Question Synthesis                                                 │
│  ┌─────────────────────────────────────────────────────────────────────────┐   │
│  │ (no new reads - provides file paths only)                               │   │
│  │                                                                         │   │
│  │ SPAWNS: 1 subagent                                                      │   │
│  │         Subagent reads: REQUEST.md, questions/by-persona/*              │   │
│  │                                                                         │   │
│  │ SUBAGENT WRITES: questions/QUESTIONS.md, questions/by-topic/*.md        │   │
│  │                                                                         │   │
│  │ + Orchestrator lists questions/by-topic/ to get topic names for PLAN.md │   │
│  └─────────────────────────────────────────────────────────────────────────┘   │
│                                      │                                         │
│                                      ▼                                         │
│  PHASE 3: Brainstorming                                                        │
│  ┌─────────────────────────────────────────────────────────────────────────┐   │
│  │ (no new reads - provides file paths only)                               │   │
│  │                                                                         │   │
│  │ SPAWNS: 3-7 subagents PER TOPIC (can run in parallel)                   │   │
│  │         Subagents read: REQUEST.md, persona-name.md, by-topic/[NN]_*.md │   │
│  │                                                                         │   │
│  │ SUBAGENTS WRITE: responses/[NN]_[topic]/*.md                            │   │
│  └─────────────────────────────────────────────────────────────────────────┘   │
│                                      │                                         │
│                                      ▼                                         │
│  PHASE 4: Response Synthesis                                                   │
│  ┌─────────────────────────────────────────────────────────────────────────┐   │
│  │ (no new reads - provides file paths only)                               │   │
│  │                                                                         │   │
│  │ SPAWNS: 1 subagent PER TOPIC (can run in parallel)                      │   │
│  │         Subagents read: REQUEST.md, by-topic/[NN]_*.md,                 │   │
│  │                         responses/[NN]_[topic]/* (heavy lifting here)   │   │
│  │                                                                         │   │
│  │ SUBAGENTS WRITE: synthesis/attributed/*, synthesis/*_summary.md,        │   │
│  │                  synthesis/*_synthesis.md                               │   │
│  └─────────────────────────────────────────────────────────────────────────┘   │
│                                      │                                         │
│                                      ▼                                         │
│  PHASE 5: Final Output                                                         │
│  ┌─────────────────────────────────────────────────────────────────────────┐   │
│  │ Step 5.1: bash cat (NO context load - file concatenation)               │   │
│  │                                                                         │   │
│  │ Step 5.2:                                                               │   │
│  │ + questions/QUESTIONS.md (consolidated question list)                   │   │
│  │ + synthesis/*_summary.md (N summary files, ~1-2 pages each)             │   │
│  │                                                                         │   │
│  │ WRITES: BRAINSTORM.md                                                   │   │
│  └─────────────────────────────────────────────────────────────────────────┘   │
│                                                                                │
│  SESSION RESUME (special case):                                                │
│  ┌─────────────────────────────────────────────────────────────────────────┐   │
│  │ + PLAN.md (to determine session state)                                  │   │
│  └─────────────────────────────────────────────────────────────────────────┘   │
│                                                                                │
└────────────────────────────────────────────────────────────────────────────────┘
```

## What the Orchestrator Reads vs. What Subagents Read

```
┌─────────────────────────────────────┐     ┌───────────────────────────────────────┐
│      ORCHESTRATOR READS             │     │       SUBAGENTS READ                  │
├─────────────────────────────────────┤     ├───────────────────────────────────────┤
│ • User input (conversation)         │     │ • REQUEST.md                          │
│ • references/personas.md (Phase 1   │     │ • context/* (supporting docs)         │
│   for selection guidance only)      │     │ • references/personas/persona-name.md |
│ • Directory listings (for paths)    │     │ • questions/by-persona/*              │
│ • questions/QUESTIONS.md (Phase 5)  │     │ • questions/by-topic/*                │
│ • synthesis/*_summary.md (Phase 5)  │     │ • responses/*/*                       │
│ • PLAN.md (resume only)             │     │                                       │
└─────────────────────────────────────┘     └───────────────────────────────────────┘
```

## Files the Orchestrator NEVER Reads

| File | Reason Never Read |
|------|-------------------|
| `REQUEST.md` | Written by orchestrator; subagents read it |
| `context/*` | Saved by orchestrator; subagents read them |
| `questions/by-persona/*` | Subagent output → subagent input (Phase 2.2) |
| `questions/by-topic/*` | Subagent output → subagent input (Phase 3, 4) |
| `responses/*/*` | Subagent output → subagent input (Phase 4) |
| `synthesis/attributed/*` | User reference only |
| `synthesis/*_synthesis.md` | Concatenated via bash |
| `SYNTHESIS.md` | Created via bash |
| `BRAINSTORM.md` | Written by orchestrator; never re-read |

## Context Load by Phase

| Phase | Orchestrator Context Load | Notes |
|-------|---------------------------|-------|
| 1 | Moderate | User input + personas.md (for selection) |
| 2.1 | Minimal | Only file paths passed to subagents |
| 2.2 | Minimal | Only file paths passed to subagent |
| 3 | Minimal | Only file paths passed to subagents |
| 4 | Minimal | Only file paths passed to subagents |
| 5.1 | Zero | Bash file concatenation |
| 5.2 | Moderate | QUESTIONS.md + summary files for final output |

## Design Benefits

1. **Orchestrator stays lean** — Only reads files for its own decision-making (persona selection, final summary)
2. **Subagents are self-sufficient** — Each subagent reads exactly what it needs
3. **Parallelization enabled** — Phase 3 and Phase 4 can spawn all subagents in parallel since orchestrator isn't accumulating content
4. **Scalability** — Adding more topics or personas doesn't bloat orchestrator context

## Files by Purpose

```
                    ┌─────────────────────────────────────────┐
                    │         ORCHESTRATOR READS              │
                    ├─────────────────────────────────────────┤
                    │ • references/personas.md (Phase 1)      │
                    │ • questions/QUESTIONS.md (Phase 5)      │
                    │ • synthesis/*_summary.md (Phase 5)      │
                    │ • PLAN.md (resume only)                 │
                    │ • Directory listings (for file paths)   │
                    └─────────────────────────────────────────┘

                    ┌─────────────────────────────────────────┐
                    │         SUBAGENTS READ                  │
                    │    (in their isolated contexts)         │
                    ├─────────────────────────────────────────┤
                    │ • REQUEST.md                            │
                    │ • context/*                             │
                    │ • references/personas/persona-name.md   │
                    │ • questions/by-persona/*                │
                    │ • questions/by-topic/*                  │
                    │ • responses/*/*                         │
                    └─────────────────────────────────────────┘

                    ┌─────────────────────────────────────────┐
                    │       ORCHESTRATOR NEVER READS          │
                    ├─────────────────────────────────────────┤
                    │ • REQUEST.md                            │
                    │ • context/*                             │
                    │ • questions/by-persona/*                │
                    │ • questions/by-topic/*                  │
                    │ • responses/*/*                         │
                    │ • synthesis/attributed/*                │
                    │ • synthesis/*_synthesis.md              │
                    │ • SYNTHESIS.md                          │
                    │ • BRAINSTORM.md                         │
                    └─────────────────────────────────────────┘

                    ┌─────────────────────────────────────────┐
                    │           USER REFERENCE                │
                    │    (complete paper trail for review)    │
                    ├─────────────────────────────────────────┤
                    │ • synthesis/attributed/*                │
                    │ • synthesis/*_synthesis.md              │
                    │ • SYNTHESIS.md                          │
                    │ • All intermediate files                │
                    └─────────────────────────────────────────┘
```

## Token Estimate (Medium Effort)

| Phase | Orchestrator Tokens | Notes |
|-------|---------------------|-------|
| 1 | ~10k | User input + personas.md |
| 2-4 | ~1k each | File paths and instructions only |
| 5 | ~8k | QUESTIONS.md + summaries |

**Total orchestrator context: ~20k tokens**

The heavy lifting (60-120k+ tokens of response content) now happens entirely within subagent contexts.

# Session Directory Structure

Full layout of a Symphony session directory, with notes on how the structure varies across effort levels.

```
[project-name_YYYY-MM-DD]/
├── context/                    # (optional) User-submitted files
├── questions/
│   ├── by-persona/             # low/medium/high: One file per question-generating persona
│   │   ├── the-questioner.md   # (10-19 files depending on effort and selections)
│   │   ├── the-analyst.md
│   │   └── ...
│   └── by-topic/               # Numbered files preserve topic order
│       ├── 01_operations.md
│       ├── 02_community-engagement.md
│       └── ...
├── responses/
│   └── [NN_topic]/             # Numbered directories match topic order
│       ├── the-devils-advocate.md  # low: 2 persona files
│       ├── the-pragmatist.md       # medium: 4 persona files
│       ├── the-visionary.md        # high: 7 persona files
│       └── ...
├── synthesis/
│   ├── attributed/             # medium/high only
│   │   ├── 01_operations_attributed.md
│   │   └── ...
│   ├── 01_operations_summary.md      # All effort levels
│   ├── 01_operations_synthesis.md    # medium/high only
│   └── ...
├── personas/
│   ├── question-generation.md  # Step 2.1: Tier 1/2/3 roster + selection rationale
│   └── brainstorming.md        # Step 2.4: Per-topic brainstorming persona assignments + rationale (medium/high)
├── REQUEST.md                  # User request summary
├── USER-QUESTIONS.md           # (optional) User-provided questions to answer
├── PLAN.md                     # Session config, persona summary tables, and status
├── QUESTIONS.md                # All questions consolidated (canonical order)
├── SYNTHESIS.md                # All summaries + syntheses (in topic order)
└── BRAINSTORM.md               # Final output and session index
```

## Topic ordering

Phase 2 establishes a logical topic order. Numeric prefixes (`01_`, `02_`, etc.) preserve this order through all subsequent phases.

## `min` effort differences

No `by-persona/` or `personas/` directory. Responses use `generic-response.md`. Synthesis contains only summary files. See [min effort workflow](prompts/min-effort-workflow.md).

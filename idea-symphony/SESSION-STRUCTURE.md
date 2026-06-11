# Session Directory Structure

Full layout of a Symphony session directory, with notes on how the structure varies across effort levels.

```
[project-name_YYYY-MM-DD]/
├── context/                    # (optional) User-submitted files
├── questions/
│   ├── by-persona/             # low/medium/high: One file per question-generating persona
│   │   ├── the-questioner.md   # (10-16 files depending on effort and selections)
│   │   ├── the-analyst.md
│   │   └── ...
│   └── by-topic/               # Numbered files preserve topic order
│       ├── 01_operations.md
│       ├── 02_community-engagement.md
│       ├── ...
│       └── 99_additional.md    # (if any) final catch-all cluster — see "Catch-all cluster" below
├── responses/
│   └── [NN_topic]/             # Numbered directories match topic order
│       ├── the-devils-advocate.md  # low: 2 persona files
│       ├── the-pragmatist.md       # medium: 4 persona files
│       ├── the-visionary.md        # high: 7 persona files
│       └── ...
├── synthesis/
│   ├── attributed/             # medium/high only — files named {{cluster_slug}}.md (no suffix)
│   │   ├── 01_operations.md
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
├── questions-meta.json         # Phase 2.3 audit sidecar (persona attribution + convergence metadata; never at min)
├── SUMMARIES.md                # All topic summaries concatenated (Phase 5's authoritative input; all effort levels)
├── SYNTHESIS.md                # All per-topic syntheses concatenated (in topic order; medium/high only)
├── NOTEBOOK-LM-INSTRUCTIONS.md # Only when the NotebookLM flag is set (never at min)
└── BRAINSTORM.md               # Final output and session index
```

## Topic ordering

Phase 2 establishes a logical topic order. Numeric prefixes (`01_`, `02_`, etc.) preserve this order through all subsequent phases.

## Catch-all cluster (`99_additional`)

When Phase 2.3 synthesis leaves Append-stream questions without a topical home, they collect under a final `## Additional Questions` section in `QUESTIONS.md`, which `split-questions.sh` emits as `questions/by-topic/99_additional.md` (number 99). This is a real cluster, not just overflow: it is brainstormed, synthesized, and folded into `BRAINSTORM.md` like any other — at every effort level — so its answers feed the downstream outputs. It appears as the final row of PLAN.md's `## Topic Clusters (from Phase 2)` section, and gets a fixed generalist persona panel rather than topic-matched personas (see [Catch-All Cluster](guidance/phase2D_brainstorming-personas.md)).

## `min` effort differences

No `by-persona/` or `personas/` directory, and no `questions-meta.json` — none of these exist at `min`. `NOTEBOOK-LM-INSTRUCTIONS.md` is also never produced at `min`. Responses use `generic-response.md`. Synthesis contains only summary files. See [min effort workflow](prompts/min-effort-workflow.md).

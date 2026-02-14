---
name: idea-forge
description: >
  Action plan generator that builds on Idea Symphony brainstorming output.
  Reads a completed Symphony session, creates a structural outline, spawns
  an Agent Team to debate and develop each section, and produces a cohesive
  action plan with alternatives and scaling options.

  Use when users want: to turn brainstorming into action, create plans from
  Symphony output, develop implementation strategies, debate approaches with
  multiple perspectives, or produce structured deliverables from ideation.

  Triggers: "forge", "action plan", "turn this into a plan", "make this actionable",
  "develop a plan from", "implementation plan", "what should I actually do",
  "next steps from brainstorming", "build on this brainstorm"
---

# Idea Forge

Transform Idea Symphony brainstorming output into a structured, debated action plan. Forge reads a completed Symphony session, organizes insights into an action-oriented outline, spawns an Agent Team to debate each section, and integrates everything into a cohesive deliverable.

## Core Architecture

**Agent Teams for debate:** Unlike Symphony's isolated subagents, Forge uses Agent Teams (experimental) for inter-agent debate. Teammates can communicate, challenge each other's ideas, and collaboratively refine sections. This requires `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`.

**Source files referenced, not copied.** SCOPE.md and FORGE-PLAN.md record the Symphony session path. Teammates read source files directly.

**Delegate mode for the lead.** The orchestrator (team lead) coordinates, spawns, monitors, and synthesizes. It does not write section content — that's the teammates' job.

**Auto-generated personas.** No fixed persona library. Personas are generated per session based on the project domain and outline sections.

## Prerequisites

- A completed Idea Symphony session (with BRAINSTORM.md)
- `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1` environment variable set

If Agent Teams are not enabled, inform the user:
```
Idea Forge requires Agent Teams (experimental). Enable with:

  export CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1

Or add to your settings.json:
  { "env": { "CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS": "1" } }
```

## Session Output Structure

```
[project-name]_forge_[YYYY-MM-DD]/
├── FORGE-PLAN.md                   # Session config & status
├── SCOPE.md                        # Phase 1: What to plan vs. what's context
├── OUTLINE.md                      # Phase 2: Structural outline
├── personas/                       # Phase 2: Auto-generated persona definitions
│   ├── [persona-slug].md
│   └── ...
├── sections/                       # Phase 3: Team debate outputs
│   ├── 01_[section-slug].md
│   └── ...
├── ACTION-PLAN.md                  # Phase 4: The deliverable
└── FORGE-SESSION.md                # Phase 4: Session report with file index
```

## Effort Levels

| Parameter | Low | Medium | High |
|-----------|-----|--------|------|
| Team size | 2 teammates | 3-4 teammates | 4-6 teammates |
| Debate depth | Brief | Moderate | Deep |
| Alternatives per section | 1-2 | 2-3 | 3-5 |
| Scaling analysis | Minimal | Core + expansion | Full tiers |
| Persona specificity | Broad roles | Focused expertise | Highly specialized |

**Default to medium** if user doesn't specify.

**Effort level detection:** Use the same trigger-word approach as Idea Symphony. If the user doesn't specify, analyze the scope complexity:
- **Low:** Straightforward scope, few decision points, small number of sections
- **Medium:** Multiple topic areas, some trade-offs, moderate complexity
- **High:** Complex scope, many decision points, significant trade-offs, large plan

## Workflow

### Phase 1: Intake & Scope Definition (Orchestrator)

**Prompt:** `[skill]/references/prompts/phase1-intake.md`

1. User provides path to a completed Idea Symphony session directory
2. Read Symphony outputs: `REQUEST.md`, `PLAN.md`, `QUESTIONS.md`, `BRAINSTORM.md`
   - **Read from the Symphony directory** — do NOT copy file contents
   - Do NOT read subfolders (questions/by-persona, responses/, synthesis/)
3. Analyze to determine:
   - **Original intent** — What was the user trying to accomplish?
   - **Content vs. context** — Which topics become plan sections vs. background?
   - **Brainstorming highlights** — Top insights, key tensions, strongest recommendations
4. Present scope summary to user for confirmation
5. User can adjust scope (focus areas, exclusions)
6. Determine effort level (user-specified or suggest based on scope)
7. Create session directory: `[project-name]_forge_[YYYY-MM-DD]/`
8. Create `SCOPE.md` and `FORGE-PLAN.md`

**Quality Gate:**
- `SCOPE.md` exists with all required sections
- `FORGE-PLAN.md` exists with correct configuration
- User has confirmed scope and effort level

**Orchestrator Model:** Sonnet

### Phase 2: Outline & Persona Generation (Orchestrator)

**Prompt:** `[skill]/references/prompts/phase2-outline.md`

#### Step 2A: Structural Outline

1. Read `SCOPE.md` and Symphony `BRAINSTORM.md`
2. Create action-oriented outline (4-8 sections)
   - Outline does NOT mirror Symphony topics — reorganize for what needs to be done
   - Each section: title, scope, key inputs from brainstorming, decision points
3. Present outline to user for approval
4. Save `OUTLINE.md`

**Outline Model:** Opus (structural decisions need best judgment)

#### Step 2B: Persona Generation

**Guidance:** `[skill]/references/prompts/phase3-persona-gen.md`

1. Based on outline sections and effort level, determine team size
2. Auto-generate project-specific personas — each with:
   - Name and role (domain-specific, not generic)
   - Core perspective and priorities
   - What they advocate for and push back on
   - Primary and contributing section assignments
3. Present team composition to user for approval
4. Save persona files to `personas/[persona-slug].md`

**Persona Model:** Sonnet (creative but constrained)

**Quality Gate:**
- `OUTLINE.md` exists with all sections
- `personas/` contains one file per teammate
- Every section has a primary owner + at least one contributor
- User has approved both outline and team composition

Update `FORGE-PLAN.md` with Phase 2 complete.

### Phase 3: Team Debate (Agent Teams)

**Spawn template:** `[skill]/references/prompts/phase3-spawn.md`

This phase uses Agent Teams for inter-agent debate. The orchestrator acts as team lead in delegate mode.

#### Step 3.1: Create Team and Enter Delegate Mode

1. Create an Agent Team
2. Enter delegate mode (Shift+Tab) — lead coordinates only, does not write section content
3. Create shared task list with one task per outline section

#### Step 3.2: Spawn Teammates

For each persona, spawn a teammate using the spawn template from `[skill]/references/prompts/phase3-spawn.md`. Fill in:
- Persona definition (path to their persona file)
- Full outline (path to OUTLINE.md)
- Source material paths (Symphony output files)
- Primary sections and contributing sections
- Debate depth based on effort level:
  - Low: Brief — focus on core recommendations, 1-2 exchanges per section
  - Medium: Moderate — develop 2-3 alternatives, 2-4 exchanges, push back at least once
  - High: Deep — comprehensive alternatives, 3-6 exchanges, explicit scaling tiers

**Teammate Model:** Sonnet (need quality reasoning for debate)

#### Step 3.3: Monitor and Coordinate

- Teammates self-claim tasks from the shared list
- Each reads relevant Symphony content for their assigned sections
- Each drafts section content with core recommendation + alternatives
- Teammates message each other to challenge and refine
- Each saves output to `sections/[NN]_[section-slug].md`

**Lead responsibilities during debate:**
- Monitor progress — check task list regularly
- Redirect if needed — if a teammate goes off-track, message them
- Ensure debate happens — if teammates don't challenge each other, prompt them
- Don't write content — delegate mode prevents this

#### Step 3.4: Wrap Up

1. Verify all section files exist in `sections/`
2. Shut down teammates
3. Clean up the team

**Quality Gate:**
- `sections/` contains one file per outline section
- Each section file has core recommendation, alternatives, and scaling notes
- If any sections are missing, note in FORGE-PLAN.md and proceed

Update `FORGE-PLAN.md` with Phase 3 complete.

### Phase 4: Integration (Orchestrator or Subagent)

**Prompt:** `[skill]/references/prompts/phase4-integration.md`

1. Read all section files from `sections/`
2. Create `ACTION-PLAN.md`:
   - Executive summary
   - Scope statement
   - Section-by-section plan with recommendations and alternatives
   - Resource scaling (core + minimal + expanded)
   - Implementation timeline
   - Key decisions for user (where team couldn't reach consensus)
3. Create `FORGE-SESSION.md` with session metadata, team composition, file index
4. Update `FORGE-PLAN.md` with Phase 4 complete
5. Present ACTION-PLAN.md to user with highlights:
   - 3-5 key recommendations
   - Where user decisions are needed
   - Point to section files for debate details

**Integration Model:** Opus (critical synthesis of all team work)

## Session Resume

If asked to continue a previous Forge session:

1. Read `FORGE-PLAN.md` to determine session state
2. Check last completed phase
3. Verify output files exist for completed phases
4. Resume from next incomplete phase

| FORGE-PLAN.md Status | Action |
|----------------------|--------|
| Phase 1: complete | Resume at Phase 2 |
| Phase 2: complete | Resume at Phase 3 (spawn team) |
| Phase 3: complete | Resume at Phase 4 (integration) |
| Phase 3: in-progress | Check section files, re-spawn team for missing sections |

Present resume status to user before continuing.

## Error Handling

- If Agent Teams fail to spawn, fall back to subagent approach: run Phase 3 as parallel subagents (one per section) instead of a debate team. Note in FORGE-PLAN.md that debate was skipped.
- If a teammate fails during debate, note the gap and have the lead or another teammate cover the missing section.
- If section files are missing after Phase 3, proceed to Phase 4 with available sections and note gaps.
- Never block the entire session on a single failure.

## Model Selection

| Task | Model | Rationale |
|------|-------|-----------|
| Orchestration (Phases 1, 4) | Sonnet | Balance of speed and judgment |
| Outline generation (Phase 2A) | Opus | Structural decisions need best judgment |
| Persona generation (Phase 2B) | Sonnet | Creative but constrained |
| Teammates (Phase 3) | Sonnet | Need quality reasoning for debate |
| Final integration (Phase 4) | Opus | Critical synthesis of all team work |

## References

- [references/templates.md](references/templates.md) — Document templates for all outputs
- [references/prompts/phase1-intake.md](references/prompts/phase1-intake.md) — Intake prompt
- [references/prompts/phase2-outline.md](references/prompts/phase2-outline.md) — Outline generation
- [references/prompts/phase3-persona-gen.md](references/prompts/phase3-persona-gen.md) — Persona generation guidance
- [references/prompts/phase3-spawn.md](references/prompts/phase3-spawn.md) — Teammate spawn template
- [references/prompts/phase4-integration.md](references/prompts/phase4-integration.md) — Integration prompt

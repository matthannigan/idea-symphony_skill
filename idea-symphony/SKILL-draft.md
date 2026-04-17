---
name: idea-symphony
description: >
  Multi-perspective brainstorming orchestration using subagents with isolated context windows.
  Spawns multiple AI personas as separate agents to generate genuinely diverse perspectives
  on any topic. Produces complete paper trail of intermediate outputs.

  Use when users want: brainstorming sessions, multiple perspectives on ideas, diverse viewpoints,
  facilitated ideation, devil's advocate analysis, or structured exploration from different
  thinking styles.

  Triggers: "brainstorm", "multiple perspectives", "diverse viewpoints", "different angles",
  "explore this idea", "what would different people think", "devil's advocate",
  "pros and cons from different views", "help me think through", "ideation session"
---

# Idea Symphony

Transform brainstorming from single-perspective assistance into a simulated multi-perspective panel by orchestrating multiple subagents — each with isolated context windows and distinct personas.

## Workflow Overview

1. **Phase 1 — Context Gathering:** gather user's topic and configuration
2. **Phase 2 — Question Generation:** generate and synthesize brainstorming questions
3. **Phase 3 — Multi-Perspective Brainstorming:** generate responses from multiple personas
4. **Phase 4 — Response Synthesis:** consolidate responses into topic syntheses
5. **Phase 5 — Final Output:** generate final brainstorming document

## Core Architecture

**Critical:** Each brainstorming participant runs as a **separate subagent task** with its own isolated context window. This isolation ensures genuine perspective diversity — participants cannot see each other's responses until synthesis.

**All phases save outputs to disk.** This creates a paper trail for debugging, traceability, and session resumption.

**Thoroughness over speed.** Quality and diversity matter more than fast completion.

## Persona System

Idea Symphony uses a **tiered roster** of question-generation personas and a **concentric circles model** for brainstorming persona selection.

**Question generation (Phase 2):** Draws from a pool of 19 validated personas across three tiers. All 10 Tier 1 personas participate at every effort level above `min`. Tier 2 (4 personas) joins at `high`. Tier 3 (5 personas) are topic-gated specialists selected by the orchestrator at `low`/`medium`/`high`.

**Brainstorming (Phase 3):** Uses the concentric circles model — Core pair (Devil's Advocate + Pragmatist) at all levels, expanding through Inner Ring and Middle Ring at higher effort.

**Full roster and selection guidance:**
- Question generation: [persona-selection-guide_Phase2B.md](references/persona-selection-guide_Phase2B.md)
- Brainstorming: [persona-selection-guide_Phase2C.md](references/persona-selection-guide_Phase2C.md)
- Individual persona prompts: [references/personas/*.md](references/personas/)

## Directory Structure

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
├── persona-selections.md       # medium/high: Per-topic persona assignments
├── REQUEST.md                  # User request summary
├── USER-QUESTIONS.md           # (optional) User-provided questions to answer
├── PLAN.md                     # Session config, roster plan, and status
├── QUESTIONS.md                # All questions consolidated (canonical order)
├── SYNTHESIS.md                # All summaries + syntheses (in topic order)
└── BRAINSTORM.md               # Final output and session index
```

**Topic ordering:** Phase 2 establishes a logical topic order. Numeric prefixes (`01_`, `02_`, etc.) preserve this order through all subsequent phases.

**`min` differences:** No `by-persona/` or `persona-selections.md`. Responses use `generic-response.md`. Synthesis contains only summary files. See [min effort workflow](references/prompts/min-workflow.md).

## Effort Levels

| Level | Phase 2 (Questions) | Phase 3 (Brainstorm) | Phase 4 (Synthesis) | Best For |
|-------|---------------------|----------------------|---------------------|----------|
| `min` | 1 generic prompt (15-20 Qs) | 1 generic response/topic | Summary only | Tactical: checklists, implementation steps, quick decisions |
| `low` | 10 Tier 1 personas (~32-42 Qs) | 2/topic (DA + Pragmatist) | Summary only | Practical: multi-perspective questions, lean brainstorming |
| `medium` | 10 Tier 1 + 0-1 Tier 3 (~45-65 Qs) | 4/topic (Core + Inner Ring) | Full synthesis | Strategic: frameworks, complex decisions, design choices |
| `high` | 10 T1 + 4 T2 + 0-2 T3 (~55-90 Qs) | 7/topic (Core + Inner + Middle) | Full synthesis | Philosophical: foundational thinking, high-stakes, research |

**Default to `medium`** if user doesn't specify.

**Output character by level:**
- `min`: concrete, actionable, immediately implementable (costs, materials, times)
- `low`: practically grounded with diverse questioning — 10 thinking styles worth of questions explored through a critical + pragmatic lens
- `medium`: framework-oriented, systems-thinking, trade-off analysis with 4 distinct brainstorming perspectives
- `high`: philosophical, assumption-challenging, convergence-documented with 7 perspectives per topic

**Detailed guidance:** See [effort-level-guidance.md](references/effort-level-guidance.md) for use case examples and decision criteria.

## Workflow

### `min` Effort Workflow

Self-contained speed run that skips the persona system entirely. After Phase 1 completes, the orchestrator runs the full min effort workflow from [references/prompts/min-workflow.md](references/prompts/min-workflow.md). Target runtime: 5-10 minutes.

---

### Phase 1: Context Gathering

1. Receive user's topic/idea and any supporting documents
2. Ask user to confirm project name (e.g., "Community Garden" or "Habit Tracker")
3. Confirm session directory location (default: `./[project-name_YYYY-MM-DD]/`)
4. Create `REQUEST.md` summarizing the request (see [templates/request.md](references/templates/request.md))
5. **Ask about user-defined questions:**
   - Ask: "Do you have specific questions you want the brainstorming process to answer? These will be preserved through all phases."
   - If yes: Save as `USER-QUESTIONS.md` (see [templates/user-questions.md](references/templates/user-questions.md))
   - If no: Proceed without creating the file
   - **Design note:** USER-QUESTIONS.md is kept separate from REQUEST.md to avoid influencing persona-based question generators. Persona generators should NOT see user questions — only the generic generator (`min`) and the synthesizer (`low`/`medium`/`high`) read this file.
6. **Determine effort level:**
   - If user specified → use that level
   - If not → detect triggers and suggest. See [phase1-effort-detection.md](references/prompts/phase1-effort-detection.md) for the full detection logic.
   - If `min` → proceed to min effort workflow and stop here
7. Create `PLAN.md` documenting configuration (see [templates/plan.md](references/templates/plan.md))

**Orchestrator Model:** Claude Sonnet or Gemini Pro

---

### Phase 2: Question Generation

Generate and synthesize brainstorming questions from multiple persona perspectives. Three steps at `low`; four steps at `medium`/`high`.

#### Step 2.1: Roster Planning (Orchestrator)

The orchestrator determines which personas generate questions and at what volume, based on effort level and topic characteristics.

1. Read `[skill]/references/persona-selection-guide_Phase2B.md` for the complete tier structure, volume ranges, and selection triggers
2. **Tier 1 (always included):** All 10 Tier 1 personas. Assign volume ranges per effort level from the guide's Effort Level Mapping tables.
3. **Tier 2 (`high` only):** All 4 Tier 2 personas at their specified volumes.
4. **Tier 3 (orchestrator judgment):** Evaluate each Tier 3 persona's selection trigger against the topic:
   - **`low`/`medium`:** Include 0-1 Tier 3 persona (strong trigger only)
   - **`high`:** Include 0-2 Tier 3 personas (moderate+ trigger)
   - See the guide's Tier 3 section for trigger definitions and thresholds
5. **Connector/Analogist swap:** Evaluate whether the topic requires inter-domain reconciliation. Default: Analogist. Swap to Connector when bridging distinct systems. See R7 criteria in the guide.
6. Write roster plan into `PLAN.md`:
   - List of personas with tier, volume range, and Step 2.3 method (Synthesize or Append)
   - Rationale for any Tier 3 inclusions
   - Rationale for Connector/Analogist decision

#### Step 2.2: Question Generation (Parallel Subagents)

Spawn parallel subagents per the roster plan — one per persona.

For each subagent, use prompt from `[skill]/references/prompts/phase2-question-generation-persona.md`.

**Instructions for each subagent:**

1. Read `[skill]/references/personas/[persona-name].md` and adopt the persona
2. Read `[session]/REQUEST.md` for the brainstorming topic and context
3. Generate questions within the volume range specified in the roster plan, organized into 3-5 topical clusters
4. Ensure questions span strategic, tactical, creative, analytical, and human-centered dimensions
5. Use YAML frontmatter in output (include persona name, date, effort level, volume target)
6. Save to `[session]/questions/by-persona/[persona-name].md`

**Key point:** Each persona works independently. This isolation ensures genuine diversity.

**Subagent Model:** Claude Sonnet or Gemini Pro

**Quality Gate:** Before proceeding, verify:
- `questions/by-persona/` file count matches roster plan
- If count doesn't match: Use Glob to search, move to correct location
- If files missing after search, log in PLAN.md Notes and proceed

Update `PLAN.md` with Phase 2 Step 2 complete status.

#### Step 2.3: Question Synthesis

Spawn 1 subagent to consolidate persona questions into topic clusters, handling Synthesize-group and Append-group personas differently.

Use prompt from `[skill]/references/prompts/phase2-question-synthesis.md`.

**Instructions for subagent:**

1. Read all persona question files from `[session]/questions/by-persona/` and `[session]/REQUEST.md`
2. Read the roster plan from `[session]/PLAN.md` to identify which personas are Synthesize vs. Append
3. Check if `[session]/USER-QUESTIONS.md` exists (use Glob). If it exists, read it and treat as mandatory "+1" input. Append `[User Q]` to any question incorporating a user-provided question.

**For Synthesize-group personas** (Analytical + Structural categories, plus Empath, FPT, Futurist, Accountant, Lawyer, Technical Expert):
4. Track convergence: Note which personas asked similar questions
5. Use convergence as quality signal:
   - **Convergent** (multiple personas): Always include — signals importance
   - **Complementary** (similar themes): Consolidate into single well-framed question
   - **Unique** (one persona): Include if revealing blind spots or essential dimensions; more liberally at `high`
6. Create topic clusters arranged in logical flow (foundational → strategic → operational)

**For Append-group personas**, the selection rule varies per persona:

7. Select questions according to the per-persona rules below:
   - **Tier 1 Perspective** (Provocateur, Analogist/Connector, Visionary, Storyteller) — round-robin cluster selection:
     - `low`: 3 per persona (one per cluster)
     - `medium`: 5 per persona (one per cluster, then fill from largest)
     - `high`: all 5-8 questions (no selection needed)
   - **Constraint Flipper** (Tier 2, `high` only): 3-5 per persona, round-robin cluster selection
   - **Politician** (Tier 3 Append, `medium`/`high`): append all 8-10 questions (no selection)
8. Append selected questions to the most relevant synthesized topic clusters, preserving persona attribution and original framing.

**Target output after synthesis + append:**
- **`low`:** ~32-42 questions across 4-7 topic clusters
- **`medium`:** ~45-65 questions across 4-7 topic clusters
- **`high`:** ~55-90 questions across 6-9 topic clusters

**User-provided questions:** Handle based on convergence:
- Convergent with personas: Consolidate into synthesized question, mark `[User Q]`
- Non-convergent: Preserve verbatim in most relevant cluster, mark `[User Q]`. Never drop.

9. Output files:
   - `QUESTIONS.md` (master list with YAML frontmatter, numbered questions)
   - `questions/by-topic/[NN]_[topic-slug].md` (one per cluster)

**Subagent Model:** Claude Opus or Gemini Pro (judgment-intensive)

**Quality Gate:** Before proceeding, verify:
- `QUESTIONS.md` exists
- `questions/by-topic/` file count matches cluster count
- If `USER-QUESTIONS.md` exists: count `[User Q]` markers vs. user question count
- If files missing, log in PLAN.md Notes and proceed

Update `PLAN.md` with Phase 2 Step 3 complete status and list of topic clusters.

#### Step 2.4: Persona Selection (`medium`/`high` only)

**Skipped at `low` effort** — brainstorming personas are always Devil's Advocate + Pragmatist.

Spawn 1 Opus subagent to select brainstorming personas for each topic cluster.

**Instructions for subagent:**

1. Read `[session]/QUESTIONS.md` for topic clusters and their questions
2. Read `[session]/REQUEST.md` for brainstorming context
3. Read `[skill]/references/persona-selection-guide_Phase2C.md` for the complete selection methodology
4. For each topic cluster:
   a. Classify the topic type
   b. Apply the selection algorithm:
      - **`medium` (4 per topic):** Core (DA + Pragmatist) + 2 topic-matched from Inner Ring
      - **`high` (7 per topic):** Core (2) + Inner Ring (2) + Middle Ring cluster completers (3)
   c. Document rationale for each selection
   d. Verify: no more than 3 personas from the same cluster family per topic
5. Create `[session]/persona-selections.md` with selection summary table and detailed per-topic rationale
6. Update `[session]/PLAN.md` with the summary table

**Subagent Model:** Claude Opus (judgment-intensive)

**Configurable Approval Pause:** Check `PLAN.md` for `persona-selection-review` field:
- **`auto`** (default): Proceed immediately
- **`pause`**: Present selections to user, wait for confirmation or overrides

**Quality Gate:** Before proceeding, verify:
- `persona-selections.md` exists
- Each topic has exactly 4 (`medium`) or 7 (`high`) personas assigned
- Devil's Advocate and Pragmatist included for every topic
- No retired personas (Questioner, Analyst, Synthesizer) selected

---

### Phase 3: Multi-Perspective Brainstorming

Each persona responds independently to topic cluster questions.

Read `questions/by-topic/` to get the list of numbered topic files. Process topics in numeric order.

**For `low`:** Use Devil's Advocate + Pragmatist for every topic (no persona-selections.md needed).

**For `medium`/`high`:** Read `[session]/persona-selections.md` for per-topic persona assignments.

For each topic cluster, spawn parallel subagents using prompt from `[skill]/references/prompts/phase3-brainstorm-persona.md`.

- **`low`:** 2 subagents (Devil's Advocate + Pragmatist)
- **`medium`:** 4 subagents per `persona-selections.md`
- **`high`:** 7 subagents per `persona-selections.md`

**Instructions for each subagent:**

1. Read `[skill]/references/personas/[persona-name].md` and fully adopt the persona
2. Read `[session]/REQUEST.md` for background context
3. Read `[session]/questions/by-topic/[NN]_[topic-slug].md` for the questions to answer
4. **Do NOT read other responses** — respond independently
5. For each question, provide 3-5 unique responses from your persona's perspective (50-150 words each)
6. Vary responses across scope, risk tolerance, timeframe, and stakeholders
7. Stay authentic to your persona's priorities and thinking style
8. Use YAML frontmatter in output (include persona, topic cluster, date, effort level)
9. Save to `[session]/responses/[NN]_[topic-slug]/[persona-name].md`

**Key point:** Context isolation is critical. Each persona must respond independently.

**Subagent Model:** Claude Haiku or Gemini Flash (volume over depth)

**Quality Gate:** For each topic directory in `responses/`:
- Expected file count: 2 (`low`), 4 (`medium`), or 7 (`high`) `.md` files
- If count doesn't match: Use Glob to search, move to correct location
- If files missing after search, log in PLAN.md Notes and proceed

Update `PLAN.md` with Phase 3 complete status.

---

### Phase 4: Response Synthesis

#### Summary Generation (`low` effort only)

Spawn parallel subagents (1 per topic cluster) using prompt from `[skill]/references/prompts/phase4-synthesis-low.md`.

**Instructions for each subagent:**

1. Read `[session]/questions/by-topic/[NN]_[topic-slug].md` for questions
2. Read all files in `[session]/responses/[NN]_[topic-slug]/` for responses
3. Create concise, actionable summary:
   - Executive Summary (2-3 paragraphs)
   - Key Themes (3-5 themes, 2-3 sentences each)
   - Recommended Actions (4-8 items by timeframe)
   - Key Considerations (opportunities, risks, trade-offs)
4. Use YAML frontmatter; save to `[session]/synthesis/[NN]_[topic-slug]_summary.md`

**Key point:** Summary-only synthesis. No attribution or full synthesis documents. 500-800 words.

**Subagent Model:** Claude Sonnet or Gemini Pro

#### Full Synthesis (`medium`/`high` effort)

Spawn parallel subagents (1 per topic cluster) using prompt from `[skill]/references/prompts/phase4-synthesis.md`.

**Instructions for each subagent:**

1. Read `[session]/REQUEST.md` for original brainstorming context
2. Read `[session]/questions/by-topic/[NN]_[topic-slug].md` for questions
3. Read all files in `[session]/responses/[NN]_[topic-slug]/` for persona responses
4. Track convergence: Note which personas gave similar responses
5. Use convergence as quality signal:
   - **Convergent** (multiple personas): Always include — signals importance
   - **Complementary** (different angles): Consolidate coherently
   - **Unique** (one persona): Include if revealing blind spots
6. Create THREE output documents:
   - `synthesis/attributed/[NN]_[topic-slug].md` — Full synthesis with persona attribution
   - `synthesis/[NN]_[topic-slug]_synthesis.md` — Synthesized points only (no attribution)
   - `synthesis/[NN]_[topic-slug]_summary.md` — Executive summary with themes, actions, considerations

**Subagent Model:** Claude Opus or Gemini Pro (judgment-intensive)

**Quality Gate:** Verify:
- `synthesis/attributed/`: 1 file per topic
- `synthesis/`: 2 files per topic (`_summary.md` + `_synthesis.md`)
- `low`: only `_summary.md` files, no `attributed/` directory
- If files missing, log in PLAN.md Notes and proceed

Update `PLAN.md` with Phase 4 complete status.

---

### Phase 5: Final Output

#### Step 5.1: Create SYNTHESIS.md

Concatenate all summary and synthesis files:

```bash
cat synthesis/[0-9]*.md > SYNTHESIS.md
```

#### Step 5.2: Create BRAINSTORM.md

Read `QUESTIONS.md` and all `synthesis/*_summary.md` files.

Generate final summary in `BRAINSTORM.md` (see [templates/brainstorm.md](references/templates/brainstorm.md)):
- Executive summary across all topics
- Session overview
- Key themes
- Topic summaries with links
- Recommended next steps
- Session index with links to all files

#### Step 5.3: Present Results

Output brief summary to user:
- Highlight 3-5 key insights
- Note location of `BRAINSTORM.md`
- Mention intermediate files are available for review
- Offer to explore specific ideas further

Update `PLAN.md` with session complete status.

## Session Resume

If asked to continue a previous session:

1. Read `PLAN.md` to determine session state
2. Check effort level and last completed phase
3. Verify output files exist for completed phases
4. Resume from next incomplete phase

| PLAN.md Status | Files Present | Action |
|----------------|---------------|--------|
| Phase 2 Step 2: complete | `QUESTIONS.md` missing | Resume at Phase 2 Step 3 (Question Synthesis) |
| Phase 2 Step 3: complete | `persona-selections.md` missing | Resume at Step 2.4 (`medium`/`high`) or Phase 3 (`low`) |
| Phase 2 Step 4: complete | `persona-selections.md` exists | Resume at Phase 3 |
| Phase 3: complete | `responses/` populated | Resume at Phase 4 |
| Phase 4: complete | `synthesis/` exists | Resume at Phase 5 |
| Any phase: in-progress | Partial files | Re-run incomplete phase |

Present resume status to user before continuing.

## Error Handling

If a subagent fails:
1. Log failure in `PLAN.md` Notes section with details
2. Attempt to re-run the subagent once
3. If still failing, continue with available outputs and note the gap
4. Never block the entire session on a single subagent failure

## Subagent File Access

Subagents (using `general-purpose` type) have full file access. Instead of the orchestrator reading files and embedding content in prompts, instruct subagents to read files themselves. This keeps orchestrator context minimal.

The orchestrator provides:
1. File paths to read (inputs from prior phases)
2. Instructions for the task
3. File paths to write (outputs)

## Model Selection

| Task | Model | Rationale |
|------|-------|-----------|
| Orchestration | Sonnet | Balance of speed and quality |
| Roster planning | Orchestrator (Sonnet) | Reads guide, applies selection logic |
| Question generation | Sonnet | Balance of speed and quality |
| Question synthesis | Opus | Judgment for deduplication and append selection |
| Persona selection (`medium`/`high`) | Opus | Judgment-intensive topic classification |
| Brainstorming | Haiku | Volume over depth |
| Summary generation (`low`) | Sonnet | User-facing summaries |
| Full synthesis (`medium`/`high`) | Opus | Critical consolidation |
| Final output | Sonnet | User-facing deliverable |

## References

- [references/persona-selection-guide_Phase2B.md](references/persona-selection-guide_Phase2B.md) — Question generation roster (tiers, volumes, effort mapping, Tier 3 triggers)
- [references/persona-selection-guide_Phase2C.md](references/persona-selection-guide_Phase2C.md) — Brainstorming persona selection (concentric circles model, topic affinity, clusters)
- [references/personas.md](references/personas.md) — Persona index
- [references/personas/*.md](references/personas/) — Full system prompts for all personas
- [references/prompts/min-workflow.md](references/prompts/min-workflow.md) — Complete `min` effort workflow
- [references/prompts/phase1-effort-detection.md](references/prompts/phase1-effort-detection.md) — Effort level detection triggers
- [references/templates/](references/templates/) — Document templates for REQUEST.md, USER-QUESTIONS.md, PLAN.md, BRAINSTORM.md, and synthesis files (index in [templates.md](references/templates.md))
- [references/effort-level-guidance.md](references/effort-level-guidance.md) — Detailed effort level selection guidance

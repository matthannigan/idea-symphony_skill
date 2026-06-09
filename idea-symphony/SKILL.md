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

## Prompt conventions

Prompt files in this skill use two placeholder conventions:

- `{{lowercase_underscored}}` — **orchestrator substitution variables.** The orchestrator replaces these with session-specific values before the prompt is handed to a subagent. By the time the subagent reads the prompt, these are already resolved. Examples: `{{session}}`, `{{skill}}`, `{{persona_name}}`, `{{topic}}`, `{{cluster_slug}}`, `{{current_datetime}}`.
- `[Title Case Descriptive Slot]` — **output-template placeholders.** The subagent fills these in when producing its output (YAML frontmatter values, markdown headings, body prose). Examples: `[Topic 1 Descriptive Name]`, `[Question text]`, `[Your Persona Name]`.

If you see a placeholder in a file-system path, shell command, or prompt-instruction context, treat it as a substitution variable. If you see it inside a fenced output template, treat it as a slot to fill during generation.

`{{current_datetime}}` resolves to the current date/time the orchestrator observes in its Claude Code system context (ISO 8601, e.g. `2026-04-23`). Use it in YAML frontmatter `datetime:` fields so subagent outputs carry an accurate session timestamp. The orchestrator must substitute the literal value before spawning the subagent — subagents do not resolve it themselves.

## Persona System

Idea Symphony uses a **tiered roster** of question-generation personas and a **concentric circles model** for brainstorming persona selection.

**Question generation (Phase 2):** Draws from a pool of 19 validated personas across three tiers. All 10 Tier 1 personas participate at every effort level above `min`. Tier 2 (4 personas) joins at `high`. Tier 3 (5 personas) are topic-gated specialists selected by the orchestrator at `low`/`medium`/`high`. See [Phase 2B Selection Guide](guidance/phase2A_question-gen-personas.md).

**Brainstorming (Phase 3):** Uses the concentric circles model — Core pair (Devil's Advocate + Pragmatist) at all levels, expanding through Inner Ring and Middle Ring at higher effort. See [Phase 2D Selection Guide](guidance/phase2D_brainstorming-personas.md).

### Persona Roster and Individual Prompts

- [The Accountant](./personas/the-accountant.md) - Financial clarity, cost modeling, economic sustainability
- [The Analyst](./personas/the-analyst.md) - Systematic breakdown and pattern recognition
- [The Analogist](./personas/the-analogist.md) - Cross-domain pattern recognition
- [The Appreciative Inquirer](./personas/the-appreciative-inquirer.md) - Build on existing strengths, elicit stories of success
- [The Audience Advocate](./personas/the-audience-advocate.md) - End-user/community perspective, empathy mapping
- [The Connector](./personas/the-connector.md) - Cross-domain bridging and structural parallels
- [The Constraint Flipper](./personas/the-constraint-flipper.md) - Turning limitations into opportunities
- [The Devil's Advocate](./personas/the-devils-advocate.md) - Constructive challenge, risk identification, and mitigation
- [The Empath](./personas/the-empath.md) - Emotional resonance, gut-feeling reasoning
- [The First Principles Thinker](./personas/the-first-principles-thinker.md) - Deconstruction to fundamentals
- [The Futurist](./personas/the-futurist.md) - Trend-grounded analysis and strategic positioning
- [The Lawyer](./personas/the-lawyer.md) - Regulatory frameworks, compliance, legal requirements
- [The Momentum Builder](./personas/the-momentum-builder.md) - Progressive elaboration, "yes, and..." energy
- [The Politician](./personas/the-politician.md) - Stakeholder politics, coalition building, power dynamics
- [The Pragmatist](./personas/the-pragmatist.md) - Feasibility and implementation focus
- [The Provocateur](./personas/the-provocateur.md) - Absurdist provocation, lateral thinking
- [The Questioner](./personas/the-questioner.md) - Deep probing and assumption challenging
- [The Simplifier](./personas/the-simplifier.md) - Subtractive thinking, removing unnecessary complexity
- [The Storyteller](./personas/the-storyteller.md) - Narrative framing, user journey visualization
- [The Synthesizer](./personas/the-synthesizer.md) - Consolidation and theme extraction
- [The Systems Thinker](./personas/the-systems-thinker.md) - Feedback loops, second-order consequences, system dynamics
- [The Technical Expert](./personas/the-technical-expert.md) - Implementation feasibility
- [The Visionary](./personas/the-visionary.md) - Paradigm-shifting, transformative thinking

## Directory Structure

Session top-level:

```
[project-name_YYYY-MM-DD]/
├── context/          # (optional) User-submitted files
├── personas/         # Phase 2 persona-selection rationale (question-generation.md, brainstorming.md)
├── questions/        # Phase 2 outputs (by-persona/ and by-topic/)
├── responses/        # Phase 3 outputs (per-topic directories, one file per persona)
├── synthesis/        # Phase 4 outputs (summaries; attributed/ at medium/high)
├── REQUEST.md        # User request summary
├── PLAN.md           # Session config, persona summary tables, status
├── QUESTIONS.md      # All questions consolidated (canonical order)
├── SYNTHESIS.md      # All summaries + syntheses (in topic order)
└── BRAINSTORM.md     # Final output and session index
```

**Full layout, per-phase file naming, and `min` effort differences:** See [SESSION-STRUCTURE.md](SESSION-STRUCTURE.md).

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

**Detailed guidance:** See [Effort Level Guidance](guidance/phase1_effort-level.md) for use case examples and decision criteria.

## Workflow

### `min` Effort Workflow

Self-contained speed run that skips the persona system entirely. After Phase 1 completes, the orchestrator runs the full [min effort workflow](prompts/min-effort-workflow.md). Target runtime: 5-10 minutes.

---

### Phase 1: Context Gathering (Orchestrator)

1. Receive user's topic/idea and any supporting documents. Save supporting documents to `{{session}}/context/`.
2. Ask user to confirm project name (e.g., "Community Garden" or "Habit Tracker")
3. Confirm session directory location (default: `./[project-name_YYYY-MM-DD]/`)
4. **Ask about user-defined questions:**
   - Ask: "Do you have specific questions you want the brainstorming process to answer? These will be preserved through all phases."
   - If yes: Save as `USER-QUESTIONS.md` (see [templates/user-questions.md](templates/user-questions.md))
   - If no: Proceed without creating the file
   - **Rule:** Persona generators (Phase 2 Step 2.2) must not read USER-QUESTIONS.md. Only the `min` generic generator and the Phase 2C synthesizer may consume it. (Rationale in CLAUDE.md.)
5. Create `REQUEST.md` summarizing the request (see [templates/request.md](templates/request.md)). Captures user input only — topic, context, goals, considerations, and references to any files in `context/` and `USER-QUESTIONS.md`. Effort level and orchestrator state go in `PLAN.md` (step 7).
6. **Determine effort level:**
   - If user specified → use that level
   - If not → detect triggers and suggest. See [prompts/phase1_effort-level.md](prompts/phase1_effort-level.md) for the full detection logic.
7. **Ask about NotebookLM outputs (skip if effort is `min`):**
   - Ask: "Would you like NotebookLM-ready prompts generated alongside your brainstorm? This adds a NOTEBOOK-LM-INSTRUCTIONS.md file with copy-paste prompts for podcasts (single + per-cluster series), a presentation, and an infographic. The same prompts work in other audio/presentation tools."
   - Default is `no` (opt-in). If user says yes → set `notebooklm-outputs: "yes"`; otherwise (explicit no or no answer) → set `notebooklm-outputs: "no"`.
   - At `min` effort, skip this question entirely; do not emit the field.
   - See [prompts/phase1_effort-level.md](prompts/phase1_effort-level.md) for the canonical question text.
8. Create `PLAN.md` documenting configuration (see [templates/plan.md](templates/plan.md)). Records effort level (from step 6), the `notebooklm-outputs` flag (from step 7, omitted at `min`), session directory, and Phase 1 completion status.
9. If effort is `min` → proceed to min effort workflow.

**Orchestrator Model:** Opus (advisory — runs in the orchestrator's own session, no Agent tool call is made for this step). Record `model-reported: "<self-identified>"` in PLAN.md frontmatter for audit.

---

### Phase 2: Question Generation

Generate and synthesize brainstorming questions from multiple persona perspectives. Three steps at `low`; four steps at `medium`/`high`.

#### Step 2.1: Select Question Generation Personas (Single Subagent)

Spawn 1 Opus subagent using the prompt at `{{skill}}/prompts/phase2A_question-gen-personas-selection.md`. The prompt covers Tier 3 trigger evaluation, the Connector/Analogist swap decision, effort-threshold ceilings, and the two-output structure (full rationale file + PLAN.md summary).

**Subagent Model:** Pass `model: "opus"` to the Agent tool call (judgment-intensive). Also include the literal string `model-requested: "opus"` in the prompt body so the subagent records it in its output frontmatter.

**Substitution:** Resolve `{{session}}`, `{{skill}}`, `{{current_datetime}}`, and `{{effort}}` in the prompt body before spawning.

**Outputs:**
- `{{session}}/personas/question-generation.md` — full roster + selection rationale (audit trail).
- A new `## Phase 2 Step 2.1: Question Generation Personas` section appended to `{{session}}/PLAN.md` — compact summary tables (Tier 1 always; Tier 2 if `high`; Tier 3 if any selected) with Synthesize/Append stream assignment per persona. No rationale.

**Quality Gate:** Before proceeding to Step 2.2, verify:
- `personas/question-generation.md` exists with frontmatter, the three Tier tables (Tier 1 always; Tier 2 populated at `high` or `N/A — {{effort}} effort` otherwise; Tier 3 populated or correct sentinel), and the Selection Rationale block with structured fields for all four Tier 3 candidates plus the Connector/Analogist swap rationale.
- `PLAN.md` contains a `## Phase 2 Step 2.1: Question Generation Personas` section with Effort, Connector/Analogist line, and the three summary tables.

If any element is missing, re-run Step 2.1 rather than proceeding.

#### Step 2.2: Generate Questions (Parallel Subagents)

Spawn parallel subagents per the roster plan — one per persona — using the prompt at `{{skill}}/prompts/phase2B_question-gen_by-persona.md`. Subagent instructions, coverage requirements, and output schema live in the prompt file.

**Subagent Model:** Pass `model: "sonnet"` to the Agent tool call. Also include the literal string `model-requested: "sonnet"` in the prompt body so the subagent records it in its output frontmatter (it will self-report its actual model in `model-reported`).

**Quality Gate:** Before proceeding, verify:
- `{{session}}/questions/by-persona/` file count matches roster plan
- Each file's YAML frontmatter includes `stream` and `category` fields (the prompt requires subagents to copy these from the persona file's frontmatter; they drive Step 2.3 routing)
- If count doesn't match: Use Glob to search, move to correct location
- If frontmatter is missing, re-run that persona's subagent
- If files missing after search, log in PLAN.md Notes and proceed

Update `PLAN.md` with Phase 2 Step 2 complete status.

#### Step 2.3: Question Synthesis and Clustering (Single Subagent)

Spawn 1 subagent to consolidate per-persona questions into topic clusters using the Synthesize/Append stream split. The synthesis prompt encodes the cluster targets, compaction ratios, voice-preservation floors, and Append placement rules (all validated in SP1 iter3).

**Synthesis instructions:** Use the prompt at
`{{skill}}/prompts/phase2C_question-synthesis.md`.

**Inputs the subagent receives:**
1. `{{session}}/questions/by-persona/*.md` — all persona files (subagent Globs
   this directory; each file's frontmatter provides `stream`, `category`,
   `volume`)
2. `{{session}}/REQUEST.md` — topic context
3. `{{session}}/PLAN.md` — fallback source for the Phase 2B roster if any
   persona file is missing stream frontmatter
4. `{{session}}/USER-QUESTIONS.md` (if it exists) — user-provided questions
   treated as a mandatory "+1" input; the subagent marks any synthesized
   question incorporating a user question with `[User Q]`

**Outputs:**
1. `{{session}}/QUESTIONS.md` — clustered, numbered question list. Append
   questions are interleaved verbatim into the topically-closest cluster;
   orphans (questions with no topical home) appear under a final
   `## Additional Questions` section. No persona attribution is visible in
   this file.
2. `{{session}}/questions-meta.json` — persona attribution, convergence data,
   and hard-floor self-check diagnostics. This is the authoritative audit
   trail for future investigations and skill tests.

**Subagent Model:** Pass `model: "opus"` to the Agent tool call (judgment-intensive). Also include the literal string `model-requested: "opus"` in the prompt body so the subagent records it in its output frontmatter (it will self-report its actual model in `model-reported`).

**Post-synthesis shell step — split QUESTIONS.md into by-topic files:**

After the subagent returns, run the utility script:

```bash
scripts/split-questions.sh {{session}}
```

This is a deterministic transform, not an LLM step. `questions/by-topic/99_additional.md` is produced only if the `## Additional Questions` section exists in QUESTIONS.md.

**Quality Gate:** Before proceeding, verify:
- `QUESTIONS.md` exists and contains at least one `## Topic Cluster NN:` header
- `questions-meta.json` exists and parses as valid JSON
- `questions/by-topic/` contains one file per cluster (plus `99_additional.md` if orphans existed)
- Self-check values in `questions-meta.json` satisfy the SP1 hard floors:
  - `ai_orphan_question_numbers` is non-empty (≥3 at high effort)
  - `st_archetype_question_numbers` is non-empty OR `r11_source_bound_cells` is populated (≥3 at high effort)
- If `USER-QUESTIONS.md` exists: count `[User Q]` markers in `QUESTIONS.md` vs. user question count

If any check fails, re-run Step 2.3.

Update `PLAN.md` with Step 2.3 complete status and cluster count.

#### Step 2.4: Brainstorming Persona Selection (`medium`/`high` only; Single Subagent)

**Skipped at `low` effort** — brainstorming personas are always Devil's Advocate + Pragmatist.

Spawn 1 Opus subagent to select brainstorming personas for each topic cluster.

**Instructions for subagent:**

1. Read `{{session}}/QUESTIONS.md` for topic clusters and their questions.
   **Use the cluster labels exactly as produced by Step 2.3 synthesis when
   assigning personas per cluster** — do not invent alternate cluster names
   or re-cluster the questions. The persona selection must reference the
   same clusters that Phase 3 will iterate.
2. Read `{{session}}/REQUEST.md` for brainstorming context
3. Read `{{skill}}/guidance/phase2D_brainstorming-personas.md` for the complete selection methodology
4. For each topic cluster:
   a. Classify the topic type
   b. Apply the selection algorithm:
      - **`medium` (4 per topic):** Core (DA + Pragmatist) + 2 topic-matched from Inner Ring
      - **`high` (7 per topic):** Core (2) + Inner Ring (2) + Middle Ring cluster completers (3)
   c. Document rationale for each selection
   d. Verify: no more than 3 personas from the same cluster family per topic
5. Create `{{session}}/personas/brainstorming.md` with selection summary table and detailed per-topic rationale
6. Update `{{session}}/PLAN.md` with the summary table

**Subagent Model:** Pass `model: "opus"` to the Agent tool call (judgment-intensive). Also include the literal string `model-requested: "opus"` in the prompt body so the subagent records it in its output frontmatter (it will self-report its actual model in `model-reported`).

**Configurable Approval Pause:** Check `PLAN.md` for `persona-selection-review` field:
- **`auto`** (default): Proceed immediately
- **`pause`**: Present selections to user, wait for confirmation or overrides

**Quality Gate:** Before proceeding, verify:
- `personas/brainstorming.md` exists
- The `## Phase 2 Step 2.4: Brainstorming Personas` summary table is present in `PLAN.md`
- Each topic has exactly 4 (`medium`) or 7 (`high`) personas assigned
- Devil's Advocate and Pragmatist included for every topic
- No retired personas (Questioner, Analyst, Synthesizer) selected

---

### Phase 3: Multi-Perspective Brainstorming (Parallel Subagents)

Each persona responds independently to topic cluster questions.

Read `questions/by-topic/` to get the list of numbered topic files. Process topics in numeric order.

#### For `low` effort only

Use Devil's Advocate + Pragmatist for every topic (no Step 2.4 selection needed).

For each topic cluster, spawn 2 parallel subagents using the prompt at `{{skill}}/prompts/phase3_brainstorm_by-persona.md`. Subagent instructions (persona adoption, context isolation, response diversity) live in the prompt file. Spawn counts:

**Subagent Model:** Pass `model: "sonnet"` to the Agent tool call (balance of speed and quality). Also include the literal string `model-requested: "sonnet"` in the prompt body so the subagent records it in its output frontmatter (it will self-report its actual model in `model-reported`).

#### For `medium`/`high` effort

Read the `## Phase 2 Step 2.4: Brainstorming Personas` table in `{{session}}/PLAN.md` for per-topic persona assignments. The table has everything Phase 3 needs to spawn subagents; do not read `personas/brainstorming.md` (which is the rationale audit trail and is large enough to balloon orchestrator context unnecessarily).

For each topic cluster, spawn parallel subagents using the prompt at `{{skill}}/prompts/phase3_brainstorm_by-persona.md`. Subagent instructions (persona adoption, context isolation, response diversity) live in the prompt file. Spawn counts:

- **`medium`:** 4 subagents per row of the PLAN.md table
- **`high`:** 7 subagents per row of the PLAN.md table

**Subagent Model:** Pass `model: "haiku"` to the Agent tool call (volume over depth). Also include the literal string `model-requested: "haiku"` in the prompt body so the subagent records it in its output frontmatter (it will self-report its actual model in `model-reported`).

#### Quality Gate

For each topic directory in `responses/`:
- Expected file count: 2 (`low`), 4 (`medium`), or 7 (`high`) `.md` files
- If count doesn't match: Use Glob to search, move to correct location
- If files missing after search, log in PLAN.md Notes and proceed

Update `PLAN.md` with Phase 3 complete status.

---

### Phase 4: Response Synthesis (Parallel Subagents)

#### Summary Generation (`low` effort only)

Spawn parallel subagents (1 per topic cluster) using the prompt at `{{skill}}/prompts/phase4_summary-only_low-effort.md`. The prompt covers DA/Pragmatist tension-preserving synthesis, summary structure, and output format.

**Subagent Model:** Pass `model: "sonnet"` to the Agent tool call (balance of speed and quality). Also include the literal string `model-requested: "sonnet"` in the prompt body so the subagent records it in its output frontmatter (it will self-report its actual model in `model-reported`).

Once all subagents are complete, run the utility script to build the concatenated `SUMMARIES.md` file. This is a deterministic transform (no LLM): it strips each per-topic `_summary.md`'s YAML frontmatter, joins the bodies with horizontal-rule separators, and prepends a session-level frontmatter block.

```bash
scripts/build-summaries.sh {{session}}
```

#### Full Synthesis (`medium`/`high` effort)

Spawn parallel subagents (1 per topic cluster) using the prompt at `{{skill}}/prompts/phase4_full-synthesis.md`. The prompt covers convergence tracking, the three-output structure (`attributed/`, `_synthesis.md`, `_summary.md`), and quality standards.

Each `_summary.md` carries a `**Central Tension**` line at the top — a universal field across all effort levels that Phase 5 aggregates into a session-level `## Central Tensions` section.

**Subagent Model:** Pass `model: "opus"` to the Agent tool call (judgment-intensive). Also include the literal string `model-requested: "opus"` in the prompt body so the subagent records it in its output frontmatter (it will self-report its actual model in `model-reported`).

Once all subagents are complete, run both utility scripts. Each is a deterministic concat-and-strip-frontmatter transform; `build-summaries.sh` consumes the per-topic `_summary.md` files and `build-synthesis.sh` consumes the per-topic `_synthesis.md` files. They are independent and can be run in either order.

```bash
scripts/build-summaries.sh {{session}}
scripts/build-synthesis.sh {{session}}
```

#### Quality Gate

Verify the artifacts that should exist for this effort level:

- **`low` effort:**
  - `synthesis/`: 1 `_summary.md` per topic; no `_synthesis.md`, no `attributed/`
  - `SUMMARIES.md` exists; no `SYNTHESIS.md`
- **`medium`/`high` effort:**
  - `synthesis/attributed/`: 1 attribution file per topic
  - `synthesis/`: per topic, both `_summary.md` and `_synthesis.md`
  - Both `SUMMARIES.md` and `SYNTHESIS.md` exist

If files are missing, log the gap in PLAN.md Notes and proceed.

Update `PLAN.md` with Phase 4 complete status.

---

### Phase 5: Final Output

#### Step 5.1: Generate BRAINSTORM.md (Subagent)

Spawn a single subagent using the prompt at `{{skill}}/prompts/phase5_final-output.md`. The prompt covers input-file roles, executive-summary derivation, key-theme extraction, the effort-conditional Session-Index line, and the full output template.

Phase 5 inherits per-cluster Central Tensions, Conspicuous Absences, and dissent-preservation disciplines from Phase 4's `_summary.md` outputs and aggregates them at session level. See `prompts/phase5_final-output.md` for the surfacing rules and the effort-scaled word length targets.

**NotebookLM addon:** if PLAN.md frontmatter has `notebooklm-outputs: "yes"`, the same subagent also emits `{{session}}/NOTEBOOK-LM-INSTRUCTIONS.md` per [templates/notebook-lm-instructions.md](templates/notebook-lm-instructions.md). Otherwise only `BRAINSTORM.md` is produced. The flag is set at Phase 1 step 7 and is never present at `min` effort.

**Subagent Model:** Pass `model: "opus"` to the Agent tool call (judgment-intensive, user-facing deliverable). Also include the literal string `model-requested: "opus"` in the prompt body so the subagent records it in its output frontmatter.

**Substitution:** Resolve `{{session}}`, `{{current_datetime}}`, and `{{effort}}` in the prompt body before spawning.

#### Step 5.2: Present Results

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
| Phase 2 Step 2.1: complete | `personas/question-generation.md` exists; PLAN.md has `## Phase 2 Step 2.1: Question Generation Personas` section | Resume at Step 2.2 |
| Phase 2 Step 2.2: complete | `questions/by-persona/*.md` exist, `QUESTIONS.md` missing | Resume at Step 2.3 (Synthesis) |
| Phase 2 Step 2.3: complete | `QUESTIONS.md` + `questions-meta.json` exist; PLAN.md has no `## Phase 2 Step 2.4: Brainstorming Personas` section yet | Resume at Step 2.4 (`medium`/`high`) or Phase 3 (`low`) |
| Phase 2 Step 2.4: complete | PLAN.md has the `## Phase 2 Step 2.4: Brainstorming Personas` section | Resume at Phase 3 |
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

## Model Selection

| Task | Model | Rationale |
|------|-------|-----------|
| Orchestration | Opus | Tools calling expertise |
| Roster planning | Orchestrator (Sonnet) | Reads guide, applies selection logic |
| Question generation | Sonnet | Balance of speed and quality |
| Question synthesis | Opus | Judgment for deduplication and append selection |
| Persona selection (`medium`/`high`) | Opus | Judgment-intensive topic classification |
| Brainstorming (`min`/`low`) | Sonnet | Balance of speed and quality |
| Brainstorming (`medium`/`high`)  | Haiku | Volume over depth |
| Summary generation (`min`/`low`) | Sonnet | User-facing summaries |
| Full synthesis (`medium`/`high`) | Opus | Critical consolidation |
| Final output | Opus | User-facing deliverable |

## Reference directories

- [personas/](personas/) — Persona system prompts (23 total)
- [prompts/](prompts/) — Phase-specific subagent prompts
- [guidance/](guidance/) — Selection guides for personas and effort levels
- [templates/](templates/) — Document templates (see [templates/index.md](templates/index.md))
- [scripts/](scripts/) — Utility scripts
- [SESSION-STRUCTURE.md](SESSION-STRUCTURE.md) — Full session directory layout

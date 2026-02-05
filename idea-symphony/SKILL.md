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

Transform brainstorming from single-perspective assistance into a simulated multi-perspective panel by orchestrating multiple subagents—each with isolated context windows and distinct personas.

## Core Architecture

**Critical:** Each brainstorming participant runs as a **separate subagent task** with its own isolated context window. This isolation ensures genuine perspective diversity—participants cannot see each other's responses until synthesis.

**All phases save outputs to disk.** This creates a paper trail for debugging, traceability, and session resumption.

**Thoroughness over speed.** Quality and diversity matter more than fast completion.

## Available Personas (Closed Set)

**You MUST only use personas from this list.** Do not invent, modify, or hallucinate personas.

| Persona | File | Best For |
|---------|------|----------|
| The Visionary | `the-visionary.md` | Future possibilities, transformation |
| The Pragmatist | `the-pragmatist.md` | Feasibility, implementation |
| The Devil's Advocate | `the-devils-advocate.md` | Risk identification, challenges |
| The Connector | `the-connector.md` | Relationships between ideas |
| The Analyst | `the-analyst.md` | Data, patterns, systematic breakdown |
| The Storyteller | `the-storyteller.md` | Narrative, user journeys |
| The Synthesizer | `the-synthesizer.md` | Consolidation, theme extraction |
| The Momentum Builder | `the-momentum-builder.md` | "Yes, and..." expansion |
| The Audience Advocate | `the-audience-advocate.md` | End-user perspective |
| The Technical Expert | `the-technical-expert.md` | Technical feasibility |
| The Analogist | `the-analogist.md` | Cross-domain patterns |
| The Questioner | `the-questioner.md` | Deep probing, assumptions |
| The Constraint Flipper | `the-constraint-flipper.md` | Limitations → opportunities |
| The Futurist | `the-futurist.md` | Trends, future-proofing |
| The First Principles Thinker | `the-first-principles-thinker.md` | Deconstruction to fundamentals |

Persona files are located at `[skill]/references/personas/[filename]`.

## Directory Structure

```
[project-name_YYYY-MM-DD]/
├── context/                    # (optional) User-submitted files
├── questions/
│   ├── by-persona/             # Medium/high: One file per question-generating persona
│   │   ├── the-questioner.md   # (empty for low effort)
│   │   ├── the-analyst.md
│   │   └── ...
│   └── by-topic/               # Numbered files preserve topic order
│       ├── 01_operations.md
│       ├── 02_community-engagement.md
│       └── ...
├── responses/
│   └── [NN_topic]/             # Numbered directories match topic order
│       ├── generic-response.md # Low effort: single generic file
│       ├── the-visionary.md    # Medium/high: multiple persona files
│       ├── the-pragmatist.md
│       └── ...
├── synthesis/
│   ├── attributed/             # Medium/high only: Full responses with persona attributions
│   │   ├── 01_operations_attributed.md
│   │   └── ...
│   ├── 01_operations_summary.md      # All effort levels
│   ├── 01_operations_synthesis.md    # Medium/high only
│   └── ...
├── REQUEST.md                  # User request summary
├── PLAN.md                     # Session config and status
├── QUESTIONS.md                # All questions consolidated (canonical order)
├── SYNTHESIS.md                # All summaries + syntheses (in topic order)
└── BRAINSTORM.md               # Final output and session index
```

**Topic ordering:** Phase 2 establishes a logical topic order. Numeric prefixes (`01_`, `02_`, etc.) preserve this order through all subsequent phases. Within each topic, `_summary` sorts before `_synthesis` alphabetically.

**Low effort differences:** No by-persona/ files, responses use generic-response.md, synthesis/ contains only summary files (no attributed/ or _synthesis files).

## Effort Levels

| Effort | Phase 2 (Questions) | Phase 3 (Brainstorming) | Phase 4 (Synthesis) |
|--------|---------------------|-------------------------|---------------------|
| low    | 1 generic prompt    | 1 generic response per topic | Summary only |
| medium | 3 personas          | 3 personas per topic    | Full synthesis |
| high   | 5 personas          | 5 personas per topic    | Full synthesis |

**Default to medium** if user doesn't specify.

**Low effort approach:** Uses context isolation (separate subagents per topic) but skips the persona system entirely. Single generic question generation creates 15-20 questions in 3-5 clusters. Single generic brainstorming response per cluster provides 3-5 responses per question. Summary-only synthesis skips attribution. Target runtime: 5-10 minutes vs. 30 minutes for medium.

**Medium/high effort approach:** Uses persona system with multiple perspectives. Full synthesis includes attribution and comprehensive consolidation.

## Workflow

### Phase 1: Context Gathering (Orchestrator)

1. Receive user's topic/idea and any supporting documents
2. Ask user to confirm project name (e.g., "Community Garden" or "Habit Tracker")
3. Confirm session directory location (default: `./[project-name_YYYY-MM-DD]/`)
4. Create `REQUEST.md` summarizing the request (see [templates.md](references/templates.md))
5. Ask user for effort level (low/medium/high) — default to medium
6. Create `PLAN.md` documenting configuration (see [templates.md](references/templates.md))

**Orchestrator Model:** Claude Sonnet or Gemini Pro (prefer balanced response)

### Phase 2: Question Generation

**For LOW effort:** Proceed to Phase 2A: Generic Question Generation

**For MEDIUM or HIGH effort:** Proceed to Phase 2B: Persona-Based Question Generation

---

#### Phase 2A: Generic Question Generation (Low Effort Only)

Spawn 1 subagent using prompt from `[skill]/references/prompts/phase2-question-generation-generic.md`.

The subagent will:
1. Read REQUEST.md for the brainstorming topic
2. Generate 15-20 questions organized into 3-5 topical clusters
3. Save outputs to QUESTIONS.md and questions/by-topic/[NN]_[topic].md files

**Subagent Model:** Claude Sonnet or Gemini Pro (prefer balanced response)

**Quality Gate:** Before proceeding, verify:
- `QUESTIONS.md` exists
- `questions/by-topic/` contains 3-5 numbered `.md` files
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with Phase 2 complete status and list of topic clusters.

Skip to Phase 3A.

---

#### Phase 2B: Persona-Based Question Generation (Medium/High Effort)

**Step 2B.1: Generate Questions (Parallel Subagents)**

Spawn 3 or 5 parallel subagents based on effort level. Select unique personas for each subagent:
- medium effort: The Questioner, The Analyst, The Audience Advocate
- high effort: The Questioner, The Analyst, The Audience Advocate, The Devil's Advocate, The First Principles Thinker

For each subagent, use prompt from `[skill]/references/prompts/phase2-question-generation-persona.md`.

Each subagent will:
1. Read REQUEST.md for the brainstorming topic
2. Generate 15-20 questions organized into 3-5 topical clusters
3. Save output to `[session]/questions/by-persona/questions_[persona-name].md`

**Subagent Model:** Claude Sonnet or Gemini Pro (prefer balanced response)

**Step 2B.2: Synthesize Questions (Single Subagent)**

Spawn 1 subagent to consolidate persona questions into topic clusters.

**Target output based on effort level:**
- **Medium effort**: 20-35 questions across 4-7 topic clusters (~5 questions per topic)
- **High effort**: 35-50 questions across 6-9 topic clusters (~6-7 questions per topic)
  - Aim for upper end of range (45-50 questions)
  - Include 2-3 unique questions per topic that challenge assumptions

**Synthesis instructions for subagent:**

1. Read all persona question files and REQUEST.md
2. Track convergence: Note which personas asked similar questions
3. Use convergence as quality signal:
   - **Convergent questions** (multiple personas): Always include - signals importance
   - **Complementary questions** (similar themes): Consolidate into one well-framed question
   - **Unique questions** (one persona):
     - Medium: Include if revealing blind spots or covering missing dimensions
     - High: More liberally include (2-3 per topic) to explore speculative territory
4. Create topic clusters:
   - Arrange in logical flow (foundational → strategic → operational)
   - Medium: 4-7 topics with ~5 questions each (range 4-7)
   - High: 6-9 topics with ~6-7 questions each (range 5-8)
5. Output files:
   - QUESTIONS.md (master list with YAML frontmatter, numbered questions)
   - questions/by-topic/[NN]_[topic-slug].md (one per cluster)

**Subagent Model:** Claude Opus or Gemini Pro (prefer thorough thoughtful response)

**Step 2B.3: Quality Gate**

Before proceeding, verify:

1. **`questions/by-persona/` file count:**
   - Expected: 3 (medium) or 5 (high) `.md` files
   - If count doesn't match: Use Glob to search, move to correct location

2. **`questions/by-topic/` file count:**
   - Expected: Number of topic clusters created in Step 2B.2
   - If count doesn't match: Use Glob to search, move to correct location

3. **`QUESTIONS.md` exists**

If files missing after search, log in PLAN.md Notes and proceed (don't block on failed subagents).

Update `PLAN.md` with Phase 2 complete status and list of topic clusters.

Proceed to Phase 3B.

### Phase 3: Multi-Perspective Brainstorming

**For LOW effort:** Proceed to Phase 3A: Generic Brainstorming

**For MEDIUM or HIGH effort:** Proceed to Phase 3B: Persona-Based Brainstorming

---

#### Phase 3A: Generic Brainstorming (Low Effort Only)

Read `questions/by-topic/` to get the list of numbered topic files. Process topics in numeric order.

For each topic cluster, spawn 1 subagent using prompt from `[skill]/references/prompts/phase3-brainstorm-generic.md`.

The subagent will:
1. Read the topic's question file
2. Provide 3-5 responses per question
3. Save output to responses/[NN]_[topic]/generic-response.md

**Subagent Model:** Claude Sonnet or Gemini Pro (prefer balanced response)

**Quality Gate:** Before proceeding, verify:
- `responses/[NN]_[topic]/` exists for each topic
- Each topic directory contains `generic-response.md`
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with Phase 3 complete status.

Skip to Phase 4A.

---

#### Phase 3B: Persona-Based Brainstorming (Medium/High Effort)

Read `questions/by-topic/` to get the list of numbered topic files. Process topics in numeric order.

For each topic cluster, spawn parallel subagents (3 for medium, 5 for high) using prompt from `[skill]/references/prompts/phase3-brainstorm-persona.md`.

**Select personas only from the Available Personas table.** Match personas to topic needs:
- Technical topics → The Technical Expert, The Analyst, The First Principles Thinker
- User-facing topics → The Audience Advocate, The Storyteller, The Questioner
- Strategic topics → The Visionary, The Futurist, The Devil's Advocate
- Implementation topics → The Pragmatist, The Constraint Flipper, The Momentum Builder

See [personas.md](references/personas.md) for additional selection guidance.

**Subagent Model:** Claude Haiku or Gemini Flash (prefer fast response, volume over depth)

**Quality Gate:** Before proceeding, verify:

For each topic directory in `responses/`:
- **File count in `responses/[NN]_[topic]/`:**
  - Expected: 3 (medium) or 5 (high) `.md` files per topic
  - If count doesn't match: Use Glob to search, move to correct location

If files missing after search, log in PLAN.md Notes and proceed (don't block on failed subagents).

Update `PLAN.md` with Phase 3 complete status.

Proceed to Phase 4B.

### Phase 4: Response Synthesis

**For LOW effort:** Proceed to Phase 4A: Summary Generation

**For MEDIUM or HIGH effort:** Proceed to Phase 4B: Full Synthesis

---

#### Phase 4A: Summary Generation (Low Effort Only)

Spawn parallel subagents (1 per topic cluster) using prompt from `[skill]/references/prompts/phase4-synthesis-low.md`.

Each subagent will:
1. Read the topic's question and response files
2. Create concise summary with key themes and recommended actions
3. Save output to synthesis/[NN]_[topic]_summary.md

**Subagent Model:** Claude Sonnet or Gemini Pro (prefer balanced response)

**Quality Gate:** Before proceeding, verify:
- `synthesis/` directory exists
- One `[NN]_[topic]_summary.md` file per topic
- NO attributed/ subdirectory or _synthesis.md files (low effort only)
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with Phase 4 complete status.

Proceed to Phase 5.

---

#### Phase 4B: Full Synthesis (Medium/High Effort)

Spawn parallel subagents (1 per topic cluster) using prompt from `[skill]/references/prompts/phase4-synthesis.md`.

Each subagent will create THREE output documents:
1. synthesis/attributed/[NN]_[topic].md (with persona attribution)
2. synthesis/[NN]_[topic]_synthesis.md (synthesized without attribution)
3. synthesis/[NN]_[topic]_summary.md (executive summary)

**Subagent Model:** Claude Opus or Gemini Pro (prefer thorough thoughtful response)

**Quality Gate:** Before proceeding, verify:

1. **`synthesis/attributed/` file count:**
   - Expected: 1 `[NN]_[topic].md` file per topic
   - If count doesn't match: Use Glob to search, move to correct location

2. **`synthesis/` file count (excluding attributed/ subdirectory):**
   - Expected: 2 files per topic (`[NN]_[topic]_summary.md` and `[NN]_[topic]_synthesis.md`)
   - Total expected: 2 × number of topics
   - If count doesn't match: Use Glob to search, move to correct location

If files missing after search, log in PLAN.md Notes and proceed (don't block on failed subagents).

Update `PLAN.md` with Phase 4 complete status.

Proceed to Phase 5.

### Phase 5: Final Output (Orchestrator)

#### Step 5.1: Create SYNTHESIS.md

Concatenate all summary and synthesis files into `SYNTHESIS.md`. Alphabetical sorting produces the correct order: topic number first, then `_summary` before `_synthesis` within each topic:

```bash
cat synthesis/[0-9]*.md > SYNTHESIS.md
```

#### Step 5.2: Create BRAINSTORM.md

Read `QUESTIONS.md` and all `synthesis/*_summary.md` files.

Generate final summary in `BRAINSTORM.md` (see [templates.md](references/templates.md)):
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

Update `PLAN.md` with Phase 5 complete status.

## Session Resume

If asked to continue a previous session:

1. Read `PLAN.md` to determine session state
2. Check effort level and last completed phase
3. Verify output files exist for completed phases
4. Resume from next incomplete phase

| PLAN.md Status | Files Present | Action |
|----------------|---------------|--------|
| Phase 2: complete | `QUESTIONS.md` exists | Resume at Phase 3A (low) or 3B (med/high) |
| Phase 3: complete | `responses/` directories populated | Resume at Phase 4A (low) or 4B (med/high) |
| Phase 4: complete | `synthesis/` files exist | Resume at Phase 5 |
| Phase 2: in-progress | Partial questions files | Re-run Phase 2A or 2B |
| Any failure noted | — | Address issue, retry |

**Backwards compatibility:** If PLAN.md lacks effort level field (old session), check file structure:
- If `questions/by-persona/` is empty → treat as low effort
- If `questions/by-persona/` has 2 files → treat as medium (old "low")
- If `questions/by-persona/` has 3 files → treat as high (old "medium")
- If `questions/by-persona/` has 4+ files → treat as high (old "high" eliminated)

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
| Question generation (low) | Sonnet | Comprehensive coverage needed |
| Question generation (med/high) | Sonnet | Balance of speed and quality |
| Question synthesis | Opus | Judgment for deduplication |
| Brainstorming (low) | Sonnet | Balance quality with speed |
| Brainstorming (med/high) | Haiku | Volume over depth |
| Synthesis (low) | Sonnet | User-facing summaries |
| Synthesis (med/high) | Opus | Critical consolidation |
| Final summary | Sonnet | User-facing deliverable |

## References

- [references/personas.md](references/personas.md) — Guidance for persona usage
- [references/personas/*.md](references/personas/*.md) — Full system prompts for all 15 personas
- [references/templates.md](references/templates.md) — Document templates (REQUEST.md, PLAN.md, BRAINSTORM.md, synthesis files)

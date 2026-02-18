# Idea Symphony Skill Briefing (v4)

## Executive Summary

Idea Symphony is a brainstorming facilitation skill that transforms an LLM agent from a single-perspective assistant into a simulated multi-perspective brainstorming panel, mimicking the dynamics of facilitated team ideation sessions.

The skill orchestrates sessions using **multiple subagents, each with their own isolated context window**. Rather than having the LLM agent switch between personas within a single conversation, this skill spawns dedicated subagent tasks—each embodying a distinct thinking archetype—to generate genuinely diverse perspectives unconstrained by shared context.

The skill produces a complete paper trail of all intermediate outputs, enabling transparency, debugging, and the ability to trace any synthesized insight back to its original source.

### Related Skills

Idea Symphony is designed to work alongside **Idea Factory** and **Idea Forge**, which turn completed Symphony sessions into structured action plans. The typical workflow is: run Symphony first to brainstorm, then Factory (or Forge) to make the brainstorm actionable. Factory uses a subagent orchestration pattern; Forge uses Agent Teams for real-time debate (experimental). Both read Symphony output directly without copying.

---

## Target Users & Triggers

### Primary Users
- **Solo creators and knowledge workers** seeking diverse perspectives without a team
- **Small team leads** wanting to augment team brainstorming with structured AI input
- **Product managers** exploring multiple angles of concepts or features
- **Writers and content creators** seeking inspiration and varied viewpoints
- **Anyone working on complex problems** that benefit from multi-perspective analysis

### Trigger Phrases (for skill description)
The skill should activate when users request:
- Brainstorming or ideation sessions
- Multiple perspectives on an idea
- Diverse viewpoints or angles on a concept
- Facilitated thinking sessions
- "Devil's advocate" or contrarian views alongside supportive ones
- Structured exploration of a topic from different angles

Example triggers:
- "Help me brainstorm ideas for..."
- "I want multiple perspectives on..."
- "Can you give me diverse viewpoints about..."
- "Let's do a structured brainstorming session on..."
- "Explore this concept from different angles..."
- "What would different types of thinkers say about..."
- "Help me think through..."

---

## Critical Design Decisions

### Subagents with Isolated Context Windows

The core value proposition of Idea Symphony depends on **true context isolation**:

1. **Genuine Independence**: Each brainstorming participant operates in their own context window, uninfluenced by other participants' responses until synthesis
2. **Parallel Processing**: Subagents can run concurrently, improving throughput for complex sessions
3. **Fresh Perspectives**: Each subagent approaches the brief without the "contamination" of seeing other responses first
4. **Scalability**: Adding more participants doesn't bloat a single context window

### Subagent File Access

Subagents (using `general-purpose` type) have full file access. Instead of the orchestrator reading files and embedding content in prompts, **subagents read files themselves**. The orchestrator provides:

1. File paths to read (inputs from prior phases)
2. Instructions for the task
3. File paths to write (outputs)

This keeps orchestrator context minimal (~20k tokens vs 60-120k+ if embedding content).

### Intermediate Outputs

**All phases must save their outputs to disk.** This creates a paper trail for:
- Debugging and iteration during skill development
- User review of how ideas evolved through the process
- Tracing any synthesized point back to its original contributor
- Resuming or branching sessions from intermediate states

### Performance Note

**Thoroughness over speed.** Quality and diversity matter more than fast completion. The subagent architecture should be leveraged for quality isolation, not just parallelization.

### Model Selection

| Task | Model | Rationale |
|------|-------|-----------|
| Orchestration | Sonnet | Balance of speed and quality |
| Question generation (low) | Sonnet | Comprehensive coverage needed |
| Question generation (medium/high) | Sonnet | Balance of speed and quality |
| Question synthesis | Opus | Judgment for deduplication and convergence |
| Brainstorming (low) | Sonnet | Balance quality with speed |
| Brainstorming (medium/high) | Haiku | Volume over depth per response |
| Synthesis (low) | Sonnet | User-facing summaries |
| Synthesis (medium/high) | Opus | Critical consolidation task |
| Final summary | Sonnet | User-facing deliverable |

### Error Handling

If a subagent fails to produce expected output:
1. Log the failure in PLAN.md with details
2. Attempt to re-run the subagent once
3. If still failing, continue with available outputs and note the gap in PLAN.md
4. Never block the entire session on a single subagent failure

---

## Effort Levels

Effort levels control the depth and structure of the entire session. Each level is optimized for a different class of problem.

| Effort | Phase 2 (Questions) | Phase 3 (Brainstorming) | Phase 4 (Synthesis) | Best For |
|--------|---------------------|-------------------------|---------------------|----------|
| low    | 1 generic prompt    | 1 generic response per topic | Summary only | **Tactical**: Concrete planning, implementation steps, quick decisions |
| medium | 3 personas          | 3 personas per topic    | Full synthesis | **Strategic**: Framework development, complex decisions, design choices |
| high   | 5 personas          | 5 personas per topic    | Full synthesis | **Philosophical**: Foundational thinking, high-stakes decisions, research |

**Default to medium** if user doesn't specify.

### Output Character by Effort Level
- **Low:** Practical, actionable, immediately implementable (costs, materials, times). Target runtime ~10-15 minutes.
- **Medium:** Strategic, framework-oriented, systems-thinking (principles, trade-offs, design patterns). Target runtime ~20-30 minutes.
- **High:** Philosophical, assumption-challenging, theory-informed (foundational questions, research-backed). Target runtime ~45-60 minutes.

### Low Effort Approach
Uses context isolation (separate subagents per topic) but skips the persona system entirely. Single generic question generation creates 15-20 questions in 3-5 clusters. Single generic brainstorming response per cluster provides 3-5 responses per question. Summary-only synthesis skips attribution.

### Medium/High Effort Approach
Uses persona system with multiple perspectives. Full synthesis includes attribution and comprehensive consolidation. Medium effort (3 personas) creates cognitive diversity; high effort (5 personas) enables convergence documentation and worldview diversity.

### Intelligent Effort Suggestion

When the user doesn't specify an effort level, the orchestrator analyzes the request and suggests an appropriate level:

**HIGH effort triggers** (if any match, strongly suggest HIGH):
- High-stakes keywords: "career change", "major decision", "life transition", "should I even"
- Research keywords: "comprehensive analysis", "patterns across", "best practices across"
- Foundational keywords: "purpose", "assumptions", "philosophy", "challenge my thinking"
- Large scope: "complete overhaul", "comprehensive review", "entire organization"

**LOW effort triggers** (if any match, strongly suggest LOW):
- Tactical keywords: "checklist", "packing list", "step-by-step", "shopping list", "how to implement"
- Material keywords: "what do I need", "budget breakdown", "timeline", "schedule"
- Concrete deliverables: "create a [specific thing]", "plan [specific event]"

**MEDIUM effort triggers** (default if no strong HIGH/LOW triggers):
- Strategic keywords: "strategy", "framework", "approach", "design decision"
- Trade-off keywords: "pros and cons", "evaluate options", "compare approaches"
- System keywords: "workflow", "process design", "organizational"

| Request Pattern | Suggested Level | Rationale |
|----------------|----------------|-----------|
| "Create a packing list for..." | LOW | Concrete checklist with specific items |
| "Plan a birthday party for..." | LOW | Tactical event planning |
| "Design a content strategy for..." | MEDIUM | Strategic framework development |
| "Develop a product feature for..." | MEDIUM | Design decisions with trade-offs |
| "I'm considering a career change" | HIGH | High-stakes, foundational decision |
| "Challenge my assumptions about..." | HIGH | Explicit assumption examination |

---

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
│   │   ├── 01_operations.md
│   │   └── ...
│   ├── 01_operations_summary.md      # All effort levels
│   ├── 01_operations_synthesis.md    # Medium/high only
│   └── ...
├── REQUEST.md                  # User request summary
├── USER-QUESTIONS.md           # (optional) User-provided questions to answer
├── PLAN.md                     # Session config and status
├── QUESTIONS.md                # All questions consolidated (canonical order)
├── SYNTHESIS.md                # All summaries + syntheses (in topic order)
└── BRAINSTORM.md               # Final output and session index
```

### Topic Ordering
Phase 2 establishes a logical topic order. Numeric prefixes (`01_`, `02_`, etc.) preserve this order through all subsequent phases. Within each topic, `_summary` sorts before `_synthesis` alphabetically.

### File Naming Convention
- All intermediate files use numeric prefix + descriptive slug: `[NN]_[topic-slug]_[type].md`
- Persona files use `the-` prefix: `the-visionary.md`, `the-pragmatist.md`
- Final outputs from each phase use `ALL-CAPS.md` filename format: `QUESTIONS.md`, `SYNTHESIS.md`, `BRAINSTORM.md`
- Descriptors are lowercase with hyphens

### Low Effort Differences
No `by-persona/` files, responses use `generic-response.md`, `synthesis/` contains only `_summary` files (no `attributed/` or `_synthesis` files).

---

   ## Workflow Overview

   The Idea Symphony skill follows a structured workflow with distinct phases. Phases 2-4 split into A (low effort) and B (medium/high effort) variants.

   ### Phase 1: Context Gathering
   1. Receive user's initial concept, idea, or problem statement
   2. Optionally receive supporting materials (documents, constraints, goals)
   3. Ask about user-defined questions to preserve through all phases
   4. Determine effort level (intelligent suggestion or user-specified)
   5. Determine persona selection based on topic and effort level

   ### Phase 2: Question Generation
   - **Low (Phase 2A):** Single generic subagent generates 15-20 questions in 3-5 clusters
   - **Medium/High (Phase 2B):** 3 or 5 persona subagents generate questions independently, then a synthesis subagent consolidates them into topic clusters

   ### Phase 3: Multi-Perspective Brainstorming
   - **Low (Phase 3A):** 1 generic subagent per topic cluster, 3-5 responses per question
   - **Medium/High (Phase 3B):** 3 or 5 persona subagents per topic cluster, each responding independently

   ### Phase 4: Synthesis
   - **Low (Phase 4A):** Summary-only synthesis per topic cluster
   - **Medium/High (Phase 4B):** Full synthesis producing attributed, synthesis, and summary documents per topic cluster

   ### Phase 5: Final Output
   1. Concatenate synthesis files into `SYNTHESIS.md`
   2. Generate final `BRAINSTORM.md` summary and session index
   3. Present results to user

---

## Workflow In Detail

### Phase 1: Context Gathering (Orchestrator)

The main orchestrator (not a subagent) handles initial setup:

1. Receive user's topic, idea, or problem statement
2. Receive any supporting documents (briefs, research, constraints)
3. Ask the user to confirm a recommended project name (e.g., "Community Garden" or "Habit Tracker")
4. Confirm the creation of a session subdirectory (default: `./[project-name_YYYY-MM-DD]/`)
5. Create `REQUEST.md` summarizing the request
6. **Ask about user-defined questions:**
   - "Do you have specific questions you want the brainstorming process to answer?"
   - If yes: Capture the questions and save as `USER-QUESTIONS.md`
   - If no: Proceed without creating the file
   - **Design note:** USER-QUESTIONS.md is kept separate from REQUEST.md to avoid influencing persona-based question generators in medium/high effort. Persona generators should NOT see user questions — only the generic generator (low effort) and the synthesizer (medium/high) read this file.
7. Determine effort level (see Intelligent Effort Suggestion above)
8. Create `PLAN.md` documenting configuration

**Output:** `REQUEST.md`, `PLAN.md`, optionally `USER-QUESTIONS.md` and `context/` subdirectory

---

### Phase 2: Question Generation

#### Phase 2A: Generic Question Generation (Low Effort Only)

Spawn 1 subagent to generate questions without the persona system.

**Subagent instructions:**
1. Read `[session]/REQUEST.md` for the brainstorming topic
2. Check if `[session]/USER-QUESTIONS.md` exists — if so, read it, preserve user intent, expand/refine, and integrate into topic clusters. Mark any question incorporating a user-provided question with `[User Q]` suffix.
3. Generate 15-20 questions organized into 3-5 topical clusters (plus any user-provided questions)
4. Ensure questions span strategic, tactical, creative, analytical, and human-centered dimensions
5. Create two outputs:
   - `QUESTIONS.md` (master file with all questions in numbered clusters)
   - `questions/by-topic/[NN]_[topic-slug].md` (one file per cluster)

**Quality Gate:** Verify `QUESTIONS.md` exists, `questions/by-topic/` contains 3-5 numbered `.md` files, and `[User Q]` markers match user question count (if applicable).

#### Phase 2B: Persona-Based Question Generation (Medium/High Effort)

**Step 2B.1: Generate Questions (Parallel Subagents)**

Spawn 3 or 5 parallel subagents based on effort level, each with a different persona:
- **Medium:** The Questioner, The Analyst, The Audience Advocate
- **High:** The Questioner, The Analyst, The Audience Advocate, The Devil's Advocate, The First Principles Thinker

Each subagent:
1. Reads and adopts their persona from `[skill]/references/personas/[persona-name].md`
2. Reads `[session]/REQUEST.md` for context
3. Generates 15-20 questions from their perspective, organized into 3-5 topical clusters
4. Saves to `[session]/questions/by-persona/[persona-name].md`

**Key point:** Each persona works independently without seeing other personas' questions. This isolation ensures genuine diversity.

**Step 2B.2: Synthesize Questions (Single Subagent)**

Spawn 1 subagent (Opus model) to consolidate persona questions into topic clusters.

**Target output by effort level:**
- **Medium:** 20-35 questions across 4-7 topic clusters (~5 questions per topic)
- **High:** 35-50 questions across 6-9 topic clusters (~6-7 questions per topic, aim for upper end)

**Synthesis logic:**
1. Read all persona question files and REQUEST.md
2. Check for `USER-QUESTIONS.md` — treat as mandatory input alongside persona files
3. Track convergence (which personas asked similar questions)
4. Use convergence as quality signal:
   - **Convergent questions** (multiple personas): Always include — signals importance
   - **Complementary questions** (similar themes): Consolidate into one well-framed question
   - **Unique questions** (one persona): Include if revealing blind spots; high effort includes 2-3 per topic for speculative territory
   - **User-provided questions (convergent):** Consolidate into synthesized question, mark with `[User Q]`
   - **User-provided questions (non-convergent):** Preserve verbatim in most relevant cluster — never drop
5. Arrange topic clusters in logical flow (foundational → strategic → operational)
6. Output: `QUESTIONS.md` + `questions/by-topic/[NN]_[topic-slug].md`

**Quality Gate:** Verify file counts match expectations, `QUESTIONS.md` exists, and `[User Q]` marker count matches user question count.

---

### Phase 3: Multi-Perspective Brainstorming

Read `questions/by-topic/` to get the list of numbered topic files.

#### Phase 3A: Generic Brainstorming (Low Effort Only)

For each topic cluster, spawn 1 subagent:
1. Read the topic's questions file
2. For each question, provide 3-5 distinct, substantive responses (50-150 words each)
3. Vary across scale, risk profile, timeframe, and focus (process/people/technology)
4. Save to `[session]/responses/[NN]_[topic-slug]/generic-response.md`

#### Phase 3B: Persona-Based Brainstorming (Medium/High Effort)

For each topic cluster, spawn parallel subagents (3 for medium, 5 for high).

**Select personas from the Available Personas table**, matching personas to topic needs:
- Technical topics → The Technical Expert, The Analyst, The First Principles Thinker
- User-facing topics → The Audience Advocate, The Storyteller, The Questioner
- Strategic topics → The Visionary, The Futurist, The Devil's Advocate
- Implementation topics → The Pragmatist, The Constraint Flipper, The Momentum Builder

Each subagent:
1. Reads and adopts their persona
2. Reads `[session]/REQUEST.md` for background context
3. Reads the topic's questions file
4. **Does NOT read other responses** — responds independently
5. For each question, provides 3-5 unique responses from their perspective (50-150 words each)
6. Saves to `[session]/responses/[NN]_[topic-slug]/[persona-name].md`

**Key point:** Context isolation is critical. Each persona must respond independently without seeing other personas' responses.

**Quality Gate:** Verify file count in each topic's `responses/` directory matches expected persona count.

---

### Phase 4: Response Synthesis

#### Phase 4A: Summary Generation (Low Effort Only)

Spawn parallel subagents (1 per topic cluster):
1. Read topic questions and generic response
2. Create concise, actionable summary (500-800 words):
   - **Executive Summary**: 2-3 paragraphs
   - **Key Themes**: 3-5 recurring themes
   - **Recommended Actions**: 4-8 items by timeframe (immediate, near-term, long-term)
   - **Key Considerations**: Opportunities, risks, trade-offs
3. Save to `[session]/synthesis/[NN]_[topic-slug]_summary.md`

No `attributed/` subdirectory or `_synthesis.md` files for low effort.

#### Phase 4B: Full Synthesis (Medium/High Effort)

Spawn parallel subagents (1 per topic cluster):
1. Read REQUEST.md, topic questions, and all persona responses for the topic
2. Track convergence (which personas gave similar responses)
3. Use convergence as quality signal:
   - **Convergent responses** (multiple personas): Always include — signals importance
   - **Complementary responses** (different angles on related themes): Consolidate coherently
   - **Unique responses** (one persona): Include if revealing blind spots
4. For each question, consolidate responses — group by theme, order by consensus level
5. Create THREE output documents:

**Document 1: Attributed** (`synthesis/attributed/[NN]_[topic-slug].md`)
```
### [Short Question Summary]
[Longer question description]

* **Synthesized response summary.** Detailed synthesized text.
  * **Original response summary.** Original response text. *[Persona Name]*
  * **Original response summary.** Original response text. *[Persona Name]*
```

**Document 2: Synthesis** (`synthesis/[NN]_[topic-slug]_synthesis.md`)
Same as Document 1 but without sub-bullets and attribution. Synthesized points only.

**Document 3: Summary** (`synthesis/[NN]_[topic-slug]_summary.md`)
```
## Executive Summary
[3-5 paragraphs]

## Key Themes
[Bulleted list of major themes]

## Recommended Next Steps
[Top 10 action items]
```

**Quality Gate:** Verify `attributed/` contains 1 file per topic, `synthesis/` contains 2 files per topic (`_summary` and `_synthesis`).

---

### Phase 5: Final Output (Orchestrator)

#### Step 5.1: Create SYNTHESIS.md

Concatenate all summary and synthesis files using bash:
```bash
cat synthesis/[0-9]*.md > SYNTHESIS.md
```
Alphabetical sorting produces correct order: topic number first, then `_summary` before `_synthesis` within each topic.

#### Step 5.2: Create BRAINSTORM.md

Read `QUESTIONS.md` and all `synthesis/*_summary.md` files. Generate final summary:
- Executive summary across all topics
- Session overview
- Key themes
- Topic summaries with relative links to synthesis files
- Recommended next steps
- Session index linking to all generated files

#### Step 5.3: Present Results

Output brief summary to user:
- Highlight 3-5 key insights
- Note location of `BRAINSTORM.md`
- Mention intermediate files are available for review
- Offer to explore specific ideas further

Update `PLAN.md` with Phase 5 complete status.

---

## Session Resume Capability

The PLAN.md file enables session resumption if a brainstorming session is interrupted.

### Resume Logic

When asked to resume a session, the orchestrator should:

1. **Read PLAN.md** to determine session state and effort level
2. **Check status fields** to identify the last completed phase
3. **Verify output files** exist for completed phases
4. **Resume from the next incomplete phase** (routing to A or B variant based on effort level)

### Resume Decision Table

| PLAN.md Status | Files Present | Action |
|----------------|---------------|--------|
| Phase 2: complete | `QUESTIONS.md` exists | Resume at Phase 3A (low) or 3B (medium/high) |
| Phase 3: complete | `responses/` directories populated | Resume at Phase 4A (low) or 4B (medium/high) |
| Phase 4: complete | `synthesis/` files exist | Resume at Phase 5 |
| Phase 2: in-progress | Partial `questions/` files | Re-run Phase 2A or 2B |
| Any phase shows failure in Notes | — | Address noted issue, retry |

### Backwards Compatibility

If PLAN.md lacks an effort level field (old session), check file structure:
- If `questions/by-persona/` is empty → treat as low effort
- If `questions/by-persona/` has 2 files → treat as medium
- If `questions/by-persona/` has 3 files → treat as high
- If `questions/by-persona/` has 4+ files → treat as high

Present resume status to user before continuing.

---

## The Brainstorming Personas

The skill includes a **closed set of 15 distinct personas**. Do not invent, modify, or use any personas not listed here. Each persona's full system prompt is stored in `references/personas/the-[persona-name].md`.

| Persona | Prompt File | Core Function | Best For |
|---------|-------------|---------------|----------|
| The Visionary | `the-visionary.md` | Future-focused, transformative thinking | Opening up possibilities, long-term thinking |
| The Pragmatist | `the-pragmatist.md` | Feasibility and implementation focus | Grounding ideas, identifying practical paths |
| The Devil's Advocate | `the-devils-advocate.md` | Constructive challenge and risk identification | Stress-testing ideas, finding blind spots |
| The Connector | `the-connector.md` | Relationship identification between ideas | Integration, synergy discovery |
| The Analyst | `the-analyst.md` | Systematic breakdown and pattern recognition | Complex problems, data-driven decisions |
| The Storyteller | `the-storyteller.md` | Narrative framing, user journey visualization | Making ideas concrete, emotional resonance |
| The Synthesizer | `the-synthesizer.md` | Consolidation and theme extraction | Summarization, finding common ground |
| The Momentum Builder | `the-momentum-builder.md` | "Yes, and..." expansion | Building on others' ideas, maintaining energy |
| The Audience Advocate | `the-audience-advocate.md` | End-user/community perspective | User-centered design, accessibility |
| The Technical Expert | `the-technical-expert.md` | Implementation feasibility | Technical decisions, architecture |
| The Analogist | `the-analogist.md` | Cross-domain pattern recognition | Novel combinations, borrowed innovation |
| The Questioner | `the-questioner.md` | Deep probing and assumption challenging | Discovery phase, uncovering hidden needs |
| The Constraint Flipper | `the-constraint-flipper.md` | Turning limitations into opportunities | Creative problem-solving under constraints |
| The Futurist | `the-futurist.md` | Trend analysis and future-proofing | Strategic planning, long-term viability |
| The First Principles Thinker | `the-first-principles-thinker.md` | Deconstruction to fundamentals | Questioning assumptions, simplification |

### Persona Selection by Phase

**Phase 2 (Question Generation):**
Always include The Questioner. Add from: The Analyst, The Audience Advocate, The Devil's Advocate, The First Principles Thinker. Exact sets:
- Medium: The Questioner, The Analyst, The Audience Advocate
- High: The Questioner, The Analyst, The Audience Advocate, The Devil's Advocate, The First Principles Thinker

**Phase 3 (Brainstorming):**
Select 3 or 5 personas based on effort level, matching to topic needs:
- Technical topics → The Technical Expert, The Analyst, The First Principles Thinker
- User-facing topics → The Audience Advocate, The Storyteller, The Questioner
- Strategic topics → The Visionary, The Futurist, The Devil's Advocate
- Implementation topics → The Pragmatist, The Constraint Flipper, The Momentum Builder

### Recommended Combinations (5 personas)

**Innovation Focus:** The Visionary, The Analogist, The Connector, The Devil's Advocate, The Futurist

**Implementation Focus:** The Pragmatist, The Technical Expert, The Analyst, The Constraint Flipper, The First Principles Thinker

**User-Centered Focus:** The Audience Advocate, The Storyteller, The Questioner, The Devil's Advocate, The Synthesizer

**Balanced General Session:** The Visionary, The Pragmatist, The Devil's Advocate, The Audience Advocate, The Synthesizer

### Persona System Prompt Structure

Each persona prompt (in `references/personas/`) includes:
1. Role declaration
2. Core characteristics (4-6 bullet points)
3. Participation guidelines (6-8 specific behaviors)
4. Avoid list (3-4 anti-patterns)
5. Example contributions (2-3 sample statements in their voice)

---

## Skill File Structure

```
idea-symphony/
├── SKILL.md                    # Main skill file (workflow orchestration, phase routing)
└── references/
    ├── personas.md             # Persona index and selection guidance
    ├── personas/               # Individual persona prompts (15 total)
    │   ├── the-visionary.md
    │   ├── the-pragmatist.md
    │   └── ...
    ├── prompts/                # Phase prompts (extracted from SKILL.md)
    │   ├── phase2-question-generation-generic.md
    │   ├── phase2-question-generation-persona.md
    │   ├── phase2-question-synthesis.md
    │   ├── phase3-brainstorm-generic.md
    │   ├── phase3-brainstorm-persona.md
    │   ├── phase4-synthesis-low.md
    │   └── phase4-synthesis.md
    ├── effort-level-guidance.md  # Detailed use case examples and decision criteria
    └── templates.md              # Document templates (REQUEST.md, PLAN.md, BRAINSTORM.md, etc.)
```

### SKILL.md Frontmatter

```yaml
name: idea-symphony
description: >
  Multi-perspective brainstorming orchestration using subagents with isolated
  context windows. Spawns multiple AI personas as separate agents to generate
  genuinely diverse perspectives on any topic. Produces complete paper trail
  of intermediate outputs.

  Use when users want: brainstorming sessions, multiple perspectives on ideas,
  diverse viewpoints, facilitated ideation, devil's advocate analysis, or
  structured exploration from different thinking styles.

  Triggers: "brainstorm", "multiple perspectives", "diverse viewpoints",
  "different angles", "explore this idea", "what would different people think",
  "devil's advocate", "pros and cons from different views", "help me think through",
  "ideation session"
```

---

## Example Session Flow (Medium Effort)

**User Input:**
> "Help me brainstorm a community tool library program for our neighborhood nonprofit. We want residents to be able to borrow tools like lawnmowers, drills, and ladders instead of everyone buying their own."

**Orchestrator Actions:**

1. Create `./tool-library_2026-02-15/` session directory
2. Create `REQUEST.md` summarizing the user's idea
3. Ask about user-defined questions → user says no → skip `USER-QUESTIONS.md`
4. Analyze request: no strong HIGH/LOW triggers → suggest MEDIUM effort
5. User accepts MEDIUM effort
6. Select question personas: The Questioner, The Analyst, The Audience Advocate
7. Document configuration in `PLAN.md`
8. Spawn 3 question generators (Phase 2B.1), outputs to `questions/by-persona/`
9. Spawn question synthesizer (Phase 2B.2), outputs to `QUESTIONS.md` + `questions/by-topic/`
10. Update `PLAN.md` with Phase 2 complete, list topic clusters (e.g., Operations, Community Engagement, Sustainability)
11. For each cluster, select 3 brainstorming personas matched to topic
12. Spawn 9 brainstormers total (3 per cluster, Phase 3B), outputs to `responses/`
13. Update `PLAN.md` with Phase 3 complete
14. Spawn 3 synthesizers (1 per cluster, Phase 4B), outputs to `synthesis/`
15. Update `PLAN.md` with Phase 4 complete
16. Concatenate synthesis files into `SYNTHESIS.md`
17. Generate final summary in `BRAINSTORM.md`
18. Present results to user

**Final User-Facing Output:**
- Display brief summary of key insights
- Note: "Complete results saved in `./tool-library_2026-02-15/BRAINSTORM.md`"
- Note: "All intermediate outputs available in the session directory for reference"
- Offer to explore specific ideas further

---

## Quality Gates

Each phase includes verification steps before proceeding:

| Phase | Check | Expected |
|-------|-------|----------|
| Phase 2A | `QUESTIONS.md` + `by-topic/` files | 1 master + 3-5 topic files |
| Phase 2B | `by-persona/` + `by-topic/` files | 3 or 5 persona files + topic files |
| Phase 2B | `[User Q]` markers (if applicable) | Count matches user question count |
| Phase 3A | `responses/[NN]_[topic]/` per topic | 1 `generic-response.md` per topic |
| Phase 3B | `responses/[NN]_[topic]/` per topic | 3 or 5 persona files per topic |
| Phase 4A | `synthesis/` files | 1 `_summary.md` per topic, no `attributed/` |
| Phase 4B | `synthesis/` + `attributed/` files | 1 attributed + 2 synthesis files per topic |

If files are missing after search: log in PLAN.md Notes and proceed. Never block the session on a single subagent failure.

---

## Success Criteria

The skill succeeds when:

1. **Subagent Isolation**: Each participant genuinely operates independently until synthesis
2. **Complete Paper Trail**: All intermediate outputs are saved and accessible
3. **Perspective Diversity**: Synthesized output contains meaningfully different viewpoints
4. **Traceability**: Any synthesized point can be traced to its source persona(s) (medium/high)
5. **Persona Authenticity**: Each persona's contributions sound distinct and true to their archetype (medium/high)
6. **Actionable Output**: Final synthesis includes concrete next steps
7. **Domain Flexibility**: Works for tech products, nonprofit initiatives, creative projects, etc.
8. **Resumability**: Interrupted sessions can be continued from the last completed phase
9. **User Question Preservation**: User-defined questions appear in final output with `[User Q]` markers

---

## Quick Reference: Orchestrator Checklist

### Phase 1: Context Gathering
- [ ] Receive user request and any supporting documents
- [ ] Confirm project name with user
- [ ] Create session directory structure
- [ ] Save `REQUEST.md`
- [ ] Ask about user-defined questions → save `USER-QUESTIONS.md` if applicable
- [ ] Determine effort level (suggest or accept user preference)
- [ ] Save `PLAN.md`

### Phase 2: Question Generation
**Low (2A):**
- [ ] Spawn 1 generic question generator
- [ ] Verify `QUESTIONS.md` + `questions/by-topic/` files
- [ ] Update `PLAN.md` status

**Medium/High (2B):**
- [ ] Spawn 3 or 5 persona question generators → `questions/by-persona/`
- [ ] Spawn synthesizer with all persona questions → `QUESTIONS.md` + `questions/by-topic/`
- [ ] Verify file counts and `[User Q]` markers
- [ ] Update `PLAN.md` status

### Phase 3: Brainstorming
**Low (3A):**
- [ ] For each topic: spawn 1 generic brainstormer → `responses/[NN]_[topic]/generic-response.md`
- [ ] Update `PLAN.md` status

**Medium/High (3B):**
- [ ] For each topic: spawn 3 or 5 persona brainstormers → `responses/[NN]_[topic]/`
- [ ] Verify file counts per topic
- [ ] Update `PLAN.md` status

### Phase 4: Synthesis
**Low (4A):**
- [ ] For each topic: spawn summary generator → `synthesis/[NN]_[topic]_summary.md`
- [ ] Verify no `attributed/` or `_synthesis.md` files created
- [ ] Update `PLAN.md` status

**Medium/High (4B):**
- [ ] For each topic: spawn synthesizer → 3 output files
- [ ] Verify `attributed/` and `_synthesis.md` file counts
- [ ] Update `PLAN.md` status

### Phase 5: Final Output
- [ ] Concatenate synthesis files → `SYNTHESIS.md`
- [ ] Read summaries, generate → `BRAINSTORM.md`
- [ ] Update `PLAN.md` status to complete
- [ ] Present results to user

---

## Appendix: Key Differences from Original Webapp Design

| Aspect | Webapp Version | Skill Version |
|--------|---------------|---------------|
| Multiple perspectives | Different AI models (GPT-4, Gemini, Claude) | Same model, different persona subagents |
| Context isolation | Inherent (separate API calls) | Via subagent task spawning |
| Intermediate outputs | Stored in database | Saved as markdown files |
| Human participation | Planned feature | User-defined questions + question review |
| Real-time progress | WebSocket updates | File-based checkpoints via PLAN.md |
| Cost management | API cost estimation | Token usage across subagents |
| Session resume | Database state | PLAN.md status fields |

---

*This briefing document reflects the current state of the Idea Symphony skill (SKILL.md v4), including effort-level-dependent phase routing, intelligent effort suggestion, user-defined question preservation, subagent file access patterns, convergence-based synthesis, and quality gates.*

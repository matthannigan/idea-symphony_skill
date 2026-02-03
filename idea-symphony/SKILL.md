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
│   ├── by-persona/             # One file per question-generating persona
│   │   ├── the-questioner.md
│   │   ├── the-analyst.md
│   │   └── ...
│   └── by-topic/               # Numbered files preserve topic order
│       ├── 01_operations.md
│       ├── 02_community-engagement.md
│       └── ...
├── responses/
│   └── [NN_topic]/             # Numbered directories match topic order
│       ├── the-visionary.md
│       ├── the-pragmatist.md
│       └── ...
├── synthesis/
│   ├── attributed/             # Full responses with persona attributions
│   │   ├── 01_operations_attributed.md
│   │   └── ...
│   ├── 01_operations_summary.md
│   ├── 01_operations_synthesis.md
│   └── ...
├── REQUEST.md                  # User request summary
├── PLAN.md                     # Session config and status
├── QUESTIONS.md                # All questions consolidated (canonical order)
├── SYNTHESIS.md                # All summaries + syntheses (in topic order)
└── BRAINSTORM.md               # Final output and session index
```

**Topic ordering:** Step 2.2 establishes a logical topic order. Numeric prefixes (`01_`, `02_`, etc.) preserve this order through all subsequent phases. Within each topic, `_summary` sorts before `_synthesis` alphabetically.

## Effort Levels

| Effort | Phase 2 (Questions) | Phase 3 (Brainstorming) |
|--------|---------------------|-------------------------|
| low    | 2 personas          | 3 personas per cluster  |
| medium | 3 personas          | 5 personas per cluster  |
| high   | 4 personas          | 7 personas per cluster  |

**Default to medium** if user doesn't specify.

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

#### Step 2.1: Generate Questions (Parallel Subagents)

Spawn 2-4 parallel subagents based on effort level. **Always include The Questioner.**

Select additional personas **only from the Available Personas table**:
- low: +1 from [The Analyst, The First Principles Thinker, The Devil's Advocate, The Audience Advocate]
- medium: +2 from the above
- high: +3 from the above

**Subagent Prompt:**

```
You are [PERSONA NAME], generating probing questions for a brainstorming session.

1. Read [skill]/references/personas/[persona-name].md and adopt the persona described
2. Read [session]/REQUEST.md for the user's brainstorming request and examine any additional files mentioned

Generate 10-15 probing questions that should be answered to develop this idea more fully.

Format requirements:
- Use Markdown headings to group related questions topically
- Format each question as: **Short question summary**: Longer question description with context
- Put your persona name at the top of the document
- Do not add preamble, commentary, or follow-up inquiries

Save your response to: [session]/questions/by-persona/questions_[persona-name].md
```

**Subagent Model:** Claude Sonnet or Gemini Pro (prefer balanced response)

#### Step 2.2: Synthesize Questions (Single Subagent)

Spawn 1 subagent to consolidate questions into topic clusters.

**Subagent Prompt:**

```
Synthesize questions from multiple participants into a consolidated, organized list of questions.

1. Read [session]/REQUEST.md for the original brainstorming request
2. Read all files in [session]/questions/by-persona/

Synthesize these into a consolidated, organized list:
1. Eliminate duplicate or highly similar questions
2. Group remaining questions under relevant topical headings
3. Arrange topics in a logical flow (foundational → strategic → operational)
4. Each group should contain approximately 5 questions (4 at a minimum, 8 maximum)
   - If question count exceeds 8, break up the group into 2 or more groups
   - If question count fails to reach at least 4, combine the questions with another group
5. Ensure coverage across strategic, tactical, creative, and analytical dimensions

Format:
- Use Markdown headings for topic groups
- Format each question as: **Short question summary**: Longer question description
- Do not add preamble or follow-up inquiries

Output:
1. Save complete list to: [session]/QUESTIONS.md
   - Topics should appear in the logical order you've determined
2. Save each topic group as a numbered file: [session]/questions/by-topic/[NN]_[topic-name].md
   - Use two-digit prefix matching topic order (01_, 02_, 03_, etc.)
   - Example: 01_operations.md, 02_community-engagement.md, 03_sustainability.md
```

**Subagent Model:** Claude Opus or Gemini Pro (prefer thorough thoughtful, response)

#### Step 2.3: Validate Phase 2 Outputs (Quality Gate)

Before proceeding, verify all expected files are present:

1. **Verify `questions/by-persona/` file count:**
   - Expected: 2 (low), 3 (medium), or 4 (high) `.md` files
   - If count doesn't match: Use Glob to search session directory for missing persona files, move to correct location

2. **Verify `questions/by-topic/` file count:**
   - Expected: Number of topic clusters created in Step 2.2
   - If count doesn't match: Use Glob to search session directory for missing topic files, move to correct location

3. **Verify `QUESTIONS.md` exists**

If files are missing and cannot be found after search, log the issue in PLAN.md Notes section and proceed (don't block the session on missing files from failed subagents).

Update `PLAN.md` with Phase 2 complete status and list of topic clusters.

### Phase 3: Multi-Persona Brainstorming

Read `questions/by-topic/` to get the list of numbered topic files. Process topics in numeric order.

For each topic cluster, spawn parallel subagents (3/5/7 based on effort).

**Select personas only from the Available Personas table.** Match personas to topic needs:
- Technical topics → The Technical Expert, The Analyst, The First Principles Thinker
- User-facing topics → The Audience Advocate, The Storyteller, The Questioner
- Strategic topics → The Visionary, The Futurist, The Devil's Advocate
- Implementation topics → The Pragmatist, The Constraint Flipper, The Momentum Builder

See [personas.md](references/personas.md) for additional selection guidance.

**Subagent prompt:**

```
You are [PERSONA NAME], a coach assisting in refining an idea through structured brainstorming.

1. Read [skill]/references/personas/[persona-name].md and adopt the persona described
2. Read [session]/REQUEST.md for background on the idea being brainstormed and examine any additional files mentioned
3. Read [session]/questions/by-topic/[NN]_[topic].md for the questions to respond to
4. DO NOT read any other responses in [session]/responses; you must respond independently using only the context provided above.

For each question, provide 3-5 unique, detailed responses. Make responses:
- Specific and concrete (not generic advice)
- Actionable where appropriate
- True to your persona's perspective

Format your response using this EXACT structure:

# [Topic Name] - [Your Persona Name]

## [Question 1 Short Summary]

* **Response summary.** Detailed response text with specifics, examples, or reasoning.
* **Response summary.** Detailed response text with specifics, examples, or reasoning.
* **Response summary.** Detailed response text with specifics, examples, or reasoning.

## [Question 2 Short Summary]

* **Response summary.** Detailed response text with specifics, examples, or reasoning.
...

Rules:
- Use Title Case for all headings
- No numbering, dividers, or sub-headers beyond what's shown above
- One ## heading per question, matching the question's short summary

Save to: [session]/responses/[NN]_[topic]/[persona-name].md
```

**Subagent Model:** Claude Haiku or Gemini Flash (prefer a fast response, volume over depth)

#### Step 3.2: Validate Phase 3 Outputs (Quality Gate)

Before proceeding, verify all expected files are present:

For each topic directory in `responses/`:

1. **Verify file count in `responses/[NN]_[topic]/`:**
   - Expected: 3 (low), 5 (medium), or 7 (high) `.md` files per topic
   - If count doesn't match: Use Glob to search session directory for missing persona response files, move to correct location

If files are missing and cannot be found after search, log the issue in PLAN.md Notes section and proceed (don't block the session on missing files from failed subagents).

Update `PLAN.md` with Phase 3 complete status.

### Phase 4: Response Synthesis

Spawn parallel subagents (1 per topic cluster) to synthesize responses.

**Subagent prompt:**

````
You are a skilled facilitator synthesizing a brainstorming session.

1. Read [session]/REQUEST.md for the original brainstorming request and examine any additional files mentioned
2. Read [session]/questions/by-topic/[NN]_[topic].md for the questions in this topic cluster
3. Read all files in [session]/responses/[NN]_[topic]/ for participant responses

Create THREE output documents:

---

## Document 1: `[session]/synthesis/attributed/[NN]_[topic].md`

Structure:
```
# Brainstorming Synthesis: [Topic] - With Attribution

## Synthesized Insights by Question

### [Short Question Summary]

[Longer question description]

[For each question, consolidate similar responses into unified points.]
[Order by consensus - most agreement first, unique ideas last.]
[Preserve important details while eliminating redundancy.]

Format each synthesized response as:
* **Short synthesized response summary.** Detailed synthesized response text.

Then include originals as sub-bullets with attribution:
  * **Original short summary.** Original detailed text. *[Persona Name]*
```

---

## Document 2: `[session]/synthesis/[NN]_[topic]_synthesis.md`

Same as Document 1, but remove the sub-bullets with attribution. Only synthesized content remains.

---

## Document 3: `[session]/synthesis/[NN]_[topic]_summary.md`

Structure:
```
# Brainstorming Session: [Topic] - Summary

## Executive Summary
[3-5 paragraphs of most important insights]

## Key Themes
[Bulleted list of major themes across all questions]

## Recommended Next Steps
[Top 10 action items based on strongest ideas]
```

---

Guidelines:
- Preserve unique ideas even if only one participant mentioned them
- Order consolidated points by consensus level
- Maintain **Summary.** Detail format
- Synthesized version should be readable standalone
````

**Subagent Model:** Claude Sonnet or Gemini Pro (prefer balanced response)

#### Step 4.2: Validate Phase 4 Outputs (Quality Gate)

Before proceeding, verify all expected files are present:

1. **Verify `synthesis/attributed/` file count:**
   - Expected: 1 `[NN]_[topic].md` file per topic (matches number of topics in `questions/by-topic/`)
   - If count doesn't match: Use Glob to search session directory for missing attributed files, move to correct location

2. **Verify `synthesis/` file count (excluding `attributed/` subdirectory):**
   - Expected: 2 files per topic (`[NN]_[topic]_summary.md` and `[NN]_[topic]_synthesis.md`)
   - Total expected: 2 × number of topics
   - If count doesn't match: Use Glob to search session directory for missing summary/synthesis files, move to correct location

If files are missing and cannot be found after search, log the issue in PLAN.md Notes section and proceed (don't block the session on missing files from failed subagents).

Update `PLAN.md` with Phase 4 complete status.

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
2. Check status fields for last completed phase
3. Verify output files exist for completed phases
4. Resume from next incomplete phase

| PLAN.md Status | Files Present | Action |
|----------------|---------------|--------|
| Phase 2: complete | `QUESTIONS.md` exists | Resume at Phase 3 |
| Phase 3: complete | `responses/` directories populated | Resume at Phase 4 |
| Phase 4: complete | `synthesis/` files exist | Resume at Phase 5 |
| Phase 2: in-progress | Partial `questions/by-persona/` | Re-run Phase 2 |
| Any failure noted | — | Address issue, retry |

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
| Question generation | Sonnet | Balance of speed and quality |
| Question synthesis | Opus | Judgment for deduplication |
| Brainstorming responses | Haiku | Volume over depth |
| Response synthesis | Opus | Critical consolidation |
| Final summary | Sonnet | User-facing deliverable |

## References

- [references/personas.md](references/personas.md) — Guidance for persona usage
- [references/personas/*.md](references/personas/*.md) — Full system prompts for all 15 personas
- [references/templates.md](references/templates.md) — Document templates (REQUEST.md, PLAN.md, BRAINSTORM.md, synthesis files)

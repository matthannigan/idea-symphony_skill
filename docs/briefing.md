# Idea Symphony Skill Briefing (v3)

## Executive Summary

Idea Symphony is a brainstorming facilitation skill that transforms Claude from a single-perspective assistant into a simulated multi-perspective brainstorming panel, mimicking the dynamics of facilitated team ideation sessions.

The skill orchestrates the sessions using **multiple subagents, each with their own isolated context window**. Rather than having Claude switch between personas within a single conversation, this skill spawns dedicated subagent tasks—each embodying a distinct thinking archetype—to generate genuinely diverse perspectives unconstrained by shared context.

The skill produces a complete paper trail of all intermediate outputs, enabling transparency, debugging, and the ability to trace any synthesized insight back to its original source.

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

---

## Critical Design Decisions

### Subagents with Isolated Context Windows

The core value proposition of Idea Symphony depends on **true context isolation**:

1. **Genuine Independence**: Each brainstorming participant operates in their own context window, uninfluenced by other participants' responses until synthesis
2. **Parallel Processing**: Subagents can run concurrently, improving throughput for complex sessions
3. **Fresh Perspectives**: Each subagent approaches the brief without the "contamination" of seeing other responses first
4. **Scalability**: Adding more participants doesn't bloat a single context window

### Passing Context to Subagents

Subagents cannot directly read files from previous phases on their own. The orchestrator must:
1. Read the necessary files from prior phases
2. Include the content in the subagent's task prompt
3. Instruct the subagent where to save its output

Example: When spawning brainstorming participants, the orchestrator reads `questions/by-topic/questions_[topic-cluster].md` and includes that content in each participant's prompt.

### Intermediate Outputs

**All phases must save their outputs to disk.** This creates a paper trail for:
- Debugging and iteration during skill development
- User review of how ideas evolved through the process
- Tracing any synthesized point back to its original contributor
- Resuming or branching sessions from intermediate states

### Performance Note

**Speed is not the priority.** Thoroughness, perspective diversity, and complete intermediate output capture are more important than fast completion. The subagent architecture should be leveraged for quality isolation, not just parallelization.

### Model Selection Guidance

| Task Type | Recommended Tier | Rationale |
|-----------|------------------|-----------|
| Question generation | Standard (Sonnet) | Balance of speed and quality |
| Question synthesis | Thorough (Sonnet/Opus) | Requires judgment to eliminate duplication |
| Brainstorming responses | Fast (Haiku) | Volume over depth per response |
| Response synthesis | Thorough (Sonnet/Opus) | Critical consolidation task |
| Final summary | Thorough (Sonnet/Opus) | User-facing deliverable |

### Error Handling

If a subagent fails to produce expected output:
1. Log the failure in PLAN.md with details
2. Attempt to re-run the subagent once
3. If still failing, continue with available outputs and note the gap in PLAN.md
4. Never block the entire session on a single subagent failure

---

## Directory Structure

```
[project-name_YYYY-MM-DD]/
│
├── context/ (optional)
│   └── ... (copies of user-submitted files)
│
├── questions/
│   ├── by-persona/
│   │   ├── questions_questioner.md
│   │   ├── questions_analyst.md
│   │   ├── questions_first-principles-thinker.md
│   │   └── ... (one file per question-generating persona)
│   ├── by-topic/
│   │   ├── questions_[topic-cluster-1].md
│   │   ├── questions_[topic-cluster-2].md
│   │   └── ... (one file per topic cluster)
│   └── QUESTIONS.md (all questions in 1 document)
│
├── responses/
│   ├── [topic-cluster-1]/
│   │   ├── responses_[topic-cluster-1]_visionary.md
│   │   ├── responses_[topic-cluster-1]_pragmatist.md
│   │   └── ...
│   ├── [topic-cluster-2]/
│   │   ├── responses_[topic-cluster-2]_devils-advocate.md
│   │   ├── responses_[topic-cluster-2]_constraint-flipper.md
│   │   └── ...
│   └── ... (one directory per topic cluster, one file per responding persona)
│
├── synthesis/
│   ├── synthesis_[topic-cluster-1]_with-attribution.md
│   ├── synthesis_[topic-cluster-1]_merged.md
│   ├── synthesis_[topic-cluster-1]_summary.md
│   ├── synthesis_[topic-cluster-2]_with-attribution.md
│   ├── synthesis_[topic-cluster-2]_merged.md
│   ├── synthesis_[topic-cluster-2]_summary.md
│   ├── ... (three files per topic cluster)
│   └── SYNTHESIS.md (all _summary & _merged topic clusters in 1 document)
│
├── REQUEST.md (summary of user request and index of user-submitted files)
├── PLAN.md (session configuration, status tracking, and notes)
└── BRAINSTORM.md (final output and session index)
```

### File Naming Convention
- All intermediate files use `[descriptor1]_[descriptor2].md` filename format
- Descriptors should be lowercase with hyphens
- Persona names in filenames should match the persona exactly (e.g., `first-principles-thinker`, not `fpt`)
- Final outputs from each phase use `ALL-CAPS.md` filename format

---

## Workflow Overview

The Idea Symphony skill follows a structured workflow with distinct phases:

### Phase 1: Context Gathering
1. Receive user's initial concept, idea, or problem statement
2. Optionally receive supporting materials (documents, constraints, goals)
3. Clarify scope and focus areas if needed
4. Determine which personas would be most valuable for this topic

### Phase 2: Question Generation
1. Generate probing questions about the concept using analytical thinking
2. Organize questions into thematic clusters
3. Optionally present questions for user review/editing before proceeding

### Phase 3: Multi-Persona Brainstorming
1. Cycle through selected personas (typically 5)
2. Each persona responds to the questions/concept in their characteristic style
3. Maintain clear attribution of which persona contributed which ideas

### Phase 4: Synthesis
1. Consolidate all persona contributions
2. Identify common themes and complementary ideas
3. Highlight areas of tension or disagreement
4. Produce attributed, merged, and summary output versions

### Phase 5: Final Output
1. Gather together all generated content
2. Summarize results for user

---

## Workflow In Detail

### Phase 1: Context Gathering (Orchestrator)

The main orchestrator (not a subagent) handles initial setup:

1. Receive user's topic, idea, or problem statement
2. Receive any supporting documents (briefs, research, constraints)
3. Ask the user to confirm a recommended project name (e.g., "Community Garden" or "Habit Tracker")
4. Confirm the creation of a session subdirectory within the project root or a specified subdirectory (e.g., `./[project-name_YYYY-MM-DD]/` or `docs/[project-name_YYYY-MM-DD]/`) 
5. Create `REQUEST.md` to summarize the above items and establish an index of supporting documents
6. Ask the user to specify the effort amount (low, medium, high), which determines the number of brainstorming participants. **Default to medium effort if user doesn't specify.**
7. Determine persona selection based on topic (or use defaults) and document rationale
8. Document decisions and next steps in `PLAN.md`

#### Effort Selection

The user can specify the brainstorming effort/complexity. This determines the number of participants/subagents in each project phase.

| Phase | Effort | Participants | 
|-------|--------|--------------|
| Phase 2: Question Generation | low | 2 |
| Phase 2: Question Generation | medium | 3 |
| Phase 2: Question Generation | high | 4 |
| Phase 3: Multi-Persona Brainstorming | low | 3 |
| Phase 3: Multi-Persona Brainstorming | medium | 5 |
| Phase 3: Multi-Persona Brainstorming | high | 7 |

**Default:** If the user does not specify an effort level, default to **medium**.

#### REQUEST.md Structure

```markdown
# Brainstorming Request: [Project Name]

## User Request
[Original user prompt/request]

## Supporting Documents
- [filename1.md] — [brief description]
- [filename2.pdf] — [brief description]

## Scope & Constraints
[Any constraints, goals, or focus areas specified by the user]

## Session Created
[YYYY-MM-DD]
```

#### PLAN.md Structure

```markdown
# Brainstorming Plan: [Project Name]

## Session Configuration
- **Effort Level:** [low/medium/high]
- **Date:** [YYYY-MM-DD]
- **Session Directory:** [path]

## Phase 2: Question Generation
- **Personas:** [list with rationale]
- **Status:** [pending/in-progress/complete]
- **Output Files:** [list when complete]

## Phase 3: Brainstorming
- **Topic Clusters:** [list after Phase 2 completes]
- **Personas per Cluster:** [list with rationale]
- **Status:** [pending/in-progress/complete]
- **Output Files:** [list when complete]

## Phase 4: Synthesis
- **Status:** [pending/in-progress/complete]
- **Output Files:** [list when complete]

## Phase 5: Final Output
- **Status:** [pending/in-progress/complete]

## Notes & Issues
[Any issues, user feedback, subagent failures, or decisions made during the session]
```

#### Persona Selection Rationale

The orchestrator should document persona selection rationale in PLAN.md. Example:

```markdown
## Phase 3: Brainstorming
- **Personas per Cluster:**
  - The Audience Advocate — essential for community-focused initiative
  - The Pragmatist — operational logistics are central to this idea
  - The Constraint Flipper — budget/resource limitations likely
  - The Technical Expert — inventory/checkout system considerations
  - The Visionary — long-term community impact potential
```

**Output:** `REQUEST.md`, `PLAN.md`, and optionally a `context/` subdirectory

---

### Phase 2: Question Generation

#### Step 2.1: Generate Probing Questions

**Spawn 2-4 parallel subagents**, each with a different question-generating persona. **Always include The Questioner persona.**

Based on the user's effort selection, add additional personas (1 if low effort, 2 if medium effort, or 3 if high effort) from the following recommended list:
- The Analyst  
- The First Principles Thinker
- The Devil's Advocate
- The Audience Advocate

**Subagent prompt template:**

```
You are [PERSONA NAME].

[INSERT FULL PERSONA SYSTEM PROMPT FROM REFERENCES]

Review the following information about an idea the user wants to brainstorm:

---
[ORCHESTRATOR INSERTS: User's original request and any supporting document content]
---

Help brainstorm this idea further by generating 10-15 probing questions that should be answered to develop it more fully.

Format requirements:
- Use Markdown headings to group related questions topically
- Format each question as: **Short question summary**: Longer question description with context
- Put your persona name at the top of the document
- Do not add any preamble, commentary, or follow-up inquiries

Save your response to: `[session-subdirectory]/questions/by-persona/questions_[persona-name].md`
```

**Output:** 2-4 markdown files in `[session-subdirectory]/questions/by-persona/`

#### Step 2.2: Synthesize Questions into Thematic Clusters

**Spawn 1 subagent** (use a thorough model tier).

**Subagent prompt:**

```
We have started a brainstorming session. Multiple participants have generated questions they think should be answered to further develop the idea.

Here is the original request for context:

---
[ORCHESTRATOR INSERTS: User's original request summary]
---

Here are the questions generated by each participant:

---
[ORCHESTRATOR INSERTS: Content from all files in questions/by-persona/]
---

Your task is to synthesize these sets of questions into a consolidated, organized list:

1. Eliminate duplicate or highly similar questions
2. Group remaining questions under relevant topical headings
3. Each group should contain at least 4 questions and not more than 8 questions
4. Ensure coverage across strategic, tactical, creative, and analytical dimensions

Format requirements:
- Use Markdown headings for topic groups
- Format each question as: **Short question summary**: Longer question description
- Do not add preamble or follow-up inquiries

Output files:
1. Save the complete consolidated list to: `[session-subdirectory]/questions/QUESTIONS.md`
2. Save each topical grouping as a separate file: `[session-subdirectory]/questions/by-topic/questions_[topic-cluster-name].md`
```

**Output:** Master question list in `[session-subdirectory]/questions/QUESTIONS.md` + individual topic cluster files in `[session-subdirectory]/questions/by-topic/`

---

### Phase 3: Multi-Persona Brainstorming

**Read `[session-subdirectory]/questions/by-topic/` to determine how many topic clusters exist.**

Use the user's effort selection to determine the number of "participants" in each topical brainstorm (3 if low effort, 5 if medium effort, or 7 if high effort).

For each topic cluster, **spawn multiple parallel subagents**, each with a different brainstorming persona.

**Recommended personas for brainstorming:**
- The Visionary
- The Pragmatist
- The Devil's Advocate
- The Analyst
- The Storyteller
- The Audience Advocate
- The Technical Expert
- The Analogist
- The Constraint Flipper
- The Futurist

**Subagent prompt template:**

```
You are [PERSONA NAME], a coach assisting in refining an idea through structured brainstorming.

[INSERT FULL PERSONA SYSTEM PROMPT FROM REFERENCES]

Here is background information about the idea being brainstormed:

---
[ORCHESTRATOR INSERTS: User's original request and any key context]
---

Here are the questions you should respond to:

---
[ORCHESTRATOR INSERTS: Content from questions/by-topic/questions_[topic-cluster-name].md]
---

For each question, provide 3-5 unique, detailed responses. Make your responses:
- Specific and concrete (not generic advice)
- Actionable where appropriate
- Insightful and true to your persona's perspective

Format each response as:
* **Short response summary.** Detailed response text with specifics, examples, or reasoning.

Save your response to: `[session-subdirectory]/responses/[topic-cluster-name]/responses_[topic-cluster-name]_[persona-name].md`
```

**Output:** Multiple markdown files in `[session-subdirectory]/responses/[topic-cluster-name]/`

---

### Phase 4: Response Synthesis

**Spawn multiple parallel subagents** (1 per topic cluster) to synthesize the brainstorming responses in each topic cluster.

**Subagent prompt:**

````
You are a skilled facilitator synthesizing a brainstorming session.

Here is the original request for context:

---
[ORCHESTRATOR INSERTS: User's original request summary]
---

Here are the questions that were asked for this topic cluster:

---
[ORCHESTRATOR INSERTS: Content from questions/by-topic/questions_[topic-cluster-name].md]
---

Here are the responses from all brainstorming participants:

---
[ORCHESTRATOR INSERTS: Content from all files in responses/[topic-cluster-name]/]
---

Create THREE output documents:

---

## Document 1: Attributed Output (`[session-subdirectory]/synthesis/synthesis_[topic-cluster-name]_with-attribution.md`)

Structure:
```
# Brainstorming Synthesis: [Topic Cluster] - With Attribution

## Synthesized Insights by Question

### [Short Question 1 Summary]

[Longer question 1 description]

[For each original question, consolidate similar responses into unified points.]
[Order points by how many participants contributed to the idea - most consensus first]
[Preserve important details and specifics while eliminating redundancy]

Format each merged response as:
* **Short merged response summary.** Detailed merged response text with specifics, examples, or reasoning.

Then include the original response text as secondary bullets, with attribution, in the format:
  * **Original short response summary.** Original detailed response text. *[Persona Name]*

### [Short Question 2 Summary]
...
```

---

## Document 2: Merged Output (`[session-subdirectory]/synthesis/synthesis_[topic-cluster-name]_merged.md`)

[Identical content to Document 1 except the sub-bullets with full text and attribution are removed such that only the merged response content remains.]

---

## Document 3: Summary (`[session-subdirectory]/synthesis/synthesis_[topic-cluster-name]_summary.md`)

Structure:
```
# Brainstorming Session: [Topic Cluster] - Summary

## Executive Summary
[3-5 paragraphs capturing the most important insights and responses]

## Key Themes
[Bulleted list of major themes that emerged across participants across all questions]

## Recommended Next Steps
[Top 10 action items based on the strongest ideas across all questions]
```

---

Synthesis Guidelines:
- Preserve unique ideas even if only one participant mentioned them
- Order consolidated points by consensus level (most agreement first, unique ideas last)
- Maintain the **Summary.** Detail format in consolidated points
- The synthesized version should be readable standalone without needing the attributed version
````

**Output:** 3 files for each topic cluster in `[session-subdirectory]/synthesis/` (attributed, merged, summary)

---

### Phase 5: Final Outputs (Orchestrator)

The Orchestrator finishes up the job by producing 2 final outputs:

#### Step 5.1: Complete Synthesis

**Using filesystem tools**, the orchestrator concatenates all of the summary and merged `[session-subdirectory]/synthesis/` documents into a single `[session-subdirectory]/synthesis/SYNTHESIS.md`. To preserve the context window, the orchestrator should use file concatenation commands rather than reading all files into context.

**Output:** `[session-subdirectory]/synthesis/SYNTHESIS.md`

#### Step 5.2: Final Brainstorming Summary

The Orchestrator already has access to the user's original request and any user-submitted files, and the overall plan.

The Orchestrator should read `[session-subdirectory]/questions/QUESTIONS.md` and all of the files matching `[session-subdirectory]/synthesis/synthesis_*_summary.md` and produce a final summary output of the entire brainstorming session in `[session-subdirectory]/BRAINSTORM.md`. This final document should function as a README/index for the brainstorm and provide relative links to documents with additional details.

**Output:** `[session-subdirectory]/BRAINSTORM.md`

#### Step 5.3: Present Results to User

The Orchestrator outputs a brief summary of the entire process and invites the user to access `[session-subdirectory]/BRAINSTORM.md` to view the complete results. The orchestrator should also note that all intermediate files are available for review.

---

## Session Resume Capability

The PLAN.md file enables session resumption if a brainstorming session is interrupted.

### Resume Logic

When asked to resume a session, the orchestrator should:

1. **Read PLAN.md** to determine session state
2. **Check status fields** to identify the last completed phase
3. **Verify output files** exist for completed phases
4. **Resume from the next incomplete phase**

### Resume Decision Table

| PLAN.md Status | Files Present | Action |
|----------------|---------------|--------|
| Phase 2: complete | `questions/QUESTIONS.md` exists | Resume at Phase 3 |
| Phase 3: complete | `responses/` directories populated | Resume at Phase 4 |
| Phase 4: complete | `synthesis/` files exist | Resume at Phase 5 |
| Phase 2: in-progress | Partial `questions/by-persona/` | Re-run Phase 2 from start |
| Any phase shows failure in Notes | — | Address noted issue, retry |

### Resume Prompt

If a user asks to continue a previous session:

```
I found an existing session at [session-subdirectory]/.

Based on PLAN.md, the session status is:
- Phase 2 (Questions): [status]
- Phase 3 (Brainstorming): [status]
- Phase 4 (Synthesis): [status]
- Phase 5 (Final Output): [status]

I can resume from Phase [N]. Would you like me to continue?
```

---

## The Brainstorming Personas

The skill includes 15 distinct personas, each designed to contribute unique value to brainstorming sessions. These are organized into functional categories:

### Questioning Personas (Best for Phase 2)
| Persona | Core Function | Best For |
|---------|---------------|----------|
| **The Questioner** | Deep probing and assumption challenging | Discovery phase, uncovering hidden needs |
| **The Analyst** | Systematic breakdown and pattern recognition | Complex problems, data-driven decisions |
| **The First Principles Thinker** | Deconstruction to fundamentals | Questioning assumptions, simplification |
| **The Devil's Advocate** | Constructive challenge and risk identification | Stress-testing ideas, finding blind spots |
| **The Audience Advocate** | End-user/community perspective | User-centered design, accessibility |

### Generative Personas (Idea Creation)
| Persona | Core Function | Best For |
|---------|---------------|----------|
| **The Visionary** | Future-focused, transformative thinking | Opening up possibilities, long-term thinking |
| **The Storyteller** | Narrative framing, user journey visualization | Making ideas concrete, emotional resonance |
| **The Analogist** | Cross-domain pattern recognition | Novel combinations, borrowed innovation |
| **The Momentum Builder** | "Yes, and..." expansion | Building on others' ideas, maintaining energy |

### Evaluative Personas (Critical Analysis)
| Persona | Core Function | Best For |
|---------|---------------|----------|
| **The Pragmatist** | Feasibility and implementation focus | Grounding ideas, identifying practical paths |
| **The Devil's Advocate** | Constructive challenge and risk identification | Stress-testing ideas, finding blind spots |
| **The First Principles Thinker** | Deconstruction to fundamentals | Questioning assumptions, simplification |
| **The Constraint Flipper** | Turning limitations into opportunities | Creative problem-solving under constraints |

### Analytical Personas (Structure & Patterns)
| Persona | Core Function | Best For |
|---------|---------------|----------|
| **The Analyst** | Systematic breakdown and pattern recognition | Complex problems, data-driven decisions |
| **The Connector** | Relationship identification between ideas | Integration, synergy discovery |
| **The Synthesizer** | Consolidation and theme extraction | Summarization, finding common ground |

### Domain-Focused Personas
| Persona | Core Function | Best For |
|---------|---------------|----------|
| **The Audience Advocate** | End-user/community perspective | User-centered design, accessibility |
| **The Technical Expert** | Implementation feasibility | Technical decisions, architecture |
| **The Futurist** | Trend analysis and future-proofing | Strategic planning, long-term viability |

### Persona Selection Guidance

Not every session needs all 15 personas. Recommended combinations:

**Innovation Focus (5 personas):**
The Visionary, The Analogist, The Connector, The Devil's Advocate, The Futurist

**Implementation Focus (5 personas):**
The Pragmatist, The Technical Expert, The Analyst, The Constraint Flipper, The First Principles Thinker

**User-Centered Focus (5 personas):**
The Audience Advocate, The Storyteller, The Questioner, The Devil's Advocate, The Synthesizer

**Balanced General Session (5 personas):**
The Visionary, The Pragmatist, The Devil's Advocate, The Audience Advocate, The Synthesizer

---

## Full Persona System Prompts

The complete system prompts for all 15 personas should be stored in `references/personas.md`. Each prompt includes:

1. Role declaration
2. Core characteristics (4-6 bullet points)
3. Participation guidelines (6-8 specific behaviors)
4. Avoid list (3-4 anti-patterns)
5. Example contributions (2-3 sample statements in their voice)

*(See project file "Idea Symphony Brainstorming Personas - System Prompts.md" for complete prompts)*

---

## Skill File Structure

```
idea-symphony/
├── SKILL.md
│   ├── Frontmatter (name, description with triggers)
│   ├── Architecture overview (subagent model)
│   ├── Phase-by-phase workflow with prompts
│   ├── Output directory structure
│   └── Persona selection guidance
│
├── references/
│   ├── personas.md (all 15 persona system prompts)
│   ├── synthesis-prompt.md (detailed Phase 4 prompt)
│   └── example-outputs/ (sample intermediate files)
│
└── scripts/
    └── (none needed - all operations use standard file tools)
```

---

## SKILL.md Description (for Triggering)

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
  "devil's advocate", "pros and cons from different views"
```

---

## Example Session Flow

**User Input:**
> "Help me brainstorm a community tool library program for our neighborhood nonprofit. We want residents to be able to borrow tools like lawnmowers, drills, and ladders instead of everyone buying their own."

**Orchestrator Actions:**

1. Create `./tool-library_2025-02-01/` session directory structure
2. Create `REQUEST.md` summarizing the user's idea
3. User accepts default 'medium' effort level
4. Select question-generating personas with rationale, document in `PLAN.md`
5. Spawn 3 question generators (Questioner, Audience Advocate, First Principles Thinker)
6. Wait for all to complete, outputs saved to `./tool-library_2025-02-01/questions/by-persona/`
7. Spawn question synthesizer, reads generated questions, outputs to `./tool-library_2025-02-01/questions/`
8. Update `PLAN.md` with Phase 2 complete status and list of topic clusters
9. Read topic clusters: Operations, Community Engagement, Sustainability
10. Select brainstorming personas with rationale, document in `PLAN.md`
11. For each cluster, spawn 5 brainstormers (Technical Expert, Visionary, Pragmatist, Audience Advocate, Constraint Flipper)
12. Wait for all to complete, outputs saved to `./tool-library_2025-02-01/responses/`
13. Update `PLAN.md` with Phase 3 complete status
14. Spawn 3 response synthesizers (one per topic cluster), outputs to `./tool-library_2025-02-01/synthesis/`
15. Update `PLAN.md` with Phase 4 complete status
16. Concatenate synthesis files into `SYNTHESIS.md`
17. Generate final summary in `BRAINSTORM.md`
18. Present results to user with link to `BRAINSTORM.md` and note about intermediate files

**Final User-Facing Output:**
- Display brief summary of key insights
- Note: "Complete results saved in `./tool-library_2025-02-01/BRAINSTORM.md`"
- Note: "All intermediate outputs available in the session directory for reference"
- Offer to explore specific ideas further or run additional personas

---

## Success Criteria

The skill succeeds when:

1. **Subagent Isolation**: Each participant genuinely operates independently until synthesis
2. **Complete Paper Trail**: All intermediate outputs are saved and accessible
3. **Perspective Diversity**: Synthesized output contains meaningfully different viewpoints
4. **Traceability**: Any synthesized point can be traced to its source persona(s)
5. **Persona Authenticity**: Each persona's contributions sound distinct and true to their archetype
6. **Actionable Output**: Final synthesis includes concrete next steps
7. **Domain Flexibility**: Works for tech products, nonprofit initiatives, creative projects, etc.
8. **Resumability**: Interrupted sessions can be continued from the last completed phase

---

## Quick Reference: Orchestrator Checklist

### Phase 1: Context Gathering
- [ ] Receive user request and any supporting documents
- [ ] Confirm project name with user
- [ ] Create session directory structure
- [ ] Save `REQUEST.md`
- [ ] Confirm effort level (default: medium)
- [ ] Select personas with rationale
- [ ] Save `PLAN.md`

### Phase 2: Question Generation
- [ ] Spawn question generators (always include The Questioner)
- [ ] Pass user request content to each subagent
- [ ] Wait for completion → `questions/by-persona/`
- [ ] Spawn question synthesizer with all generated questions
- [ ] Wait for completion → `questions/QUESTIONS.md` + `questions/by-topic/`
- [ ] Update `PLAN.md` status

### Phase 3: Brainstorming
- [ ] Read topic clusters from `questions/by-topic/`
- [ ] For each cluster: spawn N brainstormers with questions content
- [ ] Wait for completion → `responses/[topic-cluster]/`
- [ ] Update `PLAN.md` status

### Phase 4: Synthesis
- [ ] For each cluster: spawn synthesizer with all responses content
- [ ] Wait for completion → `synthesis/` (3 files per cluster)
- [ ] Update `PLAN.md` status

### Phase 5: Final Output
- [ ] Concatenate summaries and merged files → `SYNTHESIS.md`
- [ ] Read summaries, generate final output → `BRAINSTORM.md`
- [ ] Update `PLAN.md` status to complete
- [ ] Present results to user

---

## Appendix: Key Differences from Original Webapp Design

| Aspect | Webapp Version | Skill Version |
|--------|---------------|---------------|
| Multiple perspectives | Different AI models (GPT-4, Gemini, Claude) | Same model, different persona subagents |
| Context isolation | Inherent (separate API calls) | Via subagent task spawning |
| Intermediate outputs | Stored in database | Saved as markdown files |
| Human participation | Planned feature | Could be added via Phase 2 question review |
| Real-time progress | WebSocket updates | File-based checkpoints via PLAN.md |
| Cost management | API cost estimation | Token usage across subagents |
| Session resume | Database state | PLAN.md status fields |

---

*This briefing document incorporates workflow details from idea-symphony.md and architectural patterns from the orchestrator.py design, adapted for Claude's skill framework with emphasis on subagent isolation and complete intermediate output capture.*
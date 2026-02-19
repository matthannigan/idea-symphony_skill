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
| The Accountant | `the-accountant.md` | Financial clarity, cost modeling, economic sustainability |
| The Analyst | `the-analyst.md` | Data, patterns, systematic breakdown *(Phase 2 only)* |
| The Analogist | `the-analogist.md` | Cross-domain patterns |
| The Audience Advocate | `the-audience-advocate.md` | End-user perspective, empathy mapping |
| The Connector | `the-connector.md` | Cross-domain bridging, structural parallels |
| The Constraint Flipper | `the-constraint-flipper.md` | Limitations → opportunities |
| The Devil's Advocate | `the-devils-advocate.md` | Risk identification, challenges, mitigations |
| The Empath | `the-empath.md` | Emotional resonance, gut-feeling reasoning |
| The First Principles Thinker | `the-first-principles-thinker.md` | Deconstruction to fundamentals |
| The Futurist | `the-futurist.md` | Trend-grounded analysis, strategic positioning |
| The Lawyer | `the-lawyer.md` | Regulatory frameworks, compliance, legal |
| The Momentum Builder | `the-momentum-builder.md` | Progressive elaboration, forward building |
| The Politician | `the-politician.md` | Stakeholder politics, coalition building, power dynamics |
| The Pragmatist | `the-pragmatist.md` | Feasibility, implementation |
| The Provocateur | `the-provocateur.md` | Absurdist provocation, lateral thinking |
| The Questioner | `the-questioner.md` | Deep probing, assumptions *(Phase 2 only)* |
| The Simplifier | `the-simplifier.md` | Subtractive thinking, removing complexity |
| The Storyteller | `the-storyteller.md` | Narrative, user journeys |
| The Synthesizer | `the-synthesizer.md` | Consolidation, theme extraction *(Unused; Phase 4?)* |
| The Systems Thinker | `the-systems-thinker.md` | Feedback loops, second-order consequences |
| The Technical Expert | `the-technical-expert.md` | Technical feasibility |
| The Visionary | `the-visionary.md` | Paradigm shifts, transformative reimagination |

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
├── persona-selections.md       # Medium/high: Per-topic persona assignments (from Phase 2C)
├── REQUEST.md                  # User request summary
├── USER-QUESTIONS.md            # (optional) User-provided questions to answer
├── PLAN.md                     # Session config and status
├── QUESTIONS.md                # All questions consolidated (canonical order)
├── SYNTHESIS.md                # All summaries + syntheses (in topic order)
└── BRAINSTORM.md               # Final output and session index
```

**Topic ordering:** Phase 2 establishes a logical topic order. Numeric prefixes (`01_`, `02_`, etc.) preserve this order through all subsequent phases. Within each topic, `_summary` sorts before `_synthesis` alphabetically.

**Low effort differences:** No by-persona/ files, responses use generic-response.md, synthesis/ contains only summary files (no attributed/ or _synthesis files).

## Effort Levels

| Effort | Phase 2 (Questions) | Phase 3 (Brainstorming) | Phase 4 (Synthesis) | Best For |
|--------|---------------------|-------------------------|---------------------|----------|
| low    | 1 generic prompt    | 1 generic response per topic | Summary only | **Tactical**: Concrete planning, implementation steps, quick decisions |
| medium | 3 personas          | 4 personas per topic    | Full synthesis | **Strategic**: Framework development, complex decisions, design choices |
| high   | 5 personas          | 7 personas per topic    | Full synthesis | **Philosophical**: Foundational thinking, high-stakes decisions, research |

**Default to medium** if user doesn't specify.

**Output character by effort level:**
- **Low:** Practical, actionable, immediately implementable (costs, materials, times)
- **Medium:** Strategic, framework-oriented, systems-thinking (principles, trade-offs, design patterns)
- **High:** Philosophical, assumption-challenging, theory-informed (foundational questions, research-backed)

**Low effort approach:** Uses context isolation (separate subagents per topic) but skips the persona system entirely. Single generic question generation creates 15-20 questions in 3-5 clusters. Single generic brainstorming response per cluster provides 3-5 responses per question. Summary-only synthesis skips attribution. Target runtime: 5-10 minutes vs. 15-20 minutes for medium, 30-45 minutes for high.

**Medium/high effort approach:** Uses persona system with multiple perspectives. Full synthesis includes attribution and comprehensive consolidation. Medium effort (4 personas per topic) creates cognitive diversity with core + topic-matched perspectives; high effort (7 personas per topic) enables convergence documentation with completed persona clusters.

**Detailed guidance:** See `[skill]/references/effort-level-guidance.md` for use case examples and decision criteria.

## Workflow

### Phase 1: Context Gathering (Orchestrator)

1. Receive user's topic/idea and any supporting documents
2. Ask user to confirm project name (e.g., "Community Garden" or "Habit Tracker")
3. Confirm session directory location (default: `./[project-name_YYYY-MM-DD]/`)
4. Create `REQUEST.md` summarizing the request (see [templates.md](references/templates.md))
5. **Ask about user-defined questions:**
   - Ask: "Do you have specific questions you want the brainstorming process to answer? These will be preserved through all phases."
   - If yes: Capture the questions and save as `USER-QUESTIONS.md` in the session directory (see [templates.md](references/templates.md))
   - If no: Proceed without creating the file
   - **Design note:** USER-QUESTIONS.md is kept separate from REQUEST.md to avoid influencing persona-based question generators in medium/high effort. Persona generators should NOT see user questions — only the generic generator (low effort) and the synthesizer (medium/high) read this file.
6. **Determine effort level:**

   **If user specified effort level explicitly** → use that level, skip analysis

   **If user didn't specify** → analyze request and suggest appropriate level:

   **Step 6.1: Detect Strong Triggers (analyze user's request text)**

   **HIGH effort triggers** (if ANY match, strongly suggest HIGH):
   - High-stakes keywords: "career change", "major decision", "life transition", "considering whether to", "should I even"
   - Research/analysis keywords: "comprehensive analysis", "cross-cutting", "lessons learned", "patterns across", "common failures", "best practices across"
   - Foundational keywords: "purpose", "assumptions", "foundational", "philosophy", "why should I", "what if I'm wrong", "challenge my thinking"
   - Large scope indicators: "20+ years", "dozens of", "comprehensive review", "entire organization", "complete overhaul"
   - Exploration keywords: "exploring whether", "examining if", "reconsidering", "rethinking"

   **LOW effort triggers** (if ANY match, strongly suggest LOW):
   - Tactical keywords: "checklist", "packing list", "step-by-step", "step by step", "how to implement", "shopping list", "todo list", "guide to"
   - Material keywords: "what do I need", "specific items", "budget breakdown", "timeline", "schedule"
   - Concrete deliverables: "create a [specific thing]", "organize my [thing]", "plan [specific event]"
   - Implementation phrases: "how do I", "what are the steps", "walk me through", "show me how"

   **MEDIUM effort triggers** (if no strong HIGH/LOW triggers, look for these):
   - Strategic keywords: "strategy", "framework", "approach", "design decision", "which option", "compare approaches"
   - Trade-off keywords: "pros and cons", "evaluate options", "weigh alternatives", "different approaches"
   - System keywords: "workflow", "process design", "system", "organizational"
   - Planning keywords: "develop", "create strategy", "plan approach"

   **Step 6.2: Assess Confidence and Present Suggestion**

   **If strong HIGH trigger detected:**
   ```
   Based on your request, I recommend HIGH EFFORT for this session.

   Rationale: [Specific trigger explanation - e.g., "Career changes are high-stakes
   decisions requiring foundational examination of assumptions and long-term implications."]

   HIGH EFFORT will provide:
   - 5 diverse perspectives with convergence documentation
   - Philosophical depth and assumption-challenging
   - 40-60 questions across 6-9 foundational topic areas
   - Research-informed recommendations
   - Time: ~45-60 minutes

   Would you like to proceed with HIGH effort, or prefer a different level?
   ```

   **If strong LOW trigger detected:**
   ```
   Based on your request, I recommend LOW EFFORT for this session.

   Rationale: [Specific trigger explanation - e.g., "You need a practical checklist
   with specific items and logistics—tactical implementation guidance."]

   LOW EFFORT will provide:
   - Concrete, actionable recommendations with costs/times/materials
   - 15-20 practical questions across 3-5 topic categories
   - 3-5 specific responses per question
   - Summary-only synthesis focused on immediate actions
   - Time: ~10-15 minutes

   Would you like to proceed with LOW effort, or prefer a different level?
   ```

   **If MEDIUM triggers detected (or no strong triggers):**
   ```
   Based on your request, I recommend MEDIUM EFFORT for this session.

   Rationale: [Explanation - e.g., "Strategic planning benefits from multiple
   perspectives exploring trade-offs and design patterns."]

   MEDIUM EFFORT will provide:
   - 3 diverse perspectives with strategic frameworks
   - 25-35 questions across 4-7 topic areas
   - Framework development and systems thinking
   - Full synthesis with attribution
   - Time: ~20-30 minutes

   Would you like to proceed with MEDIUM effort, or prefer a different level?
   ```

   **If request is ambiguous** (contains conflicting signals or unclear intent):
   ```
   I can help with [topic]. To determine the best approach, what would be most
   helpful right now?

   1. Specific implementation steps and practical guidance (LOW effort - 10-15 min)
   2. Strategic framework and approach development (MEDIUM effort - 20-30 min)
   3. Deep exploration of purpose, assumptions, and foundations (HIGH effort - 45-60 min)
   ```

   **Step 6.3: Handle User Response**

   - If user confirms suggestion → proceed with that effort level
   - If user asks for different level → use their preference
   - If user asks for more detail → read `[skill]/references/effort-level-guidance.md` and present relevant sections
   - If user is uncertain → present the ambiguous case question above
   - Default to medium only if all else fails
7. Create `PLAN.md` documenting configuration (see [templates.md](references/templates.md))

**Quick Reference: Example Patterns by Effort Level**

| Request Pattern | Suggested Level | Rationale |
|----------------|----------------|-----------|
| "Create a packing list for..." | LOW | Concrete checklist with specific items |
| "Plan a birthday party for..." | LOW | Tactical event planning with materials/costs |
| "Help me with my newsletter" | MEDIUM | Ambiguous - ask clarifying question |
| "Design a content strategy for..." | MEDIUM | Strategic framework development |
| "Develop a product feature for..." | MEDIUM | Design decisions with trade-offs |
| "I'm considering a career change" | HIGH | High-stakes, foundational decision |
| "Review [comprehensive dataset] and identify patterns..." | HIGH | Research-level analysis |
| "Challenge my assumptions about..." | HIGH | Explicit assumption examination |
| "Should I even [major decision]..." | HIGH | Foundational exploration |

**Orchestrator Model:** Claude Sonnet or Gemini Pro (prefer balanced response)

### Phase 2: Question Generation

**For LOW effort:** Proceed to Phase 2A: Generic Question Generation

**For MEDIUM or HIGH effort:** Proceed to Phase 2B: Persona-Based Question Generation

---

#### Phase 2A: Generic Question Generation (Low Effort Only)

Spawn 1 subagent using prompt from `[skill]/references/prompts/phase2-question-generation-generic.md`.

**Instructions for subagent:**

1. Read `[session]/REQUEST.md` for the brainstorming topic and context
2. Check if `[session]/USER-QUESTIONS.md` exists (use Glob). If it exists, read it — these are questions the user specifically wants answered. Preserve their intent, expand/refine them, and integrate them into topic clusters. Mark any question that preserves or incorporates a user-provided question by appending `[User Q]` to the question text. User questions should appear in final output even if total count exceeds the 15-20 target.
3. Generate 15-20 questions organized into 3-5 topical clusters (plus any user-provided questions)
4. Ensure questions span these dimensions:
   - Strategic: Long-term vision, goals, impact
   - Tactical: Implementation, logistics, resources
   - Creative: Innovative approaches, alternatives
   - Analytical: Risks, trade-offs, metrics
   - Human-centered: Stakeholder needs, user experience
5. Use YAML frontmatter in all output files
6. Create two outputs:
   - `QUESTIONS.md` (master file with all questions in numbered clusters)
   - `questions/by-topic/[NN]_[topic-slug].md` (one file per cluster)

**Subagent Model:** Claude Sonnet or Gemini Pro (prefer balanced response)

**Quality Gate:** Before proceeding, verify:
- `QUESTIONS.md` exists
- `questions/by-topic/` contains 3-5 numbered `.md` files
- If `USER-QUESTIONS.md` exists: count `[User Q]` markers in `QUESTIONS.md` and compare against the number of questions in `USER-QUESTIONS.md`. If any are missing, log which user questions lack a corresponding marker and re-examine.
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with Phase 2 complete status and list of topic clusters.

Skip to Phase 3A.

---

#### Phase 2B: Persona-Based Question Generation (Medium/High Effort)

**Step 2B.1: Generate Questions (Parallel Subagents)**

Spawn 3 or 5 parallel subagents based on effort level. Select unique personas for each subagent:
- medium effort: The Questioner, The Analyst, The Audience Advocate
- high effort: The Questioner, The Analyst, The Audience Advocate, The Devil's Advocate, The First Principles Thinker

**Note:** The Questioner, Analyst, and Synthesizer are Phase 2-only personas — they excel at question generation but are retired from Phase 3 brainstorming. Phase 2C will not select them for brainstorming.

For each subagent, use prompt from `[skill]/references/prompts/phase2-question-generation-persona.md`.

**Instructions for each subagent:**

1. Read `[skill]/references/personas/[persona-name].md` and adopt the persona
2. Read `[session]/REQUEST.md` for the brainstorming topic and context
3. Generate 15-20 questions from your persona's perspective, organized into 3-5 topical clusters
4. Ensure questions span strategic, tactical, creative, analytical, and human-centered dimensions
5. Use YAML frontmatter in output (include persona name, date, effort level)
6. Save to `[session]/questions/by-persona/[persona-name].md`

**Key point:** Each persona works independently without seeing other personas' questions. This isolation ensures genuine diversity.

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
2. Check if `[session]/USER-QUESTIONS.md` exists (use Glob). If it exists, read it and treat user questions as a mandatory "+1" input alongside persona files. Append `[User Q]` to any synthesized question that incorporates a user-provided question. If user questions cause total count to exceed target ranges, that is acceptable — never drop user questions to meet count targets.
3. Track convergence: Note which personas asked similar questions
4. Use convergence as quality signal:
   - **Convergent questions** (multiple personas): Always include - signals importance
   - **Complementary questions** (similar themes): Consolidate into one well-framed question
   - **Unique questions** (one persona):
     - Medium: Include if revealing blind spots or covering missing dimensions
     - High: More liberally include (2-3 per topic) to explore speculative territory
   - **User-provided questions** — handle differently based on convergence:
     - **Convergent with personas**: Consolidate freely into the synthesized question (same as complementary questions). Mark the result with `[User Q]`. Do NOT keep as a separate entry.
     - **Non-convergent** (no persona asked anything similar): Preserve verbatim or with minimal refinement in the most relevant topic cluster. These represent unique user knowledge the personas missed — never drop them.
5. Create topic clusters:
   - Arrange in logical flow (foundational → strategic → operational)
   - Medium: 4-7 topics with ~5 questions each (range 4-7)
   - High: 6-9 topics with ~6-7 questions each (range 5-8)
6. Output files:
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

4. **User questions preserved** (if `USER-QUESTIONS.md` exists):
   - Count the number of `[User Q]` markers in `QUESTIONS.md`
   - Compare against the number of questions in `USER-QUESTIONS.md`
   - If any are missing, log which user questions lack a corresponding `[User Q]` marker and re-examine — either add the missing questions or confirm they were consolidated into an existing question (and add the marker)

If files missing after search, log in PLAN.md Notes and proceed (don't block on failed subagents).

Update `PLAN.md` with Phase 2 complete status and list of topic clusters.

Proceed to Phase 2C.

---

#### Phase 2C: Persona Selection (Medium/High Effort)

Spawn 1 Opus subagent to select personas for each topic cluster based on the concentric circles model.

**Instructions for subagent:**

1. Read `[session]/QUESTIONS.md` for topic clusters and their questions
2. Read `[session]/REQUEST.md` for brainstorming context
3. Read `[skill]/references/persona-selection-guide.md` for the complete selection methodology (concentric circles model, topic affinity matrix, cluster relationships, exclusion rules)
4. For each topic cluster:
   a. Classify the topic type (technical, user-facing, strategic, implementation, regulated, financial, creative, governance, novel/ambiguous)
   b. Apply the selection algorithm from the guide:
      - **Medium effort (4 per topic):** Core (Devil's Advocate + Pragmatist) + 2 topic-matched from Inner Ring
      - **High effort (7 per topic):** Core (2) + Inner Ring (2) + Middle Ring cluster completers (3)
   c. Document rationale for each selection
   d. Document why specialized lenses (Lawyer, Accountant, Politician) were included or excluded
   e. Verify: no more than 3 personas from the same cluster family per topic
5. Create `[session]/persona-selections.md` with detailed output:

```markdown
---
phase: 2C
date: [YYYY-MM-DD]
effort_level: [medium/high]
---
# Persona Selections

## Selection Summary

| Topic | Personas |
|-------|----------|
| 01 [Topic Name] | DA★, Pragmatist★, [Persona], [Persona] |
| 02 [Topic Name] | DA★, Pragmatist★, [Persona], [Persona] |

## Detailed Selections

### 01 [Topic Name]

**Topic Classification:** [type]

**Selected Personas:**
1. **Devil's Advocate** ★ (core) — Critical analysis across all topics
2. **Pragmatist** ★ (core) — Feasibility grounding
3. **[Persona]** (inner ring) — [Rationale tied to this topic]
4. **[Persona]** (inner ring) — [Rationale tied to this topic]
[5-7 for high effort, with ring designation]

**Cluster Coverage:** [Which clusters are represented]
**Exclusion Reasoning:** [Why specialized lenses or other personas were NOT selected]
```

6. Update the Phase 2C section in `[session]/PLAN.md` with the summary table

**Subagent Model:** Claude Opus (judgment-intensive selection)

**Configurable Approval Pause:**

After persona selection completes, check `PLAN.md` for the `persona-selection-review` field:
- **`auto`** (default): Proceed to Phase 3 immediately
- **`pause`**: Present persona selections to the user with the summary table. Wait for confirmation or overrides before proceeding. If user modifies selections, update `persona-selections.md` accordingly.

**Quality Gate:** Before proceeding, verify:
- `persona-selections.md` exists
- Each topic has exactly 4 (medium) or 7 (high) personas assigned
- Devil's Advocate and Pragmatist are included for every topic
- No retired personas (Questioner, Analyst, Synthesizer) are selected

Proceed to Phase 3B.

### Phase 3: Multi-Perspective Brainstorming

**For LOW effort:** Proceed to Phase 3A: Generic Brainstorming

**For MEDIUM or HIGH effort:** Proceed to Phase 3B: Persona-Based Brainstorming

---

#### Phase 3A: Generic Brainstorming (Low Effort Only)

Read `questions/by-topic/` to get the list of numbered topic files. Process topics in numeric order.

For each topic cluster, spawn 1 subagent using prompt from `[skill]/references/prompts/phase3-brainstorm-generic.md`.

**Instructions for each subagent:**

1. Read `[session]/questions/by-topic/[NN]_[topic-slug].md` for the questions to answer
2. Read `[session]/REQUEST.md` for context (if needed)
3. For each question, provide 3-5 distinct, substantive responses (50-150 words each)
4. Vary your approach across responses:
   - Scale: Small quick wins vs. larger transformative approaches
   - Risk profile: Conservative vs. experimental
   - Timeframe: Immediate vs. long-term
   - Focus: Process vs. people vs. technology
5. Use YAML frontmatter in output (include topic cluster, date, effort level)
6. Save to `[session]/responses/[NN]_[topic-slug]/generic-response.md`

**Key point:** Focus on specific, actionable responses with concrete details and reasoning.

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

Read `[session]/persona-selections.md` (generated in Phase 2C) to get per-topic persona assignments.

For each topic cluster, spawn parallel subagents (4 for medium, 7 for high) using prompt from `[skill]/references/prompts/phase3-brainstorm-persona.md`. Use the personas assigned to that topic in `persona-selections.md`.

**Do NOT select personas inline.** All persona selection is handled by Phase 2C using the concentric circles model. See `[skill]/references/persona-selection-guide.md` for the full methodology.

**Topic sensitivity reminders** (for quality review, not selection):
- Provocateur produces more on technical topics; on whimsical topics it provokes in the *opposite* direction (adds gravity)
- Simplifier finds more subtractive material on product-design topics
- Analytical convergence is highest on technical topics — if multiple analytical personas are assigned, verify their outputs are sufficiently differentiated

**Instructions for each subagent:**

1. Read `[skill]/references/personas/[persona-name].md` and fully adopt the persona
2. Read `[session]/REQUEST.md` for background context
3. Read `[session]/questions/by-topic/[NN]_[topic-slug].md` for the questions to answer
4. **Do NOT read other responses** in `[session]/responses/[NN]_[topic-slug]/` — respond independently
5. For each question, provide 3-5 unique responses from your persona's perspective (50-150 words each)
6. Vary responses across scope, risk tolerance, timeframe, and stakeholders
7. Stay authentic to your persona's priorities and thinking style
8. Use YAML frontmatter in output (include persona, topic cluster, date, effort level)
9. Save to `[session]/responses/[NN]_[topic-slug]/[persona-name].md`

**Key point:** Context isolation is critical. Each persona must respond independently without seeing other personas' responses. This ensures genuine diversity rather than consensus-seeking.

**Subagent Model:** Claude Haiku or Gemini Flash (prefer fast response, volume over depth)

**Quality Gate:** Before proceeding, verify:

For each topic directory in `responses/`:
- **File count in `responses/[NN]_[topic]/`:**
  - Expected: 4 (medium) or 7 (high) `.md` files per topic
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

**Instructions for each subagent:**

1. Read `[session]/questions/by-topic/[NN]_[topic-slug].md` for questions
2. Read `[session]/responses/[NN]_[topic-slug]/generic-response.md` for responses
3. Create concise, actionable summary that distills key insights:
   - **Executive Summary**: 2-3 paragraphs capturing essence of topic exploration
   - **Key Themes**: 3-5 recurring themes with 2-3 sentences each
   - **Recommended Actions**: 4-8 action items organized by timeframe (immediate, near-term, long-term)
   - **Key Considerations**: Opportunities, risks/challenges, and trade-offs
4. Extract patterns across responses, prioritize actionability
5. Use YAML frontmatter in output (include topic cluster, date, effort level)
6. Save to `[session]/synthesis/[NN]_[topic-slug]_summary.md`

**Key point:** This is summary-only synthesis (no attribution or full synthesis documents). Focus on integrated insights, not repetition. Aim for 500-800 words.

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

**Instructions for each subagent:**

1. Read `[session]/REQUEST.md` for original brainstorming context
2. Read `[session]/questions/by-topic/[NN]_[topic-slug].md` for questions
3. Read all files in `[session]/responses/[NN]_[topic-slug]/` for persona responses
4. Track convergence: Note which personas gave similar responses
5. Use convergence as quality signal:
   - **Convergent responses** (multiple personas): Always include — signals importance
   - **Complementary responses** (different angles on related themes): Consolidate coherently
   - **Unique responses** (one persona): Include if revealing blind spots or adding essential dimensions
6. For each question, consolidate responses:
   - Group responses by theme
   - Order by consensus level (most convergent first)
   - Synthesize into unified points that capture essence without losing details
   - Preserve original responses with persona attribution
7. Create THREE output documents:
   - **Document 1**: `synthesis/attributed/[NN]_[topic-slug].md` — Full synthesis with persona attribution (synthesized points as bullets, original responses as sub-bullets with *—Persona Name*)
   - **Document 2**: `synthesis/[NN]_[topic-slug]_synthesis.md` — Same as Document 1 but remove all sub-bullets and attribution (synthesized points only)
   - **Document 3**: `synthesis/[NN]_[topic-slug]_summary.md` — Executive summary with key themes, recommended actions (by timeframe), and key considerations
8. Use YAML frontmatter in all outputs (include topic cluster, synthesis-type, date, effort level)

**Key point:** Use convergence to identify important insights. Preserve unique perspectives even if only one persona mentioned them. Attribution document shows transparency; synthesis document shows integration; summary shows strategic value.

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
| Phase 2: complete | `QUESTIONS.md` exists, no `persona-selections.md` | Resume at Phase 2C (med/high) or Phase 3A (low) |
| Phase 2C: complete | `persona-selections.md` exists | Resume at Phase 3B (med/high) |
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
| Persona selection (med/high) | Opus | Judgment-intensive topic classification and selection |
| Brainstorming (low) | Sonnet | Balance quality with speed |
| Brainstorming (med/high) | Haiku | Volume over depth |
| Synthesis (low) | Sonnet | User-facing summaries |
| Synthesis (med/high) | Opus | Critical consolidation |
| Final summary | Sonnet | User-facing deliverable |

## References

- [references/personas.md](references/personas.md) — Persona index and Phase 2 selection guidance
- [references/persona-selection-guide.md](references/persona-selection-guide.md) — Phase 3 persona selection methodology (concentric circles model, topic affinity matrix, cluster relationships)
- [references/personas/*.md](references/personas/*.md) — Full system prompts for all 22 personas
- [references/templates.md](references/templates.md) — Document templates (REQUEST.md, PLAN.md, BRAINSTORM.md, synthesis files)

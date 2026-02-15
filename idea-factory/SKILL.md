---
name: idea-factory
description: >
  Action plan generator that builds on Idea Symphony brainstorming output.
  Reads a completed Symphony session, creates a structural outline, generates
  project-specific personas, uses parallel subagents to develop each section
  from multiple perspectives, and synthesizes everything into a cohesive
  action plan with alternatives and scaling options.

  Use when users want: to turn brainstorming into action, create plans from
  Symphony output, develop implementation strategies, explore approaches with
  multiple perspectives, or produce structured deliverables from ideation.

  Triggers: "factory", "action plan", "turn this into a plan", "make this actionable",
  "develop a plan from", "implementation plan", "what should I actually do",
  "next steps from brainstorming", "build on this brainstorm"
---

# Idea Factory

Transform Idea Symphony brainstorming output into a structured, multi-perspective action plan. Factory reads a completed Symphony session, organizes insights into an action-oriented outline, spawns parallel subagents to develop each section independently from different personas, synthesizes their perspectives, and integrates everything into a cohesive deliverable.

## Core Architecture

**Subagents for isolated perspectives:** Factory uses the same orchestrator/subagent pattern as Idea Symphony. Each persona develops section recommendations independently in isolated context windows, then a synthesis agent reconciles perspectives into final section files.

**Source files referenced, not copied.** SCOPE.md and FACTORY-PLAN.md record the Symphony session path. Subagents read source files directly.

**Auto-generated personas.** No fixed persona library. Personas are generated per session based on the project domain and outline sections.

**Two-step section development (medium/high effort):** Phase 3 works in two steps:
- **Step 3A:** Per-persona drafts (parallel subagents)
- **Step 3B:** Section synthesis (reconcile perspectives)

This creates "debate" through independent development + synthesis reconciliation rather than real-time Agent Teams interaction.

**Simplified low effort:** Low effort uses a single broad domain expert persona. Phase 3 spawns one subagent per section that writes directly to `sections/` — no `drafts/` directory, no synthesis step.

## Prerequisites

- A completed Idea Symphony session (with BRAINSTORM.md)

## Session Output Structure

```
[project-name]_factory_[YYYY-MM-DD]/
├── FACTORY-PLAN.md                 # Session config & status
├── SCOPE.md                        # Phase 1: What to plan vs. what's context
├── OUTLINE.md                      # Phase 2: Structural outline
├── personas/                       # Phase 2: Auto-generated persona definitions
│   ├── [persona-slug].md
│   └── ...
├── drafts/                         # Phase 3A: Per-persona section drafts (medium/high only)
│   └── [NN]_[section-slug]/
│       ├── [persona-slug].md
│       └── ...
├── sections/                       # Phase 3B: Synthesized section files (or Phase 3-Low: direct drafts)
│   ├── 01_[section-slug].md
│   └── ...
├── ACTION-PLAN.md                  # Phase 4: The deliverable
└── FACTORY-SESSION.md              # Phase 4: Session report with file index
```

**Note:** Low effort sessions have no `drafts/` directory — the single persona writes directly to `sections/`.

## Effort Levels

| Parameter | Low | Medium | High |
|-----------|-----|--------|------|
| Personas per section | 1 | 3 | 4-5 |
| Draft depth | Brief | Moderate | Comprehensive |
| Alternatives per section | 1-2 | 2-3 | 3-5 |
| Scaling analysis | Minimal | Core + expansion | Full tiers |
| Persona specificity | Single broad domain expert | Focused expertise | Highly specialized |

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
6. **Ask about desired output format:**
   - **Recommendations** (default for new topics): Strategic analysis listing what to do — actionable recommendations with alternatives and trade-offs
   - **Revised document**: A rewritten version of an existing document implementing improvements (when user has a document to revise)
   - **Both**: Recommendations document + best-crack revised document
   - If user doesn't have a preference, suggest based on whether they have an existing document to revise (revised document/both) or are working from a brainstorming session on a new topic (recommendations)
   - **Note:** This preference is captured in SCOPE.md for now. Phase 4 handling of different output formats is planned but not yet implemented — all sessions currently produce the standard ACTION-PLAN.md recommendations format.
7. Determine effort level (user-specified or suggest based on scope)
8. Create session directory: `[project-name]_factory_[YYYY-MM-DD]/`
9. Create `SCOPE.md` (include output format preference) and `FACTORY-PLAN.md`

**Quality Gate:**
- `SCOPE.md` exists with all required sections
- `FACTORY-PLAN.md` exists with correct configuration
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

**Low effort:** Generate **1 persona** — a single broad domain expert assigned to **all** sections. Still auto-generated and project-specific, but one practical generalist instead of a tension-based team. Skip the multi-perspective team design; focus on creating one persona with broad coverage across the project domain. **Use a title-based name** (e.g., "Civic Innovation Program Director"), not a personal name.

**Medium/high effort:**
1. Based on outline sections and effort level, determine persona count per section
2. Auto-generate project-specific personas — each with:
   - Name and role (domain-specific, not generic)
   - Core perspective and priorities
   - What they advocate for and push back on
   - Section assignments
3. Present team composition to user for approval
4. Save persona files to `personas/[persona-slug].md`

**Persona Model:** Sonnet (creative but constrained)

**Quality Gate:**
- `OUTLINE.md` exists with all sections
- `personas/` contains persona files
- Low effort: 1 persona assigned to all sections
- Medium/high: every section has multiple personas assigned
- User has approved both outline and team composition

Update `FACTORY-PLAN.md` with Phase 2 complete.

### Phase 3: Section Development (Subagents)

**Routing by effort level:**
- **Low effort → Phase 3-Low** (single persona, direct section output, no synthesis)
- **Medium/High effort → Phase 3A + 3B** (multi-persona drafts + synthesis)

#### Phase 3-Low: Direct Section Drafts (Low Effort Only)

For each outline section, spawn **1 subagent** using the single persona to write section recommendations directly.

**CRITICAL: Subagents must READ Symphony session files directly. Do NOT summarize brainstorming insights in the subagent prompt.**

**Instructions for subagent:**

1. **Read your persona definition:** `personas/[persona-slug].md`
2. **Read project context:** `SCOPE.md` and `OUTLINE.md`
3. **Read Symphony brainstorming outputs:**
   - `[symphony-path]/BRAINSTORM.md` — Overview of all topics and insights
   - `[symphony-path]/synthesis/[NN]_[topic]_summary.md` — Only summaries relevant to your section (as listed in OUTLINE.md)
   - **Context window warning:** Each summary is 11-17K tokens. Only read what's relevant.
4. **EVALUATE and SYNTHESIZE existing brainstorming, not generate new ideas.** Ground every recommendation in specific Symphony insights.

**Output file:** `sections/[NN]_[section-slug].md` (writes directly to sections/, no drafts/ directory)

**Use the low-effort section format** (from `[skill]/references/templates.md`): simplified structure without Key Debate Points or Synthesis Notes. Since there's only one persona, focus on clear recommendations and practical alternatives rather than representing perspective tension.

Spawn section drafters in parallel (one per section).

**Drafter Model:** Sonnet

**Quality Gate:**
- `sections/` contains one file per outline section
- Each section has Core Recommendation, Alternative Approaches, Scaling Notes, and Grounding in Brainstorming
- No `drafts/` directory needed — proceed directly to Phase 4

Update `FACTORY-PLAN.md` with Phase 3 complete. **Skip Phase 3B entirely.**

---

#### Step 3A: Independent Drafts (Medium/High Effort)

For each outline section, spawn subagents for each assigned persona to draft recommendations.

**CRITICAL: Subagents must READ Symphony session files directly. Do NOT summarize brainstorming insights in the subagent prompt. The Symphony session contains the source material that subagents must evaluate.**

**Instructions for subagent:**

1. **Read your persona definition:** `personas/[persona-slug].md`
   - Adopt this persona's perspective fully
   - Your recommendations should reflect this persona's priorities and concerns

2. **Read project context files:**
   - `SCOPE.md` — What the plan covers vs. what's background context
   - `OUTLINE.md` — Section structure, decision points, and which Symphony topics map to your section

3. **Read Symphony brainstorming outputs — THIS IS YOUR SOURCE MATERIAL:**
   - Start with: `[symphony-path]/BRAINSTORM.md` — Overview of all brainstorming topics and key insights
   - Then read: `[symphony-path]/synthesis/[NN]_[topic]_summary.md` — Read ONLY the summary files that OUTLINE.md lists as inputs for your assigned section
   - **Context window warning:** Each summary is 11-17K tokens. Only read summaries relevant to your section.
   - **Optional deeper dive:** If you need more detail on a specific decision point, read ONE synthesis file: `[symphony-path]/synthesis/[NN]_[topic]_synthesis.md` (24-34K tokens each). Only do this when the summary isn't detailed enough to inform a specific recommendation.

4. **Your task is to EVALUATE and SYNTHESIZE existing brainstorming, not generate new ideas:**
   - The brainstorming phase already happened — ideas, perspectives, and tensions are documented in the Symphony session
   - Your job: INTERPRET those insights through your persona's lens
   - Identify which brainstorming recommendations align with your persona's priorities
   - Assess trade-offs and alternatives that emerged from brainstorming
   - Ground every recommendation in specific Symphony insights — cite topics, personas, or specific observations
   - Be specific and actionable

**Draft structure based on effort level:**

- **Medium effort:**
  - Core recommendation (3-4 paragraphs with rationale, grounded in brainstorming)
  - 2 alternative approaches with clear trade-offs
  - Basic scaling guidance (minimal vs expanded resources)

- **High effort:**
  - Comprehensive recommendation (4-5 paragraphs with detailed reasoning)
  - 3-5 alternative approaches including edge cases
  - Detailed scaling tiers with explicit resource requirements

**Output file:** `drafts/[NN]_[section-slug]/[persona-slug].md`

**Required output format:**

```markdown
---
section: [number]
title: [section title]
persona: [persona name]
date: [date]
---

# [Section Title] — [Persona Name] Draft

## Core Recommendation

[Your best answer for this section — specific, actionable, grounded in Symphony insights. Length depends on effort level: 2-3 paragraphs (low), 3-4 paragraphs (medium), 4-5 paragraphs (high).]

## Alternative Approaches

### Alternative A: [Name]

[Description of alternative approach]

**Trade-offs:** [What you gain vs. what you lose with this approach]
**Best when:** [Conditions that favor this alternative]

### Alternative B: [Name]

[Description and trade-offs. Continue for more alternatives based on effort level.]

## Scaling Notes

**Minimal resources:** [How this recommendation scales down for constrained resources]
**Expanded resources:** [What becomes possible with more resources]

## Grounding in Brainstorming

[List 3-5 specific insights from the Symphony session that inform your recommendations. Reference topics by name (e.g., "Topic 03: Accessibility Concerns noted that...") or cite specific persona observations. This section demonstrates you've read and evaluated the brainstorming outputs.]
```

Spawn drafters in parallel groups of 3-6 (group by section to manage context window).

**Drafter Model:** Sonnet (quality reasoning for recommendations)

**Quality Gate:**
- `drafts/[NN]_[section-slug]/` exists for each section
- Each directory contains one draft file per assigned persona
- Each draft includes "Grounding in Brainstorming" section with specific Symphony references
- If any drafts failed, note in FACTORY-PLAN.md and proceed with available drafts

#### Step 3B: Section Synthesis

For each section, spawn a synthesis subagent to reconcile persona perspectives into a final section file.

**Instructions for synthesis subagent:**

1. **Read all persona drafts for this section:** `drafts/[NN]_[section-slug]/[persona-slug].md`
   - You'll have 2-5 drafts depending on effort level and persona assignments
   - Each draft represents an independent interpretation of the Symphony brainstorming

2. **Identify convergence and divergence:**
   - **Convergence:** What do multiple personas agree on? Convergent recommendations have strong support.
   - **Tensions:** Where do personas genuinely disagree? These represent real trade-offs.
   - **Unique insights:** What did only one persona recommend? May represent valuable edge cases or specialized expertise.

3. **Synthesize final section recommendations:**
   - **Core recommendation:** Weight toward convergent views (multiple personas agree)
   - **Alternative approaches:** Pull from divergent recommendations (personas disagreed or offered different paths)
   - **Scaling notes:** Synthesize across personas — how do recommendations change with resources?
   - **Key debate points:** Document where personas disagreed and why — these are decision points for the user

4. **Maintain traceability:**
   - Reference which personas supported which recommendations
   - Note when a recommendation comes from convergence vs. a single unique perspective
   - Preserve the reasoning behind disagreements

**Output file:** `sections/[NN]_[section-slug].md`

**Required output format:**

```markdown
---
section: [number]
title: [section title]
personas_consulted: [list of persona names]
convergence_level: [high/medium/low - how much personas agreed]
date: [date]
---

# [Section Title]

## Core Recommendation

[Final recommendation weighted toward convergent views. If multiple personas independently recommended similar approaches, that's a strong signal. 3-5 paragraphs with clear rationale.]

**Persona support:** [Note which personas converged on this approach]

## Alternative Approaches

### Alternative A: [Name]

[Description of alternative — typically from divergent persona recommendations]

**Trade-offs:** [Gains vs losses]
**Best when:** [Conditions favoring this alternative]
**Advocated by:** [Which persona(s) recommended this]

### Alternative B: [Name]

[Continue based on how many genuine alternatives emerged from persona drafts...]

## Scaling Analysis

**Minimal resources:** [How recommendations adapt to constrained resources — synthesized across personas]
**Core resources:** [Standard implementation]
**Expanded resources:** [What's possible with more — synthesized across personas]

## Key Debate Points

[Document where personas disagreed and what's at stake. For example: "Democratic Innovation Researcher and Implementation Pragmatist disagreed on sortition purity vs. participant engagement. DIR prioritizes legitimacy through pure randomness; IP prioritizes retention through interest-matching. Trade-off: democratic legitimacy vs. program viability." These are decision points for the user.]

## Synthesis Notes

[Any observations about how personas approached this section differently, what perspectives proved most valuable, or where one persona's unique insight deserves special attention despite not being convergent.]
```

Spawn synthesis agents in parallel (one per section).

**Synthesis Model:** Opus (critical synthesis judgment)

**Quality Gate:**
- `sections/` contains one file per outline section
- Each section file has core recommendation, alternatives, scaling analysis, and debate points
- Convergence/divergence patterns are documented
- If any sections are missing, note in FACTORY-PLAN.md and proceed

Update `FACTORY-PLAN.md` with Phase 3 complete.

### Phase 4: Integration (Orchestrator or Subagent)

**Prompt:** `[skill]/references/prompts/phase4-integration.md`

1. Read all section files from `sections/`
2. Create `ACTION-PLAN.md`:
   - Executive summary
   - Scope statement
   - Section-by-section plan with recommendations and alternatives
   - Resource scaling (core + minimal + expanded)
   - Implementation timeline
   - Key decisions for user (where personas couldn't reach consensus)
3. Create `FACTORY-SESSION.md` with session metadata, team composition, file index
4. Update `FACTORY-PLAN.md` with Phase 4 complete
5. Present ACTION-PLAN.md to user with highlights:
   - 3-5 key recommendations
   - Where user decisions are needed
   - Point to section files for perspective details

**Integration Model:** Opus (critical synthesis of all work)

## Session Resume

If asked to continue a previous Factory session:

1. Read `FACTORY-PLAN.md` to determine session state
2. Check last completed phase
3. Verify output files exist for completed phases
4. Resume from next incomplete phase

| FACTORY-PLAN.md Status | Action |
|------------------------|--------|
| Phase 1: complete | Resume at Phase 2 |
| Phase 2: complete (low effort) | Resume at Phase 3-Low (direct section drafts) |
| Phase 2: complete (medium/high) | Resume at Phase 3A (spawn drafters) |
| Phase 3-Low: complete | Resume at Phase 4 (integration) |
| Phase 3A: complete | Resume at Phase 3B (synthesis) |
| Phase 3: complete | Resume at Phase 4 (integration) |
| Phase 3: in-progress | Check drafts/ or sections/, resume at incomplete step |

Present resume status to user before continuing.

## Error Handling

- If subagent drafters fail, proceed with available drafts and note gaps in synthesis
- If synthesis fails for a section, note the gap and proceed to Phase 4 with available sections
- If section files are missing after Phase 3, proceed to Phase 4 with available sections and note gaps
- Never block the entire session on a single failure

## Model Selection

| Task | Model | Rationale |
|------|-------|-----------|
| Orchestration (Phases 1, 4) | Sonnet | Balance of speed and judgment |
| Outline generation (Phase 2A) | Opus | Structural decisions need best judgment |
| Persona generation (Phase 2B) | Sonnet | Creative but constrained |
| Section drafts (Phase 3A) | Sonnet | Quality reasoning for recommendations |
| Section synthesis (Phase 3B) | Opus | Critical perspective reconciliation |
| Final integration (Phase 4) | Opus | Critical synthesis of all work |

## References

- [references/templates.md](references/templates.md) — Document templates for all outputs
- [references/prompts/phase1-intake.md](references/prompts/phase1-intake.md) — Intake prompt
- [references/prompts/phase2-outline.md](references/prompts/phase2-outline.md) — Outline generation
- [references/prompts/phase3-persona-gen.md](references/prompts/phase3-persona-gen.md) — Persona generation guidance
- [references/prompts/phase3-section-draft.md](references/prompts/phase3-section-draft.md) — Per-persona section drafting
- [references/prompts/phase3-section-synthesis.md](references/prompts/phase3-section-synthesis.md) — Perspective reconciliation
- [references/prompts/phase4-integration.md](references/prompts/phase4-integration.md) — Integration prompt

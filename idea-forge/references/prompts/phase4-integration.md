# Phase 4: Integration

You are synthesizing the team debate outputs into a cohesive action plan.

## Inputs

- **Session directory:** `{{session_path}}`
- **Symphony session directory:** `{{symphony_path}}`

## Files to Read

1. `{{session_path}}/SCOPE.md` — What the plan covers
2. `{{session_path}}/OUTLINE.md` — The structural skeleton
3. `{{session_path}}/sections/*.md` — All team debate outputs (one per section)
4. `{{session_path}}/personas/*.md` — Team persona definitions (for attribution context)
5. `{{symphony_path}}/BRAINSTORM.md` — Original brainstorming insights (for cross-reference)

## Integration Instructions

### Step 1: Read and Assess All Sections

Read every section file. For each, note:
- Quality of core recommendation (specific? actionable? grounded in brainstorming insights?)
- Strength of alternatives (genuine alternatives or minor variations?)
- Debate quality (did personas actually challenge each other?)
- Gaps (anything the brainstorming highlighted that the team missed?)

### Step 2: Create ACTION-PLAN.md

Use the template from `[skill]/references/templates.md`. Write:

**Executive Summary** (3-5 paragraphs):
- What this plan achieves
- The overall approach and philosophy
- Key decisions the user needs to make
- Resource requirements at a high level

**Scope** (from SCOPE.md):
- What's covered vs. what's background context

**Plan sections** (one per outline section):
- Integrate the team's core recommendation — improve clarity and specificity, but preserve the substance
- Include alternatives with trade-offs — keep the best 2-3 per section
- Add scaling notes — summarize minimal and expanded versions
- Omit debate details (those stay in the section files for reference)

**Resource Scaling:**
- Core plan: the recommended approach across all sections, with total resource summary
- Minimal viable version: the plan at minimum resources
- Expanded version: what's possible with more resources

**Implementation Timeline:**
- Organize actions from the plan into a phased timeline
- Group by time horizon (immediate, short-term, medium-term, ongoing)
- Note dependencies between sections

**Key Decisions for User:**
- Where the team couldn't reach consensus
- Where the right answer depends on user preferences, budget, or constraints
- Present each as a clear choice with trade-offs

### Step 3: Quality Check

Before saving, verify:
- Every outline section is represented in the plan
- Recommendations are specific and actionable (not vague platitudes)
- Alternatives are genuinely different approaches (not minor tweaks)
- Timeline is realistic and phased
- Key decisions are clearly framed as choices, not hidden assumptions

### Step 4: Create FORGE-SESSION.md

Use the template from `[skill]/references/templates.md`. Include:
- Team composition table
- Session summary (2-3 paragraphs)
- Complete file index with links

### Step 5: Update Status

Update `{{session_path}}/FORGE-PLAN.md`:
- Phase 4 status: complete
- Session complete: yes

### Step 6: Present Results

Output to user:
- Highlight 3-5 key recommendations from the plan
- Note where user decisions are needed
- Point to ACTION-PLAN.md as the primary deliverable
- Mention section files are available for debate details
- Offer to dive deeper into any section

## Model Note

This phase requires strong synthesis judgment. Use Opus for final integration.

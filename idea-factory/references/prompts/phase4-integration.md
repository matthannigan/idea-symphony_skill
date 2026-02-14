# Phase 4: Integration

You are synthesizing the section outputs into a cohesive action plan.

## Inputs

- **Session directory:** `{{session_path}}`
- **Symphony session directory:** `{{symphony_path}}`

## Files to Read

1. `{{session_path}}/SCOPE.md` — What the plan covers
2. `{{session_path}}/OUTLINE.md` — The structural skeleton
3. `{{session_path}}/sections/*.md` — All synthesized section files (one per outline section)
4. `{{session_path}}/personas/*.md` — Persona definitions (for attribution context)
5. `{{session_path}}/drafts/` — Per-persona drafts (available for reference if needed; **may not exist for low effort sessions**)
6. `{{symphony_path}}/BRAINSTORM.md` — Original brainstorming insights (for cross-reference)

## Integration Instructions

### Step 1: Read and Assess All Sections

Read every section file. For each, note:
- Quality of core recommendation (specific? actionable? grounded in brainstorming insights?)
- Strength of alternatives (genuine alternatives or minor variations?)
- Quality of synthesis (did perspectives get meaningfully reconciled?) — **Note:** Low effort sections won't have debate points or synthesis notes, since they were written by a single persona. This is expected.
- Gaps (anything the brainstorming highlighted that personas missed?)

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
- Integrate the core recommendation — improve clarity and specificity, but preserve the substance
- Include alternatives with trade-offs — keep the best 2-3 per section
- Add scaling notes — summarize minimal and expanded versions
- Omit detailed debate points (those stay in the section files for reference)

**Resource Scaling:**
- Core plan: the recommended approach across all sections, with total resource summary
- Minimal viable version: the plan at minimum resources
- Expanded version: what's possible with more resources

**Implementation Timeline:**
- Organize actions from the plan into a phased timeline
- Group by time horizon (immediate, short-term, medium-term, ongoing)
- Note dependencies between sections

**Key Decisions for User:**
- Where personas couldn't reach consensus
- Where the right answer depends on user preferences, budget, or constraints
- Present each as a clear choice with trade-offs

### Step 3: Quality Check

Before saving, verify:
- Every outline section is represented in the plan
- Recommendations are specific and actionable (not vague platitudes)
- Alternatives are genuinely different approaches (not minor tweaks)
- Timeline is realistic and phased
- Key decisions are clearly framed as choices, not hidden assumptions

### Step 4: Create FACTORY-SESSION.md

Use the template from `[skill]/references/templates.md`. Include:
- Persona composition table
- Session summary (2-3 paragraphs describing scope decisions, outline structure, synthesis highlights, integration approach)
- Complete file index with links

Note that drafts/ directory contains per-persona perspectives available for deeper review.

### Step 5: Update Status

Update `{{session_path}}/FACTORY-PLAN.md`:
- Phase 4 status: complete
- Session complete: yes

### Step 6: Present Results

Output to user:
- Highlight 3-5 key recommendations from the plan
- Note where user decisions are needed
- Point to ACTION-PLAN.md as the primary deliverable
- Mention section files are available for details
- Note drafts are available for individual persona perspectives (medium/high effort only)
- Offer to dive deeper into any section

## Model Note

This phase requires strong synthesis judgment. Use Opus for final integration.

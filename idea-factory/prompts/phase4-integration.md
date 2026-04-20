# Phase 4: Integration

You are synthesizing the section outputs into a cohesive action plan. Your outputs are exactly two files: `{{session_path}}/ACTION-PLAN.md` and `{{session_path}}/FACTORY-SESSION.md`. You also update `{{session_path}}/FACTORY-PLAN.md` Phase 4 status. Do not modify any other files.

## Inputs

Read all of the following before drafting. The section files are independent; read them in parallel, then read SCOPE / OUTLINE / personas / BRAINSTORM in a second parallel batch.

1. `{{session_path}}/SCOPE.md` — what the plan covers.
2. `{{session_path}}/OUTLINE.md` — the structural skeleton.
3. `{{session_path}}/sections/*.md` — all synthesized section files (one per outline section).
4. `{{session_path}}/personas/*.md` — persona definitions (attribution context for the session report).
5. `{{session_path}}/drafts/` — per-persona drafts for medium/high-effort sessions. **May not exist for low-effort sessions.** Available for reference if a section file is thin and you need the underlying perspectives; otherwise ignore.
6. `{{symphony_path}}/BRAINSTORM.md` — original brainstorming insights, for cross-reference.

## Integration Instructions

### Step 1: Read and Assess All Sections

Read every section file. For each, note:
- Quality of core recommendation (specific? actionable? grounded in brainstorming insights?)
- Strength of alternatives (genuine alternatives or minor variations?)
- Quality of synthesis (did perspectives get meaningfully reconciled?) — **Note:** Low effort sections won't have debate points or synthesis notes, since they were written by a single persona. This is expected.
- Gaps (anything the brainstorming highlighted that personas missed?)

### Step 2: Create ACTION-PLAN.md

Use the template at `{{skill}}/templates/action-plan.md`. Write:

**Executive Summary** (3-5 paragraphs):
- What this plan achieves
- The overall approach and philosophy
- Key decisions the user needs to make
- Resource requirements at a high level

Write the Executive Summary as readable prose paragraphs, not bullets. Direct and specific: name the recommended approach, the one or two decisions the user needs to make, and the resource envelope. The reader is a decision-maker skimming, not a committee evaluating completeness.

**Scope** (from SCOPE.md):
- What's covered vs. what's background context

**Plan sections** (one per outline section):
- Integrate the core recommendation — improve clarity and specificity, but preserve the substance
- Include alternatives with trade-offs — keep the best 2-3 per section
- Add scaling notes — summarize minimal and expanded versions
- Keep the core recommendation, top 2-3 alternatives, and scaling summary at the plan level. Detailed debate points stay in the section files for readers who want to trace synthesis — pulling them into the ACTION-PLAN crowds the plan with material readers can retrieve on demand.

**Resource Scaling:**
- Core plan: the recommended approach across all sections, with total resource summary
- Minimal viable version: the plan at minimum resources
- Expanded version: what's possible with more resources

**Implementation Timeline:**
- Organize actions from the plan into a phased timeline
- Group by time horizon (immediate, short-term, medium-term, ongoing)
- Name dependencies explicitly when they exist (e.g., "Volunteer Recruitment must complete before Launch Event" or "Fiscal Sustainability Analysis gates the Budget section"). A phased list without dependencies hides the hard scheduling choices — call them out.

**Key Decisions for User:**
- Where personas couldn't reach consensus
- Where the right answer depends on user preferences, budget, or constraints
- Each Key Decision should contain three elements: the decision question (one sentence), the two or three options (one sentence each, each with its core trade-off), and the recommendation if one persona camp had stronger rationale (or "user preference" if genuinely balanced).

### Step 3: Quality Check

Before saving, verify:
- Every outline section is represented in the plan
- Recommendations are specific and actionable (not vague platitudes)
- Alternatives are genuinely different approaches (not minor tweaks)
- Timeline is realistic and phased
- Key decisions are clearly framed as choices, not hidden assumptions

### Step 4: Create FACTORY-SESSION.md

Use the template at `{{skill}}/templates/factory-session.md`. Include:
- Persona composition table
- Session summary (2-3 paragraphs describing scope decisions, outline structure, synthesis highlights, integration approach)
- Complete file index with links

If `drafts/` exists (medium/high-effort sessions), note in FACTORY-SESSION.md that it contains per-persona perspectives for deeper review. For low-effort sessions, `drafts/` does not exist — omit the mention.

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

## Notes

- Do not create scratch files, helper scripts, or intermediate outputs while drafting. Write only the two files specified plus the FACTORY-PLAN.md Phase 4 status update.

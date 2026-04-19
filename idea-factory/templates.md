# Document Templates

Templates for the documents created during an Idea Factory session.

## FACTORY-PLAN.md

```markdown
---
date: [YYYY-MM-DD]
project: [Project Name]
effort_level: [low/medium/high]
symphony_session: [path to Symphony session directory]
---

# Factory Plan: [Project Name]

**Date:** [YYYY-MM-DD]
**Symphony Source:** `[path to Symphony session directory]`
**Effort Level:** [low/medium/high]

## Configuration

| Parameter | Value |
|-----------|-------|
| Effort Level | [low/medium/high] |
| Personas per Section | [N] |
| Draft Depth | [Brief/Moderate/Comprehensive] |
| Alternatives per Section | [range] |

## Phase Status

**For medium/high effort:**

| Phase | Status | Notes |
|-------|--------|-------|
| Phase 1: Intake & Scope | Not started | |
| Phase 2: Outline & Personas | Not started | |
| Phase 3A: Independent Drafts | Not started | |
| Phase 3B: Section Synthesis | Not started | |
| Phase 4: Integration | Not started | |

**For low effort:**

| Phase | Status | Notes |
|-------|--------|-------|
| Phase 1: Intake & Scope | Not started | |
| Phase 2: Outline & Personas | Not started | |
| Phase 3: Section Drafts | Not started | |
| Phase 4: Integration | Not started | |

---

## Session Notes

### [YYYY-MM-DD] - Phase 1 Complete

**Scope Definition:**
- [N] action-oriented plan sections identified:
  1. [Section title and brief description]
  2. [Section title and brief description]

**Context Items (background, not action plans):**
- [Item] — [why it's context]

**Key Tensions to Address:**
- [Tension 1]
- [Tension 2]

**User Confirmation:**
- ✅ Scope division confirmed
- ✅ [Effort level] effort level confirmed
- ✅ Output directory confirmed

**Ready for Phase 2:** Outline & Persona Generation

### [YYYY-MM-DD] - Phase 2A Complete

**Outline Creation:**
- [N] action-oriented sections created
- Each section includes scope, key inputs from brainstorming, decision points
- User approved outline structure

### [YYYY-MM-DD] - Phase 2B Complete

**Persona Team Created:**
- [N] project-specific personas (title-based, not personal names)
- Each persona assigned to [range] sections based on expertise
- Every section has [N] personas assigned
- Perspective balance: [list key perspective types]

**Team Members:**
1. [Persona Title] → Sections [list]
2. [Persona Title] → Sections [list]
[Continue for all personas...]

**User Confirmation:**
- ✅ Team composition approved
- ✅ Section assignments approved

### [YYYY-MM-DD] - Phase 3A Complete

**Independent Drafts:**
- [N] drafts per section × [M] sections = [total] draft files created
- Drafts saved to `drafts/[NN]_[section-slug]/[persona-slug].md`
- [Note any issues, missing drafts, or quality observations]

### [YYYY-MM-DD] - Phase 3B Complete

**Section Synthesis:**
- [N] synthesized section files created in `sections/`
- Key debate points documented: [brief summary of major tensions]
- [Note convergence patterns or synthesis challenges]

### [YYYY-MM-DD] - Phase 4 Complete

**Integration:**
- ACTION-PLAN.md created with [N] sections
- FACTORY-SESSION.md created with complete file index
- Key recommendations: [3-5 bullet points]
- User decisions needed: [major choice points]

---

**Last Updated:** [YYYY-MM-DD]
**Session Status:** [In Progress / Complete]
```

## SCOPE.md

```markdown
---
date: [YYYY-MM-DD]
project: [Project Name]
symphony_session: [path to Symphony session directory]
---

# Scope: [Project Name]

## Original Intent

[What was the user trying to accomplish? Summarize the Symphony session's purpose.]

## Symphony Source Files

- **REQUEST.md:** `[full path]`
- **PLAN.md:** `[full path]`
- **QUESTIONS.md:** `[full path]`
- **BRAINSTORM.md:** `[full path]`

## Content vs. Context

### Content (to be developed into action plan)
[Which Symphony topic areas and insights should be actively developed]

- [Topic area 1] — [why it's content]
- [Topic area 2] — [why it's content]

### Context (background reference only)
[Which inputs provide useful background but won't be directly planned]

- [Item] — [why it's context]

## Brainstorming Highlights

### Top Insights
1. [Strongest insight from brainstorming]
2. [Second strongest]
3. [Third strongest]

### Key Tensions
[Where brainstorming personas disagreed or identified trade-offs]

- [Tension 1]
- [Tension 2]

### Strongest Recommendations
[Ideas with high convergence across personas]

- [Recommendation 1]
- [Recommendation 2]

## Output Format

- **Format:** [Recommendations / Revised Document / Both]
- **Source document:** [path to document being revised, or "N/A — new topic"]
- **Notes:** [Any user preferences about tone, audience, structure]

## Scope Confirmation

[Summary of what the action plan will cover, as confirmed by user]
```

## OUTLINE.md

```markdown
---
date: [YYYY-MM-DD]
project: [Project Name]
sections: [N]
---

# Action Plan Outline: [Project Name]

## Overview

[1-2 paragraphs describing the overall structure and rationale for this organization]

## Sections

### 1. [Section Title]

**Scope:** [What this section covers]

**Key Inputs:**
- [Which Symphony topic clusters feed into this section]
- [Specific insights or recommendations to address]

**Decision Points:**
- [Where alternatives should be developed]
- [Trade-offs to resolve]

---

### 2. [Section Title]

**Scope:** [What this section covers]

**Key Inputs:**
- [Source material]

**Decision Points:**
- [Decisions needed]

---

[Continue for all sections...]
```

## Auto-Generated Persona

```markdown
---
name: [Role Title - use title-based name, not personal name]
role: [Role Title]
project: [Project Name]
date: [YYYY-MM-DD]
---

# [Role Title]

**Role:** [Role Title]

## Core Perspective

[2-3 sentences describing this persona's worldview and what they prioritize]

## Priorities

- [What they optimize for]
- [What they value most]
- [Their definition of success]

## Advocacy

**Pushes for:**
- [What they advocate]
- [Positions they'll champion]

**Pushes back on:**
- [What they challenge]
- [Assumptions they question]

## Assigned Sections

- Section [N]: [Title]
- Section [N]: [Title]
- ...

## Key Quote

[A single sentence that crystallizes this persona's perspective and priorities]
```

## Per-Persona Draft (drafts/[NN]_[section-slug]/[persona-slug].md)

```markdown
---
section: [N]
title: [Section Title]
persona: [Persona Title - use title-based name]
date: [YYYY-MM-DD]
---

# [Section Title] — [Persona Title] Draft

## Core Recommendation

[This persona's best answer. 2-4 paragraphs with specific, actionable guidance.]

## Alternative Approaches

### Alternative A: [Name]

[Description of alternative approach]

**Trade-offs:** [What you gain vs. what you lose]
**Best when:** [Conditions that favor this alternative]

### Alternative B: [Name]

[Description of alternative approach]

**Trade-offs:** [What you gain vs. what you lose]
**Best when:** [Conditions that favor this alternative]

## Scaling Notes

**Minimal resources:** [What changes with fewer resources]
**Expanded resources:** [What's possible with more resources]

## Notes

[Additional context, caveats, or questions]
```

## Section File (sections/[NN]_[section-slug].md) — Medium/High Effort

```markdown
---
section: [N]
title: [Section Title]
contributors: [list of persona titles who drafted - use title-based names]
synthesis_approach: [brief note on how perspectives were reconciled]
date: [YYYY-MM-DD]
---

# [Section Title]

## Core Recommendation

[Synthesized recommendation. 2-4 paragraphs with specific, actionable guidance that integrates the best thinking from multiple personas.]

## Alternative Approaches

### Alternative A: [Name]

[Description of alternative approach]

**Trade-offs:** [What you gain vs. what you lose]
**Best when:** [Conditions that favor this alternative]

### Alternative B: [Name]

[Description of alternative approach]

**Trade-offs:** [What you gain vs. what you lose]
**Best when:** [Conditions that favor this alternative]

## Scaling Notes

**Minimal resources:** [What changes with fewer resources]
**Expanded resources:** [What's possible with more resources]

## Key Debate Points

[Where personas disagreed and how they were reconciled]

- **[Topic of disagreement]:** [Persona A] argued [position]. [Persona B] countered with [position]. Resolution: [outcome or recommendation for user decision].
```

## Section File (sections/[NN]_[section-slug].md) — Low Effort

Simplified format for low effort sessions (single persona, no debate/synthesis).

```markdown
---
section: [N]
title: [Section Title]
persona: [Persona Title]
date: [YYYY-MM-DD]
---

# [Section Title]

## Core Recommendation

[2-3 paragraphs with specific, actionable guidance grounded in Symphony brainstorming insights.]

## Alternative Approaches

### Alternative A: [Name]

[Description of alternative approach]

**Trade-offs:** [What you gain vs. what you lose]
**Best when:** [Conditions that favor this alternative]

## Scaling Notes

**Minimal resources:** [Scaled-down version]
**Expanded resources:** [What's possible with more resources]

## Grounding in Brainstorming

[3-5 specific insights from the Symphony session that inform the recommendations. Reference topics by name or cite specific observations.]
```

## ACTION-PLAN.md

```markdown
---
date: [YYYY-MM-DD]
project: [Project Name]
effort_level: [low/medium/high]
symphony_session: [path]
sections: [N]
---

# Action Plan: [Project Name]

## Executive Summary

[3-5 paragraphs capturing the overall plan, key decisions, and recommended approach]

## Scope

[From SCOPE.md — what this plan covers and what's background context]

## Plan

### 1. [Section Title]

#### Recommendation

[Core recommendation — specific, actionable guidance]

#### Alternatives

- **[Alt A]:** [Brief description with trade-offs]
- **[Alt B]:** [Brief description with trade-offs]

#### Scaling

- **Minimal:** [Scaled-down version]
- **Expanded:** [Scaled-up version]

---

### 2. [Section Title]

[Same structure as above]

---

[Continue for all sections...]

## Resource Scaling

### Core Plan (Recommended)

[Summary of the recommended plan across all sections with total resource requirements]

### Minimal Viable Version

[What the plan looks like with minimum resources]

### Expanded Version

[What's possible with additional resources]

## Implementation Timeline

| Phase | Actions | Timeframe |
|-------|---------|-----------|
| [Phase 1] | [Actions] | [When] |
| [Phase 2] | [Actions] | [When] |
| [Phase 3] | [Actions] | [When] |

## Key Decisions for User

[Where personas couldn't reach consensus or where user preference determines the path]

1. **[Decision]:** [Options and trade-offs]
2. **[Decision]:** [Options and trade-offs]
```

## FACTORY-SESSION.md

```markdown
---
date: [YYYY-MM-DD]
project: [Project Name]
effort_level: [low/medium/high]
symphony_session: [path]
session_complete: [true/false]
---

# Factory Session: [Project Name]

**Date:** [YYYY-MM-DD]
**Symphony Source:** `[path]`
**Effort Level:** [low/medium/high]

## Persona Composition

| Persona Title | Role Description | Assigned Sections | Model |
|--------------|------------------|-------------------|-------|
| [Persona Title] | [Brief role description] | [Sections] | Sonnet (drafting) |
| [Persona Title] | [Brief role description] | [Sections] | Sonnet (drafting) |

Note: Section synthesis performed by Opus model.

## Session Summary

[2-3 paragraphs describing what happened: scope decisions, outline structure, how personas approached sections, synthesis highlights, integration approach]

## File Index

### Session Files
- [FACTORY-PLAN.md](FACTORY-PLAN.md) — Session configuration and status
- [SCOPE.md](SCOPE.md) — Scope definition (what to plan vs. what's context)
- [OUTLINE.md](OUTLINE.md) — Structural outline with sections

### Personas
- [personas/[slug].md](personas/[slug].md) — [Persona Title]
- [Continue for all personas...]

### Per-Persona Drafts
- [drafts/01_[slug]/[persona].md](drafts/01_[slug]/[persona].md) — [Section Title] perspectives
- [Continue for all sections...]

### Section Outputs (Synthesized)
- [sections/01_[slug].md](sections/01_[slug].md) — [Section Title]
- [Continue for all sections...]

### Deliverable
- [ACTION-PLAN.md](ACTION-PLAN.md) — The integrated action plan

### Source Material (Idea Symphony)
- `[symphony-path]/REQUEST.md` — Original brainstorming request
- `[symphony-path]/BRAINSTORM.md` — Brainstorming session report
- `[symphony-path]/QUESTIONS.md` — Brainstorming questions
- `[symphony-path]/PLAN.md` — Symphony session configuration
```

# Document Templates

Templates for the documents created during an Idea Forge session.

## FORGE-PLAN.md

```markdown
---
date: [YYYY-MM-DD]
project: [Project Name]
effort_level: [low/medium/high]
symphony_session: [path to Symphony session directory]
---

# Forge Plan: [Project Name]

**Date:** [YYYY-MM-DD]
**Symphony Source:** `[path to Symphony session directory]`
**Effort Level:** [low/medium/high]

## Configuration

| Parameter | Value |
|-----------|-------|
| Effort Level | [low/medium/high] |
| Team Size | [N] teammates |
| Debate Depth | [Brief/Moderate/Deep] |
| Alternatives per Section | [range] |

## Phase Status

| Phase | Status | Notes |
|-------|--------|-------|
| Phase 1: Intake & Scope | Not started | |
| Phase 2: Outline & Personas | Not started | |
| Phase 3: Team Debate | Not started | |
| Phase 4: Integration | Not started | |

## Notes

[Issues, user feedback, decisions made during the session]

## Session Timeline

- [YYYY-MM-DD]: Session initiated
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
[Which Symphony topic areas and insights should be actively revised and developed]

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
name: [Persona Name]
role: [Role Title]
project: [Project Name]
date: [YYYY-MM-DD]
---

# [Persona Name]

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

**Primary ownership:**
- Section [N]: [Title]
- Section [N]: [Title]

**Contributing to:**
- Section [N]: [Title]
```

## Section File (sections/[NN]_[section-slug].md)

```markdown
---
section: [N]
title: [Section Title]
primary_owner: [Persona Name]
contributors: [list of contributing persona names]
date: [YYYY-MM-DD]
---

# [Section Title]

## Core Recommendation

[The team's best answer for this section. 2-4 paragraphs with specific, actionable guidance.]

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

[Where teammates disagreed and how they resolved it]

- **[Topic of disagreement]:** [Persona A] argued [position]. [Persona B] countered with [position]. Resolution: [outcome or recommendation for user decision].
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

[Where the team couldn't reach consensus or where user preference determines the path]

1. **[Decision]:** [Options and trade-offs]
2. **[Decision]:** [Options and trade-offs]
```

## FORGE-SESSION.md

```markdown
---
date: [YYYY-MM-DD]
project: [Project Name]
effort_level: [low/medium/high]
symphony_session: [path]
session_complete: [true/false]
---

# Forge Session: [Project Name]

**Date:** [YYYY-MM-DD]
**Symphony Source:** `[path]`
**Effort Level:** [low/medium/high]

## Team Composition

| Persona | Role | Primary Sections | Model |
|---------|------|------------------|-------|
| [Name] | [Role] | [Sections] | [Model] |
| [Name] | [Role] | [Sections] | [Model] |

## Session Summary

[2-3 paragraphs describing what happened: scope decisions, outline structure, debate highlights, integration approach]

## File Index

### Session Files
- [FORGE-PLAN.md](FORGE-PLAN.md) — Session configuration and status
- [SCOPE.md](SCOPE.md) — Scope definition (what to plan vs. what's context)
- [OUTLINE.md](OUTLINE.md) — Structural outline with sections

### Personas
- [personas/[slug].md](personas/[slug].md) — [Name]: [Role]
- [Continue for all personas...]

### Section Outputs
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

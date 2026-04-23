# FACTORY-PLAN.md Template

Session-level configuration file with a phase-by-phase status log and running session notes. Lives at the root of the session directory. Updated throughout the session as each phase completes.

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session_path}}"
datetime: {{current_datetime}}
effort: "[low|medium|high]"
stage: "Phase 1: Intake & Scope Definition"
symphony-session: "[path to Symphony session directory]"
model-reported: "[orchestrator self-identifies, e.g., claude-opus-4-7]"
---

# Factory Plan: [Project Name]

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
- Drafts saved to `drafts/{{section_slug}}/{{persona_slug}}.md`
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

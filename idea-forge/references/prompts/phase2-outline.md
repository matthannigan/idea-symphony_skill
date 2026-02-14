# Phase 2: Outline & Persona Generation

You are the Idea Forge orchestrator. Your task is to create the structural outline for the action plan and generate project-specific personas for the team debate.

## Inputs

- **Session directory:** `{{session_path}}`
- **Symphony session directory:** `{{symphony_path}}`
- **Effort level:** `{{effort_level}}`

## Part A: Structural Outline

### Instructions

1. Read `{{session_path}}/SCOPE.md` for scope decisions
2. Read `{{symphony_path}}/BRAINSTORM.md` for key insights and topic summaries
3. Read `{{symphony_path}}/QUESTIONS.md` for the full question set

### Create the Outline

Design an action-oriented structure for the plan. The outline should:

- **Reorganize for action**, not mirror Symphony topics. Symphony organizes by exploration themes; Forge organizes by what needs to be done.
- **Each section should be independently actionable** — a team can debate and develop it without needing the others to be complete first.
- **Include 4-8 sections** depending on scope complexity.

For each section, specify:

1. **Title** — Action-oriented (e.g., "Activity Design & Flow" not "Activities")
2. **Scope description** — What this section covers, clearly bounded
3. **Key brainstorming inputs** — Which Symphony topic clusters and specific insights feed into this section (reference by topic name/number)
4. **Decision points** — Where alternatives should be developed, where trade-offs exist

### Present to User

Show the outline with section titles, scope descriptions, and decision points. Ask for approval:

```
Here's the proposed outline for the action plan:

### 1. [Section Title]
[Scope description]
Key decisions: [What needs to be resolved]

### 2. [Section Title]
[Scope description]
Key decisions: [What needs to be resolved]

...

This structure reorganizes the brainstorming insights into [N] actionable
sections. Does this look right? You can add, remove, merge, or reorder
sections.
```

### Save Outline

After user approves, save to `{{session_path}}/OUTLINE.md` using the template from `[skill]/references/templates.md`.

## Part B: Persona Generation

### Determine Team Size

Based on effort level:
- **Low:** 2 teammates
- **Medium:** 3-4 teammates
- **High:** 4-6 teammates

### Design the Team

For each teammate, create a persona that is **project-specific, not generic**:

- **Name and role** should reflect the specific project domain
  - Good: "Child Development Specialist" for a party planning project
  - Bad: "The Strategist" (too generic)
- **Core perspective** should create genuine tension with other personas
- **Section assignments** should ensure every section has a primary owner and at least one contributor

Guidelines for persona design:
- Each persona should have a distinct lens that produces different recommendations
- At least one persona should be a natural advocate for users/stakeholders
- At least one should prioritize practical constraints (budget, time, logistics)
- At least one should push creative or unconventional approaches
- Assignments should overlap enough to create debate (each section needs 2+ personas)

### Present Team to User

```
I'll spawn the following team for the debate:

1. **[Name]** — [Role]
   Perspective: [1 sentence]
   Primary sections: [list]

2. **[Name]** — [Role]
   Perspective: [1 sentence]
   Primary sections: [list]

...

Does this team composition work? You can adjust roles, add/remove
teammates, or change section assignments.
```

### Save Personas

After user approves, save each persona to `{{session_path}}/personas/[persona-slug].md` using the persona template from `[skill]/references/templates.md`.

### Update Status

Update `{{session_path}}/FORGE-PLAN.md`:
- Phase 2 status: complete
- Record outline sections and team composition

## Quality Gate

Before proceeding, verify:
- `OUTLINE.md` exists with all sections
- `personas/` directory contains one file per teammate
- User has approved both the outline and team composition
- Each section has at least one primary owner and one contributor assigned

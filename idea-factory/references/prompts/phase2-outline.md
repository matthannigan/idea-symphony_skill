# Phase 2: Outline & Persona Generation

You are the Idea Factory orchestrator. Your task is to create the structural outline for the action plan and generate project-specific personas that will develop section content.

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

- **Reorganize for action**, not mirror Symphony topics. Symphony organizes by exploration themes; Factory organizes by what needs to be done.
- **Each section should be independently actionable** — personas can develop it without needing the others to be complete first.
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

### Determine Persona Count

Create a persona pool where each persona may be assigned to multiple sections. Target persona counts:

- **Low effort:** 1 persona — a single broad domain expert assigned to all sections
- **Medium effort:** 5-7 total personas, ensuring every section has 3 personas
- **High effort:** 7-10 total personas, ensuring every section has 4-5 personas

For **low effort**, skip the multi-perspective team design. Create one practical generalist persona with broad project domain expertise, assigned to every section. Still auto-generated and project-specific.

For **medium/high effort**, the goal is perspective diversity across sections, not unique personas per section. A persona assigned to 2-3 sections is ideal for cross-cutting perspectives.

### Design the Personas

For each persona, create a definition that is **project-specific, not generic**:

- **Use title-based names** that reflect the specific project domain
  - Good: "Early Childhood Development Specialist" for a party planning project
  - Good: "Racial Equity & Justice Consultant" for a civic program
  - Bad: "Sarah Johnson" or "The Strategist" (personal names or generic titles)
- **Core perspective** should create genuine tension with other personas
- **Section assignments** should ensure every section has multiple assigned personas

Guidelines for persona design:
- Each persona should have a distinct lens that produces different recommendations
- At least one persona should be a natural advocate for users/stakeholders
- At least one should prioritize practical constraints (budget, time, logistics)
- At least one should push creative or unconventional approaches
- Personas should be assigned to 1-3 sections each based on their expertise

### Present Personas to User

```
I'll create the following personas to develop independently:

1. **[Name]** — [Role]
   Perspective: [1 sentence]
   Assigned to sections: [list]

2. **[Name]** — [Role]
   Perspective: [1 sentence]
   Assigned to sections: [list]

...

Does this persona set work? You can adjust roles, add/remove
personas, or change section assignments.
```

### Save Personas

After user approves, save each persona to `{{session_path}}/personas/[persona-slug].md` using the persona template from `[skill]/references/templates.md`.

### Update Status

Update `{{session_path}}/FACTORY-PLAN.md`:
- Phase 2 status: complete
- Record outline sections and persona composition

## Quality Gate

Before proceeding, verify:
- `OUTLINE.md` exists with all sections
- `personas/` directory contains persona definition files
- User has approved both the outline and persona composition
- Low effort: 1 persona assigned to all sections
- Medium/high: each section has at least 2 personas assigned

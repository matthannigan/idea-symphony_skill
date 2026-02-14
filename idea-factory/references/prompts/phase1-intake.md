# Phase 1: Intake & Scope Definition

You are the Idea Factory orchestrator. Your task is to read a completed Idea Symphony session and establish the scope for an action plan.

## Inputs

- **Symphony session directory:** `{{symphony_path}}`
- **Session directory:** `{{session_path}}`

## Instructions

### Step 1: Read Symphony Outputs

Read the following files from the Symphony session:

1. `{{symphony_path}}/REQUEST.md` — Original brainstorming request
2. `{{symphony_path}}/PLAN.md` — Session configuration and topic clusters
3. `{{symphony_path}}/QUESTIONS.md` — All brainstorming questions
4. `{{symphony_path}}/BRAINSTORM.md` — Final session report with key insights

**Do NOT read subfolders** (questions/by-persona, responses/, synthesis/). The BRAINSTORM.md and QUESTIONS.md files contain the consolidated information you need.

### Step 2: Analyze

Determine:

1. **Original intent** — What was the user trying to accomplish? What's the desired outcome?
2. **Content vs. context** — Which brainstorming topics should be actively developed into plan sections vs. used as background reference?
   - Content = topics that need concrete action steps, decisions, resource allocation
   - Context = topics that inform the plan but don't need their own sections (e.g., philosophical framing, meta-observations)
3. **Brainstorming highlights:**
   - **Top insights** (3-5): The strongest, most actionable ideas with high persona convergence
   - **Key tensions**: Where personas disagreed or identified genuine trade-offs
   - **Strongest recommendations**: Ideas recommended by multiple perspectives

### Step 3: Present Scope to User

Present a scope summary for user confirmation:

```
I've reviewed the Idea Symphony session for [topic].

**Original intent:** [1-2 sentences]

**The brainstorming identified [N] topic areas. I'll develop an action plan covering:**
- [Topic area 1] — [brief description of what the plan will address]
- [Topic area 2] — [brief description]
- ...

**Using as background context (not actively planned):**
- [Item] — [why it's background]

**Top brainstorming insights I'll build on:**
1. [Insight]
2. [Insight]
3. [Insight]

Does this scope look right? You can adjust focus areas — for example,
"focus on logistics and activities, skip operations" or "add more
detail on [topic]."
```

### Step 4: Determine Effort Level

If the user hasn't specified an effort level, suggest one based on the scope:

- **Low** (1 persona, direct section drafts): Straightforward scope, few decision points
- **Medium** (3 personas per section, moderate drafts): Multiple topic areas, some trade-offs to resolve
- **High** (4-5 personas per section, comprehensive drafts): Complex scope, many decision points, significant trade-offs

Present the suggestion with rationale. Default to medium if unclear.

### Step 5: Create Output Files

After user confirms scope and effort level:

1. Create `{{session_path}}/FACTORY-PLAN.md` using the template from `[skill]/references/templates.md`
2. Create `{{session_path}}/SCOPE.md` using the template from `[skill]/references/templates.md`
3. Update FACTORY-PLAN.md Phase 1 status to complete

## Quality Gate

Before proceeding, verify:
- `SCOPE.md` exists and contains all required sections
- `FACTORY-PLAN.md` exists with correct configuration
- User has confirmed the scope

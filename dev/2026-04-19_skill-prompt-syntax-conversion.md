# Skill Prompt Syntax Conversion — 2026-04-19

Mechanical (+ one structural) pass to standardize substitution-variable syntax across both skills before the pending review-edit passes land. Covers Idea Symphony and Idea Factory. Produces consistent placeholder conventions that match Anthropic's prompt-engineering docs, kill an unstated contract in SKILL.md, and resolve the Factory Handlebars-conditionals question by splitting one prompt file.

## Target conventions

Two placeholder kinds; two distinct syntaxes. Same rules for both skills.

- **`{{lowercase_underscored}}`** — **orchestrator substitution variables.** The orchestrator replaces these with session-specific values before the prompt text is handed to a subagent. By the time the subagent reads the prompt, these are already resolved to real paths/values.
  - Examples: `{{session}}`, `{{skill}}`, `{{persona_name}}`, `{{topic}}`, `{{cluster_slug}}`
- **`[Title Case Descriptive Slot]` or `[lowercase descriptive slot]`** — **output-template placeholders.** The subagent fills these in when producing its output (whether that's a YAML frontmatter value, a markdown heading, or body prose).
  - Examples: `[Topic 1 Descriptive Name]`, `[Question text]`, `[Your Persona Name]`, `[Theme 1 Name]`

**Disambiguation rule** — a placeholder in a file-system path, shell command, or prompt-instruction context is a substitution variable (`{{…}}`). A placeholder inside a fenced output template, YAML frontmatter template, or markdown body template is a fill-in slot (`[…]`). No file should contain a placeholder that is ambiguous about which kind it is.

## `## Prompt conventions` block — to add to both SKILL.md files

Same text in both `idea-symphony/SKILL.md` and `idea-factory/SKILL.md`, placed near the top (after the top-level description, before the workflow sections):

> ## Prompt conventions
>
> Prompt files in this skill use two placeholder conventions:
>
> - `{{lowercase_underscored}}` — **orchestrator substitution variables.** The orchestrator replaces these with session-specific values before the prompt is handed to a subagent. By the time the subagent reads the prompt, these are already resolved. Examples: `{{session}}`, `{{skill}}`, `{{persona_name}}`, `{{topic}}`.
> - `[Title Case Descriptive Slot]` — **output-template placeholders.** The subagent fills these in when producing its output (YAML frontmatter values, markdown headings, body prose). Examples: `[Topic 1 Descriptive Name]`, `[Question text]`, `[Your Persona Name]`.
>
> If you see a placeholder in a file-system path, shell command, or prompt-instruction context, treat it as a substitution variable. If you see it inside a fenced output template, treat it as a slot to fill during generation.

## Idea Symphony — substitution variable inventory

Every current substitution variable and its target syntax. All output-template brackets (YAML frontmatter slots, markdown template slots) stay as-is.

| Current | Target | Where it appears |
|---|---|---|
| `{REQUEST}` | `{{request}}` | phase2B_by-persona:7, phase2B_generic:7 |
| `{TOPIC}` | `{{topic}}` | phase3_generic:7, phase4_summary-only_low-effort:7, phase4_summary-only_min-effort:7 |
| `{TOPIC_REQUEST}` | `{{topic_request}}` | phase2A:16 |
| `{EFFORT_LEVEL}` | `{{effort_level}}` | phase2A:17,116,117; SKILL.md:151 |
| `[PERSONA NAME]` *(role-line context)* | `{{persona_name}}` | phase2B_by-persona:7, phase3_by-persona:7 |
| `[session]` *(path/instruction context)* | `{{session}}` | widespread across SKILL.md and most prompts; all templates/synthesis-*.md frontmatter |
| `[skill]` *(path context)* | `{{skill}}` | SKILL.md, phase1_effort-level, phase2B_by-persona, phase3_by-persona, min-effort-workflow |
| `[NN]_[topic-slug]` *(combined path context)* | `{{cluster_slug}}` | phase2B_generic, phase3_generic, phase3_by-persona, phase4_*, min-effort-workflow, templates |
| `[NN]_[topic]` *(combined path context, bare "topic" variant)* | `{{cluster_slug}}` | phase3_by-persona, phase4_full-synthesis, min-effort-workflow, templates/brainstorm.md, templates/synthesis-*.md |
| `[NN]` *(alone, in "Topic Cluster NN" literal display)* | **stays literal** | phase2C output template ("## Topic Cluster 01: …") — this is display formatting, not a substitution |
| `[persona-name]` *(path context)* | `{{persona_slug}}` | phase2B_by-persona, phase3_by-persona, phase4_full-synthesis |
| `[topic]` *(stand-alone in user-facing prompt)* | `{{topic}}` | phase1_effort-level:124 |

**Notes:**
- `{{cluster_slug}}` is a single combined value like `01_sustainability` that the orchestrator substitutes when it spawns a per-topic subagent. The orchestrator already knows the cluster number and slug for the subagent it's spawning, so passing them combined is cleaner than passing two separate vars.
- `[NN]_[topic]` and `[NN]_[topic-slug]` are currently two different spellings of the same underlying value; the conversion unifies them.
- The `[User Q]` marker used in phase2C to tag user-sourced questions is a **literal string output**, not a placeholder — stays as-is verbatim.
- Output-template brackets like `[Project Name]`, `[Descriptive Name]`, `[Question text]`, `[Theme 1 Name]`, `[Topic Cluster Name]`, `[Your Persona Name]` — **all stay unchanged.**

## Idea Symphony — files affected

### Prompt files (`idea-symphony/prompts/`)

All 11 files. Each gets `replace_all: true` Edit calls for each substitution var present. The brackets-style substitutions (`[session]`, `[skill]`, `[NN]_[topic-slug]`, etc.) are the bulk of the changes.

1. `phase1_effort-level.md` — `[topic]` → `{{topic}}`; `[skill]` → `{{skill}}`
2. `phase2A_question-gen-personas-selection.md` — `{TOPIC_REQUEST}` → `{{topic_request}}`; `{EFFORT_LEVEL}` → `{{effort_level}}`
3. `phase2B_question-gen_by-persona.md` — `{REQUEST}` → `{{request}}`; `[PERSONA NAME]` role-line occurrence → `{{persona_name}}`; `[skill]`, `[session]`, `[persona-name]` path occurrences → `{{skill}}`, `{{session}}`, `{{persona_slug}}`
4. `phase2B_question-gen_generic.md` — `{REQUEST}` → `{{request}}`; `[session]`, `[NN]_[topic-slug]` → `{{session}}`, `{{cluster_slug}}`
5. `phase2C_question-synthesis.md` — `[session]` → `{{session}}` (the largest volume of conversions; all path references)
6. `phase3_brainstorm_by-persona.md` — `[PERSONA NAME]` role-line → `{{persona_name}}`; `[skill]`, `[session]`, `[NN]_[topic]`, `[NN]_[topic-slug]`, `[persona-name]` → `{{skill}}`, `{{session}}`, `{{cluster_slug}}`, `{{cluster_slug}}`, `{{persona_slug}}`
7. `phase3_brainstorm_generic.md` — `{TOPIC}` → `{{topic}}`; `[session]`, `[NN]_[topic-slug]` → `{{session}}`, `{{cluster_slug}}`
8. `phase4_full-synthesis.md` — `[session]`, `[NN]_[topic]`, `[NN]_[topic-slug]`, `[persona-name]` → `{{session}}`, `{{cluster_slug}}`, `{{cluster_slug}}`, `{{persona_slug}}`
9. `phase4_summary-only_low-effort.md` — `{TOPIC}` → `{{topic}}`; `[session]`, `[NN]_[topic-slug]` → `{{session}}`, `{{cluster_slug}}`
10. `phase4_summary-only_min-effort.md` — `{TOPIC}` → `{{topic}}`; `[session]`, `[NN]_[topic-slug]` → `{{session}}`, `{{cluster_slug}}`
11. `min-effort-workflow.md` — `[skill]`, `[session]`, `[NN]_[topic-slug]`, `[NN]_[topic]` → `{{skill}}`, `{{session}}`, `{{cluster_slug}}`, `{{cluster_slug}}`

### Skill-level files

12. `idea-symphony/SKILL.md` — `[skill]`, `[session]`, `{EFFORT_LEVEL}` conversions; **add `## Prompt conventions` block** near top
13. `idea-symphony/templates/synthesis-attributed.md` — `[session]`, `[NN]_[topic]`, `[NN]_[topic-slug]` in frontmatter slots. **Note:** these are output-template frontmatter slots (subagent fills during generation), but since SKILL.md's conversion changes how the subagent's upstream prompt references these paths, the templates should use the same `{{…}}` style so copy-paste into a prompt reads consistently. Alternative: leave templates bracketed because they're output slots. **Recommend: convert templates too** for full consistency — the subagent writes the resolved value either way, and consistent syntax across the repo is the whole point.
14. `idea-symphony/templates/synthesis-summary.md` — same as above
15. `idea-symphony/templates/synthesis-merged.md` — same as above
16. `idea-symphony/templates/brainstorm.md` — `[topic]` in example links; arguably display-only, but convert for consistency
17. `idea-symphony/scripts/split-questions.sh` — the comment on line 4 says `# Splits [session]/QUESTIONS.md…`. Doc comment; convert to `{{session}}` for consistency. No code change.

### Not touching

- `idea-symphony/personas/*.md` — no placeholder usage (they describe a persona's disposition, not a runtime task).
- `idea-symphony/guidance/*.md` — reference-only content; no placeholder usage to convert.
- `idea-symphony/SESSION-STRUCTURE.md` — no `[session]`/`[skill]` placeholders found.

## Idea Factory — changes

Factory's substitution syntax is already `{{lowercase_underscored}}`. The open items are:

### Mechanical

1. **Add `## Prompt conventions` block to `idea-factory/SKILL.md`** — same text as Symphony's.
2. **Remove Handlebars conditionals from `phase3-section-draft.md`** — handled via the file split below.

### Structural: split `phase3-section-draft.md` into two files

**Rationale recap.** The low-effort case and the medium/high case have different output contracts (low writes directly to `sections/`; medium/high write to `drafts/` and are reconciled by a downstream synthesizer). The current file uses Handlebars `{{#if effort_low}}` blocks to branch, but SKILL.md does not describe a templating engine. Splitting the file matches Symphony's per-effort-level pattern (`phase4_summary-only_min-effort.md` / `_low-effort.md` / `phase4_full-synthesis.md`) and eliminates the Handlebars ambiguity entirely.

**New files:**

- **`idea-factory/prompts/phase3-section-draft_low.md`** — single persona (the broad domain expert) drafting a section directly into `sections/[NN]_[section-slug].md`. Simpler form: briefer draft depth (1-2 alternatives, minimal scaling notes), no Key Debate Points / Synthesis Notes, no reference to peer drafts since none exist. Output path: `{{session_path}}/sections/{{cluster_slug}}.md` (using Factory's `_path` convention) — wait, Factory uses `{{session_path}}` for the session directory but `[NN]_[section-slug]` for the cluster slug. Holding that for now; see the Factory Path vs. Cluster Slug note below.
- **`idea-factory/prompts/phase3-section-draft_multi.md`** — per-persona drafts at medium/high effort writing to `drafts/[NN]_[section-slug]/[persona-slug].md`. Includes full effort-scaling (medium: 3-4 paragraphs + 2-3 alternatives; high: 4-5 paragraphs + 3-5 alternatives), context-isolation rule (peer drafts exist but must not be read — load-bearing for Factory's debate-through-independent-development design).

**File to delete:** `idea-factory/prompts/phase3-section-draft.md`

**SKILL.md routing update:** in `idea-factory/SKILL.md`, Phase 3:
- Phase 3-Low references → `phase3-section-draft_low.md`
- Phase 3A references → `phase3-section-draft_multi.md`

### Factory Path vs. Cluster Slug note

Factory currently uses `[NN]_[section-slug]` as a combined path segment (analogous to Symphony's `[NN]_[topic-slug]`). For consistency with the Symphony conversion, recommend converting these to `{{cluster_slug}}` (single combined var) — matching exactly what Symphony will use. Applies across all Factory prompts, templates, and SKILL.md references:

| Current | Target |
|---|---|
| `[NN]_[section-slug]` *(path context)* | `{{cluster_slug}}` |
| `[persona-slug]` *(path context)* | `{{persona_slug}}` |
| `[topic]` *(in a Factory user-facing template on phase1-intake lines 41 and 60)* | `{{topic}}` |

This is the analogue of the Symphony conversion. It's small in Factory (far fewer occurrences) but closes the consistency gap.

### Factory files affected

1. `idea-factory/prompts/phase1-intake.md` — `[topic]` user-facing occurrences → `{{topic}}`
2. `idea-factory/prompts/phase2-outline.md` — `[persona-slug]` → `{{persona_slug}}`; `[skill]` → `{{skill}}`
3. `idea-factory/prompts/phase3-persona-gen.md` — no substitution vars present; **no changes**
4. `idea-factory/prompts/phase3-section-draft.md` — **deleted** (replaced by two new files below)
5. `idea-factory/prompts/phase3-section-draft_low.md` — **new file**
6. `idea-factory/prompts/phase3-section-draft_multi.md` — **new file**
7. `idea-factory/prompts/phase3-section-synthesis.md` — no bracketed substitution vars; already compliant
8. `idea-factory/prompts/phase4-integration.md` — no bracketed substitution vars in path-instruction contexts (all paths use `{{session_path}}`); already compliant
9. `idea-factory/SKILL.md` — `[NN]_[section-slug]` → `{{cluster_slug}}`; `[persona-slug]` → `{{persona_slug}}`; Phase 3 routing updated for the two new files; **add `## Prompt conventions` block**
10. `idea-factory/templates/persona.md` — `[persona-slug]` path reference → `{{persona_slug}}`
11. `idea-factory/templates/section-low.md` — `[NN]_[section-slug]` → `{{cluster_slug}}`
12. `idea-factory/templates/section-medium-high.md` — `[NN]_[section-slug]` → `{{cluster_slug}}`
13. `idea-factory/templates/draft-section.md` — `[NN]_[section-slug]`, `[persona-slug]` → `{{cluster_slug}}`, `{{persona_slug}}`
14. `idea-factory/templates/factory-plan.md` — `[NN]_[section-slug]`, `[persona-slug]` → `{{cluster_slug}}`, `{{persona_slug}}`
15. `idea-factory/templates/index.md` — `[NN]_[section-slug]`, `[persona-slug]` path references → `{{cluster_slug}}`, `{{persona_slug}}`

## Implementation plan

Ordered steps. Each is atomic enough to be a single commit.

### Step 1 — Symphony conversion (single commit)

For each file in the Symphony file list:
- Apply `replace_all: true` Edit calls mapping old → new per the inventory table.
- Standardize `[NN]_[topic]` and `[NN]_[topic-slug]` to `{{cluster_slug}}`.
- Confirm no output-template brackets (e.g., `[Project Name]`, `[Question text]`) were changed.

Add `## Prompt conventions` block to `idea-symphony/SKILL.md`.

Verification: `grep` for `\[session\]|\[skill\]|\[NN\]|\[persona-name\]|\[topic-slug\]|\{[A-Z]` in `idea-symphony/` should return no matches outside of persona or guidance files where placeholders aren't used.

### Step 2 — Factory conversion (single commit)

- Create `phase3-section-draft_low.md` and `phase3-section-draft_multi.md` from the current `phase3-section-draft.md` (split per the rationale).
- Delete `phase3-section-draft.md`.
- Update `idea-factory/SKILL.md` Phase 3 routing for the two new files.
- Apply the small `{{cluster_slug}}` / `{{persona_slug}}` / `{{topic}}` / `{{skill}}` conversions across Factory prompts, templates, and SKILL.md.
- Add `## Prompt conventions` block to `idea-factory/SKILL.md`.

Verification: `grep` for `\[NN\]|\[persona-slug\]|\[section-slug\]|\{\{#if` in `idea-factory/` should return no matches outside output-template Brackets (Title Case fill-in slots).

### Step 3 — Revise existing review memos (single small patch)

- `dev/2026-04-19_idea-symphony-prompt-review.md` — update "Before:" strings in E2-type edits (Inputs sections referencing `[session]`/`[skill]`) and "After:" strings to use `{{session}}`/`{{skill}}`/`{{cluster_slug}}`. Mechanical pass; I'll mark it as "revised after syntax conversion" at the top.
- `dev/2026-04-19_idea-factory-prompt-review.md` — similar pass. Prompt #4 (phase3-section-draft) needs a more substantial revision because it's now two separate files; I'll split the Prompt #4 review into a Prompt #4-low and Prompt #4-multi subsection while preserving the edits from each.

### Step 4 — Apply the review-memo edits (single commit, or two — one per skill)

At this point the prompts already use the new syntax, so the review edits land on a consistent foundation. No surprises.

## Open items before I start

- **Should Symphony use `{{session}}` / `{{skill}}` (no `_path` suffix) or `{{session_path}}` / `{{skill_path}}` (match Factory's suffix style)?** Factory uses `_path` because it needs to distinguish two paths (`{{session_path}}` vs `{{symphony_path}}`). Symphony only has one, so the suffix is redundant. My default: Symphony stays suffix-less.
- **Should templates (in both skills) use `{{…}}` inside their output frontmatter or stay with brackets?** Brackets in output-template slots are meant to be filled by the subagent during generation. But when the subagent writes the output, the value it fills in IS the resolved substitution variable. Using `{{…}}` in templates makes the prompt-to-template relationship visually explicit: the prompt contains `{{session}}`; the template also contains `{{session}}`; both are substituted by the orchestrator before the subagent writes the file. My default: **convert templates too.**
- **Factory Prompt #4 split in the review memo** — once the file becomes two, the existing review edits (E1–E9) need to be partitioned: some apply to `_low.md`, some to `_multi.md`, a couple apply to both. I'll mark the split in Step 3 revisions.

## Awaiting approval

Plan is self-contained. No files touched yet. Say **go** and I'll execute Steps 1 → 2 → 3 → 4 in order; I'll pause after Step 2 to show you the converted state before moving to the review-memo revisions.

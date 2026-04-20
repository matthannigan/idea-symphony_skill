# Idea Factory Prompt Review — 2026-04-19

**Status:** Revised after the syntax-conversion pass landed (see [dev/2026-04-19_skill-prompt-syntax-conversion.md](2026-04-19_skill-prompt-syntax-conversion.md)). All "Before:" and "After:" strings below now reflect the post-conversion syntax: `{{lowercase_underscored}}` for orchestrator substitution variables, `[Title Case Descriptive Slot]` for output-template placeholders. The edits themselves are unchanged.

**Prompt #4 is superseded.** During the syntax conversion, `phase3-section-draft.md` was split into two new files; see the PATCH banner inside Prompt #4's section below for details.

Review of the six prompts in `idea-factory/prompts/` invoked by [idea-factory/SKILL.md](../idea-factory/SKILL.md), applying Anthropic's prompting best practices. Markdown-only (no XML). Depth: **medium** — add missing rationale/grounding/positive framing; restructure section order where helpful; add concrete examples where format is load-bearing; no heavy rewrites.

The user noted that Factory prompts have not had much recent work (latest commits are `e84ea2a` restructure and `df24e0d` SKILL.md best-practices pass — no deep test-driven validation like Symphony's R1–R12). There are no validated hard-floor rules to preserve, so edits can be slightly more liberal than in the Symphony review.

## Scope

All six prompts in the directory are in scope:

1. `idea-factory/prompts/phase1-intake.md` (106 lines) — orchestrator-run, user-interactive (Phase 1)
2. `idea-factory/prompts/phase2-outline.md` (128 lines) — orchestrator-run, user-interactive (Phase 2A + 2B)
3. `idea-factory/prompts/phase3-persona-gen.md` (80 lines) — reference guidance for Phase 2B
4. `idea-factory/prompts/phase3-section-draft.md` (116 lines) — **subagent** (Phase 3-Low or Phase 3A)
5. `idea-factory/prompts/phase3-section-synthesis.md` (144 lines) — **subagent** (Phase 3B)
6. `idea-factory/prompts/phase4-integration.md` (99 lines) — orchestrator or subagent (Phase 4)

## Checklist (applied per prompt)

- **Role & scope** — state goal up top; state scope explicitly for Opus 4.7 literal interpretation
- **Context & motivation** — non-obvious rules carry a one-line **Why:** rationale
- **Inputs near the top** — file paths to Read listed before the task
- **Positive framing** — replace "do not …" with the positive equivalent where practical; concrete pass/fail signals
- **Examples** — 1–2 few-shot examples where output style is load-bearing
- **Output control** — template as a fenced code block; output path stated once, unambiguously
- **Tool use & action** — parallel Reads encouraged for independent inputs; scratch-file creation discouraged
- **Grounding** — "read before answering; cite verbatim; do not speculate"
- **Verbosity** — explicit voice/length guidance where long-form output is produced

## Markdown substitutes for XML (reference)

| XML | Markdown |
|---|---|
| `<instructions>` | `## Instructions` |
| `<context>` | `## Context` |
| `<example>` | `## Example`, with fenced **Input:** / **Output:** blocks |
| `<document>` + `<source>` | Fenced block preceded by `**Source:** <path>` |
| `<quote>` | `> …` blockquote |
| Tag-delimited config | `---` rules + `**Why:**`/`**Rule:**` callouts |

## Factory-specific conventions to preserve

- `{{double-curly-braces}}` placeholders for orchestrator substitution (distinct from Symphony's `{SINGLE-CURLY}` + `[bracketed]` patterns).
- Mustache-style `{{#if effort_low}}` conditionals in `phase3-section-draft.md` — these are not a live templating engine; the subagent reads the block matching the session's effort level.
- Symphony session is **referenced, not copied** — subagents read Symphony files directly from their session path.

---

## 1 — `idea-factory/prompts/phase1-intake.md`

**Role:** Orchestrator-run, user-interactive. Reads the completed Symphony session, analyzes intent, presents a scope summary to the user for confirmation, asks about output format, determines effort level, and writes `FACTORY-PLAN.md` + `SCOPE.md`.

### Strengths

- Role stated in line 3; explicit `## Inputs` section at the top.
- Six numbered steps in Instructions, each with a clear purpose.
- Subfolder exclusion rule stated explicitly: "Do NOT read subfolders (questions/by-persona, responses/, synthesis/)". Necessary to preserve orchestrator context.
- Content-vs-context distinction well-articulated, with concrete examples.
- Top insights / key tensions / strongest recommendations as three distinct extraction targets.
- User-facing scope summary template ready to fill in.
- Output format question presents three options with suggestion logic.
- Effort level suggestion logic tied to scope complexity.
- Quality Gate at the end.

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope / literal interpretation | Opening covers the role but not the file-system boundaries. Add: "Do not modify any files outside `{{session_path}}`. The Symphony directory is read-only — the four files named in Step 1 are the only files you should read from it." |
| G2 | Grounding | Step 2 asks for "original intent" but doesn't require grounding in REQUEST.md text. For a scope summary the user confirms, paraphrases drawn verbatim from REQUEST.md are more trustworthy. Add: "When describing original intent, use verbatim or close-paraphrase quotes from `REQUEST.md` rather than invented framing." |
| G3 | Subfolder exclusion — Why | The "Do NOT read subfolders" line is correct but has no **Why:**. A one-liner makes the rule self-defending when an orchestrator is tempted to dig deeper: "Each Symphony synthesis file is 11–17K and each by-topic synthesis is 24–34K. Reading them all blows the orchestrator's context window before it can do any planning." |
| G4 | Tool use / parallel reads | Step 1 reads 4 Symphony files. No parallel-read hint. |
| G5 | Positive framing | "Do NOT read subfolders" stays emphatic. Consider flipping "Do not read subfolders" to "Read only the four files named in Step 1; BRAINSTORM.md and QUESTIONS.md already carry the consolidated information you need" — positive + contains the rationale. Keep a short negative guardrail for emphasis. |
| G6 | Placeholder clarification | The user-facing scope-summary template (Step 3) and the output-format question (Step 4) use bracketed placeholders (`[topic]`, `[1-2 sentences]`). One line above each template removes ambiguity. |
| G7 | Implementation-status note | Step 4's trailing **Note** about "Phase 4 handling of revised documents is planned but not yet implemented" is meta-scaffolding that belongs at the end of the file, not mid-flow. A user reading this prompt in-order gets the instruction, offers three options, and is then told one isn't fully wired — better to surface that once in a `## Notes` section. |
| G8 | Scratch files | Not mentioned. |
| G9 | Verbosity | User-facing scope summary template is the right length; no voice guidance needed here (the template itself sets the style). |

### Proposed edits

**E1 — Expand opening (lines 1-3):**

> _Before:_ "You are the Idea Factory orchestrator. Your task is to read a completed Idea Symphony session and establish the scope for an action plan."
>
> _After:_ "You are the Idea Factory orchestrator. Your task is to read a completed Idea Symphony session and establish the scope for an action plan. Do not modify any files outside `{{session_path}}` — the Symphony directory is read-only and only the four files named in Step 1 should be read from it. Your outputs are exactly two files: `{{session_path}}/FACTORY-PLAN.md` and `{{session_path}}/SCOPE.md`."

**E2 — Add parallel-read hint** (as a new sentence at the top of Step 1):

> The four files below are independent — read them in parallel.

**E3 — Positive-frame and annotate the subfolder rule:**

> _Before:_ "**Do NOT read subfolders** (questions/by-persona, responses/, synthesis/). The BRAINSTORM.md and QUESTIONS.md files contain the consolidated information you need."
>
> _After:_ "**Read only the four files listed above.** Each Symphony synthesis file is 11–17K and each by-topic synthesis is 24–34K; reading the subfolders (`questions/by-persona/`, `responses/`, `synthesis/`) at the intake stage blows the orchestrator's context window before it can do any planning. `BRAINSTORM.md` and `QUESTIONS.md` already carry the consolidated information you need."

**E4 — Grounding line in Step 2:**

Insert at the top of Step 2:

> Use verbatim or close-paraphrase quotes from `REQUEST.md` when describing the original intent. Do not invent framing the REQUEST does not contain.

**E5 — Placeholder clarification on user-facing templates:**

Insert one line above each of the two fenced templates (Step 3 scope summary and Step 4 output-format question):

> Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings.

**E6 — Move the implementation-status note to a `## Notes` section at the end:**

Remove the current trailing sentence in Step 4:

> "**Note:** This preference is captured for now. All sessions currently produce the standard ACTION-PLAN.md recommendations format — Phase 4 handling of revised documents is planned but not yet implemented."

Add a new `## Notes` section after the Quality Gate:

> ## Notes
>
> - **Output format capture vs. implementation:** the user's output-format preference is captured in `SCOPE.md` but Phase 4 currently always produces the standard `ACTION-PLAN.md` recommendations format. Revised-document handling in Phase 4 is planned but not yet implemented — if the user chose "Revised document" or "Both", acknowledge the capture but explain that Phase 4 will still produce `ACTION-PLAN.md`.
> - Do not create scratch files, helper scripts, or intermediate outputs. Write only the two files specified.

### Do-not-regress inventory

1. Four required Symphony files (REQUEST, PLAN, QUESTIONS, BRAINSTORM).
2. Subfolder-exclusion rule (no reads from `questions/by-persona/`, `responses/`, `synthesis/`).
3. Content-vs-context distinction and the 3-5 top insights / key tensions / strongest recommendations extraction.
4. Three output format options (Recommendations / Revised document / Both) with the existence-based suggestion logic.
5. Effort-level suggestion logic (low / medium / high with scope criteria).
6. Default to medium when unclear.
7. Output files: `FACTORY-PLAN.md` and `SCOPE.md` via the `{{skill}}/templates/` files.
8. Quality Gate items.

---

## 2 — `idea-factory/prompts/phase2-outline.md`

**Role:** Orchestrator-run, user-interactive. Two parts: (A) creates the `OUTLINE.md` structural plan; (B) auto-generates project-specific personas and writes `personas/{{persona_slug}}.md`. Presents both to the user for approval.

### Strengths

- Clear role; `## Inputs` section at top.
- Explicit two-part structure (Part A: Outline, Part B: Persona Generation).
- "Reorganize for action, not mirror Symphony topics" framing — encodes a Factory-specific design decision.
- "Each section should be independently actionable" rule (personas can develop it without waiting on others).
- Per-section fields: Title, Scope description, Key brainstorming inputs, Decision points.
- Persona count targets per effort level (1 / 5-7 / 7-10 total; 1 / 3 / 4-5 per section).
- Title-based naming rule with good/bad examples.
- Four productive-tension axes (quality/efficiency, innovation/reliability, user-needs/constraints, short/long-term).
- Low-effort exception carved out explicitly.
- Quality Gate at the end.

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope | Opening doesn't lock file-system scope. Add: "Your outputs are `OUTLINE.md` and one file per persona at `personas/{{persona_slug}}.md`. Do not modify any files outside `{{session_path}}`. Symphony files are read-only." |
| G2 | Cross-reference | SKILL.md calls `phase3-persona-gen.md` "**Guidance**" for Phase 2B, yet this prompt duplicates chunks of that guidance (naming rule, tension axes, low-effort exception) without pointing to it. A single reference line reduces duplication and helps future edits stay consistent. |
| G3 | Tool use / parallel reads | Part A reads three input files (SCOPE.md, BRAINSTORM.md, QUESTIONS.md). No parallel-read hint. |
| G4 | Positive framing | "Bad: 'Sarah Johnson' or 'The Strategist'" uses negative examples which are load-bearing here (they're demonstrating the rule). Keep. Elsewhere the prose is already positively framed. |
| G5 | Placeholder clarification | Part A "Present to User" template and Part B "Present Personas to User" template both use bracketed placeholders. |
| G6 | Verbosity | Part A instructions mix the *what* (outline structure) with the *how* (present to user, approve, save). Clean separation would help — four sub-steps: Read → Design → Present → Save. Minor. |
| G7 | Scratch files | Not mentioned. |
| G8 | `FACTORY-PLAN.md` update | "Update Status" section at the bottom updates FACTORY-PLAN.md — this is a write to a file outside SCOPE boundary. Should be called out in Inputs or made explicit. (The file is inside `{{session_path}}` so it's fine; just add it to the output list in E1.) |

### Proposed edits

**E1 — Expand opening:**

> _Before:_ "You are the Idea Factory orchestrator. Your task is to create the structural outline for the action plan and generate project-specific personas that will develop section content."
>
> _After:_ "You are the Idea Factory orchestrator. Your task is to create the structural outline for the action plan and generate project-specific personas that will develop section content. Your outputs are `{{session_path}}/OUTLINE.md`, one file per persona at `{{session_path}}/personas/{{persona_slug}}.md`, and an update to `{{session_path}}/FACTORY-PLAN.md` (Phase 2 status). Do not modify any files outside `{{session_path}}`. Symphony files are read-only."

**E2 — Add cross-reference to the guidance file** (insert at the top of Part B):

> ## Part B: Persona Generation
>
> The principles, naming rules, productive-tension axes, and effort-level scaling in this section are the working summary for a single-session orchestrator. The canonical guidance — with more worked examples by project domain and a red-flags checklist — lives at `{{skill}}/prompts/phase3-persona-gen.md`. Consult it if you need more detail than this section provides.

**E3 — Add parallel-read hint** (inside Part A Instructions):

> The three files below are independent — read them in parallel.

**E4 — Placeholder clarification** (one line above each user-facing template):

> Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings.

**E5 — Restructure Part A into four clean sub-steps** (light reorganization — no content changes):

> ### Part A: Structural Outline
>
> **Step 1 — Read.** Read `{{session_path}}/SCOPE.md` for scope decisions; `{{symphony_path}}/BRAINSTORM.md` for key insights and topic summaries; `{{symphony_path}}/QUESTIONS.md` for the full question set. The three files are independent — read them in parallel.
>
> **Step 2 — Design the outline.** (existing "Create the Outline" block.)
>
> **Step 3 — Present to the user for approval.** (existing "Present to User" block.)
>
> **Step 4 — Save.** (existing "Save Outline" block.)

**E6 — Add `## Notes` at the end:**

> ## Notes
>
> - Do not create scratch files, helper scripts, or intermediate outputs. Write only the outputs listed in the opening: `OUTLINE.md`, persona files, and the FACTORY-PLAN.md Phase 2 status update.

### Do-not-regress inventory

1. "Reorganize for action, not mirror Symphony topics" principle.
2. "Independently actionable" rule per section.
3. 4-8 sections in the outline.
4. Per-section fields: Title, Scope description, Key brainstorming inputs, Decision points.
5. User approval gate for both outline and personas.
6. Persona count per effort (1 / 5-7 / 7-10 total; 1 / 3 / 4-5 per section).
7. Title-based naming rule with good/bad examples.
8. Four productive-tension axes.
9. "2-3 sections per persona ideal for cross-cutting" heuristic.
10. At least one audience-advocate, one constraints-focused, one creative persona (medium/high).
11. Low-effort: single broad domain expert with title-based name.
12. Save paths: `OUTLINE.md`, `personas/{{persona_slug}}.md` via the `{{skill}}/templates/` files.
13. Quality Gate items.

---

## 3 — `idea-factory/prompts/phase3-persona-gen.md`

**Role:** Reference guidance document consulted by `phase2-outline.md` Part B. Not a task prompt — SKILL.md calls this file "**Guidance**". Principles-and-examples style.

### Strengths

- Five-principle structure: Specificity / Productive Tension / Complete Coverage / Scaling by Effort / Definition Quality.
- Domain-specific examples table with four project domains (birthday party, grant program, product feature, nonprofit ops) and good-vs-bad persona-name examples for each.
- Explicit naming pattern formula: `[Area of Expertise] + [Role Type]`.
- Four productive-tension axes enumerated.
- Effort-level scaling table.
- Low-effort exception with the title-based-name rule reinforced.
- Required-components list + red-flags list for persona definitions.

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Role / framing | Opening line "Guidance for the orchestrator when auto-generating project-specific personas" is correct but could be more explicit about the consumer: "Consumed by: `phase2-outline.md` Part B". |
| G2 | Duplication | Title-based-name emphasis appears in Section 1 ("IMPORTANT: Use title-based names, not personal names") and again in Section 4 Low-Effort Guidance ("IMPORTANT: The title-based naming rule (Section 1) applies to low effort too"). The second mention is valuable (clarifies low effort isn't a carve-out) — keep it, but unify the phrasing. |
| G3 | Key Quote component | Listed as required in Section 5 ("Key Quote — a single crystallizing sentence that captures their worldview") but not shown in the examples elsewhere. The phase2-outline.md Part B presentation template also doesn't show Key Quote. Minor inconsistency — either surface the Key Quote in an example or note that it's part of the persona file, not the user-facing summary. |
| G4 | Contents / navigation | Five principles with an effort-level table embedded — a one-line `## Contents` TOC at the top would help navigability. |
| G5 | Positive framing | Most of this file is already positively framed. "Bad examples" in the domains table are load-bearing for the naming rule — keep. |
| G6 | Red flags | "Using personal names instead of title-based roles" in Red Flags duplicates Section 1. Low risk; keep for defensive redundancy or consolidate. |

### Proposed edits

**E1 — Expand opening + add consumer reference:**

> _Before:_ "# Phase 3: Persona Generation Guidance\n\nGuidance for the orchestrator when auto-generating project-specific personas for the Factory session."
>
> _After:_ "# Phase 3: Persona Generation Guidance\n\nCanonical guidance for auto-generating project-specific personas in a Factory session.\n\n**Consumed by:** `phase2-outline.md` Part B. The summary rules embedded there are sufficient for most sessions; consult this file when a session's domain is unusual or when the Part B template isn't producing personas that pass the red-flags checklist below."

**E2 — Add `## Contents` near the top:**

> ## Contents
>
> 1. Specificity Over Generality (naming rule + domain examples)
> 2. Productive Tension (tension axes)
> 3. Complete Coverage (section-assignment rules; medium/high effort)
> 4. Scaling by Effort Level (persona-count table + low-effort exception)
> 5. Persona Definition Quality (required components + red flags)

**E3 — Clarify the Key Quote component** (expand Section 5's "Key Quote" bullet):

> - **Key Quote** — A single crystallizing sentence that captures their worldview. This lives inside the persona file at `personas/{{persona_slug}}.md` for subagents to consume; it does not need to appear in the user-facing persona summary that `phase2-outline.md` Part B presents.

**E4 — Unify the title-based naming emphasis:**

Keep the **IMPORTANT** line in Section 1. In Section 4, rephrase the duplicate as a cross-reference rather than a repeated IMPORTANT:

> _Before:_ "**IMPORTANT: The title-based naming rule (Section 1) applies to low effort too.** Use a role title like 'Civic Innovation Program Director' or 'Community Program Design Specialist' — NOT a personal name like 'Morgan Chen' or 'Alex Rivera.' The persona is a role, not a character."
>
> _After:_ "**Low-effort note:** the title-based naming rule (Principle 1) is not a medium/high-only rule. Even with a single persona, use a role title like 'Civic Innovation Program Director' or 'Community Program Design Specialist' — not 'Morgan Chen' or 'Alex Rivera.' The persona is a role, not a character."

### Do-not-regress inventory

1. Five principles in their current order.
2. Domain-specific examples table (4 domains × good/bad persona names).
3. Naming pattern formula `[Area of Expertise] + [Role Type]` with `✓` / `✗` examples.
4. Four productive-tension axes.
5. "Multiple personas per section" rule and "overlap is good" heuristic.
6. Effort-level scaling table (personas per section, persona depth, tension level).
7. Low-effort guidance: single broad domain expert, practical + action-oriented, balances practicality with creativity.
8. Low-effort title-based-name rule applies.
9. Required components list (Core perspective, Priorities, Advocacy, Assigned sections, Key Quote).
10. Red flags list (6 items).

---

## 4 — `idea-factory/prompts/phase3-section-draft.md` *(SUPERSEDED — split)*

> **PATCH (post-syntax-conversion, 2026-04-19):** During the syntax-conversion pass, this prompt was split into two files:
>
> - [idea-factory/prompts/phase3-section-draft_low.md](../idea-factory/prompts/phase3-section-draft_low.md) — single persona, direct to `sections/`, no peer-draft context.
> - [idea-factory/prompts/phase3-section-draft_multi.md](../idea-factory/prompts/phase3-section-draft_multi.md) — per-persona at medium/high, writes to `drafts/`, includes context-isolation rule.
>
> The original `phase3-section-draft.md` has been deleted; SKILL.md Phase 3 routing points to the two new files. The Handlebars `{{#if effort_low}}` / `effort_medium` / `effort_high` conditionals are gone — each file is now single-purpose.
>
> **Edit status for E1–E9 below:** all edits were folded into the two new files during creation. The new files are already at their post-review state — **no pending edits to apply** for this prompt pair.
>
> - **E1** (scope lock): applied in both new files' opening paragraphs.
> - **E2** (conditional-block clarification): N/A — the split eliminates the conditional blocks entirely.
> - **E3** (context-isolation norm tightened): applied in `_multi.md` (context isolation from peer drafts, with **Why:** line). Not applicable to `_low.md` since no peer drafts exist.
> - **E4** (positive-frame Symphony-reads rule): applied in both.
> - **E5** (grounding with traceability): applied in both — "Cite Symphony topic-cluster numbers + short quote or paraphrase."
> - **E6** (parallel-read hint): applied in both.
> - **E7** (placeholder clarification): applied in both.
> - **E8** (persona voice line): applied in `_multi.md` (where multi-perspective makes voice differentiation load-bearing). `_low.md` keeps persona voice guidance at the standard "Stay in character" level.
> - **E9** (Notes / no-scratch-files): applied in both.
>
> The review content below is preserved for historical reference on the design choices that shaped the split.

---

**Role (pre-split):** SUBAGENT. Spawned per-persona at Phase 3A (medium/high) or once per section at Phase 3-Low. Reads Symphony synthesis summaries, adopts a persona, drafts section recommendations with alternatives and scaling notes. Context isolation from peer drafts is load-bearing.

### Strengths

- Role adoption with `{{persona_path}}` — explicit "Read this file first. Adopt this persona fully."
- Project Context section enumerates reads with purposes (SCOPE, OUTLINE, BRAINSTORM).
- **Symphony file-size warnings are quantitative:** "each summary is 11-17K and each synthesis is 24-34K". Best-in-class context-window prose in this repo — keeps subagents from reading all synthesis files on reflex.
- Optional deeper-dive rule: read `_synthesis.md` only when summary is insufficient.
- Three-field draft structure (Core Recommendation, Alternative Approaches, Scaling Notes) with concrete sub-fields.
- Effort-conditional blocks `{{#if effort_low}}`/`{{#if effort_medium}}`/`{{#if effort_high}}` adjust draft depth.
- Low-effort output path exception (sections/ not drafts/) explicit.
- YAML frontmatter template.
- Output structure with ### Alternative A/B/C.
- Five "Important" reminders at the end covering stay-in-character, specificity, grounding, constraints, independence.

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope | Opening is two lines; could lock output scope ("exactly one file at `{{output_path}}` — do not modify any other files"). |
| G2 | Effort-conditional blocks | `{{#if effort_low}}` / `{{#if effort_medium}}` / `{{#if effort_high}}` are Jinja/Handlebars syntax, but nothing in SKILL.md describes a live templating engine. If the orchestrator is not pre-rendering the prompt, the subagent sees all three branches verbatim. The subagent should be told explicitly: "Only the block whose effort tag matches `{{effort_level}}` applies to you; ignore the other two." (Alternative: orchestrator should pre-render — but that's an orchestrator change.) |
| G3 | Output path ambiguity | The "Output Format" section says "Save your draft to: `{{output_path}}`" which is orchestrator-substituted. The low-effort block overrides this with a literal path: `sections/{{section_slug}}.md`. Tightening: state once, canonically, that `{{output_path}}` is substituted by the orchestrator to the correct path for the effort level. |
| G4 | Context isolation — Why | "You're drafting independently. You won't see what other personas recommend until synthesis. That's by design — it ensures genuine perspective diversity." Good but can be more emphatic. Add an explicit "Do not read any files in `drafts/` other than your own output path; context isolation is load-bearing for Factory's debate-through-independent-development design." |
| G5 | Grounding | "Ground in brainstorming. Reference specific insights from the Symphony session." Good. Could be tightened: "Cite topic-cluster numbers (e.g., Symphony Topic 03) and a short quote or paraphrase so the synthesis step can trace lineage back to the source." |
| G6 | Positive framing | "Do NOT read all summary or synthesis files" is load-bearing and should stay, but could be paired with a positive rephrase: "Read only the Symphony synthesis summaries for the topic clusters assigned to your section (see the OUTLINE.md mapping)." |
| G7 | Parallel reads | Subagent reads persona file, SCOPE.md, OUTLINE.md, BRAINSTORM.md, plus 2–5 summary files. Parallel-read hint is free. |
| G8 | Placeholder clarification | Output template uses bracketed placeholders. Same canonical clarification line. |
| G9 | Scratch files | Not mentioned. |
| G10 | Voice / persona authenticity | "Stay in character" — good. Could add one line on letting persona vocabulary and evidence-preferences show up in recommendations (mirroring the Symphony phase3 approach). |

### Proposed edits

**E1 — Expand opening + lock scope:**

> _Before:_ "You are developing a section of an action plan from a specific persona's perspective."
>
> _After:_ "You are a Factory subagent developing one section of an action plan from a specific persona's perspective. Your output is exactly one markdown file at `{{output_path}}` — the orchestrator substitutes this path based on effort level (`drafts/{{section_slug}}/{{persona_slug}}.md` for medium/high; `sections/{{section_slug}}.md` for low effort). Do not modify any other files."

**E2 — Clarify the effort-conditional block convention** (insert before "Draft Depth by Effort Level"):

> The three blocks below are tagged `effort_low` / `effort_medium` / `effort_high`. Apply the block whose tag matches `{{effort_level}}` — the others do not apply. If your effort level is `medium`, the `effort_medium` block is authoritative and the low/high blocks can be ignored.

**E3 — Tighten the context-isolation norm** (replace the existing "You're drafting independently" reminder at the bottom with a stronger version, positioned inside Project Context):

> **Context isolation — mandatory.** Do not read any files in `drafts/` other than the single `{{output_path}}` you are writing to. You will not see what other personas recommend for this section until synthesis. **Why:** Factory's debate-through-independent-development design depends on persona drafts being genuinely independent. If you read peer drafts, your recommendation will drift toward theirs and the synthesis step loses the tension it was designed to surface.

**E4 — Positive-frame the Symphony-reads rule:**

> _Before:_ "**Do NOT read all summary or synthesis files.** Each summary is 11-17K and each synthesis is 24-34K. Reading them all will crowd your context window. Only read the summaries relevant to your assigned section."
>
> _After:_ "**Read only the Symphony synthesis summaries for the topic clusters mapped to your section in OUTLINE.md.** Each summary is 11–17K and each synthesis file is 24–34K; reading them all will crowd your context window before you finish drafting. The OUTLINE.md `Key brainstorming inputs` field for your section names the specific topic clusters to read."

**E5 — Grounding with traceability:**

> _Before:_ "**Ground in brainstorming.** Reference specific insights from the Symphony session."
>
> _After:_ "**Ground in brainstorming with traceability.** Cite Symphony topic-cluster numbers (e.g., 'Symphony Topic 03') and a short quote or paraphrase when building on a specific insight. The synthesis step traces lineage back to sources, and your attributions are what makes that possible."

**E6 — Parallel-read hint** (inside Project Context):

> The four context files above are independent; read them in parallel. The Symphony synthesis summaries for your assigned topic clusters can be read in the same batch.

**E7 — Placeholder clarification** (one line above the output template):

> Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings.

**E8 — Persona voice line** (inside the existing "Important" block):

> - **Let the persona's voice show up in specifics.** Vocabulary, the kind of evidence cited, what counts as a "good" reason for a recommendation — these differ by persona. A UX Research Lead talks about users' mental models; a Fiscal Sustainability Analyst talks about unit economics. Persona differentiation shows in the texture of the recommendation, not just its topic.

**E9 — `## Notes` at the end:**

> ## Notes
>
> - Do not create scratch files, helper scripts, or intermediate outputs while drafting. Write only the single markdown file at `{{output_path}}`.

### Do-not-regress inventory

1. Adopt persona "fully" from `{{persona_path}}`.
2. Three context files (SCOPE, OUTLINE, BRAINSTORM) + section-mapped Symphony summaries.
3. Context-window warning with actual file sizes (11–17K summaries, 24–34K syntheses).
4. Optional deeper-dive into `_synthesis.md` only when summary is insufficient.
5. Three draft fields: Core Recommendation (2–4 paragraphs), Alternative Approaches (Name, Description, Trade-offs, Best when), Scaling Notes (Minimal, Expanded).
6. Effort-level draft depth scaling (low brief + 1-2 alternatives; medium 3-4 paragraphs + 2-3 alternatives; high 4-5 paragraphs + 3-5 alternatives).
7. Low-effort output path exception (sections/ not drafts/, no Key Debate Points or Synthesis Notes sections).
8. YAML frontmatter: `section`, `title`, `persona`, `date`.
9. Output structure: `## Core Recommendation` → `## Alternative Approaches` (`### Alternative A/B/C`) → `## Scaling Notes` → `## Notes`.
10. Five "Important" reminders (stay in character, be specific, ground in brainstorming, acknowledge constraints, drafting independently).
11. Independence as skill-wide design invariant.

---

## 5 — `idea-factory/prompts/phase3-section-synthesis.md`

**Role:** SUBAGENT. Phase 3B. Reads multiple independent persona drafts for a single section, reconciles them into a single `sections/{{section_slug}}.md` file with a synthesized core recommendation, alternatives, scaling notes, and debate points.

### Strengths

- Clear role + task statement referencing `{{section_number}}: {{section_title}}`.
- `## Inputs` section with explicit placeholder `{{persona_draft_paths}}` plus three context files.
- Six-step synthesis process (Analyze → Identify Patterns → Core Rec → Alternatives → Scaling → Debate Points).
- Four pattern categories with clear interpretation: Convergence (strong signal for core), Tensions (become alternatives/debate points), Unique insights (evaluate for inclusion), Complementary perspectives (integrate into richer core).
- Core recommendation rules: prioritize convergent, integrate complementary, "more than sum of parts", specific + actionable.
- Alternatives rule: "genuine alternatives, not minor variations" — concrete anti-example ("Do X on Tuesdays vs. Wednesdays isn't an alternative").
- Debate points framed as if personas actually debated (good narrative device for a written synthesis).
- YAML frontmatter includes `contributors` and `synthesis_approach`.
- Five-item Quality Standards block.
- "Remember" closing: "you're not just averaging perspectives — you're creating something better than any single persona could produce."

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope | Opening is one line. Lock output scope. |
| G2 | Examples | No concrete before/after example showing "3 persona drafts → 1 synthesized core rec with attributed debate points". Given this is the prompt where the skill's debate-through-synthesis value prop actually lands, one worked example is high-leverage. |
| G3 | Parallel reads | Subagent reads N persona drafts (3–5) plus SCOPE, OUTLINE, BRAINSTORM. Parallel-read hint. |
| G4 | Convergence threshold | "If 3/4 personas recommend X, that's the core" is good. Doesn't address 2/4 or 2/5 splits explicitly. Add: "When no clear majority emerges (e.g., 2-2 or 2-3 splits), surface the split as the core tension — name it and pick the approach with the stronger rationale, with the losing approach preserved as the top alternative." |
| G5 | Positive framing | "Don't dilute into vague platitudes" → "Commit to specific, testable, actionable language." |
| G6 | Placeholder clarification | Output template uses bracketed placeholders. |
| G7 | Scratch files | Not mentioned. |
| G8 | Verbosity / voice | No explicit voice guidance for the synthesized core recommendation. Opus 4.7's terser default may produce clipped prose where readable prose serves the deliverable better. |

### Proposed edits

**E1 — Expand opening + lock scope:**

> _Before:_ "You are synthesizing multiple persona perspectives into a cohesive section recommendation."
>
> _After:_ "You are a Factory synthesis subagent reconciling independent persona drafts into a cohesive section recommendation. Your output is exactly one markdown file at `{{output_path}}` — do not modify any other files."

**E2 — Add one worked synthesis example** (insert between Step 2 "Identify Patterns" and Step 3 "Create Core Recommendation"):

> **Example — three drafts into one synthesized core recommendation (hypothetical section: "Volunteer Recruitment" for a tool library project):**
>
> > **The Community Engagement Director wrote:** "Focus on relationship-based recruitment through existing neighborhood networks — tabling at school PTAs, farmers' markets, and faith gatherings. Cold recruiting online produces volunteers who never show up the second week."
> > **The Event Operations Manager wrote:** "Standardize a 90-minute orientation that covers tool safety, checkout procedures, and the three most common failure modes. Without orientation, volunteer retention drops 60% after the first incident."
> > **The Fiscal Sustainability Analyst wrote:** "Volunteer coordination is the most expensive budget line after tool replacement — budget 0.3 FTE of paid coordinator time per 50 volunteers. Programs that skip this see coordinator churn every 8 months."
>
> A well-synthesized core recommendation:
>
> > **Core Recommendation:** Build a two-track volunteer program that combines relationship-based recruitment with a structured onboarding pipeline and a dedicated coordinator role. Recruit through local networks the Community Engagement Director names — PTAs, farmers' markets, faith communities — which deliver volunteers with existing social ties and higher retention than online recruitment. Channel every new volunteer through a 90-minute orientation covering tool safety, checkout procedures, and common failure modes; retention drops 60% after the first incident without this step. Fund 0.3 FTE of paid coordinator time per 50 volunteers — this is the most expensive budget line after tool replacement, but programs that skip it see coordinator churn every 8 months, at which point all three pillars collapse.
> >
> > **Key Debate Points:**
> > - **Paid coordinator vs. volunteer coordinator:** The Fiscal Sustainability Analyst treated paid coordinator time as a non-negotiable line item; the Community Engagement Director implied that a strong volunteer network could self-coordinate. **Resolution:** Budget paid coordinator time in the core plan; document "volunteer-coordinated" as the minimal-resources scaling tier with a 12-month timeline review.
>
> The synthesized core pulls one specific mechanism from each draft (recruitment channel, orientation length + content, FTE sizing), keeps each draft's quantitative anchor (60% retention drop, 0.3 FTE, 8-month churn), and surfaces the one genuine tension — paid vs. volunteer coordinator — as a debate point with an explicit resolution.

**E3 — 2-2 / 2-3 split guidance** (add as a final bullet in Step 3 "Create Core Recommendation"):

> - **When convergence is unclear** (2-2 or 2-3 splits with no majority): name the split as the core tension — pick the approach with the stronger rationale for the core recommendation, and preserve the losing approach as the top alternative in Step 4. Don't split the difference by synthesizing a middle path the personas didn't propose.

**E4 — Voice line for core recommendation** (inside the existing "Quality Standards" or as a new line at the top of Step 3):

> Write the core recommendation as readable prose — paragraph-form, not a bullet list. Direct and specific, with enough texture that a decision-maker can act on it. The alternatives section carries structured detail; the core carries the integrated judgment.

**E5 — Positive framing:**

> _Before:_ "Don't dilute into vague platitudes."
>
> _After:_ "Commit to specific, testable, actionable language — the kind that names a concrete mechanism, a quantified target, or a named stakeholder, not 'consider leveraging community engagement.'"

**E6 — Parallel-read hint** (inside Inputs):

> The persona drafts are independent of each other and independent of the three context files — read all of them in a single parallel batch.

**E7 — Placeholder clarification** (one line above the output template):

> Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings.

**E8 — `## Notes` at the end:**

> ## Notes
>
> - Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file at `{{output_path}}`.

### Do-not-regress inventory

1. Six-step process (Analyze / Identify Patterns / Core Rec / Alternatives / Scaling / Debate Points).
2. Four pattern categories (Convergence, Tensions, Unique insights, Complementary).
3. Core recommendation rules (prioritize convergent / integrate complementary / more than sum of parts / specific + actionable) and 2-4 paragraph length.
4. Alternatives: genuine, not tweaks, 2-3 (more for high effort) with Description / Trade-offs / Best when.
5. Scaling reconciliation (Minimal / Expanded) across personas.
6. Debate points framed as if personas actually debated + Resolution (or "user decision").
7. Output YAML frontmatter with `contributors` and `synthesis_approach`.
8. Output structure: `## Core Recommendation` → `## Alternative Approaches` → `## Scaling Notes` → `## Key Debate Points`.
9. Five Quality Standards (specific + actionable, genuine alternatives, realistic scaling, honest debate, respect all personas).
10. "Remember" line — not averaging, creating something better.

---

## 6 — `idea-factory/prompts/phase4-integration.md`

**Role:** Orchestrator or subagent (SKILL.md is flexible). Phase 4 final integration. Reads all section files + personas + SCOPE + OUTLINE + BRAINSTORM and produces `ACTION-PLAN.md` + `FACTORY-SESSION.md`.

### Strengths

- `## Inputs` section at top (with `{{session_path}}` and `{{symphony_path}}`).
- `## Files to Read` enumerates six inputs with source purposes.
- Explicit note: "drafts/ may not exist for low effort sessions". Important because low-effort sessions skip Phase 3A.
- Six-step integration process.
- ACTION-PLAN.md structure: Executive Summary (3-5 paragraphs), Scope, Plan sections (with alts + scaling), Resource Scaling (core/minimal/expanded), Implementation Timeline (phased), Key Decisions for User.
- "Omit detailed debate points" rule — debate points stay in section files, ACTION-PLAN.md stays actionable.
- Quality Check before saving.
- FACTORY-SESSION.md structure (persona composition, session summary, file index).
- Model note pointing to Opus for this phase.

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope | Single-line opening. Lock scope ("exactly two files"). |
| G2 | Inputs vs. Files to Read | Inputs section is thin (2 paths); Files to Read has the real list (6 files). Consolidate into one section. |
| G3 | Parallel reads | 6 inputs — most can read in parallel. |
| G4 | Positive framing | "Omit detailed debate points" → "Keep the core recommendation, top 2-3 alternatives, and scaling at the plan level; leave detailed debate points in the section files for readers who want to trace synthesis." Adds motivation. |
| G5 | Low-effort caveat for drafts/ | Step 4 says "Note that drafts/ directory contains per-persona perspectives available for deeper review" — will be incorrect if drafts/ doesn't exist (low effort). Add a conditional: "If `drafts/` exists (medium/high effort sessions), note in FACTORY-SESSION.md that it contains per-persona perspectives for deeper review. Skip this mention for low-effort sessions." |
| G6 | Voice — Executive Summary | 3-5 paragraphs specified; no prose-vs-bullets guidance. Executive Summary is the highest-leverage text in the deliverable. |
| G7 | Scratch files | Not mentioned. |
| G8 | Grounding / timeline | Implementation Timeline asks for phasing "by time horizon (immediate, short-term, medium-term, ongoing)" and "note dependencies between sections" — the second part is load-bearing but easy to skip. Add a brief norm: "Name dependencies explicitly (e.g., 'Volunteer Recruitment must complete before Launch Event') — a phased list without dependencies hides the hard scheduling choices." |
| G9 | Key Decisions framing | "Present each as a clear choice with trade-offs" — good. Could add: "Each Key Decision should have: the decision question (one sentence), the two or three options (one sentence each with trade-off), and the recommendation if one persona camp had stronger rationale." |

### Proposed edits

**E1 — Expand opening + lock scope:**

> _Before:_ "You are synthesizing the section outputs into a cohesive action plan."
>
> _After:_ "You are synthesizing the section outputs into a cohesive action plan. Your outputs are exactly two files: `{{session_path}}/ACTION-PLAN.md` and `{{session_path}}/FACTORY-SESSION.md`. You also update `{{session_path}}/FACTORY-PLAN.md` Phase 4 status. Do not modify any other files."

**E2 — Consolidate Inputs + Files to Read into a single `## Inputs` section:**

> ## Inputs
>
> Read all of the following before drafting. The section files are independent; read them in parallel, then read SCOPE / OUTLINE / personas / BRAINSTORM in a second parallel batch.
>
> 1. `{{session_path}}/SCOPE.md` — what the plan covers.
> 2. `{{session_path}}/OUTLINE.md` — the structural skeleton.
> 3. `{{session_path}}/sections/*.md` — all synthesized section files (one per outline section).
> 4. `{{session_path}}/personas/*.md` — persona definitions (attribution context for the session report).
> 5. `{{session_path}}/drafts/` — per-persona drafts for medium/high-effort sessions. **May not exist for low-effort sessions.** Available for reference if a section file is thin and you need the underlying perspectives; otherwise ignore.
> 6. `{{symphony_path}}/BRAINSTORM.md` — original brainstorming insights, for cross-reference.

**E3 — Positive-frame "Omit detailed debate points":**

> _Before:_ "- Omit detailed debate points (those stay in the section files for reference)"
>
> _After:_ "- Keep the core recommendation, top 2-3 alternatives, and scaling summary at the plan level. Detailed debate points stay in the section files for readers who want to trace synthesis — pulling them into the ACTION-PLAN crowds the plan with material readers can retrieve on demand."

**E4 — Low-effort caveat for drafts/ mention in Step 4:**

> _Before:_ "Note that drafts/ directory contains per-persona perspectives available for deeper review."
>
> _After:_ "If `drafts/` exists (medium/high-effort sessions), note in FACTORY-SESSION.md that it contains per-persona perspectives for deeper review. For low-effort sessions, `drafts/` does not exist — omit the mention."

**E5 — Voice line for Executive Summary** (inside Step 2 under "Executive Summary"):

> Write the Executive Summary as readable prose paragraphs, not bullets. Direct and specific: name the recommended approach, the one or two decisions the user needs to make, and the resource envelope. The reader is a decision-maker skimming, not a committee evaluating completeness.

**E6 — Dependency-naming norm** (inside the Implementation Timeline bullet in Step 2):

> Name dependencies explicitly when they exist (e.g., "Volunteer Recruitment must complete before Launch Event" or "Fiscal Sustainability Analysis gates the Budget section"). A phased list without dependencies hides the hard scheduling choices — call them out.

**E7 — Key Decisions structure** (inside the Key Decisions for User bullet in Step 2):

> Each Key Decision should contain three elements: the decision question (one sentence), the two or three options (one sentence each, each with its core trade-off), and the recommendation if one persona camp had stronger rationale (or "user preference" if genuinely balanced).

**E8 — Parallel-read hint already covered in E2.**

**E9 — `## Notes` at the end:**

> ## Notes
>
> - Do not create scratch files, helper scripts, or intermediate outputs while drafting. Write only the two files specified plus the FACTORY-PLAN.md Phase 4 status update.

### Do-not-regress inventory

1. Six-input file list with source purposes.
2. Low-effort caveat that `drafts/` may not exist.
3. Six-step integration process.
4. ACTION-PLAN.md structure: Executive Summary (3-5 paragraphs) / Scope / Plan sections (core rec, alts, scaling summary, no detailed debate points) / Resource Scaling (core / minimal / expanded) / Implementation Timeline (phased) / Key Decisions for User.
5. "Omit detailed debate points from ACTION-PLAN.md" rule.
6. Quality Check items (every section represented, specific + actionable, genuine alternatives, realistic timeline, decisions as choices).
7. FACTORY-SESSION.md structure (persona composition table, session summary, file index).
8. FACTORY-PLAN.md Phase 4 status update.
9. User-facing Step 6 (highlight 3-5 recommendations, note user decisions needed, point to ACTION-PLAN.md, mention section files, mention drafts for medium/high).
10. Model note: Opus for final integration.

---

## Cross-prompt consistency notes

While executing the edit pass, a few cross-cutting consistency wins fall out naturally. These largely match the Symphony review's conventions, which keeps the two skills reading consistently.

1. **`## Inputs` at the top** is already the pattern for most Factory prompts — tighten the two holdouts (phase3-section-draft.md "Project Context" and phase4-integration.md's split Inputs/Files-to-Read).
2. **`## Notes` at the end, short** for voice guidance and the scratch-file discouragement.
3. **Template-placeholder clarification** canonical line: *"Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings."*
4. **Scratch-file discouragement** canonical line: *"Do not create scratch files, helper scripts, or intermediate outputs. Write only the file(s) specified in Output."*
5. **Parallel-Read hints** where subagent/orchestrator reads ≥3 files.
6. **Positive framing** where defensive "Do not / Never" lines aren't load-bearing (e.g., "Do not read all summary files" → read-only-what-applies; "Omit detailed debate points" → keep-at-plan-level).
7. **Scope lock in the opening** — name exact output file(s) and note "do not modify other files" for Opus 4.7 literal interpretation.
8. **Factory-specific:** preserve `{{double-curly}}` placeholder convention; keep quantitative file-size context-window warnings (11-17K / 24-34K) — they're working.

## Open question

**Effort-conditional blocks in `phase3-section-draft.md`.** The current file uses `{{#if effort_low}}` / `{{#if effort_medium}}` / `{{#if effort_high}}` Mustache/Handlebars-style tags, but SKILL.md describes no live templating engine. Two ways to resolve:

- **A.** Treat the tags as human-readable effort markers; the subagent reads all three blocks and applies the one matching `{{effort_level}}`. Edit E2 in Prompt #4 above codifies this.
- **B.** Orchestrator pre-renders the prompt before handing it to the subagent, so the subagent only ever sees the applicable block. This is an orchestrator change (SKILL.md work), not a prompt-file change.

Default proposal: (A). Flag for explicit sign-off before applying.

## Awaiting final approval

Six prompts reviewed. All edits are additive or structural (no rule changes). Ready to apply with `Edit` calls in phase order once you say go. If you want me to adjust depth, skip any edits, or rework a specific proposal, flag it and I'll revise before touching files.

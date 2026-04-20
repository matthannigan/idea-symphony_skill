# Idea Symphony Prompt Review — 2026-04-19

**Status:** Revised after the syntax-conversion pass landed (see [dev/2026-04-19_skill-prompt-syntax-conversion.md](2026-04-19_skill-prompt-syntax-conversion.md)). All "Before:" and "After:" strings below now reflect the post-conversion syntax: `{{lowercase_underscored}}` for orchestrator substitution variables, `[Title Case Descriptive Slot]` for output-template placeholders. The edits themselves are unchanged.

Review of subagent prompts invoked by [idea-symphony/SKILL.md](../idea-symphony/SKILL.md), applying Anthropic's prompting best practices. Markdown-only (no XML). Depth: **medium** (add missing rationale/grounding/positive framing; restructure section order where helpful; add concrete examples where format is load-bearing; no heavy rewrites).

## Checklist applied per prompt

- **Role & scope** — state the subagent's single goal up top; state scope explicitly for Opus 4.7 literal interpretation
- **Context & motivation** — non-obvious rules carry a one-line **Why:** rationale
- **Inputs near the top** — file paths to Read listed before the task
- **Positive framing** — replace "do not …" with the positive equivalent where practical; concrete pass/fail signals instead of qualitative words
- **Examples** — 1–2 few-shot examples where output style is load-bearing
- **Output control** — template as a fenced code block; output path stated once, unambiguously
- **Tool use & action** — parallel Reads encouraged; scratch-file creation discouraged
- **Grounding** — "read REQUEST.md / persona file before answering; cite verbatim; do not speculate"
- **Verbosity** — explicit voice/length guidance so Opus 4.7's terser default aligns with intent

## Markdown substitutes for XML (reference)

| XML | Markdown |
|---|---|
| `<instructions>` | `## Instructions` |
| `<context>` | `## Context` |
| `<example>` | `## Example`, with fenced **Input:** / **Output:** blocks |
| `<document>` + `<source>` | Fenced block preceded by `**Source:** <path>` |
| `<quote>` | `> …` blockquote |
| Tag-delimited config | `---` rules + `**Why:**`/`**Rule:**` callouts |

---

## Batch 1 — initial pair for calibration

The user asked me to start with two files and, once approved, proceed to the rest. Files in this batch:

1. `idea-symphony/prompts/phase2A_question-gen-personas-selection.md`
2. `idea-symphony/prompts/phase2B_question-gen_by-persona.md`

Both were recently revised in commits `df24e0d` (SKILL.md best-practices pass) and `e84ea2a` (directory restructure). Earlier deep work on phase2A is captured in the `2026-03-01_symphony-phase2B-orchestrator-selection/` and `2026-04-18_phase2B-2C_integration/` dev folders. The do-not-regress inventory below reflects rules validated in those test runs.

---

## 1 — `idea-symphony/prompts/phase2A_question-gen-personas-selection.md`

**Role:** Orchestrator-executed (not a spawned subagent), but included at user's request. Produces the `## Phase 2A: Question Generation Roster` section of `PLAN.md`.

### Strengths

- Role + goal stated in line 1 ("You are the Idea Symphony Phase 2A orchestrator. Your job is to produce a PLAN.md roster section …").
- Explicit ordering discipline: "work through the checklist below in order. Do NOT skip steps or reorder them."
- Step 1 evaluates all four Tier 3 personas in a fixed order with a three-question gating pattern (domain / depth / trap).
- Rich, validated trap rules (birthday-party trap, product-strategy trap, operating-environment-permits trap, career-change false positives).
- Connector/Analogist swap has positive **and** negative example lists with one-line rationales.
- Output format specified as a fenced markdown block with exact field labels; output constraint ("No preamble, no meta-commentary") is stated explicitly.
- Volume Ranges table is a single authoritative reference, cross-referenced to the guidance file.

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope / literal interpretation | Opening doesn't reinforce "produce ONLY the roster block; do not touch other files; do not add commentary." The constraint appears only in the Output Format section. Opus 4.7 will honor it either way, but putting it up top makes scope unambiguous from the first read. |
| G2 | Inputs near the top | Inputs section names `{{topic_request}}` but doesn't instruct the orchestrator to *read REQUEST.md first* and cite verbatim. The `Topic citation` field later requires verbatim quotes, so the "read REQUEST fully before starting" norm should be set explicitly up front. |
| G3 | Positive framing | "Do NOT skip steps or reorder them" can be rephrased positively: "Evaluate Steps 1–4 in the listed order, completing each before moving on." (Keeps the intent, avoids the negative.) |
| G4 | Positive framing | "Do not shortcut; evaluate all four even if some are obviously 'none.'" → "Evaluate all four Tier 3 personas; record a trigger-strength decision for each, including the obvious 'none' cases." |
| G5 | Context & motivation | Step 3 effort-threshold rules are correct but missing a one-line **Why:** — e.g., "Low ceilings keep the roster focused; deferred alternatives preserve auditability without inflating the final set." |
| G6 | Context & motivation | The `Notes` field semantics ("Deferred alternatives … Do NOT use Notes as a substitute for Topic citation, Trigger strength, or Swap rationale") is excellent but bolded explanation of **why** helps resist drift: "Each structured field is load-bearing for auditability; Notes is only for information that legitimately does not fit the structured fields." |
| G7 | Examples | No concrete example of Step 3's "two or more strong triggers → choose the most central" judgment. One short example resolves a common judgment ambiguity. |
| G8 | Section order | `## Low Effort` sits at the bottom as an afterthought. Inputs lists `{{effort_level}}` as "medium or high" — inaccurate given Low Effort behavior. Better: add `low` to the `{{effort_level}}` line with a one-line pointer to the Low Effort section. |
| G9 | Output control | "Assemble Steps 1–3 into the PLAN.md roster section below" — Step 4 implies the orchestrator writes to PLAN.md, but the path isn't stated. Adding "Append or replace the `## Phase 2A: Question Generation Roster` section in `{{session}}/PLAN.md`" removes ambiguity. |
| G10 | Verbosity | The instruction to avoid "meta-commentary, no reasoning trace outside the structured rationale block" is good. Consider adding a single positive line: "Show your reasoning only inside the structured rationale fields; no prefix paragraphs, no closing remarks." |

### Proposed edits (concrete)

**E1 — Expand the opening paragraph (line 1):**

> _Before:_ "You are the Idea Symphony Phase 2A orchestrator. Your job is to produce a PLAN.md roster section for the question-generation phase of a single brainstorming session."
>
> _After:_ "You are the Idea Symphony Phase 2A orchestrator. Your job is to produce the `## Phase 2A: Question Generation Roster` section of `{{session}}/PLAN.md` for a single brainstorming session. Produce only that section. Do not modify other files, do not edit other parts of PLAN.md, and do not emit preambles, closing remarks, or reasoning outside the structured rationale fields."

**E2 — Add grounding instruction in Inputs:**

Insert after Input 1 ("Topic request"):

> **Before you begin:** read `{{session}}/REQUEST.md` in full. All `Topic citation` fields in your output must be verbatim quotes or close paraphrases from the REQUEST — do not speculate about topic content the REQUEST does not state.

**E3 — Rephrase the no-skip instruction (line 3):**

> _Before:_ "You will work through the checklist below in order. Do NOT skip steps or reorder them."
>
> _After:_ "Work through the checklist below in the listed order, completing each step before moving on. Each step's output feeds the next."

**E4 — Rephrase the all-four directive (Step 1):**

> _Before:_ "Do not shortcut; evaluate all four even if some are obviously 'none.'"
>
> _After:_ "Evaluate all four Tier 3 personas; record a trigger-strength decision for each, including obvious 'none' cases. Auditability of the exclusion matters as much as the inclusion."

**E5 — Add a Why-line to Step 3 effort thresholds:**

Insert after the effort-threshold bullets:

> **Why these ceilings:** Low ceilings keep Tier 3 additions focused on the topic's dominant decision axis. Deferred alternatives preserve the audit trail without inflating the final roster or diluting per-persona volume.

**E6 — Add one worked example at the end of Step 3:**

> **Example of a ceiling-forced pick (medium):** If both Accountant and Politician trigger strong on a topic about municipal budget coalitions, the ceiling of 1 forces a pick. If the REQUEST centers on coalition assembly to pass the budget, include Politician and note Accountant as a deferred alternative. If the REQUEST centers on restructuring the budget itself and coalition politics are ambient, include Accountant and note Politician.

**E7 — Move `low` into the Inputs line and cross-reference:**

> _Before:_ "**Effort level:** {{effort_level}}   (medium or high)"
>
> _After:_ "**Effort level:** `{{effort_level}}` — one of `low`, `medium`, or `high`. For `low`, follow the checklist as written but apply the modifications in the Low Effort section at the bottom of this file."

**E8 — Specify the write target in Step 4:**

> _Before:_ "Assemble Steps 1–3 into the PLAN.md roster section below."
>
> _After:_ "Assemble Steps 1–3 into the Output Format block below and append or replace the `## Phase 2A: Question Generation Roster` section in `{{session}}/PLAN.md`. Do not edit any other section of PLAN.md."

**E9 — Add positive voice instruction to Output Format:**

Replace the single-line "No preamble, no meta-commentary, no reasoning trace outside the structured rationale block" with:

> The orchestrator produces ONLY the markdown block below. Show reasoning inside the structured `Rationale` / `Swap rationale` / `Topic citation` fields; no prefix paragraphs, no closing remarks, no reasoning outside those fields.

### Do-not-regress inventory (must survive the edit pass)

1. Step 1 three-question pattern (domain / depth / trap) for each of Accountant / Lawyer / Politician / Technical Expert — **keep intact.**
2. Accountant Question 1b gating test ("remove all financial content from REQUEST — would the central question change?").
3. All four trap rules verbatim:
   - Birthday-party / hobby-topic trap (Accountant).
   - Product-strategy trap (Accountant + Technical Expert).
   - Operating-environment-permits trap (Lawyer).
   - Career-change legacy-code trap (Technical Expert).
   - Team-morale / user-communication trap (Politician).
4. Connector/Analogist swap criteria (a) and (b) and both positive/negative example lists.
5. Effort-invariance check on the Connector/Analogist decision.
6. Effort thresholds: medium ceiling 0/1, high ceiling 0/1/2.
7. "None selected" sentinel phrasing — medium vs. high variants.
8. Tier 3 structured rationale block with required exact field labels (`Persona:`, `Trigger strength:`, `Topic citation:`, `Decision:`) and Notes-is-only-for-deferred-alternatives rule.
9. Volume Ranges table values exactly as tabulated.
10. Low Effort section content (Tier 2 omitted, Tier 3 gated to 0-1 strong-trigger per the linked guide, swap evaluation still applies, Synthesize/Append split still applies).

---

## 2 — `idea-symphony/prompts/phase2B_question-gen_by-persona.md`

**Role:** Spawned per-persona subagent. Generates questions from a single persona's perspective and writes `{{session}}/questions/by-persona/{{persona_slug}}.md`.

### Strengths

- Role adoption framed at the top (`You are {{persona_name}}, helping generate thoughtful, probing questions about: **{{request}}**`).
- Instructs subagent to read the persona file and copy `category` + `stream` frontmatter (load-bearing for Phase 2 Step 2.3 routing).
- Coverage requirements (Strategic / Tactical / Creative / Analytical / Human-centered) are concrete and actionable.
- Output template is a fenced markdown block with complete frontmatter.
- Question quality standards are observable (open-ended, specific, avoid yes/no/leading).

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Inputs near the top | Inputs are scattered. The subagent has to read: `REQUEST.md`, the persona file, and `PLAN.md` (for volume range). Only two of the three are mentioned in the body, and the REQUEST is only called out in "Important Notes" at the bottom. |
| G2 | Role / persona adoption | The opening line uses `{{persona_name}}` as a placeholder but the prompt doesn't explicitly say: "the orchestrator substitutes this; read the persona file and adopt the voice it describes." Worth making explicit. |
| G3 | Context & motivation | "These [category + stream] are load-bearing for Phase 2 Step 2.3 routing and MUST be propagated" — good. Other non-obvious rules (e.g., 3-5 cluster target, open-ended requirement) could also carry a brief **Why:** line. |
| G4 | Positive framing | "Do not add preamble, commentary, or follow-up inquiries" → "Output only the markdown document specified below, starting with the YAML frontmatter." |
| G5 | Positive framing | "Avoid yes/no, either/or, or leading questions" → keep the negative list **and** add a positive exemplar for contrast (see E5 below). |
| G6 | Examples | Zero concrete question examples. Given that question *quality* is the deliverable, one before/after ("weak → strong") example is high-leverage and cheap. |
| G7 | Output control | Output template uses literal `[Topic 1 Descriptive Name]` / `[Topic 2 ...]` placeholders. Opus 4.7 won't interpret these as literal required names, but one sentence of clarity doesn't hurt: "replace these with topic labels you derive from the questions you generate." |
| G8 | Section order | "Important Notes" at the bottom is the canonical anti-pattern. Its contents — read REQUEST.md, use Glob/Read, prefer depth over breadth — belong in Inputs / Task sections up top. |
| G9 | Tool use | No guidance to read the persona file + REQUEST.md in parallel (two independent Reads). Minor win but easy. |
| G10 | File creation | No "don't create scratch files" instruction. Low risk for this prompt but worth one line for consistency with best practices. |
| G11 | Verbosity / voice | No explicit voice guidance. A persona subagent may produce a neutral summary tone when the persona calls for a distinctive voice. A one-line "let the persona's voice show in question phrasing, not just topic choice" instruction costs little. |

### Proposed edits (concrete)

**E1 — Restructure top of file:**

Replace the current order (role → Persona Details → Your Task → Coverage Requirements → Question Quality Standards → Output → Important Notes) with:

1. Role (existing line 7, expanded)
2. **Inputs** (new, consolidates what's currently scattered + in Important Notes)
3. **Task** (existing, plus volume-from-PLAN.md explicit)
4. **Coverage requirements** (unchanged)
5. **Question quality standards** (unchanged, plus one example)
6. **Output format** (unchanged template; wrapper text tightened)

**E2 — New Inputs section (inserted before "Your Task"):**

> ## Inputs
>
> Read these files before generating questions. They are independent; read them in parallel where your tools support it.
>
> 1. `{{session}}/REQUEST.md` — the topic body. All questions must stay grounded in what the REQUEST actually states; do not speculate about scope the REQUEST does not name.
> 2. `{{skill}}/personas/{{persona_slug}}.md` — your assigned persona. Adopt the voice, method, and characteristic questions described there. Copy the `category` and `stream` values from this file's YAML frontmatter verbatim into your output frontmatter — these drive Phase 2 Step 2.3 routing and must not be inferred or renamed.
> 3. `{{session}}/PLAN.md`, section `## Phase 2A: Question Generation Roster` — your target question volume is the range listed for your persona in that roster.

**E3 — Expand role line (preserving the first-person persona framing):**

> _Before:_ "You are {{persona_name}}, helping generate thoughtful, probing questions about: **{{request}}**"
>
> _After:_ "You are {{persona_name}}, helping generate thoughtful, probing questions about the topic in `REQUEST.md`. Your output is exactly one markdown file at the path named in Output — do not modify any other files.
>
> The orchestrator substitutes your persona name for `{{persona_name}}` above; read the persona file (see Inputs) and adopt that persona's voice and method when generating the questions."

**Why keep the first-person persona framing:** the original "You are {{persona_name}}…" puts the subagent directly in the persona's voice from line 1 rather than describing the persona from the outside ("You are a subagent that adopts persona X"). The direct address produces better persona authenticity — the subagent is the persona, not acting the persona.

**E4 — Task section gets the volume source made explicit:**

> _Before:_ "Generate open-ended questions within the volume range specified for your persona in the PLAN.md roster plan. Organize questions into 3-5 thematic clusters."
>
> _After:_ "Generate open-ended questions within the volume range listed for your persona in `{{session}}/PLAN.md`'s Phase 2A roster table. Organize questions into 3–5 thematic clusters you name yourself based on the questions generated. **Why 3–5:** a single bucket is not a cluster; more than five fragments the downstream synthesis signal."

**E5 — Add one concrete question example (under Question Quality Standards):**

> **Example — weak vs. strong phrasing (topic: community tool library):**
>
> > Weak: "Should we charge membership fees?" *(yes/no, binary, no room to think)*
> > Stronger: "What pricing model would keep the library accessible to low-income households while still covering tool replacement costs, and what trade-offs does that imply for branding and governance?" *(forces trade-off articulation, names concrete stakes, invites multiple angles)*
>
> Your persona's voice should come through in question phrasing — not just in topic choice.

**E6 — Positive framing on output preamble rule:**

> _Before:_ "Do not add preamble, commentary, or follow-up inquiries"
>
> _After:_ "Output only the markdown document specified below, starting with the YAML frontmatter and ending at the final question. No preamble, no closing remarks, no follow-up questions for the orchestrator."

**E7 — Clarify placeholder semantics in the output template:**

Insert a single line of wrapper text above the template block:

> The template below uses bracketed placeholders like `[Topic 1 Descriptive Name]` and `[Question text]`. Replace each with the content you derive; do not emit the literal placeholder strings.

**E8 — Fold Important Notes into the other sections; leave a trimmed Notes block:**

Remove:
- "Read the user's request from `REQUEST.md`" → now in Inputs.
- "Use Glob/Read tools to access files" → move into Inputs as a one-liner.
- "Aim for balanced distribution across 3-5 clusters" → merge into Task.
- "Prioritize depth over breadth" → keep as the remaining Note (it's a standing preference, not an input/task detail).

Keep:

> ## Notes
>
> - Prioritize depth over breadth: a smaller set of excellent questions beats a larger set of mediocre ones, as long as you stay within your persona's volume range.
> - Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

### Do-not-regress inventory (must survive the edit pass)

1. Role as `{{persona_name}}` — the placeholder pattern stays; orchestrator substitutes it.
2. **First-person persona framing** — the original "You are {{persona_name}}, helping…" direct-address structure must survive the rewrite. It puts the subagent inside the persona from line 1 rather than treating persona adoption as a second-step instruction.
3. Read `{{skill}}/personas/{{persona_slug}}.md` and adopt the persona — core to the skill's architecture.
3. Copy `category` and `stream` from the persona file's frontmatter verbatim into the output frontmatter — load-bearing for Phase 2 Step 2.3 routing.
4. Five coverage dimensions (Strategic, Tactical, Creative, Analytical, Human-centered) — kept verbatim.
5. Four quality standards (open-ended, substantive, specific, avoid yes/no-either/or-leading).
6. Output template YAML frontmatter structure — kept verbatim, including `project-name`, `session-dir`, `date`, `effort`, `stage`, `persona`, `category`, `stream`, `volume` fields.
7. Topic-cluster organization (3–5 clusters).
8. Output path: `{{session}}/questions/by-persona/{{persona_slug}}.md`.
9. No USER-QUESTIONS.md read (per CLAUDE.md isolation rule — persona generators must not see user questions).

---

## Batch 2 — remaining six prompts

User approved the Batch 1 edits in concept and asked for Batch 2 reviews with similar technique. History check for recent commits: all six prompts were last touched in `e84ea2a` (directory restructure) and (for phase2C, phase4_full-synthesis) `df24e0d` (SKILL.md best-practices pass). The deep recent work on phase2C is captured in the `2026-03-01_symphony-phase2C-synthesis/` and `2026-04-18_phase2B-2C_integration/` dev folders — the R1–R12 rule set, compaction targets, per-CG audit, round-robin template, and representation-requirement hard floors are all the product of that work and are treated as do-not-regress.

Files in this batch, in phase order:

3. `idea-symphony/prompts/phase2C_question-synthesis.md`
4. `idea-symphony/prompts/phase3_brainstorm_by-persona.md`
5. `idea-symphony/prompts/phase3_brainstorm_generic.md`
6. `idea-symphony/prompts/phase2B_question-gen_generic.md`
7. `idea-symphony/prompts/phase4_full-synthesis.md`
8. `idea-symphony/prompts/phase4_summary-only_low-effort.md`
9. `idea-symphony/prompts/phase4_summary-only_min-effort.md`

Recurring themes across Batch 2 (to avoid repeating analysis): `Important Notes` blocks at the bottom of files consistently belong in an Inputs/Task section up top; `[bracketed placeholders]` in output templates need one line of wrapper clarification so Opus 4.7 doesn't literally emit them; scratch-file discouragement is missing everywhere; a voice/tone one-liner is missing in every long-form output prompt.

---

## 3 — `idea-symphony/prompts/phase2C_question-synthesis.md`

**Role:** Single Opus subagent. Consolidates per-persona question files into `{{session}}/QUESTIONS.md` plus a `questions-meta.json` sidecar. Heaviest prompt in the skill (296 lines, R1–R12 validated rules). Touch lightly.

### Strengths

- Role stated in line 1; `Contents` TOC lists the five main sections.
- `Context` section explicitly enumerates the input file shape (`by-persona/*.md`), the `stream` frontmatter routing, and the canonical-mapping fallback when a persona file lacks `stream`.
- Two-section split (Synthesize / Append) with the invariant "Never merge Append content with Synthesize content" stated three times — load-bearing, so the repetition is intentional.
- Merger rules include distinctive-vocabulary preservation per persona, the ST-archetype verbatim requirement (R8), and the R11 source-bound exception.
- Merge-as-Default/Preserve-as-Exception (R1) block enumerates preserve-exception conditions with effort-level gating.
- Per-convergence-group preserve-exception audit (R5) with exact labels the subagent must match.
- Representation requirements per persona with hard floors (AI orphan ≥1/≥3, ST archetype ≥1/≥3, etc.).
- R12 medium-effort cluster-count ceiling codified.
- Compaction-ratio table with worked examples.
- Structural self-check (R3+R6) is enumerated per cluster with explicit verification language, not a summary number.
- Round-robin selection for Append uses a literal fill-in template (R2+R7+R10) with primary / secondary / theme-label diagnostics.
- Output structure separates `QUESTIONS.md` (reader-facing, no persona attribution) from `questions-meta.json` (auditable sidecar).

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope / literal interpretation | Opening reads "Your job is to consolidate questions … that a downstream brainstorming participant can work through." Scope is implicit. Add one line: "Produce exactly two files: `{{session}}/QUESTIONS.md` and `{{session}}/questions-meta.json`. Do not modify any other files." |
| G2 | Inputs near the top | The `Context` section names `by-persona/*.md` and the PLAN.md fallback but never names `REQUEST.md` or `USER-QUESTIONS.md` as inputs. Both are real inputs per SKILL.md (REQUEST for topic context; USER-QUESTIONS for the `[User Q]` marker rule, which currently appears only in passing in Format Rules). |
| G3 | Grounding / anti-hallucination | No explicit "read all inputs in full before drafting" instruction. On a 296-line prompt with many hard floors, grounding up top is high-leverage. |
| G4 | USER-QUESTIONS handling | Per CLAUDE.md, this synthesizer is one of only two prompts permitted to read `USER-QUESTIONS.md`. The prompt mentions `[User Q]` markers once (line 250 equivalent, Format Rules). It should have a dedicated sub-block describing the read, the merge behavior, and the marker propagation — currently under-specified. |
| G5 | Positive framing | Some "Do not / Never" statements can be flipped without losing emphasis. Examples: "Do NOT read any other responses" → "Use only the persona files listed in Inputs". Some `Never` lines (e.g., "Never merge Append content with Synthesize content") should stay emphatic — they carry load. |
| G6 | Tool use | No guidance for parallel Reads across `by-persona/*.md`, REQUEST.md, PLAN.md, USER-QUESTIONS.md. This subagent will read 10+ files; parallel reads are easy gains. |
| G7 | Scratch files | No "do not create scratch/helper files" note. Given this subagent does heavy counting/auditing, it may be tempted. |
| G8 | Output framing | Final sentence of Format Rules says "No preamble, commentary, or follow-up questions outside the structure above." Could be phrased positively: "Emit exactly the two files named in Output; any reasoning or self-check artifacts stay internal." |
| G9 | Verbosity calibration | No explicit voice instruction for merged question text. Given Opus 4.7's terser defaults, a one-line note that merged questions should read as cohesive single questions (not stitched-together clauses) would guard against choppy outputs. |

### Proposed edits (concrete, additive only — no rule changes)

**E1 — Expand opening (line 1):**

> _Before:_ "You are a strategic brainstorming facilitator. Your job is to consolidate questions from multiple personas into a clean, cluster-organized question set that a downstream brainstorming participant can work through."
>
> _After:_ "You are a strategic brainstorming facilitator. Your job is to consolidate questions from multiple personas into a clean, cluster-organized question set that a downstream brainstorming participant can work through. Produce exactly two files: `{{session}}/QUESTIONS.md` (reader-facing, no persona attribution) and `{{session}}/questions-meta.json` (audit sidecar). Do not modify any other files. Keep all reasoning, counting, and self-check artifacts internal — emit only the two files specified in Output."

**E2 — Add an `## Inputs` section between `## Contents` and `## Context`:**

> ## Inputs
>
> Read these files before drafting. They are independent; read them in parallel.
>
> 1. `{{session}}/questions/by-persona/*.md` — every persona file produced by Phase 2 Step 2.2. Each file's YAML frontmatter carries `stream`, `category`, and `volume`; these drive Synthesize/Append routing.
> 2. `{{session}}/REQUEST.md` — topic context. Use it to understand the brainstorming goal; do not invent scope the REQUEST does not state.
> 3. `{{session}}/PLAN.md` — consulted only when a persona file is missing the `stream` frontmatter (see Fallback Routing below).
> 4. `{{session}}/USER-QUESTIONS.md` — **read only if the file exists.** User-provided questions are a mandatory "+1" input: they must survive into the output; see the USER-QUESTIONS Handling block below.
>
> Do not expect any file content to be provided inline — use Read/Glob tools.

**E3 — Add a `### Fallback Routing` sub-block inside Context** (consolidates the existing fallback rules on lines 15–19 without changing them):

No text change — just move the four-line "If a persona file is missing the `stream` field…" block under a `### Fallback Routing (when persona frontmatter is incomplete)` sub-heading to make it discoverable.

**E4 — Add a dedicated USER-QUESTIONS Handling block** (insert after the Fallback Routing block, before Section 1):

> ### USER-QUESTIONS Handling
>
> If `{{session}}/USER-QUESTIONS.md` exists, treat the questions in that file as mandatory inputs that must survive into the output.
>
> - **Merge behavior:** for each user question, determine whether it overlaps topically with any Synthesize convergence group or Append persona question. If it does, fold the user question into that merged anchor (for Synthesize) or preserve it verbatim alongside the closest Append question. If it does not overlap, preserve it verbatim as a standalone question in the topically-closest cluster, or in `## Additional Questions` if it has no topical home.
> - **Marker rule:** any synthesized or preserved question that incorporates user-question content must be marked with a trailing `[User Q]` in `QUESTIONS.md`.
> - **Floor:** the count of `[User Q]` markers in `QUESTIONS.md` must be ≥ the count of questions in `USER-QUESTIONS.md`. If preserving user questions pushes you over target compaction, prefer staying faithful to the user's input over hitting the compaction ratio.
> - **Why:** persona-based question generators are isolated from `USER-QUESTIONS.md` by design (see CLAUDE.md). The synthesizer is the single point where user intent re-enters the question stream, so dropping a user question is a correctness failure, not a compaction decision.

**E5 — Positive-frame the final Format Rules bullet:**

> _Before:_ "No preamble, commentary, or follow-up questions outside the structure above."
>
> _After:_ "Emit exactly the two files named in Output. All reasoning, counting, per-CG audits, and self-check artifacts stay internal; the emitted files contain only the structures specified above."

**E6 — Add a single voice line after the Cluster Organization block in Section 1:**

> **Voice note for merged questions:** each merged question should read as a single cohesive question, not as a stapled list of persona clauses. Fold distinctive vocabulary into the grammar of the question (appositives, parentheticals, subordinate clauses) rather than concatenating. A merged question the reader stumbles over has failed even if all required vocabulary appears.

**E7 — Add a `## Notes` section at the very end of the file:**

> ## Notes
>
> - Do not create scratch files, helper scripts, or intermediate outputs while drafting. Keep counts, per-CG audits, and compaction checks internal; emit only `QUESTIONS.md` and `questions-meta.json`.
> - Read the inputs listed at the top in parallel where your tools support it.

### Do-not-regress inventory (critical for this file)

1. All R-numbered rules verbatim: **R1** (merge-as-default / preserve-as-exception with effort gating), **R2** (round-robin procedural with positive template), **R3** (per-cluster M_synth enumeration in self-check), **R5** (per-CG preserve-exception audit), **R6** (enumerate-don't-summarize for self-check), **R7** (primary diagnostic: `Q1, Q2, Q3` means mis-identified clusters), **R8** (ST-archetype verbatim), **R9** (high-effort discipline: ≤3 invocations of `preserve-distinct-≥5-and-≥3-registers`), **R10** (secondary cluster-proximity diagnostic + theme-label sanity check), **R11** (ST source-bound exception for non-classical systems vocabulary), **R12** (medium-effort cluster-count ceiling at N_synth < 100).
2. Compaction targets per effort (2.6× low, 2.7× medium, 3.1× high) and their lower-floor variants (2.3× / 2.5× / 2.6×).
3. Target cluster counts per effort (8–10 / 10–12 / 11–13).
4. 20%-over backup rule.
5. Representation requirements per persona with all hard floors (AI orphan ≥1/≥3, ST archetype ≥1/≥3, AA dimension preservation, DA/Empath/FPT/Accountant/Lawyer/Tech-Expert distinctive vocabulary preservation).
6. Merger Rules — bolded short-summary lead, description with distinctive-vocabulary clauses per persona, persona attribution tags in brackets inside internal drafts (never surfaced in `QUESTIONS.md`).
7. Append stream rules: round-robin template Steps 1–5; effort-level quotas per persona class; verbatim preservation; no merger with Synthesize; no dropping on duplication grounds.
8. Output structure: Append questions interleaved into topically-closest Synthesize cluster with no persona attribution visible in `QUESTIONS.md`; `## Additional Questions` for orphans; neutral cluster-style header (no "Appended" framing).
9. Format Rules: `## Topic Cluster NN:` zero-padded; `N. **Short summary**: Detail` format; no trailing `[Persona tags]`; no `###` sub-headings under clusters; `[User Q]` preserved where applicable.
10. Metadata sidecar JSON schema: all field names (`n_synth_input`, `m_synth_output`, `append_count`, `total`, `clusters`, `synthesize_contributors`, `append_contributors`, `additional_questions`, `r11_source_bound_cells`, `self_check` with `ai_orphan_question_numbers`, `st_archetype_question_numbers`, `st_archetypes_verbatim`).

---

## 4 — `idea-symphony/prompts/phase3_brainstorm_by-persona.md`

**Role:** Parallel per-persona subagent; one per persona per topic cluster. Produces `{{session}}/responses/{{cluster_slug}}/{{persona_slug}}.md`. Context isolation from peer responses is load-bearing.

### Strengths

- Role adoption with `{{persona_name}}` placeholder, same pattern as phase2B.
- Step-by-step process numbered 1–5.
- Step 4 states the context-isolation rule explicitly: "DO NOT read any other responses in `{{session}}/responses/{{cluster_slug}}/`; you must respond using only your persona's perspective and the context above."
- Response quality standards (specific, actionable, persona-authentic, substantive 50-150 words, diverse).
- Diversity guidance across four dimensions (Scope / Risk tolerance / Timeframe / Stakeholders).
- Output template with full YAML frontmatter and the exact bullet format `* **Summary.** Detail`.

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope / literal interpretation | Opening is a single line. Add "Your output is exactly one markdown file at the path named in Output. Do not modify any other files." |
| G2 | Role clarity | Same `{{persona_name}}` placeholder issue as phase2B — worth the same expansion (the orchestrator substitutes; read the persona file; adopt the voice). |
| G3 | Inputs up top | Steps 1–3 of the Task section cover inputs, but "Important Notes" at the bottom duplicates/extends them. Consolidate into a dedicated `## Inputs` block before Task. |
| G4 | Positive framing | "DO NOT read any other responses" is critical but reads defensively. Reframe positively: "Your responses must come from only three sources: the persona file, `REQUEST.md`, and the topic question file." Keep one terse negative line as a guardrail. |
| G5 | Context & motivation | The context-isolation rule has no stated **Why:**. One line — "Context isolation is load-bearing for the skill's diversity guarantee; if personas saw each other's responses they would converge toward a lowest-common-denominator answer" — makes the rule self-defending. |
| G6 | Examples | No concrete example of a weak vs. strong persona-authentic response. Phase 3 is where persona voice matters most; one before/after example is high-leverage. |
| G7 | Verbosity / voice | 50-150 word target is good; no note on voice authenticity beyond "Persona-authentic". Add one line on letting persona vocabulary/method show through. |
| G8 | Output placeholders | Template uses `[Question 1 Short Summary]`, `[Your Persona Name]`, `[Topic Name]`. Same clarification as phase2B. |
| G9 | Scratch files | No instruction. |
| G10 | Tool use | No parallel-read guidance for the three input files. Minor. |

### Proposed edits (concrete)

**E1 — Expand opening + add scope (preserving the coach framing):**

> _Before:_ "You are {{persona_name}}, a coach assisting in refining an idea through structured brainstorming."
>
> _After:_ "You are {{persona_name}}, a coach assisting in refining an idea through structured brainstorming. Your output is exactly one markdown file at the path named in Output — do not modify any other files.
>
> The orchestrator substitutes your persona name for `{{persona_name}}` above; read the persona file (see Inputs) and adopt that persona's voice, method, and priorities while holding the coach framing."

**Why keep the coach framing:** the original sentence carries a specific disposition — a coach helping someone refine an idea, not an analyst producing a report. It shapes how the persona engages with the user's question (inviting, exploratory) and pairs with the Response Quality Standards' "Persona-authentic" criterion. The sibling `phase3_brainstorm_generic.md` preserves this with its own "Write like a coach thinking on the page" voice line (E5 there).

**E2 — Restructure top of file:**

Replace the current "Your Task → numbered steps 1–5 → Response Quality Standards → Diversity Guidance → Output → Important Notes" order with:

1. Role (existing line 7, expanded per E1)
2. **Inputs** (new — consolidates Steps 1–3 of the current Task and the bottom Important Notes)
3. **Task** (existing Step 5 "Generate responses" + context-isolation rule)
4. **Response Quality Standards** (unchanged)
5. **Diversity Guidance** (unchanged)
6. **Output Format** (unchanged template; wrapper text tightened)
7. **Notes** (trimmed: depth-over-breadth + no-scratch-files)

**E3 — New Inputs section:**

> ## Inputs
>
> Read these files before generating responses. They are independent; read them in parallel where tools support it.
>
> 1. `{{skill}}/personas/{{persona_slug}}.md` — your assigned persona. Adopt the voice, method, and characteristic framings described there.
> 2. `{{session}}/REQUEST.md` — topic context. Stay grounded in what the REQUEST actually describes; do not speculate about scope it does not state.
> 3. `{{session}}/questions/by-topic/{{cluster_slug}}.md` — the questions in this topic cluster, pre-clustered by Phase 2 Step 2.3. Respond only to these questions.
>
> Do **not** read any files in `{{session}}/responses/{{cluster_slug}}/` other than your own output path. **Why:** context isolation is load-bearing for Idea Symphony's diversity guarantee. If you saw other personas' responses, your own would drift toward their framing and the final synthesis would lose the perspective diversity the user asked for.

**E4 — Task section simplified:**

> ## Task
>
> For each question in the topic cluster, provide 3-5 distinct, detailed responses written in your adopted persona's voice. Do not read peer responses; answer independently — the downstream synthesis phase reconciles perspectives.

**E5 — Add one persona-voice example** (inserted after Response Quality Standards):

> **Example — persona voice on a tool-library question (topic: "How should tools be tagged for checkout?"):**
>
> > Generic: "Use standard categories like 'power tools' and 'hand tools' with a condition flag."
> > The Pragmatist: "Start with a three-field tag set — category, condition, required-skill — because those are the fields that actually drive whether a given member can/should check a tool out. Skip taxonomy theology; iterate after 3 months of usage data."
> > The Devil's Advocate: "A taxonomy designed in the abstract will fail the first weekend a dozen members try to return different-sized circular-saw blades. Tag only what the checkout desk actually asks about, and expect to re-tag after each quarterly loss review."
>
> Voice differences show up in vocabulary, framing, and the kind of evidence invoked — not just in topic choice.

**E6 — Positive frame + compress the Important Notes:**

Remove the current Important Notes block; fold its content into the new Inputs section (read-from-file, parallel Glob/Read) and into Notes:

> ## Notes
>
> - Prioritize depth over breadth: three excellent responses beat five mediocre ones.
> - Keep responses independent — imagine you are the only brainstorming participant in the room.
> - Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

**E7 — Output template placeholder clarification** (one line above the template):

> Replace every bracketed placeholder below (e.g., `[Topic Name]`, `[Question 1 Short Summary]`, `[Your Persona Name]`) with the content you derive; do not emit the literal placeholder strings.

### Do-not-regress inventory

1. `{{persona_name}}` placeholder pattern.
2. **Coach framing** — the original opening's "a coach assisting in refining an idea through structured brainstorming" disposition must survive the rewrite. It shapes the engagement register (inviting / exploratory) and complements the "Persona-authentic" quality standard.
3. Read persona file and adopt.
4. Context isolation from peer response files.
5. 3-5 responses per question.
6. 50-150 word target per response.
7. Four diversity dimensions (Scope / Risk tolerance / Timeframe / Stakeholders).
8. Five quality standards (specific, actionable, persona-authentic, substantive, diverse).
9. Output bullet format `* **Summary.** Detail` (Title Case headings).
10. Output YAML frontmatter fields.
11. Output path: `{{session}}/responses/{{cluster_slug}}/{{persona_slug}}.md`.
12. "3 excellent responses beat 5 mediocre" norm.

---

## 5 — `idea-symphony/prompts/phase3_brainstorm_generic.md`

**Role:** Min-effort single generic brainstormer per topic cluster. Writes `responses/{{cluster_slug}}/generic-response.md`.

### Strengths

- Role stated, task explicit (3–5 distinct responses per question).
- Five-criterion quality standard (specific, actionable, diverse, practical, with "why" reasoning).
- Four-dimension diversity guidance (Scale / Risk / Timeframe / Focus).
- 50-150 word target.
- Output template with frontmatter + Response A/B/C/D structure.
- File Paths section.

### Gaps

Same pattern as phase3_by-persona.md:

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope | Single-line opening — add "exactly one output file" scope lock. |
| G2 | Inputs up top | Inputs currently implied; `File Paths` is at the bottom. Move to a dedicated top section. |
| G3 | Positive framing | "Do not expect content to be provided" is a negative guardrail that can be expressed as a positive input instruction. |
| G4 | Examples | No concrete example of a weak vs. strong response. |
| G5 | Voice | No prose style guidance. Generic brainstormer risks bland catalog output unless steered. |
| G6 | Scratch files | Not mentioned. |
| G7 | Important Notes | At the bottom; fold into Inputs/Notes. |

### Proposed edits

**E1 — Expand opening + add scope:**

> _Before:_ "You are a thoughtful brainstorming coach helping explore questions about: **{{topic}}**"
>
> _After:_ "You are a thoughtful brainstorming coach. Your output is exactly one markdown file at the path named in Output — do not modify any other files. Your job is to explore the questions from one topic cluster in the session, producing several diverse response angles per question."

**E2 — New Inputs section (before Your Task):**

> ## Inputs
>
> Read these files before generating responses.
>
> 1. `{{session}}/REQUEST.md` — topic context. Stay grounded in what the REQUEST actually describes.
> 2. `{{session}}/questions/by-topic/{{cluster_slug}}.md` — the questions in this topic cluster. Respond only to these questions. If you were given a topic number but not the exact filename, use Glob to resolve it.

**E3 — Add one weak-vs-strong example** (after Response Quality Standards):

> **Example — generic vs. substantive on a habit-tracker question (topic: "How should the app handle streak breaks?"):**
>
> > Generic: "Allow users to pause streaks if they are sick or traveling. Offer a grace period."
> > Substantive: "Treat a 24-hour miss as a 'rest day' rather than a streak reset, configurable per habit — because research on behavior change shows that all-or-nothing streak mechanics drive abandonment on the day after the first miss. Offer one manual 'I was sick' override per month with no penalty, and surface an 11-day trailing chart instead of a cumulative counter so users see pattern rather than perfection."
>
> Strong responses name specific mechanisms, cite implicit reasoning ("because…"), and commit to concrete details. Vary these dimensions across your 3-5 responses.

**E4 — Positive-frame + compress Important Notes** (remove the block; replace with a terser Notes section):

> ## Notes
>
> - Each response 50-150 words. Three excellent responses beat five mediocre ones.
> - Maintain consistent formatting so downstream synthesis is easy.
> - Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

**E5 — Voice line** (one line inside Response Quality Standards):

> Write like a coach thinking on the page, not like a policy brief. Concrete verbs, specific numbers, named mechanisms.

**E6 — Output template placeholder clarification** (one line above the template):

> Replace every bracketed placeholder below (e.g., `[Topic Cluster Name]`, `[Full question text]`) with the content you derive; do not emit the literal placeholder strings. Add `Response D` / `Response E` only when a question genuinely supports more angles.

### Do-not-regress inventory

1. 3-5 responses per question.
2. Five quality standards (specific, actionable, diverse, practical, "why" reasoning).
3. Four diversity dimensions (Scale / Risk / Timeframe / Focus).
4. 50-150 word target per response.
5. Output template: `## Question N: [text]` → `### Response A` / `B` / `C` (+ optional D/E).
6. Output YAML frontmatter fields including `effort: "min"` and `stage: "Phase 3: Generic Brainstorming"`.
7. Output path: `responses/{{cluster_slug}}/generic-response.md`.

---

## 6 — `idea-symphony/prompts/phase2B_question-gen_generic.md`

**Role:** Min-effort subagent. Generates 15–20 questions without the persona system and writes both `QUESTIONS.md` (master) and one `questions/by-topic/{{cluster_slug}}.md` per cluster. Per CLAUDE.md, this is one of the two prompts permitted to read `USER-QUESTIONS.md`.

### Strengths

- Role stated; volume target (15-20) explicit.
- Coverage dimensions and quality standards identical to `phase2B_by-persona.md` (consistency across the two generators).
- Two-output structure with templates for each.
- USER-QUESTIONS.md handling is explicit: exists-check, mandatory preservation, `[User Q]` marker, count-exceeding-20 is acceptable, overlap vs. non-overlap rules.

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope | Single-line opening — add "exactly two outputs" scope lock. |
| G2 | Inputs up top | USER-QUESTIONS.md handling block sits at line 110, after the output templates. Given the "mandatory preservation" floor, this is a real issue — a subagent could reasonably finish drafting before discovering the handling rule. |
| G3 | Important Notes at bottom | Same anti-pattern. |
| G4 | Examples | No weak-vs-strong question example (same leverage as phase2B_by-persona.md E5). |
| G5 | Positive framing | "Do not add preamble, commentary, or follow-up inquiries" — positive equivalent: "Output only the markdown documents specified below, starting with each YAML frontmatter block." |
| G6 | Placeholders | Output templates use `[Project Name]`, `[Descriptive Name]`, etc. Same clarification needed. |
| G7 | Scratch files | Not mentioned. |
| G8 | Context & motivation | USER-QUESTIONS handling doesn't state **why**: "persona generators are isolated from USER-QUESTIONS.md by design, so this generic generator is the single point where user intent re-enters the min-effort stream." |

### Proposed edits

**E1 — Expand opening + add scope:**

> _Before:_ "You are a strategic brainstorming facilitator helping generate thoughtful, probing questions about: **{{request}}**"
>
> _After:_ "You are a strategic brainstorming facilitator. Your job is to generate 15-20 open-ended questions about the topic in `REQUEST.md`, organized into 3-5 thematic clusters. Produce exactly two kinds of output: one master `QUESTIONS.md` file and one `questions/by-topic/{{cluster_slug}}.md` file per cluster. Do not modify any other files."

**E2 — New Inputs section (before Your Task):**

> ## Inputs
>
> Read these files before drafting.
>
> 1. `{{session}}/REQUEST.md` — the topic body. All questions must stay grounded in what the REQUEST states; do not speculate about scope it does not name.
> 2. `{{session}}/USER-QUESTIONS.md` — **read only if it exists** (use Glob to check). If it exists, follow the USER-QUESTIONS Handling block below — user questions are a mandatory input that must survive into your output.

**E3 — Move USER-QUESTIONS handling up** (from its current location near the bottom to directly after the Inputs section), and add the **Why:** rationale:

> ## USER-QUESTIONS Handling
>
> (Existing text from lines ~109-117 verbatim — three paragraphs on mandatory preservation, `[User Q]` marker, overlap handling rules.)
>
> **Why:** the persona-based generators in `low`/`medium`/`high` effort are isolated from `USER-QUESTIONS.md` by design (see CLAUDE.md). This min-effort generator is the single point where user intent enters the question stream in min-effort runs, so dropping or silently merging a user question is a correctness failure, not a volume-management decision.

**E4 — Add one weak-vs-strong example** (inside Question Quality Standards — mirror phase2B_by-persona.md E5):

> **Example — weak vs. strong phrasing (topic: community tool library):**
>
> > Weak: "Should we charge membership fees?" *(yes/no, binary, no room to think)*
> > Stronger: "What pricing model would keep the library accessible to low-income households while still covering tool replacement costs, and what trade-offs does that imply for branding and governance?" *(forces trade-off articulation, names concrete stakes, invites multiple angles)*

**E5 — Positive framing + Notes consolidation:**

Remove the current `## Important Notes` block; fold `REQUEST.md` / Glob-Read hints into Inputs; keep a single `## Notes` at the end:

> ## Notes
>
> - Output only the markdown documents specified below, starting with each YAML frontmatter block.
> - Aim for balanced distribution across clusters (3-5 questions each).
> - Prioritize depth over breadth — 15 excellent questions beat 20 mediocre ones, as long as you preserve any user-provided questions regardless of count.
> - Do not create scratch files, helper scripts, or intermediate outputs. Write only the two kinds of output specified.

**E6 — Template placeholder clarification** (one line above each output template):

> Replace every bracketed placeholder below (e.g., `[Project Name]`, `[Descriptive Name]`, `[Question text]`) with the content you derive; do not emit the literal placeholder strings.

### Do-not-regress inventory

1. 15-20 question target, 3-5 clusters.
2. Five coverage dimensions (Strategic / Tactical / Creative / Analytical / Human-centered) — identical to `phase2B_by-persona.md`.
3. Four quality standards (open-ended, substantive, specific, avoid yes/no-either/or-leading).
4. Two-output structure: master `QUESTIONS.md` and per-cluster `questions/by-topic/{{cluster_slug}}.md`.
5. Zero-padded cluster numbers and lowercase-hyphen slugs inside `{{cluster_slug}}` (e.g. `01_sustainability`).
6. USER-QUESTIONS.md existence check + read.
7. `[User Q]` marker rule on any synthesized/preserved question incorporating user content.
8. "Exceed 20 to preserve user questions is acceptable" rule.
9. Overlap vs. non-overlap handling: overlapping → consolidate into one entry with marker; non-overlapping → preserve verbatim or with minimal refinement.
10. Output YAML frontmatter fields for both file types; `effort: "min"` and `stage: "Phase 2: Generic Question Generation"`.

---

## 7 — `idea-symphony/prompts/phase4_full-synthesis.md`

**Role:** Medium/high effort synthesis subagent. Produces three files per topic cluster: `synthesis/attributed/{{cluster_slug}}.md`, `synthesis/{{cluster_slug}}_synthesis.md`, `synthesis/{{cluster_slug}}_summary.md`.

### Strengths

- Role and task explicit; six-step consolidation process.
- Synthesis strategy enumerates convergent / complementary / unique patterns with explicit handling rules.
- Three-document structure with distinct purposes: attributed (transparency), synthesis (readability), summary (decision-making).
- Per-document templates with YAML frontmatter and formatting rules.
- Attribution format standardized: `*—The Persona*` (em dash + persona).
- Document 3 has a well-defined structure (Exec Summary / Key Themes / Next Steps (0-3 / 3-12 / 1+) / Key Considerations with Opportunities / Risks / Trade-offs).
- File Paths section enumerates all inputs and outputs.
- Closing guidance: "synthesis (integration) not aggregation (list compilation)".

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope / literal interpretation | Opening is a single line. Add "Produce exactly three files…" lock. |
| G2 | Inputs up top | File Paths at the bottom; Steps 1–3 of Task mention inputs but don't enumerate them cleanly. Consolidate into a top `## Inputs` section. |
| G3 | `[User Q]` marker propagation | The synthesizer reads the questions file, which may contain `[User Q]` markers from Phase 2C. Unspecified whether those markers should propagate into the three synthesis documents. Worth a one-line rule (my proposal: preserve `[User Q]` on the `Full question:` line where it appears; do not add it to synthesized-response bullets). Flag for user approval — this may or may not match intent. |
| G4 | Examples | No before/after example showing "three raw persona responses → one synthesized point with attribution". Given that this is where the skill's convergence-signal-as-quality heuristic actually lands, one worked example is very high-leverage. |
| G5 | Positive framing | "Don't lose unique insights just because only one persona mentioned them" → positive: "Include every insight valuable enough to act on, including single-persona insights — unique voice often flags the blind spot everyone else missed." Several similar flips possible. |
| G6 | Voice for Document 3 | "Write for decision-makers who need the essence" is good. Add one-line note that the exec summary is prose, not bullets, and should read direct — not hype-forward. |
| G7 | Tool use | Reading up to 7 response files per topic cluster; no parallel-read guidance. |
| G8 | Placeholder clarification | Three output templates with bracketed placeholders — same one-line note. |
| G9 | Scratch files | Not mentioned. |
| G10 | Contents TOC | The TOC at the top is fine; consider adding `Inputs` to it after E2. |

### Proposed edits

**E1 — Expand opening + add scope:**

> _Before:_ "You are a skilled facilitator synthesizing brainstorming responses from multiple perspectives."
>
> _After:_ "You are a skilled facilitator synthesizing brainstorming responses from multiple perspectives. Produce exactly three files for this topic cluster: an attributed synthesis (transparency), an attribution-stripped synthesis (readability), and an executive summary (decision-making). Do not modify any other files."

**E2 — New Inputs section** (insert before the current `## Your Task`; remove the redundant `File Paths` section at the bottom):

> ## Inputs
>
> Read all of the following before drafting. The response files are independent; read them in parallel.
>
> 1. `{{session}}/REQUEST.md` — the original brainstorming request. Grounds topic-cluster framing.
> 2. `{{session}}/questions/by-topic/{{cluster_slug}}.md` — the questions answered by this cluster. Preserve the full question text on each Question-level heading in Documents 1 and 2.
> 3. `{{session}}/responses/{{cluster_slug}}/*.md` — all persona response files for this topic (4 files at medium effort, 7 at high). Use convergence across these as a quality signal.

**E3 — Add one worked synthesis example** (insert between `Synthesis Strategy` and `Consolidation Process`):

> **Example — three responses into one synthesized point (topic: how to price a community tool library):**
>
> > The Pragmatist wrote: "Use a sliding-scale annual membership of $25/$50/$75 based on self-reported household income. Simple tiers beat means-testing."
> > The Audience Advocate wrote: "Any paywall risks excluding the households the library exists to serve. Pay-what-you-can with a suggested $50 is more inclusive than tiers."
> > The Accountant wrote: "A $40-average membership clears tool replacement at 150 members; below that the program needs donor subsidy. Don't model without the member-count floor."
>
> A well-synthesized point (in Document 1, attributed):
>
> > * **Pricing should balance access and replacement economics, with a clear member-count floor.** The three contributing perspectives converge on "low-barrier access" but diverge on mechanism: a pay-what-you-can or sliding-scale default is inclusive, but only sustainable above ~150 members at ~$40 average contribution. Below that floor, donor subsidy is load-bearing — decide on a pricing approach in concert with a realistic membership growth curve and a backstop plan for the first 18 months.
> >   * **Simple-tier sliding-scale model proposed; self-reported.** Original detail from The Pragmatist. *—The Pragmatist*
> >   * **Pay-what-you-can beats tiers for the households the library exists to serve.** Original detail from The Audience Advocate. *—The Audience Advocate*
> >   * **Replacement economics clear at $40 avg × 150 members; below that requires subsidy.** Original detail from The Accountant. *—The Accountant*
>
> The synthesized point names the convergence (low-barrier access), names the divergence (mechanism + sustainability floor), and commits to an actionable stance. Raw responses are preserved verbatim as sub-bullets. The Document 2 version is identical minus the sub-bullets.

**E4 — `[User Q]` propagation rule** (insert as a bullet inside "Important for Document 1" and "Important for Document 2"):

> - If the questions file carries a `[User Q]` marker on any question, preserve that marker on the `Full question:` line in this document. Do not propagate the marker onto synthesized-response bullets.

**E5 — Positive framing flips:**

- "Don't lose unique insights just because only one persona mentioned them" → "Include every insight valuable enough to act on — single-persona insights often flag blind spots everyone else missed."
- "Don't just list them" → "Extract patterns and connections across questions; aggregate lists of raw points fail the 'synthesis over aggregation' bar."
- "Don't model without the member-count floor" (this is in my example — leave it as the persona's voice).

**E6 — Document 3 voice line** (inside "Important for Document 3"):

> Write the Executive Summary as prose paragraphs, not bullets. Direct and specific: name the insight and its stakes in plain language. The reader is a decision-maker skimming, not a committee evaluating completeness.

**E7 — Parallel-read hint** (inside the new Inputs section):

> Tool-use hint: at medium effort you are reading 4 response files, at high effort 7. Issue the reads in a single parallel batch before drafting.

**E8 — Placeholder clarification** (one line above each of the three output templates):

> Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings.

**E9 — Notes / no-scratch-files** (append to the end of the Important Notes block):

> - Do not create scratch files, helper scripts, or intermediate outputs. Write only the three markdown files specified in Output.

### Do-not-regress inventory

1. Three-document structure — attributed / synthesis / summary — with exact file-name pattern.
2. Six-step Consolidation Process.
3. Convergent / complementary / unique response pattern classification with handling rules.
4. Document 1 format: top-level synthesized bullets with indented sub-bullets for original responses; `*—The Persona*` attribution format (em dash).
5. Document 2 format: identical to Document 1 minus sub-bullets and persona names.
6. Document 3 structure: Executive Summary (2-3/3-5 paragraphs, 200-400 words) → Key Themes (3-5, 2-4 sentences each) → Recommended Next Steps (Immediate 0-3 months / Near-term 3-12 / Long-term 1+, 6-10 total action items) → Key Considerations (Opportunities / Risks & Challenges / Trade-offs, 3-5 each).
7. YAML frontmatter fields per document, including `synthesis-type: "attributed"|"synthesis"|"summary"`.
8. Output paths for all three files.
9. "Order synthesized points by consensus (most agreement first)" rule for Documents 1 and 2.
10. `**Summary.** Detail` bullet format for synthesized points.
11. "Synthesis over aggregation" norm; "quality over completeness" norm.

---

## 8 — `idea-symphony/prompts/phase4_summary-only_low-effort.md`

**Role:** Low-effort summary subagent. Consolidates DA + Pragmatist responses for a single topic cluster into a tension-preserving summary.

### Strengths

- Opening explicitly names the DA+Pragmatist pairing and the tension-preservation mandate: "`low` effort deliberately pairs The Devil's Advocate (critical-risk lens) with The Pragmatist (feasibility lens). Your summary must preserve this tension — the value of `low` effort is specifically in the critical + pragmatic contrast."
- The no-smoothing rule is stated positively and forcefully: "A summary that smooths the DA/Pragmatist contrast into neutral consensus defeats the purpose of `low` effort. Name the disagreements."
- Task steps numbered; classification rule (convergent / divergent / unique) well-defined.
- Example divergent-attribution pattern provided: *"The Pragmatist recommends [X]; The Devil's Advocate flags [Y] as a significant risk."*
- Output template with Executive Summary / Key Themes / Recommended Actions (timeframes) / Key Considerations (High-confidence / Trade-offs / Blind-spot flags).
- File Paths enumerated with DA and Pragmatist paths called out.

### Gaps

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope | Opening is good but could lock output scope ("exactly one file at the path named below"). |
| G2 | Inputs up top | Steps 1–3 of Task name inputs; File Paths at bottom duplicates. Consolidate. |
| G3 | Positive framing | "Skipping one loses half the point" (in Important Notes) is intentionally emphatic and should stay — but could be joined by a positive "both persona files are required inputs; read them in parallel" Inputs line. |
| G4 | Examples | Current prompt already has a short divergent-attribution example in Synthesis Strategy. One additional before/after showing a smoothed-vs-tension-preserved summary sentence would harden the norm further. Optional. |
| G5 | Voice | Executive Summary paragraph target (2-3) is specified; no explicit prose-vs-bullet guidance. |
| G6 | Placeholder clarification | Output template uses bracketed placeholders — same one-line note. |
| G7 | Scratch files | Not mentioned. |
| G8 | Important Notes | Contains three items; one is emphatic (skipping one), one is a tool-use hint, one is a word-count target. Split appropriately. |

### Proposed edits

**E1 — Expand opening + add scope:**

> _Before:_ "You are synthesizing brainstorming responses from two complementary perspectives for a single topic cluster about: **{{topic}}**"
>
> _After:_ "You are synthesizing brainstorming responses from two complementary perspectives for a single topic cluster about: **{{topic}}**. Produce exactly one markdown file at the path named in Output. Do not modify any other files."

**E2 — New Inputs section** (before Your Task; remove the redundant File Paths section at the bottom):

> ## Inputs
>
> Read all four files before drafting. They are independent; read them in parallel.
>
> 1. `{{session}}/REQUEST.md` — topic context.
> 2. `{{session}}/questions/by-topic/{{cluster_slug}}.md` — the questions answered in this topic cluster.
> 3. `{{session}}/responses/{{cluster_slug}}/the-devils-advocate.md` — DA's responses. Required.
> 4. `{{session}}/responses/{{cluster_slug}}/the-pragmatist.md` — Pragmatist's responses. Required.
>
> Both persona files are mandatory inputs. Skipping one loses half the point of `low` effort — the skill explicitly pairs these two lenses to surface trade-offs that single-voice brainstorming smooths over.

**E3 — Optional: add one smoothed-vs-tension example** (inside Synthesis Strategy, after the existing divergent-attribution example):

> **Smoothed (fails the `low` effort mandate):** "Members appreciate accessibility, but balance is needed between inclusivity and sustainability."
>
> **Tension-preserved (succeeds):** "The Pragmatist recommends a sliding-scale membership to maximize sustainability at current member counts; The Devil's Advocate flags that any paywall — including sliding-scale — selectively excludes the members the library exists to serve, and recommends pay-what-you-can with a suggested amount until a sustainability audit at month 6."
>
> The second version names both lenses, commits each to a specific stance, and forces the reader to confront the trade-off rather than letting it dissolve into "balance."

**E4 — Positive framing + compressed Notes:**

Remove the current Important Notes block; fold content appropriately:

> ## Notes
>
> - Target 500-800 words total.
> - Focus on synthesis, not repetition — transform responses into integrated insights organized by the convergence / divergence / unique structure.
> - Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

**E5 — Placeholder clarification** (one line above the output template):

> Replace every bracketed placeholder below (e.g., `[Topic Cluster Name]`, `[Theme 1 Name]`) with the content you derive; do not emit the literal placeholder strings.

**E6 — Voice line** (inside Synthesis Guidelines):

> Write the Executive Summary as prose paragraphs, not bullets. Direct and specific: name both lenses by name when they disagree.

### Do-not-regress inventory

1. DA + Pragmatist pairing is mandatory.
2. Tension-preservation as the core value prop of `low` effort.
3. "Smoothing defeats the purpose" rule (stays emphatic).
4. Convergent / divergent / unique classification with explicit handling rules.
5. Divergent-attribution format: *"The Pragmatist recommends [X]; The Devil's Advocate flags [Y]."*
6. Blind-spot flags preserved with per-persona attribution.
7. Output template structure: Executive Summary → Key Themes (3-5) → Recommended Actions (0-3 / 3-12 / 1+, 4-8 items total) → Key Considerations (High-confidence / Trade-offs / Blind-spot flags).
8. 500-800 word target.
9. Output path: `synthesis/{{cluster_slug}}_summary.md`.
10. YAML frontmatter fields including `effort: "low"`.

---

## 9 — `idea-symphony/prompts/phase4_summary-only_min-effort.md`

**Role:** Min-effort summary subagent. Consolidates the single generic brainstormer's response into a decision-maker summary.

### Strengths

- Role + task clear.
- Cross-references the two siblings (`phase4_summary-only_low-effort.md`, `phase4_full-synthesis.md`) in the opening frontmatter block.
- Output template matches the low-effort variant's structure (Executive Summary / Key Themes / Recommended Actions / Key Considerations), which helps consistency across min/low outputs.
- Synthesis guidelines concrete: extract patterns, prioritize actionability, balance optimism/realism, be specific, organize by value.
- File Paths section enumerates the single input + output.

### Gaps

Same pattern as the other two phase4 summary prompts, adjusted for this prompt's simplicity:

| # | Checklist theme | Gap |
|---|---|---|
| G1 | Scope | Single-line opening — add scope lock. |
| G2 | Inputs up top | One input file; move File Paths to a top Inputs section. |
| G3 | Important Notes | Fold into Notes + Inputs. |
| G4 | Positive framing | "Be specific" → keep; "Avoid generic statements like 'consider stakeholders'" is already positive-oriented. |
| G5 | Placeholder clarification | Same. |
| G6 | Voice | No prose vs. bullet guidance for Exec Summary. |
| G7 | Scratch files | Not mentioned. |
| G8 | Pattern extraction guidance | Current guidance is good; add one line explaining that this subagent has only a single brainstormer's voice to work with, so patterns come from *within* that brainstormer's 3-5 responses per question, not across voices. |

### Proposed edits

**E1 — Expand opening + add scope:**

> _Before:_ "You are synthesizing brainstorming responses for a single topic cluster about: **{{topic}}**"
>
> _After:_ "You are synthesizing brainstorming responses for a single topic cluster about: **{{topic}}**. Produce exactly one markdown file at the path named in Output. Do not modify any other files."

**E2 — New Inputs section** (before Your Task; remove redundant File Paths at the bottom):

> ## Inputs
>
> Read the single response file before drafting.
>
> 1. `{{session}}/responses/{{cluster_slug}}/generic-response.md` — the generic brainstormer's 3-5 responses per question for this topic cluster.
>
> Unlike `low`/`medium`/`high` effort, min-effort synthesis has only a single brainstormer's voice to work with. Patterns and themes must be extracted from *within* that brainstormer's responses — convergence across personas is not available here.

**E3 — Positive framing on Important Notes + compressed Notes:**

Remove the Important Notes block; leave:

> ## Notes
>
> - Target 500-800 words total.
> - Focus on synthesis, not repetition — transform responses into integrated insights.
> - Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

**E4 — Voice line** (inside Synthesis Guidelines):

> Write the Executive Summary as prose paragraphs, not bullets. Direct and specific.

**E5 — Placeholder clarification** (one line above the output template):

> Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings.

### Do-not-regress inventory

1. Single input (`generic-response.md`), single output.
2. Output template structure identical to low-effort summary (Executive Summary / Key Themes (3-5) / Recommended Actions (three timeframes, 4-8 items) / Key Considerations (Opportunities / Risks / Trade-offs)).
3. 500-800 word target.
4. Synthesis-not-aggregation norm.
5. Cross-references in the opening to `phase4_summary-only_low-effort.md` and `phase4_full-synthesis.md`.
6. YAML frontmatter fields including `effort: "min"` and `stage: "Phase 4: Summary Generation"`.
7. Output path: `synthesis/{{cluster_slug}}_summary.md`.

---

## Cross-prompt consistency notes

While executing the edit pass, a few cross-cutting consistency wins fall out naturally:

1. **`## Inputs` section near the top** becomes the standard structure for all 8 (phase2A is ever so slightly different — orchestrator-run, no file writes — but benefits from the same clarity).
2. **`## Notes` at the bottom, short** replaces every `## Important Notes` block. Notes is limited to (a) voice/style guidance not captured elsewhere and (b) the scratch-file discouragement.
3. **Template-placeholder clarification** is a one-line pattern that should match verbatim across every prompt that emits a bracketed template. Proposed canonical line: *"Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings."*
4. **Scratch-file discouragement** uses a canonical line: *"Do not create scratch files, helper scripts, or intermediate outputs. Write only the markdown file(s) specified in Output."*
5. **Parallel-Read hints** only appear where the subagent reads ≥3 files; otherwise noise.
6. **Positive framing**: the goal is to flip defensive "Do not / Never" lines to positive equivalents *unless the emphatic negative is load-bearing* (e.g., "Never merge Append content with Synthesize content" in phase2C — stays as-is).

## Awaiting final approval

Eight prompts reviewed. All edits are additive or structural (no rule changes). Ready to apply with `Edit` calls in phase order once you say go. If you want me to apply a subset, skip any gaps, or adjust the depth on any specific prompt, flag it and I'll rework before touching files.

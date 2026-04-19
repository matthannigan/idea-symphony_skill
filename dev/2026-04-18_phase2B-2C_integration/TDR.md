# TDR: Idea Symphony Phase 2B + 2C Integration

**Date:** 2026-04-18
**Author:** Integration planning session
**Status:** READY FOR EXECUTION
**Target file:** `idea-symphony/SKILL-draft.md` (NOT `SKILL.md`)
**Supersedes:** `dev/2026-03-01_symphony-phase2B-orchestrator-selection/integration-instructions.md` (delete after TDR lands)
**Source investigations:**
- `dev/2026-03-01_symphony-phase2B-orchestrator-selection/` — orchestrator persona selection (GT1 → O1 → PR1 → PI1)
- `dev/2026-03-01_symphony-phase2C-synthesis/` — synthesis prompt + consolidation test (TDA1 → BL1 → SP1 → PC1)

This TDR consolidates both investigations' integration recommendations into one plan. It is written as an instruction set; all analysis lives in the source investigations' `findings/` directories.

---

## 1. Purpose

Ship two validated changes to the Idea Symphony skill **by editing `SKILL-draft.md`**:

1. **Phase 2 Step 2.1 orchestrator** — replace inline roster-planning logic with the validated PR1 orchestrator prompt (PI1: 20/20 format compliance, 100% volume accuracy). The draft's Step 2.1 already exists structurally; the integration swaps its body for the validated prompt reference.
2. **Phase 2 Step 2.3 synthesis** — replace the reference to the unvalidated `phase2-question-synthesis.md` with a new `phase2c-synthesis.md` that contains the SP1 iter3 prompt (0/18 auto-fails, 100% preservation, 100% hard-floor pass) plus output-format changes for interleaved Append placement and `questions-meta.json` sidecar.

`min` effort is untouched (skips personas entirely per the existing min-workflow). `low` effort retains the orchestrator + synthesis but skips Step 2.4 persona selection (fixed DA + Pragmatist brainstormers). `medium`/`high` run the full pipeline.

---

## 2. Locked decisions (audit log)

| # | Decision | Source |
|---|---|---|
| D1 | **No phase renumbering.** SKILL-draft.md already uses `Phase 2 → Step 2.1 / 2.2 / 2.3 / 2.4` structure matching PC1's integration notes. Integration targets these existing steps. | User; confirmed by reading SKILL-draft.md |
| D2 | Input pooling for synthesis is frontmatter-only — persona files carry static `stream:` / `category:` frontmatter; Step 2.2 persona subagents propagate; Step 2.3 synthesis subagent Globs `questions/by-persona/*.md`. No intermediate pooled file, no shell script. Stream is **also** in `PLAN.md` Step 2.1 roster (belt + suspenders). | User |
| D3 | Step 2.3 produces a single `QUESTIONS.md`; a shell post-step splits `## Topic Cluster NN` blocks into `questions/by-topic/[NN]_*.md` for Phase 3 consumption. | User |
| D4 | Category→Stream mapping lives in the synthesis prompt, not in the PI1 roster template. PI1 template is NOT reopened. | User |
| D5 | C1 Option 1 (BL1 §6.4 recommended default) — flat-with-tags universally; no effort-conditional input format. Matches what SP1 validated. | User |
| D6 | Rename `references/prompts/phase2-question-synthesis.md` → `phase2c-synthesis.md`. Body replaced with SP1 iter3 prompt (with D8 + D9 output changes). | User |
| D7 | SKILL-draft.md Step 2.4 persona-selection instructions explicitly tell the subagent to use the cluster labels from Step 2.3's `QUESTIONS.md`. | User |
| D8 | Append questions are interleaved verbatim into the topically-closest cluster. No separate Append section, no persona tags visible in `QUESTIONS.md`. Orphans go into a neutral `## Additional Questions` section at the end. | User |
| D9 | Persona attribution + convergence metadata moves to a `questions-meta.json` sidecar, not visible in `QUESTIONS.md`. | User |
| D10 | TDR replaces both prior integration docs. The 2B integration-instructions.md is deleted after this TDR is executed. | User |
| D11 | Post-integration SKILL-draft.md slim-down is a **follow-up pass**, not part of this TDR. | User |
| D12 | **Target file is `SKILL-draft.md`, not `SKILL.md`.** `SKILL.md` is not touched by this integration. | User (late-breaking correction) |

---

## 3. Target end-state architecture (all edits land in `SKILL-draft.md`)

```
Phase 1 — Context Gathering & effort detection (unchanged)
  ↓
Phase 2 — Question Generation
  ├─ min effort     → min-workflow.md (unchanged; skips personas)
  └─ low/med/high   → Step 2.1  Roster planning via orchestrator prompt     [REVISED body]
                      Step 2.2  Parallel question generation                [REVISED: stream frontmatter propagation]
                      Step 2.3  Synthesis (QUESTIONS.md + sidecar)          [REVISED prompt + output format]
                      Step 2.4  Persona selection (med/high only)           [REVISED: explicit cluster-label instruction]
  ↓
Phase 3 — Brainstorming (unchanged; consumes questions/by-topic/)
  ↓
Phase 4 — Response synthesis (unchanged)
  ↓
Phase 5 — Final output (unchanged)
```

Orchestrator (Step 2.1) runs at `low`/`medium`/`high`; Tier 3 gating is by trigger strength per `persona-selection-guide_Phase2B.md` (0–1 at low/medium strong-only; 0–2 at high moderate+). Step 2.4 is `medium`/`high` only (`low` uses fixed DA + Pragmatist for Phase 3).

---

## 4. Source-of-truth artifacts (do not re-derive)

| Artifact | Path | Role |
|---|---|---|
| Refined orchestrator prompt body | `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/PR1_refined-orchestrator-prompt.md` | Preamble + Steps 1–4 for Step 2.1 |
| Canonical PLAN.md roster template | `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/PI1_plan-md-template.md` | Output-format block for the orchestrator |
| Refined synthesis prompt body | `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_refined-synthesis-prompt.md` | SP1 iter3, 22367 bytes — Synthesize/Append logic for Step 2.3 |
| PI1 format checker | `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/PI1_format-checker.md` | Dev-time regression tool; not shipped |
| BL1 cross-topic synthesis | `dev/2026-03-01_symphony-phase2C-synthesis/findings/BL1_baseline-establishment.md` | Scoring anchors + Category→Stream rationale |
| PC1 verdict | `dev/2026-03-01_symphony-phase2C-synthesis/findings/PC1_persona-selection-consolidation.md` | "Keep Separate" + Step 2.4 instruction derivation |

Read these only if you need to re-derive a decision.

---

## 5. Category → Stream mapping (canonical)

Per D4, this mapping lives inside the synthesis prompt. It is fixed, not per-session:

| Category (from PI1 roster) | Personas | Stream |
|---|---|---|
| Analytical | Questioner, Analyst | Synthesize |
| Structural | Devil's Advocate, Appreciative Inquirer, Audience Advocate, Systems Thinker, Empath, First Principles Thinker, Futurist | Synthesize |
| Perspective | Provocateur, Analogist / Connector, Visionary, Storyteller, Constraint Flipper | Append |
| Specialist | Accountant, Lawyer, Technical Expert | Synthesize |
| Specialist | Politician | Append |

Specialist is split per-persona. Politician is the only Append-stream specialist.

---

## 6. Reference-file changes

### 6.1 Create `idea-symphony/references/prompts/phase2b-orchestrator-selection.md`

Four sections, in order:

**§1 — Preamble (copy verbatim).** From `PR1_refined-orchestrator-prompt.md`, copy the block starting `You are the Idea Symphony Phase 2B orchestrator.` through the last line of Step 4 (`Assemble Steps 1–3 into the PLAN.md roster section below.`). Approximately PR1 lines 15–131. No edits.

**§2 — Output Format.** Insert the full `## Medium / High Effort Template` block from `PI1_plan-md-template.md`, unchanged. The PI1 template pre-specifies Category column values in Tier 2/Tier 3 tables (resolves SD1 from the validation report).

**§3 — Volume Ranges table.** Copy the `Effort-Level Volume Ranges (authoritative)` table from `PI1_plan-md-template.md` under heading `## Volume Ranges (refer to this table)`.

**§4 — Low-Effort Note.** Append:

```markdown
## Low Effort

At `low` effort, produce the same roster structure as medium. Tier 1 is always
included; Tier 2 is omitted (high-only); Tier 3 is gated to 0-1 strong-trigger
persona per persona-selection-guide_Phase2B.md. Connector/Analogist swap
evaluation still applies. The Synthesize/Append split still applies.
```

(Note: the validated PR1 prompt was scored on medium/high; low is included in the draft's Step 2.1 flow, so the low-effort behavior here follows the existing guide. This is a known-scope extension and is flagged in §9.)

### 6.2 Create `idea-symphony/references/prompts/phase2c-synthesis.md`

This is `SP1_refined-synthesis-prompt.md` (SP1 iter3, starting at "You are a strategic brainstorming facilitator...") with **three targeted changes** to implement D8 (interleaved output), D9 (meta sidecar), and D4/D5 (Category→Stream mapping):

**Change A — Replace the "Context" section's input-format description.**

Replace this block:

```
The input is a single pooled question file at `dev/2026-03-01_symphony-phase2C-synthesis/test-data/{TOPIC_NAME}_{EFFORT}.md`. Personas are flat-pooled; each persona section is tagged with its routing — `(Synthesize — Volume N)` or `(Append — Volume N)`. The tag tells you which of the two processing streams a persona belongs to.
```

With:

```
The input is the set of per-persona question files at `[session]/questions/by-persona/*.md`. Each file's YAML frontmatter carries `stream: synthesize|append`, `category: analytical|structural|perspective|specialist`, and `volume: N`. Read every file; use the `stream` field to route each persona's questions to Section 1 (Synthesize) or Section 2 (Append) processing below.

If a persona file is missing the `stream` field (e.g., legacy path), first check the Phase 2B roster in `[session]/PLAN.md` for the declared stream. If still not found, apply this canonical mapping from `category`:
- `analytical` → synthesize
- `structural` → synthesize
- `perspective` → append
- `specialist` → synthesize, EXCEPT `Politician` → append

Do not merge Append content with Synthesize content under any circumstances, even when they bridge the same topic cluster.
```

**Change B — Replace the "Final Output Structure" section.**

Replace the entire `## Final Output Structure` block (including the fenced template and the Format Rules bullets) with:

````markdown
## Final Output Structure

Produce a single file at `[session]/QUESTIONS.md` with the structure below. Append-stream questions are INTERLEAVED verbatim into the topically-closest cluster's question list — they are NOT placed in a separate section, and they carry NO persona attribution in the visible output. Persona attribution and convergence metadata is written to a separate `[session]/questions-meta.json` sidecar (see next section).

### Cluster placement rule for Append questions

For each Append-stream question, determine the topically-closest Synthesize cluster by theme overlap. Place the Append question verbatim as a numbered item within that cluster's list, in whatever position preserves logical flow (typically at the end of the cluster's Synthesize-merger questions).

If an Append question has no topical home in any Synthesize cluster (pure inversion, abstract metaphor, or reframe with no topic binding), collect such questions under a final `## Additional Questions` section at the end of the file. Use a neutral cluster-style header — NO persona attribution, no "Appended" or "Perspective" framing. This section should be used sparingly; most Append questions will find a topical home.

### File template

```markdown
---
project-name: "[Project Name from REQUEST]"
effort: "[low|medium|high]"
stage: "Phase 2 Step 2.3: Question Synthesis"
---

# Brainstorming Questions: [Project Name]

---

## Topic Cluster 01: [Descriptive Name]

1. **Short summary**: Merged or verbatim question description. Distinctive vocabulary preserved from contributing personas without surfacing their names.
2. **Short summary**: ...
3. **Short summary**: ...

## Topic Cluster 02: [Descriptive Name]

1. **Short summary**: ...
2. **Short summary**: ...

[Continue through all clusters]

---

## Additional Questions

{only if orphan Append questions exist; otherwise omit this section entirely}

1. **Short summary**: Original verbatim question text.
2. **Short summary**: ...
```

### Format Rules

- Use `## Topic Cluster NN: Name` with zero-padded numbering.
- Every question is formatted `N. **Short summary**: Longer description.` — no trailing `[Persona tags]`, no `###` sub-headings under clusters.
- Synthesize-stream questions are merged anchors with distinctive-vocabulary clauses folded in (per Merger Rules in Section 1). Persona names never appear in the clause text — only distinctive vocabulary does (e.g., "Shifting-the-Burden dynamic", "INT8 quantization", "FCRA compliance").
- Append-stream questions are preserved verbatim word-for-word from the source, with NO rewriting, NO persona tagging, and NO merger with Synthesize content. Voice preservation is achieved through verbatim text, not through attribution labels.
- If `[User Q]` markers appear in the input, preserve them on any synthesized question that incorporates user input.
- No preamble, commentary, or follow-up questions outside the structure above.

## Metadata Sidecar (`questions-meta.json`)

In addition to `QUESTIONS.md`, produce `[session]/questions-meta.json` with this schema:

```json
{
  "generated_at": "2026-04-18T12:00:00Z",
  "effort": "medium",
  "n_synth_input": 82,
  "m_synth_output": 30,
  "append_count": 30,
  "total": 60,
  "clusters": [
    {
      "number": 1,
      "name": "Governance & Stakeholder Alignment",
      "question_numbers": [1, 2, 3, 4],
      "synthesize_contributors": {
        "1": ["Analyst", "Systems Thinker", "Devil's Advocate"],
        "2": ["Questioner", "Audience Advocate"],
        "3": ["Systems Thinker"]
      },
      "append_contributors": {
        "4": "Politician"
      }
    }
  ],
  "additional_questions": {
    "question_numbers": [45, 46],
    "append_contributors": {
      "45": "Provocateur",
      "46": "Visionary"
    }
  },
  "r11_source_bound_cells": [],
  "self_check": {
    "ai_orphan_question_numbers": [7, 22, 38],
    "st_archetype_question_numbers": [5, 19],
    "st_archetypes_verbatim": ["Shifting-the-Burden", "Fixes-that-Fail"]
  }
}
```

The sidecar is the authoritative audit trail. Future investigations and skill tests read convergence, persona attribution, and hard-floor diagnostics from this file — not from `QUESTIONS.md`.
````

**Change C — Retain all other sections unchanged.** Section 1 (Synthesize Stream) convergence rules, merger rules, R1–R12 refinements, representation requirements, cluster organization, per-effort output target, and structural self-check; Section 2 (Append Stream) scope, round-robin selection with R10 diagnostics, effort-level quotas, and presentation rules. Only the "Context" and "Final Output Structure" blocks change. The internal Synthesize/Append discipline that SP1 validated is preserved.

### 6.3 Update persona files with stream + category frontmatter

Each of these persona files (`idea-symphony/references/personas/the-*.md`) gets new YAML frontmatter at the top. Frontmatter is additive; file body is unchanged.

**Question-generating personas** (add `stream`, `category`, `phase-role`):

| Persona file | `category` | `stream` | `phase-role` |
|---|---|---|---|
| the-questioner.md | analytical | synthesize | question-generation-only |
| the-analyst.md | analytical | synthesize | question-generation-only |
| the-devils-advocate.md | structural | synthesize | both |
| the-appreciative-inquirer.md | structural | synthesize | both |
| the-audience-advocate.md | structural | synthesize | both |
| the-systems-thinker.md | structural | synthesize | both |
| the-empath.md | structural | synthesize | both |
| the-first-principles-thinker.md | structural | synthesize | both |
| the-futurist.md | structural | synthesize | both |
| the-provocateur.md | perspective | append | both |
| the-analogist.md | perspective | append | both |
| the-connector.md | perspective | append | both |
| the-visionary.md | perspective | append | both |
| the-storyteller.md | perspective | append | both |
| the-constraint-flipper.md | perspective | append | both |
| the-accountant.md | specialist | synthesize | both |
| the-lawyer.md | specialist | synthesize | both |
| the-technical-expert.md | specialist | synthesize | both |
| the-politician.md | specialist | append | both |

**Brainstorming-only personas** (add `phase-role` only, no stream/category):

| Persona file | `phase-role` |
|---|---|
| the-pragmatist.md | brainstorming-only |
| the-simplifier.md | brainstorming-only |
| the-momentum-builder.md | brainstorming-only |
| the-synthesizer.md | brainstorming-only |

Template for question-generating personas:

```markdown
---
category: structural
stream: synthesize
phase-role: both
---
```

Template for brainstorming-only personas:

```markdown
---
phase-role: brainstorming-only
---
```

Notes:
- `phase-role: question-generation-only` marks Phase 2-only personas. They are excluded from Step 2.4 persona selection.
- The existing `the-analyst.md.bak` legacy backup file can be deleted if confirmed unused; not required by this TDR.

### 6.4 Delete `idea-symphony/references/prompts/phase2-question-synthesis.md`

Fully replaced by `phase2c-synthesis.md` (per D6). Delete after `phase2c-synthesis.md` is created and verified.

---

## 7. SKILL-draft.md edits

The draft is ~460 lines today. These edits are surgical — four targeted revisions within existing Steps 2.1/2.2/2.3/2.4. No renumbering, no structural additions beyond the awk split step.

### 7.1 Step 2.1 — Replace inline roster logic with prompt-file reference

Current Step 2.1 (SKILL-draft.md ~lines 142–158) has inline logic: "Read persona-selection-guide_Phase2B.md … Tier 1 … Tier 2 (high only) … Tier 3 (orchestrator judgment) … Connector/Analogist swap … Write roster plan into PLAN.md."

Replace the entire body of Step 2.1 (from the paragraph after the step header through the end of the numbered list) with:

```markdown
The orchestrator produces a structured roster section in `PLAN.md` identifying Tier 1 personas, Tier 2 additions (high effort), any Tier 3 specialists selected by trigger strength, and the Connector/Analogist decision. Each persona row includes the Synthesize/Append stream assignment used by Step 2.3.

**Orchestrator instructions:** Use the prompt at
`[skill]/references/prompts/phase2b-orchestrator-selection.md`.

**Inputs the orchestrator receives:**
1. `[session]/REQUEST.md` — the topic body
2. `{EFFORT_LEVEL}` — `low`, `medium`, or `high` (from Phase 1)
3. Reference: `[skill]/references/persona-selection-guide_Phase2B.md` —
   consulted only if the prompt directs

**Output:** the orchestrator appends / replaces the
`## Phase 2B: Question Generation Roster` section inside `[session]/PLAN.md`.
No other files are written at this step.

**Orchestrator Model:** Claude Opus (validation was on Opus; the roster decision is
judgment-intensive).

**Quality Gate:** Before proceeding to Step 2.2, verify `PLAN.md` contains:
- The `## Phase 2B: Question Generation Roster` header
- An Effort Level line matching the session's effort level
- A Tier 1 table with 10 personas (Connector substituted for Analogist if swapped)
- A Tier 2 table at high effort, or `N/A — medium effort` / `N/A — low effort` otherwise
- A Tier 3 table OR the correct "None selected — …" sentinel
- A Selection Rationale block with structured fields (Trigger strength, Topic citation, Decision) for all four Tier 3 candidates and a Connector/Analogist swap rationale

If any element is missing, re-run Step 2.1 rather than proceeding.
```

### 7.2 Step 2.2 — Add stream frontmatter propagation

In the "Instructions for each subagent" list (SKILL-draft.md ~lines 165–172), revise item 5 and add a new item 6:

**Current:**
```
5. Use YAML frontmatter in output (include persona name, date, effort level, volume target)
6. Save to `[session]/questions/by-persona/[persona-name].md`
```

**Revised:**
```
5. Read the persona file's YAML frontmatter to obtain the persona's static
   `category` and `stream` values. These are load-bearing for Step 2.3
   routing and MUST be propagated into the output file's frontmatter.
6. Use YAML frontmatter in output with these fields:
   - `persona: [Persona Name]`
   - `category: [analytical|structural|perspective|specialist]` (from persona file)
   - `stream: [synthesize|append]` (from persona file)
   - `volume: N` (target volume from Step 2.1 roster)
   - `effort: [low|medium|high]`
   - `date: YYYY-MM-DD`
7. Save to `[session]/questions/by-persona/[persona-name].md`
```

Also update the Quality Gate block (~lines 178–182) to add a second bullet:

**Current:**
```
**Quality Gate:** Before proceeding, verify:
- `questions/by-persona/` file count matches roster plan
- If count doesn't match: Use Glob to search, move to correct location
- If files missing after search, log in PLAN.md Notes and proceed
```

**Revised:**
```
**Quality Gate:** Before proceeding, verify:
- `questions/by-persona/` file count matches roster plan
- Each file's YAML frontmatter includes `stream` and `category` fields
- If count doesn't match: Use Glob to search, move to correct location
- If frontmatter is missing, re-run that persona's subagent
- If files missing after search, log in PLAN.md Notes and proceed
```

### 7.3 Step 2.3 — Replace inline synthesis logic with prompt-file reference; add sidecar + awk split

Current Step 2.3 (SKILL-draft.md ~lines 185–237) has extensive inline logic for Synthesize-group handling, Append-group per-persona rules, target output tables, user-question handling, and output file specifications.

Replace the entire body of Step 2.3 (from the paragraph after the step header through the end of the "Update PLAN.md" line) with:

````markdown
Spawn 1 subagent to consolidate per-persona questions into topic clusters using the Synthesize/Append stream split. The synthesis prompt encodes the cluster targets, compaction ratios, voice-preservation floors, and Append placement rules (all validated in SP1 iter3).

**Synthesis instructions:** Use the prompt at
`[skill]/references/prompts/phase2c-synthesis.md`.

**Inputs the subagent receives:**
1. `[session]/questions/by-persona/*.md` — all persona files (subagent Globs
   this directory; each file's frontmatter provides `stream`, `category`,
   `volume`)
2. `[session]/REQUEST.md` — topic context
3. `[session]/PLAN.md` — fallback source for the Phase 2B roster if any
   persona file is missing stream frontmatter
4. `[session]/USER-QUESTIONS.md` (if it exists) — user-provided questions
   treated as a mandatory "+1" input; the subagent marks any synthesized
   question incorporating a user question with `[User Q]`

**Outputs:**
1. `[session]/QUESTIONS.md` — clustered, numbered question list. Append
   questions are interleaved verbatim into the topically-closest cluster;
   orphans (questions with no topical home) appear under a final
   `## Additional Questions` section. No persona attribution is visible in
   this file.
2. `[session]/questions-meta.json` — persona attribution, convergence data,
   and hard-floor self-check diagnostics. This is the authoritative audit
   trail for future investigations and skill tests.

**Subagent Model:** Claude Opus (the prompt's R1–R12 discipline rewards careful reasoning; validation was on Opus).

**Post-synthesis shell step — split QUESTIONS.md into by-topic files:**

After the subagent returns, run this awk command to produce per-cluster files for Phase 3 consumption:

```bash
cd [session] && mkdir -p questions/by-topic && awk '
  /^## Topic Cluster [0-9]+:/ {
    if (file) close(file)
    match($0, /Topic Cluster ([0-9]+): (.+)/, m)
    slug = tolower(m[2])
    gsub(/[^a-z0-9]+/, "-", slug)
    sub(/^-/, "", slug); sub(/-$/, "", slug)
    file = sprintf("questions/by-topic/%02d_%s.md", m[1], slug)
    print "---\ncluster: " m[1] "\nname: " m[2] "\n---\n" > file
    next
  }
  /^## Additional Questions/ {
    if (file) close(file)
    file = "questions/by-topic/99_additional.md"
    print "---\ncluster: 99\nname: Additional Questions\n---\n" > file
    next
  }
  /^## / && file { close(file); file = "" }
  file { print >> file }
' QUESTIONS.md
```

This is a deterministic transform, not an LLM step. `questions/by-topic/99_additional.md` is produced only if the `## Additional Questions` section exists in QUESTIONS.md.

**Quality Gate:** Before proceeding, verify:
- `QUESTIONS.md` exists and contains at least one `## Topic Cluster NN:` header
- `questions-meta.json` exists and parses as valid JSON
- `questions/by-topic/` contains one file per cluster (plus `99_additional.md` if orphans existed)
- Self-check values in `questions-meta.json` satisfy the SP1 hard floors:
  - `ai_orphan_question_numbers` is non-empty (≥3 at high effort)
  - `st_archetype_question_numbers` is non-empty OR `r11_source_bound_cells` is populated (≥3 at high effort)
- If `USER-QUESTIONS.md` exists: count `[User Q]` markers in `QUESTIONS.md` vs. user question count

If any check fails, re-run Step 2.3.

Update `PLAN.md` with Step 2.3 complete status and cluster count.
````

### 7.4 Step 2.4 — Add explicit cluster-label instruction

In the "Instructions for subagent" list (SKILL-draft.md ~lines 247–258), replace item 1:

**Current:**
```
1. Read `[session]/QUESTIONS.md` for topic clusters and their questions
```

**Revised:**
```
1. Read `[session]/QUESTIONS.md` for topic clusters and their questions.
   **Use the cluster labels exactly as produced by Step 2.3 synthesis when
   assigning personas per cluster** — do not invent alternate cluster names
   or re-cluster the questions. The persona selection must reference the
   same clusters that Phase 3 will iterate.
```

All other Step 2.4 instructions (topic classification, concentric circles algorithm, effort-level counts, output format, approval pause, quality gate) remain unchanged.

### 7.5 Update Session Resume table

In the Session Resume table (SKILL-draft.md ~lines 408–415), update rows to reference the new files:

**Current:**
```
| Phase 2 Step 2: complete | `QUESTIONS.md` missing | Resume at Phase 2 Step 3 (Question Synthesis) |
| Phase 2 Step 3: complete | `persona-selections.md` missing | Resume at Step 2.4 (`medium`/`high`) or Phase 3 (`low`) |
```

**Revised:**
```
| Phase 2 Step 2.2: complete | `questions/by-persona/*.md` exist, `QUESTIONS.md` missing | Resume at Step 2.3 (Synthesis) |
| Phase 2 Step 2.3: complete | `QUESTIONS.md` + `questions-meta.json` exist, `persona-selections.md` missing | Resume at Step 2.4 (`medium`/`high`) or Phase 3 (`low`) |
| Phase 2 Step 2.4: complete | `persona-selections.md` exists | Resume at Phase 3 |
```

### 7.6 `min` effort — no changes

Step 2.1 through 2.4 do not run at `min` effort — `min` uses `references/prompts/min-workflow.md` per the existing architecture. No integration changes to `min`.

---

## 8. Verification & smoke test

### 8.1 Step 2.1 structural regression check

Run the PI1 format checker (`dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/PI1_format-checker.md` § "Quick-run summary template") against one freshly-generated PLAN.md roster from Step 2.1. All 8 items should Pass (or Pass with minor Category-label Partial).

### 8.2 Step 2.3 interleaved-output smoke test

**Required before shipping.** The SP1 iter3 prompt was validated on the *separated-section* output format. D8 changes that. Run a 3-cell smoke test confirming voice preservation survives the interleaved format:

1. Pick: **tool-library low / medium / high** (SP1's validated cells; BL1 baselines exist for direct comparison).
2. Execute Phase 2 Steps 2.1–2.3 end-to-end on each cell using the new `phase2c-synthesis.md` prompt.
3. For each resulting `QUESTIONS.md`:
   - Verify voice-preservation hard floors via `questions-meta.json.self_check` — AI orphan count ≥1 (≥3 at high); ST archetype count ≥1 (≥3 at high) OR R11 source-bound substitution annotated.
   - Spot-check 5 Append questions per cell — confirm verbatim preservation (exact string match against source `questions/by-persona/[persona].md`).
   - Confirm no persona names appear in the `QUESTIONS.md` body outside cluster headings.
   - Confirm Append-stream content is never merged with Synthesize content (grep-based audit: no Append question text appears inside a Synthesize merged-anchor description).
4. Delta vs. SP1 iter3 original: statistical parity on preservation, representation, hard-floor pass. Compaction and cluster alignment may shift slightly due to placement logic; acceptable if within SP1 iter3 stability stdev (~0.3× compaction, ±1 cluster).

Log results in `dev/2026-04-18_phase2B-2C_integration/smoke-test-results.md`. If any hard floor fails, pause integration and revise placement rule in `phase2c-synthesis.md` before shipping.

### 8.3 Low-effort behavior check

The draft's `low` effort now runs Steps 2.1–2.3 (orchestrator + generation + synthesis) but skips 2.4. Confirm:
- Step 2.1 orchestrator produces a valid low-effort roster (Tier 1 + 0-1 Tier 3; no Tier 2)
- Step 2.3 produces `QUESTIONS.md` + `questions-meta.json` at low effort
- Phase 3 reads `questions/by-topic/` and uses fixed DA + Pragmatist (unchanged flow)

Use tool-library/low as the smoke-test cell (already covered by §8.2).

### 8.4 `min` effort sanity check

Run one topic through `min` effort. Confirm no regressions — `min` bypasses all integration changes via the separate min-workflow.

### 8.5 Do NOT re-run full validation

PI1 (20 runs) and SP1 iter3 (18 runs) already locked structural compliance. Full re-runs are not an integration requirement — that's the job of a dedicated regression suite when one is built.

---

## 9. Known residuals & watchlist

Items accepted at TDR scope; do not block shipping. Each is a future-investigation candidate, not an integration blocker.

### 9.1 From Phase 2B (PR1 + PI1)

| ID | Issue | Severity | Path forward |
|---|---|---|---|
| 2B-Gap2 | mobile-app high Accountant: refined prompt produces `none`; Canonical Rev 3 ground truth expects `moderate`. | Low | Guide-level edit to `persona-selection-guide_Phase2B.md`. Separate investigation. Rationale in `PR1_prompt-refinement.md`. |
| 2B-SD2 | mobile-app Connector/Analogist effort-invariance inconsistency (1 cell in PI1). | Low | Below systematic threshold. Watch in future regression runs. |
| 2B-LOW | PR1 was validated on medium/high only. SKILL-draft.md's `low` effort also invokes the orchestrator (no Tier 2, 0-1 Tier 3). Extension is low-risk (fewer personas, simpler roster) but was not empirically tested. | Low | Add a low-effort cell to any future regression pass. Current smoke test §8.2 covers tool-library/low. |

### 9.2 From Phase 2C (SP1 iter3 + PC1)

| ID | Issue | Severity | Path forward |
|---|---|---|---|
| 2C-SP1-E1 | Medium-effort compaction under-band on low-convergence-density topics (SP/med 1.83×, SC/med 1.98×, MA/med 2.36× U-edge). R5 `preserve-distinct-≥4` over-fires at medium. | Medium | Guide-edit candidate: extend R9 pattern (≥5 members AND ≥3 register signatures) to medium effort. Preservation unaffected (100%); only total count inflates by 5–10 at medium. |
| 2C-SP1-E2 | Low-effort Append fidelity 2/6 pass (target 80%). R7+R10 still defaults to source-order for single-dominant-cluster personas. | Medium | Guide-edit candidate: revise `persona-selection-guide_Phase2B.md` to require Append personas have ≥2 distinct internal clusters at low effort. Or modify Append quota rules. |
| 2C-SP1-E3 | Self-report drift: MA/high reported 44 synth questions vs. actual 58 (other 16 cells within ±2). | Low | Prefer `questions-meta.json.m_synth_output` (authoritative enumeration) over subagent self-report. |
| 2C-SP1-E4 | Low-effort cluster over-count by +1 on 3 topics (FT/low 10 vs. 7–9; WD/low 10; SP/low 9 vs. 6–8). R12 addresses medium but not low. | Low | Extend R12 pattern to low effort (N_synth < 80 → ≤9 clusters at low) in a future prompt iteration. |
| 2C-SP1-R11 | R11 source-bound ST substitution is load-bearing for MA/low and SP/low, but the subagent did not explicitly emit the `[R11 source-bound]` annotation in iter3 runs. | Low | Make annotation required in a future prompt iteration. Substitution itself is correct; only the annotation is missing. |
| 2C-PC1 | Condition B (consolidated) showed a small synthesis-persona consistency advantage at medium/high (+6/6 cells) that Condition A cannot replicate structurally. Verdict: not enough to flip "keep separate." | Informational | Watch; future consolidation re-investigation could test with explicit "if effort == low, produce empty persona table" instruction. |

### 9.3 Informational (document, don't fix)

- SP1's refinement loop plateaued at 5/7 strict thresholds. Iter3 is final per the extension rule's "within 5 pp" condition not being met. Remaining gaps require either structural rewrite (beyond SP1 scope) or upstream persona-selection-guide edits.
- PC1's Part 4 noted `persona-selection-guide_Phase2C.md` should remain a separate reference file (387 lines). Current architecture already matches; no change.

---

## 10. Files touched — summary

### Created
- `idea-symphony/references/prompts/phase2b-orchestrator-selection.md`
- `idea-symphony/references/prompts/phase2c-synthesis.md`
- `dev/2026-04-18_phase2B-2C_integration/TDR.md` (this file)
- `dev/2026-04-18_phase2B-2C_integration/smoke-test-results.md` (produced during §8.2)

### Modified
- `idea-symphony/SKILL-draft.md` — targeted revisions to Steps 2.1, 2.2, 2.3, 2.4 + Session Resume table. No renumbering.
- `idea-symphony/references/personas/the-*.md` (~23 files total) — add `category` / `stream` / `phase-role` frontmatter (19 question-generating personas get all three; 4 brainstorming-only personas get `phase-role` only)

### Deleted
- `idea-symphony/references/prompts/phase2-question-synthesis.md` (replaced by phase2c-synthesis.md)
- `dev/2026-03-01_symphony-phase2B-orchestrator-selection/integration-instructions.md` (superseded by this TDR — delete only after TDR execution completes and smoke test passes)

### NOT touched
- `idea-symphony/SKILL.md` — **explicitly excluded per D12.** All integration lands in `SKILL-draft.md`.
- `idea-symphony/references/persona-selection-guide_Phase2B.md` — Gap 2 residual is a separate follow-up
- `idea-symphony/references/persona-selection-guide_Phase2C.md` — finalized; Step 2.4 reads as-is
- `idea-symphony/references/prompts/min-workflow.md` — `min` effort unchanged
- Investigation `findings/`, `tasks/`, `ground-truth/`, `baselines/`, `test-data/` — paper trail stays in `dev/`

---

## 11. Execution order

Recommended sequence; steps 1–4 can be parallelized:

1. Create `phase2b-orchestrator-selection.md` (§6.1)
2. Create `phase2c-synthesis.md` (§6.2)
3. Add frontmatter to persona files (§6.3)
4. Edit SKILL-draft.md (§7.1–7.6)
5. Delete `phase2-question-synthesis.md` (§6.4) — only after `phase2c-synthesis.md` is in place
6. Run smoke test (§8.2) — required gate
7. If smoke test passes: delete `dev/2026-03-01_symphony-phase2B-orchestrator-selection/integration-instructions.md`
8. Commit

Post-integration (D11): schedule a follow-up pass to slim SKILL-draft.md.

---

**End of TDR.**

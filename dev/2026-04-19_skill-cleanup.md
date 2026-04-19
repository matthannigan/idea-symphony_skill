# Skill Cleanup — Recommendations for SKILL.md improvements

**Date:** 2026-04-19
**Scope:** `idea-symphony/SKILL.md` (528 lines) and `idea-factory/SKILL.md` (446 lines)
**Source:** Anthropic's *Skill authoring best practices* guide

Each item below is a **decision you need to make**, not a change I've applied. I've flagged tradeoffs so you can accept, reject, or modify before I touch the files. Ordered roughly by impact.

---

## Status (resolved 2026-04-19)

All items resolved in session. Decision text below stands as the historical record.

| Item | Status | Outcome |
|---|---|---|
| §0.1 Self-referential symlink | ✅ Fixed | User removed manually after verifying (not visible in VSCode file tree) |
| §1.1 Move 23-persona roster out | ❌ Skipped | User kept for human readability — line cost accepted |
| §1.2 Extract inline awk script | ✅ Fixed | New `idea-symphony/scripts/split-questions.sh`; SKILL.md awk block replaced with 3-line invocation |
| §1.3 Move/trim directory trees | ✅ Fixed | Symphony: full tree moved to new `SESSION-STRUCTURE.md`, SKILL.md kept 13-line skeleton. Factory: trimmed to compact skeleton. |
| §1.4 Dedupe subagent instructions | ✅ Fixed | All 6 parity-table blocks + bonus Factory Phase 3-Low. Ported `category`/`stream`/`volume` fields into `phase2B_question-gen_by-persona.md` first. |
| §2 Factory template blocks inline | ✅ Fixed | Resolved as byproduct of §1.4 Factory dedupes. Also did broader templates migration: `templates.md` split into 10 files under `templates/`. |
| §3.1 Time-sensitive Factory note | ✅ Fixed | Moved to `TODO.md` under new "Idea Factory: Pending Implementation" section. Kept the user-facing question in SKILL.md. |
| §3.2 Subagent File Access section | ✅ Fixed | Merged into CLAUDE.md "Subagents read their own files" bullet. Bonus: CLAUDE.md skill-structure diagrams updated to reflect `scripts/`, `templates/` dir, `SESSION-STRUCTURE.md`. |
| §3.3 USER-QUESTIONS.md design note | ✅ Fixed | Added new "Idea Symphony Specific" subsection to CLAUDE.md; SKILL.md kept a compact "Rule:" line pointing back. |
| §4.1 Add ToCs to long reference files | ✅ Partial | 6 High/Medium priority files got ToCs. Low-priority files (`min-effort-workflow.md`, `phase1_effort-level.md` prompt, `phase3-section-synthesis.md`) skipped per user direction. Previously-flagged `idea-factory/templates.md` no longer applicable (split up). |
| §4.2 Broken `../../dev/` links | ✅ Fixed | 6 links in `guidance/phase2A_question-gen-personas.md` replaced with plain-text references per Option B. Zero remaining out-of-skill dev links in packaged skill files. |
| §5 Descriptions | ➖ No change | Recommendation was to leave alone unless discovery misses observed. |
| §6 Naming | ➖ No change | Recommendation was not to rename. |

### Final line counts

| File | Start | End | Δ |
|---|---|---|---|
| `idea-symphony/SKILL.md` | 528 | **412** | −116 (under Anthropic's 500-line target) |
| `idea-factory/SKILL.md` | 446 | **283** | −163 (under 500 and under user's 400-line target) |
| `CLAUDE.md` | 121 | 127 | +6 (absorbed §3.2 + §3.3 rationale) |
| `TODO.md` | 348 | 365 | +17 (new Factory section) |

### Outstanding follow-ups (not executed in session)

1. **Parallel time-sensitive note at `idea-factory/prompts/phase1-intake.md:81`** — duplicate of the §3.1 note, was not in the original §3.1 scope. Awaiting decision on whether to remove for consistency.
2. **Canonicalize `templates/` for Factory prompts** — `prompts/phase3-section-draft.md` and `prompts/phase3-section-synthesis.md` still embed their own copies of the section templates. Flagged in §2 as "further cleanup in a later pass" — pointing them at `templates/` would remove the last redundant copies.

---

## 0. Critical fixes (not style — functional)

### 0.1 Remove the self-referential symlink in `idea-symphony/`

**Finding:** `idea-symphony/idea-symphony` is a symlink pointing to `idea-symphony` (itself), causing infinite recursion:

```
lrwxr-xr-x@  idea-symphony/idea-symphony -> idea-symphony
```

**Why this matters:** Per `CLAUDE.md`, packaging is `cd idea-symphony && zip -r ../idea-symphony.skill .`. A self-symlink could bloat the archive or hang the zipper depending on follow-symlink flags. It will also confuse Claude's bash file navigation at runtime.

**Decision:** Delete `idea-symphony/idea-symphony`. No tradeoff — it's unambiguously a bug. I'll wait for your OK before running `rm`.

---

## 1. Length — Symphony is over the 500-line ceiling

**Anthropic target:** ≤500 lines in SKILL.md body. Your own `CLAUDE.md` says start suggesting moves "when approaching 400 lines."

**Current:**
- `idea-symphony/SKILL.md` — **528 lines** (over both thresholds)
- `idea-factory/SKILL.md` — 446 lines (under 500, over 400)

The Symphony file is the primary concern. Factory is borderline.

### 1.1 Move the 23-persona roster out of Symphony SKILL.md

**Finding:** Lines 45–69 are a flat bullet list of 23 persona links. Every session loads this even though any single run references only 2–14 personas.

**Options:**

| Option | Lines saved | Tradeoff |
|---|---|---|
| **A.** Move whole roster to `personas/index.md`, replace with one-line pointer. | ~24 | Claude must read one extra file when it needs to see the full roster. Negligible — it already reads individual persona files. |
| **B.** Keep roster, remove one-line descriptions (keep just names). | ~10 | Less useful for the orchestrator at selection time. |
| **C.** Leave as-is. | 0 | Keeps the full picture visible in SKILL.md. |

**My recommendation:** **A.** The roster is already effectively bundled via `guidance/phase2A_question-gen-personas.md` and `guidance/phase2D_brainstorming-personas.md`, which are where the selection logic actually lives. The SKILL.md list is a duplicate with no selection guidance attached.

---

### 1.2 Extract the inline awk script (Symphony, lines 264–288)

**Finding:** A 25-line inline awk script splits `QUESTIONS.md` into per-topic files. The best-practices guide has a whole section titled *"Provide utility scripts"* with the rationale: more reliable, saves tokens, ensures consistency.

**Proposed:** Move to `idea-symphony/scripts/split-questions.sh`. SKILL.md becomes:

```markdown
**Post-synthesis shell step:** Run `scripts/split-questions.sh [session-dir]`
to split QUESTIONS.md into per-cluster files. Deterministic transform, not an
LLM step.
```

**Tradeoffs:**
- **Pro:** ~22 lines saved in SKILL.md. Script becomes testable in isolation. Matches best-practice "Run exactly this script" pattern (low freedom for fragile operations).
- **Con:** Adds a new `scripts/` directory to the skill, another file to maintain. Script changes now require a repackage step.
- **Risk:** If the awk has already been validated through test runs, extracting it to a file shouldn't change behavior — but worth smoke-testing on one session.

**My recommendation:** Extract. The awk is exactly the kind of "deterministic, fragile, error-prone" operation the guide says should be a script.

---

### 1.3 Move directory-structure ASCII trees out of both SKILL.md files

**Finding:**
- Symphony: lines 71–109 (39 lines of tree + annotations)
- Factory: lines 45–62 (18 lines)

Anthropic's guide uses tree examples sparingly and typically for *illustration*, not as a load-bearing runtime reference. Claude doesn't navigate by consulting an ASCII tree — it uses Glob/Read on the actual filesystem.

**Options:**

| Option | Lines saved (Symphony / Factory) |
|---|---|
| **A.** Move to `references/session-structure.md`, keep a 3–5 line skeleton in SKILL.md. | ~32 / ~12 |
| **B.** Trim to a compact skeleton (top-level directories + one-line descriptions, no contents). | ~20 / ~8 |
| **C.** Leave as-is. | 0 / 0 |

**My recommendation:** **B** for Factory (it's small enough to keep inline, but the current form is redundant with the phase sections). **A** for Symphony (the tree has load-bearing details about `99_additional.md`, `attributed/`, per-persona directories, etc. that are important but not needed on every turn).

---

### 1.4 Stop duplicating subagent instructions in SKILL.md

**Finding:** SKILL.md lists "Instructions for each subagent" with numbered steps in multiple places (Symphony lines 199–216, 360–370, 391–400, 411–423 — and similar in Factory). These instructions also live in `prompts/phase*.md` files.

**Parity audit (now completed):**

| SKILL.md section | Paired prompt file | Parity verdict |
|---|---|---|
| Symphony 2.2 (question gen) lines 199–216 | `prompts/phase2B_question-gen_by-persona.md` | ⚠️ **Prompt is missing** the YAML frontmatter fields `category` and `stream` required for Step 2.3 routing (SKILL.md steps 5–6). **Must port first.** |
| Symphony 3 (brainstorm) lines 360–370 | `prompts/phase3_brainstorm_by-persona.md` | ✅ Prompt has complete instructions including "DO NOT read other responses" and diversity guidance. Safe to dedupe. |
| Symphony 4 (full synthesis) lines 411–423 | `prompts/phase4_full-synthesis.md` | ✅ Prompt is 302 lines, much more detailed than SKILL.md. Safe to dedupe. |
| Symphony 4 (summary) lines 391–400 | `prompts/phase4_summary-only_low-effort.md` (137 lines) | ✅ Safe to dedupe. |
| Factory 3A (draft) lines 204–226 | `prompts/phase3-section-draft.md` | ✅ Prompt has full instructions including context-window warnings. Safe to dedupe. |
| Factory 3B (synthesis) lines 294–315 | `prompts/phase3-section-synthesis.md` | ✅ Prompt has 6-step process vs. SKILL.md's 4-step. Prompt is more thorough. Safe to dedupe. |

**Required action before deduplicating Symphony 2.2:** Add to `prompts/phase2B_question-gen_by-persona.md` the YAML frontmatter spec currently only in SKILL.md:

```yaml
persona: [Persona Name]
category: [analytical|structural|perspective|specialist]  # from persona file — load-bearing for routing
stream: [synthesize|append]                                # from persona file — load-bearing for routing
volume: N
effort: [low|medium|high]
date: YYYY-MM-DD
```

**My recommendation:** Port the frontmatter spec into the 2B prompt file, then dedupe all six blocks in one pass. Saves ~60 lines in Symphony, ~80 in Factory. No behavior change because prompt files are the files subagents actually execute from.

**Caveat:** Still the highest-risk item because removal is silent — if I miss a field in the port, routing breaks downstream.

---

## 2. Factory-specific — template blocks inline

**Finding:** Factory SKILL.md has two large verbatim template blocks:
- Draft format (lines 243–278, ~36 lines)
- Synthesis format (lines 318–365, ~48 lines)

The skill already has `templates.md`. These blocks are a second copy.

**Proposed:** Replace with one-line pointers:

```markdown
**Output format:** See `draft-section` template in [templates.md](templates.md).
```

**Audit result (now confirmed):**
- `idea-factory/templates.md` is 544 lines and **already contains** both templates at lines 284 (Per-Persona Draft) and 326 / 371 (Section File Medium/High and Low).
- `prompts/phase3-section-draft.md` (116 lines) **already embeds** its own copy of the draft template.
- `prompts/phase3-section-synthesis.md` (144 lines) **already embeds** its own synthesis template.
- So the SKILL.md blocks are a *third* copy, not the only copy. Removal is fully safe.

**Tradeoffs:**
- **Pro:** ~80 lines saved in Factory SKILL.md. Gets Factory under 370 lines. Removes drift risk across three copies.
- **Con:** Claude can no longer see the template shape from SKILL.md alone. Mitigation: the prompt-file copy is what subagents actually use.

**Secondary concern surfaced by audit:** `templates.md` at 544 lines has no table of contents. See §4.1 — it needs one regardless of whether you accept this change.

**My recommendation:** Remove from SKILL.md. Canonicalize `templates.md` as the authoritative source, and make `prompts/phase3-section-*.md` reference `templates.md` by anchor rather than embedding a copy. (Further cleanup in a later pass — not required for this SKILL.md cleanup.)

---

## 3. Content quality

### 3.1 Remove time-sensitive "not yet implemented" note (Factory)

**Finding:** Factory line 104:

> **Note:** This preference is captured in SCOPE.md for now. Phase 4 handling of different output formats is planned but not yet implemented — all sessions currently produce the standard ACTION-PLAN.md recommendations format.

Anthropic's guide explicitly calls this pattern out as an anti-pattern ("Avoid time-sensitive information").

**Options:**

| Option |
|---|
| **A.** Implement Phase 4 output-format handling now, remove the note. |
| **B.** Remove the note and the output-format question entirely until it's implemented. |
| **C.** Keep the note but move the TODO out of SKILL.md and into `TODO.md`. |

**My recommendation:** **B.** Asking a user to pick something that won't be honored wastes the turn. Put the output-format question in `TODO.md` with a note pointing back to the Phase 1 and Phase 4 prompts that need updating.

---

### 3.2 "Subagent File Access" is author-facing, not runtime (Symphony)

**Finding:** Symphony lines 497–504 read like developer documentation for the skill author, not instructions Claude needs at runtime:

> Subagents (using `general-purpose` type) have full file access. Instead of the orchestrator reading files and embedding content in prompts, instruct subagents to read files themselves.

**Proposed:** Move to `CLAUDE.md` under "Critical Architecture Decisions" (where similar notes already live). SKILL.md keeps the *pattern* (prompts tell subagents to read) but not the *rationale*.

**Tradeoff:** ~8 lines saved. Loses the architectural "why" from the runtime file, which is a small readability hit for anyone opening SKILL.md fresh.

**My recommendation:** Move it. CLAUDE.md is where architectural rationale belongs for this repo per your own convention.

---

### 3.3 "Design note" about USER-QUESTIONS.md separation (Symphony, line 148)

**Finding:**

> **Design note:** USER-QUESTIONS.md is kept separate from REQUEST.md to avoid influencing persona-based question generators...

Similar issue — this is rationale, not runtime guidance. It belongs in CLAUDE.md or the relevant prompt file.

**My recommendation:** Move to CLAUDE.md. Keep a one-line behavioral rule in SKILL.md: "Persona generators must not read USER-QUESTIONS.md; only the generic generator and the synthesizer read it."

---

## 4. Structural — progressive disclosure

### 4.1 Add tables of contents to long reference files

Anthropic: "For reference files longer than 100 lines, include a table of contents at the top."

**Audit result (now completed):** All files below are ≥100 lines with multiple `##` sections and **no existing ToC**:

| File | Lines | `##` sections | Priority |
|---|---|---|---|
| `idea-factory/templates.md` | 544 | 15+ | **High** — longest reference in the repo, 8 distinct templates |
| `idea-symphony/guidance/phase2D_brainstorming-personas.md` | 386 | 8 | High — concentric-circles model, topic-matched tables |
| `idea-symphony/guidance/phase1_effort-level.md` | 385 | 11 | High |
| `idea-symphony/guidance/phase2A_question-gen-personas.md` | 306 | 8 | High |
| `idea-symphony/prompts/phase4_full-synthesis.md` | 302 | 13 | Medium — active runtime instruction |
| `idea-symphony/prompts/phase2C_question-synthesis.md` | 288 | 8 | Medium |
| `idea-symphony/prompts/phase2A_question-gen-personas-selection.md` | 233 | 6 | Medium |
| `idea-symphony/prompts/min-effort-workflow.md` | 173 | 7 | Low |
| `idea-symphony/prompts/phase1_effort-level.md` | 158 | n/a | Low |
| `idea-factory/prompts/phase3-section-synthesis.md` | 144 | n/a | Low |

**Proposed:** Add a `## Contents` section at the top of each High/Medium file, mirroring the existing `##` headers. Mechanical, low-risk — purely additive.

**Tradeoff:** Each ToC adds ~10–15 lines to the file. But since these are reference files loaded only on demand, the added tokens have no baseline cost — they only appear when Claude reads the file.

---

### 4.2 Reference depth check — one broken-reference finding

Best practice: "Keep references one level deep from SKILL.md."

**Audit result (now completed):**

- ✅ Factory: no cross-file markdown references between prompts or templates. Clean.
- ✅ Symphony `prompts/`: three sibling references between `phase4_*` files and one reference from `min-effort-workflow.md` to `templates/brainstorm.md`. All sibling/one-level, not chains. Clean.
- 🔴 **Symphony `guidance/phase2A_question-gen-personas.md` contains 6 links pointing OUTSIDE the skill:**
  ```
  ../../dev/2026-02-21_symphony-question-generation_part2/findings/D1_perspective-persona-append-strategy.md
  ../../dev/2026-02-21_symphony-question-generation_part2/findings/D2_analytical-structural-effort-mapping.md
  ../../dev/2026-02-21_symphony-question-generation_part2/findings/R5_tier2-volume-quality.md
  ../../dev/2026-02-21_symphony-question-generation_part2/findings/R7_connector-volume-quality.md
  ```
  (Plus two more on the same path.)

  **These paths go up two levels into the repo's `dev/` directory**, which is **not included** in the packaged `.skill` archive. When the skill is installed from the archive, every one of these links is broken.

**Options:**

| Option | Tradeoff |
|---|---|
| **A.** Delete the links, keep the prose context. The sentences around them still make sense without the link. | Loses traceability back to the design decision docs. |
| **B.** Replace each link with a plain-text reference like `(see D2: Analytical and Structural Effort Mapping — dev doc, repo only)`. | Preserves signaling without pretending it's a working link. |
| **C.** Bundle the `dev/findings/*.md` files into the skill under `guidance/findings/`. | Links work; skill archive grows; mixes design rationale into runtime skill. |
| **D.** Leave as-is. | Users of the packaged skill hit 404s. |

**My recommendation:** **B.** Keeps the breadcrumb for anyone reading in the repo while making it clear the link isn't actionable from the installed skill. Option C contradicts the best-practice principle of keeping rationale out of runtime files.

---

## 5. Description (YAML frontmatter) — minor tweaks

Both descriptions are well-written (third person ✓, specific ✓, includes triggers ✓, under 1024 chars ✓).

**Optional sharpening:**

- **Symphony:** the phrase "genuinely diverse perspectives" is the value prop — consider leading with it. Current phrasing front-loads the mechanism ("using subagents with isolated context windows") which is an implementation detail, not a trigger.
- **Factory:** "Action plan generator that builds on Idea Symphony brainstorming output" correctly signals the dependency. Strong as-is.

**Tradeoff of rewriting Symphony's description:** You've validated the current triggers through test runs. Changing descriptions can affect discovery in non-obvious ways. **My recommendation:** leave descriptions alone unless you're seeing discovery misses.

---

## 6. Naming

**Anthropic suggests gerund form** (`processing-pdfs`) but accepts noun phrases (`pdf-processing`). Your current names — `idea-symphony`, `idea-factory` — are noun phrases and **consistent with each other**. Renaming would break user mental models and the published `.skill` archives.

**My recommendation:** Do not rename. Note for future skills in this family: pick gerund-or-noun consistently.

---

## 7. Summary of proposed line reductions

If you accept all recommendations (excluding §5, §6):

| File | Current | Projected | Change |
|---|---|---|---|
| `idea-symphony/SKILL.md` | 528 | ~420 | ‑108 |
| `idea-factory/SKILL.md` | 446 | ~330 | ‑116 |

Both comfortably under 500, Factory also under 400.

---

## 8. Things I considered but am NOT proposing

- **Renaming skills to gerund form.** Breaks users. Not worth the churn.
- **Adding evaluations / eval harness.** Best practice, but out of scope for a SKILL.md cleanup — separate workstream. Your `test-runs/` directory already serves this role informally.
- **Collapsing effort-level tables.** They're load-bearing and compact. Leave them.
- **Rewriting Model Selection tables.** They're clear and useful. Leave them.
- **Removing quality gates.** They're exactly the feedback-loop pattern the best-practices guide recommends. Keep them.

---

## Recommended execution order

1. **§0.1** (symlink) — zero risk, do now.
2. **§3.1** (time-sensitive Factory note) — zero risk, one-line delete.
3. **§4.2** (Symphony guidance broken `../../dev/` links) — zero risk, mechanical replace.
4. **§1.2** (extract awk) — smoke-test on one session after extraction.
5. **§2** (Factory template blocks) — mechanical; audit confirmed both templates.md and prompt files already have the content.
6. **§1.1** (Symphony persona roster) — mechanical.
7. **§1.3** (directory trees) — mechanical.
8. **§3.2, §3.3** (author-facing notes → CLAUDE.md) — mechanical.
9. **§4.1** (ToCs on long reference files) — mechanical, additive only.
10. **§1.4** (subagent-instruction deduplication) — do last. First port `category`/`stream` fields into `phase2B_question-gen_by-persona.md`, then dedupe in one pass. Highest risk item.

**Ask for each:** accept / modify / skip before I touch the files.

---

## Appendix: What the follow-up audit changed

The initial draft had three items flagged as "I haven't audited this yet." All three are now resolved:

- **§1.4 parity:** Audited each prompt file. Five of six blocks are safe to dedupe. The sixth (Symphony 2.2) requires porting two YAML fields into the prompt file first. Specific fields and risk are now in §1.4.
- **§4.1 ToCs:** Enumerated exactly which files lack a ToC, with line counts and section counts. Ten files total; prioritization table in §4.1.
- **§4.2 depth:** Found no nested reference chains, but discovered six **broken cross-archive references** in `guidance/phase2A_question-gen-personas.md` pointing to `dev/findings/*.md` files that aren't packaged. New decision in §4.2 — this is now the third entry in the execution order.

Also confirmed during the audit:
- Factory `templates.md` (544 lines) is the longest reference in the repo and already contains both section templates, so §2 is safe.
- Factory prompts already embed their own copies of the section templates — removing from SKILL.md creates no gap for subagents.

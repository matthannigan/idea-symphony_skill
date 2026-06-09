# Canonical NLM Skills Audit (OQ8 follow-up)

**Date:** 2026-06-09
**Origin:** [OQ8](2026-06-09_tone-reframe-humanizer-revisions.md#open-questions) of the tone-reframe-humanizer revisions plan asked whether Fix 5 (NLM template de-jargon) should also touch the canonical `nlm-audio-prompt` skill that Symphony's NotebookLM template mirrors. Decision was "out of scope, track as follow-up." This is that follow-up.
**Scope audited:** `nlm-audio-prompt` and `nlm-slide-deck` — the two canonical NotebookLM prompt skills.
**Verification:** subagent audit, with the load-bearing claims independently spot-checked (grep against the skill files).

---

## Bottom line

**Both canonical skills are clean on all three Fix-5 patterns. No edits warranted. Fix 5 stays Symphony-scoped.**

The jargon, file paths, and bloat that Fix 5 removes were *introduced by Symphony*, not inherited from the canonical modules Symphony mirrors. The canonical skills actually model the good patterns Fix 5 is retrofitting.

Both are single-file personal skills outside this repo:
- `~/.claude/skills/nlm-audio-prompt/SKILL.md` (113 lines)
- `~/.claude/skills/nlm-slide-deck/SKILL.md` (166 lines)

No `references/` or template files — the entire emit surface is the blockquoted modules + example block in each SKILL.md, so the audit surface is complete. The key boundary: only blockquoted module text and the example get pasted into NotebookLM; skill-internal scaffolding (module names, headers) is instruction to Claude and never reaches a host. Symphony's leak was brainstorm-internal labels crossing that boundary; in the canonical skills, nothing does.

## Per-pattern findings

| Fix-5 pattern | `nlm-audio-prompt` | `nlm-slide-deck` |
|---|---|---|
| **1. In-house vocab/labels in emitted prompts** | Clean. Only emitted "labels" are NotebookLM's own format names (Deep Dive / Brief / Critique / Debate). | Essentially clean. Forced slide labels are plain English. One borderline term — "a companion register" (line 158) — see micro-items. |
| **2. Filesystem-path references** | None. Module 6 Focus uses a content placeholder — `[specific topics, sections, or sources]` (line 62), exactly Fix 5b's prescribed rewrite. The `notebooklm-sources.md` ref is instruction to Claude, never emitted. | None. Hardens against it: `Do not print bracket syntax or URLs on any slide` (lines 98, 160). |
| **3. Over-long repeated boilerplate** | None. One prompt per invocation, each module once; no always-include framing block. | Mild/bounded. Series mode repeats modules 1–4 per part, but self-caps ("Don't pad. Tighter prompts steer better"; ~1,500–2,500-char target). Functional repetition, not the Symphony pathology. |

## Why Symphony diverged

Symphony's Modules 1–7 are near-verbatim copies of the canonical audio modules — and they're clean. All Fix-5 targets live in Symphony's **additions on top** of the mirror:
- **Module 0 Source Framing** (~500 chars, ×15+) — Symphony-only, no canonical equivalent → the bloat (Fix 5d).
- **Per-cluster Focus/Nuance lines** that pull `categorical reframe` / `single-perspective reframe` / `Conspicuous Absences` from the brainstorm substrate → the jargon (Fix 5a/5c).
- **Hardcoded `synthesis/{slug}_summary.md` paths** in Focus blocks, where the canonical skill used a content placeholder → the paths (Fix 5b).

OQ8's worry ("Symphony mirrors that skill, so maybe the skill has the same problems") resolves cleanly: the mirror is faithful and the mirrored part is fine.

## Optional micro-hardenings (owner's discretion — not defects)

Listed only so they aren't lost; neither is warranted by the Fix-5 patterns.

1. **`nlm-slide-deck` line 158 — "a companion register."** Workflow-specific term; pasted verbatim, a host reads a slightly opaque noun. Well-gated (conditional module; same module forbids printing bracket syntax). Could soften to "a companion notes/confidence document" in a future maintenance cycle. The only item I'd genuinely consider.
2. **Both skills, Module 6 Focus.** Already steers to content; a one-line caution — *"name sources by title/content, not by filename"* — would prophylactically stop a user from hand-reproducing the Symphony path bug. Belt-and-suspenders.

## Adjacent scope note (Symphony-side, not a canonical issue)

Symphony's slide/infographic artifacts (Artifacts 1, 4, 5) are home-grown and do **not** draw on `nlm-slide-deck` at all. Its priority-steering discipline (no slide-count control → steer by importance; required closing slide for caveats) is exactly what those Symphony artifacts lack. A future Symphony-side integration opportunity — out of scope for the current revisions plan.

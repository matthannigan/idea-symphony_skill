# Idea Symphony — Final Polish Plan

**Date:** 2026-05-09
**Source:** Voice memo `dev/!voice-memos/2026-05-06  Idea Symphony Final Touches.md`
**Status:** Plan — not yet approved or executed

---

## TL;DR

Symphony is structurally stable after Phase 5 RP1. The remaining work is (1) a NotebookLM-output addon wired into Phase 5, (2) bulk regeneration of Phase 4 + Phase 5 outputs across the test-run matrix, (3) promotion of test-runs to publishable examples, and (4) a polish pass on SKILL.md and reference files. Idea Forge is a candidate for formal deprecation. Idea Factory work waits until Symphony examples ship.

The recommended sequence puts the NLM addon **before** bulk regen so the same Phase 5 sub-agent emits both `BRAINSTORM.md` and the NLM instructions in one Opus pass.

---

## Sequence

### 1. NotebookLM-output addon — wired into Phase 5

See companion plan: `dev/2026-05-09_notebook-lm-addon.md`.

**Why first:** the Phase 5 sub-agent already has every input it needs (`BRAINSTORM.md` substrate via `SUMMARIES.md`, plus per-cluster `*_summary.md` files). Generating NLM artifact prompts as a second Opus call after Phase 5 would re-read all the same context. Doing it inline saves tokens and keeps the artifacts perfectly synchronized with the brainstorm they describe.

**Why before bulk regen:** if NLM output is part of Phase 5, every regenerated example ships with `notebook-lm-instructions.md` from the start. Otherwise we'd regenerate Phase 5 twice.

### 2. High-effort sanity check

Before bulk regen, read 1–2 existing high-effort `BRAINSTORM.md` outputs end-to-end for emotional tenor — independent of the 7-axis rubric. The concern from the voice memo:

> What I don't want to create is a situation where there's so many dissenting voices and so much challenge to the user's original idea that `high` really feels like an exercise in frustration.

If high-effort outputs read as "shit all over the user's idea," the fix is in the synthesis prompts (Phase 4 full-synthesis and Phase 5 final-output) — likely a balance directive that pairs dissent with viable forward paths. A Phase-3 fix would be heavier and probably unnecessary.

**Cost:** ~30 min of reading. Cheap insurance against publishing examples that turn users off.

### 3. Phase 4 bulk regeneration

Independent of #1 and #2 — Phase 4 doesn't touch NLM artifacts and isn't where the high-effort tenor concern lives. Can start immediately.

Per the voice memo: 6 sessions need Phase 4 regeneration.

### 4. Phase 5 bulk regeneration

Gated on #1 (NLM addon shipped) and #2 (sanity check resolved). Per voice memo: 6 sessions need Phase 5 regeneration; only 2 are currently complete.

### 5. Promote test-runs to examples

Move finalized outputs from `test-runs/` into a publishable `examples/` directory at the repo root (or equivalent). Update README to reference them as illustrative yield from the skill.

**Open question:** structure — one directory per topic, all phases included? Trim intermediate files? Leaning toward "include everything" so readers can see the paper trail.

### 6. Polish pass

Final audit per Anthropic skill-authoring best practices:

- `idea-symphony/SKILL.md` — line count, ToCs, redundancy
- `prompts/phase*.md` — spot-check for stale references, broken links
- `templates/*.md` — verify in sync with prompt expectations
- `personas/the-*.md` — check for any from-Phase-2-iteration drift not yet captured
- `CLAUDE.md` — update to reflect NLM addon, Forge deprecation (if approved), naming decision (if changed)
- Repo-level README and packaging docs

Mostly continuation of `dev/2026-04-19_skill-cleanup.md` — that audit is the template.

---

## Deferred or dropped

### Max version — drop unless concrete need surfaces

Voice memo:
> I don't know how necessary it is to go deeper on the idea of the max version.

High effort already pushes Opus synthesis hard. A "max" tier without a clear user-pull justification adds maintenance burden for marginal yield. **Recommendation: don't build it.** Revisit only if a real workflow demands it.

### Idea Forge — formal deprecation

The case for cutting it:

1. Zero development since Agent Teams launched.
2. **Not portable** — Agent Teams are Claude-specific; Symphony/Factory work on Codex, Cursor, Manus, etc.
3. The marginal value over Symphony's disconnected-subagent debate is unproven.
4. Even the most charitable framing (Agent Team as "max" run for medium/high only) requires research and piloting before knowing if it's useful.

**Recommendation:** add a deprecation note to `idea-forge/SKILL.md` and to repo README. Don't delete the directory — keep as historical artifact and optional reference. Update `CLAUDE.md` Repository Structure section accordingly.

**Open:** does the user want to formally deprecate now, or leave it as "dormant, low-priority"? Deprecation reads cleaner publicly; dormant keeps the option open at near-zero cost.

### Idea Factory port

The next big initiative after Symphony examples ship: apply Symphony's research methodology and prompt-engineering learnings to Factory, ideally at lower token cost. Out of scope for this polish pass — flagged here so it's not forgotten.

---

## Naming decision: Symphony vs. Forge

**Context:** OpenAI released a tool called "Symphony" (orchestration layer). Voice memo raises the question of whether to repurpose:

- **Option A — Keep Symphony.** Sonata-form phase names stay. Risk: name conflict with OpenAI's Symphony in search results and word-of-mouth.
- **Option B — Rename Symphony → Forge.** Forge becomes the brainstorming tool ("forging ideas"); Factory remains the action-planning tool. Pairing reads more naturally as a slash-command duo. Cost: lose the sonata-form phase names, lose continuity for anyone who's seen Idea Symphony before.
- **Option C — Defer decision; benchmark first.** Quick search for OpenAI Symphony's reach and how much overlap there'd actually be in user discovery.

**Recommendation:** **Option C now, decide before #5 (promote to examples).** Once examples are published with branded paths, renaming becomes a much bigger lift. Spend 30 min searching, then commit.

**If renaming:** do it as a single rename PR before bulk regen of examples, so paths and frontmatter come out right the first time. If keeping Symphony: zero work needed.

---

## Open decisions for user sign-off

| # | Decision | Recommendation |
|---|---|---|
| 1 | NLM artifacts wired into Phase 5 vs. as separate Phase 6? | Inline in Phase 5 |
| 2 | Generate all NLM artifact prompts always, or let user pick? | Always (audio + presentation + infographic); video opt-in |
| 3 | Single podcast prompt vs. cluster-aware series? | Both — single overview + per-cluster series |
| 4 | Naming: Symphony vs. Forge? | Benchmark, then decide before publishing examples |
| 5 | Idea Forge: formal deprecation or dormant? | Formal deprecation |
| 6 | High-effort sanity check: read all existing outputs or sample? | Sample 1–2 first; read more only if pattern detected |
| 7 | Examples directory: include intermediate files or just final outputs? | Include everything (paper trail is part of the value prop) |

---

## Out of scope

- New persona development (Tier 1/2/3 roster is stable).
- Phase 2/3/4 prompt rewrites beyond bug fixes surfaced during regeneration.
- Idea Factory development (deferred to next initiative).
- Python integrations for image generation (Nano Banana, GPT Image) — explicitly rejected in voice memo as maintenance burden for marginal yield over copy-paste prompts.
- Cinematic video output for NLM — defer until user has piloted the format manually.

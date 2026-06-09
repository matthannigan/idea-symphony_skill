# NotebookLM Output Addon — Implementation Plan

**Date:** 2026-05-09
**Parent doc:** `dev/2026-05-09_symphony-final-polish.md`
**Reference skill:** `/Users/matth/positronic-matt-rix/skills/nlm-audio-prompt/SKILL.md`
**Status:** Plan — not yet approved or executed

---

## Goal

Let users opt-in (at intake) to receive a `NOTEBOOK-LM-INSTRUCTIONS.md` file alongside `BRAINSTORM.md` at the end of Phase 5. This file contains copy-paste-ready prompts for generating NotebookLM artifacts (podcast, podcast series, presentation, infographic) from the session's substrate documents.

**Non-goal:** Direct API integration. No Python scripts, no Nano Banana or GPT Image integrations, no calls to NotebookLM. The user runs NotebookLM themselves with the prompts we generate.

---

## Design principles

1. **Inline in Phase 5, not Phase 6.** The Phase 5 sub-agent already has all required context. A second Opus call would re-read everything. Token-efficient and keeps the NLM artifacts perfectly synchronized with the brainstorm.
2. **Prompts only, no code.** Voice memo is explicit: "It's all on the user to make that happen, as opposed to wiring in a Python script related to Nano Banana." Maintenance burden of integrations is rejected.
3. **All artifacts always (when opted in).** Voice memo: "once you have all that context, it probably makes the most sense to generate all of the outputs rather than asking the user which ones they want." Marginal token cost for one extra prompt is small.
4. **Portable.** The instructions file should note that the same prompt structure works in other audio/presentation tools, not just NotebookLM. Don't hard-couple to a single vendor.
5. **Reuse `nlm-audio-prompt` module structure.** That skill's modules 1–7 are already battle-tested. Port them inline into the Symphony template rather than depending on the external skill — Symphony stays portable to Codex/Cursor/Manus.

---

## Artifacts to generate

| Artifact | Source(s) | Why | Scope |
|---|---|---|---|
| **Single podcast (Deep Dive)** | `BRAINSTORM.md` | Most useful single output; matches user's existing NLM workflow. | Always when opted in |
| **Podcast series (per cluster)** | `BRAINSTORM.md` + each `*_summary.md` | One episode per cluster. Lets user go deep on individual clusters. | Always when opted in |
| **Presentation** | `BRAINSTORM.md` + `*_summary.md` | Different consumption mode; useful for sharing. | Always when opted in |
| **Infographic** | `BRAINSTORM.md` | Visual at-a-glance summary. Hardest format to series-ify; one is enough. | Always when opted in |
| **Cinematic video** | — | Format too new; user hasn't piloted manually. | **Defer** until user has experimented |

**Per-cluster series:** N episodes for N clusters (typically 3–6). Each prompt frames the episode as "this episode focuses on `<cluster name>`; treat the other clusters as context only." User uploads the same source set to each notebook (or one notebook with the right episode prompt run sequentially).

---

## User experience

### Intake (Phase 1 — effort selection)

Add a new question after effort selection:

> Would you like NotebookLM-ready prompts generated alongside your brainstorm? This produces a `NOTEBOOK-LM-INSTRUCTIONS.md` file with copy-paste prompts for podcasts, presentations, and infographics. The same prompts work in other audio/presentation tools as well. (yes/no, default: no)

Stored in `PLAN.md` frontmatter as `notebooklm-outputs: [yes|no]` (default `no` for backward compatibility with existing test runs).

**Open:** should this question be skipped at `min` effort? `min` already skips most multi-perspective overhead. Leaning **yes — skip at min**, since the brainstorm itself is shallower at min and NLM artifacts add more value when there's more substrate to work with.

### Phase 5 output

If `notebooklm-outputs: yes` in PLAN.md, the Phase 5 sub-agent writes both:

- `{{session}}/BRAINSTORM.md` (existing)
- `{{session}}/NOTEBOOK-LM-INSTRUCTIONS.md` (new)

Otherwise only `BRAINSTORM.md` (current behavior).

### What's in `NOTEBOOK-LM-INSTRUCTIONS.md`

Structure (rough):

```
# NotebookLM Instructions for [Project Name]

## How to use this file

[2-3 sentence intro: upload the listed sources to a NotebookLM notebook,
then paste each prompt below into the Customize box for the relevant
artifact type. Note that the same prompts work in other tools.]

## Sources to upload

[Bulleted list of paths with brief descriptions:
- BRAINSTORM.md — the synthesized brainstorming output
- topic-1-cluster_summary.md — deep summary of [cluster 1 name]
- ...
]

## Artifact 1: Single podcast (Deep Dive)

**Format:** Deep Dive
**Sources to upload:** BRAINSTORM.md
**Customize box prompt:**

[5,000-char-max prompt, composed using nlm-audio-prompt modules 1-7,
project-specific values filled in]

## Artifact 2: Podcast series

**Format:** Deep Dive (one notebook per episode, OR one notebook with episode-specific prompts)
**Sources to upload:** BRAINSTORM.md + all *_summary.md files

### Episode 1: [Cluster 1 Display Name]
[Customize prompt scoped to this cluster]

### Episode 2: [Cluster 2 Display Name]
[...]

## Artifact 3: Presentation

[Prompt for NLM presentation generation, project-specific]

## Artifact 4: Infographic

[Prompt for NLM infographic generation, project-specific]
```

---

## Implementation surface

### Files to modify

| File | Change |
|---|---|
| `idea-symphony/SKILL.md` | Document the `notebooklm-outputs` flag and where it's set. Add to phase-routing logic if needed. |
| `idea-symphony/prompts/phase1_effort-level.md` | Add the intake question + capture answer in PLAN.md. |
| `idea-symphony/prompts/phase5_final-output.md` | Add a conditional block: "if PLAN.md has `notebooklm-outputs: yes`, also produce `NOTEBOOK-LM-INSTRUCTIONS.md` per template `templates/notebook-lm-instructions.md`." |
| `idea-symphony/templates/plan.md` | Add `notebooklm-outputs: [yes\|no]` to frontmatter. |
| `idea-symphony/templates/notebook-lm-instructions.md` | **New file.** Template for the artifact instructions document, with module placeholders. |

### New file: `templates/notebook-lm-instructions.md`

This template needs to encode the `nlm-audio-prompt` module structure inline, so the Phase 5 sub-agent can synthesize project-specific prompts without external skill dependencies. Modules to encode:

1. Format and audience
2. Tone directives (anti-hype)
3. Interpretation guardrails
4. Structure control
5. Nuance and limitations
6. Focus scoping (used heavily for the per-cluster series)
7. Custom additions

Plus presentation-specific and infographic-specific guidance (not in the source skill — needs original drafting).

**Open:** how prescriptive should the template be? Two options:

- **Heavy template** — full prompt skeletons with placeholder fields, sub-agent fills in values. Easier to validate, more deterministic output.
- **Light template** — module reference + examples, sub-agent composes freshly each time. More flexible but harder to QA.

Leaning **heavy template** — Phase 5 already does heavy synthesis; making the NLM prompts mechanical reduces variance and audit cost.

### Phase 5 prompt: conditional emission

The simplest way to wire this in without forking the prompt:

```
## Output

1. Write `{{session}}/BRAINSTORM.md` per template `templates/brainstorm.md`.

2. **If `PLAN.md` frontmatter has `notebooklm-outputs: yes`,** also write
   `{{session}}/NOTEBOOK-LM-INSTRUCTIONS.md` per template
   `templates/notebook-lm-instructions.md`. Use the project name, cluster
   list, and brainstorm content to fill in the template's prompt fields.

3. Do not modify any other files.
```

**Open:** do we want a separate "audit" step similar to the per-section word-budget audit added in iter-2? Could be:
- "After producing both files, verify the NLM instructions reference the correct cluster names and that each prompt is under 5,000 characters."

Probably yes — that cap from NotebookLM is a hard external constraint, easy to violate.

---

## Token-cost analysis

**Without NLM addon:** Phase 5 produces `BRAINSTORM.md` (~3,000–5,000 tokens out for high effort).

**With NLM addon:** Phase 5 produces `BRAINSTORM.md` + `NOTEBOOK-LM-INSTRUCTIONS.md`. Estimated additional output: ~2,000–4,000 tokens (4–6 prompts at 500–800 tokens each, plus structural framing).

**Versus Phase 6 alternative:** a separate Phase 6 sub-agent would pay ~15,000–25,000 tokens of input context to re-read SUMMARIES.md and per-cluster files, plus the same ~2,000–4,000 tokens out. Inline approach saves the input cost.

**Conclusion:** inline is meaningfully cheaper and produces tighter coupling between brainstorm content and artifact prompts.

---

## Open decisions for user sign-off

| # | Decision | Recommendation |
|---|---|---|
| 1 | Skip the intake question at `min` effort? | Yes — skip at min |
| 2 | Heavy vs. light template? | Heavy template |
| 3 | Per-artifact word/character cap audit step? | Yes — enforce NotebookLM's 5,000-char cap |
| 4 | Where to surface the NLM-output flag — Phase 1 intake question, or `REQUEST.md` field? | Phase 1 question (mirrors effort selection pattern) |
| 5 | Default value if user doesn't answer? | `no` (backward compatibility) |
| 6 | Should the instructions file mention non-NLM tools (e.g., other podcast generators)? | Yes — single sentence noting portability |
| 7 | Include presentation + infographic in v1, or ship podcast-only first and add the others as v2? | All four in v1 — token cost is small and synchronization matters |

---

## Validation plan

Before bulk-regenerating Phase 5 across all 6 sessions:

1. **Pilot run:** regenerate one existing Phase 5 output (e.g., career-change/medium, the most-tested topic) with the addon enabled. Verify:
   - PLAN.md frontmatter parses correctly.
   - `NOTEBOOK-LM-INSTRUCTIONS.md` is produced and well-structured.
   - Each prompt is under 5,000 characters.
   - Cluster names match `BRAINSTORM.md`.
2. **Manual NotebookLM test:** copy one of the generated prompts into NotebookLM, generate the artifact, verify the output tone matches the anti-hype intent. (Reuses `nlm-audio-prompt` skill's validation pattern.)
3. **If pilot passes:** unlock bulk regen for the remaining 5 sessions.

---

## Out of scope

- Direct NotebookLM API calls (skill stays prompt-only).
- Image generation via Nano Banana, GPT Image, or other APIs.
- Cinematic video format (defer to a future iteration once user has piloted manually).
- Factory parity (NLM addon for Idea Factory) — flagged in voice memo, deferred to the Factory port initiative.
- Auto-detection of `nlm-audio-prompt` skill availability and conditional delegation — keep Symphony self-contained.

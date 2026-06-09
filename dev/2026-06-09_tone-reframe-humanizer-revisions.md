# Phase 4 + 5 Tone, Reframe, and Humanizer Revisions (Consolidated)

**Date:** 2026-06-09
**Status:** Design complete and verified. **All ten open questions resolved 2026-06-09** (see [Open Questions](#open-questions) → Resolutions). Ready to execute.
**Supersedes:** `dev/2026-05-15_tone-reframe-humanizer-revisions.md` (the prior version of this plan) and the plan-mode scratch at `~/.claude/plans/let-s-see-what-happens-floating-whistle.md` (the `_synthesis.md` scope discussion and verification rounds). Both can be deleted after this doc is reviewed; their content has been merged here.
**Trigger:** User review of `test-runs/250T/BRAINSTORM_humanized.md` vs `BRAINSTORM.md`, with concern that Phase 4/5 had over-corrected toward antagonism and that the output felt mechanically AI.
**Companion reads:**
- [`dev/2026-05-03_symphony-phase4/`](2026-05-03_symphony-phase4/) — Phase 4 RP1 investigation (60-cluster sample, three-prompt parity, FA1/LB1/RG1)
- [`dev/2026-05-05_symphony-phase5/`](2026-05-05_symphony-phase5/) — Phase 5 RP1 investigation (6-session probe set, seven-axis ship gate)
- [`dev/2026-05-09_symphony-final-polish.md`](2026-05-09_symphony-final-polish.md) §2 — surfaced the high-effort tenor concern but did not investigate it

---

## TL;DR

Four distinct findings emerged from a tone audit of `test-runs/250T/medium` plus three control samples (`food-truck/med`, `space-party/med`, `tool-library/high`) plus a critique of the 250T NotebookLM addon output:

1. **The level of criticism is not systemic.** 250T is the outlier — it has genuine structural risk (six-figure underfunding, $400K–$15M downstream pipeline asymmetry, an explicit pressure-test ask in the REQUEST). Sampling three other test-runs at three different stake levels shows balanced, load-bearing criticism, including on a child's birthday party. No fix needed.

2. **The "X is not Y; it is Z" reframe pattern is over-applied across every test-run sampled.** Even space-party's low-stakes substrate produced reframes in both cluster summaries examined. Tool-library/high: 6 of 7 sampled summaries. 250T/medium: 9 of 10. The pattern is the skill, not the project. Root cause is three coupled prompt instructions in Phase 4 and Phase 5.

3. **The mechanical-AI feel is a separate but compounding issue.** The humanizer-pass diff on 250T (`BRAINSTORM.md` → `BRAINSTORM_humanized.md`) is almost purely surface-level: em-dash density, parallel structures, rule-of-three, AI vocabulary. Style, not content. This can be addressed with a Haiku humanizer post-pass on `_summary.md` AND `_synthesis.md` (Phase 4) and `BRAINSTORM.md` (Phase 5), plus a single em-dash budget line in the generation prompts.

4. **The NotebookLM addon output extends and amplifies the BRAINSTORM issues.** Symphony-internal vocabulary leaks into customize-box prompts; file-path references appear where NotebookLM has no filesystem view; the prompts explicitly instruct NotebookLM to give reframes visual weight, baking rhetorical uniformity into user-visible deliverables.

The fixes ship in sequence: **Fix 1** reframe demotion → **Fix 2** em-dash budget → **Fix 7** Central Tension relocation → **Fix 3** humanizer post-pass (both `_summary.md` and `_synthesis.md`, the latter chunked per question) → **Fix 5** NLM template de-jargon (after a cascade-isolation check). **Fix 6** documents the Fix 1 → NLM substrate cascade. **Fix 4** (Phase 3 footer hygiene) is optional. Ship gate spans **16 axes** (existing 7 + H + I/J/K/L + M + N/O/P).

A 2026-06-09 read-only experiment validated extending Fix 3 to `_synthesis.md` via a chunk-per-question wiring (one Haiku call per `### Question N` block, reassembled). Two rounds of verification on the largest test file (`property-management/08`, 67 insights) confirmed the chunked design closes the volume-degradation failure; one round of brief tightening closed the bold-lead promotion failure surfaced in Round 1; a Round-2 editorial-drift residual is handled by axis K's production-time spot-read.

---

## Findings

### Finding 1: Criticism level is project-specific

Four test-runs sampled across the stakes spectrum. The 250T baseline (medium effort, real project, six-figure budget question) plus three controls.

| Test-run | Stakes | Pragmatist tone | "Step back" framing | Notes |
|---|---|---|---|---|
| `food-truck/med` | Medium (first-time founder, real competitors) | Constructive (2–3/5) | No — "sequence the bets," proceed | Sample reading: Pragmatist opens with three viable paths and a "this is tight but not impossible" frame |
| `space-party/med` | Low (child's birthday) | Fully constructive (2/5) | No — "paint a stone, hand it over" | Sample reading: Pragmatist frames tradeoffs as design choices, not risk-mitigation |
| `tool-library/high` | Medium (donated space, scaling) | Balanced (2.5/5) | No — "proceed, but measure first" | High effort did *not* amplify antagonism. Pragmatist opens with `Start with member verification as the constraint... is the physical presence itself a feature?` — diagnostic, not extractive |
| `250T/med` | **High** (reputational + budget asymmetry) | Antagonistic (4–5/5) | **Yes** — "step back and recommend United Way or CFTA" | Outlier on three dimensions: project genuinely risky, REQUEST explicitly asked for pressure-testing, downstream pipeline value 2–10× anchor budget |

**Conclusion.** The 250T tone is honest output, not skill drift. No fix needed at the criticism level. This forecloses the broader Phase 3/4 redesign that the [final-polish plan](2026-05-09_symphony-final-polish.md) §2 flagged as a possible follow-on from the high-effort sanity check.

### Finding 2: Reframe pattern is over-applied

The "we are not running X; we are running Y" rhetorical structure appears in nearly every cluster summary regardless of substrate. Counts from the three control samples:

- `space-party/med`: 2/2 cluster summaries sampled opened with the pattern. Both load-bearing (theme tension, budget tension), but the *rhetorical uniformity* is the tell.
- `food-truck/med`: 2/9 cluster summaries (lowest density observed — possibly because the personas naturally produced more declarative recommendations).
- `tool-library/high`: 6/7 cluster summaries sampled.
- `250T/med`: 9/10 clusters. Phase 5 even produced a meta-bullet in `## Key Themes`: *"Categorical reframes recur across clusters."* — the skill admiring its own pattern.

**Root cause.** Three coupled instructions enforce the pattern:

1. [`idea-symphony/prompts/phase4_full-synthesis.md:324`](idea-symphony/prompts/phase4_full-synthesis.md):
   > **Stage any categorical reframe explicitly.** If the cluster has a categorical reframe — a sentence-level claim that reframes the question itself ("we are not running X; we are running Y") — name it as a single declarative sentence at the top of the Themes section.

   The canonical example *is the pattern.* The model is being taught the rhetorical shape, not just the concept.

2. [`idea-symphony/prompts/phase5_final-output.md:40`](idea-symphony/prompts/phase5_final-output.md):
   > open the per-topic block with that sentence verbatim or as a near-paraphrase **preserving the same noun-pair contrast.**

   This is why every cluster summary in `BRAINSTORM.md` leads with the same grammatical shape — the prompt requires it.

3. [`idea-symphony/prompts/phase5_final-output.md:82-86`](idea-symphony/prompts/phase5_final-output.md):
   > the per-topic block for that cluster MUST surface it — even at the cost of dropping a more convergent theme... **Preservation takes precedence over the band.**

   Reframes are non-droppable even when length pressure could justify cutting them.

4. [`idea-symphony/prompts/phase5_final-output.md:46`](idea-symphony/prompts/phase5_final-output.md):
   > If multiple clusters carry categorical reframes that share a structural pattern, surface that pattern in `## Key Themes` separately from the per-topic blocks.

   This is the instruction that produces the meta-bullet about reframes recurring.

The safeguard at [`phase4_full-synthesis.md:324`](idea-symphony/prompts/phase4_full-synthesis.md) — *"derivable from at least three personas' responses and should change which actions are prioritized"* — is not biting. Phase 4 reads "If the cluster has a categorical reframe" as "find one for each cluster."

This finding is partly downstream of the [Phase 5 RP1 P5-#5 edit](2026-05-05_symphony-phase5/findings/integration-spec-phase5.md) that introduced the verbatim-preservation rule. That rule was correct for *genuine* reframes; it has become wrong as a default because Phase 4 produces reframes for nearly every cluster.

### Finding 3: Mechanical-AI feel is surface, not substance

The humanizer diff (`BRAINSTORM.md` → `BRAINSTORM_humanized.md`) on 250T changed almost no content. Same 4 design flaws, same "stop-and-reconsider" framing, same numerical claims. The humanizer edits were:

- Em-dash density reduction (the BRAINSTORM had em dashes in nearly every sentence)
- Breaking up "X is not Y; it is Z" parallel structures (overlaps with Finding 2)
- Eliminating rule-of-three constructions
- Dropping AI vocabulary words
- Splitting compound sentences into shorter ones

Phase 3 persona files are notably *more* stylistically varied than Phase 4 output. The Storyteller on `food-truck/med` opens with `Imagine Rosa, a librarian who loves her Trail Town branch`. The Devil's Advocate on 250T cluster 1 opens with `Per-grant cost blowthrough risk.` Phase 3 voices are doing their job. The mechanical patterns enter at Phase 4 aggregation and propagate to Phase 5.

This is the right surface to attack — Phase 4 `_summary.md` and `_synthesis.md`, plus Phase 5 `BRAINSTORM.md` — and Phase 3 should be left alone (with one tiny exception noted below).

### Finding 4: NLM addon output extends and amplifies the BRAINSTORM issues

Reading [`test-runs/250T/NOTEBOOK-LM-INSTRUCTIONS.md`](test-runs/250T/NOTEBOOK-LM-INSTRUCTIONS.md) (671 lines, 5 artifact types, 10 episodes + 10 infographics) against the same lens surfaced three structural problems unique to the NLM output, plus a clean carry-through of the BRAINSTORM problems.

**Carry-through (good and bad).**
- Source-framing module present in every artifact prompt. This is correct guardrail design and the output preserves it.
- Tone directives (`measured, analytical`, no hype words, no exclamation marks) consistent and well-calibrated.
- Character counts all under the 5,000-char NotebookLM ceiling (highest is Infographic 10 at 2,898).
- All five artifact types emitted with correct counts (10 episodes for Artifact 3, 10 infographics for Artifact 5 matching the 10 clusters).
- But em-dash density and `X-not-Y` parallel structures carry into infographic subtitles, where they get rendered as visible titles. Sample Infographic 1 subtitle: `$150K looks like a majority share but is almost certainly $15K–$45K short of true cost`. Infographic 6: `compliance program or...contact-theory intervention`. Infographic 10: `one-off commemorative event or the seed of durable civic infrastructure`. The AI tell becomes user-visible.

**Symphony-internal vocabulary leaks into customize prompts that NotebookLM hosts will read aloud.** Counts on 250T:
- `categorical reframe`: explicit in 5 of 10 episode prompts (Episodes 5, 6, 8, 9, 10) and 6 of 10 infographic prompts (Infographics 1 implicit, 5, 6, 8, 9, 10). Sample Episode 9: `Surface the categorical reframe (participatory civic data infrastructure with dinners as the ritual container)`. Sample Infographic 5: `Give the Central Tension and the categorical reframe (new civic role) visual weight.`
- `single-perspective reframe`: Episodes 9, 10.
- `productive dissent` / `productive disagreement`: Episode 10.
- Capitalized `Conspicuous Absences`: every infographic prompt as a section label.

The NLM hosts and downstream slide generators do not know what "categorical reframe" means as a noun phrase. They will either parrot it verbatim (making the audio sound clinical and process-aware in a way that destroys the deep-dive register) or interpret it freely. Worse, the prompts *instruct* the visual artifacts to render the reframe text with visual weight — the rhetorical uniformity from BRAINSTORM.md becomes baked into deliverables the user actually distributes.

**File-path references inside customize prompts.** Every Focus block reads `Concentrate on synthesis/01_anchor-economics-and-capacity-extraction-risk_summary.md`. NotebookLM does not expose filesystem paths to its hosts. Once a user uploads a file, NotebookLM treats it as a named source. The `synthesis/` directory prefix is noise the hosts have to interpret, and the long slug names are awkward to vocalize. Should be content-anchored references (`the Anchor Economics summary file`, `the cluster about anchor economics`).

**Mixed labels and dual-purpose sections.** Every infographic schema reads `Conspicuous Absences / single-perspective reframes` as item 4. Two distinct Symphony concepts are being asked to share one visual section. The infographic generator will pick one label; whichever it picks reads as in-house jargon to the actual viewer. The Source Framing module also adds ~500 characters of mostly-repeated text at the top of every prompt block — defensible (it's the most important guardrail) but 15+ paste cycles for the user.

**Cascade dependency.** Fix 1 (reframe demotion at Phase 4) will partially reduce Finding 4 because the NLM subagent reads `BRAINSTORM.md` and `_summary.md` as substrate. If those substrates stop carrying explicit reframe markers, the NLM prompts will stop forwarding them by default. But Fix 1 alone won't fix the file-path issue, the capitalized `Conspicuous Absences` label, or the `productive dissent` vocabulary — those originate in the NLM template itself, not in the BRAINSTORM substrate. Fixes 5 and 6 below close the gap.

---

## Proposed fixes

Sequenced from deepest to most surface, with each fix increasing the value of the next.

### Fix 1: Reframe demotion (Phase 4 + Phase 5 prompt edits)

**Goal:** Make categorical reframes appear only when genuinely warranted, not by default.

**Phase 4 edit** — [`idea-symphony/prompts/phase4_full-synthesis.md:324`](idea-symphony/prompts/phase4_full-synthesis.md):

Replace the current instruction with something like:

> **Categorical reframes are exceptional, not default.** A categorical reframe is a sentence-level reversal — produced by a single persona, corroborated by at least two others, that changes which actions get prioritized in the cluster. Most clusters will not have one. **Surfacing a reframe that is not load-bearing is worse than absence** — it produces rhetorical uniformity across clusters and trains downstream Phase 5 output to imitate the shape. If a candidate reframe restates an existing theme in "X-not-Y" form without changing which actions are prioritized, omit it.

Drop the "we are not running X; we are running Y" canonical example, or replace it with a counter-example (a candidate reframe that *fails* the load-bearing test).

Also update [`idea-symphony/templates/synthesis-summary.md:44`](idea-symphony/templates/synthesis-summary.md) to match.

**Phase 5 edit** — [`idea-symphony/prompts/phase5_final-output.md:40`](idea-symphony/prompts/phase5_final-output.md):

Replace:
> open the per-topic block with that sentence verbatim or as a near-paraphrase preserving the same noun-pair contrast

With:
> convey the same insight in the per-topic block's own voice. **Do not preserve the noun-pair grammar** if it produces repetitive shape across clusters. The reframe's content survives; the rhetorical structure does not propagate.

**Phase 5 edit** — [`idea-symphony/prompts/phase5_final-output.md:46`](idea-symphony/prompts/phase5_final-output.md):

Remove the "If multiple clusters carry categorical reframes that share a structural pattern, surface that pattern in Key Themes" instruction. If reframes are correctly demoted at Phase 4, this meta-instruction can only fire when there is genuine multi-cluster convergence on a single conceptual reversal — and at that point it can be handled by the normal `[recurring]` discipline. Keeping the instruction risks reproducing the "categorical reframes recur across clusters" meta-bullet seen in 250T.

**Phase 5 edit** — [`idea-symphony/prompts/phase5_final-output.md:82-86`](idea-symphony/prompts/phase5_final-output.md):

Soften the non-droppable language for reframes specifically. Foundational reversals and productive dissent should remain non-droppable; categorical reframes should be droppable when length pressure or rhetorical-uniformity considerations make them costly. Suggested:

> Foundational reversals (sentence-level "we thought X; the answer is the opposite of X") and productive dissent are non-droppable. Categorical reframes are droppable under length pressure or when retaining them would produce rhetorical uniformity across clusters.

### Fix 2: Em-dash budget (Phase 4 + Phase 5 generation prompts)

**Goal:** Reduce the single highest-signal AI tell at generation time, cheaply.

Add one line near the top of both [`phase4_full-synthesis.md`](idea-symphony/prompts/phase4_full-synthesis.md) and [`phase5_final-output.md`](idea-symphony/prompts/phase5_final-output.md):

> **Em-dash budget.** Limit em dashes to roughly one per paragraph. Em-dash overuse is a strong AI tell; prefer periods, parentheses, or commas. This applies to the generated prose, not to quoted persona material.

This is the highest-value humanizer rule, the model can apply it during generation without cognitive cost, and it dramatically reduces the polishing burden on Fix 3.

Because `phase4_full-synthesis.md` generates all three Phase 4 documents from a single prompt, this budget applies to `attributed/{cluster}.md`, `_synthesis.md`, and `_summary.md` alike — no separate per-file edit is needed.

### Fix 3: Humanizer post-pass (Phase 4 `_summary.md` + `_synthesis.md` + Phase 5 `BRAINSTORM.md`)

**Goal:** Final-mile surface polish, leveraging the existing humanizer skill rather than re-implementing it inline.

**Scope rationale.** Three Phase 4 documents are generated per cluster: `attributed/{cluster}.md` (Document 1, transparency record with verbatim persona quotes), `{cluster}_synthesis.md` (Document 2, attribution-stripped readable version), and `{cluster}_summary.md` (Document 3, executive summary with Themes/Central Tension). Fix 3 humanizes **`_summary.md` and `_synthesis.md`** — both reach the user (`_summary.md` directly via per-topic links in `BRAINSTORM.md`; `_synthesis.md` indirectly via `SYNTHESIS.md`, linked from `BRAINSTORM.md`'s Session Index at medium/high effort). The `attributed/` file stays unhumanized — it preserves verbatim persona quotes that must not be restyled. `_synthesis.md` stays out of Fix 1 not for readability reasons but because the categorical reframe Fix 1 demotes is staged in a Themes section that exists only in `_summary.md`.

**Effort gating.** `_synthesis.md` is only emitted at medium and high effort (per `idea-symphony/SKILL.md` lines 355–360). The Fix 3 `_synthesis.md` humanizer wiring therefore fires only at med/high. `_summary.md` exists at all effort levels and is humanized at all levels.

**Phase 4 — `_summary.md`.** After each cluster's `_summary.md` is written, spawn one Haiku subagent per file with the strengthened brief below.

**Phase 4 — `_synthesis.md`. Chunk per question.** Spawn one Haiku call per `### Question N` block rather than one call for the whole file. A 2026-06-09 read-only experiment (see [Verification record](#verification-record)) found a single whole-file pass holds clean to ~35 synthesized insights but degrades past that: the 67-insight `property-management/08` file lost `Reframe:` / `Counter-test:` prefixes and dissolved a reframe bold-lead in its later questions when humanized as a single pass. One call per question keeps every call under that ceiling. Each per-question call uses the brief below. Wiring: each call returns its humanized block as text; an assembler step writes the reassembled file once, to avoid parallel-write races on a single file.

**The strengthened brief (applies to both `_summary.md` and per-question `_synthesis.md` calls):**

> Apply the humanizer skill at `{{skill}}/prompts/humanizer/SKILL.md` to `{path}` (or to the supplied question block). Edit in place where applicable. Preserve all numerical claims, specific dollar figures, named persons/organizations, YAML frontmatter, section headings, and bulleted/numbered list structure.
>
> **Preserve every bold `**Summary.**` lead as the bold lead** — the bold lead is whichever sentence is bolded first in the source bullet, and it stays that exact sentence: bolded, first, and a concise summary. Never split it, never demote its content into body prose, and never promote a later body sentence into the bold position. A framing marker that appears in body prose ("All seven perspectives converge", etc.) stays in body prose — do not pull it up into the bold lead. Em-dash removal inside a bold lead must rewrite within the bold span, not break out of it.
>
> **Preserve framing-marker prefixes verbatim** ("A dissenting view:", "A counter-test:", "A reframe:", "Caution:", "Counter-test reframe:", "All N perspectives converge", "Six of seven perspectives", etc.) — these are analytic signal, not style.
>
> Goal: reduce em-dash density to ~1/paragraph, break up "X is not Y; it is Z" parallel structures unless the cluster's `_synthesis.md` marks one as a load-bearing reframe, eliminate rule-of-three constructions that aren't load-bearing, drop AI vocabulary words. Do not alter content; alter only surface style. Report a count of changes in your final message (note: this self-report is recorded but not trusted — verification is grep-based).

**Phase 5 — `BRAINSTORM.md`.** After `BRAINSTORM.md` is written, mirror with the same guardrails plus preservation of: numbered next-steps order, dollar figures, citations to `_summary.md` files.

**NLM addon output is NOT humanized** — its readers are NotebookLM's customize box, not humans.

**Cost.** Per medium session: 10 `_summary.md` calls + one call per `### Question N` block across all `_synthesis.md` files (the per-question fan-out — typically 4–8 calls per cluster × 10 clusters at medium effort) + 1 `BRAINSTORM.md` call. Haiku throughout; negligible even with the `_synthesis.md` fan-out.

**Wiring.** Two integration options:
- (a) Inline at the end of each Phase 4 cluster subagent and the Phase 5 subagent. Cleaner from an orchestration standpoint, but means each subagent has to load the humanizer skill.
- (b) Separate post-step in SKILL.md routing, fanning out one humanizer subagent per `_summary.md` file and one per `### Question N` block of each `_synthesis.md` after the synthesis pass completes, then reassembling each `_synthesis.md` from its humanized blocks. Adds an orchestration step but keeps each subagent focused.

Recommendation: **(a) for Phase 5** (single subagent, one file), **(b) for Phase 4** (already a fan-out, easier to wrap one more pass around the existing fan-out structure). *(Resolved per OQ3.)*

**Concat ordering (per OQ9):** the `build-summaries.sh`/`build-synthesis.sh` concat must run *after* the Phase 4 (b) humanizer post-step — not at its current SKILL.md:343 position — so `SUMMARIES.md`/`SYNTHESIS.md` inherit humanized substrate.

### Fix 4 (optional): Phase 3 footer hygiene

[`responses/{cluster}/the-*.md`](idea-symphony/personas/) files all end with:

```
**Questions addressed**: N
**Total responses**: N
```

This is the only skill-level fingerprint on Phase 3 output and the only mechanical-AI signal not addressed by the above fixes. Removing it from the persona prompts costs nothing and tightens Phase 3 without touching persona voices. Bundle into the same revision if convenient; skip otherwise.

### Fix 5: NLM template de-jargon-ization

**Goal:** Make the customize-box prompts speak NotebookLM's language, not Symphony's. The NLM hosts read these prompts aloud (Artifacts 2 and 3) or render them as visual labels (Artifacts 1, 4, 5) — internal vocabulary that survives into either is user-visible jargon.

**Edits to** [`idea-symphony/templates/notebook-lm-instructions.md`](idea-symphony/templates/notebook-lm-instructions.md):

**5a. Strip Symphony-internal vocabulary from customize-box prompts.** Audit every fenced customize-box prompt skeleton and replace:

| Symphony term | NotebookLM-facing translation |
|---|---|
| `categorical reframe` | `the cluster's core reframe` (or omit if not load-bearing — see Fix 1) |
| `single-perspective reframe` | `a minority view worth surfacing` |
| `productive dissent` / `productive disagreement` | `a strong counter-argument the brainstorm did not resolve` |
| capitalized `Conspicuous Absences` (as section label) | `What the brainstorm did not engage with` (or lowercase `conspicuous absences` in prose) |
| `the cluster's brainstorm proposed…` | `the brainstorm proposed…` (drop the meta-layer) |

The Phase 5 subagent must do this translation when filling in the template, not just when emitting the user-facing file. Add a "Vocabulary translation" sub-rule to the [Subagent fill-in checklist](idea-symphony/templates/notebook-lm-instructions.md) at lines 293-306.

**5b. Replace file-path references with content-anchored references.** Every Focus block currently reads `Focus: Concentrate on synthesis/{cluster-slug}_summary.md`. NotebookLM does not expose filesystem paths. Edit the template skeletons to read `Focus: Concentrate on the {cluster display name} summary` (with the slug-bearing path moved to the Sources-to-upload list at the top of the document, where the user actually does the upload). Sample rewrite for Episode 3 cluster scoping:

> **Before:** `Focus: Concentrate on synthesis/[cluster-1-slug]_summary.md. Treat BRAINSTORM.md and the other _summary.md files as context only`
> **After:** `Focus: Concentrate on the summary document for [Cluster 1 Display Name]. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — refer to them only when they intersect with [Cluster 1 Display Name]`

**5c. Collapse the dual-purpose infographic section.** Item 4 in every infographic skeleton currently reads `Conspicuous Absences / single-perspective reframes`. Split into two distinct items when both apply, or use a single neutral label when only one applies:

> **Before:** `4. Conspicuous Absences / single-perspective reframes — 1-3 items the cluster's summary calls out as structurally missing or as a load-bearing minority view.`
> **After:** `4. What the cluster did not resolve — 1-3 items the cluster's summary calls out as structurally missing or as a strong minority view worth surfacing. Visually distinct from the convergent themes.`

This is cleaner labeling for the infographic viewer and removes the Symphony-internal compound.

**5d. Tighten the Source Framing module without weakening the guardrail.** The current module is ~500 characters, repeated 15+ times in a 10-cluster medium session. Compress to ~250 characters while preserving the four load-bearing claims (output of brainstorming, structured ideation, not primary research, prefer "session surfaced..." over "research shows..."). Sample compressed version:

> `Source framing: These documents are the output of a facilitated brainstorming session on [Project Name] — structured ideation across multiple thinking styles, not primary research or validated findings. Frame claims as ideas the session surfaced ("the brainstorm proposed…"), not as facts ("research shows…"). Convergence across lenses is internal quality signal, not external validation.`

That's ~370 characters and keeps every guardrail. Worth measuring the character-count savings against the 5,000-char ceiling on a high-effort run — should free up room for richer per-artifact scoping.

### Fix 6: Acknowledge the Fix 1 cascade into NLM output

**Goal:** Document the dependency between Fix 1 and Fix 5 so they ship in the right order and so the test set captures the interaction.

If Fix 1 (reframe demotion) lands first, the Phase 4 `_summary.md` files will stop carrying explicit `**Categorical reframe:**` markers for clusters that don't have a load-bearing one. The Phase 5 NLM subagent reads `_summary.md` as substrate when composing the customize prompts, so most of the `the categorical reframe of...` insertions in the NLM addon will disappear without any direct edit to the NLM template — they exist downstream of substrate markers that Fix 1 removes.

What Fix 1 won't reach:
- The capitalized `Conspicuous Absences` label in every infographic section schema — that's hardcoded in the NLM template, not derived from substrate.
- The `synthesis/{cluster-slug}_summary.md` file-path references — also template-hardcoded.
- The `productive dissent` and `single-perspective reframe` vocabulary in the few clusters that genuinely have load-bearing minority views (which Fix 1 will preserve — correctly — but the NLM-facing translation still needs to happen).

This means **Fix 5 is necessary even after Fix 1 lands**, but the surface area Fix 5 has to clean up will shrink substantially.

**Ordering implication:** Land Fix 1 before Fix 5 so Fix 5's edits don't have to anticipate substrate that Fix 1 will change. Regenerating a Phase 5 NLM output on a Fix-1-revised session before Fix 5 lands is a useful intermediate check — it isolates which residual jargon is template-hardcoded vs. substrate-derived.

### Fix 7: Relocate the Central Tension field

**Goal:** Stop the per-cluster Central Tension from reading as orphaned metadata, without losing its value as a per-cluster crux or as a Phase 5 signal.

**Background.** The `**Central Tension**:` field was introduced 2026-04-23 (commit `e44601c`) as a Phase 4 → Phase 5 signal-passing mechanism — a one-line per-cluster organizing trade-off that Phase 5 could aggregate into BRAINSTORM.md's `## Central Tensions` section without re-reading every summary. It is not a criticality directive and is not the antagonism driver (that is the categorical reframe — Finding 2). But the current placement — a naked bolded line above a `---` rule, above the Executive Summary — has two problems: it reads like frontmatter-adjacent metadata rather than content, and it competes with the Executive Summary for the role of document lead. `SUMMARIES.md`, which concatenates all per-cluster summaries, amplifies the effect into a repeated bare-label pattern.

The Central Tension serves two audiences — Phase 5 (needs a discrete parseable signal) and the human reading `_summary.md` (needs orientation). The current design serves the machine at the human's expense. The fix serves both by splitting the copies.

**7a. Move the machine-readable copy to YAML frontmatter.** Add a `central-tension:` key to the `_summary.md` frontmatter. Phase 5 parses this key instead of scraping a bolded prose line — more robust, unambiguous. `_synthesis.md` gets no such key: it has no Central Tension field, and Phase 5 reads the tension from `_summary.md` only. The frontmatter copy may be lightly compressed relative to the prose version; they need to carry the same claim, not be byte-identical.

**7b. Make the human-facing copy the opening of the Executive Summary.** Remove the standalone `**Central Tension**:` line and the `---` rule beneath it. The Executive Summary's first paragraph now states the tension as natural prose, absorbing what used to be the Exec Summary's old first sentence so no content is duplicated. The document goes heading → `## Executive Summary` directly, with no orphaned line between.

Worked example, 250T cluster 1:

> **Before:**
> ```
> # Summary: Anchor Economics and Capacity Extraction Risk
>
> **Central Tension**: $150K looks like a majority share of the budget but is
> almost certainly $15K–$45K short of the true anchor cost — and the asymmetric
> reputational exposure ... collateralizing its Next 250 credibility.
>
> ---
>
> ## Executive Summary
>
> The $150K anchor share does not survive disciplined unit-cost analysis. All
> four perspectives converge: ...
> ```
>
> **After:** `central-tension:` key added to frontmatter; body becomes —
> ```
> # Summary: Anchor Economics and Capacity Extraction Risk
>
> ## Executive Summary
>
> $150K looks like a majority share of the budget, but it does not survive
> disciplined unit-cost analysis. It is almost certainly $15K–$45K short of the
> true anchor cost, and the asymmetric reputational exposure (2–10× the anchor
> budget in downstream pipeline value) means the role's real economics are
> about whether NSR is being adequately compensated for collateralizing its
> Next 250 credibility — not administrative coverage at all.
>
> All four perspectives converge: ...
> ```

**7c. Soften the mandatory-tension language.** The current field instruction at [`phase4_full-synthesis.md:326`](idea-symphony/prompts/phase4_full-synthesis.md) and the template skeleton both phrase the tension as `Required. If the cluster has no productive tension to name, that itself is a signal worth surfacing — say so.` "Required" plus "absence is itself notable" structurally nudges the synthesizer to manufacture conflict in clusters that are genuinely convergent. Reword so a broadly-convergent cluster can open its Executive Summary with a convergence statement rather than a forced trade-off, without that reading as a deficiency. Suggested:

> The Executive Summary's opening should state the cluster's organizing tension if it has one — a genuine trade-off the personas did not resolve. If the cluster is broadly convergent, open with the convergent finding instead; a cluster without a productive tension is a normal outcome, not a gap to flag.

This is the same over-application disease as the categorical reframe, in milder form: an instruction meant for "capture it when it's real" being read as "produce one every time." Fix 7c is the Central-Tension analog of Fix 1.

**Files touched:** [`idea-symphony/prompts/phase4_full-synthesis.md`](idea-symphony/prompts/phase4_full-synthesis.md) (the `**Central Tension**:` line requirement, ~line 326), [`idea-symphony/templates/synthesis-summary.md`](idea-symphony/templates/synthesis-summary.md) (the template skeleton — both the frontmatter block and the body), the two summary-only Phase 4 prompts ([`phase4_summary-only_low-effort.md`](idea-symphony/prompts/phase4_summary-only_low-effort.md), [`phase4_summary-only_min-effort.md`](idea-symphony/prompts/phase4_summary-only_min-effort.md) — the field originated here), and [`phase5_final-output.md`](idea-symphony/prompts/phase5_final-output.md) (Phase 5's extraction logic for the `## Central Tensions` section must read the `central-tension:` frontmatter key rather than the bolded line).

**Not in scope:** the session-level `## Central Tensions` section in BRAINSTORM.md stays exactly where it is. It is the highest-leverage synthesis in the deliverable and belongs near the top of the user-facing document. Fix 7 only changes the per-cluster field in `_summary.md`.

---

## Testing approach

Both Phase 4 and Phase 5 have existing RP1 investigations with frozen probe sets and ship-gate rubrics. The fixes here can be tested as extensions of those frameworks rather than as a new investigation from scratch.

### For Fix 1 (reframe demotion)

**Reuse the Phase 5 RP1 6-session probe set** from [`dev/2026-05-05_symphony-phase5/plan.md`](2026-05-05_symphony-phase5/plan.md):

| # | Session | Effort | Original stress | Reframe-density measurement |
|---|---|---|---|---|
| 1 | career-change | high | D, reversal | Count reframes / clusters |
| 2 | school-consolidation | high | regression canary | Count reframes / clusters |
| 3 | property-management | high | A, reversal | Count reframes / clusters |
| 4 | mobile-app | min | F, G | N/A (min has no reframe rule) |
| 5 | career-change | low | G | Count reframes / clusters |
| 6 | career-change | medium | G | Count reframes / clusters |

Add 250T/med to the probe set as a 7th session — it's the case that motivated this revision and serves as the highest-density baseline (9/10 in current output). Target: a noticeable but not absolute drop. If 250T/med drops from 9/10 → 3–5/10 with the surviving reframes being the load-bearing ones, the demotion is calibrated correctly. If it drops to 0/10, the demotion has overshot.

**New ship-gate axis** — add to the seven existing Phase 5 axes:

| Axis | Edit | Criterion |
|---|---|---|
| H | Fix 1 | Per-topic blocks lead with prose that varies in grammatical structure across clusters. No more than ~40% of per-topic blocks open with an "X-not-Y" / "we are not running X; we are running Y" structure. Reframes that survive are derivable from a Phase 4 `_summary.md` marking them as load-bearing. |

This is a softer criterion than the existing axes — it's measuring rhetorical *variety* rather than presence/absence of a single feature.

**Phase 4 testing.** The Phase 4 RP1 framework at [`dev/2026-05-03_symphony-phase4/`](2026-05-03_symphony-phase4/) has a 60-cluster sample with baselines already written. Re-running the FA1 faithfulness audit on the Fix 1 Phase 4 prompt against the existing baselines would catch any case where the demotion drops a genuinely load-bearing reframe. New axis for FA1:

| Axis | Criterion |
|---|---|
| D' | Categorical-reframe *presence* (existing axis D) measures whether marked reframes survive into `_summary.md`. New: categorical-reframe *suppression* — does the revised Phase 4 prompt correctly omit reframes that don't pass the three-persona corroboration + action-priority-change tests? Score against the 60-sample baselines: for each baseline that did *not* identify a load-bearing reframe candidate, the revised Phase 4 output must not produce one. |

### For Fix 2 (em-dash budget)

No new probe set needed. Measure on the same 7-session set used for Fix 1. Criterion: median em-dash density per paragraph drops from ~1.5–3 (current) to ≤1 (target). Spot-checked on `BRAINSTORM.md` body, excluding quoted persona material.

This is a pure regex check — can be added as a pre-commit assertion if useful, but probably overkill.

### For Fix 3 (humanizer post-pass)

**Reuse the same 7-session probe set.** Run Fixes 1 + 2 + 3 together as the final integration, since the humanizer pass is most meaningful against substrate that has already been freed of the reframe pattern.

**New ship-gate axes:**

| Axis | Criterion |
|---|---|
| I | After humanizer pass, all numerical claims in `_summary.md`, `_synthesis.md`, and `BRAINSTORM.md` match the substrate. Grep-checkable: extract all numbers and dollar figures, diff against pre-humanizer version, require zero changes. |
| J | After humanizer pass, all named persons/organizations are preserved across `_summary.md`, `_synthesis.md`, and `BRAINSTORM.md` (grep-checkable against the pre-humanizer version). |
| K | After humanizer pass, structural elements preserved: YAML frontmatter byte-for-byte, section headings unchanged, numbered-list ordering unchanged, bullet count within ±0 in `_summary.md` / `_synthesis.md` and ±1 in `BRAINSTORM.md`. Additionally, in `_summary.md` and `_synthesis.md`: every bullet's bold `**Summary.**` lead is preserved as a bold lead (count of `* **`-pattern leads unchanged pre/post), and every framing-marker prefix is preserved (count of "A dissenting view:" / "A counter-test:" / "A reframe:" / "Caution:" / "Counter-test reframe:" / "All N perspectives converge" / "N of M perspectives" occurrences unchanged pre/post). A bold-lead count alone will not catch a bold lead swapped for a promoted body sentence — spot-read each bullet to confirm the bold lead is still a concise summary, not a relocated convergence sentence. The 2026-06-09 Round 2 verification surfaced two specific spot-read targets to look for: (a) **bold-lead semantic rewriting** — the agent paraphrased the bold lead's actual claim rather than restyling it within the bold span; (b) **prefix drop with a "redundant" rationale** — the agent removed a "Reframe:" / "Counter-test:" / "Caution:" prefix because the bullet body discussed the same idea. Both are per-call Haiku variance (the same brief produced clean output from four of five parallel agents in the same run). Affected blocks are regenerated. |
| L | Subjective: does the humanized output read more naturally than the pre-humanizer version? Single-reader judgment on a 1–5 scale, target ≥4 on ≥5/7 sessions. |

Axes I, J, K are guardrails — they catch the humanizer over-editing. Axis L is the actual value test. All three guardrail axes are verified by grep/diff against the pre-humanizer file, never by the humanizer subagent's self-reported change count: the 2026-06-09 experiment found those self-reports unreliable (subagents listed AI-vocabulary words "removed" that never appeared in the source, copied from the humanizer skill's own examples).

### For Fixes 5 + 6 (NLM template de-jargon-ization + Fix 1 cascade)

**Probe set:** All sessions in the 7-session set that have `notebooklm-outputs: "yes"` in PLAN.md frontmatter. For sessions without an NLM addon, this axis is N/A. Add 250T/med to the probe regardless — it's the case that surfaced the issue and has the densest jargon for the regression check.

**New ship-gate axis:**

| Axis | Criterion |
|---|---|
| M | NotebookLM jargon hygiene. Grep-check the generated `NOTEBOOK-LM-INSTRUCTIONS.md` and require: (a) zero instances of `categorical reframe`, `single-perspective reframe`, `productive dissent`, `productive disagreement` inside fenced customize-box prompts; (b) zero instances of capitalized `Conspicuous Absences` used as a section label inside customize-box prompts (lowercase prose use is fine); (c) zero `synthesis/.*\.md` file-path strings inside fenced customize-box prompts; (d) Source Framing module under ~400 characters per prompt. Plain prose outside the fenced customize-box prompts (e.g., the "Notes for the user" section) can reference Symphony concepts freely — the constraint is specifically on text NotebookLM will read. |

**Cascade-isolation check.** Before landing Fix 5, regenerate 250T's NLM addon on a Fix-1-revised session and measure axis M without Fix 5 in place. Expected: significant drop in `categorical reframe` instances (Fix 1 cascade), but file-path references and capitalized `Conspicuous Absences` unchanged (template-hardcoded). This isolates which residual jargon needs Fix 5 specifically.

### For Fix 7 (Central Tension relocation)

**Reuse the Phase 4 RP1 60-cluster sample** for the structural checks (it covers all four effort levels and both Phase 4 prompt paths) and the **Phase 5 7-session probe set** for the extraction check.

**New ship-gate axes:**

| Axis | Criterion |
|---|---|
| N | Central Tension structural relocation. Grep-check each generated `_summary.md`: (a) zero standalone `**Central Tension**:` lines in the body; (b) a `central-tension:` key present in YAML frontmatter; (c) no `---` rule between the `# Summary:` heading and `## Executive Summary`; (d) the Executive Summary's opening paragraph carries the tension claim as prose. |
| O | Phase 5 extraction fidelity. The BRAINSTORM.md `## Central Tensions` section is built by reading the `central-tension:` frontmatter key from each `_summary.md`. Verify every entry traces to a frontmatter key, and that the section still respects the existing P5-#3 cap of ≤4 entries. |
| P | Convergent-cluster non-coercion (tests Fix 7c). On the 60-cluster sample, identify clusters the BL1 baselines flagged as broadly convergent with no load-bearing tension. For those, the revised Phase 4 output must be permitted to open with a convergence statement — and the absence of a manufactured trade-off must not be scored as a defect by any other axis. |

Axis P is the Fix 7c analog of axis D' (categorical-reframe suppression) — it confirms the softened language doesn't just permit omission but is actually exercised when the substrate warrants it.

**Ship gate.** Total axes is **16** (existing 7 + H + I/J/K/L + M + N/O/P). Updated ship gate: ≥15/16 axes PASS for ≥4/7 sessions AND no axis fails on >1 session. Scope notes: axes I/J/K/L apply only to sessions where Fix 3 ran; axis M applies only to sessions with NLM addon enabled; axes N/O/P apply to all sessions.

### Sequencing of the test

1. **Land Fix 1 only.** Re-run Phase 5 probe set + 250T/med. Validate axis H plus the existing 7. Iterate if needed.
2. **Add Fix 2.** Same probe set. Spot-check em-dash density. Validate that adding the budget line didn't regress any existing axis.
3. **Add Fix 7.** Same probe set plus the 60-cluster structural checks. Validate axes N, O, P. Sequenced here (after Fix 1, before Fix 3) because Fix 7 changes the substrate the humanizer pass operates on — better for the humanizer to see the relocated structure.
4. **Add Fix 3.** Same probe set. Validate axes I, J, K, L.
5. **Cascade-isolation regen.** Regenerate 250T's NLM addon under Fixes 1+2+7+3 (without Fix 5). Measure axis M. Document which jargon survives — that's the surface Fix 5 must clean up.
6. **Add Fix 5.** Same probe set on sessions with NLM addon enabled. Validate axis M PASSes including the cascade-isolation residuals identified at step 5.
7. **Optional Fix 4.** Bundle with any of the above. No probe-set impact.

Each step preserves the option to ship without the next, in case a later fix surfaces unforeseen issues.

---

## Sequence

Mirroring the cadence from [`dev/2026-05-09_symphony-final-polish.md`](2026-05-09_symphony-final-polish.md):

1. **Approve plan** — user review of this document; resolve [Open Questions](#open-questions).
2. **Land Fix 1** (reframe demotion) — edit four prompts + one template. Run Phase 5 probe set including 250T/med as the 7th session. Validate axis H. Iterate if needed.
3. **Land Fix 2** (em-dash budget) — one-line addition to two prompts. Re-run probe set. Spot-check em-dash density.
4. **Land Fix 7** (Central Tension relocation) — edit `phase4_full-synthesis.md`, the two summary-only Phase 4 prompts, `synthesis-summary.md`, and Phase 5's extraction logic. Run the 60-cluster structural checks + Phase 5 probe set. Validate axes N/O/P. Sequenced before Fix 3 so the humanizer pass sees the relocated structure.
5. **Land Fix 3** (humanizer post-pass) — wire Haiku humanizer subagents into the Phase 4 cluster fan-out (`_summary.md` one call per file; `_synthesis.md` one call per `### Question N` block, reassembled — med/high only) and Phase 5. **Re-sequence the `build-summaries.sh`/`build-synthesis.sh` concat to run after this post-step (per OQ9)** so `SUMMARIES.md`/`SYNTHESIS.md` inherit humanized substrate. Re-run probe set. Validate axes I/J/K/L.
6. **Cascade-isolation regen** — regenerate 250T's NLM addon under Fixes 1+2+7+3 without Fix 5. Measure axis M. Identifies which residual jargon Fix 5 must clean up vs. what the cascade already handled.
7. **Land Fix 5** (NLM template de-jargon) — edit [`idea-symphony/templates/notebook-lm-instructions.md`](idea-symphony/templates/notebook-lm-instructions.md) per 5a–5d. Re-run probe set on NLM-enabled sessions. Validate axis M.
8. **Optional: Fix 4** — Phase 3 footer cleanup if bundling.
9. **Bulk regen** — once Fixes 1–3 + 5 + 7 ship, regenerate `_summary.md`, `_synthesis.md`, `SUMMARIES.md`, `SYNTHESIS.md`, `BRAINSTORM.md`, and `NOTEBOOK-LM-INSTRUCTIONS.md` across the test-run matrix. The Phase 3 outputs do not need to be regenerated (Fix 4 changes the trailing template only and can be applied retroactively with `sed` if desired). This intersects with the [final-polish bulk-regen step](2026-05-09_symphony-final-polish.md) §3–4 and may either supersede it or stack on top of it depending on timing.
10. **Promote examples** — as described in [final-polish plan](2026-05-09_symphony-final-polish.md) §5, but using the post-revision outputs.

---

## Verification record

The Fix 3 `_synthesis.md` scope addition was validated through one initial experiment and two follow-up verification rounds, all read-only.

### Initial experiment (2026-06-09)

**Premise.** The previous plan excluded `_synthesis.md` from Fix 3 with the rationale "analytic record, precision over readability, user almost never reads it." That rationale is mis-aimed: the Phase 4 prompt itself frames `_synthesis.md` as the *readable* doc ("attribution removed for clean reading", "readable standalone"). The genuine audit record is `attributed/{cluster}.md`, which the plan already leaves alone. `_synthesis.md` is also surfaced to the user via `SYNTHESIS.md`, linked from `BRAINSTORM.md`'s Session Index at medium/high effort.

**Method.** Four `_synthesis.md` files passed through Haiku humanizer subagents read-only (return text inline, no file writes). Files chosen to span sizes and project types: 250T/05 (35 insights), food-truck/02 (14 insights), property-management/08 (67 insights), space-party/06 (26 insights).

**Findings.**
1. **Voice preservation holds at small/medium volume, fails at large volume.** Files ≤35 insights kept all framing markers ("A dissenting view:", "A counter-test:", "A reframe:", "Caution:", "All N perspectives converge"). The 67-insight file lost markers in its later questions: `Reframe:` and `Counter-test:` prefixes dropped, and one reframe bold-lead ("co-designers, not obstacles") dissolved into a flat list.
2. **Bold-lead erosion (all files).** Breaking an em-dash inside a bold `**Summary.**` lead causes the humanizer to split the bold and demote content to body prose, violating the Phase 4 "Maintain **Summary.** Detail format" standard. Not file-specific; also threatens `_summary.md`.
3. **Self-reported change counts are unreliable.** Two agents listed AI-vocab words "removed" that never appeared in the source (copied from the humanizer skill's own examples). Test verification must be grep-based, not subagent-reported.
4. **Volume ceiling.** One Haiku call per file is clean to ~35 insights / ~140 lines. At 67 insights / 227 lines, edit quality degrades and the agent itself recommended a second pass.

**Decisions taken from the experiment.**
- Add `_synthesis.md` to Fix 3 scope.
- Use **chunk-per-question** wiring for `_synthesis.md` to stay under the volume ceiling.
- Strengthen the Fix 3 brief — guardrails apply to BOTH `_summary.md` and `_synthesis.md`.
- Test verification is grep-based (axes I/J/K), never subagent-reported.
- Three wording corrections to the broader plan: Fix 1 rationale, Fix 2 note, Fix 7a parenthetical.

### Round 1 verification (2026-06-09)

Chunk-per-question run on `property-management/08` Q8–Q12 — the region the single-pass run had degraded.

- **Framing markers: fully fixed.** Every `Reframe:` / `Counter-test:` / `Counter-test reframe:` / `Caution:` / convergence-count prefix survived verbatim across all five blocks, including Q11's "co-designers ... not obstacles" reframe bold-lead that the single-pass run had dissolved. **Chunk-per-question is validated.**
- **Bold leads: residual promotion failure (2 of 5 blocks).** Q12 bullets 1–2 had their original bold summaries *replaced* by a body convergence sentence promoted into the bold; Q11 bullets 4–5 had trailing clauses trimmed out of the bold. The Round 1 brief forbade *demotion* of a bold lead but not *promotion* of a body sentence into one.
- **Self-reports remain unreliable.** One agent claimed all bold leads preserved when two were not — reconfirms grep/spot-read verification.

**Action taken.** Brief tightened — the bold lead is now defined as "whichever sentence is bolded first in the source bullet" and the brief explicitly forbids promoting a body sentence (including a framing-marker sentence) into the bold position. Axis K gained a spot-read note.

### Round 2 verification (2026-06-09)

Re-ran the same Q8–Q12 chunked humanizing with the tightened brief.

Net across 29 bold leads and 13 framing-marker prefixes:
- **Bold leads: 27/29 preserved** (Q8 6/6, Q9 5/5, Q10 3/5, Q11 6/6, Q12 7/7).
- **Framing prefixes: 12/13 preserved** (one `Reframe:` dropped in Q10 bullet 5).
- **Round 1 failure modes both fixed.** Q12's promotion failure (R1: 2 leads replaced) is fully closed — 7/7 byte-identical in R2. Q11's trailing-clause trimming is also closed — both formerly trimmed leads now split em-dash → period within the bold span, with both halves bolded, exactly as the tightened brief instructs.
- **New residual: editorial drift in Q10.** That agent rewrote bullets 1 and 3's bold-lead claims (substantive paraphrases, not within-span style edits) and dropped `Reframe:` from bullet 5 with the rationale "already stated once per bullet is sufficient." The four other agents in the same parallel run received the identical brief and obeyed it; the Q10 pattern looks like per-call Haiku variance rather than a missing rule.

**Decision: do not tighten the brief further** — diminishing returns versus the variance. Axis K's spot-read is the right catch in production: a `_synthesis.md` with ~50 bullets showing 2–3 such drifts gets flagged and the affected blocks regenerated. Axis K was updated to name the two patterns explicitly (bold-lead semantic rewriting; prefix drop justified as "already stated").

### Net result

The Fix 3 `_synthesis.md` scope addition is **validated**. The chunk-per-question design closes the volume-degradation failure. The strengthened brief closes the bold-lead promotion failure. Remaining ~7% editorial-drift variance is caught by axis K spot-read at test time and by per-block regeneration in production. No further design changes needed before execution.

---

## Out of scope

- **Phase 3 persona voices.** Phase 3 is not the source of the mechanical-AI feel and persona voices are working. The only Phase 3 touchpoint here is Fix 4 (footer hygiene), which is itself optional.
- **Model assignment changes.** [Phase 4 MA1](2026-05-03_symphony-phase4/methodology.md) was deferred; nothing here re-opens it. Synthesis still runs on Opus; humanizer post-pass uses Haiku.
- **Restructuring of the 250T BRAINSTORM itself.** The 250T output is honest signal for a genuinely risky project. After the reframe demotion, its rhetorical uniformity will drop; its substantive criticism level will (correctly) remain high.
- **Forge / Factory parity.** Idea Factory has its own synthesis discipline ([factory-architecture](../memory/factory-architecture.md)); whether Factory needs analogous fixes is a separate question.
- **Canonical `nlm-audio-prompt` skill.** See OQ8.

---

## Out of session

- Today's audit caught one tertiary observation worth flagging: the Phase 5 `## Key Themes` meta-bullet *"Categorical reframes recur across clusters"* (250T BRAINSTORM.md line 48) is a load-bearing example of the skill recursively reinforcing its own pattern. After Fix 1, this section should not be generated. Worth a single-line regression check on the 7-session probe.

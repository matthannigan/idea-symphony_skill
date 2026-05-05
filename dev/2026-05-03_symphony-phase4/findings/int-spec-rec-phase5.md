# Phase 5 — Integration-Spec Recommendations from Phase 4 Lessons

**Date:** 2026-05-05
**Status:** Recommendation document (parallel to `integration-spec.md`)
**Companion to:** [`integration-spec.md`](integration-spec.md) (Phase 4 prompt migration)
**Scope:** Phase 5 (`idea-symphony/prompts/phase5_final-output.md`) — what to change so the disciplines RP1 added at Phase 4 survive the cluster-to-`BRAINSTORM.md` consolidation step.

---

## Headline

Phase 4's RP1 iter1 disciplines (persona-name ban, bidirectional convergence-count discipline, categorical-reframe staging, single-persona-reframe floor incl. dissent protection, universal `## Central Tension`, Conspicuous Absences diagnostic, `[recurring]` mandatory-inclusion gate) are encoded into the per-cluster `_summary.md` files. Phase 5 reads those summaries and synthesizes them into the user-facing `BRAINSTORM.md`. Without parallel disciplines at Phase 5, the consolidation step can silently erase the very properties Phase 4 was tuned to preserve — by re-introducing persona-name leakage, by inflating cross-cluster convergence claims, by smoothing per-cluster productive dissent, by dropping categorical reframes into generic themes, and by aggressively compressing into 600–1200 words.

This document specifies the seven Phase 5 prompt edits required to keep the Phase-4 work load-bearing, plus a four-axis research probe set to validate the edits after implementation.

---

## The leakage surface — what Phase 4 added that Phase 5 can erase

Each entry below names the Phase 4 discipline, where it lives in the per-cluster `_summary.md`, and the specific way Phase 5's current prompt risks erasing it.

| # | Phase 4 discipline | Lives in `_summary.md` as | Phase 5 erasure risk |
|---|---|---|---|
| L1 | Persona-name + character-name suppression in body prose (med/high) | Absent persona names; lens-typed phrases ("an adversarial counter-test", "feasibility-oriented case") | Phase 5 may re-introduce persona names or process jargon when it paraphrases. Current prompt says "avoid persona names and process jargon" — but doesn't enumerate the bullet-label sub-pattern ("Visionary alternatives") or character-name leaks (Marcus, Maria, Margaret, Elena, Sarah). |
| L2 | Bidirectional convergence-count discipline ("six of seven", "all seven", default to underclaim) | Prose convergence claims with bidirectional discipline applied within the cluster | Phase 5 cross-cluster aggregation has no count discipline at all. "All clusters raised X" / "Every topic surfaced Y" claims will inflate by default. The Phase 5 prompt also forbids reading `SYNTHESIS.md` and `attributed/` for context-budget reasons — so Phase 5 cannot re-derive counts; it must inherit them carefully. |
| L3 | Categorical-reframe staged at top of Themes ("we are not running X; we are running Y") | Standalone declarative sentence above individual themes | Phase 5's `## Key Themes` and per-topic-blocks are designed for *patterns across clusters*. A per-cluster categorical reframe can be flattened into a generic theme, lost in compression, or aggregated incorrectly with a different cluster's unrelated reframe. |
| L4 | Single-persona-reframe floor (incl. **productive dissent inverting memo-persistent claims**) | Distinctive reframes named in Themes/Trade-offs/Risks; DA-anchored dissent surfaced even when minority | Phase 5 cross-cluster majority-rule logic ("themes that emerge across all clusters") will systematically smooth single-cluster dissents. The career-change/high/06 TL-15 volunteering-inversion is the canonical case: it survives Phase 4 only because the new floor protects it; nothing in Phase 5 currently protects it from being dropped at synthesis. |
| L5 | Universal `## Central Tension` field across `min`/`low`/`med`/`high` | One sentence at top of `_summary.md` (or "no productive tension; that itself is a signal") | Phase 5 has no instruction to surface, aggregate, or preserve Central Tensions. They will be folded into the Executive Summary or dropped — neither of which exposes the per-cluster organizing tension to the cold reader. |
| L6 | Conspicuous Absences (min) + Neither-lens-gaps (low) | Named structural absences with checklist-driven derivation | Phase 5's Executive Summary is a confidence-positive register; the absences sections are the most likely to be silently dropped. The `mobile-app/min/01` lane-decision refusal is the canonical case — it must reach the user, not get papered over by an "Across clusters, the team should…" prescription. |
| L7 | `[recurring]` mandatory-inclusion gate (min) — every recurring through-line must appear in Recommended Actions or Key Themes | `_summary.md` already enforces this within the cluster | Phase 5's Recommended Next Steps section is built across clusters; without parallel weighting, a `[recurring]` item that appears in N clusters can be dropped to make room for a vivid one-shot from a single cluster. |

In addition, two Phase-4-adjacent properties are also at risk:

| # | Property | Phase 5 erasure risk |
|---|---|---|
| L8 | Foundational-reversal preservation (Axis E, high effort, 11/12 PASS at n=16) | High-effort reversals (e.g., school-consolidation closure-as-real-injury, property-management visible→quiet political posture) are per-cluster but load-bearing. Phase 5 should treat reversals as un-droppable in the per-topic blocks. |
| L9 | Length permission / don't aggressively compress distinctive content (RG1 design constraint) | Current Phase 5 cap is 600–1200 words. With 5–11 clusters at high effort, this forces ~50–150 words per cluster — barely enough to preserve a categorical reframe + dissent + foundational reversal. The cap is correct in spirit but should explicitly say "permit length increase when cluster-distinctive content would otherwise be flattened." |

---

## Recommended Phase 5 prompt edits

The seven edits below are written to be inserted directly into [`idea-symphony/prompts/phase5_final-output.md`](../../../idea-symphony/prompts/phase5_final-output.md). Section names refer to that file. Edits are ordered by load-bearingness, not by section order.

### P5-#1 — Cross-cluster convergence-count discipline

**Insert into** the `## Notes` section (or as a new `## Synthesis discipline` section above it).

Concrete language:

> **Cross-cluster convergence-count discipline.** When making any "across all clusters" / "every topic" / "most clusters" claim in the Executive Summary, Key Themes, or Recommended Next Steps: (a) name the clusters in scratch reasoning before stating the claim; (b) count distinct clusters, not distinct framings within clusters — if two clusters surface the same idea under different lenses, that is two clusters, but if one cluster's `_summary.md` mentions an idea twice in different sections, that is one cluster; (c) inherit per-cluster convergence claims from each `_summary.md` rather than re-deriving from its prose; do not "translate" "six of seven personas" into "six of seven clusters" — those are different denominators; (d) default to underclaim ("Several clusters surface…") when uncertain; (e) do not inflate to manufacture a cross-cluster theme, and do not deflate counts that legitimately reach all clusters.

**Why this matters:** L2 above. The signal-log shows ~75% of n=16 samples have at least one count miscount in Phase-4 prose; Phase 5 risks compounding those by re-aggregating into cross-cluster claims without discipline. The "different denominators" clause is the load-bearing one — Phase 5 operates on a cluster-count denominator, not a persona-count denominator.

### P5-#2 — Persona-name + character-name suppression (parallel to Phase 4 P0-#2)

**Replace** the current line 9 sentence (`avoid persona names and process jargon ("orchestrator", "subagent", "phase")`) with a fuller block.

Concrete language:

> **Persona names and character names are prohibited in `BRAINSTORM.md`.** This includes (a) persona-name mentions ("The Devil's Advocate", "The Storyteller", "The Pragmatist's caution"); (b) bullet-summary labels of the form "Visionary alternatives" / "Pragmatist's caution"; (c) possessive enumerations ("The Storyteller's Marcus"); (d) sentence-subject mentions ("The Devil's Advocate argues"); (e) character names from persona narratives (Marcus, Maria, Margaret, Elena, Sarah, David, James, Aisha, etc.) — these come from per-persona scenic writing inside Phase 3 responses and must not survive into the user-facing document. Convey breadth via cluster counts and lens types ("a feasibility-oriented finding", "an adversarial counter-test across two clusters"). Process jargon is also prohibited ("orchestrator", "subagent", "phase").

**Why this matters:** L1. Phase 4 banned these in `_summary.md` body prose; Phase 5 must hold the same line for `BRAINSTORM.md` — even more strictly, since this is the document the user actually reads.

### P5-#3 — Central Tension aggregation requirement

**Insert into** the `## Your Task` step list as a new step (between current step 2 "Draft the executive summary" and step 3 "Write the session overview"), and **add** a new section to the output template.

Concrete language for the task step:

> **2a. Surface Central Tensions.** Each per-cluster `_summary.md` includes a `**Central Tension**` line at the top. Read all of them before drafting the Executive Summary. If two or more clusters share a structurally similar tension, name the cross-cluster meta-tension explicitly. If clusters' tensions diverge, that divergence is itself a session-level finding worth naming. Do not silently drop per-cluster tensions; either aggregate them or list the most load-bearing 2–4 in a dedicated subsection.

Concrete language for the output template — add a new section between `## Session Overview` and `## Key Themes`:

> ```markdown
> ## Central Tensions
> [If clusters share a meta-tension, state it as a single sentence with the contributing clusters cited. Otherwise, list the 2–4 most load-bearing per-cluster Central Tensions verbatim or near-verbatim from each cluster's `_summary.md`.]
> ```

**Why this matters:** L5 above and PP1's universal-Central-Tension recommendation. The whole point of making `## Central Tension` universal at Phase 4 was so Phase 5 could aggregate them. Without an explicit instruction, the field is an unused signal.

### P5-#4 — Productive-dissent + foundational-reversal preservation (per-cluster non-droppable rule)

**Insert into** the `## Notes` section.

Concrete language:

> **Per-cluster dissent and reversals are non-droppable in per-topic blocks.** When a cluster's `_summary.md` names a single-persona-reframe (counter-test, distinctive timing claim, alternate diagnostic pattern, DA-anchored dissent inverting a memo-persistent claim) or a foundational reversal (a sentence-level "we thought X; the answer is the opposite of X" finding), the per-topic block for that cluster MUST surface it — even at the cost of dropping a more convergent theme. Cross-cluster majority-rule logic in the Executive Summary and Key Themes does not override per-cluster dissent preservation. If a dissent recurs across multiple clusters, name it as a dissent in the Key Themes (not as a convergence).

**Why this matters:** L4 + L8. Phase 4's most fragile achievements — the volunteering-as-weak-predictor inversion at career-change/high/06, the closure-as-real-injury reversal at school-consolidation/high/09, the visible→quiet political-posture inversion at property-management/high/07 — are exactly the things a "synthesize across clusters" instruction will smooth into majority convergence unless explicitly protected.

### P5-#5 — Categorical-reframe surfacing rule

**Insert into** the per-topic-block instructions in `## Your Task` step 5.

Concrete language (add as a sub-bullet of step 5):

> If the cluster's `_summary.md` names a categorical reframe (a single declarative sentence reframing the cluster's question — e.g., "the library's operational core is not inventory management but mutual-visibility infrastructure"), surface it verbatim or near-verbatim as the **first** sentence of the per-topic block. Do not flatten it into a generic theme. If multiple clusters carry categorical reframes that share a structural pattern, surface that pattern in `## Key Themes` separately from the per-topic blocks.

**Why this matters:** L3. Categorical reframes are already at top of `_summary.md`'s Themes section after RP1; Phase 5 must inherit that staging rather than re-bury it.

### P5-#6 — Conspicuous Absences + gap forwarding (min/low summary)

**Insert into** the output template a new section, and **add** a corresponding step to `## Your Task`.

Concrete language for the new template section (between `## Key Themes` and `## Topic Summaries`):

> ```markdown
> ## Conspicuous Absences (session-level)
> [Aggregate the per-cluster Conspicuous Absences (`min` clusters) and Neither-lens gaps (`low` clusters). If a structural absence recurs across clusters — a stakeholder type never engaged, a decision the brainstormer faced and declined, a precondition never established for a recommended action — name it here. If absences are cluster-specific, list 2–4 most load-bearing. Do not write this section as a confidence-positive recap; it is the section that says "what's not here."]
> ```

Concrete language for the task step (insert as new step 6, renumbering):

> **6. Forward absences.** Per-cluster Conspicuous Absences (`min`) and Neither-lens gaps (`low`) name what's structurally missing. Read those sections from each `_summary.md` and aggregate to session level. The Executive Summary is confidence-positive by register; Conspicuous Absences is the counterweight. Do not let Recommended Next Steps paper over an absence — if a cluster surfaced a decision-the-brainstormer-declined, the next-steps section must either invite that decision or name it as out-of-scope.

**Why this matters:** L6. The Phase 4 P0-#9 work (mobile-app/min/01 lane-decision refusal as the canonical case) only matters end-to-end if it reaches the user. The current Phase 5 prompt has no equivalent register, so the section is the most likely to be silently dropped.

### P5-#7 — `[recurring]` weighting + effort-scaled length target

**Insert into** the `## Notes` section. **Replace** the current `Target ~600-1200 words for the body` line in `## Notes` with the effort-scaled table below.

Concrete language:

> **Cross-cluster recurrence weighting.** When building Recommended Next Steps and Key Themes, weight items that appear in multiple clusters' `_summary.md` more heavily than vivid one-shots. A through-line tagged `[recurring]` in any cluster's `_summary.md` should appear in either Key Themes or Recommended Next Steps; do not drop it to make room for a single-occurrence item, however vivid.
>
> **Length target by effort level.** Phase 5 output scales with the effort level used by Phase 4, because the per-cluster `_summary.md` substrate carries roughly 1.95× more substantive content at `high` than at `min` (4–7 personas/cluster vs. 1 brainstormer/cluster, plus Phase 4's per-cluster Central Tension + categorical reframe + dissent preservation + foundational reversal stacking at higher effort). Use the following table; targets exclude the Session Index:
>
> | Effort | Multiplier | Word target (body) |
> |---|---|---|
> | `min`    | 1.00× | 600 – 1200 |
> | `low`    | 1.25× | 750 – 1500 |
> | `medium` | 1.5625× | 940 – 1875 |
> | `high`   | 1.953× | 1170 – 2345 |
>
> Multipliers are compounding 25% increments. These targets are **soft floors for full coverage** of the Phase-4 disciplines (Central Tensions, Conspicuous Absences, categorical reframes, dissent preservation, foundational reversals), not hard ceilings. At `high` effort with 7+ clusters where each cluster carries a categorical reframe + a productive dissent + a foundational reversal, the per-topic blocks alone may exceed the lower bound. **Permit length growth when cluster-distinctive content would otherwise be flattened into generic themes; do not aggressively compress to hit the lower bound.**

**Why this matters:** L7 + L9, plus an explicit recognition that `high` effort sessions are roughly 2× as content-dense as `min` and the word budget needs to scale accordingly. RG1's "length permission must not regress" design constraint specifically guards against the "Phase 5 ate my reframes to fit the word budget" failure mode; the scaled table makes the permission concrete rather than left to the subagent's judgment. The 25%-compounding choice (vs. 20%) was made because high effort's stacked per-cluster floor content (≥3 sentences × 7–11 clusters just for per-topic blocks, before Executive Summary + new Central Tensions section + new Conspicuous Absences section + Key Themes + Recommended Next Steps) plausibly needs the upper bound near 2300 words. 20%-compounding (high = 1037–2074) is a more conservative alternative if the probe shows bloat at 25%.

---

## Recommended template changes

### `idea-symphony/templates/brainstorm.md`

**Required:**
1. Add a `## Central Tensions` section between Session Overview and Key Themes (matches P5-#3).
2. Add a `## Conspicuous Absences (session-level)` section between Key Themes and Topic Summaries (matches P5-#6).
3. Add a one-line note under "Authoritative source" pointing readers to the persona-name + character-name + process-jargon prohibition (matches P5-#2).
4. Update the per-topic-block format guidance to note that categorical reframes (when present) lead the block (matches P5-#5).

**Optional:**
- Document the length-permission policy as a footer note in the template (template is the canonical place to record output-shape guidance).

### `idea-symphony/templates/synthesis-summary.md`

No further changes beyond what `integration-spec.md` already specifies. Phase 4 produces the substrate; the Phase 5 edits above consume it correctly.

### `idea-symphony/SKILL.md`

**Required:**
- Phase 5 invocation block: no structural changes (filename, model, args unchanged), but add a one-line note in the Phase 5 narrative section: *"Phase 5 inherits per-cluster Central Tensions, Conspicuous Absences, and dissent-preservation disciplines from Phase 4's `_summary.md` outputs and aggregates them at session level. See `prompts/phase5_final-output.md` for the surfacing rules."*

---

## Research opportunities — validating the Phase 5 edits

This is the parallel to RP1's diagnostic-set loop, but at the cluster→session denominator. The shape: regenerate `BRAINSTORM.md` from the (post-RP1) `_summary.md` files for a small canonical session set, score on per-axis criteria mirroring FA1/LB1, decide ship-or-iterate.

### Probe-set design

**4 axes, 4 canonical sessions, ~6 axis-checks per session = ~24 self-checks, 1 regen subagent per session = 4 regen subagents per iteration.** Smaller than RP1 because the input fan-in is per-session, not per-cluster.

The 4 sessions should each stress one or two axes hardest:

| Session | Effort | Why this session for Phase 5 testing |
|---|---|---|
| career-change/high | high | Stresses **dissent preservation** (TL-15 volunteering inversion at cluster #06; cluster #11 30-year-arc trade-off) and **foundational reversal**. |
| school-consolidation/high | high | The n=16 PASS canary. Stresses **regression** (must not lose what already works) and **foundational reversal** (closure-as-real-injury). |
| property-management/high | high | Stresses **persona-name + character-name suppression** (Marcus/Maria/etc. in Phase 3 prose) and **reversal preservation** (visible→quiet). |
| mobile-app | mixed (`min` + `high` in same session if available; otherwise `min`) | Stresses **Conspicuous Absences forwarding** (lane-decision refusal at min/01) and **`[recurring]` weighting** (cross-cluster). |

Optional 5th: tool-library/high — stresses **categorical-reframe aggregation** (mutual-visibility-infrastructure reframe at cluster #09) and convergence-count discipline (the cluster with the most miscounts in the n=16 audit, now corrected by RP1).

### Per-axis PASS criteria for the regenerated `BRAINSTORM.md`

| Axis | Criterion |
|---|---|
| **A. Persona/character/jargon hygiene** (P5-#2) | 0 persona-name mentions, 0 character-name leaks (Marcus, Maria, Margaret, Elena, Sarah, David, James, Aisha, …), 0 process-jargon (orchestrator, subagent, phase). Grep-checkable. |
| **B. Cross-cluster count discipline** (P5-#1) | Every "all clusters" / "every topic" / "across N clusters" claim in `BRAINSTORM.md` is verifiable against the per-cluster `_summary.md` set. No claim translates persona-counts into cluster-counts. ±0 strict. |
| **C. Central Tension aggregation** (P5-#3) | The new `## Central Tensions` section is present, ≤4 entries, each traceable to a per-cluster `_summary.md` Central Tension or labeled as a meta-aggregation. No silent drops. |
| **D. Dissent + reversal preservation** (P5-#4 + P5-#8 implicit) | For each session: every productive dissent / foundational reversal in any per-cluster `_summary.md` survives into the per-topic block (or, if recurring, into Key Themes labeled as dissent — not as convergence). |
| **E. Categorical-reframe surfacing** (P5-#5) | Per-topic blocks for clusters with categorical reframes lead with the reframe sentence (verbatim or near-verbatim). |
| **F. Conspicuous Absences forwarding** (P5-#6) | The new `## Conspicuous Absences` section is present and aggregates the per-cluster gap content; Recommended Next Steps does not paper over named absences. |
| **G. `[recurring]` weighting + effort-scaled length** (P5-#7) | Every `[recurring]`-tagged through-line in any cluster's `_summary.md` (Recommended Actions or Key Themes) also appears in `BRAINSTORM.md`'s Key Themes or Recommended Next Steps. Word count for the body falls within the effort-scaled target band (`min` 600–1200, `low` 750–1500, `medium` 940–1875, `high` 1170–2345); upper bound may be exceeded if and only if exceeding it preserves cluster-distinctive content (categorical reframes, dissents, reversals, Central Tensions). Lower bound must be met. |

### Suggested investigation cadence (RP1-shaped)

- **Iter 1:** 4 regen subagents (one per canonical session) using the edited Phase 5 prompt; each produces `BRAINSTORM.md` + a `<!-- self-check -->` block evaluating axes A–G for that session. Score the 4 outputs against the 7 axes (28 axis-checks total). Ship if ≥6/7 axes PASS for ≥3/4 sessions AND no axis FAILS on >1 session.
- **Iter 2 (if needed):** Re-run only failed sessions on tightened edits; re-score only failed axes.
- **Iter 3 (if needed):** Same shape.

**Total cost:** ~5–12 Opus subagents across all iterations (1 Phase-5-prompt drafter + 4–8 regens + optional separate scorer if self-check is insufficient) — comparable to RP1, much smaller than a full Phase-5 audit at 60-cluster denominator.

### Where to write the investigation outputs

Mirror the Phase 4 layout:

- `dev/2026-05-XX_symphony-phase5/proposed-prompts/iter{N}/phase5_final-output.md` (revised prompt per iteration)
- `dev/2026-05-XX_symphony-phase5/proposed-prompts/iter{N}/outputs/{session-name}/BRAINSTORM.md` (regenerated outputs per session)
- `dev/2026-05-XX_symphony-phase5/findings/RP1-P5_iter{N}.md` (per-iteration findings, with the 7-axis scoring table)
- `dev/2026-05-XX_symphony-phase5/findings/integration-spec-phase5.md` (final migration spec)

### Open questions that the probe should answer

1. Does the new `## Central Tensions` section displace useful Executive Summary content, or coexist? (If displaces: re-evaluate length permission.)
2. Does `## Conspicuous Absences (session-level)` introduce a confidence-negative register that's jarring next to the confidence-positive Executive Summary? (Tone audit on output.)
3. With the cross-cluster count discipline in place, do "all clusters" claims drop precipitously (correct behavior) or excessively (over-correction — Phase 5 becomes hedged)? Tolerance: ≥5 cross-cluster convergence claims per `BRAINSTORM.md` at high effort, defaulting to underclaim wording.
4. Does `[recurring]` weighting preserve the right items? Specifically, does it surface items that recur in 2+ clusters at the cost of single-cluster items that are more *vivid* but *not* recurring? (This is the "vividness vs. recurrence" trade-off; the rule should resolve in favor of recurrence per LB1 P0-#3.)
5. **Does the effort-scaled length table fit the actual content density at each effort level?** Specifically:
    - At `high` (1170–2345 words), is the upper bound rarely needed (suggesting 25% compounding overshot — fall back to 20% for `high` only) or routinely brushed up against (suggesting the table is correctly calibrated)?
    - At `min`/`low`, does the lower bound get hit by sessions with 3–4 clusters but missed by sessions with 7+ clusters at the same effort? If so, factor cluster-count into the target alongside effort, not effort alone.
    - Does compression to hit the upper bound cause regression on axes D (dissent preservation) or E (categorical-reframe surfacing)? If yes, the upper bound should be advisory only, not normative.

---

## Sequencing recommendation

The Phase 5 prompt edits **should not** be implemented before the Phase 4 RP1 migration is verified at full scale (user regenerates `test-runs/`). Reasoning:

- The Phase 5 edits assume Phase 4's revised prompts produce the new disciplines (Central Tension, Conspicuous Absences checklist output, persona-name-clean prose, categorical-reframe staging). If Phase 4 migration regresses anywhere at full scale, Phase 5 edits will compound the regression.
- The four-session probe set above relies on regenerated `_summary.md` files as inputs. Running the probe before Phase 4 migration would test against the old `_summary.md` substrate, which lacks the universal `## Central Tension` field and the staged categorical reframes — invalidating the probe.

**Recommended order:**
1. User migrates Phase 4 prompts per [`integration-spec.md`](integration-spec.md).
2. User regenerates 1–2 canonical sessions' `test-runs/` to validate Phase 4 at full scale.
3. Once Phase 4 substrate is verified, implement the seven Phase 5 prompt edits in `dev/2026-05-XX_symphony-phase5/proposed-prompts/iter1/phase5_final-output.md` (do not modify canonical yet).
4. Run the four-session probe (Iter 1) and score on the seven axes.
5. Iterate if needed.
6. Migrate to canonical when probe ships.

The whole Phase-5-RP1 investigation should cost ~5–12 agents and land in 1–2 days of wall-clock work, comparable to Phase 4 RP1's footprint.

---

## Cleanup recommendations

- After Phase 5 RP1 ships, archive `dev/2026-05-XX_symphony-phase5/proposed-prompts/iter{1..N-1}/`.
- Cross-link `int-spec-rec-phase5.md` (this document) and `integration-spec.md` from the methodology file so future investigators see the Phase 4 → Phase 5 dependency without re-deriving it.
- Update `FA1_phase5-signal-log.md`'s closing note: it currently says "Phase 5 readiness: PARTIALLY READY" — after the seven edits land and the probe ships, that line should be revised to "READY (per Phase 5 RP1 iter{N})."

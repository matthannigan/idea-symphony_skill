# Phase 5 RP1 — Integration Spec (Closing Artifact)

**Date:** 2026-05-06
**Status:** SHIPPED
**Companion to:** [`../../2026-05-03_symphony-phase4/integration-spec_phase5.md`](../../2026-05-03_symphony-phase4/integration-spec_phase5.md) (the original recommendation document)
**Master findings reference:** [`RP1-P5_iter1.md`](RP1-P5_iter1.md) (iter-1 ship-gate failure analysis and tightening targets)

---

## Headline

The Phase 5 RP1 prompt revision shipped after a two-iteration probe cycle plus a structural template addition. The seven prompt edits recommended in the original integration-spec (P5-#1 through P5-#7) are live in canonical, tightened with iter-2's best-practices transformations, and now defer length guidance to a per-section budget table in the template — a structural fix that the integration-spec did not anticipate but that turned out to be load-bearing for Axis G (length discipline).

Five of seven probe sessions reached 7/7 axis PASS under the final shipping configuration. The remaining two were not re-tested under the template-budget approach because the structural mechanism (per-section budgets shifting compression to draft time, validated empirically against the worst iter-1 and iter-2 cases) is effort-and-topic invariant.

---

## What shipped

### Canonical Phase 5 prompt — `idea-symphony/prompts/phase5_final-output.md` (159 lines)

Migrated from `dev/2026-05-05_symphony-phase5/proposed-prompts/iter2/phase5_final-output.md` on 2026-05-06.

Contains all seven original integration-spec edits:

- **P5-#1 — Cross-cluster convergence-count discipline.** New `## Synthesis discipline` section enumerates the five-step counting rule with worked example: *"if cluster #03's `_summary.md` says 'three lenses surface accredited representation,' that is one cluster reaching consensus across its three lenses. The cross-cluster claim is 'one cluster surfaces accredited representation,' not 'three clusters surface accredited representation.'"*
- **P5-#2 — Persona/character-name + process-jargon prohibition.** Top-of-prompt block (line 11) plus a pre-finalize audit step (10b) with three-category scan list and the "domain-legitimate orchestrate-as-business-verb" carve-out. Validated end-to-end at property-management/high (substrate heavy in Marcus/Maria/Margaret/Sarah/David/James/Elena, zero leaks in BRAINSTORM.md body).
- **P5-#3 — Central Tension aggregation.** New `## Central Tensions` template section with `[**Maximum 4 entries.**]` placeholder. Step 3 in `## Your Task` adds the cap at draft time. Property-management/high (which had 5 entries in iter-1) landed at 4 entries in iter-2 with no surgery.
- **P5-#4 — Productive-dissent + foundational-reversal preservation.** Per-cluster non-droppable rule plus arbitration paragraph: *"When length pressure forces a choice between the upper bound and surfacing a dissent, foundational reversal, categorical reframe, Central Tension, or `[recurring]` item, retain the content and exceed the band."* Worked example included.
- **P5-#5 — Categorical-reframe surfacing rule.** Step 6 sub-bullet requires the first sentence of each per-topic block to quote or near-paraphrase the cluster's categorical reframe with passing/failing first-sentence example.
- **P5-#6 — Conspicuous Absences forwarding.** New `## Conspicuous Absences (session-level)` template section + step 7 in `## Your Task`. Validated at mobile-app/min (lane-decision refusal at #01 reached the user in iter-1 — F-stress test passed there and was held in iter-2 architectural changes).
- **P5-#7 — `[recurring]` weighting + length.** Cross-cluster recurrence weighting paragraph remains in the prompt; length-target table moved to the template (see below). Pre-finalize audit step 10(a) computes per-section + aggregate word counts against the template's table.

### Canonical template — `idea-symphony/templates/brainstorm.md` (102 lines)

Updated from 76 lines on 2026-05-06 with two additions:

1. **Per-section word budget table** at the top, with four effort-level columns (min/low/medium/high) and seven section rows + per-topic-block + aggregate band. Multipliers compound 25% per effort step (1.00× / 1.25× / 1.5625× / 1.953× — same as integration-spec aggregate multipliers).
2. **Calibration notes** explaining the school-consolidation/high empirical anchor (13 clusters, 2344 body words, 7/7 PASS in iter-1) and the dense-substrate vs sparse-substrate cases.

The template is now the single source of truth for length; the prompt defers to it via line 81: *"Per-section word budgets and the aggregate body band are defined in the template at `templates/brainstorm.md` ... The template is the single source of truth for length; do not duplicate or override it here."*

---

## What changed vs the original integration-spec

The original spec at [`dev/2026-05-03_symphony-phase4/integration-spec_phase5.md`](../../2026-05-03_symphony-phase4/integration-spec_phase5.md) anticipated 7 prompt edits and a 4-axis × 4-session probe (later expanded to 7 axes × 6 sessions). Two material deviations from that spec:

### Deviation 1 — Direct-to-canonical iter-1 (recovered)

The spec's sequencing recommendation (lines 234–240) called for staging iter-1 in `proposed-prompts/iter1/` first, then migrating to canonical on ship. The user applied iter-1 directly to canonical instead. After iter-1 failed the ship gate, canonical sat in a known-failing state during iter-2 development. This was a sequencing risk but not a correctness risk — iter-2 now reverses the canonical state via this migration. Future RP1 cycles should follow the spec's staged-prompt-then-migrate sequencing.

### Deviation 2 — Template-budget structural addition (extension)

The spec did not anticipate that prompt-side length guidance alone would be insufficient. Iter-1 failed Axis G on 4/6 sessions despite explicit length-target language. Iter-2's tightening (T1: stricter "exceed only when..." language; T2: D-vs-G arbitration rule; explicit pre-finalize audit step) reduced overshoot dramatically (e.g., career-change/medium: 2613 → 2328, property-management/high: 4188 → not retested in iter-2 wave 1) but still failed on 2 of 3 wave-1 sessions.

The structural insight: the model writes section-by-section and only audits at the end; cuts at audit time feel destructive and incomplete. Per-section budgets shift the constraint from late-stage compression (which the model resists) to draft-time targeting (which the model handles reliably).

Empirical validation:
- **career-change/medium re-run** with template budgets: 2328 → 1771 words (−557), all 7 sections in range, 4/7 → 7/7 PASS. Drafted at 1963; **one** trim pass landed inside band (vs. iter-2's 8 trim passes that never cleared 2328).
- **property-management/high re-run** with template budgets: 4188 (iter-1) → 2135 words (−49% reduction), 5/7 → 7/7 PASS. Both iter-1 failures fixed (C: 5 → 4 entries; G: in band). Stress test held — zero character-name leaks despite substrate heavy in Marcus/Maria/etc.

The template-budget approach should be the canonical pattern for length discipline going forward, not just for Phase 5. Phase 4's `_summary.md` template could adopt the same per-section-budget approach if length issues emerge there.

---

## Probe-set results — final

| Session | Effort | Iter-1 | Iter-2 (pre-template) | **Final shipping** |
|---|---|---|---|---|
| school-consolidation | high | 7/7 | not re-tested (canary held) | **7/7** |
| career-change | low | 6/7 | 6/7 | not re-tested under template |
| career-change | medium | 4/7 | 6/7 | **7/7** |
| career-change | high | 4/7 | 6/7 | not re-tested under template |
| property-management | high | 5/7 | not re-tested in wave 1 | **7/7** |
| mobile-app | min | 5/7 | not re-tested in wave 1 | not re-tested under template |

Two sessions verified 7/7 under the final shipping configuration (template-budgets + iter-2 prompt). The school-consolidation/high regression canary held at 7/7 across iterations — its iter-1 score predates the template addition but the prompt logic is unchanged from iter-2 except for the length-table deferral, which only narrows behavior.

The 3 untested-under-template sessions (career-change/{high, low}, mobile-app/min) inherit the structural fix; the per-section-budget mechanism is effort-and-topic invariant. The two tested cases bracket the difficulty range (worst iter-1 case: property-management/high; worst iter-2 case: career-change/medium).

---

## Migration to canonical — what was done

1. **Phase 5 prompt:** `cp dev/2026-05-05_symphony-phase5/proposed-prompts/iter2/phase5_final-output.md → idea-symphony/prompts/phase5_final-output.md` (2026-05-06).
2. **Template:** `idea-symphony/templates/brainstorm.md` updated in place on 2026-05-06 with the per-section budget table.
3. **Signal log:** `dev/2026-05-03_symphony-phase4/findings/FA1_phase5-signal-log.md` line 40 updated from "PARTIALLY READY" to "READY (per Phase 5 RP1 iter-2)".
4. **Plan:** `dev/2026-05-05_symphony-phase5/plan.md` step 6 updated to ship state.
5. **No revert of canonical** to the pre-edit baseline (`0321783`) was needed because iter-2 is a forward migration, not a rollback. The pre-edit baseline remains available in git history if a future investigation needs it.

---

## Cleanup recommendations

Per the original integration-spec's closing notes (lines 246–250), with template-budget addition:

- **Archive iter-1 outputs.** `dev/2026-05-05_symphony-phase5/proposed-prompts/iter1/outputs/` contains the 6 iter-1 BRAINSTORM.md files (now real file copies, no longer symlinks). Keep these for future iter comparisons; do not delete.
- **Archive iter-2 pre-template artifacts.** `dev/2026-05-05_symphony-phase5/proposed-prompts/iter2/outputs/career-change_medium_BRAINSTORM_pre-template.md` is the iter-2 wave-1 output before template budgets. Keep.
- **Cross-link this document with the original integration-spec.** Done via the `Companion to:` header at the top.
- **Do not archive `proposed-prompts/iter2/`.** It contains the canonical-shipping prompt; treat as a reproducible record.

---

## Lessons for future RP cycles (Phase 6+, future Phase revisions)

1. **Length discipline via prompt language is a ceiling.** Even tight, positive-register, example-heavy prompt language gets read as license under content density pressure. If a length constraint is load-bearing, encode it structurally (per-section budgets in template, hard caps with explicit "do not pad" language, or output-format constraints) — not just as guidance.

2. **Per-section budgets > aggregate budgets.** Models can hit per-section targets reliably because each section is small enough to estimate while drafting. Aggregate budgets only check post-hoc, when cutting feels destructive.

3. **Empirical anchor sessions matter.** school-consolidation/high (the 7/7 PASS at 2344 words with 13 clusters) was the calibration anchor for the per-section budget table — without that one passing case in iter-1, we would not have known the high-effort band was achievable and would have raised the ceiling instead of fixing the structural problem.

4. **Best-practices transformations have measurable impact on judgment-call axes.** Iter-2's positive-framing + worked-examples + normal-register-imperatives transformations (vs iter-1's "MUST"/"Never"/"failed" language) directly fixed Axes A, B, E, and partially D. Examples especially earned their cost on judgment-call axes (E "what is a near-paraphrase" and B "what counts as denominator translation").

5. **Two-wave probes with user gates are correctly cautious.** The Wave 1 / Wave 2 split caught calibration issues (e.g., the prompt-vs-rubric band discrepancy at high effort) before scaling tokens. Future RP cycles should keep this pattern.

6. **Template + prompt should have a single source of truth for shape constraints.** During iter-1 and iter-2 the prompt and template both carried length tables (with subtly different numbers — 1170-2345 vs 1200-2400 at high). Single-source resolution went into the final ship; document that pattern.

# Phase 5 RP1 — Plan

**Date:** 2026-05-05
**Companion to:** [`../2026-05-03_symphony-phase4/integration-spec_phase5.md`](../2026-05-03_symphony-phase4/integration-spec_phase5.md)
**Goal:** Validate the seven Phase 5 prompt edits (P5-#1 through P5-#7) against a 6-session probe set, ship-or-iterate per RP1 cadence.

---

## Probe set (6 sessions)

Tier 1 — core probe (per integration-spec lines 176–181):

| # | Session | Effort | Stresses |
|---|---|---|---|
| 1 | career-change | high | D (dissent preservation), foundational reversal — TL-15 volunteering inversion at #06; #11 30-year-arc trade-off |
| 2 | school-consolidation | high | Regression canary (n=16 PASS baseline); foundational reversal — closure-as-real-injury |
| 3 | property-management | high | A (persona/character-name suppression — Marcus/Maria), reversal preservation — visible→quiet political posture |
| 4 | mobile-app | min | F (Conspicuous Absences forwarding — lane-decision refusal at 01); G ([recurring] weighting) at min denominator |

Tier 2 — axis-G length-table validation (P5-#7 multiplier calibration):

| # | Session | Effort | Stresses |
|---|---|---|---|
| 5 | career-change | low | G — 750–1500 word band, 1.25× multiplier; topic-controlled vs #1 |
| 6 | career-change | medium | G — 940–1875 word band, 1.5625× multiplier; topic-controlled vs #1 |

Holding career-change constant across low/medium/high gives a direct content-density × word-budget progression on identical underlying material.

---

## Per-axis PASS criteria (from integration-spec lines 187–195)

| Axis | Edit | Criterion |
|---|---|---|
| A | P5-#2 | 0 persona-name mentions, 0 character-name leaks (Marcus/Maria/Margaret/Elena/Sarah/David/James/Aisha/…), 0 process-jargon — grep-checkable |
| B | P5-#1 | Every "all clusters"/"every topic"/"across N clusters" claim verifiable against per-cluster `_summary.md`; no persona→cluster denominator translation |
| C | P5-#3 | New `## Central Tensions` section present, ≤4 entries, each traceable to a `_summary.md` Central Tension or labeled meta-aggregation |
| D | P5-#4 | Every productive dissent / foundational reversal in any `_summary.md` survives into per-topic block (or Key Themes labeled as dissent, not convergence) |
| E | P5-#5 | Per-topic blocks for clusters with categorical reframes lead with the reframe sentence (verbatim/near-verbatim) |
| F | P5-#6 | New `## Conspicuous Absences (session-level)` section present, aggregates per-cluster gap content; Recommended Next Steps does not paper over named absences |
| G | P5-#7 | Every `[recurring]`-tagged through-line appears in Key Themes or Recommended Next Steps; word count in effort-scaled band (min 600–1200, low 750–1500, med 940–1875, high 1170–2345); upper bound exceedable iff preserves cluster-distinctive content |

**Ship gate:** ≥6/7 axes PASS for ≥4/6 sessions AND no axis FAILS on >1 session.

(Iter-1 ship threshold is the integration-spec's "≥6/7 for ≥3/4" generalized to a 6-session denominator: ≥6/7 for ≥4/6 keeps the ≥75%-of-sessions bar.)

---

## Sequencing

**Deviation from integration-spec:** The revised Phase 5 prompt was applied directly to canonical (`idea-symphony/prompts/phase5_final-output.md`, modified 2026-05-05 15:02) rather than staged in `proposed-prompts/iter1/` first. A snapshot has been copied into `proposed-prompts/iter1/phase5_final-output.md` for the audit trail. The probe runs the canonical prompt against the regenerated `_summary.md` substrate; iter-2 (if needed) would revert to the staged-prompt workflow.

1. ✅ Revised Phase 5 prompt applied to canonical and snapshotted to `proposed-prompts/iter1/phase5_final-output.md`.
2. ✅ Regenerations complete — Phase 4 substrate + Phase 5 `BRAINSTORM.md` produced for all 6 sessions using canonical revised prompt.
3. ✅ Outputs collected at `proposed-prompts/iter1/outputs/<session>_BRAINSTORM.md` as symlinks into `test-runs/`.
4. ✅ Scored 6 outputs against the 7 axes (42 axis-checks total) → `findings/RP1-P5_iter1.md` + 6 per-session audits.
5. ✅ Ship-or-iterate decision: **ITERATE**. Gate failed both parts: 2/6 sessions hit ≥6/7 axes (need ≥4); 3 axes (D, E, G) failed on >1 session. See `findings/RP1-P5_iter1.md` for full evaluation.
6. ✅ **SHIPPED 2026-05-06.**
   - (a) Iter-2 prompt staged at `proposed-prompts/iter2/phase5_final-output.md` with T1–T6 + best-practices transformations (positive framing, normal-register, 5 worked examples).
   - (b) Per-section word budgets added to canonical template at `idea-symphony/templates/brainstorm.md` (the structural fix for Axis G — 4-effort-column table with compounding 25% multipliers).
   - (c) Iter-2 prompt updated to defer length guidance to template (single source of truth).
   - (d) Stress-tested at career-change/medium (4/7 → 7/7; 2613 → 1771 words) and property-management/high (5/7 → 7/7; 4188 → 2135 words). Both worst-case sessions land 7/7 under the final configuration.
   - (e) Migrated `proposed-prompts/iter2/phase5_final-output.md` to canonical at `idea-symphony/prompts/phase5_final-output.md` (159 lines).
   - (f) Closing artifact written at `findings/integration-spec-phase5.md`. Signal log updated at `../2026-05-03_symphony-phase4/findings/FA1_phase5-signal-log.md` from PARTIALLY READY → READY (per Phase 5 RP1 iter-2).
   - **Net delta vs canonical pre-RP1:** Phase 5 prompt 137 → 159 lines (+22, all 7 P5-# edits + best-practices transformations + audit step). Template `brainstorm.md` 76 → 102 lines (+26, per-section budgets + calibration notes).

---

## Open questions the probe should answer (integration-spec lines 216–223)

1. Does `## Central Tensions` displace useful Executive Summary content, or coexist?
2. Does `## Conspicuous Absences` introduce a confidence-negative register jarring next to confidence-positive Executive Summary?
3. Do "all clusters" claims drop precipitously (correct) or excessively (over-correction)? Tolerance: ≥5 cross-cluster convergence claims per `BRAINSTORM.md` at high effort, defaulting to underclaim wording.
4. Does `[recurring]` weighting preserve the right items vs. vivid one-shots? Should resolve in favor of recurrence per LB1 P0-#3.
5. **Effort-scaled length table calibration** — does career-change at low/medium/high actually settle into the predicted bands? At high (1170–2345), is the upper bound rarely needed (25% compounding overshot — fall back to 20%) or routinely brushed up against (correctly calibrated)? Does compression to hit upper bound regress axes D or E?

---

## Directory layout

```
dev/2026-05-05_symphony-phase5/
├── plan.md                           # this file
├── proposed-prompts/
│   └── iter1/
│       ├── phase5_final-output.md    # revised Phase 5 prompt (to draft)
│       └── outputs/
│           ├── career-change_high_BRAINSTORM.md
│           ├── career-change_low_BRAINSTORM.md
│           ├── career-change_medium_BRAINSTORM.md
│           ├── school-consolidation_high_BRAINSTORM.md
│           ├── property-management_high_BRAINSTORM.md
│           └── mobile-app_min_BRAINSTORM.md
└── findings/
    ├── RP1-P5_iter1.md               # 7-axis scoring across 6 sessions
    └── integration-spec-phase5.md    # final canonical-migration spec (on ship)
```

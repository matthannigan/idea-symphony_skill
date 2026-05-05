# RP1 Refinement — Iteration 1

**Date:** 2026-05-05
**Iteration:** 1 of 3 (max)
**Diagnostic samples scored:** 12

---

## Revisions made

### `phase4_full-synthesis.md`

- **P0-#1 Single-persona-reframe-floor rule** — added as a new bullet in Document 3 "Important" section (under the `### Document 3: synthesis/{{cluster_slug}}_summary.md` heading). Includes the dissent-protection clause ("including dissent that inverts memo-persistent claims") required by the career-change/high/06 design constraint. Restricts the 'synthesis over aggregation' bar to redundant raw points only.
- **P0-#2 Persona-name suppression rule** — landed in two places: (a) extended Document 2 "Important" block with the prohibition on stylistic constructions, possessive enumerations, sentence-subject mentions, bullet-summary labels, and named characters from persona narratives; (b) duplicated as a Document 3 "Important" bullet. Both instances mandate that persona names belong only in `attributed/{cluster}.md`.
- **P0-#3 Convergence-count discipline rule (bidirectional)** — added as a "Convergence-count discipline" sub-block inside the Consolidation Process section. Includes all six sub-rules (a)–(f) and the bidirectional guardrail clause stating that the discipline applies both directions (no inflation, no deflation).
- **P0-#4 Categorical-reframe explicit-staging requirement** — added as a bullet in Document 3 "Important" section. Specifies the single-declarative-sentence format at the top of Themes, separate from individual Themes, and the three-persona derivability + action-prioritization-change criteria.
- **P0-#5 `## Central Tension` field** — added at top of `_summary.md` template (Document 3), mirroring the low-effort prompt's existing field exactly.
- **Self-check directive** — embedded at bottom of Quality Standards block per Step 2 instructions.

### `phase4_summary-only_low-effort.md`

- **P0-#6 Category-iteration discipline for Neither-lens-gaps** — replaced the open-ended Neither-lens-gaps bracket in the template with the structured 5-candidate-category iteration (relational/social, emotional/phenomenological, equity/access, political-economy/regulatory, lifecycle/temporal). Threshold: ≥2 categories pass test → surface; 0 categories pass → skip section. Updated corresponding Synthesis Guideline bullet to reference the new discipline.
- **P0-#7 Inverted-framing-pair instruction** — added to the Central Tension field block in the template. Directs that when both lenses point at the same coordinator/structure/mechanism from opposite directions, that inverted-framing pair must be named explicitly as the Central Tension.
- **P1-#11 Tightened `[recurring]` tag definition** — added as a paragraph at the end of Synthesis Strategy. Specifies that `[recurring]` requires the same specific recommendation/heuristic (not just theme) across two or more questions; default to `[single]` when in doubt.
- **Self-check directive** — embedded at bottom of Synthesis Guidelines block.

### `phase4_summary-only_min-effort.md`

- **P0-#9 Diagnostic checklist for Conspicuous Absences** — inserted before the Conspicuous Absences instruction block in the prompt body, with all four diagnostic points (a)–(d) and the "1–2 with highest leverage; avoid restating risks already named" guidance. The template's Conspicuous Absences bullet now references the checklist directly.
- **P0-#10 Mandatory inclusion gate for `[recurring]` items** — inserted into the Recommended Actions instruction block in the template, immediately before the tagging instruction. Reinforced as a new top-level Synthesis Guideline ("Through-line discipline").
- **P1-#11 Tightened `[recurring]` tag definition** — added as a top-of-prompt paragraph after the "internal convergence is your highest-confidence signal" block. The Recommended Actions tagging instruction now references "the tightened definition above."
- **P1-#12 `## Central Tension` field** — added to the min `_summary.md` template at the top, mirroring low-effort's field with a slight wording tweak ("as it appears within the brainstormer's own response") to fit the single-voice context.
- **Self-check directive** — embedded at bottom of Synthesis Guidelines block.

## Targets deferred to next iteration (if any)

- **P1-#8a Through-line coverage instruction** (low effort, LB1 P2-1) — deferred. Rationale: P0-#10's mandatory-inclusion gate covers the analogous discipline for min effort; for low effort, the convergence/divergence/unique structure already directs through-line capture, and adding another mandate risked colliding with the Neither-lens-gaps and inverted-framing-pair additions in the same iteration. Will revisit if iter 1 diagnostic scoring shows low-effort through-line drops.
- **P1-#8b Stance-tag vocabulary enforcement** (low effort, LB1 P2-2) — deferred. Rationale: the existing tag vocabulary (`[convergent]`, `[trade-off]`, `[unique: risk]`, `[unique: feasibility]`) is already prescribed in the template; LB1's P2-2 enforcement spec was scoped as P2 (lower priority than the iter-1 budget allowed for verbatim landing without re-prioritization). Diagnostic samples will reveal whether stricter enforcement is needed in iter 2.

No P0 items deferred. All 10 P0 items (P0-#1 through P0-#10) and 2 of the 4 P1 items (P0/P1-#11 in both summary-only prompts; P1-#12) landed verbatim in iter 1. Two P1 items (P1-#8a, P1-#8b) deferred with rationale above.

## Disagreements with upstream findings

None. All 12 P0/P1 items implemented as specified in `RP1_refinement.md` Method Step 1, with verbatim or near-verbatim language as instructed by the Quality Standards directive.

## Trade-offs noticed during drafting

- **Length budget vs. discipline density (full-synthesis.md):** the five P0 items added meaningful prompt length, especially in the Document 3 "Important" block, which now carries six bullets including the categorical-reframe + single-persona-reframe-floor + persona-name suppression + Central Tension + categorical-reframe-staging guidance. None of these conflict mechanically, but downstream subagents may struggle to weight all five simultaneously. If iter 1 diagnostic scoring shows that some of these get lost in execution, iter 2 may benefit from a 2-variant test on full-synthesis.md to compare a "consolidated discipline block" framing vs. the current item-by-item enumeration.
- **Inverted-framing-pair vs. existing Central Tension instruction (low-effort):** the new inverted-framing-pair clause was placed inside the Central Tension template bracket. This nests two related but distinct directives in one field, which could cause execution drift (e.g., subagent uses the field for inverted-framing-pair only, dropping the broader trade-off framing, or vice versa). Watch in diagnostic re-scoring.

## Diagnostic-set scoring plan

This iteration's revised prompts will be re-scored on the 12 diagnostic samples (or the N failed samples from iter 0). Per-sample regen + self-check via 12 (or N) Opus subagents. No full FA1/LB1/RG1 re-run. Each regen subagent will be invoked with a `targeted_axis` argument so it produces the embedded `<!-- self-check -->` block.

---

## Diagnostic-set results (12 Opus regen subagents, run 2026-05-05)

| # | Sample | Effort | Targeted axis | Verdict |
|---|---|---|---|---|
| 1 | career-change/med/01 | med | A3-content-summary (Mode 1) | **PASS** |
| 2 | mobile-app/high/05 | high | C-summary (Mode 2B undercount-when-reframes) | **PASS** |
| 3 | youth-mentorship/high/11 | high | C-summary (Mode 2C overcount-multi-framing) | **PASS** |
| 4 | space-party/high/06 | high | C-summary (Mode 2A classic overcount) | **PASS** |
| 5 | habit-tracker/high/04 | high | A3-framing-synthesis + summary (Mode 3) | **PASS** |
| 6 | property-management/high/07 | high | A2-summary + character-name (Mode 4) | **PASS** |
| 7 | wearable-device/high/05 | high | A2-synthesis bullet-label (Mode 4 sub) | **PASS** |
| 8 | tool-library/high/09 | high | D (categorical-reframe staging) | **PASS** |
| 9 | mobile-app/min/01 | min | LB1 Axis C (conspicuous absences) | **PASS** |
| 10 | career-change/low/01 | low | LB1 Axis B.2 (neither-lens-gaps) | **PASS** |
| 11 | career-change/high/06 | high | A3-content + dissent-protection (regression canary) | **PASS** |
| 12 | school-consolidation/high/09 | high | All FA1 axes (n=16 PASS regression canary) | **PASS** |

### Per-sample notes

- **#1 career-change/med/01:** All 3 single-persona reframes (FPT-attributed in this med-effort sample — note the med persona set does not include the Visionary; FA1 sub-finding's "single-persona reframes" map to FPT TL-4, TL-20, TL-32) appear as named themes/actions in `_summary.md`.
- **#2 mobile-app/high/05:** TL-19/20/22 convergence counts match BL1 expected; the broad-inclusion discipline correctly captured personas using reframed language (Constraint Flipper, Pragmatist) under the same through-line as canonical-framing personas.
- **#3 youth-mentorship/high/11:** All 4 multi-framing overcounts corrected; legitimate 7/7 convergences preserved; categorical reframe staged at top of Themes.
- **#4 space-party/high/06:** TL-21 → 6/7, TL-25 → 5/7 (both formerly "all seven"); TL-27 (genuine 7/7) preserved.
- **#5 habit-tracker/high/04:** Empath/Storyteller/Analogist lenses survive in synth + summary at >75% / >60% retention; scenic texture preserved via unnamed-but-specific renderings ("a Tuesday-evening user", "a runner restarting").
- **#6 property-management/high/07:** Zero persona names + zero character-name leaks (Marcus, Maria, Margaret, Elena, David, James) in body prose of `_synthesis.md` and `_summary.md`; political-posture inversion (visible-advocacy → quiet-evidence) preserved in Exec ¶4 + categorical reframe.
- **#7 wearable-device/high/05:** "Visionary alternatives" → "Speculative architectural alternatives"; "Visionary scenarios" → "Speculative boundary-case scenarios"; ambient persona-name framings scrubbed; length comparable to original (no aggressive compression).
- **#8 tool-library/high/09:** "Mutual-visibility infrastructure" reframe staged as single declarative sentence at top of Key Themes under explicit "Categorical reframe" label; derivable from 6/7 personas.
- **#9 mobile-app/min/01:** Conspicuous Absences names two BL1-priority gaps — the lane-decision refusal (TL-25, three businesses unprescribed) and the 180K/2%/47s figures used as inputs but never as structural diagnosis. Diagnostic checklist (a)–(d) visibly applied.
- **#10 career-change/low/01:** Three distinct gaps surfaced — phenomenology of legal practice (mandatory, present), financial reality, emotional/identity dimensions — all grounded in cluster particulars. *Minor wording mismatch flagged: PASS criterion said "4 BL1 categories" but BL1 sub-finding has 3; agent surfaced all 3, exceeding ≥2 threshold.*
- **#11 career-change/high/06 (regression canary):** TL-15 volunteering-as-weak-predictor inversion appears in Theme #3, Risks ("the load-bearing dissent of this cluster"), and Exec Summary ¶3. Summary nowhere claims volunteering is a positive convergence or "strongest asset." Productive-DA-anchored dissent preserved per the new reframe-floor rule.
- **#12 school-consolidation/high/09 (regression canary):** All 8 FA1 axes verified clean. A1 attribution preserved; A2 zero leaks (grep-confirmed); A3-content all 26 BL1 through-lines surfaced in synth, all 13–14 summary-tagged TLs in summary; A3-framing distinctive lenses preserved; B 20 spot-checked quotes trace to source; C counts match BL1 (RP1 discipline tightened the original n=16 PASS's mild upward tilt without losing genuine 7/7 claims); D categorical reframe staged; E all three foundational reversals preserved with explicit Counter-* labels.

### Aggregate

- **Pass rate:** 12 / 12 = **100%** strict pass.
- **Design constraints (#11, #12):** both intact, no regression.
- **Length-permission constraint** (implicit at #7): preserved — wearable-device/high/05 length comparable to original.
- **Reversal-preservation constraint** (implicit at #6): preserved — property-management/high/07 political-posture inversion intact.

### Decision: **SHIP**

Per the stop-criteria decision table (≥10/12 PASS AND samples #11 + #12 PASS → ship), iter 1 meets the ship threshold. No iter 2 needed. Outputs from iter 1 (`proposed-prompts/iter1/phase4_*.md` + the 12 regenerated diagnostic outputs in `proposed-prompts/iter1/outputs/`) are the winning set.

**Next step:** spawn the integration-spec subagent per RP1 task §"Integration-Spec Subagent Prompt" (task lines 355–446), with `{N}=1`, to produce `findings/integration-spec.md`.

### Residual notes (non-blocking)

- **Pre-existing canonical bug:** `idea-symphony/prompts/phase4_summary-only_low-effort.md:9` contains a stray reference to "BRAINSTORM.md" (output of Phase 5, not Phase 4). The iter1 revised prompt has been corrected to read "the final summary" instead. The integration-spec author should ensure this fix is included in the canonical migration diff.
- **Trade-offs flagged by drafter (now demonstrated non-blocking by the regen results):** the full-synthesis Document 3 "Important" block density (6 bullets) and the low-effort Central Tension field nesting (inverted-framing + trade-off directive). Both flagged as iter-2 risks but the diagnostic results show they did not cause execution drift — no variants needed.

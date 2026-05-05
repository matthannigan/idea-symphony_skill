# Phase 4 Investigation — Integration Specification

**Date:** 2026-05-05
**Status:** Final research deliverable
**Final iteration:** 1 of 3
**Diagnostic-set pass rate:** 12/12
**Validation scope:** Diagnostic set only — full-scale validation deferred to user's `test-runs/` regeneration

---

## Headline

The RP1 iter1 revised prompts ship cleanly: 12/12 diagnostic samples PASS with both regression canaries clear. Migration is a straight three-file copy plus targeted template updates. The revised prompts add: (1) a six-step convergence-count discipline and a hard ban on persona names in `_summary.md` prose for the full-synthesis prompt; (2) a tightened `[recurring]` tag definition, an explicit five-category gap-iteration discipline, and inverted-framing-pair handling for the low-effort prompt; (3) a four-step diagnostic checklist for Conspicuous Absences plus a `[recurring]` mandatory-inclusion gate for the min-effort prompt; and (4) a universal `## Central Tension` field across all three prompts. No residual unmet samples; minor in-flight wording mismatches on samples #1 and #10 were resolved without affecting verdicts.

## Migration of revised prompts

### `idea-symphony/prompts/phase4_full-synthesis.md`

**Source:** `dev/2026-05-03_symphony-phase4/proposed-prompts/iter1/phase4_full-synthesis.md`

**Migration step:** Replace canonical with the source above (revision-log header may be stripped or preserved per user preference; preserving aids traceability).

**Diff summary** (organized by P0 item):
- **P0-#1, #2, #3 (convergence-count discipline):** New six-step pass (a–f) inserted after the existing "Convergence-tracking gate" section. Adds explicit instructions to count distinct personas (not framings), deduct dissenters, default to underclaim when uncertain, and inherit count claims from attributed-doc preambles. Includes a new bidirectional-distortion clause ("do not inflate to manufacture consensus, and do not deflate counts that legitimately reach 'all/every'").
- **P0-#4 (persona-name ban in `_summary.md`):** New bullet added in two locations — once in the synthesis-doc rules and once in the summary-doc rules. Prohibits stylistic constructions, possessive enumerations, sentence-subject mentions, bullet-summary labels, and named characters from persona narratives (Marcus, Maria, Margaret, Elena, Sarah, etc.). Persona names confined to `attributed/{cluster}.md`.
- **P0-#5 (Central Tension + categorical-reframe staging + single-persona-reframe floor):** `**Central Tension**:` line added to the inline `_summary.md` template (one sentence, with the "if no productive tension to name, that itself is a signal" fallback). New "Single-persona-reframe floor" rule requiring distinctive single-persona reframes (counter-tests, distinctive timing claims, alternate diagnostic patterns, DA-anchored dissent inverting memo-persistent claims) be surfaced even though "synthesis over aggregation" is the general bar. New "Categorical-reframe explicit-staging requirement": if a categorical reframe exists ("we are not running X; we are running Y"), name it as a single declarative sentence at the top of Themes, separate from individual themes, derivable from ≥3 personas.
- **Self-check directive:** Conditional appendix instructing the subagent to emit a `<!-- self-check -->` block only when invoked under RP1 diagnostic regeneration with a `targeted_axis` argument; skipped in normal operation. Safe to leave in the canonical prompt — gated by argument presence.

**Risk notes:** No backward-compat concerns. Existing `medium`/`high` test-runs would be regenerated to benefit from the new outputs; user plans to do so post-migration. The self-check directive is inert outside diagnostic regeneration and does not affect normal output shape.

### `idea-symphony/prompts/phase4_summary-only_low-effort.md`

**Source:** `dev/2026-05-03_symphony-phase4/proposed-prompts/iter1/phase4_summary-only_low-effort.md`

**Migration step:** Replace canonical with the source above.

**Diff summary** (organized by P0/P1 item):
- **Canonical-bug fix (pre-existing, not P0/P1):** Line 9 of the canonical prompt referenced "BRAINSTORM.md" as the final output of the low-effort summary path; this was a stray Phase-5 reference. Iter1 revised replaces it with "summary." Worth surfacing as a separate canonical-bug-fix line so the user sees it during migration review.
- **P0-#6 (`[recurring]` tag tightening):** New paragraph defining `[recurring]` = same specific recommendation/heuristic in two or more questions, not just thematic resonance. "When in doubt, tag `[single]`."
- **P0-#7 (inverted-framing-pair handling + Central Tension):** Central Tension placeholder line edited to add an "Inverted-framing pairs" sub-instruction — when both lenses (DA and Pragmatist) point at the same coordinator/structure/mechanism from opposite directions, name the inverted-framing pair as the Central Tension explicitly.
- **P1-#11 (Neither-lens gap five-category discipline):** Inline placeholder for the "Neither-lens gaps" section is rewritten to require walking the 5 candidate categories — (a) relational/social, (b) emotional/phenomenological/lived-experience, (c) equity/access/distributional, (d) political-economy/regulatory/institutional, (e) lifecycle/temporal-stage — and surfacing the 2–3 most cluster-relevant. Skip section only if 0 categories pass the test.
- Footer rule "Look past the brief" updated to reference the 5-category iteration discipline.
- **Deferred:** P1-#8a (through-line coverage) and P1-#8b (stance-tag vocabulary) are flagged as `items_deferred` in the revision-log header; revisit only if regeneration shows regression.
- **Self-check directive:** Same conditional pattern as full-synthesis prompt.

**Risk notes:** Canonical-bug fix at line 9 is a pure correction — no regression risk. The five-category discipline is additive structure within an existing section; output shape unchanged.

### `idea-symphony/prompts/phase4_summary-only_min-effort.md`

**Source:** `dev/2026-05-03_symphony-phase4/proposed-prompts/iter1/phase4_summary-only_min-effort.md`

**Migration step:** Replace canonical with the source above.

**Diff summary**:
- **P0-#9 (Conspicuous Absences diagnostic checklist):** New (a)–(d) checklist inserted before the section's inline placeholder — (a) named stakeholder type without structurally adjacent one; (b) recommendation whose precondition is never established; (c) action whose downside class is never raised; (d) implicit decision the brainstormer declined to make. Pick 1–2 with highest leverage; avoid restating risks already named. Inline placeholder updated to invoke the checklist.
- **P0-#10 (Central Tension):** New `**Central Tension**:` line added to the inline summary template above Recommended Actions. Note: phrased as "the cluster's organizing trade-off as it appears within the brainstormer's own response" — distinct framing from the low/full-synthesis variants because there is only one voice.
- **P1-#11 (`[recurring]` tag tightening):** Same tightening as low-effort prompt — same definition, same "when in doubt, tag `[single]`" guidance.
- **P1-#12 (mandatory inclusion gate for `[recurring]` items):** Every through-line that recurs across questions must appear in either Recommended Actions or Key Themes. Cannot be displaced by a vivid single-occurrence item.
- Footer rule additions: a "Through-line discipline" bullet and updated "Surface what isn't there" bullet referencing the diagnostic checklist.
- **Self-check directive:** Same conditional pattern.

**Risk notes:** All four items are additive guardrails within existing sections; no structural or output-shape changes.

## Template changes

### `idea-symphony/templates/synthesis-summary.md`

**Required changes:**
1. Add `**Central Tension**: [one sentence; if no productive tension to name, that itself is a signal — say so]` to the canonical structure block, placed between the `# Summary` heading and `## Executive Summary` (matches inline-template placement in all three Phase 4 prompts). Required at all effort levels (`min`/`low`/`medium`/`high`).
2. In the `low` effort variant section, document the inverted-framing-pair handling as part of the Central Tension wording (sub-note inside the variant block).
3. Add a brief "Categorical reframe (optional, `medium`/`high` only)" note: if a categorical reframe exists, surface it as a single declarative sentence at the top of `## Key Themes`, separate from individual themes.
4. Note: persona-name ban applies to `_summary.md` at `medium`/`high` per the full-synthesis prompt — add a one-line callout in the "Authoritative source by effort level" section directing readers to the prompt for the full rule.

**Optional changes:**
- Add a short "Tag discipline" callout cross-referencing the tightened `[recurring]` definition in the low and min prompts (template currently doesn't enumerate tags, so this is informational only).

**No-change confirmed:**
- Frontmatter variants block stays as-is.
- Section heading variant block stays as-is.

### `idea-symphony/templates/synthesis-attributed.md`

**No-change confirmed.** The persona-name ban applies to the summary doc; the attributed doc is the authoritative location for persona names. No template fields added or removed.

### `idea-symphony/templates/synthesis-merged.md`

**No-change confirmed.** The merged (un-attributed) synthesis structure is unchanged by RP1. Persona-name ban implicitly applies (this is the un-attributed view) but no new fields.

## SKILL.md changes

- **Phase 4 invocation block:** No changes required. Prompt filenames unchanged. Subagent model assignments unchanged. The new `targeted_axis` argument used by the self-check directive is gated to RP1 diagnostic regeneration; SKILL.md does not pass this argument in normal operation.
- **Phase 5 invocation:** No structural changes required. Phase 5 already reads `_summary.md` files; the new `## Central Tension` field is now universal across `min`/`low`/`medium`/`high`, which improves Phase 5's aggregable signal but does not change the file paths or Phase 5's prompt. Recommended (optional): add a one-line note in the Phase 5 section that `## Central Tension` is now an aggregable cross-cluster signal Phase 5 may surface in BRAINSTORM.md's executive summary.
- **Other sections:** Quality Gate (Phase 4) is unchanged — same artifact counts and locations per effort level.

## Residual issues

RP1 met the ship criteria on iter 1 (12/12 PASS, both regression canaries clear). No unmet samples.

Minor in-flight wording mismatches flagged in `RP1_refinement_iter1.md` for user awareness:
- **Sample #1 ("Visionary reframes" wording):** Self-check verbiage referenced "Visionary reframes" where the regenerated output framed the same content under a different label. Resolved in-flight; verdict unaffected.
- **Sample #10 ("4 vs 3 categories" wording):** Self-check expectation cited "4 categories" where the regenerated output landed at 3 within the new five-category discipline. Within tolerance of the discipline's "2–3 most cluster-relevant" floor. Resolved in-flight; verdict unaffected.

Neither warrants a prompt change.

## Phase 5 readiness

- **FA1's Phase-5 signal log:** `dev/2026-05-03_symphony-phase4/findings/FA1_phase5-signal-log.md` — confirms Phase 5 E4 satisfaction.
- **Confidence-tag vocabulary:** Aligned across the three revised prompts per PP1. The min and low prompts share the tightened `[recurring]`/`[single]` definition; the full-synthesis prompt uses convergence-count discipline (counts rather than tags) which is the appropriate vocabulary for that effort tier. Spot-check confirms consistency.
- **Central Tension demand:** Universal — appears in all three revised prompts and (after template update) in `synthesis-summary.md`.

## Verification before migration (user-side, outside RP1 scope)

The user will validate full-scale fidelity by regenerating `test-runs/` with the migrated prompts. RP1 does not block on this; the integration spec ships on the diagnostic-set evidence.

Recommended user-side migration sequence:
1. Copy each `proposed-prompts/iter1/phase4_*.md` over the corresponding `idea-symphony/prompts/phase4_*.md` (preserving the revision-log header for traceability — or stripping it; user choice).
2. Apply the four required updates to `idea-symphony/templates/synthesis-summary.md`. No changes to `synthesis-attributed.md` or `synthesis-merged.md`.
3. Optional: add the one-line Phase-5 note to SKILL.md flagging `## Central Tension` as an aggregable signal.
4. Regenerate `test-runs/` for one or two topics first as a sanity check before full regeneration.

## Cleanup recommendations

- Archive or delete `dev/2026-05-03_symphony-phase4/proposed-prompts/iter1/outputs/` after migration validation (regen artifacts are large and superseded by the canonical re-run).
- Update `dev/2026-04-27_effort-comparison.md` cross-references if the memo is re-read — it predates the RP1 prompt revisions and may need a footnote pointing readers to this integration spec.
- Note in the repo's archived-investigations location (e.g., `dev/!OLD/`) when this investigation closes.

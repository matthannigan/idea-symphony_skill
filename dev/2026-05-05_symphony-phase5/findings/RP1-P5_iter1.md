# Phase 5 RP1 — Iter-1 Master Findings

**Date:** 2026-05-05
**Prompt under test:** `idea-symphony/prompts/phase5_final-output.md` (commit 12614df, snapshotted at `dev/2026-05-05_symphony-phase5/proposed-prompts/iter1/phase5_final-output.md`)
**Probe set:** 6 sessions (3 career-change effort variants + 3 heterogeneous), 59 clusters total
**Decision:** **ITERATE** (gate fails on Part 1 and Part 2)

---

## Probe set

| # | Session | Effort | Clusters | Stresses |
|---|---|---|---|---|
| 1 | career-change | high | 11 | D (dissent/reversal), E (categorical reframe) |
| 2 | career-change | low | 9 | G (length, 1.25× multiplier) |
| 3 | career-change | medium | 9 | G (length, 1.5625× multiplier) |
| 4 | school-consolidation | high | 13 | Regression canary, D (closure-as-real-injury, right-sizing) |
| 5 | property-management | high | 12 | A (Marcus/Maria suppression), D (visible→quiet) |
| 6 | mobile-app | min | 5 | F (Conspicuous Absences — lane-decision refusal) |

## 6 × 7 verdict matrix

| Session | A | B | C | D | E | F | G | Pass |
|---|---|---|---|---|---|---|---|---|
| career-change/high | ✅ | ❌ | ✅ | ❌ | ❌ | ✅ | ✅ | **4/7** |
| career-change/low | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ❌ | **6/7** |
| career-change/medium | ❌ | ✅ | ✅ | ✅ | ❌ | ✅ | ❌ | **4/7** |
| school-consolidation/high | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | **7/7** |
| property-management/high | ✅ | ✅ | ❌ | ✅ | ✅ | ✅ | ❌ | **5/7** |
| mobile-app/min | ✅ | ✅ | ✅ | ❌ | ✅ | ✅ | ❌ | **5/7** |

**Per-axis pass rate:** A 5/6 · B 5/6 · C 5/6 · D 4/6 · E 4/6 · F 6/6 · G 2/6

## Ship gate evaluation

> **Gate:** ≥6/7 axes PASS for ≥4/6 sessions AND no axis FAILS on >1 session.

- **Part 1 — sessions at ≥6/7:** 2/6 (school-consolidation/high, career-change/low). Required ≥4. **FAIL.**
- **Part 2 — axes failing on >1 session:** D (2), E (2), G (4). Required 0. **FAIL.**

**Decision: ITERATE.**

---

## Per-session narratives

**school-consolidation/high (7/7) — clean ship.** Body word count 2344 (1 word under the high-effort 2345 ceiling). Both canonical reversals survive verbatim: right-sizing reversal at #01 ("design target ~1,200 students by 2040, not 1,800 today") and closure-as-real-injury at C09 (paired-with-funded-successor framing). All 13 categorical reframes lead per-topic blocks. Every `[recurring]` survives. This is proof the band is achievable at high effort while preserving every Phase-4-RP1 discipline — and the regression canary holds.

**career-change/low (6/7) — single-axis fail on G.** Structurally sound across A–F. Body 2917 words vs. 750–1500 band — 94% over the upper bound. The over-coverage doesn't reflect dropped content elsewhere; it's editorial elaboration (longer Executive Summary, longer Recommended Next Steps).

**career-change/medium (4/7) — A/E/G triple fail.** Persona-name leak at line 25 ("devil's advocate", "pragmatist") — a single P5-#2 violation. C07 substitutes a different framing for the substrate's categorical reframe. Body 2613 words vs. 940–1875 band — 39% over upper bound. All other axes pass.

**career-change/high (4/7) — wrong length/dissent trade-off.** Body 2312/2345 (33-word margin under ceiling) — but the document hit the band by *dropping* the spec-named dissents: TL-15 volunteering inversion at #06 and 30-year-arc trade-off at #11 are both absent from the per-topic blocks, plus agency-hypothesis and MLP-subordination dissents elsewhere. T3 and T7 also don't lead with their substrate categorical reframes. Single B violation: "three independent clusters surface accredited representation" was actually three lenses within one cluster — exactly the persona-vs-cluster denominator confusion P5-#1 was designed to prevent. **Most diagnostic finding of the probe**: passing G2 by failing D and E is the wrong trade-off — the prompt did not signal this priority correctly.

**property-management/high (5/7) — C and G fail; A passes the stress test.** Marcus/Maria/Margaret/Sarah/David/James/Elena are all in substrate; zero leak into BRAINSTORM body. ✅ Visible→quiet political-posture inversion preserved at lines 19 and 100 ("politically invisible while becoming operationally indispensable"). C fails on simple count — 5 Central Tension bullets exceed the ≤4 cap. G fails on bloat — body 4079 words, 74% over the 2345 ceiling, driven by a ~890-word Executive Summary that restates the categorical-reframe inventory three times across the document plus 15 next-step recommendations averaging ~75 words each.

**mobile-app/min (5/7) — D and G fail; F passes the stress test.** Lane-decision refusal at #01 reaches the user via Executive Summary + Central Tensions + Key Themes (matching substrate placement) and Recommended Next Step #1 explicitly stages the decision rather than papering over. ✅ But D fails: 47-second-as-design-constraint, dormant-debt correct-decision, TAM ceiling, apology-undermines-authority, and power-user-data-directional reframes all dropped without label (survival ~5/10). G fails: body 2171 vs 600–1200 band (81% over); 4 of 18 `[recurring]` items dropped (tab-bar elimination, `_deprecated/` quarantine, good-fit-user archetype, 30-second strength-logging depth) while editorial elaboration (long Executive Summary, 15 Next Steps) consumed the budget.

---

## Cross-cutting observations

1. **Length discipline is the dominant failure** (4/6 sessions). The current language ("Permit length growth when cluster-distinctive content would otherwise be flattened") was read as license rather than constraint. The two passes (school-consolidation/high at 2344, career-change/high at 2312) both come close to the high-effort ceiling — but career-change/high passed only by *dropping dissents and reframes*. The remaining 4 failures are editorial bloat, not preservation overflow. The band is correctly calibrated; enforcement language is too soft.

2. **Length and dissent preservation are pulling against each other** at high effort. Career-change/high passed G by failing D and E. School-consolidation/high passed both by being disciplined upstream. The prompt does not currently arbitrate this conflict — it should explicitly say preservation wins (exceed the band rather than drop dissents).

3. **`[recurring]` survival depends on length discipline.** mobile-app/min dropped 4 `[recurring]` items while exceeding the upper bound by 81%, which is the worst possible combination — the editorial overflow consumed the budget that should have gone to the `[recurring]` items. Tightening G enforcement should fix this indirectly.

4. **F is bullet-proof (6/6 PASS).** The new `## Conspicuous Absences (session-level)` section is consistently present, populated, and not silently overridden by Recommended Next Steps. Even at the F-stress-test session (mobile-app/min), the lane-decision refusal correctly traveled to the user across multiple surfaces.

5. **C/E/A failures are localized, not systemic** — one session each. Single edits should resolve them.

6. **B failure mode** is exactly the persona-vs-cluster denominator confusion the edit was named to prevent. Tightening should add a concrete example, not new language.

---

## Iter-2 tightening targets (to inform `proposed-prompts/iter2/`)

Targets are ordered by the gap they close in the ship gate (G blocks both gate parts; D and E block Part 2; C/A/B block only Part 1).

**T1 (G enforcement) — most critical.** Add an explicit upper-bound enforcement step at the end of `## Your Task`: *"Word-count audit. Compute body word count (exclude YAML and Session Index). If above the upper bound of the band, audit for editorial elaboration vs. cluster-distinctive content; cut elaboration first. Cluster-distinctive content (categorical reframes, dissents, reversals, Central Tensions, `[recurring]` items) is preservation; long Executive Summaries that restate themes, repetitive Recommended Next Steps, and verbose framings are not."* In the `## Notes` length-target block, replace *"Permit length growth when cluster-distinctive content would otherwise be flattened"* with *"Exceed the upper bound ONLY when cutting cluster-distinctive content would be the alternative; never exceed for editorial elaboration."*

**T2 (D vs G interaction) — most diagnostic.** In `## Synthesis discipline`, add the arbitration rule: *"If length pressure forces a choice between fitting the upper bound and surfacing a dissent/reversal/categorical-reframe, exceed the upper bound. Cluster-distinctive content takes precedence over the band."* This explicitly permits the school-consolidation/high pattern (preserve everything, hit ceiling exactly) and forbids the career-change/high pattern (drop dissents to fit).

**T3 (E enforcement).** Tighten step 6 sub-bullet: replace *"surface it verbatim or near-verbatim as the first sentence"* with *"the first sentence of the per-topic block MUST quote or closely paraphrase the cluster's categorical reframe (if any). If you have not quoted or near-quoted the substrate reframe, you have failed E."* Add to self-check checklist if any.

**T4 (C cap enforcement).** In template section `## Central Tensions`, change `[2–4 most load-bearing per-cluster Central Tensions]` to `[**Maximum 4 entries.** ...]`. In step 3, add: *"Hard cap of 4 entries. If you have more than 4 candidate tensions, list only the 4 most load-bearing and let the others remain in their per-cluster summaries."*

**T5 (A self-check).** Add to step 9 (or as a final task step): *"Persona/character/jargon audit. Before finalizing, scan body prose for: 'Devil's Advocate', 'Storyteller', 'Pragmatist', 'Connector', 'Visionary', 'Skeptic'; character names from substrate (Marcus, Maria, Margaret, Elena, Sarah, David, James, Aisha, plus any others encountered); and 'orchestrator', 'subagent', 'phase' as Symphony jargon (note: these words may legitimately appear in domain content — orchestrate-as-business-verb is fine; only Symphony-process meaning is forbidden). Zero hits required."*

**T6 (B example).** Replace the "different denominators" sentence with a worked example: *"e.g., if a cluster's `_summary.md` says 'three lenses surface accredited representation', that is one cluster reaching consensus across its three lenses — not three clusters surfacing accredited representation. Do not translate within-cluster persona/lens counts into cross-cluster counts."*

---

## Recommended next moves (for user)

1. **Stage iter-2 prompt** at `dev/2026-05-05_symphony-phase5/proposed-prompts/iter2/phase5_final-output.md` applying T1–T6. Do NOT yet revert canonical (the integration-spec sequencing recommended staging-then-migration; canonical was bypassed in iter-1, so iter-2 should restore the staged-prompt workflow per `dev/2026-05-05_symphony-phase5/plan.md` step 6).
2. **Re-regenerate the 4 failing sessions only** (career-change/high, low, medium; property-management/high; mobile-app/min) using the iter-2 prompt against the existing Phase 4 substrate. school-consolidation/high stays as the regression canary — re-run only if a structural change might affect it.
3. **Score iter-2** with the same 7-axis rubric. If it passes the ship gate, migrate iter-2 to canonical and write `findings/integration-spec-phase5.md`.

Total iter-2 cost estimate: 1 prompt-drafter + 4–5 regen subagents + 4–5 scorers = ~9–11 Opus subagents. Comparable to iter-1.

## Per-session audit references

- [RP1-P5_iter1_career-change_high.md](RP1-P5_iter1_career-change_high.md)
- [RP1-P5_iter1_career-change_low.md](RP1-P5_iter1_career-change_low.md)
- [RP1-P5_iter1_career-change_medium.md](RP1-P5_iter1_career-change_medium.md)
- [RP1-P5_iter1_school-consolidation_high.md](RP1-P5_iter1_school-consolidation_high.md)
- [RP1-P5_iter1_property-management_high.md](RP1-P5_iter1_property-management_high.md)
- [RP1-P5_iter1_mobile-app_min.md](RP1-P5_iter1_mobile-app_min.md)

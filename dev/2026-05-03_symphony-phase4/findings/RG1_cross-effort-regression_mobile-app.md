# RG1 Per-Topic Regression: mobile-app

**Date:** 2026-05-04
**Topic:** mobile-app
**Samples covered:** 6 (1 min + 1 low + 2 med + 2 high)
**Effort-comparison memo:** `test-runs/mobile-app/effort-comparison.md`
**FA1 cross-link:** mobile-app_high_05 is a *partial pass* (A1 PASS, A3c-summ FAIL 81%, A3f-summ FAIL 36%, C 3 undercounts; per `FA1_scoring-matrix.md` line 20). mobile-app_high_09 was NOT included in the FA1 n=16 set — drift attribution at high/09 is flagged "for RP1 to assess."

---

## Cross-Effort Through-Line Presence Matrix

The 12 persistent through-lines from the mobile-app effort-comparison memo §3 form the authoritative row set for cross-effort presence. Per-cell BL1 ledgers are *not* the row set here — those are per-cluster and surface in within-effort consistency (§ Within-Effort) plus the regime-mandated rows (RM-1…RM-3) below. Symbols: Y = explicitly present in `_summary.md`; partial = referenced but not as named insight; — = absent; n/a = wrong cluster shape.

| TL (memo §3) | min/01 | low/08 | med/04 | med/06 | high/05 | high/09 | Notes |
|---|---|---|---|---|---|---|---|
| TL-1 Behavioral data > stated preference | Y | partial | partial | — | Y | — | min anchors on "behavioral signals over stated preference" theme; high/05 surfaces the behavioral-assumption matrix as TL-4 of A3c. Cluster-shape: med/04 cluster is *cut framework*; med/06 is *communication*; high/09 is *team capacity* — not behavioral-signal clusters. |
| TL-2 Cut is technical *and* psychological | partial | Y | Y | Y | partial | Y | min surfaces the FTE-vs-architectural-agility cost (TL-14 of BL1) but not the engineer-grief side; low/med surface "killing your darlings" / loss aversion explicitly; high/09 makes burnout-as-data the central theme. |
| TL-3 Removal ≠ debt reduction | — | Y | Y | partial | — | Y | low/08 covers technical-coupling-determines-path; med/04 covers removal-readiness checklist (TL-8 BL1); high/09 covers Pareto distribution + intentional-direction-after-cuts. high/05's "perverse excellence" is adjacent but not removal-cost-focused. |
| TL-4 Clean break > phased deprecation | partial | Y | Y | Y | — | Y | low/08 is the canonical clean-vs-incremental decision cluster; med/04 favors the cleanest-test framing; med/06 ships-then-announces (clean-break style); high/09 explicitly recommends clean break with mapped exodus. high/05 cluster shape doesn't ask the path question. |
| TL-5 Runway is shorter than it looks | Y | Y | Y | partial | Y | Y | min names 8-month runway as binding (TL-24 BL1); low quantifies $250K vs $400K and "decision-avoidance loop consumes runway"; med/04 names 8-month runway in opening paragraph; high/05 names 2,800 engineer-hour budget; high/09 itemizes ~145 vs 190 engineer-week realistic budget. |
| TL-6 Communication is a retention lever | Y | Y | partial | Y | partial | Y | min covers 90-day notice + founder email; low covers segmented-not-blast; med/06 is the canonical communication cluster (ship-then-announce; Marcus identity); high/09 covers narrative framing of cuts. high/05 mentions retained-cohort messaging but cluster shape is methodology, not comms. |
| TL-7 Pair removals with visible improvements | Y | partial | Y | Y | partial | partial | min: same-day visible win (TL-12 BL1); med/04: hero-slot/scoring-with-actions; med/06: ship simpler experience first; high/05: hero-slot rotation as visible-win parallel; high/09: principal-engineer-led architectural cleanup. low/08 emphasizes data export (a different "visible improvement"). |
| TL-8 Existing 180K users are an asset | Y | Y | partial | Y | Y | Y | All efforts surface the 180K base; low/08 and high/09 are most explicit about the 14.4K MAU / 3,600 DAU cohort math. med/04 mentions the 180K base only briefly (cluster shape: cut-framework, not user-segmentation). |
| TL-9 Notification design is core retention | partial | partial | — | Y | partial | — | Only med/06 surfaces notifications-as-accessibility as a load-bearing theme. min mentions notification-free organic-revisit (TL-1 BL1); low touches notification timing in segmented comms. high/05 mentions notification-blackout indirectly; high/09 cluster (capacity/burnout) doesn't take it on. **See drift discussion: med/04 and high/09 absences are cluster-shape, not drift.** |
| TL-10 Re-bloat discipline must be institutional | Y | Y | Y | Y | partial | partial | min names one-in-one-out + quarterly audit (TL-14 BL1); low names "rejection threshold"; med/04 names the kill-criteria + monthly menu-review; med/06 covers public roadmap/12-week evaluation gate; high/05 has "would-users-build-this-themselves?" review for new features; high/09 has "right-size the team to the simplified product" + the team-as-anti-bloat-check. |
| TL-11 Reset success metrics, don't inherit | Y | Y | Y | partial | Y | partial | min: switch to D1/D3; low: parallel comparable + recalibrated; med/04: 90-day vs 30-day separation; med/06 implicit; high/05: feature-vitality scorecard + retained-cohort metrics; high/09: track relationship-to-codebase as leading indicator. |
| TL-12 Differentiation must precede relaunch | partial | Y | Y | partial | Y | partial | low: "why this, not Strava?" must be answered first; med/04: category reframe (behavior-lock/commitment/mirror) is a strong-convergent TL; high/05: value-prop-15-words gate before any cut. high/09's framing-three-options (discovery/recovery/destiny) is adjacent but cluster-shape softer. |

### Regime-mandated artefact rows

These are not memo through-lines but PP1 §5.2 mandatory regime artefacts; classification is regime-mandated divergence by construction.

| Artefact | min/01 | low/08 | med/04 | med/06 | high/05 | high/09 | Notes |
|---|---|---|---|---|---|---|---|
| RM-1 Conspicuous absences | Y | n/a | n/a | n/a | n/a | n/a | min/01 explicitly emits "Conspicuous absences" section (no business-lane recommendation, no 47-second diagnosis, no DAU/MAU interpretation). |
| RM-2 Neither-lens gaps | n/a | Y | n/a | n/a | n/a | n/a | low/08 explicitly emits "Neither-lens gaps" (App Store rank, investor narrative). |
| RM-3 Categorical reframe | n/a | n/a | Y | partial | Y | partial | med/04: "this is not a fitness app — it is a behavior-lock device" (TL-36 of BL1) explicit in summary exec; med/06: "burning the ships / co-authored ceremony" reframe present but more diffuse; high/05: "methodology not choice is the load-bearing artefact" partial per FA1 — exec ¶1 names the value-prop reframe but doesn't crystallize the methodology reframe; high/09: "burnout as diagnostic, not deficit" is named in Key Themes (close to a reframe). |
| RM-4 Convergence-count phrasing | n/a | n/a | n/a | n/a | partial | — | high/05 emits 11 quantified "N personas converged" claims (3 undercounts per FA1 Axis C); high/09's `_summary.md` does NOT use bracketed convergence counts or "N of M" phrasing. **This is a high/09 regression candidate against PP1's mandatory convergence-count rule — flag for RP1.** |

---

## Cross-Effort Variance Classification

| Through-line | Pattern | Classification | Rationale |
|---|---|---|---|
| TL-1 Behavioral data > stated preference | Y at min, partial at low/med, Y at high/05; absent at med/06 and high/09 | intentional (cluster-shape) | med/06 cluster is communication, not diagnostic methodology; high/09 cluster is team capacity. The TL doesn't have a natural surface in those clusters' question sets. |
| TL-2 Cut is technical and psychological | universal across all 6 with med+/high+ deepening | intentional (load-bearing) | Cited in memo §3 as persistent; the depth scales with effort (engineer grief → killing-darlings → burnout-as-architectural-pain) per memo §4.1. |
| TL-3 Removal ≠ debt reduction | absent at min/01 (cluster shape) and high/05 (cluster shape); present low/med/high/09 | intentional (cluster-shape) | min/01 cluster is feature-triage methodology — removal-cost surfaces only via TL-14 BL1 (15% architectural agility); the topic of *cleanup-budget vs. cut* is framed through low/med/high/09 clusters whose questions explicitly ask about technical coupling and maintenance load. |
| TL-4 Clean break > phased deprecation | Y at low/med/high/09; absent at high/05 | intentional (cluster-shape) | high/05's cluster question is methodology/decision-bias; the path-vs-incremental question is owned by low/08 + high/09 clusters. |
| TL-5 Runway is shorter than it looks | Y across all 6 with high deepening (~145 engineer-week math at high/09) | intentional (load-bearing) | Cited in memo §3 as persistent; memo §6 fidelity row 5 names "8 months is really 5" arithmetic as a high-only sharpening — the *math* deepens; the *recognition* is universal. |
| TL-6 Communication is a retention lever | universal across all 6 | intentional (load-bearing) | Cited in memo §3; cluster shapes route the depth (med/06 carries it most explicitly; min/01 surfaces it as TL-12 of BL1; high/09 surfaces it via narrative-framing-of-cuts). |
| TL-7 Pair removals with visible improvements | partial-to-Y across all 6 | intentional (load-bearing, cluster-shape modulation) | Universal in shape, varies in surface (same-day visible win at min; data-export-as-gift at low; hero-slot rotation at high/05). The variance is operational, not conceptual. |
| TL-8 180K users are an asset | universal across all 6 | intentional (load-bearing) | The user-base figures recur as an analytical input across every cluster; the high deepening (TL-9 BL1 high/05: design-for-survivors) is a reframe layered on top, not a replacement. |
| TL-9 Notification design is core retention | absent at high/09 and med/04 | intentional (cluster-shape) | Cluster-shape: med/04 (cut framework) and high/09 (team capacity) don't have natural questions about notification system. med/06 carries it as accessibility theme. The memo §3 universality holds when measured *by topic*, not *by cluster*. |
| TL-10 Re-bloat discipline must be institutional | universal | intentional (load-bearing) | Cited in memo §3; every cluster surfaces some institutional mechanism (one-in-one-out, kill-criteria, public roadmap, vitality scorecard, anti-bloat team-as-check). Wide variation in mechanism is intentional effort branching. |
| TL-11 Reset success metrics, don't inherit | universal across all 6 | intentional (load-bearing) | Cited memo §3 row 11. |
| TL-12 Differentiation must precede relaunch | absent at min (only "identity-driven positioning" implicit), Y at low+ | intentional (effort branching) | Memo §6 fidelity row 7 names category-reframe as med+/high-carried; the depth genuinely requires the persona panel to surface — at min the brainstormer states "choose a lane" but cannot do the category reframe. |
| RM-1 Conspicuous absences at min only | Y at min, n/a elsewhere | regime-mandated divergence | Per PP1 §5.2: conspicuous absences are min-distinctive. min/01 emits 3 explicit conspicuous-absence items (business-lane recommendation, 47-second diagnostic, DAU/MAU interpretation). NOT drift. |
| RM-2 Neither-lens gaps at low only | Y at low, n/a elsewhere | regime-mandated divergence | Per PP1 §5.2: neither-lens gaps are low-distinctive. low/08 emits 2 explicit neither-lens gaps (App Store rank, investor narrative). NOT drift. |
| RM-3 Categorical reframe at med+/high+ | Y at med/04, partial at med/06, partial at high/05, partial at high/09; n/a at min/low | regime-mandated divergence | Per PP1 §5.2: categorical reframe required at med/high, n/a below. med/04 nails it ("this is not a fitness app"); med/06 ("co-authored ceremony" + "identity not data") is a softer reframe; high/05 is a partial per FA1 (value-prop reversal explicit, methodology-as-load-bearing reframe implicit); high/09 ("burnout as diagnostic") is on the threshold. The med/04 vs high/05 partial gap is **drift candidate within the regime** (next row). |
| RM-3-drift Categorical reframe crystallization at high vs med | high/05 partial (per FA1), med/04 explicit | DRIFT (within regime, summary-stage) | Cross-link to FA1: per `FA1_faithfulness-audit_mobile-app_high_05.md` Axis D, the categorical reframe is "implicit but not crystallized in either prose document." FA1 attributes this to summary-stage compression: the components (value-prop, ownership-bias, biased-inputs) appear as separate themes rather than one named reframe. The fix per FA1 is in the **summary prompt** — add an explicit "Reframing the Question" slot. **RP1 target: `phase4_full-synthesis.md` summary block, not synthesis prompt.** |
| RM-4 Convergence-count phrasing at high | partial at high/05 (3 undercounts), absent at high/09 | DRIFT (within regime, summary-stage) | high/05 emits 11 convergence claims (FA1 Axis C: 3 undercount-by-1 strict deviations, no fabrications, no overcounts). high/09 `_summary.md` emits zero "N personas converged" or "N of M" claims — the high-distinctive convergence-count phrasing required by PP1 §5.2 is missing entirely. **Attribution unclear** — high/09 was NOT in FA1's n=16 set, so summary-vs-synthesis attribution is unverified. **Flag for RP1 to assess.** Hypothesis: convergence-count phrasing is unstable across high samples; if FA1 expanded to high/09, the result would likely echo the high/05 pattern (counts present in synthesis, dropped in summary) but this is unconfirmed. |
| TL-9 BL1-high05 (delight-moment / 20-second-to-capability) | present at synthesis (5/7 convergent), absent at summary per FA1 | DRIFT (summary-stage) | Cross-link: FA1 Axis A3-content scores TL-9 as "should-appear-in-summary, absent" — drops a 5/7 strong-convergent through-line entirely from the summary. FA1 attributes this to summary compression and recommends "summary-level should-appear floor for strong-convergent TLs (≥5/N) must appear somewhere in summary." **RP1 target: `phase4_full-synthesis.md` summary block.** |
| TL-14 BL1-high05 (triage-by-support-tickets-on-breakage) | present at synthesis (6/7), absent at summary per FA1 | DRIFT (summary-stage) | Same pattern as TL-9 BL1-high05; FA1 cites both as the strongest evidence for the "≥5/N must appear in summary" rule. RP1 target: `phase4_full-synthesis.md` summary block. |
| Framing-flattening at high/05 summary (36%) | structural-flatten (FA1 Axis A3-framing FAIL) | DRIFT (summary-stage) | FA1 cites: summary prose voice is "uniformly decision-maker briefing" and collapses 7 distinct lenses into one. Synthesis preserves 79% of distinctive framing; summary preserves 36%. **Attribution per FA1: summary compression. RP1 target: `phase4_full-synthesis.md` summary block** (FA1's recommendation 4: keep diversity of analytical *moves* visible in recommended-next-steps and considerations sections). |
| within-effort med/04 vs med/06 cluster-shape | very different artefact set (decision-framework vs communication) | intentional (cluster-shape) | Selected pair deliberately differs — med/04 is strategy-heavy (cut framework), med/06 is tactical (communication ecosystem). Stylistic drift between summaries is justified by cluster-shape. |
| within-effort high/05 vs high/09 cluster-shape | methodology vs team-capacity | intentional (cluster-shape) | Selected pair deliberately differs — high/05 is methodology/decision-bias, high/09 is team-capacity/burnout. The convergence-count and framing-flattening drifts (above) are NOT cluster-shape attributable; they are summary-stage drifts. |

### Counts

- **Drift count for this topic:** 5 (RM-3-drift categorical-reframe crystallization at high; RM-4 convergence-count missing at high/09; TL-9-BL1-high05 absent in summary; TL-14-BL1-high05 absent in summary; framing-flattening at high/05 summary). All 5 attribute to summary compression per FA1, with high/09 RM-4 attribution **unclear** because FA1 has no high/09 sample.
- **Regime-mandated divergence count:** 3 categorical (RM-1 conspicuous-absences appearing only at min; RM-2 neither-lens-gaps appearing only at low; RM-3 categorical-reframe appearing at med+/high+).
- **Intentional variance count:** 12 row-level intentional classifications across the through-line presence matrix (load-bearing universals + cluster-shape modulations + effort-branching depth scaling for TL-12).

---

## Within-Effort Consistency

### Med pair (med/04 cut-framework vs med/06 communication-ecosystem)

- **Through-line intersection (memo §3 rows where both Y or partial):** TL-2 (Y/Y), TL-4 (Y/Y), TL-5 (Y/partial), TL-6 (partial/Y), TL-7 (Y/Y), TL-10 (Y/Y), TL-11 (Y/partial). **7 of 12 universal TLs present in both.**
- **XOR (in only one):** TL-1 (med/04 partial, med/06 absent — cluster-shape), TL-3 (med/04 Y, med/06 partial — cluster-shape), TL-8 (med/04 partial, med/06 Y — cluster-shape), TL-9 (med/04 absent, med/06 Y — cluster-shape), TL-12 (med/04 Y, med/06 partial — cluster-shape). **5 of 12 differ; all 5 attribute to cluster-shape.**
- **Cluster-shape attribution:** 5/5 XOR through-lines explainable by cluster-shape — med/04 is strategy/decision-framework, med/06 is tactical communication. Zero unexplained instability.
- **RM-3 categorical reframe:** Both produce a reframe at the med-effort regime (med/04 explicit "behavior-lock device"; med/06 implicit "co-authored ceremony / identity-not-data"). med/04's reframe is sharper. This is regime-mandated; med/06's softer reframe could be drift OR could reflect that the cluster topic (communication) is less amenable to a categorical reframe than the cluster topic (cut framework). **Lean: cluster-shape, but flag as a watch-item if RP1 expands FA1 to med/06.**
- **Stylistic similarity verdict:** Similar but justified divergence. Both summaries use Executive Summary + Key Themes + Recommended Next Steps + Key Considerations structure (per the `phase4_full-synthesis.md` summary block). Both have ~12-15K byte word counts (med/04: 11,911 B; med/06: 12,765 B per manifest — within 7% of each other). Both use opus model. Tonal register matches. The cluster-shape divergence is reasoning, not prompt-instability. **Verdict: prompt-stable across med cluster shape.**

### High pair (high/05 methodology vs high/09 team-capacity)

- **Through-line intersection (memo §3):** TL-2 (partial/Y), TL-5 (Y/Y), TL-7 (partial/partial), TL-8 (Y/Y), TL-10 (partial/partial), TL-11 (Y/partial). **6 of 12 present in both.**
- **XOR (in only one):** TL-1 (high/05 Y, high/09 absent — cluster-shape), TL-3 (high/05 absent, high/09 Y — cluster-shape), TL-4 (high/05 absent, high/09 Y — cluster-shape), TL-6 (high/05 partial, high/09 Y — cluster-shape), TL-9 (high/05 partial, high/09 absent — cluster-shape), TL-12 (high/05 Y, high/09 partial — cluster-shape). **6 of 12 differ; all 6 attribute to cluster-shape.**
- **Cluster-shape attribution:** 6/6 XOR through-lines explainable by cluster-shape — high/05 is methodology/decision-bias, high/09 is team-capacity/burnout. Zero unexplained instability.
- **RM-4 convergence-count phrasing:** **DRIFT — high/05 emits 11 convergence claims; high/09 emits zero.** Both clusters have 7 personas; both should produce convergence counts per PP1 §5.2 (high-distinctive). high/09's BL1 ledger contains 7/7 (TL-4) and multiple 5/7 (TL-1, TL-3, TL-6, TL-8, TL-10) strong-convergent rows that did not surface as convergence-count claims in the summary. **Attribution unclear** — FA1 did not score high/09. Hypothesis: same summary-compression pattern as high/05 (where convergence counts appear in synthesis but get conservative-undercount or absorption in summary). RP1 should expand FA1 to high/09 OR proceed on the high/05 prompt-revision, which should propagate the fix.
- **Categorical reframe (RM-3):** high/05 surfaces value-prop-as-precondition (partial); high/09 surfaces burnout-as-diagnostic (named in Key Themes). Both are partials at the summary level. Consistent within-pair.
- **Stylistic similarity verdict:** Similar but with concerning convergence-count drift. Both follow `phase4_full-synthesis.md` summary structure; both ~12-13K byte (high/05: 12,472 B; high/09: 13,086 B per manifest — 5% spread); both use opus model. The visible drift is RM-4 (convergence-count phrasing), not voice or structure. The two summaries read as same-author / same-prompt; the RM-4 omission at high/09 reads as a mandatory regime artefact going missing rather than as cluster-shape variance. **Verdict: mostly prompt-stable, but with one regime-artefact regression worth fixing.**

---

## Format / Quality Drift

| Item | min/01 | low/08 | med/04 | med/06 | high/05 | high/09 | Aligned? |
|---|---|---|---|---|---|---|---|
| Frontmatter `stage` field value | "Phase 4: Summary Generation" | "Phase 4: Summary Generation" | "Phase 4: Response Synthesis" | "Phase 4: Response Synthesis" | "Phase 4: Response Synthesis" | "Phase 4: Response Synthesis" | regime-mandated divergence (matches PP1's contract — summary-only paths label "Summary Generation"; full-synthesis path labels "Response Synthesis") |
| `synthesis-type: "summary"` field | absent | absent | present | present | present | present | regime-mandated divergence (only emitted from the full-synthesis prompt; not a drift) |
| Word count | 8,411 chars / 5 questions | 13,299 / 7 q | 11,911 / 6 q | 12,765 / 6 q | 12,472 / 11 q | 13,086 / 9 q | within reasonable range; note med/04+med/06+high/05+high/09 all cluster 11.9–13.1K; min and low are at the smaller / mid-range expected for compression-with-distinctive-output regime |
| Central Tension presence | absent | **present** ("Central Tension:" header explicit at top) | absent | absent | absent | absent | **DRIFT** — Central Tension is named only at low. Per PP1 contract, Central Tension is a Phase-5-aggregable signal that should appear at all 4 efforts. Cross-link to PP1 (if PP1 file exists at `findings/PP1_three-prompt-parity.md` — confirm in cross-topic synthesis). |
| Convergence-count phrasing | n/a (single brainstormer) | regime-mandated absent (n=2) | n/a (med-effort threshold per PP1 §5.2 — convergence-count phrasing is high-distinctive only) | n/a (same) | partial (11 claims, 3 undercounts per FA1) | **absent** | DRIFT at high/09 (regression vs PP1 §5.2 mandatory). |
| Confidence-tag usage in `_summary.md` body | `[recurring]` / `[single]` tags on Recommended Actions bullets | none in body; trade-offs called out in prose | none in body | none in body | none in body | none in body | DRIFT — min is the only summary using bracketed confidence tags on action items. Whether this is regime-mandated (min-distinctive) or a contract drift across the four prompts is a PP1 question; flag for cross-topic synthesis. |
| Conspicuous-absences section | present (regime-mandated) | absent (correct) | absent (correct) | absent (correct) | absent (correct) | absent (correct) | regime-mandated divergence — aligned. |
| Neither-lens-gaps section | absent (correct) | present (regime-mandated) | absent (correct) | absent (correct) | absent (correct) | absent (correct) | regime-mandated divergence — aligned. |
| Categorical reframe in Exec Summary | n/a | n/a | **present** (¶3: "this is not a fitness app — it is a behavior-lock device") | partial (¶4: "co-authored ceremony"; ¶2: identity-not-data) | partial (¶1: value-prop precondition; methodology-as-load-bearing only implicit per FA1) | partial (Key Themes #1: "burnout as diagnostic, not deficit") | regime-mandated; med/04 most explicit; high/05 partial flagged as drift (FA1 cross-link) |
| Persona-name leakage in prose | n/a (single brainstormer named) | "The Devil's Advocate" + "The Pragmatist" appear in footer "Source lenses" line (regime-allowed footer attribution) | none | none | none | none | aligned. |

---

## Recommendations for RP1 (topic-level)

Five drift findings, all within the med/high regime; none at the min/low boundary.

1. **Fix the high-effort summary-stage compression that drops strong-convergent through-lines** (`phase4_full-synthesis.md` summary block). FA1's high/05 audit identifies TL-9 (5/7 convergent, "delight-moment / 20-second-to-capability") and TL-14 (6/7 convergent, "triage-by-support-tickets-on-breakage") as `should-appear-in-summary` BL1 targets that are absent from the summary. FA1's recommendation 2 ("summary-level should-appear floor for strong-convergent TLs ≥5/N") is the fix. **Priority: highest** (this is the same fix RP1 will need cross-topic per RG1 synthesis if the pattern recurs).

2. **Fix high-effort summary-stage convergence-count regression at high/09** (`phase4_full-synthesis.md` summary block, convergence-count discipline section). high/09's `_summary.md` emits zero convergence-count phrasing despite the BL1 ledger containing 7/7 and five 5/7 rows. **Attribution unclear** — high/09 was not in FA1's n=16 set. RP1 should either: (a) expand FA1 spot-check to high/09 to confirm summary-compression attribution before fixing, OR (b) apply the high/05 prompt fix (FA1 recommendation 1: "broad inclusion rule for convergence claims") on the assumption it propagates. Recommended path: (b), since the high/05 fix is cheap to deploy and the high/09 omission is consistent with the broader pattern. **Priority: high.**

3. **Add explicit "Reframing the Question" slot to high-effort summary template** (`phase4_full-synthesis.md` summary block, header section). FA1's recommendation 3 (categorical-reframe slot) directly addresses high/05's partial-pass on Axis D. Mobile-app's med/04 emits the canonical reframe ("this is not a fitness app") explicitly; high/05 has the components but does not crystallize. Adding the slot would lift high/05 from partial to pass on D and would harden the regime-mandated divergence at high. **Priority: medium-high.**

4. **Address summary-stage framing-flattening at high (36% framing-survival at high/05).** FA1's recommendation 4 (preserve diversity of analytical *moves* in recommended-next-steps and considerations sections) is a soft fix. Mobile-app evidence is strongest in high/05 (synthesis 79%, summary 36% — 43-point compression delta) — the prose voice collapses 7 lenses into one "decision-maker briefing" register. **Priority: medium**; a softer ask but RG1 cross-topic may upgrade to high if the pattern recurs.

5. **Resolve Central-Tension contract drift across the 3 prompts** (cross-link to PP1). Of the 6 mobile-app summaries, only low/08 emits an explicit "Central Tension:" header. PP1 likely already flags this; RG1 confirms it manifests in mobile-app. **Priority: medium**, depends on PP1's framing of whether Central Tension is mandatory at all four efforts or only at low.

### Within-effort prompt stability

- **Med pair:** stable (no prompt-instability detected; all variance is cluster-shape).
- **High pair:** mostly stable, with one regime-artefact regression (RM-4 convergence-count phrasing absent at high/09). The high/05 partial-pass FA1 result reads as the *typical* high-effort summary failure mode (component-named-not-crystallized + selective-substance-dropout + framing-flatten + conservative-undercount); high/09 looks consistent with that pattern at the artefact-presence level (mandatory regime artefact missing) but is unconfirmed against FA1.

### Surprises and interactions with FA1's high/05 partial-pass

The most informative surprise is that the high/05 partial-pass works *for* RG1's drift attribution, not against it. The 6 mobile-app samples produce a clean attribution table:

- All 5 detected drifts are summary-stage (not synthesis-stage), per FA1's per-axis split (synthesis A3c-content 92%, summary A3c-content 81%; synthesis A3f 79%, summary A3f 36%).
- All 5 fixes route to **`phase4_full-synthesis.md` summary block**, not to the synthesis prompt.
- The "summary block" of the full-synthesis prompt is therefore the single highest-leverage RP1 target for mobile-app.

A second surprise: high/09 — though not FA1-scored — produces an *additional* regime-artefact regression (RM-4 convergence-count absent entirely) that the high/05 audit alone would not have surfaced. This argues for either expanding FA1 to high/09 before RP1 iteration, or accepting the propagation hypothesis (the high/05 fix would also address high/09).

A third surprise: med/06 emits a categorical reframe ("co-authored ceremony / identity-not-data") at the same partial-crystallization level FA1 flagged at high/05 — but med/06 was not in FA1's n=16 set. The pattern of "components present, never crystallized as a single named reframe" may be a med-and-high regime-wide failure mode rather than a high-only one. The cross-topic synthesis should test this hypothesis against the other 9 topics' med samples.

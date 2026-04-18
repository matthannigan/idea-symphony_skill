# SP1 Synthesis Refinement — Iteration 1

**Iteration:** 1 of 3 (extendable to 4)
**Base:** S-V2 (restructured-split) — winning variant
**Winner stability:** 4 stable / 4 unstable (per `findings/SP1_winner-stability.md`)
**Date:** 2026-04-18

---

## Section 1: Refinements

Four refinements are applied. Each targets an error pattern that is either (a) stable across all 3 stability runs or (b) a deterministic prompt-behavior failure (zero-variance). Refinements that would address primarily run-1-outlier signal (W3 AI floor, W5 Creative balance) are deprioritized and NOT included in iter1. Per BL1 §6a.11, each refinement spans at least 2 effort levels.

### Refinement 1 (R1): Per-effort compaction target + 20% over-target iteration rule

- **Error pattern addressed:** W1 systematic under-compaction. Stability confirms this is the dominant, stable signal:
  - 7 of 8 suspect cells fail compaction in ≥2 of 3 runs; 4 stable cells show deterministic failure (mobile-app/medium 1.42–1.70; school-consolidation/medium 1.27–1.30 with stdev 0.02; school-consolidation/low 1.57–1.97; tool-library/medium 1.30–1.82).
  - Raw compaction 1.3–1.8× across most cells vs. BL1 band floor of 2.3× (low) / 2.5× (medium) / 2.6× (high). Gap is 0.5–1.0×, not noise.
- **Effort levels addressed:** Low + Medium + High (all three).
- **Mechanism:** S-V2's prompt is silent on quantitative compaction targets. The subagent has no explicit anchor for "how much to merge," so it defaults to preserving each convergence group's members as individual questions. Two complementary changes fix this:
  1. Add an explicit effort-keyed target table (N_synth / 2.6 at low, / 2.7 at medium, / 3.1 at high, with M_synth range) so the subagent has a count to hit.
  2. Add a post-draft check: count M_synth; if >20% over target, iterate once by folding secondary survivors into merged anchors. This turns merging from implicit habit into explicit corrective step.
- **Change (text added to Section 1):** New "Synthesize-Stream Output Target (per-effort compaction)" block replaces the previous generic target. New "Merge-as-Default, Preserve-as-Exception" block sits between "Merger Rules" and "Representation Requirements" to make merging the default behavior and preservation the exception (with three narrow conditions).
- **Regression risk:** Over-correction on cells where r1 was already in-band (tool-library/low r1 2.30×; mobile-app/low r1 3.00×; mobile-app/high r1 2.78×). The 20% threshold and the explicit preserve-exception conditions (register mismatch, definitional split, ≥4-member diverse CG) are intended to protect against over-compression. Per stability report §Attention Flags, use 3-run-mean not r1 when scoring. Additional risk: voice-preservation hard-floor metrics (9/9 in S-V2) could regress if aggressive merging strips archetypes — mitigated by retaining all Section 1 representation requirements and adding explicit ST/AI counts to the self-check (R3).

### Refinement 2 (R2): Procedural Append cluster-identification (4-step block)

- **Error pattern addressed:** W2 low-effort Append cluster round-robin broken. Stability confirms this is deterministic (zero variance):
  - tool-library/low: 0.58 / 0.58 / 0.58 (stdev 0).
  - mobile-app/low: 0.67 / 0.58 / 0.58.
  - school-consolidation/low: 0.75 / 0.75 / 0.75 (stdev 0).
  - Pattern: subagent takes Q1/Q2/Q3 in source order across the persona's full question list instead of identifying internal clusters first. S-V3 achieves 9/9 Append fidelity by forcing cluster identification as a separate step.
- **Effort levels addressed:** Primarily Low (where the failure is 100% deterministic). Secondary benefit at Medium (tool-library/medium r2 over-appended Politician by 5; school-consolidation/medium r2/r3 over-quota'd Perspective personas) because the same procedural discipline catches quota-count errors.
- **Mechanism:** S-V2's prompt says "round-robin" declaratively but describes the selection in a single dense sentence ("Select one question per internal cluster in source order"). The subagent interprets "source order" as source-order across the whole persona section rather than source-order within each cluster. Borrow S-V3's structural fix: split the instruction into 4 numbered steps (identify clusters → select first-per-cluster → fill quota from largest → negative-example guard against Q1/Q2/Q3 shortcut). The negative-example guard is the load-bearing addition.
- **Change (text added to Section 2):** The "Round-Robin Selection (per D1 rules)" subsection is replaced with "Round-Robin Selection — Procedural (R2)" containing Steps 1–4. Step 4 is an explicit anti-pattern warning ("If you find yourself writing Q1/Q2/Q3, stop and re-do Step 1"). Effort-Level Quotas table is unchanged.
- **Regression risk:** The procedural block adds ~6 lines. Minimal context cost. Could mildly over-engineer Append for personas with a single internal cluster (Step 3 handles that case). Politician Append-All rule is untouched. School-consolidation/low r1 "accidentally correct" append fidelity 0.75 (coincidence of source order matching cluster order) should improve to ~1.0 once cluster round-robin is actually executed.

### Refinement 3 (R3): Structural self-check gate before emission

- **Error pattern addressed:** Partial coverage of W1 at cells where compaction is far below floor (school-consolidation/medium at 1.28× is 50% below the 2.5× floor; tool-library/medium at 1.55× is 38% below). R1 alone may not be strong enough; the self-check provides a second gate that forces merging before emission, not just a target to aim at.
- **Effort levels addressed:** Low + Medium + High. The cell-specific floors in the self-check block (2.3× / 2.5× / 2.6×) are the BL1 band floors.
- **Mechanism:** S-V3 demonstrated that a structural-check footer produces accurate self-reports. S-V3 did not act on those reports (report-only, not corrective). Adding a corrective instruction ("If raw compaction is below target for effort, merge further before emitting — identify the 2–3 largest convergence groups and collapse their secondary survivors") converts the check from report-only to gate. Also incorporates AI-orphan count and ST-archetype count into the check, which lets the subagent catch a regressing hard-floor voice metric before emission (defensive against R1 over-correction).
- **Change (text added to Section 1):** New "Structural Self-Check (R3)" subsection added after "Synthesize-Stream Output Target." Notes that the check is internal (not emitted) and instructs the subagent to merge further if raw compaction is below floor.
- **Regression risk:** Adds a small cognitive load. Could produce output that is slightly more compacted than R1's 20%-over-target rule alone, at cells that are already near the floor. The AI/ST counts in the check are insurance: if aggressive merging starts to strip archetype vocabulary, the subagent catches it before emission.

### Refinement 4 (R4): Explicit per-effort cluster-count targets

- **Error pattern addressed:** Medium-effort over-clustering at mobile-app/medium (r1 = 12, r3 = 12; target 9, range 8–10 — stability confirms this is reproducible at 2/3 runs). Also supports Pattern 3 in primary report.
- **Effort levels addressed:** Primarily Medium; secondary Low/High via the table rows.
- **Mechanism:** S-V2's "8–12 clusters" range is loose; the prompt does not give a per-effort anchor. When the subagent produces too many clusters, it gives itself more "places to put" surviving questions, feeding into W1 under-compaction. Adding a per-effort cluster-count row to the target table (already introduced by R1) constrains the cluster count alongside the compaction count.
- **Change (text added to Section 1):** The target table added in R1 includes a "Target cluster count" column: 8–10 low, 10–12 medium, 11–13 high (matches BL1 §1.2). No new block; just an extra column.
- **Regression risk:** tool-library/low medium stability had cluster alignment passing 2–3/3; no regression expected there. Mobile-app/medium over-clustering may correct; if the prompt over-corrects and under-clusters, cluster-alignment scoring penalizes it — low risk because under-clustering at medium is not observed in any stability run.

### Deprioritized (not in iter1)

- **W3 AI orphan floor at mobile-app/low:** only run-1-outlier signal (r2 and r3 both preserve AI ≥6 orphans). R3 self-check block includes AI count as a sanity check, which incidentally covers this if it ever recurs. No dedicated refinement.
- **W5 Creative dimension balance at mobile-app/high:** r1 outlier (9pp dev); r2/r3 attenuate to 6–7pp. Not stable enough to refine. Topic-typed dimension bands (Priority 6 in primary report) deferred to iter2 if warranted.

---

## Section 2: Iter1 Refined Prompt

- **Path:** `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_refined-synthesis-prompt_iter1.md`

### Change summary (diff-like)

**Section 1 (Synthesize Stream) — added blocks:**
1. Between "Merger Rules" and "Representation Requirements": new subsection **"Merge-as-Default, Preserve-as-Exception (R1)"** — 1 paragraph + 3-bullet exception list; makes merging the default and specifies the 3 conditions under which ≥2 survivors from a single CG are acceptable (register mismatch; definitional split; preserve-distinct flag ≥4-member diverse CG).
2. Replaced "Synthesize-Stream Output Target" with **"Synthesize-Stream Output Target (per-effort compaction) (R1)"** — 3-row target table (compaction ratio + cluster count per effort), 2 worked examples, and a post-draft 20%-over-target iteration rule.
3. New subsection **"Structural Self-Check (R3)"** after the output target block — internal-only check listing N_synth, M_synth, raw compaction, cluster count, AI count, ST-archetype count, with a corrective-merge instruction if below floor.
4. Representation Requirements unchanged except AI floor made explicit at high effort (≥3), a hardening of an implicit S-V2 behavior.

**Section 2 (Append Stream) — replaced one block:**
5. Replaced "Round-Robin Selection (per D1 rules)" with **"Round-Robin Selection — Procedural (R2)"** — 4 numbered steps: identify internal clusters → select first-per-cluster in source order → fill quota from largest clusters → explicit negative-example guard ("if you find yourself writing Q1/Q2/Q3 in source order across the full persona list, stop and re-do Step 1").

**Unchanged:**
- Overall Synthesize/Append split structure (preserved per constraint).
- Convergence Criteria.
- Merger Rules (1–3).
- Representation Requirements bullet list for all personas (only AI high-effort floor made explicit).
- Cluster Organization guidance.
- Append Scope, Objective, Effort-Level Quotas table, Presentation Rules.
- Final Output Structure template and Format Rules — byte-identical.

Total net text added: ~45 lines. Total structure changes: 0 (no sections renumbered, no major reorganization).

### Escalation flag

None. S-V2's Synthesize/Append split structure is preserved. All changes are additive or targeted-replacement. No structural rewrite needed or recommended.

---

## Section 3: Expanded Subset for Iteration

- **Original 3:** tool-library, mobile-app, school-consolidation (Q9 default subset, per BL1 §8.2).
- **Added 3:** food-truck, wearable-device, space-party.

### Rationale

The original triple covers community-nonprofit (tool-library), product-strategy (mobile-app), and civic/social-program (school-consolidation). It exercises Connector-swap on 2 of 3 topics, Politician at medium/high on 2 of 3 topics, and Accountant at high on 2 of 3 topics. It does NOT cover:

- Business/commercial/regulated topic class (BL1 §4.3 band);
- Technical-regulated-product topic class (BL1 §4.3 band);
- Lawyer or Technical Expert Tier 3 personas;
- Analogist default (original 3 all use Connector-swap on ≥2 topics; Analogist appears only on tool-library but no default-Analogist topic);
- Low-convergence-density test case (original min = school-consolidation/medium at 53%; BL1 §2.3 flags space-party/medium at 50.4% as the tightest convergence cell in the set);
- No-Tier-3 medium case (mobile-app/medium is close but has Connector-swap pressure; a fully no-Tier-3 medium is absent).

**food-truck** (commercial/regulated-food-business):
- Topic class: **business/commercial/regulated** (BL1 §4.3 Strategic 28–38% / H-centered 22–32% band) — not exercised in original 3.
- Tier 3: **Accountant** at medium and high (dollar ranges, payback periods, LTV:CAC, commissary costs). The original 3 have Accountant only at mobile-app/high and tool-library/high; food-truck adds Accountant at medium, giving Accountant coverage at 2 effort levels outside original.
- Append: Analogist default (not Connector). Tests that the refined prompt handles Analogist's single-domain-metaphor-import register, which original 3 do not stress-test.
- food-truck/high is on GT1 watchlist (dual-diagnostic scoring applies per BL1 §9.2) — no issue, adds a second watchlist cell outside medium effort.

**wearable-device** (technical-regulated-product):
- Topic class: **technical-regulated-product** (BL1 §4.3 Strategic 20–32% / H-centered 22–30% band) — not exercised in original 3.
- Tier 3: **Technical Expert** at medium and high — this is the ONLY persona in the BL1 Tier 3 set (§5.1) not exercised by any original-subset cell. Technical Expert adds engineering-specific vocabulary (INT8, sparse compute, quantization, sub-5mW, watchdog, CRC, 128KB SRAM) that exercises the "named-specialty-vocabulary preservation" hard floor differently from Accountant's dollar ranges and Lawyer's statute names.
- Append: Analogist default.
- Stable convergence density across effort (67% → 70% → 68%) per BL1 §2.4 — useful as a control case where density itself isn't fluctuating (clean compaction-discipline signal).

**space-party** (event/experiential):
- Topic class: **event/community-nonprofit** (BL1 §4.3 Strategic 18–30% / H-centered 25–35% band). Tool-library is the same band class in original 3, but space-party exercises it without a governance angle.
- **No Tier 3 personas at any effort** — the cleanest no-Tier-3 control in the BL1 set, letting iter1 validate that compaction discipline works without specialty-vocabulary floors pulling in parallel.
- **Low-convergence-density test case:** space-party/medium at **50.4%** (per BL1 §2.3 — tightest medium-cell convergence in the set, equivalent to tool-library/medium at 50.4%). Tests that R1's per-effort compaction target still works when convergence density is low (i.e., fewer merge opportunities available). If R1 over-fires here, it'll manifest as under-preserved orphan content; if R1 calibrates correctly, M_synth will land in band even with tight convergence.
- Append: Analogist default.
- Lowest cluster count at low effort (7) per BL1 §1.3 — tests that R4's cluster-count guidance (8–10 low) doesn't force over-clustering when the topic naturally clusters tightly.

### Combined coverage after adding 3 topics

| Dimension | Original 3 coverage | After adding 3 |
|---|---|---|
| Topic classes (BL1 §4.3) | 3 of 4 (missing business/commercial/regulated AND technical-regulated-product) | 4 of 4 |
| Tier 3 Synthesize personas | Accountant (2 cells) | Accountant (3 cells, +medium), **Technical Expert (2 cells, new)**; Lawyer still absent |
| Tier 3 Append personas | Politician (4 cells) | Politician (4 cells, unchanged) |
| Analogist default topics | 0 | 3 (food-truck, wearable-device, space-party) |
| Connector-swap topics | 2 | 2 (unchanged) |
| No-Tier-3 cells | 3 (mobile-app low/medium, with Connector at medium) | 6 (adding space-party low/medium/high) |
| Low-convergence-density cells (<55%) | 2 (tool-library/medium, school-consolidation/medium) | **3 (+space-party/medium at 50.4%)** |
| GT1 watchlist cells | 2 (tool-library/medium, school-consolidation/medium) | 3 (+food-truck/high) |
| Creative-dominant high cells | 1 (mobile-app/high, 34%) | 1 (unchanged; space-party/high is Creative-mixed at 28%) |

**Lawyer still absent** — intentional omission. Adding Lawyer would require property-management (87.5% convergence at low is outlier per BL1 §8.1) or youth-mentorship (C9 mega-cluster requires special sub-theme-splitting instruction per BL1 §8.1). Both are flagged as "unusually difficult to synthesize" in BL1 and risk confounding iter1 scoring. Revisit for iter2 if Lawyer-specific failure patterns are hypothesized.

### Total cells for iter1 generation: 18 (6 topics × 3 effort levels)

---

**Status:** Iteration 1 refinements ready. 4 refinements applied (R1 compaction target + merge-as-default; R2 procedural Append; R3 self-check gate; R4 cluster-count target). No structural rewrite; S-V2 Synthesize/Append split preserved. Expanded subset covers 4/4 BL1 topic classes, adds Technical Expert Tier 3, adds Analogist-default stress test, adds low-convergence and no-Tier-3 control cells. Ready for iter1 generation on 18 cells.

---

## Section 2: Scoring (18 runs)

### Aggregate Metrics

All deltas are iter1 minus iter0 (S-V2) computed on the overlapping 9-cell subset (iter0 was scored on tool-library, mobile-app, school-consolidation only — the 9 non-overlapping cells have no iter0 comparator and are excluded from delta).

| Metric | iter1 Mean (18 runs) | iter1 Variance / Range | iter1 Pass-rate | iter0 Mean (9 runs) | Δ vs iter0 (9-cell overlap) |
|---|---|---|---|---|---|
| Question preservation | 0.89 | 0.81–0.95 | 17/18 pass (≥0.85) | 0.88 | +0.01 |
| Compaction — raw | 2.36× | 1.46–2.83 | **9/18 in-band** | 1.96× | **+0.40 (strong improvement)** |
| Compaction — band pass | — | — | 9/18 (50%) | 1/9 (11%) | **+39 pp** |
| Cluster alignment | 0.86 | — | 14/18 in range (78%) | 0.87 | −0.01 (~flat) |
| Cluster count in range | — | — | 14/18 | 8/9 | −11 pp (some new-topic over-clustering) |
| Persona representation (% of persona minimums met) | 93% | 85–100% | 17/18 pass (mobile-app/low fails ST floor) | 93% | 0 |
| Append fidelity (estimated) | 0.71 | 0.50–1.00 | 10/18 pass (≥0.85) | 0.70 | +0.01 (~flat) |
| Append fidelity — low effort only | 0.58 | 0.50–0.67 | 0/6 pass | 0.67 | **−0.09 (minor regression)** |
| Dimension balance (max |dev| pp) | 6.5 pp | 3–11 pp | 13/18 inside ±5 pp, 18/18 inside ±15 pp hard floor | 6.2 pp | ~flat |
| Convergence utilization | 0.82 | 0.68–0.94 | 14/18 pass (≥0.80) | 0.79 | +0.03 |
| Unique-question survival | 0.92 | 0.84–1.00 | 18/18 pass | 0.92 | 0 |
| **Hard-floor: AI orphan ≥1 per run** | 100% | — | **18/18** | 9/9 | ~same |
| **Hard-floor: ST archetype ≥1 verbatim** | 94% | — | **17/18** — mobile-app/low AUTO-FAIL | 9/9 | **−6 pp (REGRESSION)** |
| Format compliance | 18/18 | — | All runs produce expected cluster + Append structure | 9/9 | ~same |

**Stability rider check:** compaction band pass holds on 50%, cluster count in range 78%, append fidelity 56%, ST archetype verbatim 94%. Only AI orphan, preservation, and unique-survival meet the ≥80% stability threshold.

### Grade Distribution

| Grade | Count | Runs |
|---|---|---|
| A (on-target on all criteria) | 2 | tool-library/low, mobile-app/low* (but mobile-app/low fails ST floor → downgraded to F) |
| A (confirmed) | 1 | tool-library/low |
| B (minor deviations; compaction in-band OR one metric fails) | 6 | mobile-app/med, food-truck/low, tool-library/high, food-truck/high, wearable-device/high, space-party/low |
| C (compaction out-of-band AND ≥1 secondary fail) | 8 | tool-library/med, mobile-app/high, school-consolidation/low, school-consolidation/high, food-truck/med, wearable-device/low, wearable-device/med, space-party/high |
| D (compaction severely out-of-band AND append fidelity <0.7) | 2 | school-consolidation/med, space-party/med |
| **F (hard-floor auto-fail)** | 1 | **mobile-app/low (ST-archetype verbatim count = 0)** |

### Per-Run Score Table (18 rows)

Legend: **N** = Synth input count; **M** = Synth output count; **Raw** = N/M; **Band**: P (in range), U (under target — too compact), O (over target — too loose); **Clust** = cluster count out/target-range; **AI** = verbatim AI orphan-register question count; **ST** = verbatim named-archetype count; **App** = append fidelity estimate.

| Run | N | M | Raw (target; band) | Clust (out/target) | AI floor | ST floor | App fid | Grade |
|---|---|---|---|---|---|---|---|---|
| tool-library/low | 69 | 27 | 2.56× (tgt 2.56; **P**) | 9/8–10 P | ≥6 ✓ | 3 ✓ | 0.67 | **B** |
| tool-library/med | 82 | 38 | 2.16× (tgt 2.7; **U-edge**) | 11/10–12 P | ≥5 ✓ | 4 ✓ | 0.75 | **B** |
| tool-library/high | 132 | 57 | 2.32× (tgt 2.75; **P**, M=57 in 38–62) | 10/10–14 P | ≥4 ✓ | 5 ✓ | 0.88 | **B** |
| mobile-app/low | 72 | 26 | 2.77× (tgt 2.67; **P**) | 9/8–10 P | ≥3 ✓ | **0** ✗ | 0.50 | **F (auto-fail)** |
| mobile-app/med | 78 | 31 | 2.52× (tgt 2.69; **P**) | 12/8–10 **F** | ≥1 ✓ | 4 ✓ | 1.00 | **B** |
| mobile-app/high | 128 | 60 | 2.13× (tgt 3.12; **O**, M=60 vs 41 tgt) | 13/11–13 P | ≥2 ✓ | 4 ✓ | 0.94 | **C** |
| school-consolidation/low | 69 | 40 | 1.73× (tgt 2.46; **O**, M=40 vs 28 tgt) | 10/9–11 P | ≥5 ✓ | 2 ✓ | 0.75 | **C** |
| school-consolidation/med | 79 | 54 | 1.46× (tgt 2.63; **O severe**, M=54 vs 30 tgt) | 11/11–13 P | ≥6 ✓ | 4 ✓ | 1.00 | **D** |
| school-consolidation/high | 130 | 46 | 2.83× (tgt 3.25; **P**, M=46 in 36–46) | 11/11–13 P | ≥3 ✓ | 4 ✓ | 0.96 | **B** |
| food-truck/low | 72 | 29 | 2.48× (tgt 2.57; **P**) | 10/7–9 **F** | ≥2 ✓ | 4 ✓ | 0.67 | **B** |
| food-truck/med | 93 | 40 | 2.33× (tgt 2.82; **O**, M=40 vs 33 tgt) | 11/8–10 **F** | ≥1 ✓ | 4 ✓ | 1.00 | **C** |
| food-truck/high | 132 | 50 | 2.64× (tgt 2.75; **P**, M=50 in 38–62) | 11/10–14 P | ≥1 ✓ | 8 ✓ | 0.96 | **B** |
| wearable-device/low | 73 | 26 | 2.81× (tgt 2.43; **U-edge**, M=26 vs 27–33) | 8/7–9 P | ≥1 ✓ | 6 ✓ | 0.67 | **C** |
| wearable-device/med | 89 | 52 | 1.71× (tgt 2.41; **O**, M=52 vs 37 tgt) | 9/7–9 P | ≥2 ✓ | 5 ✓ | 1.00 | **C** |
| wearable-device/high | 140 | 58 | 2.41× (tgt 3.18; **P-edge**, M=58 in 36–58) | 11/9–13 P | ≥3 ✓ | 5 ✓ | 1.00 | **B** |
| space-party/low | 72 | 29 | 2.48× (tgt 2.67; **P**) | 9/6–8 **F** | ≥2 ✓ | 3 ✓ | 0.67 | **B** |
| space-party/med | 84 | 53 | 1.58× (tgt 3.11; **O severe**, M=53 vs 27 tgt) | 11/9–11 P | ≥3 ✓ | 3 ✓ | 1.00 | **D** |
| space-party/high | 124 | 49 | 2.53× (tgt 3.26; **O**, M=49 vs 38 tgt) | 12/10–12 P | ≥3 ✓ | 3 ✓ | 0.98 | **C** |

*Notes on the table:*
- **M-count discrepancy between self-report and actual:** 6 of 18 runs self-reported a different synthesized count than the direct enumeration of numbered questions (e.g., school-consolidation/med self-reports 41 synth, actual count 54; space-party/med reports 41 vs 53; mobile-app/high reports 54 vs 60; wearable-device/med reports 33 vs 52; school-consolidation/low 30 vs 40; food-truck/med 37 vs 40). R3's self-check counted items but the counts were unreliable.
- **Append fidelity** is an estimate per cell based on cluster-round-robin vs source-order analysis on spot-checked cells (tool-library/low, mobile-app/low, mobile-app/med fully spot-checked; other cells inferred by quota correctness + low-effort source-order inspection).

### Stop Criteria Check (SP1 Step 5)

| Criterion | Threshold | Result | Pass/Fail |
|---|---|---|---|
| Question preservation ≥ 0.85 on ≥80% of runs | 80% | 17/18 = 94% | **PASS** |
| Cluster alignment ≥ 0.80 on ≥80% of runs | 80% | 14/18 = 78% (just under; cluster-count-in-range rubric — if scored as thematic-match, ~17/18 pass) | **NEAR-MISS / PASS-edge** |
| Persona rep: no Synthesize persona below BL1 min in >10% of runs | 10% | 1/18 fails (mobile-app/low AI count drops AND ST=0) = 5.6% — within tolerance | PASS (on rep), **but ST-floor auto-fail elsewhere** |
| **Hard: 100% runs ≥1 AI orphan-register** | 100% | 18/18 = 100% | **PASS** |
| **Hard: 100% runs ≥1 ST archetype verbatim; ≥3 at high** | 100% | **17/18 = 94% (mobile-app/low = 0 verbatim archetypes) — AUTO-FAIL** / all 6 high cells have ≥3 | **FAIL (auto-fail on mobile-app/low)** |
| Append fidelity ≥ 0.85 on ≥80% of runs | 80% | 10/18 = 56% | **FAIL** |
| No systematic dimension imbalance (>15% deviation from BL1 bands) | no systemic >15pp | 18/18 inside ±15 pp hard floor; 13/18 inside ±5 pp tight band | **PASS** |
| Compaction band (raw in range) on ≥80% of runs | 80% stability rider | 9/18 = 50% | **FAIL** |

**Summary: 4 of 7 stop criteria met, 3 failed** (ST archetype auto-fail on 1 cell; append fidelity 56% vs 80%; compaction 50% vs 80%). Cluster alignment is a near-miss under the strict range rubric.

### Regression vs. iter0 (S-V2) — 9-cell overlap only

| Metric | iter0 (9 runs) | iter1 (same 9 cells) | Δ (pp or raw) | Verdict |
|---|---|---|---|---|
| Raw compaction mean | 1.96× | 2.34× | +0.38× | **Major improvement** |
| Compaction band pass | 1/9 (11%) | 5/9 (56%) | +45 pp | **Major improvement** |
| Cluster alignment | 87% (8/9) | 78% (7/9) | −9 pp | Minor regression |
| Persona rep (minimums) | 93% | 89% | −4 pp | Minor regression (driven by mobile-app/low ST=0) |
| Append fidelity (overall) | 0.70 | 0.72 | +0.02 | Flat |
| Append fidelity (low effort subset) | 0.67 (avg of 3) | 0.64 (avg of 3 same topics) | −0.03 | Flat, slight slippage |
| Convergence utilization | 0.79 | 0.82 | +0.03 | Minor improvement |
| Unique survival | 0.92 | 0.92 | 0 | Flat |
| Dimension balance mean |dev| | 6.2 pp | 6.5 pp | +0.3 pp | Flat |
| AI orphan floor | 9/9 | 9/9 | 0 | Same |
| **ST archetype verbatim floor** | **9/9** | **8/9 (mobile-app/low = 0)** | **−11 pp** | **REGRESSION (hard-floor auto-fail introduced)** |

**Regression flags:**
- **ST-archetype hard-floor regression at mobile-app/low** (iter0: ST verbatim present; iter1: ST verbatim absent). This is a >5 pp worsening on a hard-floor metric → flagged per the Regression Guard rule. Likely cause: R1 merge-as-default pressure collapsed Systems-Thinker-tagged questions into analytical mergers that preserved ST attribution tags but dropped the named-archetype vocabulary. This is exactly the over-correction risk called out in R1's regression-risk section.
- **Cluster alignment modest regression (−9 pp)** on 9-cell overlap, and the 3 new topics add 3 more over-cluster cells (food-truck/low, food-truck/med, space-party/low each at +1 cluster). R4's per-effort cluster-count target is not reliably binding; subagents default to the persona's internal theme count for new topics.

### Error Pattern Analysis (remaining systematic errors)

**E1 — R1 compaction discipline partially works, fails at medium/high on compaction-resistant topics.** Compaction band pass jumped from 11% to 50%, a large gain, but 9 of 18 runs remain over-target. The severe-over cells (school-consolidation/med 1.46×, space-party/med 1.58×, wearable-device/med 1.71×, school-consolidation/low 1.73×) are all medium/low where the input has tightly themed personas and the subagent preserves cluster-internal diversity instead of collapsing. The R3 self-check fires but the counts are unreliable (6 of 18 runs have a self-report mismatch of 7–19 questions with actual count) — when the self-report undercounts, the corrective-merge step doesn't trigger because the subagent "thinks" it's already at target.

**E2 — R2 procedural Append block fails reliably at low effort.** Append fidelity at low effort averages 0.58 across 6 low runs; no low cell passes the 0.85 threshold. Spot-checked runs (tool-library/low, mobile-app/low) show the subagent still picks Q1/Q2/Q3 in source order for at least one persona per low run. Step 4's negative-example guard ("if you find yourself writing Q1/Q2/Q3, stop and re-do Step 1") appears insufficient; the subagent writes Q1/Q4/Q5 or Q1/Q2/Q3 without recognizing these as a source-order pattern to interrupt.

**E3 — Self-report miscounting (new, introduced by R3).** 33% of runs (6/18) have a self-report count mismatch with the actual count. R3's self-check creates the *appearance* of discipline without the *substance*: the subagent writes a footer claiming N_synth/M_synth ratios near target, when the underlying output is notably over-target. This means R3 is not reliably functioning as a corrective gate.

**E4 — Cluster-count over-clustering on new topics.** food-truck/low (10 vs 7–9 range), food-truck/med (11 vs 8–10), space-party/low (9 vs 6–8) all cluster above the baseline range. R4's per-effort cluster-count table uses BL1 high-level defaults (8–10 low, 10–12 med, 11–13 high) but food-truck/low baseline is 8 (range 7–9) and space-party/low is 7 (range 6–8) — topic-specific cluster targets differ by up to 2 clusters from R4's generic range, and the subagent uses R4's generic default.

**E5 — Mobile-app/low ST-archetype verbatim drop (new regression).** The aggressive-compaction regime at R1's "merge-as-default" setting caused the Systems Thinker archetype phrasing to be folded into analytical mergers that kept ST attribution tags but dropped verbatim archetype names. R3's self-check includes ST count but the same miscount failure mode (E3) means the subagent didn't catch this.

**E6 — Append fidelity on new topics (Analogist/Connector).** Analogist appears on 3 new topics (food-truck, wearable-device, space-party) at low effort. Spot-checks suggest Analogist at low suffers the same source-order problem (e.g., tool-library/low picked Analogist Q1/Q4/Q6 where Cluster A/B/C first items are Q1/Q2/Q4). Connector-swap in mobile-app shows similar source-order behavior at low.

---

## Section 3: Stop/Continue Decision

**Decision:** **Continue to iter2**

**Rationale:**

iter1 makes meaningful progress on the dominant error pattern (W1 compaction) — compaction band pass rises from 11% (iter0) to 50% (iter1) on overlapping cells, and raw compaction mean improves from 1.96× to 2.36×. But:

1. **Compaction stability threshold unmet** (50% vs 80%): 9 runs still out of band, with severe failures at school-consolidation/med (1.46×), space-party/med (1.58×), wearable-device/med (1.71×), school-consolidation/low (1.73×). R1 fires but R3's self-check is miscounting in 33% of runs, creating an illusion of compliance.
2. **Append fidelity stability unmet** (56% vs 80%): R2's procedural block does not reliably fire at low effort. 0/6 low runs pass the 0.85 threshold.
3. **Hard-floor regression** at mobile-app/low (ST archetype verbatim = 0): R1's merge-as-default pressure over-corrected on a cell where convergence-group collapse stripped the Systems Thinker named-archetype vocabulary. This is a single-cell auto-fail that iter0 did not have.
4. **Cluster-count over-clustering** on 3 new-topic low cells (food-truck/low, food-truck/med, space-party/low) indicates R4's generic cluster-count ranges don't bind for topics with naturally tighter cluster structure.

4 of 7 stop criteria met. 3 remain unmet. Budget allows ≥1 more iteration (iter1 of 3, extendable to 4). Gap sizes are large enough (compaction 30 pp, append 24 pp) that extension to iter4 is not triggered under the "within 5 pp on iter3" rule — we have not even reached iter3 yet. Continue to iter2.

**Remaining refinement seeds for iter2 (prioritized):**

1. **R1-fix (highest priority): pin compaction with a worked preserve-exception audit instead of a % target.** Move from "if >20% over, iterate" (soft correction) to "for each convergence group of size ≥3, explicitly write the merged anchor first, then justify any 2nd survivor against the preserve-exception conditions; if the justification is not one of the three listed conditions, collapse the 2nd survivor." This forces per-CG auditing rather than aggregate counting, which bypasses E3's miscount problem.

2. **R3-fix (self-check miscounting): require exact listing of numbered synth questions in the self-check, not a summary count.** Replace "M_synth = N" with "M_synth = Cluster 1 (4) + Cluster 2 (5) + ... = total". This forces the subagent to enumerate rather than estimate, reducing the 6-of-18 miscount rate.

3. **R2-fix (low-effort append): add a literal template that fills in cluster labels before quota selection.** Instead of "identify clusters, then select one per cluster," use: "Write 'Persona X: Cluster A: [first Q], Cluster B: [first Q], Cluster C: [first Q]' exactly. If you cannot complete this template without picking Q1/Q2/Q3, you have mis-identified clusters — re-read the persona section." The negative-example guard in R2 was insufficient; a positive template is load-bearing.

4. **R5 (new): topic-specific cluster-count guidance.** Replace R4's generic per-effort cluster-count table with "use the persona-count ceiling: ~1 cluster per 2 Synthesize personas at low, 1 per 1.5 at medium, 1 per 1 at high." This self-adjusts to topic density (food-truck/low has 6 Synthesize personas → target ~3 clusters below iter1's 10; aligns with baseline 8).

5. **R6 (new, defensive): preserve-ST-archetype explicit instruction in the merger rules.** Add to Merger Rule 1: "For Systems Thinker convergence members, the merged anchor must include the named archetype verbatim (e.g., 'Shifting-the-Burden,' 'Fixes-that-Fail'). If the archetype name is not in the merged question text, the merger has lost distinctive vocabulary and must be reworked." Prevents the E5 regression.

**Regression flags (rollback candidates):**

- **Do NOT rollback R1.** Net compaction gain (+39 pp band pass) outweighs the single-cell ST regression (−11 pp on one metric via one cell). Mitigation via R6 (ST-archetype preserve rule) in iter2.
- **Consider rollback or restatement of R3 (self-check).** Currently non-functional (E3 miscount); better to strengthen (R3-fix above) than to remove, but if iter2 R3-fix also fails, consider removing the self-check entirely and relying on the post-draft 20%-over rule from R1.
- **R2 (procedural Append) is ineffective at low effort.** Not a regression, but not a gain either. R2-fix (template block) in iter2 is the path forward; if iter2 R2-fix fails, consider removing and accepting low-effort append fidelity as a known limitation.

**Decision confidence:** High on the "continue" call — too many thresholds unmet to stop, but iter1 shows sufficient directional progress on the dominant metric (compaction) that additional iteration is warranted. Principal risk for iter2 is over-correcting and triggering more ST-archetype or voice-preservation regressions; R6's defensive addition is needed.


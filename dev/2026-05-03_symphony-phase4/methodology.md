# Phase 4 Investigation Methodology

**Date:** 2026-05-03
**Parent:** [`dev/2026-04-27_effort-comparison.md`](../2026-04-27_effort-comparison.md) §4
**Companion reads:**
- All 10 `test-runs/{topic}/effort-comparison.md` documents (Phase 5 + per-topic effort-comparison completion as of mid-investigation update — see "Mid-Investigation Asset Update" below)
- [`dev/2026-05-03_effort-comparison.md`](../2026-05-03_effort-comparison.md) — 10-topic cross-comparison synthesis. Surfaces the **two-regime evaluation lens** (§5) and recommends pre-execution revisions to BL1 (§4) and the FA1/LB1/PP1/RG1/RP1 framing. The §6 audit confirms the 20 existing BL1 min/low ledgers stand as authoritative — no re-runs needed.
- [`dev/2026-04-23_symphony-phase5-investigation.md`](../2026-04-23_symphony-phase5-investigation.md) — parallel Phase 5 investigation
**Depends on:** All Phase 2B and Phase 2C findings as resolved inputs (persona roster, Synthesize/Append split, dimension categories, effort-level mappings); the three current Phase 4 prompts as starting state

> **Mid-Investigation Asset Update (post-BL1-min/low):** When this investigation began, only 4 topics had `test-runs/{topic}/effort-comparison.md` documents and only min/low had `BRAINSTORM.md` for the 6 Tier-B topics. The user has since completed Phase 5 (`BRAINSTORM.md` at every effort level) and per-topic `effort-comparison.md` for all 10 topics. The Tier-A vs. Tier-B distinction in earlier task files reflected memo availability at the time and is now historical; downstream tasks (BL1 med+high, FA1, LB1, RG1, RP1) treat all 10 topics symmetrically and read `test-runs/{TOPIC}/effort-comparison.md` as a standard reference input. Already-run tasks (SS1, BL1 min/low) preserve their original wording for transparency, and their outputs remain authoritative.

---

## Executive Summary

The Phase 2B and Phase 2C investigations validated question-generation and synthesis through structured tracks (PR1/PI1/O1/GT1 and BL1/SP1/PC1/TDA1). Phase 4 has accumulated three prompts (`phase4_full-synthesis.md`, `phase4_summary-only_low-effort.md`, `phase4_summary-only_min-effort.md`) and a model-audit trail without a comparable investigation series. The cross-effort comparison memos read PLAN/QUESTIONS/BRAINSTORM only and infer Phase 4 quality through Phase 5 output, leaving the Phase 4 → Phase 5 fidelity hop unobserved (note: at investigation start only 4 topics had these memos; per the Mid-Investigation Asset Update above, all 10 topics now have one).

This investigation makes Phase 4 directly observable. It samples 60 cluster-level Phase 4 outputs (1 cluster at `min` + 1 at `low` + 2 at `med` + 2 at `high` per topic, across 10 topics) from existing test-runs, builds a per-cluster through-line ledger from each cluster's Phase 3 inputs, and scores each Phase 4 output against its ledger. No new Phase 3 generation is required — all 40 (topic, effort) cells are complete on disk. The investigation closes by iterating the three Phase 4 prompts in `proposed-prompts/` until faithfulness, loss-budget, and cross-effort consistency targets are met.

**Two-regime evaluation lens** (per [`dev/2026-05-03_effort-comparison.md`](../2026-05-03_effort-comparison.md) §5). The 10-topic cross-comparison synthesis surfaces a structural feature: Symphony has two effort regimes, not four. The min↔low boundary is cosmetic; the load-bearing boundary lives between `low` and `med`. min/low share a *compression-with-distinctive-output* job (single- or two-voice → produce a summary that surfaces what one/two voices can't see, plus a distinctive artefact: conspicuous absences at min, neither-lens gaps at low). med/high share a *synthesis-with-reframe-surfacing* job (4–7 voice → preserve attribution + surface categorical reframe + quantify convergence). FA1/LB1/PP1/RG1/RP1 evaluate along this two-regime lens — each task file's "Two-Regime Evaluation Lens" section makes the regime-specific success and failure modes explicit.

**F4-MA1 (Model Assignment Review)** is deferred to a future investigation per scope decision; the audit-trail data remains on disk for that future work.

---

## Core Question

How well does each of the three Phase 4 prompts preserve the substance, attribution, and convergence signals of its Phase 3 inputs, and where do the three prompts drift apart in ways that break Phase 5 assumptions?

---

## Research Questions

| ID | Question | Status |
|---|----------|--------|
| FQ1 | **Faithfulness (full-synthesis path):** Does the med/high prompt preserve every persona's distinctive contribution into `_synthesis.md` and `_summary.md`? Are convergence counts traceable? Are quotes faithful? | Open |
| FQ2 | **Loss-budget (summary-only paths):** What fraction of through-lines visible in `responses/` survives into `{cluster}_summary.md` at min and low effort? | Open |
| FQ3 | **Three-prompt parity:** What contract surface (output schema, attribution rules, central tension, confidence tags, blind-spot detection, conspicuous-absences logic) do the three prompts share, and where do they legitimately diverge by effort level vs. drift inappropriately? | Open |
| FQ4 | **Cross-effort regression:** Holding Phase 2/3 outputs of a single topic constant, what variance is intentional (effort branching: more personas → more attribution; med→high adds aggregation pressure) vs. drift across the four Phase 4 paths within a topic? | Open |
| FQ5 | **Phase 4 → Phase 5 readiness:** Are Phase 4's named signals (Central Tension, confidence tags, Neither-lens gaps, conspicuous absences) emitted reliably enough for Phase 5 to aggregate them? (Bridges to the parallel Phase 5 investigation.) | Open |

---

## Phase 1: Sample Selection

### Goal

Freeze a representative 60-cluster sample across the 10 topics × 4 effort levels that all downstream tasks score against. **Sample-from-existing**, not assemble-from-scratch — source data is already at `test-runs/{topic}/{effort}/`.

### Sample Structure

Per topic (10 total): 1 cluster at `min` + 1 at `low` + 2 at `med` + 2 at `high`.

Per-effort totals across all 10 topics:
- 10 `min` samples (test `phase4_summary-only_min-effort.md`)
- 10 `low` samples (test `phase4_summary-only_low-effort.md`)
- 20 `med` samples (test `phase4_full-synthesis.md` at 4-persona pressure)
- 20 `high` samples (test `phase4_full-synthesis.md` at 7-persona pressure)
- **60 cluster samples total**

### Selection Criterion

Within each (topic, effort) cell, prefer high-signal clusters: those most likely to surface prompt failures. Operationally:
- Density of persona convergence (more agreement = more aggregation pressure)
- Richness of tension (DA + Pragmatist disagreement at low; multi-persona divergence at med/high)
- Density of unique insights (single-persona insights that risk being dropped)

For the two `med` and two `high` clusters per topic, the pair should differ in cluster-shape (e.g., one strategy-heavy + one tactical) to broaden within-effort signal.

### Deliverables

- `data-prep/sample-selection.md` — chosen cluster per (topic, effort) with rationale
- `data-prep/sample-manifest.md` — every Phase 3 input file path and every Phase 4 output file path for each sample, with byte counts, persona counts, model assignments. **Frozen snapshot.**
- `data-prep/manifest-analytics.md` — distributional analysis (cluster sizes, persona-count distribution, model-assignment distribution)

---

## Phase 2: Baseline / Ground-Truth Establishment

### Goal

For each of the 60 sampled clusters, build the through-line ledger that all scoring tasks (FA1, LB1, RG1) use as their reference.

### Pre-execution revisions (from [`dev/2026-05-03_effort-comparison.md`](../2026-05-03_effort-comparison.md) §4)

Eight revisions to BL1 are applied in [`tasks/BL1_baselines.md`](tasks/BL1_baselines.md) before the 40 med + high subagents launch:

1. **Raw-count tracking + per-effort classification** (§4.1) — convergence recorded as raw counts (e.g., `5/7`) plus a derived classification (`strong-convergent` ≥ ⌈M/2⌉+1, `weak-convergent` = ⌈M/2⌉, `single`). FA1 needs raw counts to verify "six of seven" claims in BRAINSTORM exec summaries.
2. **Hard-sequence the inputs** (§4.2) — Step 1 reads only `responses/` and produces the raw inventory; the topic's `effort-comparison.md` memo is read in a new Step 1.5 as *post hoc audit*, not seed material. Parallels the existing Step 6 `attributed/` cross-reference pattern.
3. **Persona-distinctiveness split** (§4.3, med + high only) — distinctiveness recorded as two sub-fields: distinctive through-lines (content) and distinctive framing (lens). FA1 must be able to detect framing-flattening failures where names survive but lenses are smoothed.
4. **Categorical reframe candidate** (§4.4, med + high only) — fifth Phase-5 signal: if the cluster's responses collectively reframe the *subject matter*, name the reframe. Skip if no reframe emerges.
5. **Memo-anomaly handling rule** (§4.5) — filesystem is canonical; memo discrepancies (e.g., property-management min's "80 (4 per question)" memo error) are flagged but do not contaminate the ledger.
6. **Tightened Opus-vs-Sonnet sanity check** (§4.6) — either skip and run all 40 med + high on Opus (bounded marginal cost), or use ≥4 samples with pre-registered "substantive agreement" thresholds.
7. **Neither-lens-gap taxonomy** (§4.7, low only) — 4-category bucketing (relational, equity, political-economy, emotional) for the cross-sample synthesis to aggregate cleanly. Applied retroactively to the 10 existing low ledgers in the synthesis step (no per-cluster re-run).
8. **BL1 → SS1 feedback gate** (§4.8) — between per-cluster baselines and FA1/LB1/RG1 launch, the cross-sample synthesis subagent reviews anomaly flags and recommends manifest addenda for unrecoverable samples. Cheap insurance.

The optional §4.9 add-on (Phase-4-signal propagation evidence at high) is incorporated into the cross-sample synthesis deliverable.

### Re-run audit for already-completed BL1 min/low ledgers — none required

Per [`dev/2026-05-03_effort-comparison.md`](../2026-05-03_effort-comparison.md) §6: the 20 existing BL1 min/low ledgers (10 min + 10 low, all in `baselines/`) were audited against §§4–5 of the cross-comparison synthesis. They already use raw-count tracking, the only memo references are post-hoc validation in NOTES fields (not seed material), and the property-management min memo error did not contaminate the ledger because the property-management memo did not exist when BL1 min/low ran. **The 20 existing ledgers stand as authoritative.** The cross-sample synthesis subagent retroactively applies the §4.7 taxonomy when reading them; no per-cluster re-runs are needed.

### Per-Cluster Baseline Artifacts

For each sample, produce one consolidated baseline file at `baselines/{topic}_{effort}_{NN}_{cluster-slug}_through-lines.md`:

1. **Through-line ledger** — every distinct claim/recommendation/observation present in the cluster's Phase 3 `responses/` files, with persona attribution and convergence count.
2. **Convergence map** (low/med/high only) — which through-lines appear in multiple persona responses; how many personas converged on each.
3. **Faithfulness target** — which through-lines should survive into `_synthesis.md` and `_summary.md` at this effort level.
4. **Persona-distinctiveness map** (med + high only) — for each persona, what is their distinctive contribution to this cluster that should not be lost in synthesis.

### Hybrid Construction Strategy

For **med + high samples**: seed the through-line ledger from the existing `synthesis/attributed/{NN}_{cluster-slug}.md` (it already attributes claims to personas), then audit against `responses/` to add dropped through-lines and remove fabricated ones. Faster than from-scratch.

For **min + low samples**: build from scratch from `responses/` — no `attributed/` exists. Lower cost because there is only 1 (min) or 2 (low) persona response files per cluster.

### Analysis Dimensions

Each baseline characterizes:

1. **Through-line density** — count per cluster, by persona
2. **Convergence rate** — fraction of through-lines with multi-persona support (low/med/high only)
3. **Persona representation** — which personas contribute what
4. **Effort-conditional expectations** — what should survive into `_summary.md` (universal) vs. `_synthesis.md` (med/high)
5. **Aggregable Phase-5 signals** — Central Tension candidate, confidence-tag candidates, Neither-lens gap candidates (low only), conspicuous-absence candidates (min only)

---

## Phase 3: Test Tracks

Five independent task tracks. After Phase 1 (SS1) is complete, PP1 can start immediately. After Phase 2 (BL1) is complete, FA1, LB1, and RG1 all unblock.

**Two-regime evaluation lens applied to the test tracks** (per [`dev/2026-05-03_effort-comparison.md`](../2026-05-03_effort-comparison.md) §5.4):

- **FA1** (med + high) gains two failure-mode axes beyond the original three: **framing-flattening** (do persona lenses survive even when content does?) and **categorical-reframe presence**. At `high` only, add **foundational-reversal presence** (see [`tasks/FA1_faithfulness-audit.md`](tasks/FA1_faithfulness-audit.md)).
- **LB1** (min + low) treats the regime-distinctive axes (Axis B tension preservation at low; Axis C conspicuous-absences quality at min) as co-primary with Axis A through-line survival, not subordinate. Adds the §4.7 neither-lens-gap taxonomy at low (see [`tasks/LB1_loss-budget.md`](tasks/LB1_loss-budget.md)).
- **PP1** explicitly enumerates **mandatory divergences** (not just legitimate ones) — collapsing them would break the prompt's job. Examples: conspicuous absences required at min and forbidden at med/high; neither-lens gaps required at low and n/a above; categorical reframe required at med/high and n/a below; convergence-count phrasing required at high. (See [`tasks/PP1_three-prompt-parity.md`](tasks/PP1_three-prompt-parity.md).)
- **RG1's** intentional-vs-drift classifier gains a third bucket: **regime-mandated divergence** — e.g., conspicuous-absences appearing at min but not at high is *not* drift; it's the prompt's correct job. (See [`tasks/RG1_cross-effort-regression.md`](tasks/RG1_cross-effort-regression.md).)
- **RP1's** iteration goals are tier-explicit. Full-synthesis iterations optimize for reframe + framing preservation under aggregation pressure. Summary-only iterations optimize for distinctive-output quality (conspicuous absences for min, neither-lens gaps for low) under compression pressure. (See [`tasks/RP1_refinement.md`](tasks/RP1_refinement.md).)

### F4-FA1 — Faithfulness Audit (full-synthesis path)

Score med + high `_synthesis.md` + `_summary.md` + `attributed/{cluster}.md` against the through-line ledger. Three scoring axes per sample:
- **Dropped persona names** (strict on med, weighted on high — see Discussion Q5)
- **Hallucinated quotes** (strict zero-tolerance)
- **Traceable convergence counts** (every "N of M personas converged" claim must be checkable against the ledger)

40 samples scored; cross-sample synthesis explicitly compares med vs. high to isolate persona-count effects.

### F4-LB1 — Loss-Budget Audit (summary-only paths)

Score min + low `{cluster}_summary.md` against the through-line ledger; quantify through-line survival fraction. Survival categories:
- **Verbatim** — through-line appears as named insight
- **Paraphrased** — through-line appears with rewording but recognizable substance
- **Absorbed** — through-line subsumed into a more general statement (separate category)
- **Dropped** — through-line absent

For low samples, also score tension-preservation (DA + Pragmatist contrast). For min samples, score conspicuous-absences detection (the prompt's stated value-add over raw response).

20 samples scored; split sub-section per prompt in the findings.

### F4-PP1 — Three-Prompt Parity

**No live generation runs.** Document the contract surface across the three prompts: output schema (frontmatter + section headings), attribution rules, Central Tension demand, confidence tags, blind-spot detection, conspicuous-absences logic. Identify legitimate effort-driven divergences vs. drift.

Produces a contract-diff document with recommended convergence points and a list of legitimate divergences.

### F4-RG1 — Cross-Effort Regression

Per topic (10 topics), diff Phase 4 outputs across all 4 effort branches against the through-line ledger. Characterize variance:
- **Intentional** — effort branching (more personas → more attribution; med→high adds aggregation pressure; full-synthesis adds attributed/synthesis docs)
- **Drift** — same content but format/quality varies inappropriately

Diff granularity: through-line presence (binary primary metric) + full-text similarity (continuous backup). Within-effort comparison (med-cluster-A vs. med-cluster-B; high-cluster-A vs. high-cluster-B) tests prompt-stability across cluster shape.

Doubles as the regression harness for RP1's iteration loop.

---

## Phase 4: Refinement

### Goal

Take findings from FA1, LB1, PP1, RG1 and produce three revised prompts in `proposed-prompts/`. Re-score against the revised prompts; iterate within budget.

### Iteration Strategy

- **Single-track refine** for `phase4_full-synthesis.md` (mature prompt — incremental fixes only)
- **2 variants** for the summary-only prompts (prompts are still evolving — meaningful design space remains)

### Stop Criteria (Discussion Q12)

- FA1 ≥ 90% on persona-name preservation across the 40 med+high samples
- Zero hallucinated quotes
- LB1 ≥ 80% through-line survival across the 20 min/low samples
- RG1 variance classified as ≥ 95% intentional (rest documented)

### Iteration Budget

3 iterations maximum (per Discussion Q12; mirrors 2C SP1's PR1 ceiling). After 3 iterations, ship the best variant and document residual issues.

### Final Deliverables

1. **Revised Phase 4 prompts** at `proposed-prompts/phase4_*.md` (3 files)
2. **Integration spec** at `findings/integration-spec.md` — what changes in `idea-symphony/SKILL.md` and `idea-symphony/templates/synthesis-*.md` to land the new prompts
3. **Aggregable Phase-5 signal log** — per-cluster Central Tension / confidence tag / Neither-lens gap inventory that satisfies Phase 5 E4

---

## Sequencing

```
SS1 (sample selection, 1 subagent)
  ↓
PP1 (no baselines needed) ──┐    ← can start immediately after SS1
                            │
BL1 (60 subagents, fan-out) ┼─→ FA1 (40 subagents — med + high samples)
                            │  → LB1 (20 subagents — min + low samples)
                            │  → RG1 (10 subagents — per topic, all 4 efforts)
                            │
                            ↓
                          RP1 (refinement, up to 3 iterations)
                            ↓
                       integration-spec.md
```

**Parallelism with the Phase 5 investigation:** runs concurrently. FA1 explicitly emits the per-cluster aggregable signals Phase 5 needs (FQ5). The two streams share the test-runs corpus but have no blocking dependencies on each other.

---

## Expected Outputs

### Per-Phase Deliverables

| Phase | Deliverable |
|-------|-------------|
| Phase 1 | 60-sample manifest + analytics in `data-prep/` and `test-data/` |
| Phase 2 | 60 baseline files in `baselines/` + `findings/BL1_baselines.md` cross-sample synthesis |
| Phase 3 | 4 test-track findings (`findings/{FA1,LB1,PP1,RG1}_*.md`) + per-sample sub-findings |
| Phase 4 | 3 revised prompts in `proposed-prompts/` + `findings/integration-spec.md` |

### Final Deliverables

1. **Revised Phase 4 prompts** ready to migrate to `idea-symphony/prompts/phase4_*.md`
2. **Integration specification** — what changes in SKILL.md and templates/ to land the new prompts
3. **Faithfulness/loss-budget benchmarks** — expected through-line survival rates and persona-name preservation rates by effort level
4. **Aggregable Phase-5 signal inventory** — closes Phase 5 E4

---

## Relationship to Other Investigations

| Investigation | Relationship |
|---|---|
| **Phase 2B (`2026-03-01_symphony-phase2B-orchestrator-selection`)** | Resolved input. Persona roster, model-orchestration decisions are canonical. |
| **Phase 2C (`2026-03-01_symphony-phase2C-synthesis`)** | Resolved input. Synthesize/Append split, dimension categories, effort-level mappings are canonical. Structural template for this investigation. |
| **Phase 5 (`2026-04-23_symphony-phase5-investigation`)** | Parallel. FA1's Phase-5-signal log satisfies E4 if and only if FA1 explicitly emits the per-cluster Neither-lens gap inventory. Bake this requirement into FA1's deliverable spec. |
| **F4-MA1 (Model Assignment Review)** | Deferred. Audit-trail data on disk; future investigation. |
| **F5-EX1 (Phase 5 prompt extraction)** | NOT a precondition. Independent of this work. |

---

## Out of Scope

- Any change to Phase 3 (persona response generation) — settled by Phase 2C and the per-topic effort-comparison memos. Phase 3 outputs are treated as fixed.
- Phase 5's `BRAINSTORM.md` content itself — that is the parallel Phase 5 investigation's domain.
- Session-top `SUMMARIES.md` and `SYNTHESIS.md` — those are Phase 5 deterministic concatenations built by `scripts/build-summaries.sh` and `scripts/build-synthesis.sh`, not Phase 4 outputs.
- Model-assignment effects — deferred per scope decision.
- Changes to `idea-symphony/prompts/phase4_*.md` directly — revisions land in `proposed-prompts/` first; canonical-path migration only after the user reviews `integration-spec.md`.

---

**Last Updated:** 2026-05-03
**Based on:** [`dev/2026-04-27_effort-comparison.md`](../2026-04-27_effort-comparison.md) §4, [`dev/2026-04-23_symphony-phase5-investigation.md`](../2026-04-23_symphony-phase5-investigation.md), Phase 2B and 2C resolved inputs

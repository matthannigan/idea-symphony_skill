# Phase 4 — Loss-Budget Audit (Summary-Only Paths)

**Date:** 2026-05-03
**Parent:** [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md)
**Maps to:** F4-LB1 in [`dev/2026-04-27_effort-comparison.md`](../../2026-04-27_effort-comparison.md) §4
**Inputs:**
- Parent methodology — [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md) (Phase 3 §F4-LB1)
- BL1 baselines — `dev/2026-05-03_symphony-phase4/baselines/{topic}_{min|low}_{NN}_{cluster-slug}_through-lines.md` (20 files for min + low samples)
- SS1 manifest — `dev/2026-05-03_symphony-phase4/data-prep/sample-manifest.md`
- Phase 4 summary-only prompts under test:
  - [`idea-symphony/prompts/phase4_summary-only_min-effort.md`](../../../idea-symphony/prompts/phase4_summary-only_min-effort.md)
  - [`idea-symphony/prompts/phase4_summary-only_low-effort.md`](../../../idea-symphony/prompts/phase4_summary-only_low-effort.md)

---

## Background

### Context

The two summary-only Phase 4 prompts (`phase4_summary-only_min-effort.md` for `min` and `phase4_summary-only_low-effort.md` for `low`) produce just one document per cluster: `{cluster}_summary.md`. Memo §4 names the audit: **"Quantify the fraction of through-lines visible in responses that survive into the summary."**

LB1 measures through-line survival rate per sample, splits by prompt (min vs. low), and tracks two per-prompt extras:
- For low: tension-preservation between The Devil's Advocate (risk) and The Pragmatist (feasibility) — the prompt's stated value-add over either single-lens summary
- For min: conspicuous-absences detection — the prompt's stated value-add over the raw response

### What We Know

| Dimension | Pinned |
|---|---|
| Samples | 20 (10 min + 10 low) |
| Survival categories | Verbatim, paraphrased (=survival), absorbed (separate), dropped (per Discussion Q8) |
| Through-line counting unit | Topic-level claim (per Discussion Q7) |
| Survival pass threshold | 80% (per RP1 stop criterion) |
| Tension-preservation rubric (low) | DA + Pragmatist contrast must be substantively framed in `_summary.md` (not smoothed to neutral consensus) |
| Conspicuous-absences rubric (min) | If BL1 ledger names absences, `_summary.md` should surface them as a section |

### Research Questions

- **RQ-LB1a (FQ2):** What fraction of through-lines visible in `responses/` survives into `_summary.md` at min? At low?
- **RQ-LB1b (FQ2):** For low samples, is the DA + Pragmatist tension preserved substantively (per the prompt's "name the disagreements" requirement)?
- **RQ-LB1c (FQ2):** For min samples, does `_summary.md` surface conspicuous absences (per the prompt's "Watch for conspicuous absence" instruction)?
- **RQ-LB1d (FQ4):** How does survival rate vary across topics within each effort?

---

## Investigation Task

### I-LB1: Score min + low Phase 4 outputs against ground-truth ledgers

**Key question:** For each of the 20 min + low cluster samples, what fraction of through-lines in BL1's ledger survives into `_summary.md`, and does the prompt deliver its stated extras (tension at low; conspicuous absences at min)?

**Research questions addressed:** RQ-LB1a–d (methodology FQ2, FQ4)

**Execution model:** Fan-out by sample. **20 Opus subagents in parallel** (batched 6 concurrent ≈ 4 waves), one per min or low sample. Cross-sample synthesis subagent compiles per-prompt patterns.

### Test Data

20 samples from BL1's baselines (10 min + 10 low).

### Subagent Design

**Per-sample scoring subagent (20 subagents):**

Each reads:
- The relevant Phase 4 summary-only prompt (min or low)
- BL1's ledger for its sample
- The Phase 4 `{cluster}_summary.md` output
- The raw `responses/{cluster}/*.md` (for cross-checking)

Produces one scoring sub-finding file per sample.

**Cross-sample synthesis subagent (1 subagent):**

Reads all 20 per-sample findings + BL1 baselines and compiles cross-sample analysis split by prompt.

### Per-Sample Subagent Prompt

Spawn each per-sample subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt. Substitute `{TOPIC}`, `{EFFORT}` (min | low), `{CLUSTER_NN}`, `{CLUSTER_SLUG}`, `{PROMPT_PATH}` (`idea-symphony/prompts/phase4_summary-only_{EFFORT}-effort.md`).

````
You are scoring the loss-budget of Phase 4 summary-only output for one cluster sample. You handle one (topic, effort, cluster) — {TOPIC}/{EFFORT}/{CLUSTER_NN}_{CLUSTER_SLUG} — in isolation. Your output drives the LB1 cross-sample synthesis and feeds into RP1's prompt-revision targets.

## Inputs to Read

1. {PROMPT_PATH} — the Phase 4 summary-only prompt under test
2. `dev/2026-05-03_symphony-phase4/baselines/{TOPIC}_{EFFORT}_{CLUSTER_NN}_{CLUSTER_SLUG}_through-lines.md` — BL1's ground-truth ledger
3. `test-runs/{TOPIC}/{EFFORT}/synthesis/{CLUSTER_NN}_{CLUSTER_SLUG}_summary.md` — Phase 4 output (the only output for summary-only paths)
4. `test-runs/{TOPIC}/{EFFORT}/responses/{CLUSTER_NN}_{CLUSTER_SLUG}/*.md` — raw Phase 3 responses (for cross-checking; 1 file at min, 2 at low)

## Scoring Methodology

### Axis A: Through-Line Survival

For each through-line in BL1's ledger:
- Find it in `_summary.md`. Classify as:
  - **Verbatim** — appears as a named insight, recognizable phrasing
  - **Paraphrased** — appears with different wording but recognizable substance (counts as survival)
  - **Absorbed** — subsumed into a more general statement (separate category — tracked but not counted as survival per Discussion Q8)
  - **Dropped** — no recognizable trace

**Scoring:**
- Survival rate = (verbatim + paraphrased) / (total through-lines in ledger)
- Absorption rate = absorbed / total
- Drop rate = dropped / total
- Pass threshold = 80%

For min samples, distinguish further:
- Of the through-lines marked `[recurring]` in BL1 (intra-response repeats — high-confidence in single-voice setup), what is the survival rate? — **strict 100% target for `[recurring]` items**

### Axis B: Tension Preservation (low samples only)

The `phase4_summary-only_low-effort.md` prompt explicitly demands the DA + Pragmatist tension be framed substantively, not smoothed:

> Smoothed (fails the `low` effort mandate): "Members appreciate accessibility, but balance is needed between inclusivity and sustainability."
> Tension-preserved (succeeds): "A feasibility-oriented case argues for sliding-scale membership ...; a risk-oriented counterpoint flags ..."

For your low sample, audit `_summary.md` for tension preservation:
- Does the Central Tension line name the trade-off explicitly? (Y / N / weak)
- Does the Executive Summary frame the disagreement substantively (not by persona name, but by stance)? (Y / N / smoothed)
- Are recommendations tagged `[trade-off]` where the BL1 ledger flags trade-off through-lines? (% match)

**Scoring:**
- Tension-preservation verdict: pass (substantive framing) / partial (some smoothing) / fail (consensus-only)

### Axis C: Conspicuous-Absences Detection (min samples only)

The `phase4_summary-only_min-effort.md` prompt explicitly demands a "Conspicuous absences" section noting stances the brainstormer never took:

> Note any stance the brainstormer's output never takes — a feasibility consideration the brainstormer skipped, a risk dimension never raised, a stakeholder group never named, a downside never flagged.

For your min sample, audit `_summary.md`:
- Is the Conspicuous Absences section present? (Y / N — "skip if nothing" is allowed by the prompt, so absence is acceptable iff BL1's ledger also flags no candidates)
- If present, do the named absences match BL1's conspicuous-absence candidates? (% match)
- Are the absences specific (e.g., "no risk dimension named") or generic ("more perspectives needed")? Specificity is a quality signal.

**Scoring:**
- Conspicuous-absences-detection verdict: pass (matches BL1 candidates with specificity) / partial / fail (missing or generic when BL1 flagged real candidates)

### Phase-5 Signal Audit

For each sample, document:
- **Central Tension** in `_summary.md`: present? Match BL1 candidate? (Y / partial / N)
- **Confidence tags** in `_summary.md`: present? Match BL1 candidates? (% match)
- **Neither-lens gaps** (low only): present in BL1 → present in output? Match? (Y / partial / N / n/a)
- **Conspicuous absences** (min only): same audit as Axis C above (cross-link)

## Deliverable

Produce one scoring sub-finding file:

`dev/2026-05-03_symphony-phase4/findings/LB1_loss-budget_{TOPIC}_{EFFORT}_{CLUSTER_NN}.md`

```markdown
# LB1 Per-Sample Score: {TOPIC}/{EFFORT}/{CLUSTER_NN}_{CLUSTER_SLUG}

**Date:** [today]
**Sample ID:** {TOPIC}_{EFFORT}_{CLUSTER_NN}_{CLUSTER_SLUG}
**Effort:** {EFFORT}
**Prompt under test:** {PROMPT_PATH}
**Through-line count in BL1 ledger:** [N]

---

## Axis A: Through-Line Survival

| BL1 TL ID | TL summary | Status in `_summary.md` | Notes |
|---|---|---|---|
| TL-1 | [...] | verbatim | named in Key Themes section |
| TL-2 | [...] | paraphrased | reworded as recommendation |
| TL-3 | [...] | absorbed | subsumed into a general "various trade-offs" sentence |
| TL-4 | [...] | dropped | no trace |
| ... | ... | ... | ... |

**Survival rate:** [verbatim + paraphrased] / [total] = X%
**Absorption rate:** [absorbed] / [total] = Y%
**Drop rate:** [dropped] / [total] = Z%

**For min samples only — `[recurring]` survival:**
- `[recurring]` through-lines in BL1: [N]
- Of those, surviving in `_summary.md`: [N]
- Recurring-survival rate: X% (target: 100%)

**Survival-axis verdict:** [pass (≥ 80%) | fail (< 80%)]

## Axis B: Tension Preservation (low only) — n/a if min

- Central Tension line: "[exact text]" — [Y / N / weak]
- Executive Summary tension framing: [substantive | smoothed]
- `[trade-off]` tag match: [N matched / M expected = X%]

**Tension-axis verdict:** [pass | partial | fail]

## Axis C: Conspicuous-Absences Detection (min only) — n/a if low

- Section present in `_summary.md`: [Y / N]
- BL1 candidates: [list]
- Output absences: [list]
- Match rate: [N matched / M = X%]
- Specificity: [specific (named) | generic (vague)]

**Conspicuous-absences verdict:** [pass | partial | fail]

## Phase-5 Signal Audit

- Central Tension match to BL1: [Y / partial / N]
- Confidence-tag match rate: [X%]
- Neither-lens gap match (low only): [Y / partial / N / n/a]
- Conspicuous-absence match (min only): [cross-link to Axis C]

## Sample Verdict

**Pass:** Axis A passes AND (Axis B passes for low | Axis C passes for min).
**Fail:** Either axis fails.

**Verdict:** [PASS | FAIL]

**Failure modes (if FAIL):** [Bullet list. e.g., "Axis A fail: only 65% survival rate. The 5 dropped through-lines all came from the late-question section of the response — possibly a length-budget issue."]

**Recommended prompt revision target (if FAIL):** [Specific suggestion. e.g., "For min-effort prompt: add explicit guidance to weight late-question through-lines equally — currently the prompt's 'Extract patterns' instruction may bias toward early-listed responses."]
```

## Quality Standards

- Survival classification must be applied per through-line; do not aggregate without per-TL scoring.
- For low samples, the "smoothed" judgment in Axis B requires direct quotation from `_summary.md` to justify. "Sounds smoothed" is not a finding.
- For min samples, "specificity" of absences must be checked by reading the actual BL1 candidates — generic absences are a fail iff BL1 flagged specific real candidates.
- The "Recommended prompt revision target" is the most important field for RP1.

## Notes

- Do not modify any files outside `dev/2026-05-03_symphony-phase4/findings/`.
- Do not produce any new Phase 4 outputs (RP1's job).
- If BL1's ledger appears wrong (e.g., missed an obvious through-line), do not modify it — flag in the Verdict section.
````

### Cross-Sample Synthesis Subagent Prompt

After all 20 per-sample subagents complete:

````
You are compiling the LB1 cross-sample analysis from 20 per-sample scoring sub-findings, split by prompt (min vs. low).

## Inputs to Read

1. `dev/2026-05-03_symphony-phase4/methodology.md`
2. `dev/2026-05-03_symphony-phase4/findings/LB1_loss-budget_*.md` — all 20 per-sample sub-findings
3. All 20 BL1 baselines for min + low samples
4. `idea-symphony/prompts/phase4_summary-only_min-effort.md` — min prompt under test
5. `idea-symphony/prompts/phase4_summary-only_low-effort.md` — low prompt under test

## Deliverables

### 1. `dev/2026-05-03_symphony-phase4/findings/LB1_loss-budget.md`

Cross-sample synthesis. Structure:

```markdown
# Phase 4 Investigation — LB1 Loss-Budget Findings

**Date:** [today]
**Samples scored:** 20 (10 min + 10 low)

---

## Headline

[1-2 paragraph verdict per prompt: does each summary-only prompt meet the 80% survival target? Does the low prompt preserve tension? Does the min prompt surface conspicuous absences?]

---

## Min-effort prompt (`phase4_summary-only_min-effort.md`)

### Survival rate

| Sample | Survival rate | Absorption rate | Drop rate | `[recurring]` survival | Verdict |
|---|---|---|---|---|---|
| [topic]_min_[NN] | X% | Y% | Z% | W% | [pass/fail] |
| ... | ... | ... | ... | ... | ... |

**Aggregate survival rate (10 samples):** X%
**Pass rate (≥ 80%):** N/10

### Conspicuous-absences detection

[Aggregate analysis of how often the prompt surfaces specific real absences vs. skips the section vs. produces generic filler.]

### Failure modes (min)

For each recurring failure pattern (count ≥ 2 samples):
- **Pattern name:** [...]
- **Affected samples:** [...]
- **Mechanism:** [...]
- **Recommended prompt revision target:** [...]

---

## Low-effort prompt (`phase4_summary-only_low-effort.md`)

### Survival rate

| Sample | Survival rate | Absorption rate | Drop rate | Verdict |
|---|---|---|---|---|
| [topic]_low_[NN] | X% | Y% | Z% | [pass/fail] |
| ... | ... | ... | ... | ... |

**Aggregate survival rate (10 samples):** X%
**Pass rate (≥ 80%):** N/10

### Tension preservation

[Aggregate: how often is tension framed substantively vs. smoothed vs. weakened? Sample-level table.]

### Failure modes (low)

[Same structure as min above.]

---

## Cross-prompt observations

- Min vs. low survival comparison: [does survival rate differ between the two prompts? expected differences vs. anomalies]
- Through-line types most likely to drop: [common patterns across both prompts]
- Through-line types most likely to absorb: [common patterns]

## Recommendations for RP1

[Prioritized list of prompt revisions per prompt, sorted by failure-mode impact across the 20 samples.]
```

### 2. `dev/2026-05-03_symphony-phase4/findings/LB1_scoring-matrix.md`

A flat 20-row table showing all axis scores per sample, useful for RP1 iteration tracking.
````

### Expected Output

| Output | Path |
|---|---|
| Per-sample scoring sub-findings | `dev/2026-05-03_symphony-phase4/findings/LB1_loss-budget_{topic}_{effort}_{NN}.md` (20 files) |
| Cross-sample synthesis | `dev/2026-05-03_symphony-phase4/findings/LB1_loss-budget.md` |
| Scoring matrix | `dev/2026-05-03_symphony-phase4/findings/LB1_scoring-matrix.md` |

---

## Dependency Notes

- **Depends on:** BL1 baselines for the 20 min + low samples being complete.
- **Blocks:** RP1.
- **Independent of:** FA1 (different sample set, different prompts).

## Priority

**Critical-path test track.** 20 subagents, batched 6 concurrent ≈ 4 waves.

## Discussion Questions Affecting This Task

- **Q7** (through-line counting unit) — pinned to topic-level claim
- **Q8** (survival definition) — pinned to verbatim+paraphrased=survival, absorbed=separate category

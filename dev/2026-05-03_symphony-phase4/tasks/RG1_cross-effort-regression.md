# Phase 4 — Cross-Effort Regression

**Date:** 2026-05-03
**Parent:** [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md)
**Maps to:** F4-RG1 in [`dev/2026-04-27_effort-comparison.md`](../../2026-04-27_effort-comparison.md) §4
**Inputs:**
- Parent methodology — [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md) (Phase 3 §F4-RG1)
- BL1 baselines — `dev/2026-05-03_symphony-phase4/baselines/{topic}_*_through-lines.md` (60 files, all efforts)
- SS1 manifest — `dev/2026-05-03_symphony-phase4/data-prep/sample-manifest.md`
- Per-topic effort-comparison memos — `test-runs/{TOPIC}/effort-comparison.md` (available for all 10 topics; see methodology.md mid-investigation asset update). RG1's primary external reference for the topic's persistent through-line list.
- The three Phase 4 prompts (for context on what variance is intentional)
- 10-topic cross-comparison synthesis — [`dev/2026-05-03_effort-comparison.md`](../../2026-05-03_effort-comparison.md) — §5 two-regime evaluation lens; the variance classifier below gains a third bucket per §5.4.

---

## Two-Regime Evaluation Lens (variance classification gains a third bucket)

Per [`dev/2026-05-03_effort-comparison.md`](../../2026-05-03_effort-comparison.md) §5.4, RG1's intentional-vs-drift classifier originally had two buckets. The 10-topic data shows several cross-effort variances are **regime-mandated** — collapsing them would break the prompts' jobs. RG1 now classifies cross-effort variance into THREE buckets:

1. **Regime-mandated divergence (NEW)** — the variance reflects a mandatory difference between regimes (per PP1's §5.2 enumeration). Examples:
   - Conspicuous-absences section appearing at min but not at med/high
   - Neither-lens-gaps section appearing at low but not at med/high
   - Categorical reframe surfacing at med/high but not at min/low
   - Convergence-count phrasing surfacing at high but not below
   These are NOT drift; flagging them as drift would generate noise that blocks RP1 from focusing on real failures.
2. **Intentional (effort branching / cluster-shape)** — the variance reflects effort-tier differences (more personas → more attribution; finer clustering at higher effort) or cluster-shape differences (the two med samples target different sub-topics). Original "intentional" bucket.
3. **Drift** — same content, format/quality varies inappropriately (e.g., through-line present at med, dropped at high; word-count varies wildly without regime justification). Original "drift" bucket; RP1 priority.

The third-bucket distinction matters most when comparing across the min/low ↔ med/high regime boundary. A through-line that's a recommendation at min but a categorical reframe at med is *not* drift — it's the prompt's correct job. RG1 must not lump regime-mandated divergences into "drift" or it will generate spurious RP1 targets.

---

## Background

### Context

Memo §4 names RG1: **"Freeze a Phase 2/3 output set, run Phase 4 across all four effort branches against it, diff the outputs. Characterize variance and identify which differences are intentional (effort branching) vs. drift."**

For this investigation, RG1 doesn't need to *generate* new Phase 4 outputs — all 40 (topic, effort) cells are already complete on disk. Each topic has its full 4-effort coverage, and SS1's manifest gives us 6 sampled clusters per topic (1 min + 1 low + 2 med + 2 high) to use as the regression diff inputs.

RG1 has two scoring axes per topic:
- **Cross-effort comparison** — how does Phase 4 output evolve across the four effort branches within a topic?
- **Within-effort comparison** — how does Phase 4 output vary across the two med (and two high) clusters of a topic? (Tests prompt-stability across cluster shape.)

RG1 doubles as the regression harness for RP1's iteration loop.

### What We Know

| Dimension | Pinned |
|---|---|
| Samples | 60 (6 per topic × 10 topics) |
| Diff granularity | Through-line presence (binary primary metric) + full-text similarity (continuous backup) per Discussion Q10 |
| Within-effort diff | 2 med samples vs. each other; 2 high samples vs. each other (per topic) |
| Cross-effort diff | Each topic's 4 efforts compared against each other and against BL1's through-line ledgers |
| Variance classification | Intentional (effort branching) vs. drift (per Discussion Q11; cross-effort drift triggers RP1 first) |

### Research Questions

- **RQ-RG1a (FQ4):** Per topic, what variance across the 4 effort branches is intentional vs. drift?
- **RQ-RG1b (FQ4):** Per topic, do the 2 med samples (and 2 high samples) produce consistent prompt behavior across cluster shape?
- **RQ-RG1c (FQ4):** What variance patterns recur across topics? (Drift that appears in 5+ topics is a high-priority RP1 target.)
- **RQ-RG1d (FQ3, FQ4):** Where does cross-effort drift align with PP1's contract drift findings?

---

## Investigation Task

### I-RG1: Diff Phase 4 outputs across effort branches per topic

**Key question:** Per topic, where does Phase 4 output legitimately evolve across efforts vs. drift inappropriately, and does within-effort prompt behavior stay consistent across cluster shape?

**Research questions addressed:** RQ-RG1a–d (methodology FQ3, FQ4)

**Execution model:** Fan-out by topic. **10 Opus subagents in parallel** (batched 6 concurrent ≈ 2 waves), one per topic. Each handles all 6 of its topic's samples (1 min + 1 low + 2 med + 2 high). Cross-topic synthesis subagent compiles patterns.

### Test Data

For each topic, the 6 sampled clusters from SS1's manifest plus their BL1 baselines.

### Subagent Design

**Per-topic regression subagent (10 subagents):**

Each reads:
- The 6 BL1 baselines for its topic
- The 6 corresponding Phase 4 outputs (1 `_summary.md` at min, 1 `_summary.md` at low, 2 `_summary.md` + 2 `_synthesis.md` + 2 `attributed/{cluster}.md` at med, same at high)
- The 6 corresponding Phase 3 response directories (for context)
- The three Phase 4 prompts (for what's intentional)

Produces one regression sub-finding per topic.

**Cross-topic synthesis subagent (1 subagent):**

Reads all 10 per-topic findings and compiles cross-topic patterns + variance classification.

### Per-Topic Subagent Prompt

Spawn each per-topic subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt. Substitute `{TOPIC}`.

````
You are running cross-effort regression analysis for one topic in the Phase 4 prompt-investigation. You handle one topic — {TOPIC} — across all 4 effort branches and 6 sampled clusters in isolation. Your output drives the RG1 cross-topic synthesis and serves as the regression harness for RP1's iteration loop.

## Inputs to Read

1. `dev/2026-05-03_symphony-phase4/methodology.md` — full methodology
2. `dev/2026-04-27_effort-comparison.md` — source memo
3. `test-runs/{TOPIC}/effort-comparison.md` — your topic's per-topic effort-comparison memo (available for all 10 topics; the persistent-through-line list and §3 fidelity table are RG1's primary external reference for cross-effort variance classification)
4. `dev/2026-05-03_symphony-phase4/data-prep/sample-manifest.md` — locate the 6 samples for {TOPIC}
5. The three Phase 4 prompts:
   - `idea-symphony/prompts/phase4_full-synthesis.md`
   - `idea-symphony/prompts/phase4_summary-only_low-effort.md`
   - `idea-symphony/prompts/phase4_summary-only_min-effort.md`
6. **Your topic's 6 BL1 baselines:**
   - 1 at `baselines/{TOPIC}_min_*_through-lines.md`
   - 1 at `baselines/{TOPIC}_low_*_through-lines.md`
   - 2 at `baselines/{TOPIC}_med_*_through-lines.md`
   - 2 at `baselines/{TOPIC}_high_*_through-lines.md`
7. **Your topic's 6 Phase 4 outputs:**
   - 1 `test-runs/{TOPIC}/min/synthesis/[NN]_[slug]_summary.md`
   - 1 `test-runs/{TOPIC}/low/synthesis/[NN]_[slug]_summary.md`
   - 2 `test-runs/{TOPIC}/med/synthesis/[NN]_[slug]_summary.md` + 2 `_synthesis.md` + 2 `attributed/[NN]_[slug].md`
   - 2 each at high
8. **Your topic's 6 Phase 3 response dirs:** `test-runs/{TOPIC}/{effort}/responses/[NN]_[slug]/*.md` (for context only)

Tool-use hint: 6 baselines + 12-14 Phase 4 output files. Read in parallel batches.

## Method

### Step 1: Build the through-line presence matrix

For each through-line in each of the 6 BL1 ledgers, record presence in the corresponding Phase 4 output(s):

```
TL-ID    | min | low | med-A | med-B | high-A | high-B | Notes
TL-1     | Y   | Y   | Y     | Y     | Y      | Y      | universal — load-bearing
TL-2     | -   | Y   | Y     | Y     | Y      | Y      | absent at min — appears once persona contrast unlocks it
TL-3     | -   | -   | Y     | -     | Y      | Y      | appears in 1 of 2 med, both high — within-effort variance
TL-4     | -   | -   | -     | -     | Y      | -      | appears only in 1 high — single-cluster signal
...
```

Note: through-lines from each cell's BL1 ledger are different sets — they're per-cluster. So the matrix is per-topic-pivot: list each through-line under the cell where it originates and check whether it appears in *that cluster's* output.

For cross-effort comparison, you also want to track **persistent through-lines** — themes that should appear across all 4 efforts because they're load-bearing for the topic. Use the topic's `test-runs/{TOPIC}/effort-comparison.md` memo's enumeration of persistent through-lines (typically 10-11 per topic per the memo template) as the authoritative list. All 10 topics have one as of the mid-investigation asset update.

### Step 2: Cross-effort variance analysis

For each persistent through-line in the topic (use the `test-runs/{TOPIC}/effort-comparison.md` memo's list as the authoritative source; cross-check against BL1 baselines for any through-lines the memo missed but BL1 found load-bearing):
- Does it appear in the min sample's `_summary.md`? Low sample's? Both med samples'? Both high samples'?
- If it drops at one effort but not adjacent: **investigate** — is the drop intentional (cluster-shape didn't surface it) or drift (prompt failure)?

Variance classification per through-line (THREE buckets per the two-regime lens):
- **Regime-mandated divergence (NEW)** — the variance reflects a mandatory difference between min/low and med/high regimes per PP1's §5.2 enumeration. Examples:
  - The cluster's categorical reframe surfaces at med/high but not at min/low — *not* drift; it's the prompt's correct job (categorical reframes are n/a at min/low)
  - Conspicuous absences appear at min but not at med/high — *not* drift; mandatory divergence
  - Convergence-count phrasing ("six of seven") appears at high but not below — *not* drift; mandatory divergence
- **Intentional (effort branching)** — through-line absent at min/low because clustering at lower effort is coarser and the through-line emerges only at finer clustering. Intentional.
- **Intentional (cluster-shape)** — through-line present in 1 of 2 med samples because the two clusters have different shape. Intentional.
- **Drift** — through-line present at high, dropped at med (within the same regime). Or present in 1 high sample, absent in the other for no cluster-shape reason. Or paraphrased away in `_summary.md` while preserved in `_synthesis.md`. Likely prompt failure.

Drift across the min/low ↔ med/high regime boundary is the trickiest case. If a through-line surfaces at low but not at med, ask: did `low`'s DA × Pragmatist framing surface a tension that `med`'s 4-persona panel correctly *resolved* into a different frame? If so, this is regime-mandated divergence (the through-line shape changed per the regime's job), not drift.

### Step 3: Within-effort consistency

For each pair (med-A vs. med-B; high-A vs. high-B):
- How many through-lines are present in both? (intersection)
- How many in only one? (XOR — within-effort variance)
- Is the variance attributable to cluster-shape (legitimate) or prompt instability?

Sample-level full-text similarity (cosine or section-by-section qualitative judgment) as a backup signal: are the two `_summary.md` files at med stylistically similar (good — prompt-stable) or stylistically very different (concerning — prompt-unstable)?

### Step 4: Format/quality drift

Independent of through-line presence, audit format/quality drift across the 4 efforts:
- Section headings consistent across efforts as expected from PP1's contract matrix?
- Frontmatter aligned?
- Word counts within reason?
- Confidence-tag usage consistent?

Cross-link to PP1 findings — if PP1 flagged a contract drift, RG1 should observe it manifesting in this topic's outputs.

## Deliverable

Produce one regression sub-finding file:

`dev/2026-05-03_symphony-phase4/findings/RG1_cross-effort-regression_{TOPIC}.md`

```markdown
# RG1 Per-Topic Regression: {TOPIC}

**Date:** [today]
**Topic:** {TOPIC}
**Samples covered:** 6 (1 min + 1 low + 2 med + 2 high)
**Effort-comparison memo:** `test-runs/{TOPIC}/effort-comparison.md` (available for all 10 topics per the mid-investigation asset update)

---

## Cross-Effort Through-Line Presence Matrix

[Table as in Method Step 1, with persistent topic through-lines as rows and the 6 samples as columns. Mark Y / - / partial / paraphrased per cell.]

## Cross-Effort Variance Classification

| Through-line | Pattern | Classification | Rationale |
|---|---|---|---|
| [TL summary] | present at all 4 efforts | intentional (load-bearing) | cited in effort-comparison memo as persistent |
| [TL summary] | absent at min, present low+ | intentional (effort branching) | min has 1 generic response, can't surface this nuance |
| [TL summary] | categorical reframe — present at med/high, absent at min/low | **regime-mandated divergence (NEW)** | min/low cannot surface a categorical reframe by construction; this is the prompt's correct job |
| [TL summary] | conspicuous absence — present at min, absent at med/high | **regime-mandated divergence (NEW)** | conspicuous absences are min-distinctive |
| [TL summary] | "six of seven personas converged" — present at high, absent at med/low/min | **regime-mandated divergence (NEW)** | convergence-count phrasing is high-distinctive |
| [TL summary] | present at med, absent at high | **DRIFT** | high has more personas, should be more not less; suggests aggregation pressure dropping it |
| [TL summary] | present in 1 of 2 med samples | intentional (cluster-shape) | the two med clusters target different sub-topics |
| ... | ... | ... | ... |

**Drift count for this topic:** [N through-lines drifted across efforts]
**Regime-mandated divergence count:** [N — categorical reframe / conspicuous-absence / convergence-count differences]
**Intentional variance count:** [N — effort branching + cluster-shape]

## Within-Effort Consistency

### Med pair (cluster-A vs. cluster-B)

- Through-line intersection: [N]
- XOR (in only one): [N]
- Cluster-shape attribution: [N XOR through-lines explainable by different cluster topics; M not explainable — likely prompt instability]
- Stylistic similarity verdict: [similar | different but justified | concerning drift]

### High pair (cluster-A vs. cluster-B)

[Same structure]

## Format / Quality Drift

| Item | min | low | med | high | Aligned? |
|---|---|---|---|---|---|
| Frontmatter `stage` field value | "Phase 4: Summary Generation" | "Phase 4: Summary Generation" | "Phase 4: Response Synthesis" | "Phase 4: Response Synthesis" | NO — drift confirmed (matches PP1 finding) |
| Word count in `_summary.md` | [N] | [N] | [N med-A] / [N med-B] | [N high-A] / [N high-B] | varies; flag outliers |
| Central Tension presence in `_summary.md` | absent | present | absent | absent | NO — drift confirmed (matches PP1 finding) |
| Confidence-tag usage | recurring/single | convergent/trade-off/etc. | none in `_summary.md` | none | drift between tag vocabularies (matches PP1) |
| ... | ... | ... | ... | ... | ... |

## Recommendations for RP1 (topic-level)

[List of topic-specific RP1 priorities. Most should align with FA1/LB1/PP1 findings; flag any topic-specific patterns not captured elsewhere.]
```

## Quality Standards

- Every variance classification must cite specific evidence (a through-line text excerpt, a memo reference, a cluster-shape difference).
- Drift findings must cross-link to PP1 (if PP1 already flagged the same drift) so RP1 doesn't fix the same thing twice with different framings.
- Stylistic-similarity judgments must include at least 2-3 sentences of reasoning; "similar" without justification is not a finding.

## Notes

- Do not modify any files outside `dev/2026-05-03_symphony-phase4/findings/`.
- Do not produce any new Phase 4 outputs (RP1's job).
- This task is fundamentally per-topic; do not synthesize across topics. Cross-topic synthesis is a separate step.
- All 10 topics have a `test-runs/{TOPIC}/effort-comparison.md` memo (per the methodology's mid-investigation asset update), so the persistent through-line list is sourced from there. Cross-check against BL1 baselines: through-lines that appear in 4+ baselines but are not on the memo's persistent list should be flagged in your sub-finding as "persistent per BL1 but not memo" for the cross-topic synthesis.
````

### Cross-Topic Synthesis Subagent Prompt

After all 10 per-topic subagents complete:

````
You are compiling the RG1 cross-topic regression analysis from 10 per-topic sub-findings.

## Inputs to Read

1. `dev/2026-05-03_symphony-phase4/methodology.md`
2. `dev/2026-05-03_symphony-phase4/findings/RG1_cross-effort-regression_*.md` — all 10 per-topic sub-findings
3. `dev/2026-05-03_symphony-phase4/findings/PP1_three-prompt-parity.md` — for cross-linking

## Deliverables

### 1. `dev/2026-05-03_symphony-phase4/findings/RG1_cross-effort-regression.md`

Cross-topic synthesis. Structure:

```markdown
# Phase 4 Investigation — RG1 Cross-Effort Regression Findings

**Date:** [today]
**Topics covered:** 10
**Samples covered:** 60

---

## Headline

[1-2 paragraph verdict: is variance across the 4 effort branches mostly intentional or mostly drift? What patterns recur across topics?]

## Drift patterns recurring across topics

For each drift pattern observed in 5+ topics:
- **Pattern:** [e.g., "Through-line present at med, dropped at high — aggregation pressure failure"]
- **Affected topics:** [list]
- **Cross-link to PP1:** [if PP1 flagged related contract drift]
- **Recommended RP1 fix:** [concrete prompt revision target]

## Within-effort prompt stability

| | mean intersection rate (med pair) | mean intersection rate (high pair) | concerning instability count |
|---|---|---|---|
| Across 10 topics | X% | Y% | N topics flagged |

## Format / quality drift summary

[Aggregate the format-drift table from each per-topic finding. Surface the most frequent format drifts.]

## Recommendations for RP1

[Cross-topic prioritization of prompt revisions. Sort by drift-pattern recurrence count.]
```

### 2. `dev/2026-05-03_symphony-phase4/findings/RG1_variance-classification.md`

A summary of intentional-vs-drift variance per topic, useful as RP1's regression harness during iteration.

```markdown
# RG1 Variance Classification

| Topic | Cross-effort drift count | Within-effort instability count | Total drift items | Notes |
|---|---|---|---|---|
| career-change | [N] | [N] | [N] | [...] |
| food-truck | [N] | [N] | [N] | [...] |
| ... | ... | ... | ... | ... |

**Aggregate drift count:** [N across 10 topics]
**Aggregate regime-mandated divergence count:** [N — three sub-categories: categorical reframe / conspicuous absence / convergence count]
**Aggregate intentional-variance count:** [N]
**Drift / total ratio:** [%] (excluding regime-mandated divergence from the denominator per the two-regime lens)

**RP1 stop criterion:** RG1 variance ≥ 95% intentional means (drift) / (drift + intentional + regime-mandated) ≤ 5%. Regime-mandated divergence is counted on the *intentional* side (it is not failure). Current: [%].
```
````

### Expected Output

| Output | Path |
|---|---|
| Per-topic sub-findings | `dev/2026-05-03_symphony-phase4/findings/RG1_cross-effort-regression_{topic}.md` (10 files) |
| Cross-topic synthesis | `dev/2026-05-03_symphony-phase4/findings/RG1_cross-effort-regression.md` |
| Variance classification | `dev/2026-05-03_symphony-phase4/findings/RG1_variance-classification.md` |

---

## Dependency Notes

- **Depends on:** BL1 baselines for all 60 samples. Optionally consults PP1 findings (cross-link) but does not strictly block on them.
- **Blocks:** RP1.
- **Doubles as:** the regression harness for RP1's iteration loop. RP1 reruns this analysis (or a subset) per iteration.

## Priority

**Critical-path test track.** 10 subagents, batched 6 concurrent ≈ 2 waves. Lowest fan-out per task in the investigation.

## Discussion Questions Affecting This Task

- **Q10** (diff granularity: through-line presence vs. full-text similarity) — pinned to "through-line presence primary, full-text similarity backup" in the prompt above
- **Q11** (within-effort vs. cross-effort signal weight) — pinned to "report both equally; RP1 triggers on cross-effort drift first" in the prompt above

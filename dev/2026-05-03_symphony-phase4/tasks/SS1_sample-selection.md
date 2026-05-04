# Phase 4 — Sample Selection

**Date:** 2026-05-03
**Parent:** [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md)
**Inputs:**
- Parent methodology — [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md) (Phase 1 Sample Selection, sample structure, selection criterion)
- Source memo — [`dev/2026-04-27_effort-comparison.md`](../../2026-04-27_effort-comparison.md) §4
- Effort-comparison memos — `test-runs/{topic}/effort-comparison.md` for the four topics that have one (career-change, food-truck, habit-tracker, space-party)
- Persona roster — [`idea-symphony/guidance/phase2D_brainstorming-personas.md`](../../../idea-symphony/guidance/phase2D_brainstorming-personas.md)
- Topic descriptions — [`test-runs/REQUESTS_ALL.md`](../../../test-runs/REQUESTS_ALL.md)
- Per-cell question files — `test-runs/{topic}/{effort}/questions/by-topic/{NN}_{cluster-slug}.md` (40 cells × 4–11 clusters each)
- Per-cell response directories — `test-runs/{topic}/{effort}/responses/{NN}_{cluster-slug}/` (40 cells)

---

## Background

### Context

This investigation makes Phase 4 directly observable by sampling existing per-cluster Phase 4 outputs and scoring them against per-cluster ground-truth ledgers built from the corresponding Phase 3 inputs. The sample manifest produced by SS1 is the frozen reference that BL1 builds baselines against, and that FA1, LB1, RG1 then score against. **A bad sample dooms downstream scoring.**

Per the methodology's Phase 1 spec: 1 cluster at `min` + 1 at `low` + 2 at `med` + 2 at `high` per topic = 60 cluster samples total across 10 topics.

### What We Know

| Dimension | Pinned |
|---|---|
| Sample size | 60 cluster samples (10 topics × 6 per topic) |
| Per-effort breakdown | 10 min + 10 low + 20 med + 20 high |
| Per-topic breakdown | 1 min + 1 low + 2 med + 2 high |
| Cluster pair diversity (med, high) | **Hard constraint** (per Discussion Q2) — different cluster-shape (one strategy-heavy + one tactical, or one human-centered + one structural, etc.) for every (topic, med) pair AND every (topic, high) pair |
| Selection criterion | High-signal: dense persona convergence, rich tension, dense unique insights — see Discussion Q1 |
| Topic ordering | Tier-A first (career-change, food-truck, habit-tracker, space-party), then the other 6 topics — see Discussion Q3 |

### Research Questions

- **RQ-SS1a (FQ1, FQ2, FQ4):** Which 60 clusters most likely surface Phase 4 prompt failures across the three prompts? What is the rationale per sample?
- **RQ-SS1b:** What is the full file-path inventory per sample (Phase 3 input paths, Phase 4 output paths, persona counts, byte counts, model assignments) such that a regenerated session would be detectable?
- **RQ-SS1c:** What is the persona-coverage profile across the 60 samples? Are any personas systematically under-represented in the chosen samples?

---

## Investigation Task

### I-SS1: Select 60 cluster samples and freeze the manifest

**Key question:** For each (topic, effort) cell, which cluster(s) would most efficiently expose Phase 4 prompt failures?

**Research questions addressed:** RQ-SS1a, RQ-SS1b, RQ-SS1c (methodology FQ1, FQ2, FQ4)

**Execution model:** 1 Opus subagent. Reads the four `effort-comparison.md` memos and persona-roster docs, then enumerates every (topic, effort) cell's cluster set, samples 6 clusters per topic per the structure above, and produces the frozen manifest. Single subagent because the work is fundamentally cross-cell — fan-out would lose the cross-topic comparison context.

**Test data:** All 40 (topic, effort) cells under `test-runs/{topic}/{effort}/`.

### Subagent Design

One Opus subagent (`general-purpose` type) reads:

1. The methodology and source memo
2. The four `effort-comparison.md` memos for cross-topic context
3. The persona roster for persona-distinctiveness signal
4. For each of the 40 (topic, effort) cells: the cluster list (`questions/by-topic/*.md` filenames) + a high-level scan of each cluster's question count and persona-response density (`responses/{cluster}/` listing + byte counts)

The subagent then picks 6 clusters per topic per the rules above and produces the manifest.

### Subagent Prompt

Spawn with the following self-contained prompt (Opus model, `general-purpose` type):

````
You are selecting cluster samples for the Idea Symphony Phase 4 prompt-investigation. Your output is the frozen reference manifest that downstream tasks (BL1 baselines, FA1 faithfulness audit, LB1 loss-budget audit, RG1 cross-effort regression) score against. If your sample is wrong, all downstream scoring is wrong.

## Task

Select 60 cluster samples — 6 per topic across 10 topics — distributed as:
- 1 cluster at `min` effort per topic (10 total — tests `phase4_summary-only_min-effort.md`)
- 1 cluster at `low` effort per topic (10 total — tests `phase4_summary-only_low-effort.md`)
- 2 clusters at `med` effort per topic (20 total — tests `phase4_full-synthesis.md` at 4-persona pressure)
- 2 clusters at `high` effort per topic (20 total — tests `phase4_full-synthesis.md` at 7-persona pressure)

The 10 topics are: career-change, food-truck, habit-tracker, space-party (the four with `effort-comparison.md` memos — process these first), then mobile-app, property-management, school-consolidation, tool-library, wearable-device, youth-mentorship.

## Inputs to Read

1. `dev/2026-05-03_symphony-phase4/methodology.md` — full methodology
2. `dev/2026-04-27_effort-comparison.md` — source memo, §4 in particular
3. `test-runs/career-change/effort-comparison.md`, `test-runs/food-truck/effort-comparison.md`, `test-runs/habit-tracker/effort-comparison.md`, `test-runs/space-party/effort-comparison.md` — for cross-topic context on which clusters carry the most signal
4. `idea-symphony/guidance/phase2D_brainstorming-personas.md` — persona roster
5. `test-runs/REQUESTS_ALL.md` — topic descriptions
6. For each of the 40 (topic, effort) cells, scan:
   - `test-runs/{topic}/{effort}/questions/by-topic/` directory (lists all clusters with their slugs)
   - `test-runs/{topic}/{effort}/responses/` directory (lists per-cluster persona response files)
   - At least 2-3 representative cluster files per cell to gauge content density and prompt-failure-surface

Tool-use hint: scanning 40 cells × directory listings is heavy. Issue directory listings in parallel batches; only read full cluster files for the candidates you're seriously considering.

## Selection Criterion

For each (topic, effort) cell, prefer clusters that meet one or more of these signals (highest first):

- **Densest persona convergence** (most "N of M personas converged" signals expected) — high aggregation pressure on the prompt
- **Richest tension** — clearest DA/Pragmatist contrast at low; clearest multi-persona disagreement at med/high
- **Densest unique insights** — most single-persona observations that risk being dropped in synthesis

For the two `med` (and two `high`) clusters per topic: pair them with **different cluster-shape** — this is a **hard constraint** (per Discussion Q2), not a soft preference. Use this taxonomy of cluster shapes:

- **Strategy-heavy** — clusters about positioning, decision architecture, long-horizon trade-offs, market or constituency framing
- **Tactical** — clusters about implementation specifics, pricing, sequencing, operational mechanics, day-to-day
- **Human-centered** — clusters about identity, emotion, sustainability, relational dynamics, stakeholder experience
- **Structural / financial** — clusters about money, runway, legal, compliance, infrastructure, supply chain
- **Risk-focused** — clusters about failure modes, second-order effects, compliance risk, what-could-go-wrong
- **Opportunity-focused** — clusters about upside, growth, expansion, what-could-be-bigger

For each (topic, med) pair and (topic, high) pair, pick clusters from **two different shapes** — name the shapes explicitly in `sample-selection.md`. If the topic's cluster set genuinely cannot support shape diversity (e.g., all 8 clusters are tactical), document the reason in `sample-selection.md` under "Shape-diversity exception" and flag for the user to override before BL1 starts. Do not silently accept a single-shape pair.

## Deliverables

Produce three files (no other files):

### 1. `dev/2026-05-03_symphony-phase4/data-prep/sample-selection.md`

Per-topic narrative explaining sample selection. For each of the 10 topics, list the 6 chosen clusters with rationale.

```markdown
# Phase 4 Investigation — Sample Selection Rationale

**Date:** [today]
**Sample size:** 60 clusters across 10 topics
**Selection criterion:** Densest persona convergence + richest tension + densest unique insights

---

## Topic 1: career-change

### Cluster set summary
- min: [N clusters total in test-runs/career-change/min/questions/by-topic/]
- low: [N clusters]
- med: [N clusters]
- high: [N clusters]

### Selected samples

**min sample:** `01_motivation-and-identity` — Why selected: [1-2 sentences naming the specific signal that made this cluster a high-failure-surface choice. Cite persona count and content density.]

**low sample:** [cluster_slug] — Why selected: [...]

**med samples (2):** *(shape diversity required)*
- [cluster_slug_A] — shape: [strategy-heavy | tactical | human-centered | structural/financial | risk-focused | opportunity-focused] — Why: [...]
- [cluster_slug_B] — shape: [different from A] — Why: [...]

**high samples (2):** *(shape diversity required)*
- [cluster_slug_A] — shape: [...] — Why: [...]
- [cluster_slug_B] — shape: [different from A] — Why: [...]

**Shape-diversity verification:** med pair shapes = [A, B] (distinct ✓ | exception: [reason]); high pair shapes = [A, B] (distinct ✓ | exception: [reason])

---

## Topic 2: food-truck

[Same structure...]

---

[Continue for all 10 topics.]

---

## Cross-topic notes

- Persona coverage: [which personas appear most/least often across the 60 samples; flag any persona that appears in 0 high-effort samples since the persona-distinctiveness audit at high needs them]
- Cluster-shape diversity: [topics where the soft preference for diversity was met vs. compromised]
- Tier-A vs. Tier-B notes: [any meaningful differences in cluster signal density between the 4 effort-comparison-memo topics and the other 6]
```

### 2. `dev/2026-05-03_symphony-phase4/data-prep/sample-manifest.md`

Frozen file-path inventory. One row per sample (60 rows). Use a markdown table.

```markdown
# Phase 4 Investigation — Sample Manifest

**Date:** [today]
**Sample count:** 60
**Status:** Frozen — downstream tasks reference this manifest as ground truth

---

| # | topic | effort | cluster-NN | cluster-slug | personas | Phase 3 input dir | Phase 4 _summary.md | Phase 4 _synthesis.md | Phase 4 attributed/ | model-requested | model-reported |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | career-change | min | 01 | motivation-and-identity | 1 (generic) | test-runs/career-change/min/responses/01_motivation-and-identity/ | test-runs/career-change/min/synthesis/01_motivation-and-identity_summary.md | (n/a — summary-only path) | (n/a) | [from frontmatter] | [from frontmatter] |
| 2 | career-change | low | NN | [slug] | 2 (the-devils-advocate, the-pragmatist) | ... | ... | (n/a) | (n/a) | ... | ... |
| 3 | career-change | med | NN | [slug] | 4 (...) | ... | ... | ... | ... | ... | ... |
| 4 | career-change | med | NN | [slug] | 4 (...) | ... | ... | ... | ... | ... | ... |
| 5 | career-change | high | NN | [slug] | 7 (...) | ... | ... | ... | ... | ... | ... |
| 6 | career-change | high | NN | [slug] | 7 (...) | ... | ... | ... | ... | ... | ... |
| 7 | food-truck | min | ... | ... | ... | ... | ... | ... | ... | ... | ... |
[continue for all 60 rows]

---

## Verification

After freezing, downstream tasks should verify:
- All 60 Phase 3 input directories exist and are non-empty
- All 60 Phase 4 `_summary.md` files exist
- All 40 med/high `_synthesis.md` and `attributed/` files exist
- Byte counts match — flag any divergence as a possible mid-investigation regeneration

[List byte counts per Phase 4 output file at manifest-freeze time, so downstream tasks can detect drift.]
```

### 3. `dev/2026-05-03_symphony-phase4/data-prep/manifest-analytics.md`

Distributional analysis across the 60 samples.

```markdown
# Phase 4 Investigation — Manifest Analytics

**Date:** [today]

---

## Cluster-size distribution

| Effort | min | mean | median | max |
|---|---|---|---|---|
| min | [N questions] | [...] | [...] | [...] |
| low | ... | ... | ... | ... |
| med | ... | ... | ... | ... |
| high | ... | ... | ... | ... |

## Response-byte distribution per sample

[Table or histogram description: total bytes of `responses/{cluster}/*.md` per sample, by effort. This indicates per-sample reading cost for BL1.]

## Persona representation across the 60 samples

| Persona | min count | low count | med count | high count | total |
|---|---|---|---|---|---|
| The Generic Brainstormer | 10 | 0 | 0 | 0 | 10 |
| The Devil's Advocate | 0 | 10 | [N] | [N] | [...] |
| The Pragmatist | 0 | 10 | [N] | [N] | [...] |
| ... | ... | ... | ... | ... | ... |

## Model-assignment distribution

[Per-effort: which models generated the existing Phase 4 outputs across the 60 samples. Frequency by `model-requested` and `model-reported`. Flagged for the future MA1 investigation but not used by this investigation.]

## Notable anomalies

[Any samples with unusual properties: missing files, regenerated with a different model than its peers, persona count divergence from spec, etc. Flag for downstream tasks.]
```

## Quality Standards

- Every sample's rationale in `sample-selection.md` must cite the specific signal (convergence count, tension type, unique-insight density) that made it a high-failure-surface choice. "Looked interesting" is not a rationale.
- Manifest paths must be exact and verified to exist. Downstream tasks read these paths blindly.
- Persona representation should be balanced where the topic supports it — flag in cross-topic notes if any persona is systematically excluded from high-effort samples (since FA1's persona-distinctiveness audit needs them).
- Tier-A topics first in every output (manifest rows 1-24, sample-selection sections 1-4, etc.) so downstream batched fan-out can land Tier-A early.
- **Shape-diversity is a hard constraint** for med and high pairs (per Discussion Q2). Every (topic, med) pair and (topic, high) pair must explicitly name two distinct shapes from the taxonomy above; document any exception with a reason and flag for user override.

## Notes

- Do not generate any new Phase 3 or Phase 4 outputs. This task only inventories existing files.
- Do not modify any files outside `dev/2026-05-03_symphony-phase4/data-prep/`.
- If a candidate cluster has anomalies (missing response files, incomplete Phase 4 output, frontmatter misalignment), select an alternative and flag the anomaly in `manifest-analytics.md` under "Notable anomalies."
- The manifest is the contract for the rest of the investigation. After this task completes, BL1, FA1, LB1, RG1 all read paths from this manifest exclusively.
````

### Expected Output

| Output | Path |
|---|---|
| Selection rationale | `dev/2026-05-03_symphony-phase4/data-prep/sample-selection.md` |
| Frozen manifest | `dev/2026-05-03_symphony-phase4/data-prep/sample-manifest.md` |
| Distributional analytics | `dev/2026-05-03_symphony-phase4/data-prep/manifest-analytics.md` |
| Subagent execution summary | `dev/2026-05-03_symphony-phase4/findings/SS1_sample-selection.md` (the orchestrator records this after the subagent returns, summarizing key choices, anomalies, and any selection-criterion calls that deviated from defaults) |

---

## Dependency Notes

- **Blocks everything.** SS1 must complete before BL1 starts. PP1 also depends on SS1's manifest (PP1 reads "a sample of actual outputs across all 60 samples" to verify what the prompts produce).
- **Depends on:** All 40 (topic, effort) cells being complete on disk (verified — see methodology Pre-conditions §). The four `effort-comparison.md` memos are inputs but only for context; do not block on cross-validation against them.
- **No upstream dependencies on other tasks in this investigation.**

## Priority

**Critical path. Run first.** Single subagent, ≈ 1 day of execution. Cannot be parallelized.

## Discussion Questions Affecting This Task

- **Q1** (cluster-selection rule) — pinned to high-signal hybrid in the prompt above (resolved per Q1 response)
- **Q2** (cluster-shape diversity within (topic, med)) — **pinned to hard constraint** in the prompt above (resolved per Q2 response; escalated from soft preference)
- **Q3** (topic ordering) — pinned to Tier-A first in the prompt above (resolved per Q3 response)

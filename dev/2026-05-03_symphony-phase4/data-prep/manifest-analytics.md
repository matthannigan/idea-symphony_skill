# Phase 4 Investigation — Manifest Analytics

**Date:** 2026-05-03
**Sample count:** 60

Distributional analysis across the 60 selected samples (see `sample-manifest.md` for the row-by-row inventory).

---

## Cluster-size distribution (questions per cluster)

Question counts derived by counting numbered list items (`^[0-9]+\.`) in each `test-runs/{topic}/{effort}/questions/by-topic/{cluster}.md` file across the 60 selected samples.

| Effort | min | mean | median | max |
|---|---|---|---|---|
| min | 4 | 4.7 | 5 | 5 |
| low | 4 | 6.1 | 6.5 | 9 |
| med | 4 | 6.15 | 6 | 9 |
| high | 7 | 9.9 | 9.5 | 16 |

Min and med have similar means at the cluster level; the per-cluster question count is similar even though the **per-cluster persona count** scales 1 → 2 → 4 → 7. The effort-scaling investment lives in Phase 3 (persona expansion), not in Phase 2 (cluster question count) — consistent with `dev/2026-04-27_effort-comparison.md` §2.

Outliers:
- **high max = 16 questions** (food-truck/high/08 regulatory-strategy or similar high-density cluster).
- **min minimum = 4 questions** consistent across the small-effort generic generator.

---

## Response-byte distribution per sample

Total bytes of `responses/{cluster}/*.md` per sample, by effort. This is the per-sample reading cost for BL1's through-line ledger construction.

| Effort | min bytes | max bytes | mean bytes | total bytes | sample count |
|---|---|---|---|---|---|
| min | 11,863 | 18,995 | 14,639 | 146,390 | 10 |
| low | 16,506 | 47,414 | 29,081 | 290,814 | 10 |
| med | 42,473 | 84,966 | 59,830 | 1,196,619 | 20 |
| high | 88,666 | 239,578 | 150,648 | 3,012,966 | 20 |

**Total Phase 3 reading cost across all 60 samples: ~4.65 MB** of response markdown for BL1 to ledger.

Effort scaling (mean bytes): min = 14.6k, low = 29.1k (2.0x), med = 59.8k (2.1x of low; 4.1x of min), high = 150.6k (2.5x of med; 10.3x of min). The persona count scales 1 → 2 → 4 → 7 (1x → 2x → 4x → 7x); response bytes track persona count roughly linearly with a per-persona content-density growth at high.

Outliers (top 5 by response bytes):
1. **#35 property-management/high/07 community-relations-and-good-neighbor-operations — 239,578 B** (largest sample by margin)
2. **#53 wearable-device/high/10 lived-experience-trust-anxiety — 232,302 B**
3. **#12 food-truck/high/08 regulatory-strategy-and-political-engagement — 201,245 B**
4. **#36 property-management/high/02 regulatory-strategy-and-multi-jurisdiction-compliance — 183,982 B**
5. **#60 youth-mentorship/high/11 outcome-measurement-evidence — 178,719 B**

Schedule the top-3 samples in dedicated FA1 batches (don't co-schedule with two more high samples each, since each ~200k+ cluster needs full attention).

---

## Persona representation across the 60 samples

Persona counts derived from each cluster's `responses/*.md` filenames. Generic-response (the min-effort placeholder) appears once per min cluster.

| Persona | min count | low count | med count | high count | total |
|---|---|---|---|---|---|
| generic-response | 10 | 0 | 0 | 0 | **10** |
| the-devils-advocate | 0 | 10 | 20 | 20 | **50** |
| the-pragmatist | 0 | 10 | 20 | 20 | **50** |
| the-analogist | 0 | 0 | 1 | 16 | **17** |
| the-empath | 0 | 0 | 8 | 12 | **20** |
| the-storyteller | 0 | 0 | 6 | 12 | **18** |
| the-audience-advocate | 0 | 0 | 4 | 11 | **15** |
| the-visionary | 0 | 0 | 4 | 10 | **14** |
| the-systems-thinker | 0 | 0 | 4 | 7 | **11** |
| the-provocateur | 0 | 0 | 0 | 6 | **6** |
| the-constraint-flipper | 0 | 0 | 0 | 6 | **6** |
| the-connector | 0 | 0 | 0 | 5 | **5** |
| the-futurist | 0 | 0 | 1 | 5 | **6** |
| the-politician | 0 | 0 | 2 | 4 | **6** |
| the-accountant | 0 | 0 | 3 | 0 | **3** |
| the-lawyer | 0 | 0 | 3 | 2 | **5** |
| the-first-principles-thinker | 0 | 0 | 1 | 2 | **3** |
| the-momentum-builder | 0 | 0 | 2 | 1 | **3** |
| the-simplifier | 0 | 0 | 1 | 1 | **2** |

**Personas with thin coverage (≤3 total):** Accountant (3), First Principles Thinker (3), Momentum Builder (3), Simplifier (2). FA1's persona-distinctiveness audit can still draw signal from these because each of these personas has a highly distinctive content shape (numeric/financial reasoning, axiom-first framing, energy/coordination, reduction logic) — the ledger comparison will catch dropped distinctive-shape contributions even with low N.

**Personas with zero high-effort coverage:** Accountant (0 of 20 high samples). All other rostered personas have ≥1 high coverage.
- The Accountant appears in 3 med samples (career-change/med/04 PSLF, food-truck/med/03 capital-structure, habit-tracker/med/06 monetization). FA1's high-effort persona-distinctiveness audit cannot test the Accountant directly. **Mitigation:** med samples 4, 10, 16 cover the Accountant's contribution shape adequately; FA1 high-effort audit can still be run on the other 18 personas, with Accountant findings informed by the 3 med samples.

**Note on the "Generic Brainstormer" line in the task spec:** The min-effort generator file is named `generic-response.md`, not `the-generic-brainstormer.md`. The persona-roster naming differs from the on-disk slug. Both refer to the same min-effort generic generator.

---

## Model-assignment distribution

Per-effort: which models generated the existing Phase 4 outputs across the 60 samples. This is observed data; it is **flagged for the deferred MA1 investigation** but NOT used as a discriminator in this investigation.

| Effort | model-requested | model-reported | sample count |
|---|---|---|---|
| min | sonnet | claude-sonnet-4-6 | 10 |
| low | sonnet | claude-sonnet-4-6 | 10 |
| med | opus | claude-opus-4-7 | 20 |
| high | opus | claude-opus-4-7 | 18 |
| high | opus | claude-opus-4-7[1m] | 2 |

Effort-conditional model assignment is uniform across the 60 samples within each effort level, with one exception: 2 high-effort samples were generated with `claude-opus-4-7[1m]` (the 1M-context variant) — see anomaly #1 below.

**For MA1 (deferred):** the corpus shows a clean two-model split (Sonnet at min/low, Opus at med/high). The 1M-context split at high is the only intra-effort model variation and is concentrated in school-consolidation/high.

---

## Notable anomalies

1. **school-consolidation/high model variant.** Samples 41 (`05_union-contract-reconciliation-and-staffing-transition`) and 42 (`09_community-identity-civic-anchors-and-our-school-is-our-town`) both report `model-reported = "claude-opus-4-7[1m]"` instead of `claude-opus-4-7`. Hypothesis: that session ran on the 1M-context Opus variant, possibly because school-consolidation is the topic with the largest cluster-set (13 high clusters) and the orchestrator chose the long-context model. Treat as in-distribution for FA1/RG1 within this investigation; **flag for MA1**.

2. **`<self-identified>` model-reported value (NOT in selected sample set).** career-change/high/10_decision-architecture-tests-reversibility-first-principles has `model-reported = <self-identified>` across all three Phase 4 outputs (summary, synthesis, attributed). This sample was **not selected** for the investigation. No downstream impact, but flagged for the model-audit-trail follow-up.

3. **99_additional clusters with no Phase 3 responses.** Three (topic, effort) cells contain a `99_additional.md` cluster file in `questions/by-topic/` but no corresponding `responses/99_additional/` directory:
   - habit-tracker/med
   - mobile-app/high
   - school-consolidation/med
   These were never selection candidates (selection criterion requires non-empty Phase 3 responses), but the cluster-file presence without responses suggests a Phase 2 → Phase 3 handoff inconsistency for "tail" clusters. **Flag for Phase 2 follow-up; not load-bearing for this investigation.**

4. **Within-effort byte-density variance.** Property-management/high/07 (240k) is ~2.5x the smallest high sample (habit-tracker/high/04 at 89k). FA1 should not assume uniform per-cluster reading cost when batching — batch the >150k samples singly, batch the <100k samples in pairs.

5. **Persona-roster naming asymmetry.** The min-effort generator's on-disk slug is `generic-response`, not `the-generic-brainstormer`. The Symphony persona-roster doc (`idea-symphony/guidance/phase2D_brainstorming-personas.md`) and downstream prompts may use either name; downstream tasks should treat them as synonyms.

6. **Tier-A vs. Tier-B differential.** Tier-A topics (career-change, food-truck, habit-tracker, space-party) had effort-comparison memos that pre-identified the through-lines and productive-drift zones; Tier-B topics did not. Selection rationale relies on byte-density + cluster-name semantics + persona-roster scan for Tier-B. BL1 baseline construction for Tier-B is a higher-effort task per cluster than Tier-A. Weight FA1 confidence higher for Tier-A samples until BL1 normalizes ledger quality.

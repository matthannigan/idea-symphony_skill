# SP1 Winner Stability Report — S-V2 (restructured-split)

**Scope:** 8 suspect cells × 3 runs each = 24 runs.
**Purpose:** Measure run-to-run variance on the winning variant before Step 5 refinement, so refinement iterates on signal rather than noise.
**Scored against:** `findings/BL1_baseline-establishment.md` (T1–T8 calibration, D1 do-not-penalize list, GT1 watchlist dual diagnostic).
**Input data:**
- Run 1: `findings/SP1_runs/S-V2/{cell}.md` (already scored in `findings/SP1_synthesis-prompt-testing_restructured-split.md`)
- Run 2–3: `findings/SP1_runs/S-V2/stability/{cell}_run{2,3}.md` (16 files — all non-empty and valid format)

All 24 runs produced the Synthesize-cluster + Append-grouped format required by BL1. No runs were broken or empty. All runs self-report their synth / append / total counts; those self-reports are used as authoritative question counts.

---

## Per-Cell Variance Tables

Legend:
- **M_synth** = Synthesize-stream question count
- **Comp raw** = N_synth / M_synth (compaction ratio)
- **Comp norm** = raw compaction / convergence density
- **Clusters** = cluster count vs. baseline range
- **Append** = append count (target exact match)
- **Band (compaction)**: Low 2.3–3.0 / Med 2.5–3.2 / High 2.6–3.5 per BL1 §3.3
- **O** = over-loose / under-compacted (below floor); **P** = in band; **U** = over-compacted
- Metrics that are unchanged run-over-run (hard-floor voice preservation, format) are noted in text rather than tabulated.

---

### Cell 1 — tool-library / low
Baseline: N_synth=69, M_target=27 (range 23–31), compaction target 2.56, 9 clusters (8–10), convergence 60.9%, Append=12.

| Metric | Run 1 | Run 2 | Run 3 | Mean | Stdev | Min | Max | Threshold pass |
|---|---|---|---|---|---|---|---|---|
| M_synth | 30 | 45 | 53 | 42.7 | 11.7 | 30 | 53 | r1 pass; r2, r3 fail (out of range) |
| Preservation | 0.91 | 0.94 | 0.96 | 0.94 | 0.03 | 0.91 | 0.96 | 3/3 pass (≥0.85) |
| Compaction raw | 2.30 | 1.53 | 1.30 | 1.71 | 0.52 | 1.30 | 2.30 | **1/3 pass** (r1 P, r2–r3 O) |
| Compaction norm | 3.78 | 2.52 | 2.14 | 2.81 | 0.85 | 2.14 | 3.78 | variance-high |
| Cluster alignment | 10 (P) | 10 (P) | 11 (F) | 10.3 | 0.6 | 10 | 11 | 2/3 pass |
| Persona rep (% floors met) | 6/6 | 6/6 | 6/6 | 100% | 0 | 100% | 100% | 3/3 pass |
| Append fidelity | 0.58 | 0.58 | 0.58 | 0.58 | 0 | 0.58 | 0.58 | **0/3 pass** (systematic source-order selection) |
| Dim balance (max |dev| pp) | 4 | 4–5 | 4–6 | ~5 | — | 4 | 6 | 3/3 pass (≤5–6 pp; H-centered dominant as expected) |
| Convergence utilization | 0.85 | 0.76 | 0.70 | 0.77 | 0.08 | 0.70 | 0.85 | 2/3 pass (≥0.80) |
| Unique survival | 0.93 | 0.93 | 0.95 | 0.94 | 0.01 | 0.93 | 0.95 | 3/3 pass |
| Hard floors (AI ≥1, ST archetype ≥1) | met | met | met | — | — | — | — | 3/3 pass |

**Headline:** Run 1 is a compaction outlier (only run in band). Runs 2 and 3 degrade monotonically (30 → 45 → 53 synth questions). Append failure is 100% stable (fidelity 0.58 across all 3 runs) — it is a deterministic prompt-behavior failure, not noise.

---

### Cell 2 — tool-library / medium (GT1 watchlist)
Baseline: N_synth=82, M_target=30 (range 27–33), compaction target 2.73, 11 clusters (10–12), convergence 50.4%, Append=30.

| Metric | Run 1 | Run 2 | Run 3 | Mean | Stdev | Min | Max | Threshold pass |
|---|---|---|---|---|---|---|---|---|
| M_synth | 45 | 63 | 54 | 54.0 | 9.0 | 45 | 63 | 0/3 pass (all >33 ceiling) |
| Preservation | 0.89 | 0.93 | 0.92 | 0.91 | 0.02 | 0.89 | 0.93 | 3/3 pass |
| Compaction raw | 1.82 | 1.30 | 1.52 | 1.55 | 0.26 | 1.30 | 1.82 | **0/3 pass** (all O, all below 2.5 floor) |
| Compaction norm | 3.62 | 2.58 | 3.01 | 3.07 | 0.52 | 2.58 | 3.62 | variance-medium |
| Cluster alignment | 10 (P) | 10 (P) | 12 (P) | 10.7 | 1.2 | 10 | 12 | 3/3 pass |
| Persona rep | 0.89 | 0.93 | 0.91 | 0.91 | 0.02 | 0.89 | 0.93 | 3/3 pass |
| Append fidelity | 1.00 | 0.88 | 1.00 | 0.96 | 0.07 | 0.88 | 1.00 | 2/3 pass (r2: 35 vs. 30 target — over-appended Perspective personas) |
| Dim balance | 8 pp | 7 pp | 7 pp | 7.3 | 0.6 | 7 | 8 | 0/3 pass (all Strategic over-index; inside ±15 pp hard floor) |
| Convergence utilization | 0.78 | 0.72 | 0.80 | 0.77 | 0.04 | 0.72 | 0.80 | 2/3 pass |
| Unique survival | 0.94 | 0.90 | 0.93 | 0.92 | 0.02 | 0.90 | 0.94 | 3/3 pass |
| Hard floors | met | met | met | — | — | — | — | 3/3 pass |

**Headline:** The most stable compaction failure in the suite — all 3 runs fail compaction the same way (1.30–1.82), and the stdev of M_synth (9.0) sits in a narrow range around the mis-target. No runs pass. Run 2 over-appended by 5 (35 vs. 30 target) — Politician append added extras beyond the documented 10-question Append-all ceiling.

---

### Cell 3 — tool-library / high
Baseline: N_synth=132, M_target=48 (range 38–62), compaction target 2.75, 12 clusters (11–13), convergence 62%, Append=48.

| Metric | Run 1 | Run 2 | Run 3 | Mean | Stdev | Min | Max | Threshold pass |
|---|---|---|---|---|---|---|---|---|
| M_synth | 77 | 97 | 64 | 79.3 | 16.6 | 64 | 97 | **0/3 pass** (all above 62 ceiling) |
| Preservation | 0.96 | 0.98 | 0.93 | 0.96 | 0.03 | 0.93 | 0.98 | 3/3 pass |
| Compaction raw | 1.71 | 1.36 | 2.06 | 1.71 | 0.35 | 1.36 | 2.06 | **0/3 pass** (all O, all <2.6 floor) |
| Compaction norm | 2.76 | 2.19 | 3.33 | 2.76 | 0.57 | 2.19 | 3.33 | variance-high |
| Cluster alignment | 12 (P) | 12 (P) | 12 (P) | 12.0 | 0 | 12 | 12 | 3/3 pass |
| Persona rep | 0.92 | 0.94 | 0.89 | 0.92 | 0.03 | 0.89 | 0.94 | 3/3 pass |
| Append fidelity | 1.00 | 0.77 | 0.96 | 0.91 | 0.12 | 0.77 | 1.00 | 2/3 pass (r2: 37 vs. 48 target — under-appended 11) |
| Dim balance | 7 pp | 7 pp | 8 pp | 7.3 | 0.6 | 7 | 8 | 3/3 pass (inside ±15 pp; mild Strategic over-index) |
| Convergence utilization | 0.81 | 0.73 | 0.85 | 0.80 | 0.06 | 0.73 | 0.85 | 2/3 pass |
| Unique survival | 0.96 | 0.97 | 0.93 | 0.95 | 0.02 | 0.93 | 0.97 | 3/3 pass |
| Hard floors | met | met | met | — | — | — | — | 3/3 pass |

**Headline:** High variance cell (stdev 16.6 on M_synth). Run 3 (64 synth) is the closest to the top of the target range (62); Run 2 (97) is the furthest from target. Run 2 also drops append fidelity materially (37 vs. 48 expected = 11 questions missing). All 3 runs fail compaction.

---

### Cell 4 — mobile-app / low
Baseline: N_synth=72, M_target=27 (range 23–31), compaction target 2.67, 9 clusters (8–10), convergence 66.7%, Append=12.

| Metric | Run 1 | Run 2 | Run 3 | Mean | Stdev | Min | Max | Threshold pass |
|---|---|---|---|---|---|---|---|---|
| M_synth | 24 | 40 | 52 | 38.7 | 14.0 | 24 | 52 | 1/3 pass (r1 in range; r2, r3 above ceiling) |
| Preservation | 0.85 | 0.93 | 0.95 | 0.91 | 0.05 | 0.85 | 0.95 | 3/3 pass |
| Compaction raw | 3.00 | 1.80 | 1.38 | 2.06 | 0.83 | 1.38 | 3.00 | **1/3 pass** (only r1 in band; r2, r3 O) |
| Compaction norm | 4.50 | 2.70 | 2.08 | 3.09 | 1.24 | 2.08 | 4.50 | variance very high |
| Cluster alignment | 8 (P) | 10 (P) | 11 (F) | 9.7 | 1.5 | 8 | 11 | 2/3 pass |
| Persona rep | 5/6 (AI below floor at 2) | 6/6 | 6/6 | 94% | 0.10 | 83% | 100% | 2/3 pass; **r1 has AI orphan count at 2, below BL1 §5.2 low-effort ≥3 floor**; r2 and r3 both hit 3+ |
| Append fidelity | 0.67 | 0.58 | 0.58 | 0.61 | 0.05 | 0.58 | 0.67 | **0/3 pass** (systematic source-order; r1 slightly better by luck) |
| Dim balance | 5 pp | 6 pp | 7 pp | 6.0 | 1.0 | 5 | 7 | 3/3 pass (inside ±10 pp of topic-typed band) |
| Convergence utilization | 0.73 | 0.79 | 0.82 | 0.78 | 0.05 | 0.73 | 0.82 | 2/3 pass |
| Unique survival | 0.85 | 0.92 | 0.94 | 0.90 | 0.05 | 0.85 | 0.94 | 3/3 pass |
| Hard floors (AI ≥1, ST ≥1) | met | met | met | — | — | — | — | 3/3 pass (AI orphan count ≥1 in all; but §5.2 low-effort soft floor of 3 is missed in r1 only) |

**Headline:** Run 1 is an outlier on both compaction (the only run in band) and AI persona rep (the only run below the low-effort soft floor of 3 orphans). Runs 2 and 3 actually preserve AI voice better (6 and 12 AI mentions vs. 6 in run 1), while compaction collapses. Classic tradeoff signature: tighter compaction in r1 appears to have squeezed out AI orphans.

---

### Cell 5 — mobile-app / medium
Baseline: N_synth=78, M_target=29 (range 26–32), compaction target 2.69, 9 clusters (8–10), convergence 67%, Append=20.

| Metric | Run 1 | Run 2 | Run 3 | Mean | Stdev | Min | Max | Threshold pass |
|---|---|---|---|---|---|---|---|---|
| M_synth | 55 | 46 | 52 | 51.0 | 4.6 | 46 | 55 | 0/3 pass (all above 32 ceiling) |
| Preservation | 0.94 | 0.92 | 0.94 | 0.93 | 0.01 | 0.92 | 0.94 | 3/3 pass |
| Compaction raw | 1.42 | 1.70 | 1.50 | 1.54 | 0.14 | 1.42 | 1.70 | **0/3 pass** (all O, all <2.5 floor) |
| Compaction norm | 2.12 | 2.53 | 2.24 | 2.30 | 0.21 | 2.12 | 2.53 | variance-low |
| Cluster alignment | 12 (F) | 10 (P) | 12 (F) | 11.3 | 1.2 | 10 | 12 | 1/3 pass (over-clustered at r1, r3) |
| Persona rep | 1.00 | 0.96 | 0.98 | 0.98 | 0.02 | 0.96 | 1.00 | 3/3 pass |
| Append fidelity | 1.00 | 1.00 | 1.00 | 1.00 | 0 | 1.00 | 1.00 | 3/3 pass |
| Dim balance | 6 pp | 5 pp | 6 pp | 5.7 | 0.6 | 5 | 6 | 3/3 pass |
| Convergence utilization | 0.76 | 0.80 | 0.78 | 0.78 | 0.02 | 0.76 | 0.80 | 2/3 pass |
| Unique survival | 0.92 | 0.94 | 0.93 | 0.93 | 0.01 | 0.92 | 0.94 | 3/3 pass |
| Hard floors | met | met | met | — | — | — | — | 3/3 pass |

**Headline:** Very stable cell (M_synth stdev=4.6). All 3 runs fail compaction the same way (1.42–1.70) and all pass append fidelity, persona rep, and unique survival. The signal is clean: under-compaction is deterministic here.

---

### Cell 6 — mobile-app / high
Baseline: N_synth=128, M_target=41 (range 37–46), compaction target 3.12, 12 clusters (11–13), convergence 57.8%, Append=35.

| Metric | Run 1 | Run 2 | Run 3 | Mean | Stdev | Min | Max | Threshold pass |
|---|---|---|---|---|---|---|---|---|
| M_synth | 46 | 78 | 71 | 65.0 | 16.8 | 46 | 78 | 1/3 pass (r1 at ceiling; r2, r3 above) |
| Preservation | 0.93 | 0.97 | 0.96 | 0.95 | 0.02 | 0.93 | 0.97 | 3/3 pass |
| Compaction raw | 2.78 | 1.64 | 1.80 | 2.07 | 0.61 | 1.64 | 2.78 | **1/3 pass** (only r1 in band; r2, r3 O) |
| Compaction norm | 4.81 | 2.84 | 3.12 | 3.59 | 1.07 | 2.84 | 4.81 | variance very high |
| Cluster alignment | 12 (P) | 12 (P) | 12 (P) | 12.0 | 0 | 12 | 12 | 3/3 pass |
| Persona rep | 1.00 | 0.96 | 0.97 | 0.98 | 0.02 | 0.96 | 1.00 | 3/3 pass |
| Append fidelity | 0.91 | 0.63 | 0.83 | 0.79 | 0.14 | 0.63 | 0.91 | 1/3 pass (r1 close; r2 drops 13 expected — 22 vs. 35; r3 drops 6 — 29 vs. 35) |
| Dim balance (Creative dev) | 9 pp | 6 pp | 7 pp | 7.3 | 1.5 | 6 | 9 | 0/3 pass strict ±5 pp; 3/3 inside ±15 pp hard floor |
| Convergence utilization | 0.83 | 0.70 | 0.75 | 0.76 | 0.07 | 0.70 | 0.83 | 1/3 pass (r1 only) |
| Unique survival | 0.93 | 0.94 | 0.92 | 0.93 | 0.01 | 0.92 | 0.94 | 3/3 pass |
| Hard floors | met | met | met | — | — | — | — | 3/3 pass |

**Headline:** The largest outlier cell. Run 1 passes compaction (2.78) and append fidelity (0.91); runs 2 and 3 fail both. Compaction raw range 1.64–2.78 is the widest in the suite. Creative under-indexing (which was Pattern 4 in the primary report) attenuates in r2/r3 (6–7 pp vs. 9 pp in r1) — so that error was itself partly outlier behavior.

---

### Cell 7 — school-consolidation / low
Baseline: N_synth=69, M_target=28 (range 24–32), compaction target 2.46, 10 clusters (9–11), convergence 62.3%, Append=12.

| Metric | Run 1 | Run 2 | Run 3 | Mean | Stdev | Min | Max | Threshold pass |
|---|---|---|---|---|---|---|---|---|
| M_synth | 44 | 35 | 44 | 41.0 | 5.2 | 35 | 44 | 0/3 pass (all above 32 ceiling) |
| Preservation | 0.88 | 0.85 | 0.89 | 0.87 | 0.02 | 0.85 | 0.89 | 3/3 pass |
| Compaction raw | 1.57 | 1.97 | 1.57 | 1.70 | 0.23 | 1.57 | 1.97 | **0/3 pass** (all O, all <2.3 floor) |
| Compaction norm | 2.52 | 3.16 | 2.52 | 2.73 | 0.37 | 2.52 | 3.16 | variance-low-medium |
| Cluster alignment | 10 (P) | 9 (P) | 10 (P) | 9.7 | 0.6 | 9 | 10 | 3/3 pass |
| Persona rep | 6/6 | 6/6 | 6/6 | 100% | 0 | 100% | 100% | 3/3 pass |
| Append fidelity | 0.75 | 0.75 | 0.75 | 0.75 | 0 | 0.75 | 0.75 | **0/3 pass** (same partial-coincidence-of-source-order as in r1) |
| Dim balance | 5 pp | 5 pp | 6 pp | 5.3 | 0.6 | 5 | 6 | 3/3 pass |
| Convergence utilization | 0.79 | 0.83 | 0.81 | 0.81 | 0.02 | 0.79 | 0.83 | 2/3 pass (r1 slightly below; r2, r3 above) |
| Unique survival | 0.88 | 0.91 | 0.89 | 0.89 | 0.02 | 0.88 | 0.91 | 3/3 pass |
| Hard floors | met | met | met | — | — | — | — | 3/3 pass |

**Headline:** Stable under-compaction failure. Run 2 is the best-performing run (35 synth, compaction 1.97 — closest to 2.3 floor). M_synth stdev 5.2 puts this cell in the stable-failure bucket. Append fidelity is flat at 0.75 across all 3 runs (partial-coincidence of D1 round-robin matching source order for this specific cell's personas — not true round-robin implementation).

---

### Cell 8 — school-consolidation / medium (GT1 watchlist)
Baseline: N_synth=79, M_target=30 (range 27–33), compaction target 2.63, 12 clusters (11–13), convergence 53%, Append=30.

| Metric | Run 1 | Run 2 | Run 3 | Mean | Stdev | Min | Max | Threshold pass |
|---|---|---|---|---|---|---|---|---|
| M_synth | 61 | 62 | 62 | 61.7 | 0.6 | 61 | 62 | 0/3 pass (all above 33 ceiling) |
| Preservation | 0.91 | 0.92 | 0.92 | 0.92 | 0.01 | 0.91 | 0.92 | 3/3 pass |
| Compaction raw | 1.30 | 1.27 | 1.27 | 1.28 | 0.02 | 1.27 | 1.30 | **0/3 pass** (all O, severely below 2.5 floor) |
| Compaction norm | 2.45 | 2.40 | 2.40 | 2.42 | 0.03 | 2.40 | 2.45 | variance near-zero |
| Cluster alignment | 12 (P) | 11 (P) | 10 (F) | 11.0 | 1.0 | 10 | 12 | 2/3 pass |
| Persona rep | 0.95 | 0.95 | 0.96 | 0.95 | 0.01 | 0.95 | 0.96 | 3/3 pass |
| Append fidelity | 1.00 | 0.91 | 0.86 | 0.92 | 0.07 | 0.86 | 1.00 | 1/3 pass (r2: 33 vs. 30 over-appended by 3; r3: 35 vs. 30 over-appended by 5 — Perspective persona over-quota) |
| Dim balance | 6 pp | 5 pp | 5 pp | 5.3 | 0.6 | 5 | 6 | 3/3 pass |
| Convergence utilization | 0.70 | 0.73 | 0.73 | 0.72 | 0.02 | 0.70 | 0.73 | 0/3 pass (all <0.80) |
| Unique survival | 0.91 | 0.92 | 0.93 | 0.92 | 0.01 | 0.91 | 0.93 | 3/3 pass |
| Hard floors | met | met | met | — | — | — | — | 3/3 pass |

**Headline:** The most stable cell in the suite. M_synth stdev=0.6 (essentially zero variance). Compaction raw range 1.27–1.30 — near-deterministic failure mode. This cell's under-compaction is the clearest, cleanest signal in the whole study.

---

## Stability Classification

| Cell | M_synth stdev | Compaction pass rate | Append pass rate | Classification | Rationale |
|---|---|---|---|---|---|
| tool-library/low | 11.7 | 1/3 | 0/3 | **Unstable** | Compaction oscillates across the 2.3 floor (r1 P, r2–r3 O); trend is degradation over runs |
| tool-library/medium (GT1) | 9.0 | 0/3 | 2/3 | **Stable (deterministic fail)** | All 3 runs fail compaction in the same direction; append over-quota in r2 only |
| tool-library/high | 16.6 | 0/3 | 2/3 | **Unstable** | High M_synth variance (64 → 97); append drops to 0.77 in r2; cluster alignment perfect |
| mobile-app/low | 14.0 | 1/3 | 0/3 | **Unstable** | Compaction oscillates (r1 pass, r2–r3 fail); AI orphan floor oscillates (r1 below, r2–r3 above) |
| mobile-app/medium | 4.6 | 0/3 | 3/3 | **Stable (deterministic fail)** | All 3 fail compaction the same way; cluster count over-shoots on 2 of 3 runs |
| mobile-app/high | 16.8 | 1/3 | 1/3 | **Unstable** | Widest oscillation: compaction 1.64–2.78, append 0.63–0.91; r1 is a clear outlier above trend |
| school-consolidation/low | 5.2 | 0/3 | 0/3 | **Stable (deterministic fail)** | All 3 fail compaction in tight range (1.57–1.97); append fidelity flat at 0.75 |
| school-consolidation/medium (GT1) | 0.6 | 0/3 | 1/3 | **Stable (deterministic fail)** | Near-zero M_synth variance; identical compaction mode; append fidelity degrades in r2, r3 |

**Summary: 4 Stable / 4 Unstable.**
- **Stable cells (low variance, consistent failure):** tool-library/medium, mobile-app/medium, school-consolidation/low, school-consolidation/medium. These are the cleanest signal for Step 5 refinement — errors here are reliable.
- **Unstable cells (threshold-crossing variance):** tool-library/low, tool-library/high, mobile-app/low, mobile-app/high. Step 5 should treat run 1's performance on these as partial noise.

---

## Metric-Level Variance Summary (across all 8 cells × 3 runs)

For each metric, I compute the average across-cell stdev and classify the metric as high- or low-variance.

| Metric | Mean stdev (across 8 cells) | Classification | Interpretation |
|---|---|---|---|
| M_synth | 9.7 questions | **High-variance** | Output length wobbles substantially; single-run readings unreliable on 4 of 8 cells |
| Compaction raw | 0.39 | **High-variance** | Driven by M_synth variance; spans the 2.3/2.5/2.6 thresholds on 3 unstable cells |
| Compaction norm | 0.62 | **High-variance** | Amplified by density scaling; widest at mobile-app/high (1.07 stdev) |
| Cluster alignment | 0.7 clusters | Medium-variance | Pulls between target and target±1; some cells cross the range edge |
| Preservation | 0.02 | **Low-variance** | Reliable metric; all cells stable within 0.01–0.05 |
| Persona rep | 0.03 | **Low-variance** | Stable; only mobile-app/low r1 crosses the AI soft floor |
| Append fidelity | 0.07 (0 on low-effort cells; 0.07–0.14 on med/high) | Split behavior | Low-effort: deterministically broken (stdev=0, all fail same way). Med/high: small variance around 0.85–1.00. The low-effort structural failure is a perfect Step 5 target. |
| Dim balance | 0.9 pp | Low-variance | Stable per-cell; mostly within ±1 pp of run-1 reading |
| Convergence utilization | 0.05 | Low-variance | Stable within ±0.05; matches M_synth behavior inversely |
| Unique survival | 0.02 | **Low-variance** | Reliably high (0.85–0.97) across all runs |
| Hard floors (AI ≥1, ST archetype ≥1) | 0 | **Zero-variance** | Met in 24/24 runs. No refinement headroom (already ceiling). |
| Format compliance | 0 | **Zero-variance** | Met in 24/24 runs. No refinement headroom. |

**Headroom signal for Step 5:**
- **Highest-leverage to refine (high stdev but consistent direction):** M_synth / compaction raw / compaction norm — these are where Step 5 can move the needle, and the direction to move is unambiguous (down on M_synth, up on compaction). The instability is about magnitude, not direction.
- **Also worth refinement (deterministic structural failures):** Append fidelity at low effort (all 3 low-effort cells fail the same way every run — zero variance, zero change without prompt fix).
- **Low/zero headroom (already at ceiling):** Preservation, persona rep, dim balance, unique survival, hard floors, format — Step 5 cannot improve these because they already pass. Watch that refinements don't regress them.
- **Medium headroom (trade-off target):** Cluster alignment at medium effort (mobile-app/medium 2/3 over-clusters). Refinement to compaction may fix this indirectly by forcing cluster count down.

---

## Attention Flags for Step 5

### Run-1 outlier cells (iterate on noise risk — downweight run 1 in refinement scoring)

1. **mobile-app/high** — Run 1 compaction (2.78) passes the band; runs 2, 3 fail (1.64, 1.80). Run 1 append fidelity (0.91) sits 0.21 above the run-2 value (0.63). Run 1 Creative-dimension dev (9 pp) is the reported Pattern 4 from the primary report — but this is partly outlier: r2, r3 show 6–7 pp dev. **Step 5 should score using the 3-run mean, not r1, for this cell.** Run 1 is optimistic on compaction and append; pessimistic on Creative dev.

2. **mobile-app/low** — Run 1 compaction (3.00) passes at band edge; r2, r3 fail (1.80, 1.38). Run 1 is the only run that hits the AI orphan soft-floor violation (2 orphans); r2 and r3 preserve AI voice better. **The W3 seed in the primary report (explicit low-effort AI-floor instruction) may be addressing an outlier, not a pattern.** Step 5 should verify the AI-floor issue is real by checking the 3-run distribution.

3. **tool-library/low** — Run 1 compaction (2.30) sits exactly at the floor edge; r2, r3 fall well below (1.53, 1.30). The degradation is monotonic across runs (30 → 45 → 53). Run 1 is the optimistic outlier. **Step 5 should weight r2–r3 as the true signal.**

4. **tool-library/high** — Run 2 (97 synth) is an outlier pessimistic run; r1 (77) and r3 (64) are closer. Run 2 also had append drop to 0.77 (11 short). **Step 5 should be cautious about treating r2 as representative; r3 shows the variant can produce 64 at high effort, which is within the 38–62 range ceiling.**

### Cells where variance spans the compaction threshold (mixed signal — don't iterate on noise)

- tool-library/low (r1 P, r2–r3 O — 2.3 floor)
- mobile-app/low (r1 P, r2–r3 O — 2.3 floor)
- mobile-app/high (r1 P, r2–r3 O — 2.6 floor)

For these 3 cells, a refinement that moves compaction mean upward by 0.5× may regress run-1-style outputs (pushing them toward over-compaction) while fixing run-2/3 under-compaction. **Step 5 scoring should target the 3-run-mean compaction, not the worst-run compaction, to avoid over-correcting.**

### Cells where Step 5 has the cleanest leverage

- **school-consolidation/medium** (stdev 0.6 on M_synth): any prompt change that moves this cell's compaction from 1.28 to ≥2.5 is clean signal, not noise.
- **mobile-app/medium** (stdev 4.6): same — deterministic under-compaction.
- **tool-library/medium** (stdev 9.0 within narrow-fail band): all 3 runs fail, all 3 below 1.82. Clean signal.
- **school-consolidation/low** (stdev 5.2): deterministic under-compaction (r1 = r3 = 1.57); reliable target.

---

## GT1 Watchlist Dual Diagnostic

**tool-library/medium (GT1 watchlist, Politician composition):**
- M_synth stability: 45 / 63 / 54 (stdev 9.0) — moderate variance.
- Non-watchlist medium-effort comparison: mobile-app/medium (stdev 4.6), school-consolidation/medium (stdev 0.6). tool-library/medium has higher variance than both siblings.
- Compaction mode: all 3 runs fail below 2.5 floor (1.30–1.82) — same direction as both non-watchlist mediums.
- Append fidelity: r2 over-appended Politician by 5 questions (35 vs. 30 target). This is the one place GT1 composition might be a factor — the Politician Append-all rule is easy to miscount.

**Diagnostic verdict:** The compaction failure pattern is identical to non-watchlist medium cells (all 3 mediums fail under-compaction in the 1.27–1.82 range). This is **synthesis-prompt instability, not GT1-composition instability** on the compaction dimension. The r2 Politician over-append is a minor GT1-adjacent issue but does not change the diagnostic.

**school-consolidation/medium (GT1 watchlist, Politician composition):**
- M_synth stability: 61 / 62 / 62 (stdev 0.6) — the lowest variance in the suite.
- Compaction mode: all 3 runs fail below 2.5 floor (1.27–1.30) — near-identical.
- Append fidelity: 1.00 / 0.91 / 0.86 (over-appends of 0, 3, 5 Perspective-persona questions in r1/r2/r3). Politician Append-all is handled correctly in all 3 runs (10/10/10).

**Diagnostic verdict:** Near-zero variance on compaction means this cell's failure is deterministic, not composition-sensitive. The small append-fidelity drift (over-quota on Perspective personas) is also composition-independent — it's a prompt-rule-application failure, not a watchlist-specific effect. **Synthesis-prompt instability, not GT1-composition instability.**

**Aggregate GT1 finding:** Neither watchlist cell shows variance anomalies relative to its non-watchlist medium-effort siblings. The primary-report conclusion ("pattern consistent with siblings, not GT1-bound") holds after stability runs. **No GT1-composition adjustment warranted for Step 5.**

---

## Implications for Step 5 Refinement

### Reliable signal (iterate with confidence)

1. **Under-compaction is the dominant error and is stable across runs.** 7 of 8 cells fail compaction in 3-of-3 or 2-of-3 runs. Only mobile-app/high r1 and mobile-app/low r1 (both r1 outliers) pass. The primary report's W1 refinement seed (explicit per-effort compaction target with self-check) targets real, reliable signal.

2. **Low-effort Append fidelity is broken identically across all 3 runs at all 3 low-effort cells.** tool-library/low 0.58/0.58/0.58; mobile-app/low 0.67/0.58/0.58; school-consolidation/low 0.75/0.75/0.75. W2 refinement seed (procedural Append-selection block forcing cluster identification) targets real, reliable signal with zero variance.

3. **Medium-effort over-clustering in mobile-app cell is real** (r1 and r3 both produce 12 clusters against target 9). W4 seed is reliable, but variance is modest.

### Probable-noise signal (downweight run 1)

1. **AI orphan floor at mobile-app/low is a partial outlier.** R1 had 2 orphans (below the §5.2 soft floor of 3); r2 had 3+; r3 had ≥6. W3 refinement seed (explicit low-effort AI-floor instruction) may still be warranted as insurance, but the error is not consistent across the 3 runs and is not the highest-priority fix.

2. **Creative-dimension under-indexing at mobile-app/high is partly outlier.** R1 had 9 pp dev (flagged as Pattern 4); r2 and r3 attenuate to 6–7 pp. W5 refinement seed targets a smaller issue than the primary report suggested. Step 5 can deprioritize W5.

### Refinement scoring weights for Step 5

| Cell | Weight recommendation | Rationale |
|---|---|---|
| school-consolidation/medium | **High** | Near-zero variance; clean signal on compaction |
| mobile-app/medium | **High** | Low variance; compaction signal clean; append is already correct (good control) |
| school-consolidation/low | **High** | Low variance; compaction and append both fail reliably |
| tool-library/medium | **Medium-high** | Narrow-fail variance; GT1 watchlist adds slight noise but pattern is consistent |
| tool-library/low | Medium | Degradation trend is real, but r1 is a compaction outlier — use r2–r3 as reference |
| mobile-app/low | Medium | R1 outlier on compaction AND AI floor; use 3-run mean |
| tool-library/high | Medium-low | High variance; r2 is outlier pessimistic and r3 nearly hits ceiling |
| mobile-app/high | **Low** | Highest variance cell; r1 outlier on compaction, append, AND Creative dev — most noise-susceptible |

### Expected refinement impact after Step 5 (revised from primary report)

Primary report projected "2 B / 5 C / 2 D → 4 A / 4 B / 1 C" after V3 refinement. Stability analysis suggests adjusting this projection:
- The B grades in the primary (mobile-app/high, tool-library/low) rested on r1 outliers; the true 3-run-mean position of those cells is closer to C. **True starting point is closer to 0 B / 6 C / 2 D.**
- The compaction fix, if effective, should move all 6 C cells to B at minimum. The 2 D cells (tool-library/high, school-consolidation/medium) are the hardest compaction failures (mean compaction 1.71 and 1.28 respectively) — fixing compaction alone may move them only to C.
- **Realistic Step 5 target: 4 B / 4 C** (from 0 B / 6 C / 2 D baseline). A-grade requires nailing compaction AND append AND resolving Creative-dim balance, which is unlikely in a single refinement pass.

---

**Status:** 24 of 24 runs scored. No broken runs. 4 stable cells / 4 unstable cells. Primary refinement seeds (W1, W2) target real signal; secondary seeds (W3, W5) target partly-outlier signal from run 1. GT1 watchlist cells show synthesis-prompt instability, not composition-instability. Ready for Step 5 refinement with the weighting guidance above.

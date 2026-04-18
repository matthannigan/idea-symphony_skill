# BL1 — Baseline Establishment (Cross-Cell Synthesis)

**Date:** 2026-04-18
**Author:** BL1 cross-topic synthesis subagent
**Scope:** Aggregate the 30 per-cell BL1 summaries and 120 baseline artifacts into dimension benchmarks, cross-topic patterns, a load-bearing C1 recommendation, and an SP1 handoff package.
**Inputs:**
- `findings/BL1_baseline-establishment_{topic}_{effort}.md` × 30
- `baselines/{topic}_{effort}_{clusters|convergence|target|append-target}.md` × 120
- `findings/TDA1_test-data-assembly.md`
- `methodology.md`; `discussion-questions-responses.md`

---

## Executive Summary

Thirty per-cell baselines are canonical. The synthesis surfaces the following headline results, stated here as quantitative anchors SP1 will score against:

- **Cluster count:** 8.5 (low, median) → 10 (medium) → 12 (high). High-effort is remarkably tight (range 11–12); low is widest (7–10).
- **Convergence density:** medians 63.2% / 67.5% / 61.5% (low / medium / high). Not monotonic. Tier 2 adds mass but also dispersion; density *saturates* — it does not strictly rise at high.
- **Compaction ratio (Synthesize stream only):** medians 2.63× / 2.73× / 3.15× (low / medium / high). High is more aggressive (driven by more merge opportunities across 9–11 personas).
- **C1 (clustering vs. flat) — headline recommendation:** **flat pooling with persona tags preserved as metadata**, with an **effort-level conditional**: at low effort, half the cells recommend per-persona-grouped input for voice protection; at medium and high, 20 of 20 cells recommend flat. SP1 must therefore present input by **persona-grouped-with-tags at low** and **flat-with-tags at medium/high**, or use flat-with-tags universally and add an explicit low-effort voice-preservation instruction.
- **Append mechanics:** round-robin is clean on 29 of 30 cells at cluster-selection-time. Storyteller's "Cluster D" systematic exclusion at low effort and Visionary's paradigm-framing drops at medium effort are cross-cell patterns SP1 scoring should tolerate (D1-bound, not synthesis-bound).
- **SP1 subset confirmation:** **tool-library / mobile-app / school-consolidation** (Q9 default) is confirmed as the initial 9-file subset.

Load-bearing sections are §6 (C1 recommendation), §6a (cross-effort evolution), §4 (dimension balance), and §5 (persona representation).

---

## 1. Cluster-Count Distribution

### 1.1 Per-cell cluster counts

The following table collates the natural cluster count (Synthesize-group clusters, cross-persona; orphan clusters not included) from each per-cell baseline.

| Topic | Low | Medium | High |
|---|---|---|---|
| habit-tracker | 9 | 12 | 11 |
| space-party | 7 | 10 | 11 |
| tool-library | 9 (+2 orphan) | 11 | 12 |
| mobile-app | 9 | 9 | 12 |
| food-truck | 8 | 9 | 12 |
| property-management | 8 | 12 | 12 |
| youth-mentorship | 7 (+2 orphan) | 9 | 12 |
| school-consolidation | 10 (+2 orphan) | 12 | 12 |
| wearable-device | 8 | 8 | 11 |
| career-change | 10 | 9 | 12 |

### 1.2 Dimension benchmarks

| Effort | Mean | Median | Range | Mode |
|---|---|---|---|---|
| Low | 8.5 | 8.5 | 7–10 | 8 and 9 (3 each) |
| Medium | 10.1 | 10 | 8–12 | 9 (4 cells) |
| High | 11.7 | 12 | 11–12 | 12 (8 of 10 cells) |

Key observations:

1. **Cluster count scales with effort, but high-effort is astonishingly tight.** 8 of 10 high-effort cells produce exactly 12 clusters; the other 2 (habit-tracker, space-party — the two no-Tier-3 topics) produce 11. The 12th cluster is reliably a FPT+Futurist "Reimagination / First Principles" cluster that emerges when Tier 2 is present and frequently contains 9–11 questions (see `baselines/property-management_high_clusters.md`, `baselines/youth-mentorship_high_clusters.md`, `baselines/career-change_high_clusters.md`).

2. **Tier 3 presence adds roughly one cluster at medium.** Cells with no Tier 3 at medium (habit-tracker, space-party, mobile-app, career-change) produce 9–12 clusters (median 9); cells with Tier 3 at medium (tool-library + Politician, property-management + Lawyer, food-truck + Accountant, youth-mentorship + Lawyer, school-consolidation + Politician, wearable-device + Technical Expert) produce 8–12 (median 11). The one-cluster delta is driven primarily by Politician-induced Governance/Voter-Approval splits and Lawyer-induced Liability separation (`BL1_..._tool-library_medium.md` §6.2; `BL1_..._school-consolidation_medium.md` §6.2).

3. **Low-effort cluster count is topic-sensitive.** Event/compressed topics (space-party 7, youth-mentorship 7) produce fewer clusters than policy/system-dense topics (school-consolidation 10, career-change 10). Business topics and product topics converge on 8–9.

### 1.3 Topics with unusual cluster structures — SP1 caution list

**Unusually few clusters (low end of distribution — SP1 may over-cluster):**
- **space-party / low (7):** event-planning logistics cluster into a small set of core concerns; SP1 output at >10 clusters indicates over-decomposition.
- **youth-mentorship / low (7):** social-program tensions collapse into 7 tightly interacting concerns (safety/matching/authority/commitment/measurement); per `BL1_..._youth-mentorship_low.md` §6.2.
- **wearable-device / low & medium (8, 8):** a highly multi-dimensional topic that nonetheless clusters tightly because its dimensions converge on a small number of core architectural decisions. High cluster count would indicate SP1 is over-splitting shared concerns.

**Unusually many clusters (high end of distribution — SP1 may under-cluster):**
- **school-consolidation / low (10 + 2 orphan):** balanced cluster ownership plus ST archetype orphan and AI aspirational orphan push the count up.
- **career-change / low (10):** decision-theoretic topic surfaces many sub-axes (financial, skill-transfer, burnout-transfer, hybrid paths, age-timing, sustainability, client-ethics, decision framework).
- **Mega-cluster outliers:** `baselines/youth-mentorship_medium_clusters.md` shows Cluster 9 at **27 source questions** — by far the largest single-cluster concentration across the 30 cells. SP1 must be told to split C9 into 6–7 sub-outputs rather than producing 2–3 "program-design" mega-outputs.

**Cluster count of 12 at high effort is SP1's reliable target.** Variants producing ≤9 at high effort under-cluster; variants producing ≥14 over-cluster (cross-referenced in `BL1_..._food-truck_high.md` §6 item 6).

---

## 2. Convergence Density Benchmarks

### 2.1 Per-cell convergence density

Density is defined as (Synthesize questions in at least one convergence group) / (total Synthesize questions).

| Topic | Low | Medium | High |
|---|---|---|---|
| habit-tracker | 60.3% | 68% | 59% |
| space-party | 57% | 50.4% | 58.9% |
| tool-library | 60.9% | 50.4% | 62% |
| mobile-app | 66.7% | 67% | 57.8% |
| food-truck | 64% | 68% | 64% |
| property-management | 87.5% | 71% | 60.9% |
| youth-mentorship | 68% | 70% | 59.3% |
| school-consolidation | 62.3% | 53.0% | 63.1% |
| wearable-device | 67% | 70% | 68% |
| career-change | 60.3% | 71% | 62.8% |

### 2.2 Dimension benchmarks

| Effort | Mean | Median | Range |
|---|---|---|---|
| Low | 65.4% | 63.2% | 57.0–87.5% |
| Medium | 63.9% | 67.5% | 50.4–71% |
| High | 61.6% | 61.5% | 57.8–68% |

### 2.3 Unusually high / low cells

**Unusually high:**
- **property-management / low (87.5%)** — an outlier by ~18 percentage points. Driver: tightly convergent regulatory-financial-stakeholder decision surface where every analytical persona independently surfaces the same concern set (`BL1_..._property-management_low.md` §6 item 1).
- **career-change / medium (71%)** and **wearable-device / medium (70%)** — single-decider or tightly-coupled-architecture topics produce high persona convergence.
- **youth-mentorship / medium (70%)** — legal-ethical density (Lawyer at medium) + relational density.

**Unusually low:**
- **space-party / medium (50.4%)** and **tool-library / medium (50.4%)** — event/community-nonprofit topics where personas address orthogonal concerns (`BL1_..._space-party_medium.md`, `BL1_..._tool-library_medium.md`).
- **school-consolidation / medium (53.0%)** — balanced cluster ownership and broad dimensional spread naturally cap convergence.

### 2.4 Effect of adding Tier 2 at high effort: density does NOT monotonically rise

This is a non-obvious finding with significant SP1 implications. The Tier 2 additions at high effort produce **more personas** but **lower or flat density** at 7 of 10 topics:

- **habit-tracker:** low 60.3% → medium 68% → high 59% (peaks at medium, drops at high)
- **mobile-app:** low 66.7% → medium 67% → high 57.8% (monotonic decrease after medium)
- **property-management:** low 87.5% → medium 71% → high 60.9% (strictly decreasing with effort)
- **youth-mentorship:** low 68% → medium 70% → high 59.3% (peaks at medium)
- **tool-library:** low 60.9% → medium 50.4% → high 62% (non-monotonic, rebounds at high)
- **career-change:** low 60.3% → medium 71% → high 62.8% (peaks at medium)
- **space-party:** low 57% → medium 50.4% → high 58.9% (U-shape)

Only **wearable-device** (67% → 70% → 68%) and **food-truck** (64% → 68% → 64%) stay roughly flat. **school-consolidation** (62.3% → 53.0% → 63.1%) is U-shaped.

**Mechanistic explanation (per `BL1_..._space-party_high.md` §6 item 1, `BL1_..._property-management_high.md` §6):** Adding Tier 2 personas (Empath, FPT, Futurist, Constraint Flipper) introduces distinctive registers (emotional-interior, definitional, trend-extrapolation) that open *new* uniquely-framed territory faster than they converge on existing concerns. Property-management/low's extreme 87.5% density was a pre-expansion ceiling; adding 4 Tier 2 + 2 Tier 3 personas produced more uniqueness faster than more convergence.

**SP1 implication:** Convergence density is NOT a uniform target. Scoring should be calibrated per-cell against the baseline density. A uniform "expect 60% convergence" target would misclassify space-party/medium and tool-library/medium as under-converged and property-management/low as over-converged.

### 2.5 Convergence-normalized compaction

A consistent pattern across cells is that compaction tracks density: compaction-to-convergence ratio (compaction / density) stays remarkably stable at 4.0–4.2 across topics (`BL1_..._food-truck_medium.md` §6 item 3; `BL1_..._property-management_low.md` §6 item 1). SP1 scoring should use convergence-normalized compaction, not raw compaction, when comparing across cells.

---

## 3. Compaction Ratio Benchmarks

### 3.1 Per-cell compaction (Synthesize stream: N_synth / M_synth)

| Topic | Low | Medium | High |
|---|---|---|---|
| habit-tracker | 2.62× | 2.73× | 2.69× |
| space-party | 2.67× | 3.11× | 3.26× |
| tool-library | 2.56× | 2.73× | 2.75× |
| mobile-app | 2.67× | 2.69× | 3.12× |
| food-truck | 2.57× | 2.82× | 2.75× |
| property-management | 2.67× | 2.79× | 3.32× |
| youth-mentorship | 2.59× | 2.76× | 3.21× |
| school-consolidation | 2.46× | 2.63× | 3.25× |
| wearable-device | 2.43× | 2.41× | 3.18× |
| career-change | 2.92× | 2.73× | 3.04× |

### 3.2 Dimension benchmarks

| Effort | Mean | Median | Range |
|---|---|---|---|
| Low | 2.62× | 2.63× | 2.43–2.92× |
| Medium | 2.74× | 2.73× | 2.41–3.11× |
| High | 3.06× | 3.15× | 2.69–3.32× |

### 3.3 SP1 "acceptable compaction" band

Define compaction as *aggressive* when <2.0× (loses compaction discipline — SP1 variant failed to merge), *conservative* when >3.8× (SP1 variant over-compressed, likely lost distinct voices). Bands per effort level:

| Effort | Pass band | Aggressive (too loose) | Too compact |
|---|---|---|---|
| Low | 2.3×–3.0× | <2.2× | >3.3× |
| Medium | 2.5×–3.2× | <2.3× | >3.6× |
| High | 2.6×–3.5× | <2.4× | >3.8× |

The bands are slightly wider than the range observed to accommodate the ±2 question target-range wobble per cell (`BL1_..._career-change_low.md` §6 item 2: "consider whether the scoring rubric should accept M ∈ [23, 28]").

### 3.4 Total compaction (including Append)

At low, total compaction is 2.5× (output = ~39 from input ~100). At medium, total is ~2.1× (~60 from ~120). At high, total is ~2.0× (~85 from ~180). The Append stream *dilutes* the total ratio because Append questions pass through largely intact. SP1 should score Synthesize-stream compaction and Append fidelity as separate metrics; aggregate compaction is not a meaningful SP1 metric.

---

## 4. Dimension Balance Benchmarks

### 4.1 Synthesized-output dimension distributions (per-cell target)

Dimensions: Strategic (S), Tactical (T), Creative (C), Analytical (A), Human-centered (H). Percentages are of Synthesize-stream output (not full Phase 2C output; Append adds substantial Creative).

| Cell | Strategic | Tactical | Creative | Analytical | Human-centered |
|---|---|---|---|---|---|
| habit-tracker / low | 35% | 12% | 8% | 25% | 20% |
| habit-tracker / medium | 29% | 10% | 0% | 32% | 29% |
| habit-tracker / high | 28% | 15% | 9% | 22% | 26% |
| space-party / low | 18% | 22% | 15% | 18% | 27% |
| space-party / medium | 21% | 16% | 8% | 20% | 35% |
| space-party / high | 27% | 19% | 28% | 11% | 24% *(input)* |
| tool-library / low | 27% | 14% | 10% | 20% | 30% |
| tool-library / medium | 45% | 9% | 10% | 5% | 31% |
| tool-library / high | 28% | 14% | 20% | 13% | 25% |
| mobile-app / low | 28% | 13% | 7% | 28% | 24% |
| mobile-app / medium | 45% | 7% | 10% | 14% | 24% |
| mobile-app / high | 24% | 10% | 34% | 19% | 13% *(output w/ Append)* |
| food-truck / low | 29% | 14% | 11% | 18% | 28% |
| food-truck / medium | 36% | 12% | 9% | 15% | 28% |
| food-truck / high | 31% | 14% | 19% | 14% | 22% |
| property-management / low | 33% | 12% | 8% | 17% | 30% |
| property-management / medium | 34% | 9% | 8% | 12% | 37% |
| property-management / high | 28% | 16% | 23% | 16% | 24% *(incl Append)* |
| youth-mentorship / low | 21% | 11% | 8% | 26% | 34% |
| youth-mentorship / medium | 38% | 9% | 6% | 12% | 35% |
| youth-mentorship / high | 23% | 7% | 17% | 14% | 30% |
| school-consolidation / low | 25% | 14% | 10% | 20% | 31% |
| school-consolidation / medium | 42% | 7% | 13% | 5% | 30% |
| school-consolidation / high | 24% | 4% | 21% | 15% | 31% *(w/ Append)* |
| wearable-device / low | 20% | 17% | 13% | 23% | 27% |
| wearable-device / medium | 22% | 19% | 11% | 27% | 24% |
| wearable-device / high | 32% | 11% | 9% | 32% | 27% *(Synth only; Append raises Creative)* |
| career-change / low | 12% | 8% | 8% | 44% | 28% |
| career-change / medium | 33% | 7% | 10% | 17% | 33% |
| career-change / high | 24% | 13% | 7% | 29% | 27% |

*Note: values are transcribed from `baselines/*_target.md` dimension tables. Low-effort cells report Synthesize-only distributions that intentionally under-represent Creative (the Append stream handles Creative). Percentages may not sum to exactly 100% due to rounding and dual-dimension cross-classification.*

### 4.2 Topic-driven vs. effort-driven dimension shifts

**Topic-driven shifts (stable across effort):**
- **Strategic share is topic-typed.** Regulated/financial topics (food-truck, property-management) run 28–36% Strategic; event/experiential topics (space-party, youth-mentorship) run 18–27%; product-strategy topics (mobile-app, wearable-device) spike to 45% at medium when no Tier 3 competes (`BL1_..._mobile-app_medium.md` §1).
- **Human-centered share tracks vulnerable-population / relational topics.** Youth-mentorship, school-consolidation, property-management run 30–37% Human-centered; commercial-product topics run 20–28%.
- **Creative share is primarily Append-driven**, not topic-driven. Synthesize-only Creative is typically 6–13%; Append pushes total Creative to 20–35%.
- **Analytical spikes on technical / financial / decision-analytic topics.** career-change / low at 44% Analytical is the highest single value (decision-theoretic + financial concentration); wearable-device cells consistently elevate Analytical via Technical Expert.

**Effort-driven shifts (within a topic as effort rises):**
- **Tier 2 introduces Creative and Human-centered shifts.** Empath adds ~5pp Human-centered; Visionary/FPT/Futurist at high effort add 10–15pp Creative via cluster 12 + Append.
- **Tier 3 Synthesize adds Strategic/Analytical.** Accountant adds Analytical; Lawyer adds Analytical; Politician (Append) adds Strategic; Technical Expert adds Analytical + Tactical.
- **No topic holds dimensional balance constant across effort levels.** Scoring that uses a fixed per-topic dimension target without effort-conditional adjustment will produce false failures at 30 of 30 cells.

### 4.3 SP1 dimension-balance scoring rules

1. **Use topic-typed Strategic and Human-centered bands, not uniform targets** (per `BL1_..._food-truck_low.md` §6 item 5, `BL1_..._mobile-app_medium.md` §6 item 9):
   - Business/commercial/regulated: Strategic 28–38%, Human-centered 22–32%
   - Event/community-nonprofit: Strategic 18–30%, Human-centered 25–35%
   - Social-program/relational: Strategic 21–38%, Human-centered 30–37%
   - Technical-regulated-product: Strategic 20–32%, Human-centered 22–30%

2. **Creative is Append-driven; Synthesize-only Creative at 0–13% is acceptable.** Scoring rubrics that demand non-zero Creative in Synthesize output mis-evaluate (`BL1_..._habit-tracker_medium.md` §6.5).

3. **Tolerance:** ±5 percentage points per dimension per cell. Outside 5pp = SP1 has compressed or expanded that dimension materially. ±3pp = on-target.

---

## 5. Persona Representation Benchmarks

### 5.1 Per-persona minimum-representation patterns (aggregated)

Aggregating across cells where each persona is present, the minimum coverage targets from per-cell B3 files are:

| Persona | Cells present (/30) | Typical floor (% of input Qs) | Target (% of input Qs) | SP1 High-Salience Preservation Cue |
|---|---|---|---|---|
| Analyst | 30 / 30 | 40% | 55% | Framework vocabulary (decision framework, break-even, scenario planning) in mergers |
| Appreciative Inquirer | 30 / 30 | **40% (strict)** | 55% | Strengths-based register ("when has X worked beautifully," "hidden assets," "peak moments") |
| Audience Advocate | 30 / 30 | 45% | 55% | Structural-equity dimensions distinct, not collapsed into "inclusion" merger |
| Devil's Advocate | 30 / 30 | 35% | 50% | Named-risk titles and skeptical-rigor vocabulary in merger anchors |
| Questioner | 30 / 30 | 30% | 40% | "What if X assumption is wrong" paradigm framings survive as distinct |
| Systems Thinker | 30 / 30 | 40% | 55% | **Named archetypes preserved verbatim** (Shifting-the-Burden, Fixes-that-Fail, etc.) |
| Empath | 10 / 30 (high only) | 40% | 55% | Emotional-interior register ("how does it feel," "felt experience") |
| First Principles Thinker | 10 / 30 (high only) | 40% | 60% | Definitional framing ("what IS this fundamentally") |
| Futurist | 10 / 30 (high only) | 25% | 45% | Trend-grounding language ("documented growth," "trajectory") |
| Constraint Flipper | 10 / 30 (high only) | 100% Append | — | Inversion framings survive even when topically overlapping with Synthesize |
| Accountant | 7 / 30 (med-high Tier 3) | 50% | 70% | **Quantified financial vocabulary** (dollar ranges, %, payback periods) |
| Lawyer | 5 / 30 (med-high Tier 3) | 50% | 70% | **Named regulatory mechanisms** (FCRA, FERPA, BAA, specific statutes) |
| Politician | 4 / 30 (med-high Tier 3 Append) | 100% Append-All | 100% | Political-analytical vocabulary (veto players, coalition cascade, political capital) |
| Technical Expert | 2 / 30 (wearable med+high) | 50% | 70% | Engineering specificity (NPU, quantization, latency budgets) |
| Provocateur | 30 / 30 (Append-All ≥ med; round-robin 3/5 at low/med) | Appended at quota | — | Inversion payload; orphan in cluster structure |
| Storyteller | 30 / 30 | Appended at quota | — | Narrative-moment specificity |
| Visionary | 30 / 30 | Appended at quota | — | Paradigm-reimagination framing |
| Analogist | 15 / 30 (5 topics) | Appended at quota | — | Single-domain metaphor import |
| Connector | 15 / 30 (5 topics) | Appended at quota | — | Structural isomorphism + recombinant-innovation modes (distinct from Analogist) |

### 5.2 Systematically-at-risk personas — SP1 attention areas

**Top voice-preservation risks (ranked):**

1. **Appreciative Inquirer — orphan-cluster-at-risk persona across all topics.** AI produces 5–11 unique "felt quality / aspirational" questions per cell that don't converge with any other persona. Synthesis prompts that prioritize cross-persona convergence as a quality signal will systematically drop AI orphans. Observed 100% unique rate in food-truck/high (`BL1_..._food-truck_high.md` §2) and 91–92% at school-consolidation/high and mobile-app/high. **Minimum rule: ≥1 AI orphan-register question in all 30 outputs; 3+ at high effort.**

2. **Systems Thinker — archetype-vocabulary stripping.** ST names 4–15 distinct archetypes per cell (Shifting-the-Burden, Fixes-that-Fail, Success-to-the-Successful, etc.). Synthesis tends to extract the underlying concern and drop the named-archetype label. **At least one named archetype must survive verbatim in every output; high-effort cells require 3+ named archetypes preserved.** (`BL1_..._school-consolidation_low.md` §2 — highest archetype density at 6 per cell; `BL1_..._food-truck_high.md` — 15 archetypes.)

3. **Tier 3 specialty vocabulary (Accountant / Lawyer / Technical Expert / Politician).** All 4 Tier 3 Synthesize personas have distinctive vocabulary that Synthesis mergers can flatten:
   - Accountant: specific dollar ranges ($12–16 plate, $800–1,200 commissary), payback periods, NPV, ARPU, LTV:CAC. 92–100% of Accountant questions are in convergence groups (`BL1_..._tool-library_high.md` §2; `BL1_..._food-truck_high.md` §2), so voice survives *only* via merger quality.
   - Lawyer: named statutes (FCRA, FERPA, CMIA, MHMDA, BAA, QMS, CAPA), liability mechanisms, duty-to-warn.
   - Technical Expert: INT8 / sparse compute / quantization / sub-5mW / <5s latency / watchdog / CRC / 128KB SRAM.
   - Politician: veto players, coalition cascade, political capital, resistance typology — all Append, so fidelity check is 100% preservation.

4. **Empath — emotional-interior register.** At high effort, Empath's 6-question concentrations in single clusters (school-consolidation Cluster 8; youth-mentorship Cluster 5; property-management Clusters 5–8; career-change Cluster 7) are the most aggressive compaction targets. **Minimum rule at high effort: ≥3 distinct emotional-interior questions in the Empath-dominant cluster; ≥1 Empath question in any other cluster Empath appears in.**

5. **Audience Advocate — fine-grained equity dimensions collapse into "inclusion" merger.** AA spans 4–7 clusters across cells with 2–8 questions each. Generic "inclusive design" mergers that claim to cover "sensory + motor + language + cultural + trust" fail representation scoring. **Cross-cell rule: each AA-touching cluster requires ≥2 AA-distinctive dimensions preserved as distinct questions.**

### 5.3 Personas with systematically low representation — flag for SP1

- **Futurist** — 33% representation at career-change/high because trend-decoration anti-pattern (persona-selection-guide) causes within-persona consolidation. SP1 should not penalize Futurist at 30–35% if cluster-breadth sampling (2+ trend categories per cell) is achieved (`BL1_..._career-change_high.md` §"Persona Representation").
- **Appreciative Inquirer method-questions** — 3–4 of 12 AI questions per cell are method-register ("what peak moments," "what hidden assets"); these are expected drops. SP1 should penalize dropping content-distinctive AI questions but not method-duplicates (`BL1_..._wearable-device_low.md` §2 Tension E; `BL1_..._property-management_low.md` §6 item 9).
- **Questioner** — 30% representation floor is lower than other Tier 1. Questioner's questions tend to merger-anchor rather than survive distinct; SP1 should credit merger-anchoring in representation scoring. Property-management/low had 14 of 15 Questioner questions in convergence groups (`BL1_..._property-management_low.md` §6 item 11).

---

## 6. C1 Recommendation (Clustering vs. Flat)

**This section is load-bearing for SP1 prompt design. The recommendation is effort-level-conditional.**

### 6.1 Aggregate per-cell C1 recommendations

| Effort | Flat pooling | Per-persona grouping | Total |
|---|---|---|---|
| Low | 5 | 5 | 10 |
| Medium | 10 | 0 | 10 |
| High | 10 | 0 | 10 |
| **Total** | **25** | **5** | **30** |

**By topic at low effort:**
- Flat: space-party, food-truck, property-management, youth-mentorship, wearable-device
- Per-persona: habit-tracker, tool-library, mobile-app, school-consolidation, career-change

### 6.2 Headline recommendation

**SP1 should present input questions using flat pooling with persona tags preserved as metadata** at medium and high effort — this is the unanimous recommendation across 20 of 20 medium+high cells. **At low effort, SP1 should either (a) present input with per-persona-grouped structure plus persona tags, or (b) present flat-with-tags plus an explicit low-effort voice-preservation instruction.** The decision between (a) and (b) should be resolved by SP1 based on prompt-engineering simplicity and test results; the baselines support either.

### 6.3 Rationale

**Why flat pooling wins at medium and high:**
- **Cross-persona convergence is the strongest theme signal.** At medium, 9 cells observe 6–8 personas converging on a common theme via CG; at high, 7–11 personas converge on single clusters (`BL1_..._habit-tracker_medium.md` §4; `BL1_..._property-management_high.md` §4). Per-persona structure forces mental cross-referencing across N sections (quadratic cost as N grows); flat pooling makes convergence visible from the first pass.
- **Persona attribution survives as metadata, not as structure.** Each question carries its `[Persona]` tag; the output reports cluster-level persona composition. Pre-clustering by persona commits to structure the output rarely needs.
- **Per-persona pre-clustering tempts the subagent toward persona-aligned output.** This would defeat synthesis. Flat pooling encourages cross-persona theme detection from the start (`BL1_..._habit-tracker_medium.md` §4 item 4).
- **Flat pooling scales better at high-effort depth.** At 10–11 Synthesize personas, per-persona view creates a quadratic cross-referencing burden (`BL1_..._school-consolidation_high.md` §4 — the strongest observed flat-pool case, with 36% orphan rate and 10 personas).

**Why per-persona is recommended at 5 low-effort cells:**
The 5 low-effort per-persona cells (habit-tracker, tool-library, mobile-app, school-consolidation, career-change) share a pattern: they have a persona with distinctive unique-voice territory that flat pooling would dilute. Specifically:
- AI voice is dimensionally inverse to analytical personas and orphan-heavy at low effort; per-persona keeps AI's 6–11 orphan questions visible.
- Systems Thinker archetype vocabulary density; per-persona keeps archetypes surfaced.
- Audience Advocate sole cluster ownership (e.g., career-change/low C9 at 6 of 8 AA; tool-library/low C1 equity at 9 of 10 AA).

The 5 low-effort flat cells (space-party, food-truck, property-management, youth-mentorship, wearable-device) have tighter cross-persona convergence already in the low-effort data (convergence densities 57–87%), so flat pooling surfaces convergence better than per-persona protects voice.

### 6.4 SP1 implication: variants should receive effort-level-conditional input formatting

Three operational paths:

1. **Simplest (Recommended Default):** SP1 variants use **flat-with-tags** universally, with a prompt-level instruction at low effort to "explicitly preserve each of the following persona voices: Appreciative Inquirer strengths-register, Audience Advocate structural-equity, Systems Thinker named archetypes." Test this and observe whether low-effort AI voice preservation meets the B3 minimums across the 5 flagged topics.

2. **Effort-Conditional:** SP1 variants use **per-persona-with-tags at low** and **flat-with-tags at medium/high**. This matches the baseline recommendation exactly but creates a variable-input test harness.

3. **Topic-Conditional (Not Recommended):** SP1 variants switch format based on topic. This adds complexity without clear benefit — the low-effort split does not correlate cleanly with any single topic feature.

### 6.5 Cross-effort pattern check

The data supports a clear monotonic pattern: **flat-pooling benefit increases with persona count and decreases with single-persona cluster dominance**. At 6 Synthesize personas at low effort, single-persona cluster dominance is common (5 of 10 cells have at least one cluster with ≥70% from a single persona); at 9–11 Synthesize personas at high effort, no cluster is ≥70% from a single persona (because Tier 2 distributes contribution more broadly) *except* for genuinely persona-bound clusters like ST's archetype cluster or FPT+Futurist's reimagination cluster. Flat pooling can detect these through persona tags without requiring per-persona structure.

**C1 flat-pooling confidence by effort:**
- Low: mixed, moderate confidence either way (split 5/5)
- Medium: flat, moderate-high confidence (10/10)
- High: flat, very-high confidence (10/10)

---

## 6a. Cross-Effort Evolution by Topic

For each of the 10 topics, the following compares cluster count, convergence density, and dimension balance across effort levels. Three questions per topic:
- Do new clusters emerge as effort rises, or do existing clusters expand?
- Does the topic exhibit a structural shift between effort levels?
- Does convergence density rise, saturate, or invert?

### 6a.1 Habit-tracker
- **Clusters:** 9 → 12 → 11. New clusters emerge at medium (Graceful Graduation cluster; Emotional Tone cluster); Cluster 11 at high (no net gain because Differentiation-vs-First-Principles reabsorbs).
- **Convergence density:** 60% → 68% → 59%. Peaks at medium; high drops as Tier 2 (Empath, FPT, Futurist) introduces unique content faster than convergence.
- **Structural shift?** Yes, at medium — Cluster 11 "User Journey / Onboarding" (100% Appreciative Inquirer) emerges as a distinct cluster rather than being an orphan within Cluster 3 at low. SP1 cannot assume medium is "low + more."
- **Dimension balance:** Strategic dominance grows to 35%/29%/28% as engagement + lifecycle + scope questions accumulate.

### 6a.2 Space-party
- **Clusters:** 7 → 10 → 11. Modest growth; high adds Cluster 11 (Technology/Sustainability/Trend), entirely driven by Futurist.
- **Convergence density:** 57% → 50% → 59%. U-shape; medium is unusually low because event-planning personas address orthogonal logistics concerns.
- **Structural shift?** Yes at high — Cluster 11 (Futurist-owned) is a genuinely new cluster that does not exist at medium. SP1 cannot assume Futurist simply adds questions to existing clusters.
- **Dimension balance:** Creative grows 15% → 8% → 28% (Creative is Append-driven; high effort brings CF which adds Creative).

### 6a.3 Tool-library
- **Clusters:** 9 + 2 orphan → 11 → 12. Orphan clusters (AI aspirational, ST systems) integrate into cross-persona clusters at medium and high.
- **Convergence density:** 60.9% → 50.4% → 62%. Non-monotonic; dips at medium when Politician's Append-routed 10 questions don't contribute to Synthesize convergence; recovers at high when Accountant joins Synthesize.
- **Structural shift?** Yes at medium — Cluster 8 (Governance) and Cluster 10 (Ecosystem) emerge specifically because Politician is present in Append. **Flag for SP1: tool-library cluster structure depends on Politician inclusion; GT1 watchlist status on this cell adds risk.**
- **Dimension balance:** Strategic 27% → 45% → 28%. Medium spikes because Politician + governance content dominate.

### 6a.4 Mobile-app
- **Clusters:** 9 → 9 → 12. Stable at low/medium; high-effort jump to 12 reflects Tier 2 + Tier 3 additions (Empath, FPT, Futurist, Accountant).
- **Convergence density:** 66.7% → 67% → 57.8%. High drops as bridging rate rises to 35%.
- **Structural shift?** Partial — low and medium have similar structure; high is substantially different (Accountant drives new Cluster 4 Economics density; FPT+Futurist drive Cluster 12 Reimagination; Empath drives Cluster 5 Emotional). SP1 cannot assume mobile-app/high is mobile-app/medium + volume.
- **Dimension balance:** Mobile-app is the only cell where **Creative is the dominant output dimension at high (34%)** — driven by category-reimagination decision character.

### 6a.5 Food-truck
- **Clusters:** 8 → 9 → 12. +1 at medium (Brand/Loyalty emerges from ST Q14 + AI); +3 at high (FPT, Futurist, Empath clusters).
- **Convergence density:** 64% → 68% → 64%. Stable/plateau at high.
- **Structural shift?** At high, Cluster 10 (Founder Wellbeing) emerges — a cluster that does NOT exist at low or medium, driven by Empath's solo-first-time-owner framing (`BL1_..._food-truck_high.md` §1).
- **Dimension balance:** Strategic 29% → 36% → 31%. Accountant + Politician push Strategic peak at high.

### 6a.6 Property-management
- **Clusters:** 8 → 12 → 12. Big jump at medium (Lawyer joins) — 4 new clusters split out of low-effort clusters.
- **Convergence density:** 87.5% → 71% → 60.9%. **Monotonic decrease** — uniquely clear pattern of "additional personas at Tier 3 add unique content faster than they converge." The 87.5% low-effort density was the extreme upper bound.
- **Structural shift?** Yes at medium — Lawyer's addition produces new Clusters 10 (Political Engagement), 11 (Growth Dynamics), 12 (Reimagination) that didn't exist at low. SP1 cannot assume property-management cells build incrementally.
- **Dimension balance:** Strategic 33% → 34% → 28%. Stable.

### 6a.7 Youth-mentorship
- **Clusters:** 7 + 2 orphan → 9 → 12. Orphans integrate; Lawyer at medium adds 2 clusters; Tier 2 at high adds 3 more.
- **Convergence density:** 68% → 70% → 59.3%. Peaks at medium; high drops by ~10pp.
- **Structural shift?** Yes at medium — cluster 9 becomes a 27-question mega-cluster driven by Lawyer + program-design overlap. At high, the mega-cluster redistributes. SP1 must plan for the C9 mega-cluster specifically at this cell's medium baseline.
- **Dimension balance:** Human-centered 34% → 35% → 30%. Stable; topic character carries through effort levels.

### 6a.8 School-consolidation
- **Clusters:** 10 + 2 orphan → 12 → 12. Orphans partially integrate at medium; stable at high.
- **Convergence density:** 62.3% → 53.0% → 63.1%. U-shape; medium dips because balanced cluster ownership + Politician-routed Append don't add to Synthesize convergence.
- **Structural shift?** Yes at medium — Politician's addition splits Governance from Voter-Approval (new Cluster 6 emerges). Additionally, the medium cell is on the GT1 watchlist (Politician vs. Accountant ambiguity), making it structurally unstable across GT1 revisions.
- **Dimension balance:** Strategic 25% → 42% → 24%. Medium spike driven by Politician governance content; high redistributes.

### 6a.9 Wearable-device
- **Clusters:** 8 → 8 → 11. Low and medium structurally identical (Technical Expert at medium expands existing clusters rather than creating new ones); high adds 3 clusters (Tier 2 + Lawyer).
- **Convergence density:** 67% → 70% → 68%. Notably stable — the only topic where all three effort levels are within ±2pp.
- **Structural shift?** No from low to medium (pure volume growth); yes from medium to high (FPT, Futurist, Lawyer introduce new cluster territory).
- **Dimension balance:** Analytical 23% → 27% → 32%. Monotonic rise as TE and Lawyer add Analytical content.

### 6a.10 Career-change
- **Clusters:** 10 → 9 → 12. Decreases at medium (balanced cluster ownership stabilizes around 9); increases at high (Tier 2 additions).
- **Convergence density:** 60.3% → 71% → 62.8%. Peaks at medium.
- **Structural shift?** Yes at medium — AA's 8-question concentration in C7 (community-centered) is unusual. At high, the concentration distributes (`BL1_..._career-change_high.md` §1).
- **Dimension balance:** Analytical 44% → 17% → 29%. Low-effort extreme is driven by financial dominance; medium redistributes to balanced Strategic/Human-centered/Analytical.

### 6a.11 Cross-topic patterns from the effort-evolution analysis

1. **New clusters emerge at medium when Tier 3 is added.** Politician produces a governance/voter-approval split; Lawyer produces a liability cluster; Accountant expands the financial cluster. Topics without Tier 3 at medium (habit-tracker, space-party, mobile-app, career-change) show less cluster-count growth.

2. **High-effort consistently produces 11–12 clusters with Cluster 11 (First Principles) and Cluster 12 (Reimagination) reliably present.** FPT + Futurist together contribute 9–11 questions to these two clusters in 8 of 10 high-effort cells.

3. **Convergence density DOES NOT monotonically increase with persona count.** It typically peaks at medium and drops at high as Tier 2 uniqueness outpaces Tier 1 convergence. SP1 must not assume "more personas = more mergers."

4. **Dimension balance is NOT stable across effort levels for any topic.** Topic-fingerprints shift as personas are added/removed. The largest shifts are Strategic (up to 20pp swing in tool-library low→medium) and Creative (up to 27pp swing in mobile-app medium→high driven by CF + Visionary + Connector + FPT additions).

5. **Structural shift between effort levels — topics to flag for SP1 caution:** tool-library, property-management, youth-mentorship, school-consolidation, mobile-app all show structural (not just volume) shifts between effort levels. SP1 cannot extrapolate from low to high or medium to high for these topics. Less risky topics for SP1 extrapolation: wearable-device (near-stable low→medium), habit-tracker (modest medium shift only).

---

## 7. Append Mechanics Aggregate

### 7.1 Round-robin produces natural Append selections — 29 of 30 cells clean

The D1 round-robin is clean at the cluster-selection level on 29 of 30 cells. Each Perspective persona (Provocateur, Storyteller, Visionary, Analogist, Connector) produces a 3-cluster internal structure per the "universal 3-cluster structure" observation (persona-selection-guide); Constraint Flipper at high effort also fits 3 clusters; Politician at 10 questions produces 3 clusters reliably.

### 7.2 Systematic Append awkwardness — SP1 variant design flags

**Storyteller "Cluster D" systematic exclusion at low effort** (`BL1_..._habit-tracker_low.md` §6 item 2; `BL1_..._tool-library_low.md` §6 item 3): Storyteller produces 4 internal clusters at volumes 7–8 in 2 of 10 low-effort cells (habit-tracker, tool-library), and the 3-quota forces Cluster D (typically the smallest/most-distinctive) to be dropped. The dropped content is often the moment-scale or volunteer-emotional narrative — arguably Storyteller's most distinctive contribution. **SP1 variants should not penalize dropping Cluster D at low effort; this is D1-bound, not synthesis-bound.** PC1 / D1-revision candidate: consider increasing low-effort quota to 4 for Storyteller specifically, or adding a "distinctiveness override" rule.

**Visionary paradigm-framing systematic drops at medium effort** (`BL1_..._food-truck_medium.md` §6 item 7; `BL1_..._youth-mentorship_medium.md` §6 item 5; `BL1_..._mobile-app_medium.md` §6 item 1; `BL1_..._career-change_medium.md` §3): Across 4 medium-effort cells, Visionary's Q6 or Q7 (middle source-order position) is dropped by the deterministic "lowest-numbered wins" tiebreak, and these tend to be the most distinctive paradigm-framing questions. Specific observed drops: food-truck Q6 antifragile; youth-mentorship Q6 generational; mobile-app Q5 no-features and Q6 47-second-as-product; career-change Q6 upstream-causal. **SP1 variants should not penalize these drops; they are D1-bound.** PC1 / D1-revision candidate: consider a "paradigm-distinctiveness" tiebreak heuristic for Visionary.

**Connector Cluster-C overweight at low effort** (`BL1_..._mobile-app_low.md` §6 item 2; `BL1_..._school-consolidation_medium.md` §6 item 10): On inter-domain topics where Connector has 4–5 questions in its signature cluster (information-theoretic / recombinant-innovation / structural-isomorphism), the 3-quota forces 2–4 distinctive framings to be dropped. Specifically in school-consolidation/medium, the dropped Connector Q7 (hospital-merger federated model) is arguably the highest-value single Append question for the topic. **SP1 variants should not penalize these drops; they are D1-bound.** PC1 / D1-revision candidate: a Connector-specific tiebreak favoring non-import (isomorphism/recombinant) modes.

**Politician interleaving vs. segregation awkwardness at medium effort** (`BL1_..._tool-library_medium.md` §3; `BL1_..._school-consolidation_medium.md` §3): When Politician is selected at medium, its 10-question Append-All routing saturates Clusters 5/8/10 visually if interleaved by theme (typically 40–80% of those clusters). Segregating Politician as a persona section preserves governance voice coherence. **SP1 variants should test both presentations; this is a presentation-design question for PC1.**

**Tier 2 Append stream size at high effort approaches Synthesize stream** (`BL1_..._youth-mentorship_high.md` §6 item 6; `BL1_..._school-consolidation_high.md` §6 item 6): At high effort, Append:Synthesize ratios reach 44:42 (youth-mentorship) and 45:40 (school-consolidation). At ≥50% Append share, presentation choice materially affects reader experience. SP1 should test both segregated and interleaved presentations on ≥2 high-effort cells.

### 7.3 Topic-dependence of Append bridge coverage

- **Business/commercial topics** (food-truck, property-management, mobile-app, career-change, wearable-device) produce broad Append cluster coverage (6–7 of 8 Synthesize clusters bridged).
- **Community-nonprofit / social-program topics** (tool-library, youth-mentorship, school-consolidation) produce dense bridging with Append questions directly paralleling Synthesize content (youth-mentorship/medium: every cluster ≥2 Append bridges per `BL1_..._youth-mentorship_medium.md` §3).
- **Event/experiential topics** (space-party) produce more concentrated Append bridging (5 of 7 clusters at low effort) because the Append personas operate in the same experiential register as some Synthesize personas.

---

## 8. SP1 Readiness and Subset Recommendations

### 8.1 Topics unusually difficult to synthesize — consider excluding from initial 9-file subset

**Candidates for exclusion (based on baseline complexity, watchlist status, or cell-specific calibration):**

1. **youth-mentorship/medium** — C9 mega-cluster (27 questions → 7 outputs) requires explicit sub-theme splitting instruction (`BL1_..._youth-mentorship_medium.md` §6.2); SP1 variants that fail to include this instruction will fail regardless of synthesis quality.
2. **school-consolidation/high** — largest Append stream observed (45), highest orphan rate (36%), balanced cross-dimension input — most comprehensive single-cell test but also most likely to surface synthesis-prompt weaknesses across multiple dimensions simultaneously (`BL1_..._school-consolidation_high.md` §6 item 12).
3. **property-management/low** — 87.5% convergence density is an outlier and produces atypical compaction dynamics.
4. **mobile-app/high** — Creative-dominant output dimension (34%) is unique; SP1 variants may not handle this gracefully.

### 8.2 Topics representatively diverse — good SP1 subset candidates

**Confirmed recommendation for SP1 initial 9-file subset: tool-library / mobile-app / school-consolidation**, the Q9 default in `discussion-questions-responses.md`.

Rationale:
- **tool-library**: community-nonprofit + governance + long-term-sustainability. Exercises Audience Advocate equity concentration, Appreciative Inquirer aspirational orphans, Systems Thinker archetypes, and Politician at medium + Accountant at high (3 of 4 Tier 3 personas across the 3 effort levels). The /medium cell is GT1 watchlist — useful test of scoring stability under composition uncertainty.
- **mobile-app**: product-strategy + simplification-decision. Exercises Connector-vs-Analogist swap mechanics, no-Tier-3 baseline at medium (useful control), and Accountant + Connector at high. Creative-dominant output at high is a stress test for dimensional balance.
- **school-consolidation**: civic/institutional-change + multi-stakeholder + three-district merger. Exercises Connector-swap at all effort levels (paradigmatic Connector trigger), Politician at medium + Accountant + Politician at high. Medium cell on GT1 watchlist. Largest Append stream at high effort (45).

**Together these three topics cover:** (a) Tier 3 Synthesize (Accountant, Lawyer excluded by design) and Tier 3 Append (Politician); (b) Connector swap (2 of 3 topics) and Analogist default (1 of 3); (c) watchlist cells (2 of 9 cells are on watchlist, providing scoring-stability signal); (d) dimension diversity (Strategic-dominant tool-library, Creative-dominant mobile-app/high, Balanced school-consolidation/high); (e) topic-type diversity (physical community service, digital product, civic institution).

### 8.3 Override rationale (none — default stands)

BL1 does not override the default triple. Alternative triples considered:
- **food-truck / mobile-app / youth-mentorship** was considered (covers Politician + Accountant at high; no-Tier-3 simple baseline; Lawyer at medium). Rejected because food-truck/high and youth-mentorship/high are both on watchlist — doubling watchlist cells in the initial subset risks confounding synthesis-prompt quality with GT1 ambiguity.
- **wearable-device / space-party / property-management** was considered (covers Technical Expert, no-Tier-3, Lawyer+Accountant at high). Rejected because wearable-device has stable density across effort levels (less effort-variation signal) and property-management is on watchlist at high.

The default (tool-library, mobile-app, school-consolidation) provides the strongest balance of coverage, watchlist exposure (2 of 9), and topic diversity.

---

## 9. Open Concerns Forwarded to SP1

### 9.1 Scoring ambiguities for SP1's scoring subagent to adjudicate

1. **"Preserve all distinct" convergences may not be reliably scorable** (`BL1_..._mobile-app_medium.md` §6 item 10; `BL1_..._food-truck_medium.md` §6 item 10; `BL1_..._youth-mentorship_medium.md` §6 item 10). Multiple cells have 3–4 CGs flagged as "preserve-all-distinct" where merging is defensible-but-over-aggressive. SP1 scoring should be tolerant of different-choice variants: a variant that merges a preserve-all-distinct group should score as "over-aggressive compaction" but not "incorrect." **Recommend explicit scoring-tolerance annotation per preserve-distinct CG.**

2. **Systems Thinker archetype preservation — subjective judgment** (`BL1_..._career-change_low.md` §6 item 3). "Preserves archetype anchor" is defined by merged-question text containing the literal phrase. This is testable but may be too literal — conceptually-equivalent paraphrase without exact vocabulary could be equivalent. **Recommend tiered scoring: exact phrase 1.0; paraphrase capturing archetype concept 0.5; archetype concept lost 0.0.**

3. **AI register preservation vs. topical preservation** — BL1 baselines assume SP1 can score "register preservation" in addition to "topical coverage." If SP1 scoring is purely topical, the voice-preservation concerns surface as unscored risk for all distinctive-register personas (AI, ST, Empath, Accountant, Lawyer). **Recommend SP1 scoring rubric explicitly distinguish "register-preserving" from "topical-only" representation.**

4. **M ± 2 question tolerance.** Multiple cells note that the target question count is a point estimate within a ±2–3 question range (`BL1_..._career-change_low.md` §6 item 2). SP1 should score output count against the range, not the point target, with severity proportional to distance from the nearest range edge.

5. **Cluster-boundary ambiguity for cluster alignment scoring** (`BL1_..._habit-tracker_low.md` §6 item 4; `BL1_..._tool-library_low.md` §6 item 1). Several clusters can reasonably split or merge different ways. Scoring should score cluster-set quality (thematic coherence per cluster, coverage of input territory) rather than exact-match to baseline's 9 or 12 clusters.

6. **Append cross-stream overlap with Synthesize is not duplication** — it's the Append register providing alternative framing. SP1 variants that drop Append questions because they "duplicate" Synthesize content fail SQ4 (`BL1_..._habit-tracker_high.md` §3 observations; `BL1_..._wearable-device_high.md` §3.4).

### 9.2 Cross-cell calibration concerns for SP1's cross-variant synthesis

1. **Convergence-normalized compaction.** Raw compaction ratios are topic-dependent; SP1 scoring should use convergence-normalized compaction when comparing cross-cell variance.
2. **Topic-typed dimension-balance bands.** Fixed targets mis-score 30 of 30 cells; topic-class-adjusted bands (per §4.3) are required.
3. **D1-bound vs. synthesis-bound failures.** Storyteller Cluster D drops, Visionary paradigm drops, Connector Cluster-C drops at low/medium are all D1-bound. SP1 scoring must attribute these correctly (not penalize synthesis).
4. **GT1 watchlist cells** (tool-library/medium, food-truck/high, property-management/high, youth-mentorship/high, school-consolidation/medium) should be scored with dual diagnostic: if score is anomalously low, check GT1 composition before blaming synthesis. BL1 found no content anomalies on watchlist cells, but composition sensitivity is real.

### 9.3 Methodological concerns that could affect Phase 3/4

1. **Append presentation (interleaving vs. segregation)** — PC1 should test both presentations on at least 2 high-effort cells (youth-mentorship/high, school-consolidation/high) given Append stream size approaches or exceeds Synthesize stream at 51–53%.
2. **D1 quota refinements** — BL1 surfaces three specific D1 refinement candidates (Storyteller Cluster-D override at low; Visionary paradigm-distinctiveness tiebreak at medium; Connector non-import mode priority at low/medium). These should be raised to the Phase 2B D1 steering group for consideration. They are not blockers for SP1 but may improve Append quality if implemented.
3. **AI orphan representation floor** — BL1 establishes a "≥1 AI orphan question in every 30 outputs" universal floor and "3+ AI register-preserving questions at high effort" floor. SP1 should incorporate this as a hard scoring constraint (any output with 0 AI-register questions = automatic fail for SQ3).

---

## 10. Handoff to SP1

**Core handoff package:**

1. **Quantitative benchmarks (§§1–3):** cluster count, convergence density, compaction ratio by effort level — all three with mean/median/range.
2. **Dimension-balance bands (§4):** topic-typed and effort-adjusted.
3. **Persona representation minimums (§5):** per-persona floor and target percentages, cross-cell aggregated.
4. **C1 recommendation (§6):** flat pooling with persona tags preserved at medium/high (10/10 unanimous); flat-with-tags OR per-persona-with-tags acceptable at low (5/5 split). Recommended default: flat-with-tags universally + low-effort voice-preservation instruction.
5. **Cross-effort caveats (§6a):** flag topics with structural shifts between effort levels (tool-library, property-management, youth-mentorship, school-consolidation, mobile-app) for variant-iteration caution.
6. **Append mechanics flags (§7):** Storyteller Cluster-D drops, Visionary paradigm drops, Connector Cluster-C drops, Politician interleaving-vs-segregation — all are D1-bound and should not be penalized in SP1 scoring.
7. **Initial subset confirmation (§8):** tool-library, mobile-app, school-consolidation.
8. **Scoring-tolerance annotations (§9):** preserve-all-distinct CGs, archetype-preservation tiering, register-vs-topical scoring distinction, M ± 2–3 tolerance, D1-bound vs. synthesis-bound attribution.

**BL1 closes with 30 canonical per-cell baselines, 120 artifacts, and this synthesis as SP1's scoring reference package.**

---

**Status:** Canonical cross-topic synthesis. Ready for SP1 consumption. No blocking open items.

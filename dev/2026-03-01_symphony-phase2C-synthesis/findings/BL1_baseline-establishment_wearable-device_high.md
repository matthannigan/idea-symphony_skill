# BL1 — wearable-device — high — Baseline Cell Summary

**Date:** 2026-04-18
**Author:** BL1 subagent (wearable-device/high cell)
**Status:** Canonical baseline for SP1 synthesis-prompt testing
**Scope:** Phase 2 baseline establishment for the Phase 2C synthesis investigation. This cell covers wearable-device at high effort. Deliverables B1 (clusters), B2 (convergence), B3 (target), B4 (append target) saved to `baselines/`; this findings file summarizes the cell.

---

## 1. Cell Characterization

**Top-line numbers:**
- **N (Synthesize-group input):** 140 questions across 11 personas
- **Total input (Synthesize + Append):** 179 questions across 16 personas
- **C (natural cluster count):** 11
- **Q (convergence groups):** 18 total — 14 mergeable cross-persona + 4 preserve-distinct
- **Convergence density:** ~68% (95 of 140 Synthesize questions in convergence groups)
- **M (expected synthesis output):** 44 (range 36–58)
- **Compaction ratio:** 140 / 44 ≈ 3.18x (range 2.4x–3.9x)
- **Append universe (A_available):** 39 questions across 5 personas
- **A_quota:** 39 (= A_available at high effort per D1)
- **Total Phase 2C output target:** 83 questions (44 Synthesize + 39 Append)
- **Orphan rate (B1):** ~13% (18 of 140) — lowest observed across BL1 cells so far

**Synthesize persona composition (11):** Analyst (15), Appreciative Inquirer (12), Audience Advocate (13), Devil's Advocate (14), Empath (12), First Principles Thinker (10), Futurist (12), Lawyer (10), Questioner (20), Systems Thinker (12), Technical Expert (10).

**Append persona composition (5):** Provocateur (8), Storyteller (8), Visionary (8), Constraint Flipper (8), Connector (7).

**Cell signature:** Wearable-device/high is the **densest-converging** BL1 cell observed so far (~68% vs food-truck/high 64%, tool-library/high 62%, habit-tracker/high 59%). This reflects the topic's tight coupling of privacy architecture, ML compute, sensor engineering, power budget, alert design, wellness/clinical regulatory strategy, and emotional/psychological overlay. Multiple personas converge on each architectural decision because the technical-regulatory-emotional integration is central to the product. The cell has two 7-way mergers (CG-9 ML architecture, CG-10 model updates) in a single cluster and one 8-way merger (CG-5 wellness/clinical boundary) — the heaviest cross-persona convergence in any BL1 cell.

**Cluster structure:**

| Cluster | Theme | Count | Primary Dimension |
|---|---|---|---|
| 1 | Privacy Architecture & Data Governance | 24 | Analytical + human-centered |
| 2 | Wellness-to-Clinical Pathway & Regulatory Strategy | 22 | Strategic |
| 3 | ML Model Architecture, NPU & Compute-Power Tradeoffs | 20 | Analytical |
| 4 | Alert Design, Thresholds & False Positive Management | 15 | Human-centered |
| 5 | User Experience, Hyper-Vigilance & Emotional Impact | 14 | Human-centered |
| 6 | Sensor Fusion & Signal Quality | 9 | Analytical |
| 7 | Power Budget & Battery Life | 10 | Analytical |
| 8 | Personalization, Validation & Clinical Evidence | 7 | Analytical |
| 9 | Legal Liability, Duty to Warn & Compliance Exposure | 5 | Analytical + strategic |
| 10 | Business, Team, Runway & Go-to-Market | 9 | Strategic |
| 11 | Accessibility, Equity & User Diversity | 5 | Human-centered |

Privacy (Cluster 1) is the single largest cluster at 24 questions — reflecting the on-device commitment as central design constraint. Regulatory pathway (Cluster 2) at 22 questions is comparable in size, reflecting the wellness-to-clinical strategic optionality as the other dominant concern. ML architecture (Cluster 3) at 20 questions reflects the technical depth of the on-device intelligence. These three clusters (66 of 140 = 47%) dominate the Synthesize universe.

---

## 2. Persona Representation Challenges

The cell has three categories of persona-representation risk:

### 2.1 High-convergence personas at risk of voice-stripping

**Analyst** (12 of 15 in convergence), **Futurist** (11 of 12 in convergence), **FPT** (9 of 10 in convergence), **DA** (10 of 14 in convergence), **Questioner** (13 of 20 in convergence) all have heavy convergence-integration. Their voices survive *through* mergers, not around them. Critical risks:

- **Analyst:** merger text must preserve analytical-framework vocabulary ("decision framework," "systematic breakdown," "sensitivity analysis"); Q12 (BOM), Q13 (runway), Q15 (resource allocation) are strongest standalone signals in Cluster 10.
- **Futurist:** merger text must preserve trend-grounding ("documented," "accelerating," "trajectory," "growing measurably"); Q3 (category evolution) is the one standalone. If trend language is stripped, Futurist becomes indistinguishable from Analyst.
- **FPT:** merger text must preserve reductive-analytical framing ("what IS this fundamentally," "why assume," "minimum viable"); CG-18 preserve-distinct (Cluster 8) carries the core voice, along with Q1 standalone (why a wearable at all).
- **Questioner:** merger text must preserve meta-question framing; voice is most robust due to volume (20) and ubiquity. Risk is within-persona redundancy, not voice loss.

### 2.2 Specialty-vocabulary personas at risk of generic-reframe

**Lawyer** (specific statutes: CMIA, My Health My Data Act, GDPR, CCPA, BAA structure, QMS, design controls, CAPA, design history files, duty to warn, false-negative liability), **TE** (engineering specificity: INT8 acceleration, sparse compute, zero-point quantization, asymmetric architectures, sub-5mW, <5 sec latency, watchdog, CRC, 128KB SRAM, motion artifacts, PPG perfusion), and **Systems Thinker** (named archetypes: power-consumption detection spiral, alert fatigue calibration loop, health anxiety reinforcement cycle, behavioral adaptation shadow, privacy-performance delayed feedback, regulatory strategy path dependency, model update sync-asynchrony, battery-degraded capability drift, clinical validation self-selection bias, alert framing therapeutic expectation loop, sensor fusion interdependence fragility, companion app bidirectional influence loop) all have domain-specific vocabulary that synthesis tends to strip into generic framings.

Wearable-device/high is the first cell where TE is genuinely strongly triggered (prior cells had TE at weak triggers or absent). If SP1 cannot preserve TE voice here, it will fail on every technical topic. Same concern for Lawyer on the regulatory side — prior cells had Lawyer at partial triggers; here it is fully active.

### 2.3 Orthogonal-framing personas at risk of wholesale drop

**Appreciative Inquirer** (8 of 12 unique; strengths-based framing orthogonal to deficit-framed convergence) and **Empath** (5 of 12 unique + 4 in preserve-distinct groups; felt-experience language at risk of being reduced to neutral design questions). These personas have the *lowest* convergence-integration and the *highest* dependence on standalone survival.

AI's cluster distribution: Cluster 5 (3 questions Q1/Q3/Q4), Cluster 4 (Q5), Cluster 7 (Q9), Cluster 10 (Q7/Q11/Q12). Cluster 10 is otherwise deficit-heavy (runway risk, commodity pressure, BOM optimization) — without AI voice preservation there, no strengths-based framing remains in the business cluster. Min representation: 4 questions total with at least one per cluster AI is present in.

Empath's cluster distribution: Cluster 4 (Q3, Q9), Cluster 5 (Q1, Q2, Q5, Q6, Q8, Q11), Cluster 2 (Q12), Cluster 11 (Q7, Q10). Cluster 5 is Empath-heavy (6 of 14 questions); voice preservation there is load-bearing. Min representation: 4 questions with at least one from Cluster 4 (alert emotional whiplash), Cluster 5 (hyper-vigilance), and Cluster 11 (targeting ethics).

### 2.4 Accessibility/equity voice at risk of cluster collapse

**AA Cluster 11** (accessibility/equity): 3 unique AA questions (Q4 training data distribution, Q5 disabilities, Q6 battery routines mismatch) + 2 Empath questions (Q7 who signs up, Q10 targeting ethics). This small cluster (5 questions → 3 output) could be collapsed into Cluster 5 (hyper-vigilance) by SP1 variants that don't distinguish structural-equity framings from emotional-experience framings. Losing Cluster 11 entirely = systemic SQ3 fail for the AA equity voice.

---

## 3. Append Mechanics

### 3.1 Round-robin is trivial at high effort

Per D1: at high effort, A_quota = A_available for all Tier 1 Perspective + Connector personas. Constraint Flipper at "3-5" D1 range is exceeded here due to constraint richness (8 distinct constraint domains activate all 8 CF questions). Round-robin collapses to "include all questions in cluster order."

### 3.2 Append persona cluster structures

| Persona | Internal Clusters | Questions |
|---|---|---|
| Provocateur | C1 Measurement inversion (2), C2 Privacy inversion (3), C3 Business/regulatory inversion (3) | 8 |
| Storyteller | C1 Alert-moment (2), C2 Silent-monitoring (3), C3 Identity/relationship (3) | 8 |
| Visionary | C1 Relationship-with-body (3), C2 Device-form (2), C3 Lifecycle-ecosystem (3) | 8 |
| Constraint Flipper | C1 Technical-as-advantage (3), C2 Compliance-as-advantage (3), C3 Operational-as-advantage (2) | 8 |
| Connector | C1 Cross-domain import (1), C2 Structural isomorphism (3), C3 Recombinant innovation (3) | 7 |

Total: 39 Append questions.

### 3.3 Connector replaces Analogist

Per GT1 Rev 3 and persona-selection-guide_Phase2B, wearable-device triggers the Analogist→Connector swap. Inter-domain reconciliation triggers: biological nervous system parallel (Connector Q1), automotive safety-critical systems (Q3), privacy-accuracy constraint symbiosis (Q4), regulatory tailwinds from fintech/aerospace (Q5), companion app as compute partner (Q6). Connector's three sub-modes (import, isomorphism, recombinant) all activate — consistent with R7's finding that Connector outperforms Analogist on inter-domain reconciliation topics.

Connector has 7 questions (not 8) — expected given persona-selection-guide's "Volume 7-8 (mean 7.7)" for Connector. This is correct and should not trigger SP1 alarms.

### 3.4 Overlap with Synthesize content is extensive but not resolved by drops

Nearly every Append question overlaps thematically with a Synthesize cluster (noted in B4's Integration Notes). Per D1, these overlaps are preserved, not resolved by dropping. The *inversion/narrative/paradigm/recombinant framing* is the value add — synthesis cannot recover these framings from the convergence-merge content. SP1 variants that drop Append questions because they "duplicate" synthesis content are failing SQ4.

Specific overlaps worth noting:
- Connector Q4 (privacy-accuracy symbiosis) overlaps CG-1, CG-9, CG-16 simultaneously — the isomorphism framing "both push toward edge-compute efficiency" is Connector-distinctive.
- Visionary Q4 (dissolve device/body boundary) overlaps FPT Q1 (why a wearable) — both challenge the form-factor assumption but in different modes (aspirational vs reductive). Both should appear.
- Storyteller Q1 (Marcus 3 AM alert) overlaps CG-14 (alert comprehension) and Empath Q3 (emotional whiplash) — narrative specificity ("52-year-old with family history, gentle vibration") is the contribution.
- CF Q1 (battery as privacy advantage) overlaps CG-3 (privacy trust) and CG-16 (power budget) — the inversion operation "aggressive power optimization strengthens privacy" is the contribution.

---

## 4. C1 Recommendation

**C1 (per-persona vs flat pooling):** Use flat pooling.

Flat pooling produces:
- More clusters (11 vs ~7 for per-persona)
- Better separation of Cluster 3 (ML compute) from Cluster 6 (sensor fusion) — two engineering clusters at different architectural layers that per-persona view collapses into one TE/Analyst/Questioner "tech cluster"
- Better separation of Cluster 4 (alerts) from Cluster 5 (hyper-vigilance) — two human-centered clusters addressing different temporal dynamics (event-level vs continuous-wear)
- Better separation of Cluster 2 (regulatory pathway) from Cluster 9 (liability exposure) — two legal/strategic clusters at different timescales (proactive trajectory vs reactive exposure)
- Better separation of Cluster 5 (hyper-vigilance) from Cluster 11 (accessibility/equity) — two human-centered clusters at different abstraction levels (emotional experience vs structural inclusion)
- Better cross-persona convergence detection (Cluster 1 privacy is the clearest — 11 personas contribute, flat pooling makes convergence visible; per-persona view fragments into Questioner-privacy, Lawyer-compliance, Futurist-trajectory, Empath-felt-experience sub-clusters)

For SP1 scoring: synthesis prompt variants should be evaluated against the flat-pool cluster set (the 11 clusters above). Variants producing ~7 clusters that mirror per-persona structure should be scored as under-clustering.

One caveat: flat pooling may obscure persona representation. SQ3 scoring should cross-check per-persona view — if Cluster 5 contains only Empath framings and strips Systems Thinker archetypes or AI aspirational framings, persona representation is failing even if cluster theme is correct.

---

## 5. GT1 Watchlist Status

**NOT on the GT1 Medium-confidence watchlist (per TDA1 §5.1).**

GT1 Rev 3 prescribes:
- **Tier 3 Synthesize:** Lawyer (regulatory/compliance exposure trigger) + Technical Expert (genuine technical architecture trigger)
- **Tier 1 Perspective swap:** Connector (inter-domain reconciliation trigger) replaces Analogist

All selections are high-confidence. No GT1-level risk for this cell. If SP1 later produces anomalously poor scores, the cause is variant-level (not GT1-level) — no need to re-check GT1.

The cluster structure (11 clusters), convergence density (~68%), and target compaction (3.18x) are canonical for GT1 Rev 3 composition.

---

## 6. Open Concerns

### 6.1 Scoring-scale implications for SP1

Wearable-device/high is the densest-converging cell in BL1. This creates two scoring considerations for SP1:

1. **Convergence utilization:** variants that achieve good mergers on the heaviest groups (CG-5 8-way, CG-9 7-way, CG-10 7-way, CG-12 6-way, CG-13 5-way, CG-16 6-way, CG-3 5-way) demonstrate core synthesis competence. Variants that produce only 3-4 mergers of 2-3-way groups are under-merging. A natural scoring threshold: require at least 10 of the 14 mergeable groups to be merged to pass SQ2 for this cell.

2. **Preserve-distinct discipline:** variants that merge any of CG-8, CG-14, CG-15, CG-18 over-merge. This is a catastrophic failure mode because these groups carry the stakeholder-interpretation / alert-agency / hyper-vigilance-archetypes / first-principles-validation voice. At least one of these groups being over-merged = SQ1 fail.

### 6.2 Tier 3 voice-preservation is novel territory

Lawyer and TE are Tier 3 Synthesize personas whose voice-preservation has not been rigorously tested in prior BL1 cells (earlier cells had these at weak triggers or absent). Wearable-device/high is the first high-signal test of:
- Lawyer statutory-specificity preservation (CMIA, MHMDA, GDPR, CCPA, BAA, QMS, CAPA, duty to warn, false-negative liability)
- TE engineering-specificity preservation (INT8/sparse/quantization, sub-5mW, <5 sec latency, watchdog/CRC, 128KB SRAM)

If SP1 fails on Lawyer or TE voice here, it will likely fail on every future regulated-tech topic. This cell is a good early-warning indicator.

### 6.3 Systems Thinker archetype proliferation

Systems Thinker has 12 named archetypes referenced across 12 questions — the richest ST activation observed in BL1 so far. Preserve-distinct CG-15 (health anxiety reinforcement cycle + behavioral adaptation shadow system) and CG-18 (clinical validation self-selection bias archetype) carry the core voice; Cluster 3 Q4 (power-consumption detection spiral), Cluster 4 Q1 (alert fatigue calibration loop), Cluster 4 Q10 (alert framing therapeutic expectation loop), Cluster 6 Q11 (sensor fusion interdependence fragility), Cluster 7 Q8 (battery-degraded capability drift) carry additional archetypal framings through cross-persona mergers. If any of these archetypes is stripped during merger, ST voice degrades. Minimum representation: 5 ST questions in output with at least 3 retaining named-archetype vocabulary.

### 6.4 Dimension balance drift from deficit-framing dominance

The cell's dominant deficit-framing (privacy-as-risk, liability-exposure, alert-fatigue, hyper-vigilance, runway-reality, commodity-pressure, compute-accuracy-tradeoff) creates pressure toward Analytical-dominated output. AI's strengths-based framings and FPT's blue-sky reductive framings are the only significant counterweights. If SP1 variants over-absorb AI and FPT into deficit-framed mergers, the output dimension balance drifts to 40%+ Analytical / 15% Human-centered / <5% Creative — a failure pattern to watch for in SP1 scoring.

Target dimension balance (Synthesize 44 questions): ~32% Analytical / 27% Human-centered / 21% Strategic / 11% Tactical / 9% Creative. With Append (39 questions): total shifts to ~25% Analytical / 19% Human-centered / 13% Strategic / 7% Tactical / 35% Creative — the Append-dominated Creative dimension is critical for the full output balance.

### 6.5 Handoff to SP1

Canonical baseline files for wearable-device/high:
- `baselines/wearable-device_high_clusters.md` (B1: 11 clusters with flat-pool vs per-persona C1 analysis)
- `baselines/wearable-device_high_convergence.md` (B2: 18 convergence groups; 14 mergeable + 4 preserve-distinct; density 68%)
- `baselines/wearable-device_high_target.md` (B3: M=44 target, 3.18x compaction, per-cluster breakdown, persona representation requirements)
- `baselines/wearable-device_high_append-target.md` (B4: 39 Append questions via round-robin, all 5 Append personas, Connector swap verified)

SP1 scoring for this cell should treat:
- **CG-5 (8-way wellness/clinical)** as the single hardest merge-quality test in the cell
- **CG-9 + CG-10 (two 7-way mergers in Cluster 3)** as the multi-merger-preservation test
- **CG-16 (6-way power budget)** as the reductive-plus-engineering voice test (FPT + TE)
- **CG-15 (7 preserve-distinct hyper-vigilance framings)** as the preserve-distinct discipline test
- **Cluster 11 (accessibility/equity)** as the small-cluster-survival test
- **Lawyer + TE voice preservation** as the specialty-vocabulary test
- **AI + Empath representation** as the orthogonal-framing survival test

---

**Baseline status:** Canonical for GT1 Rev 3. Handoff to SP1 synthesis-prompt testing ready.

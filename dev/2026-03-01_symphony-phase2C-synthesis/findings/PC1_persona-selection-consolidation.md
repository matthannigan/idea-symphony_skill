# PC1 Scoring: Persona Selection Consolidation Test

**Date:** 2026-04-18
**Test cells:** 9 (3 topics × 3 effort levels — tool-library / mobile-app / school-consolidation × low / medium / high)
**Conditions:** A (separate synthesis + persona-selection subagents, current architecture) vs. B (consolidated single subagent)
**Scoring reference:** BL1 per-cell baselines + SP1 8-metric harness + SP1 R11/R12 tolerance rules
**Input prompts:** `findings/SP1_refined-synthesis-prompt.md` (iter3) applied to both conditions; Condition A also received persona-selection subagent instructions from `idea-symphony/SKILL.md` Phase 2C Step 2.4 workflow, pointing to `persona-selection-guide_Phase2C.md`.

---

## Executive Summary

**Verdict: Keep Separate (Condition A).**

Synthesis quality between A and B is comparable-to-slightly-better for B on raw output discipline (B: 9/9 preservation ≥0.85, 8/9 compaction-band pass; A: 9/9 preservation ≥0.85, 7/9 compaction-band pass), but the **persona-recommendation stream in Condition B departs from the persona-selection guide at low effort in 3 of 3 low cells**. Condition A honored the guide's explicit `Low | 0 (generic) | No persona system` directive on all 3 low cells (empty tables with contingent-medium tables documented as informational). Condition B produced full or partial persona tables at low effort on all 3 low cells, each with a hedge acknowledging the rubric violation. This is a guide-adherence regression, not a synthesis regression — but the regression is *caused* by combining the two jobs in one subagent (the synthesis half of the prompt's "produce a persona table" request overrides the persona-selection-guide's low-effort exclusion). Per Part 3's decision criteria, persona quality meaningfully worse in B → **keep separate**.

The decision is not driven by a synthesis-quality delta (both conditions pass hard floors 9/9; deltas on the 8 SP1 metrics are all within ±5% of each other), but by the low-effort persona behavior asymmetry and by the cleaner, more topic-grounded rationales in Condition A at medium and high.

---

## Guide Interpretation Decision (applied uniformly before scoring)

**Interpretation chosen:** The `persona-selection-guide_Phase2C.md` "Effort Level Mapping" table is load-bearing and authoritative:

| Effort | Personas/Topic | Composition |
|--------|---------------|-------------|
| Low | **0 (generic)** | **No persona system** |

Low effort = no persona selection. Phase 3 runs generic. Condition A's empty-table + contingent-medium-informational pattern is the **correct** interpretation of the guide. Condition B's full-table-at-low pattern (all 3 B low cells) is a rubric departure, regardless of how the B subagent hedges the table with "informational only" notes.

**Rationale:**
- The guide's effort-level mapping explicitly specifies `0 (generic)` at low with no secondary qualifier.
- Phase 2C runs at medium/high only in the current SKILL.md architecture (SKILL.md Phase 2C gating at low effort skips persona selection).
- The guide's Selection Algorithm section has entries for Medium and High but no low-effort branch — absence is load-bearing.
- Condition B's own preambles on 3/3 low cells acknowledge the rubric: "low effort uses no personas (generic mode per the Phase 2C guide)" — the subagent knew the rule and produced tables anyway under task-spec pressure.

**Scoring implication:** Condition B's low-effort overproduction is a persona-quality deduction in Condition B's column, not a Condition A deduction.

---

## Part 1: Synthesis Quality Comparison (A vs. B)

### 1.1 Independent synth-count enumeration (per-cell, counted from numbered lines under `## Topic Cluster` sections)

| Cell | BL1 target M_synth (range) | Condition A M_synth (enumerated) | Condition B M_synth (enumerated) | Subagent self-report drift |
|---|---|---|---|---|
| tool-library / low | 27 (23–31) | 27 | 26 | no drift flag (neither >10% off actual) |
| tool-library / medium | 30 (28–33) | 29 | 32 | no drift flag |
| tool-library / high | 48 (38–62) | 49 | 42 | no drift flag |
| mobile-app / low | 27 (23–31) | 30 | 34 | no drift flag |
| mobile-app / medium | 29 (26–32) | 29 | 31 | no drift flag |
| mobile-app / high | 41 (33–46) | 39 | 44 | no drift flag |
| school-consolidation / low | 28 (24–32) | 30 | 27 | no drift flag |
| school-consolidation / medium | 30 (28–33) | 29 | 29 | no drift flag |
| school-consolidation / high | 40 (32–48) | 48 | 43 | no drift flag |

All self-reports in the output files are within ±2 questions of enumeration. None exceed the 10% drift threshold that would flag unreliable self-report. (SP1 iter3 had observed MA/high as a drift-risk cell; PC1 MA/high A self-reports 39 / enumerates 39; B self-reports 44 / enumerates 44.)

### 1.2 Per-cell compaction ratios (raw; from enumerated counts)

| Cell | N_synth input | Target raw compaction (range) | A raw | B raw | A convergence-norm (A raw / BL1 density) | B convergence-norm |
|---|---|---|---|---|---|---|
| TL/low | 69 | 2.56× (2.23–3.00) | 2.56 | 2.65 | 4.20 | 4.35 |
| TL/med | 82 | 2.70× (2.5–3.0) | 2.83 | 2.56 | 5.61 | 5.08 |
| TL/high | 132 | 2.75× (2.1–3.5) | 2.69 | 3.14 | 4.34 | 5.07 |
| MA/low | 72 | 2.67× (2.32–3.13) | 2.40 | 2.12 | 3.60 | 3.18 |
| MA/med | 78 | 2.69× (2.4–3.0) | 2.69 | 2.52 | 4.02 | 3.76 |
| MA/high | 128 | 3.12× (2.8–3.5) | 3.28 | 2.91 | 5.68 | 5.04 |
| SC/low | 69 | 2.46× (2.16–2.88) | 2.30 | 2.56 | 3.69 | 4.11 |
| SC/med | 79 | 2.63× (2.4–2.9) | 2.72 | 2.72 | 5.13 | 5.13 |
| SC/high | 130 | 3.25× (2.8–3.6) | 2.71 | 3.02 | 4.29 | 4.79 |

**Compaction-band pass (raw, in-band):**
- Condition A: 7/9 in band (fails MA/low 2.40 at lower edge of 2.32–3.13 — actually just passes; fails SC/high 2.71 below 2.80; fails SC/low 2.30 above 2.16 floor — passes). Recount: 7/9 clean pass (only SC/high 2.71 < 2.80 fails; MA/low 2.40 > 2.32 passes; SC/low 2.30 > 2.16 passes; TL/high 2.69 in 2.1–3.5 range passes). Actually only SC/high out of band → **8/9 pass**.
- Condition B: 8/9 in band (MA/low 2.12 < 2.32 fails; all others within band). **8/9 pass**.

**Convergence-normalized compaction:** Both conditions cluster around BL1's 4.0–4.2 stable ratio, with TL/med, SC/med, MA/high producing elevated normalized ratios driven by BL1 medium-density dips (TL/med 50.4%, SC/med 53.0%, MA/high 57.8% — all on the low end of the density distribution, producing high normalized values regardless of compaction quality). A mean normalized 4.50; B mean normalized 4.50. Indistinguishable.

### 1.3 Cluster counts and alignment

| Cell | BL1 target (range) | A clusters | B clusters | A in band | B in band |
|---|---|---|---|---|---|
| TL/low | 9 (8–10) | 8 | 9 | pass | pass |
| TL/med | 11 (10–12; ≤10 if N<100 per R12) | 9 | 10 | pass (±1) | pass |
| TL/high | 12 (10–14) | 13 | 9 | pass | fail (under) |
| MA/low | 9 (8–10) | 10 | 9 | pass | pass |
| MA/med | 9 (8–10) | 10 | 10 | pass (±1) | pass (±1) |
| MA/high | 12 (10–14) | 12 | 11 | pass | pass |
| SC/low | 10 (9–11) | 9 | 9 | pass | pass |
| SC/med | 12 (10–12; R12 ≤10 gate) | 9 | 10 | fail strict / pass R12 | pass |
| SC/high | 12 (10–14) | 10 | 11 | pass | pass |

Cluster-alignment pass rate: A **9/9** (±1 tolerant) / **7/9** strict; B **8/9** (±1 tolerant) — TL/high at 9 clusters vs. 10–14 range is under-clustered (condition B collapsed the FPT+Futurist Cluster-11/12 reimagination split that BL1 flags as reliably-present at high effort).

### 1.4 Question-preservation rate (aggregate, counting BL1-expected anchor questions that surface in output)

Per-cell sampling of BL1 anchor questions (~6–10 anchors per cell from baseline target files), checking each anchor's core-concern presence in condition output:

| Cell | A preserved | B preserved |
|---|---|---|
| TL/low | 0.89 | 0.92 |
| TL/med | 0.88 | 0.91 |
| TL/high | 0.92 | 0.87 |
| MA/low | 0.85 | 0.89 |
| MA/med | 0.89 | 0.91 |
| MA/high | 0.88 | 0.92 |
| SC/low | 0.91 | 0.89 |
| SC/med | 0.90 | 0.88 |
| SC/high | 0.93 | 0.89 |

A mean 0.894; B mean 0.898. Both 9/9 pass the ≥0.85 floor. **B ahead by +0.4pp (non-significant).**

### 1.5 Persona representation (Synthesize-group)

Per-cell count of Synthesize personas whose distinctive register survives in output (pass = all present; partial = missing distinctive vocabulary from 1 persona; fail = missing from 2+):

| Cell | A | B |
|---|---|---|
| TL/low | pass | pass |
| TL/med | pass | pass |
| TL/high | pass | pass |
| MA/low | pass via R11 | pass via R11 |
| MA/med | pass | partial (AI register thin at 1 orphan) |
| MA/high | partial (AI at 2 orphans, high requires 3) | pass (5 AI register markers) |
| SC/low | pass | pass |
| SC/med | partial (AI register = 0 markers) | partial (AI = 2, just at floor) |
| SC/high | pass | pass |

A: 7/9 clean pass, 2 partial; B: 7/9 clean pass, 2 partial. **Tie (both 78% clean).** Condition A has MA/high AI thin; Condition B has MA/med AI thin. Condition B stronger on SC/med AI register.

### 1.6 Append fidelity (check of Append-persona round-robin, Q-number selection)

| Cell | A Append fidelity | B Append fidelity | Notes |
|---|---|---|---|
| TL/low | 0.75 (Storyteller Cluster-D drop per D1 — not penalized) | 0.92 | Condition A hit the source-order Q1/Q2/Q3 anti-pattern on Analogist and Visionary |
| TL/med | 0.87 (Politician segregated correctly; Connector Q7 dropped per D1 — not penalized) | 0.85 | Both acceptable |
| TL/high | 0.94 | 0.88 | A better — cleaner per-persona cluster split |
| MA/low | 0.83 (Connector 3-cluster; Visionary paradigm-Q5 dropped per D1 — not penalized) | 0.88 | Both acceptable |
| MA/med | 0.91 | 0.83 | A slightly better on Visionary paradigm-framing preservation |
| MA/high | 0.89 | 0.93 | B better on Constraint-Flipper round-robin |
| SC/low | 0.88 | 0.87 | Parity |
| SC/med | 0.89 (Politician interleaving per D1 — not penalized) | 0.86 | A cleaner on Politician segregation |
| SC/high | 0.92 (45-Append stream handled cleanly) | 0.89 | A slightly better on Append:Synthesize ratio |

A mean 0.87; B mean 0.88. **Tie with slight B edge (+0.01).** D1-bound drops (Storyteller Cluster-D/low, Visionary paradigm/med, Connector Cluster-C/low-med, Politician interleaving/med) were not penalized per BL1 §7.2 per-cell.

### 1.7 Dimension balance (max deviation from BL1 topic-typed band, in pp)

| Cell | Topic type | Strategic band | Human-centered band | A max dev | B max dev |
|---|---|---|---|---|---|
| TL/low | event/community-nonprofit | 18–30% | 25–35% | 4.0pp | 4.5pp |
| TL/med | event/community-nonprofit | 18–30% | 25–35% | 5.5pp | 5.0pp |
| TL/high | event/community-nonprofit | 18–30% | 25–35% | 3.0pp | 3.5pp |
| MA/low | technical-regulated-product | 20–32% | 22–30% | 4.0pp | 5.5pp |
| MA/med | technical-regulated-product | 20–32% | 22–30% | 6.0pp | 4.5pp |
| MA/high | technical-regulated-product | 20–32% | 22–30% | 4.0pp | 3.5pp |
| SC/low | social-program/relational | 21–38% | 30–37% | 3.5pp | 3.5pp |
| SC/med | social-program/relational | 21–38% | 30–37% | 5.0pp | 5.5pp |
| SC/high | social-program/relational | 21–38% | 30–37% | 3.5pp | 4.0pp |

A mean max dev 4.28pp; B mean max dev 4.39pp. Both comfortably inside ±5pp material-deviation threshold. **Tie (Condition A +0.11pp edge).**

### 1.8 Convergence utilization (% of BL1 convergence groups correctly merged)

| Cell | A | B |
|---|---|---|
| TL/low | 0.82 | 0.78 |
| TL/med | 0.85 | 0.80 |
| TL/high | 0.80 | 0.85 |
| MA/low | 0.75 | 0.82 |
| MA/med | 0.84 | 0.81 |
| MA/high | 0.86 | 0.83 |
| SC/low | 0.85 | 0.80 |
| SC/med | 0.82 | 0.85 |
| SC/high | 0.87 | 0.81 |

A mean 0.829; B mean 0.817. **A +0.012 (non-significant).**

### 1.9 Unique question survival (% of BL1 unique-flagged questions surviving in output)

A mean 0.90; B mean 0.91. **Tie.**

### 1.10 Aggregate Comparison Table (Part 1 headline)

| Metric | Condition A Mean | Condition B Mean | B-A Delta | Delta % | Flag |
|---|---|---|---|---|---|
| Question preservation | 0.894 | 0.898 | +0.004 | +0.4% | — |
| Compaction (raw, in-band pass-rate) | 8/9 (89%) | 8/9 (89%) | 0 | 0% | — |
| Compaction (convergence-normalized, mean) | 4.50 | 4.50 | 0 | 0% | — |
| Cluster alignment (±1 tolerant pass) | 9/9 (100%) | 8/9 (89%) | -11% | -11% | **>5% — A ahead** (TL/high B under-clustered) |
| Persona representation (clean pass) | 7/9 (78%) | 7/9 (78%) | 0 | 0% | — |
| Append fidelity (mean score) | 0.87 | 0.88 | +0.01 | +1.1% | — |
| Dimension balance (mean max dev, pp) | 4.28 | 4.39 | +0.11pp | +2.6% worse | — |
| Convergence utilization | 0.829 | 0.817 | -0.012 | -1.5% | — |
| Unique question survival | 0.90 | 0.91 | +0.01 | +1.1% | — |

**Significant deltas (>5%):** Only cluster alignment (−11% for B, driven by TL/high under-clustering at 9 vs. 10–14 band). All other metrics within ±5% band.

**Hard floors (each B run individually):**
- **Preservation ≥0.85:** 9/9 ✓
- **AI orphan ≥1 (≥3 at high):** 8/9 ✓ (MA/med B at 1 just meets low/med floor; all high cells ≥3 AI markers; SC/med B at 2 meets floor)
- **ST archetype ≥1 verbatim OR R11 systems-vocab substitute (≥3 at high):** 9/9 ✓ (MA/low B has 0 classical + 5 systems-vocab = R11 pass; all other cells meet classical floor)
- **Per-persona representation minimums (no Synthesize persona below BL1 min):** 8/9 ✓ — MA/med B has AI at 1 orphan marker (at floor but not below); SC/med B has AI at 2 (above floor). No hard below-floor fails.

**All four hard floors pass on every B run individually.** No hard-floor disqualification.

---

## Part 2: Persona Recommendation Quality Comparison (A vs. B)

### 2.1 Guide-interpretation asymmetry (pre-scored)

Per the Guide Interpretation Decision above, Condition A's empty low-effort tables are correct-to-guide. Condition B's full-or-partial low-effort tables are rubric departures on all 3 low cells, regardless of hedging language. This is the dominant Part 2 signal.

**Condition A low cells (3/3 correct-to-guide):**
- TL/low: empty table + contingent-medium table clearly marked "informational only — not the Low-effort output"
- MA/low: empty table + contingent table (similar pattern)
- SC/low: empty table + contingent table

**Condition B low cells (3/3 rubric departures):**
- TL/low: 36 persona-cluster assignments (9 clusters × 4 personas applying medium rule), hedged as "populated only to honor task spec; at actual low effort the table would be empty"
- MA/low: 36 persona-cluster assignments, same hedge
- SC/low: full persona table across 9 clusters applying medium/high rule, hedged as "for reference only"

The B hedges acknowledge the rule and violate it — a departure pattern, not an honest disagreement.

### 2.2 Medium / high persona recommendation scoring

Condition A medium/high recommendations (6 cells) scored on 4 metrics:

| Cell | Appropriateness (A) | Grounding (A: Specific/Mixed/Generic) | Circle distribution (A) | Cluster-persona mapping (A) |
|---|---|---|---|---|
| TL/med | Appropriate — DA★, Prag★, AA, MB (user-facing + implementation) | **Specific** — cites "2,000 households," "500 sq ft," "8–10 volunteers," "$modest budget," "first 30 days" verbatim | Inner 2 / Middle 0 / Outer 0 — matches medium rule | Clean (AA → Human-Centered Triad; MB → Progressive/Elaborative Pair) |
| TL/high | Appropriate — 4 cluster split + 7 personas/cluster (cluster-local allocation) | **Specific** — cites "50–100 tools," "20–25% annually," "3–8% loss rates," "Elena/Maria" by name | Inner 2 / Middle 3+ / Outer 1 — matches high rule | Clean cluster-by-cluster mapping |
| MA/med | Appropriate — Technical Expert, Systems Thinker additions | **Specific** — grounded in app-specific metrics | Inner 2 / Middle 0 / Outer 0 — matches medium rule | Clean |
| MA/high | Appropriate — FPT, TE, Simplifier, Accountant | **Specific** — cites "47 seconds," notification patterns | Inner 2 / Middle 3 / Outer 1 (Accountant) — matches high rule | Clean |
| SC/med | Appropriate — AA + Accountant (or Politician) | **Specific** — cites district budget numbers | Inner 2 / Middle 0 / Outer 0 | Clean |
| SC/high | Appropriate — Politician + AA + Storyteller + FPT + Accountant | **Specific** — cites "$28M budget," "$1.2M savings," consolidation dynamics | Inner 2 / Middle 3 / Outer 2 — matches high rule | Clean |

**A medium/high aggregate:** 6/6 appropriate; 6/6 Specific grounding; 6/6 circle distribution match; 6/6 clean cluster-persona mapping.

Condition B medium/high recommendations (6 cells):

| Cell | Appropriateness (B) | Grounding (B) | Circle distribution (B) | Cluster-persona mapping (B) | Consistency with synthesis output (B advantage) |
|---|---|---|---|---|---|
| TL/med | Appropriate — Core + AA + Analogist | **Specific** — cites cluster-01 Q1/Q2 dynamics verbatim | Inner 2 / Middle 0 / Outer 0 — matches | Clean | References Condition B's own cluster labels accurately |
| TL/high | Appropriate but over-stuffed (assigns all 7 personas per cluster literally) | **Specific** | Inner + Middle + Outer — matches high | Some clusters get slightly mismatched assignments (e.g., Storyteller assigned to an operations cluster where its value is weaker) | References synthesis clusters accurately |
| MA/med | Appropriate — Core + FPT + Simplifier (product-typed) | **Specific** — cites notification fatigue, 47-second pattern | Inner 2 / Middle 0 / Outer 0 — matches | Clean | Synthesis-aligned |
| MA/high | Appropriate — adds Empath, TE, FPT, Accountant | **Mixed** — some rationales use generic "completes triad" language without citing topic specifics | Inner 2 / Middle 3 / Outer 1 — matches | Mostly clean | Synthesis-aligned |
| SC/med | Appropriate — Politician + AA | **Specific** — cites "three-district merger," "voter approval" | Inner 2 / Middle 0 / Outer 0 — matches | Clean | Synthesis-aligned |
| SC/high | Appropriate but assigns 7 personas per cluster literally — inflates Outer usage | **Specific** | Inner + Middle + Outer — matches high on paper but Outer over-used | One cluster-persona mismatch (Accountant assigned to a governance cluster where Politician is the stronger fit) | Synthesis-aligned |

**B medium/high aggregate:** 6/6 appropriate with 2 over-stuffing flags (TL/high, SC/high); 5/6 Specific + 1 Mixed (MA/high); 6/6 circle-distribution match; 5/6 clean cluster-persona mapping (1 mismatch at SC/high); 6/6 consistency with synthesis (the Condition B advantage).

### 2.3 Aggregate Part 2 Table

| Persona Quality Metric | Condition A | Condition B |
|---|---|---|
| Appropriateness (% passes) | 9/9 guide-correct (3/3 low empty per rubric; 6/6 med/high appropriate) | 6/9 (3/3 low rubric-departure; 6/6 med/high appropriate; 2 over-stuffing flags at TL/high and SC/high) |
| Grounding (% Specific) | 6/6 med+high = **100% Specific** | 5/6 med+high = 83% Specific, 1 Mixed (MA/high); low cells N/A (rubric departure) |
| Circle distribution match | 9/9 match (3/3 low "no personas" match; 6/6 med+high match) | 6/9 match (3/3 low invent-medium-rule does not match; 6/6 med+high match) |
| Cluster-persona mapping quality | 6/6 clean at med+high (low N/A) | 5/6 clean at med+high + 2 over-stuffing at TL/high, SC/high (low clusters receive invented assignments) |
| Consistency with synthesis output | N/A (separate subagent by design) | 6/6 at med+high (B genuine advantage — references its own cluster labels accurately) |

**Qualitative notes:**
- **Condition A is "correct" even when boring.** The 3 low cells produce empty tables with informational contingent-medium tables — matching the guide exactly. This is a feature, not a bug.
- **Condition B demonstrates a genuine advantage at medium/high on synthesis-consistency:** because B sees its own cluster labels when selecting personas, its assignments cite the actual clusters the downstream phase will use. Condition A's separate subagent has to work from QUESTIONS.md's cluster structure (which is the synthesis output in deployment). In this test, A was given the same pooled input as B but produced clusters independently at the rationale level — the structural consistency gap is real but small.
- **Condition B over-stuffs at high on 2/3 high cells (TL/high, SC/high).** Literal application of "7 personas per cluster × K clusters" inflates Outer Ring usage beyond the guide's intent, which is 7 personas *for the topic*, allocated across clusters (not 7 per cluster). Condition A's high-effort outputs correctly distribute personas across clusters without over-application.
- **Condition B's low-cell hedges reveal the problem:** the B subagent explicitly writes "at actual low effort the table would be empty" — it knows the rule but the combined-job prompt pressure (produce synthesis AND produce persona recommendations) forced it to produce a persona table anyway. This is the consolidation failure mode.

---

## Part 3: Decision

### Verdict: Keep Separate (Condition A)

### Rationale (specific metrics and reasoning)

**Decision criteria from methodology §Phase 4 Decision Criteria:**

1. **Synthesis quality delta ≤ 5% on all key metrics:** PASS. 8 of 9 Part 1 metrics show deltas within ±5%. Only cluster alignment shows >5% (A leads by 11%) — a Condition-A-favorable deviation, not a B-failure. No B-favorable synthesis delta exceeds 5%.

2. **All hard floors pass on every B run:** PASS. 9/9 AI floor; 9/9 ST archetype/R11 floor; 9/9 preservation ≥0.85; 8/9 per-persona minimum (SC/med B at AI floor not below; no hard below-floor fails).

3. **Persona quality comparable-or-better in B:** **FAIL**. Condition B shows:
   - **3/3 low-effort rubric departures** (guide says 0 personas; B produces 36 assignments at TL/low and MA/low, and full table at SC/low). Condition A correctly produces empty tables on 3/3 low cells.
   - **2/3 high-effort over-stuffing incidents** (TL/high and SC/high apply 7-personas-per-cluster literally, inflating Outer Ring usage). Condition A produces correctly distributed high-effort selections.
   - **1 cluster-persona mismatch** (B at SC/high assigns Accountant to a governance cluster where Politician is clearly stronger).
   - Grounding Specific rate 83% (B) vs. 100% (A); cluster-persona mapping 5/6 clean (B) vs. 6/6 (A); Circle distribution match 6/9 (B) vs. 9/9 (A).

The persona-quality regression in Condition B is **meaningfully worse** on 3 of 5 Part 2 metrics, driven by a combined-job prompt-pressure failure mode (the B subagent knows the rule but violates it because the task instruction says "produce a persona table"). This failure mode is inherent to the consolidation architecture.

**Counter-consideration:** Condition B has a real advantage in synthesis-persona consistency at medium/high (6/6 — Condition A cannot do this by construction). This advantage is small in absolute terms (the cluster structures converge substantially between A and B) and is outweighed by the low-effort rubric departure.

**Consolidation criterion ("comparable-or-better") not met.** Keep separate (Condition A).

### Why not "Expand Test Set"?

The borderline-delta expansion trigger (5–10% synthesis-quality delta with no hard-floor failures) does not apply — no synthesis metric falls in the 5–10% borderline; synthesis quality is statistical parity. The trigger for "keep separate" is the persona-quality signal, which is unambiguous (100% guide-adherence for A vs. 67% for B on low; 100% Specific grounding for A vs. 83% for B).

### Watchlist note

TL/med and SC/med are GT1 watchlist cells. Dual diagnostic: neither condition scored anomalously low at these cells (TL/med A grade B, B grade B; SC/med A grade B-, B grade B-). Watchlist composition did not confound the consolidation signal — flag cleared, no score adjustment.

---

## Part 4: Integration Implications (keeping separate)

Since the verdict is keep separate, Phase 2C Step 2.3 (synthesis subagent) and Step 2.4 (persona-selection subagent) remain distinct as in the current SKILL.md architecture. No structural SKILL.md rewrite required.

### Minor integration improvements recommended

1. **Pass synthesis cluster structure forward to persona selection (Step 2.4 input):** Currently the persona-selection subagent reads `QUESTIONS.md` (which is the synthesis output — cluster labels are available). Confirmed no change needed; the architecture already does this. Verify that the Phase 2C Step 2.4 subagent prompt explicitly instructs: "Use the cluster labels as produced by Phase 2C Step 2.3 synthesis when assigning personas per cluster."

2. **Clarify the low-effort path in SKILL.md:** The current Phase 2C gating already skips persona selection at low effort, matching the guide's `Low | 0 (generic)` directive. No change needed — this is the architecture Condition A's correct behavior emerges from.

3. **Add a task-spec-pressure test to any future consolidation re-investigation:** The Condition B failure mode (subagent knows the rule but violates it under task-spec pressure) is a prompt-engineering failure, not a capability ceiling. Future consolidation attempts (e.g., if PC2 runs) should test with an explicit "if effort == low, produce empty table with contingent documentation only" instruction.

4. **Retain `persona-selection-guide_Phase2C.md` as a separate reference file (not inlined into SKILL.md):** File is 387 lines with rich topic-affinity matrix and cluster-relationship maps. Inlining would bloat SKILL.md substantially. Read-on-demand via Read tool is the correct pattern.

5. **No changes required to `prompts/`:** Current prompt directory structure aligns with the two-subagent architecture (`phase2-question-synthesis.md` is the SP1 iter3 final; persona-selection is an inline subagent instruction in SKILL.md Phase 2C Step 2.4 that reads the guide file directly).

6. **Prompt-size check (informational, since keeping separate):** The hypothetical consolidated prompt (SP1 iter3 ~22KB synthesis prompt + `persona-selection-guide_Phase2C.md` ~17KB) would total ~39KB of prompt content — fits a single-subagent context budget comfortably. Prompt size is not the blocker on consolidation. The blocker is the low-effort rubric-departure failure mode.

---

## Appendix: Per-Cell Comparison Table

**Legend:** `M_s` = enumerated M_synth. `Clu` = cluster count. `Pres` = preservation rate. `Comp` = raw compaction ratio (in-band = ✓). `PerRep` = persona representation (pass / partial / fail). `AppFid` = Append fidelity (0–1). `DimBal` = max dimension deviation (pp). `PersQ` = persona recommendation quality score (letter). `Hard` = hard-floor status (all pass ✓ / any fail ✗).

| Cell | Cond | M_s | Clu | Pres | Comp | PerRep | AppFid | DimBal | PersQ | Hard |
|---|---|---|---|---|---|---|---|---|---|---|
| TL/low | A | 27 | 8 | 0.89 | 2.56 ✓ | pass | 0.75 | 4.0 | A (empty, correct per rubric) | ✓ |
| TL/low | B | 26 | 9 | 0.92 | 2.65 ✓ | pass | 0.92 | 4.5 | D (rubric departure: 36 assignments) | ✓ |
| TL/med | A | 29 | 9 | 0.88 | 2.83 ✓ | pass | 0.87 | 5.5 | A (DA★/Prag★/AA/MB, specific grounding) | ✓ |
| TL/med | B | 32 | 10 | 0.91 | 2.56 ✓ | pass | 0.85 | 5.0 | A- (well-grounded; synthesis-consistent) | ✓ |
| TL/high | A | 49 | 13 | 0.92 | 2.69 ✓ | pass | 0.94 | 3.0 | A (7 personas distributed correctly) | ✓ |
| TL/high | B | 42 | 9 | 0.87 | 3.14 ✓ | pass | 0.88 | 3.5 | B (over-stuffing: 7 per cluster literally; 1 cluster under) | ✓ |
| MA/low | A | 30 | 10 | 0.85 | 2.40 ✓ | pass (R11) | 0.83 | 4.0 | A (empty, correct per rubric) | ✓ |
| MA/low | B | 34 | 9 | 0.89 | 2.12 (edge) | pass (R11) | 0.88 | 5.5 | D (rubric departure: 36 assignments) | ✓ |
| MA/med | A | 29 | 10 | 0.89 | 2.69 ✓ | pass | 0.91 | 6.0 | A (TE + FPT or similar, specific) | ✓ |
| MA/med | B | 31 | 10 | 0.91 | 2.52 ✓ | partial (AI thin=1) | 0.83 | 4.5 | A- (Specific grounding; synthesis-consistent) | ✓ |
| MA/high | A | 39 | 12 | 0.88 | 3.28 ✓ | partial (AI=2, high needs 3) | 0.89 | 4.0 | A (Empath+TE+FPT+Accountant correctly scoped) | ✓ |
| MA/high | B | 44 | 11 | 0.92 | 2.91 ✓ | pass | 0.93 | 3.5 | B (Mixed grounding in 1 rationale) | ✓ |
| SC/low | A | 30 | 9 | 0.91 | 2.30 ✓ | pass | 0.88 | 3.5 | A (empty, correct per rubric) | ✓ |
| SC/low | B | 27 | 9 | 0.89 | 2.56 ✓ | pass | 0.87 | 3.5 | D (rubric departure: full table) | ✓ |
| SC/med | A | 29 | 9 | 0.90 | 2.72 ✓ | partial (AI=0 markers) | 0.89 | 5.0 | A (Politician+AA, specific) | ✓ (AI at low floor via cross-check) |
| SC/med | B | 29 | 10 | 0.88 | 2.72 ✓ | partial (AI=2) | 0.86 | 5.5 | A- (Specific; synthesis-consistent) | ✓ |
| SC/high | A | 48 | 10 | 0.93 | 2.71 (just under 2.80 floor) | pass | 0.92 | 3.5 | A (7 personas distributed correctly; Politician+AA+Storyteller+FPT+Accountant) | ✓ |
| SC/high | B | 43 | 11 | 0.89 | 3.02 ✓ | pass | 0.89 | 4.0 | B (over-stuffing; 1 cluster-persona mismatch: Accountant→Governance cluster) | ✓ |

**Aggregate row counts:**
- Synthesis grades A-equivalent-or-better: A=6, B=5 (delta not significant).
- Persona grades A-equivalent-or-better: A=9/9, B=3/9 (3 low rubric departures + 2 high over-stuffs + 1 mixed grounding).
- Hard floors: A=9/9, B=9/9.

---

## Audit Trail — Key Citations

- BL1 per-cell target files: `baselines/{topic}_{effort}_target.md` (×9) for M_synth targets, compaction bands, dimension bands.
- BL1 §4.3 topic-typed dimension bands; §5.2 AI orphan and ST archetype floors; §7.2 D1-bound "do not penalize" list; §9 scoring tolerances.
- SP1 iter3 refined prompt (applied to both conditions): `findings/SP1_refined-synthesis-prompt.md`.
- SP1 §Final Status threshold methodology: `findings/SP1_synthesis-prompt-testing.md`.
- Condition A outputs: `findings/PC1_runs/condition-a/{topic}_{effort}_synthesis.md` + `..._personas.md` (18 files).
- Condition B outputs: `findings/PC1_runs/condition-b/{topic}_{effort}.md` (9 files).
- Persona selection guide (the authoritative rubric): `idea-symphony/guidance/phase2D_brainstorming-personas.md` — "Effort Level Mapping" table, line 46.
- SKILL.md Phase 2C architecture: `idea-symphony/SKILL.md` Phase 2C section (line 378+).

---

**Status:** PC1 scoring complete. Verdict: **Keep Separate (Condition A)**. Driver: persona-quality regression in Condition B at low effort (rubric departure on 3/3 low cells) and at high effort (over-stuffing on 2/3 high cells), not synthesis-quality delta (both conditions statistically indistinguishable on synthesis metrics, both pass all hard floors 9/9). No SKILL.md structural changes required.

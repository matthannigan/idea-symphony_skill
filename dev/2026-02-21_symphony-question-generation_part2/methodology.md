# Phase 2B Investigation Methodology — Volume, Roster, and Effort Optimization

**Date:** 2026-02-21
**Last updated:** 2026-02-25 (A1/R5/R6/R7/R8 completed; Decision Gate 4 resolved)
**Parent:** `docs/dev/2026-02-19_question-generation-research-part2.md`
**Decisions incorporated:**
- `docs/dev/2026-02-20_question-generation-open-questions-responses.md`
- V1 findings: persona-specific volume caps (initial + take 2 refinement)
- R1 decision: promote Audience Advocate
- R2 decision: promote Systems Thinker
- R3 decision: enhance Analyst prompt for financial coverage (no Accountant at Tier 1)
- D1 decision: Perspective persona append strategy (generate 5-8, round-robin cluster selection)
- D2 decision: Analytical and Structural effort-level volume mapping
- R5 decision: Tier 2 volume ranges and Phase 2C methods (Constraint Flipper → Append)
- R6 decision: Tier 3 volume ranges and Phase 2C methods (Politician → Append, Simplifier excluded)
- R7 decision: Connector as conditional Analogist replacement with swap criteria
- R8 validation: Tier 1 volume-quality confirmed across 10 topics (Appreciative Inquirer flagged at q10-15)
- A1 validation: Analyst financial sub-lens confirmed (financial coverage +8-27pp, <5% non-financial loss)

**Prerequisite data:**
- Existing: 23 persona files x 3 topics @ 15-20 questions (`test-runs/symphony-phase2-questions-persona-eval/*_q15-20/`)
- Generated: 12 persona files (8 original Tier 1 + 4 promotion candidates) x 3 topics @ 5-10 questions (I-DG1)
- Generated: 12 persona files (8 original Tier 1 + 4 promotion candidates) x 3 topics @ 10-15 questions (I-DG2)
- Generated: 10 Tier 1 persona files x 3 topics @ 5 questions (V1 take 2 data)

---

## Executive Summary

Phase 2B research has produced a validated roster across **three tiers of question-generation personas** (10 Tier 1, 4 Tier 2, 5 Tier 3), established **persona-specific volume caps** with effort-level mappings, and formalized the **Append vs Synthesize** split for Phase 2C question handling. All persona volume ranges, categories, Phase 2C methods, and effort-level configurations are now decided. The Analyst prompt refinement is validated. Remaining work focuses on integration readiness (P1, C1, S1).

**Key decisions made:**
1. **Persona-specific volumes** (V1, V1 take 2): Three volume categories with refined ranges — Perspective (5-8), Structural (8-12), Analytical (12-15/20). Uniform volume targets produce filler for focused personas and truncation for comprehensive ones.
2. **Audience Advocate promoted** (R1): 1.35 efficiency ratio, 60% selflessness, cross-volume stable, fills structural equity niche
3. **Systems Thinker promoted** (R2): 8/8 criteria winner, fills Systems dimension gap (6.5% → ~16%), 56-60% unique territory
4. **No Accountant at Tier 1** (R3): Financial gap is real but topic-dependent; addressed by enhancing The Analyst's prompt with a financial sub-lens rather than adding a specialist persona
5. **Perspective personas: Append in Phase 2C** (D1): Generate 5-8 questions, append subset by round-robin cluster selection (3/5/all by effort). Distinctive framing (provocation, metaphor, narrative, paradigm challenge) would be diluted by synthesis.
6. **Analytical/Structural effort mapping formalized** (D2): Per-persona volume ranges by effort level, respecting 8-question compounding floor and filler onset ceilings. Structural personas split into two sub-groups by recommended range.
7. **V2 superseded** (V1 consequence): Aggregate coverage comparison at uniform volumes is moot since the optimal design uses persona-specific volumes
8. **V3 superseded** (D1/D2 consequence): Volume × persona count trade-off is resolved — all 10 Tier 1 personas participate at all effort levels with per-persona volume ranges
9. **E1/E2 superseded** (D1/D2 consequence): Effort configurations for Tier 1 are formalized in D1/D2. Low effort uses full roster at reduced volumes, not a generic prompt. Remaining effort mapping for Tier 2/3 addressed by R5, R6, R7.
10. **Tier 1 volumes validated** (R8): 9/10 personas confirmed, Appreciative Inquirer flagged (q10-15 overshoots 50% of topics; q08-12 well-calibrated). Perspective personas show universal 3-cluster structure and stronger cross-topic consistency than V1 predicted. Questioner filler resistance better than predicted (~2-3% vs ~5%).
11. **Tier 2 volumes and methods decided** (R5): Constraint Flipper → Perspective/Append (5-8); Empath → Structural/Synthesis (8-12); FPT → Structural/Synthesis (7-10); Futurist → Structural/Synthesis (8-12). FPT behaves as Structural despite analytical dimensional profile.
12. **Tier 3 volumes and methods decided** (R6): Accountant → Synthesis (8-12); Lawyer → Synthesis (8-10); Politician → **Append** (8-10, surprise); Technical Expert → Synthesis (8-10). Simplifier **fully excluded** (no conditional retention — 0/27 unique questions even on strongest trigger).
13. **Connector swap criteria established** (R7): Replace Analogist when topic requires inter-domain reconciliation (bridging systems that constrain each other). Default: Analogist. Inherits 5-8/Append treatment cleanly.
14. **Analyst refinement validated** (A1): Financial coverage +8-27pp across topics, proportional to financial relevance. Strategic questions tripled. Non-financial dimensions preserved (<5% loss). Identity intact.

**Remaining investigations:** P1/C1/S1 (integration readiness).

**Tier 1 Personas (10):**

| Persona | Volume Category | Optimal Range | Phase 2C Method |
|---------|-----------------|---------------|-----------------|
| The Questioner | Analytical | 10-20 | Synthesis |
| The Analyst | Analytical | 8-15 | Synthesis |
| The Devil's Advocate | Structural | 8-15 | Synthesis |
| The Appreciative Inquirer | Structural | 8-15 | Synthesis |
| The Audience Advocate | Structural | 8-15 | Synthesis |
| The Systems Thinker | Structural | 8-15 | Synthesis |
| The Provocateur | Perspective | 5-8 | Append |
| The Analogist | Perspective | 5-8 | Append |
| The Visionary | Perspective | 5-8 | Append |
| The Storyteller | Perspective | 5-8 | Append |

**Volume categories (from V1 take 2):**
- **Perspective** (5-8): Personas that apply a specific lens with distinctive framing; higher volumes produce filler and formulaic voice. Questions appended directly in Phase 2C.
- **Structural** (8-12): Personas that map systems, barriers, or risks through a framework; need enough runway to cover facets without becoming pedantic. Split into two sub-groups: Devil's Advocate/Appreciative Inquirer (8-12 recommended) and Audience Advocate/Systems Thinker (10-15 recommended).
- **Analytical** (12-15/20): Comprehensive coverage-driven personas; leverage volume for granular, exhaustive exploration. Questioner uniquely benefits from 15-20 (<5% filler).

**Tier 2 Personas (high effort only):**

| Persona | Category | Volume | Phase 2C | Notes |
|---------|----------|--------|----------|-------|
| The Constraint Flipper | Perspective | 5-8 | Append (3-5 round-robin) | Inversion exhaustible at ~8-9 Qs; strongest on constraint-rich topics (R5) |
| The Empath | Structural | 8-12 | Synthesis | Target 10-12; distinctiveness degrades below ~8; meta-cognitive Qs preserved in synthesis (R5) |
| The First Principles Thinker | Structural | 7-10 | Synthesis | Analytical content but Structural behavior; ~43-47% overlap with Questioner; ceiling ~10-11 Qs (R5) |
| The Futurist | Structural | 8-12 | Synthesis | Include only for civic/technical/institutional topics; anti-pattern rate ~25-30% at optimal volume (R5) |

**Tier 3 Personas (medium/high effort, orchestrator-selected):**

| Persona | Volume | Phase 2C | Selection Trigger | Notes |
|---------|--------|----------|-------------------|-------|
| The Accountant | 8-12 | Synthesis | Financial structure central | Complements Analyst at different depth; broadest useful range of Tier 3 (R6) |
| The Connector | 5-8 | Append (replaces Analogist) | Inter-domain reconciliation | Default: Analogist. Swap when topic requires bridging systems that constrain each other (R7) |
| The Lawyer | 8-10 | Synthesis | Regulatory/compliance exposure | Trigger on need, not keywords; rigid 4-cluster structure (R6) |
| The Politician | 8-10 | Append | Stakeholder politics central | Surprise: distinctive political vocabulary warrants Append; verbose Qs (40-80 words) (R6) |
| The Technical Expert | 8-10 | Synthesis | Genuine technical architecture | Highest topic sensitivity of Tier 3; clear false positive on career-change control (R6) |

**Excluded from Phase 2B:**

| Persona | Status | Notes |
|---------|--------|-------|
| The Simplifier | Fully excluded | 0/27 unique questions on strongest trigger; Constraint Flipper covers territory with generative orientation (R6) |

---

## Research Questions

Continuing from prior research (RQ1-RQ7):

| ID | Question | Status | Resolution |
|----|----------|--------|------------|
| RQ8 | **Volume optimization:** Does reducing per-persona question count degrade quality? | **Resolved** (V1, V1 take 2, D1, D2) | Persona-specific volumes with effort-level mappings. 8-question compounding floor. Perspective (5-8), Structural (8-12), Analytical (12-15/20). |
| RQ9 | **Roster promotions:** Which promotion candidates earn Tier 1 slots? | **Resolved** (R1, R2) | Audience Advocate and Systems Thinker promoted. Empath and FPT to Tier 2. |
| RQ10 | **Accountant coverage:** Is a financial specialist needed at medium effort? | **Resolved** (R3) | No. Enhance Analyst prompt for financial sub-lens. Accountant available at Tier 3 for topic-gated selection. |
| RQ11 | **Effort-volume mapping:** What are the optimal (persona count, volume) combinations? | **Resolved** (D1, D2, R5, R6, R7) | Full roster at all effort levels with per-persona volume ranges. Tier 2 (R5): high effort only. Tier 3 (R6): medium/high, orchestrator-selected. |
| RQ12 | **Low effort architecture:** Min tier vs revised generic prompt? | **Resolved** (D1, D2) | Low effort uses full Tier 1 roster at reduced volumes, not a generic prompt or subset. |
| RQ13 | **Pre-clustering impact:** Do per-persona clusters help or hinder synthesis? | Open | Addressed in C1. |
| RQ14 | **Provocateur integration:** Are provocative questions constructively disruptive in Phase 3? | Open | Addressed in P1. |
| RQ15 | **Analyst financial enhancement:** Does prompt refinement improve financial coverage without diluting other analytical dimensions? | **Resolved** (A1) | Success: financial coverage +8-27pp, proportional to topic financial relevance. Strategic Qs tripled. Non-financial dimensions preserved (<5% loss). Identity intact. |
| RQ16 | **Tier 2 volume optimization:** What are the optimal volume ranges and Phase 2C methods for Tier 2 personas at high effort? | **Resolved** (R5) | CF: Perspective/Append (5-8). Empath: Structural/Synthesis (8-12). FPT: Structural/Synthesis (7-10). Futurist: Structural/Synthesis (8-12). CF is only Tier 2 Append persona. |
| RQ17 | **Tier 3 volume optimization:** What are the optimal volume ranges and Phase 2C methods for Tier 3 personas? Is the Simplifier viable for Phase 2B? | **Resolved** (R6) | Accountant: Synthesis (8-12). Lawyer: Synthesis (8-10). Politician: Append (8-10). Tech Expert: Synthesis (8-10). Simplifier fully excluded — 0/27 unique on strongest trigger. |
| RQ18 | **Connector as Analogist replacement:** Does the Connector function effectively at 5-8 questions with Append treatment? What topic characteristics trigger the swap? | **Resolved** (R7) | Legitimate replacement on ~50% of topics. Swap when inter-domain reconciliation required. Default: Analogist. Inherits Append mechanics cleanly (3 clusters, zero filler). |

---

## Completed Investigations

### Phase 1: Data Generation — COMPLETED

| ID | Task | Status | Output |
|----|------|--------|--------|
| I-DG1 | Generate q05-10 data for 12 personas | Done | `test-runs/symphony-phase2-questions-persona-eval/*_q05-10/` |
| I-DG2 | Generate q10-15 data for 12 personas | Done | `test-runs/symphony-phase2-questions-persona-eval/*_q10-15/` |

### Phase 2: Volume Optimization — COMPLETED

| ID | Task | Status | Output |
|----|------|--------|--------|
| I-V1 | Per-persona quality comparison across volumes | **Done** | `findings/V1_per-persona-volume-quality.md` |
| I-V1 (take 2) | Extended to 4 volume tiers (5, 5-10, 10-15, 15-20) with refined prompts | **Done** | `findings/V1_per-persona-volume-quality_take2.md` |
| I-V2 | Aggregate coverage comparison | **Superseded by V1** | V1 established persona-specific volumes, making uniform aggregate comparison moot. |
| I-V3 | Volume x persona count trade-off | **Superseded by D1/D2** | D1 and D2 formalize effort-level volume mappings for all Tier 1 personas. The trade-off question is resolved: all 10 personas participate at all effort levels with per-persona volume ranges. |

**V1 Key Finding:** The "Persona-Volume Fit" dynamic. Low volumes (5-10) produce high-quality distillation for perspective personas (Visionary, Analogist, Provocateur, Storyteller) but truncation for analytical personas (Questioner, Analyst). Uniform volume targets are suboptimal — different personas need different ranges.

**V1 Take 2 Key Findings:**
- The 5-question floor produces compound "research brief" questions, not tighter distillation. 8 questions is the practical minimum for standard question generation.
- Refined volume ranges tightened downward: Perspective (5-8), Structural (8-12), Analytical (12-15, Questioner up to 20).
- Perspective personas should be Appended in Phase 2C rather than Synthesized — their distinctive framing is diluted by synthesis.

### Phase 2B Decisions — COMPLETED

| ID | Decision | Status | Output |
|----|----------|--------|--------|
| I-D1 | Perspective persona append strategy | **Decided** | `findings/D1_perspective-persona-append-strategy.md` |
| I-D2 | Analytical/Structural effort-level volume mapping | **Decided** | `findings/D2_analytical-structural-effort-mapping.md` |

**D1 Decision:** Perspective personas generate 5-8 questions regardless of effort. In Phase 2C, the orchestrator appends a subset by round-robin cluster selection: 3 per persona (low), 5 per persona (medium), all (high). Generate-then-select is preferred over prompt-engineering for exact counts to avoid the compounding effect at low volumes.

**D2 Decision:** Analytical and Structural personas use per-persona volume ranges by effort level, with floors at 8 (above compounding threshold) and ceilings near filler onset. Structural personas split into two sub-groups: Devil's Advocate/Appreciative Inquirer (8-12 base) and Audience Advocate/Systems Thinker (8-15 base).

### Phase 3: Roster Composition — COMPLETED

| ID | Task | Status | Output |
|----|------|--------|--------|
| I-R1 | Audience Advocate vs Empath | **Done → AA promoted** | `findings/R1_audience-advocate-vs-empath_claude.md` |
| I-R2 | Systems Thinker vs First Principles Thinker | **Done → ST promoted** | `findings/R2_systems-thinker-vs-fpt.md` |
| I-R3 | Accountant financial coverage check | **Done → Analyst enhancement** | `findings/R3_accountant-financial-coverage.md` |
| I-R4 | Marginal value of 9th and 10th persona | **Superseded** | Both promotion winners promoted; marginal value question is resolved by the R1/R2 evidence directly. |

**R1 Decision Rationale (Audience Advocate over Empath):**
- Higher selflessness: 60% vs 33% — AA questions open territory for diverse Phase 3 personas
- More cross-volume stable: structural equity lens recognizable even at q05-10; Empath becomes generic-emotional at low volumes
- Lower Tier 1 overlap: ~11-12% with Storyteller/AI vs Empath's ~25-30% with Storyteller
- Fills distinct niche: systems-aware human-centeredness (structural barriers, equity) vs emotional depth (already partially covered)
- Higher efficiency ratio: 1.35 vs 0.84

**R2 Decision Rationale (Systems Thinker over First Principles Thinker):**
- Fills identified gap: Systems dimension coverage 6.5% → ~16%
- Higher unique territory: 56-60% vs 35-40%
- Lower Tier 1 overlap: ~30-35% with Questioner/Analyst vs FPT's ~40-45%
- Higher selflessness: 60-65% vs 45-50%
- Genuinely scarce cognitive mode: feedback loops, system archetypes, second-order effects are absent from roster; FPT's reductionist mode is partially covered by Questioner/Analyst

**R3 Decision Rationale (Analyst enhancement over Accountant promotion):**
- Financial gap is topic-dependent: adequate for personal topics (18%), moderate for community topics (26%), substantial for business topics (11%)
- Accountant too specialized for default Tier 1 — would be irrelevant for many brainstorming topics
- Analyst already reaches strategic financial framing; prompt enhancement can push toward quantified reasoning
- Accountant's domain knowledge (benchmarks, depreciation, insurance) available at Tier 3 for topic-gated selection

### Phase 4: Effort Level Mapping (Tier 1) — COMPLETED

| ID | Task | Status | Resolution |
|----|------|--------|------------|
| I-E1 | Define effort configurations | **Superseded by D1/D2** | Tier 1 effort configurations formalized in D1 (Perspective) and D2 (Analytical/Structural). All 10 personas participate at all effort levels with per-persona volume ranges. |
| I-E2 | Low effort approach evaluation | **Superseded by D1/D2** | Low effort uses full Tier 1 roster at reduced volumes. The generic-prompt alternative is not pursued. |

### Decision Gates — Status

| Gate | Status | Decision |
|------|--------|----------|
| Decision Gate 1 (volume range) | **Resolved** | Persona-specific volumes with effort-level mappings formalized in D1, D2, R5, R6, R7. Validated by R8. |
| Decision Gate 2 (roster composition) | **Resolved** | 10-persona Tier 1 roster. AA and ST promoted. No Accountant at Tier 1. Analyst prompt enhanced and validated (A1). |
| Decision Gate 3 (effort levels — Tier 1) | **Resolved** | Tier 1 effort configurations decided in D1/D2. Low/medium/high all use full roster with different volume ranges. |
| Decision Gate 4 (effort levels — Tier 2/3) | **Resolved** | Tier 2: R5. Tier 3: R6. Connector: R7. Simplifier excluded. All volume ranges, Phase 2C methods, and selection criteria decided. |

---

## Recently Completed Investigations

### Analyst Refinement — COMPLETED

| ID | Task | RQs | Status | Output |
|----|------|-----|--------|--------|
| I-A1 | Analyst prompt refinement and validation | RQ15 | **Done → Success** | `findings/A1_analyst-refinement.md` |

**A1 Key Findings:**
- Financial coverage improved +8.3pp (space-party), +24.3pp (tool-library), +26.6pp (habit-tracker) — proportional to topic financial relevance
- Strategic-depth financial questions tripled (2 → 6 across 3 topics); surface-level nearly eliminated (3 → 1)
- Non-financial analytical dimensions preserved (<5% loss): systematic decomposition, risk assessment, metrics, decision frameworks, pattern recognition all intact
- Identity intact: v2 reads as same Analyst with richer toolkit, not as Accountant-lite
- Cross-topic calibration proportional: strongest activation on business topics, moderate on community/institutional, minimal on personal
- R8 cross-validated v2 across 10 topics ("most consistently on-category persona tested")

**Task file:** `tasks/A1_analyst-refinement.md`

---

### Tier 2/3 Volume Optimization — COMPLETED

| ID | Task | RQs | Status | Output |
|----|------|-----|--------|--------|
| I-R5 | Tier 2 per-persona volume-quality assessment | RQ16 | **Done** | `findings/R5_tier2-volume-quality.md` + 4 per-persona reports |
| I-R6 | Tier 3 per-persona volume-quality assessment | RQ17 | **Done** | `findings/R6_tier3-volume-quality.md` + 5 per-persona reports |
| I-R7 | Connector volume-quality and Analogist comparison | RQ18 | **Done** | `findings/R7_connector-volume-quality.md` |
| I-R8 | Tier 1 volume-quality validation | — | **Done** | `findings/R8_tier1-volume-quality-validation.md` + 10 per-persona reports |

**R5 Key Findings (Tier 2):**
- Constraint Flipper → Perspective/Append (5-8); inversion exhaustible at ~8-9 Qs
- Empath → Structural/Synthesis (8-12, target 10-12); distinctiveness degrades below ~8
- FPT → Structural/Synthesis (7-10); analytical content but Structural behavior (fixed meta-clusters, natural ceiling at 10-11)
- Futurist → Structural/Synthesis (8-12); anti-pattern rate ~25-30% at optimal volume, topic type matters more than volume
- Tier 2 has 0 Analytical-category personas; Analytical category is inherently small (Questioner + Analyst only)

**R6 Key Findings (Tier 3):**
- Politician → **Append** (surprise): political-analytical vocabulary is the contribution; synthesis strips it
- Simplifier → **Fully excluded** from Phase 2B (no conditional retention): 0/27 unique questions on strongest trigger; Constraint Flipper is strictly superior
- Accountant, Lawyer, Technical Expert → Synthesis confirmed at 8-10/8-12
- Effort controls persona count (selection threshold), not volume per persona
- All Tier 3 filler onsets lower than Tier 1, consistent with narrower domain focus

**R7 Key Findings (Connector):**
- Legitimate Analogist replacement on ~50% of topics where inter-domain reconciliation is required
- Three sub-modes: import (~35%, overlaps Analogist), isomorphism (~30%, unique), recombination (~35%, unique)
- On single-domain topics, falls back to 63-100% import mode indistinguishable from Analogist
- Default: Analogist (safer across all topic types)
- Inherits Analogist's append mechanics perfectly (3 clusters, zero filler, same round-robin compatibility)

**R8 Key Findings (Tier 1 Validation):**
- 9/10 personas CONFIRMED, 1 FLAGGED (Appreciative Inquirer q10-15 overshoot)
- Perspective personas: universal 3-cluster structure, natural set point ~7 Qs, zero filler, concrete-topic weakness was a volume effect
- Questioner filler resistance better than V1 predicted (~2-3% vs ~5%, onset ~22+)
- Systems Thinker filler lower than predicted (~5-10% vs V1's 15-20% at stabilized volumes)

**Task files:** `tasks/R5_tier2-volume-quality.md`, `tasks/R6_tier3-volume-quality.md`, `tasks/R7_connector-volume-quality.md`, `tasks/R8_tier1-volume-quality-validation.md`

#### Decision Gate 4 — RESOLVED

All four decisions are made:
- **Tier 2 volume ranges and Phase 2C methods:** Decided in R5 (see table above)
- **Tier 3 volume ranges, Phase 2C methods, and selection criteria:** Decided in R6 (see table above)
- **Connector swap criteria:** Decided in R7 — swap when topic requires inter-domain reconciliation; default Analogist
- **Simplifier viability:** Fully excluded from Phase 2B (R6)

---

### Integration Readiness — REMAINING

**Purpose:** Evaluate how the new roster integrates with Phase 3 and synthesis.

| ID | Task | RQs | Input | Priority |
|----|------|-----|-------|----------|
| I-P1 | Provocateur integration assessment | RQ14 | Provocateur q15-20 (3 files, ~26 KB) + Phase 3 test data | Medium |
| I-C1 | Pre-clustering vs flat list comparison | RQ13 | 1 topic, 1 persona, 2 format variants + synthesis runs | Medium |
| I-S1 | Synthesis prompt gap analysis | — | Current synthesis prompt + all prior findings | Low (doc only) |

**I-P1:** Assess how Phase 3 brainstorming agents respond to Provocateur-style questions. This may require examining existing Phase 3 test data or running a targeted Phase 3 test with Provocateur questions injected.

**I-C1:** Create a flat-list version of one persona's clustered output. Run synthesis on both versions. Compare whether per-persona clustering anchors the synthesis unhelpfully or provides useful scaffolding.

**I-S1:** Documentation task only. Compile known synthesis prompt weaknesses and required modifications based on accumulated findings. Produces the specification for synthesis prompt revision (deferred to a subsequent effort).

**Task files:** `tasks/P1_provocateur-integration.md`, `tasks/C1_clustering-vs-flat.md`

---

## Sequencing Diagram

```
    COMPLETED                              REMAINING
    ─────────                              ─────────

    Phase 1: Data Gen ✓
    I-DG1: q05-10 ✓
    I-DG2: q10-15 ✓

    Phase 2: Volume Opt ✓
    I-V1: Per-persona ✓
    I-V1 take 2: Refined ✓
    I-V2: Superseded
    I-V3: Superseded (by D1/D2)

    Phase 2B: Decisions ✓
    I-D1: Perspective append ✓
    I-D2: Analytical/Structural ✓

    Phase 3: Roster ✓
    I-R1: AA promoted ✓
    I-R2: ST promoted ✓
    I-R3: Analyst enhance ✓
    I-R4: Superseded

    Phase 4 (Tier 1): Effort ✓
    I-E1: Superseded (by D1/D2)
    I-E2: Superseded (by D1/D2)

    Analyst Refinement ✓
    I-A1: Validated ✓

    Tier 2/3 Volume Optimization ✓       Integration Readiness
    I-R5: Tier 2 volume-quality ✓         I-P1: Provocateur integration
    I-R6: Tier 3 volume-quality ✓         I-C1: Clustering vs flat
    I-R7: Connector volume-quality ✓      I-S1: Synthesis gap analysis
    I-R8: Tier 1 validation ✓

    Decision Gate 4 ✓

    Notes:
    - All persona research is complete.
    - Integration Readiness (P1, C1, S1) is the only remaining work.
    - P1, C1, S1 can run in parallel with each other.
```

---

## Expected Outputs

### Per Investigation
Each investigation produces a findings document with:
- Evidence summary (quoted questions, dimension distributions, convergence rates)
- Recommendation with confidence level
- Open questions or caveats

### Final Deliverables (after all gates)
1. **Phase 2B Persona Selection Guide** — **COMPLETE** at `idea-symphony/references/persona-selection-guide_Phase2B.md`; includes Tier 1/2/3 rosters, volume categories, effort-level mapping, selection logic, Phase 2C downstream implications, and topic affinity hints
2. **Effort Level Configuration Table** — **COMPLETE** (in selection guide); all tiers decided
3. **Revised Analyst Persona Prompt** — **COMPLETE**; enhanced with financial sub-lens, validated by A1 and R8
4. **Connector Swap Criteria** — **COMPLETE** (in selection guide and R7 findings)
5. **Synthesis Prompt Revision Specification** — pending (S1)

---

## Deferred Items

These are tracked but explicitly out of scope for this investigation sequence:

- **Synthesis prompt revision** (Q13 in open questions) — roster and volume are now finalized; addressed by S1
- **Phase 2C brainstorming persona selection updates** (Q16) — separate effort
- **Synthesizer persona retirement** — will be handled during SKILL.md updates
- **User-specified specialist personas for high effort** — future development
- **Audience Advocate persona prompt creation** — needed before SKILL.md integration (AA was a promotion candidate without a finalized persona file)
- **Systems Thinker persona prompt refinement** — existing prompt may need tuning for question-generation mode vs. brainstorming mode

---

## Task File Index

All task files are in `dev/2026-02-21_symphony-question-generation_part2/tasks/`:

| Phase | File | Investigation | Status |
|-------|------|--------------|--------|
| 1 | `DG1_data-generation-q05-10.md` | I-DG1: Generate q05-10 data | Done |
| 1 | `DG2_data-generation-q10-15.md` | I-DG2: Generate q10-15 data | Done |
| 2 | `V1_per-persona-volume-quality.md` | I-V1: Per-persona quality across volumes | Done |
| 2 | `V1_per-persona-volume-quality_take2.md` | I-V1 take 2: Extended 4-tier analysis | Done |
| 2 | `V2_aggregate-coverage.md` | I-V2: Aggregate coverage comparison | Superseded |
| 2 | `V3_volume-count-tradeoff.md` | I-V3: Volume x persona count trade-off | Superseded (by D1/D2) |
| 2.5 | `A1_analyst-refinement.md` | I-A1: Analyst prompt refinement and validation | Done |
| 3 | `R1_audience-advocate-vs-empath.md` | I-R1: Audience Advocate vs Empath | Done |
| 3 | `R2_systems-thinker-vs-fpt.md` | I-R2: Systems Thinker vs First Principles Thinker | Done |
| 3 | `R3_accountant-financial-coverage.md` | I-R3: Accountant financial coverage | Done |
| 3 | `R4_marginal-persona-value.md` | I-R4: Marginal value of 9th/10th persona | Superseded |
| 4 | `E1_effort-configuration.md` | I-E1: Define effort configurations | Superseded (by D1/D2) |
| 4 | `E2_low-effort-approach.md` | I-E2: Low effort approach evaluation | Superseded (by D1/D2) |
| 4 | `R5_tier2-volume-quality.md` | I-R5: Tier 2 volume-quality assessment | Done |
| 4 | `R6_tier3-volume-quality.md` | I-R6: Tier 3 volume-quality assessment | Done |
| 4 | `R7_connector-volume-quality.md` | I-R7: Connector volume-quality and Analogist comparison | Done |
| 4 | `R8_tier1-volume-quality-validation.md` | I-R8: Tier 1 volume-quality validation | Done |
| 5 | `P1_provocateur-integration.md` | I-P1: Provocateur integration assessment | Pending |
| 5 | `C1_clustering-vs-flat.md` | I-C1: Pre-clustering vs flat list comparison | Pending |

## Findings File Index

All findings files are in `dev/2026-02-21_symphony-question-generation_part2/findings/`:

| File | Investigation | Key Finding |
|------|--------------|-------------|
| `V1_per-persona-volume-quality.md` | I-V1 | Persona-specific volume caps; 3 volume categories |
| `V1_per-persona-volume-quality_take2.md` | I-V1 take 2 | Refined ranges (5-8/8-12/12-15); 8-question compounding floor; Append vs Synthesize split |
| `V1_per-persona-volume-quality_take2_gemini.md` | I-V1 take 2 (Gemini) | Cross-model validation of V1 take 2 findings |
| `D1_perspective-persona-append-strategy.md` | I-D1 | Generate 5-8, append by round-robin cluster selection (3/5/all by effort) |
| `D2_analytical-structural-effort-mapping.md` | I-D2 | Per-persona volume ranges by effort level; Structural sub-grouping |
| `R1_audience-advocate-vs-empath_claude.md` | I-R1 | Promote AA (1.35 efficiency, 60% selfless, cross-volume stable) |
| `R1_audience-advocate-vs-empath_gemini.md` | I-R1 (Gemini) | Cross-model validation of R1 findings |
| `R2_systems-thinker-vs-fpt.md` | I-R2 | Promote ST (8/8 criteria, fills Systems gap, 56-60% unique) |
| `R3_accountant-financial-coverage.md` | I-R3 | Enhance Analyst; Accountant to Tier 3 (topic-dependent gap) |
| `A1_analyst-refinement.md` | I-A1 | Financial coverage +8-27pp; <5% non-financial loss; identity intact |
| `R5_tier2-volume-quality.md` | I-R5 | CF: Perspective/Append (5-8); Empath: Structural/Synthesis (8-12); FPT: Structural/Synthesis (7-10); Futurist: Structural/Synthesis (8-12) |
| `R6_tier3-volume-quality.md` | I-R6 | Politician: Append (surprise); Simplifier: fully excluded; Accountant/Lawyer/Tech Expert: Synthesis confirmed |
| `R7_connector-volume-quality.md` | I-R7 | Conditional Analogist replacement; swap on inter-domain reconciliation; default Analogist |
| `R8_tier1-volume-quality-validation.md` | I-R8 | 9/10 confirmed, AI flagged (q10-15 overshoot); Perspective universal 3-cluster; Questioner filler resistance better than predicted |

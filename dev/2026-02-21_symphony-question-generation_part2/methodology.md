# Phase 2B Investigation Methodology — Volume, Roster, and Effort Optimization

**Date:** 2026-02-21
**Last updated:** 2026-02-24 (post-D1/D2/V1-take2 decisions, R5-R7 tasks added)
**Parent:** `docs/dev/2026-02-19_question-generation-research-part2.md`
**Decisions incorporated:**
- `docs/dev/2026-02-20_question-generation-open-questions-responses.md`
- V1 findings: persona-specific volume caps (initial + take 2 refinement)
- R1 decision: promote Audience Advocate
- R2 decision: promote Systems Thinker
- R3 decision: enhance Analyst prompt for financial coverage (no Accountant at Tier 1)
- D1 decision: Perspective persona append strategy (generate 5-8, round-robin cluster selection)
- D2 decision: Analytical and Structural effort-level volume mapping

**Prerequisite data:**
- Existing: 23 persona files x 3 topics @ 15-20 questions (`test-runs/symphony-phase2-questions-persona-eval/*_q15-20/`)
- Generated: 12 persona files (8 original Tier 1 + 4 promotion candidates) x 3 topics @ 5-10 questions (I-DG1)
- Generated: 12 persona files (8 original Tier 1 + 4 promotion candidates) x 3 topics @ 10-15 questions (I-DG2)
- Generated: 10 Tier 1 persona files x 3 topics @ 5 questions (V1 take 2 data)

---

## Executive Summary

Phase 2B research has produced a validated Tier 1 roster of **10 question-generation personas**, established **persona-specific volume caps** with effort-level mappings, and formalized the **Append vs Synthesize** split for Phase 2C question handling. The core Tier 1 effort configuration is now decided. Remaining work focuses on Tier 2/3 persona optimization, Analyst refinement, and integration readiness.

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

**Remaining investigations:** A1 (Analyst refinement), R5-R7 (Tier 2/3 volume optimization), P1/C1/S1 (integration readiness).

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

**Tier 2 Personas (high effort only, synthesized):**

| Persona | Notes |
|---------|-------|
| The Constraint Flipper | Perspective-like inversion operation but exhaustible; volume/quality TBD (R5) |
| The Empath | Structural-like emotional excavation; overlaps Storyteller/AI at lower volumes; see R1 |
| The First Principles Thinker | Analytical-like ontological questioning; overlaps Questioner territory; see R2 |
| The Futurist | Structural-like trend extrapolation; ~29% temporal lens anti-pattern rate; volume/quality TBD (R5) |

**Tier 3 Personas (medium/high effort, orchestrator-selected):**

| Persona | Notes |
|---------|-------|
| The Accountant | Complements Analyst with quantified financial modeling; see R3. Volume/method TBD (R6) |
| The Connector | Special case — replaces Analogist when selected; inherits Append treatment. Volume/quality TBD (R7) |
| The Lawyer | Extreme Black Hat; heavy legal framing. Volume/method TBD (R6) |
| The Politician | Governance/coalition; high topic sensitivity (CV~30.3%). Volume/method TBD (R6) |
| The Simplifier | Convergent/subtractive; may be excluded from Phase 2B entirely. Viability TBD (R6) |
| The Technical Expert | Architecture/dependencies; reinforces existing paradigms. Volume/method TBD (R6) |

---

## Research Questions

Continuing from prior research (RQ1-RQ7):

| ID | Question | Status | Resolution |
|----|----------|--------|------------|
| RQ8 | **Volume optimization:** Does reducing per-persona question count degrade quality? | **Resolved** (V1, V1 take 2, D1, D2) | Persona-specific volumes with effort-level mappings. 8-question compounding floor. Perspective (5-8), Structural (8-12), Analytical (12-15/20). |
| RQ9 | **Roster promotions:** Which promotion candidates earn Tier 1 slots? | **Resolved** (R1, R2) | Audience Advocate and Systems Thinker promoted. Empath and FPT to Tier 2. |
| RQ10 | **Accountant coverage:** Is a financial specialist needed at medium effort? | **Resolved** (R3) | No. Enhance Analyst prompt for financial sub-lens. Accountant available at Tier 3 for topic-gated selection. |
| RQ11 | **Effort-volume mapping:** What are the optimal (persona count, volume) combinations? | **Resolved for Tier 1** (D1, D2) | Full 10-persona roster at all effort levels with per-persona volume ranges. Tier 2/3 mappings pending (R5, R6, R7). |
| RQ12 | **Low effort architecture:** Min tier vs revised generic prompt? | **Resolved** (D1, D2) | Low effort uses full Tier 1 roster at reduced volumes, not a generic prompt or subset. |
| RQ13 | **Pre-clustering impact:** Do per-persona clusters help or hinder synthesis? | Open | Addressed in C1. |
| RQ14 | **Provocateur integration:** Are provocative questions constructively disruptive in Phase 3? | Open | Addressed in P1. |
| RQ15 | **Analyst financial enhancement:** Does prompt refinement improve financial coverage without diluting other analytical dimensions? | Open | Addressed in A1. |
| RQ16 | **Tier 2 volume optimization:** What are the optimal volume ranges and Phase 2C methods for Tier 2 personas at high effort? | **New** | Addressed in R5. |
| RQ17 | **Tier 3 volume optimization:** What are the optimal volume ranges and Phase 2C methods for Tier 3 personas? Is the Simplifier viable for Phase 2B? | **New** | Addressed in R6. |
| RQ18 | **Connector as Analogist replacement:** Does the Connector function effectively at 5-8 questions with Append treatment? What topic characteristics trigger the swap? | **New** | Addressed in R7. |

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
| Decision Gate 1 (volume range) | **Resolved for Tier 1** | Persona-specific volumes with effort-level mappings formalized in D1 and D2. Tier 2/3 volume ranges pending (R5, R6, R7). |
| Decision Gate 2 (roster composition) | **Resolved** | 10-persona Tier 1 roster. AA and ST promoted. No Accountant at Tier 1. Analyst prompt to be enhanced for financial sub-lens. |
| Decision Gate 3 (effort levels — Tier 1) | **Resolved** | Tier 1 effort configurations decided in D1/D2. Low/medium/high all use full roster with different volume ranges. |
| Decision Gate 4 (effort levels — Tier 2/3) | **New — Open** | Depends on R5 (Tier 2), R6 (Tier 3 excluding Connector), R7 (Connector). |

---

## Remaining Investigation Sequence

### Analyst Refinement

**Purpose:** Enhance The Analyst's prompt to improve financial coverage without diluting its core analytical breadth, then regenerate test data to validate the refinement.

| ID | Task | RQs | Input | Priority |
|----|------|-----|-------|----------|
| I-A1 | Analyst prompt refinement and validation | RQ15 | R3 findings, current Analyst persona prompt, Accountant output as reference | High |

**I-A1 steps:**
1. **Draft refinement:** Add a financial sustainability sub-lens to The Analyst's persona prompt. Key additions from R3 analysis:
   - Encourage 2-3 questions with quantified financial reasoning when topic has financial dimensions
   - Include cost-benefit, break-even, and unit economics as explicit analytical tools
   - Add "financial sustainability" as a named dimension alongside existing analytical dimensions
   - Avoid overweighting: the refinement should be a sub-lens, not a transformation of the persona's character
2. **Regenerate test data:** Run refined Analyst across 3 topics at all 3 volume levels (9 runs)
3. **Validate:** Compare refined output against original Analyst output and R3 Accountant benchmarks
   - Does financial coverage improve (target: >20% financial questions for business topics)?
   - Does non-financial analytical quality remain intact?
   - Does the persona maintain its core identity (systematic decomposition, framework construction)?

**Validation criteria:**
- **Success:** Financial coverage increases meaningfully without losing >10% of non-financial analytical dimensions
- **Failure:** Financial questions feel forced, or core analytical territory shrinks significantly
- **Partial:** Financial coverage improves for business topics but not for personal/community topics (acceptable — financial dimensions are topic-dependent)

**Task file:** `tasks/A1_analyst-refinement.md`

---

### Tier 2/3 Volume Optimization

**Purpose:** Establish volume ranges and Phase 2C methods for non-Tier-1 personas.

| ID | Task | RQs | Input | Priority |
|----|------|-----|-------|----------|
| I-R5 | Tier 2 per-persona volume-quality assessment | RQ16 | V1 take 2 methodology, D2 synthesis context | Medium |
| I-R6 | Tier 3 per-persona volume-quality assessment (excl. Connector) | RQ17 | V1 take 2 methodology, D2 synthesis context | Low |
| I-R7 | Connector volume-quality and Analogist comparison | RQ18 | D1 Append strategy, V1 take 2 Analogist baseline | Low |

**I-R5** tests Constraint Flipper, Empath, First Principles Thinker, and Futurist at 3 volume levels across 3 topics. Key questions: volume-quality curve, category assignment (Perspective/Structural/Analytical), and confirmation that synthesis is the correct Phase 2C method. The Constraint Flipper's inversion operation is the primary candidate for Append treatment if any Tier 2 persona warrants it.

**I-R6** tests Accountant, Lawyer, Politician, Simplifier, and Technical Expert. All five are expected to be Synthesis candidates. Includes a viability assessment for the Simplifier — may be excluded from Phase 2B entirely. Notes that standard test topics may not adequately exercise topic-gated personas; a 4th topic may be needed.

**I-R7** tests the Connector as an Analogist replacement. Investigates sub-mode distribution (import vs isomorphism vs recombination) at 5-8 questions, cluster structure separation, and head-to-head comparison with Analogist. Requires a new cross-domain test topic that would naturally trigger the Analogist/Connector swap.

**Task files:** `tasks/R5_tier2-volume-quality.md`, `tasks/R6_tier3-volume-quality.md`, `tasks/R7_connector-volume-quality.md`

#### Decision Gate 4

After R5, R6, and R7, decide:
- **Tier 2 volume ranges and Phase 2C methods** for high effort
- **Tier 3 volume ranges, Phase 2C methods, and selection criteria** for medium/high effort
- **Connector swap criteria** (topic characteristics that trigger Analogist replacement)
- **Simplifier viability** (keep in Tier 3 or exclude from Phase 2B)

---

### Integration Readiness (can proceed in parallel)

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

## Revised Sequencing Diagram

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

    Phase 3: Roster ✓                   Analyst Refinement
    I-R1: AA promoted ✓                 I-A1: Refine prompt, regen, validate
    I-R2: ST promoted ✓
    I-R3: Analyst enhance ✓             Tier 2/3 Volume Optimization
    I-R4: Superseded                    I-R5: Tier 2 volume-quality ──────┐
                                        I-R6: Tier 3 volume-quality ──────┤
    Phase 4 (Tier 1): Effort ✓          I-R7: Connector volume-quality ───┤
    I-E1: Superseded (by D1/D2)                                           │
    I-E2: Superseded (by D1/D2)                                           v
                                                                  Decision Gate 4
                                                                 (Tier 2/3 effort)

                                        Integration Readiness
                                        I-P1: Provocateur integration
                                        I-C1: Clustering vs flat
                                        I-S1: Synthesis gap analysis

    Notes:
    - A1 is independent; can run anytime.
    - R5, R6, R7 can run in parallel with each other.
    - R6 recommended after R5 (findings may inform criteria).
    - Integration Readiness can run in parallel with everything.
```

---

## Expected Outputs

### Per Investigation
Each investigation produces a findings document with:
- Evidence summary (quoted questions, dimension distributions, convergence rates)
- Recommendation with confidence level
- Open questions or caveats

### Final Deliverables (after all gates)
1. **Phase 2B Persona Selection Guide** — in progress at `idea-symphony/references/persona-selection-guide_Phase2B.md`; includes Tier 1/2/3 rosters, volume categories, effort-level mapping, selection logic, and Phase 2C downstream implications
2. **Effort Level Configuration Table** — Tier 1 complete (in selection guide); Tier 2/3 pending R5-R7
3. **Revised Analyst Persona Prompt** — enhanced with financial sub-lens (A1 output)
4. **Synthesis Prompt Revision Specification** — documented requirements for deferred implementation (S1)
5. **Connector Swap Criteria** — topic characteristics for Analogist/Connector selection (R7 output)

---

## Deferred Items

These are tracked but explicitly out of scope for this investigation sequence:

- **Synthesis prompt revision** (Q13 in open questions) — deferred until roster and volume are finalized
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
| 2.5 | `A1_analyst-refinement.md` | I-A1: Analyst prompt refinement and validation | Pending |
| 3 | `R1_audience-advocate-vs-empath.md` | I-R1: Audience Advocate vs Empath | Done |
| 3 | `R2_systems-thinker-vs-fpt.md` | I-R2: Systems Thinker vs First Principles Thinker | Done |
| 3 | `R3_accountant-financial-coverage.md` | I-R3: Accountant financial coverage | Done |
| 3 | `R4_marginal-persona-value.md` | I-R4: Marginal value of 9th/10th persona | Superseded |
| 4 | `E1_effort-configuration.md` | I-E1: Define effort configurations | Superseded (by D1/D2) |
| 4 | `E2_low-effort-approach.md` | I-E2: Low effort approach evaluation | Superseded (by D1/D2) |
| 4 | `R5_tier2-volume-quality.md` | I-R5: Tier 2 volume-quality assessment | **Pending** |
| 4 | `R6_tier3-volume-quality.md` | I-R6: Tier 3 volume-quality assessment (excl. Connector) | **Pending** |
| 4 | `R7_connector-volume-quality.md` | I-R7: Connector volume-quality and Analogist comparison | **Pending** |
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

# Phase 2B Investigation Methodology — Volume, Roster, and Effort Optimization

**Date:** 2026-02-21
**Last updated:** 2026-02-21 (post-V1/R1/R2/R3 decisions)
**Parent:** `docs/dev/2026-02-19_question-generation-research-part2.md`
**Decisions incorporated:**
- `docs/dev/2026-02-20_question-generation-open-questions-responses.md`
- V1 findings: persona-specific volume caps
- R1 decision: promote Audience Advocate
- R2 decision: promote Systems Thinker
- R3 decision: enhance Analyst prompt for financial coverage (no Accountant at Tier 1)

**Prerequisite data:**
- Existing: 23 persona files x 3 topics @ 15-20 questions (`test-runs/symphony-phase2-questions-persona-eval/*_q15-20/`)
- Generated: 12 persona files (8 original Tier 1 + 4 promotion candidates) x 3 topics @ 5-10 questions (I-DG1)
- Generated: 12 persona files (8 original Tier 1 + 4 promotion candidates) x 3 topics @ 10-15 questions (I-DG2)

---

## Executive Summary

Phase 2B research has produced a validated Tier 1 roster of **10 question-generation personas** and established that **persona-specific volume caps** are optimal rather than uniform question counts. Four early investigations (V1, R1, R2, R3) have resolved Decision Gate 2 and partially resolved Decision Gate 1, significantly reshaping the remaining investigation sequence.

**Key decisions made:**
1. **Persona-specific volumes** (V1): Perspective personas (5-10), structural personas (10-15), analytical personas (15-20) — uniform volume targets produce filler for focused personas and truncation for comprehensive ones
2. **Audience Advocate promoted** (R1): 1.35 efficiency ratio, 60% selflessness, cross-volume stable, fills structural equity niche
3. **Systems Thinker promoted** (R2): 8/8 criteria winner, fills Systems dimension gap (6.5% → ~16%), 56-60% unique territory
4. **No Accountant at Tier 1** (R3): Financial gap is real but topic-dependent; addressed by enhancing The Analyst's prompt with a financial sub-lens rather than adding a specialist persona
5. **V2 superseded** (V1 consequence): Aggregate coverage comparison at uniform volumes is moot since the optimal design uses persona-specific volumes

**Remaining investigations:** 8 tasks across volume validation, Analyst refinement, effort mapping, and integration readiness.

**Tier 1 Personas (10):**

| Persona | Question-Mode Cluster | Volume Category | Optimal Range |
|---------|----------------------|-----------------|---------------|
| The Questioner | Analytical Probing | Analytical | 15-20 |
| The Analyst | Analytical Probing | Analytical | 15-20 |
| The Devil's Advocate | Analytical Probing | Structural | 10-15 |
| The Storyteller | Human-Centered/Narrative | Perspective | 5-10 |
| The Analogist | Generative Disruptors | Perspective | 5-10 |
| The Appreciative Inquirer | Generative Disruptors | Perspective | 5-10 |
| The Provocateur | Generative Disruptors | Perspective | 5-10 |
| The Visionary | Generative Disruptors | Perspective | 5-10 |
| The Audience Advocate | Human-Centered/Narrative | Structural | 10-15 |
| The Systems Thinker | Systems/Strategic | Structural | 10-15 |

**Volume categories (from V1):**
- **Perspective** (5-10): Personas that apply a specific lens; higher volumes produce filler and dilute impact
- **Structural** (10-15): Personas that map systems, barriers, or risks; need enough runway to cover facets without becoming pedantic
- **Analytical** (15-20): Comprehensive coverage-driven personas; leverage volume for granular, exhaustive exploration

**Tier 2 Specialist Personas (available at high effort, topic-dependent selection):**

| Persona | Trigger Keywords | Notes |
|---------|-----------------|-------|
| The Accountant | business, nonprofit, budget, startup, pricing, revenue | Complements Analyst with quantified financial modeling; see R3 |
| The Empath | personal, emotional, experience, wellbeing, care | Strong emotional excavation; overlaps with Storyteller/AI at lower volumes; see R1 |
| The First Principles Thinker | fundamental, rethink, from-scratch, core-assumptions | Distinct cognitive mode but overlaps Questioner/Analyst territory; see R2 |

---

## Research Questions

Continuing from prior research (RQ1-RQ7):

| ID | Question | Status | Resolution |
|----|----------|--------|------------|
| RQ8 | **Volume optimization:** Does reducing per-persona question count degrade quality? | **Partially resolved** (V1) | Persona-specific volumes are optimal. Low volume = distillation for perspective personas, truncation for analytical personas. Remaining: validate persona-specific aggregate via V3. |
| RQ9 | **Roster promotions:** Which promotion candidates earn Tier 1 slots? | **Resolved** (R1, R2) | Audience Advocate and Systems Thinker promoted. Empath and FPT to Tier 2. |
| RQ10 | **Accountant coverage:** Is a financial specialist needed at medium effort? | **Resolved** (R3) | No. Enhance Analyst prompt for financial sub-lens. Accountant available at Tier 2 for high effort. |
| RQ11 | **Effort-volume mapping:** What are the optimal (persona count, volume) combinations? | Open | Now informed by persona-specific volume categories. Addressed in E1. |
| RQ12 | **Low effort architecture:** Min tier vs revised generic prompt? | Open | Addressed in E2. |
| RQ13 | **Pre-clustering impact:** Do per-persona clusters help or hinder synthesis? | Open | Addressed in C1. |
| RQ14 | **Provocateur integration:** Are provocative questions constructively disruptive in Phase 3? | Open | Addressed in P1. |
| RQ15 | **Analyst financial enhancement:** Does prompt refinement improve financial coverage without diluting other analytical dimensions? | **New** | Addressed in A1 (new investigation). |

---

## Completed Investigations

### Phase 1: Data Generation — COMPLETED

| ID | Task | Status | Output |
|----|------|--------|--------|
| I-DG1 | Generate q05-10 data for 12 personas | Done | `test-runs/symphony-phase2-questions-persona-eval/*_q05-10/` |
| I-DG2 | Generate q10-15 data for 12 personas | Done | `test-runs/symphony-phase2-questions-persona-eval/*_q10-15/` |

### Phase 2: Volume Optimization — PARTIALLY COMPLETED

| ID | Task | Status | Output |
|----|------|--------|--------|
| I-V1 | Per-persona quality comparison across volumes | **Done** | `findings/V1_per-persona-volume-quality.md` |
| I-V2 | Aggregate coverage comparison | **Superseded by V1** | V1 established persona-specific volumes, making uniform aggregate comparison moot. Residual coverage metrics folded into V3. |

**V1 Key Finding:** The "Persona-Volume Fit" dynamic. Low volumes (5-10) produce high-quality distillation for perspective personas (Visionary, Analogist, Provocateur, Storyteller) but truncation for analytical personas (Questioner, Analyst). Uniform volume targets are suboptimal — different personas need different ranges.

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
- Accountant's domain knowledge (benchmarks, depreciation, insurance) available at Tier 2 for high effort

### Decision Gates — Status

| Gate | Status | Decision |
|------|--------|----------|
| Decision Gate 1 (volume range) | **Partially resolved** | Persona-specific volumes established. Remaining: validate aggregate coverage with mixed volumes via V3; finalize effort-level volume assignments in E1. |
| Decision Gate 2 (roster composition) | **Resolved** | 10-persona Tier 1 roster. AA and ST promoted. No Accountant at Tier 1. Analyst prompt to be enhanced for financial sub-lens. |
| Decision Gate 3 (effort levels) | Open | Depends on V3, A1, E1, E2. |

---

## Remaining Investigation Sequence

### Phase 2 (continued): Volume Validation

| ID | Task | RQs | Input | Priority |
|----|------|-----|-------|----------|
| I-V3 | Volume x persona count trade-off (revised) | RQ8, RQ11 | Persona-specific volume data; compare 10 personas at optimal volumes vs 5 personas at 15-20 | High |

**I-V3 revision notes:** Original framing was "8×5-10 vs 5×15-20 at ~constant total question count." Now revised to compare:
- **Config A:** 10 personas at persona-specific volumes (4 perspective × 7-8 avg + 4 structural × 12-13 avg + 2 analytical × 17-18 avg = ~116 total questions)
- **Config B:** 5 personas at 15-20 each (~85 total questions)
- **Config C:** 10 personas at uniform 10-15 each (~120 total questions, for comparison with persona-specific approach)

This also absorbs V2's residual analytical goals: aggregate coverage metrics, cross-persona redundancy rates, and convergence signals — now measured across the persona-specific configuration rather than uniform volumes.

**Task file:** `tasks/V3_volume-count-tradeoff.md` (needs revision to reflect new configs)

---

### Phase 2.5 (new): Analyst Refinement

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

**Task file:** `tasks/A1_analyst-refinement.md` (new)

---

### Phase 4: Effort Level Mapping (depends on V3, A1)

**Purpose:** Define the (persona count, question volume) configuration for each effort level.

| ID | Task | RQs | Input | Priority |
|----|------|-----|-------|----------|
| I-E1 | Define effort configurations | RQ11, RQ12 | V1 volume categories, V3 trade-off findings, A1 Analyst validation, accumulated roster decisions | High |
| I-E2 | Low effort approach evaluation | RQ12 | Existing generic prompt output + Tier 1 subset q-data | Medium |

**I-E1** is primarily a design/synthesis task. Updated draft configuration incorporating V1 volume categories:

| Effort | Persona Count | Volume Strategy | Estimated Total Qs | Model |
|--------|--------------|-----------------|---------------------|-------|
| Low | TBD (3-4 or generic) | TBD | TBD | TBD |
| Medium | 10 (full Tier 1) | Persona-specific: perspective 5-10, structural 10-15, analytical 15-20 | ~105-140 | Haiku |
| High | 10 Tier 1 + 2-3 Tier 2 specialists | Persona-specific + specialist volumes | ~130-180 | Haiku |

**Open design questions for E1:**
- Should medium effort use the full 10-persona roster or a subset? (V3 may inform this)
- For high effort, should Tier 2 specialists get the same volume as their category peers, or dedicated ranges?
- Should the volume ranges scale between effort levels (e.g., medium perspective = 5-8, high perspective = 8-10)?

**I-E2** evaluates two low-effort approaches:
1. **"Min" tier:** 3-4 Tier 1 personas as subagents (true isolation, persona-specific volumes)
2. **Revised generic prompt:** Single prompt incorporating Tier 1 dimensions (no isolation, faster)

For option 1, we can simulate by selecting 3-4 personas from existing q05-10 data without new generation.

**Task files:** `tasks/E1_effort-configuration.md`, `tasks/E2_low-effort-approach.md`

#### Decision Gate 3

After Phase 4, decide:
- **Final effort level definitions** (feeds into SKILL.md updates)
- **Low effort architecture** (min tier vs revised generic prompt)

---

### Phase 5: Integration Readiness (can proceed in parallel with Phase 4)

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
    COMPLETED                           REMAINING
    ─────────                           ─────────

    Phase 1: Data Gen ✓
    I-DG1: q05-10 ✓
    I-DG2: q10-15 ✓

    Phase 2: Volume Opt                 Phase 2 (cont.)
    I-V1: Per-persona ✓ ──────────────► I-V3: Volume x count trade-off
    I-V2: Superseded                        (revised for persona-specific volumes)
                                                │
    Phase 3: Roster ✓                           │
    I-R1: AA promoted ✓                         │
    I-R2: ST promoted ✓                Phase 2.5: Analyst Refinement
    I-R3: Analyst enhance ✓ ──────────► I-A1: Refine prompt, regen data, validate
    I-R4: Superseded                        │
                                            │
                                            v
                                    Phase 4: Effort Mapping
                                    I-E1: Define configurations
                                    I-E2: Low effort approach
                                            │
                                            v
                                    Decision Gate 3
                                    (effort levels)
                                            │
                                            v
                                    Phase 5: Integration Readiness
                                    I-P1: Provocateur integration
                                    I-C1: Clustering vs flat
                                    I-S1: Synthesis gap analysis

    Note: Phase 5 can run in parallel with Phase 4.
          V3 and A1 can run in parallel with each other.
```

---

## Expected Outputs

### Per Investigation
Each investigation produces a findings document with:
- Evidence summary (quoted questions, dimension distributions, convergence rates)
- Recommendation with confidence level
- Open questions or caveats

### Final Deliverables (after all gates)
1. **Phase 2B Persona Selection Guide** — analogous to Phase 3's `persona-selection-guide.md`; includes Tier 1 roster, Tier 2 specialists, volume categories, and selection logic
2. **Effort Level Configuration Table** — personas x volume x model for low/medium/high
3. **Revised Analyst Persona Prompt** — enhanced with financial sub-lens (A1 output)
4. **Synthesis Prompt Revision Specification** — documented requirements for deferred implementation
5. **Question-Mode Cluster Definitions** — formalized for SKILL.md if validated

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
| 2 | `V2_aggregate-coverage.md` | I-V2: Aggregate coverage comparison | Superseded |
| 2 | `V3_volume-count-tradeoff.md` | I-V3: Volume x persona count trade-off | **Needs revision** |
| 2.5 | `A1_analyst-refinement.md` | I-A1: Analyst prompt refinement and validation | **New — to create** |
| 3 | `R1_audience-advocate-vs-empath.md` | I-R1: Audience Advocate vs Empath | Done |
| 3 | `R2_systems-thinker-vs-fpt.md` | I-R2: Systems Thinker vs First Principles Thinker | Done |
| 3 | `R3_accountant-financial-coverage.md` | I-R3: Accountant financial coverage | Done |
| 3 | `R4_marginal-persona-value.md` | I-R4: Marginal value of 9th/10th persona | Superseded |
| 4 | `E1_effort-configuration.md` | I-E1: Define effort configurations | Pending |
| 4 | `E2_low-effort-approach.md` | I-E2: Low effort approach evaluation | Pending |
| 5 | `P1_provocateur-integration.md` | I-P1: Provocateur integration assessment | Pending |
| 5 | `C1_clustering-vs-flat.md` | I-C1: Pre-clustering vs flat list comparison | Pending |

## Findings File Index

All findings files are in `dev/2026-02-21_symphony-question-generation_part2/findings/`:

| File | Investigation | Key Finding |
|------|--------------|-------------|
| `V1_per-persona-volume-quality.md` | I-V1 | Persona-specific volume caps; 3 volume categories |
| `R1_audience-advocate-vs-empath_claude.md` | I-R1 | Promote AA (1.35 efficiency, 60% selfless, cross-volume stable) |
| `R2_systems-thinker-vs-fpt.md` | I-R2 | Promote ST (8/8 criteria, fills Systems gap, 56-60% unique) |
| `R3_accountant-financial-coverage.md` | I-R3 | Enhance Analyst; Accountant to Tier 2 (topic-dependent gap) |

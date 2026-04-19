# Phase 2C Synthesis Investigation Methodology

**Date:** 2026-03-01
**Parent:** Voice memo `dev/!voice-memos/2026-02-27_symphony-phases2C&2B.md`
**Prior work:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md` (Phase 2B research — all persona/volume/tier decisions finalized)
**Depends on:** All Phase 2B findings (V1, D1, D2, R1-R8, A1) as resolved inputs

---

## Executive Summary

Phase 2B research established a validated roster of 19 question-generation personas across three tiers, with persona-specific volume ranges, effort-level mappings, and a Synthesize/Append split for downstream handling. This investigation focuses on the **synthesis step** (Phase 2C) that consolidates persona-generated questions into a final question set for brainstorming. Additionally, we test whether the synthesizer can also handle **brainstorming persona selection** (currently a separate Phase 2C subagent) or whether that task should remain separate.

**Core question:** How well can we get the synthesis prompt to preserve the quality, diversity, and persona representation of the full question universe while producing a coherent, well-organized output?

---

## Research Questions

| ID | Question | Status |
|----|----------|--------|
| SQ1 | **Baseline quality:** What does an ideal synthesis look like for each effort level? What questions should be included, what clusters should form, and how should persona voices be represented? | Open |
| SQ2 | **Compaction rate:** How much do questions compress during synthesis? Is there a target compaction ratio by effort level? | Open |
| SQ3 | **Persona representation:** After synthesis, are all Synthesize-group personas meaningfully represented? Are any voices systematically lost? | Open |
| SQ4 | **Append mechanics:** Does round-robin cluster selection for Append personas produce the expected subset? Are the appended questions well-integrated with synthesized clusters? | Open |
| SQ5 | **Synthesis prompt quality:** Which synthesis prompt variant yields results closest to the established baselines? | Open |
| SQ6 | **Persona selection consolidation:** Can the synthesis subagent also produce quality brainstorming persona recommendations, or does this overload degrade synthesis quality? | Open |

---

## Phase 1: Test Data Assembly

### Goal

Create 30 test files (10 topics x 3 effort levels) from existing Phase 2B test data. Each file represents what the Phase 2C synthesis step would actually receive as input.

### Source Data

All source data is in `test-runs/symphony-phase2-questions-persona-eval/`.

Existing data per persona per topic:
- `*_q05-10/` — 5-10 question variants
- `*_q10-15/` — 10-15 question variants
- `*_q15-20/` — 15-20 question variants

### Assembly Rules

For each test file, include the correct personas at the correct volume ranges per the finalized effort-level mapping from `persona-selection-guide_Phase2B.md`:

**Low effort (10 files):**
- All 10 Tier 1 personas
- Analytical personas (Questioner, Analyst) at low-effort volumes (10-15, 8-12)
- Structural personas at low-effort volumes (8-12)
- Perspective personas at 5-8 (full generation — append selection happens during synthesis)
- No Tier 2 or Tier 3

**Medium effort (10 files):**
- All 10 Tier 1 personas at medium-effort volumes
- No Tier 2
- 0-1 Tier 3 persona (selected per topic based on known triggers from Phase 2B research)
- Connector replaces Analogist where topic triggers swap (per R7 findings)

**High effort (10 files):**
- All 10 Tier 1 personas at high-effort volumes
- All 4 Tier 2 personas at high-effort volumes
- 0-2 Tier 3 personas (selected per topic)
- Connector replaces Analogist where topic triggers swap

### Assembly Process

| Step | Task | Output |
|------|------|--------|
| A1 | Map each topic to expected Tier 3 selections and Connector/Analogist swap decisions | `data-prep/topic-persona-mapping.md` |
| A2 | For each of the 30 combinations, identify the source files and volume slices needed | `data-prep/assembly-plan.md` |
| A3 | Assemble concatenated test files, preserving persona attribution headers | `test-data/[topic-slug]_[effort].md` (30 files) |
| A4 | Generate per-file analytics: persona count, total questions, questions per persona, volume category distribution | `data-prep/assembly-analytics.md` |

### Volume Slicing

Where existing data doesn't exactly match finalized volume targets:
- If the existing file has *more* questions than the target range, truncate to the range ceiling (take the first N questions)
- If the existing file has *fewer* questions than the target floor, use the full file and note the shortfall
- Prefer `q10-15` data for Structural/Analytical personas and `q05-10` data for Perspective personas as the best volume-range matches

---

## Phase 2: Baseline Establishment

### Goal

For each of the 30 test files, establish what an ideal synthesis output would look like — the "full universe" baseline against which synthesis prompt results are compared.

### Investigation Tasks

| ID | Task | Input | Output |
|----|------|-------|--------|
| B1 | **Thematic clustering analysis:** For each test file, cluster questions by theme across all personas. Identify natural topic groupings. | 30 test files | `baselines/[topic]_[effort]_clusters.md` (30 files) |
| B2 | **Cross-persona convergence mapping:** For each test file, identify which questions from different personas address the same concern. Map convergence pairs/groups. | 30 test files | `baselines/[topic]_[effort]_convergence.md` (30 files) |
| B3 | **Expected synthesis targets:** For each test file, define what the ideal synthesized output should contain — expected cluster count, expected question count, which convergent questions should merge, which unique questions should survive. | B1 + B2 outputs | `baselines/[topic]_[effort]_target.md` (30 files) |
| B4 | **Append baseline:** For each test file, define the expected append subset — which Perspective/Append-group questions should be selected via round-robin, and how they should be tagged and integrated. | 30 test files + D1 append rules | `baselines/[topic]_[effort]_append-target.md` (30 files) |

### Analysis Dimensions

For each test file, the baseline should characterize:

1. **Cluster structure:** How many natural topic clusters? What are they?
2. **Convergence density:** What percentage of questions have convergent counterparts from other personas?
3. **Persona representation:** Which personas contribute to which clusters? Any clusters dominated by one persona?
4. **Synthesize vs. Append distribution:** How many questions go through synthesis vs. direct append?
5. **Expected output size:** Target question count after synthesis + append, by effort level
6. **Dimension coverage:** Strategic / Tactical / Creative / Analytical / Human-centered balance

### Feasibility Note

30 full baselines is substantial work. Consider whether analyzing at the **topic level** (10 baselines that note effort-level variations) is more efficient than 30 independent baselines. The per-topic approach may be sufficient if effort-level differences are primarily about volume and persona count rather than fundamentally different cluster structures.

---

## Phase 3: Synthesis Prompt Testing

### Goal

Test synthesis prompt variants against the established baselines. Measure how well each variant preserves the quality characteristics identified in Phase 2.

### Starting Point

The current synthesis prompt is at `idea-symphony/prompts/phase2-question-synthesis.md`. This was written before the Phase 2B research established the Synthesize/Append split, persona-specific volumes, and tiered roster. It needs revision.

### Prompt Variants

| Variant | Description | Key Differences |
|---------|-------------|-----------------|
| S-V1 | **Current prompt + Append instructions** | Minimal change: add Append handling to existing prompt |
| S-V2 | **Restructured with explicit Synthesize/Append split** | Separate processing paths for the two groups; explicit convergence criteria for Synthesize group; round-robin selection rules for Append group |
| S-V3 | **Baseline-informed with cluster guidance** | V2 + expected cluster structure hints derived from Phase 2 baselines; persona representation requirements |

### Testing Protocol

For each prompt variant:

1. Run synthesis on all 30 test files (or a representative subset: 3 topics x 3 effort levels = 9 runs)
2. Compare output to baseline along these dimensions:

| Metric | How Measured |
|--------|-------------|
| **Question preservation rate** | % of baseline-expected questions that appear in synthesized output (merged or verbatim) |
| **Compaction ratio** | Input question count / output question count |
| **Cluster alignment** | % of synthesized clusters that match baseline cluster themes |
| **Persona representation** | For each Synthesize-group persona: % of their questions represented in output |
| **Append fidelity** | % of expected append selections that appear correctly in output |
| **Dimension balance** | Distribution across strategic/tactical/creative/analytical/human-centered vs. baseline |
| **Convergence utilization** | % of baseline convergence pairs that are successfully merged |
| **Unique question survival** | % of baseline-flagged unique-valuable questions that survive synthesis |

### Iteration

After evaluating all three variants:
- Identify the strongest variant
- Refine it based on observed weaknesses
- Test refined version on remaining topics not in the initial subset
- Continue until synthesis quality is consistent across topics and effort levels

---

## Phase 4: Persona Selection Consolidation Test

### Goal

Determine whether the synthesis subagent can also produce quality brainstorming persona recommendations (currently Phase 2C's separate subagent task), or whether the additional cognitive load degrades synthesis quality.

### Test Design

| Condition | Description |
|-----------|-------------|
| **Condition A: Separate** | Synthesis subagent produces synthesized questions only. Separate subagent handles persona selection using `persona-selection-guide_Phase2C.md`. (Current architecture.) |
| **Condition B: Consolidated** | Single subagent produces both synthesized questions AND persona recommendations. Receives both synthesis prompt and persona selection guidance. |

### Evaluation

Run both conditions on the same 9 test files (3 topics x 3 effort levels).

**Synthesis quality comparison (A vs. B):**
- Does Condition B synthesis quality degrade relative to Condition A?
- Measure using the same metrics from Phase 3

**Persona selection quality comparison:**
- Do Condition B persona recommendations match expected selections?
- Are the rationales well-grounded in the question content?
- Compare against Condition A's separate subagent recommendations

### Decision Criteria

- If synthesis quality is comparable (within ~5% on key metrics): **consolidate** (Condition B) — simpler architecture, better context utilization
- If synthesis quality degrades meaningfully (>10% on key metrics): **keep separate** (Condition A) — synthesis quality is more important than architectural simplicity
- If borderline (5-10%): test with additional topics before deciding

---

## Sequencing

```
Phase 1: Test Data Assembly
├── A1: Topic-persona mapping
├── A2: Assembly plan
├── A3: Assemble 30 test files
└── A4: Assembly analytics

Phase 2: Baseline Establishment (can start after A3)
├── B1: Thematic clustering
├── B2: Cross-persona convergence mapping
├── B3: Expected synthesis targets
└── B4: Append baselines

Phase 3: Synthesis Prompt Testing (after Phase 2)
├── S-V1: Current + append
├── S-V2: Restructured split
├── S-V3: Baseline-informed
└── Refinement iterations

Phase 4: Persona Selection Consolidation (after Phase 3 — needs final synthesis prompt)
├── Condition A: Separate
├── Condition B: Consolidated
└── Decision
```

**Parallelism with Phase 2B orchestrator selection research:**
Phases 1-3 here run independently of the orchestrator selection research. Phase 4 also runs independently. The two streams share test data (the 10 topics) and Phase 2B findings but have no blocking dependencies on each other.

---

## Expected Outputs

### Per-Phase Deliverables

| Phase | Deliverable |
|-------|-------------|
| Phase 1 | 30 assembled test files + analytics |
| Phase 2 | 30 baseline files (clusters, convergence maps, targets) |
| Phase 3 | Evaluated synthesis prompt variants + final refined prompt |
| Phase 4 | Consolidation decision (separate vs. consolidated persona selection) |

### Final Deliverables

1. **Revised synthesis prompt** — `idea-symphony/prompts/phase2-question-synthesis.md`
2. **Consolidation decision** — whether persona selection merges into synthesis or stays separate
3. **Synthesis quality benchmarks** — expected compaction ratios and preservation rates by effort level
4. **Integration specification** — what changes are needed in SKILL.md to incorporate findings

---

## Relationship to Remaining Phase 2B Items

The Phase 2B methodology lists three remaining integration readiness items:

| Item | Relationship to This Investigation |
|------|-----------------------------------|
| **P1: Provocateur integration** | Tangential — P1 tests Phase 3 response to provocateur questions, not Phase 2C synthesis. Can run independently. |
| **C1: Clustering vs. flat** | **Directly relevant.** C1 tests whether per-persona clustering helps or hinders synthesis. Our Phase 2 baseline work will provide data on this. C1 could be folded into Phase 2 of this investigation as a sub-task of B1. |
| **S1: Synthesis gap analysis** | **Subsumed.** S1 was a documentation task to compile synthesis prompt weaknesses. This investigation goes further — it tests and resolves those weaknesses. S1's deliverable becomes Phase 3's input (the current prompt's known issues). |

**Recommendation:** Fold C1 into Phase 2 (B1 clustering analysis naturally answers C1's question). Mark S1 as subsumed by this investigation. P1 remains independent and can run in parallel.

---

**Last Updated:** 2026-03-01
**Based on:** Voice memo (2026-02-27), Phase 2B methodology and all findings (V1, D1, D2, R1-R8, A1)

# Phase 2C Synthesis — Baseline Establishment

**Date:** 2026-03-01
**Parent:** `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md`
**Inputs:**
- Parent methodology — `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md` (Phase 2 Baseline Establishment, B1–B4 tasks, Analysis Dimensions)
- TDA1 assembled test files — `dev/2026-03-01_symphony-phase2C-synthesis/test-data/[topic-slug]_[effort].md` (30 files, output of TDA1)
- TDA1 summary — `dev/2026-03-01_symphony-phase2C-synthesis/findings/TDA1_test-data-assembly.md` (shortfall log + handoff notes)
- Persona selection guide — `idea-symphony/references/persona-selection-guide_Phase2B.md` (Synthesize/Append split; dimension assignments per persona)
- Append rules — `dev/2026-02-21_symphony-question-generation_part2/findings/D1_dimension-append-rules.md` (round-robin append selection logic)
- Dimension coverage — `dev/2026-02-21_symphony-question-generation_part2/findings/D2_dimension-coverage.md` (Strategic/Tactical/Creative/Analytical/Human-centered dimension categories)

---

## Background

### Context

SP1 will evaluate synthesis prompt variants by comparing their outputs to ideal syntheses. This task establishes those ideals — the "full universe" baselines for what each of the 30 test files *should* produce when synthesized correctly. These baselines are the scoring reference for SP1 and PC1; their quality directly bounds the quality of Phase 3 and Phase 4 results.

The Phase 2B C1 question ("does per-persona clustering help or hinder synthesis?") is folded into this task per methodology.md — the cluster-structure analysis in B1 naturally produces a C1-ready comparison.

### What We Know

From Phase 2B findings and the persona selection guide:

| Dimension | Finalized Rule |
|---|---|
| **Synthesize vs. Append split** | Most personas are Synthesize (questions merge with convergent counterparts); Politician, Perspective personas, Connector are Append (subset selected via round-robin, not merged) |
| **Append selection** | Round-robin across clusters: for each synthesized cluster, one Append-group question is selected per round until quota is met |
| **Dimension categories** | Strategic / Tactical / Creative / Analytical / Human-centered (D2) — each persona has primary + secondary dimension affinity |
| **Expected output size** | Target question count by effort level — derived during B3 from input count + expected compaction ratio |

From methodology.md's Analysis Dimensions:

| Dimension | Baseline Question |
|---|---|
| Cluster structure | How many natural topic clusters? What are they? |
| Convergence density | % of questions with convergent counterparts from other personas |
| Persona representation | Which personas contribute to which clusters? Any single-persona dominated clusters? |
| Synthesize vs. Append distribution | Synthesize count / Append count per file |
| Expected output size | Target question count after synthesis + append, by effort level |
| Dimension coverage | Strategic / Tactical / Creative / Analytical / Human-centered balance |

### Research Questions

- **RQ-BL1a (SQ1):** What is the natural thematic cluster structure of each test file, and how does cluster count vary with effort level and topic?
- **RQ-BL1b (SQ1):** Which questions from different personas address the same concern (convergence pairs/groups)? What is the convergence density per test file?
- **RQ-BL1c (SQ1, SQ2):** What is the ideal synthesized output for each test file — expected cluster count, expected question count, which convergent questions merge, which unique questions survive, expected compaction ratio?
- **RQ-BL1d (SQ1, SQ4):** What is the ideal Append subset per test file — which Append-group questions should be selected via round-robin, how are they tagged and integrated with synthesized clusters?
- **RQ-BL1e (SQ3):** Per persona, what is the expected representation in the synthesized output (at least N questions represented, spread across M clusters)?
- **RQ-BL1f (folded C1):** Does per-persona grouping (the current test-file structure) vs. flat pooling (all questions mixed) produce meaningfully different cluster structures? Which is a better synthesis input?

---

## Investigation Task

### I-BL1: Establish Ideal-Synthesis Baselines for 30 Test Files

**Key question:** For each of the 30 test files, what does ideal synthesis look like — clusters, convergences, target output, append subset — such that SP1 can score variant outputs against a deterministic reference?

**Research questions addressed:** RQ-BL1a–f (methodology SQ1, SQ2, SQ3, SQ4)

**Execution model:** Fan-out by topic. 10 Opus subagents in parallel, each handling one topic across all three effort levels (low/medium/high). Each per-topic subagent produces the four baseline artifacts (clusters, convergence, target, append-target) for its topic. A cross-topic orchestrator synthesis subagent then compiles patterns and folds the C1 comparison.

Per-topic is the default (per methodology's feasibility note); per-file (30 subagents) is reserved as a discussion-question escalation.

### Test Data

TDA1's 30 assembled test files. Each per-topic subagent reads its 3 files (low/medium/high for its topic), the append rules (D1), and the dimension coverage (D2).

### Subagent Design

**Per-topic baseline subagent (10 subagents, one per topic):**

Each reads 3 test files + D1 + D2 + the relevant section of the persona selection guide (Synthesize/Append split), and produces four artifact types × 3 effort levels = 12 baseline artifacts per topic (or optionally bundled into effort-level sections within a single file per artifact type — see `discussion-questions.md` Q5).

**Cross-topic synthesis subagent (1 subagent):**

Reads all 10 per-topic findings + all 120-or-40 baseline artifacts and compiles cross-cutting patterns, dimension benchmarks, C1 recommendation, and SP1 readiness notes.

### Per-Topic Subagent Prompt

Spawn each per-topic subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt. `{TOPIC_NAME}` is substituted per subagent (habit-tracker, space-party, tool-library, food-truck, property-management, youth-mentorship, school-consolidation, mobile-app, wearable-device, career-change).

````
You are establishing ideal-synthesis baselines for the Phase 2C synthesis investigation. You are handling one topic, {TOPIC_NAME}, across three effort levels (low, medium, high). Your output is the scoring reference for SP1 — if your baselines are wrong, SP1's variant scoring is wrong.

## Task

Read the following files in full:

1. `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md` — especially Phase 2 Baseline Establishment (B1–B4) and Analysis Dimensions.
2. `dev/2026-03-01_symphony-phase2C-synthesis/test-data/{TOPIC_NAME}_low.md`, `{TOPIC_NAME}_medium.md`, `{TOPIC_NAME}_high.md` — the three assembled test files for your topic.
3. `dev/2026-03-01_symphony-phase2C-synthesis/findings/TDA1_test-data-assembly.md` — any shortfall/handoff notes affecting your topic.
4. `idea-symphony/references/persona-selection-guide_Phase2B.md` — Synthesize/Append split for each persona (determines which questions go through synthesis vs. append).
5. `dev/2026-02-21_symphony-question-generation_part2/findings/D1_dimension-append-rules.md` — round-robin append selection rules.
6. `dev/2026-02-21_symphony-question-generation_part2/findings/D2_dimension-coverage.md` — Strategic / Tactical / Creative / Analytical / Human-centered dimension categories and per-persona primary affinities.

## Deliverables (per effort level: low, medium, high)

For each of your three test files, produce four artifacts:

### B1 Artifact: Thematic Clusters

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/baselines/{TOPIC_NAME}_{EFFORT}_clusters.md`

Structure:

```markdown
# {TOPIC_NAME} — {EFFORT} — Cluster Baseline

**Input file:** test-data/{TOPIC_NAME}_{EFFORT}.md
**Total questions in input:** N
**Natural cluster count:** C

## Cluster 1: [Theme Name]
**Description:** [2–3 sentence summary of the theme]
**Question count in cluster:** K
**Contributing personas:** Persona1 (3 questions), Persona2 (2), …
**Primary dimension:** [Strategic | Tactical | Creative | Analytical | Human-centered]
**Sample questions (up to 5):**
- Q1 [Persona1]
- Q2 [Persona2]
- …

## Cluster 2: …

…

## Orphan Questions (Not Cluster-Forming)

[Questions that don't fit any cluster; typically unique Append-group questions or provocations]

## C1 Comparison (Per-Persona vs. Flat Pooling)

Run the clustering exercise twice:
- **Per-persona clustering (current structure):** cluster the questions as they appear in the test file (grouped by persona)
- **Flat pooling:** imagine all questions stripped of persona labels and shuffled — re-cluster

Report:
- Are the cluster sets substantially different between the two approaches?
- Does per-persona structure bias the clustering toward persona-aligned clusters? Or does flat pooling reveal cross-persona themes that per-persona grouping masks?
- Recommendation for SP1's prompt: should variants receive questions grouped by persona (current) or flat?
```

### B2 Artifact: Cross-Persona Convergence Map

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/baselines/{TOPIC_NAME}_{EFFORT}_convergence.md`

Structure:

```markdown
# {TOPIC_NAME} — {EFFORT} — Convergence Baseline

**Convergence pairs/groups:** P
**Questions participating in convergence:** Q (of N total, {Q/N}%)
**Convergence density:** {Q/N}% of questions have a convergent counterpart from another persona

## Convergence Group 1
**Theme:** [what the converging questions share]
**Cluster:** [links to which B1 cluster]
**Questions:**
- [Persona1] [Q1 text]
- [Persona2] [Q2 text]
- [Persona3] [Q3 text]
**Merge recommendation:** [Single merged question text proposed for synthesis output, OR "Preserve all distinct (persona voices too different to merge)"]

## Convergence Group 2
…

## Unique Questions (No Convergent Counterpart)
**Count:** U (of N total)
[List unique questions; these are candidates to survive synthesis intact]
```

### B3 Artifact: Expected Synthesis Target

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/baselines/{TOPIC_NAME}_{EFFORT}_target.md`

Structure:

```markdown
# {TOPIC_NAME} — {EFFORT} — Synthesis Target

**Input question count:** N
**Expected synthesis output count:** M (range {M_low}–{M_high})
**Expected compaction ratio:** N/M = {ratio}
**Expected cluster count in output:** C (matches B1)

## Target Output Structure

For each of the C clusters from B1:

### Cluster [Name]
**Expected questions in output:** K_out (from K_in input)
**Must include:**
- [Question text or merged-question text that MUST appear — flagged as high-value unique or well-converged merger]
**Should include:**
- [Questions that ought to appear but lower priority]
**Optional:**
- [Questions that could appear but are not essential]

## Questions Expected to Be Dropped
[Input questions that SHOULD NOT survive synthesis — typically redundant convergences or low-quality outliers. Flag each with rationale.]

## Persona Representation Requirements
[For each Synthesize-group persona, the minimum number of their questions that MUST be represented (either verbatim or within mergers) in the output. Defines SQ3 scoring.]

## Dimension Balance Target
Strategic: X%
Tactical: Y%
Creative: Z%
Analytical: W%
Human-centered: V%
(Sum ~100%. Based on input dimension distribution + any effort-level adjustments.)
```

### B4 Artifact: Append Target

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/baselines/{TOPIC_NAME}_{EFFORT}_append-target.md`

Structure:

```markdown
# {TOPIC_NAME} — {EFFORT} — Append Target

**Append-group personas in input:** [list]
**Append questions available:** A_available
**Append quota (from D1 round-robin rules):** A_quota
**Expected selection:** A_quota questions selected via round-robin over B1 clusters

## Round-Robin Selection Walkthrough

Round 1:
- Cluster 1 → [Persona] [Question text]
- Cluster 2 → [Persona] [Question text]
- Cluster 3 → [Persona] [Question text]
- …
Round 2:
- Cluster 1 → [next Append question]
- …
(Continue until A_quota reached)

## Expected Append Output

Final selected Append questions (count A_quota):
1. [Cluster, Persona, Question, Tag]
2. …

## Integration Notes

How appended questions are integrated with synthesized clusters — tagged as [Perspective: persona-name] or similar per D1 rules. Confirm this integration style is visible in expected output.

## Appended Questions Expected to Be Dropped
Any Append-group questions that should NOT appear in the output (beyond the quota, or low-quality outliers).
```

## Summary Finding (Topic-Level)

After producing all 12 artifacts for your topic, write a summary at:
`dev/2026-03-01_symphony-phase2C-synthesis/findings/BL1_baseline-establishment_{TOPIC_NAME}.md`

Document:

1. **Cross-effort comparison** — how do clusters evolve across low → medium → high? Do new clusters emerge or existing ones expand?
2. **Convergence density by effort** — does convergence density increase with persona count (more personas → more overlap) or decrease (more personas → more distinct voices)?
3. **Persona representation challenges** — any persona whose voice is particularly hard to preserve? Flag for SP1 attention.
4. **Append mechanics observations** — does round-robin feel natural for this topic's cluster set, or does it produce awkward pairings? Flag for SP1 and PC1.
5. **C1 recommendation (per-topic)** — does per-persona vs. flat pooling matter for this topic? Subagent's recommendation.
6. **Open concerns for cross-topic synthesis** — anything the topic-level analysis can't resolve (e.g., "is 30% convergence density high or normal?") — the cross-topic subagent will aggregate.

## Constraints

- Baselines are reference answers. Be deterministic and defensible. Don't invent merge texts that aren't plausibly anchored in the convergent questions.
- Preserve persona attribution throughout. B1 must show persona contribution per cluster; B3 must flag per-persona representation requirements.
- When convergent questions have persona voices too different to merge (e.g., Visionary's reframing vs. Analyst's metric), choose "preserve all distinct" — don't collapse different framings into one bland merger.
- For the Append target (B4), strictly follow D1's round-robin rules. Do not substitute your own selection heuristic.
- When you encounter ambiguity (e.g., a question could belong to two clusters), document it rather than arbitrarily choosing — SP1 will use these ambiguities as part of its scoring.
````

### Cross-Topic Synthesis Subagent Prompt

After all 10 per-topic subagents complete, spawn one cross-topic orchestrator synthesis subagent (**Opus model**, `general-purpose` type):

````
You are compiling cross-topic baseline patterns for the Phase 2C synthesis investigation. The 10 per-topic baseline subagents have completed; your job is to aggregate patterns, establish dimension benchmarks, produce the C1 recommendation, and prepare handoff notes for SP1.

## Task

Read:

1. `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md`
2. `dev/2026-03-01_symphony-phase2C-synthesis/findings/BL1_baseline-establishment_*.md` — all 10 per-topic summaries
3. All 120-or-40 files under `dev/2026-03-01_symphony-phase2C-synthesis/baselines/` — for spot-checking and aggregation
4. `dev/2026-03-01_symphony-phase2C-synthesis/findings/TDA1_test-data-assembly.md` — for shortfall weighting

## Deliverable

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/findings/BL1_baseline-establishment.md`

Document:

1. **Cluster-count distribution**
   - Distribution of cluster counts across 30 baselines by effort level
   - Mean/median cluster count at low / medium / high
   - Topics with unusual cluster structures (very few or very many clusters) — flag for SP1 caution

2. **Convergence density benchmarks**
   - Mean/median convergence density by effort level
   - Topics with unusually high or low convergence density — explain why (persona diversity, topic breadth)
   - Effect of adding Tier 2 personas at high effort: does convergence density increase or decrease?

3. **Compaction ratio benchmarks**
   - Mean/median expected compaction ratio by effort level (input Q count / expected output Q count)
   - Setting SP1's "acceptable compaction" band — define what compaction is too aggressive vs. too conservative

4. **Dimension balance benchmarks**
   - Distribution of Strategic/Tactical/Creative/Analytical/Human-centered percentages across 30 baselines
   - Topic-driven vs. effort-driven dimension shifts

5. **Persona representation benchmarks**
   - Per-persona minimum representation requirements, aggregated across topics — e.g., "Visionary should have at least 2 questions represented in 100% of synthesis outputs"
   - Personas with systematically low representation (e.g., because their voice is too niche) — flag as SP1 attention areas

6. **C1 Recommendation (Clustering vs. Flat)**
   - Aggregate the per-topic C1 recommendations
   - Decide: should SP1 variants receive questions grouped by persona, flat, or either?
   - Rationale + any topic-dependent caveats

7. **Append mechanics aggregate**
   - Does round-robin produce natural Append selections across all 30 files, or only on certain topic types?
   - Flag any systematic Append awkwardness for SP1 to address in variant design

8. **SP1 readiness and subset recommendations**
   - Are there topics that are unusually difficult to synthesize? Exclude from SP1's initial 9-file subset?
   - Are there topics that are representatively diverse (good candidates for SP1's 9-file subset)?
   - Which 3 topics should SP1 use for its initial subset per `discussion-questions.md` Q9?

9. **Open concerns forwarded to SP1**
   - Any scoring ambiguities that SP1's scoring subagent needs to adjudicate (e.g., "preserve all distinct" convergences may not be reliably scorable)

## Constraints

- Produce quantitative benchmarks wherever possible — means, medians, ranges. SP1 scoring depends on these being numerical.
- Cite specific baseline files when a pattern is topic-specific (`baselines/property-management_high_clusters.md`).
- Do not override per-topic subagent conclusions; aggregate and resolve conflicts, but flag conflicts you can't resolve.
- The C1 recommendation is load-bearing for SP1 prompt design — spend effort on it.
````

### Batching Strategy

1. **Per-topic subagents (10 parallel):** Launch in batches subject to the 5-concurrent limit → 2 batches of 5. Each subagent takes ~30–60 minutes given 3 files × 4 artifact types.
2. **Cross-topic synthesis (1 subagent):** After all 10 per-topic subagents complete.

### Expected Output

- **Per-topic summaries:** `findings/BL1_baseline-establishment_{TOPIC_NAME}.md` × 10
- **Baseline artifacts:** `baselines/{TOPIC_NAME}_{EFFORT}_{clusters,convergence,target,append-target}.md` — 120 files if per-file granularity, 40 if per-topic (see `discussion-questions.md` Q5)
- **Cross-topic compiled findings:** `findings/BL1_baseline-establishment.md`

---

## Dependency Notes

- **Depends on:** TDA1 complete (30 test files + shortfall log). TDA1's shortfall log affects per-topic subagent confidence weighting — subagents should down-weight baselines for topic-effort cells flagged as shortfall in TDA1.
- **Blocks:** SP1 (scoring reference); PC1 (also uses these baselines transitively via SP1's refined prompt).
- **Data generation:** None required. All inputs are existing files.
- **Parallelism:** Independent of Phase 2B investigation. No cross-investigation coordination needed after TDA1's 2B-side dependency is resolved.

## Priority

**High** — Hard blocker for SP1. The quality of SP1's results is bounded by the quality of BL1's baselines. Higher latency than TDA1 (10 parallel subagents × ~45 min + cross-topic pass) but still achievable in a single working session.

# Phase 2C Synthesis — Persona Selection Consolidation Test

**Date:** 2026-03-01
**Parent:** `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md`
**Inputs:**
- Parent methodology — `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md` (Phase 4 Test Design, Evaluation, Decision Criteria)
- SP1 final refined synthesis prompt — `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_refined-synthesis-prompt.md`
- SP1 compiled findings — `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_synthesis-prompt-testing.md` (for scoring harness reuse)
- TDA1 assembled test files — `dev/2026-03-01_symphony-phase2C-synthesis/test-data/[topic-slug]_[effort].md`
- BL1 baselines — `dev/2026-03-01_symphony-phase2C-synthesis/baselines/*` (for scoring Condition A vs. B synthesis quality)
- Brainstorming persona selection guide — `idea-symphony/guidance/phase2D_brainstorming-personas.md` (Condition A's separate subagent reference; Condition B integrates this inline)
- Current SKILL.md — `idea-symphony/SKILL.md` (Phase 2B Step 2.4 — current separate persona selection architecture; for integration implications)

---

## Background

### Context

The current Idea Symphony architecture (SKILL.md Phase 2B Step 2.3 + 2.4) treats synthesis and brainstorming-persona-selection as two separate subagents. This task tests whether a single consolidated subagent — one that produces both synthesized questions AND persona recommendations in a single pass — produces comparable quality. If yes, the architecture simplifies and context is better utilized. If no, the separation stays.

Phase 4 is the final empirical test of this investigation. Its output determines the architecture of the final skill.

### What We Know

From methodology.md and SKILL.md:

| Dimension | Current State | Phase 4 Test |
|---|---|---|
| **Synthesis** | Produced by dedicated subagent using `phase2-question-synthesis.md` prompt | Same in both conditions — uses SP1 refined prompt |
| **Persona selection** | Produced by separate subagent using `persona-selection-guide_Phase2C.md` (concentric-circles model per topic cluster) | A: Separate (current). B: Consolidated (single subagent with both tasks). |
| **Decision criteria** | — | Synthesis quality within ~5% → consolidate. Degrades >10% → separate. Borderline 5–10% → expand topic pool. |

### Research Questions

- **RQ-PC1a (SQ6):** Does Condition B (consolidated) synthesis quality degrade meaningfully vs. Condition A (separate) across the 8 SP1 metrics?
- **RQ-PC1b (SQ6):** Does Condition B's persona recommendation quality match Condition A's?
- **RQ-PC1c:** Are Condition B's persona recommendations more or less grounded in the synthesis output than Condition A's (which processes the raw test file rather than the synthesized output)?
- **RQ-PC1d:** What architectural implications (SKILL.md changes) follow from the decision?

---

## Investigation Task

### I-PC1: Persona Selection Consolidation Test

**Key question:** Can the synthesis subagent also produce quality brainstorming persona recommendations, or does the additional cognitive load degrade synthesis quality below the methodology-defined threshold?

**Research questions addressed:** RQ-PC1a–d (methodology SQ6)

**Execution model:** Two condition tracks run in parallel on the same 9-file subset. Scoring subagent compares A vs. B on synthesis quality and persona-recommendation quality. Decision subagent applies methodology's decision criteria.

Default subset: the same 9-file subset SP1 used for initial variant testing (3 topics × 3 effort levels — tool-library, mobile-app, school-consolidation). Under methodology's borderline rule, if A-vs-B synthesis quality falls in the 5–10% band, expand to the remaining 7 topics × 3 efforts = 21 additional cells in priority order with early-stop at 18 total, per `discussion-questions-responses.md` Q13.

### Test Data

SP1's final refined synthesis prompt (one input). 9 test files from TDA1 (or expanded set in borderline case). Brainstorming persona selection guide for Condition A and as an inline reference for Condition B.

### Subagent Design

**Condition A generation (2 subagents per test file):**

1. Synthesis subagent: runs SP1 refined prompt on the test file, produces synthesized questions (only)
2. Persona-selection subagent: reads the test file (raw, per current architecture) + persona-selection-guide_Phase2C.md, produces persona recommendations (only)

Outputs: `findings/PC1_runs/condition-a/{topic}_{effort}_synthesis.md` + `{topic}_{effort}_personas.md`

**Condition B generation (1 subagent per test file):**

Single consolidated subagent: receives SP1 refined prompt + persona-selection-guide_Phase2C.md + test file; produces BOTH synthesized questions AND persona recommendations in one pass. Output order: synthesis first, persona selection grounded in synthesis output second (per `discussion-questions-responses.md` Q14).

Output: `findings/PC1_runs/condition-b/{topic}_{effort}.md` (single file with both sections)

### Condition A: Synthesis Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) per test file. Reuses SP1's Step 2 generation harness verbatim, substituting the SP1 refined prompt:

````
You are executing a Phase 2C synthesis run as part of PC1 Condition A (separate synthesis + persona selection).

## Target Test File: {TOPIC_NAME}_{EFFORT}.md

## Inputs

- `dev/2026-03-01_symphony-phase2C-synthesis/test-data/{TOPIC_NAME}_{EFFORT}.md` — input questions
- `idea-symphony/guidance/phase2A_question-gen-personas.md` — Synthesize/Append split (reference per prompt)
- `dev/2026-02-21_symphony-question-generation_part2/findings/D1_perspective-persona-append-strategy.md` — append rules (reference per prompt)

## Prompt

{contents of `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_refined-synthesis-prompt.md` — verbatim}

## Output

Save synthesized questions to: `dev/2026-03-01_symphony-phase2C-synthesis/findings/PC1_runs/condition-a/{TOPIC_NAME}_{EFFORT}_synthesis.md`

Produce ONLY the synthesized questions. Do not produce persona recommendations — that's a separate subagent's job.
````

### Condition A: Persona Selection Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) per test file:

````
You are executing Condition A persona selection for PC1 — the current architecture where persona selection is a separate subagent from synthesis.

## Target Test File: {TOPIC_NAME}_{EFFORT}.md

## Inputs

- `dev/2026-03-01_symphony-phase2C-synthesis/test-data/{TOPIC_NAME}_{EFFORT}.md` — the raw test file (you receive the raw questions, not the synthesis output — matches current architecture)
- `idea-symphony/guidance/phase2D_brainstorming-personas.md` — brainstorming persona selection rubric (concentric circles model)

## Task

Apply `persona-selection-guide_Phase2C.md` to recommend brainstorming personas appropriate for this topic-effort combination. Follow the guide's methodology exactly — concentric circles, per-topic-cluster selection, rationale grounded in topic content.

## Output

Save persona recommendations to: `dev/2026-03-01_symphony-phase2C-synthesis/findings/PC1_runs/condition-a/{TOPIC_NAME}_{EFFORT}_personas.md`

Structure:

```markdown
# {TOPIC_NAME} — {EFFORT} — Brainstorming Persona Recommendations (Condition A)

## Recommended Personas

| Persona | Circle | Topic Cluster | Rationale |
|---|---|---|---|
| [Persona] | [Inner/Middle/Outer] | [Cluster label if applicable] | [Topic-grounded rationale citing specific REQUEST content] |
| … | … | … | … |

## Selection Summary

- Total personas: N
- Circle distribution: Inner X, Middle Y, Outer Z
- Dominant topic drivers: [patterns that drove selection]
```

## Constraints

- Do not consult the synthesis output (Condition A tests the current architecture, which processes raw questions).
- Do not consult BL1 baselines or methodology.
- Rationales must cite specific topic content, not generic trigger language.
````

### Condition B: Consolidated Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) per test file:

````
You are executing Condition B for PC1 — a consolidated architecture where a single subagent produces both synthesized questions AND brainstorming persona recommendations in one pass.

## Target Test File: {TOPIC_NAME}_{EFFORT}.md

## Inputs

- `dev/2026-03-01_symphony-phase2C-synthesis/test-data/{TOPIC_NAME}_{EFFORT}.md` — input questions
- `idea-symphony/guidance/phase2A_question-gen-personas.md` — Synthesize/Append split
- `idea-symphony/guidance/phase2D_brainstorming-personas.md` — brainstorming persona selection rubric (concentric circles)
- `dev/2026-02-21_symphony-question-generation_part2/findings/D1_perspective-persona-append-strategy.md` — append rules

## Two-Part Task

### Part 1: Synthesis

Apply this synthesis prompt verbatim:

{contents of `dev/2026-03-01_symphony-phase2C-synthesis/findings/SP1_refined-synthesis-prompt.md` — verbatim}

Produce the synthesized question set.

### Part 2: Brainstorming Persona Selection

Using the synthesis output you just produced as your primary input, apply `persona-selection-guide_Phase2C.md` to recommend brainstorming personas. Per-topic-cluster selection should use the clusters as they appear in YOUR synthesis output (not the raw input).

## Output

Produce BOTH parts in a single file. Save to: `dev/2026-03-01_symphony-phase2C-synthesis/findings/PC1_runs/condition-b/{TOPIC_NAME}_{EFFORT}.md`

Structure:

```markdown
# {TOPIC_NAME} — {EFFORT} — Consolidated Output (Condition B)

## Part 1: Synthesized Questions

{synthesis output per SP1 refined prompt's specification}

---

## Part 2: Brainstorming Persona Recommendations

| Persona | Circle | Topic Cluster | Rationale |
|---|---|---|---|
| [Persona] | [Inner/Middle/Outer] | [Cluster from YOUR synthesis output] | [Rationale citing synthesized questions and/or original topic content] |
| … | … | … | … |

## Selection Summary

- Total personas: N
- Circle distribution: Inner X, Middle Y, Outer Z
- Dominant topic drivers: [patterns]
```

## Constraints

- Order matters: produce synthesis first, then ground persona selection in that synthesis output. If you find yourself adjusting synthesis output to favor particular personas, stop — that's contamination.
- Do not consult BL1 baselines or methodology.
- Cluster labels in Part 2 must match cluster labels in Part 1.
- Rationales must be topic-grounded.
````

### Scoring Subagent Prompt

After all Condition A and Condition B runs complete, spawn one scoring subagent:

````
You are scoring PC1 — comparing Condition A (separate synthesis + persona selection) vs. Condition B (consolidated) across 9 test files.

## Task

Read:

1. `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md` — Phase 4 Evaluation and Decision Criteria
2. `dev/2026-03-01_symphony-phase2C-synthesis/findings/BL1_baseline-establishment.md` — baselines for synthesis scoring
3. For each of the 9 test cells:
   - BL1 baselines: `baselines/{topic}_{effort}_*.md`
   - Condition A outputs: `findings/PC1_runs/condition-a/{topic}_{effort}_synthesis.md` + `{topic}_{effort}_personas.md`
   - Condition B output: `findings/PC1_runs/condition-b/{topic}_{effort}.md` (Part 1: synthesis, Part 2: personas)

## Part 1: Synthesis Quality Comparison (A vs. B)

For each condition, score the 9 synthesis outputs against BL1 baselines using the same 8 metrics from SP1:
- Question preservation rate
- Compaction ratio
- Cluster alignment
- Persona representation (Synthesize-group)
- Append fidelity
- Dimension balance
- Convergence utilization
- Unique question survival

### Scoring Calibration (BL1-derived, mirrors SP1 scoring)

Apply these rules globally when computing every metric. They exist because BL1 surfaced systematic effects that would otherwise mis-attribute errors; using them keeps PC1 A-vs-B comparisons comparable to SP1's iter-over-iter comparisons.

- **T1. Preserve-all-distinct CGs:** a variant that merges a "Preserve all distinct" CG scores −0.5, not −1.0. Document each preserve-distinct CG merged.
- **T2. ST archetype tiered:** exact archetype phrase verbatim = 1.0; paraphrase keeping the concept but dropping the name = 0.5; concept lost = 0.0.
- **T3. Register vs. topical:** persona representation has two axes — topical coverage AND register preservation. A condition that topically covers but strips the register (strengths-based AI, structural-equity AA, named-archetype ST, emotional-interior Empath, dollar-specific Accountant, named-statute Lawyer, engineering-specific TE, political-analytical Politician) still fails SQ3 on the register axis. Report both.
- **T4. M ± 2–3 tolerance:** baseline target M is a point estimate within a ±2–3 question range. Score output count against the B3 range, not the point target.
- **T5. Cluster-boundary ambiguity:** score cluster-set quality (thematic coherence per cluster, coverage of input territory), not exact-match to baseline cluster count.
- **T6. Append-register overlap with Synthesize is not duplication.** Conditions that drop Append questions on duplication grounds fail Append fidelity (SQ4) for the dropped question.
- **T7. Convergence-normalized compaction:** compute compaction / density in addition to raw. The normalized ratio (~4.0–4.2 in BL1) is the more stable cross-cell comparator. Report both raw and normalized.
- **T8. Topic-typed dimension bands** (subset topics in PC1's default 9-cell subset):
  - Event/community-nonprofit (tool-library): Strategic 18–30%, Human-centered 25–35%
  - Social-program/relational (school-consolidation): Strategic 21–38%, Human-centered 30–37%
  - Technical-regulated-product (mobile-app): Strategic 20–32%, Human-centered 22–30%
  - Synthesize-only Creative 0–13% is acceptable (Append drives Creative). Tolerance: ±5 pp per dimension = material deviation; ±3 pp = on target. (Extend to the business/commercial/regulated, event/community-nonprofit, social-program/relational, and technical-regulated-product bands if PC1 expands to a borderline-case superset.)

### D1-Bound "Do Not Penalize" List (BL1 §7.2)

The following Append-stream drop patterns are D1-bound (caused by D1 round-robin rules), not synthesis-prompt-bound. Flag them in error analysis but do NOT subtract from either condition's Append fidelity:

- Storyteller Cluster-D drop at low effort on tool-library
- Visionary paradigm-framing drops at medium effort (mobile-app Q5/Q6)
- Connector Cluster-C overweight drops at low/medium effort on inter-domain topics (mobile-app, school-consolidation)
- Politician interleaving-vs-segregation at medium effort on tool-library and school-consolidation (PC1 presentation-design scope, not consolidation-decision scope)

### GT1 Watchlist Dual Diagnostic

Subset cells **tool-library/medium** and **school-consolidation/medium** are on the GT1 watchlist. If either condition scores anomalously low on one of these cells compared to its sibling cells (same topic, other efforts; or same effort, other topics), flag "watchlist cell — composition sensitivity may be confounding the consolidation signal." Do not adjust the score, but include the flag in Part 3's decision rationale.

### R11 Source-Bound ST Archetype Handling (from SP1 iter3)

On cells where the Systems Thinker source section uses equivalent systems vocabulary (keystone features, death spiral, balancing loops, reinforcing loops, leverage points, etc.) rather than classical named archetypes (Shifting-the-Burden, Fixes-that-Fail, Success-to-the-Successful, Tragedy-of-the-Commons, Limits-to-Growth, Eroding-Goals), preserving ≥1 such distinctive systems-vocabulary phrase verbatim counts as meeting the ST-archetype floor. Apply this consistently to both conditions — any asymmetric application would bias the A-vs-B delta.

### Independent Synth-Count Enumeration (required)

Do NOT trust subagent self-reports of M_synth (the number of synthesized questions). SP1 iter3 found self-report drift up to ~24% (mobile-app/high reported M=44, actual M≈58). For every run in both conditions, enumerate synthesized questions by directly counting `^\d+\.` (numbered list items) within the Synthesize section of the output file. Report the actual count and flag any ≥10% drift vs. the subagent's self-reported count. Compaction ratio (the primary A-vs-B discriminator) must be computed from the enumerated count.

Compute aggregate means per condition. Then compute A-vs-B deltas:

| Metric | Condition A Mean | Condition B Mean | B-A Delta | Delta % |
|---|---|---|---|---|
| Question preservation | … | … | … | … |
| … | … | … | … | … |

Flag significant deltas (> 5%) with direction.

## Part 2: Persona Recommendation Quality Comparison (A vs. B)

For each condition, score the 9 persona recommendation sets on:

- **Selection appropriateness:** do the recommended personas match what `persona-selection-guide_Phase2C.md` would produce for this topic-effort? (Is a reasonable alternative set possible — i.e., is this a judgment call?)
- **Rationale grounding:** do rationales cite specific topic/question content, or generic trigger language? Grade Specific / Mixed / Generic per recommendation.
- **Circle distribution:** does the Inner/Middle/Outer distribution match per-guide expectations?
- **Cluster-persona mapping:** does each persona's assigned cluster make sense for that persona's strengths?
- **Consistency with synthesis output:** (Condition B advantage) do Condition B's persona-cluster mappings reference Condition B's synthesis output accurately? (Condition A cannot reference synthesis output — score Condition A on cluster-persona mapping quality alone.)

Aggregate per condition:

| Persona Quality Metric | Condition A | Condition B |
|---|---|---|
| Appropriateness (% matching guide expectations) | … | … |
| Grounding (% Specific) | … | … |
| Circle distribution match | … | … |
| Cluster-persona mapping quality | … | … |
| Consistency with synthesis | N/A | … |

## Part 3: Decision

Apply methodology's decision criteria:

- **Consolidate (Condition B)** if: synthesis quality delta ≤ 5% on all key metrics AND all hard floors pass on every Condition B run (see below) AND persona recommendation quality comparable or better in B
- **Keep separate (Condition A)** if: synthesis quality delta > 10% on any key metric OR any hard floor fails on any Condition B run OR persona recommendation quality meaningfully worse in B
- **Expand test set** if: borderline (5–10%) delta with no hard-floor failures — schedule additional topic runs per `discussion-questions-responses.md` Q13. Produce a **ranked expansion list** of the remaining 7 topics, ordered by the biggest A-vs-B single-metric deltas observed on the initial 9 (priority-ordering — most discriminating topics first).

### Hard Floors (from SP1 Step 5; apply to each Condition B run individually)

These are 100%-of-runs thresholds inherited from SP1. A single failure on any floor on any Condition B run disqualifies consolidation regardless of aggregate delta — the floors are the load-bearing quality guarantees, and aggregate means can mask a single-cell voice collapse.

- **AI orphan-register floor:** every Condition B run has ≥1 Appreciative Inquirer orphan-register question preserved as standalone (≥3 at high effort).
- **ST-archetype floor:** every Condition B run has ≥1 Systems Thinker named archetype preserved verbatim OR, where the source is R11 source-bound, ≥1 distinctive systems-vocabulary phrase preserved verbatim (≥3 at high effort).
- **Per-persona representation minimum:** no Synthesize-group persona falls below its BL1 minimum on any Condition B run.
- **Preservation rate:** every Condition B run scores ≥ 0.85 on question preservation.

Document the decision and cite the specific metrics that drove it. If a hard floor caused disqualification, name the specific run and floor.

## Part 4: Integration Implications (if consolidating)

If the decision is to consolidate, enumerate the SKILL.md changes required:

- Phase 2B Step 2.3 and Step 2.4 merge into a single step
- Which subagent invocations change, what the new invocation looks like
- Any changes to `prompts/` structure
- Any changes to `persona-selection-guide_Phase2C.md` (inline vs. referenced)
- Any documentation updates needed
- **Prompt-size check:** the consolidated prompt will carry the SP1 refined synthesis prompt (~22 KB) plus `persona-selection-guide_Phase2C.md` inline or referenced. Note the combined consolidated-prompt size, confirm it fits within the single-subagent context budget with room for the test file + outputs, and flag if the guide should remain referenced (Read-on-demand) rather than inlined.

If the decision is to keep separate, enumerate minor integration improvements (e.g., better handoff from synthesis to persona selection subagent — e.g., passing cluster structure forward).

## Output

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/findings/PC1_persona-selection-consolidation.md`

Structure:

```markdown
# PC1 Scoring: Persona Selection Consolidation Test

**Test cells:** 9 (3 topics × 3 effort levels)
**Conditions:** A (separate, current) vs. B (consolidated, proposed)

## Part 1: Synthesis Quality
{metrics table + deltas + significance flags}

## Part 2: Persona Recommendation Quality
{metrics table + qualitative notes}

## Part 3: Decision
**Verdict:** Consolidate | Keep Separate | Expand Test Set
**Rationale:** {specific metrics that drove the decision}

## Part 4: Integration Implications
{SKILL.md changes required}

## Appendix: Per-Cell Comparison Table
{one row per test cell with both conditions' scores}
```

## Constraints

- Score deterministically against methodology thresholds. Do not let aesthetic preference override measured results.
- If the test falls in the borderline (5–10%) band, do NOT make a final decision — output "Expand Test Set" and defer to a second round.
- When Condition B's persona recommendations reference synthesis-output clusters that don't exist in the synthesis part, flag as an integration error (shouldn't happen if the subagent followed instructions).
- Preserve audit trail — cite specific run files when making claims.
````

### Borderline Case Handling (if triggered)

If the decision subagent flags "Expand Test Set," a follow-on round runs on the remaining 7 topics × 3 effort levels = **21 additional files** (completes the 30-file matrix). Per `discussion-questions-responses.md` Q13, the expansion runs in **priority order** with an **early-stop rule**:

**Priority order:** Start with the topics that showed the biggest A-vs-B single-metric deltas on the initial 9. These are the most discriminating cells for the borderline decision. Fill the remaining topics afterward. The decision subagent produces a ranked list of expansion topics as part of its Expand Test Set output.

**Early-stop rule:** After at least 18 of the 30 total cells have been scored (initial 9 + any 9 expansion cells, in priority order), check whether the aggregate A-vs-B delta has crossed out of the 5–10% borderline band:
- Delta ≤ 5% on all key metrics → **stop and consolidate** (Condition B)
- Delta > 10% on any key metric → **stop and keep separate** (Condition A)
- Still in 5–10% band → continue expansion until all 21 additional cells are scored

This saves ~12 runs when the borderline was noise rather than a real effect.

**Expansion execution:** Batched the same way as initial Condition A and B generation (batches of 5). Re-scoring uses the same harness and re-applies decision criteria on the expanded dataset at the early-stop check and at completion.

### Batching Strategy

1. **Condition A generation (parallel in batches of 5):**
   - 9 synthesis runs + 9 persona-selection runs = 18 subagents
   - 4 batches at 5 concurrent
2. **Condition B generation (parallel in batches of 5):**
   - 9 consolidated runs
   - 2 batches at 5 concurrent
3. **Scoring (1 subagent):** After both conditions' generation complete.
4. **Borderline expansion (if triggered):** 21–42 additional runs + re-scoring.

### Expected Output

- **Condition A raw outputs:** `findings/PC1_runs/condition-a/{topic}_{effort}_synthesis.md` × 9 + `_personas.md` × 9 = 18 files
- **Condition B raw outputs:** `findings/PC1_runs/condition-b/{topic}_{effort}.md` × 9
- **Borderline expansion outputs (if triggered):** additional runs under the same paths
- **Compiled findings:** `findings/PC1_persona-selection-consolidation.md` (decision + integration implications)

---

## Dependency Notes

- **Depends on:** SP1 complete with final refined synthesis prompt. BL1 baselines (for scoring synthesis quality). TDA1 test files (transitively via the subset).
- **Blocks:** Nothing in this investigation. PC1 is the last task. Its output feeds SKILL.md integration work, which is outside this investigation.
- **Data generation:** Both conditions produce new synthesis outputs + persona recommendations. Raw outputs preserved under `findings/PC1_runs/` for audit.
- **Parallelism:** Independent of other investigations. Could run concurrently with the Phase 2B PI1 task if both have completed their prerequisites.

## Priority

**Medium-High** — Important architectural decision but not on the critical path for any downstream task. If time pressure exists, PC1 can defer while SKILL.md continues using the current separated architecture (Condition A equivalent). The decision primarily affects future simplification, not current functionality.

# Phase 2C Synthesis — Test Data Assembly

**Date:** 2026-03-01
**Parent:** `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md`
**Inputs:**
- Parent methodology — `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md` (Phase 1 Assembly Rules, Source Data, Assembly Process, Volume Slicing)
- Phase 2B ground truth — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md` (canonical Tier 3 selections + Connector/Analogist swap per topic-effort)
- Persona selection guide — `idea-symphony/references/persona-selection-guide_Phase2B.md` (Tier definitions, per-persona volume ranges, Effort Level Mapping, Synthesize/Append split)
- All topic requests — `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` (10 topic descriptions, for cross-reference)
- Source question data — `test-runs/symphony-phase2-questions-persona-eval/` (per-persona per-topic per-volume-tier generated question files at `*_q05-10/`, `*_q10-15/`, `*_q15-20/`)
- Prior findings — `dev/2026-02-21_symphony-question-generation_part2/findings/V1_tier1-volume-ranges.md`, `D1_dimension-append-rules.md`, `D2_dimension-coverage.md`, `R5_tier2-volume-quality.md`, `R6_tier3-volume-quality.md`, `R7_connector-volume-quality.md` (volume ranges, append rules, dimension coverage — finalized inputs)

---

## Background

### Context

The Phase 2C synthesis step consolidates persona-generated questions into a final question set for brainstorming. Before we can test the synthesis prompt (SP1) or establish baselines (BL1), we need realistic test inputs — 30 test files (10 topics × 3 effort levels) representing exactly what the synthesis subagent would receive in a real Phase 2C execution.

Phase 2B produced validated per-persona question data in `test-runs/symphony-phase2-questions-persona-eval/` across three volume tiers (`q05-10`, `q10-15`, `q15-20`). This task assembles the right subset of that data — correct personas at correct volume ranges per effort level — into the 30 test files. No new question generation is required; this task is a data preparation task only.

### What We Know

From Phase 2B findings and the persona selection guide:

| Dimension | Finalized Value | Source |
|---|---|---|
| **Persona roster** | 19 personas across 3 tiers | R5, R6, R7 |
| **Tier 1 (always included)** | 10 personas: Visionary, Pragmatist, Questioner, Analyst, Systems Thinker, Historian, Devil's Advocate, Analogist (or Connector), Simplifier (excluded from roster — see R6), plus the rest of the original Tier 1 list per the selection guide | persona-selection-guide_Phase2B.md |
| **Tier 2 (always included at high)** | 4 personas | R5 |
| **Tier 3 (triggered by topic)** | 0–1 at medium (strong trigger only), 0–2 at high (moderate+ trigger) from {Accountant, Lawyer, Politician, Technical Expert} | R6 |
| **Connector/Analogist** | Analogist default; swap to Connector when topic requires inter-domain reconciliation | R7 |
| **Synthesize vs. Append** | Split finalized: most personas are Synthesize group; Politician, Perspective personas, and Connector are Append group | R6 Politician change, D1 append rules |
| **Per-persona volume ranges** | Differ by tier and effort level; strongly persona-specific | V1 (Tier 1), R5 (Tier 2), R6 (Tier 3), R7 (Connector) |
| **Simplifier** | Fully excluded from roster per R6 follow-up | R6 |

From methodology.md's Assembly Rules:

| Effort | Composition |
|---|---|
| **Low** | All 10 Tier 1 personas at low-effort volumes; no Tier 2; no Tier 3; Perspective personas at 5–8 (full generation — Append selection is during synthesis) |
| **Medium** | All 10 Tier 1 at medium volumes; no Tier 2; 0–1 Tier 3 per GT1; Connector/Analogist per GT1 |
| **High** | All 10 Tier 1 at high volumes; all 4 Tier 2 at high volumes; 0–2 Tier 3 per GT1; Connector/Analogist per GT1 |

Volume-slicing rules (from methodology):
- Source > target ceiling → truncate to ceiling (take first N questions in source order; per `discussion-questions-responses.md` Q2)
- Source < target floor → use full file, note shortfall
- Prefer `q10-15` source for Structural/Analytical personas, `q05-10` source for Perspective personas

### Research Questions

- **RQ-TDA1a:** For each of the 30 topic-effort combinations, what is the exact persona list (personas + volume ranges) required per methodology Assembly Rules and the Phase 2B GT1 ground truth?
- **RQ-TDA1b:** Which source files in `test-runs/symphony-phase2-questions-persona-eval/` correspond to each (persona, topic, volume-tier) slot? Are any slots missing source data?
- **RQ-TDA1c:** Which source files exceed or fall short of the target volume range, and what volume-slicing decision applies to each?
- **RQ-TDA1d:** What are the per-file analytics (persona count, question count, volume distribution, Synthesize/Append split) for the 30 assembled files?

---

## Investigation Task

### I-TDA1: Assemble 30 Phase 2C Test Files

**Key question:** What does the Phase 2C synthesis subagent actually receive as input for each of 10 topics × 3 effort levels, and does the existing Phase 2B data cover all required slots?

**Research questions addressed:** RQ-TDA1a–d (addresses methodology SQ2 baseline via volume analytics; unblocks BL1/SP1 for SQ1, SQ3–SQ6)

**Execution model:** 1 Opus subagent performs planning (A1–A2) + execution (A3) + analytics (A4) in a single pass with file-by-file saves so partial progress is preserved. Human review pass confirms shortfall handling before BL1 starts.

### Test Data

No new generation. Source data is `test-runs/symphony-phase2-questions-persona-eval/` (existing). Phase 2B GT1 ground truth is consumed to determine Tier 3 inclusions and Connector/Analogist swaps per topic-effort.

### Subagent Design

Single Opus subagent receives the methodology, the persona selection guide, the GT1 ground truth, and a pointer to the source-data directory; produces four deliverables in one pass:

1. **Topic-persona mapping** — `data-prep/topic-persona-mapping.md`: for each of 30 topic-effort combinations, the exact persona list + expected volume range + Synthesize/Append classification
2. **Assembly plan** — `data-prep/assembly-plan.md`: per-slot source file path, volume-slicing decision (truncate / use-as-is / shortfall-noted), rationale
3. **Assembled test files** — 30 files at `test-data/[topic-slug]_[effort].md`: concatenated persona-question blocks with preserved attribution headers
4. **Assembly analytics** — `data-prep/assembly-analytics.md`: per-file metrics (persona count, total questions, questions per persona, Synthesize/Append counts, volume-category distribution, flagged shortfalls)

A final **summary findings** document at `findings/TDA1_test-data-assembly.md` compiles the analytics and shortfall log.

### Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt:

````
You are assembling test data for the Phase 2C synthesis investigation. You will produce 30 test files (10 topics × 3 effort levels: low, medium, high) that represent exactly what the Phase 2C synthesis subagent receives as input in a real Idea Symphony session.

## Task

Read the following files in full:

1. `dev/2026-03-01_symphony-phase2C-synthesis/methodology.md` — especially Phase 1 Assembly Rules, Source Data, Assembly Process (A1–A4), Volume Slicing.
2. `idea-symphony/references/persona-selection-guide_Phase2B.md` — Tier definitions, per-persona volume ranges per effort level, Effort Level Mapping, Synthesize/Append split.
3. `dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md` — canonical Tier 3 selections + Connector/Analogist decision for each of 10 topics at medium and high effort. (At low effort no Tier 3 is included per methodology; Connector/Analogist still applies.)
4. `dev/2026-02-21_symphony-question-generation_part2/findings/V1_tier1-volume-ranges.md`, `R5_tier2-volume-quality.md`, `R6_tier3-volume-quality.md`, `R7_connector-volume-quality.md`, `D1_dimension-append-rules.md`, `D2_dimension-coverage.md` — finalized volume ranges, append rules, dimension coverage (scan for conclusions only).

Then enumerate the source directory:

```
ls test-runs/symphony-phase2-questions-persona-eval/
```

Identify per-persona per-topic per-volume-tier source files (named pattern: `{persona}_{topic}_q{lo}-{hi}/…`). Capture a complete inventory before assembly.

The 10 topics are: habit-tracker, space-party, tool-library, food-truck, property-management, youth-mentorship, school-consolidation, mobile-app, wearable-device, career-change.

## Deliverable 1: Topic-Persona Mapping

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/data-prep/topic-persona-mapping.md`

For each of the 30 topic-effort combinations, produce a section:

```markdown
### [Topic Name] — [Effort Level]

**Tier 1 personas (all 10):**
| Persona | Volume Range | Source File Tier | Synthesize/Append |
|---|---|---|---|
| Visionary | [range per V1 at this effort] | q10-15 | Synthesize |
| … | … | … | … |

**Tier 2 personas (only at high effort):**
(omit at low/medium, include full table at high)

**Tier 3 personas (per GT1 for this topic-effort; omit at low):**
| Persona | Volume Range | Source File Tier | Synthesize/Append |
|---|---|---|---|
| [Persona from GT1] | [range per R6] | qXX-YY | [Synth|Append] |

**Connector/Analogist:**
(indicate which one is included per GT1; use "Analogist" for low effort as default unless GT1 specifies otherwise; Connector is always Append)

**Total personas:** N
**Expected Synthesize questions:** X–Y
**Expected Append questions:** X–Y
```

## Deliverable 2: Assembly Plan

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/data-prep/assembly-plan.md`

For every (persona, topic, volume-tier) slot identified in Deliverable 1, record:

| Slot | Target Volume Range | Source File Path | Source Question Count | Slicing Decision | Shortfall? |
|---|---|---|---|---|---|
| habit-tracker / low / Visionary | 8–12 | test-runs/.../visionary_habit-tracker_q05-10/… | 10 | use-as-is | No |
| habit-tracker / low / Questioner | 10–15 | test-runs/.../questioner_habit-tracker_q10-15/… | 18 | truncate to 15 | No |
| … | … | … | … | … | … |

Slicing decision is one of:
- **use-as-is** — source count is within the target range
- **truncate to N** — source count exceeds range ceiling; truncate to ceiling by taking the first N questions in source order
- **use full file (shortfall by N)** — source count is below range floor; use all available questions and flag the gap
- **missing** — no source data exists for this slot; flag and escalate

## Deliverable 3: Assembled Test Files

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/test-data/[topic-slug]_[effort].md`

Produce 30 files, one per topic-effort combination. Each file uses this structure:

```markdown
# Test Data — [Topic Name] — [Effort Level]

**Assembled:** 2026-03-01 by TDA1 subagent
**Source:** test-runs/symphony-phase2-questions-persona-eval/ (volumes sliced per assembly-plan.md)
**Total personas:** N
**Total questions:** M

---

## Persona: [Persona Name] ([Synthesize|Append] — Volume N)

1. [Question 1]
2. [Question 2]
…

---

## Persona: [Next Persona] (…)

…
```

Requirements:

- Preserve questions verbatim from source files. Do not reword, merge, or deduplicate across personas — that is SP1's job.
- Preserve persona attribution. Every question block must be under a named persona header.
- Order personas consistently across files: Tier 1 (alphabetical), Tier 2 (alphabetical), Tier 3 (alphabetical), Connector/Analogist last.
- When truncating, take the first N questions in source order and record the truncation in assembly-plan.md.
- When a shortfall is flagged, include all available questions and do not pad.
- Append-group personas include their full generated question volume; the *selection* of which Append questions survive is SP1's job, not TDA1's.

## Deliverable 4: Assembly Analytics

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/data-prep/assembly-analytics.md`

Per-file metrics table (30 rows):

| Topic | Effort | Persona Count | Total Questions | Synthesize Q Count | Append Q Count | Volume Distribution | Shortfall Flag |
|---|---|---|---|---|---|---|---|
| habit-tracker | low | 10 | 98 | 75 | 23 | q05-10: 3, q10-15: 7 | No |
| … | | | | | | | |

Then aggregate:

- **Distribution across effort levels:** mean/median persona count, mean/median question count at low/medium/high
- **Synthesize/Append ratios:** overall and per-effort
- **Shortfall summary:** how many of the 30 files have shortfalls? Which personas are systemically short? (Flag for BL1 weighting.)
- **Volume category distribution:** how many slots drew from each of q05-10 / q10-15 / q15-20 source files?

Add a **Systemic Shortfall Summary** subsection — a persona-level aggregation, NOT just per-cell:

| Persona | Cells Short of Floor | Cells Affected | Pattern Notes |
|---|---|---|---|
| [Persona A] | N of 30 | [topic-effort list] | [e.g., "consistent across effort levels" / "only at high effort" / "specific topic domains"] |
| … | … | … | … |

For any persona short on ≥ 3 of 30 cells, flag as "systemic" and propagate to Deliverable 5 Section 3 as a "BL1 weighting recommendation" — BL1 should treat per-persona representation minimums for that persona as advisory floors rather than hard scoring thresholds.

## Deliverable 5: Summary Findings

Save to: `dev/2026-03-01_symphony-phase2C-synthesis/findings/TDA1_test-data-assembly.md`

Document:

1. **Summary table** — 30 rows with topic, effort, persona count, question count, Synthesize/Append split, shortfall flag
2. **Assembly decisions** — rationale for each slicing choice class; any judgment calls made where methodology was ambiguous
3. **Shortfall log** — every shortfall with persona, topic, effort, expected range, actual count, proposed mitigation (BL1 weighting or regenerate). Include the Systemic Shortfall Summary table from Deliverable 4 and, for each systemic persona, an explicit "BL1 weighting recommendation" line (advisory floor rather than hard threshold).
4. **Missing-data log** — any slots with no source file; required action before BL1 can run
5. **GT1 dependency status** — record GT1 as canonical at Rev 3 (2026-04-18) per `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/GT1_ground-truth-assignments.md`. Then enumerate the 5 Medium-confidence GT1 cells as a **BL1 watchlist** (not provisional, just cells that were most revisable during GT1's walkthrough): tool-library medium, food-truck high, property-management high, youth-mentorship high, school-consolidation medium. Framing for BL1: "These cells are canonical but were the most revisable during GT1's walkthrough. Treat their Tier 3 / Connector-Analogist composition as stable, but if SP1 later produces anomalously poor scores on these specific cells, re-check GT1 before blaming the synthesis prompt."
6. **Handoff notes for BL1** — per-topic notes on any test files BL1 should treat with caution (shortfalls, missing data, unusual distributions, GT1 watchlist cells)

## Constraints

- Do not generate new questions. Only use existing source data.
- Do not rewrite, merge, or deduplicate questions — preserve source content verbatim.
- GT1 is canonical at Rev 3 (2026-04-18) per `discussion-questions-responses.md` Q1 — read the canonical file directly and record the status in Deliverable 5 Section 5. No provisional-flagging needed.
- If a required source file is missing, flag it in Deliverable 5 and leave its slot empty (with a `MISSING:` note in the test file) rather than fabricating data.
- Assembly decisions must be reproducible from Deliverable 2 alone — someone re-running with the same source should produce byte-identical test files.
````

### Batching Strategy

Single subagent, single run. The subagent produces all 5 deliverables sequentially; no parallelism needed. Estimated runtime: one long-running subagent call (~30–60 minutes given the enumeration + 30-file write workload). Consider running this as a background task.

### Human Review Step

After the subagent returns:

1. Spot-check 3 assembled test files against source files for fidelity
2. Review shortfall log; decide whether affected cells need regeneration or are acceptable with caveats
3. Review missing-data log; escalate any hard gaps
4. Mark TDA1 output canonical by adding a `Status: Canonical / Provisional` line to `findings/TDA1_test-data-assembly.md`

Until canonical, BL1 should treat test-data inputs as provisional.

### Expected Output

- `data-prep/topic-persona-mapping.md` — canonical per-topic-effort persona list
- `data-prep/assembly-plan.md` — per-slot source + slicing decisions
- `data-prep/assembly-analytics.md` — aggregate metrics
- `test-data/[topic-slug]_[effort].md` × 30 — the assembled test files
- `findings/TDA1_test-data-assembly.md` — summary + shortfall log + BL1 handoff

---

## Dependency Notes

- **Depends on:** Phase 2B GT1 ground truth (`dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md`) — **canonical at Rev 3 (2026-04-18)**; TDA1 can read directly. Finalized persona selection guide + R5/R6/R7/V1/D1/D2 findings (all complete as of Phase 2B). Source data in `test-runs/symphony-phase2-questions-persona-eval/` (complete).
- **Blocks:** BL1 (needs 30 test files), SP1 (needs 30 test files + BL1 baselines), PC1 (needs 30 test files + SP1 refined prompt).
- **Cross-investigation:** TDA1 is the Phase 2C-side partner of the Phase 2B GT1 side-channel dependency. GT1's "Handoff notes for A1 (Phase 2C)" identifies 5 Medium-confidence cells; TDA1 surfaces these as a BL1 watchlist per Deliverable 5 Section 5.
- **P1 watch-item:** P1 (Provocateur integration) is independent of Phase 2C and does not block TDA1. However, if P1 reclassifies Provocateur from Append → Synthesize, any TDA1 cells including Provocateur would need re-assembly. Passive watch-item only — do not block.
- **Data generation:** None required. This is a data-preparation task only.

## Priority

**High** — First task in Phase 2C and a hard blocker for all downstream work (BL1, SP1, PC1). Low execution cost per slot but substantial volume (30 files × ~10–20 personas each). Should start as soon as GT1 produces provisional ground truth.

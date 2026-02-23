# Test Re-Run: Generate Missing Response Files for Refined & New Personas

**Date:** 2026-02-17
**Purpose:** Generate the response files deleted during Phase 3 persona revisions, using updated persona prompts, plus files for 2 new personas.
**Parent:** `docs/dev/2026-02-17_phase3-persona-revisions.md`

---

## Background

The Phase 3 persona revision deleted response files for 8 personas across the 2026-02-17 test runs (those with major prompt refinements or retirements). Two new personas (Systems Thinker, Lawyer) were also created. This procedure generates the missing files so investigations B13-B17 can proceed.

## Personas to Generate (10)

| Persona | File | Reason |
|---------|------|--------|
| The Visionary | `the-visionary.md` | Major prompt refinement (B1) |
| The Futurist | `the-futurist.md` | Major prompt refinement (B1, B11) |
| The Provocateur | `the-provocateur.md` | Major prompt refinement (B9) |
| The Momentum Builder | `the-momentum-builder.md` | Major prompt refinement (B5, B10) |
| The Connector | `the-connector.md` | Major prompt refinement (B4, B10) |
| The Audience Advocate | `the-audience-advocate.md` | Major prompt refinement (B6, B12) |
| The Questioner | `the-questioner.md` | Retired from Phase 3 (no re-run needed) |
| The Analyst | `the-analyst.md` | Retired from Phase 3 (no re-run needed) |
| The Systems Thinker | `the-systems-thinker.md` | **New persona** |
| The Lawyer | `the-lawyer.md` | **New persona** |

**Effective count: 8 personas to run** (skip Questioner and Analyst — retired, no re-run needed).

## Test Topics (unchanged from Step 1)

| # | Topic | Session Directory |
|---|-------|-------------------|
| 1 | Space-themed birthday party for a 5-year-old | `test-runs/persona-eval-space-party_2026-02-17/` |
| 2 | Community tool lending library for a neighborhood nonprofit | `test-runs/persona-eval-tool-library_2026-02-17/` |
| 3 | Building a modern habit-tracker web app | `test-runs/persona-eval-habit-tracker_2026-02-17/` |

## Topic Clusters per Test Run

**Space Party** (4 clusters):
- `01_theme-and-experience`
- `02_activities-and-engagement`
- `03_logistics-and-safety`
- `04_inclusion-and-community`

**Tool Library** (4 clusters):
- `01_mission-and-model`
- `02_operations-and-systems`
- `03_equity-and-access`
- `04_sustainability-and-growth`

**Habit Tracker** (4 clusters):
- `01_product-vision-and-differentiation`
- `02_user-experience-and-engagement`
- `03_technical-architecture`
- `04_business-and-sustainability`

## Procedure

For each persona (8) x each topic (3) x each topic cluster (4) = **96 subagent runs total**.

### Per-run instructions

Spawn a subagent (Haiku model, `general-purpose` type) with the following prompt structure. Use the Phase 3 brainstorm persona prompt from `idea-symphony/references/prompts/phase3-brainstorm-persona.md`.

**Subagent prompt template:**

```
You are a brainstorming participant. Follow these instructions exactly:

1. Read the persona prompt at: idea-symphony/references/personas/[persona-name].md
   Fully adopt this persona's perspective, voice, and priorities.

2. Read the project context at: test-runs/persona-eval-[topic]_2026-02-17/REQUEST.md

3. Read the questions at: test-runs/persona-eval-[topic]_2026-02-17/questions/by-topic/[NN]_[cluster].md

4. DO NOT read any other files in the responses/ directory. Respond independently.

5. For each question, provide 3-5 unique, detailed responses from your persona's viewpoint.

6. Format your response following these requirements:
   - Use Markdown with ## headings for each question
   - Use Title Case for all headings
   - Each response must be a markdown list item starting with `* `: `* **Summary.** Detail`
   - No numbering, dividers, or sub-headers beyond ## question headings
   - Each response should be 50-150 words, specific and concrete
   - Vary responses across scope, risk tolerance, timeframe, and stakeholders

7. Include YAML frontmatter:
   ---
   project-name: "[Project Name]"
   session-dir: "test-runs/persona-eval-[topic]_2026-02-17"
   date: 2026-02-17
   effort: "medium"
   stage: "Phase 3: Multi-Perspective Brainstorming"
   topic-cluster: "[NN]_[cluster]"
   persona: "[Persona Name]"
   ---

8. End with: **Questions addressed**: [count] / **Total responses**: [count]

9. Save to: test-runs/persona-eval-[topic]_2026-02-17/responses/[NN]_[cluster]/[persona-name].md
```

### Batching strategy

Run in parallel batches to manage context and rate limits:

**Batch 1 — New personas (highest priority for B13/B14):**
- The Systems Thinker: all 3 topics, all clusters (12 runs)
- The Lawyer: all 3 topics, all clusters (12 runs)

**Batch 2 — Retested personas (priority for B15/B16):**
- The Momentum Builder: all 3 topics, all clusters (12 runs)
- The Futurist: all 3 topics, all clusters (12 runs)

**Batch 3 — Spot-checked personas (priority for B17):**
- The Visionary: all 3 topics, all clusters (12 runs)
- The Provocateur: all 3 topics, all clusters (12 runs)
- The Connector: all 3 topics, all clusters (12 runs)
- The Audience Advocate: all 3 topics, all clusters (12 runs)

Within each batch, parallelize by topic cluster (up to 4-5 concurrent subagents). Each subagent run is independent — no dependencies between runs.

### Model selection

**Haiku** — consistent with original test run generation (Step 1b/1c). Volume and speed over depth, matching Phase 3 brainstorming model selection in SKILL.md.

## Verification

After each batch, verify:
1. All expected files exist: `test-runs/persona-eval-[topic]_2026-02-17/responses/[NN]_[cluster]/[persona-name].md`
2. Each file has valid YAML frontmatter
3. Each file has ## headings matching the questions in the corresponding topic cluster file
4. Footer line (`Questions addressed: N / Total responses: N`) is present

**Expected file count after completion:**
- Each topic directory should have 18 response files per cluster (10 retained + 8 new)
- Total new files: 96 (8 personas x 4 clusters x 3 topics)

## Post-Generation

Once all files are generated, investigations B13-B17 can proceed. Recommended order:
1. B13 (Systems Thinker validation) + B14 (Lawyer validation) — parallel, no dependencies
2. B15 (Momentum Builder retest) + B16 (Futurist retest) — parallel, no dependencies
3. B17 (Spot-check: Visionary, Provocateur, Connector, Audience Advocate) — depends on all batch 3 files

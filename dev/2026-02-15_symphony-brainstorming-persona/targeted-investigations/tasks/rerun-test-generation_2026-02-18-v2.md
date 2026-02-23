# Test Re-Run: Generate Missing Response Files for Refined & New Personas

**Date:** 2026-02-18
**Purpose:** Generate revised response files for Phase 3 persona revision investigations

---

## Background

Persona prompts have been refined and new personas created. This procedure generates the missing files so investigations B23-B26 can proceed.

## Personas to Generate

| Persona | File | Reason |
|---------|------|--------|
| The Accountant | `the-accountant.md` | Prompt refinement |
| The Politician | `the-politician.md` | Prompt refinement |
| The Lawyer | `the-lawyer.md` | Prompt refinement |
| The Systems Thinker | `the-systems-thinker.md` | Prompt refinement |

## Test Topics (unchanged)

| # | Topic | Session Directory |
|---|-------|-------------------|
| 1 | Space-themed birthday party for a 5-year-old | `test-runs/persona-eval-space-party_2026-02-18/` |
| 2 | Community tool lending library for a neighborhood nonprofit | `test-runs/persona-eval-tool-library_2026-02-18/` |
| 3 | Building a modern habit-tracker web app | `test-runs/persona-eval-habit-tracker_2026-02-18/` |

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

For each persona (4) x each topic (3) x each topic cluster (4) = **48 subagent runs total**.

### Per-run instructions

Spawn a subagent (Haiku model, `general-purpose` type) with the following prompt structure. Use the Phase 3 brainstorm persona prompt from `idea-symphony/references/prompts/phase3-brainstorm-persona.md`.

**Subagent prompt template:**

```
You are a brainstorming participant. Follow these instructions exactly:

1. Read the persona prompt at: idea-symphony/references/personas/[persona-name].md
   Fully adopt this persona's perspective, voice, and priorities.

2. Read the project context at: test-runs/persona-eval-[topic]_2026-02-18/REQUEST.md

3. Read the questions at: test-runs/persona-eval-[topic]_2026-02-18/questions/by-topic/[NN]_[cluster].md

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
   session-dir: "test-runs/persona-eval-[topic]_2026-02-18"
   date: 2026-02-18
   effort: "medium"
   stage: "Phase 3: Multi-Perspective Brainstorming"
   topic-cluster: "[NN]_[cluster]"
   persona: "[Persona Name]"
   ---

8. End with: **Questions addressed**: [count] / **Total responses**: [count]

9. Save to: test-runs/persona-eval-[topic]_2026-02-18/responses/[NN]_[cluster]/[persona-name].md
```

### Batching strategy

Run in batches of 8 concurrent subagents to manage context and rate limits. Each subagent run is independent — no dependencies between runs.

### Model selection

**Haiku** — Volume and speed over depth, matching Phase 3 brainstorming model selection in SKILL.md.

## Verification

After each batch, verify:
1. All expected files exist: `test-runs/persona-eval-[topic]_2026-02-18/responses/[NN]_[cluster]/[persona-name].md`
2. Each file has valid YAML frontmatter
3. Each file has ## headings matching the questions in the corresponding topic cluster file
4. Footer line (`Questions addressed: N / Total responses: N`) is present

**Expected file count after completion:**
- Each topic directory should have 5 response files per cluster 
- Total new files: 48 (4 personas x 4 clusters x 3 topics)

## Post-Generation

Once all files are generated, investigations B23-B26 can proceed.

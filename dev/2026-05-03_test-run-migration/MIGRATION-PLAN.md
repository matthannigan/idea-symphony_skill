# Test-Run Migration: Persona Storage Format

## Goal

Migrate the 40 existing test-run sessions under [test-runs/](../../test-runs/) (10 topics × 4 effort levels) so they conform to the new persona-storage format adopted in the skill on 2026-05-03.

This is a one-shot data migration. After it runs, the directory `dev/2026-05-03_test-run-migration/` can be discarded.

## Context: what changed in the skill

The Idea Symphony skill restructured how persona-selection state is stored in a session. Before:

- Step 2.1 (Question Generation Persona Selection) wrote a `## Phase 2A: Question Generation Roster` section *directly inside* `PLAN.md`. The section contained the Tier 1/2/3 tables AND a `### Selection Rationale` block (Connector/Analogist swap reasoning, per-Tier-3-candidate trigger evaluation, deferred alternatives).
- Step 2.4 (Brainstorming Persona Selection, medium/high only) wrote `{{session}}/persona-selections.md` at the session root, plus a summary table inside `PLAN.md` under various headings (`## Phase 2 Step 2.4: Brainstorming Persona Selections`, `## Phase 2.4 Persona Selection`, or `## Phase 2D Persona Selection Summary`).

After:

- Step 2.1 writes two outputs: full roster + rationale to `{{session}}/personas/question-generation.md`, and a compact summary section to `PLAN.md` under heading `## Phase 2 Step 2.1: Question Generation Personas`. The compact summary has Tier 1/2/3 tables with an explicit `Stream` column (Synthesize/Append, used by Phase 2.3) but **no rationale** and **no Trigger Strength column** on Tier 3.
- Step 2.4 writes `{{session}}/personas/brainstorming.md` (renamed from `persona-selections.md`) plus a summary table in `PLAN.md` under heading `## Phase 2 Step 2.4: Brainstorming Personas` (heading normalized).
- Phase 3 reads the PLAN.md Step 2.4 table directly; it does not read `personas/brainstorming.md` (which is rationale audit only).

The skill changes (in [idea-symphony/](../../idea-symphony/)) have already shipped — only the test-run sessions are stale.

## Per-session work breakdown

| Effort | # sessions | PLAN.md edit | New `personas/question-generation.md` | Move `persona-selections.md` |
|---|---|---|---|---|
| `min` | 10 | none | none | none |
| `low` | 10 | yes | yes | none (file does not exist at low) |
| `med` | 10 | yes + normalize Step 2.4 heading | yes | yes → `personas/brainstorming.md` |
| `high` | 10 | yes + normalize Step 2.4 heading | yes | yes → `personas/brainstorming.md` |

Totals: 30 PLAN.md edits, 30 new `question-generation.md` files, 20 file moves, 30 `personas/` directories created.

## Topics

The 10 topic directories under [test-runs/](../../test-runs/) are:

```
career-change, food-truck, habit-tracker, mobile-app, property-management,
school-consolidation, space-party, tool-library, wearable-device, youth-mentorship
```

Each has subdirectories `min/`, `low/`, `med/`, `high/`.

## Frontmatter values for new `personas/question-generation.md`

The new file's YAML frontmatter:

```yaml
---
project-name: "<copy from PLAN.md>"
session-dir: "test-runs/<topic>/<effort>"
datetime: <copy from PLAN.md>
effort: "<low | med | high>"   # use the effort literal from the directory name; if med, write "medium" to match new convention
stage: "Phase 2 Step 2.1: Question Generation Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---
```

User confirmation: all 40 sessions ran on Opus, so `model-reported: "claude-opus-4-7"` is hardcoded across all migrated files. `model-requested: "opus"` matches the new prompt's canonical value.

**Note on the `effort` field**: directory names use `med`, but the skill convention uses `medium`. Migrate `med/` sessions with `effort: "medium"` in frontmatter (matching what fresh sessions would record). Likewise `low` stays `low`, `high` stays `high`.

## Per-session migration steps

For each non-`min` session:

1. **Read** `test-runs/<topic>/<effort>/PLAN.md`. Capture YAML frontmatter (`project-name`, `datetime`). Locate the `## Phase 2A: Question Generation Roster` heading and capture its block (everything from that heading through the line just before the next `## ` heading or EOF).

2. **Parse** sub-sections from the captured block:
   - **Tier 1 table** — under `### Tier 1 Personas (always included)`. Always present, 10 rows.
   - **Tier 2 table** — under `### Tier 2 Personas (high effort only)`. Present at high effort with 4 rows; `low`/`med` show `N/A — <effort> effort`.
   - **Tier 3 table** — under `### Tier 3 Personas (orchestrator-selected)`. Either has 0-2 rows of selected specialists, or a "None selected — …" sentinel.
   - **Selection Rationale block** — under `### Selection Rationale`. Contains Connector/Analogist decision, per-candidate Tier 3 rationale, optional Notes.

3. **Add a `Stream` column** to each Tier table using the canonical mapping below.

4. **Build `test-runs/<topic>/<effort>/personas/question-generation.md`** with the frontmatter from "Frontmatter values" above, then this body:

   ```markdown
   # Question Generation Personas

   ## Tier 1 Personas (always included)

   <Tier 1 table from PLAN.md, with Stream column added>

   ## Tier 2 Personas (`high` effort only)

   <Tier 2 table from PLAN.md, with Stream column added; OR the N/A line for low/med>

   ## Tier 3 Personas (orchestrator-selected)

   <Tier 3 table from PLAN.md, with Stream column added; OR the "None selected …" sentinel>

   ## Selection Rationale

   <Selection Rationale block, copied verbatim from PLAN.md>
   ```

5. **Build the compact PLAN.md replacement section** (replaces the original `## Phase 2A: Question Generation Roster` block):

   ```markdown
   ## Phase 2 Step 2.1: Question Generation Personas

   **Effort:** <low | medium | high>
   **Connector/Analogist:** <Analogist (default) | Connector (swap)>   # extract from Selection Rationale's "Connector/Analogist decision:" line

   Full rationale: see [personas/question-generation.md](personas/question-generation.md).

   ### Tier 1 Personas

   <Tier 1 table with Stream column; SAME as in question-generation.md>

   ### Tier 2 Personas

   <Tier 2 table with Stream column; OR N/A line>

   ### Tier 3 Personas

   <Tier 3 table — Persona | Category | Volume | Stream — DROP the Trigger Strength column>
   <OR the None-selected sentinel>
   ```

   **Important**: the PLAN.md Tier 3 table omits the `Trigger Strength` column (rationale belongs in `personas/question-generation.md`). The Tier 3 table inside `personas/question-generation.md` keeps the Trigger Strength column.

6. **Write** the updated `PLAN.md` (with the compact section replacing the original Phase 2A block).

7. **For med/high only**: normalize the Step 2.4 heading. Find one of:
   - `## Phase 2 Step 2.4: Brainstorming Persona Selections`
   - `## Phase 2.4 Persona Selection`
   - `## Phase 2D Persona Selection Summary`
   
   Replace with `## Phase 2 Step 2.4: Brainstorming Personas`. Body content under the heading is unchanged.

8. **For med/high only**: `mkdir -p personas/` and `mv persona-selections.md personas/brainstorming.md`. Do not modify the file's contents — only its path moves. Leave its existing frontmatter (`stage: "Phase 2 Step 2.4: Brainstorming Persona Selection"`) intact.

For `min` sessions: skip entirely. They have no Phase 2A block, no persona-selections.md, and no Step 2.4 heading; they are already compliant.

## Stream mapping (canonical)

When adding the `Stream` column to Tier tables, use this mapping (no exceptions):

| Persona | Stream |
|---|---|
| Questioner | Synthesize |
| Analyst | Synthesize |
| Devil's Advocate | Synthesize |
| Audience Advocate | Synthesize |
| Systems Thinker | Synthesize |
| Appreciative Inquirer | Synthesize |
| Provocateur | Append |
| Analogist | Append |
| Connector | Append |
| Visionary | Append |
| Storyteller | Append |
| Constraint Flipper | Append (3-5 round-robin) |
| Empath | Synthesize |
| First Principles Thinker | Synthesize |
| Futurist | Synthesize |
| Accountant | Synthesize |
| Lawyer | Synthesize |
| Politician | Synthesize |
| Technical Expert | Synthesize |

## Suggested implementation: Python script

The transformation is mechanical and deterministic. A Python script is more reliable than tool-call-driven editing across 30 files. A reference implementation lives at [migrate.py](migrate.py) in this directory — review it before running, then:

```bash
cd /Users/matth/dev/idea-symphony_skill
python3 dev/2026-05-03_test-run-migration/migrate.py
```

The script:
- Iterates 10 topics × 4 efforts.
- Skips `min` sessions with a `[skip]` log line.
- For each non-min session: reads PLAN.md, extracts Phase 2A block, adds Stream column, writes new question-generation.md, writes updated PLAN.md, normalizes Step 2.4 heading, moves persona-selections.md.
- Logs each action per session. Fails loud with the session path if anything looks malformed.
- Idempotent: re-running on already-migrated sessions is a no-op (script detects the new `## Phase 2 Step 2.1: Question Generation Personas` heading and skips).

If you'd rather do this via tool calls instead of running the script, the per-session steps above are the canonical work breakdown — same result, more turns.

## Verification

After running:

```bash
cd /Users/matth/dev/idea-symphony_skill

# 1. No old persona-selections.md files at session root
find test-runs -maxdepth 3 -name persona-selections.md
# Expected: no output (excluding _archived/)

# 2. 30 question-generation.md files exist (low + med + high × 10 topics)
find test-runs -name question-generation.md | grep -v _archived | wc -l
# Expected: 30

# 3. 20 brainstorming.md files exist (med + high × 10 topics)
find test-runs -name brainstorming.md | grep -v _archived | wc -l
# Expected: 20

# 4. No more old "## Phase 2A:" headings
grep -rn "^## Phase 2A:" test-runs/ | grep -v _archived
# Expected: no output

# 5. 30 sessions have the new Step 2.1 heading
grep -rln "^## Phase 2 Step 2.1: Question Generation Personas" test-runs/ | grep -v _archived | wc -l
# Expected: 30

# 6. 20 sessions have the normalized Step 2.4 heading
grep -rln "^## Phase 2 Step 2.4: Brainstorming Personas$" test-runs/ | grep -v _archived | wc -l
# Expected: 20

# 7. No stale Step 2.4 heading variations
grep -rn "^## Phase 2 Step 2.4: Brainstorming Persona Selections\|^## Phase 2.4 Persona Selection\|^## Phase 2D Persona Selection Summary" test-runs/ | grep -v _archived
# Expected: no output
```

Spot-check 3-4 sessions visually (one per effort level, from different topics):
- `personas/question-generation.md` has correct frontmatter, all three Tier tables with Stream column, Selection Rationale block intact.
- `PLAN.md`'s new Step 2.1 section has the compact summary (no rationale, no Trigger Strength column on Tier 3).
- `PLAN.md`'s Step 2.4 heading reads `## Phase 2 Step 2.4: Brainstorming Personas`.
- `personas/brainstorming.md` (med/high only) has the same content as the previous `persona-selections.md`.

## Out of scope

- The `_archived/` subdirectory under `test-runs/` is not touched. Those are old prototype runs that pre-date the current skill version.
- File contents inside `personas/brainstorming.md` (formerly `persona-selections.md`) are not modified — only the path changes. The `stage:` frontmatter value (`"Phase 2 Step 2.4: Brainstorming Persona Selection"`) is left as-is.
- Any other PLAN.md sections (Status, Notes & Issues, frontmatter) are preserved verbatim. Only the Phase 2A block is replaced and the Step 2.4 heading is normalized.

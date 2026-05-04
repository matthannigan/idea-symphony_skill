#!/usr/bin/env python3
"""
Migrate test-run sessions to new persona-storage format.

For each test-runs/{topic}/{effort} session (effort != min):
  1. Extract `## Phase 2A: Question Generation Roster` block from PLAN.md.
  2. Add a Stream column to the Tier tables.
  3. Write personas/question-generation.md (full roster + Selection Rationale).
  4. Replace the original Phase 2A block with a compact summary section.
  5. Normalize the Step 2.4 heading (med/high only).
  6. Move persona-selections.md to personas/brainstorming.md (med/high only).

Idempotent: re-running on already-migrated sessions is a no-op.

Run from the repo root:
    python3 dev/2026-05-03_test-run-migration/migrate.py
"""

import re
import shutil
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
TEST_RUNS = REPO_ROOT / "test-runs"

TOPICS = [
    "career-change",
    "food-truck",
    "habit-tracker",
    "mobile-app",
    "property-management",
    "school-consolidation",
    "space-party",
    "tool-library",
    "wearable-device",
    "youth-mentorship",
]
EFFORTS = ["min", "low", "med", "high"]

# Canonical persona -> Stream mapping (Phase 2.3 method).
STREAM = {
    # Tier 1
    "Questioner": "Synthesize",
    "Analyst": "Synthesize",
    "Devil's Advocate": "Synthesize",
    "Audience Advocate": "Synthesize",
    "Systems Thinker": "Synthesize",
    "Appreciative Inquirer": "Synthesize",
    "Provocateur": "Append",
    "Analogist": "Append",
    "Connector": "Append",
    "Visionary": "Append",
    "Storyteller": "Append",
    # Tier 2
    "Constraint Flipper": "Append (3-5 round-robin)",
    "Empath": "Synthesize",
    "First Principles Thinker": "Synthesize",
    "Futurist": "Synthesize",
    # Tier 3
    "Accountant": "Synthesize",
    "Lawyer": "Synthesize",
    "Politician": "Synthesize",
    "Technical Expert": "Synthesize",
}

# Directory effort label -> frontmatter effort literal.
EFFORT_LITERAL = {"low": "low", "med": "medium", "high": "high"}

# Headings to normalize in Step 2.4 (med/high only).
LEGACY_S24_HEADINGS = [
    "## Phase 2 Step 2.4: Brainstorming Persona Selections",
    "## Phase 2.4 Persona Selection",
    "## Phase 2D Persona Selection Summary",
    "## Phase 2D: Brainstorming Persona Selection Summary",
    "## Phase 2D: Brainstorming Persona Selections",
    "## Phase 2D: Brainstorming Persona Selection",
    "## Phase 2D: Brainstorming Persona Roster",
]
NEW_S24_HEADING = "## Phase 2 Step 2.4: Brainstorming Personas"


# ---------- Parsing helpers ----------


def extract_frontmatter(content):
    """Return (frontmatter_dict, body) parsed from a YAML-frontmatter file."""
    m = re.match(r"^---\n(.*?)\n---\n", content, re.DOTALL)
    if not m:
        return {}, content
    fm = {}
    for line in m.group(1).split("\n"):
        if ":" in line:
            k, _, v = line.partition(":")
            fm[k.strip()] = v.strip().strip('"')
    return fm, content[m.end():]


def find_section(content, heading_pattern):
    """Return (start, end) byte offsets of a `## …` section, or (None, None)."""
    m = re.search(heading_pattern, content, re.MULTILINE)
    if not m:
        return None, None
    start = m.start()
    nxt = re.search(r"^## ", content[m.end():], re.MULTILINE)
    end = m.end() + nxt.start() if nxt else len(content)
    return start, end


def extract_subsection(section_text, subheading_prefix):
    """Find a `### {subheading_prefix}…` block. Returns the body (no heading), stripped, or None."""
    m = re.search(r"^### " + re.escape(subheading_prefix) + r".*?$", section_text, re.MULTILINE)
    if not m:
        return None
    start = m.end()
    rest = section_text[start:]
    nxt = re.search(r"^### |^## ", rest, re.MULTILINE)
    end = start + nxt.start() if nxt else len(section_text)
    return section_text[start:end].strip()


def parse_table_rows(table_text):
    """Parse markdown table -> (header, rows) with cell strings stripped."""
    lines = [ln for ln in table_text.split("\n") if ln.strip().startswith("|")]
    if len(lines) < 2:
        return None, []
    rows = []
    for line in lines:
        if re.match(r"^\s*\|[\s\-|:]+\|?\s*$", line):
            continue  # separator
        cells = [c.strip() for c in line.strip().strip("|").split("|")]
        rows.append(cells)
    if not rows:
        return None, []
    return rows[0], rows[1:]


def build_md_table(header, rows):
    return "\n".join([
        "| " + " | ".join(header) + " |",
        "|" + "|".join(["---"] * len(header)) + "|",
        *["| " + " | ".join(r) + " |" for r in rows],
    ])


# ---------- Table transforms ----------


def rename_volume_column(header):
    return ["Volume" if h == "Volume Range" else h for h in header]


def add_stream_to_tier1_or_tier2(table_text):
    """Append Stream column to a Tier 1 or Tier 2 table."""
    header, rows = parse_table_rows(table_text)
    if not header:
        return table_text
    new_header = rename_volume_column(header) + ["Stream"]
    new_rows = [r + [STREAM.get(r[0], "Synthesize")] for r in rows]
    return build_md_table(new_header, new_rows)


def add_stream_to_tier3_keep_trigger(table_text):
    """For question-generation.md: insert Stream before Trigger Strength."""
    header, rows = parse_table_rows(table_text)
    if not header:
        return table_text
    header = rename_volume_column(header)
    if header and header[-1] == "Trigger Strength":
        new_header = header[:-1] + ["Stream", "Trigger Strength"]
        new_rows = [r[:-1] + [STREAM.get(r[0], "Synthesize"), r[-1]] for r in rows]
    else:
        new_header = header + ["Stream"]
        new_rows = [r + [STREAM.get(r[0], "Synthesize")] for r in rows]
    return build_md_table(new_header, new_rows)


def add_stream_to_tier3_drop_trigger(table_text):
    """For PLAN.md compact summary: append Stream and drop Trigger Strength."""
    header, rows = parse_table_rows(table_text)
    if not header:
        return table_text
    header = rename_volume_column(header)
    if "Trigger Strength" in header:
        idx = header.index("Trigger Strength")
        new_header = [h for i, h in enumerate(header) if i != idx] + ["Stream"]
        new_rows = [
            [c for i, c in enumerate(r) if i != idx] + [STREAM.get(r[0], "Synthesize")]
            for r in rows
        ]
    else:
        new_header = header + ["Stream"]
        new_rows = [r + [STREAM.get(r[0], "Synthesize")] for r in rows]
    return build_md_table(new_header, new_rows)


def is_table(block):
    return block is not None and block.lstrip().startswith("|")


def extract_connector_decision(rationale):
    """Pull the value after `**Connector/Analogist decision:**`."""
    m = re.search(r"\*\*Connector/Analogist decision:\*\*\s*(.+)", rationale)
    return m.group(1).strip() if m else "Analogist (default)"


def extract_body_metadata(content):
    """Fallback: pull Project name and Plan Date from PLAN.md body."""
    project = None
    datetime_iso = None
    m = re.search(r"^\*\*Project:\*\*\s*(.+?)\s*$", content, re.MULTILINE)
    if m:
        project = m.group(1).strip()
    m = re.search(r"^\*\*Plan Date:\*\*\s*(\d{4}-\d{2}-\d{2})\s*$", content, re.MULTILINE)
    if m:
        datetime_iso = f"{m.group(1)}T05:00:00Z"
    return project, datetime_iso


# ---------- Per-session migration ----------


def migrate(topic, effort):
    sd = TEST_RUNS / topic / effort
    plan = sd / "PLAN.md"
    label = f"{topic}/{effort}"

    if not plan.exists():
        print(f"[skip] {label}: no PLAN.md")
        return

    if effort == "min":
        print(f"[skip] {label}: min effort — nothing to migrate")
        return

    content = plan.read_text()

    if "## Phase 2 Step 2.1: Question Generation Personas" in content:
        print(f"[skip] {label}: already migrated")
        return

    fm, _ = extract_frontmatter(content)
    body_project, body_datetime = extract_body_metadata(content)
    project_name = fm.get("project-name") or body_project or topic
    datetime_val = fm.get("datetime") or body_datetime or ""

    p2a_start, p2a_end = find_section(content, r"^## Phase 2A: Question Generation Roster")
    if p2a_start is None:
        print(f"[!]   {label}: no Phase 2A section found")
        return

    p2a_block = content[p2a_start:p2a_end]

    tier1 = extract_subsection(p2a_block, "Tier 1 Personas")
    tier2 = extract_subsection(p2a_block, "Tier 2 Personas")
    tier3 = extract_subsection(p2a_block, "Tier 3 Personas")
    rationale = extract_subsection(p2a_block, "Selection Rationale")

    if any(x is None for x in [tier1, tier2, tier3, rationale]):
        print(f"[!]   {label}: missing one of Tier 1 / Tier 2 / Tier 3 / Selection Rationale")
        return

    tier1_qg = add_stream_to_tier1_or_tier2(tier1)
    tier1_plan = tier1_qg

    if is_table(tier2):
        tier2_qg = add_stream_to_tier1_or_tier2(tier2)
        tier2_plan = tier2_qg
    else:
        tier2_qg = tier2
        tier2_plan = tier2

    if is_table(tier3):
        tier3_qg = add_stream_to_tier3_keep_trigger(tier3)
        tier3_plan = add_stream_to_tier3_drop_trigger(tier3)
    else:
        tier3_qg = tier3
        tier3_plan = tier3

    connector = extract_connector_decision(rationale)

    # ----- Build personas/question-generation.md -----
    qg_content = f"""---
project-name: "{project_name}"
session-dir: "test-runs/{topic}/{effort}"
datetime: {datetime_val}
effort: "{EFFORT_LITERAL[effort]}"
stage: "Phase 2 Step 2.1: Question Generation Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Question Generation Personas

## Tier 1 Personas (always included)

{tier1_qg}

## Tier 2 Personas (`high` effort only)

{tier2_qg}

## Tier 3 Personas (orchestrator-selected)

{tier3_qg}

## Selection Rationale

{rationale}
"""

    personas_dir = sd / "personas"
    personas_dir.mkdir(exist_ok=True)
    qg_path = personas_dir / "question-generation.md"
    qg_path.write_text(qg_content)
    print(f"[+]   wrote {qg_path.relative_to(REPO_ROOT)}")

    # ----- Build compact PLAN.md replacement -----
    new_section = f"""## Phase 2 Step 2.1: Question Generation Personas

**Effort:** {EFFORT_LITERAL[effort]}
**Connector/Analogist:** {connector}

Full rationale: see [personas/question-generation.md](personas/question-generation.md).

### Tier 1 Personas

{tier1_plan}

### Tier 2 Personas

{tier2_plan}

### Tier 3 Personas

{tier3_plan}
"""

    new_content = content[:p2a_start] + new_section + content[p2a_end:]

    if effort in ("med", "high"):
        for legacy in LEGACY_S24_HEADINGS:
            new_content = new_content.replace(legacy, NEW_S24_HEADING)

    plan.write_text(new_content)
    print(f"[+]   updated {plan.relative_to(REPO_ROOT)}")

    # ----- Move persona-selections.md (med/high only) -----
    if effort in ("med", "high"):
        ps = sd / "persona-selections.md"
        if ps.exists():
            target = personas_dir / "brainstorming.md"
            shutil.move(str(ps), str(target))
            print(f"[+]   moved persona-selections.md -> personas/brainstorming.md")
        else:
            print(f"[!]   {label}: persona-selections.md missing — skipping move")


def main():
    print(f"Repo root: {REPO_ROOT}")
    print(f"Test runs: {TEST_RUNS}\n")
    for topic in TOPICS:
        for effort in EFFORTS:
            migrate(topic, effort)
    print("\nDone.")


if __name__ == "__main__":
    main()

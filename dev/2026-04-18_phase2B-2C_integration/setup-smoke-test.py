#!/usr/bin/env python3
"""Split SP1 pooled question files into the new per-persona file layout
with YAML frontmatter for the smoke test.

Reads dev/2026-03-01_symphony-phase2C-synthesis/test-data/tool-library_{low,medium,high}.md
Writes test-runs/tool-library_2026-04-18_{low,medium,high}/questions/by-persona/*.md

Also produces REQUEST.md and a minimal PLAN.md per session.
"""
import re
import os
import pathlib

ROOT = pathlib.Path("/Users/matth/dev/idea-symphony_skill")
SP1_DATA = ROOT / "dev/2026-03-01_symphony-phase2C-synthesis/test-data"
TEST_RUNS = ROOT / "test-runs"

# Canonical persona->category/stream mapping from TDR §6.3
PERSONA_META = {
    "Questioner":              ("analytical",  "synthesize"),
    "Analyst":                 ("analytical",  "synthesize"),
    "Devil's Advocate":        ("structural",  "synthesize"),
    "Appreciative Inquirer":   ("structural",  "synthesize"),
    "Audience Advocate":       ("structural",  "synthesize"),
    "Systems Thinker":         ("structural",  "synthesize"),
    "Empath":                  ("structural",  "synthesize"),
    "First Principles Thinker":("structural",  "synthesize"),
    "Futurist":                ("structural",  "synthesize"),
    "Provocateur":             ("perspective", "append"),
    "Analogist":               ("perspective", "append"),
    "Connector":               ("perspective", "append"),
    "Visionary":               ("perspective", "append"),
    "Storyteller":             ("perspective", "append"),
    "Constraint Flipper":      ("perspective", "append"),
    "Accountant":              ("specialist",  "synthesize"),
    "Lawyer":                  ("specialist",  "synthesize"),
    "Technical Expert":        ("specialist",  "synthesize"),
    "Politician":              ("specialist",  "append"),
}

PERSONA_FILE_SLUG = {
    "Questioner": "the-questioner",
    "Analyst": "the-analyst",
    "Devil's Advocate": "the-devils-advocate",
    "Appreciative Inquirer": "the-appreciative-inquirer",
    "Audience Advocate": "the-audience-advocate",
    "Systems Thinker": "the-systems-thinker",
    "Empath": "the-empath",
    "First Principles Thinker": "the-first-principles-thinker",
    "Futurist": "the-futurist",
    "Provocateur": "the-provocateur",
    "Analogist": "the-analogist",
    "Connector": "the-connector",
    "Visionary": "the-visionary",
    "Storyteller": "the-storyteller",
    "Constraint Flipper": "the-constraint-flipper",
    "Accountant": "the-accountant",
    "Lawyer": "the-lawyer",
    "Technical Expert": "the-technical-expert",
    "Politician": "the-politician",
}

REQUEST_TEMPLATE = """---
project-name: "Tool Library"
date: "2026-04-18"
effort: "{effort}"
---

# REQUEST: Community Tool Library

A neighborhood nonprofit with 8-10 core volunteers, ~$15K seed budget, and access to a 500 sq ft donated retail space wants to launch a community tool library. The neighborhood has roughly 2,000 households with mixed income levels and a mix of homeowners/renters.

The brainstorming need: how to design operations, governance, member experience, and sustainability so the library serves a broad cross-section of the community, survives volunteer turnover, and stays financially viable on grants + modest membership fees.

Out of scope: 501(c)(3) legal formation (already complete) and physical space build-out.
"""

PLAN_TEMPLATE = """---
project-name: "Tool Library"
date: "2026-04-18"
effort: "{effort}"
stage: "Phase 2 Step 2.2: Question Generation complete"
---

# PLAN: Tool Library Brainstorming

## Phase 2B: Question Generation Roster

**Effort Level:** {effort}

{roster_body}

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: Single community initiative; one institutional system. Criterion (b) does not apply — multiple stakeholders within one community is not multi-system.
- Effort-invariance check: same decision at all effort levels.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
  - Trigger strength: {accountant_strength}
  - Topic citation: "$15K seed budget; sustainability on grants + modest membership fees"
  - Decision: {accountant_decision}

- Persona: Lawyer
  - Trigger strength: none
  - Topic citation: "(no specific regulatory framework named in REQUEST; 501(c)(3) already complete)"
  - Decision: exclude

- Persona: Politician
  - Trigger strength: {politician_strength}
  - Topic citation: "broad cross-section of the community; volunteer governance"
  - Decision: {politician_decision}

- Persona: Technical Expert
  - Trigger strength: none
  - Topic citation: "(no engineering architecture content in REQUEST)"
  - Decision: exclude

**Notes:** —
"""

# Per-effort roster body and Tier 3 decisions, inferred from the SP1 pooled
# files (which encode the same roster the orchestrator would have produced).
ROSTERS = {
    "low": {
        "roster_body": """### Tier 1 Personas (always included)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Questioner | Analytical | 10-15 |
| Analyst | Analytical | 10-15 |
| Devil's Advocate | Structural | 8-12 |
| Appreciative Inquirer | Structural | 8-12 |
| Audience Advocate | Structural | 10-15 |
| Systems Thinker | Structural | 10-15 |
| Provocateur | Perspective | 5-8 |
| Analogist | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

N/A — low effort

### Tier 3 Personas (orchestrator-selected)

None selected — no strong triggers for this topic""",
        "accountant_strength": "none",
        "accountant_decision": "exclude",
        "politician_strength": "none",
        "politician_decision": "exclude",
    },
    "medium": {
        "roster_body": """### Tier 1 Personas (always included)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Questioner | Analytical | 10-15 |
| Analyst | Analytical | 10-15 |
| Devil's Advocate | Structural | 8-12 |
| Appreciative Inquirer | Structural | 8-12 |
| Audience Advocate | Structural | 10-15 |
| Systems Thinker | Structural | 10-15 |
| Provocateur | Perspective | 5-8 |
| Analogist | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

N/A — medium effort

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|--------------|------------------|
| Politician | Specialist (governance) | 8-10 | strong |""",
        "accountant_strength": "moderate",
        "accountant_decision": "exclude",
        "politician_strength": "strong",
        "politician_decision": "include",
    },
    "high": {
        "roster_body": """### Tier 1 Personas (always included)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Questioner | Analytical | 15-20 |
| Analyst | Analytical | 10-15 |
| Devil's Advocate | Structural | 10-15 |
| Appreciative Inquirer | Structural | 8-12 |
| Audience Advocate | Structural | 10-15 |
| Systems Thinker | Structural | 10-15 |
| Provocateur | Perspective | 5-8 |
| Analogist | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Constraint Flipper | Perspective | 5-8 |
| Empath | Structural | 8-12 |
| First Principles Thinker | Structural | 7-10 |
| Futurist | Structural | 8-12 |

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Trigger Strength |
|---------|----------|--------------|------------------|
| Accountant | Specialist (financial) | 8-12 | moderate |
| Politician | Specialist (governance) | 8-10 | moderate |""",
        "accountant_strength": "moderate",
        "accountant_decision": "include",
        "politician_strength": "moderate",
        "politician_decision": "include",
    },
}


PERSONA_HEADER_RE = re.compile(
    r"^## Persona:\s+(?P<name>.+?)\s+\((?P<stream>Synthesize|Append)\s+—\s+Volume\s+(?P<vol>\d+)\)\s*$",
    re.MULTILINE,
)


def split_pooled(pooled_text):
    """Yield (name, stream, volume, body) tuples for each persona in the pooled file."""
    matches = list(PERSONA_HEADER_RE.finditer(pooled_text))
    for i, m in enumerate(matches):
        name = m.group("name").strip()
        stream = m.group("stream").lower()
        vol = int(m.group("vol"))
        body_start = m.end()
        body_end = matches[i + 1].start() if i + 1 < len(matches) else len(pooled_text)
        body = pooled_text[body_start:body_end].strip()
        # Trim trailing horizontal-rule separators
        body = re.sub(r"\n+---\n*$", "", body).strip()
        yield name, stream, vol, body


def build_persona_file(name, stream, volume, effort, body):
    category = PERSONA_META[name][0]
    canonical_stream = PERSONA_META[name][1]
    if canonical_stream != stream:
        # Trust the source pool's stream tag (in case a topic-specific override exists)
        pass
    return f"""---
persona: "{name}"
category: {category}
stream: {stream}
volume: {volume}
effort: {effort}
date: 2026-04-18
---

{body}
"""


def setup(effort):
    pooled_path = SP1_DATA / f"tool-library_{effort}.md"
    pooled_text = pooled_path.read_text()
    session_dir = TEST_RUNS / f"tool-library_2026-04-18_{effort}"
    by_persona = session_dir / "questions" / "by-persona"
    by_persona.mkdir(parents=True, exist_ok=True)

    # REQUEST.md
    (session_dir / "REQUEST.md").write_text(REQUEST_TEMPLATE.format(effort=effort))

    # PLAN.md
    plan = ROSTERS[effort]
    (session_dir / "PLAN.md").write_text(PLAN_TEMPLATE.format(effort=effort, **plan))

    # Per-persona files
    count = 0
    for name, stream, vol, body in split_pooled(pooled_text):
        slug = PERSONA_FILE_SLUG[name]
        path = by_persona / f"{slug}.md"
        path.write_text(build_persona_file(name, stream, vol, effort, body))
        count += 1
    print(f"{effort}: wrote {count} persona files to {by_persona}")


if __name__ == "__main__":
    for effort in ("low", "medium", "high"):
        setup(effort)

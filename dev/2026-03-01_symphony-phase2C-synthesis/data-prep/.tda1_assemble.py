#!/usr/bin/env python3
"""TDA1 Test Data Assembly Script — produces 30 test files and 4 supporting docs.

This is a one-shot utility run by the TDA1 subagent. It can be re-executed to
regenerate byte-identical outputs from the Phase 2B persona-eval source data,
given the same GT1 Rev 3 canonical assignments.
"""

from pathlib import Path
import re
import statistics

REPO = Path("/Users/matth/dev/idea-symphony_skill")
SRC = REPO / "test-runs/symphony-phase2-questions-persona-eval"
OUT_DATA_PREP = REPO / "dev/2026-03-01_symphony-phase2C-synthesis/data-prep"
OUT_TEST_DATA = REPO / "dev/2026-03-01_symphony-phase2C-synthesis/test-data"
OUT_FINDINGS = REPO / "dev/2026-03-01_symphony-phase2C-synthesis/findings"

for p in (OUT_DATA_PREP, OUT_TEST_DATA, OUT_FINDINGS):
    p.mkdir(parents=True, exist_ok=True)

TOPICS = [
    "habit-tracker", "space-party", "tool-library", "food-truck",
    "property-management", "youth-mentorship", "school-consolidation",
    "mobile-app", "wearable-device", "career-change",
]

TOPIC_DISPLAY = {
    "habit-tracker": "Habit Tracker",
    "space-party": "Space Party",
    "tool-library": "Tool Library",
    "food-truck": "Food Truck",
    "property-management": "Property Management",
    "youth-mentorship": "Youth Mentorship",
    "school-consolidation": "School Consolidation",
    "mobile-app": "Mobile App",
    "wearable-device": "Wearable Device",
    "career-change": "Career Change",
}

EFFORTS = ["low", "medium", "high"]

VOLUME_RANGES = {
    ("Questioner", "low"): (10, 15),
    ("Questioner", "medium"): (10, 15),
    ("Questioner", "high"): (15, 20),
    ("Analyst", "low"): (8, 12),
    ("Analyst", "medium"): (10, 15),
    ("Analyst", "high"): (10, 15),
    ("Devil's Advocate", "low"): (8, 12),
    ("Devil's Advocate", "medium"): (8, 12),
    ("Devil's Advocate", "high"): (10, 15),
    ("Appreciative Inquirer", "low"): (8, 12),
    ("Appreciative Inquirer", "medium"): (8, 12),
    ("Appreciative Inquirer", "high"): (8, 12),
    ("Audience Advocate", "low"): (8, 12),
    ("Audience Advocate", "medium"): (10, 15),
    ("Audience Advocate", "high"): (10, 15),
    ("Systems Thinker", "low"): (8, 12),
    ("Systems Thinker", "medium"): (10, 15),
    ("Systems Thinker", "high"): (10, 15),
    ("Provocateur", "low"): (5, 8),
    ("Provocateur", "medium"): (5, 8),
    ("Provocateur", "high"): (5, 8),
    ("Analogist", "low"): (5, 8),
    ("Analogist", "medium"): (5, 8),
    ("Analogist", "high"): (5, 8),
    ("Visionary", "low"): (5, 8),
    ("Visionary", "medium"): (5, 8),
    ("Visionary", "high"): (5, 8),
    ("Storyteller", "low"): (5, 8),
    ("Storyteller", "medium"): (5, 8),
    ("Storyteller", "high"): (5, 8),
    ("Constraint Flipper", "high"): (5, 8),
    ("Empath", "high"): (8, 12),
    ("First Principles Thinker", "high"): (7, 10),
    ("Futurist", "high"): (8, 12),
    ("Accountant", "medium"): (8, 12),
    ("Accountant", "high"): (8, 12),
    ("Lawyer", "medium"): (8, 10),
    ("Lawyer", "high"): (8, 10),
    ("Politician", "medium"): (8, 10),
    ("Politician", "high"): (8, 10),
    ("Technical Expert", "medium"): (8, 10),
    ("Technical Expert", "high"): (8, 10),
    ("Connector", "low"): (5, 8),
    ("Connector", "medium"): (5, 8),
    ("Connector", "high"): (5, 8),
}

SYNTH_APPEND = {
    "Questioner": "Synthesize", "Analyst": "Synthesize",
    "Devil's Advocate": "Synthesize", "Appreciative Inquirer": "Synthesize",
    "Audience Advocate": "Synthesize", "Systems Thinker": "Synthesize",
    "Provocateur": "Append", "Analogist": "Append",
    "Visionary": "Append", "Storyteller": "Append",
    "Constraint Flipper": "Append", "Empath": "Synthesize",
    "First Principles Thinker": "Synthesize", "Futurist": "Synthesize",
    "Accountant": "Synthesize", "Lawyer": "Synthesize",
    "Politician": "Append", "Technical Expert": "Synthesize",
    "Connector": "Append",
}

GT1 = {
    "habit-tracker": {"connector_analogist": "Analogist", "tier3_medium": [], "tier3_high": []},
    "space-party": {"connector_analogist": "Analogist", "tier3_medium": [], "tier3_high": []},
    "tool-library": {"connector_analogist": "Analogist", "tier3_medium": ["Politician"], "tier3_high": ["Politician", "Accountant"]},
    "food-truck": {"connector_analogist": "Analogist", "tier3_medium": ["Accountant"], "tier3_high": ["Accountant", "Politician"]},
    "property-management": {"connector_analogist": "Analogist", "tier3_medium": ["Lawyer"], "tier3_high": ["Lawyer", "Accountant"]},
    "youth-mentorship": {"connector_analogist": "Connector", "tier3_medium": ["Lawyer"], "tier3_high": ["Lawyer", "Politician"]},
    "school-consolidation": {"connector_analogist": "Connector", "tier3_medium": ["Politician"], "tier3_high": ["Politician", "Accountant"]},
    "mobile-app": {"connector_analogist": "Connector", "tier3_medium": [], "tier3_high": ["Accountant"]},
    "wearable-device": {"connector_analogist": "Connector", "tier3_medium": ["Technical Expert"], "tier3_high": ["Technical Expert", "Lawyer"]},
    "career-change": {"connector_analogist": "Connector", "tier3_medium": [], "tier3_high": ["Accountant"]},
}

PERSONA_SLUG = {
    "Questioner": "the-questioner", "Analyst": "the-analyst",
    "Devil's Advocate": "the-devils-advocate", "Appreciative Inquirer": "the-appreciative-inquirer",
    "Audience Advocate": "the-audience-advocate", "Systems Thinker": "the-systems-thinker",
    "Provocateur": "the-provocateur", "Analogist": "the-analogist",
    "Visionary": "the-visionary", "Storyteller": "the-storyteller",
    "Constraint Flipper": "the-constraint-flipper", "Empath": "the-empath",
    "First Principles Thinker": "the-first-principles-thinker", "Futurist": "the-futurist",
    "Accountant": "the-accountant", "Lawyer": "the-lawyer",
    "Politician": "the-politician", "Technical Expert": "the-technical-expert",
    "Connector": "the-connector",
}

TIER1 = ["Analogist", "Analyst", "Appreciative Inquirer", "Audience Advocate",
         "Devil's Advocate", "Provocateur", "Questioner", "Storyteller",
         "Systems Thinker", "Visionary"]
TIER2 = ["Constraint Flipper", "Empath", "First Principles Thinker", "Futurist"]


def preferred_source_tier(floor, ceiling):
    if ceiling <= 8:
        return "q05-08"
    if ceiling <= 12:
        return "q08-12"
    if ceiling <= 15:
        return "q10-15"
    return "q15-20"


def parse_questions(md_text):
    text = md_text
    if text.startswith('---'):
        parts = text.split('---', 2)
        if len(parts) >= 3:
            text = parts[2]
    text = re.split(r'\n\*\*Total questions\*\*', text)[0]
    paragraphs = re.split(r'\n\s*\n', text)
    paragraphs = [p.strip() for p in paragraphs if p.strip()]
    questions = []
    new_fmt = re.compile(r'^\d+\.\s+\*\*')
    old_fmt = re.compile(r'^\*\*[^*]+\?\*\*')
    for para in paragraphs:
        if para.startswith('#') or para.startswith('---'):
            continue
        if new_fmt.match(para):
            questions.append(para)
        elif old_fmt.match(para):
            questions.append(para)
    return questions


def normalize_question(q, idx):
    m = re.match(r'^\d+\.\s+(.*)', q, flags=re.DOTALL)
    body = m.group(1) if m else q
    return f"{idx}. {body}"


def find_source_file(topic, persona, preferred_tier):
    base = SRC / topic / "questions/by-persona"
    slug = PERSONA_SLUG[persona]
    tier_order_map = {
        "q05-08": ["q05-08", "q05-10", "q08-12", "q10-15", "q15-20"],
        "q08-12": ["q08-12", "q10-15", "q05-10", "q05-08", "q15-20"],
        "q10-15": ["q10-15", "q08-12", "q15-20", "q05-10", "q05-08"],
        "q15-20": ["q15-20", "q10-15", "q08-12", "q05-10", "q05-08"],
    }
    tier_order = tier_order_map.get(preferred_tier, [preferred_tier])
    for tier in tier_order:
        pattern = f"{slug}_{tier}_*.md"
        candidates = sorted(base.glob(pattern))
        if candidates:
            candidates.sort(key=lambda p: p.name)
            return candidates[-1], tier
    return None, None


def compute_personas_for_cell(topic, effort):
    ca_pick = GT1[topic]["connector_analogist"]
    tier1_listed = [p for p in TIER1 if p != "Analogist"]
    personas = list(tier1_listed)
    if effort == "high":
        personas.extend(TIER2)
    if effort in ("medium", "high"):
        tier3_selected = sorted(GT1[topic].get(f"tier3_{effort}", []))
        personas.extend(tier3_selected)
    personas.append(ca_pick)
    return personas


def slice_questions(qs, floor, ceiling):
    n = len(qs)
    if floor <= n <= ceiling:
        return qs, "use-as-is", False
    if n > ceiling:
        return qs[:ceiling], f"truncate to {ceiling}", False
    return qs, f"use full file (shortfall by {floor - n})", True


def assemble_cell(topic, effort):
    personas = compute_personas_for_cell(topic, effort)
    results = []
    plan_rows = []
    total_qs = 0
    any_shortfall = False
    missing_slots = []
    volume_distribution = {}
    for persona in personas:
        vr = VOLUME_RANGES.get((persona, effort))
        if vr is None:
            continue
        floor, ceiling = vr
        preferred_tier = preferred_source_tier(floor, ceiling)
        src_path, actual_tier = find_source_file(topic, persona, preferred_tier)
        slot_id = f"{topic} / {effort} / {persona}"
        if src_path is None:
            plan_rows.append({"slot": slot_id, "target": f"{floor}-{ceiling}", "source_path": "",
                              "source_count": 0, "decision": "missing", "shortfall": True})
            missing_slots.append(slot_id)
            results.append({"persona": persona, "synth_append": SYNTH_APPEND[persona],
                            "target_range": f"{floor}-{ceiling}", "source_tier": "",
                            "actual_count": 0, "questions": [], "missing": True})
            any_shortfall = True
            continue
        md = src_path.read_text()
        qs_all = parse_questions(md)
        source_count = len(qs_all)
        sliced, decision, shortfall = slice_questions(qs_all, floor, ceiling)
        if shortfall:
            any_shortfall = True
        rel_path = src_path.relative_to(REPO)
        plan_rows.append({"slot": slot_id, "target": f"{floor}-{ceiling}",
                          "source_path": str(rel_path), "source_count": source_count,
                          "decision": decision, "shortfall": shortfall})
        total_qs += len(sliced)
        volume_distribution[actual_tier] = volume_distribution.get(actual_tier, 0) + 1
        results.append({"persona": persona, "synth_append": SYNTH_APPEND[persona],
                        "target_range": f"{floor}-{ceiling}", "source_tier": actual_tier,
                        "actual_count": len(sliced), "source_count": source_count,
                        "questions": sliced, "decision": decision,
                        "shortfall": shortfall, "missing": False})
    return {"topic": topic, "effort": effort, "personas_ordered": personas,
            "results": results, "plan_rows": plan_rows, "total_questions": total_qs,
            "shortfall_flag": any_shortfall, "missing_slots": missing_slots,
            "volume_distribution": volume_distribution}


def write_test_data_file(cell):
    topic = cell["topic"]
    effort = cell["effort"]
    display = TOPIC_DISPLAY[topic]
    persona_count = len([r for r in cell["results"] if not r.get("missing")])
    lines = []
    lines.append(f"# Test Data — {display} — {effort.capitalize()} Effort")
    lines.append("")
    lines.append("**Assembled:** 2026-04-18 by TDA1 subagent")
    lines.append("**Source:** test-runs/symphony-phase2-questions-persona-eval/ (volumes sliced per assembly-plan.md)")
    lines.append(f"**Total personas:** {persona_count}")
    lines.append(f"**Total questions:** {cell['total_questions']}")
    lines.append("")
    lines.append("---")
    lines.append("")
    for r in cell["results"]:
        persona = r["persona"]
        sa = r["synth_append"]
        volume = r["actual_count"]
        lines.append(f"## Persona: {persona} ({sa} — Volume {volume})")
        lines.append("")
        if r.get("missing"):
            lines.append("MISSING: no source file found for this slot. Flagged for BL1 review.")
            lines.append("")
        else:
            for i, q in enumerate(r["questions"], start=1):
                lines.append(normalize_question(q, i))
                lines.append("")
        lines.append("---")
        lines.append("")
    out_path = OUT_TEST_DATA / f"{topic}_{effort}.md"
    out_path.write_text("\n".join(lines))
    return out_path


def write_topic_persona_mapping(all_cells):
    lines = []
    lines.append("# Topic-Persona Mapping")
    lines.append("")
    lines.append("**Generated:** 2026-04-18 by TDA1")
    lines.append("**Purpose:** Deliverable 1 — canonical mapping of personas, volume ranges, and Synthesize/Append treatment for each of the 30 topic-effort combinations.")
    lines.append("")
    lines.append("**Reading order:** This file drives Deliverable 2 (`assembly-plan.md`) and Deliverable 3 (30 test files in `test-data/`). Tier 3 selections reflect GT1 Rev 3 (canonical 2026-04-18).")
    lines.append("")
    lines.append("---")
    lines.append("")
    for cell in all_cells:
        topic = cell["topic"]
        effort = cell["effort"]
        display = TOPIC_DISPLAY[topic]
        ca_pick = GT1[topic]["connector_analogist"]
        lines.append(f"### {display} — {effort.capitalize()} Effort")
        lines.append("")
        lines.append("**Tier 1 personas (all 10):**")
        lines.append("")
        lines.append("| Persona | Volume Range | Source File Tier | Synthesize/Append |")
        lines.append("|---|---|---|---|")
        tier1_display = sorted([p for p in TIER1 if p != "Analogist"] + [ca_pick])
        for p in tier1_display:
            vr = VOLUME_RANGES.get((p, effort))
            if vr is None:
                continue
            floor, ceiling = vr
            actual = next((r for r in cell["results"] if r["persona"] == p), None)
            source_tier = (actual["source_tier"] if actual else "") or preferred_source_tier(floor, ceiling)
            sa = SYNTH_APPEND[p]
            lines.append(f"| {p} | {floor}-{ceiling} | {source_tier} | {sa} |")
        lines.append("")
        lines.append("**Tier 2 personas (only at high effort):**")
        lines.append("")
        if effort == "high":
            lines.append("| Persona | Volume Range | Source File Tier | Synthesize/Append |")
            lines.append("|---|---|---|---|")
            for p in TIER2:
                vr = VOLUME_RANGES.get((p, effort))
                if vr is None:
                    continue
                floor, ceiling = vr
                actual = next((r for r in cell["results"] if r["persona"] == p), None)
                source_tier = (actual["source_tier"] if actual else "") or preferred_source_tier(floor, ceiling)
                sa = SYNTH_APPEND[p]
                lines.append(f"| {p} | {floor}-{ceiling} | {source_tier} | {sa} |")
        else:
            lines.append("(omitted at low/medium effort)")
        lines.append("")
        lines.append("**Tier 3 personas (per GT1 for this topic-effort; omitted at low):**")
        lines.append("")
        if effort == "low":
            lines.append("(omitted at low effort)")
        else:
            selected = GT1[topic].get(f"tier3_{effort}", [])
            if not selected:
                lines.append("(none selected by GT1 for this cell)")
            else:
                lines.append("| Persona | Volume Range | Source File Tier | Synthesize/Append |")
                lines.append("|---|---|---|---|")
                for p in sorted(selected):
                    vr = VOLUME_RANGES.get((p, effort))
                    floor, ceiling = vr
                    actual = next((r for r in cell["results"] if r["persona"] == p), None)
                    source_tier = (actual["source_tier"] if actual else "") or preferred_source_tier(floor, ceiling)
                    sa = SYNTH_APPEND[p]
                    lines.append(f"| {p} | {floor}-{ceiling} | {source_tier} | {sa} |")
        lines.append("")
        ca_note = "Append — always" if ca_pick == "Connector" else "Append — default"
        lines.append(f"**Connector/Analogist:** {ca_pick} (per GT1; {ca_note})")
        lines.append("")
        persona_count = len([r for r in cell["results"] if not r.get("missing")])
        synth_count = sum(r["actual_count"] for r in cell["results"] if r["synth_append"] == "Synthesize")
        append_count = sum(r["actual_count"] for r in cell["results"] if r["synth_append"] == "Append")
        lines.append(f"**Total personas:** {persona_count}")
        lines.append(f"**Expected Synthesize questions:** {synth_count}")
        lines.append(f"**Expected Append questions:** {append_count}")
        lines.append("")
        lines.append("---")
        lines.append("")
    (OUT_DATA_PREP / "topic-persona-mapping.md").write_text("\n".join(lines))


def write_assembly_plan(all_cells):
    lines = []
    lines.append("# Assembly Plan")
    lines.append("")
    lines.append("**Generated:** 2026-04-18 by TDA1")
    lines.append("**Purpose:** Deliverable 2 — per-slot source-file resolution and slicing decisions. This table is the sole source of truth for reproducing the 30 test files byte-identically.")
    lines.append("")
    lines.append("**Slicing decision vocabulary:**")
    lines.append("- **use-as-is** — source count is within target range")
    lines.append("- **truncate to N** — source exceeds ceiling; keep first N in source order")
    lines.append("- **use full file (shortfall by N)** — source below floor; use all available, flag gap")
    lines.append("- **missing** — no source data; slot left empty with MISSING marker in test file")
    lines.append("")
    lines.append("---")
    lines.append("")
    lines.append("| Slot | Target Volume Range | Source File Path | Source Question Count | Slicing Decision | Shortfall? |")
    lines.append("|---|---|---|---|---|---|")
    for cell in all_cells:
        for row in cell["plan_rows"]:
            shortfall = "Yes" if row["shortfall"] else "No"
            path = row["source_path"] if row["source_path"] else "(none)"
            lines.append(f"| {row['slot']} | {row['target']} | {path} | {row['source_count']} | {row['decision']} | {shortfall} |")
    (OUT_DATA_PREP / "assembly-plan.md").write_text("\n".join(lines))


def write_assembly_analytics(all_cells):
    lines = []
    lines.append("# Assembly Analytics")
    lines.append("")
    lines.append("**Generated:** 2026-04-18 by TDA1")
    lines.append("**Purpose:** Deliverable 4 — per-file metrics, aggregates across effort levels, and systemic-shortfall detection for BL1 weighting recommendations.")
    lines.append("")
    lines.append("---")
    lines.append("")
    lines.append("## Per-File Metrics")
    lines.append("")
    lines.append("| Topic | Effort | Persona Count | Total Questions | Synthesize Q Count | Append Q Count | Volume Distribution | Shortfall Flag |")
    lines.append("|---|---|---|---|---|---|---|---|")
    for cell in all_cells:
        pc = len([r for r in cell["results"] if not r.get("missing")])
        synth_q = sum(r["actual_count"] for r in cell["results"] if r["synth_append"] == "Synthesize")
        app_q = sum(r["actual_count"] for r in cell["results"] if r["synth_append"] == "Append")
        vd = cell["volume_distribution"]
        vd_str = ", ".join(f"{k}: {v}" for k, v in sorted(vd.items())) or "—"
        sf = "Yes" if cell["shortfall_flag"] else "No"
        lines.append(f"| {cell['topic']} | {cell['effort']} | {pc} | {cell['total_questions']} | {synth_q} | {app_q} | {vd_str} | {sf} |")
    lines.append("")
    lines.append("## Aggregates")
    lines.append("")
    lines.append("### Distribution across effort levels")
    lines.append("")
    lines.append("| Effort | Mean Persona Count | Median Persona Count | Mean Question Count | Median Question Count |")
    lines.append("|---|---|---|---|---|")
    for eff in EFFORTS:
        effcells = [c for c in all_cells if c["effort"] == eff]
        pcs = [len([r for r in c["results"] if not r.get("missing")]) for c in effcells]
        qcs = [c["total_questions"] for c in effcells]
        lines.append(f"| {eff} | {statistics.mean(pcs):.1f} | {statistics.median(pcs):.1f} | {statistics.mean(qcs):.1f} | {statistics.median(qcs):.1f} |")
    lines.append("")
    lines.append("### Synthesize/Append ratios")
    lines.append("")
    lines.append("| Effort | Total Synthesize Q | Total Append Q | Synth:Append Ratio |")
    lines.append("|---|---|---|---|")
    all_synth = 0
    all_app = 0
    for eff in EFFORTS:
        effcells = [c for c in all_cells if c["effort"] == eff]
        synth = sum(sum(r["actual_count"] for r in c["results"] if r["synth_append"] == "Synthesize") for c in effcells)
        app = sum(sum(r["actual_count"] for r in c["results"] if r["synth_append"] == "Append") for c in effcells)
        all_synth += synth
        all_app += app
        ratio = synth / app if app else float('inf')
        lines.append(f"| {eff} | {synth} | {app} | {ratio:.2f} |")
    all_ratio = all_synth / all_app if all_app else float('inf')
    lines.append(f"| **overall** | {all_synth} | {all_app} | {all_ratio:.2f} |")
    lines.append("")
    lines.append("### Shortfall summary")
    lines.append("")
    sf_files = [c for c in all_cells if c["shortfall_flag"]]
    lines.append(f"- **Files flagged with at least one shortfall:** {len(sf_files)} of 30")
    persona_shortfall_cells = {}
    for c in all_cells:
        for r in c["results"]:
            if r.get("shortfall") or r.get("missing"):
                persona_shortfall_cells.setdefault(r["persona"], []).append((c["topic"], c["effort"], r.get("actual_count", 0), r["target_range"]))
    lines.append("")
    lines.append("### Volume category distribution (all 30 files combined)")
    lines.append("")
    lines.append("| Source Tier | Slot Count |")
    lines.append("|---|---|")
    source_totals = {}
    for c in all_cells:
        for tier, count in c["volume_distribution"].items():
            source_totals[tier] = source_totals.get(tier, 0) + count
    for t in ["q05-08", "q05-10", "q08-12", "q10-15", "q15-20"]:
        if t in source_totals:
            lines.append(f"| {t} | {source_totals[t]} |")
    lines.append("")
    lines.append("## Systemic Shortfall Summary")
    lines.append("")
    lines.append("Persona-level aggregation: cells where the source provided fewer questions than the target floor (or data was missing).")
    lines.append("")
    systemic = []
    if not persona_shortfall_cells:
        lines.append("No per-persona shortfalls detected across the 30 files.")
        lines.append("")
    else:
        lines.append("| Persona | Cells Short of Floor | Cells Affected | Pattern Notes |")
        lines.append("|---|---|---|---|")
        for persona, cells in sorted(persona_shortfall_cells.items()):
            cell_list = ", ".join(f"{t}/{e}" for (t, e, _, _) in cells)
            n = len(cells)
            efforts_hit = set(e for (_, e, _, _) in cells)
            topics_hit = set(t for (t, _, _, _) in cells)
            if len(efforts_hit) == 3:
                pattern = "consistent across effort levels"
            elif len(efforts_hit) == 1:
                pattern = f"only at {next(iter(efforts_hit))} effort"
            else:
                pattern = f"at {', '.join(sorted(efforts_hit))} effort"
            if len(topics_hit) == 10:
                pattern += "; all topics"
            elif len(topics_hit) > 5:
                pattern += f"; {len(topics_hit)}/10 topics"
            else:
                pattern += f"; topics: {', '.join(sorted(topics_hit))}"
            lines.append(f"| {persona} | {n} of 30 | {cell_list} | {pattern} |")
            if n >= 3:
                systemic.append(persona)
        lines.append("")
    if systemic:
        lines.append(f"**Systemic personas (short on >= 3 of 30 cells):** {', '.join(systemic)}")
        lines.append("")
        lines.append("**BL1 weighting recommendation:** For each persona above, treat per-persona representation minimums as *advisory floors* rather than hard scoring thresholds. A synthesis output that proportionally under-represents one of these personas should not be penalized as severely as it would for a non-systemic persona, because the source data itself constrains how many distinct questions were available.")
    else:
        lines.append("**No systemic personas detected** (no persona short on >= 3 of 30 cells).")
    lines.append("")
    (OUT_DATA_PREP / "assembly-analytics.md").write_text("\n".join(lines))
    return persona_shortfall_cells, systemic


def write_findings(all_cells, persona_shortfall_cells, systemic):
    lines = []
    lines.append("# TDA1 — Test Data Assembly Findings")
    lines.append("")
    lines.append("**Date:** 2026-04-18")
    lines.append("**Author:** TDA1 subagent")
    lines.append("**Scope:** Phase 1 of Phase 2C synthesis investigation — assembly of 30 test files (10 topics x 3 effort levels) from Phase 2B persona-eval source data.")
    lines.append("")
    lines.append("---")
    lines.append("")
    lines.append("## 1. Summary Table")
    lines.append("")
    lines.append("| Topic | Effort | Persona Count | Question Count | Synthesize Q | Append Q | Shortfall Flag |")
    lines.append("|---|---|---|---|---|---|---|")
    for cell in all_cells:
        pc = len([r for r in cell["results"] if not r.get("missing")])
        synth_q = sum(r["actual_count"] for r in cell["results"] if r["synth_append"] == "Synthesize")
        app_q = sum(r["actual_count"] for r in cell["results"] if r["synth_append"] == "Append")
        sf = "Yes" if cell["shortfall_flag"] else "No"
        lines.append(f"| {cell['topic']} | {cell['effort']} | {pc} | {cell['total_questions']} | {synth_q} | {app_q} | {sf} |")
    lines.append("")
    lines.append("## 2. Assembly Decisions")
    lines.append("")
    lines.append("### 2.1 Slicing decision classes")
    lines.append("")
    lines.append("- **use-as-is**: Source count is within the target range. The entire source file is used verbatim.")
    lines.append("- **truncate to N**: Source exceeds the range ceiling. We take the first N questions in source order (where N = ceiling).")
    lines.append("- **use full file (shortfall by N)**: Source is below the target floor. All available questions are used and the gap is flagged.")
    lines.append("- **missing**: No source file exists. The persona's section is stamped with `MISSING:` and escalated via the Missing-data log (Section 4).")
    lines.append("")
    lines.append("### 2.2 Judgment calls where methodology was ambiguous")
    lines.append("")
    lines.append("**Source-tier selection rule.** The methodology's Volume Slicing section states: 'Prefer q10-15 data for Structural/Analytical personas and q05-10 data for Perspective personas.' We extend this to a general rule: match the target range's ceiling to the closest source-tier ceiling.")
    lines.append("")
    lines.append("| Target range | Preferred source tier | Rationale |")
    lines.append("|---|---|---|")
    lines.append("| 5-8 | q05-08 | Perspective personas' native range |")
    lines.append("| 7-10 (FPT high) | q08-12 | Ceiling 10 sits inside q08-12; truncate to 10 |")
    lines.append("| 8-10 (Lawyer/Politician/TE) | q08-12 | Ceiling 10 sits inside q08-12; truncate to 10 |")
    lines.append("| 8-12 | q08-12 | Direct match |")
    lines.append("| 10-15 | q10-15 | Direct match |")
    lines.append("| 15-20 (Questioner high) | q15-20 | Direct match |")
    lines.append("")
    lines.append("**Persona ordering rule.** Per instructions: 'Tier 1 (alphabetical), Tier 2 (alphabetical), Tier 3 (alphabetical), Connector/Analogist last.' We interpret this as: Tier 1 minus Analogist (9 personas, alphabetical) -> Tier 2 (if high) -> Tier 3 selected by GT1 (alphabetical) -> Connector or Analogist appended last. This produces consistent ordering across all 30 files regardless of swap state.")
    lines.append("")
    lines.append("**Connector vs Analogist treatment.** At low effort, per methodology, 'Connector/Analogist still applies.' We default to Analogist unless GT1 explicitly prescribes Connector for that topic. GT1 Rev 3 prescribes Connector for 5 of 10 topics (youth-mentorship, school-consolidation, mobile-app, wearable-device, career-change); Analogist for the other 5. We honor GT1's selection at all effort levels, since the swap decision is a topic-level property independent of effort per R7.")
    lines.append("")
    lines.append("**FPT volume mapping.** First Principles Thinker's target is 7-10 at high effort. No source tier `q07-10` exists. We map to q08-12 and truncate to 10 — consistent with R5's Structural classification note that FPT 'exhausts distinctive contribution by 10-11 questions.'")
    lines.append("")
    lines.append("**Question-number normalization.** Source files use two conventions: new-format (2026-02-24) with `N. **Question?**` prefixes, and old-format (2026-02-18/22) without. We strip any leading `N.` and renumber 1..N per persona in the assembled file, preserving question content verbatim.")
    lines.append("")
    lines.append("**Politician at tool-library medium.** No `q08-12` Politician source exists for tool-library (the 2026-02-24 regeneration sweep did not cover Politician for topics where GT1 later assigned it). The available source is `q15-20_2026-02-18`. We apply `truncate to 10` per the target ceiling. This is the single largest gap between source-tier and target-tier in the assembly; downstream consumers should be aware the Politician's tool-library content was generated against an older prompt at a different date.")
    lines.append("")
    lines.append("## 3. Shortfall Log")
    lines.append("")
    if not persona_shortfall_cells:
        lines.append("No shortfalls detected across all 30 files.")
    else:
        lines.append("| Persona | Topic | Effort | Expected Range | Actual Count | Proposed Mitigation |")
        lines.append("|---|---|---|---|---|---|")
        for persona, cells in sorted(persona_shortfall_cells.items()):
            for (topic, effort, actual, target_range) in cells:
                if actual == 0:
                    mitigation = "regenerate (missing source)"
                elif persona in systemic:
                    mitigation = "BL1 advisory weighting"
                else:
                    mitigation = "regenerate if BL1 baselines require higher volume; otherwise BL1 advisory weighting"
                lines.append(f"| {persona} | {topic} | {effort} | {target_range} | {actual} | {mitigation} |")
    lines.append("")
    lines.append("### 3.1 Systemic Shortfall Summary")
    lines.append("")
    if persona_shortfall_cells:
        lines.append("| Persona | Cells Short of Floor | Cells Affected | Pattern Notes |")
        lines.append("|---|---|---|---|")
        for persona, cells in sorted(persona_shortfall_cells.items()):
            cell_list = ", ".join(f"{t}/{e}" for (t, e, _, _) in cells)
            n = len(cells)
            efforts_hit = set(e for (_, e, _, _) in cells)
            topics_hit = set(t for (t, _, _, _) in cells)
            if len(efforts_hit) == 3:
                pattern = "consistent across effort levels"
            elif len(efforts_hit) == 1:
                pattern = f"only at {next(iter(efforts_hit))} effort"
            else:
                pattern = f"at {', '.join(sorted(efforts_hit))} effort"
            if len(topics_hit) == 10:
                pattern += "; all topics"
            elif len(topics_hit) > 5:
                pattern += f"; {len(topics_hit)}/10 topics"
            else:
                pattern += f"; topics: {', '.join(sorted(topics_hit))}"
            lines.append(f"| {persona} | {n} of 30 | {cell_list} | {pattern} |")
        lines.append("")
    if systemic:
        lines.append(f"**Systemic personas (>= 3 of 30 cells short):** {', '.join(systemic)}")
        lines.append("")
        for p in systemic:
            lines.append(f"- **BL1 weighting recommendation for {p}:** Treat per-persona representation minimums as an *advisory floor* rather than a hard scoring threshold. A synthesis output that under-represents {p} should not be penalized with the same severity as it would for a non-systemic persona, because source data itself constrains how much material was available for {p} in the test files.")
        lines.append("")
    else:
        lines.append("**No systemic shortfall personas detected.** All shortfalls (if any) are isolated and do not warrant BL1 scoring-threshold adjustments.")
        lines.append("")
    lines.append("## 4. Missing-Data Log")
    lines.append("")
    missing_total = []
    for cell in all_cells:
        for r in cell["results"]:
            if r.get("missing"):
                missing_total.append((cell["topic"], cell["effort"], r["persona"]))
    if not missing_total:
        lines.append("No slots missing source data. All 30 test files are fully populated.")
    else:
        lines.append("| Topic | Effort | Persona | Required Action |")
        lines.append("|---|---|---|---|")
        for (t, e, p) in missing_total:
            lines.append(f"| {t} | {e} | {p} | Regenerate persona output at appropriate volume before BL1 baseline run |")
    lines.append("")
    lines.append("## 5. GT1 Dependency Status")
    lines.append("")
    lines.append("**GT1 status:** Canonical (Rev 3, 2026-04-18). Source: `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/GT1_ground-truth-assignments.md` and `.../ground-truth/expected-assignments.md`. All Tier 3 selections and Connector/Analogist swap decisions in this assembly derive from GT1 Rev 3 directly; no provisional-flagging is required on this dimension.")
    lines.append("")
    lines.append("### 5.1 BL1 Watchlist (GT1 Medium-Confidence Cells)")
    lines.append("")
    lines.append("GT1 Rev 3 labels the following 5 cells as Medium-confidence — canonical but most revisable during GT1's walkthrough:")
    lines.append("")
    lines.append("| Cell | GT1 Call | Why Medium |")
    lines.append("|---|---|---|")
    lines.append("| tool-library / medium | Politician | Politician-at-medium rests on reading 'stakeholder complexity' as a strong trigger; strict rubric could rate moderate |")
    lines.append("| food-truck / high | Accountant + Politician | Politician-as-moderate rests on regulatory-process-engagement language |")
    lines.append("| property-management / high | Lawyer + Accountant (alt: Politician) | 3 strong triggers compete for 2 slots |")
    lines.append("| youth-mentorship / high | Lawyer + Politician (alt: Lawyer only) | Politician-as-moderate defensible; Lawyer-only also acceptable |")
    lines.append("| school-consolidation / medium | Politician (primary; Accountant also strong — tiebreaker) | Both triggers genuinely strong; 0-1 ceiling forces single pick |")
    lines.append("")
    lines.append("**Framing for BL1:** These cells are canonical but were the most revisable during GT1's walkthrough. Treat their Tier 3 / Connector-Analogist composition as stable, but if SP1 later produces anomalously poor scores on these specific cells, re-check GT1 before blaming the synthesis prompt.")
    lines.append("")
    lines.append("## 6. Handoff Notes for BL1")
    lines.append("")
    lines.append("Per-topic notes flagging test files that require extra care during baseline establishment:")
    lines.append("")
    watchlist_keys = {
        "tool-library / medium", "food-truck / high", "property-management / high",
        "youth-mentorship / high", "school-consolidation / medium",
    }
    for topic in TOPICS:
        display = TOPIC_DISPLAY[topic]
        notes = []
        for cell in all_cells:
            if cell["topic"] != topic:
                continue
            sf_personas = [r["persona"] for r in cell["results"] if r.get("shortfall") and not r.get("missing")]
            miss_personas = [r["persona"] for r in cell["results"] if r.get("missing")]
            if sf_personas:
                notes.append(f"- **{cell['effort']}**: Shortfalls in {', '.join(sf_personas)} — use BL1 advisory weighting on these personas' representation minimums.")
            if miss_personas:
                notes.append(f"- **{cell['effort']}**: MISSING source data for {', '.join(miss_personas)} — regenerate before BL1 run.")
            key = f"{topic} / {cell['effort']}"
            if key in watchlist_keys:
                notes.append(f"- **{cell['effort']}**: GT1 Medium-confidence cell. Tier 3 / Connector-Analogist composition is canonical but was revisable during GT1 walkthrough — re-check GT1 if SP1 scores anomalously here.")
        if notes:
            lines.append(f"### {display}")
            lines.append("")
            for note in notes:
                lines.append(note)
            lines.append("")
    (OUT_FINDINGS / "TDA1_test-data-assembly.md").write_text("\n".join(lines))


def main():
    all_cells = []
    for topic in TOPICS:
        for effort in EFFORTS:
            cell = assemble_cell(topic, effort)
            write_test_data_file(cell)
            all_cells.append(cell)
    write_topic_persona_mapping(all_cells)
    write_assembly_plan(all_cells)
    persona_shortfalls, systemic = write_assembly_analytics(all_cells)
    write_findings(all_cells, persona_shortfalls, systemic)
    print(f"Assembled 30 test files.")
    total_q = sum(c["total_questions"] for c in all_cells)
    print(f"Total questions across all files: {total_q}")
    sf = sum(1 for c in all_cells if c["shortfall_flag"])
    print(f"Files with at least one shortfall: {sf}")
    miss = sum(len(c["missing_slots"]) for c in all_cells)
    print(f"Total missing slots: {miss}")
    print(f"Systemic shortfall personas: {systemic}")


if __name__ == "__main__":
    main()

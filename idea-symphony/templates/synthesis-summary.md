# synthesis/{{cluster_slug}}_summary.md Template

Executive-level summary of a topic cluster. Produced at every effort level by the relevant Phase 4 prompt.

## Canonical structure

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
date: {YYYY-MM-DD}
effort: "[min|low|medium|high]"
stage: "Phase 4: Summary Generation"
topic-cluster: "{{cluster_slug}}"
---

# Summary: [Topic Cluster Name]

---

## Executive Summary

[Paragraphs capturing the most important insights. Length scales with effort: 2-3 paragraphs at `min`/`low`; 3-5 paragraphs (200-400 words) at `medium`/`high`.]

---

## Key Themes

### [Theme 1 Name]
[2-4 sentences describing this recurring theme across responses]

### [Theme 2 Name]
[2-4 sentences describing this theme]

### [Theme 3 Name]
[2-4 sentences describing this theme]

[Include 3-5 themes total]

---

## Recommended Actions

### Immediate (0-3 months)
- [Specific action item]
- [Specific action item]

### Near-term (3-12 months)
- [Specific action item]
- [Specific action item]

### Long-term (1+ years)
- [Specific action item]
- [Specific action item]

[Item count scales with effort: 4-8 at `min`/`low`; 6-10 at `medium`/`high`.]

---

## Key Considerations

**Opportunities:**
- [Specific opportunity identified in responses]
- [Specific opportunity]

**Risks & Challenges:**
- [Specific risk or challenge identified]
- [Specific risk or challenge]

**Trade-offs:**
- [Specific trade-off between competing priorities]
- [Specific trade-off]

[3-5 per category at `medium`/`high`; bullets at `min`. See the `low` variant below for a DA/Pragmatist-specific restructuring.]

---

**Questions addressed**: [count]
**Response sources**: [count or persona list]
```

## `low` effort variant — Key Considerations

At `low` effort the Key Considerations section restructures around the productive tension between The Devil's Advocate and The Pragmatist:

```markdown
## Key Considerations

**High-confidence items** (both personas agreed):
- [Point]
- [Point]

**Trade-offs** (DA and Pragmatist disagreed):
- [Specific trade-off — name both sides]
- [Specific trade-off]

**Blind-spot flags** (only one persona raised):
- [Flag — noted by The Devil's Advocate | The Pragmatist]
- [Flag]
```

## Frontmatter variants

- `min`/`low`: `stage: "Phase 4: Summary Generation"`
- `medium`/`high`: `stage: "Phase 4: Response Synthesis"` and adds `synthesis-type: "summary"`

## Section heading variant

`medium`/`high` uses **Recommended Next Steps** as the heading for the timeframe-bucketed action list; `min`/`low` uses **Recommended Actions**. Content structure is identical either way.

## Authoritative source by effort level

Each Phase 4 prompt is authoritative for the exact summary shape its subagent should produce — consult the prompt when in doubt:

- [phase4-synthesis-min.md](../prompts/phase4_summary-only_min-effort.md) — `min` effort (single-voice summarization)
- [phase4-synthesis-low.md](../prompts/phase4_summary-only_low-effort.md) — `low` effort (DA + Pragmatist consolidation, restructured Key Considerations)
- [phase4-synthesis.md](../prompts/phase4_full-synthesis.md) — `medium`/`high` (full multi-persona synthesis, richest form)

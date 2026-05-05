# synthesis/{{cluster_slug}}_summary.md Template

Executive-level summary of a topic cluster. Produced at every effort level by the relevant Phase 4 prompt.

## Canonical structure

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "[min|low|medium|high]"
stage: "Phase 4: Summary Generation"
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
---

# Summary: [Topic Cluster Name]

**Central Tension**: [One sentence; if no productive tension to name, that itself is a signal — say so. Required at all effort levels (`min`/`low`/`medium`/`high`).]

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

**Categorical reframe (optional, `medium`/`high` only):** If the cluster has a categorical reframe — a sentence-level claim that reframes the cluster's question itself ("we are not running X; we are running Y") — surface it as a single declarative sentence at the top of `## Key Themes`, separate from the individual themes. The reframe should be derivable from at least three personas' responses.

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

**Central Tension at `low` effort — inverted-framing pairs.** When both lenses (DA and Pragmatist) point at the same coordinator/structure/mechanism from opposite directions (one as risk-source, the other as solution-vector), name that inverted-framing pair as the Central Tension explicitly. Inverted framings are the highest-value tensions to preserve and the most likely to be smoothed into false convergence.

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

**Persona-name and character-name prohibition** (`medium`/`high` `_summary.md`): the full-synthesis prompt bans persona names and character names (Marcus, Maria, Margaret, Elena, Sarah, etc.) from `_summary.md` body prose. Persona names are confined to `attributed/{cluster}.md`. See [phase4_full-synthesis.md](../prompts/phase4_full-synthesis.md) for the complete rule.

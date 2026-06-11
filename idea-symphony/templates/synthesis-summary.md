# synthesis/{{cluster_slug}}_summary.md Template

Executive-level summary of a topic cluster. Produced at every effort level by the relevant Phase 4 prompt.

## Canonical structure

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "{{effort}}"
stage: "Phase 4: Response Synthesis"
model-requested: "{{model_requested}}"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
synthesis-type: "summary"
central-tension: "[One sentence naming the cluster's organizing trade-off, or its convergent finding if broadly convergent. It may be lightly compressed relative to the Executive Summary's opening. Phase 5 reads this key.]"
---

# Summary: [Topic Cluster Name]

## Executive Summary

[The opening should state the cluster's organizing tension if it has one — a genuine trade-off the personas did not resolve — carried as natural prose, not a labeled line. If the cluster is broadly convergent, open with the convergent finding instead; a cluster without a productive tension is a normal outcome, not a gap to flag. The opening tension or finding should match the `central-tension:` frontmatter claim. Length scales with effort: 2-3 paragraphs at `min`/`low`; 3-5 paragraphs (200-400 words) at `medium`/`high`.]

---

## Key Themes

### [Theme 1 Name]
[Sentences describing a recurring theme across responses]

### [Theme 2 Name]
[Sentences describing another recurring theme across responses]

### [Theme 3 Name]
[Sentences describing another recurring theme across responses]

[Length scales with effort: 3-5 themes of 2-3 sentences each at `min`/`low`; 5-8 themes of 2-4 sentences each at `medium`/`high`.]

**Categorical reframe (exceptional, `medium`/`high` only):** A categorical reframe is a sentence-level reversal — produced by a single persona, corroborated by at least two others — that changes which actions get prioritized in the cluster. Most clusters will not have one. Surfacing a reframe that is not load-bearing is worse than absence: it produces rhetorical uniformity across clusters and trains downstream Phase 5 output to imitate the shape. If a candidate reframe restates an existing theme without changing which actions are prioritized, omit it. When a genuine reframe is present, surface it as a single declarative sentence at the top of `## Key Themes`, separate from the individual themes.

---

## Recommended Actions and Next Steps

### Immediate (0-3 months)
- [Specific action item]
- [Specific action item]

### Near-term (3-12 months)
- [Specific action item]
- [Specific action item]

### Long-term (1+ years)
- [Specific action item]
- [Specific action item]

[Item count scales with effort: 4-8 at `min`/`low`; 6-10 at `medium`/`high`. Tagging varies by effort level — `min`: each item tagged `[recurring]` or `[single]` (intra-response convergence); `low`: each item tagged `[convergent]`, `[trade-off]`, or `[unique: risk]` / `[unique: feasibility]`; `medium`/`high`: items untagged, prioritized by impact. The producing prompt defines each tag.]

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

[3-5 per category at `medium`/`high`; bullets at `min`. At `min`, the section additionally ends with a fourth subsection, **Conspicuous absences** (stances the brainstormer's output never took): 1-2 gaps specific to this cluster's substance, omitted entirely if nothing notable emerges — Phase 5 consumes this subsection. At `low`, the section restructures around the two lenses and ends with a **Neither-lens gaps** subsection (also Phase-5-consumed) — see the `low` variant below. The producing prompt defines each subsection's selection checks.]

---

**Questions addressed**: [count]
**Response sources**: [voice count or lens description]

[`medium`/`high` adds a third footer line: **Key insights synthesized**: [count].]
```

## Document length

Total length scales with effort: 500-800 words at `min`/`low`; 800-1500 words at `medium`/`high`.

## `low` effort variant — Key Considerations

At `low` effort the Key Considerations section restructures around the productive tension between The Devil's Advocate and The Pragmatist:

```markdown
## Key Considerations

**High-confidence items** (both lenses agreed):
- [Point]
- [Point]

**Trade-offs** (the two lenses disagreed):
- [Specific trade-off — name both sides substantively: "A feasibility case for X; a risk-oriented counterpoint that Y"]
- [Specific trade-off]

**Blind-spot flags** (only one lens raised):
- [Flag — risk-oriented | feasibility-oriented]
- [Flag — risk-oriented | feasibility-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- [2-3 cluster-relevant gaps from the producing prompt's five-category absence check; skip the subsection if no category passes. Phase 5 consumes this subsection.]
```

**Central Tension at `low` effort — inverted-framing pairs.** When both lenses (DA and Pragmatist) point at the same coordinator/structure/mechanism from opposite directions (one as risk-source, the other as solution-vector), name that inverted-framing pair as the Central Tension explicitly. Inverted framings are the highest-value tensions to preserve and the most likely to be smoothed into false convergence.

## Authoritative source by effort level

Each Phase 4 prompt is authoritative for the exact summary shape its subagent should produce — consult the prompt when in doubt:

- [phase4_summary-only_min-effort.md](../prompts/phase4_summary-only_min-effort.md) — `min` effort (single-voice summarization)
- [phase4_summary-only_low-effort.md](../prompts/phase4_summary-only_low-effort.md) — `low` effort (DA + Pragmatist consolidation, restructured Key Considerations)
- [phase4_full-synthesis.md](../prompts/phase4_full-synthesis.md) — `medium`/`high` (full multi-persona synthesis, richest form)

**Persona-name and character-name prohibition** (`medium`/`high` `_summary.md`): the full-synthesis prompt bans persona names and character names (Marcus, Maria, Margaret, Elena, Sarah, etc.) from `_summary.md` body prose. Persona names are confined to `attributed/{cluster}.md`. See [phase4_full-synthesis.md](../prompts/phase4_full-synthesis.md) for the complete rule.

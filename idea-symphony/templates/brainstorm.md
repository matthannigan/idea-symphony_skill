# BRAINSTORM.md Template

Final user-facing output document for a session. Produced in Phase 5 by consolidating `SUMMARIES.md` across all topic clusters.

## Word budgets per section, by effort level

The table below is the **per-section budget** the Phase 5 prompt should use when drafting. Each cell is a word range. The aggregate body word count (everything between the closing YAML `---` and the start of `## Session Index`) should also fall within the effort-scaled aggregate band at the bottom; per-section budgets are how that aggregate is achieved without late-stage compression.

| Section                              | min       | low       | medium    | high      |
|--------------------------------------|-----------|-----------|-----------|-----------|
| Executive Summary                    |   160-300 |   200-400 |   250-500 |   300-600 |
| Session Overview                     |    50-120 |    70-150 |    80-200 |   100-250 |
| Central Tensions *(≤4 entries)*      |    80-150 |    90-170 |   100-190 |   110-210 |
| Key Themes                           |   200-350 |   230-400 |   260-450 |   290-500 |
| Conspicuous Absences (session-level) |    80-150 |    90-170 |   100-190 |   110-210 |
| Recommended Next Steps               |   120-240 |   150-300 |   180-360 |   200-400 |
| **Per-topic block** *(×N clusters)*  |    80-160 |   100-200 |   120-250 |   150-300 |
| **Aggregate body band**              | 1600-2500 | 1800-3000 | 2400-4000 | 2800-4500 |

**Budgets are guidance, not entitlements.** A draft that hits the upper end of every range will exceed the aggregate band.Default to the **lower end** of each range; reach the upper end only when the content density of the section genuinely warrants it.

The per-topic block range applies *per cluster*, then multiplied by N. So at high effort with 10 clusters, the topic-summaries section as a whole spans 1500-3000 words.

Budgets compound roughly **25% per effort step** from min upward (min=1.00×, low=1.25×, medium=1.5625×, high=1.953×).

## Canonical structure

Per-topic links always point to `synthesis/{{cluster_slug}}_summary.md` (the `_summary.md` file exists at every effort level). The canonical block below carries no effort annotations; all Session Index effort conditionality lives as prose rules in the Phase 5 prompt (`prompts/phase5_final-output.md`): at `min`/`low` the `SYNTHESIS.md` line is deleted (the file does not exist) and the `synthesis/` line ends after "`_summary.md` (always)".

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "{{effort}}"
stage: "Phase 5: Final Output"
model-requested: "{{model_requested}}"
model-reported: "[model the subagent self-identifies as, e.g., claude-opus-4-7]"
---

# Brainstorming Session: [Project Name]

## Executive Summary
[3-5 paragraphs capturing the most important insights across all topic clusters. **Word target:** see "Executive Summary" row in the budget table at the top, by `{{effort}}`.]

## Session Overview
[Brief description of the brainstorming request and approach taken. **Word target:** see "Session Overview" row.]

## Central Tensions
[**Maximum 4 entries.** If clusters share a meta-tension, state it as a single sentence with the contributing clusters cited. Otherwise, list the most load-bearing per-cluster Central Tensions verbatim or near-verbatim from each cluster's `_summary.md`. Do not exceed 4 entries; do not pad to 4 if fewer are load-bearing. **Word target:** see "Central Tensions" row.]

## Key Themes
[Major themes that emerged across all topic clusters and participants. **Word target:** see "Key Themes" row.]

## Conspicuous Absences (session-level)
[Aggregate the per-cluster Conspicuous Absences (`min` clusters) and Neither-lens gaps (`low` clusters). If a structural absence recurs across clusters — a stakeholder type never engaged, a decision the brainstormer faced and declined, a precondition never established for a recommended action — name it here. If absences are cluster-specific, list 2–4 most load-bearing. Do not write this section as a confidence-positive recap; it is the section that says "what's not here." **Word target:** see "Conspicuous Absences" row.]

## Topic Summaries

### 1. [Topic Name]
[Summary of insights for this topic. When the cluster's `_summary.md` carries a categorical reframe — a single declarative sentence reframing the cluster's question — the **first** sentence of this block must convey that reframe's insight in the block's own voice: the content survives, but do not quote or closely paraphrase the reframe, and do not preserve its noun-pair ("X, not Y") grammar — that rhetorical structure must not propagate across blocks. **Word target per block:** see "Per-topic block" row, applied to each `### N.` block.]
- See: [synthesis/{{cluster_slug}}_summary.md](synthesis/{{cluster_slug}}_summary.md)

### 2. [Topic Name]
[Same structure as block 1. **Word target per block:** same per-topic-block row.]
- See: [synthesis/{{cluster_slug}}_summary.md](synthesis/{{cluster_slug}}_summary.md)

## Recommended Next Steps
[Top 10-15 action items synthesized from all topic clusters. Order by impact and specificity, not by topic. **Word target:** see "Recommended Next Steps" row.]

## Session Index

### Questions
- [QUESTIONS.md](QUESTIONS.md) — All questions consolidated
- [questions/by-persona/](questions/by-persona/) — Questions by generating persona
- [questions/by-topic/](questions/by-topic/) — Questions organized by topic cluster

### Responses
- [responses/](responses/) — All brainstorming responses organized by topic cluster

### Summaries & Synthesis
- [SUMMARIES.md](SUMMARIES.md) — Concatenated per-topic summaries
- [SYNTHESIS.md](SYNTHESIS.md) — Concatenated per-topic full syntheses
- [synthesis/](synthesis/) — Individual per-topic files: `_summary.md` (always); `_synthesis.md` and `attributed/`

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log
```

# BRAINSTORM.md Template

Final user-facing output document for a session. Produced in Phase 5 by consolidating `SUMMARIES.md` across all topic clusters.

## Word budgets per section, by effort level

The table below is the **per-section budget** the Phase 5 prompt should use when drafting. Each cell is a word range. The aggregate body word count (everything between the closing YAML `---` and the start of `## Session Index`) should also fall within the effort-scaled aggregate band at the bottom; per-section budgets are how that aggregate is achieved without late-stage compression.

| Section | min | low | medium | high |
|---|---|---|---|---|
| Executive Summary | 110-200 | 135-250 | 170-315 | 215-395 |
| Session Overview | 30-70 | 40-90 | 50-115 | 65-145 |
| Central Tensions *(≤4 entries)* | 50-100 | 65-125 | 80-160 | 100-200 |
| Key Themes | 120-220 | 150-275 | 190-350 | 240-435 |
| Conspicuous Absences (session-level) | 50-100 | 65-125 | 80-160 | 100-200 |
| Recommended Next Steps | 100-200 | 125-250 | 160-315 | 200-395 |
| **Per-topic block** *(×N clusters)* | 30-55 | 40-70 | 50-90 | 60-110 |
| **Aggregate body band** | 600-1200 | 750-1500 | 940-1875 | 1170-2345 |

**Budgets are guidance, not entitlements.** A draft that hits the upper end of every range will exceed the aggregate band. Default to the **lower end** of each range; reach the upper end only when the content density of that section genuinely warrants it (e.g., a session with a particularly load-bearing Executive Summary, or a Key Themes section synthesizing across many clusters). At sessions with 10+ clusters, use the lower end of the per-topic-block range.

The per-topic block range applies *per cluster*, then multiplied by N. So at high effort with 12 clusters, the topic-summaries section as a whole spans 720-1320 words.

## Canonical structure

Per-topic links always point to `synthesis/{{cluster_slug}}_summary.md` (the `_summary.md` file exists at every effort level). The Session Index includes the `SYNTHESIS.md` line only at `medium`/`high` effort; at `min`/`low` that line is omitted because the file does not exist.

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "[min|low|medium|high]"
stage: "Phase 5: Final Output"
model-requested: "opus"
model-reported: "[model the subagent self-identifies as, e.g., claude-opus-4-7]"
---

# Brainstorming Session: [Project Name]

## Executive Summary
[3-5 paragraphs capturing the most important insights across all topic clusters. **Word target:** see "Executive Summary" row in the budget table at the top, by `{{effort}}`.]

## Session Overview
[Brief description of the brainstorming request and approach taken. **Word target:** see "Session Overview" row.]

## Central Tensions
[**At most 4 entries.** If clusters share a meta-tension, state it as a single sentence with the contributing clusters cited. Otherwise, list the most load-bearing per-cluster Central Tensions verbatim or near-verbatim from each cluster's `_summary.md`. Do not pad to 4 if fewer are load-bearing. **Word target:** see "Central Tensions" row.]

## Key Themes
[Major themes that emerged across all topic clusters and participants. **Word target:** see "Key Themes" row.]

## Conspicuous Absences (session-level)
[Aggregate the per-cluster Conspicuous Absences (`min` clusters) and Neither-lens gaps (`low` clusters). If a structural absence recurs across clusters, name it here. Otherwise list 2–4 most load-bearing cluster-specific absences. This section is the counterweight to the confidence-positive Executive Summary; do not write it as a recap. **Word target:** see "Conspicuous Absences" row.]

## Topic Summaries

### 1. [Topic Name]
[Summary of insights for this topic. When the cluster's `_summary.md` carries a categorical reframe — a single declarative sentence reframing the cluster's question — the **first** sentence of this block must quote or closely paraphrase that reframe. **Word target per block:** see "Per-topic block" row, applied to each `### N.` block.]
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
- [SYNTHESIS.md](SYNTHESIS.md) — Concatenated per-topic full syntheses *(omit at `min`/`low`)*
- [synthesis/](synthesis/) — Individual per-topic files: `_summary.md` (always); `_synthesis.md` and `attributed/` *(`medium`/`high` only)*

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log
```

## Calibration notes

- Budgets compound roughly **25% per effort step** from min upward (min=1.00×, low=1.25×, medium=1.5625×, high=1.953× — same multipliers used for the aggregate band).
- The school-consolidation/high session (13 clusters, 2344 body words, 7/7 PASS in iter-1) is the empirical calibration anchor: standalone sections summed to ~1100 words, per-topic blocks averaged ~95 words. The high-effort ranges are sized so a similar split lands inside the band.
- When per-topic block (lower end) × N + standalone-sections (lower end) exceeds the aggregate-band ceiling, the substrate is unusually dense for the effort level — surface that fact in the Executive Summary rather than expanding every section.
- When the substrate is sparse (per-cluster `_summary.md` files are short, no categorical reframe, no productive dissent), use the lower end of every range; the resulting body may sit near the aggregate-band lower bound, which is fine.

## Authoritative source

The Phase 5 prompt is authoritative for the exact BRAINSTORM.md shape — consult the prompt when in doubt:

- [phase5_final-output.md](../prompts/phase5_final-output.md)

**Persona-name, character-name, and process-jargon prohibition.** `BRAINSTORM.md` must not contain persona names ("The Devil's Advocate"), bullet-summary labels of the form "Visionary alternatives", possessive enumerations ("The Storyteller's Marcus"), character names from persona narratives (Marcus, Maria, Margaret, Elena, Sarah, David, James, Aisha, etc.), or process jargon ("orchestrator", "subagent", "phase"). See [phase5_final-output.md](../prompts/phase5_final-output.md) for the complete rule.

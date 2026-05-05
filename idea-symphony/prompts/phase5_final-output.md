# Phase 5: Final Output

**For all effort levels (`min`/`low`/`medium`/`high`)** — This prompt produces the user-facing final output by consolidating per-topic summaries from `SUMMARIES.md`.

---

You are producing the user-facing final output for a brainstorming session. Produce exactly one markdown file at the path named in Output. Do not modify any other files.

`BRAINSTORM.md` is the document a user reads first when they return to the session — and often the only document they'll read. The executive summary, key themes, and recommended next steps are the most important parts of the deliverable. Write for someone returning cold.

**Persona names and character names are prohibited in `BRAINSTORM.md`.** This includes (a) persona-name mentions ("The Devil's Advocate", "The Storyteller", "The Pragmatist's caution"); (b) bullet-summary labels of the form "Visionary alternatives" / "Pragmatist's caution"; (c) possessive enumerations ("The Storyteller's Marcus"); (d) sentence-subject mentions ("The Devil's Advocate argues"); (e) character names from persona narratives (Marcus, Maria, Margaret, Elena, Sarah, David, James, Aisha, etc.) — these come from per-persona scenic writing inside Phase 3 responses and must not survive into the user-facing document. Convey breadth via cluster counts and lens types ("a feasibility-oriented finding", "an adversarial counter-test across two clusters"). Process jargon is also prohibited ("orchestrator", "subagent", "phase").

## Inputs

Read all of the following before drafting. They are independent; read them in parallel.

1. `{{session}}/REQUEST.md` — original brainstorming request. Grounds the executive summary and session overview framing.
2. `{{session}}/QUESTIONS.md` — full consolidated question set. Used for session-index links and to confirm topic-cluster scope.
3. `{{session}}/PLAN.md` — source for the topic-cluster list. Use the "Topic Clusters" section to get correctly-ordered slugs and display names for the per-topic blocks and links.
4. `{{session}}/SUMMARIES.md` — **authoritative** source for executive summary, key themes, topic summaries, and recommended next steps. Sections are concatenated per topic (frontmatter stripped) and separated by `---`; topic display names appear in each section's `# Summary: [Topic Name]` heading.

**Do not read `SYNTHESIS.md`.** That file (when it exists at `medium`/`high` effort) is large and would balloon your context unnecessarily. SUMMARIES.md is sufficient for everything you need to produce. Whether to include the `SYNTHESIS.md` line in the Session Index is decided from `{{effort}}` alone — see the effort-conditional rule below the output template.

## Your Task

Synthesize the per-topic summaries into a single user-facing document.

**Step-by-step process:**

1. **Read inputs in parallel.** Note the project name, effort level, and topic-cluster list (slugs + display names from PLAN.md, in order).
2. **Draft the executive summary** (3-5 paragraphs). Capture the most important insights *across all topics*, not a topic-by-topic recap. Lead with the highest-confidence findings.
2a. **Surface Central Tensions.** Each per-cluster `_summary.md` includes a `**Central Tension**` line at the top. Read all of them before drafting the Executive Summary. If two or more clusters share a structurally similar tension, name the cross-cluster meta-tension explicitly. If clusters' tensions diverge, that divergence is itself a session-level finding worth naming. Do not silently drop per-cluster tensions; either aggregate them or list the most load-bearing 2–4 in a dedicated subsection.
3. **Write the session overview** — 2-4 sentences on what the user asked and how the session approached it (e.g., effort level, number of topic clusters).
4. **Extract key themes** that appear across multiple topic clusters or cross-cut the whole session. These are *not* topic summaries — they're patterns that emerge when you look at all the summaries together.
5. **Build per-topic blocks.** For each topic cluster (in the order from PLAN.md):
   - `### N. [Topic Display Name]` (sequential 1, 2, 3 numbering)
   - 2-4 sentences extracting the most important insight(s) from that cluster's section in SUMMARIES.md
   - If the cluster's `_summary.md` names a categorical reframe (a single declarative sentence reframing the cluster's question — e.g., "the library's operational core is not inventory management but mutual-visibility infrastructure"), surface it verbatim or near-verbatim as the **first** sentence of the per-topic block. Do not flatten it into a generic theme. If multiple clusters carry categorical reframes that share a structural pattern, surface that pattern in `## Key Themes` separately from the per-topic blocks.
   - `- See: [synthesis/{{cluster_slug}}_summary.md](synthesis/{{cluster_slug}}_summary.md)` — substitute the actual slug from PLAN.md
6. **Forward absences.** Per-cluster Conspicuous Absences (`min`) and Neither-lens gaps (`low`) name what's structurally missing. Read those sections from each `_summary.md` and aggregate to session level. The Executive Summary is confidence-positive by register; Conspicuous Absences is the counterweight. Do not let Recommended Next Steps paper over an absence — if a cluster surfaced a decision-the-brainstormer-declined, the next-steps section must either invite that decision or name it as out-of-scope.
7. **Recommend next steps** — 10-15 action items synthesized across all topics. Prioritize specificity over topic-grouping; an impact-ordered list is more useful than a topic-ordered one.
8. **Assemble the session index** following the template. Apply the effort-conditional rule below.

## Output

Replace every bracketed placeholder below (e.g., `[Project Name]`, `[Topic Name]`) with the content you derive; do not emit literal placeholder strings. The `{{cluster_slug}}` tokens inside the per-topic links are slots you fill with the actual slugs from PLAN.md (one different value per topic block).

Create `{{session}}/BRAINSTORM.md`:

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "{{effort}}"
stage: "Phase 5: Final Output"
model-requested: "opus"
model-reported: "[model the subagent self-identifies as, e.g., claude-opus-4-7]"
---

# Brainstorming Session: [Project Name]

## Executive Summary
[3-5 paragraphs capturing the most important insights across all topic clusters]

## Session Overview
[Brief description of the brainstorming request and approach taken]

## Central Tensions
[If clusters share a meta-tension, state it as a single sentence with the contributing clusters cited. Otherwise, list the 2–4 most load-bearing per-cluster Central Tensions verbatim or near-verbatim from each cluster's `_summary.md`.]

## Key Themes
[Major themes that emerged across all topic clusters and participants]

## Conspicuous Absences (session-level)
[Aggregate the per-cluster Conspicuous Absences (`min` clusters) and Neither-lens gaps (`low` clusters). If a structural absence recurs across clusters — a stakeholder type never engaged, a decision the brainstormer faced and declined, a precondition never established for a recommended action — name it here. If absences are cluster-specific, list 2–4 most load-bearing. Do not write this section as a confidence-positive recap; it is the section that says "what's not here."]

## Topic Summaries

### 1. [Topic Name]
[Summary of insights for this topic]
- See: [synthesis/{{cluster_slug}}_summary.md](synthesis/{{cluster_slug}}_summary.md)

### 2. [Topic Name]
[Summary of insights for this topic]
- See: [synthesis/{{cluster_slug}}_summary.md](synthesis/{{cluster_slug}}_summary.md)

## Recommended Next Steps
[Top 10-15 action items synthesized from all topic clusters]

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
- [synthesis/](synthesis/) — Individual per-topic files: `_summary.md` (always); `_synthesis.md` and `attributed/` *(`medium`/`high` only)*

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log
```

**Effort-conditional rule for the Session Index:** When `{{effort}}` is `min` or `low`, **delete** the entire `[SYNTHESIS.md](SYNTHESIS.md) — Concatenated per-topic full syntheses` line — the file does not exist at those effort levels. Keep all other lines as-is at every effort level.

## Synthesis discipline

**Cross-cluster convergence-count discipline.** When making any "across all clusters" / "every topic" / "most clusters" claim in the Executive Summary, Key Themes, or Recommended Next Steps: (a) name the clusters in scratch reasoning before stating the claim; (b) count distinct clusters, not distinct framings within clusters — if two clusters surface the same idea under different lenses, that is two clusters, but if one cluster's `_summary.md` mentions an idea twice in different sections, that is one cluster; (c) inherit per-cluster convergence claims from each `_summary.md` rather than re-deriving from its prose; do not "translate" "six of seven personas" into "six of seven clusters" — those are different denominators; (d) default to underclaim ("Several clusters surface…") when uncertain; (e) do not inflate to manufacture a cross-cluster theme, and do not deflate counts that legitimately reach all clusters.

**Per-cluster dissent and reversals are non-droppable in per-topic blocks.** When a cluster's `_summary.md` names a single-persona-reframe (counter-test, distinctive timing claim, alternate diagnostic pattern, DA-anchored dissent inverting a memo-persistent claim) or a foundational reversal (a sentence-level "we thought X; the answer is the opposite of X" finding), the per-topic block for that cluster MUST surface it — even at the cost of dropping a more convergent theme. Cross-cluster majority-rule logic in the Executive Summary and Key Themes does not override per-cluster dissent preservation. If a dissent recurs across multiple clusters, name it as a dissent in the Key Themes (not as a convergence).

**Cross-cluster recurrence weighting.** When building Recommended Next Steps and Key Themes, weight items that appear in multiple clusters' `_summary.md` more heavily than vivid one-shots. A through-line tagged `[recurring]` in any cluster's `_summary.md` should appear in either Key Themes or Recommended Next Steps; do not drop it to make room for a single-occurrence item, however vivid.

**Length target by effort level.** Phase 5 output scales with the effort level used by Phase 4, because the per-cluster `_summary.md` substrate carries roughly 1.95× more substantive content at `high` than at `min` (4–7 personas/cluster vs. 1 brainstormer/cluster, plus Phase 4's per-cluster Central Tension + categorical reframe + dissent preservation + foundational reversal stacking at higher effort). Use the following table; targets exclude the Session Index:

| Effort | Multiplier | Word target (body) |
|---|---|---|
| `min`    | 1.00× | 600 – 1200 |
| `low`    | 1.25× | 750 – 1500 |
| `medium` | 1.5625× | 940 – 1875 |
| `high`   | 1.953× | 1170 – 2345 |

Multipliers are compounding 25% increments. These targets are **soft floors for full coverage** of the Phase-4 disciplines (Central Tensions, Conspicuous Absences, categorical reframes, dissent preservation, foundational reversals), not hard ceilings. At `high` effort with 7+ clusters where each cluster carries a categorical reframe + a productive dissent + a foundational reversal, the per-topic blocks alone may exceed the lower bound. **Permit length growth when cluster-distinctive content would otherwise be flattened into generic themes; do not aggressively compress to hit the lower bound.**

## Notes

- **Synthesize, don't aggregate.** The Key Themes section is the place to identify cross-topic patterns; per-topic blocks should be brief and link out. Recommended Next Steps should be ordered by impact and specificity, not by topic.
- **Topic order matters.** Use the order from PLAN.md's "Topic Clusters" section so per-topic blocks line up with how the session was structured.
- **Per-topic links use the correct slug from PLAN.md.** Every topic's link points to `synthesis/<slug>_summary.md` regardless of effort level — `_summary.md` always exists; `_synthesis.md` is not linked from BRAINSTORM.md.
- Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

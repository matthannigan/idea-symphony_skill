# Phase 5: Final Output

**For all effort levels (`min`/`low`/`medium`/`high`)** — This prompt produces the user-facing final output by consolidating per-topic summaries from `SUMMARIES.md`.

---

You are producing the user-facing final output for a brainstorming session. Produce exactly one markdown file at the path named in Output. Do not modify any other files.

`BRAINSTORM.md` is the document a user reads first when they return to the session — and often the only document they'll read. The executive summary, key themes, and recommended next steps are the most important parts of the deliverable. Write for someone returning cold; avoid persona names and process jargon ("orchestrator", "subagent", "phase").

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
3. **Write the session overview** — 2-4 sentences on what the user asked and how the session approached it (e.g., effort level, number of topic clusters).
4. **Extract key themes** that appear across multiple topic clusters or cross-cut the whole session. These are *not* topic summaries — they're patterns that emerge when you look at all the summaries together.
5. **Build per-topic blocks.** For each topic cluster (in the order from PLAN.md):
   - `### N. [Topic Display Name]` (sequential 1, 2, 3 numbering)
   - 2-4 sentences extracting the most important insight(s) from that cluster's section in SUMMARIES.md
   - `- See: [synthesis/{{cluster_slug}}_summary.md](synthesis/{{cluster_slug}}_summary.md)` — substitute the actual slug from PLAN.md
6. **Recommend next steps** — 10-15 action items synthesized across all topics. Prioritize specificity over topic-grouping; an impact-ordered list is more useful than a topic-ordered one.
7. **Assemble the session index** following the template. Apply the effort-conditional rule below.

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

## Key Themes
[Major themes that emerged across all topic clusters and participants]

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

## Notes

- **Synthesize, don't aggregate.** The Key Themes section is the place to identify cross-topic patterns; per-topic blocks should be brief and link out. Recommended Next Steps should be ordered by impact and specificity, not by topic.
- **Topic order matters.** Use the order from PLAN.md's "Topic Clusters" section so per-topic blocks line up with how the session was structured.
- **Per-topic links use the correct slug from PLAN.md.** Every topic's link points to `synthesis/<slug>_summary.md` regardless of effort level — `_summary.md` always exists; `_synthesis.md` is not linked from BRAINSTORM.md.
- Target ~600-1200 words for the body (not counting the Session Index).
- Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

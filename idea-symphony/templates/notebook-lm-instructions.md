# NOTEBOOK-LM-INSTRUCTIONS.md Template

Opt-in addon emitted by the Phase 5 subagent when `PLAN.md` frontmatter has `notebooklm-outputs: "yes"`. Produces copy-paste-ready Customize-box prompts for four NotebookLM artifact types, project-specific to the current session.

This template is **heavy**: full prompt skeletons with bracketed placeholder fields the subagent fills from PLAN.md (project name, cluster list) and BRAINSTORM.md (themes, framing). The subagent composes each artifact's Customize-box prompt by combining the inline module reference below with the project-specific values.

---

## For the Phase 5 subagent: inline module reference

The audio-artifact prompts (Artifacts 1 and 2) are built from the modules below. These mirror the canonical `nlm-audio-prompt` skill modules so Symphony is self-contained — do not require an external skill.

Compose modules into a single block of text (NotebookLM's Customize box is plain text). Always include modules 1, 2, 3, and the Symphony Source Framing module below. Add 4-7 as the artifact requires. Verify the final prompt is under 5,000 characters; if over, cut from module 7 first, then trim examples from module 2. Never cut modules 1-3 or Source Framing.

### Module 0 — Symphony source framing (always include, all artifacts)

This module is **Symphony-specific** — it does not appear in the canonical `nlm-audio-prompt` skill because that skill is consumed with arbitrary sources. Symphony sources are always the output of a structured ideation process, and consumers (NotebookLM hosts, slide generators, infographic generators) must be told so up front, or they will frame the content as primary research or expert consensus.

> **Source framing:** The documents provided are the output of a facilitated multi-perspective brainstorming session on **[Project Name]**, conducted using a structured ideation method that simulates multiple thinking styles (e.g., a pragmatist lens, an adversarial lens, an audience-advocate lens, a systems lens). The content synthesizes ideas generated through that process — it is **not** primary research, expert consensus, peer-reviewed findings, or validated truth. Treat every claim as an idea surfaced through structured ideation, and frame the discussion accordingly: prefer "the session surfaced…" / "one perspective in the brainstorm proposed…" / "the brainstorm converged on…" over "research shows…" / "experts agree…" / "the data demonstrates…". When a finding is attributed to convergence across multiple lenses, that is a quality signal within the brainstorm — not external validation.

### Module 1 — Format and audience (always include)

> Create a [Deep Dive / Brief / Critique] for an audience that already has working knowledge of [domain]. Skip introductory definitions of standard terminology.

### Module 2 — Tone directives (always include)

> **Tone:** Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers performing for an audience. Avoid:
> - Enthusiasm markers: "wow," "amazing," "mind-blowing," "insane," "incredible," "game-changing"
> - Sensationalist framing: "This changes everything," "You won't believe," "This is huge"
> - Filler hedges: "So basically," "I mean," "Right?"
> - Performative surprise or excitement

### Module 3 — Interpretation guardrails (always include)

> **Interpretation:** Summarize what the sources actually say. Do not extrapolate, speculate, or editorialize beyond the material. When sources are speculative or forward-looking, frame claims as hypotheses or proposals, not established facts. If evidence is mixed or limited, say so. The content is the authority — the hosts' opinions on it are not the point.

### Module 4 — Structure control (include for Deep Dive and Debate)

> **Structure:** Begin with a brief, calm framing of what the sources cover. Then work through the material methodically — one topic at a time. Finish with a concise synthesis of key points, not a hype-filled recap.

### Module 5 — Nuance and limitations (include when sources contain research, proposals, or claims)

> **Nuance:** Highlight limitations, caveats, counterarguments, and alternative interpretations present in the sources. Give as much weight to what the sources don't prove as to what they do.

### Module 6 — Focus scoping (used heavily for Artifact 2 per-cluster episodes)

> **Focus:** Concentrate on [specific topics, sections, or sources]. Deprioritize or skip [topics to exclude].

### Module 7 — Custom additions

> Any project-specific instructions: target length, specific questions to address, particular sources to emphasize, comparisons to draw. For Symphony brainstorm content, surface the session's Central Tensions and Conspicuous Absences explicitly when relevant.

---

## Canonical structure (what the user sees)

The template below is what gets written to `{{session}}/NOTEBOOK-LM-INSTRUCTIONS.md`. Everything above this line is subagent-only guidance and must not appear in the user-facing file.

````markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "[low|medium|high]"
stage: "Phase 5: Final Output (NotebookLM Addon)"
model-requested: "opus"
model-reported: "[model the subagent self-identifies as, e.g., claude-opus-4-7]"
---

# NotebookLM Instructions: [Project Name]

## How to use this file

Upload the sources listed below to a NotebookLM notebook, then paste the Customize-box prompt for each artifact **before** clicking Generate. NotebookLM does not let you change instructions after generation — you would have to delete the artifact and regenerate.

These prompts also work in other audio and presentation tools (e.g., Spotify's audio summaries, Gamma's slide generator, Canva's infographic AI). The module structure — measured tone, interpretation guardrails, focus scoping — is portable.

## Sources to upload

Upload these files from `{{session}}/` to your NotebookLM notebook:

- `BRAINSTORM.md` — the synthesized brainstorming output (executive summary, central tensions, key themes, recommended next steps)
- `synthesis/[cluster-1-slug]_summary.md` — deep summary of [Cluster 1 Display Name]
- `synthesis/[cluster-2-slug]_summary.md` — deep summary of [Cluster 2 Display Name]
- [...one bullet per cluster from PLAN.md's Topic Clusters section...]

For Artifacts 2 (single podcast) and 4 (single infographic), uploading `BRAINSTORM.md` alone is sufficient. For Artifacts 1 (presentation), 3 (podcast series), and 5 (infographic series), upload the full set so each per-cluster output can scope into its own `_summary.md` while keeping the rest as context.

---

## Artifact 1: Presentation

**Format:** Presentation (slide deck)
**Sources to upload:** `BRAINSTORM.md` + all `synthesis/*_summary.md` files
**Target length:** [N] slides ([12-15 for low effort, 18-22 for medium, 22-30 for high])

**Customize box prompt:**

```
Source framing: The documents are the output of a facilitated multi-perspective brainstorming session on [Project Name], generated using a structured ideation method that simulates multiple thinking styles. The content synthesizes ideas surfaced through that process — it is not primary research, expert consensus, or validated findings. The presentation should frame its claims as outputs of structured ideation, not external validation. Use phrasing like "the session surfaced…" / "the brainstorm identified…" / "one perspective in the cluster argued…" rather than "research shows…" or "experts agree…".

Create a presentation for [Target Audience — e.g., "the project's stakeholders" / "an internal review committee" / "a funder"] covering the findings from this brainstorming session on [Project Name].

Audience expertise: Working knowledge of [Project Domain]. Skip introductory definitions.

Slide structure:
1. Title slide — [Project Name] and the central question the brainstorming session explored.
2. Session Overview — one slide on what was explored and how the brainstorming session approached it (effort level, cluster count, approach).
3. Executive Summary — 1-2 slides on the highest-confidence findings the session surfaced.
4. Central Tensions — one slide per tension (maximum 4 slides).
5. Key Themes — 2-4 slides on cross-cluster patterns.
6. Per-cluster summaries — one slide per cluster, in the order from BRAINSTORM.md. Each slide names the cluster's Central Tension and one or two key insights.
7. Conspicuous Absences — one slide listing what the brainstorm did not engage with.
8. Recommended Next Steps — 1-2 slides, ordered by impact.

Tone: Analytical and direct. Avoid bullet-point-as-marketing-slogan phrasing. Each bullet should be a complete, specific claim — not a 3-word teaser. No hype words ("transformative," "game-changing," "revolutionary"). No exclamation marks.

Speaker notes: Include 2-3 sentences per slide explaining the underlying analysis. Decision-makers reading the notes should understand the reasoning, not just the headline.

Visuals: Prefer concept diagrams and 2-axis trade-off charts over decorative stock imagery. If a tension or trade-off is the subject of a slide, render it as a diagram, not a bulleted list.
```

**Character count:** [N] / 5,000

---

## Artifact 2: Single podcast (Deep Dive)

**Format:** Deep Dive
**Length:** Default (or Longer for high-effort sessions with 6+ clusters)
**Sources to upload:** `BRAINSTORM.md` only

**Customize box prompt:**

```
Source framing: The document is the output of a facilitated multi-perspective brainstorming session on [Project Name], generated using a structured ideation method that simulates multiple thinking styles (pragmatist, adversarial, audience-advocate, systems lens, and others). The content synthesizes ideas surfaced through that process — it is not primary research, expert consensus, or validated findings. Frame claims as ideas the session surfaced, not as facts: prefer "the session surfaced…" / "the brainstorm converged on…" / "one perspective proposed…" over "research shows…" or "experts agree…". When the source notes convergence across multiple lenses, that is internal-to-the-brainstorm quality signal, not external validation.

Create a Deep Dive for an audience that already has working knowledge of [Project Domain]. Skip introductory definitions of standard terminology like [domain-specific term 1], [term 2], [term 3].

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers performing for an audience. Avoid enthusiasm markers ("wow," "amazing," "mind-blowing," "game-changing"), sensationalist framing ("This changes everything"), and performative surprise. No filler hedges like "So basically" or "I mean."

Interpretation: Summarize what the source actually says. Do not extrapolate or speculate beyond the material. When the source proposes future outcomes or open questions, frame them as proposals or hypotheses, not foregone conclusions. If evidence is mixed or limited, say so directly.

Structure: Begin with a brief, calm framing of the brainstorming session and what the source covers. Work through the material one section at a time — Executive Summary, then Central Tensions, then Key Themes, then Topic Summaries. End with a concise synthesis tied to the Recommended Next Steps, not a hype recap.

Nuance: Give equal weight to the Conspicuous Absences and trade-offs as to the convergent findings. The Central Tensions are the most analytically interesting parts — spend time on them.

Focus: Concentrate on [the 2-3 most load-bearing themes from the brainstorm]. Treat tactical implementation details as context rather than the main subject.
```

**Character count:** [N] / 5,000

---

## Artifact 3: Podcast series (one episode per topic cluster)

**Format:** Deep Dive (one notebook per episode, or one notebook with the right Customize prompt run sequentially)
**Length:** Default
**Sources to upload:** `BRAINSTORM.md` + all `synthesis/*_summary.md` files

For each cluster from PLAN.md, the prompt scopes the episode to that cluster while treating the others as context only. Run each prompt in a fresh Customize box (NotebookLM cannot generate multiple distinct audios from one Customize state).

### Episode 1: [Cluster 1 Display Name]

**Customize box prompt:**

```
Source framing: The documents are the output of a facilitated multi-perspective brainstorming session on [Project Name], generated using a structured ideation method that simulates multiple thinking styles. The content synthesizes ideas surfaced through that process — it is not primary research or validated findings. This episode focuses on one of the session's topic clusters: [Cluster 1 Display Name]. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…", "experts agree…").

Create a Deep Dive for an audience that already has working knowledge of [Project Domain]. Skip introductory definitions of standard terminology.

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers. Avoid enthusiasm markers, sensationalist framing, and performative surprise.

Interpretation: Summarize what the sources actually say. Do not extrapolate or speculate. Frame forward-looking claims as hypotheses, not facts. If evidence is limited, say so.

Structure: Begin with a brief framing of [Cluster 1 Display Name] as a cluster the brainstorming session explored, then work through the cluster's questions methodically. End with a concise synthesis of the cluster's Central Tension and Recommended Next Steps.

Focus: Concentrate on `synthesis/[cluster-1-slug]_summary.md`. Treat `BRAINSTORM.md` and the other `_summary.md` files as context only — refer to them when they intersect with [Cluster 1 Display Name], but do not summarize their content.

Nuance: Surface the cluster's Conspicuous Absences and any single-perspective reframes alongside the convergent findings.
```

**Character count:** [N] / 5,000

### Episode 2: [Cluster 2 Display Name]

**Customize box prompt:**

```
[Same skeleton, with Focus module pointing to cluster-2-slug and the cluster display name swapped throughout.]
```

**Character count:** [N] / 5,000

[Continue with one Episode block per cluster from PLAN.md. The subagent emits N episode blocks total, where N = cluster count.]

---

## Artifact 4: Single infographic (session overview)

**Format:** Infographic
**Sources to upload:** `BRAINSTORM.md`
**Output size:** Single screen / single page — no scrolling required for the primary view.

**Customize box prompt:**

```
Source framing: The source document is the output of a facilitated multi-perspective brainstorming session on [Project Name], generated using a structured ideation method that simulates multiple thinking styles. The content synthesizes ideas surfaced through that process — it is not primary research, expert consensus, or validated findings. Frame the infographic as a summary of what the brainstorming session surfaced, not as a research report. Use language like "the session surfaced…" / "the brainstorm identified…" in labels and callouts.

Create a single-page infographic summarizing the findings from this brainstorming session on [Project Name].

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced.

Information hierarchy (top to bottom):
1. Title and one-sentence framing of [Project Name] and the central question the brainstorming session explored.
2. Three to five Central Tensions or Key Themes the session surfaced, each as a short labeled section. Use the language from BRAINSTORM.md's Central Tensions and Key Themes sections directly.
3. Per-cluster mini-summaries — one short block per cluster ([N] clusters total), each with the cluster name and a one-sentence takeaway from the brainstorm.
4. Recommended Next Steps — top 3-5 items, ranked by impact.

Tone: Analytical and specific. Each label or callout should be a complete claim ("Membership pricing must clear $40 × 150 members or rely on donor subsidy") rather than a topic tag ("Pricing"). No marketing voice. No exclamation marks. No hype words.

Visual structure: Use a clear top-to-bottom or left-to-right reading order. Differentiate the four sections (framing / tensions / clusters / next steps) with whitespace and section dividers rather than color-coded blocks. Keep iconography minimal and functional — no decorative icons unattached to specific concepts.

Density: Single screen, but dense. A reader should be able to extract the four sections at a glance and the specific claims on a second pass.
```

**Character count:** [N] / 5,000

---

## Artifact 5: Infographic series (one per topic cluster)

**Format:** Infographic (one per cluster)
**Sources to upload:** `BRAINSTORM.md` + all `synthesis/*_summary.md` files
**Output size per infographic:** Single screen / single page each.

For each cluster from PLAN.md, the prompt scopes the infographic to that cluster's `_summary.md` while treating the others as context only. Run each prompt in a fresh Customize box. Pair these with Artifact 2's podcast episodes for a complete per-cluster deep-dive set.

### Infographic 1: [Cluster 1 Display Name]

**Customize box prompt:**

```
Source framing: The documents are the output of a facilitated multi-perspective brainstorming session on [Project Name], generated using a structured ideation method that simulates multiple thinking styles. This infographic focuses on one of the session's topic clusters: [Cluster 1 Display Name]. Frame claims as ideas the session surfaced ("the cluster's brainstorm proposed…", "one perspective in the cluster argued…"), not as facts.

Create a single-page infographic for [Cluster 1 Display Name] — one of the topic clusters explored in the brainstorming session on [Project Name].

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced about this specific cluster.

Information hierarchy (top to bottom):
1. Title: [Cluster 1 Display Name]. Subtitle: one-sentence framing of the question the cluster explored.
2. Central Tension — the cluster's single Central Tension as a featured callout, quoted near-verbatim from `synthesis/[cluster-1-slug]_summary.md`.
3. Key Themes within the cluster — 2-4 themes the brainstorm surfaced for this cluster. Each as a short labeled section with a complete-claim label.
4. Conspicuous Absences / single-perspective reframes — 1-3 items the cluster's summary calls out as structurally missing or as a load-bearing minority view. Visually distinct from the convergent themes (e.g., bordered callout or different section).
5. Recommended Next Steps for this cluster — top 2-4 items from the cluster's summary.

Focus: Concentrate on `synthesis/[cluster-1-slug]_summary.md`. Treat `BRAINSTORM.md` and the other `_summary.md` files as context only — reference them only when they intersect with [Cluster 1 Display Name].

Tone: Analytical and specific. Each label or callout should be a complete claim, not a topic tag. No marketing voice. No exclamation marks. No hype words.

Visual structure: Top-to-bottom reading order. Use whitespace and section dividers, not color-coded blocks. The Central Tension and the Absences section are the most analytically interesting parts — give them visual weight. Keep iconography minimal and functional.

Density: Single screen, but dense. A reader should be able to extract the cluster's framing, tension, and themes at a glance.
```

**Character count:** [N] / 5,000

### Infographic 2: [Cluster 2 Display Name]

**Customize box prompt:**

```
[Same skeleton, with Focus and the cluster display name and slug swapped throughout.]
```

**Character count:** [N] / 5,000

[Continue with one Infographic block per cluster from PLAN.md. The subagent emits N infographic blocks total, where N = cluster count — matching Artifact 2's episode count.]

---

## Notes for the user

- **NotebookLM 5,000-character limit.** Each prompt above is verified under the limit. If you edit a prompt, recount.
- **Customize before Generate.** Paste the Customize-box prompt before clicking Generate; you cannot change instructions after the artifact is created. If an artifact already exists with the default voice, delete it and regenerate.
- **Format selection.** For Artifact 1, try Deep Dive first. If the source content is evaluative (proposals, plans, critiques), switch to the Critique format — it produces a more objective tone with less prompt engineering.
- **Portability.** The module structure (source framing, measured tone, interpretation guardrails, focus scoping) ports to other tools. For Gamma or Canva, the Slide-structure and Visuals blocks transfer; for Spotify's audio summaries, the Tone and Interpretation blocks transfer. The Source Framing paragraph at the top of each prompt is especially important to keep — without it, downstream tools tend to frame brainstorming output as if it were primary research.
- **Pairing per-cluster artifacts.** Artifacts 2 (podcast series) and 5 (infographic series) are intentionally parallel — one episode and one infographic per cluster. For deep engagement with a single cluster, generate both for that cluster from the same uploaded source set.
````

---

## Subagent fill-in checklist

When producing the user-facing file, the Phase 5 subagent must:

1. Replace every `[Bracketed Placeholder]` with project-specific content derived from `BRAINSTORM.md`, `PLAN.md`, and `SUMMARIES.md`. Do not emit literal placeholder strings.
2. **Include the Source Framing module in every artifact prompt.** It is always-include — the same way Modules 1-3 are. Substitute `[Project Name]` and (for per-cluster prompts) the cluster name and slug.
3. Generate one `### Episode N: [Cluster Name]` block under Artifact 2 for each cluster in PLAN.md's Topic Clusters section, in order. Each episode's Focus module names the cluster's slug and display name verbatim.
4. Generate one `### Infographic N: [Cluster Name]` block under Artifact 5 for each cluster in PLAN.md's Topic Clusters section, in the same order as Artifact 2. The episode count and infographic count must match.
5. Compute and write the actual character count on each `**Character count:** [N] / 5,000` line.
6. Tailor `[domain-specific term 1/2/3]` in Artifact 1 to terminology the brainstorm uses repeatedly, so NotebookLM skips defining what the audience already knows.
7. Tailor `[the 2-3 most load-bearing themes from the brainstorm]` in Artifact 1's Focus module to the actual themes — pull from `BRAINSTORM.md`'s Key Themes section.
8. Tailor `[Target Audience]` and the slide-count target in Artifact 3 based on effort level (defaults in the template) and any audience cues from `REQUEST.md`.
9. Do not emit the "For the Phase 5 subagent: inline module reference" block or this checklist into the user-facing file. The user-facing file starts at `# NotebookLM Instructions: [Project Name]`.

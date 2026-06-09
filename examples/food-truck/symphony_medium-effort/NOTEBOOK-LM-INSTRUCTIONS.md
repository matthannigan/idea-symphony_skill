# NotebookLM Instructions: Food Truck Startup and Expansion Strategy

## How to use this file

Upload the sources listed below to a NotebookLM notebook, then paste the Customize-box prompt for each artifact **before** clicking Generate. NotebookLM does not let you change instructions after generation — you would have to delete the artifact and regenerate.

These prompts also work in other audio and presentation tools (e.g., Spotify's audio summaries, Gamma's slide generator, Canva's infographic AI). The module structure — measured tone, interpretation guardrails, focus scoping — is portable.

## Sources to upload

Upload these files from `/Users/matth/dev/idea-symphony_skill/test-runs/food-truck/med/` to your NotebookLM notebook:

- `BRAINSTORM.md` — the synthesized brainstorming output (executive summary, central tensions, key themes, recommended next steps)
- `synthesis/01_business-model-foundations-identity_summary.md` — deep summary of Business Model Foundations & Identity
- `synthesis/02_unit-economics-break-even_summary.md` — deep summary of Unit Economics & Break-Even
- `synthesis/03_capital-structure-financing-decisions_summary.md` — deep summary of Capital Structure & Financing Decisions
- `synthesis/04_revenue-diversification-cash-flow_summary.md` — deep summary of Revenue Diversification & Cash Flow
- `synthesis/05_regulatory-strategy-engagement_summary.md` — deep summary of Regulatory Strategy & Engagement
- `synthesis/06_commissary-kitchen-infrastructure_summary.md` — deep summary of Commissary Kitchen Infrastructure
- `synthesis/07_customer-experience-access-equity_summary.md` — deep summary of Customer Experience, Access & Equity
- `synthesis/08_brand-community-cultural-identity_summary.md` — deep summary of Brand, Community & Cultural Identity
- `synthesis/09_expansion-path-fleet-brick-and-mortar_summary.md` — deep summary of Expansion Path — Fleet & Brick-and-Mortar

For Artifacts 2 (single podcast) and 4 (single infographic), uploading `BRAINSTORM.md` alone is sufficient. For Artifacts 1 (presentation), 3 (podcast series), and 5 (infographic series), upload the full set so each per-cluster output can scope into its own `_summary.md` while keeping the rest as context.

---

## Artifact 1: Presentation

**Format:** Presentation (slide deck)
**Sources to upload:** `BRAINSTORM.md` + all `synthesis/*_summary.md` files
**Target length:** 18-22 slides

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. The presentation should frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…", "experts agree…"). Convergence across lenses is an internal quality signal, not external validation.

Create a presentation for the founder and any advisors or lenders reviewing this plan, covering the findings from this brainstorming session on Food Truck Startup and Expansion Strategy.

Audience expertise: Working knowledge of food-truck operations, unit economics, break-even and food-cost ratios, commissary kitchens, vending zones, and SBA financing. Skip introductory definitions.

Slide structure:
1. Title slide — Food Truck Startup and Expansion Strategy and the central question the brainstorming session explored.
2. Session Overview — one slide on what was explored and how the brainstorming session approached it (medium effort, nine topic clusters, four perspectives per cluster).
3. Executive Summary — 1-2 slides on the highest-confidence findings the session surfaced.
4. Central Tensions — one slide per tension (maximum 4 slides).
5. Key Themes — 2-4 slides on cross-cluster patterns.
6. Per-cluster summaries — one slide per cluster, in the order from BRAINSTORM.md. Each slide names the cluster's central tension and one or two key insights.
7. What the brainstorm did not engage with — one slide listing the gaps and unexplored angles the session left open.
8. Recommended Next Steps — 1-2 slides, ordered by impact.

Focus: Give the most slide weight to the session's three load-bearing themes: proof before capital (validate single-truck economics before borrowing or diversifying), the menu being the weakest moat (presence, story, and relationships are the durable edge), and founder bandwidth as the real ceiling near 150-200 orders a day.

Tone: Analytical and direct. Avoid bullet-point-as-marketing-slogan phrasing. Each bullet should be a complete, specific claim — not a 3-word teaser. No hype words ("transformative," "game-changing," "revolutionary"). No exclamation marks.

Speaker notes: Include 2-3 sentences per slide explaining the underlying analysis. Decision-makers reading the notes should understand the reasoning, not just the headline.

Visuals: Prefer concept diagrams and 2-axis trade-off charts over decorative stock imagery. If a tension or trade-off is the subject of a slide (e.g., lease versus buy used, stay small versus scale), render it as a diagram, not a bulleted list.
```

**Character count:** 2731 / 5,000

---

## Artifact 2: Single podcast (Deep Dive)

**Format:** Deep Dive
**Length:** Longer (this medium-effort session has nine clusters)
**Sources to upload:** `BRAINSTORM.md` only

**Customize box prompt:**

```
Source framing: This document is the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "the brainstorm converged on…"), not as facts ("research shows…", "experts agree…"). Convergence across lenses is an internal quality signal, not external validation.

Create a Deep Dive for an audience that already has working knowledge of food-truck operations. Skip introductory definitions of standard terminology like unit economics, break-even, food-cost ratio, and commissary kitchen.

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers performing for an audience. Avoid enthusiasm markers ("wow," "amazing," "mind-blowing," "game-changing"), sensationalist framing ("This changes everything"), and performative surprise. No filler hedges like "So basically" or "I mean."

Interpretation: Summarize what the source actually says. Do not extrapolate or speculate beyond the material. When the source proposes future outcomes or open questions, frame them as proposals or hypotheses, not foregone conclusions. If evidence is mixed or limited, say so directly.

Structure: Begin with a brief, calm framing of the brainstorming session and what the source covers. Work through the material one section at a time — Executive Summary, then Central Tensions, then Key Themes, then Topic Summaries. End with a concise synthesis tied to the Recommended Next Steps, not a hype recap.

Nuance: Give equal weight to what the brainstorm did not engage with and to the trade-offs as you do to the convergent findings. The strongest unresolved tensions — lease versus buy used, pricing for one income band versus spanning them, whether the ordinance is a moat or a filter — are the most analytically interesting parts. Spend time on them.

Focus: Concentrate on the session's three most load-bearing themes — prove single-truck economics before adding capital or channels, the menu is the weakest moat while presence and story are the durable edge, and founder bandwidth is the real ceiling. Treat tactical implementation details as context rather than the main subject.
```

**Character count:** 2340 / 5,000

---

## Artifact 3: Podcast series (one episode per topic cluster)

**Format:** Deep Dive (one notebook per episode, or one notebook with the right Customize prompt run sequentially)
**Length:** Default
**Sources to upload:** `BRAINSTORM.md` + all `synthesis/*_summary.md` files

For each cluster from PLAN.md, the prompt scopes the episode to that cluster while treating the others as context only. Run each prompt in a fresh Customize box (NotebookLM cannot generate multiple distinct audios from one Customize state).

### Episode 1: Business Model Foundations & Identity

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This episode focuses on one of the session's topic clusters: Business Model Foundations & Identity. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…", "experts agree…").

Create a Deep Dive for an audience that already has working knowledge of food-truck operations. Skip introductory definitions of standard terminology.

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers. Avoid enthusiasm markers, sensationalist framing, and performative surprise.

Interpretation: Summarize what the sources actually say. Do not extrapolate or speculate. Frame forward-looking claims as hypotheses, not facts. If evidence is limited, say so.

Structure: Begin with a brief framing of Business Model Foundations & Identity as a cluster the brainstorming session explored, then work through the cluster's questions methodically. End with a concise synthesis of the cluster's central tension and Recommended Next Steps.

Focus: Concentrate on the summary document for Business Model Foundations & Identity. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — refer to them when they intersect with Business Model Foundations & Identity, but do not summarize their content.

Nuance: Surface what the cluster did not engage with, and any minority view worth surfacing, alongside the convergent findings.
```

**Character count:** 1727 / 5,000

### Episode 2: Unit Economics & Break-Even

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This episode focuses on one of the session's topic clusters: Unit Economics & Break-Even. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…", "experts agree…").

Create a Deep Dive for an audience that already has working knowledge of food-truck operations. Skip introductory definitions of standard terminology.

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers. Avoid enthusiasm markers, sensationalist framing, and performative surprise.

Interpretation: Summarize what the sources actually say. Do not extrapolate or speculate. Frame forward-looking claims as hypotheses, not facts. If evidence is limited, say so.

Structure: Begin with a brief framing of Unit Economics & Break-Even as a cluster the brainstorming session explored, then work through the cluster's questions methodically. End with a concise synthesis of the cluster's central tension and Recommended Next Steps.

Focus: Concentrate on the summary document for Unit Economics & Break-Even. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — refer to them when they intersect with Unit Economics & Break-Even, but do not summarize their content.

Nuance: Surface what the cluster did not engage with, and any minority view worth surfacing, alongside the convergent findings.
```

**Character count:** 1687 / 5,000

### Episode 3: Capital Structure & Financing Decisions

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This episode focuses on one of the session's topic clusters: Capital Structure & Financing Decisions. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…", "experts agree…").

Create a Deep Dive for an audience that already has working knowledge of food-truck operations. Skip introductory definitions of standard terminology.

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers. Avoid enthusiasm markers, sensationalist framing, and performative surprise.

Interpretation: Summarize what the sources actually say. Do not extrapolate or speculate. Frame forward-looking claims as hypotheses, not facts. If evidence is limited, say so.

Structure: Begin with a brief framing of Capital Structure & Financing Decisions as a cluster the brainstorming session explored, then work through the cluster's questions methodically. End with a concise synthesis of the cluster's central tension and Recommended Next Steps.

Focus: Concentrate on the summary document for Capital Structure & Financing Decisions. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — refer to them when they intersect with Capital Structure & Financing Decisions, but do not summarize their content.

Nuance: Surface what the cluster did not engage with, and any minority view worth surfacing, alongside the convergent findings.
```

**Character count:** 1735 / 5,000

### Episode 4: Revenue Diversification & Cash Flow

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This episode focuses on one of the session's topic clusters: Revenue Diversification & Cash Flow. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…", "experts agree…").

Create a Deep Dive for an audience that already has working knowledge of food-truck operations. Skip introductory definitions of standard terminology.

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers. Avoid enthusiasm markers, sensationalist framing, and performative surprise.

Interpretation: Summarize what the sources actually say. Do not extrapolate or speculate. Frame forward-looking claims as hypotheses, not facts. If evidence is limited, say so.

Structure: Begin with a brief framing of Revenue Diversification & Cash Flow as a cluster the brainstorming session explored, then work through the cluster's questions methodically. End with a concise synthesis of the cluster's central tension and Recommended Next Steps.

Focus: Concentrate on the summary document for Revenue Diversification & Cash Flow. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — refer to them when they intersect with Revenue Diversification & Cash Flow, but do not summarize their content.

Nuance: Surface what the cluster did not engage with, and any minority view worth surfacing, alongside the convergent findings.
```

**Character count:** 1719 / 5,000

### Episode 5: Regulatory Strategy & Engagement

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This episode focuses on one of the session's topic clusters: Regulatory Strategy & Engagement. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…", "experts agree…").

Create a Deep Dive for an audience that already has working knowledge of food-truck operations. Skip introductory definitions of standard terminology.

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers. Avoid enthusiasm markers, sensationalist framing, and performative surprise.

Interpretation: Summarize what the sources actually say. Do not extrapolate or speculate. Frame forward-looking claims as hypotheses, not facts. If evidence is limited, say so.

Structure: Begin with a brief framing of Regulatory Strategy & Engagement as a cluster the brainstorming session explored, then work through the cluster's questions methodically. End with a concise synthesis of the cluster's central tension and Recommended Next Steps.

Focus: Concentrate on the summary document for Regulatory Strategy & Engagement. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — refer to them when they intersect with Regulatory Strategy & Engagement, but do not summarize their content.

Nuance: Surface what the cluster did not engage with, and any minority view worth surfacing, alongside the convergent findings.
```

**Character count:** 1707 / 5,000

### Episode 6: Commissary Kitchen Infrastructure

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This episode focuses on one of the session's topic clusters: Commissary Kitchen Infrastructure. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…", "experts agree…").

Create a Deep Dive for an audience that already has working knowledge of food-truck operations. Skip introductory definitions of standard terminology.

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers. Avoid enthusiasm markers, sensationalist framing, and performative surprise.

Interpretation: Summarize what the sources actually say. Do not extrapolate or speculate. Frame forward-looking claims as hypotheses, not facts. If evidence is limited, say so.

Structure: Begin with a brief framing of Commissary Kitchen Infrastructure as a cluster the brainstorming session explored, then work through the cluster's questions methodically. End with a concise synthesis of the cluster's central tension and Recommended Next Steps.

Focus: Concentrate on the summary document for Commissary Kitchen Infrastructure. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — refer to them when they intersect with Commissary Kitchen Infrastructure, but do not summarize their content.

Nuance: Surface what the cluster did not engage with, and any minority view worth surfacing, alongside the convergent findings.
```

**Character count:** 1711 / 5,000

### Episode 7: Customer Experience, Access & Equity

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This episode focuses on one of the session's topic clusters: Customer Experience, Access & Equity. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…", "experts agree…").

Create a Deep Dive for an audience that already has working knowledge of food-truck operations. Skip introductory definitions of standard terminology.

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers. Avoid enthusiasm markers, sensationalist framing, and performative surprise.

Interpretation: Summarize what the sources actually say. Do not extrapolate or speculate. Frame forward-looking claims as hypotheses, not facts. If evidence is limited, say so.

Structure: Begin with a brief framing of Customer Experience, Access & Equity as a cluster the brainstorming session explored, then work through the cluster's questions methodically. End with a concise synthesis of the cluster's central tension and Recommended Next Steps.

Focus: Concentrate on the summary document for Customer Experience, Access & Equity. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — refer to them when they intersect with Customer Experience, Access & Equity, but do not summarize their content.

Nuance: Surface what the cluster did not engage with, and any minority view worth surfacing, alongside the convergent findings.
```

**Character count:** 1723 / 5,000

### Episode 8: Brand, Community & Cultural Identity

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This episode focuses on one of the session's topic clusters: Brand, Community & Cultural Identity. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…", "experts agree…").

Create a Deep Dive for an audience that already has working knowledge of food-truck operations. Skip introductory definitions of standard terminology.

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers. Avoid enthusiasm markers, sensationalist framing, and performative surprise.

Interpretation: Summarize what the sources actually say. Do not extrapolate or speculate. Frame forward-looking claims as hypotheses, not facts. If evidence is limited, say so.

Structure: Begin with a brief framing of Brand, Community & Cultural Identity as a cluster the brainstorming session explored, then work through the cluster's questions methodically. End with a concise synthesis of the cluster's central tension and Recommended Next Steps.

Focus: Concentrate on the summary document for Brand, Community & Cultural Identity. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — refer to them when they intersect with Brand, Community & Cultural Identity, but do not summarize their content.

Nuance: Surface what the cluster did not engage with, and any minority view worth surfacing, alongside the convergent findings.
```

**Character count:** 1723 / 5,000

### Episode 9: Expansion Path — Fleet & Brick-and-Mortar

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This episode focuses on one of the session's topic clusters: Expansion Path — Fleet & Brick-and-Mortar. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…", "experts agree…").

Create a Deep Dive for an audience that already has working knowledge of food-truck operations. Skip introductory definitions of standard terminology.

Tone: Maintain a measured, analytical discussion throughout. Speak as colleagues reviewing material together, not as entertainers. Avoid enthusiasm markers, sensationalist framing, and performative surprise.

Interpretation: Summarize what the sources actually say. Do not extrapolate or speculate. Frame forward-looking claims as hypotheses, not facts. If evidence is limited, say so.

Structure: Begin with a brief framing of Expansion Path — Fleet & Brick-and-Mortar as a cluster the brainstorming session explored, then work through the cluster's questions methodically. End with a concise synthesis of the cluster's central tension and Recommended Next Steps.

Focus: Concentrate on the summary document for Expansion Path — Fleet & Brick-and-Mortar. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — refer to them when they intersect with Expansion Path — Fleet & Brick-and-Mortar, but do not summarize their content.

Nuance: Surface what the cluster did not engage with, and any minority view worth surfacing, alongside the convergent findings.
```

**Character count:** 1743 / 5,000

---

## Artifact 4: Single infographic (session overview)

**Format:** Infographic
**Sources to upload:** `BRAINSTORM.md`
**Output size:** Single screen / single page — no scrolling required for the primary view.

**Customize box prompt:**

```
Source framing: This document is the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. Frame the infographic as a summary of what the session surfaced, not as a research report. Use language like "the session surfaced…" / "the brainstorm proposed…" in labels and callouts.

Create a single-page infographic summarizing the findings from this brainstorming session on Food Truck Startup and Expansion Strategy.

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced.

Information hierarchy (top to bottom):
1. Title and one-sentence framing of Food Truck Startup and Expansion Strategy and the central question the brainstorming session explored.
2. Three to five central tensions or key themes the session surfaced, each as a short labeled section. Use the language from BRAINSTORM.md's Central Tensions and Key Themes sections directly (for example: "commit and scale now versus prove the core first," and "the menu is the weakest moat — presence and story are the durable edge").
3. Per-cluster mini-summaries — one short block per cluster (9 clusters total), each with the cluster name and a one-sentence takeaway from the brainstorm.
4. Recommended Next Steps — top 3-5 items, ranked by impact.

Tone: Analytical and specific. Each label or callout should be a complete claim ("Bootstrap the first truck on $60K and prove unit economics before drawing the SBA loan") rather than a topic tag ("Financing"). No marketing voice. No exclamation marks. No hype words.

Visual structure: Use a clear top-to-bottom or left-to-right reading order. Differentiate the four sections (framing / tensions / clusters / next steps) with whitespace and section dividers rather than color-coded blocks. Keep iconography minimal and functional — no decorative icons unattached to specific concepts.

Density: Single screen, but dense. A reader should be able to extract the four sections at a glance and the specific claims on a second pass.
```

**Character count:** 2116 / 5,000

---

## Artifact 5: Infographic series (one per topic cluster)

**Format:** Infographic (one per cluster)
**Sources to upload:** `BRAINSTORM.md` + all `synthesis/*_summary.md` files
**Output size per infographic:** Single screen / single page each.

For each cluster from PLAN.md, the prompt scopes the infographic to that cluster's `_summary.md` while treating the others as context only. Run each prompt in a fresh Customize box. Pair these with Artifact 3's podcast episodes for a complete per-cluster deep-dive set.

### Infographic 1: Business Model Foundations & Identity

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This infographic focuses on one of the session's topic clusters: Business Model Foundations & Identity. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…").

Create a single-page infographic for Business Model Foundations & Identity — one of the topic clusters explored in the brainstorming session on Food Truck Startup and Expansion Strategy.

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced about this specific cluster.

Information hierarchy (top to bottom):
1. Title: Business Model Foundations & Identity. Subtitle: one-sentence framing of the question the cluster explored.
2. Central Tension — the cluster's single central tension as a featured callout, quoted near-verbatim from the Business Model Foundations & Identity summary.
3. Key Themes within the cluster — 2-4 themes the brainstorm surfaced for this cluster. Each as a short labeled section with a complete-claim label.
4. What the cluster did not resolve — 1-3 items the cluster's summary calls out as structurally missing or as a strong minority view worth surfacing. Visually distinct from the convergent themes (e.g., bordered callout or different section).
5. Recommended Next Steps for this cluster — top 2-4 items from the cluster's summary.

Focus: Concentrate on the summary document for Business Model Foundations & Identity. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — reference them only when they intersect with Business Model Foundations & Identity.

Tone: Analytical and specific. Each label or callout should be a complete claim, not a topic tag. No marketing voice. No exclamation marks. No hype words.

Visual structure: Top-to-bottom reading order. Use whitespace and section dividers, not color-coded blocks. The central tension and the "what the cluster did not resolve" section are the most analytically interesting parts — give them visual weight. Keep iconography minimal and functional.

Density: Single screen, but dense. A reader should be able to extract the cluster's framing, tension, and themes at a glance.
```

**Character count:** 2430 / 5,000

### Infographic 2: Unit Economics & Break-Even

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This infographic focuses on one of the session's topic clusters: Unit Economics & Break-Even. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…").

Create a single-page infographic for Unit Economics & Break-Even — one of the topic clusters explored in the brainstorming session on Food Truck Startup and Expansion Strategy.

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced about this specific cluster.

Information hierarchy (top to bottom):
1. Title: Unit Economics & Break-Even. Subtitle: one-sentence framing of the question the cluster explored.
2. Central Tension — the cluster's single central tension as a featured callout, quoted near-verbatim from the Unit Economics & Break-Even summary.
3. Key Themes within the cluster — 2-4 themes the brainstorm surfaced for this cluster. Each as a short labeled section with a complete-claim label.
4. What the cluster did not resolve — 1-3 items the cluster's summary calls out as structurally missing or as a strong minority view worth surfacing. Visually distinct from the convergent themes (e.g., bordered callout or different section).
5. Recommended Next Steps for this cluster — top 2-4 items from the cluster's summary.

Focus: Concentrate on the summary document for Unit Economics & Break-Even. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — reference them only when they intersect with Unit Economics & Break-Even.

Tone: Analytical and specific. Each label or callout should be a complete claim, not a topic tag. No marketing voice. No exclamation marks. No hype words.

Visual structure: Top-to-bottom reading order. Use whitespace and section dividers, not color-coded blocks. The central tension and the "what the cluster did not resolve" section are the most analytically interesting parts — give them visual weight. Keep iconography minimal and functional.

Density: Single screen, but dense. A reader should be able to extract the cluster's framing, tension, and themes at a glance.
```

**Character count:** 2370 / 5,000

### Infographic 3: Capital Structure & Financing Decisions

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This infographic focuses on one of the session's topic clusters: Capital Structure & Financing Decisions. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…").

Create a single-page infographic for Capital Structure & Financing Decisions — one of the topic clusters explored in the brainstorming session on Food Truck Startup and Expansion Strategy.

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced about this specific cluster.

Information hierarchy (top to bottom):
1. Title: Capital Structure & Financing Decisions. Subtitle: one-sentence framing of the question the cluster explored.
2. Central Tension — the cluster's single central tension as a featured callout, quoted near-verbatim from the Capital Structure & Financing Decisions summary.
3. Key Themes within the cluster — 2-4 themes the brainstorm surfaced for this cluster. Each as a short labeled section with a complete-claim label.
4. What the cluster did not resolve — 1-3 items the cluster's summary calls out as structurally missing or as a strong minority view worth surfacing. Visually distinct from the convergent themes (e.g., bordered callout or different section).
5. Recommended Next Steps for this cluster — top 2-4 items from the cluster's summary.

Focus: Concentrate on the summary document for Capital Structure & Financing Decisions. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — reference them only when they intersect with Capital Structure & Financing Decisions.

Tone: Analytical and specific. Each label or callout should be a complete claim, not a topic tag. No marketing voice. No exclamation marks. No hype words.

Visual structure: Top-to-bottom reading order. Use whitespace and section dividers, not color-coded blocks. The central tension and the "what the cluster did not resolve" section are the most analytically interesting parts — give them visual weight. Keep iconography minimal and functional.

Density: Single screen, but dense. A reader should be able to extract the cluster's framing, tension, and themes at a glance.
```

**Character count:** 2442 / 5,000

### Infographic 4: Revenue Diversification & Cash Flow

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This infographic focuses on one of the session's topic clusters: Revenue Diversification & Cash Flow. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…").

Create a single-page infographic for Revenue Diversification & Cash Flow — one of the topic clusters explored in the brainstorming session on Food Truck Startup and Expansion Strategy.

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced about this specific cluster.

Information hierarchy (top to bottom):
1. Title: Revenue Diversification & Cash Flow. Subtitle: one-sentence framing of the question the cluster explored.
2. Central Tension — the cluster's single central tension as a featured callout, quoted near-verbatim from the Revenue Diversification & Cash Flow summary.
3. Key Themes within the cluster — 2-4 themes the brainstorm surfaced for this cluster. Each as a short labeled section with a complete-claim label.
4. What the cluster did not resolve — 1-3 items the cluster's summary calls out as structurally missing or as a strong minority view worth surfacing. Visually distinct from the convergent themes (e.g., bordered callout or different section).
5. Recommended Next Steps for this cluster — top 2-4 items from the cluster's summary.

Focus: Concentrate on the summary document for Revenue Diversification & Cash Flow. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — reference them only when they intersect with Revenue Diversification & Cash Flow.

Tone: Analytical and specific. Each label or callout should be a complete claim, not a topic tag. No marketing voice. No exclamation marks. No hype words.

Visual structure: Top-to-bottom reading order. Use whitespace and section dividers, not color-coded blocks. The central tension and the "what the cluster did not resolve" section are the most analytically interesting parts — give them visual weight. Keep iconography minimal and functional.

Density: Single screen, but dense. A reader should be able to extract the cluster's framing, tension, and themes at a glance.
```

**Character count:** 2418 / 5,000

### Infographic 5: Regulatory Strategy & Engagement

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This infographic focuses on one of the session's topic clusters: Regulatory Strategy & Engagement. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…").

Create a single-page infographic for Regulatory Strategy & Engagement — one of the topic clusters explored in the brainstorming session on Food Truck Startup and Expansion Strategy.

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced about this specific cluster.

Information hierarchy (top to bottom):
1. Title: Regulatory Strategy & Engagement. Subtitle: one-sentence framing of the question the cluster explored.
2. Central Tension — the cluster's single central tension as a featured callout, quoted near-verbatim from the Regulatory Strategy & Engagement summary.
3. Key Themes within the cluster — 2-4 themes the brainstorm surfaced for this cluster. Each as a short labeled section with a complete-claim label.
4. What the cluster did not resolve — 1-3 items the cluster's summary calls out as structurally missing or as a strong minority view worth surfacing. Visually distinct from the convergent themes (e.g., bordered callout or different section).
5. Recommended Next Steps for this cluster — top 2-4 items from the cluster's summary.

Focus: Concentrate on the summary document for Regulatory Strategy & Engagement. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — reference them only when they intersect with Regulatory Strategy & Engagement.

Tone: Analytical and specific. Each label or callout should be a complete claim, not a topic tag. No marketing voice. No exclamation marks. No hype words.

Visual structure: Top-to-bottom reading order. Use whitespace and section dividers, not color-coded blocks. The central tension and the "what the cluster did not resolve" section are the most analytically interesting parts — give them visual weight. Keep iconography minimal and functional.

Density: Single screen, but dense. A reader should be able to extract the cluster's framing, tension, and themes at a glance.
```

**Character count:** 2400 / 5,000

### Infographic 6: Commissary Kitchen Infrastructure

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This infographic focuses on one of the session's topic clusters: Commissary Kitchen Infrastructure. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…").

Create a single-page infographic for Commissary Kitchen Infrastructure — one of the topic clusters explored in the brainstorming session on Food Truck Startup and Expansion Strategy.

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced about this specific cluster.

Information hierarchy (top to bottom):
1. Title: Commissary Kitchen Infrastructure. Subtitle: one-sentence framing of the question the cluster explored.
2. Central Tension — the cluster's single central tension as a featured callout, quoted near-verbatim from the Commissary Kitchen Infrastructure summary.
3. Key Themes within the cluster — 2-4 themes the brainstorm surfaced for this cluster. Each as a short labeled section with a complete-claim label.
4. What the cluster did not resolve — 1-3 items the cluster's summary calls out as structurally missing or as a strong minority view worth surfacing. Visually distinct from the convergent themes (e.g., bordered callout or different section).
5. Recommended Next Steps for this cluster — top 2-4 items from the cluster's summary.

Focus: Concentrate on the summary document for Commissary Kitchen Infrastructure. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — reference them only when they intersect with Commissary Kitchen Infrastructure.

Tone: Analytical and specific. Each label or callout should be a complete claim, not a topic tag. No marketing voice. No exclamation marks. No hype words.

Visual structure: Top-to-bottom reading order. Use whitespace and section dividers, not color-coded blocks. The central tension and the "what the cluster did not resolve" section are the most analytically interesting parts — give them visual weight. Keep iconography minimal and functional.

Density: Single screen, but dense. A reader should be able to extract the cluster's framing, tension, and themes at a glance.
```

**Character count:** 2406 / 5,000

### Infographic 7: Customer Experience, Access & Equity

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This infographic focuses on one of the session's topic clusters: Customer Experience, Access & Equity. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…").

Create a single-page infographic for Customer Experience, Access & Equity — one of the topic clusters explored in the brainstorming session on Food Truck Startup and Expansion Strategy.

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced about this specific cluster.

Information hierarchy (top to bottom):
1. Title: Customer Experience, Access & Equity. Subtitle: one-sentence framing of the question the cluster explored.
2. Central Tension — the cluster's single central tension as a featured callout, quoted near-verbatim from the Customer Experience, Access & Equity summary.
3. Key Themes within the cluster — 2-4 themes the brainstorm surfaced for this cluster. Each as a short labeled section with a complete-claim label.
4. What the cluster did not resolve — 1-3 items the cluster's summary calls out as structurally missing or as a strong minority view worth surfacing. Visually distinct from the convergent themes (e.g., bordered callout or different section).
5. Recommended Next Steps for this cluster — top 2-4 items from the cluster's summary.

Focus: Concentrate on the summary document for Customer Experience, Access & Equity. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — reference them only when they intersect with Customer Experience, Access & Equity.

Tone: Analytical and specific. Each label or callout should be a complete claim, not a topic tag. No marketing voice. No exclamation marks. No hype words.

Visual structure: Top-to-bottom reading order. Use whitespace and section dividers, not color-coded blocks. The central tension and the "what the cluster did not resolve" section are the most analytically interesting parts — give them visual weight. Keep iconography minimal and functional.

Density: Single screen, but dense. A reader should be able to extract the cluster's framing, tension, and themes at a glance.
```

**Character count:** 2424 / 5,000

### Infographic 8: Brand, Community & Cultural Identity

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This infographic focuses on one of the session's topic clusters: Brand, Community & Cultural Identity. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…").

Create a single-page infographic for Brand, Community & Cultural Identity — one of the topic clusters explored in the brainstorming session on Food Truck Startup and Expansion Strategy.

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced about this specific cluster.

Information hierarchy (top to bottom):
1. Title: Brand, Community & Cultural Identity. Subtitle: one-sentence framing of the question the cluster explored.
2. Central Tension — the cluster's single central tension as a featured callout, quoted near-verbatim from the Brand, Community & Cultural Identity summary.
3. Key Themes within the cluster — 2-4 themes the brainstorm surfaced for this cluster. Each as a short labeled section with a complete-claim label.
4. What the cluster did not resolve — 1-3 items the cluster's summary calls out as structurally missing or as a strong minority view worth surfacing. Visually distinct from the convergent themes (e.g., bordered callout or different section).
5. Recommended Next Steps for this cluster — top 2-4 items from the cluster's summary.

Focus: Concentrate on the summary document for Brand, Community & Cultural Identity. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — reference them only when they intersect with Brand, Community & Cultural Identity.

Tone: Analytical and specific. Each label or callout should be a complete claim, not a topic tag. No marketing voice. No exclamation marks. No hype words.

Visual structure: Top-to-bottom reading order. Use whitespace and section dividers, not color-coded blocks. The central tension and the "what the cluster did not resolve" section are the most analytically interesting parts — give them visual weight. Keep iconography minimal and functional.

Density: Single screen, but dense. A reader should be able to extract the cluster's framing, tension, and themes at a glance.
```

**Character count:** 2424 / 5,000

### Infographic 9: Expansion Path — Fleet & Brick-and-Mortar

**Customize box prompt:**

```
Source framing: These documents are the output of a facilitated brainstorming session on Food Truck Startup and Expansion Strategy — structured ideation across multiple thinking styles, not primary research or validated findings. This infographic focuses on one of the session's topic clusters: Expansion Path — Fleet & Brick-and-Mortar. Frame claims as ideas the session surfaced ("the brainstorm proposed…", "one perspective in the cluster argued…"), not as facts ("research shows…").

Create a single-page infographic for Expansion Path — Fleet & Brick-and-Mortar — one of the topic clusters explored in the brainstorming session on Food Truck Startup and Expansion Strategy.

Audience: Someone unfamiliar with the project who has 60 seconds to grasp what the brainstorm surfaced about this specific cluster.

Information hierarchy (top to bottom):
1. Title: Expansion Path — Fleet & Brick-and-Mortar. Subtitle: one-sentence framing of the question the cluster explored.
2. Central Tension — the cluster's single central tension as a featured callout, quoted near-verbatim from the Expansion Path — Fleet & Brick-and-Mortar summary.
3. Key Themes within the cluster — 2-4 themes the brainstorm surfaced for this cluster. Each as a short labeled section with a complete-claim label.
4. What the cluster did not resolve — 1-3 items the cluster's summary calls out as structurally missing or as a strong minority view worth surfacing. Visually distinct from the convergent themes (e.g., bordered callout or different section).
5. Recommended Next Steps for this cluster — top 2-4 items from the cluster's summary.

Focus: Concentrate on the summary document for Expansion Path — Fleet & Brick-and-Mortar. Treat the overall BRAINSTORM summary and the other cluster summaries as context only — reference them only when they intersect with Expansion Path — Fleet & Brick-and-Mortar.

Tone: Analytical and specific. Each label or callout should be a complete claim, not a topic tag. No marketing voice. No exclamation marks. No hype words.

Visual structure: Top-to-bottom reading order. Use whitespace and section dividers, not color-coded blocks. The central tension and the "what the cluster did not resolve" section are the most analytically interesting parts — give them visual weight. Keep iconography minimal and functional.

Density: Single screen, but dense. A reader should be able to extract the cluster's framing, tension, and themes at a glance.
```

**Character count:** 2454 / 5,000

---

## Notes for the user

- **NotebookLM 5,000-character limit.** Each prompt above is verified under the limit. If you edit a prompt, recount.
- **Customize before Generate.** Paste the Customize-box prompt before clicking Generate; you cannot change instructions after the artifact is created. If an artifact already exists with the default voice, delete it and regenerate.
- **Format selection.** For Artifact 1, try Deep Dive first. If the source content is evaluative (proposals, plans, critiques), switch to the Critique format — it produces a more objective tone with less prompt engineering.
- **Portability.** The module structure (source framing, measured tone, interpretation guardrails, focus scoping) ports to other tools. For Gamma or Canva, the Slide-structure and Visuals blocks transfer; for Spotify's audio summaries, the Tone and Interpretation blocks transfer. The Source Framing paragraph at the top of each prompt is especially important to keep — without it, downstream tools tend to frame brainstorming output as if it were primary research.
- **Pairing per-cluster artifacts.** Artifacts 3 (podcast series) and 5 (infographic series) are intentionally parallel — one episode and one infographic per cluster. For deep engagement with a single cluster, generate both for that cluster from the same uploaded source set.

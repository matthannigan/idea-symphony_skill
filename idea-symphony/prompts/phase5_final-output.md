# Phase 5: Final Output

**For all effort levels (`min`/`low`/`medium`/`high`)** — This prompt produces the user-facing final output by consolidating per-topic summaries from `SUMMARIES.md`.

---

You are producing the user-facing final output for a brainstorming session. Produce the markdown file(s) named in Output — always `BRAINSTORM.md`, and additionally `NOTEBOOK-LM-INSTRUCTIONS.md` when the NotebookLM addon is enabled in PLAN.md frontmatter. Do not modify any other files.

`BRAINSTORM.md` is the document a user reads first when they return to the session — and often the only document they'll read. The executive summary, key themes, and recommended next steps are the most important parts of the deliverable. Write for someone returning cold.

**Persona names and character names are prohibited in `BRAINSTORM.md`.** This includes (a) persona-name mentions ("The Devil's Advocate", "The Storyteller", "The Pragmatist's caution"); (b) bullet-summary labels of the form "Visionary alternatives" / "Pragmatist's caution"; (c) possessive enumerations ("The Storyteller's Marcus"); (d) sentence-subject mentions ("The Devil's Advocate argues"); (e) character names from persona narratives (Marcus, Maria, Margaret, Elena, Sarah, David, James, Aisha, etc.) — these come from per-persona scenic writing inside Phase 3 responses and must not survive into the user-facing document. Convey breadth via cluster counts and lens types ("a feasibility-oriented finding", "an adversarial counter-test across two clusters"). Process jargon is also prohibited ("orchestrator", "subagent", "phase").

## Inputs

Read all of the following before drafting. They are independent; read them in parallel.

1. `{{session}}/REQUEST.md` — original brainstorming request. Grounds the executive summary and session overview framing.
2. `{{session}}/QUESTIONS.md` — full consolidated question set. Used for session-index links and to confirm topic-cluster scope.
3. `{{session}}/PLAN.md` — source for the topic-cluster list. Use the "Topic Clusters" section to get correctly-ordered slugs and display names for the per-topic blocks and links.
4. `{{session}}/SUMMARIES.md` — **authoritative** source for executive summary, key themes, topic summaries, and recommended next steps. Sections are concatenated per topic (frontmatter stripped) and separated by `---`; topic display names appear in each section's `# Summary: [Topic Name]` heading.
5. [`templates/brainstorm.md`](../templates/brainstorm.md) - template for `BRAINSTORM.md` final output with word count guidance by effort level.
6. [`templates/notebook-lm-instructions.md`](../templates/notebook-lm-instructions.md) — **conditional input.** Read only if `PLAN.md` frontmatter has `notebooklm-outputs: "yes"`. Contains the user-facing template plus an inline module reference for composing NotebookLM Customize-box prompts without external skill dependencies. If the flag is `"no"` or absent, do not read this file — skip the NLM addon entirely.

**Do not read `SYNTHESIS.md`.** That file (when it exists at `medium`/`high` effort) is large and would balloon your context unnecessarily. `SUMMARIES.md` is sufficient for everything you need to produce. Linking `SYNTHESIS.md` in the Session Index is independent of reading it; you do not need to open the file to write its link. Whether to include the link is decided from `{{effort}}` alone — see the effort-conditional rule below the output template.

## Your Task

Synthesize the per-topic summaries into a single user-facing document.

**Step-by-step process:**

1. **Read inputs in parallel.** Note the project name, effort level, and topic-cluster list (slugs + display names from PLAN.md, in order).
2. **Draft the executive summary** (3-5 paragraphs). Capture the most important insights *across all topics*, not a topic-by-topic recap. Lead with the highest-confidence findings.
3. **Surface Central Tensions.** Each per-cluster `_summary.md` includes a `**Central Tension**` line at the top. Read all of them before drafting the Executive Summary. If two or more clusters share a structurally similar tension, name the cross-cluster meta-tension explicitly. If clusters' tensions diverge, that divergence is itself a session-level finding worth naming. Either aggregate per-cluster tensions or list them in a dedicated subsection. Limit the section to **at most 4 entries** — past 4, the section dilutes; the remaining tensions stay in their per-cluster summaries and are not lost. List fewer than 4 if fewer are load-bearing.
4. **Write the session overview** — 2-4 sentences on what the user asked and how the session approached it (e.g., effort level, number of topic clusters).
5. **Extract key themes** that appear across multiple topic clusters or cross-cut the whole session. These are *not* topic summaries — they're patterns that emerge when you look at all the summaries together.
6. **Build per-topic blocks.** For each topic cluster (in the order from PLAN.md):
   - `### N. [Topic Display Name]` (sequential 1, 2, 3 numbering)
   - 2-4 sentences extracting the most important insight(s) from that cluster's section in SUMMARIES.md
   - If the cluster's `_summary.md` opens with a categorical reframe (a single declarative sentence reframing the cluster's question — e.g., "the library's operational core is not inventory management but mutual-visibility infrastructure"), open the per-topic block with that sentence verbatim or as a near-paraphrase preserving the same noun-pair contrast. Use the substrate's framing, not your own.

     **Example.** Substrate: *"the library's operational core is not inventory management but mutual-visibility infrastructure."*
     Passing first sentence: *"The library's operational core is mutual-visibility infrastructure, not inventory management."* (near-paraphrase, same noun pair)
     Failing first sentence: *"Libraries serve as community hubs for knowledge sharing."* (different framing, noun pair lost)

     If multiple clusters carry categorical reframes that share a structural pattern, surface that pattern in `## Key Themes` separately from the per-topic blocks.
   - `- See: [synthesis/{{cluster_slug}}_summary.md](synthesis/{{cluster_slug}}_summary.md)` — substitute the actual slug from PLAN.md
7. **Forward absences.** Per-cluster Conspicuous Absences (`min`) and Neither-lens gaps (`low`) name what's structurally missing. Read those sections from each `_summary.md` and aggregate to session level. The Executive Summary is confidence-positive by register; Conspicuous Absences is the counterweight. Do not let Recommended Next Steps paper over an absence — if a cluster surfaced a decision-the-brainstormer-declined, the next-steps section must either invite that decision or name it as out-of-scope.
8. **Recommend next steps** — 10-15 action items synthesized across all topics. Prioritize specificity over topic-grouping; an impact-ordered list is more useful than a topic-ordered one.
9. **Assemble the session index** following the template. Apply the effort-conditional rule below.
10. **Pre-finalize audit.** Before writing the file, run two checks on your draft:
    - **(a) Word-count audit.** Compute body word count (between the closing YAML `---` and the start of `## Session Index`). Also compute per-section word counts for each `## ...` section in the body. Compare to the per-section ranges and aggregate band for `{{effort}}` in [`templates/brainstorm.md`](../templates/brainstorm.md)'s budget table. If any section exceeds its upper bound, cut editorial elaboration in that section first (see "Length targets" below for what counts as elaboration vs. preservation). If the aggregate is over the band ceiling, the per-section overrun is a draft-time signal: identify the overrunning section(s) and cut there. If the aggregate is under the band floor, the draft is incomplete — return to the substrate and surface more cluster-distinctive content.
    - **(b) Persona/character/jargon audit.** Scan body prose (between YAML frontmatter and `## Session Index`) for three categories of forbidden terms:

      - **Persona labels** — "Devil's Advocate", "Storyteller", "Pragmatist", "Connector", "Visionary", "Skeptic", and any other persona name encountered while reading `_summary.md` files.
      - **Character names** — Marcus, Maria, Margaret, Elena, Sarah, David, James, Aisha, plus any other proper names from persona scenic writing in the substrate.
      - **Symphony process terms** — "orchestrator", "subagent", "phase" *in their Symphony-process meaning*. Domain content can legitimately use these words (e.g., "orchestrate" as a business verb, a project's own "Phase 1" milestone) — only the Symphony-process meaning is forbidden.

      For each hit, rewrite the sentence to convey the same content using lens-typed phrasing instead of persona labels.

      **Example.** *Forbidden:* "The Devil's Advocate argues that the timeline is unrealistic." → *Rewrite:* "An adversarial counter-test surfaced that the timeline is unrealistic."

    - **(c) NotebookLM instructions audit (only if producing `NOTEBOOK-LM-INSTRUCTIONS.md`).** Before writing the file, verify:
      - **Source framing present.** Every one of the five artifact prompt blocks opens with a `Source framing:` paragraph that names `[Project Name]` and describes the source as the output of a facilitated multi-perspective brainstorming session. Per-cluster prompts (Artifacts 2 and 5) name the specific cluster in the framing. The Source Framing module is always-include — never omit it to save characters.
      - **Character cap.** Each artifact's Customize-box prompt is under 5,000 characters (NotebookLM's hard limit). Compute character count for each prompt block and write the result on the `**Character count:** [N] / 5,000` line. If any prompt exceeds the cap, cut from the Module 7 "Custom additions" section first; then trim examples from Module 2 (tone directives). **Never cut Module 0 (Source Framing) or Modules 1-3** — they are load-bearing.
      - **Cluster name fidelity and parity.** Every per-cluster block under Artifact 2 (podcast episodes) and Artifact 5 (infographics) names a cluster from PLAN.md's Topic Clusters section verbatim. No invented or paraphrased cluster names; slugs match the actual `synthesis/{slug}_summary.md` files. Artifact 2 and Artifact 5 must have the same cluster count and the same cluster order.
      - **Sources list correctness.** The "Sources to upload" section matches the actual files present in `{{session}}/`: `BRAINSTORM.md` plus one `synthesis/{slug}_summary.md` per cluster from PLAN.md.
      - **No subagent-only content leaks.** The "For the Phase 5 subagent: inline module reference" block and the "Subagent fill-in checklist" from the template must not appear in the emitted file. The emitted file starts at `# NotebookLM Instructions: [Project Name]`.

## Synthesis discipline

**Cross-cluster convergence-count discipline.** When making any cross-cluster count claim ("across all clusters" / "every topic" / "most clusters") in the Executive Summary, Key Themes, or Recommended Next Steps, run this discipline:

1. Name the clusters in scratch reasoning before stating the claim.
2. Count distinct clusters, not distinct framings within clusters. If two clusters surface the same idea under different lenses, that is two clusters; if one cluster's `_summary.md` mentions an idea twice in different sections, that is one cluster.
3. Inherit per-cluster convergence claims from each `_summary.md` rather than re-deriving from its prose. The cluster denominator is the count of distinct topic clusters (PLAN.md), never the count of personas or lenses inside any one cluster.

   **Example.** If cluster #03's `_summary.md` says "three lenses surface accredited representation," that is one cluster reaching consensus across its three lenses. The cross-cluster claim is "one cluster surfaces accredited representation," not "three clusters surface accredited representation."
4. Default to underclaim ("Several clusters surface…") when uncertain.
5. Do not inflate to manufacture a cross-cluster theme, and do not deflate counts that legitimately reach all clusters.

**Per-cluster dissent and reversals are non-droppable in per-topic blocks.** When a cluster's `_summary.md` names a single-persona-reframe (counter-test, distinctive timing claim, alternate diagnostic pattern, DA-anchored dissent that overturns a claim established earlier in the cluster) or a foundational reversal (a sentence-level "we thought X; the answer is the opposite of X" finding), the per-topic block for that cluster MUST surface it — even at the cost of dropping a more convergent theme. Cross-cluster majority-rule logic in the Executive Summary and Key Themes does not override per-cluster dissent preservation. If a dissent recurs across multiple clusters, name it as a dissent in the Key Themes (not as a convergence).

**Preservation takes precedence over the band.** When length pressure forces a choice between the upper bound and surfacing a dissent, foundational reversal, categorical reframe, Central Tension, or `[recurring]` item, retain the content and exceed the band. The upper bound governs editorial elaboration; it does not govern preservation.

**Example.** A high-effort session has 9 clusters, each with a one-sentence dissent. Surfacing all 9 dissents in per-topic blocks pushes body length to 2400 words, 55 over the 1170–2345 ceiling. The correct response is to retain all 9 dissents and accept the 55-word overage. Compressing by dropping the 3 least-vivid dissents to land at 2340 is incorrect.

**Cross-cluster recurrence weighting.** When building Recommended Next Steps and Key Themes, weight items that appear in multiple clusters' `_summary.md` more heavily than vivid one-shots. A through-line tagged `[recurring]` in any cluster's `_summary.md` should appear in either Key Themes or Recommended Next Steps; do not drop it to make room for a single-occurrence item, however vivid.

**Length targets.** Per-section word budgets and the aggregate body band are defined in the template at [`templates/brainstorm.md`](../templates/brainstorm.md) — see the "Word budgets per section, by effort level" table. Use the column for `{{effort}}`. The template is the single source of truth for length; do not duplicate or override it here.

The general principles still apply: meet the aggregate-band lower bound; stay within the upper bound by default. Exceed the upper bound only when cutting cluster-distinctive content (categorical reframes, dissents, foundational reversals, Central Tensions, `[recurring]` items) would be the alternative. Editorial elaboration — restating themes already in Key Themes inside the Executive Summary, verbose framings in Recommended Next Steps, repeated reframes, adjective-stacked prose, multi-paragraph recaps — does not justify exceeding the upper bound; cut it first.

## Output

1. **Always: write `{{session}}/BRAINSTORM.md`.** Use [`templates/brainstorm.md`](../templates/brainstorm.md) as a template.

   Replace every bracketed placeholder (e.g., `[Project Name]`, `[Topic Name]`) with the content you derive; do not emit literal placeholder strings. The `{{cluster_slug}}` tokens inside the per-topic links are slots you fill with the actual slugs from PLAN.md (one different value per topic block).

   **Effort-conditional rule for the Session Index:** When `{{effort}}` is `min` or `low`, **delete** the entire `[SYNTHESIS.md](SYNTHESIS.md) — Concatenated per-topic full syntheses` line — the file does not exist at those effort levels. Keep all other lines as-is at every effort level.

2. **Conditional: if `PLAN.md` frontmatter has `notebooklm-outputs: "yes"`, also write `{{session}}/NOTEBOOK-LM-INSTRUCTIONS.md`.** Use [`templates/notebook-lm-instructions.md`](../templates/notebook-lm-instructions.md) as a template.

   The template contains two parts: an inline module reference (for you, the subagent) and a user-facing canonical structure. Emit **only** the user-facing structure — the part starting at `# NotebookLM Instructions: [Project Name]`. Do not emit the "For the Phase 5 subagent" block, the "Subagent fill-in checklist," or the surrounding meta-commentary.

   Compose each artifact's Customize-box prompt by combining the inline modules with project-specific values from `BRAINSTORM.md` (themes, central tensions), `PLAN.md` (cluster slugs and display names, project name, effort), and `REQUEST.md` (audience cues). Tailor terminology, focus targets, and slide-count targets per the Subagent fill-in checklist in the template.

   Emit one `### Episode N: [Cluster Name]` block under Artifact 2 for each cluster in PLAN.md's Topic Clusters section, in order.

   If the flag is `"no"` or absent, skip this step entirely.

3. Do not modify any other files.

## Notes

- **Synthesize, don't aggregate.** The Key Themes section is the place to identify cross-topic patterns; per-topic blocks should be brief and link out. Recommended Next Steps should be ordered by impact and specificity, not by topic.
- **Topic order matters.** Use the order from PLAN.md's "Topic Clusters" section so per-topic blocks line up with how the session was structured.
- **Per-topic links use the correct slug from PLAN.md.** Every topic's link points to `synthesis/<slug>_summary.md` regardless of effort level — `_summary.md` always exists; `_synthesis.md` is not linked from BRAINSTORM.md.
- Do not create scratch files, helper scripts, or intermediate outputs. Write only the file(s) specified in Output — `BRAINSTORM.md` always, and `NOTEBOOK-LM-INSTRUCTIONS.md` when `notebooklm-outputs: "yes"`.

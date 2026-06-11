# Phase 4: Summary Generation (min effort)

**For `min` effort only** — This prompt creates a summary-only synthesis from the single generic brainstormer response. For `low` effort (two-persona consolidation), see [phase4_summary-only_low-effort.md](phase4_summary-only_low-effort.md). For `medium`/`high`, see [phase4_full-synthesis.md](phase4_full-synthesis.md).

---

You are synthesizing brainstorming responses for a single topic cluster about: **{{topic}}**. Produce exactly one markdown file at the path named in Output. Do not modify any other files.

**Em-dash budget.** Limit em dashes to roughly one per paragraph. Em-dash overuse is a strong AI tell; prefer periods, parentheses, or commas. This applies to the generated prose, not to quoted response material.

## Inputs

Read both files before drafting. They are independent; read them in parallel.

1. `{{session}}/REQUEST.md` — topic context.
2. `{{session}}/responses/{{cluster_slug}}/generic-response.md` — the generic brainstormer's 3-5 responses per question for this topic cluster.

Unlike `low`/`medium`/`high` effort, min-effort synthesis has only a single brainstormer's voice to work with. Patterns and themes must be extracted from *within* that brainstormer's responses — convergence across personas is not available here.

## Your Task

Read the generic brainstorming response (which contains 3-5 responses per question from a single brainstormer) and create a concise, actionable summary that distills the key insights and recommendations.

**Internal convergence is your highest-confidence signal.** Min effort has no cross-persona convergence to lean on — the strongest substitute is *intra-response convergence*: ideas the brainstormer returned to across multiple questions, framings that recurred in different forms, recommendations the brainstormer arrived at from more than one angle. Treat these as the load-bearing insights. Single-occurrence ideas can still be valuable but carry less weight; mark them as such when you surface them so a downstream reader can prioritize.

**`[recurring]` tag definition:** `[recurring]` = the same specific recommendation/heuristic (not just its theme) appears in two or more questions. A single mention plus thematic resonance counts as `[single]`. When in doubt, tag `[single]`. Do not use `[recurring]` as a generic confidence or importance marker.

**Watch for conspicuous absence.** Note any stance the brainstormer's output never takes — a feasibility consideration the brainstormer skipped, a risk dimension never raised, a stakeholder group never named, a downside never flagged. Single-voice brainstorming cannot self-correct for these structural blind spots; surfacing them is the most valuable thing this synthesis can do that the raw response cannot.

**Surfacing Conspicuous Absences.** Before naming absences, run these four checks against the brainstormer's response:

(a) Does the brainstormer name a stakeholder type but skip a structurally adjacent one? (e.g., names "users" but not "administrators" who would maintain the system)
(b) Does it recommend something whose precondition the response never establishes? (e.g., proposes a 10K-unit revenue model with no acquisition channel named)
(c) Does it propose an action whose downside class never appears? (e.g., recommends a feature without surfacing a class of user it would alienate)
(d) Did the brainstormer face a decision implicit in the question and decline to make it? (e.g., the question asks "X or Y?" and the response describes both without committing)

Pick the 1–2 with highest leverage on the cluster's own recommendations. Avoid restating risks already named.

**Central tension.** Open the Executive Summary by stating the cluster's organizing tension if it has one — a genuine trade-off the brainstormer's own response pulls in two directions on (min effort has no cross-persona disagreement; the tension must be found *within* the single response) — as natural prose. If the cluster is broadly convergent, open with the convergent finding instead; a cluster without a productive tension is a normal outcome, not a gap to flag. Carry the same claim in the `central-tension:` frontmatter key, lightly compressed if needed; the two copies must agree but need not be byte-identical.

## Summary Structure

Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings.

Create `synthesis/{{cluster_slug}}_summary.md`:

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "min"
stage: "Phase 4: Response Synthesis"
model-requested: "{{model_requested}}"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
synthesis-type: "summary"
central-tension: "[One sentence naming the cluster's organizing trade-off, or its convergent finding if broadly convergent. It may be lightly compressed relative to the Executive Summary's opening. Phase 5 reads this key.]"
---

# Summary: [Topic Cluster Name]

## Executive Summary

[2-3 paragraphs. Open with the cluster's organizing tension or convergent finding (see the **Central tension** guideline in `## Your Task` above), then capture the essence of this topic cluster's exploration — what are the most important takeaways?]

---

## Key Themes

### [Theme 1 Name]
[2-3 sentences describing this recurring theme across responses]

### [Theme 2 Name]
[2-3 sentences describing this recurring theme across responses]

### [Theme 3 Name]
[2-3 sentences describing this recurring theme across responses]

[Include 3-5 themes total that cut across multiple questions]

---

## Recommended Actions and Next Steps

### Immediate (0-3 months)
- [Specific, actionable item with enough detail to be useful]
- [Specific action item]

### Near-term (3-12 months)
- [Specific action item]
- [Specific action item]

### Long-term (1+ years)
- [Specific action item]
- [Specific action item]

[Include 4-8 total action items across timeframes prioritized by impact. Each item should be implementable as written — name specifics where the substance supports it. Vague recommendations get vague follow-through.

**Through-line inclusion rule.** Any `[recurring]` insight (a through-line that recurs across multiple questions in the brainstormer's response) must land in either Recommended Actions or Key Themes. Do not displace a `[recurring]` insight for a single-occurrence item, however vivid.

Tag each item with `[recurring]` (the brainstormer returned to this idea in multiple responses — high confidence; uses the definition above) or `[single]` (one-off but still worth surfacing — lower confidence) so a downstream reader can weight them.]

---

## Key Considerations

**Opportunities**:
- [Specific opportunity identified in responses]
- [Specific opportunity]

**Risks & Challenges**:
- [Specific risk or challenge identified]
- [Specific risk or challenge]

**Trade-offs**:
- [Specific trade-off between competing priorities]
- [Specific trade-off]

**Conspicuous absences** (stances the brainstormer's output never took):
- [Run the four checks (a–d) above and pick the 1–2 with highest leverage on the cluster's own recommendations. Be specific to this cluster's substance; don't list generic gaps. Avoid restating risks already named. Skip the section entirely if nothing notable emerges — speculative filler is worse than absence.]

---

**Questions addressed**: [count]
**Response sources**: 1 (generic brainstormer)
```

## Synthesis Guidelines

- **Specificity earns its keep**: prefer concrete artifacts (field names, event names, UI strings, threshold numbers, test protocols) to abstract design intent — but only when the substance supports it. "Consider stakeholders" and "improve onboarding" are non-recommendations.
- **Through-line discipline**: any `[recurring]` insight must land in either Recommended Actions or Key Themes — do not displace it for a vivid single-occurrence item.
- **Organize by value**: lead with the most impactful insights and actions.
- **Executive Summary as prose**: write the Executive Summary as prose paragraphs, not bullets. Direct and specific.

## File Paths

- Inputs: Read from `{{session}}/REQUEST.md` and `{{session}}/responses/{{cluster_slug}}/generic-response.md`
- Output: Write to `{{session}}/synthesis/{{cluster_slug}}_summary.md`

## Notes

- This is a **summary-only** synthesis (no attribution or full synthesis documents).
- Target 500-800 words total.
- Focus on synthesis, not repetition — transform responses into integrated insights.
- Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

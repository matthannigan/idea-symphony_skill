<!--
RP1 iter1 revision-log (machine-readable)
revised: 2026-05-05
base: idea-symphony/prompts/phase4_summary-only_min-effort.md (canonical, pre-RP1)
items_landed: [P0-#9, P0-#10, P1-#11, P1-#12]
items_deferred: []
constraints_preserved: [productive-dissent, bidirectional-2B-2C, length-permission, reversal-preservation]
self-check-directive: embedded
-->

# Phase 4: Summary Generation (min effort)

**For `min` effort only** — This prompt creates a summary-only synthesis from the single generic brainstormer response. For `low` effort (two-persona consolidation), see [phase4_summary-only_low-effort.md](phase4_summary-only_low-effort.md). For `medium`/`high`, see [phase4_full-synthesis.md](phase4_full-synthesis.md).

---

You are synthesizing brainstorming responses for a single topic cluster about: **{{topic}}**. Produce exactly one markdown file at the path named in Output. Do not modify any other files.

## Inputs

Read the single response file before drafting.

1. `{{session}}/responses/{{cluster_slug}}/generic-response.md` — the generic brainstormer's 3-5 responses per question for this topic cluster.

Unlike `low`/`medium`/`high` effort, min-effort synthesis has only a single brainstormer's voice to work with. Patterns and themes must be extracted from *within* that brainstormer's responses — convergence across personas is not available here.

## Your Task

Read the generic brainstorming response (which contains 3-5 responses per question from a single brainstormer) and create a concise, actionable summary that distills the key insights and recommendations.

**Internal convergence is your highest-confidence signal.** Min effort has no cross-persona convergence to lean on — the strongest substitute is *intra-response convergence*: ideas the brainstormer returned to across multiple questions, framings that recurred in different forms, recommendations the brainstormer arrived at from more than one angle. Treat these as the load-bearing insights. Single-occurrence ideas can still be valuable but carry less weight; mark them as such when you surface them so a downstream reader can prioritize.

**Tightened `[recurring]` tag definition:** `[recurring]` = the same specific recommendation/heuristic (not just its theme) appears in two or more questions. A single mention plus thematic resonance counts as `[single]`. When in doubt, tag `[single]`. Do not use `[recurring]` as a generic confidence or importance marker.

**Watch for conspicuous absence.** Note any stance the brainstormer's output never takes — a feasibility consideration the brainstormer skipped, a risk dimension never raised, a stakeholder group never named, a downside never flagged. Single-voice brainstorming cannot self-correct for these structural blind spots; surfacing them is the most valuable thing this synthesis can do that the raw response cannot.

**Diagnostic checklist for Conspicuous Absences (run before naming absences):**

(a) Does the brainstormer name a stakeholder type but not a structurally adjacent one?
(b) Does it recommend something whose precondition the response never establishes (e.g., a 10K-unit revenue model with no acquisition channel)?
(c) Does it propose action whose downside class is never raised?
(d) Did the brainstormer face a decision implicit in the question and decline to make it?

Pick the 1–2 with highest leverage on the cluster's own recommendations. Avoid restating risks already named.

## Summary Structure

Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings.

Create `synthesis/{{cluster_slug}}_summary.md`:

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "min"
stage: "Phase 4: Summary Generation"
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
---

# Summary: [Topic Cluster Name]

**Central Tension**: [One sentence naming the cluster's organizing trade-off as it appears within the brainstormer's own response — what does this cluster's substance pull in two directions on? Required. If the cluster has no productive tension to name, that itself is a signal worth surfacing — say so.]

---

## Executive Summary

[2-3 paragraphs capturing the essence of this topic cluster's exploration. What are the most important takeaways?]

---

## Key Themes

### [Theme 1 Name]
[2-3 sentences describing this recurring theme across responses]

### [Theme 2 Name]
[2-3 sentences describing this recurring theme]

### [Theme 3 Name]
[2-3 sentences describing this recurring theme]

[Include 3-5 themes total]

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

[Include 4-8 total action items across timeframes. Each item should be implementable as written — name specific data fields, event names, UI strings, threshold numbers, or test protocols where the substance supports it (e.g., "log `cap_reached` and `weekly_review_completed` as named events," not "instrument the feature"). Vague recommendations get vague follow-through.

**Mandatory inclusion gate for `[recurring]` items.** Every through-line that recurs across multiple questions in the brainstormer's response must appear in either Recommended Actions or Key Themes. Do not drop a `[recurring]` insight to make room for a single-occurrence item, however vivid.

Tag each item with `[recurring]` (the brainstormer returned to this idea in multiple responses — high confidence; uses the tightened definition above) or `[single]` (one-off but still worth surfacing — lower confidence) so a downstream reader can weight them.]

---

## Key Considerations

**Opportunities**:
- [Bullet point]
- [Bullet point]

**Risks & Challenges**:
- [Bullet point]
- [Bullet point]

**Trade-offs**:
- [Bullet point]
- [Bullet point]

**Conspicuous absences** (stances the brainstormer's output never took):
- [Run the diagnostic checklist above (a–d) and pick the 1–2 with highest leverage on the cluster's own recommendations. Be specific to this cluster's substance; don't list generic gaps. Avoid restating risks already named. Skip the section entirely if nothing notable emerges — speculative filler is worse than absence.]

---

**Questions addressed**: [count]
**Response sources**: 1 (generic brainstormer)
```

## Synthesis Guidelines

- **Extract patterns**: look for recurring themes across the different responses within the brainstormer's output — these are your highest-confidence signals in a single-voice setup
- **Prioritize actionability**: focus on insights that lead to concrete next steps
- **Balance optimism and realism**: acknowledge both opportunities and challenges
- **Specificity earns its keep**: prefer concrete artifacts (field names, event names, UI strings, threshold numbers, test protocols) to abstract design intent — but only when the substance supports it. "Consider stakeholders" and "improve onboarding" are non-recommendations
- **Surface what isn't there**: a single-voice brainstorm cannot self-correct for blind spots. The Conspicuous Absences section is where this synthesis adds value the raw response cannot — run the diagnostic checklist, use it concretely, skip it if nothing real emerges
- **Through-line discipline**: any `[recurring]` insight must land in either Recommended Actions or Key Themes — do not displace it for a vivid single-occurrence item
- **Organize by value**: lead with the most impactful insights and actions
- Write the Executive Summary as prose paragraphs, not bullets. Direct and specific.

**Self-check (only when this prompt is invoked under RP1 diagnostic regeneration with a `targeted_axis` argument):** After producing the standard output, append a `<!-- self-check -->` block at the very end of the file naming: (a) the targeted axis for this sample, (b) the BL1 expectation, (c) what the regenerated output produced relative to that expectation, (d) PASS / PARTIAL / FAIL with a one-sentence rationale. If invoked normally (no `targeted_axis`), skip the block.

## File Paths

- Input: Read from `{{session}}/responses/{{cluster_slug}}/generic-response.md`
- Output: Write to `{{session}}/synthesis/{{cluster_slug}}_summary.md`

## Notes

- This is a **summary-only** synthesis (no attribution or full synthesis documents).
- Target 500-800 words total.
- Focus on synthesis, not repetition — transform responses into integrated insights.
- Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

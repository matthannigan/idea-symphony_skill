# Phase 4: Summary Generation (low effort)

**For `low` effort only** — This prompt consolidates responses from The Devil's Advocate and The Pragmatist into a summary that preserves their productive tension (risk vs. feasibility). For `min` effort (single-voice summarization), see [phase4_summary-only_min-effort.md](phase4_summary-only_min-effort.md). For `medium`/`high` (full multi-persona synthesis with attribution), see [phase4_full-synthesis.md](phase4_full-synthesis.md).

---

You are synthesizing brainstorming responses from two complementary perspectives for a single topic cluster about: **{{topic}}**. Produce exactly one markdown file at the path named in Output. Do not modify any other files.

`low` effort deliberately pairs The Devil's Advocate (critical-risk lens) with The Pragmatist (feasibility lens). Your summary must preserve this tension — the value of `low` effort is specifically in the critical + pragmatic contrast. **Frame that tension substantively in the output** (e.g., "a feasibility-oriented case argues…; a risk-oriented counterpoint flags…") rather than naming the personas in the prose. The final BRAINSTORM.md should read as a portable analysis that a cold reader — someone unfamiliar with this skill — can follow, not as a transcript of two named characters.

## Inputs

Read all four files before drafting. They are independent; read them in parallel.

1. `{{session}}/REQUEST.md` — topic context.
2. `{{session}}/questions/by-topic/{{cluster_slug}}.md` — the questions answered in this topic cluster.
3. `{{session}}/responses/{{cluster_slug}}/the-devils-advocate.md` — DA's responses. Required.
4. `{{session}}/responses/{{cluster_slug}}/the-pragmatist.md` — Pragmatist's responses. Required.

Both persona files are mandatory inputs. Skipping one loses half the point of `low` effort — the skill explicitly pairs these two lenses to surface trade-offs that single-voice brainstorming smooths over.

## Your Task

Read both persona response files and produce a summary that explicitly surfaces where the two voices converge, diverge, and uniquely contribute.

**Step-by-step process:**

1. **Classify responses** per question:
   - **Convergent**: both personas reached the same conclusion or flagged the same concern → high-confidence signal
   - **Divergent**: DA cautions, Pragmatist endorses (or vice versa) → genuine trade-off worth surfacing
   - **Unique**: only one persona raised it → potential blind spot from the other's angle
2. **Build the summary** using the structure below

## Synthesis Strategy

For each question, note:

- **Convergent points** → lead with these as highest-confidence insights and actions
- **Divergent points** → name the tension explicitly, not in neutralized language. Example: *"A feasibility-oriented case for [X] as the most buildable path; a risk-oriented counterpoint that [Y] is a significant risk of doing so."*
- **Unique contributions** → preserve as blind-spot notes, tagged by the substantive lens (risk-oriented or feasibility-oriented) rather than the persona name

A summary that smooths the risk/feasibility contrast into neutral consensus defeats the purpose of `low` effort. Name the disagreements — in terms of the substantive positions, not the personas that generated them.

**Smoothed (fails the `low` effort mandate):** "Members appreciate accessibility, but balance is needed between inclusivity and sustainability."

**Tension-preserved (succeeds):** "A feasibility-oriented case argues for sliding-scale membership to maximize sustainability at current member counts; a risk-oriented counterpoint flags that any paywall — including sliding-scale — selectively excludes the members the library exists to serve, and argues instead for pay-what-you-can with a suggested amount until a sustainability audit at month 6."

The second version commits each lens to a specific stance and forces the reader to confront the trade-off rather than letting it dissolve into "balance" — while staying legible to a cold reader who doesn't know a two-persona pairing produced it.

## Output

Replace every bracketed placeholder below (e.g., `[Topic Cluster Name]`, `[Theme 1 Name]`) with the content you derive; do not emit the literal placeholder strings.

Create `synthesis/{{cluster_slug}}_summary.md`:

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
---

# Summary: [Topic Cluster Name]

**Central Tension**: [One sentence naming the cluster's organizing trade-off — e.g., "incremental shipping inside the 3-month timeline vs. structural redesign that defers but doesn't solve the architectural risk." Required. If the cluster has no productive tension to name, that itself is a signal worth surfacing — say so.]

---

## Executive Summary

[2-3 paragraphs capturing the most important insights. Note where the two lenses converged on high-confidence points, where they disagreed on key trade-offs, and what unique concerns each raised. Frame convergences and disagreements in substantive terms (e.g., "a risk-oriented view," "a feasibility-oriented view"), not by persona name.]

---

## Key Themes

### [Theme 1 Name]
[2-3 sentences. Note whether this theme was raised by both lenses (convergent) or one (unique to the risk-oriented or feasibility-oriented view).]

### [Theme 2 Name]
[2-3 sentences.]

### [Theme 3 Name]
[2-3 sentences.]

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

[Include 4-8 total action items. Each item should be implementable as written — name specific data-model fields, event names, UI strings, or test protocols where the cluster's substance supports it (e.g., "log `grace_offered`, `grace_used`, `grace_declined` as distinct events from launch," not "instrument the grace mechanic"). Vague recommendations get vague follow-through.

Tag each item at the end with `[convergent]`, `[trade-off]`, or `[unique: risk]` / `[unique: feasibility]` so a downstream reader can weight them. Prefer convergent recommendations at the top of each timeframe; where the two lenses disagreed on an action, present the trade-off explicitly — framed by stance, not by persona name — rather than picking a side.]

---

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
- [1-3 things that neither a risk lens nor a feasibility lens naturally surfaces but that the cluster's substance suggests are real — e.g., relational/social dynamics, lifecycle/stage shifts, equity/access second-order effects, ethical surfaces. Be specific to this cluster; don't generalize. Skip the section entirely if nothing substantive emerges — speculative filler is worse than absence.]

---

**Questions addressed**: [count]
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)
```

## Synthesis Guidelines

- **Preserve tension, don't smooth it**: the risk + feasibility pairing is designed to surface trade-offs — name them substantively
- **Frame by stance, not by generator**: reference the substantive lens (a risk-oriented view, a feasibility-oriented view) when the attribution clarifies the point. Do not name the personas in the output prose; the output must stand alone as a portable document.
- **Prioritize convergent insights**: points both lenses mention carry more weight
- **Don't drop unique insights**: a blind-spot flag from one lens is often the most valuable output
- **Specificity earns its keep**: prefer concrete artifacts (field names, event names, UI strings, test protocols, threshold numbers) to abstract design intent — but only when the cluster substance actually supports it. A vague action item is worse than a sharp observation
- **Look past the brief**: the Neither-lens gaps section is your chance to flag what the DA/Pragmatist pairing structurally won't surface. Use it sparingly and concretely; speculative filler defeats the point
- **Organize by value**: lead with high-confidence items, then trade-offs, then blind spots
- Write the Executive Summary as prose paragraphs, not bullets. Direct and specific: commit each lens to a stance and surface the disagreement in substantive terms, not by naming the personas that generated each side.

## Notes

- This is a **summary-only** synthesis (no attribution document, no separate synthesis document).
- Target 500-800 words total.
- Focus on synthesis, not repetition — transform responses into integrated insights organized by the convergence / divergence / unique structure.
- Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

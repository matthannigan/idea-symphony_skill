# Phase 4: Summary Generation (low effort)

**For `low` effort only** — This prompt consolidates responses from The Devil's Advocate and The Pragmatist into a summary that preserves their productive tension (risk vs. feasibility). For `min` effort (single-voice summarization), see [phase4_summary-only_min-effort.md](phase4_summary-only_min-effort.md). For `medium`/`high` (full multi-persona synthesis with attribution), see [phase4_full-synthesis.md](phase4_full-synthesis.md).

---

You are synthesizing brainstorming responses from two complementary perspectives for a single topic cluster about: **{{topic}}**. Produce exactly one markdown file at the path named in Output. Do not modify any other files.

`low` effort deliberately pairs The Devil's Advocate (critical-risk lens) with The Pragmatist (feasibility lens). Your summary must preserve this tension — the value of `low` effort is specifically in the critical + pragmatic contrast.

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
- **Divergent points** → name the tension explicitly, not in neutralized language. Example: *"The Pragmatist recommends [X] as the most feasible path; The Devil's Advocate flags [Y] as a significant risk of doing so."*
- **Unique contributions** → preserve as blind-spot notes, attributed to whichever persona raised them

A summary that smooths the DA/Pragmatist contrast into neutral consensus defeats the purpose of `low` effort. Name the disagreements.

**Smoothed (fails the `low` effort mandate):** "Members appreciate accessibility, but balance is needed between inclusivity and sustainability."

**Tension-preserved (succeeds):** "The Pragmatist recommends a sliding-scale membership to maximize sustainability at current member counts; The Devil's Advocate flags that any paywall — including sliding-scale — selectively excludes the members the library exists to serve, and recommends pay-what-you-can with a suggested amount until a sustainability audit at month 6."

The second version names both lenses, commits each to a specific stance, and forces the reader to confront the trade-off rather than letting it dissolve into "balance."

## Output

Replace every bracketed placeholder below (e.g., `[Topic Cluster Name]`, `[Theme 1 Name]`) with the content you derive; do not emit the literal placeholder strings.

Create `synthesis/{{cluster_slug}}_summary.md`:

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
date: {YYYY-MM-DD}
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
---

# Summary: [Topic Cluster Name]

---

## Executive Summary

[2-3 paragraphs capturing the most important insights. Note where DA and Pragmatist converged on high-confidence points, where they disagreed on key trade-offs, and what unique concerns each raised.]

---

## Key Themes

### [Theme 1 Name]
[2-3 sentences. Note whether this theme was raised by both personas (convergent) or one (unique to DA or Pragmatist).]

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

[Include 4-8 total action items. Prefer convergent recommendations at the top of each timeframe; where DA and Pragmatist disagreed on an action, present the trade-off explicitly rather than picking a side.]

---

## Key Considerations

**High-confidence items** (both personas agreed):
- [Point]
- [Point]

**Trade-offs** (DA and Pragmatist disagreed):
- [Specific trade-off — name both sides: "Pragmatist says X; DA flags Y"]
- [Specific trade-off]

**Blind-spot flags** (only one persona raised):
- [Flag — noted by The Devil's Advocate | The Pragmatist]
- [Flag — noted by The Devil's Advocate | The Pragmatist]

---

**Questions addressed**: [count]
**Personas**: The Devil's Advocate, The Pragmatist
```

## Synthesis Guidelines

- **Preserve tension, don't smooth it**: the DA + Pragmatist pairing is designed to surface trade-offs — name them
- **Attribute when it matters**: reference which persona raised which concern or recommendation when the attribution clarifies the point
- **Prioritize convergent insights**: points both personas mention carry more weight
- **Don't drop unique insights**: a blind-spot flag from one persona is often the most valuable output
- **Organize by value**: lead with high-confidence items, then trade-offs, then blind spots
- Write the Executive Summary as prose paragraphs, not bullets. Direct and specific: name both lenses by name when they disagree.

## Notes

- This is a **summary-only** synthesis (no attribution document, no separate synthesis document).
- Target 500-800 words total.
- Focus on synthesis, not repetition — transform responses into integrated insights organized by the convergence / divergence / unique structure.
- Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file specified in Output.

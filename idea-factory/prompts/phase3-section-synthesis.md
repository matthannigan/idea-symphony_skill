# Phase 3B: Section Synthesis

You are a Factory synthesis subagent reconciling independent persona drafts into a cohesive section recommendation. Your output is exactly one markdown file at `{{output_path}}` — do not modify any other files.

## Your Task

Reconcile the independent drafts from multiple personas into a final section file for **Section {{section_number}}: {{section_title}}**.

## Inputs

**Persona drafts for this section:**
{{persona_draft_paths}}

Read all of these drafts. Each represents an independent perspective on how to address this section.

**Also read for context:**
- `{{session_path}}/SCOPE.md` — Overall scope
- `{{session_path}}/OUTLINE.md` — This section's scope and decision points
- `{{symphony_path}}/BRAINSTORM.md` — Original brainstorming insights

The persona drafts are independent of each other and independent of the three context files — read all of them in a single parallel batch.

## Synthesis Instructions

### Step 1: Analyze Drafts

For each draft, note:
- **Core recommendation** — What does this persona suggest?
- **Key rationale** — Why do they recommend this approach?
- **Alternatives proposed** — What other options do they identify?
- **Scaling perspective** — How do they think about resources?

### Step 2: Identify Patterns

Look for:

1. **Convergence** — Where do multiple personas recommend similar things?
   - High convergence = strong signal, should be in core recommendation
   - Personas may use different language but point to the same underlying approach

2. **Tensions** — Where do personas genuinely disagree?
   - Not just different emphasis, but fundamentally different approaches
   - These become alternatives or debate points

3. **Unique insights** — What does only one persona mention?
   - Evaluate if it's a valuable perspective that should be preserved
   - Or if it's too narrow/specific for the final recommendation

4. **Complementary perspectives** — Where personas address different aspects?
   - One focuses on implementation, another on user experience
   - Can be integrated into a richer core recommendation

### Step 3: Create Core Recommendation

Write the core recommendation as readable prose — paragraph-form, not a bullet list. Direct and specific, with enough texture that a decision-maker can act on it. The alternatives section carries structured detail; the core carries the integrated judgment.

Synthesize a core recommendation that:
- **Prioritizes convergent views** — If 3/4 personas recommend X, that's the core
- **Integrates complementary insights** — Combine perspectives that address different aspects
- **Is more than the sum of parts** — Use the best thinking from each draft
- **Stays specific and actionable** — commit to specific, testable, actionable language — the kind that names a concrete mechanism, a quantified target, or a named stakeholder, not "consider leveraging community engagement."
- **When convergence is unclear** (2-2 or 2-3 splits with no majority): name the split as the core tension — pick the approach with the stronger rationale for the core recommendation, and preserve the losing approach as the top alternative in Step 4. Don't split the difference by synthesizing a middle path the personas didn't propose.

The core recommendation should be 2-4 paragraphs of specific, actionable guidance.

**Example — three drafts into one synthesized core recommendation (hypothetical section: "Volunteer Recruitment" for a tool library project):**

> **The Community Engagement Director wrote:** "Focus on relationship-based recruitment through existing neighborhood networks — tabling at school PTAs, farmers' markets, and faith gatherings. Cold recruiting online produces volunteers who never show up the second week."
> **The Event Operations Manager wrote:** "Standardize a 90-minute orientation that covers tool safety, checkout procedures, and the three most common failure modes. Without orientation, volunteer retention drops 60% after the first incident."
> **The Fiscal Sustainability Analyst wrote:** "Volunteer coordination is the most expensive budget line after tool replacement — budget 0.3 FTE of paid coordinator time per 50 volunteers. Programs that skip this see coordinator churn every 8 months."

A well-synthesized core recommendation:

> **Core Recommendation:** Build a two-track volunteer program that combines relationship-based recruitment with a structured onboarding pipeline and a dedicated coordinator role. Recruit through local networks the Community Engagement Director names — PTAs, farmers' markets, faith communities — which deliver volunteers with existing social ties and higher retention than online recruitment. Channel every new volunteer through a 90-minute orientation covering tool safety, checkout procedures, and common failure modes; retention drops 60% after the first incident without this step. Fund 0.3 FTE of paid coordinator time per 50 volunteers — this is the most expensive budget line after tool replacement, but programs that skip it see coordinator churn every 8 months, at which point all three pillars collapse.
>
> **Key Debate Points:**
> - **Paid coordinator vs. volunteer coordinator:** The Fiscal Sustainability Analyst treated paid coordinator time as a non-negotiable line item; the Community Engagement Director implied that a strong volunteer network could self-coordinate. **Resolution:** Budget paid coordinator time in the core plan; document "volunteer-coordinated" as the minimal-resources scaling tier with a 12-month timeline review.

The synthesized core pulls one specific mechanism from each draft (recruitment channel, orientation length + content, FTE sizing), keeps each draft's quantitative anchor (60% retention drop, 0.3 FTE, 8-month churn), and surfaces the one genuine tension — paid vs. volunteer coordinator — as a debate point with an explicit resolution.

### Step 4: Develop Alternatives

From the tensions and divergent recommendations:
- **Genuine alternatives** — Fundamentally different approaches to this section
- **Not minor variations** — "Do X on Tuesdays vs. Wednesdays" isn't an alternative
- **Include 2-3 alternatives** (or more for high effort)
- For each, capture:
  - Clear description
  - Trade-offs (pros and cons)
  - Best when (what conditions favor this approach)

### Step 5: Synthesize Scaling Notes

Combine scaling insights across personas:
- **Minimal resources:** What's the viable minimum?
- **Expanded resources:** What becomes possible with more?
- Reconcile different views on what's "minimal" or "expanded"

### Step 6: Document Debate Points

Where personas couldn't be easily reconciled, document the debate:
- **[Topic of disagreement]:** [Persona A] argued [position]. [Persona B] countered with [position].
- **Resolution:** [How you reconciled it, or mark as a user decision]

Frame these as if personas actually debated (even though they developed independently).

## Output Format

Save to: `{{output_path}}`

Replace every bracketed placeholder below with the content you derive; do not emit the literal placeholder strings.

```markdown
---
section: {{section_number}}
title: {{section_title}}
contributors: [list of persona names who drafted]
synthesis_approach: [brief note on how perspectives were reconciled]
date: {{date}}
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
---

# {{section_title}}

## Core Recommendation

[Synthesized recommendation. 2-4 paragraphs with specific, actionable guidance. This should integrate the best thinking from multiple personas while staying coherent and actionable.]

## Alternative Approaches

### Alternative A: [Name]

[Description of alternative approach, drawn from persona tensions or divergent recommendations]

**Trade-offs:** [What you gain vs. what you lose]
**Best when:** [Conditions that favor this alternative]

### Alternative B: [Name]

[Description and trade-offs]

[Continue for additional alternatives based on effort level...]

## Scaling Notes

**Minimal resources:** [Synthesized minimal version]
**Expanded resources:** [Synthesized expanded version]

## Key Debate Points

[Where personas disagreed and how perspectives were reconciled]

- **[Topic of disagreement]:** [Description of tension between personas and how it was resolved or why it remains a user decision]
```

## Quality Standards

Before saving, verify:
- Core recommendation is specific and actionable (not vague)
- Alternatives are genuinely different approaches (not tweaks)
- Scaling notes are realistic and grounded
- Debate points honestly represent where personas diverged
- The synthesis respects all personas' expertise (no perspectives ignored)

## Remember

You're not just averaging perspectives — you're creating something better than any single persona could produce. Use the diversity of viewpoints to build a richer, more robust recommendation.

## Notes

- Do not create scratch files, helper scripts, or intermediate outputs. Write only the single markdown file at `{{output_path}}`.

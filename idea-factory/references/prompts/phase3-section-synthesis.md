# Phase 3B: Section Synthesis

You are synthesizing multiple persona perspectives into a cohesive section recommendation.

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

Synthesize a core recommendation that:
- **Prioritizes convergent views** — If 3/4 personas recommend X, that's the core
- **Integrates complementary insights** — Combine perspectives that address different aspects
- **Is more than the sum of parts** — Use the best thinking from each draft
- **Stays specific and actionable** — Don't dilute into vague platitudes

The core recommendation should be 2-4 paragraphs of specific, actionable guidance.

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

```markdown
---
section: {{section_number}}
title: {{section_title}}
contributors: [list of persona names who drafted]
synthesis_approach: [brief note on how perspectives were reconciled]
date: {{date}}
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

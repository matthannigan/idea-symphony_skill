# Phase 1: Effort Level Detection

This document provides the orchestrator with trigger detection logic for suggesting an appropriate effort level when the user hasn't specified one.

**Effort levels:**
- `min` — Speed run, no personas, generic prompts (`min` workflow)
- `low` — Multi-perspective questions, core brainstorming pair (Pragmatist + Devil's Advocate)
- `medium` — Full persona system, topic-matched brainstorming (4 per topic)
- `high` — Maximum depth, convergence documentation (7 per topic)

---

## Step 1: Detect Strong Triggers

Analyze the user's request text for keywords and patterns.

### `high` Triggers (if ANY match, strongly suggest `high`)

- **High-stakes keywords:** "career change", "major decision", "life transition", "considering whether to", "should I even"
- **Research/analysis keywords:** "comprehensive analysis", "cross-cutting", "lessons learned", "patterns across", "common failures", "best practices across"
- **Foundational keywords:** "purpose", "assumptions", "foundational", "philosophy", "why should I", "what if I'm wrong", "challenge my thinking"
- **Large scope indicators:** "20+ years", "dozens of", "comprehensive review", "entire organization", "complete overhaul"
- **Exploration keywords:** "exploring whether", "examining if", "reconsidering", "rethinking"

### `min` Triggers (if ANY match, strongly suggest `min`)

- **Tactical keywords:** "checklist", "packing list", "step-by-step", "step by step", "how to implement", "shopping list", "todo list", "guide to"
- **Material keywords:** "what do I need", "specific items", "budget breakdown", "timeline", "schedule"
- **Concrete deliverables:** "create a [specific thing]", "organize my [thing]", "plan [specific event]"
- **Implementation phrases:** "how do I", "what are the steps", "walk me through", "show me how"

### `medium` Triggers (if no strong `high`/`min` triggers)

- **Strategic keywords:** "strategy", "framework", "approach", "design decision", "which option", "compare approaches"
- **Trade-off keywords:** "pros and cons", "evaluate options", "weigh alternatives", "different approaches"
- **System keywords:** "workflow", "process design", "system", "organizational"
- **Planning keywords:** "develop", "create strategy", "plan approach"

### `low` — Default Suggestion

If no strong triggers match any level, **suggest `low`** as the default. `low` effort provides multi-perspective question generation with lean brainstorming — a strong baseline for most requests. Previously the default was `medium`, but `low` demonstrates multi-perspective value faster with lower time investment.

---

## Step 2: Assess Confidence and Present Suggestion

### If strong `high` trigger detected:

```
Based on your request, I recommend `high` effort for this session.

Rationale: [Specific trigger explanation — e.g., "Career changes are high-stakes
decisions requiring foundational examination of assumptions and long-term implications."]

`high` effort will provide:
- Questions from 10+ diverse thinking styles with full convergence documentation
- Philosophical depth and assumption-challenging
- 55-90 questions across 6-9 foundational topic areas
- 7 brainstorming perspectives per topic
- Research-informed recommendations
- Time: ~45-60 minutes

Would you like to proceed with `high`, or prefer a different level?
```

### If strong `min` trigger detected:

```
Based on your request, I recommend `min` effort for this session.

Rationale: [Specific trigger explanation — e.g., "You need a practical checklist
with specific items and logistics — tactical implementation guidance."]

`min` effort will provide:
- Concrete, actionable recommendations with costs/times/materials
- 15-20 practical questions across 3-5 topic categories
- 3-5 specific responses per question
- Summary-only synthesis focused on immediate actions
- Time: ~5-10 minutes

Would you like to proceed with `min`, or prefer a different level?
```

### If `medium` triggers detected:

```
Based on your request, I recommend `medium` effort for this session.

Rationale: [Explanation — e.g., "Strategic planning benefits from multiple
perspectives exploring trade-offs and design patterns."]

`medium` effort will provide:
- Questions from 10+ diverse thinking styles
- 45-65 questions across 4-7 topic areas
- 4 brainstorming perspectives per topic
- Framework development and systems thinking
- Full synthesis with attribution
- Time: ~20-30 minutes

Would you like to proceed with `medium`, or prefer a different level?
```

### If `low` (default or mild triggers):

```
Based on your request, I recommend `low` effort for this session.

Rationale: [Explanation — e.g., "This topic benefits from multi-perspective
questioning with practical brainstorming."]

`low` effort will provide:
- Questions from 10 diverse thinking styles
- 32-42 questions across 4-7 topic areas
- Practical and critical brainstorming (2 perspectives per topic)
- Summary-only synthesis
- Time: ~15-20 minutes

Would you like to proceed with `low`, or prefer a different level?
```

### If request is ambiguous (conflicting signals or unclear intent):

```
I can help with [topic]. To determine the best approach, what would be most
helpful right now?

1. `min` — Specific implementation steps and practical guidance (~5-10 min)
2. `low` — Multi-perspective questions with practical brainstorming (~15-20 min)
3. `medium` — Full persona system with framework development (~20-30 min)
4. `high` — Deep exploration of purpose, assumptions, and foundations (~45-60 min)
```

---

## Step 3: Handle User Response

- If user confirms suggestion → proceed with that effort level
- If user asks for different level → use their preference
- If user asks for more detail → read `{{skill}}/guidance/phase1_effort-level.md` and present relevant sections
- If user is uncertain → present the ambiguous case question above
- Default to `low` if all else fails

---

## Step 4: NotebookLM Output Addon (skip if effort is `min`)

After effort level is locked in, ask the user whether to bundle a NotebookLM-ready prompts file alongside the brainstorm.

**At `min` effort, skip this step entirely.** Do not ask the question and do not emit the `notebooklm-outputs` field in PLAN.md frontmatter. The min workflow is a self-contained speed run and the addon adds value only when there's deeper substrate to feed.

**At `low`/`medium`/`high` effort, ask:**

```
Would you like NotebookLM-ready prompts generated alongside your brainstorm?
This adds a NOTEBOOK-LM-INSTRUCTIONS.md file with copy-paste Customize-box
prompts for podcasts (single + per-cluster series), a presentation, and an
infographic. The same prompts work in other audio/presentation tools.
(yes/no, default: no)
```

**Recording the answer in PLAN.md frontmatter:**

- If user says yes → `notebooklm-outputs: "yes"`
- If user says no or doesn't answer → `notebooklm-outputs: "no"` (opt-in default)

The flag is read by the Phase 5 subagent (`prompts/phase5_final-output.md`) to decide whether to emit `NOTEBOOK-LM-INSTRUCTIONS.md` in addition to `BRAINSTORM.md`.

---

## Quick Reference: Example Patterns

| Request Pattern | Suggested Level | Rationale |
|----------------|----------------|-----------|
| "Create a packing list for..." | `min` | Concrete checklist with specific items |
| "Plan a birthday party for..." | `min` | Tactical event planning with materials/costs |
| "Help me with my newsletter" | `low` | Ambiguous — default to `low`, ask if they want more |
| "Brainstorm ways to improve my garden" | `low` | Moderate scope, benefits from diverse questions |
| "Design a content strategy for..." | `medium` | Strategic framework development |
| "Develop a product feature for..." | `medium` | Design decisions with trade-offs |
| "I'm considering a career change" | `high` | High-stakes, foundational decision |
| "Review [comprehensive dataset] and identify patterns..." | `high` | Research-level analysis |
| "Challenge my assumptions about..." | `high` | Explicit assumption examination |
| "Should I even [major decision]..." | `high` | Foundational exploration |

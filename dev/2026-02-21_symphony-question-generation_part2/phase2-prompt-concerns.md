# Phase 2 Persona Prompt Concerns

## Original Question

`phase2-question-generation-persona.md` asks every persona to consider the same:

```markdown
## Coverage Requirements

Ensure questions span these dimensions:
- **Strategic**: Long-term vision, goals, impact, sustainability
- **Tactical**: Implementation details, logistics, resources, timeline
- **Creative**: Innovative approaches, reimagining constraints, alternative solutions
- **Analytical**: Risks, trade-offs, metrics, decision criteria
- **Human-centered**: Stakeholder needs, user experience, community impact
```

when they `Generate 15-20 open-ended questions that explore this topic from multiple angles.`

Is this (a) adequate coverage of question dimensions as a general prompt? and (b) appropriate to give the same instructions to differently oriented personas? given the research in `question-generation-ext-research_synthesis.md` and `2026-02-20_question-generation-persona-coverage-mapping-external-research-findings.md`

---

## Analysis

Based on the research and coverage mapping provided, here is an analysis of this prompt instruction:

### (a) Is this adequate coverage of question dimensions as a general prompt?

**No, it is missing critical dimensions required for true cognitive diversity.** 

While the 5 dimensions (Strategic, Tactical, Creative, Analytical, Human-centered) look like a solid, well-rounded corporate/design thinking rubric, the external research synthesis highlights that LLMs suffer from "Evaluation-first tendencies" and "Fixation bias." They naturally default to feasible, logical, well-rounded business questions.

By using this specific 5-item list, the prompt misses several vital dimensions identified in the research taxonomy:
1. **Appreciative / Strengths-based:** The prompt lacks Appreciative Inquiry (AI) framing. It doesn’t ask for questions exploring "what is already working?" or aspirational futures, defaulting instead to neutral or deficit framing.
2. **Emotional / Narrative:** "Human-centered" often devolves into standard UX or stakeholder logistics (needs, impact). It misses the pure emotional resonance, lived-experience, and narrative arc dimensions (e.g., Red Hat thinking).
3. **Lateral / Provocative:** "Creative" usually yields standard linear innovation ("Alternative solutions"). It does not push for the absurd, pattern-breaking, or deliberately provocative questions recommended by lateral thinking frameworks.
4. **Systems / Second-Order:** Deep structural feedback loops and unintended consequences aren't fully captured by "Strategic" or "Analytical."
5. **Meta-Process:** Questions about the inquiry itself (e.g., "Are we even asking the right questions?"). 

---

### (b) Is it appropriate to give the same instructions to differently oriented personas?

**Absolutely not. Giving this generic instruction to all personas actively sabotages the architecture of Idea Symphony.**

The core insight from the research (`question-generation-ext-research_synthesis.md` and the `coverage-mapping` document) is that because Idea Symphony uses an "isolated subagent architecture" (Nominal Group Technique), it relies **entirely on engineered cognitive diversity**.

Here is why forcing the same 5 dimensions on every persona is counterproductive:

1. **It forces homogenization (Regression to the Mean):** 
   If you tell the *Devil's Advocate*, the *Provocateur*, and the *Empath* that they **must** span Strategic, Tactical, Creative, Analytical, and Human-centered dimensions, you are forcing them to dilute their unique cognitive lenses. You are telling the *Provocateur* to generate boring "Tactical" questions, and telling the *Empath* to generate "Analytical" metrics questions. This triggers the LLM's natural "fixation bias," making all the personas sound like the exact same generic, well-rounded AI consultant.
   
2. **It violates the principle of "Distinctive Cluster Structures":**
   The mapping document notes that the highest value personas (like the *Storyteller*, *Appreciative Inquirer*, and *Analogist*) produce highly unique, distinctive clusters (e.g., "The Hero's Journey," "Biological Analogies," "Discovery-Dream"). If the prompt forces them to organize their questions to ensure they hit the 5 generic dimensions, it overwrites their native, highly valuable specialized frameworks.

3. **It undermines "Phase Sequencing":**
   The synthesis document recommends explicitly separating divergence from convergence (e.g., Phase 1: Divergent generation, Phase 2: Socratic/Systems interrogation). If every persona is mandated to generate "Tactical" and "Analytical" questions in the exact same breath as "Creative" questions, you are breaking the rule of deferring judgment ("pressing accelerator and brake simultaneously").

### Recommendation
Instead of a universal coverage mandate, the standard prompt should instruct the persona to **lean extremely hard into their specific cognitive lens**, explicitly giving them permission to *ignore* dimensions outside their purview. 

For example, a dynamic prompt could inject a persona-specific mandate:
* *"As the **Devil's Advocate**, bias your questions heavily toward the Analytical and Strategic risks. Do not worry about being creative or positive."*
* *"As the **Appreciative Inquirer**, focus entirely on strengths and aspirational possibilities (Creative/Human). Explicitly ignore Tactical logistics or Analytical risks for now."*

---

## Phase 2 & 3 Persona Prompt Conflicts

### The Problem: Personas Pulling Double-Duty

Currently, the exact same persona reference files (e.g., `the-storyteller.md`, `the-analyst.md`) are used for both Phase 2 (Question Generation) and Phase 3 (Idea Generation).

**This creates a fundamental conflict.**

*   **Adequate for Questions:** `The Questioner` and `The Appreciative Inquirer` are explicitly instructed to "generate questions" in their persona files.
*   **Requires Revision (Most Personas):** Personas like `The Analyst`, `The Storyteller`, and `The Provocateur` explicitly instruct the LLM to generate statements, frameworks, and solutions/answers. For example:
    *   *Analyst:* "Provide structured, logical breakdowns... 'This challenge has three distinct components...'"
    *   *Storyteller:* "Create vivid scenarios... 'Let me walk you through how this would work...'"

If you eliminate the central question-generation instructions from `phase2-question-generation-persona.md`, the "answering" personas will likely generate very narrow, highly presumptive questions (or simply give statements with question marks at the end) because their core prompt tells them their job is to provide solutions and scenarios. 

Conversely, if you leave `The Appreciative Inquirer` as-is, it will perform terribly in Phase 3 Idea Generation because its file strictly tells it: "Your role is to generate questions." It won't know how to propose actual solutions!

### Proposed Solutions

Given the massive difference between the cognitive task of *opening a space via questions* (divergence) and *filling that space with ideas* (convergence), using the exact same persona prompt for both leads to severe compromises. 

#### Option 1: Split into Roles (Questioners vs. Brainstormers) — *Recommended for Highest Quality*
Create two distinct directories (e.g., `personas/phase2-questioners/` and `personas/phase3-brainstormers/`). 
*   **For Phase 2 (Questioners):** Hardcode the exact frameworks they should use to generate questions. For example, the `Phase2 Appreciative Inquirer` gets instructions on the AI 4-D cycle. The `Phase2 Devil's Advocate` gets instructions on how to use "Six Thinking Hats - Black Hat" to generate failure-mode questions.
*   **For Phase 3 (Brainstormers):** Strip out questioning frameworks and instruct them on how to generate concrete, actionable answers mapping back to their worldview. 

This approach solves the "regression to the mean" problem because you don't need *any* global dimension requirements in the orchestrator prompt. The persona files themselves contain all the specialized instructions.

#### Option 2: Pure "Cognitive Lenses" with Dynamic Injection — *Recommended for Maintainability*
If maintaining 46 persona files is too complex, rewrite the current 23 persona files to be **purely behavioral abstractions** (Worldview, Values, Cognitive Biases). Remove all references to "When participating in the brainstorming session" or "Example contributions."

Then, heavily modify the Phase 2 and Phase 3 orchestrator prompts to use dynamic injection. 

*Instead of Phase 2 saying:*
> "Generate 15-20 questions spanning Tactical, Strategic, Analytical..." 

*Phase 2 says:*
> "You are [PERSONA NAME]. Read your worldview in `[persona-name].md`. Generate 15-20 questions entirely from this worldview. 
> **Do not try to be well-rounded.** If your persona is focused on risks, ask only about risks. If your persona is focused on emotion, ask only about emotion."

### Summary

The reason the current `phase2-question-generation-persona.md` prompt includes those 5 generic dimensions (Strategic, Tactical, etc.) is because it acts as a "crutch" for personas that weren't built to ask questions. To fix the architecture, the personas must be tailored to their specific Phase tasks.

---

## Response: Assessment Against Phase 2B Evidence

**Date:** 2026-02-21
**Context:** The above analysis was evaluated against completed Phase 2B investigations (V1, R1, R2, R3), which provide empirical data on how these exact personas perform under the current prompt architecture.

### Where the Analysis Is Correct

**The dimension list is incomplete.** The 5 dimensions genuinely miss Systems, Appreciative, Provocative/Lateral, and Emotional/Narrative as explicit categories. This is a valid gap in the taxonomy. However, the personas themselves fill these gaps — that is their architectural purpose. The Systems Thinker doesn't need a "Systems" dimension in the coverage list to generate systems questions; its persona prompt dominates the output.

**The coverage language could be more permissive.** "Ensure questions span these dimensions" reads as a hard constraint requiring balanced coverage of all 5. Softening this to give personas explicit permission to be unbalanced is a good, low-cost improvement.

### Where the Analysis Overstates the Problem

**"Giving this generic instruction to all personas actively sabotages the architecture" — the Phase 2B evidence contradicts this.** Our own research is the counterargument:

- **V1 (per-persona volume quality)** shows highly distinctive output across personas *despite* the shared coverage requirement. The Provocateur produces punchy provocative questions at 5-10, the Storyteller produces narrative-arc questions, the Questioner produces comprehensive coverage questions. If homogenization were occurring, V1 would have found uniform quality curves across personas — instead it found categorically different optimal volumes (perspective vs. structural vs. analytical), which is only possible if personas are producing genuinely different cognitive output.

- **R1 (Audience Advocate vs Empath)** demonstrates clear differentiation between two personas in the same cluster, both given the same 5-dimension coverage requirement, producing highly distinctive output with only ~15% overlap. AA generates structural equity questions (60% human-centered); Empath generates emotional excavation questions (75% human-centered). The shared coverage requirement did not make them converge.

- **R2 (Systems Thinker vs First Principles Thinker)** demonstrates ~10-15% cognitive mode overlap between two analytical personas — again, both given the same prompt, producing fundamentally different question types (feedback loops vs. ontological decomposition).

**"Regression to the Mean" is not what we observe.** The analysis assumes the LLM treats coverage requirements as "equal distribution across all 5 dimensions." In practice, a Provocateur given these dimensions generates ~70% Provocative/Creative and touches Strategic/Analytical lightly. The persona identity drives the distribution; the dimensions are advisory. The R1 dimension distribution table makes this concrete: the Audience Advocate's output is 60% Human-centered / 15% Systems / 10% Tactical despite being told to "span" all 5 dimensions equally.

**"Distinctive Cluster Structures" are preserved.** The analysis claims the coverage requirement "overwrites native, highly valuable specialized frameworks." V1 directly refutes this — the Storyteller still produces narrative-arc clusters, the Analogist produces cross-domain metaphor clusters, the Appreciative Inquirer produces strengths-based clusters. The persona prompts are strong enough to dominate the generic coverage dimensions.

### On Splitting Personas (Option 1): Disagree

Creating separate `phase2-questioners/` and `phase3-brainstormers/` directories doubles the persona maintenance surface (20+ additional files) without evidence that the current approach is failing. The Phase 2B research evaluated these exact personas *for question generation* and found them highly effective:

- The Storyteller produces excellent narrative-framed questions despite its prompt mentioning "Create vivid scenarios"
- The Analyst produces rigorous analytical questions despite its prompt mentioning "structured, logical breakdowns"
- The Provocateur produces distinctive, punchy provocative questions despite being an "answering" persona

The phase prompt already provides the task framing ("generate questions"), and the persona prompt provides the cognitive lens. This separation of concerns is working. The evidence shows that LLMs are capable of applying a cognitive lens to a different task type than the persona's examples describe — the Storyteller's narrative lens produces narrative *questions* when asked to generate questions, not narrative *answers*.

Additionally, the claim that the Appreciative Inquirer "will perform terribly in Phase 3" is speculative. The AI's question-oriented prompt provides a worldview and values that an LLM can adapt to idea generation when the phase prompt frames the task as brainstorming. This is an empirical question that Phase 3 testing would answer, but it doesn't require preemptive architectural surgery.

### On Pure Cognitive Lenses (Option 2): Disagree

Rewriting all persona files to remove concrete behavioral guidance would lose the specificity that helps the LLM inhabit the character. The examples and voice guidance in persona files are what produce the distinctive V1 results — stripping them to abstract worldview descriptions risks making output *more* generic, not less. Concrete behavioral cues ("My gut says...", "Let me walk you through...") are what create voice differentiation.

### Recommended Changes (Low-Cost, Evidence-Based)

Rather than architectural overhaul, two targeted changes address the valid concerns:

**1. Expand the dimension list** to include dimensions validated by Phase 2B research:

```markdown
Consider these dimensions, but lean heavily into your persona's natural strengths:
- **Strategic**: Long-term vision, goals, impact, sustainability
- **Tactical**: Implementation details, logistics, resources, timeline
- **Creative**: Innovative approaches, reimagining constraints, alternative solutions
- **Analytical**: Risks, trade-offs, metrics, decision criteria
- **Human-centered**: Stakeholder needs, user experience, community impact
- **Systems**: Feedback loops, second-order effects, interconnections
- **Provocative**: Assumption-breaking, lateral thinking, deliberate disruption
```

**2. Change the framing language** from mandatory coverage to permission-to-specialize:

Replace "Ensure questions span these dimensions" with:

> "These dimensions exist across the full question set. You do not need to cover all of them — lean heavily into the dimensions that align with your perspective. Other personas will cover the dimensions you skip."

This gives the Provocateur explicit permission to ignore Tactical, gives the Analyst permission to skip Provocative, and preserves the dimension list as scaffolding for personas that benefit from breadth (like the Questioner, which V1 showed thrives on comprehensive coverage).

These changes address the valid concern (homogenization pressure from mandatory coverage language) without the cost and risk of architectural overhaul. They could be validated as part of the A1 Analyst refinement test runs — easy to A/B test the prompt wording change on a single persona before rolling it out.

### Summary

The analysis identifies real theoretical risks from the research literature (LLM fixation bias, regression to the mean under uniform prompts). However, the Phase 2B empirical evidence shows these risks are not manifesting in practice — the persona prompts are strong enough to override the generic coverage dimensions and produce highly differentiated output. The recommended path is targeted prompt language improvements (expand dimensions, permission-to-specialize), not architectural restructuring.

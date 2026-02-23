# Question Generation Research Part 3 — Prompt Modification Analysis

**Date:** 2026-02-19
**Parent:** `docs/dev/2026-02-19_question-generation-research-part2.md`
**Basis:** Investigations I01-I06 preliminary results; external research synthesis; current Phase 2B prompt templates

---

## Purpose

Before running I11 (Appreciative Inquirer validation) and regenerating test data, audit whether the preliminary results or external research recommend modifications to Phase 2B question generation prompts. This document catalogs identified gaps and recommends changes, with implementation deferred to a future session.

---

## 1. Shared Prompt Template Gaps

**File:** `idea-symphony/references/prompts/phase2-question-generation-persona.md`

### 1.1 Coverage Dimensions Are Incomplete

**Current state (lines 19-25):** The prompt lists 5 coverage dimensions:
- Strategic, Tactical, Creative, Analytical, Human-centered

**Gap:** The investigations and external research framework use **7 dimensions**. Two are missing:
- **Systems** — Interdependencies, feedback loops, second-order effects, scaling
- **Provocative/Lateral** — Assumption-challenging, constraint-inverting, paradigm-breaking

**Evidence:**
- I06 found Systems coverage at 6.5% across the full Phase 2B set, with FPT as the only meaningful contributor (13.5%). The prompt never names Systems as a target dimension.
- I06 found Provocative/Lateral at 15.3%, carried almost entirely by the Questioner (48%) and FPT (42%). This dimension emerged as a key differentiator across investigations but isn't listed as something personas should cover.
- The external research synthesis (Section 1, "Question taxonomy") explicitly includes systems and lateral/provocative as core question dimensions alongside the five currently listed.

**Recommendation:** Add Systems and Provocative/Lateral to the Coverage Requirements section. This signals to all personas that these dimensions are valued, which may increase coverage even from personas not primarily oriented toward them.

**Risk:** Adding dimensions to the prompt could change persona behavior in ways that reduce their natural distinctiveness. A persona that naturally generates 0% Provocative questions might produce forced, low-quality provocative questions when told to cover that dimension. Consider whether to frame these as "awareness" dimensions rather than "coverage requirements."

### 1.2 Selflessness Instruction Is Absent

**Current state:** The prompt contains no guidance about generating questions that open territory for other personas. The only audience-awareness instruction is implicit in the quality standards ("Be specific enough to generate actionable responses").

**Gap:** All four persona investigations (I01, I03, I04, I05) converged on selflessness as the key Phase 2B quality discriminator:
- I01: Questioner generates questions that "open territory for Storyteller, Systems Thinker, Empath" while FPT "asks questions primarily suited to its own strengths"
- I03: Provocateur and Visionary both generate questions they "cannot answer" — highest-value Phase 2B profile
- I04: Empath questions "specifically activate generative and connective Phase 3 personas"
- I05: Storyteller has highest selflessness of the I05 trio; Constraint Flipper has lowest

**Recommendation:** Add a selflessness instruction to the shared prompt, e.g.:
> Your questions will be used to guide brainstorming by a diverse team of personas with different expertise. Generate questions that open territory for perspectives beyond your own — questions that invite responses from creative, analytical, emotional, systemic, and practical viewpoints. Avoid questions that only your own perspective could meaningfully answer.

**Risk:** This instruction could homogenize persona output by pushing all personas toward "generic" questions. The instruction should encourage breadth of *answerers* without diluting the persona's distinctive *questioning style*. Framing matters — "generate questions that open territory for diverse perspectives" is better than "don't ask questions in your own style."

### 1.3 Question Count Accuracy

**Current state:** The output template asks for `**Total questions**: [count]` and `**Topic clusters**: [count]`.

**Gap:** I06 found "stated question counts are unreliable — multiple files undercount their own bold questions by 2-5." This doesn't affect question quality but creates noise in analysis.

**Recommendation:** Minor — add an instruction like "Count your bolded questions carefully before reporting the total." Low priority; doesn't affect question generation quality.

---

## 2. Per-Persona Prompt Considerations

These apply to individual persona prompt files in `idea-symphony/references/personas/`, not the shared template.

### 2.1 Framing Guards for Generative Personas

**Source:** External research synthesis, Section 6.3, point 2:
> "Explicitly instruct early-phase personas to ignore feasibility and risk, focusing instead on possibility, strengths, and emotion."

**Applies to:** Provocateur, Visionary, Empath, Storyteller, Appreciative Inquirer, Analogist, Constraint Flipper

**Current state:** The Appreciative Inquirer persona already includes explicit framing guards:
- "Avoid: Deficit framing — don't ask 'What's wrong?' or 'What are the risks?' (other personas handle this)"

Other generative persona prompts do not include equivalent guards. The Visionary, Provocateur, and Empath persona files were designed for Phase 3 brainstorming, where they operate alongside analytical personas. In Phase 2B, where their role is specifically to open generative territory, explicit framing guards could strengthen their distinctive output.

**Recommendation:** For personas used in Phase 2B question generation, consider adding a line like:
> "Other personas will handle analytical, risk, and feasibility questions. Focus your questions on [persona's distinctive territory]."

This reinforces the division of labor without changing the persona's core identity.

**Risk:** Persona prompts are shared between Phase 2B (question generation) and Phase 3 (brainstorming). Adding Phase 2B-specific instructions to persona files creates coupling between the persona definition and a specific phase. Alternative: add framing guards to the shared Phase 2B prompt template instead, with conditional language like "Focus on your persona's distinctive territory — analytical and risk-focused questions will be handled by other personas."

### 2.2 Questioner Over-Generation

**Source:** I01 finding:
> "The Questioner's over-generation tendency (22-26 questions vs 15-20 target) may need prompt tuning."

**Current state:** The shared prompt says "Generate 15-20 open-ended questions." The Questioner consistently exceeds this by 20-30%.

**Recommendation:** Low priority. I01 also notes "the breadth it produces is more valuable for synthesis input than strict adherence to count targets." The over-generation is a feature, not a bug, for Phase 2B purposes. If count consistency matters for fair comparison in evaluations, tighten the prompt; otherwise leave as-is.

---

## 3. Asymmetry in Current Test Data

### 3.1 The Appreciative Inquirer Prompt Asymmetry

The new Appreciative Inquirer persona prompt (`idea-symphony/references/personas/the-appreciative-inquirer.md`) includes two instructions that no other persona prompt contains:

1. **Selflessness instruction (line 28):** "Questions that only you could answer — generate questions that open territory for the full roster of Phase 3 personas"
2. **Framing guard (line 25):** "Deficit framing — don't ask 'What's wrong?' or 'What are the risks?' (other personas handle this)"

Comparison personas (Visionary, Empath, Audience Advocate) were generated without these instructions. This creates a mild asymmetry in I11 comparisons — the Appreciative Inquirer has structural advantages built into its prompt that comparison personas lack.

**Assessment:** This asymmetry is acceptable for I11 purposes. The investigation is testing whether the Appreciative Inquirer fills a gap that no existing persona covers. If it does, the gap is real regardless of prompt advantages. The selflessness and framing guard instructions are part of the persona's design — they're features, not confounds.

**However:** If the shared prompt template is later updated with selflessness instructions and framing guards, comparison data should be regenerated to establish a fair baseline for ongoing roster evaluation.

### 3.2 Dimension Coverage Asymmetry

All existing test data was generated with the 5-dimension coverage requirement. If the shared prompt is updated to 7 dimensions, all comparison data becomes stale. This is the largest regeneration cost.

**Recommendation:** Defer dimension updates until after I11 completes. I11's purpose is gap validation (does the AI persona fill a gap?), not fair head-to-head comparison on identical prompts. Dimension updates are more relevant for the end-to-end roster testing (P7 in Part 2 priority order).

---

## 4. Implementation Recommendations

### Priority Order

**P1 — Add missing dimensions to shared prompt (1.1)**
Highest impact. The 5-dimension list actively omits two dimensions that the research identified as important. Every persona generating questions against this prompt is implicitly told that Systems and Provocative/Lateral don't matter. This likely suppresses output in those dimensions across the board.

**P2 — Add selflessness instruction to shared prompt (1.2)**
High impact. Selflessness emerged as the strongest predictor of Phase 2B value across four independent investigations. Making it an explicit instruction could improve output quality for all personas.

**P3 — Add framing guards to shared prompt or per-persona (2.1)**
Medium impact. Reinforces division of labor between generative and analytical personas. Implementation location (shared prompt vs. per-persona) needs a design decision.

**P4 — Question count accuracy (1.3)**
Low impact. Quality-of-life improvement for analysis.

### When to Implement

**Before I11:** No changes needed. The Appreciative Inquirer persona already has selflessness and framing guard instructions. Comparison data asymmetry is acceptable for gap validation purposes.

**Before end-to-end roster testing (P7):** Implement P1 and P2 at minimum. Regenerate all test data with the updated prompt to establish a fair baseline.

**Before Phase 2B selection guide (final deliverable):** Implement all four. The guide should reference prompts that reflect the research findings.

### Design Decision: Shared Prompt vs. Per-Persona

The framing guard question (2.1) raises an architectural question: should Phase 2B-specific behavior be encoded in the shared prompt template or in individual persona files?

**Option A — Shared prompt:** Add a conditional instruction like "If your persona's strength is generative/creative territory, focus there and leave analytical/risk questions to other personas." Keeps persona files phase-agnostic.

**Option B — Per-persona:** Add Phase 2B-specific sections to persona files (e.g., "When generating questions (Phase 2B): focus on X, leave Y to others"). Makes persona files phase-aware but more complete.

**Option C — Phase-specific persona variants:** Create Phase 2B-specific persona prompt overlays that modify base persona behavior. Most flexible but highest maintenance cost.

No recommendation made here — this is a design decision for the skill architecture.

---

**Last Updated:** 2026-02-19
**Status:** Analysis complete, implementation deferred
**Next milestone:** Run I11 (Appreciative Inquirer test) with current prompts, then revisit prompt modifications before end-to-end roster testing

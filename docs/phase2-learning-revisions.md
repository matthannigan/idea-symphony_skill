# Phase 2 Learning & Revisions

**Date:** February 5, 2026
**Context:** Restructuring effort levels and implementing convergence-based synthesis

---

## Problem Discovered

### Initial Architecture Assumption (Failed)

The original implementation assumed the orchestrator could reference external prompt files:

```markdown
Spawn 1 subagent using prompt from `[skill]/references/prompts/phase2-question-synthesis.md`.
```

**What actually happened:**
- Orchestrator ignored the file reference
- Generated its own simplified prompt with hardcoded parameters
- Resulted in: "Keep 15-25 questions, 3-5 per cluster" (way under targets)
- No convergence prioritization
- No effort level differentiation

### Evidence of Failure

**Test run comparison:**
- Target (high effort): 35-50 questions
- Actual with file reference: 33 questions
- Prompt showed: "15-25 questions total"
- Conclusion: Orchestrator not reading the referenced file

**Root cause:** The skill orchestrator doesn't automatically read and use referenced prompt files. The instruction "using prompt from [file]" is too vague and isn't executed.

---

## Solution Implemented

### Embed Critical Parameters in SKILL.md

Instead of referencing external files, embed the synthesis parameters directly in SKILL.md where the orchestrator can see them:

```markdown
**Step 2B.2: Synthesize Questions (Single Subagent)**

Spawn 1 subagent to consolidate persona questions into topic clusters.

**Target output based on effort level:**
- **Medium effort**: 20-35 questions across 4-7 topic clusters (~5 questions per topic)
- **High effort**: 35-50 questions across 6-9 topic clusters (~6-7 questions per topic)
  - Aim for upper end of range (45-50 questions)
  - Include 2-3 unique questions per topic that challenge assumptions

**Synthesis instructions for subagent:**

1. Read all persona question files and REQUEST.md
2. Track convergence: Note which personas asked similar questions
3. Use convergence as quality signal:
   - **Convergent questions** (multiple personas): Always include - signals importance
   - **Complementary questions** (similar themes): Consolidate into one well-framed question
   - **Unique questions** (one persona):
     - Medium: Include if revealing blind spots or covering missing dimensions
     - High: More liberally include (2-3 per topic) to explore speculative territory
4. Create topic clusters:
   - Arrange in logical flow (foundational → strategic → operational)
   - Medium: 4-7 topics with ~5 questions each (range 4-7)
   - High: 6-9 topics with ~6-7 questions each (range 5-8)
5. Output files:
   - QUESTIONS.md (master list with YAML frontmatter, numbered questions)
   - questions/by-topic/[NN]_[topic-slug].md (one per cluster)
```

### Why This Works

**Direct parameters visible to orchestrator:**
- Orchestrator sees exact targets for medium vs high
- Can construct appropriate prompt for synthesis subagent
- No dependency on file reading capability

**SKILL.md remains manageable:**
- Added 23 lines (404 → 427 lines)
- Still 73 lines under 500-line target
- Critical parameters inline, detailed formatting in referenced files

---

## Results Achieved

### Quantitative Success

| Metric | Old (Low) | New Medium | New High | Target Met? |
|--------|-----------|------------|----------|-------------|
| **Total Questions** | 31 | 30 | 48 | ✅ Both |
| **Topics** | 6 | 6 | 8 | ✅ Both |
| **Retention %** | 103% | 50% | 44% | N/A |
| **Target Range** | N/A | 20-35 | 35-50 | ✅ Both |

### Qualitative Improvements

**1. Convergence Filtering Working**
- Medium: 60 input → 30 output (50% retention)
- High: 108 input → 48 output (44% retention)
- Strong filtering based on multi-persona agreement

**2. Question Quality Improved**

**Old style** (compound, technical):
> "What are the specific resource needs across startup capital (site preparation, soil, fencing, tools), ongoing operational costs (water, insurance, maintenance), and in-kind contributions (volunteer labor, donated materials)?"

**New style** (sharp, focused):
> "What does 'community' mean in this specific neighborhood context, and who might we be unintentionally excluding with our current assumptions?"

**3. Effort Levels Clearly Differentiated**
- Medium: 30 questions, practical focus, high-confidence convergent set
- High: 48 questions (+60%), includes philosophical depth and critical perspectives

**4. Persona Impact Visible**
- Audience Advocate (medium+high): Accessibility and inclusion questions
- Devil's Advocate (high only): Risk and unintended consequences
- First Principles Thinker (high only): Foundational "why?" questions

### Evidence: Orchestrator Now Generates Correct Prompts

**Medium effort prompt (excerpt):**
```
Target output for medium effort:
- 20-35 questions total
- 4-7 topic clusters
- ~5 questions per topic (range: 4-7)

Synthesis Instructions:
- Convergent questions (multiple personas): Always include - signals importance
- Unique questions (one persona): Include if revealing blind spots or covering missing dimensions
```

**High effort prompt (excerpt):**
```
Your Task: Read all persona question files and consolidate them into 6-9 topic clusters with 35-50 total questions (aim for 45-50).

Synthesis Strategy for HIGH EFFORT:
- Unique questions (only one persona): Liberally include 2-3 per topic to explore speculative/edge case territory
- Target 6-7 questions per topic (range: 5-8 questions)
```

---

## Key Learnings

### 1. Orchestrator Prompt Construction Patterns

**What works:**
- Explicit parameters embedded in SKILL.md
- Clear effort-level conditionals
- Direct instructions for subagent task

**What doesn't work:**
- Vague references like "using prompt from [file]"
- Assuming orchestrator will read and parse external files
- Implicit parameter passing

### 2. SKILL.md Line Budget Management

**Original concern:** Embedding prompts would bloat SKILL.md beyond 500 lines.

**Reality:**
- Only need to embed *parameters and logic*, not full prompt text
- Added 23 lines for complete synthesis instructions
- Still 73 lines under budget (427/500)
- Prompt files still useful for *subagents* that need detailed formatting guidance

### 3. Convergence as Quality Signal

**Hypothesis:** Questions that multiple personas independently raise are more important.

**Validation:**
- Medium synthesis noted "strong consensus across all 3 personas on inclusion/exclusion"
- High synthesis preserved both convergent AND unique speculative questions
- Retention rates (50% medium, 44% high) show filtering is working

**Value:** Convergence detection transforms potential redundancy into a feature—it's a signal of importance.

### 4. Effort Level Differentiation Strategy

**Successful approach:**
- Medium: Prioritize convergent questions, selective unique inclusion
- High: Include convergent PLUS liberally include unique questions (2-3 per topic)

**Result:** High produces 60% more questions with meaningfully different content (philosophical depth, critical perspective).

---

## Architecture Patterns for Future Phases

### When to Embed vs. Reference

**Embed in SKILL.md:**
- Target counts and ranges
- Effort-level conditional logic
- Quality criteria and prioritization rules
- High-level synthesis strategy

**Keep in reference files:**
- Detailed output formatting specifications
- YAML frontmatter templates
- Persona-specific prompts
- Multi-page detailed instructions

### Orchestrator Prompt Construction

**Template pattern:**
```markdown
Spawn [N] subagent(s) [task description].

**Target output based on effort level:**
- **Medium effort**: [specific targets]
- **High effort**: [specific targets]

**Instructions for subagent:**
1. [Step 1]
2. [Step 2]
3. [Effort-conditional logic]

**Output files:**
- [List with paths]
```

This ensures orchestrator constructs correct prompts for synthesis tasks.

---

## Comparison: Old vs. New Approach

### Old Approach (Non-Convergence)

**Process:**
- 2 personas generate questions independently
- Synthesis consolidates without tracking convergence
- Result: 31 questions (103% retention = no filtering)

**Characteristics:**
- Comprehensive, compound questions
- Technical/practical focus
- No clear signal of importance beyond topic clustering

### New Approach (Convergence-Based)

**Process:**
- 3-5 personas generate questions independently
- Synthesis tracks which personas raised similar questions
- Convergent questions prioritized
- Unique questions selectively included based on effort level

**Medium effort results:**
- 3 personas → 60 input → 30 output (50% retention)
- High-confidence convergent questions
- Sharp, focused phrasing

**High effort results:**
- 5 personas → 108 input → 48 output (44% retention)
- Convergent questions + speculative unique questions
- Philosophical depth + critical perspective

---

## Recommendations for Other Phases

### Phase 3 (Brainstorming)

**Apply similar pattern:**
- Embed persona count and response targets in SKILL.md
- Specify effort-level differentiation
- Keep detailed persona prompts in reference files

### Phase 4 (Synthesis)

**Already structured correctly:**
- Low effort: Summary only (embedded in SKILL.md)
- Medium/high: Full synthesis (embedded parameters)

### General Principle

**Orchestrator needs to SEE parameters directly in SKILL.md.**
- Reference files are for subagents, not orchestrator
- Keep SKILL.md as workflow logic + parameters
- Keep reference files as detailed execution templates

---

## Testing Protocol Established

### What to Test for Each Effort Level

**1. Target adherence:**
- Question count within range?
- Topic count within range?

**2. Quality indicators:**
- Are convergent questions identified?
- Are unique questions preserved appropriately?
- Is effort-level differentiation visible?

**3. Persona impact:**
- Can you identify which personas influenced which questions?
- Are unique persona perspectives preserved in high effort?

### Test Case: Pittsburgh Community Garden

**Medium effort:**
- ✅ 30 questions (target: 20-35)
- ✅ 6 topics (target: 4-7)
- ✅ Convergence noted: "strong consensus on inclusion/exclusion"
- ✅ Audience Advocate impact visible

**High effort:**
- ✅ 48 questions (target: 35-50)
- ✅ 8 topics (target: 6-9)
- ✅ Unique questions preserved: First Principles, Devil's Advocate
- ✅ Speculative questions included per topic

---

## Open Questions & Future Exploration

### 1. Low Effort Approach

**Current state:** Old "low" (2 personas, no convergence) became new "medium" (3 personas, with convergence).

**Question:** Should low effort adopt convergence approach, or remain as "rapid generic" without persona system?

**Recommendation:** Test low effort with generic prompting and compare quality/speed.

### 2. Convergence Threshold

**Current approach:** Implicit—synthesis agent determines what counts as "convergent."

**Future enhancement:** Could we make convergence explicit? E.g., "Mark each question with [P1, P3, P4] indicating which personas raised it."

**Benefit:** More transparent signal of question importance.

### 3. Ultra Effort Level

**Not implemented:** Original plan included potential "ultra" effort (7+ personas, 50-70 questions).

**Question:** Is there value beyond high effort (5 personas, 48 questions)?

**Hypothesis:** Diminishing returns—5 personas may be sufficient for convergence detection.

---

## Success Metrics Summary

### Goals Achieved

✅ **Convergence as quality signal**: Retention rates show filtering working
✅ **Medium target (20-35)**: Actual 30 ✓
✅ **High target (35-50)**: Actual 48 ✓
✅ **Effort differentiation**: 60% more questions, different perspectives
✅ **Quality improvement**: Sharper, more focused questions
✅ **SKILL.md maintainable**: 427 lines (under 500)
✅ **Orchestrator working**: Generates correct prompts with embedded parameters

### Unexpected Wins

🎯 **Persona visibility**: Can identify specific persona contributions
🎯 **Topic evolution**: More human-centered and foundational topics
🎯 **Question sharpness**: Less compound, more focused
🎯 **Practical differentiation**: 30 vs 48 is meaningful for brainstorming scope

---

## Conclusion

**The convergence-based synthesis architecture works as designed.**

By embedding critical parameters directly in SKILL.md and using convergence as a quality signal, we've created a system that:
- Clearly differentiates effort levels (30 vs 48 questions)
- Produces higher quality questions (sharp, focused, human-centered)
- Preserves diverse perspectives (convergent + unique)
- Remains maintainable (427 lines in SKILL.md)

**Key insight:** The orchestrator needs explicit parameters in SKILL.md. Reference files are for subagents, not orchestrator navigation.

**Status:** Architecture validated. Ready for Phase 3 testing.

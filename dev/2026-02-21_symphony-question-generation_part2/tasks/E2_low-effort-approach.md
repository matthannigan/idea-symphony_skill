# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-21
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- I-R1 output (Tier 1 persona definition)
- Existing generic prompt: `idea-symphony/references/prompts/phase2-question-generation-generic.md`
- Tier 1 subset q05-10 data from all three test topics
- Existing low-effort test data (if available in `test-runs/`)
- I-E1 direction on what "low effort" means in terms of persona count/volume

---

## Background

Two competing architectural approaches exist for low-effort brainstorming:

1. **Min Tier approach:** Use 3-4 most essential Tier 1 personas as isolated subagents (maintains true perspective isolation, slower execution, higher API cost, ~20 questions per persona = 60-80 total)

2. **Revised generic prompt approach:** Create a single enhanced generic prompt that incorporates key dimensions from the 3-4 essential Tier 1 personas (no orchestrator overhead, single API call, faster, but loses isolation benefits—produces ~40-60 questions with potentially similar diversity)

The user's voice memo notes that if Tier 1 strips down to 3-4 essentials, those dimensions could be "baked into" the generic prompt. This avoids architectural changes (renaming/reorganizing persona tiers) while improving generic output quality to approach Tier 1 coverage.

The core tension: Does isolation at 3-4 personas provide meaningful diversity benefit over a well-designed generic prompt, or can a carefully constructed single prompt capture the same dimensional coverage?

### Research Questions Addressed

- **RQ12:** Low effort architecture — Should low effort use isolated Min Tier personas or a revised generic prompt incorporating key dimensions?

---

## Investigation Task

### I-E2: Low Effort Approach Evaluation

**Key question:** Does a single revised generic prompt incorporating Tier 1 dimensions produce comparable question diversity (in theme, mode, and perspective) to 3-4 isolated Tier 1 subagents?

**Research questions addressed:** RQ12

**Files to analyze / Inputs:**
- Current generic prompt: `idea-symphony/references/prompts/phase2-question-generation-generic.md` (baseline for comparison)
- Tier 1 output q05-10 data:
  - `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-21_q05-10/questions/by-persona/` (all Tier 1 personas)
  - `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-21_q05-10/questions/by-persona/` (all Tier 1 personas)
  - `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-21_q05-10/questions/by-persona/` (all Tier 1 personas)
- Existing low-effort test data from `test-runs/` (if generic prompt was tested separately)
- I-R1 output defining Tier 1 personas and their essential dimensions
- I-E1 direction on recommended low-effort persona count and volume

**Comparison criteria / Analysis method:**

1. **Identify the 3-4 most essential Tier 1 personas:**
   - Starting hypothesis (adjust based on I-R1 findings): Questioner + Analyst + Pragmatist + Storyteller (or Appreciative Inquirer)
   - Rationale: Questioner brings core question-generation capability; Analyst/Pragmatist add analytical rigor; Storyteller/AI add human-centered perspective
   - Document why these were selected

2. **Compare their combined q05-10 output against current generic prompt:**
   - Combine the 3-4 selected personas' questions into one cohesive set
   - Extract current generic prompt q05-10 output (or run generic prompt on same topics for comparison)
   - Calculate: total question count, cluster distribution, mode distribution, persona perspective diversity

3. **Assess: does isolation provide meaningful diversity benefit at 3-4 personas?**
   - Analyze questions that are unique to isolated personas (not achievable in generic prompt)
   - Are these unique questions high-quality or marginal?
   - Would a generic prompt incorporating those personas' dimensions capture the essence?

4. **If generic approach is viable, document what dimensions should be incorporated:**
   - For each essential persona, extract 1-2 key framings/dimensions:
     - Questioner: "focus on unanswered questions and knowledge gaps"
     - Analyst: "structured, comparative, cause-effect reasoning"
     - Pragmatist: "feasibility, implementation, constraints"
     - Storyteller/AI: "human narrative, emotional resonance, relational impact"
   - Draft language for revised generic prompt incorporating these dimensions
   - Test revised prompt on 1 topic to ensure dimensional coverage

5. **Cost/speed comparison:**
   - Min Tier (3-4 isolated personas): 3-4 API calls + orchestrator synthesis call = 4-5 API calls total
   - Revised generic prompt: 1 API call
   - Estimate latency impact (1x vs 4-5x) and cost impact
   - Consider: does the speed gain outweigh the isolation loss?

6. **Quality assessment across all three test topics:**
   - Do essential 3-4 personas maintain consistent dimensional coverage across space-party, tool-library, and habit-tracker topics?
   - Does generic prompt show topic-dependent quality variation?

**Expected output:**
- Essential Tier 1 persona subset definition (which 3-4, why)
- Comparison of isolated personas vs current generic prompt outputs (question count, themes, modes)
- Analysis of unique questions in isolated personas and their quality
- Draft revised generic prompt incorporating essential dimensions
- Cost/latency comparison with recommendations
- Recommendation: pursue Min Tier approach, revised generic approach, or hybrid

**Priority:** Medium — important for complete effort model but not blocking other investigations. I-E1 depends on this for low-effort architecture decision.

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/E2_low-effort-approach.md`

### Output Format

1. **Essential Persona Subset**
   - Identified personas and rationale for selection
   - Dimensions each contributes

2. **Isolated Subagents Assessment**
   - Total question count at q05-10
   - Cluster and mode distribution
   - Theme analysis
   - Quality assessment
   - Unique questions analysis

3. **Generic Prompt Assessment**
   - Current output summary (q05-10)
   - Dimensional coverage analysis
   - Gaps vs isolated approach
   - Quality assessment

4. **Coverage Comparison**
   - Side-by-side table: Isolated vs Generic across key dimensions
   - Convergence: which questions appear in both approaches?
   - Divergence: what is unique to each approach?

5. **Cost/Speed Analysis**
   - API calls and estimated latency per approach
   - Token usage estimates
   - Cost comparison (if applicable)

6. **Recommendation**
   - Clear choice: Min Tier (3-4 isolated personas) / Revised Generic (single enhanced prompt) / Hybrid (low generic + optional personas)
   - Rationale for choice
   - If revised generic, include draft prompt revision

7. **Notes**
   - Assumptions made
   - Quality metrics used for assessment
   - Open questions for follow-up

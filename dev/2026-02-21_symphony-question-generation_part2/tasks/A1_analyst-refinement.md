# Phase 2B Question Generation — Analyst Refinement and Validation

**Date:** 2026-02-21
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- R3 findings: `dev/2026-02-21_symphony-question-generation_part2/findings/R3_accountant-financial-coverage.md`
- Current Analyst persona prompt: `idea-symphony/references/personas/the-analyst.md`
- Accountant q15-20 output (reference standard): `test-runs/symphony-phase2-questions-persona-eval/*_q15-20/questions/by-persona/the-accountant.md`
- Existing Analyst baseline data: `test-runs/symphony-phase2-questions-persona-eval/` (3 topics x 3 volumes)
- Test script template: `test-runs/symphony-phase2-questions-persona-eval/question-generation-tests_2026-02-21_q10-15.md`

---

## Background

R3 established that Tier 1's financial coverage is topic-dependent: adequate for personal topics (~18%), moderate for community topics (~26%), and substantially lacking for business/product topics (~11%). The Analyst carries 61% of Tier 1's financial load, but stops at framework-level framing without quantified benchmarks, unit economics chains, or accounting concepts (depreciation, reserves, loss rates).

Rather than adding the Accountant as a Tier 1 persona (too specialized for default inclusion), the decision is to enhance The Analyst's prompt with a financial sustainability sub-lens. This should improve financial coverage without transforming the persona's core analytical identity.

### Research Question

**RQ15:** Does prompt refinement improve The Analyst's financial coverage without diluting other analytical dimensions?

---

## Step 1: Draft Prompt Refinement

**Objective:** Add a financial sustainability sub-lens to The Analyst's persona prompt.

**Read** the current Analyst persona at `idea-symphony/references/personas/the-analyst.md`.

**Refinement targets (derived from R3 gap analysis):**

The Analyst currently reaches strategic financial framing but lacks:
1. **Quantified reasoning** — encouraging cost ranges, percentages, or benchmark references when the topic warrants it
2. **Financial sustainability as a named dimension** — making it an explicit part of the Analyst's analytical toolkit alongside risk assessment, metrics, and systematic decomposition
3. **Unit economics awareness** — for product/business topics: CAC, LTV, break-even, cost scaling
4. **Resource lifecycle thinking** — depreciation, replacement cycles, reserve planning for asset-heavy topics

**Refinement constraints:**
- The financial sub-lens should activate contextually (when the topic has financial dimensions), not dominate every analysis
- Core identity must be preserved: systematic decomposition, framework construction, pattern recognition, metrics-driven reasoning
- Should feel like a natural extension of the Analyst's existing toolkit, not a bolted-on Accountant persona
- Total prompt length increase should be modest (aim for 2-4 sentences of addition, not a paragraph)
- Avoid prescribing specific dollar amounts or benchmarks — encourage the *mode of reasoning* (quantified, lifecycle-aware) rather than injecting domain knowledge the LLM may not reliably have

**Output:** Save the refined prompt as `idea-symphony/references/personas/the-analyst-v2.md` (keep original intact for comparison).

---

## Step 2: Generate Test Data

**Objective:** Run the refined Analyst prompt across all 3 test topics at all 3 volume levels, producing directly comparable output alongside existing baseline data.

**Runs:** 3 topics x 3 volumes = 9 subagent runs (Haiku model)

**Output directory:** `test-runs/symphony-phase2-questions-persona-eval/`

Store refined Analyst output in the existing topic directories, alongside the original persona files:

| Topic | Volume | Output Path |
|-------|--------|-------------|
| space-party | q05-10 | `space-party_2026-02-21_q05-10/questions/by-persona/the-analyst-v2.md` |
| space-party | q10-15 | `space-party_2026-02-21_q10-15/questions/by-persona/the-analyst-v2.md` |
| space-party | q15-20 | `space-party_2026-02-18_q15-20/questions/by-persona/the-analyst-v2.md` |
| tool-library | q05-10 | `tool-library_2026-02-21_q05-10/questions/by-persona/the-analyst-v2.md` |
| tool-library | q10-15 | `tool-library_2026-02-21_q10-15/questions/by-persona/the-analyst-v2.md` |
| tool-library | q15-20 | `tool-library_2026-02-18_q15-20/questions/by-persona/the-analyst-v2.md` |
| habit-tracker | q05-10 | `habit-tracker_2026-02-21_q05-10/questions/by-persona/the-analyst-v2.md` |
| habit-tracker | q10-15 | `habit-tracker_2026-02-21_q10-15/questions/by-persona/the-analyst-v2.md` |
| habit-tracker | q15-20 | `habit-tracker_2026-02-18_q15-20/questions/by-persona/the-analyst-v2.md` |

**Subagent prompt:** Use the same template as the existing test scripts (see `question-generation-tests_2026-02-21_q10-15.md`), substituting:
- Persona file: `idea-symphony/references/personas/the-analyst-v2.md`
- Output file: `the-analyst-v2.md` (in the appropriate by-persona directory)

**Model:** Haiku or Flash

---

## Step 3: Validate Refinement

**Objective:** Compare refined Analyst output against baseline and Accountant reference to determine whether the refinement succeeds, fails, or partially succeeds.

**Comparison pairs (9 total):**

For each topic, compare `the-analyst.md` (v1) vs `the-analyst-v2.md` (v2) at each volume level.

**Validation metrics:**

### A. Financial Coverage (target: meaningful improvement)

For each topic at each volume:
1. Count questions with financial content in v1 and v2
2. Classify each financial question by depth: strategic / operational / surface-level (using R3's taxonomy)
3. Calculate financial coverage percentage

**Success thresholds (by topic type):**
- Business/product topics (habit-tracker): v2 should reach >15% financial coverage (v1 baseline: 10.5%)
- Community/institutional topics (tool-library): v2 should reach >28% (v1 baseline: 25.6%)
- Personal topics (space-party): v2 should remain roughly stable (v1 baseline: 18.2%) — financial improvement here is welcome but not required

**Depth improvement target:** v2 should increase the proportion of strategic-depth financial questions relative to v1. R3 showed v1 Analyst at 50% strategic / 50% operational / 0% surface. v2 should maintain or improve this ratio.

### B. Non-Financial Analytical Preservation (target: <10% loss)

For each topic at each volume:
1. Identify v1's non-financial analytical dimensions (risk assessment, systematic decomposition, metrics, pattern recognition, decision frameworks)
2. Check whether these dimensions are still present in v2 at comparable depth
3. Flag any dimensions that appear degraded or absent in v2

**Failure threshold:** If >10% of v1's non-financial analytical territory is absent or significantly weakened in v2, the refinement has diluted the persona.

### C. Identity Preservation (qualitative)

Does v2 still read as "The Analyst"?
- Systematic decomposition approach maintained?
- Framework construction language present?
- Metrics-driven reasoning intact?
- Distinctive voice vs. other personas preserved?

If v2 reads more like "The Accountant" than "The Analyst with financial awareness," the refinement has gone too far.

### D. Cross-Topic Calibration (desirable but not required)

Does the financial sub-lens activate proportionally to topic financial relevance?
- Habit-tracker: should show the most financial enhancement
- Tool-library: moderate enhancement
- Space-party: minimal enhancement

If the sub-lens activates uniformly regardless of topic, the refinement is overly aggressive.

---

## Expected Outcomes

| Outcome | Definition | Next Step |
|---------|-----------|-----------|
| **Success** | Financial coverage improves meaningfully (meets thresholds); non-financial dimensions preserved (< 10% loss); identity intact | Replace `the-analyst.md` with v2 content. Regenerate baseline data at all volumes. Update persona file. |
| **Partial success** | Financial coverage improves for business topics but not others; or improvement is modest but directionally correct; non-financial preservation holds | Accept refinement. Financial improvement is topic-dependent by design (per R3). May iterate on wording. |
| **Overshoot** | Financial coverage improves but non-financial dimensions degraded >10%, or persona reads as Accountant-lite | Scale back refinement. Reduce financial sub-lens to a single sentence. Retest. |
| **Failure** | No meaningful financial coverage improvement, or prompt changes are ignored | Abandon prompt-based approach. Consider alternative: add financial dimension to the question generation system prompt rather than the persona prompt. |

---

## Output

**Findings file:** `dev/2026-02-21_symphony-question-generation_part2/findings/A1_analyst-refinement.md`

Expected format:
```markdown
# I-A1: Analyst Prompt Refinement and Validation

**Date:** [completion date]
**Prompt changes:** [Summary of what was added/modified in v2]

---

## Refinement Summary

[What was changed in the prompt and why]

---

## Financial Coverage Comparison

| Topic | Volume | v1 Financial % | v2 Financial % | Change | Depth Distribution (v2) |
|-------|--------|---------------|---------------|--------|------------------------|
| space-party | q05-10 | | | | |
| space-party | q10-15 | | | | |
| space-party | q15-20* | | | | |
| tool-library | q05-10 | | | | |
| tool-library | q10-15 | | | | |
| tool-library | q15-20 | | | | |
| habit-tracker | q05-10 | | | | |
| habit-tracker | q10-15 | | | | |
| habit-tracker | q15-20 | | | | |

---

## Non-Financial Preservation Assessment

[Dimension-by-dimension comparison: which analytical dimensions are maintained, which are weakened]

---

## Identity Assessment

[Does v2 still read as The Analyst? Qualitative assessment with examples]

---

## Cross-Topic Calibration

[Does the financial sub-lens activate proportionally to topic financial relevance?]

---

## Recommendation

[Success / Partial success / Overshoot / Failure — with next steps]
```

---

## Priority

**High** — feeds into effort level configuration (E1) and the final Tier 1 persona set. Blocks finalization of the Analyst persona prompt for SKILL.md integration.

**Parallelizable with:** V3 (volume x persona count trade-off). V3 can use existing Analyst v1 data; A1 results only matter for the final persona prompt, not for V3's aggregate coverage analysis.

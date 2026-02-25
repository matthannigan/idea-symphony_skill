# Phase 2B Question Generation — Analyst Refinement Validation

**Date:** 2026-02-25 (rewritten; original 2026-02-21)
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Supersedes:** Original A1 task (3-step refinement + generation + validation)
**Inputs:**
- R3 findings: `dev/2026-02-21_symphony-question-generation_part2/findings/R3_accountant-financial-coverage.md`
- R8 Analyst validation: `dev/2026-02-21_symphony-question-generation_part2/findings/R8_tier1-volume-quality-validation_analyst.md`
- v1 Analyst data (`.bak` prompt): `test-runs/symphony-phase2-questions-persona-eval/*/questions/by-persona/the-analyst_q10-15_2026-02-21.md`
- v2 Analyst data (current prompt): `test-runs/symphony-phase2-questions-persona-eval/*/questions/by-persona/the-analyst_q10-15_2026-02-24.md`

---

## Background

The original A1 task was a 3-step process: draft the prompt refinement, generate test data across 3 topics x 3 volumes, then validate. Since then:

1. **Step 1 is done.** The Analyst prompt was refined per R3's recommendation. The current `the-analyst.md` includes a financial sustainability sub-lens. The original prompt is preserved as `the-analyst.md.bak`.

2. **Step 2 is done (differently than planned).** Test data exists at q10-15 for both prompts across 3 topics, generated on the same model (glm-4.7). Volume levels have changed since the original task was written — the current test data uses the stabilized buckets (q08-12, q10-15) rather than the original design (q05-10, q10-15, q15-20).

3. **R8 broadly validates v2.** The R8 Tier 1 validation confirmed the refined Analyst across 10 topics at q08-12 and q10-15 — quality, volume compliance, identity preservation, and cross-topic consistency all confirmed. R8 also noted that a "financial/economic analysis cluster appears in every single topic."

**What remains unanswered is the direct v1→v2 comparison:** does the refinement measurably improve financial coverage, and does it cost anything in non-financial analytical breadth?

### Research Question

**RQ15:** Does prompt refinement improve The Analyst's financial coverage without diluting other analytical dimensions?

### Prompt Changes (v1 → v2)

Three additions were made to the Analyst persona prompt:

1. **Core characteristics** — added: "When the topic has financial dimensions, treat financial sustainability as an analytical lens — consider cost structures, resource lifecycles, and quantified trade-offs alongside other factors"

2. **When participating** — added: "For financially relevant topics, push past framework-level framing toward quantified reasoning — cost ranges, unit economics, break-even thinking, or resource replacement cycles where the topic warrants it"

3. **Example contributions** — added: "What does the unit economics picture look like here — what's the cost per user at different scales, and where's the break-even point?"

---

## Available Data

Directly comparable v1/v2 pairs at q10-15 (same model, same volume, different prompt):

| Topic | v1 (`.bak` prompt) | v2 (current prompt) | Model |
|:---|:---|:---|:---|
| habit-tracker | `the-analyst_q10-15_2026-02-21.md` | `the-analyst_q10-15_2026-02-24.md` | glm-4.7 |
| space-party | `the-analyst_q10-15_2026-02-21.md` | `the-analyst_q10-15_2026-02-24.md` | glm-4.7 |
| tool-library | `the-analyst_q10-15_2026-02-21.md` | `the-analyst_q10-15_2026-02-24.md` | glm-4.7 |

All files are under `test-runs/symphony-phase2-questions-persona-eval/{topic}/questions/by-persona/`.

Supporting context:
- **R3 findings** (~230 lines): Establishes baseline financial coverage numbers, Accountant reference standard, depth taxonomy (strategic / operational / surface-level), and the reasoning behind the refinement decision.
- **R8 Analyst validation** (~120 lines): Confirms v2 quality across 10 topics. Provides broad v2 quality/identity baseline that the v1→v2 comparison can reference.

---

## Investigation Task

### I-A1: Analyst Prompt Refinement Validation

**Key question:** Does the financial sub-lens refinement measurably improve financial coverage without diluting non-financial analytical dimensions?

**Execution model:** Single Opus subagent reading the 6 test files + R3 + R8 findings for a head-to-head v1/v2 comparison.

### Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt:

````
You are validating a prompt refinement to The Analyst persona. The refinement added a financial sustainability sub-lens to improve financial coverage without diluting the persona's core analytical identity.

## Context

**The refinement (3 additions to the prompt):**
1. Core characteristics: "When the topic has financial dimensions, treat financial sustainability as an analytical lens — consider cost structures, resource lifecycles, and quantified trade-offs alongside other factors"
2. When participating: "For financially relevant topics, push past framework-level framing toward quantified reasoning — cost ranges, unit economics, break-even thinking, or resource replacement cycles where the topic warrants it"
3. Added example: "What does the unit economics picture look like here — what's the cost per user at different scales, and where's the break-even point?"

**R8 already confirmed** that the refined prompt (v2) produces high-quality output across 10 topics — volume compliance, identity preservation, and cross-topic consistency are all validated. This investigation focuses specifically on whether v2 improves financial coverage relative to v1, and whether it costs anything in non-financial breadth.

## Task

Read the following files:

1. **R3 findings** (financial coverage baseline and depth taxonomy):
   `dev/2026-02-21_symphony-question-generation_part2/findings/R3_accountant-financial-coverage.md`

2. **R8 Analyst validation** (v2 quality confirmation):
   `dev/2026-02-21_symphony-question-generation_part2/findings/R8_tier1-volume-quality-validation_analyst.md`

3. **v1 test data** (3 files, `.bak` prompt without financial sub-lens):
   - `test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-analyst_q10-15_2026-02-21.md`
   - `test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-analyst_q10-15_2026-02-21.md`
   - `test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-analyst_q10-15_2026-02-21.md`

4. **v2 test data** (3 files, current prompt with financial sub-lens):
   - `test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-analyst_q10-15_2026-02-24.md`
   - `test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-analyst_q10-15_2026-02-24.md`
   - `test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-analyst_q10-15_2026-02-24.md`

Then produce a v1/v2 comparison.

## Assessment Criteria

### A. Financial Coverage Comparison (target: meaningful improvement)

For each topic, in both v1 and v2:
1. Count questions with financial content
2. Classify each financial question by depth using R3's taxonomy:
   - **Strategic** — frameworks, break-even analysis, ROI, cost-benefit, unit economics
   - **Operational** — resource allocation, budget optimization, cost awareness
   - **Surface-level** — mentions money/cost without analytical framing
3. Calculate financial coverage percentage (financial questions / total questions)

**R3 baseline numbers (Analyst at q15-20, for directional reference):**
- Space-party: 25.0% (5/20), 2 strategic / 3 operational
- Tool-library: 35.3% (6/17), 3 strategic / 3 operational
- Habit-tracker: 18.8% (3/16), 2 strategic / 1 operational

Note: These baselines are from q15-20 on an earlier model run. The v1 data at q10-15 may differ. Measure v1 actuals from the test files rather than assuming R3's numbers.

**Success thresholds:**
- Habit-tracker (business/product topic): v2 should show the clearest improvement
- Tool-library (community/institutional): v2 should show moderate improvement
- Space-party (personal): stable or modest improvement — financial enhancement welcome but not required

**Depth target:** v2 should maintain or improve the proportion of strategic-depth financial questions. R3 found v1 at 50% strategic / 50% operational / 0% surface. v2 should not regress.

### B. Non-Financial Analytical Preservation (target: <10% loss)

For each topic, compare v1 and v2 on the Analyst's core non-financial dimensions:
- **Systematic decomposition** — breaking problems into components
- **Risk assessment** — identifying risks, trade-offs, failure modes
- **Metrics/measurement** — defining success criteria, KPIs, evaluation frameworks
- **Decision frameworks** — structured approaches to choosing between options
- **Pattern recognition** — identifying underlying structures, analogies, principles

For each dimension: present in both? Comparable depth? Any that weakened or disappeared?

**Failure threshold:** If >10% of v1's non-financial analytical territory is absent or significantly weakened in v2, the refinement has diluted the persona.

### C. Identity Preservation (qualitative)

Does v2 still read as "The Analyst"?
- Systematic decomposition approach maintained?
- Framework construction language present?
- Metrics-driven reasoning intact?
- Distinctive voice vs. other personas preserved?

Note: R8 already confirmed identity preservation across 10 topics ("the most consistently on-category persona tested"). This assessment is a cross-check against v1 specifically — does v2 read as a natural evolution or as a different persona?

### D. Cross-Topic Calibration (desirable but not required)

Does the financial sub-lens activate proportionally to topic financial relevance?
- Habit-tracker (product/business): should show the most financial enhancement
- Tool-library (community/nonprofit): moderate enhancement
- Space-party (personal/event): minimal enhancement

If the sub-lens activates uniformly regardless of topic, the refinement is overly aggressive.

## Output Format

```markdown
# A1 Assessment: Analyst Prompt Refinement Validation

**Date:** [date]
**Prompt version:** v1 (`.bak`, no financial sub-lens) vs v2 (current, with financial sub-lens)
**Test conditions:** 3 topics × q10-15 × glm-4.7

---

## Refinement Summary

[Brief description of what was changed and the R3 reasoning behind it]

---

## Financial Coverage Comparison

| Topic | v1 Financial % | v2 Financial % | Change | v1 Depth | v2 Depth |
|:---|:---|:---|:---|:---|:---|
| habit-tracker | | | | | |
| space-party | | | | | |
| tool-library | | | | | |

### Per-Topic Detail

#### habit-tracker
**v1 financial questions:** [list with depth classification]
**v2 financial questions:** [list with depth classification]
**Assessment:** [improvement / stable / regression]

#### space-party
[same format]

#### tool-library
[same format]

---

## Non-Financial Preservation Assessment

| Dimension | v1 Presence | v2 Presence | Assessment |
|:---|:---|:---|:---|
| Systematic decomposition | | | |
| Risk assessment | | | |
| Metrics/measurement | | | |
| Decision frameworks | | | |
| Pattern recognition | | | |

[Narrative assessment of any weakened or absent dimensions]

---

## Identity Assessment

[Does v2 still read as The Analyst? Comparison with v1's voice and approach. Reference R8's identity confirmation.]

---

## Cross-Topic Calibration

[Does the financial sub-lens activate proportionally to topic financial relevance?]

---

## Recommendation

[Success / Partial success / Overshoot / Failure — using the outcome definitions below]
```

Save your output to: `dev/2026-02-21_symphony-question-generation_part2/findings/A1_analyst-refinement.md`
````

---

## Expected Outcomes

| Outcome | Definition | Next Step |
|:---|:---|:---|
| **Success** | Financial coverage improves meaningfully (habit-tracker shows clearest gain); non-financial dimensions preserved (<10% loss); identity intact; R8 findings consistent | Accept refinement as final. Close A1 and RQ15. |
| **Partial success** | Financial coverage improves for business topics but not others; non-financial preservation holds | Accept refinement. Financial improvement is topic-dependent by design (per R3). |
| **Overshoot** | Financial coverage improves but non-financial dimensions degraded >10%, or persona reads as Accountant-lite | Scale back refinement to a single sentence. Retest. |
| **Failure** | No meaningful financial coverage improvement, or prompt changes are ignored | Abandon prompt-based approach. Consider financial dimension in the question generation system prompt instead. |

---

## Output

**Findings file:** `dev/2026-02-21_symphony-question-generation_part2/findings/A1_analyst-refinement.md`

---

## Priority

**Medium** — The refined prompt is already deployed and R8-validated. This investigation confirms the refinement quantitatively but does not block ongoing work. If the outcome is Overshoot or Failure, the prompt would need revision before final SKILL.md integration.

**Independent of:** All other remaining investigations. R8 already validated v2 quality broadly; this adds the v1→v2 delta measurement.

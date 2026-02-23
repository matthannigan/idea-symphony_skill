# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-21
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md` (Roster Composition — Decision Gate 3)
**Inputs:**
- Questioner q15-20 output (primary analytical question generator)
- Analyst q15-20 output (systematic breakdown including economic aspects)
- Accountant q15-20 output (dedicated financial lens)
- Effort-level guidance for medium and high configurations

---

## Background

### Context

The Accountant is classified as a Tier 3 specialist persona, typically reserved for high-effort configurations. However, financial and cost considerations are important to many brainstorming topics. This investigation evaluates whether the Tier 1 set — particularly the Questioner and Analyst — already generate adequate financial/cost/budget questions, or whether there is a coverage gap that justifies including a financial specialist at medium effort.

### Key Questions

**Core question:** Does the Tier 1 set generate adequate financial/cost/budget questions without a dedicated financial persona, or is there a coverage gap that requires a financial specialist?

**Related question:** If a gap exists, would the Accountant (full-featured financial persona) be necessary, or would a lighter variant ("Bookkeeper") suffice?

### Research Questions

1. **RQ10a Financial question count:** How many questions in Questioner + Analyst output touch financial/cost/budget topics? What % of total?

2. **RQ10b Financial depth:** Are these questions surface-level ("How much will it cost?") or substantive ("What financial model sustains this long-term?")? Depth classification.

3. **RQ10c Unique Accountant territory:** What financial questions does the Accountant generate that neither Questioner nor Analyst covers? What types of financial reasoning are missing from Tier 1?

4. **RQ10d Financial rigor:** Do the Accountant's questions demonstrate financial expertise (ROI, cost-benefit, cash flow, capital requirements, sustainability metrics) that Tier 1 lacks?

5. **RQ10e Topic sensitivity:** Is financial coverage adequate for all 3 topics, or only for naturally financial ones (tool-library) and missing from others (space-party, habit-tracker)?

6. **RQ10f Necessity assessment:** Would the user's brainstorm miss critical financial perspectives without a financial specialist? Can gaps be filled through prompt refinement to Questioner/Analyst?

---

## Investigation Task

### I-R3: Accountant Financial Coverage Check

**Purpose:** Determine whether the Tier 1 set provides adequate financial/cost/budget question coverage, or whether a financial specialist is needed at medium effort.

**Key question:** Does the Tier 1 set generate adequate financial/cost/budget questions, or is there a coverage gap that requires a financial specialist at medium effort?

**Files to analyze (9 files, ~67 KB total):**

*Questioner q15-20 (3 files, ~19 KB):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18_q15-20/questions/by-persona/the-questioner.md` (~5.8 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18_q15-20/questions/by-persona/the-questioner.md` (~6.2 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18_q15-20/questions/by-persona/the-questioner.md` (~6.9 KB)

*Analyst q15-20 (3 files, ~21 KB):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18_q15-20/questions/by-persona/the-analyst.md` (~7.1 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18_q15-20/questions/by-persona/the-analyst.md` (~7.3 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18_q15-20/questions/by-persona/the-analyst.md` (~6.8 KB)

*Accountant q15-20 (3 files, ~21 KB):*
- `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18_q15-20/questions/by-persona/the-accountant.md` (~7.0 KB)
- `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18_q15-20/questions/by-persona/the-accountant.md` (~7.3 KB)
- `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18_q15-20/questions/by-persona/the-accountant.md` (~6.7 KB)

**Comparison criteria:**

1. **Financial question count:** Review all Questioner and Analyst questions. Count those that explicitly address financial, cost, budget, pricing, or economic aspects. Calculate as % of total output.

2. **Financial depth classification:** For each financial question identified, classify as:
   - Surface-level: "How much will it cost?" or "What's the budget?"
   - Operational: "What are the recurring costs?" or "How do we price this?"
   - Strategic: "What financial model sustains long-term viability?" or "What ROI targets should we set?"
   - Assess depth distribution across Questioner + Analyst combined.

3. **Unique Accountant territory:** Review all Accountant questions. Identify those that neither Questioner nor Analyst generates:
   - Financial expertise indicators (ROI, cash flow, capital requirements, cost-benefit analysis, break-even analysis, sustainability metrics)
   - Financial reasoning styles not present in Tier 1
   - Topic-specific financial questions (e.g., labor cost analysis, material cost variance, funding mechanisms)

4. **Financial rigor assessment:** For Accountant unique questions, assess whether they demonstrate financial expertise that Questioner/Analyst lack. Examples:
   - Questioner might ask "What will this cost?" while Accountant asks "What's the payback period?"
   - Analyst might ask "What are the cost categories?" while Accountant asks "How do we optimize capital allocation?"

5. **Topic sensitivity:** Break down financial coverage by topic:
   - Space-party: Natural financial questions? (low) vs Accountant additions (gap level)
   - Tool-library: Natural financial questions? (high) vs Accountant additions (gap level)
   - Habit-tracker: Natural financial questions? (low) vs Accountant additions (gap level)
   - Identify whether financial coverage gap is uniform or topic-dependent.

6. **Necessity assessment:** Based on findings, determine:
   - **Adequate:** Tier 1 covers financial perspectives sufficiently (>25% of questions touch financial aspects, mostly strategic depth)
   - **Gap exists — add specialist:** Tier 1 misses critical financial perspectives (<15% coverage or mostly surface-level)
   - **Gap exists — revise Questioner prompt:** Tier 1 could cover gaps through prompt refinement (Questioner could be instructed to emphasize financial dimensions)

**Expected output:**

- Financial coverage audit (% financial questions in Tier 1)
- Depth analysis (surface/operational/strategic distribution)
- Unique Accountant territory mapping
- Topic sensitivity findings
- Necessity assessment and recommendation
- Guidance on whether Accountant should be included at medium effort or reserved for high effort

**Priority:** Medium — informs specialist selection guidance for high-effort configurations, and helps decide whether financial dimension should be added to medium effort through prompt enhancement rather than new persona.

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/R3_accountant-financial-coverage.md`

### Output Format

```markdown
## Investigation I-R3: Accountant Financial Coverage Check

### Financial Coverage in Tier 1

#### Questioner Financial Questions
[Count, %, sample questions, depth distribution (surface/operational/strategic)]

#### Analyst Financial Questions
[Count, %, sample questions, depth distribution]

#### Tier 1 Aggregate Financial Coverage
[Combined count, %, overall depth profile, observations]

### Accountant Unique Territory

#### Financial Expertise Indicators
[Question types demonstrating financial expertise not in Tier 1, examples]

#### Unique Question Samples
[5-10 Accountant questions not duplicated by Questioner or Analyst, with explanation of unique value]

#### Reasoning Style Comparison
[How does Accountant's financial reasoning differ from Questioner/Analyst approaches?]

### Gap Assessment

#### Financial Dimension Completeness
[Is financial perspective adequately represented in Tier 1? What level of gap (none / minor / moderate / substantial)?]

#### Depth Assessment
[Do Tier 1 financial questions reach strategic depth or stay at operational/surface level?]

#### Necessity Assessment
[Could gap be filled through prompt enhancement to Questioner/Analyst, or does it require specialized persona?]

### Topic Sensitivity

#### Space-Party Financial Coverage
[Tier 1 %, Accountant additions, gap assessment]

#### Tool-Library Financial Coverage
[Tier 1 %, Accountant additions, gap assessment]

#### Habit-Tracker Financial Coverage
[Tier 1 %, Accountant additions, gap assessment]

### Recommendation

[Adequate / Gap exists — add specialist / Gap exists — revise Questioner prompt]

[If "add specialist": Should it be Accountant (full-featured) or lighter variant ("Bookkeeper")?]

[Guidance for high-effort configurations: Is Accountant still valuable when other specialists are added?]

### Notes

[Topic-specific observations, implications for prompt engineering, connections to other investigations]
```

---

## Priority

**Medium** — Part of Decision Gate 3 (Specialist Selection for High Effort). Does not block medium-effort roster finalization, but informs whether financial dimension should be added to medium effort or reserved for high effort.

Sequencing dependency: Can run in parallel with I-R1 and I-R2, before final roster guidance is published.

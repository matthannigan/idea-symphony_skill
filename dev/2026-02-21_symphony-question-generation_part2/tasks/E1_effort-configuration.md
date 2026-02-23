# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-21
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- I-V1, I-V2, I-V3 results (volume optimization findings)
- I-R1, I-R2, I-R4 results (roster composition findings)
- Existing SKILL.md effort definitions
- Decision Gates 1 and 2 outputs (volume range finalized, roster composition finalized)

---

## Background

The user's original effort model mapped effort to persona count only: low=0 (generic only), medium=3, high=5. However, Phase 2B research suggests effort should map to BOTH persona count AND question volume to achieve comprehensive coverage. Initial findings indicate patterns like:
- Low: 8 essential personas × 5-10 questions per persona = 40-80 questions
- Medium: 8 Tier 1 personas × 10-15 questions per persona = 80-120 questions
- High: 13-15 personas (Tier 1 + selective Tier 2) × 15-20 questions per persona = 195-300 questions

Additionally, effort level should determine which question-mode clusters (analytical, generative, human-centered, structural) are represented and whether specialist persona selection applies.

This investigation synthesizes all prior findings to produce a concrete, actionable effort configuration table that can directly update SKILL.md.

### Research Questions Addressed

- **RQ11:** Effort-volume mapping — What is the optimal combination of persona count and question volume for each effort level?
- **RQ12:** Low effort architecture — Should low effort use a subset of isolated personas or a revised generic prompt?

---

## Investigation Task

### I-E1: Define Effort Configurations

**Key question:** What is the optimal combination of persona count, question volume, and model for each effort level, and what are the specific persona and cluster coverage requirements?

**Research questions addressed:** RQ11, RQ12

**Files to analyze / Inputs:**
- I-V1, I-V2, I-V3 investigation outputs (persona volume profiles, volume distribution patterns)
- I-R1, I-R2, I-R4 investigation outputs (Tier 1 definition, Tier 1 vs High-effort candidates, high-effort specialist selection criteria)
- Current `idea-symphony/SKILL.md` effort definitions
- Phase 2B test data summaries (persona count × average questions per persona for each topic)
- Persona coverage mapping matrix (which personas cover which dimensions)

**Comparison criteria / Analysis method:**

1. **Map each effort level to a concrete (personas, volume, model) triple:**
   - For low: decide between Min Tier (3-4 isolated personas) or revised generic prompt
   - For medium: confirm 8 Tier 1 personas as standard
   - For high: determine whether 13-15 or 15-17 personas (specialist selection varies by topic)

2. **Estimate total question count and synthesis burden per level:**
   - Low: X questions total, Y synthesis effort (short synthesis, few convergences)
   - Medium: X questions total, Y synthesis effort
   - High: X questions total, Y synthesis effort (longer synthesis, many convergences)
   - Ensure total questions stay within 4-5 topic clusters for Phase 3 manageability

3. **Ensure minimum dimension coverage at each level:**
   - Define which question-mode clusters (analytical probing, analytical framing, generative territory, human-centered territory) must be represented at each level
   - E.g., low might require 3/4 clusters; medium might require all 4; high adds depth across all 4
   - Map this to persona requirements (which Tier 1 personas are mandatory to hit all required clusters)

4. **Define which question-mode clusters must be represented:**
   - Low effort: minimum 2-3 clusters represented across all personas
   - Medium effort: all 4 clusters represented, balanced coverage
   - High effort: all 4 clusters + specialist depth in topic-specific directions

5. **Specify mandatory vs optional personas at each level:**
   - Mandatory personas = minimum set needed to hit dimension coverage requirements
   - Optional personas = additional coverage and diversity (can be cut if needed for latency/cost)

6. **Account for high-effort specialist selection:**
   - High effort should allow orchestrator-guided selection: given topic keywords, recommend which Tier 2 personas best extend Tier 1 coverage
   - Document the selection criteria (topic keyword → recommended Tier 2 personas)

**Expected output:**
- Effort configuration table with per-level persona counts, volume ranges, and model specs
- Cluster coverage matrix (which clusters represented at each level)
- Mandatory vs optional persona list per level
- High-effort specialist selection guidance
- Synthesis burden estimates (time/tokens for Phase 2C)

**Priority:** High — feeds directly into SKILL.md updates and determines all downstream Phase 3 workload

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/E1_effort-configuration.md`

### Output Format

1. **Effort Configuration Table**
   - Columns: Effort Level, Persona Count, Question Volume Range, Total Q Est., Synthesis Burden Est., Model, Comments
   - Rows: Low, Medium, High

2. **Cluster Coverage Requirements**
   - Per-level breakdown of which question-mode clusters must appear and why
   - Minimum persona count needed to satisfy coverage per level

3. **Mandatory vs Optional Personas by Level**
   - Low effort: which personas are mandatory, which optional (if applicable)
   - Medium effort: all 8 Tier 1 — are all mandatory or are some optional?
   - High effort: Tier 1 mandatory + specialist personas optional per topic

4. **High-Effort Specialist Selection Guidance**
   - Topic keyword categories and recommended Tier 2 persona additions
   - E.g., "If topic involves infrastructure/systems, add Systems Thinker + Connector; if innovation-focused, add Futurist"

5. **Synthesis Burden Estimates**
   - Per-level estimates for Phase 2C synthesis (number of sections, convergence complexity, estimated tokens)

6. **Recommendation**
   - Clear statement of recommended effort configuration
   - Any caveats or implementation notes

7. **Notes**
   - Assumptions made
   - Dependencies on other investigations
   - Open questions for follow-up

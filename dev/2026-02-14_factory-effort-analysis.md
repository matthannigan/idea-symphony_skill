# Factory Effort Level Comparative Analysis: Low / Medium / High

**Date:** 2026-02-14
**Supersedes:** `docs/dev/2026-02-14_factory-low-effort-analysis.md`

**Test Runs:**
- **Low:** `test-runs/Civic-Design-Corps_factory_2026-02-10_low/`
- **Medium:** `test-runs/Civic-Design-Corps_factory_2026-02-08/` (baseline)
- **High:** `test-runs/Civic-Design-Corps_factory_2026-02-14_high/`

**Common Source:** All three runs build on the same Symphony session (`Civic-Design-Corps_2026-02-08`), which produced 21 personas across 7 topic clusters with strong consensus on most recommendations.

**Test Design:** Medium and high use the same 9 auto-generated personas, isolating the effect of Phase 3/4 effort scaling. Low uses a single auto-generated persona (different pipeline).

---

## Volume Comparison

| Metric | Low | Medium | High | Low:Med | High:Med |
|--------|-----|--------|------|---------|----------|
| Personas | 1 | 9 | 9 | 0.11x | 1x |
| Personas/section | 1 | 3 | 4-6 | 0.33x | 1.3-2x |
| Draft files | 0 | 18 | 28 | N/A | 1.56x |
| Avg draft size | N/A | 12.7 KB | 10.7 KB | N/A | 0.84x |
| Section files | 6 | 6 | 6 | 1x | 1x |
| Avg section size | 8.6 KB | 20.1 KB | 17.2 KB | 0.43x | 0.86x |
| ACTION-PLAN.md | 19.0 KB | 43.3 KB | 40.7 KB | 0.44x | 0.94x |
| Total session size | ~57 KB | ~472 KB | ~506 KB | 0.12x | 1.07x |

### Key Volume Observations

1. **Low is dramatically smaller** (~1/8 of medium) because the entire drafts layer is eliminated.
2. **High is only 7% larger than medium** despite 56% more drafts. Individual drafts are shorter and synthesis is more compressed.
3. **ACTION-PLAN.md is 6% smaller for high than medium** — counterintuitive. More input didn't produce more output.
4. **Synthesis sections are smaller for high than medium** (avg 17.2 KB vs 20.1 KB) despite more draft input. Compression ratios: high = 30-42%, medium = 41-65%.

### Pipeline Volume Flow

```
                    Low                  Medium                 High
SCOPE              6.9 KB               6.8 KB                 6.8 KB
OUTLINE            9.9 KB               9.9 KB                 9.9 KB
Personas           2.1 KB (1×)          19.7 KB (9×)           19.7 KB (9×)
Drafts             —                    228 KB (18×)           300 KB (28×)
Sections           51.8 KB              120.5 KB               103.3 KB
ACTION-PLAN        19.0 KB              43.3 KB                40.7 KB
```

---

## Core Recommendation Convergence

**All three effort levels arrive at the same core recommendations:**

| Recommendation | Low | Med | High |
|---------------|-----|-----|------|
| Three-cohort sprint model (4-month fellowships) | ✅ | ✅ | ✅ |
| Tiered resident stipends ($700/$200/$100) | ✅ | ✅ | ✅ |
| Two-tranche funding ($6K + $4K) | ✅ | ✅ | ✅ |
| Municipal co-investment requirement | ✅ | ✅ | ✅ |
| Co-created decision frameworks before conflicts | ✅ | ✅ | ✅ |
| Municipal co-design from day one | ✅ | ✅ | ✅ |
| Stratified sortition via community networks | ✅ | ✅ | ✅ |
| Dual-track measurement (technical + civic) | ✅ | ✅ | ✅ |
| Equity-first impact assessment with veto | ✅ | ✅ | ✅ |
| Graduated handoff process | ✅ | ✅ | ✅ |

**This convergence is highly consistent** and expected: the Symphony session produced strong consensus across 21 personas and 7 topics. A single competent persona drawing from the same source material should — and does — arrive at the same conclusions.

**Important caveat:** This test case may overstate convergence because the Symphony session itself had high consensus. For more contested topics, divergence across effort levels would likely be more pronounced.

---

## Where Effort Levels Diverge

### 1. Debate Documentation & Tension Preservation

| Feature | Low | Medium | High |
|---------|-----|--------|------|
| Key Debate Points sections | ❌ (absent by design) | ✅ 3 per section typical | ✅ 4-5 per section |
| Synthesis Notes | ❌ | ✅ with persona attribution | ✅ with persona attribution |
| Persona attribution in recommendations | ❌ | ✅ throughout | ✅ throughout |
| Convergence level documented | ❌ | Partially (2/6 in YAML) | ✅ (6/6 in YAML) |

**Assessment:** This is the primary differentiator. Low gives you *what* to do. Medium gives you *what* to do plus *why* and *what alternatives were considered from competing viewpoints*. High gives you all that with richer debate documentation and more genuine alternatives.

**Section 03 comparison (Collaboration Design):**
- **Low:** Core recommendation with 2 alternatives. No debate documentation. Grounding section cites 5 Symphony insights.
- **Medium:** Core recommendation with 3 alternatives. 3 debate points with persona attribution. Synthesis notes trace unique contributions from each of 3 personas.
- **High:** Core recommendation with 5 alternatives. 5 debate points with persona attribution. Synthesis notes document convergence and divergence patterns. **Only section across all runs to show medium (not high) convergence** — the 4th persona (Grassroots Community Organizer) introduced genuine tension about community control vs. implementation pragmatism that wasn't captured in medium's 3-persona setup.

### 2. Alternatives Depth

| Metric | Low | Medium | High |
|--------|-----|--------|------|
| Alternatives per section | 2 | 2-4 | 4-5 |
| Per-draft alternatives | 2 | 2-3 | 4-5 |
| "Advocated by" attribution | ❌ | ✅ | ✅ |

High-effort alternatives are richer because more personas generate more genuinely different approaches. The alternatives in low are adequate choices; medium's are well-attributed; high's represent the broadest exploration of the solution space.

### 3. Draft Depth vs. Breadth

| Metric | Medium | High |
|--------|--------|------|
| Avg draft length | 12.7 KB | 10.7 KB |
| Draft size range | 7.4-18.9 KB | 7.9-14.9 KB |
| Core Recommendation depth | 3-4 paragraphs | 3-4 paragraphs |
| Alternatives per draft | 2-3 | 4-5 |

**Key finding: Individual drafts are ~16% shorter in high effort.** More personas per section means each covers a narrower perspective slice. The Core Recommendation depth is similar despite SKILL.md specifying "4-5 paragraphs" for high effort. However, high-effort drafts include more alternatives (matching the "3-5 including edge cases" spec).

**This creates a breadth-over-depth trade-off:** High effort gives you more perspectives but each perspective is slightly less deeply developed.

### 4. Synthesis Compression

| Metric | Medium | High |
|--------|--------|------|
| Avg synthesis size | 20.1 KB | 17.2 KB |
| Compression ratio | 41-65% | 30-42% |
| Draft input per section | ~38 KB | ~50 KB |

**High-effort synthesis is more aggressive** — larger input, smaller output. This may reflect strong convergence (easy to compress when 5 personas agree) or may indicate lost detail. Given that the core recommendations are identical, the compression appears well-executed — but unique insights from additional personas may not survive into synthesis.

### 5. ACTION-PLAN Structure

| Feature | Low (19 KB) | Medium (43 KB) | High (41 KB) |
|---------|------------|----------------|--------------|
| Key recommendations | 5 | 5 (in exec summary) | 7 (separate section) |
| Alternatives per section | 1-2 | 2-3 | 3-5 |
| Key decisions | 7 (brief) | 5 (detailed) | 7 (detailed) |
| Resource scaling tiers | 3 | 5 | 3 |
| Implementation timeline | 4 narrative phases | 6 phases with deps | 18-month timeline |
| Persona attribution | None | Throughout | Throughout |
| Cross-cutting principles | ✅ (6 items) | ❌ | ❌ |
| Decision point detail | Brief | Detailed with convergence | Detailed with convergence |

**Notable:** Low's ACTION-PLAN uniquely includes a "Cross-Cutting Principles" section, a useful structural addition that surfaces themes spanning sections. Medium and high embed these as debate points distributed across sections.

---

## Quality Rubric Scores

| Dimension | Low | Medium | High |
|-----------|-----|--------|------|
| Template adherence | 6/6 (100%) | 18/18 (100%) | 28/28 (100%) |
| Grounding in Brainstorming | 4/5 | 5/5 | 5/5 |
| Persona distinctiveness | N/A | 5/5 | 5/5 |
| Synthesis quality | N/A | 5/5 | 5/5 |
| ACTION-PLAN quality | 4/5 | 5/5 | 5/5 |
| Actionability | 4/5 | 5/5 | 5/5 |

---

## Value-Add Assessment by Effort Level

### Low → Medium: Substantial Value

The jump from 1 to 9 personas (3/section) produces:
- **Debate documentation** — the primary value-add. Users can see *why* recommendations emerged from competing viewpoints
- **Persona attribution** — recommendation provenance throughout
- **More alternatives** — 2-4 vs 2 per section
- **Richer scaling analysis** — 3 tiers vs 2
- **2.3x larger sections and ACTION-PLAN** — meaningful depth increase

**Cost:** ~8x more total output to process. Worth it for projects where understanding trade-offs matters.

### Medium → High: Diminishing Returns

The jump from 3 to 4-6 personas/section (same persona pool) produces:
- **More debate points** — 4-5 vs 3 per section
- **More alternatives** — 4-5 vs 2-3 per section
- **Stronger convergence validation** — 5 personas agreeing is more convincing than 3
- **One instance of surfacing genuine divergence** — Section 03 showed medium convergence only in high, revealing a tension the 3-persona setup missed

**But also:**
- **Shorter individual drafts** — each perspective is ~16% less deep
- **Smaller synthesis sections** — more aggressive compression
- **Slightly smaller ACTION-PLAN** — despite richer input
- **Core recommendations unchanged** — identical to medium
- **Only 7% more total output** — most volume increase is in intermediate drafts the user won't read

**Assessment:** High effort's main value is in the intermediate outputs (drafts and synthesis) for projects where the user wants to explore the full deliberation. For the final ACTION-PLAN deliverable, the differences from medium are marginal.

### When Each Effort Level Is Right

| Effort | Best For |
|--------|----------|
| **Low** | Quick turnaround; strong Symphony consensus; user mainly needs actionable recommendations; exploring whether Factory is useful for a given topic |
| **Medium** | Default. Good balance of depth, debate documentation, and efficiency. Sufficient for most projects. |
| **High** | Contested topics with genuine unresolved tensions; projects where understanding the full deliberative process matters; high-stakes decisions where surfacing edge cases justifies computational cost |

---

## Issues & Bugs

### 1. Low-Effort Persona Naming Bug (Recurring)

The single persona is named "Morgan Chen" with biographical narrative. SKILL.md requires title-based naming for low effort. Root cause: `phase3-persona-gen.md` doesn't enforce this strongly enough.

**Status:** Known, documented in prior analysis. Needs fix.

### 2. High-Effort Draft Depth Not Scaling

SKILL.md specifies high-effort Core Recommendations should be "4-5 paragraphs" with "comprehensive recommendation with detailed reasoning." Actual output: 3-4 paragraphs, similar to medium. The alternatives count does scale (4-5 vs 2-3), but the core depth increase isn't materializing.

**Root cause:** The `phase3-section-draft.md` prompt's effort-level guidance is generic ("Comprehensive recommendation with detailed reasoning") rather than specifying minimum paragraph counts or explicit depth markers.

### 3. High-Effort Synthesis Smaller Than Medium

Synthesis sections average 17.2 KB for high vs 20.1 KB for medium, despite receiving 56% more draft input. This suggests the synthesis prompt doesn't scale output expectations with input volume.

**Root cause:** `phase3-section-synthesis.md` says "2-4 paragraphs" for the Core Recommendation regardless of effort level or input volume.

### 4. High-Effort ACTION-PLAN Smaller Than Medium

The final deliverable is 6% smaller despite richer intermediate work. Integration may be compressing too aggressively at high effort.

**Root cause:** `phase4-integration.md` has no effort-level-specific guidance for output depth.

---

## Recommendations for SKILL.md & Prompt Improvements

### R1: Fix Low-Effort Persona Naming (Bug Fix)

**File:** `idea-factory/references/prompts/phase3-persona-gen.md`

Add explicit enforcement at the top of the low-effort guidance block:

```
**Low effort — CRITICAL:** Use a TITLE-BASED NAME (e.g., "Civic Innovation Program Director"),
NOT a personal name. Do NOT create a character with a biography. Create a role description.
Bad: "Morgan Chen" / "Naomi Chen"
Good: "Civic Innovation Program Director" / "Community Program Design Specialist"
```

### R2: Scale Draft Depth with Effort Level (Prompt Enhancement)

**File:** `idea-factory/references/prompts/phase3-section-draft.md`

Replace the generic high-effort guidance with more specific depth markers:

```
{{#if effort_high}}
- **High effort:**
  - Core Recommendation: 4-5 substantive paragraphs minimum. Go deeper on rationale,
    implementation details, and specific mechanisms. Don't just state what to do —
    explain the reasoning chain from Symphony evidence to specific recommendation.
  - Alternatives: 3-5 approaches including edge cases and unconventional options.
    Each alternative should be a genuinely different philosophy, not a parameter tweak.
  - Scaling: Explicit resource tiers (minimal/core/expanded) with specific
    dollar amounts, headcounts, or timelines where possible.
{{/if}}
```

### R3: Scale Synthesis Output with Input Volume (Prompt Enhancement)

**File:** `idea-factory/references/prompts/phase3-section-synthesis.md`

Add effort-level-specific output expectations:

```
### Output Depth by Effort Level

**Medium effort (3 personas):** Core recommendation 3-4 paragraphs. 2-3 alternatives.
**High effort (4-6 personas):** Core recommendation 4-6 paragraphs to adequately represent
the richer convergence and divergence patterns. 3-5 alternatives. Synthesis Notes should
document unique contributions from EACH persona, not just highlight themes.
```

Also add: "The synthesis should be proportional to the input volume. More persona perspectives means more convergence to validate and more tensions to document — the output should reflect this."

### R4: Scale Integration Output with Effort Level (Prompt Enhancement)

**File:** `idea-factory/references/prompts/phase4-integration.md`

Add effort-level awareness:

```
### Plan Depth by Effort Level

**Low effort:** Concise plan focused on actionable recommendations. 15-25 KB.
**Medium effort:** Comprehensive plan with alternatives and debate highlights. 35-50 KB.
**High effort:** Thorough plan preserving the richest debate points and the most
alternatives from synthesis. 45-65 KB. The reader should perceive more depth and
nuance than medium, not the same content in different words.
```

### R5: Add Effort-Level-Specific Quality Gates to SKILL.md

**File:** `idea-factory/SKILL.md`

After each phase's Quality Gate section, add effort-level-specific size expectations:

```
**Phase 3A Quality Gate — Size Expectations:**
| Effort | Target Avg Draft Size | Target Alt Count |
|--------|----------------------|------------------|
| Low    | 6-10 KB              | 1-2              |
| Medium | 10-15 KB             | 2-3              |
| High   | 13-18 KB             | 3-5              |
```

This gives orchestrators a concrete target to verify rather than relying on subjective depth assessments.

### R6: Consider Whether High Effort Should Increase Persona Pool, Not Just Assignments

Currently, high effort uses the same 9 personas as medium but assigns more to each section. This produces more coverage but narrower per-persona depth (each persona covers more sections with less focus).

**Alternative approach:** High effort could generate 12-14 personas (adding more specialized roles) while keeping 4-5 per section. This would increase perspective diversity rather than just assignment density from the same pool.

**Trade-off:** More personas means more persona generation time and more total drafts, but each draft would be from a genuinely different voice rather than the same voice applied to more sections.

**Recommendation:** Consider this for a future iteration. Current behavior (same pool, more assignments) is adequate but doesn't fully realize high effort's potential for richer perspective diversity.

---

## Summary

The effort level system works as designed: low is lean and actionable, medium adds valuable debate documentation and persona attribution, and high adds richer alternatives and stronger convergence validation. The core finding is **highly consistent recommendations across all three levels**, demonstrating that the Factory pipeline reliably distills Symphony brainstorming into the same actionable conclusions regardless of how many personas are involved.

The main areas for improvement are:
1. **Bug fix:** Low-effort persona naming (R1)
2. **Depth scaling:** High-effort outputs aren't meaningfully deeper than medium in the final deliverable (R2-R5)
3. **Future consideration:** Whether high effort should expand the persona pool rather than just assignment density (R6)

The most impactful change would be R2-R4 combined: making draft, synthesis, and integration prompts effort-level-aware so that high effort produces proportionally deeper output at each stage rather than just more intermediate files.

---

**Analysis completed:** 2026-02-14
**Status:** Supersedes `docs/dev/2026-02-14_factory-low-effort-analysis.md`

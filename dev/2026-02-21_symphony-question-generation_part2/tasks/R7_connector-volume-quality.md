# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-24
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- V1 per-persona volume-quality (take 2) — establishes methodology and comparison framework
- D1 Perspective Persona Append Strategy — establishes the Append treatment the Connector would inherit
- Phase 2B persona selection guide — Connector guidance and Analogist comparison notes

---

## Background

### Context

The **Connector** is a Tier 3 persona with a special status: when selected by the orchestrator, it **replaces the Analogist** in the Tier 1 Perspective group. This means it would inherit the Analogist's Phase 2C treatment (Append with round-robin cluster selection per D1) rather than following the standard Tier 3 synthesis path.

This replacement relationship and the Connector's mixed cognitive modes make it a distinct research problem from the other Tier 3 personas (investigated in R6).

### What We Know from the Selection Guide

The Connector operates in three distinct sub-modes:

| Sub-mode | Frequency | Overlap with Analogist | Distinctiveness |
|:---|:---|:---|:---|
| **Cross-domain import** | ~35% | HIGH — same cognitive operation as Analogist | Low — largely redundant with Analogist |
| **Structural isomorphism** | ~30% | LOW — "how are X and Y actually the same problem?" | HIGH — unique cognitive operation |
| **Recombinant innovation** | ~35% | LOW — "what if we combined X + Y?" | HIGH — unique, most selfless questions |

Additional characteristics:
- ~30-40% overlap with Analogist concentrated in the import sub-mode
- Distinctiveness vs Systems Thinker is HIGH (~80-85%)
- Topic-sensitive (CV=17.5%) — recombinant mode strongest on conceptually complex topics, falls back to Analogist-like import on simpler topics
- Guide recommendation: "Do NOT include alongside Analogist at medium effort — choose one"
- Guide note: "Likely adds most value in Phase 3 and 4; Phase 2B can often get similar benefits from Analogist + Systems Thinker"

### Research Questions

- **RQ14a:** At 5-8 questions (the Perspective persona range), does the Connector maintain the same discrete, focused question quality as the Analogist?
- **RQ14b:** How do the three sub-modes distribute at 5-8 questions? Does the model prioritize import (redundant with Analogist) or isomorphism/recombination (distinctive)?
- **RQ14c:** Does cluster structure naturally separate sub-modes, enabling round-robin selection to favor distinctive questions?
- **RQ14d:** On topics where the orchestrator would choose Connector over Analogist (cross-domain reconciliation topics), does the Connector's output quality match or exceed the Analogist's?
- **RQ14e:** What topic characteristics reliably trigger the Connector's distinctive modes (isomorphism, recombination) vs its redundant mode (import)?

### The Analogist/Connector Swap Decision

The orchestrator must decide when to swap. The persona selection guide says to use the Connector "when the topic spans multiple domains that must be reconciled." This investigation should produce clearer swap criteria:

- **Topic signals favoring Connector:** explicit multi-domain reconciliation, "how do we combine X and Y," intersection of distinct fields
- **Topic signals favoring Analogist:** single-domain exploration, "what can we learn from other fields," metaphor-seeking
- **Ambiguous cases:** need empirical guidance from test runs

---

## Investigation Task

### I-R7: Connector Volume-Quality Assessment and Analogist Comparison

**Key question:** Does the Connector function effectively as an Analogist replacement at 5-8 questions with Append treatment, and what topic characteristics trigger the swap?

**Research questions addressed:** RQ14a-e

**Prerequisite data generation:**

**Standard topics (3 topics × 3 volume levels = 9 runs):**
Generate Connector output on habit-tracker, space-party, and tool-library at:
- 5-8 questions
- 8-12 questions
- 10-15 questions

These provide baseline comparison with existing Analogist data at the same topics.

**Cross-domain topic (1 new topic × 3 volume levels = 3 runs):**
The standard three topics may not adequately exercise the Connector's distinctive modes. A 4th topic should be chosen that explicitly spans multiple domains requiring reconciliation. Candidates:
- "Designing a health-tech product that combines clinical workflow, patient engagement, and insurance billing" (healthcare × UX × finance)
- "Creating a sustainability curriculum that integrates environmental science, behavioral economics, and community organizing" (education × economics × activism)
- "Building a mixed-use community space that serves as library, makerspace, and social services hub" (civic × technical × social)

The chosen topic should also have Analogist test data generated for direct comparison.

**Personas to analyze:**
1. Connector (primary)
2. Analogist (comparison baseline — existing data from V1 + new cross-domain topic)

**Comparison criteria:**

1. **Volume-quality curve:** Assess Connector question quality across volume levels. Does it follow Perspective (5-8 optimal), Structural (8-12), or its own pattern?

2. **Sub-mode distribution by volume:** At each volume level, classify each question as import, isomorphism, or recombination. Does the distribution shift with volume? Key question: at 5-8, does the model preferentially generate distinctive modes (isomorphism, recombination) or fall back to import (Analogist-redundant)?

3. **Cluster structure and sub-mode separation:** Do the Connector's thematic clusters naturally map to sub-modes? If isomorphism questions cluster separately from import questions, the round-robin selection strategy from D1 would naturally favor diversity across modes.

4. **Head-to-head with Analogist:** On the same topics, compare:
   - Question distinctiveness (which produces more unique reframings?)
   - Downstream utility (which questions would generate more diverse Phase 3 responses?)
   - Overlap with Tier 1 aggregate (which has more unique territory?)

5. **Cross-domain topic performance:** On the new multi-domain topic:
   - Does the Connector activate its distinctive modes (isomorphism, recombination) more than on standard topics?
   - Does the Analogist still perform well, or does the multi-domain context expose its limitations?
   - Is the quality gap between Connector and Analogist larger on this topic type?

6. **Topic sensitivity:** Compare Connector output quality across all 4 topics. Validate the guide's CV=17.5% finding and determine whether topic complexity reliably predicts sub-mode activation.

**Expected output:**

- Connector volume-quality curve with category assignment and filler onset
- Sub-mode distribution analysis by volume and topic
- Head-to-head comparison with Analogist across topics
- Append treatment confirmation (does round-robin cluster selection work for Connector?)
- Swap criteria: specific topic characteristics that should trigger Connector over Analogist
- Recommended volume range (expected: 5-8, matching other Perspective personas)

**Priority:** Low — the Connector is an optional Analogist replacement. The core Perspective persona (Analogist) is already configured. This investigation refines when the swap adds value.

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/R7_connector-volume-quality.md`

---

## Dependency Notes

- **Depends on:** D1 (Append strategy the Connector would inherit), V1 take 2 (Analogist baseline data)
- **Independent of:** R5 (Tier 2) and R6 (other Tier 3) — can run in parallel
- **Blocks:** Connector swap criteria in persona selection guide, final Tier 3 Effort Level Mapping entry
- **Data generation:** 12 Connector runs (4 topics × 3 volumes) + 3 Analogist runs (1 new topic × 3 volumes) = 15 subagent runs

## Priority

**Low** — Optional persona swap refinement. Can run in parallel with R6 after core implementation is stable.

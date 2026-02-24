# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-24
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- V1 per-persona volume-quality (take 2) — establishes methodology and comparison framework
- Phase 2B persona selection guide — Tier 3 persona guidance and notes
- D2 Tier 1 Analytical/Structural effort mapping — establishes the synthesis context

---

## Background

### Context

Tier 3 question personas (**Accountant**, **Lawyer**, **Politician**, **Simplifier**, **Technical Expert**) are included only on **medium or high effort** and only when **specifically selected by the orchestrator** based on topic affinity. Their optimal volume ranges, Phase 2C method (synthesis vs append), and quality characteristics have not been validated.

The Connector is excluded from this investigation and handled separately in R7 due to its special relationship with the Analogist (Tier 1 Perspective persona replacement).

### What We Know from the Selection Guide

| Persona | Likely Phase 2C Method | Key Characteristics | Open Questions |
|:---|:---|:---|:---|
| **Accountant** | Synthesis | Fills financial gap in Tier 1 coverage. Complementary with Analyst. Quantified benchmarks, unit economics, reserve fund structuring. | What volume produces specific financial questions without over-constraining innovation? |
| **Lawyer** | Synthesis | Extreme Black Hat. Largest file sizes, 7-8 clusters. Heavy legal framing, low generative expansion. Risk of cognitive overload for synthesis. | Does lower volume reduce the over-clustering problem? Can synthesis handle the dense legal framing? |
| **Politician** | Synthesis | High variance (CV~30.3%). Governance, coalition, power dynamics. Doubles output for institutional topics. | How does volume interact with topic sensitivity? Should volume targets be topic-dependent? |
| **Simplifier** | Synthesis | Convergent via subtraction. 4-5 clusters. Low open-endedness. "Better as Phase 3 answerer." | At what volume does subtractive bias become problematic? Is there a minimum threshold for Phase 2B usefulness? |
| **Technical Expert** | Synthesis | Low volume, narrow clusters. Architecture, dependencies. Reinforces existing paradigms. | Does the paradigm-reinforcement problem worsen at higher volumes, or is it constant? |

### Directional Assessment from Prior Analysis

All five Tier 3 personas (excluding Connector) are expected to be **Synthesis** candidates:
- **Accountant** — financial questions overlap with Analyst territory; Analyst creates structure, Accountant fills with data
- **Lawyer** — evaluative/problem-framed questions overlap with Devil's Advocate risk territory
- **Politician** — governance/coalition questions overlap structurally with Audience Advocate and Devil's Advocate
- **Simplifier** — convergent questions overlap with analytical evaluation territory
- **Technical Expert** — architecture/implementation questions overlap with Analyst

None show the kind of distinctive framing (provocation, metaphor, narrative, paradigm challenge) that warrants Append treatment. However, this should be confirmed empirically.

### Research Questions

- **RQ13a:** What is the optimal volume range for each Tier 3 persona when selected for inclusion?
- **RQ13b:** Is Synthesis confirmed as the correct Phase 2C method for all five personas?
- **RQ13c:** At what volume does filler onset occur for each Tier 3 persona?
- **RQ13d:** For topic-sensitive personas (Politician, Technical Expert), should volume targets vary by topic type?
- **RQ13e:** Is the Simplifier viable for Phase 2B at all, or should it be moved to the excluded list (alongside Momentum Builder, Pragmatist, Synthesizer)?

---

## Investigation Task

### I-R6: Tier 3 Per-Persona Volume-Quality Assessment (Excluding Connector)

**Key question:** For each Tier 3 persona (excluding Connector), what is the optimal question volume, does the output belong in synthesis or append, and are any personas better excluded from Phase 2B entirely?

**Research questions addressed:** RQ13a-e

**Prerequisite data generation:** Test data must be generated for each Tier 3 persona across three topics at 3 volume levels:
- 5-8 questions (low-range test)
- 8-12 questions (mid-range test)
- 10-15 questions (high-range test)

**Topic selection considerations:**
- The standard three topics (habit-tracker, space-party, tool-library) should be used for consistency
- However, Tier 3 personas are topic-gated — some may produce weak output on topics outside their domain:
  - Accountant: strongest on business/budget topics (tool-library may be the best fit of the three)
  - Lawyer: strongest on regulated/liability topics (none of the three are ideal)
  - Politician: strongest on civic/institutional topics (tool-library is the closest)
  - Technical Expert: strongest on technical topics (habit-tracker is the closest)
  - Simplifier: stated goal must include simplification (none of the three naturally trigger this)
- Consider whether a 4th topic (e.g., "nonprofit budget planning" or "community zoning proposal") would better exercise the topic-gated personas

**Personas to analyze:**
1. Accountant
2. Lawyer
3. Politician
4. Simplifier
5. Technical Expert

**Comparison criteria:**

1. **Volume-quality curve:** Assess question quality across volume levels. Identify filler onset and optimal range.

2. **Synthesis confirmation:** Verify that questions have high thematic overlap with Tier 1 personas (→ Synthesis) rather than distinctive framing that would be lost (→ Append).

3. **Overlap mapping:** For each persona, measure overlap with its Tier 1 counterpart(s):
   - Accountant ↔ Analyst
   - Lawyer ↔ Devil's Advocate
   - Politician ↔ Audience Advocate, Devil's Advocate
   - Simplifier ↔ Analyst (convergent evaluation)
   - Technical Expert ↔ Analyst

4. **Topic sensitivity:** For Politician and Technical Expert, compare output quality across topics. Is the persona's value genuinely topic-dependent, or does it maintain utility across domains?

5. **Simplifier viability assessment:** Specific evaluation of whether the Simplifier adds value in Phase 2B or should be excluded. Criteria:
   - Does it produce genuinely open-ended questions or primarily convergent evaluations?
   - Does its subtractive framing complement or conflict with the synthesis group's output?
   - Would its questions be better posed directly in Phase 3 rather than generated independently?

6. **Cross-topic consistency:** Do findings hold or vary significantly by topic?

**Expected output:**

Per-persona assessment following V1 take 2 format:
- Volume-quality curve with filler onset
- Phase 2C method confirmation (Synthesis / Append / Exclude)
- Overlap assessment with Tier 1 counterparts
- Recommended volume range
- Topic sensitivity notes
- Simplifier: explicit keep/exclude recommendation with rationale

**Priority:** Low — Tier 3 personas are orchestrator-selected additions, not defaults. This investigation can run after R5 (Tier 2) completes.

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/R6_tier3-volume-quality.md`

---

## Dependency Notes

- **Depends on:** V1 take 2 methodology, D2 (synthesis input context)
- **Recommended sequence:** After R5 (Tier 2), so Tier 2 findings can inform whether Tier 3 analysis needs additional comparison criteria
- **Blocks:** Final Tier 3 configuration in Effort Level Mapping, potential Simplifier exclusion decision
- **Data generation:** 15 persona-topic combinations × 3 volume levels = 45 subagent runs (potentially + additional topic runs)

## Priority

**Low** — Tier 3 personas are optional, topic-gated additions. Not blocking core or high-effort implementation. Can run after R5 and in parallel with R7.

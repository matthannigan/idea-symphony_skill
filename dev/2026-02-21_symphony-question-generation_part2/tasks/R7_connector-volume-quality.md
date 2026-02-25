# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-24
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- V1 per-persona volume-quality (take 2) — establishes methodology and comparison framework
- D1 Perspective Persona Append Strategy — establishes the Append treatment the Connector would inherit
- Phase 2B persona selection guide — Connector guidance and Analogist comparison notes
- R8 Analogist validation findings — `findings/R8_tier1-volume-quality-validation_analogist.md`
- Connector merged test data — `test-runs/symphony-phase2-questions-persona-eval/_merged/PERSONA_ALL_connector_2026-02-24.md`
- Analogist merged test data — `test-runs/symphony-phase2-questions-persona-eval/_merged/PERSONA_ALL_analogist_2026-02-24.md`
- All topic requests — `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md`

---

## Background

### Context

The **Connector** is a Tier 3 persona with a special status: when selected by the orchestrator, it **replaces the Analogist** in the Tier 1 Perspective group. This means it would inherit the Analogist's Phase 2C treatment (Append with round-robin cluster selection per D1) rather than following the standard Tier 3 synthesis path.

This replacement relationship and the Connector's mixed cognitive modes make it a distinct research problem from the other Tier 3 personas (investigated in R6).

The R8 Analogist validation (CONFIRMED) provides a strong baseline: the Analogist produces 6-8 questions per topic, exactly 3 clusters, zero filler, strong cross-topic consistency, and clean append suitability at all effort levels. Any Connector swap must perform comparably on these dimensions.

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

### R8 Analogist Baseline (Summary)

From the R8 validation (CONFIRMED):

| Metric | Analogist at q05-08 |
|:---|:---|
| **Mean question count** | 7.4 (range 6-8) |
| **Clusters** | Exactly 3, every topic |
| **Filler** | Zero detected |
| **Cross-topic consistency** | Strong; concrete-topic weakness predicted by V1 take 2 does not manifest at 5-8 |
| **Append suitability** | Excellent; self-contained questions, round-robin works at all effort levels |
| **Notable pattern** | Mycorrhizal network analogy appears in 4/10 topics (different structural parallels each time) |

### Research Questions

- **RQ14a:** At 5-8 questions, does the Connector maintain the same discrete, focused question quality as the Analogist?
- **RQ14b:** How do the three sub-modes distribute at 5-8 questions? Does the model prioritize import (redundant with Analogist) or isomorphism/recombination (distinctive)?
- **RQ14c:** Does cluster structure naturally separate sub-modes, enabling round-robin selection to favor distinctive questions?
- **RQ14d:** On topics where the orchestrator would choose Connector over Analogist (cross-domain reconciliation topics), does the Connector's output quality match or exceed the Analogist's?
- **RQ14e:** What topic characteristics reliably trigger the Connector's distinctive modes (isomorphism, recombination) vs its redundant mode (import)?
- **RQ14f:** Does the Connector inherit the Analogist's append characteristics (self-contained questions, predictable cluster structure, voice preservation under selection)?

### The Analogist/Connector Swap Decision

The orchestrator must decide when to swap. The persona selection guide says to use the Connector "when the topic spans multiple domains that must be reconciled." This investigation should produce clearer swap criteria:

- **Topic signals favoring Connector:** explicit multi-domain reconciliation, "how do we combine X and Y," intersection of distinct fields
- **Topic signals favoring Analogist:** single-domain exploration, "what can we learn from other fields," metaphor-seeking
- **Ambiguous cases:** need empirical guidance from test runs

---

## Investigation Task

### I-R7: Connector Volume-Quality Assessment and Analogist Head-to-Head

**Key question:** Does the Connector function effectively as an Analogist replacement at 5-8 questions with Append treatment, and what topic characteristics trigger the swap?

**Research questions addressed:** RQ14a-f

**Execution model:** Single Opus subagent reading both Connector and Analogist data for direct head-to-head comparison across all 10 topics.

### Test Data

Test data exists for both personas across all 10 topics at q05-08:

| Persona | PERSONA_ALL Size | Volume Level | Topics | Runs |
|:---|:---|:---|:---|:---|
| Connector | 46K | q05-08 (×10) | All 10 | 10 |
| Analogist | 42K | q05-08 (×10) | All 10 | 10 |

Both datasets cover the same 10 topics, enabling direct per-topic comparison.

**Volume level note:** Only q05-08 was tested. The original R7 design called for 3 volume levels (5-8, 8-12, 10-15) to establish a full volume-quality curve. Since the Connector would inherit the Perspective persona slot (fixed at 5-8 regardless of effort), testing at the operational volume is sufficient for the swap decision. If findings suggest the Connector might perform better at a different range, additional data generation could be recommended as a follow-up.

### Topic Design for Swap Analysis

The 10 topics span a range of multi-domain complexity, from strong Connector triggers to neutral/weak cases:

| Topic | Multi-Domain Complexity | Expected Connector Advantage |
|:---|:---|:---|
| **wearable-device** | HIGH — hardware, ML, medical privacy, consumer product, FDA regulation | Strong — requires reconciling genuinely distinct technical fields |
| **school-consolidation** | HIGH — education policy, municipal finance, community identity, governance | Moderate — domains are facets of one institutional challenge |
| **property-management** | MODERATE — hospitality, real estate, regulation, community relations | Moderate — operational domains with regulatory overlay |
| **career-change** | MODERATE — healthcare, law, personal finance, identity transition | Possible — cross-domain career bridging |
| **food-truck** | MODERATE — culinary, business, regulation, community | Possible — but domains less distinct |
| **mobile-app** | LOW — single product domain (feature prioritization) | Weak — simplification, not reconciliation |
| **youth-mentorship** | LOW — single programmatic domain | Weak — unless connecting across faith/justice/education |
| **habit-tracker** | LOW — single product domain | Weak — unless connecting behavioral science + tech |
| **space-party** | LOW — single event domain | Weak — concrete, bounded topic |
| **tool-library** | LOW — single community domain | Weak — unless connecting library science + community development |

This range enables testing whether the Connector's distinctive modes activate predictably based on topic complexity.

### Subagent Design

A single subagent receives:

1. **REQUESTS_ALL.md** (~17K) — All 10 topic descriptions for context
2. **PERSONA_ALL_connector_2026-02-24.md** (~46K) — All Connector test runs
3. **PERSONA_ALL_analogist_2026-02-24.md** (~42K) — All Analogist test runs for comparison
4. **R8 Analogist validation excerpt** — Key findings from `findings/R8_tier1-volume-quality-validation_analogist.md`

Total input: ~110K, well within context.

### Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt:

````
You are conducting a head-to-head comparison between two question-generation personas — the **Connector** (Tier 3) and the **Analogist** (Tier 1 Perspective) — to determine whether and when the Connector should replace the Analogist in the Phase 2B persona roster.

## Context

The Connector is a Tier 3 persona that, when selected, **replaces** the Analogist (not added alongside). It would inherit the Analogist's Perspective persona treatment: generate 5-8 questions, append to Phase 2C output via round-robin cluster selection (low=3, medium=5, high=all).

The Connector operates in three sub-modes:
- **Cross-domain import** (~35%) — same operation as the Analogist (bringing metaphors from other fields). Redundant with Analogist.
- **Structural isomorphism** (~30%) — "how are X and Y actually the same problem?" Distinctive.
- **Recombinant innovation** (~35%) — "what if we combined X + Y?" Distinctive, most selfless.

The Analogist's R8 validation (CONFIRMED) establishes the baseline: 6-8 questions, exactly 3 clusters, zero filler, excellent append suitability, strong cross-topic consistency.

## Task

Read the following files:
1. `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` — all 10 topic descriptions
2. `test-runs/symphony-phase2-questions-persona-eval/_merged/PERSONA_ALL_connector_2026-02-24.md` — all Connector test runs
3. `test-runs/symphony-phase2-questions-persona-eval/_merged/PERSONA_ALL_analogist_2026-02-24.md` — all Analogist test runs
4. The R8 Analogist validation excerpt below

Then produce a head-to-head comparison and swap recommendation.

## R8 Analogist Validation Excerpt

{paste the full contents of findings/R8_tier1-volume-quality-validation_analogist.md}

## Assessment Criteria

### 1. Connector Quality Assessment (RQ14a)
At 5-8 questions, assess whether the Connector produces the same quality as the Analogist:
- Question focus and specificity
- Filler rate
- Volume compliance (does it hit 5-8?)
- Cluster structure (count, consistency, well-formedness)

### 2. Sub-Mode Distribution (RQ14b)
For each topic, classify each Connector question as:
- **Import** — brings a metaphor/framework from another domain (Analogist-like)
- **Isomorphism** — identifies structural equivalence between domains
- **Recombination** — proposes combining elements from different domains

Report distribution per topic and overall. At 5-8 questions, does the model preferentially generate distinctive modes (isomorphism, recombination) or fall back to import?

### 3. Cluster-Mode Alignment (RQ14c)
Do thematic clusters naturally separate sub-modes? If import questions cluster separately from isomorphism/recombination questions, round-robin selection would naturally favor diversity across modes. Assess whether round-robin at low (3), medium (5), and high (all) effort levels would capture the Connector's distinctive value.

### 4. Head-to-Head Comparison (RQ14d)
For each of the 10 topics, compare Connector vs Analogist on:
- **Question distinctiveness:** Which produces more unique reframings?
- **Downstream utility:** Which questions would generate more diverse Phase 3 responses?
- **Unique territory:** Which has more territory not covered by any other Tier 1 persona?
- **Per-topic winner:** On each topic, which persona would you recommend for the Perspective slot?

### 5. Topic-Dependent Swap Signal (RQ14e)
Identify which topic characteristics predict when the Connector outperforms the Analogist:
- Does multi-domain complexity reliably activate distinctive modes?
- On simple/single-domain topics, does the Connector fall back to import mode (becoming a weaker Analogist)?
- Propose specific swap criteria the orchestrator could use

### 6. Append Strategy Suitability (RQ14f)
Assess whether the Connector inherits the Analogist's append characteristics:
- Self-contained questions (no inter-question dependencies)?
- Predictable cluster structure?
- Voice preservation under round-robin selection?
- Would 3 selected questions (low effort) still capture the Connector's distinctive value?

## Output Format

```markdown
# R7 Assessment: Connector vs Analogist Head-to-Head

## Connector Quality Summary

**Volume compliance:** {range across topics}
**Cluster structure:** {count, consistency}
**Filler rate:** {estimate}
**Overall quality vs Analogist:** {Comparable | Better | Worse | Topic-dependent}

## Sub-Mode Distribution

| Topic | Import | Isomorphism | Recombination | Total |
|:---|:---|:---|:---|:---|
{per-topic breakdown}
| **Overall** | {`%`} | {`%`} | {`%`} | |

{Analysis of distribution patterns}

## Cluster-Mode Alignment

{Do clusters separate by sub-mode? Does round-robin naturally favor distinctive modes?}

## Head-to-Head: Per-Topic Comparison

### {topic_name}
- **Connector strengths:** {brief}
- **Analogist strengths:** {brief}
- **Winner for Perspective slot:** {Connector | Analogist | Tie}

{Repeat for all 10 topics}

### Summary Table

| Topic | Multi-Domain Complexity | Connector Sub-Mode Balance | Winner |
|:---|:---|:---|:---|
{per-topic summary}

## Swap Criteria Recommendation

**When to swap Analogist → Connector:**
{Specific, actionable criteria the orchestrator can apply}

**When to keep Analogist:**
{Conditions where the Analogist is the better choice}

**Ambiguous cases:**
{Guidance for borderline topics}

## Append Strategy Assessment

{Does round-robin work for the Connector? Comparison with Analogist's append behavior.}

## Summary Recommendation

{Concise recommendation: swap criteria, volume range, append confirmation, any caveats}
```

Save your output to: dev/2026-02-21_symphony-question-generation_part2/findings/R7_connector-volume-quality.md
````

### Expected Output

**Single assessment report** containing:
- Connector quality assessment at 5-8
- Sub-mode distribution by topic
- Cluster-mode alignment analysis
- Head-to-head per-topic comparison with winner designation
- Swap criteria recommendation for the orchestrator
- Append strategy suitability confirmation
- Summary recommendation

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/R7_connector-volume-quality.md`

---

## Dependency Notes

- **Depends on:** D1 (Append strategy the Connector would inherit), V1 take 2 (methodology), R8 Analogist validation (baseline)
- **Independent of:** R5 (Tier 2) and R6 (other Tier 3) — can run in parallel
- **Blocks:** Connector swap criteria in persona selection guide, final Tier 3 Effort Level Mapping entry
- **Data generation:** Not required — Connector and Analogist data already exist at q05-08 across all 10 topics (10 runs each)

## Priority

**Low** — Optional persona swap refinement. Can run in parallel with R6 after core implementation is stable.

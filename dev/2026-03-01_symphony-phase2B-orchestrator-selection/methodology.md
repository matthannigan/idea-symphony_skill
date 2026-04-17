# Phase 2B Orchestrator Selection Investigation Methodology

**Date:** 2026-03-01
**Parent:** Voice memo `dev/!voice-memos/2026-02-27_symphony-phases2C&2B.md`
**Prior work:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md` (Phase 2B research — all persona/volume/tier decisions finalized)
**Depends on:** R5, R6, R7 findings (Tier 2/3 decisions, Connector swap criteria)

---

## Executive Summary

Phase 2B research established a three-tier roster with deterministic assignments for Tier 1 (always included) and Tier 2 (high effort only), but **orchestrator judgment** is required for two decisions:

1. **Tier 3 persona selection** — choosing 0-1 (medium) or 0-2 (high) specialist personas based on topic characteristics
2. **Connector/Analogist swap** — deciding whether the topic requires inter-domain reconciliation (Connector) or single-domain reframing (Analogist)

This investigation tests whether the orchestrator instructions reliably produce the correct persona assignments across the 10 established test topics. It validates the **selection rubric**, not the question generation process.

**Core question:** Can we write orchestrator instructions that reliably produce expected persona roster decisions across diverse topic types?

---

## Research Questions

| ID | Question | Status |
|----|----------|--------|
| OQ1 | **Tier 3 selection accuracy:** Does the orchestrator correctly identify topic triggers for Accountant, Lawyer, Politician, Technical Expert, and Connector? | Open |
| OQ2 | **Connector/Analogist swap accuracy:** Does the orchestrator correctly apply the swap criteria from R7? | Open |
| OQ3 | **Selection threshold by effort:** Does the orchestrator correctly apply stricter thresholds at medium (strong trigger only) vs. high (moderate+ trigger)? | Open |
| OQ4 | **Rationale quality:** Does the orchestrator provide clear, topic-grounded rationale for its selections, not generic template reasoning? | Open |
| OQ5 | **PLAN.md documentation:** Does the orchestrator produce a well-structured roster plan in PLAN.md with persona assignments, volume ranges, and rationale? | Open |

---

## Expected Assignments

### Phase 1: Establish Ground Truth

Before testing orchestrator prompts, we need a ground truth document that defines the expected persona assignments for each of the 10 test topics at medium and high effort.

| Step | Task | Output |
|------|------|--------|
| GT1 | For each of the 10 test topics, determine expected Tier 3 selections at medium and high effort based on R5, R6, R7 findings and topic characteristics | `ground-truth/expected-assignments.md` |
| GT2 | For each of the 10 test topics, determine expected Connector/Analogist decision based on R7 swap criteria | Included in GT1 output |
| GT3 | Document the rationale for each expected assignment, citing specific topic characteristics that trigger selection | Included in GT1 output |

### Ground Truth Structure

For each topic:

```markdown
### [Topic Name]

**Topic characteristics:** [brief description of domain, complexity, stakeholders]

**Connector/Analogist decision:** [Analogist (default) | Connector (swap)]
**Swap rationale:** [If Connector: what inter-domain reconciliation is required]

**Tier 3 at medium effort (0-1, strong triggers only):**
- [Persona] — [trigger rationale] | OR
- None — [no strong triggers present]

**Tier 3 at high effort (0-2, moderate+ triggers):**
- [Persona] — [trigger rationale]
- [Persona] — [trigger rationale] | OR
- [Persona] — [trigger rationale] (only 1 meets threshold) | OR
- None — [no triggers present]

**Confidence:** [High | Medium | Low]
**Ambiguous cases:** [any topics where reasonable people could disagree]
```

### Expected Trigger Mapping

Based on the Phase 2B findings, these are the known topic-persona affinities:

| Persona | Selection Trigger (from R6/R7) | Strong Trigger Keywords/Patterns |
|---------|-------------------------------|----------------------------------|
| Accountant | Financial structure central | business, nonprofit, budget, startup, pricing, revenue, funding |
| Lawyer | Regulatory/compliance exposure | liability, zoning, data privacy, regulatory frameworks, permits |
| Politician | Stakeholder politics central | governance, coalition, institutional change, public policy, organizational politics |
| Technical Expert | Genuine technical architecture | engineering tradeoffs, hardware-software, ML/AI, system design |
| Connector | Inter-domain reconciliation (replaces Analogist) | career transitions across fields, multi-system institutional change, cross-disciplinary design |

---

## Phase 2: Orchestrator Prompt Testing

### Goal

Test orchestrator prompt variants to verify they produce correct persona roster decisions across the 10 test topics.

### What We're Testing

The orchestrator receives:
- `REQUEST.md` (topic description)
- `persona-selection-guide_Phase2B.md` (tier structure, selection triggers, effort-level mapping)
- Instructions to produce a roster plan

The orchestrator outputs:
- PLAN.md section documenting: which personas generate questions, at what volume range, at what effort level, with rationale for any Tier 3 inclusions or Connector swap

### Prompt Variants

| Variant | Description | Key Differences |
|---------|-------------|-----------------|
| O-V1 | **Reference-only** | Orchestrator reads `persona-selection-guide_Phase2B.md` in full; instructions say "apply the selection criteria from the guide" |
| O-V2 | **Embedded triggers** | Key selection triggers and decision rules embedded directly in the orchestrator prompt; guide referenced for detail |
| O-V3 | **Structured decision checklist** | Orchestrator follows an explicit checklist: (1) evaluate each Tier 3 trigger, (2) evaluate Connector swap, (3) apply effort threshold, (4) document decisions |

### Testing Protocol

For each prompt variant, for each of 10 topics, at both medium and high effort (20 runs per variant, 60 runs total):

1. Provide the orchestrator with REQUEST.md for that topic
2. Ask it to produce the Phase 2B Step 1 roster plan
3. Compare the output against ground truth

### Evaluation Metrics

| Metric | How Measured |
|--------|-------------|
| **Tier 3 selection accuracy** | % of topics where orchestrator's Tier 3 selections match ground truth |
| **Connector/Analogist accuracy** | % of topics where swap decision matches ground truth |
| **False positive rate** | % of topics where orchestrator includes a Tier 3 persona that shouldn't be included |
| **False negative rate** | % of topics where orchestrator misses a Tier 3 persona that should be included |
| **Threshold sensitivity** | Does orchestrator correctly apply medium (strong only) vs. high (moderate+) thresholds? |
| **Rationale quality** | Are rationales topic-specific and grounded in actual topic characteristics? (qualitative assessment) |
| **Volume accuracy** | Does orchestrator assign correct volume ranges per persona per effort level? |

### Scoring

For each run, score:
- **Correct:** All persona assignments match ground truth (including "none selected" when appropriate)
- **Partially correct:** Most assignments match, but 1 error (extra or missing persona)
- **Incorrect:** Multiple errors or fundamentally wrong roster

### Known Ambiguities

Some topics may have genuinely ambiguous Tier 3 triggers (e.g., a community project with moderate but not strong financial dimensions — does the Accountant get selected?). Document these during GT1 and score them as "acceptable either way" during evaluation.

---

## Phase 3: Prompt Refinement

### Goal

Based on Phase 2 results, refine the best-performing prompt variant to achieve consistent accuracy.

### Process

1. Identify error patterns from Phase 2:
   - Are certain Tier 3 personas consistently over-selected (false positives)?
   - Are certain triggers missed (false negatives)?
   - Is the Connector/Analogist swap decision reliable?
   - Does effort-level threshold application work?

2. Refine the prompt to address identified weaknesses:
   - Strengthen/weaken specific trigger language
   - Add anti-pattern examples for common false positives
   - Clarify threshold differences between medium and high effort

3. Re-test refined prompt on all 10 topics at both effort levels

4. Continue iteration until:
   - Tier 3 selection accuracy >= 80% across topics
   - Connector/Analogist accuracy >= 90% across topics
   - No systematic false positive or false negative patterns

---

## Phase 4: PLAN.md Integration

### Goal

Finalize the PLAN.md format for Phase 2B Step 1 output and validate that the orchestrator produces it consistently.

### Expected PLAN.md Roster Section

```markdown
## Phase 2B: Question Generation Roster

**Effort Level:** [low/medium/high]

### Tier 1 Personas (always included)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Questioner | Analytical | [range per effort] |
| Analyst | Analytical | [range per effort] |
| Devil's Advocate | Structural | [range per effort] |
| Appreciative Inquirer | Structural | [range per effort] |
| Audience Advocate | Structural | [range per effort] |
| Systems Thinker | Structural | [range per effort] |
| Provocateur | Perspective | 5-8 |
| [Analogist or Connector] | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

[Table if high effort, "N/A — medium/low effort" otherwise]

### Tier 3 Personas (orchestrator-selected)

[Table with selection rationale, or "None selected — no strong triggers for this topic"]

### Selection Rationale

**Connector/Analogist decision:** [decision + rationale]
**Tier 3 selections:** [rationale for each, or rationale for no selection]
```

---

## Sequencing

```
Phase 1: Ground Truth Establishment
├── GT1: Expected assignments per topic per effort
├── GT2: Expected Connector/Analogist decisions
└── GT3: Documented rationale

Phase 2: Orchestrator Prompt Testing (after Phase 1)
├── O-V1: Reference-only (20 runs)
├── O-V2: Embedded triggers (20 runs)
└── O-V3: Structured checklist (20 runs)

Phase 3: Prompt Refinement (after Phase 2)
├── Address error patterns
├── Refine best variant
└── Re-test until accuracy targets met

Phase 4: PLAN.md Integration (after Phase 3)
├── Finalize PLAN.md format
└── Validate consistent output
```

**Parallelism with Phase 2C synthesis research:**
This entire investigation runs independently of the Phase 2C synthesis research. They share the same 10 test topics and the same Phase 2B findings as inputs, but have no blocking dependencies. The orchestrator selection decisions produced here will eventually feed into the Phase 2C test data (the 30 assembled test files need to know which Tier 3 personas to include), so GT1 should be completed early to unblock Phase 2C's data assembly step (A1).

---

## Expected Outputs

### Per-Phase Deliverables

| Phase | Deliverable |
|-------|-------------|
| Phase 1 | Ground truth assignments for 10 topics x 2 effort levels |
| Phase 2 | Accuracy scores for 3 prompt variants (60 runs total) |
| Phase 3 | Refined orchestrator prompt with accuracy benchmarks |
| Phase 4 | Finalized PLAN.md roster section format |

### Final Deliverables

1. **Orchestrator selection instructions** — embedded in SKILL.md or as a referenced prompt file
2. **PLAN.md roster format** — standardized format for Phase 2B Step 1 output
3. **Accuracy benchmarks** — expected accuracy rates for Tier 3 selection and Connector/Analogist swap
4. **Known ambiguities** — documented topics/triggers where orchestrator judgment is genuinely uncertain

---

## Relationship to Phase 2B Remaining Items

| Item | Relationship |
|------|-------------|
| **P1: Provocateur integration** | Independent — P1 tests Phase 3, not orchestrator selection |
| **C1: Clustering vs. flat** | Independent — C1 tests synthesis format, not orchestrator selection |
| **S1: Synthesis gap analysis** | Independent — subsumed by the Phase 2C synthesis investigation |

---

**Last Updated:** 2026-03-01
**Based on:** Voice memo (2026-02-27), Phase 2B methodology and findings (R5, R6, R7)

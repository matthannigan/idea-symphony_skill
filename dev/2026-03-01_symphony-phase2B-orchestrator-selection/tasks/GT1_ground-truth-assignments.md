# Phase 2B Orchestrator Selection — Ground Truth Establishment

**Date:** 2026-03-01
**Parent:** `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md`
**Inputs:**
- Parent methodology — `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md` (Phase 1 Ground Truth requirements, Expected Trigger Mapping)
- Persona selection guide — `idea-symphony/references/persona-selection-guide_Phase2B.md` (Tier 3 guidance, Connector swap criteria, Effort Level Mapping, Topic Affinity Hints)
- R5 findings — `dev/2026-02-21_symphony-question-generation_part2/findings/R5_tier2-volume-quality.md` (Tier 2 decisions)
- R6 findings — `dev/2026-02-21_symphony-question-generation_part2/findings/R6_tier3-volume-quality.md` (Tier 3 decisions, Politician Append change, Simplifier exclusion)
- R7 findings — `dev/2026-02-21_symphony-question-generation_part2/findings/R7_connector-volume-quality.md` (Connector/Analogist swap criteria)
- All topic requests — `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` (10 test topics)

---

## Background

### Context

Phase 2B's persona roster has been finalized through prior investigations (R5, R6, R7, R8) and documented in `persona-selection-guide_Phase2B.md`. Tier 1 and Tier 2 assignments are deterministic — all Tier 1 personas are always included (with Analogist↔Connector swap as the only Tier 1 variability), and all Tier 2 personas are always included at high effort. The remaining judgment calls rest with the orchestrator:

1. **Tier 3 selection** — 0–1 personas at medium (strong trigger only), 0–2 at high (moderate+ trigger), drawn from Accountant, Lawyer, Politician, Technical Expert
2. **Connector/Analogist swap** — whether the topic requires inter-domain reconciliation (Connector) or single-domain reframing (Analogist, default)

Before we can test orchestrator prompt variants (O1) or iterate on a refined prompt (PR1), we need a canonical answer key for the 10 test topics at both medium and high effort. That answer key is the output of this task.

### What We Know

From the persona selection guide and R5/R6/R7 findings:

| Persona | Tier | Phase 2C Method | Selection Trigger | Strong Trigger Keywords / Patterns |
|---|---|---|---|---|
| **Accountant** | Tier 3 | Synthesis | Financial structure central | "business," "nonprofit," "budget," "startup," "pricing," "revenue," unit economics, funding mechanisms, community budgeting |
| **Lawyer** | Tier 3 | Synthesis | Regulatory/compliance exposure (trigger on regulatory need, not legal keywords) | liability, zoning, data privacy with regulatory frameworks, permitting, compliance mandates |
| **Politician** | Tier 3 | Append | Stakeholder politics central | governance, coalition, institutional change, regulatory dynamics, public policy, organizational politics |
| **Technical Expert** | Tier 3 | Synthesis | Genuine technical architecture | engineering tradeoffs, hardware-software co-design, ML/AI systems, sensor fusion, system design |
| **Connector** | Tier 3 (Analogist replacement) | Append (replaces Analogist) | Inter-domain reconciliation | career transitions across fields, multi-system institutional change, cross-disciplinary design, mergers spanning distinct systems |

From the Phase 2B selection guide:

- **Effort threshold:** Medium = strong trigger only (0–1). High = moderate+ trigger (0–2).
- **Connector default:** Analogist. Swap only when topic requires bridging distinct systems that constrain each other.
- **Known false-positive traps:** Career-change (keyword "lawyer" / "law school" without regulatory exposure → Lawyer false positive); Technical Expert misfiring on non-technical topics via metaphor overuse ("legacy code" for career change).
- **Simplifier is fully excluded** (R6 follow-up finding). Not a ground-truth candidate.

### The 10 Test Topics

From `REQUESTS_ALL.md`, the 10 test topics are:

| # | Topic | Known Primary Triggers (from R6 topic design table) |
|---|---|---|
| 1 | habit-tracker | (original topic — no strong Tier 3 trigger) |
| 2 | space-party | (original topic — no strong Tier 3 trigger) |
| 3 | tool-library | Politician (civic/governance) |
| 4 | food-truck | Accountant (unit economics), Politician (city ordinance politics) |
| 5 | property-management | Lawyer, Accountant, Politician (3-way forced-choice) |
| 6 | youth-mentorship | Lawyer (background checks, mandatory reporting, HIPAA-adjacent) |
| 7 | school-consolidation | Politician (coalition-building), Accountant (fund balance) |
| 8 | mobile-app | (Simplifier was the design target — excluded; no strong Tier 3 trigger) |
| 9 | wearable-device | Technical Expert (on-device ML, hardware-software), Lawyer (HIPAA/FDA implicit) |
| 10 | career-change | **False-positive trap for Lawyer** (keyword-driven); personal/experiential, no strong Tier 3 trigger |

Ground truth needs to encode not only which personas get selected but which are *false-positive traps* to document where downstream accuracy scoring should expect the orchestrator to reject a spurious signal.

### Research Questions

- **RQ-GT1a:** What are the expected Tier 3 persona selections for each of the 10 test topics at medium effort (0–1 strong trigger only)?
- **RQ-GT1b:** What are the expected Tier 3 persona selections for each of the 10 test topics at high effort (0–2 moderate+ triggers)?
- **RQ-GT1c:** What is the expected Connector/Analogist decision for each topic?
- **RQ-GT1d:** For each topic, what topic characteristics ground the selection/non-selection — i.e., what rationale cites specific REQUEST.md content rather than generic trigger language?
- **RQ-GT1e:** Which topics have genuinely ambiguous Tier 3 triggers where reasonable experts would disagree, and how should those be handled in scoring?

---

## Investigation Task

### I-GT1: Ground Truth Persona Assignments for 10 Topics × 2 Effort Levels

**Key question:** What is the correct persona roster for each of the 10 test topics at medium and high effort, and what topic characteristics justify each call?

**Research questions addressed:** RQ-GT1a–e

**Execution model:** 1 Opus subagent reads the selection guide, prior findings, and all 10 REQUESTs; produces the ground-truth assignment file plus an analysis companion. A human review pass follows before ground truth is marked canonical.

### Test Data

No new data generation required. Inputs are:

1. `REQUESTS_ALL.md` (~17K) — all 10 topic descriptions
2. `persona-selection-guide_Phase2B.md` (~40K) — full Tier 3 guidance and Connector swap criteria
3. R5/R6/R7 findings summaries — only the conclusions affect ground truth; sub-findings are not needed in full

Total input: ~80–100K, well within context.

### Subagent Design

Single Opus subagent receives all inputs and produces two deliverables in one pass:

1. **Canonical ground truth** — `ground-truth/expected-assignments.md`, matching the "Ground Truth Structure" template in methodology.md
2. **Analysis companion** — `findings/GT1_ground-truth-assignments.md`, documenting how the ground truth was derived, confidence distribution, and ambiguous cases requiring human adjudication

### Subagent Prompt

Spawn a subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt:

````
You are establishing the ground truth answer key for an orchestrator-selection investigation. Downstream tasks (O1, PR1, PI1) will score orchestrator prompt outputs against this ground truth, so your output must be deterministic, defensible, and grounded in specific topic characteristics.

## Task

Read the following files in full:

1. `dev/2026-03-01_symphony-phase2B-orchestrator-selection/methodology.md` — the investigation methodology. Read especially the "Expected Assignments" section and the "Ground Truth Structure" template.
2. `idea-symphony/references/persona-selection-guide_Phase2B.md` — the selection rubric. Pay close attention to:
   - Tier 3 guidance table (Accountant, Lawyer, Politician, Technical Expert)
   - Connector guidance and swap criteria (Keep Analogist / Swap to Connector)
   - Effort Level Mapping (medium = 0–1 strong trigger only; high = 0–2 moderate+ trigger)
   - Topic Affinity Hints table
3. `dev/2026-02-21_symphony-question-generation_part2/findings/R6_tier3-volume-quality.md` — confirms Politician → Append, Simplifier → fully excluded, and the career-change false-positive trap for Lawyer/Technical Expert.
4. `dev/2026-02-21_symphony-question-generation_part2/findings/R7_connector-volume-quality.md` — Connector vs Analogist head-to-head with swap criteria.
5. `test-runs/symphony-phase2-questions-persona-eval/_merged/REQUESTS_ALL.md` — the 10 test topic descriptions.

## Deliverable 1: Canonical Ground Truth

Save to: `dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md`

For each of the 10 topics (habit-tracker, space-party, tool-library, food-truck, property-management, youth-mentorship, school-consolidation, mobile-app, wearable-device, career-change), produce a section using the template from methodology.md:

```markdown
### [Topic Name]

**Topic characteristics:** [2–3 sentence summary of domain, complexity, stakeholders — quote or paraphrase specific REQUEST.md content]

**Connector/Analogist decision:** [Analogist (default) | Connector (swap)]
**Swap rationale:** [If Connector: specify what inter-domain reconciliation is required, citing the REQUEST. If Analogist: briefly state why the swap criteria are not met.]

**Tier 3 at medium effort (0–1, strong triggers only):**
- [Persona] — [trigger rationale, quoting specific REQUEST content] | OR
- None — [explain why no trigger reaches "strong"]

**Tier 3 at high effort (0–2, moderate+ triggers):**
- [Persona] — [trigger rationale]
- [Persona] — [trigger rationale] | OR
- [Persona] — [trigger rationale] (only 1 meets moderate+ threshold) | OR
- None — [no triggers present]

**Confidence:** [High | Medium | Low]
**Ambiguous?** [No | Yes — describe the disagreement space]
**Known false-positive trap:** [None | Persona X — trap description]
```

Requirements for the ground-truth file:
- Rationale must cite specific topic content (a phrase, stakeholder, constraint, mechanism from the REQUEST), not generic trigger keywords.
- When medium = "None" and high has selections, explicitly state why the high triggers didn't meet the stricter medium threshold.
- When a topic is a known false-positive trap, call it out explicitly — this is data the downstream scoring uses.
- Be conservative. If you are between "strong" and "moderate," prefer "moderate" and mark the topic ambiguous. False positives are worse than false negatives for this investigation because they inflate roster size and cost.

## Deliverable 2: Analysis Companion

Save to: `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/GT1_ground-truth-assignments.md`

Document:

1. **Summary table** — 10 topics × 2 effort levels, showing Tier 3 selections and Connector/Analogist decision for each cell, plus a confidence column.
2. **Confidence distribution** — how many cells are High/Medium/Low confidence? Which persona judgments cluster at lower confidence?
3. **Ambiguous cases** — for each ambiguous cell, describe both plausible answers and recommend how scoring should handle them (options from methodology.md: exclude from denominator, accept either answer, score only rationale presence).
4. **False-positive traps identified** — which topics are traps, for which personas, and what prompt-design implication does each trap have for PR1?
5. **Guide gaps flagged** — any Tier 3 selection where the guide's trigger language is itself ambiguous enough that a reasonable orchestrator could get it wrong. These are candidates for PR1 to fix in the prompt or to escalate as guide edits.
6. **Handoff notes for A1 (Phase 2C)** — per methodology.md's Parallelism note, A1 needs this ground truth to assemble its 30 test files. Identify any cells A1 should treat as preliminary pending human adjudication.

## Constraints

- Do not run or simulate any orchestrator prompt. You are producing the answer key, not testing a prompt.
- If a topic has no strong Tier 3 trigger at medium, "None" is a valid and important answer — downstream scoring depends on the orchestrator correctly rejecting spurious triggers.
- If you would need information beyond what's in the REQUEST to make a call, note that gap — but do not fabricate topic content to resolve it.
- The Connector swap is an either/or — never "both." The Analogist is the default; justify any swap explicitly.
````

### Batching Strategy

Single subagent, single run. No parallelism.

### Human Review Step

After the subagent returns, the user (or a review pass) should:

1. Spot-check 3–4 ground-truth cells against the REQUEST content
2. Decide how to score the ambiguous cases identified in the analysis companion (refer to `discussion-questions.md` Q2 and Q9)
3. Mark the file canonical by updating a "Status: Canonical / Provisional" line at the top

Until the file is marked canonical, downstream tasks (O1, PR1, PI1) should treat it as provisional input.

### Expected Output

1. **`dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md`** — the canonical answer key consumed by O1, PR1, PI1.
2. **`dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/GT1_ground-truth-assignments.md`** — analysis of how ground truth was derived, confidence distribution, ambiguous cases, false-positive traps, guide gaps, A1 handoff notes.

---

## Dependency Notes

- **Depends on:** Finalized `persona-selection-guide_Phase2B.md` (complete as of 2026-02-25), R5/R6/R7 findings (complete), `REQUESTS_ALL.md` (complete).
- **Blocks:** O1 (cannot score without ground truth), PR1 (depends on O1), PI1 (depends on PR1).
- **Side-channel dependency:** Phase 2C synthesis investigation's A1 data assembly step needs ground truth early to determine which Tier 3 personas to include in the 30 assembled test files. Per methodology.md's Parallelism note, GT1 should be completed first among this investigation's tasks.
- **Data generation:** None required.

## Priority

**High** — First task in the investigation and a side-channel blocker for the parallel Phase 2C investigation. Low execution cost (single subagent, ~80K input, one-pass output), so there is no reason to delay.

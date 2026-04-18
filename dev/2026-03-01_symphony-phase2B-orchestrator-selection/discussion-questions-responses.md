# Idea Symphony Phase 2B Orchestrator Selection — Responses to Open Questions

Responses to `discussion-questions.md`, captured as Matt works through each section.

## Ground Truth Authoring

### Q1 — Authoring approach

**Decision:** Opus subagent authors ground truth, followed by a human review pass. (Matches the GT1 task file as scaffolded.)

**Why:** 20 cells is small enough that hand-authoring is viable, but a single-pass subagent reading the guide + R5/R6/R7 + all 10 REQUESTs produces more uniformly-structured rationale citations than hand-authoring across 20 cells. The human review pass catches judgment calls. Hand-authoring would also make O1 measure agreement with the human author rather than with the guide.

### Q2 — Scoring ambiguous cases

**Decision:** (b) — both plausible answers are recorded as acceptable; the orchestrator scores correct for either.

**Why:** Preserves the accuracy denominator (vs. option a), still discriminates variants on the unambiguous cells (vs. option c), and matches the hint in methodology.md.

**Caveat to apply:** If GT1 flags >30% of cells as ambiguous, treat that as a finding — the test set is too soft and needs tightening before O1 runs.

### Q3 — Confidence scoring granularity

**Decision:** Tiered (High / Medium / Low), as the GT1 task file already specifies.

**Why:** Trivial to produce in the same subagent pass. Lets PR1 weight errors — a miss on a High-confidence cell is a stronger refinement signal than a miss on a Low-confidence one. Binary collapses useful information.

**Mitigation:** Subagent must define its High/Medium/Low criteria at the top of `expected-assignments.md` to prevent calibration drift across 20 cells.

## Prompt Variant Scope

### Q4 — Where to author the exact text of O-V1/V2/V3

**Decision:** Author the three variant prompts inside O1 as a setup step, not inside GT1 and not as a separate prep file.

**Why:** The variant prompts are consumed only by O1's test harness. Keeping them adjacent to the runs makes it easy to trace which exact prompt text produced which scoring output. Matches the recommendation in the pre-work section of `discussion-questions.md`.

**Action:** Update the O1 task file so variant authoring is an explicit first step before the 60 runs kick off.

### Q5 — Pilot before committing to 60 runs

**Decision:** Run a small pilot — 1 topic × 2 efforts × 3 variants = 6 runs — before committing to the full 60.

**Why:** Catches structurally broken variants before burning a full 20-run batch on them. The cost is ~10% extra.

**Pilot topic:** **tool-library** (Politician expected strong at both effort levels; unambiguous enough that a failing variant is clearly broken, not unlucky).

**Gate:** If a variant fails the pilot on an unambiguous case, reshape it before committing its 20 runs. If all three pass the pilot, proceed to the full 60.

### Q6 — Samples per cell

**Decision:** 1× per cell for the first pass (60 runs total), with **targeted 2× re-runs on suspect cells** to distinguish systematic error from noise.

**Why:** Concentrates the stability budget where it matters (cells where a variant's answer looks wrong) rather than tripling runs globally to 180. The budget difference is meaningful given this investigation runs in parallel with Phase 2C.

**What counts as "suspect":** any cell where the orchestrator picks a Tier 3 persona that ground truth flags as a false-positive trap, or misses a High-confidence ground-truth selection. Re-run those specific cells 2 additional times and report stability in the variant findings.

## Effort Threshold Tests

### Q7 — Explicit effort-threshold sensitivity testing

**Decision:** Do not add new topics. Use the existing 10-topic set and have GT1 explicitly flag which cells exhibit threshold sensitivity (correct answer differs between medium and high effort for the same topic).

**Why:** The 10-topic set is fixed by prior Phase 2B work; introducing new topics would break comparability with R5/R6/R7. Letting GT1 surface threshold-sensitive cells preserves comparability and still gives O1/PR1 signal on threshold discipline.

**Fallback finding:** If GT1 identifies fewer than 3 threshold-sensitive cells across the 20, record that as a finding — the test set underweights threshold validation and PR1 cannot fully validate threshold discipline from it. Downstream work (future Phase 2B iterations) can address this with a supplementary topic set.

**Action for GT1:** Add a "Threshold-sensitive cells" subsection to the GT1 analysis companion listing every topic where the correct Tier 3 selection differs between medium and high effort.

### Q8 — Score Connector/Analogist swap separately from Tier 3

**Decision:** Score them separately, as methodology.md already specifies.

**Why:** They test different orchestrator capabilities — swap is a binary Tier 1 judgment; Tier 3 is a 0-to-N threshold-filtered selection. A composite score obscures where errors concentrate and makes PR1's refinement targeting fuzzier. The different accuracy thresholds (Connector ≥90%, Tier 3 ≥80%) only make sense under separate scoring.

## Refinement Stop Criteria

### Q9 — Plateau fallback

**Decision:** (a) Accept the plateau result and move to PI1, with (b) — re-examine the selection guide — unlocked as a conditional second path based on root-cause triage. Option (c) human-in-the-loop at orchestration time is out of scope.

**Hard rules for PR1:**

1. **Iteration cap = 4.** PR1 stops iterating on the prompt at 4 iterations regardless of whether thresholds were reached.
2. **Root-cause triage before accepting (a).** Classify remaining errors by the GT1 confidence of the cells they land on:
   - Errors concentrated on GT1-Low/Medium confidence cells → ceiling reflects genuine topic ambiguity → accept (a), document limitations, proceed to PI1.
   - Errors concentrated on GT1-High confidence cells → guide itself is likely underspecified → unlock (b) as a single guide-edit iteration (subject to Q10 rules below). If (b) still doesn't reach threshold, accept the result and proceed to PI1 with documented limitations.
3. **(c) is out of scope.** Human-in-the-loop at orchestration time would reshape the skill's runtime model, not its research output.

### Q10 — May PR1 propose edits to `persona-selection-guide_Phase2B.md`?

**Decision:** Yes, but only as explicit proposals — never as silent in-place edits. The prompt is the primary lever; guide edits are an escape hatch when the prompt has hit a diagnosable ceiling.

**Rules for PR1:**

- **Proposals go to a companion file:** `findings/PR1_proposed-guide-edits.md`. Each proposal names the cell(s) it fixes, the diagnosis ("prompt cannot fix this — underlying trigger language is ambiguous"), and the exact diff against the guide.
- **If PR1 applies a guide edit,** it must re-run the O-V1 baseline on all 20 cells to demonstrate no regression. This is the cost of touching a shared artifact that R5/R6/R7/R8 also depend on.
- **Prompt-only fixes are preferred** when they would work. Don't escalate to guide edits just because they'd be shorter.
- **Silent in-place guide edits are disallowed** — they break downstream comparability.

## PLAN.md Format

### Q11 — Methodology.md PLAN.md sketch: final or provisional?

**Decision:** Provisional. PI1 finalizes the format in a single pass that combines validation and schema-tightening — not a separate design phase.

**PI1 scope:**

1. Take the methodology.md sketch as the starting point.
2. Re-run all 20 cells with the refined PR1 prompt producing PLAN.md output.
3. Identify fields that are inconsistently populated or ambiguous across the 20 runs; propose a tightened schema.
4. Lock the final format into `findings/PI1_plan-md-template.md`.

**Why not a separate design step:** PI1 is already generating 20 outputs, so folding design into that pass is low-cost. A standalone design pass would be another turn for marginal benefit.

**Expected areas of schema tightening:** structured rationale fields (see Q12), volume-range syntax, per-persona vs. bundled rationale expression.

### Q12 — Structured vs. free-form Selection Rationale

**Decision:** Structured fields per Tier 3 decision, with a free-form `notes:` escape valve for genuinely ambiguous cases.

**Required structure per Tier 3 decision:**

```
Tier 3 selections:
  - Persona: [Accountant | Lawyer | Politician | Technical Expert]
    Trigger strength: [strong | moderate | none]
    Topic citation: "[direct quote or close paraphrase from REQUEST.md]"
    Decision: [include | exclude]
Connector/Analogist decision: [Analogist | Connector]
  Swap rationale: [brief, grounded in REQUEST content]
Notes: [free-form, for genuinely ambiguous cases only]
```

**Why structured:**
- Auditability — O1/PR1 scoring can mechanically verify `Trigger strength: strong` against ground truth.
- Forces the orchestrator to commit to a trigger strength rather than hedge in prose.
- Makes false-positive-trap detection automatable — `Trigger strength: strong` on a GT1-flagged trap is a clear, machine-checkable error.

**Escape valve:** `notes:` prevents over-constraint from producing wooden outputs on genuinely ambiguous cells. It must not replace the structured claims.

**Trigger-strength calibration:** If GT1 surfaces cells that resist clean `strong/moderate/none` bucketing, allow a `moderate-weak` fourth level — add it only if ≥2 cells need it, otherwise keep the 3-level scheme.

## Scheduling and Dependencies

### Q13 — Earliest-acceptable GT1 handoff to A1 (Phase 2C)

**Decision:** (c) Provisional full handoff. GT1 completes all 20 cells in one pass, the output file is marked `Status: Provisional` at the top, and A1 starts data assembly against that version. Human review then produces the `Status: Canonical` version; any cell that changes during review triggers A1 to rebuild the affected test files.

**Why:** Preserves the parallelism between this investigation and Phase 2C without blocking A1 on human-review turnaround. A1's 30 test files are deterministic from GT1, so targeted rebuilds are cheap. Streaming (option b) would add coordination overhead for no clear win.

**Action for GT1 task file:** Ensure the output file has a `Status: Provisional | Canonical` line at the top that the human review step updates.

### Q14 — O1 mid-run escalation on systematic guide issues

**Decision:** Complete all 60 runs and surface any systematic issue in findings. Do not stop mid-investigation to escalate.

**Why:** O1's job is to produce evidence of systematic issues. Stopping early weakens the dataset PR1 needs. The full 60 runs are hours, not days. PR1 has the Q10 guide-edit escape hatch as the downstream landing zone for any systematic issue O1 identifies.

**Exception:** If a variant produces completely malformed output (e.g., no PLAN.md structure at all on the first several cells), stop that variant, flag it, and continue the other two variants. Do not stop the whole investigation.

## Methodology Cross-References

### Q15 — Should this investigation cite P1, C1, or S1?

**Decision:** Treat all three as independent. No citation needed in this investigation's task files.

**Reasoning:**
- **P1 (Provocateur integration)** — Phase 3 synthesis concern, not orchestrator selection.
- **C1 (Clustering vs. flat)** — synthesis format, not roster selection.
- **S1 (Synthesis gap)** — subsumed by the parallel Phase 2C synthesis investigation.

**Inputs list for each task file** should cite only: `methodology.md`, `persona-selection-guide_Phase2B.md`, R5/R6/R7 findings, `REQUESTS_ALL.md`. No cross-references to P1/C1/S1.

**Watch-for:** If Phase 2C's synthesis investigation produces findings that alter Tier 3 persona roles (unlikely — synthesis is downstream of selection), PR1 would need to reconcile at that point. That is a Phase 2C-side concern, not a citation obligation for this investigation.

---

## Summary — what the responses change vs. methodology.md defaults

| Area | Change from methodology.md |
|---|---|
| Ambiguous cells | Score as acceptable-either (Q2). Watch for >30% ambiguity as a "test set too soft" finding. |
| Ground-truth confidence | Tiered H/M/L with subagent-defined criteria (Q3). |
| O1 variant prompts | Authored inside O1, not separately (Q4). |
| O1 pilot | 6-run pilot on tool-library before committing to 60 runs (Q5). |
| O1 sample count | 1× per cell, targeted 2× re-runs on suspect cells (Q6). |
| Threshold-sensitivity | No new topics; GT1 surfaces existing threshold-sensitive cells (Q7). |
| PR1 iteration cap | Hard cap of 4 iterations, root-cause triage before accepting plateau (Q9). |
| PR1 guide edits | Proposals only, via `findings/PR1_proposed-guide-edits.md`; applied edits require O-V1 regression re-run (Q10). |
| PI1 scope | Format finalization + validation in one pass, not a separate design step (Q11). |
| PLAN.md rationale | Structured fields with `notes:` escape valve (Q12). |
| GT1 handoff to A1 | Provisional full handoff; human review flips to Canonical (Q13). |
| O1 escalation | Complete all 60 runs; stop only a malformed variant (Q14). |

**Status:** Ready to kick off GT1.


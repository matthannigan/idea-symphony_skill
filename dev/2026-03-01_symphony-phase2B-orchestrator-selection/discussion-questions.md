# Idea Symphony Phase 2B Orchestrator Selection — Open Questions as of 2026-03-01

Open questions to resolve before executing `methodology.md`. Each section groups decisions that shape how GT1, O1, PR1, and PI1 are authored or executed.

## Pre-work

> Do I need to response to discussion-questions.md to proceed?

Not strictly — each task file bakes in reasonable defaults for its subagent. But answering a few blockers upfront will save rework:

**Should answer before starting:**
- **Q2** (ambiguous-case scoring) — GT1's subagent needs to know the convention before writing rationales.
- **Q6** (1× vs 3× samples per topic-effort-variant) — changes O1's run count from 60 to 180.
- **Q9** (plateau fallback) — PR1 can run without this, but an open-ended iteration loop risks wasted iterations.
- **Q10** (is guide editing in-scope for PR1) — affects whether PR1 proposes guide edits or is prompt-only.

**Can defer or accept defaults:**
- Q1, Q3, Q5, Q7, Q11, Q13–15 — the task files already encode a default path. Answer later or override per task.

**Safe to skip entirely unless you want to override:**
- Q4, Q8, Q12 — already resolved in the task files themselves.

If you want, answer Q2/Q6/Q9/Q10 and I'll bake those into the corresponding task files before you kick off GT1.

## Ground Truth Authoring

1. Should ground truth be authored by an Opus subagent reading the selection guide + R5/R6/R7 findings + 10 REQUESTs, followed by a human review pass? Or should the user author ground truth directly and the subagent is only used as a second-opinion sanity check? The example investigation preferred subagent-then-review for scale; this investigation has only 20 data points (10 topics × 2 effort levels) so human-authored is also viable.

2. For topics flagged as "ambiguous" (genuine disagreement between reasonable people on whether a Tier 3 persona meets threshold), should:
   - (a) ambiguous calls be excluded from the accuracy denominator,
   - (b) both plausible answers be recorded as acceptable, scoring either as correct,
   - (c) the orchestrator's answer be scored only on whether it *provides* rationale, not which answer it chose?
   Methodology.md hints at (b); confirming before GT1 starts.

3. Does ground truth need a confidence score per assignment (High / Medium / Low), or is a binary "confident / ambiguous" sufficient? Tiered confidence lets downstream analysis weight accuracy, but is more work to produce consistently.

## Prompt Variant Scope

4. The three variants in methodology.md (O-V1 reference-only, O-V2 embedded triggers, O-V3 structured checklist) are design directions, not finalized prompt text. Should authoring the exact text of each variant happen inside the GT1 task (as a prep step), inside O1 (as setup), or as a separate prep step with its own file? Recommendation: author inside O1 so they live next to the test harness that consumes them.

5. Should O1 test all three variants, or should a pilot run at 1 topic × 2 efforts be added first to eliminate any variant that's clearly broken before committing to 60 runs? The example investigation did not pilot; this one has more variability per variant so a small pilot could de-risk wasted runs.

6. How many samples per topic-effort-variant combination? Methodology.md specifies 1 run per combination (20 runs per variant). Since orchestrator selection is non-deterministic, 1 run may not reveal reliability. Should each combination be run 3× for stability analysis, or is 1× acceptable for a first pass with re-runs on suspect cells?

## Effort Threshold Tests

7. At medium effort, Tier 3 threshold is "strong trigger only" (0-1 personas). At high, it's "moderate+ trigger" (0-2 personas). Should the evaluation explicitly test effort-threshold sensitivity by designing test cases where the same topic should pick N at high but 0 at medium? Or is the existing 10-topic set sufficient to surface this?

8. Does the Connector/Analogist swap decision get scored separately from Tier 3 selection, or as part of a composite "roster correctness" score? Methodology.md separates them — confirming this holds through scoring.

## Refinement Stop Criteria

9. Methodology.md sets thresholds of Tier 3 ≥ 80% and Connector/Analogist ≥ 90%. If PR1 plateaus at (say) Tier 3 = 75% after 4 iterations with diminishing returns, what is the fallback? Options:
   - (a) Accept the 75%, document limitations, move to PI1,
   - (b) Re-examine the persona-selection-guide itself (maybe triggers are genuinely underspecified),
   - (c) Escalate to a human-in-the-loop orchestrator step.
   Clarifying this avoids open-ended iteration.

10. Should PR1 be allowed to propose edits to `persona-selection-guide_Phase2B.md`, or is the prompt the only lever? If the guide is a fixed input, PR1 may hit a ceiling on topics where the guide itself is ambiguous.

## PLAN.md Format

11. Methodology.md shows a proposed PLAN.md roster section in the Phase 4 section. Is that format final, or is PI1 also a format-design exercise? The difference affects whether PI1 is pure validation (cheap) or requires its own design pass (more work).

12. Should PLAN.md's "Selection Rationale" section be free-form prose or require specific fields (e.g., "Trigger strength: [strong/moderate/none]", "Topic characteristic citation: [quote]")? Structured rationale is more auditable but may over-constrain the orchestrator.

## Scheduling and Dependencies

13. GT1 output unblocks Phase 2C's A1 data assembly per methodology.md's Parallelism note. What's the earliest-acceptable GT1 handoff? Full ground truth (all 10 × 2) or a partial handoff (e.g., the 5 topics with least ambiguity) is acceptable to A1? Confirming lets GT1 stream outputs rather than batch at the end.

14. If O1 identifies a systematic issue in the selection guide (e.g., the "financial structure central" keyword list systematically misfires on community topics), should O1 stop and escalate, or complete all 60 runs and surface the issue in findings? The example investigation completed all runs; confirming the same model here.

## Methodology Cross-References

15. Methodology.md's Relationship section lists P1 (Provocateur integration), C1 (Clustering), S1 (Synthesis gap) as independent items. Does any of them produce outputs that this investigation should cite, or are they all truly independent? Clarifying for the Inputs list in each task file.

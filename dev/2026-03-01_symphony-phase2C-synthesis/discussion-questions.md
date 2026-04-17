# Idea Symphony Phase 2C Synthesis — Open Questions as of 2026-03-01

Open questions to resolve before executing `methodology.md`. Each section groups decisions that shape how TDA1, BL1, SP1, and PC1 are authored or executed.

## Pre-work

> Do I need to respond to discussion-questions.md to proceed?

Not strictly — each task file bakes in reasonable defaults for its subagent. But answering a few blockers upfront will save rework:

**Should answer before starting:**
- **Q3** (per-file vs. per-topic baselines) — changes BL1's fan-out from 10 subagents to 30 subagents and output count from ~40 files to 120.
- **Q5** (Phase 3 subset vs. full 30) — changes SP1 run count from 27 to 90 per variant pass.
- **Q7** (SP1 refinement iteration budget and stop criteria) — prevents open-ended iteration.
- **Q11** (sample count per variant: 1× vs. 3×) — changes SP1 run count by 3×.

**Can defer or accept defaults:**
- Q1, Q2, Q6, Q8, Q9, Q10, Q13 — the task files encode a default path. Answer later or override per task.

**Safe to skip entirely unless you want to override:**
- Q4, Q12, Q14 — already resolved in the task files themselves.

If you want, answer Q3/Q5/Q7/Q11 and I'll bake those into the corresponding task files before you kick off TDA1.

## Test Data Assembly (TDA1)

1. TDA1 depends on the Phase 2B investigation's GT1 ground truth (`dev/2026-03-01_symphony-phase2B-orchestrator-selection/ground-truth/expected-assignments.md`) to know which Tier 3 personas to include per topic-effort. If GT1 is not yet canonical when TDA1 starts, should TDA1:
   - (a) wait for GT1 to be marked canonical,
   - (b) proceed with provisional ground truth and flag affected cells for re-assembly if GT1 changes,
   - (c) assemble only the Tier 1/Tier 2 portion now and append Tier 3 content later?
   Option (b) matches the example investigation's posture toward "provisional until reviewed" inputs.

2. Volume-slicing rule: if existing data has *more* questions than the target range ceiling, truncate to the ceiling. But the source data is ordered — the first N questions may not be the "best" N. Should TDA1:
   - (a) take the first N verbatim (simple, matches what a real subagent produces),
   - (b) sample N uniformly from the source,
   - (c) preserve all questions and note the overage?
   Methodology specifies (a); confirming before assembly.

3. Volume shortfalls: when existing data has fewer questions than the floor (e.g., `q10-15` file has only 8 questions), the methodology says "use the full file and note the shortfall." Should TDA1 also flag topics where shortfalls are systemic (e.g., Provocateur files consistently short), so BL1 baselines can weight those cells accordingly?

## Baseline Establishment (BL1)

4. Does BL1 run on all 30 test files (per-file baselines) or 10 topics (per-topic baselines with effort-level sections)? Methodology's feasibility note leans per-topic. The per-topic approach assumes effort-level differences are primarily about volume and persona count, not fundamentally different cluster structures. Confirming before BL1 fans out.

5. BL1 produces four artifact types per unit (clusters, convergence, target, append-target). Should these be four separate files per unit (the literal reading of methodology) or one combined file per unit with four sections (simpler handoff to SP1)? The literal reading produces 120 files at per-file granularity (or 40 at per-topic); the combined approach produces 30 or 10.

6. B3 (expected synthesis targets) asks for "expected cluster count" and "expected question count" per baseline. Should these be point estimates or ranges? Ranges are more honest about baseline ambiguity but harder to score against in SP1.

7. The methodology folds C1 (clustering vs. flat) from Phase 2B into BL1 step B1. Should BL1 produce an explicit "C1 recommendation" section comparing per-persona clustering vs. flat question lists as a synthesis input, or is the natural cluster analysis sufficient?

## Synthesis Prompt Testing (SP1)

8. Are S-V1, S-V2, S-V3 authored inside SP1 (as a prep step, living next to the test harness) or as a separate `prep/` file? Recommendation: author inside SP1 so they live next to the test harness that consumes them. Mirrors the 2B O1 decision.

9. SP1 tests variants on "a representative subset: 3 topics x 3 effort levels = 9 runs." Which 3 topics? Criteria options:
   - (a) maximum diversity (one physical, one digital, one social — e.g., tool-library, mobile-app, school-consolidation),
   - (b) maximum Phase 2B signal (topics with richest baselines or highest-variance persona sets),
   - (c) minimum ambiguity (topics where GT1 flagged highest-confidence Tier 3 selections — reduces confounds).
   Or should SP1 run on all 30 from the start?

10. Refinement loop stop criteria: methodology says "continue until synthesis quality is consistent across topics and effort levels" — this is qualitative. Should SP1 pin numeric thresholds (e.g., question preservation ≥ 85%, convergence utilization ≥ 70%, dimension balance within X% of baseline)? Without thresholds the loop is open-ended. If PR1 in 2B (Tier 3 ≥ 80%, Connector/Analogist ≥ 90%) is a precedent, SP1 should do the same.

11. Iteration budget: 2B's PR1 set a 4-iteration ceiling. SP1's description says "up to 3 iterations." Confirming the ceiling before SP1 starts, since the refinement loop is the longest-running part of the investigation.

12. Sample count per variant-run: methodology says 1 run per topic-effort-variant. Since synthesis is non-deterministic, 1 run may not reveal reliability. Should each combination be run 3× for stability analysis? Matches 2B Q6 (orchestrator selection non-determinism).

## Persona Selection Consolidation (PC1)

13. Methodology's decision criteria define a 5–10% "borderline" band where PC1 "tests with additional topics before deciding." Should the additional topics be a specific set (e.g., the other 7 topics from the 10-topic pool) or a size (e.g., expand to 20 runs)? Without this, PC1's borderline case is under-specified.

14. Condition B (consolidated) requires a single subagent to produce both synthesized questions AND persona recommendations in one pass. Should the subagent produce these in a specified order (synthesis first, then persona selection grounded in synthesis output), or in any order? Order may affect quality on both outputs.

## Methodology Cross-References

15. Methodology.md's Relationship section marks C1 as folded into BL1 and S1 as subsumed by SP1. Does any artifact from the P1 (Provocateur integration) investigation produce outputs that this investigation should cite, or is P1 truly independent? Clarifying for the Inputs list in each task file.

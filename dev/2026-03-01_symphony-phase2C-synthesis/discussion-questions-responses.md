# Idea Symphony Phase 2C Synthesis — Responses to Open Questions

Responses to `discussion-questions.md`, captured as Matt works through each section.

## Test Data Assembly (TDA1)

### Q1 — GT1 provisional vs. canonical dependency

**Decision:** (a) — TDA1 reads canonical GT1. GT1 completed Rev 3 Canonical on 2026-04-18 (`dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/GT1_ground-truth-assignments.md`), so the (b) provisional posture is not needed. TDA1's "GT1 dependency status" deliverable (Section 5 of findings) records "canonical, Rev 3, 2026-04-18" with no affected-cell list.

**Why:** GT1 is approved for A1 consumption per its own findings (Decision 8C). The provisional-and-reflag-later posture only made sense while GT1 was mid-walkthrough.

**Addendum — Medium-confidence handoff note to BL1:** TDA1 should still surface the 5 Medium-confidence GT1 cells (tool-library medium, food-truck high, property-management high, youth-mentorship high, school-consolidation medium) in its handoff notes to BL1 (Section 6 of `findings/TDA1_test-data-assembly.md`). Framing: "These cells are canonical but were the most revisable during GT1's walkthrough. BL1 should treat their Tier 3 / Connector-Analogist composition as stable, but if SP1 later produces anomalously poor scores on these specific cells, re-check GT1 before blaming the synthesis prompt."

**Action for TDA1 task file:** Update Deliverable 5 (summary findings) Section 5 wording from "confirmation that GT1 ground truth was canonical (or provisional — note which cells are at risk…)" to "confirmation of GT1 canonical status + enumeration of GT1's 5 Medium-confidence cells as a BL1 caution list (not provisional, just watchlist)."

### Q2 — Volume-slicing when source exceeds ceiling

**Decision:** (a) — take the first N verbatim.

**Why:** Matches what a real Phase 2B persona subagent produces (questions emerge in a natural priority order, not shuffled). (b) uniform sampling adds noise SP1 scoring would have to absorb; (c) preserving overages breaks the input-range contract BL1 scores against. Methodology already specified (a); this confirms before assembly.

**Action for TDA1 task file:** No changes — the task file already encodes "truncate to N (take the first N questions in source order)."

### Q3 — Systemic shortfall flagging

**Decision:** Yes — add systemic shortfall flagging on top of per-cell shortfall logging.

**Why:** Single-cell shortfalls are noise; cross-topic patterns are signal. If a persona (e.g., Provocateur) is consistently short across topics, that's a generation-time under-delivery BL1 needs to know about — otherwise BL1's per-persona representation targets become unachievable floors for SP1 scoring. Low marginal cost: TDA1 already aggregates shortfalls in assembly-analytics.md; one extra aggregation table surfaces "persona X short on M of 10 topics."

**Action for TDA1 task file:** Add to Deliverable 4 (assembly-analytics.md) a "Systemic Shortfall Summary" subsection — a persona-level aggregation showing, for each persona, the count of topic-effort cells where that persona fell below volume floor, and any pattern (consistent across effort levels? consistent across topic domains?). Propagate the systemic-shortfall list to Deliverable 5 Section 3 (shortfall log) as "BL1 weighting recommendation."

## Baseline Establishment (BL1)

### Q4 — Per-file (30) vs. per-topic (10) baselines

**Decision:** Per-file. 30 subagents, one per (topic, effort) cell.

**Why:** Each baseline is uncontaminated by cross-effort assumptions — the subagent handling `habit-tracker_high` treats it as its own synthesis problem, not "habit-tracker low + more questions." This preserves the possibility that effort levels produce fundamentally different cluster structures (rather than just volume growth), which is itself an empirically open question.

**Tradeoff accepted:** 3× subagent cost vs. per-topic. Cross-effort evolution observations ("do clusters grow or emerge as effort rises?") move from the per-topic summary into the cross-topic synthesis subagent's job. Cross-topic synthesis subagent should explicitly include cross-effort pattern aggregation.

**Action for BL1 task file:**
- Change execution model from "10 per-topic subagents" to "30 per-cell subagents, one per (topic, effort) cell."
- Rename the per-topic subagent prompt to per-cell; substitute `{TOPIC_NAME}` and `{EFFORT}` (not just `{TOPIC_NAME}`).
- Each subagent reads one test file (not three), produces four baseline artifacts for its single cell.
- Per-cell summary findings file: `findings/BL1_baseline-establishment_{TOPIC_NAME}_{EFFORT}.md` (30 files, not 10).
- Batching: 30 subagents at 5 concurrent → 6 batches.
- Cross-topic synthesis subagent's job expands: reads 30 per-cell summaries + 120 artifacts, aggregates across both topic and effort dimensions. Add an explicit "cross-effort evolution by topic" section to the cross-topic synthesis deliverable.

### Q5 — Four separate artifact files per unit vs. one combined

**Decision:** Per-file granularity, four separate artifact files per cell. Total: 120 files (30 cells × 4 artifact types).

**Why:** Keeps the artifact-to-metric mapping clean for SP1's scoring subagent (cluster alignment ↔ `_clusters.md`; convergence utilization ↔ `_convergence.md`; output target ↔ `_target.md`; append fidelity ↔ `_append-target.md`). SP1 scoring subagent reads only the artifact it needs per metric, not a combined file.

**Paths unchanged:** `baselines/{TOPIC}_{EFFORT}_clusters.md`, `_convergence.md`, `_target.md`, `_append-target.md` — 30 of each type.

**Action for BL1 task file:** No structural change (the existing task file already specifies separate files per artifact type at this granularity); update the Expected Output section to state "120 files" explicitly.

### Q6 — Point estimates vs. ranges for B3 targets

**Decision:** Ranges, with a point-estimate "target" inside the range.

**Why:** Honest about baseline ambiguity without sacrificing scoring discipline. E.g., "expected output: 35–45 questions, target 40." SP1 scoring subagent uses the target for the headline metric and the range for pass/fail bands (within range = pass; outside = fail with severity proportional to distance from nearest band edge).

**Action for BL1 task file:** Update B3 Artifact template:
- `**Expected synthesis output count:** M (range {M_low}–{M_high}, target {M_target})`
- `**Expected cluster count in output:** C (range {C_low}–{C_high}, target {C_target})`
- Add a sentence: "Target is the point estimate used for headline scoring; range defines the pass/fail band. Outside-range results are scored with severity proportional to distance from the nearest band edge."

### Q7 — C1 (clustering vs. flat) as explicit recommendation section

**Decision:** Explicit C1 section, both per-topic-cell and cross-topic.

**Why:** SP1's variant design (whether S-V1/V2/V3 receive persona-grouped or flat input) depends on a clear, citable recommendation. Burying C1 inside natural cluster analysis risks SP1 not being able to anchor its variant-input decision.

**Action for BL1 task file:** Confirm the existing scaffolding is preserved:
- Per-cell B1 Artifact retains the "C1 Comparison (Per-Persona vs. Flat Pooling)" subsection.
- Cross-topic synthesis retains the "C1 Recommendation (Clustering vs. Flat)" deliverable.
- Add a cross-effort C1 pattern check to the cross-topic synthesis: "does the C1 recommendation differ at low vs. high effort? If flat pooling helps more at high effort because more personas create more cross-persona convergence, document that."

## Synthesis Prompt Testing (SP1)

### Q8 — Where to author S-V1/V2/V3 prompts

**Decision:** Inside SP1, as a Step 1 prep. Prompts live at `findings/SP1_prompts/S-V{1,2,3}_*.md`.

**Why:** Variant prompts are consumed only by SP1's test harness — keeping them adjacent makes it easy to trace which exact prompt text produced which scoring output. Mirrors the 2B Q4 decision (O-V1/V2/V3 inside O1). Task file already defaults to this.

**Action for SP1 task file:** No structural change — confirm Step 1 is an explicit first step before generation kicks off.

### Q9 — Which 3 topics for SP1's initial 9-file subset

**Decision:** (a) Maximum diversity, with BL1's cross-topic synthesis confirming or overriding. Default fallback: tool-library (physical), mobile-app (digital), school-consolidation (social).

**Why:** Diversity stresses the synthesis prompt across domain types. BL1 sees cluster structure across all 10 topics and can refine the pick if one of the defaults turns out to be anomalous (unusually easy or unusually pathological). Not "all 30" — the 9-file subset's purpose is cheap variant discrimination; iterate on winner with expanded set.

**Action for SP1 task file:** Step 2 currently says "use the 9-file subset recommended by BL1, default per Q9." Update to explicitly name the fallback triple (tool-library, mobile-app, school-consolidation) and state "BL1's cross-topic synthesis may override with rationale."

### Q10 — Refinement loop stop criteria

**Decision:** Pin the task file's default thresholds with a stability rider and regression guard.

**Stop criteria (all must hold):**
- Question preservation rate ≥ 85%
- Cluster alignment ≥ 80%
- No Synthesize-group persona below its BL1 minimum in > 10% of runs
- Append fidelity ≥ 85%
- No systematic dimension imbalance (> 15% deviation from BL1 target bands)

**Stability rider:** Each threshold must hold on ≥ 80% of runs within the expanded (18-file) subset, not just aggregate mean. Prevents a variant that aces most topics and tanks one from passing.

**Regression guard:** If any metric worsens by more than 5 percentage points vs. the previous iteration, the iteration is a failure and the refinement gets rolled back. Try a different refinement direction with remaining budget.

**Why:** Prevents open-ended iteration (matches 2B PR1 discipline). Stability rider guards against aggregate-mean cheating. Regression guard guards against local-optimum chasing.

**Action for SP1 task file:** Update Step 5 Stop Criteria section to list these thresholds verbatim and remove the "pending Q10 override" hedge. Regression guard is already stated in the Refinement Iteration Subagent Prompt Step E — cross-reference it from Step 5.

### Q11 — Iteration budget ceiling

**Decision:** 3 iterations, with option to extend by one (to 4) if at least two thresholds are within 5 percentage points of passing on iteration 3.

**Why:** Extension signal means "prompt refinement is converging, one more pass likely closes the gap." Without that signal, additional iterations usually indicate structural (guide-level) problems rather than polishable prompt issues — better to escalate to a guide edit than burn more iteration budget.

**Budget implications:**
- Initial pass: 27 runs (3 variants × 9 files).
- Iterations 1–3: 3 × 18 = 54 runs.
- Optional iter 4: +18 runs.
- Plus targeted 3× re-runs on suspect winners (per Q12): ~10–20 extra runs.
- Total: ~90–120 runs.

**Action for SP1 task file:** Update Step 5 description from "up to 3 iterations" to "3 iterations, extendable to 4 if ≥ 2 thresholds are within 5 pp of passing on iter 3." Add an "Escalation Path" subsection: if iter 3 (or iter 4) still fails multiple thresholds, the escalation is a guide-level edit proposal, not further iteration.

### Q12 — Sample count per variant-run

**Decision:** 1× for the initial variant comparison (27 runs), with targeted 3× re-runs on "suspect" winners.

**Why:** Concentrates stability budget where it matters (the winning variant's anomalous cells) rather than tripling everything globally. Mirrors 2B Q6 (1× + targeted 2× for orchestrator selection).

**"Suspect" definition:** Any run in the winning variant where the variant fails ≥ 3 of 8 thresholds despite winning in aggregate. Also includes any cell where winner's score is within 5 pp of a losing variant's score (couldn't reliably distinguish).

**Budget:** 1× initial = 27 runs (not 81). Targeted 3× re-runs on suspect cells: estimate 5–10 cells × 2 additional runs each = 10–20 extra runs. Stability report lives in the cross-variant synthesis findings.

**Action for SP1 task file:**
- Keep Step 2 at 1× per variant-topic-effort (27 runs).
- Add a Step 4.5 "Stability Re-runs": after cross-variant synthesis identifies the winner, re-run the winner 2× more on each suspect cell. Scoring subagent produces a variance report on the winner.
- Step 5 refinement iterations stay at 1× per cell (the iteration-over-iteration comparison is itself a stability signal over time).

## Persona Selection Consolidation (PC1)

### Q13 — Borderline case additional topics

**Decision:** Default 21-file expansion (the remaining 7 topics × 3 efforts = completes the 30-file matrix), run in priority order with early-stop.

**Priority order:** Start with topics that showed the biggest A-vs-B single-metric deltas on the initial 9 (most discriminating for the borderline decision), then fill the rest.

**Early-stop rule:** If the A-vs-B aggregate delta crosses out of the 5–10% borderline band (either above 10% → keep separate, or below 5% → consolidate) with at least 18 of the 30 cells scored, PC1 can stop expansion and commit to the resolved decision. Saves ~12 runs when the borderline was noise rather than a real effect.

**Why:** Running to the complete 30-file matrix is the cleanest path to architectural confidence. Priority ordering concentrates discriminating power early; early-stop prevents spending on runs that can't change the decision.

**Action for PC1 task file:** Update the "Borderline Case Handling" subsection to specify: (1) all 7 remaining topics × 3 efforts = 21 additional files; (2) priority ordering by A-vs-B delta on initial 9; (3) early-stop rule above.

### Q14 — Consolidated subagent output order

**Decision:** Synthesis first, then persona selection grounded in synthesis output. Explicitly ordered — not any-order.

**Why:** Condition B's architectural advantage over Condition A is grounding persona selection in the synthesized cluster structure rather than the raw input. Letting order float removes that advantage. Task file default is correct.

**Verification built into scoring:** The task file's scoring subagent already flags the case where Condition B's persona recommendations reference synthesis-output clusters that don't exist in Part 1 as an "integration error." Keep this check.

**Action for PC1 task file:** No structural change — confirm the Condition B prompt retains "Part 1: Synthesis" → "Part 2: Brainstorming Persona Selection" ordering and the Constraints section retains "Order matters."

## Methodology Cross-References

### Q15 — P1 (Provocateur integration) cross-reference

**Decision:** P1 is independent of Phase 2C synthesis investigation. No inputs to cite.

**Why:** P1 tests Phase 3 response to provocateur questions (how brainstorming reacts), not Phase 2C synthesis (how the question universe is compacted). Separate pipeline stages, separate concerns.

**Single exception (watch-item, not blocker):** If P1 surfaces a finding that changes Provocateur's Synthesize/Append classification (currently Append-group per R6/D1), TDA1 would need re-assembly for any cell where Provocateur appears. TDA1 should note this as a passive watch-item in its findings — not something to block on, just a traceable dependency if P1 flips it.

**Action for TDA1 task file:** Add a one-line note to the "Dependency Notes" section: "P1 (Provocateur integration) is independent; however, if P1 reclassifies Provocateur from Append → Synthesize, TDA1 cells including Provocateur need re-assembly. Passive watch-item."

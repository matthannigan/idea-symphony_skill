# Idea Symphony Phase 4 Investigation — Open Questions as of 2026-05-03

Open questions to resolve before executing `methodology.md`. Each section groups decisions that shape how SS1, BL1, FA1, LB1, PP1, RG1, and RP1 are authored or executed.

## Pre-work

> Do I need to respond to discussion-questions.md to proceed?

Not strictly — each task file bakes in reasonable defaults for its subagent. But answering a few blockers upfront will save rework:

**Should answer before starting:**
- **Q1** (cluster-selection rule) — changes SS1's selection criterion and therefore which samples downstream tasks score against.
- **Q5** (FA1 scoring rubric: strict vs. weighted on dropped persona names) — without this, FA1 cannot conclude "pass" or "fail" on med vs. high cells.
- **Q6** (FA1 pass threshold) — gates RP1's stop criterion.
- **Q12** (RP1 iteration budget and stop criteria) — prevents open-ended refinement.

**Can defer or accept defaults:**
- Q2, Q3, Q4, Q7, Q8, Q9, Q10, Q11, Q13 — task files encode a default path. Answer later or override per task.

**Safe to skip entirely unless you want to override:**
- Q14 — already resolved in the methodology header.

If you want, answer Q1/Q5/Q6/Q12 and I'll bake those into the corresponding task files before kicking off SS1.

---

## Sample Selection (SS1)

1. **Cluster-selection rule:** SS1 picks 1 high-signal cluster at `min` + 1 at `low` + 2 at `med` + 2 at `high` per topic. Three candidate selection criteria:
   - (a) **Densest persona convergence** — most "N of M personas converged" signals (highest aggregation pressure on the prompt)
   - (b) **Richest tension** — clearest DA/Pragmatist contrast at low; clearest multi-persona disagreement at med/high (highest synthesis difficulty)
   - (c) **Densest unique insights** — most single-persona observations that risk being dropped (highest faithfulness stakes)
   Recommended default: (b) for low, (a)+(c) hybrid for med/high. The hybrid maximizes prompt failure detection across the full 60-sample set.

2. **Cluster-shape diversity within (topic, med):** the methodology says the two `med` (and two `high`) clusters per topic should differ in cluster-shape (e.g., one strategy-heavy, one tactical). Should this be a hard constraint or a soft preference? Recommended default: soft preference — apply when the topic's cluster set supports the diversity, accept a single-shape pair when it doesn't.

3. **Topic ordering:** SS1's manifest determines the wave order for BL1's batched fan-out. Recommended default: process the 4 topics with `effort-comparison.md` memos first (career-change, food-truck, habit-tracker, space-party — Tier-A) so any prompt-failure signal those topics surface can be cross-checked against their existing memos, then the other 6 topics.

---

## Baselines (BL1)

4. **Hybrid vs. from-scratch ledger construction (med + high samples):** use existing `synthesis/attributed/{NN}_{cluster-slug}.md` as seed (fast, but may inherit the prompt's own biases since the prompt under test produced it) vs. build from `responses/` only (slow, but uncontaminated). Recommended default: hybrid with a verification audit pass — read `attributed/` for the draft ledger, then read each `responses/{persona}.md` in full and add/remove through-lines accordingly.

5. **FA1 scoring rubric for "dropped persona name":** strict (any dropped persona = fail for that through-line) or weighted (drop with attribution to a different persona = partial credit; complete absence = full deduction)? Recommended default: **strict for med-effort** (4 personas, low ambiguity, drops are unambiguously failures), **weighted for high-effort** (7 personas, more legitimate aggregation pressure means some persona-merging is acceptable when convergence is strong).

6. **FA1 pass threshold:** memo §4 says "Targets: zero dropped persona names, zero hallucinated quotes." Hold strict literally on both, or define a numeric tolerance? Recommended default: **strict on hallucinated quotes** (zero tolerance — definitionally a quality breach); **soft 90% threshold on persona-name preservation** (some aggregation is legitimate; 100% can be unrealistic at high-effort).

---

## LB1 (Loss-Budget)

7. **Through-line counting unit:** single sentence in a response, or topic-level claim? Affects the denominator and therefore the loss percentage. Recommended default: **topic-level claim** — matches the through-line definition the four `effort-comparison.md` memos already use. A claim spanning 3 sentences in one response counts as 1 through-line.

8. **Survival definition:** through-line "survives" if (a) verbatim in the summary, (b) paraphrased with recognizable substance, or (c) implied by a more general statement that absorbed it? Recommended default: **(a)+(b) count as survival; (c) is a separate "absorbed" category** — tracked but not counted in the survival rate, since absorption can hide loss-of-signal.

---

## PP1 (Three-Prompt Parity)

9. **Scope of the contract:** include only the user-facing schema (frontmatter fields, section headings, output sections) or also internal prompt patterns (example block, quality standards table, output-format hints, phrasing of attribution rules)? Recommended default: **include both** — Phase 5 readiness depends on schema, and the prompts' internal patterns explain *why* outputs differ (which Phase 5 depends on aggregating).

---

## RG1 (Cross-Effort Regression)

10. **Diff granularity:** through-line presence (binary) or full-text similarity (continuous)? Recommended default: **through-line presence as the primary metric; full-text similarity as a backup interpretive aid**. Binary lets you say "this through-line dropped between med and high"; continuous lets you say "the prompt's prose is drifting in style without dropping content."

11. **Within-effort vs. cross-effort signal weight:** RG1 has both — the two med clusters per topic test prompt-stability across cluster shape; the four-effort comparison tests prompt-evolution across efforts. Should the findings weight one over the other? Recommended default: **report both equally, but RP1 iteration triggers on cross-effort drift first** (the regression risk is higher there).

---

## RP1 (Refinement)

12. **Iteration budget and stop criteria:** 2C SP1 set a 4-iteration ceiling. Recommended default: **3 iterations**, with explicit stop criteria:
    - FA1 ≥ 90% on persona-name preservation across the 40 med+high samples
    - Zero hallucinated quotes
    - LB1 ≥ 80% through-line survival across the 20 min/low samples
    - RG1 variance ≥ 95% intentional (rest documented)
    If criteria not met after 3 iterations, ship the best variant and document residual issues.

13. **Variant strategy per prompt:**
    - `phase4_full-synthesis.md` — single-track refine (mature prompt, incremental fixes only)
    - `phase4_summary-only_low-effort.md` — 2 variants (still evolving)
    - `phase4_summary-only_min-effort.md` — 2 variants (still evolving)
    Recommended default: as listed. Confirming before RP1 starts.

---

## Cross-investigation

14. **Phase 5 coordination:** does FA1's emission of per-cluster Central Tension / confidence tag / Neither-lens gap signals (in `findings/FA1_phase5-signal-log.md`) satisfy the Phase 5 investigation's E4 ("Neither-lens gap → cross-cluster blind-spot verification")? Recommended default: **yes, if and only if FA1 explicitly emits the per-cluster signal log** with one row per sampled cluster naming what the prompt asked for, what the cluster surfaced, and whether the surface was clean. Already baked into FA1's deliverable spec; flagging here so user can override.

15. **Deferred F4-MA1 (Model Assignment Review):** memo §4 lists this as a candidate test track. Per scope decision, **deferred to a future investigation**. Audit-trail data remains on disk in `model-requested`/`model-reported` frontmatter at every sampled cluster's Phase 4 outputs — a future MA1 task can pick up cleanly without re-deriving the test-data inventory. Flagging here for that future work.

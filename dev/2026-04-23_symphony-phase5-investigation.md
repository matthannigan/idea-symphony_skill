# Symphony Phase 5 Investigation — 2026-04-23

**Status:** Planning document. Phase 4 (per-cluster) enhancements landed 2026-04-23 alongside this doc ([low-effort](../idea-symphony/prompts/phase4_summary-only_low-effort.md), [min-effort](../idea-symphony/prompts/phase4_summary-only_min-effort.md)). Phase 5 (cross-cluster BRAINSTORM.md generation) is the larger remaining lever but has not yet been investigated in depth.

**Context:** This doc is the outcome of a controlled model-swap test on the habit-tracker test runs ([low_haiku](../test-runs/habit-tracker/low_haiku/BRAINSTORM.md) vs. [low_sonnet](../test-runs/habit-tracker/low_sonnet/BRAINSTORM.md)). Sonnet-as-brainstormer produced a sharper BRAINSTORM.md on most dimensions, but the Haiku run had one specific strength neither Sonnet run matched: **cross-cluster meta-pattern recognition**. Tracing that finding back, the meta-pattern work happens in Phase 5 — which has the thinnest prompt guidance of any phase in the skill.

---

## 1. Where Phase 5 lives in the current architecture

Phase 5 is **not a prompt file**. It is an orchestrator step in [SKILL.md:350-360](../idea-symphony/SKILL.md:350), guided by the [templates/brainstorm.md](../idea-symphony/templates/brainstorm.md) skeleton.

Current SKILL.md instruction:

```markdown
#### Step 5.2: Create BRAINSTORM.md

Read `QUESTIONS.md` and all `synthesis/*_summary.md` files.

Generate final summary in `BRAINSTORM.md` (see templates/brainstorm.md):
- Executive summary across all topics
- Session overview
- Key themes
- Topic summaries with links
- Recommended next steps
- Session index with links to all files
```

That's the full instruction. The template adds structure but not substantive guidance.

For comparison: every other multi-output phase (2A, 2B, 2C, 3, 4) has a dedicated prompt file of 100-300 lines specifying task, synthesis strategy, output constraints, and examples. Phase 5 — the only phase whose output the user actually reads — has none of that. **The thinness appears historical rather than intentional.**

---

## 2. What we saw in the habit-tracker test runs

Both runs used identical Phase 4 and Phase 5 prompts; the synthesizer was Sonnet in both (verified via `model-reported` frontmatter in per-cluster summaries). The only deliberate variable was brainstormer model: Haiku vs. Sonnet.

### Sonnet brainstormers → sharper BRAINSTORM.md, tactical and compressed

- **Compression-style themes.** "Subtraction beats addition." "Silence is a design decision." "The honest-data principle." "Equity is architecture, not configuration." Each theme is a compression move — names a pattern in a way you'd quote back.
- **Tactical specificity in next steps.** Named data-model fields (`frequency_target`, `archived` boolean), named instrumentation events (`cap_reached`, `weekly_review_completed`, `history_limit_hit`), specific UI strings (`"Keep going"` / `"Reset gently"`), specific test protocols (CI dependency audit step, Chrome DevTools throttling on Android emulator).
- **Resolution moves.** Proposed `"graduate-and-return rate"` as an alternative metric to dissolve the DAU-vs-graduation conflict. Haiku named the same tension but didn't offer a resolution.

### Haiku brainstormers → BRAINSTORM.md stronger at meta-patterns

- **Cross-cluster pattern count.** Explicit observation: *"this tension recurs across nine of the eleven clusters."* The Sonnet BRAINSTORM.md does not surface an equivalent count.
- **Cross-cluster blind-spot aggregation.** Explicit flag: *"social and relational dynamics … surface only from the risk-oriented view"* and *"lifecycle and stage-dependent design … surface in fragments but never as a unified product principle."* Both are absent from the Sonnet BRAINSTORM.md.
- **Follow-on items named.** Pointed to a Phase 2 brainstorm at higher effort on lifecycle-aware design and to a focused social-architecture pass.

### What this implies

Phase 5 with Sonnet's richer per-cluster inputs did NOT do the meta-pattern work that Phase 5 with Haiku's inputs did. Two hypotheses, probably both true:

1. **Phase 5 is under-specified.** The synthesizer makes different emergent choices based on what the raw material suggests; with no explicit demand for meta-pattern recognition, it's left to model judgment.
2. **Richer inputs crowd out meta-observation.** Sonnet's per-cluster outputs give the Phase 5 synthesizer so much cluster-level depth that its attention budget gets spent there rather than on cross-cluster aggregation.

Either way, the fix is the same: **specify Phase 5 explicitly.**

---

## 3. What Phase 4 just set up to help

The Phase 4 revisions landed 2026-04-23 give Phase 5 three new aggregable signals per cluster:

| Phase 4 addition | Intended Phase 5 use |
|---|---|
| **Central Tension** (one-liner per cluster) | Scan across clusters: do multiple share the same organizing tension? Meta-pattern visible in one pass rather than requiring the synthesizer to re-read each summary. |
| **Confidence-tagged actions** (`[convergent]`, `[trade-off]`, `[unique: risk\|feasibility]`) | Prioritize Phase 5 next steps by cross-cluster convergence count. A recommendation that appears as `[convergent]` in 4 clusters is a different kind of signal than one that appears as `[unique]` in 1. |
| **Neither-lens gaps** (what DA/Pragmatist structurally won't surface) | Cross-cluster aggregation: if a gap category (e.g., relational/social) appears in 3+ clusters, promote to a session-level blind spot named in BRAINSTORM.md. |

**Phase 5 does not currently use any of these.** It has no instruction to aggregate Central Tensions, no instruction to count confidence tags, no instruction to aggregate Neither-lens gaps. Until Phase 5 is revised, the Phase 4 changes are potential signal that the synthesizer may or may not lift in a given run.

---

## 4. Investigation questions

Ordered roughly from least to most speculative.

### Q1. What should Phase 5 be instructed to do beyond the current 6-bullet skeleton?

Candidate additions, each tied to an observation above:

- **Cross-cluster convergence count.** Explicit requirement to scan all per-cluster summaries for recurring patterns (tension types, blind-spot categories, action-type frequencies) and report the count.
- **Cross-cluster blind-spot synthesis.** Aggregate Phase 4's Neither-lens gaps; when a category recurs, promote to session-level.
- **Tactical specificity demand on next steps.** Mirror the Phase 4 demand — concrete artifacts (field names, event names, UI strings, threshold numbers) over abstract design intent.
- **Theme compression standard.** Ask for compression-style themes (short phrase naming a pattern) rather than descriptive themes (sentence describing the observation). Worth testing whether a one-line in-prompt example is enough to shift output behavior.

### Q2. Should Phase 5 become a dedicated prompt file?

Every other multi-output phase has one. Candidate path: `idea-symphony/prompts/phase5_final-synthesis.md`, invoked from SKILL.md step 5.2. Risk: Phase 5 currently runs in orchestrator context (not as a spawned subagent), so a "prompt file" here means "reference material the orchestrator reads and follows," not "task spec for a subagent." That's a slightly unusual pattern in the skill but not incoherent.

### Q3. Should Phase 5 run as a spawned subagent or stay orchestrator-inline?

Currently orchestrator-inline.

- **For inline:** orchestrator already has some of the summary context from Phase 4 management; no cold-start cost.
- **For subagent:** isolates Phase 5's work from the orchestrator's running context, frees space for post-session handoff, matches the pattern of Phase 4 (each cluster synthesizer is a spawned subagent).

Needs empirical test — what does orchestrator context usage look like at Phase 5 entry under low/medium/high effort? If Phase 5 entry runs hot, a subagent spawn is the safer answer.

### Q4. Does the brainstorm.md template need more than a skeleton?

Current template is ~50 lines of skeleton + links. A fuller template with in-template guidance (e.g., *"## Key Themes — compression-style labels that name patterns, 4-6 total, 2-3 sentences each"*) shifts instruction into the output shape itself. The Phase 4 prompts use this pattern heavily — the fenced output block inside the prompt does substantial instructional lifting.

### Q5. How should Phase 5 handle the Central Tension signal?

Candidate new BRAINSTORM.md section: a **Session-level tension map** listing the central tension of each cluster, annotating which tensions recur and which are isolated. This would be load-bearing new output — the current BRAINSTORM.md has no equivalent.

Trade-off: every new named section increases cognitive load on the user reading the final deliverable. This is worth preserving only if the cross-cluster tension map is action-guiding and not just informational.

### Q6. Does Sonnet as synthesizer crowd out meta-observation when inputs are rich?

The central hypothesis from Section 2. Cheap experiment (see E1 below) to test whether explicit Phase 5 instructions to do meta-observation **first**, per-cluster summary **second**, shift this behavior.

### Q7. Should Phase 5 differentiate by effort level?

Phase 4 already differentiates (`min`, `low` summary-only; `medium`/`high` full-synthesis). Phase 5 is currently one-size-fits-all. Candidate split:

- `min` and `low` → Phase 5 focused on tension-preservation and convergence/divergence aggregation (matches Phase 4 summary-only shape).
- `medium` and `high` → Phase 5 focused on multi-persona synthesis aggregation (matches Phase 4 full-synthesis shape).

Practical question: does one shared Phase 5 prompt with conditional sections beat two prompts with shared scaffolding? Leaning toward one-with-conditionals since the session index and top-of-file structure are identical regardless.

### Q8. How many new output sections before BRAINSTORM.md degrades?

Every candidate addition (Central Tension map, cross-cluster blind-spots, aggregated convergence count) increases the deliverable's length and cognitive load. Need a word-count target for BRAINSTORM.md and a readability judgment on whether new sections earn their space. Current low-effort BRAINSTORM.md is ~2300 words (sonnet) / ~1800 words (haiku). That's a useful baseline.

---

## 5. Proposed experiments

### E1. Phase 5 re-synthesis with enhanced prompt (cheapest, highest-signal)

Take existing [low_haiku](../test-runs/habit-tracker/low_haiku) and [low_sonnet](../test-runs/habit-tracker/low_sonnet) test-runs. Rerun Phase 5 **only** (brainstormer outputs and per-cluster summaries already exist), with an enhanced Phase 5 prompt that explicitly demands:

- Cross-cluster convergence count
- Cross-cluster blind-spot synthesis
- Compression-style themes (with one worked example)
- Tactical specificity in next steps

**Hypothesis:** Sonnet's re-synthesized BRAINSTORM.md closes the meta-pattern gap to Haiku's, while retaining its tactical-specificity advantage.

**What to measure:** presence of explicit convergence counts; presence of aggregated blind-spots; theme compression (subjective but checkable); tactical specificity of next steps (field/event/threshold mentions per action).

**Cost:** minimal — brainstormer outputs are 22 calls × 2 runs already completed. Re-running Phase 5 is one orchestrator-context synthesis per run.

### E2. Orchestrator-inline vs. subagent for Phase 5

On one fresh low-effort run, execute Phase 5 inline (current). On another, spawn it as a subagent with an identical prompt.

**What to measure:** output quality (subjective), orchestrator context at Phase 5 entry (measurable), end-to-end run time.

**Cost:** two low-effort runs on a shared topic. Higher cost than E1 but isolates the inline-vs-subagent question cleanly.

### E3. Minimum-viable Phase 5 prompt file

Formalize the current 6-bullet skeleton into a proper prompt file (inputs block, task statement, output template, guidelines) with **no new demands** beyond what's in SKILL.md today. Run it head-to-head against the current inline approach.

**Purpose:** isolates whether *structure alone* improves output, independent of the Q1 additions. If E3 shows no meaningful quality difference, the gains in E1 must come from the new instructions specifically, not from the promotion to a prompt file. If E3 shows improvement, structure matters independently.

### E4. Neither-lens gap → cross-cluster blind-spot verification

After two to three new low-effort runs are completed under the new Phase 4 prompt, count the Neither-lens gaps per cluster and observe how well they aggregate.

**Pass signal:** 3+ clusters independently surface the same category (e.g., "relational/social dynamics"), confirming the per-cluster instruction generates aggregable material.

**Fail signal:** Neither-lens gaps are idiosyncratic or speculative, suggesting the per-cluster prompt needs tightening or the category is model-dependent.

---

## 6. Open design questions

- **Where does compression-style theme language come from?** In Haiku's BRAINSTORM.md, themes read descriptive ("Anti-gamification is not a stable differentiator on its own"). In Sonnet's, themes read as compression moves ("Subtraction beats addition"). Is this a model-capability floor, or can a prompt example bias Haiku output toward compression? E1 will partially answer this.
- **Does Phase 5 need its own convergence/divergence framing?** Or is it enough to aggregate Phase 4's already-tagged items? Leaning toward "aggregate Phase 4's tags" to avoid redundant classification work, but worth verifying.
- **Should BRAINSTORM.md explicitly name cross-cluster blind-spots as a distinct section?** Or fold them into Key Themes? Separate section is more visible; folded-in version is less noisy.
- **Does two-persona low-effort produce enough signal for meta-pattern claims like "9 of 11 clusters"?** Haiku's version did; Sonnet's didn't. If E1 shows Sonnet can produce such claims when asked, the answer is "yes, with instruction." If not, meta-pattern richness may scale with persona count (stronger signal expected at medium/high effort).
- **Is there a case for a "tensions unresolved" section** — explicit enumeration of cross-cluster trade-offs that the session did **not** resolve? That would be the mirror of the "cross-cluster blind-spots" section, covering disagreement rather than absence.

---

## 7. Suggested next actions

1. **Draft a candidate Phase 5 prompt file** (`idea-symphony/prompts/phase5_final-synthesis.md`) formalizing current behavior plus the Q1 additions. Keep it orchestrator-inline for now; defer the subagent question to E2.
2. **Run E1 (re-synthesis experiment) against the existing habit-tracker test runs.** Highest-signal-per-cost. This validates or invalidates the core hypothesis before any prompt restructuring ships.
3. **Decide on Q3 (inline vs. subagent) after E2.**
4. **Revise [templates/brainstorm.md](../idea-symphony/templates/brainstorm.md)** based on what the enhanced Phase 5 prompt actually produces. Template changes should follow, not lead, the prompt investigation.
5. **Revisit the word-count question (Q8).** Sample a handful of BRAINSTORM.md files across efforts, establish a target, and hold the enhanced Phase 5 to it.

---

**Related documents:**

- [2026-02-07_symphony-effort-comparison.md](2026-02-07_symphony-effort-comparison.md) — earlier effort-level comparison study; useful precedent for experimental structure.
- [2026-04-19_idea-symphony-prompt-review.md](2026-04-19_idea-symphony-prompt-review.md) — prompt review pass that covered phases 2A-4 but did not substantively address Phase 5.
- Phase 4 changes that set up Phase 5 inputs: [phase4_summary-only_low-effort.md](../idea-symphony/prompts/phase4_summary-only_low-effort.md), [phase4_summary-only_min-effort.md](../idea-symphony/prompts/phase4_summary-only_min-effort.md).
- Source test runs: [low_haiku/BRAINSTORM.md](../test-runs/habit-tracker/low_haiku/BRAINSTORM.md), [low_sonnet/BRAINSTORM.md](../test-runs/habit-tracker/low_sonnet/BRAINSTORM.md).

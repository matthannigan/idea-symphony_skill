# Phase 4 — Three-Prompt Parity

**Date:** 2026-05-03
**Parent:** [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md)
**Maps to:** F4-PP1 in [`dev/2026-04-27_effort-comparison.md`](../../2026-04-27_effort-comparison.md) §4
**Inputs:**
- Parent methodology — [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md) (Phase 3 §F4-PP1)
- SS1 manifest — `dev/2026-05-03_symphony-phase4/data-prep/sample-manifest.md`
- The three Phase 4 prompts under analysis:
  - [`idea-symphony/prompts/phase4_full-synthesis.md`](../../../idea-symphony/prompts/phase4_full-synthesis.md)
  - [`idea-symphony/prompts/phase4_summary-only_low-effort.md`](../../../idea-symphony/prompts/phase4_summary-only_low-effort.md)
  - [`idea-symphony/prompts/phase4_summary-only_min-effort.md`](../../../idea-symphony/prompts/phase4_summary-only_min-effort.md)
- The three Phase 4 templates:
  - [`idea-symphony/templates/synthesis-attributed.md`](../../../idea-symphony/templates/synthesis-attributed.md)
  - [`idea-symphony/templates/synthesis-merged.md`](../../../idea-symphony/templates/synthesis-merged.md)
  - [`idea-symphony/templates/synthesis-summary.md`](../../../idea-symphony/templates/synthesis-summary.md)
- [`idea-symphony/SKILL.md`](../../../idea-symphony/SKILL.md) — Phase 4 invocation block

---

## Background

### Context

Memo §4 names PP1: **"`phase4_full-synthesis.md`, `phase4_summary-only_low-effort.md`, and `phase4_summary-only_min-effort.md` are evolving independently. Document the contract surface they share (output schema, attribution rules, blind-spot detection requirements) versus where they may legitimately diverge by effort level. Catch drift before the three prompts diverge in ways that break downstream Phase 5 assumptions."**

PP1 is a **contract-analysis task with no live generation runs**. It reads the three prompts side-by-side, audits their templates, samples actual outputs from the SS1 manifest to verify what the prompts *really* produce, and produces a contract-diff document with recommendations.

### What We Know

| Dimension | Pinned |
|---|---|
| Sample inputs | All 60 samples from SS1 (light reads only — sample 4-6 outputs per effort to verify what prompts produce) |
| Live runs | None — PP1 is purely analytical |
| Contract scope | Both schema (frontmatter + section headings) AND internal prompt patterns (per Discussion Q9) |
| Effort-conditional sections | The three prompts intentionally diverge per effort — distinguish legitimate divergence from drift |

### Research Questions

- **RQ-PP1a (FQ3):** What output-schema fields (frontmatter, section headings) do the three prompts share, and where do they diverge? Are divergences legitimate (effort-driven) or drift (incidental)?
- **RQ-PP1b (FQ3):** What attribution rules do the three prompts share? (E.g., low: "frame by stance, not by persona name"; med/high: "use *—Persona Name* format".)
- **RQ-PP1c (FQ3):** What Phase-5 signals do the prompts emit? (Central Tension, confidence tags, Neither-lens gaps, conspicuous absences.) Do all three emit each?
- **RQ-PP1d (FQ3, FQ5):** Are there contract gaps that would break Phase 5's aggregation? (E.g., does one prompt use `[risk]` tags while another uses `[unique: risk]`?)
- **RQ-PP1e (FQ3):** What internal prompt patterns (worked examples, quality standards, output-format hints) differ across the three? Are differences justified or copy-paste drift?

---

## Investigation Task

### I-PP1: Document the contract surface across the three Phase 4 prompts

**Key question:** Where do the three Phase 4 prompts agree, where do they legitimately diverge, and where do they drift in ways that break Phase 5 assumptions?

**Research questions addressed:** RQ-PP1a–e (methodology FQ3, FQ5)

**Execution model:** **1 Opus subagent.** No fan-out — the work is fundamentally cross-prompt comparison and would lose context if split.

### Test Data

- The three Phase 4 prompts (analyzed in full)
- The three templates (analyzed in full)
- A 4-6 output sample per effort from SS1's manifest (light reads to verify what prompts actually produce vs. what they specify)

### Subagent Prompt

Spawn (**Opus model**, `general-purpose` type) with the following self-contained prompt:

````
You are documenting the contract surface across the three Idea Symphony Phase 4 prompts. This is a contract-analysis task with **no live generation runs** — you read the prompts, templates, and a sample of actual outputs, then produce a contract-diff document.

## Inputs to Read

1. `dev/2026-05-03_symphony-phase4/methodology.md` — full methodology
2. `dev/2026-04-27_effort-comparison.md` — source memo
3. The three Phase 4 prompts (full read each):
   - `idea-symphony/prompts/phase4_full-synthesis.md`
   - `idea-symphony/prompts/phase4_summary-only_low-effort.md`
   - `idea-symphony/prompts/phase4_summary-only_min-effort.md`
4. The three Phase 4 templates:
   - `idea-symphony/templates/synthesis-attributed.md`
   - `idea-symphony/templates/synthesis-merged.md`
   - `idea-symphony/templates/synthesis-summary.md`
5. `idea-symphony/SKILL.md` — Phase 4 invocation block (search for "Phase 4")
6. `dev/2026-05-03_symphony-phase4/data-prep/sample-manifest.md` — for the 60 sample paths
7. **Sampled actual outputs (4-6 per effort, 16-24 total — read in parallel batches):**
   - 4-6 `synthesis/{cluster}_summary.md` files at min from different topics
   - 4-6 `synthesis/{cluster}_summary.md` files at low from different topics
   - 4-6 `synthesis/{cluster}_summary.md` + 4-6 `_synthesis.md` + 4-6 `attributed/{cluster}.md` at med
   - 4-6 of each at high

The sampled outputs verify what the prompts *actually* produce vs. what they nominally specify.

## Method

### Step 1: Build the contract matrix

For each of these contract dimensions, compare what each of the three prompts (and templates) says:

| Dimension | What to look for |
|---|---|
| Frontmatter fields | Required fields per output, field naming, value formats |
| Top-level section headings | What sections each output has, in what order |
| Sub-section structure | E.g., "Key Themes" sub-headings, "Recommended Actions" timeframe split |
| Attribution rules | When persona names appear, attribution format (`*—Persona Name*` vs. "a risk-oriented view"), where attribution is forbidden |
| **Persona names in prose (per Q6)** | **Where do persona names appear in prose? Per the portable-analysis principle: ALLOWED in `attributed/{cluster}.md` only; FORBIDDEN in `_synthesis.md` and `_summary.md` prose. Verify each prompt makes this rule explicit. Currently: low-effort prompt is explicit ("rather than naming the personas in the prose"); full-synthesis prompt is explicit for `_synthesis.md` ("remove all persona attribution") but SILENT for `_summary.md` — likely drift target.** |
| Confidence-tag vocabulary | `[convergent]` / `[trade-off]` / `[unique: risk]` / `[unique: feasibility]` / `[recurring]` / `[single]` — which prompt uses which |
| Central Tension demand | Required at low (explicit field). Implicit at med/high? Min: present or absent? |
| Neither-lens gaps section | Specified in low-effort prompt. Present in min/med/high? |
| Conspicuous-absences section | Specified in min-effort prompt. Present in low/med/high? |
| Quality-standards block | Each prompt has a "Synthesis Guidelines" or "Quality Standards" block — what does each say? |
| Worked examples | Full-synthesis prompt has the tool-library pricing example. Low has the membership-pricing example. Min: any? |
| Word-count targets | Min: 500-800. Low: 500-800. Med/High: not specified explicitly. Drift? |
| User-Q marker handling | Full-synthesis prompt mentions `[User Q]` marker preservation. Min/low: no mention. Drift? |

### Step 2: Verify against actual outputs

For each contract dimension, sample 4-6 actual outputs per effort and check:
- Does the actual output match the prompt's specification?
- Where outputs deviate, is it (a) a one-off, (b) systematic, or (c) a sign the prompt's contract is unclear?

### Step 3: Classify divergences

For every contract dimension where the three prompts differ, classify:
- **Legitimate divergence** — driven by effort-level needs (e.g., min has no convergence, so "Convergent themes" section is correctly absent from min-effort prompt)
- **Drift** — copy-paste left over from older prompt versions, inconsistent vocabulary, missing-section that should be present
- **Phase 5 risk** — divergence that breaks Phase 5's ability to aggregate cross-cluster signals (e.g., if min uses `[recurring]` but Phase 5 only knows `[convergent]`, aggregation breaks)

### Step 4: Recommend convergence and divergence-preservation

For each divergence:
- If legitimate: document in the diff so future prompt edits don't accidentally erase it
- If drift: recommend a specific change to one or more prompts to converge
- If Phase 5 risk: recommend a fix urgently — flag for RP1 priority

## Deliverable

Produce one contract-diff document:

`dev/2026-05-03_symphony-phase4/findings/PP1_three-prompt-parity.md`

```markdown
# Phase 4 Investigation — PP1 Three-Prompt Parity Findings

**Date:** [today]
**Prompts analyzed:** 3 (`phase4_full-synthesis.md`, `phase4_summary-only_low-effort.md`, `phase4_summary-only_min-effort.md`)
**Templates analyzed:** 3 (synthesis-attributed.md, synthesis-merged.md, synthesis-summary.md)
**Outputs sampled:** [N min] + [N low] + [N med] + [N high] = [total]

---

## Headline

[2-3 paragraph verdict: how aligned are the three prompts? Where is the most concerning drift? What changes does Phase 5 require?]

---

## Contract Matrix

For each contract dimension, document what each prompt specifies and where they diverge.

### Dimension 1: Frontmatter fields

| Field | min | low | med (full-synthesis) | high (full-synthesis) | Verdict |
|---|---|---|---|---|---|
| project-name | required | required | required | required | aligned |
| session-dir | required | required | required | required | aligned |
| datetime | required | required | required | required | aligned |
| effort | "min" | "low" | "[medium/high]" (note: prompt template says one or the other) | "[medium/high]" | aligned |
| stage | "Phase 4: Summary Generation" | "Phase 4: Summary Generation" | "Phase 4: Response Synthesis" | "Phase 4: Response Synthesis" | **DRIFT — stage name differs without effort justification. Recommend: align all three to "Phase 4: Response Synthesis".** |
| model-requested | required | required | required | required | aligned |
| model-reported | required | required | required | required | aligned |
| topic-cluster | required | required | required | required | aligned |
| synthesis-type | not present | not present | "attributed" / "synthesis" / "summary" (one per file) | same | legitimate divergence (only full-synthesis path has multi-file output) |

### Dimension 2: Top-level section headings

| Section | min `_summary.md` | low `_summary.md` | med/high `_summary.md` | med/high `_synthesis.md` | med/high `attributed/{cluster}.md` | Verdict |
|---|---|---|---|---|---|---|
| `# Summary: [Topic]` | yes | yes | yes | n/a (different title: "Brainstorming Synthesis") | n/a | aligned for `_summary.md` |
| `**Central Tension**:` | not present | required | not present | n/a | n/a | **DRIFT — Central Tension is required at low, absent at min and med/high. Phase 5 wants Central Tension across all efforts to do cross-cluster aggregation. Recommend: add Central Tension as required field at min and med/high.** |
| `## Executive Summary` | required | required | required | n/a | n/a | aligned |
| `## Key Themes` | required (3-5) | required (3-5) | required (3-5) | n/a | n/a | aligned |
| `## Recommended Actions` (or `Recommended Next Steps`) | "Recommended Actions" | "Recommended Actions" | **"Recommended Next Steps"** | n/a | n/a | **DRIFT — naming inconsistency. Recommend converge on one name.** |
| `## Key Considerations` | required | required | required | n/a | n/a | aligned in name; sub-section structure varies — see Dimension 3 |
| `## Synthesized Insights by Question` | n/a | n/a | n/a | required | required | legitimate divergence (only full-synthesis path) |
| Footer counts ("Questions addressed", etc.) | "Response sources: 1" | "Source lenses: ..." | "Personas contributing: ..." | "Personas contributing: ..." | "Personas contributing: ..." | aligned in spirit; field names differ |

### Dimension 3: Sub-section structure inside `## Key Considerations`

| Sub-section | min | low | med/high | Verdict |
|---|---|---|---|---|
| Opportunities | required | not present | required | **DRIFT — missing from low. Recommend: clarify whether low uses Opportunities or only the lens-based sub-sections (High-confidence / Trade-offs / Blind-spot flags)**|
| Risks & Challenges | required | not present | required | (same) |
| Trade-offs | required | required (lens-based) | required | aligned in name; structure differs |
| High-confidence items | not present | required | not present | legitimate divergence (only low has the DA+Pragmatist convergence framing) |
| Blind-spot flags | not present | required (`unique: risk` / `unique: feasibility`) | not present | legitimate divergence (only low has the two-lens framing) |
| Neither-lens gaps | not present | required (skip if nothing) | not present | **PHASE 5 RISK — only low surfaces this. Phase 5 wants cross-cluster aggregation of gaps. Recommend: add equivalent "Coverage gaps" section at min (already partly via Conspicuous Absences) and at med/high.** |
| Conspicuous absences | required (skip if nothing) | not present | not present | **PHASE 5 RISK — only min surfaces this. Phase 5 may want it at low (gap from non-DA/Pragmatist angles) and at med/high (gap from missing personas).** |

### Dimension 4: Attribution rules

| Rule | min | low | med/high (full-synthesis) | Verdict |
|---|---|---|---|---|
| Persona names allowed in prose | n/a (one source) | **forbidden** ("frame by stance, not by generator") | **forbidden in `_synthesis.md` and `_summary.md`; allowed in `attributed/` only** | aligned per Q6 portable-analysis principle |
| Attribution format (in `attributed/` only) | n/a | n/a (no `attributed/` doc) | `*—Persona Name*` | legitimate divergence (only full-synthesis path has `attributed/`) |
| Stance-based framing in prose | n/a (one source) | "a risk-oriented view" / "a feasibility-oriented case" | required to be similar; verify against actual outputs whether full-synthesis uses analogous stance framing | likely DRIFT — full-synthesis prompt does not explicitly require stance-based framing for `_synthesis.md` and `_summary.md` |
| `_summary.md` attribution | n/a (one source) | no persona names | "Personas contributing: [list]" in footer only; no persona names in prose body | aligned in spirit; verify in actual outputs |

### Dimension 4b (NEW per Q6): Persona-name prose discipline

This dimension is the single most important Phase-5 risk per Discussion Q6. Audit each prompt for whether it explicitly forbids persona names in the prose of non-attributed outputs:

| Document | min | low | med/high `_synthesis.md` | med/high `_summary.md` | Status |
|---|---|---|---|---|---|
| Explicit "no persona names in prose" rule | n/a (single source — no personas) | **YES** — "rather than naming the personas in the prose" | **YES** — "remove all persona attribution" (Document 2 instructions) | **NO** — full-synthesis prompt is silent on persona-naming for Document 3 (`_summary.md`) | **DRIFT — `_summary.md` lacks explicit rule.** Recommend: RP1 add `"Like Document 2, do not name personas in the prose. Convergence counts (e.g., 'six of seven personas converged') are allowed; specific persona names are not."` to Document 3 quality standards. |

**Verification against actual outputs:** in your sampled `_summary.md` files at med + high, count persona-name occurrences in prose. If > 0 in any sample, the silent-rule is producing real drift, not just a documentation gap. Cross-link to FA1 Axis A2 findings.

### Dimension 5: Confidence-tag vocabulary

| Tag | min | low | med/high | Verdict |
|---|---|---|---|---|
| `[recurring]` | required | not present | not present | legitimate divergence |
| `[single]` | required | not present | not present | legitimate divergence |
| `[convergent]` | not present | required | not specified explicitly in `_summary.md` (only in convergence claims like "N of M personas") | **DRIFT — med/high `_summary.md` doesn't use the tag vocabulary at all. Phase 5 may need it. Recommend: extend tag vocabulary to med/high `_summary.md` Recommended Next Steps.** |
| `[trade-off]` | not present | required | not present | (same) |
| `[unique: risk]` / `[unique: feasibility]` | not present | required | not present | legitimate divergence (only low has the two-lens framing) |

### Dimension 6: Word-count targets

| Target | min | low | med/high `_summary.md` | med/high `_synthesis.md` + `attributed/` | Verdict |
|---|---|---|---|---|---|
| Specified word count | 500-800 | 500-800 | not specified | not specified | **DRIFT — med/high have no word-count target in the prompt. Length-budget freedom may explain BL1's observation that med/high `_summary.md` lengths vary widely.** |

### Dimension 7: Worked examples in prompt

| Prompt | Worked example present? | Topic | Verdict |
|---|---|---|---|
| min | none | n/a | **DRIFT — example absent. Adding even a 4-line example may shift output behavior, per the Phase 5 memo's hypothesis on compression-style themes.** |
| low | yes | community tool library membership pricing | aligned |
| full-synthesis (med/high) | yes | tool library pricing | aligned |

### Dimension 8: User-Q marker handling

| Prompt | Mentions `[User Q]` marker preservation? | Verdict |
|---|---|---|
| min | no | **DRIFT — if user questions can land in min/low clusters, the marker preservation rule should apply. Verify whether min/low clusters can have `[User Q]` markers.** |
| low | no | (same) |
| full-synthesis (med/high) | yes | aligned |

[Continue for any remaining dimensions you observe.]

---

## Verified Drift vs. Specification

For each dimension where the prompts diverge, you sampled actual outputs to confirm whether actual outputs match the prompt or drift further. Document any cases where actual outputs deviate from the prompt:

| Dimension | Prompt says | Actual output observed | Affects samples |
|---|---|---|---|
| [example] | "Word count target: 500-800" | min outputs ranged from 320 to 1100 words across 6 sampled clusters | 6/6 sampled deviated |
| [example] | "Frame by stance, not by generator" | 1/4 sampled low outputs named "The Devil's Advocate" in prose | 1/4 sampled |

---

## Phase 5 Risks

[Bulleted list of all dimensions classified as Phase 5 risks above. Each item should explain *how* Phase 5 aggregation breaks. Sorted by severity.]

---

## Recommendations for RP1

Sorted by impact:

1. **[Highest priority] — Add Central Tension to all three prompts as required field.** Without it Phase 5 cannot aggregate across clusters at min and med/high. Specific change: add to the output template of each prompt at the same position low has it.

2. **[High priority] — Align stage frontmatter naming.** Currently min/low say "Phase 4: Summary Generation" and med/high say "Phase 4: Response Synthesis". Recommend converging on "Phase 4: Response Synthesis" everywhere.

3. **[High priority] — Add word-count targets to med/high prompts.** BL1's observation of length variance in med/high `_summary.md` is partly attributable to missing target. Recommend: 800-1500 words for med, 1200-2000 for high.

4. [Medium priority] — Align "Recommended Actions" vs. "Recommended Next Steps" naming.

5. [Medium priority] — Extend confidence-tag vocabulary to med/high. Phase 5's confidence-tag aggregation is partial without it.

6. [Lower priority] — Add a worked example to min-effort prompt. May shift compression behavior per the Phase 5 memo.

[Continue for all observed drift items.]

---

## Legitimate Divergences (preserve in future edits)

For each divergence classified as legitimate, document it so that future prompt edits don't accidentally collapse the difference:

- **Attribution rules:** low explicitly forbids persona names in prose (because the value is in lens-based framing); med/high require `*—Persona Name*` (because the value is in transparency). Do not converge.
- **Two-lens sub-sections in low (High-confidence / Trade-offs / Blind-spot flags):** specific to DA + Pragmatist pairing. Do not migrate to other efforts.
- **Multi-file output (attributed + synthesis + summary):** specific to full-synthesis path. Do not converge to single-file.
- ...

---

## Handoff to RP1

The recommendations above feed directly into RP1's Iteration 1 prompt revisions. RP1 should prioritize the Phase 5 Risks list first, then the high-priority drift items.
```

## Quality Standards

- Every "DRIFT" or "PHASE 5 RISK" classification must include a concrete recommended fix that RP1 can implement directly. Vague observations are not findings.
- Every "legitimate divergence" classification must include the *reason* the divergence exists, so future edits don't collapse it accidentally.
- Use the actual prompt text and template text as evidence — quote where helpful.
- The "Verified Drift vs. Specification" section is the most important falsification step — without it, the contract analysis is just specification reading.

## Notes

- Do not modify any of the prompts under analysis. PP1 is read-only on `idea-symphony/prompts/`.
- Do not produce any new Phase 4 outputs — sampling is for analysis only.
- This task is fundamentally analytical; cross-reference outputs to verify assertions but do not score them (that's FA1/LB1).
````

### Expected Output

| Output | Path |
|---|---|
| Contract-diff document | `dev/2026-05-03_symphony-phase4/findings/PP1_three-prompt-parity.md` |

---

## Dependency Notes

- **Depends on:** SS1's manifest (for sample paths to verify against). Does NOT depend on BL1.
- **Blocks:** RP1.
- **Independent of:** FA1, LB1, RG1.

## Priority

**High but parallelizable.** 1 subagent. Schedule alongside BL1 to keep timeline tight — PP1 doesn't need baselines.

## Discussion Questions Affecting This Task

- **Q9** (PP1 contract scope: schema only vs. schema + internal patterns) — pinned to "include both" in the prompt above (resolved per Q9 response)
- **Q6** (persona-naming policy in prose) — added Dimension 4b above per Q6 response. Audit each prompt for explicit "no persona names in prose" rule; flag full-synthesis prompt's silence on this for `_summary.md` as drift target.

# Phase 4 — Faithfulness Audit (Full-Synthesis Path)

**Date:** 2026-05-03
**Parent:** [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md)
**Maps to:** F4-FA1 in [`dev/2026-04-27_effort-comparison.md`](../../2026-04-27_effort-comparison.md) §4
**Inputs:**
- Parent methodology — [`dev/2026-05-03_symphony-phase4/methodology.md`](../methodology.md) (Phase 3 §F4-FA1)
- BL1 baselines — `dev/2026-05-03_symphony-phase4/baselines/{topic}_{med|high}_{NN}_{cluster-slug}_through-lines.md` (40 files for med + high samples)
- SS1 manifest — `dev/2026-05-03_symphony-phase4/data-prep/sample-manifest.md`
- Phase 4 full-synthesis prompt under test — [`idea-symphony/prompts/phase4_full-synthesis.md`](../../../idea-symphony/prompts/phase4_full-synthesis.md)
- Phase 5 investigation — [`dev/2026-04-23_symphony-phase5-investigation.md`](../../2026-04-23_symphony-phase5-investigation.md) (for the Phase-5-signal-log requirement)

---

## Background

### Context

`phase4_full-synthesis.md` produces three documents per cluster at med + high effort: `attributed/{cluster}.md` (transparency), `{cluster}_synthesis.md` (readability), `{cluster}_summary.md` (decision-making). Memo §4 names the audit: **"Targets: zero dropped persona names, zero hallucinated quotes, all convergence counts traceable."** FA1 quantifies how close the prompt actually gets.

**Per Discussion Q6, FA1 splits the persona-name axis** into three sub-axes that respect the portable-analysis principle: persona names should appear ONLY in `attributed/{cluster}.md` (the transparency document), and should be ABSENT from `_synthesis.md` and `_summary.md` (which must read as portable analysis to a cold reader). The three-sub-axis split is:

- **Axis A1** — `attributed/{cluster}.md`: persona names should appear correctly attributed (med strict / high weighted per Q5).
- **Axis A2** — `_synthesis.md` and `_summary.md`: persona names should be ABSENT from prose. Convergence counts ("six of seven personas converged") are allowed; specific persona names ("The Empath flagged X") are not.
- **Axis A3** — Substance survival in prose: distinctive contributions per BL1's persona-distinctiveness map should survive into `_synthesis.md` and `_summary.md` as substance, even though the persona name does not appear.

The audit doubles as the source of per-cluster aggregable Phase-5 signals (Central Tension, confidence tags, Neither-lens gap candidates, conspicuous-absence candidates) — emitting these as a deliverable closes Phase 5 E4 without a separate audit (per Q14).

### What We Know

| Dimension | Pinned |
|---|---|
| Samples | 40 (20 med + 20 high), all using `phase4_full-synthesis.md` |
| Scoring axes | A1 (attributed: persona-name preservation), A2 (prose: persona-name absence), A3 (prose: substance survival), B (hallucinated quotes), C (traceable convergence counts) |
| Med rubric (A1) | Strict (4 personas, low ambiguity, drops are unambiguously failures) |
| High rubric (A1) | Weighted (7 personas, more legitimate aggregation pressure) |
| Persona-name absence in prose (A2) | Strict zero — any persona name in `_synthesis.md` or `_summary.md` prose = drift (per Q6) |
| Substance survival in prose (A3) | ≥ 90% — distinctive contributions survive even though names don't appear |
| Hallucinated-quote tolerance (B) | Strict zero |
| Convergence-count traceability (C) | 100% — every claim must trace to BL1 ledger |
| Phase-5 signal emission | Required deliverable — closes Phase 5 E4 (per Q14) |

### Research Questions

- **RQ-FA1a (FQ1):** Does `attributed/{cluster}.md` correctly preserve persona names per BL1's ledger? (Axis A1.)
- **RQ-FA1b (FQ1):** Are persona names successfully suppressed from `_synthesis.md` and `_summary.md` prose, while convergence counts remain? (Axis A2.)
- **RQ-FA1c (FQ1):** Do persona-distinctive contributions survive into `_synthesis.md` and `_summary.md` as substance, even when the persona name doesn't appear? (Axis A3.)
- **RQ-FA1d (FQ1):** Are quotes in `_synthesis.md` and `attributed/{cluster}.md` faithful to the source `responses/`? (Strict: any unattributable quote = hallucination.) (Axis B.)
- **RQ-FA1e (FQ1):** Are convergence counts ("N of M personas converged") traceable to the underlying responses? (Axis C.)
- **RQ-FA1f (FQ4):** Do persona-count effects (4 vs. 7) produce systematic faithfulness differences across A1/A2/A3?
- **RQ-FA1g (FQ5):** What aggregable Phase-5 signals does each cluster surface?

---

## Investigation Task

### I-FA1: Score med + high Phase 4 outputs against ground-truth ledgers

**Key question:** For each of the 40 med + high cluster samples, does the existing `_synthesis.md` + `_summary.md` + `attributed/{cluster}.md` faithfully preserve the through-lines, personas, and convergences in BL1's ledger?

**Research questions addressed:** RQ-FA1a–e (methodology FQ1, FQ4, FQ5)

**Execution model:** Fan-out by sample. **40 Opus subagents in parallel** (batched 6 concurrent ≈ 7 waves), one per med or high sample. Each scores the three Phase 4 output files against the BL1 ledger for its sample. A cross-sample synthesis subagent compiles patterns and emits the Phase-5-signal log.

### Test Data

40 samples from BL1's baselines (the 40 med + high baselines).

### Subagent Design

**Per-sample scoring subagent (40 subagents):**

Each reads:
- The Phase 4 prompt under test
- BL1's ledger for its sample
- The three Phase 4 output files (`_summary.md`, `_synthesis.md`, `attributed/{cluster}.md`)
- The raw `responses/{cluster}/*.md` files (for quote-faithfulness verification)

Produces one scoring sub-finding file per sample.

**Cross-sample synthesis subagent (1 subagent):**

Reads all 40 per-sample scoring sub-findings + BL1 baselines and compiles the cross-sample analysis, the scoring matrix, and the Phase-5-signal log.

### Per-Sample Subagent Prompt

Spawn each per-sample subagent (**Opus model**, `general-purpose` type) with the following self-contained prompt. Substitute `{TOPIC}`, `{EFFORT}` (med | high), `{CLUSTER_NN}`, `{CLUSTER_SLUG}`.

````
You are scoring the faithfulness of Phase 4 full-synthesis output for one cluster sample. You handle one (topic, effort, cluster) — {TOPIC}/{EFFORT}/{CLUSTER_NN}_{CLUSTER_SLUG} — in isolation. Your output drives the FA1 cross-sample synthesis and feeds into RP1's prompt-revision targets.

## Inputs to Read

1. `idea-symphony/prompts/phase4_full-synthesis.md` — the prompt under test
2. `dev/2026-05-03_symphony-phase4/baselines/{TOPIC}_{EFFORT}_{CLUSTER_NN}_{CLUSTER_SLUG}_through-lines.md` — BL1's ground-truth ledger (your scoring reference)
3. `test-runs/{TOPIC}/{EFFORT}/synthesis/{CLUSTER_NN}_{CLUSTER_SLUG}_summary.md` — Phase 4 output #3 (executive summary)
4. `test-runs/{TOPIC}/{EFFORT}/synthesis/{CLUSTER_NN}_{CLUSTER_SLUG}_synthesis.md` — Phase 4 output #2 (synthesis without attribution)
5. `test-runs/{TOPIC}/{EFFORT}/synthesis/attributed/{CLUSTER_NN}_{CLUSTER_SLUG}.md` — Phase 4 output #1 (attributed synthesis)
6. `test-runs/{TOPIC}/{EFFORT}/responses/{CLUSTER_NN}_{CLUSTER_SLUG}/*.md` — raw Phase 3 responses (for quote-faithfulness verification — read in parallel)

Tool-use hint: read the three Phase 4 outputs and the raw responses in parallel.

## Scoring Methodology

The persona-name axis from the original spec is split into three sub-axes (A1, A2, A3) per Discussion Q6. The portable-analysis principle: persona names belong only in `attributed/{cluster}.md` (transparency), not in `_synthesis.md` or `_summary.md` (which a cold reader of `BRAINSTORM.md` should be able to follow without knowing the Symphony skill exists).

### Axis A1: Persona-name preservation in `attributed/{cluster}.md`

For each persona in the BL1 ledger's persona-distinctiveness map:
- Does the persona appear by name in `attributed/{cluster}.md`? (Y/N)
- Are the persona's distinctive through-lines (per BL1 ledger) attributed to them in `attributed/{cluster}.md`? (Per-through-line: Y / N / wrong-attribution)

**Scoring (med — strict):**
- Persona-name preservation rate = (personas-named-in-attributed) / (total personas in BL1 distinctiveness map)
- Distinctive-attribution rate = (distinctive-TLs-attributed-correctly) / (total distinctive TLs)
- Either rate < 100% counts as a failure for that persona at med.

**Scoring (high — weighted):**
- Same rates, but partial credit: a wrong-attribution (claim correctly preserved but attributed to a different persona) counts as 0.5; a complete drop (claim absent from `attributed/` entirely) counts as 0; a correct attribution counts as 1.
- Pass threshold = 90% (per Q6).

**Cross-reference to BL1 flags:** read BL1's `attributed/` cross-reference notes (Step 6 output) for this sample. The "possibly fabricated", "possibly dropped", and "possibly misattributed" flag lists are inputs — verify each against the raw responses and incorporate into A1 scoring.

### Axis A2: Persona-name absence in `_synthesis.md` and `_summary.md` prose

Scan `{cluster}_synthesis.md` and `{cluster}_summary.md` for persona-name occurrences in the prose. The persona names to scan for are the personas listed in BL1's persona-distinctiveness map (e.g., "The Pragmatist", "The Devil's Advocate", "The Empath", etc.).

**What counts as a persona-name occurrence (failure):**
- Direct mention by name: "The Empath flagged X", "according to The Pragmatist"
- Possessive forms: "The Empath's framing"
- Any sentence where a persona's name appears as a sentence subject or attribution

**What does NOT count as a failure:**
- Convergence counts that don't name specific personas: "six of seven personas converged on X" — allowed
- Stance framing without persona names: "a feasibility-oriented case", "a risk-oriented counterpoint" — required (per the prompt's portable-analysis principle)
- Footer fields like "Personas contributing: [list]" — allowed (footer metadata, not prose)
- Persona-attribution sub-bullets in `attributed/{cluster}.md` — n/a (not in `_synthesis.md` or `_summary.md`)

**Scoring (universal — strict zero tolerance per Q6):**
- Persona-name occurrence count in `_synthesis.md` prose: 0 = pass; > 0 = fail. Report each occurrence with excerpt.
- Persona-name occurrence count in `_summary.md` prose: 0 = pass; > 0 = fail. Report each occurrence with excerpt.

### Axis A3: Substance survival in `_synthesis.md` and `_summary.md`

For each distinctive through-line in BL1's persona-distinctiveness map (the through-lines that are uniquely or originally a particular persona's contribution):
- Does the through-line's *substance* appear in `{cluster}_synthesis.md` (verbatim, paraphrased, or absorbed)? Substance survival is independent of whether the persona is named.
- Does the through-line's *substance* appear in `{cluster}_summary.md`?

This axis tests whether the prompt successfully suppresses persona names while preserving the substantive contribution — the value the persona-distinctiveness map encoded.

**Scoring:**
- Substance-survival rate (`_synthesis.md`) = (distinctive-TLs-with-substance-preserved) / (total distinctive TLs)
- Substance-survival rate (`_summary.md`) = same calculation for the summary doc
- Pass threshold: ≥ 90% on both
- Use Q8 survival categories: verbatim + paraphrased = survival; absorbed = separate category (tracked but not counted as survival).

### Axis B: Hallucinated quotes

For every quoted phrase or sentence in `attributed/{cluster}.md` (anything in quotation marks, italics with attribution, or sub-bullets purporting to be original responses):
- Find the quote in the corresponding `responses/{persona}.md` (verbatim, paraphrase, or substantive equivalent acceptable).
- Classify each quote as: **faithful** | **paraphrase** (substantive but reworded) | **hallucinated** (not present in the cited persona's response).

**Scoring (universal — strict zero tolerance):**
- Hallucinated quote count: 0 = pass; > 0 = fail.
- Paraphrase count: not a fail, but tracked.

### Axis C: Traceable convergence counts

For every convergence claim in `{cluster}_summary.md`, `{cluster}_synthesis.md`, or `attributed/{cluster}.md` ("N of M personas converged on X", "the majority of personas raised Y", etc.):
- Look up the through-line in BL1's ledger.
- Verify the count matches the BL1 convergence map (or is reasonable interpretation of "majority", etc.).

**Note:** Convergence counts are explicitly allowed in `_synthesis.md` and `_summary.md` prose per Axis A2 — they do not name specific personas. Verify them here regardless of which document they appear in.

**Scoring (universal — strict):**
- Traceable convergence rate = (convergence-claims-verified) / (total convergence-claims-in-output)
- Untraceable claims fail. Pass threshold: 100%.

### Phase-5 Signal Emission

For each sample, also document:
- **Central Tension** as named in `{cluster}_summary.md` (if present) — does it match BL1's Central Tension candidate?
- **Confidence tags** present in `{cluster}_summary.md` — do they match the BL1 confidence-tag candidates?
- **Neither-lens gap signals** — do not apply at med + high (only at low). Note "n/a — med/high effort".
- **Conspicuous-absence signals** — do not apply at med + high (only at min). Note "n/a — med/high effort".

## Deliverable

Produce one scoring sub-finding file:

`dev/2026-05-03_symphony-phase4/findings/FA1_faithfulness-audit_{TOPIC}_{EFFORT}_{CLUSTER_NN}.md`

```markdown
# FA1 Per-Sample Score: {TOPIC}/{EFFORT}/{CLUSTER_NN}_{CLUSTER_SLUG}

**Date:** [today]
**Sample ID:** {TOPIC}_{EFFORT}_{CLUSTER_NN}_{CLUSTER_SLUG}
**Effort:** {EFFORT}
**Personas in sample:** [N]
**Scoring rubric:** [strict (med) | weighted (high)]

---

## Axis A1: Persona-Name Preservation in `attributed/{cluster}.md`

### Per-persona scorecard

| Persona | Named in `attributed/`? | Distinctive TLs preserved | Distinctive TLs misattributed | Distinctive TLs dropped | Persona score (0-1) |
|---|---|---|---|---|---|
| The Pragmatist | Y | 4/5 | 0 | 1 | 0.8 (strict: fail) / 0.8 (weighted: pass) |
| The Devil's Advocate | Y | 5/5 | 0 | 0 | 1.0 (pass) |
| ... | ... | ... | ... | ... | ... |

**Persona-name preservation rate:** N/M = X%
**Distinctive-attribution rate:** P/Q = Y%
**A1 verdict:** [pass | fail] (per rubric: med-strict requires 100%; high-weighted requires ≥ 90%)

**BL1 cross-reference flags incorporated:**
- Possibly fabricated (BL1 flagged): [N flags reviewed; M confirmed as fabrications and counted in A1 scoring]
- Possibly dropped (BL1 flagged): [N flags reviewed; M confirmed as drops]
- Possibly misattributed (BL1 flagged): [N flags reviewed; M confirmed as misattributions]

## Axis A2: Persona-Name Absence in `_synthesis.md` and `_summary.md` Prose

### Persona-name occurrences in `_synthesis.md`

| # | Excerpt | Persona named | Type (subject / possessive / attribution) |
|---|---|---|---|
| 1 | "[excerpt]" | The Empath | subject |
| ... | ... | ... | ... |

**Total persona-name occurrences in `_synthesis.md` prose:** [N]

### Persona-name occurrences in `_summary.md`

| # | Excerpt | Persona named | Type |
|---|---|---|---|
| 1 | "[excerpt]" | The Pragmatist | possessive |
| ... | ... | ... | ... |

**Total persona-name occurrences in `_summary.md` prose:** [N]

**A2 verdict:** [pass (zero occurrences in both docs) | fail (any occurrence)]

## Axis A3: Substance Survival in `_synthesis.md` and `_summary.md`

For each distinctive through-line in BL1's persona-distinctiveness map, classify substance presence in the prose docs (independent of whether the persona is named — Axis A2 scores naming separately).

| BL1 distinctive TL | Persona (BL1) | In `_synthesis.md`? | In `_summary.md`? | Notes |
|---|---|---|---|---|
| TL-3 (distinctive to The Pragmatist) | The Pragmatist | verbatim | paraphrased | substance preserved without naming |
| TL-7 (distinctive to The Empath) | The Empath | absorbed | dropped | absorbed in synthesis, dropped from summary |
| ... | ... | ... | ... | ... |

**Substance-survival rate (`_synthesis.md`):** [verbatim + paraphrased] / [total distinctive TLs] = X%
**Substance-survival rate (`_summary.md`):** [verbatim + paraphrased] / [total distinctive TLs] = Y%
**Absorbed (separate category):** [N TLs absorbed in `_synthesis.md`]; [N in `_summary.md`]

**A3 verdict:** [pass (≥ 90% in both) | fail (< 90% in either)]

## Axis B: Hallucinated Quotes

| Quote # | Quote text (excerpt) | Cited persona | Found in source? | Classification |
|---|---|---|---|---|
| 1 | "[excerpt]" | The Pragmatist | Y verbatim | faithful |
| 2 | "[excerpt]" | The Empath | Y paraphrase | paraphrase |
| 3 | "[excerpt]" | The Visionary | N | **hallucinated** |
| ... | ... | ... | ... | ... |

**Quote count:** [N]
**Faithful:** [N]
**Paraphrase:** [N]
**Hallucinated:** [N]
**Hallucination-axis verdict:** [pass (0 hallucinations) | fail (≥ 1)]

## Axis C: Traceable Convergence Counts

| Claim # | Convergence claim text (excerpt) | BL1 ledger says | Match? |
|---|---|---|---|
| 1 | "Six of seven personas converged on X" | TL-3 has 6/7 personas → matches | Y |
| 2 | "The majority of personas raised Y" | TL-7 has 4/7 personas → "majority" defensible | Y |
| 3 | "All personas agreed Z" | TL-12 has 5/7 → **untraceable; ≠ all** | N |
| ... | ... | ... | ... |

**Convergence-claim count:** [N]
**Verified:** [N]
**Untraceable:** [N]
**Convergence-axis verdict:** [pass | fail]

## Phase-5 Signal Audit

- **Central Tension** in `_summary.md`: [exact text from output] — match to BL1 candidate? [Y / partial / N]
- **Confidence tags** present: [list of tags found, e.g., `[convergent]` x 4, `[trade-off]` x 2] — match to BL1 candidates? [Y / partial / N]
- **Neither-lens gaps:** n/a (med/high)
- **Conspicuous absences:** n/a (med/high)

## Sample Verdict

**Pass:** all five axes (A1, A2, A3, B, C) pass.
**Fail:** any axis fails.

**Verdict:** [PASS | FAIL]

**Failure modes (if FAIL):** [Bullet list naming the failing axis and the specific failure. e.g., "Axis A2 fail: 'The Empath' appeared as sentence subject 3 times in `_summary.md` prose — violates portable-analysis rule." or "Axis A3 fail: 8 of 12 distinctive through-lines from The Empath were absorbed into general statements rather than preserved as substance — synthesis is over-aggregating away from the persona's distinctive contribution."]

**Recommended prompt revision target (if FAIL):** [Specific suggestion. e.g., "For `phase4_full-synthesis.md`'s Document 3 (`_summary.md`) instructions: add explicit 'no persona names in prose; convergence counts allowed' rule mirroring Document 2's instruction. The current Document 3 quality standards are silent on persona-naming, which lets persona names leak into the executive summary."]
```

## Quality Standards

- Every quote in Axis B must be checked against the source persona file. "Sounds about right" is not verification.
- Every convergence claim in Axis C must be matched to a specific BL1 ledger row, not just spot-checked.
- The "Recommended prompt revision target" is the most important field for RP1 — be concrete and actionable.

## Notes

- Do not modify any files outside `dev/2026-05-03_symphony-phase4/findings/`.
- Do not produce any new Phase 4 outputs (no re-running the prompt — that's RP1's job).
- If BL1's ledger appears wrong (e.g., missed a through-line you find in the responses), do not modify the ledger. Flag the discrepancy in your sample finding's "Verdict" section so the cross-sample synthesis can decide whether to surface it as a BL1 audit issue.
````

### Cross-Sample Synthesis Subagent Prompt

After all 40 per-sample subagents complete:

````
You are compiling the FA1 cross-sample analysis from 40 per-sample scoring sub-findings.

## Inputs to Read

1. `dev/2026-05-03_symphony-phase4/methodology.md`
2. `dev/2026-05-03_symphony-phase4/findings/FA1_faithfulness-audit_*.md` — all 40 per-sample sub-findings
3. All 40 BL1 baselines for med + high samples
4. `idea-symphony/prompts/phase4_full-synthesis.md` — the prompt under test

## Deliverables

### 1. `dev/2026-05-03_symphony-phase4/findings/FA1_faithfulness-audit.md`

Cross-sample synthesis. Structure:

```markdown
# Phase 4 Investigation — FA1 Faithfulness Audit Findings

**Date:** [today]
**Samples scored:** 40 (20 med + 20 high)
**Prompt under test:** `idea-symphony/prompts/phase4_full-synthesis.md`

---

## Headline

[1-2 paragraph verdict: does `phase4_full-synthesis.md` meet the faithfulness targets across the sample? What are the dominant failure modes?]

## Pass-rate matrix

| | med (n=20) | high (n=20) | Combined (n=40) |
|---|---|---|---|
| Axis A1 pass rate (`attributed/` persona-name preservation) | X% | Y% | Z% |
| Axis A2 pass rate (prose persona-name absence) | X% | Y% | Z% |
| Axis A3 pass rate (prose substance survival) | X% | Y% | Z% |
| Axis B pass rate (no hallucinated quotes) | X% | Y% | Z% |
| Axis C pass rate (convergence-count traceability) | X% | Y% | Z% |
| **Overall pass rate (all 5 axes)** | X% | Y% | Z% |

## Med vs. high comparison

[2-3 paragraphs explicitly comparing med (4 personas) vs. high (7 personas) faithfulness. Does the prompt scale? Where does aggregation pressure cause it to fail?]

## Failure modes

For each recurring failure pattern (count ≥ 3 samples):
- **Pattern name:** [e.g., "Single-persona insight absorbed into multi-persona synthesis without bullet preservation"]
- **Affected samples:** [list]
- **Mechanism:** [why this is happening]
- **Recommended prompt revision target:** [concrete fix for RP1]

## Winner / loser samples

- **Cleanest faithfulness:** [3 samples that passed all axes with no anomalies — confirms prompt works in this regime]
- **Worst faithfulness:** [3 samples with the most failure modes — RP1 prioritizes fixing these regimes first]

## Recommendations for RP1

[Prioritized list of prompt revisions, sorted by failure-mode impact across the 40 samples. Each item should be concrete enough that RP1 can implement it directly.]
```

### 2. `dev/2026-05-03_symphony-phase4/findings/FA1_scoring-matrix.md`

A flat 40-row table with one row per sample showing all axis scores. Useful for RP1 to track progress per iteration.

```markdown
# FA1 Scoring Matrix

| sample-id | effort | A1 (attributed names) | A2 (prose name occurrences) | A3 synth survival | A3 summ survival | B (hallucinated quotes) | C (convergence traceability) | overall verdict |
|---|---|---|---|---|---|---|---|---|
| career-change_med_03 | med | 100% | 0 | 95% | 92% | 0 | 100% | PASS |
| career-change_med_07 | med | 75% | 2 | 70% | 60% | 1 | 80% | FAIL |
| ... | ... | ... | ... | ... | ... | ... | ... | ... |
```

### 3. `dev/2026-05-03_symphony-phase4/findings/FA1_phase5-signal-log.md`

Per-cluster Phase-5 signal inventory. **This deliverable closes Phase 5 E4** — coordinate with the parallel Phase 5 investigation.

```markdown
# FA1 Phase-5 Signal Log

**Date:** [today]
**Purpose:** Per-cluster aggregable signals for the parallel Phase 5 investigation (closes E4 from `dev/2026-04-23_symphony-phase5-investigation.md`).

| sample-id | Central Tension (output) | Central Tension (BL1 candidate) | Match? | Confidence tags found in output | Tag-match rate vs. BL1 |
|---|---|---|---|---|---|
| career-change_med_03 | "[output text]" | "[BL1 text]" | Y/partial/N | `[convergent]` x 4, `[trade-off]` x 1 | 100% |
| ... | ... | ... | ... | ... | ... |

**Aggregate observations for Phase 5:**
- Central Tension emission rate: X / 40 samples
- Tag schema adherence rate: X / 40 samples
- Phase 5 readiness: [Phase 5's E4 is satisfied iff the per-cluster signals are present and tag-vocabulary-aligned. Verdict: ready / partially ready / not ready.]
```
````

### Expected Output

| Output | Path |
|---|---|
| Per-sample scoring sub-findings | `dev/2026-05-03_symphony-phase4/findings/FA1_faithfulness-audit_{topic}_{effort}_{NN}.md` (40 files) |
| Cross-sample synthesis | `dev/2026-05-03_symphony-phase4/findings/FA1_faithfulness-audit.md` |
| Scoring matrix | `dev/2026-05-03_symphony-phase4/findings/FA1_scoring-matrix.md` |
| Phase-5 signal log | `dev/2026-05-03_symphony-phase4/findings/FA1_phase5-signal-log.md` |

---

## Dependency Notes

- **Depends on:** BL1 baselines for the 40 med + high samples being complete.
- **Blocks:** RP1.
- **Coordinates with:** the parallel Phase 5 investigation via `findings/FA1_phase5-signal-log.md`.

## Priority

**Critical-path test track.** Largest fan-out per task in this investigation (40 subagents). Batched 6 concurrent ≈ 7 waves.

## Discussion Questions Affecting This Task

- **Q5** (FA1 scoring rubric: strict vs. weighted) — pinned to med-strict / high-weighted on Axis A1 in the prompt above (resolved per Q5 response)
- **Q6** (FA1 pass threshold + persona-naming policy) — **Axis A split into A1/A2/A3** per Q6 response. A1: ≥ 90% (med strict / high weighted). A2: zero persona-name occurrences in prose (strict). A3: ≥ 90% substance survival in prose. B: zero hallucinated quotes. C: 100% convergence traceability.
- **Q14** (Phase 5 coordination) — pinned to "FA1 emits the signal log as a deliverable" in the prompt above (resolved per Q14 response)

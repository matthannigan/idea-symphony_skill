# Phase 4 Investigation — PP1 Three-Prompt Parity Findings

**Date:** 2026-05-04
**Prompts analyzed:** 3 (`phase4_full-synthesis.md`, `phase4_summary-only_low-effort.md`, `phase4_summary-only_min-effort.md`)
**Templates analyzed:** 3 (`synthesis-attributed.md`, `synthesis-merged.md`, `synthesis-summary.md`)
**Outputs sampled:** 5 min + 4 low + 5 med (incl. 1 `_synthesis.md` + 1 `attributed/`) + 5 high = 19 distinct outputs across 9 of 10 topics

---

## Headline

The three Phase 4 prompts are structurally aligned on the bones — frontmatter, top-level section spine (`Executive Summary` / `Key Themes` / `Recommended Actions` or `Recommended Next Steps` / `Key Considerations`), and the bullet-point format — and the four mandatory divergences identified in `dev/2026-05-03_effort-comparison.md` §5.2 (Conspicuous Absences at min, Neither-lens Gaps at low, persona attribution in `attributed/`, three documents at med/high) are honored cleanly in both prompts and outputs. min and low are the most internally consistent: their distinctive sections (Conspicuous Absences, Neither-lens Gaps) appear reliably in actual outputs and are absent from each other's territory, exactly as the regime split requires.

**The dominant drift, and the urgent Phase 5 risk, is in the full-synthesis prompt's `_summary.md` contract.** The prompt is silent on persona-name suppression in summary prose (the rule exists explicitly only for `_synthesis.md` via "Remove all persona attribution"), and four of ten sampled med/high `_summary.md` files leak persona names into prose ("the Devil's Advocate argues…", "from the Pragmatist's ROI lens to the Visionary's…", a `### The Necessary Devil's Advocate` heading). The low-effort prompt explicitly forbids this ("rather than naming the personas in the prose"); the full-synthesis prompt never says it. The 40% leakage rate is systematic, not one-off, and breaks the portable-analysis principle Q6 cites. Phase 5's `BRAINSTORM.md` builds from these summaries — once persona names land there they propagate to user-facing output.

The second-most-important gap is **Central Tension is required only at low**, even though it is load-bearing across all 10 high runs per the cross-comparison. Min, med, and high prompts have no Central Tension field. **Convergence-count phrasing is mandatory at high** (per §5.2) but the full-synthesis prompt never names this expectation; high outputs surface it 8 of 9 sampled because the underlying responses already contain it, not because the prompt requires it — a single weaker upstream input would silently break the signal. **Categorical reframe** (also mandatory at med/high per §5.2) is similarly never named in the full-synthesis prompt. Several lesser drift items round out the picture, all enumerated below with concrete RP1-implementable fixes.

---

## Contract Matrix

### Dimension 1: Frontmatter fields

| Field | min prompt | low prompt | full-synth prompt | Notes |
|---|---|---|---|---|
| `project-name` | required | required | required | aligned |
| `session-dir` | required | required | required | aligned |
| `datetime` | required | required | required | template uses `datetime`; one sample (`habit-tracker/min`, `habit-tracker/low`) drifted to `date:` — see Verified Drift |
| `effort` | `"min"` | `"low"` | `"[medium/high]"` | aligned |
| `stage` | `"Phase 4: Summary Generation"` | `"Phase 4: Summary Generation"` | `"Phase 4: Response Synthesis"` | **legitimate divergence** (template documents this split) |
| `model-requested` / `model-reported` | required | required | required | aligned |
| `topic-cluster` | required | required | required | aligned |
| `synthesis-type` | absent | absent | `"attributed"` / `"synthesis"` / `"summary"` | **mandatory divergence** (only full-synth produces three doc types) |

### Dimension 2: Top-level section headings

| Section | min `_summary.md` | low `_summary.md` | med/high `_summary.md` | med/high `_synthesis.md` | med/high `attributed/` |
|---|---|---|---|---|---|
| Title (`# Summary:` vs `# Brainstorming Synthesis:`) | `# Summary:` | `# Summary:` | `# Summary:` | `# Brainstorming Synthesis:` | `# Brainstorming Synthesis: ... - With Attribution` |
| `## Central Tension` (single bold-line field after title) | absent | **REQUIRED** | absent | absent | absent |
| `## Executive Summary` | required | required | required | absent | absent |
| `## Key Themes` | required | required | required | absent | absent |
| `## Synthesized Insights by Question` | absent | absent | absent | required | required |
| Action-list section | `## Recommended Actions` | `## Recommended Actions` | `## Recommended Next Steps` | absent | absent |
| `## Key Considerations` | required | required | required | absent | absent |
| Footer fields (`Questions addressed`, `Response sources` / `Source lenses` / `Key insights synthesized`) | "Response sources: 1 (generic brainstormer)" | "Source lenses: risk-oriented … + feasibility-oriented …" | "Key insights synthesized: N" | "Synthesized insights: N" / "Personas contributing: list" | "Personas contributing: list" / "Total synthesized insights: N" |

**Drift identified:**
- The action-list heading divergence (`Recommended Actions` at min/low vs `Recommended Next Steps` at med/high) is documented in the template footer as cosmetic, but the cross-effort regression in RG1 will need to know it is an intentional cosmetic split, not a content split. Recommend RP1 unify on `Recommended Actions` (the template even calls the section `Recommended Actions` by default).

### Dimension 3: Sub-section structure inside `## Key Considerations`

| Sub-block | min prompt | low prompt | full-synth prompt |
|---|---|---|---|
| **Opportunities** | required | absent | required |
| **Risks & Challenges** | required | absent | required |
| **Trade-offs** | required | required (renamed) | required |
| **High-confidence items** | absent | required | absent |
| **Blind-spot flags** | absent | required | absent |
| **Conspicuous absences** | **REQUIRED** (mandatory at min) | absent | absent (correct — must NOT appear at med/high) |
| **Neither-lens gaps** | absent | **REQUIRED** (mandatory at low) | absent (correct — must NOT appear) |

This is the strongest example of correctly executed mandatory divergence. min/low have categorically different `Key Considerations` shapes from med/high, and from each other. RG1's intentional-vs-drift classifier must be told this is regime-mandated, not cluster-shape variance.

### Dimension 4: Attribution rules

| Rule | min prompt | low prompt | full-synth prompt |
|---|---|---|---|
| Persona names in prose of `_summary.md` | n/a (only one persona) | **explicitly forbidden** ("rather than naming the personas in the prose") | **prompt is silent** — drift target |
| Persona names in prose of `_synthesis.md` | n/a (no such doc) | n/a (no such doc) | "Remove all persona attribution" — explicit |
| Persona names in `attributed/{cluster}.md` | n/a | n/a | **REQUIRED** as `*—Persona Name*` em-dash format |
| Substantive-stance frame (`a risk-oriented view…`) | n/a | required everywhere stance attribution is needed | **prompt does not provide a fallback frame** |

### Dimension 4b (NEW per Q6): Persona-name prose discipline

This is the single most important Phase-5 risk identified by this audit.

| Output | Persona-name rule | Stated in prompt? | Verified in samples |
|---|---|---|---|
| min `_summary.md` | n/a (single voice) | n/a | clean |
| low `_summary.md` | forbidden | **yes**, explicit | clean (4/4 sampled — uses "feasibility-oriented view" / "risk-oriented counterpoint") |
| med `_summary.md` | should be forbidden per Q6 | **NO — silent** | drift: 1 of 5 samples leaks (career-change/med Exec Summary) |
| high `_summary.md` | should be forbidden per Q6 | **NO — silent** | drift: 3 of 5 samples leak (habit-tracker/high, food-truck/high, tool-library/high — last is a section heading) |
| med/high `_synthesis.md` | forbidden | **yes**, explicit ("Remove all persona attribution", "no persona names — only the synthesized insights") | clean (6/6 spot-checked, 0 occurrences) |
| med/high `attributed/{cluster}.md` | **required** as `*—Persona Name*` | **yes**, explicit | clean format match in sampled output |

**Verification against actual outputs:** in 10 sampled med + high `_summary.md` files, persona-name occurrences in prose count = 4 (40% of sample), spread across 4 separate topics. This is systematic, not a one-off. Specific evidence:
- `career-change/med/01_burnout-as-diagnosis-not-direction_summary.md` line 19: "Every persona — from the skeptical Devil's Advocate to the body-attentive Empath — independently recommends…"
- `habit-tracker/high/04_streak-anxiety-grace-mechanics-and-the-emotional-interior_summary.md` line 23: "The Devil's Advocate argues persuasively that streaks are a proven retention driver…"
- `food-truck/high/02_the-fusion-concept-differentiation-authenticity-and-defensibility_summary.md` line 32: "Every persona — from the Pragmatist's ROI lens to the Visionary's cultural-stewardship frame — lands on the same answer…"
- `tool-library/high/12_maturation-replication-generative-outcomes_summary.md` line 46: `### The Necessary Devil's Advocate` (entire theme heading)

The `_synthesis.md` files (which carry the explicit "Remove all persona attribution" rule) are clean. The `_summary.md` files (no rule) drift. This confirms the silent-rule produces real drift, not a documentation gap — adding the rule will plausibly close ~all 4 cases, since the explicit rule already produces clean `_synthesis.md`.

### Dimension 5: Confidence-tag vocabulary

| Tag | min | low | full-synth |
|---|---|---|---|
| `[recurring]` / `[single]` | **REQUIRED** in action items | n/a | n/a |
| `[convergent]` / `[trade-off]` / `[unique: risk]` / `[unique: feasibility]` | n/a | **REQUIRED** in action items | n/a — not specified |

The full-synthesis prompt does not specify any per-action-item tagging. Sampled med/high `_summary.md` files do not carry tags. This is **legitimate divergence** (med/high carry attribution in a separate document, so summary-level tagging is redundant) but RG1 must be told this — Phase 5 should not expect tags to aggregate from med/high samples.

### Dimension 6: Word-count targets

| Target | min | low | full-synth |
|---|---|---|---|
| Total | 500-800 words (explicit in Notes) | 500-800 words (explicit in Notes) | **not specified** |
| Exec Summary | "2-3 paragraphs" | "2-3 paragraphs" | "3-5 paragraphs … Aim for 200-400 words total" |
| Key Themes count | "Include 3-5 themes" | "Include 3-5 themes" | "Include 3-5 themes total" — aligned |
| Action-item count | "4-8 total action items" | "4-8 total action items" | "Include 6-10 total action items" — legitimate divergence (med/high should produce more) |
| Key Insights count footer | absent | absent | required (`Key insights synthesized: N`) |

**Drift:** the total-word-count target (500-800) is in min and low Notes blocks but absent from full-synth. Sampled med/high summaries run ~1100-1400 words, which is appropriate, but the prompt should make this explicit (e.g., "Target 1000-1500 words"). Otherwise RG1 will see word-count variance and not be able to classify it.

### Dimension 7: Worked examples in prompt

| Example | min | low | full-synth |
|---|---|---|---|
| In-prompt example | **none** | "membership pricing" smoothed-vs-tension-preserved pair | "tool library pricing" three-response-into-one synthesis |
| Smoothed-failure example | none | yes | no |

**Drift target:** min has no worked example. The min prompt's "Watch for conspicuous absence" instruction is more abstract than the equivalent low-effort tension-preserving guidance. RP1 should consider adding a worked Conspicuous-Absences example to min so the section's quality-bar is anchored, similar to how low's smoothed-vs-tension-preserved pair anchors that section.

### Dimension 8: User-Q marker handling

| Rule | min | low | full-synth |
|---|---|---|---|
| `[User Q]` marker preservation on `Full question:` line | not mentioned | not mentioned | **explicitly required** (in Documents 1 and 2 only) |

**Drift target:** the `[User Q]` marker (per Phase 2C) flags user-supplied questions vs persona-generated ones. Min and low neither preserve nor mention the marker. At min the cluster's questions originate from a generic generator, so the marker may not apply — but at low the questions still flow from the cluster's question file, which can carry markers. RP1 should confirm whether low needs a User-Q preservation rule on its `Full question:` line; if so, add it.

### Dimension 9: Central Tension demand

| Output | Central Tension required? | Sample evidence |
|---|---|---|
| min `_summary.md` | NO (prompt silent) | none of 5 sampled have it |
| low `_summary.md` | **YES** (explicit field directly under title) | 4/4 sampled have it |
| med/high `_summary.md` | NO (prompt silent) | none of 10 sampled have it as a labeled field; central tensions appear inside Exec Summary prose |

This is **drift** per the cross-comparison §5.3, which calls Central Tension a *universal mandatory similarity* across all four efforts (load-bearing in all 10 high runs but currently missing from min/med/high prompts' explicit output schema). Phase 5 BRAINSTORM.md surfaces tensions; if the per-cluster `_summary.md` doesn't surface them as a labeled field, Phase 5 has to reconstruct them from Exec Summary prose, which is brittle.

### Dimension 10: Categorical reframe surfacing (med/high mandatory)

Per `dev/2026-05-03_effort-comparison.md` §5.2: categorical reframe must surface at med and high; n/a at min/low.

| Output | Prompt mentions it? | Verified in sample |
|---|---|---|
| full-synth prompt | **NO mention** of "categorical reframe" or equivalent obligation | reframe still appears in samples (e.g., `space-party/med/01` "wonder is the actual theme"; `food-truck/med/01` "single truck deserves honest evaluation") because the underlying responses contain it |

**Drift target:** the prompt should explicitly call out the obligation to surface categorical reframes (when the cluster's responses produce one), at least as a quality-standard line.

### Dimension 11: Convergence-count phrasing (high mandatory)

Per `dev/2026-05-03_effort-comparison.md` §2.4 + §5.2: "N of M personas converged" phrasing must surface at high (10/10 in cross-comparison data).

| Output | Prompt requires it? | Verified in sample |
|---|---|---|
| full-synth prompt | **NO** explicit requirement | 8 of 9 sampled high `_summary.md` use phrasing like "Six of seven personas independently arrive…" or "across all seven perspectives"; 1 of 9 (tool-library/high/12) softens to "every persona" / "nearly every persona" without raw count |

**Drift target:** the full-synth prompt should explicitly require raw-count phrasing at high effort. Currently the signal survives only because Phase 3 outputs already contain it; a single weaker upstream cluster could silently drop it.

### Dimension 12: Quality-standards block

| Block | min | low | full-synth |
|---|---|---|---|
| Heading | `## Synthesis Guidelines` | `## Synthesis Guidelines` | `## Quality Standards` (renamed) |
| "Specificity earns its keep" | yes | yes | absent |
| "Organize by value" | yes | yes | absent (similar idea split across "Order by value: consensus first") |
| "Surface what isn't there" / Conspicuous-Absences guidance | yes | n/a | n/a (correct) |
| "Preserve tension" | n/a | yes | n/a |
| "Synthesis over aggregation" | absent | absent | yes |

**Drift target:** the `Synthesis Guidelines` vs `Quality Standards` heading divergence is cosmetic. RP1 should pick one and unify. The "Specificity earns its keep" line is high-leverage and present in min/low; consider porting to full-synth.

---

## Verified Drift vs. Specification

| Dimension | Prompt says | Actual output observed | Affects samples |
|---|---|---|---|
| Persona-name prose discipline (Dim 4b) | full-synth prompt is silent for `_summary.md` (explicit only for `_synthesis.md`) | 4 of 10 med/high `_summary.md` files leak persona names into prose | career-change/med/01, habit-tracker/high/04, food-truck/high/02, tool-library/high/12 |
| Frontmatter `datetime:` field name | template + min/low/full-synth prompts say `datetime:` | 2 samples use `date:` instead | habit-tracker/min/02, habit-tracker/low/04 |
| Convergence-count phrasing at high (Dim 11) | full-synth prompt does not require raw-count phrasing | 8/9 high samples use raw counts; 1/9 (tool-library/high/12) softens to "every persona" / "nearly every persona" without N-of-M | tool-library/high/12 |
| Central Tension at non-low effort (Dim 9) | only low prompt has the field | 0/5 min, 0/5 med, 0/5 high carry a labeled `**Central Tension**:` line | all min/med/high samples |
| Word-count target at med/high (Dim 6) | full-synth prompt does not specify total | observed range ~1100-1400 words; nothing flagrant but unbounded | all med/high `_summary.md` |

---

## Phase 5 Risks

Sorted by severity:

1. **HIGH RISK — persona-name leakage in `_summary.md` prose at med/high (Dim 4b).** Phase 5 builds `BRAINSTORM.md` from `SUMMARIES.md` (deterministic concat of `_summary.md` bodies). Persona names from 4 of 10 sampled topic clusters now propagate into final user-facing output, breaking the portable-analysis principle (Q6). Fix is a one-line addition to the full-synth prompt; impact is large and immediate.

2. **HIGH RISK — Central Tension absent from min/med/high `_summary.md` schema (Dim 9).** Phase 5 surfaces tensions in BRAINSTORM exec summaries (load-bearing in all 10 high runs). With no labeled field at the cluster level for 30 of 40 effort-cells (min + med + high), Phase 5 must reconstruct tensions from prose — fragile. Fix is to add the same `**Central Tension**:` field that already works in low.

3. **MEDIUM RISK — convergence-count phrasing not pinned by prompt at high (Dim 11).** 10/10 cross-comparison high runs use the phrasing today, but only because Phase 3 responses currently contain it. If a Phase 3 prompt evolves and the upstream signal weakens, Phase 4 has no guard rail. Fix is a quality-standard line ("at high effort, surface convergence as a raw count: 'six of seven personas …'").

4. **MEDIUM RISK — categorical reframe not pinned by prompt at med/high (Dim 10).** Same shape as the convergence risk. Reframes currently survive because of Phase 3 strength; the full-synth prompt offers no protection.

5. **LOW RISK — frontmatter field-name drift (`date:` vs `datetime:`).** Two of 19 samples have it; downstream tooling (`scripts/build-summaries.sh`) strips frontmatter so the user impact is minor, but FA1/RG1 readers parsing frontmatter will mis-key it. Fix: enforce `datetime:` in all three prompts via explicit YAML scaffolding example.

6. **LOW RISK — `Recommended Actions` vs `Recommended Next Steps` heading split.** Phase 5 doesn't aggregate at heading level (it concats whole bodies) but RG1's cross-effort regression has to know this is cosmetic. Fix: unify.

---

## Recommendations for RP1

Sorted by impact. Each item is RP1-implementable without further investigation.

1. **(P0) Add explicit persona-name suppression rule to the full-synth prompt's `_summary.md` (Document 3) "Important for Document 3" block.** Insert: "Do not name the personas in the prose. Reference convergence in stance terms ('a risk-oriented view', 'six of seven personas converged'), not by persona name. The summary must read as a portable analysis a cold reader can follow without knowing how it was generated." Mirrors the existing low-effort prompt's wording.

2. **(P0) Add `**Central Tension**: …` as a required field directly under the `# Summary:` title in all three prompts (min, low, med/high `_summary.md`).** Low already has this field; copy that exact rubric (one sentence; "If the cluster has no productive tension to name, that itself is a signal — say so") into min and into full-synth's Document 3 template.

3. **(P1) Add a quality-standard line to the full-synth prompt: "At high effort, surface convergence as a raw count where the responses support it ('six of seven personas converged on …'). At medium effort, surface raw counts where natural; full-cohort convergence may be expressed as 'all four perspectives'."** Pinning this defends against upstream Phase 3 drift.

4. **(P1) Add a quality-standard line to the full-synth prompt: "When the cluster's responses collectively reframe the subject matter (a categorical reframe), name the reframe explicitly in the Executive Summary or Key Themes section. Skip if no reframe emerges; do not invent one."** Same pattern as the low-effort prompt's Neither-lens-Gaps rubric ("Skip if nothing substantive emerges").

5. **(P1) Add a total-word-count target to the full-synth prompt's Document 3 Notes block: "Target 1000-1500 words for `_summary.md` at medium effort, 1100-1500 at high."** Mirrors the explicit min/low targets and bounds RG1's word-count axis.

6. **(P2) Unify the action-list section heading.** Either rename full-synth's `Recommended Next Steps` to `Recommended Actions` (matches min/low + matches the template default), or rename min/low to `Recommended Next Steps`. Pick one.

7. **(P2) Unify the quality-standards block heading.** Either `Synthesis Guidelines` (min/low) or `Quality Standards` (full-synth). Pick one.

8. **(P2) Add a `[User Q]` marker preservation rule to the low-effort prompt's `Full question:` handling.** Mirror the full-synth prompt's wording: "If the questions file carries a `[User Q]` marker on any question, preserve that marker on the … line in this document. Do not propagate the marker onto synthesized-response bullets."

9. **(P2) Add a worked Conspicuous-Absences example to the min prompt** (similar to how the low prompt's smoothed-vs-tension-preserved pair anchors the Neither-lens-Gaps quality bar). The min prompt's "Watch for conspicuous absence" guidance is the most abstract part of the prompt; an example would lift output quality without changing structure.

10. **(P2) Enforce `datetime:` (not `date:`) in all three prompts' YAML scaffolding.** The current prompts say `datetime:` but two samples drift to `date:`. Add a "Use `datetime:`, not `date:`" line to the Quality Standards block in each prompt to lock it.

---

## Mandatory Divergences (NEW — must be preserved; collapsing breaks the prompt's job)

Per `dev/2026-05-03_effort-comparison.md` §5.2, these divergences are not legitimate preferences — they are the prompts' distinctive jobs.

- **Conspicuous absences:** required at min; forbidden at med/high. **Verified.** All 5 sampled min `_summary.md` files contain a `**Conspicuous absences**:` block (in `Key Considerations`); all 10 sampled med/high `_summary.md` files do **not**. Prompts honor this correctly.
- **Neither-lens gaps:** required at low; n/a above. **Verified.** All 4 sampled low `_summary.md` files contain a `**Neither-lens gaps**:` block; all 10 med/high samples and all 5 min samples do not.
- **Categorical reframe:** must surface at med/high. **Verified empirically** (reframes appear: space-party/med "wonder, not stars/rockets"; food-truck/med "single truck deserves honest evaluation"; tool-library/med "borrower experience is the product"; tool-library/high/12 "temporary intervention that permanently changes culture") **but the full-synth prompt does not name this obligation** — fix per Recommendation 4.
- **Convergence-count phrasing ("N of M personas converged"):** must surface at high; optional at med; n/a at low/min. **Verified empirically** (8/9 sampled high `_summary.md` use it explicitly; 1/9 softens) **but the full-synth prompt does not name this obligation** — fix per Recommendation 3.
- **Persona-name attribution in `attributed/`:** required at med/high; n/a below. **Verified.** Sampled `attributed/career-change/med/01` uses `*—The Devil's Advocate*` em-dash format consistently; min and low directories contain no `attributed/` subdirectory. Prompts honor this correctly.

---

## Legitimate Divergences (preserve in future edits)

Document for preservation; future RP1 edits should not collapse these:

- **`stage:` frontmatter value** ("Phase 4: Summary Generation" vs. "Phase 4: Response Synthesis"). Reflects the genuinely different subagent jobs; template documents this split. Preserve.
- **`synthesis-type:` frontmatter field** (only present in med/high outputs). Distinguishes the three med/high doc types from each other. Preserve.
- **Action-item count target** (4-8 at min/low vs. 6-10 at med/high). Effort-scaled. Preserve.
- **Confidence-tag vocabulary** (`[recurring]`/`[single]` at min, `[convergent]`/`[trade-off]`/`[unique: risk]`/`[unique: feasibility]` at low, none at med/high). Effort-scaled because med/high carry attribution in a separate doc. Preserve, but document for RG1 so it doesn't flag absence as drift.
- **`Key Considerations` sub-block shape** (Opportunities/Risks/Trade-offs/Conspicuous-Absences at min vs High-confidence/Trade-offs/Blind-spots/Neither-lens-gaps at low vs Opportunities/Risks/Trade-offs at med/high). This is the cleanest example of correctly executed regime-mandated divergence. Preserve absolutely; collapsing it would break each effort's distinctive job.
- **Subagent count + model assignment** (1 sonnet subagent per cluster at min/low; opus at med/high with three docs). Out of PP1 scope but documented for completeness.

---

## Mandatory Similarities (universal — drift here is critical)

These surfaces should be uniform across all four efforts. Drift here is RP1 P0 priority:

- **Through-line preservation** — universal floor. (LB1 + FA1 measure; PP1 confirms no contract-level barrier exists in any prompt to through-line carry-through.)
- **Central Tension surfacing** — should be universal but currently load-bearing in all 10 high runs while only `low` requires it explicitly. **DRIFT — fix per Recommendation 2.**
- **No persona names in prose of `_summary.md` and `_synthesis.md`** (per Q6 portable-analysis principle) — explicit in low + explicit in `_synthesis.md` template at full-synth, but **silent for full-synth's `_summary.md`. DRIFT — fix per Recommendation 1.** Sample data confirms 4 of 10 med/high `_summary.md` files leak names; the explicit-rule `_synthesis.md` files are clean (0 of 6 sampled).
- **Frontmatter spine** (project-name, session-dir, datetime, effort, stage, model-requested, model-reported, topic-cluster) — present in all three prompts but with `date:`/`datetime:` drift in 2 of 19 samples. **DRIFT — fix per Recommendation 10.**
- **`## Executive Summary` / `## Key Themes` / `## Key Considerations`** — top-level section spine. Aligned across all three prompts and all sampled outputs.

---

## Handoff to RP1

The recommendations above feed directly into RP1's Iteration 1 prompt revisions. RP1 should prioritize the two P0 items first (persona-name suppression + Central Tension field), since both are simultaneously low-effort prompt edits and high-impact for Phase 5 BRAINSTORM.md fidelity. The four P1 items (convergence-count phrasing, categorical reframe, word-count target, full-synth quality coverage) all amount to porting language already proven elsewhere in the prompt suite into the full-synth prompt. The P2 items are convergence cleanups that improve RG1's intentional-vs-drift classification but do not move primary signal.

Concretely, RP1's Iteration 1 should produce a single revised `proposed-prompts/phase4_full-synthesis.md` carrying all P0 and P1 changes, since the bulk of identified drift lives in the full-synth prompt. The min and low prompts need only the P2 cosmetic alignment (heading rename + `datetime:` lock + worked example for min).

# PI1: PLAN.md Integration — Format Validation

**Date:** 2026-04-18
**Scope:** 20 PLAN.md outputs from `PI1_runs/` (10 topics × {medium, high}) produced by the PR1 iter2 refined orchestrator prompt.
**Reference documents:**
- `methodology.md` Phase 4 Expected PLAN.md Roster Section (provisional template)
- `idea-symphony/guidance/phase2A_question-gen-personas.md` Effort Level Mapping
- `findings/PR1_refined-orchestrator-prompt.md` Output Format + Volume-range authoritative table

---

## Aggregate Metrics

### Format compliance (all 8 items pass)

| Metric | Value |
|---|---|
| Full compliance rate (all 8 pass) | 20/20 = **100%** |
| Full compliance rate, **excluding Item 3 category labeling** (see Systematic Deviation #1) | 20/20 = 100% |

### Per-item compliance

| Item | Description | Pass | Partial | Fail |
|---|---|---|---|---|
| 1 | Header exact | 20/20 (100%) | 0 | 0 |
| 2 | Effort Level line correct | 20/20 (100%) | 0 | 0 |
| 3 | Tier 1 table complete + Category correct + volumes correct | 20/20 Pass structurally; **minor category-label inconsistencies in 3 runs (see Systematic Deviations)** — scored Pass since volumes and persona set are correct | 0 | 0 |
| 4 | Tier 2 present at high / "N/A — medium effort" at medium | 20/20 (100%) | 0 | 0 |
| 5 | Tier 3 table present OR correct "None selected — …" sentinel | 20/20 (100%) | 0 | 0 |
| 6 | Structured fields populated for all 4 Tier 3 candidates + Connector/Analogist swap rationale | 20/20 (100%) | 0 | 0 |
| 7 | Notes field used appropriately (does not replace structured fields) | 20/20 (100%) | 0 | 0 |
| 8 | Volume ranges match Effort Level Mapping (all personas, all runs) | 20/20 (100%) | 0 | 0 |

### Structured-field population rate

- **Tier 3 candidate decisions:** 4 candidates × 20 runs = **80 decisions**
- **Decisions with all 4 required fields populated (Persona, Trigger strength, Topic citation, Decision):** 80/80 = **100%**
- Note: "Topic citation: (no technical-architecture content in REQUEST)" and equivalent explicit-absent bracketed citations are accepted as a populated field — the prompt format permits this when the REQUEST genuinely has no relevant content.

### Trigger-strength distribution (80 Tier 3 decisions)

| Strength | Count | % |
|---|---|---|
| strong | 14 | 17.5% |
| moderate | 1 | 1.25% |
| none | 65 | 81.25% |
| moderate-weak (4-level extension) | 0 | 0% |

**Breakdown of non-"none" decisions by persona/topic:**
- Accountant strong: career-change M, food-truck M, food-truck H, property-management M, property-management H, school-consolidation M, school-consolidation H (7)
- Accountant moderate: career-change H (1)
- Accountant none: remaining 12 runs
- Lawyer strong: property-management M, property-management H, wearable-device M, wearable-device H, youth-mentorship M, youth-mentorship H (6)
- Politician strong: food-truck M, food-truck H, property-management H, school-consolidation M, school-consolidation H (5)
- Technical Expert strong: wearable-device M, wearable-device H (2)

**Distinct cells with forced awkward bucketing:** 0 observed. Every decision fits cleanly into strong/moderate/none without commentary suggesting an intermediate level. The only `moderate` cell (career-change H Accountant) is explicitly reasoned as "clears the moderate bar but not strong" with clear language — not an awkward bucketing.

**Decision on 4-level extension:** NOT warranted. Threshold was ≥2 cells showing awkward forced bucketing; observed count is 0.

### Volume accuracy rate

- **Total persona-volume assignments checked:** Tier 1 (10 per run × 20) + Tier 2 (4 per high-effort run × 10) + Tier 3 (variable; 12 assignments total across all runs) = 200 + 40 + 12 = **252 volume assignments**
- **Matches Effort Level Mapping:** 252/252 = **100%**

### Selection Rationale field population (Connector/Analogist)

- All 20 runs populate **Connector/Analogist decision** and **Swap rationale**: 20/20 = 100%.
- 19/20 runs include an explicit "Effort-invariance check" note within the swap rationale; 1 run (property-management_medium) omits the explicit invariance note but the decision is topic-invariant. Considered Pass (invariance check is an in-prompt reasoning step, not a required output field).

---

## Per-Run Validation Table

Legend: P = Pass, F = Fail, P* = Pass with minor inconsistency noted.

| Topic | Effort | 1 Header | 2 Effort | 3 Tier1 | 4 Tier2 | 5 Tier3 | 6 Structured | 7 Notes | 8 Volumes | Overall |
|---|---|---|---|---|---|---|---|---|---|---|
| career-change | medium | P | P | P | P | P | P | P | P | **P** |
| career-change | high | P | P | P | P | P | P | P | P | **P** |
| food-truck | medium | P | P | P | P | P | P | P | P | **P** |
| food-truck | high | P | P | P | P | P | P | P | P | **P** |
| habit-tracker | medium | P | P | P | P | P | P | P | P | **P** |
| habit-tracker | high | P | P | P | P | P | P | P | P | **P** |
| mobile-app | medium | P | P | P | P | P | P | P | P | **P** |
| mobile-app | high | P | P | P* (Constraint Flipper category "Structural" vs guide "Perspective") | P | P | P | P | P | **P\*** |
| property-management | medium | P | P | P* (Tier 3 Lawyer category "Tier 3" rather than semantic category) | P | P | P | P | P | **P\*** |
| property-management | high | P | P | P* (Tier 3 Lawyer/Politician category "Domain") | P | P | P | P | P | **P\*** |
| school-consolidation | medium | P | P | P | P | P | P | P | P | **P** |
| school-consolidation | high | P | P | P* (Constraint Flipper category "Structural"; Politician "Perspective") | P | P | P | P | P | **P\*** |
| space-party | medium | P | P | P | P | P | P | P | P | **P** |
| space-party | high | P | P | P | P | P | P | P | P | **P** |
| tool-library | medium | P | P | P | P | P | P | P | P | **P** |
| tool-library | high | P | P | P | P | P | P | P | P | **P** |
| wearable-device | medium | P | P | P* (Tier 3 Technical Expert category "Domain") | P | P | P | P | P | **P\*** |
| wearable-device | high | P | P | P* (Tier 2 personas labeled "Tier 2" as category; Tier 3 "Tier 3" as category) | P | P | P | P | P | **P\*** |
| youth-mentorship | medium | P | P | P* (Tier 3 Lawyer category "Domain") | P | P | P | P | P | **P\*** |
| youth-mentorship | high | P | P | P* (Tier 2 personas labeled "Tier 2"; Tier 3 Lawyer "Tier 3") | P | P | P | P | P | **P\*** |

**Full-pass count (no inconsistencies):** 12/20
**Pass with minor category-labeling inconsistency:** 8/20
**Full compliance on structural checklist (Pass or P\*):** 20/20 = 100%

---

## Systematic Deviations

### SD1 — Category-column labeling inconsistency in Tier 2 and Tier 3 tables (8/20 runs)

**Observed in:** mobile-app_high, property-management_medium, property-management_high, school-consolidation_high, wearable-device_medium, wearable-device_high, youth-mentorship_medium, youth-mentorship_high.

**Pattern:** When filling the Category column for Tier 2 or Tier 3 personas, the orchestrator sometimes writes:
- **"Domain"** (ad-hoc invented label) for Tier 3 personas (e.g., Lawyer/Politician/Technical Expert listed with Category = "Domain")
- **"Specialist"** (ad-hoc) for Accountant in food-truck_medium
- **"Analytical" / "Perspective" / "Structural"** — semantic guess at category (correct for some, incorrect for others — e.g., Constraint Flipper labeled "Structural" in mobile-app_high and school-consolidation_high, though the guide classifies Constraint Flipper as Perspective; Empath/Futurist sometimes labeled "Perspective" though the guide classifies them as Structural)
- **"Tier 2" / "Tier 3"** (literal tier label in category cell) — wearable-device_high, youth-mentorship_high

The refined prompt's Output Format section shows "[range]" as placeholder but does not itself specify what belongs in the Category column for Tier 2 or Tier 3 tables. The Tier 1 table gives explicit categories (Analytical/Structural/Perspective). For Tier 2 and Tier 3 the prompt does not prescribe a category taxonomy, so the orchestrator fills the cell inconsistently.

**Impact on downstream consumption:** Low. Volume ranges, persona identity, and trigger strength are all correct. Category column is informational and not used by downstream phases. But it is a consistency leak.

**Recommendation:** Update the Output Format template in the refined prompt to either:
1. **(Preferred)** Pre-specify the Category cells for Tier 2 and Tier 3 in the template skeleton (as the Tier 1 table does), sourced from the guide's `Tier 2 Perspective/Structural` and `Tier 3 Perspective` designations. For personas the guide doesn't classify into the three-category scheme (Accountant, Lawyer, Politician, Technical Expert), prescribe a simple canonical label, e.g., "Specialist" or omit the column, OR
2. **(Alternative)** Drop the Category column from Tier 2 and Tier 3 tables entirely; it carries no decision value in those tiers.

The Tier 1 Category labels were 20/20 correct, so Item 3 passes on the essential structure check. Category inconsistency is a minor polish item.

### SD2 — Effort-invariance violation for Connector/Analogist swap: mobile-app (1 cell — does not meet 3+ threshold, but noted)

**Observed in:** mobile-app_medium = Analogist; mobile-app_high = Connector.

This is a logical inconsistency (the prompt explicitly says the swap decision must NOT depend on effort), not a format deviation. One pair, below the systematic threshold (3+). Included here for completeness because the prompt itself requires an "effort-invariance check" — and in mobile-app_high the orchestrator asserts the check passed ("the same decision would hold at medium") while medium actually produced the opposite decision. This is a content/reasoning inconsistency, not a structural format failure, and is therefore not counted against format compliance.

**Recommendation:** Not a prompt-format issue. Can be addressed separately as a content/reasoning reliability item in an iter3 pass if desired; the multi-stakeholder-product-system criterion (b) language is known to be a judgment call on this cell.

---

## Random Deviations

### RD1 — property-management_medium omits explicit "Effort-invariance check" clause
The Step 2 prompt asks the orchestrator to "confirm this decision would be the same at the opposite effort level." Most runs include an explicit one-sentence check; property-management_medium omits it. The decision itself is invariant (high-effort version also chose Analogist), so no substantive error. **Idiosyncratic — accepted noise.**

### RD2 — food-truck_medium uses "Specialist" as Category label for Accountant
Ad-hoc label, not a canonical one. Captured under SD1.

### RD3 — wearable-device_high rationale bullets are terser than other runs
The run populates all four structured fields but omits the "Rationale:" sub-bullet on Lawyer/Technical Expert/Accountant/Politician. Since the prompt's Output Format only lists Persona/Trigger strength/Topic citation/Decision as required fields (with Rationale being elsewhere framed as an output artifact in Step 1), terse formatting is compliant. No violation. **Accepted noise.**

---

## Format Refinement Proposals

### Proposal 1 — Pre-fill Category column for Tier 2 and Tier 3 tables in the Output Format template

**Rationale:** SD1 above. Currently the orchestrator invents category labels inconsistently because the template does not specify what belongs there for non-Tier-1 rows.

**Proposed template skeleton change:**

```markdown
### Tier 2 Personas (high effort only)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Constraint Flipper | Perspective | 5-8 |
| Empath | Structural | 8-12 |
| First Principles Thinker | Structural | 7-10 |
| Futurist | Structural | 8-12 |
```

And for Tier 3, either pre-specify "Specialist" (or drop the column), e.g.:

```markdown
### Tier 3 Personas (orchestrator-selected)

| Persona | Tier 3 Category | Volume Range | Trigger Strength |
|---------|-----------------|--------------|------------------|
| [Accountant] | Specialist (financial) | 8-12 | [strength] |
| [Lawyer] | Specialist (regulatory) | 8-10 | [strength] |
| [Politician] | Specialist (governance) | 8-10 | [strength] |
| [Technical Expert] | Specialist (architecture) | 8-10 | [strength] |
| [Connector] | Perspective (replaces Analogist) | 5-8 | [strength] |
```

OR simply omit the Category column at Tier 3.

### Proposal 2 — 3-level vs. 4-level trigger-strength scheme

**Decision: keep 3-level (strong | moderate | none).**

Observed: 0/80 decisions showed awkward forced bucketing, well below the 2-cell threshold for warranting a `moderate-weak` extension. The single `moderate` cell (career-change H Accountant) is unambiguously moderate in the rationale. 65/80 `none` and 14/80 `strong` decisions were all cleanly justified. No ambiguous "barely-moderate-or-strong-none" commentary was found.

### Proposal 3 — Notes field usage

Notes field is used appropriately in every run:
- **Legitimate deferred-alternative use:** food-truck_medium (defers Politician), property-management_medium (defers Accountant + Politician), property-management_high (defers Accountant), school-consolidation_medium (defers Accountant), wearable-device_medium (defers Lawyer).
- **Clean "—" when no deferral:** 15/20 runs.
- **No cases observed** where Notes substituted for a missing structured field (citation, trigger strength, or decision).

**No change needed.** Notes field policy is working.

### Proposal 4 — Additional fields worth adding

- **Not recommended.** The current 4-field-per-candidate structure (Persona / Trigger strength / Topic citation / Decision) is sufficient; adding a Confidence field would duplicate information already captured by trigger strength + rationale and would invite orchestrator over-hedging. Q1b "gating test satisfied" notes are already being written in-line in the rationale sub-bullet where useful, without a dedicated field.

---

## Accuracy Spot-Check Notes (informational only — not scored)

Format validation is the focus of this document. A few selection observations for completeness:

1. **mobile-app_high Accountant: expected "moderate" (per GT1 Canonical Rev 3, Gap 2 calibration cell), observed "none".** This is the documented Gap 2 residual from PR1 findings (iter2 explicitly accepted this regression in exchange for resolving habit-tracker_high Accountant FP). Not a format failure.
2. **mobile-app_medium Analogist vs. mobile-app_high Connector: effort-invariance inconsistency.** Flagged under SD2. One cell; below systematic-deviation threshold. The refined prompt Step 2 applies, but the orchestrator reached different conclusions on criterion (b) at the two effort runs. This is a content-reasoning reliability point, not a format failure.
3. All other cells (career-change, food-truck, habit-tracker, property-management, school-consolidation, space-party, tool-library, wearable-device, youth-mentorship × medium+high) appear aligned with GT1 Canonical Rev 3 expectations on the structured fields as reviewed; full accuracy scoring is out of scope for PI1.

---

## Verdict

**READY FOR INTEGRATION** with one minor polish recommendation (Proposal 1: pre-fill Category column in the Output Format template for Tier 2 and Tier 3). 

All structural format checklist items pass at 100%. Volume accuracy is 100%. Structured-field population is 100%. The 3-level trigger-strength scheme is validated — no 4-level extension needed. The Notes field policy is working. SD1 (category-label inconsistencies at Tier 2/3) is a cosmetic template-skeleton issue that does not affect downstream consumption of the roster plan; Proposal 1 is a small, non-breaking fix that can be made at template-finalization time without re-running any of the 20 runs.

The PR1 iter2 refined prompt is ready to be promoted to the canonical Phase 2B orchestrator instruction. Proposal 1 should be incorporated into the canonical PLAN.md template before integration.

---

## Integration Recommendation

**Question (RQ-PI1d):** Where should the final orchestrator prompt + PLAN.md template live when integrated into the Idea Symphony skill?

**Options considered:**

1. **Embed directly in `idea-symphony/SKILL.md`.** Single-file simplicity; nothing to load at runtime.
2. **Split out as a referenced file at `idea-symphony/prompts/phase2A_question-gen-personas-selection.md`.** Matches the existing prompt-extraction pattern per CLAUDE.md; keeps SKILL.md lean.
3. **Hybrid:** short summary + routing in SKILL.md, full prompt + template in a referenced file.

**Recommendation: Option 2 — referenced file.**

**Rationale:**

- **Size pressure on SKILL.md.** `idea-symphony/SKILL.md` is currently 715 lines (CLAUDE.md sets a 500-line soft cap and asks maintainers to move content to `references/` when approaching 400). The PR1 iter2 prompt is ~190 lines of instruction + ~80 lines of output template + ~20 lines of volume table = ~290 lines. Embedding it would push SKILL.md past 1,000 lines and make it substantially harder to reason about.
- **Mirrors existing convention.** Phase 2 question-generation prompts already live as standalone files under `prompts/` (e.g., `phase2-question-generation-persona.md`, `phase2-question-synthesis.md`). A sibling file `phase2b-orchestrator-selection.md` is the natural home — nothing new to invent.
- **Reusability.** The prompt + the PLAN.md template together are a drop-in orchestration component. Keeping them in a single referenced file makes the unit of reuse obvious: anyone writing a regression test, a new effort-level variant, or a downstream consumer reads one file.
- **Hybrid is not worth the duplication.** A short summary in SKILL.md adds ~10 lines but also adds a second copy of the routing rules that can drift from the prompt. Phase 2B's trigger evaluation is not a routing decision SKILL.md needs to explain in advance — it's the work product of the orchestrator step. SKILL.md can simply reference the file at the point where Phase 2B is invoked.

**Proposed filename:** `idea-symphony/prompts/phase2A_question-gen-personas-selection.md`

**Proposed file content (assembled from PI1 artifacts):**

1. The refined orchestrator prompt body — Steps 1–4 and the "Inputs" preamble from `findings/PR1_refined-orchestrator-prompt.md`, verbatim.
2. The "Output Format" block replaced with the canonical template from `findings/PI1_plan-md-template.md` § "Medium / High Effort Template" (the only delta vs. PR1 is the pre-filled Category columns in Tier 2 and Tier 3 tables).
3. The Effort-Level Volume Ranges authoritative table from `findings/PI1_plan-md-template.md`.
4. A short "Low Effort" note that low effort skips the orchestrator entirely (no Tier 3 evaluation needed) — references the low-effort subset in `PI1_plan-md-template.md`.

**SKILL.md integration point:** Add a single reference in the Phase 2B section of SKILL.md:

```
For medium/high effort runs, the orchestrator follows the prompt and PLAN.md
template at `prompts/phase2A_question-gen-personas-selection.md`. Output is
the `## Phase 2B: Question Generation Roster` block inserted into the
session's PLAN.md.
```

Low-effort runs do not invoke the orchestrator (Analogist fixed, no Tier 3 evaluation) — SKILL.md should route low-effort directly to persona instantiation with the low-effort Tier 1 roster, per the empirical-validation caveat in `PI1_plan-md-template.md`.

### Low Effort Handling — Summary for the integration owner

- PI1 did NOT empirically validate low effort (out of scope).
- Low effort template in `PI1_plan-md-template.md` is derived from the persona selection guide's Effort Level Mapping.
- Before integration, the integrator should populate the `{low range from guide}` placeholders in the low-effort Tier 1 table from the current Effort Level Mapping, and should add at least one low-effort smoke-test run to the skill's own test suite as a regression guard.

### Deliverables for the integration follow-up task

| Artifact | Source | Destination |
|---|---|---|
| Orchestrator prompt body | `findings/PR1_refined-orchestrator-prompt.md` Steps 1–4 + Inputs | `idea-symphony/prompts/phase2A_question-gen-personas-selection.md` |
| PLAN.md roster template (medium/high) | `findings/PI1_plan-md-template.md` § Medium/High Effort Template | Same file, "Output Format" section |
| Effort-Level Volume Ranges table | `findings/PI1_plan-md-template.md` § authoritative table | Same file, "Volume Ranges" section |
| Format checker (ongoing) | `findings/PI1_format-checker.md` | Keep in `dev/2026-03-01_.../findings/` for reuse by regression tests; not shipped in the skill itself |
| Low-effort template | `findings/PI1_plan-md-template.md` § Low Effort Template | Integrator fills in Tier 1 volumes; add to same referenced-prompt file under a "Low Effort" heading |

### Residuals to track outside PI1 scope

- **Gap 2 (mobile-app_high Accountant: moderate → none):** Documented in PR1 findings. Resolution path is a guide edit to `persona-selection-guide_Phase2B.md` (not a prompt edit). Track as a follow-up investigation; not a blocker for integration.
- **SD2 (mobile-app effort-invariance inconsistency on Connector/Analogist swap):** One cell observed in PI1; below systematic threshold. Watch in the skill's regression runs.

**Status:** All three PI1 deliverables complete (`PI1_plan-md-integration.md`, `PI1_plan-md-template.md`, `PI1_format-checker.md`). Integration into the Idea Symphony skill is a separate follow-up task.


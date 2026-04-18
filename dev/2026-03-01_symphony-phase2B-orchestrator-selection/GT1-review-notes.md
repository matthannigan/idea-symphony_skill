# GT1 Review Notes — Calibration Principle Applied

**Date:** 2026-04-17
**Context:** Human review walkthrough of `findings/GT1_ground-truth-assignments.md`. Triggered a scoped revision to `ground-truth/expected-assignments.md`.
**Status:** Decisions captured here; revision to GT1 outputs to follow.

---

## Summary of Decisions

Walkthrough of Section 1 (Summary Table) surfaced the None→Single gap (Section 5 of the analysis companion) as a real coverage weakness. Scan of the 4 None→None topics identified two defensible near-misses (mobile-app, career-change) where Accountant was rejected on a narrow reading of "financial structure central."

Matt cited the Accountant persona's own calibration language as grounds for broadening the moderate-trigger bar:

> *"Calibrate your financial depth to the economic complexity of the context — personal or informal projects (a birthday party, a hobby project) need simple budget math and cost-per-unit thinking; commercial or organizational ventures (a SaaS product, a nonprofit, a community service) warrant deeper modeling of revenue streams, operating costs, and financial sustainability. Match the formality of your financial language to the stakes of the decision — a parent choosing between glow sticks and LED lights needs a price comparison, not an ROI calculation"*
> — `idea-symphony/references/personas/the-accountant.md`

This language encodes calibration as *depth of engagement*, not *threshold of engagement*. The persona treats personal/resource-allocation finance as in-scope (just at lighter depth). The Phase 2B selection guide's current strong-trigger language ("financial structure central: business/nonprofit/budget/startup/pricing/revenue/unit economics/funding mechanisms") is stricter than the persona's own operating instruction — a genuine guide gap.

---

## Decision 1: Adopt the Calibration Principle for GT1

**Rule for applying Accountant as a Tier 3 candidate:**

- **Strong trigger:** financial structure is the central brainstorming axis — the request is substantially about unit economics, revenue model, funding mechanisms, or organizational financial sustainability.
- **Moderate trigger:** economic content is a core decision dimension (one of the gating axes of the brainstorm), even when the domain is personal/resource-allocation rather than business/nonprofit. Depth of Accountant's engagement calibrates to the context; the *trigger* still fires.
- **None:** economic content is background constraint only, not a decision dimension (e.g., "budget-friendly" as a lightweight preference on a party plan).

The depth-vs-trigger distinction is the load-bearing piece: Accountant always calibrates depth, but selection still requires economic content to be a *decision dimension*, not a background constraint.

**Scope of this decision:** applies to GT1 ground truth. It is also a Guide Gap 2 finding that PR1 should propose formally (per Q10 — proposals, not silent edits to the guide).

---

## Decision 2: Cell-Level Ground Truth Changes

### Cells that flip

| Cell | Before | After | Rationale |
|---|---|---|---|
| **career-change high** | None *(alt: Accountant)* | **Accountant (moderate)** — definitive | $22K loans, $45K savings, 3-year income gap, LRAP, opportunity cost at 32 — financial viability is an explicit first-class decision axis ("financially, professionally, and personally"). Resolves the ambiguous alt. |
| **mobile-app high** | None | **Accountant (moderate)** | "Identify the 3-4 features… cut everything else" under 8-month runway is a resource-allocation decision. 180K downloads × 2% DAU/MAU × 47s session are the product's unit economics. Economic content is a core decision dimension even though the topic isn't financial-structure-central. |

### Cells reconsidered but unchanged

| Cell | Decision | Rationale |
|---|---|---|
| career-change medium | None (unchanged) | Financial is one of three decision axes. Central but not the sole center — below strong bar. |
| mobile-app medium | None (unchanged) | Framing is product/UX-center, not financial-decision-center. Below strong bar. |
| habit-tracker high | None (unchanged, borderline) | "Monetization" is one of five bullets and a background concern for a 3-month MVP. Not a core decision axis. |
| space-party M/H | None (unchanged) | "Budget-friendly" is a constraint, not a decision axis. Accountant's own glow-sticks-vs-LED-lights example is the lightweight calibration case — engageable in principle but not trigger-worthy at Phase 2B selection. |

### Cells promoted at medium under calibration principle

| Cell | Before | After | Rationale |
|---|---|---|---|
| **school-consolidation medium** | Politician (single strong pick) | **Politician (primary) + Accountant also strong — tiebreaker case** | $28M combined budgets, $4.2M deferred maintenance, structural deficits, smallest district 2 years from insolvency, state per-pupil formula penalty → financial pressure is the *cause* of the consolidation decision. Per Matt's review: "the reason consolidation is probably happening is budget-related (not enough tax revenue compared to facilities cost) but the politics of managing the closures require a deft hand with stakeholders." Both triggers are genuinely strong. Medium's 0-1 ceiling forces a choice; Politician wins on decision-process centrality (voter approval in all three districts; coalition for the vote; "our school IS our town" resistance). |

This surfaces Guide Gap 3 (no tiebreaker guidance when >N strong triggers exist at a ceiling) as a second live case alongside property-management high.

---

## Decision 3: Impact on Section 5 (Threshold Sensitivity)

| Pattern | Before | After |
|---|---|---|
| None → None | 4 topics | **2 topics** (habit-tracker, space-party) |
| **None → Single** | **0 topics** | **2 topics** (mobile-app, career-change) |
| Single → Pair | 6 topics | 6 topics |

The None→Single gap resolves. Test set now discriminates three threshold behaviors:
- Holding at None across both efforts (2 cells)
- Promoting from None to a single moderate at high (2 cells) ← previously 0
- Expanding from strong to strong+moderate at high (6 cells)

O1/PR1 can now validate whether a variant correctly distinguishes the medium "strong only" bar from the high "moderate+" bar on cells where that distinction is load-bearing.

---

## Decision 4: Impact on Section 4 (Ambiguity Rate)

Projected change — subagent will recompute during revision:

- **career-change high** drops from ambiguous to definitive (Accountant moderate). **−1 ambiguous cell.**
- **mobile-app high** stays unambiguous (flips from None to Accountant). No change to ambiguity count.
- **school-consolidation medium** gains an ambiguous character due to tiebreaker (Politician vs. Accountant as the single strong pick). **+1 ambiguous cell.**

Net: ambiguity count approximately unchanged at 5/20 (~25%). Still PASS.

---

## Decision 5: Impact on Section 7 (Guide Gaps)

### Gap 2 — elevated

Previously flagged as a PR1 proposal candidate. The calibration-principle walkthrough shows the guide language actively *contradicts* the persona's own operating instruction, not merely "is silent on an edge case." This is stronger grounds for a guide edit proposal, not just orchestrator-prompt clarification.

**Proposal direction for PR1:** rewrite Accountant's moderate-trigger bar to encode calibration — "economic content is a core decision dimension, even in personal/resource-allocation contexts" — and explicitly name personal-finance life decisions and runway-constrained product decisions as in-scope at moderate.

### Gap 3 — second live case

Tiebreaker guidance is now needed for both property-management high (3 strong triggers, 2-slot ceiling) AND school-consolidation medium (2 strong triggers, 1-slot ceiling). Two cells depend on how the orchestrator resolves ties. The guide should specify: "when more strong triggers exist than the effort ceiling allows, select the N most central to the REQUEST's stated goal and decision process."

---

## Scope of the Revision Task

The scoped-revision subagent should:

1. Update `ground-truth/expected-assignments.md`:
   - Rewrite the career-change, mobile-app, and school-consolidation per-topic sections to reflect the decisions above.
   - Keep `Status: Provisional`.
   - Add a revision-log line at the top noting the calibration-principle pass.

2. Update `findings/GT1_ground-truth-assignments.md`:
   - Recompute Section 1 (Summary Table).
   - Recompute Section 2 (Confidence Distribution).
   - Recompute Section 3 (Ambiguous Cases).
   - Recompute Section 4 (Ambiguity Rate) and re-run the 30% flag check.
   - Recompute Section 5 (Threshold-Sensitive Cells) and re-run the <3 flag check. Confirm the None→Single coverage note.
   - Rewrite Section 7 Gap 2 to reflect the elevated status (guide-text vs. persona-text contradiction).
   - Rewrite Section 7 Gap 3 to note school-consolidation medium as the second live tiebreaker case.
   - Update Section 8 (A1 Handoff) risk tiering — career-change and mobile-app high cells flip out of "highest-risk" since they're now definitive; school-consolidation medium moves into "medium-risk" due to the new tiebreaker character.
   - Add a revision-log entry noting what changed and why.

3. Do not re-adjudicate cells not named in this document.

4. Do not flip `Status` to Canonical. That stays with Matt's final review.

---

## Out of Scope for This Revision

- **Habit-tracker high** stays None but is flagged as a soft-boundary case in GT1 already. Do not re-adjudicate.
- **Space-party** stays None/None. Do not re-adjudicate.
- **tool-library, food-truck, property-management, youth-mentorship, wearable-device** — calibration principle was checked against these during walkthrough and does not change their calls. Do not re-adjudicate.
- **Connector/Analogist decisions** — not affected by this principle. Do not re-adjudicate.

---

## Walkthrough Retrospective (added 2026-04-18 — post-Rev 3)

After the scoped-revision subagent produced Rev 2, a human walkthrough took place across all 9 sections of the analysis companion. The walkthrough generated 20+ named decisions (2A-8C, 9A-9D) and flipped GT1 to Canonical as Rev 3. Meta-observations worth preserving for future Phase 2B/2C investigations:

### What the walkthrough surfaced that Rev 1 missed

1. **GT1 Rev 1 under-indexed on guide gaps because it treated the guide as authoritative.** Rev 1's subagent defaulted to reading the guide's trigger language as the rubric of record and produced ground truth consistent with that reading. The walkthrough reframed the guide as *input to critique*, which was the correct stance given that Phase 2B's investigation purpose is partly to refine the guide. This stance shift is the single most consequential meta-decision of the walkthrough — it produced the Rev 2 calibration-principle pass and four named guide gaps.

2. **Rev 1's "mildly ambiguous" category conflated two distinct failure modes.** Soft-boundary cells (primary answer holds but alt is defensible) and trap-adjacent cells (primary answer holds but a documented false-positive sits next to it) have different PR1 prompt-design implications and different scoring treatments. Rev 3's split into explicit subcategories (Section 3) clarified both.

3. **Rev 1 had a pre-existing off-by-one error in the confidence table** (14H/6M claimed; bullet enumeration showed 15H/5M). The subagent self-corrected mid-sentence in Section 5 of Rev 1 but did not catch the table/bullet mismatch. Worth a review pattern: always reconcile summary tables against their underlying enumerations before marking analysis complete.

4. **Ambiguity-type taxonomy was underdeveloped.** Rev 1 treated "ambiguous" as monolithic. Walkthrough surfaced three distinct ambiguity types (tiebreaker at ceiling, second-slot moderate-threshold, strong-vs-moderate boundary), each requiring different guide-gap treatment. Future investigations would benefit from this taxonomy as a ground-truth adjudication prompt: "is this ambiguity a tiebreaker problem, a threshold problem, or a boundary problem?"

### Process observations

5. **The walkthrough format worked.** Section-by-section review with 2–4 decisions per section prevented either extreme of "rubber-stamp acceptance" or "everything re-opens." Each decision block had 2–3 options with a recommended lean, which kept velocity high while preserving author agency. Consider reusing this pattern for PR1 and PI1 human-review passes.

6. **Scoped-revision subagent after the initial GT1 subagent was the right tool.** Handing a subagent a structured decision document (`GT1-review-notes.md`) plus explicit scope ("update these sections, do not re-adjudicate") produced a clean Rev 2 in one pass. Self-correction caught one off-by-one, which was easy to patch manually. Avoid a full re-run when scope is narrow.

7. **Guide edits stayed as proposals throughout** (Q10 honored). Every gap identified was written as a PR1 proposal candidate, never silently applied to the guide. Decision 7A's "widen" commitment was captured as a pre-approval for PR1's proposal review, not as a guide edit in GT1. This discipline is critical for traceability: the guide is changed by PR1 proposals Matt approves, not by GT1 subagents or walkthrough decisions.

### What future Phase 2C/downstream investigations should carry forward

8. **Treat ground-truth as a living artifact with explicit Rev history.** Rev 1 → Rev 2 → Rev 3 each served a distinct purpose (initial adjudication, scoped revision, review approval). The Revision Log at the top of each deliverable file made the history navigable for cold readers.

9. **The walkthrough surfaced three cell flips that the initial GT1 subagent missed.** This isn't a criticism of the subagent — it's a confirmation that human walkthrough is a load-bearing step, not ceremony. A2, if it happens, should also receive a walkthrough before Canonical.

10. **Document reading order explicitly.** The Rev 3 Revision Log includes a "Reading order for cold readers" pointer. This small addition saves downstream consumers (A1, O1, PR1, PI1) 5–10 minutes of navigation on first read each. Low cost, high return — include in future investigation deliverables.

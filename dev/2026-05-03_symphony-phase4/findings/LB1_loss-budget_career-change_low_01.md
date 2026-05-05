# LB1 Per-Sample Score: career-change/low/01_calling-vs-escape-diagnosing-the-driver

**Date:** 2026-05-04
**Sample ID:** career-change_low_01_calling-vs-escape-diagnosing-the-driver
**Effort:** low
**Prompt under test:** idea-symphony/prompts/phase4_summary-only_low-effort.md
**Through-line count in BL1 ledger:** 18

---

## Axis A

| BL1 TL ID | TL summary | Status | Notes |
|---|---|---|---|
| TL-1 | Burnout-state mind unreliable for self-assessment | Paraphrased | Exec Summary + Theme 1 + High-confidence item; "decision context is unreliable", "exhaustion-driven urgency" |
| TL-2 | Low-cost exploration before high-commitment | Paraphrased | Implicit in actions/themes; "low-cost experiments...before any high-commitment move" |
| TL-3 | Volunteer work structurally different | Paraphrased | High-confidence items + Exec Summary "structurally curated...exit before fatigue" |
| TL-4 | Draining moments most diagnostic | Paraphrased | High-confidence items: "draining moments — not energizing — are most diagnostic" |
| TL-5 | Same moral injury architecture | Paraphrased | High-confidence items; Theme 3 — "structural moral injury parallel" |
| TL-6 | Calling for proximity, not law | Paraphrased | Theme 2 explicit — "Medium vs. Proximity" |
| TL-7 | Intermediate roles bridge clinical/legal | Paraphrased | Near-term action; Theme 5 |
| TL-8 | Seek out leavers, not stayers | Paraphrased | Immediate action verbatim-near; "burned out in year four" |
| TL-9 | Counterfactual resolution test flawed | Dropped | No mention of the resolution-test critique |
| TL-10 | Sabbatical needs grinding-parts exposure | Paraphrased | Trade-offs section preserves the design-flaw frame |
| TL-11 | Unit/specialty transfer as lower-cost diagnostic | Paraphrased | Near-term action explicit |
| TL-12 | Two separate decisions | Paraphrased | Exec Summary + Theme 4 + Blind-spot flag |
| TL-13 | Compounding cynicism floor (escape-recommit) | Paraphrased | Theme 3 explicit "raises baseline cynicism floor" |
| TL-14 | Emotional sustainability checkpoints | Paraphrased | Long-term action verbatim-near |
| TL-15 | Staying to build infrastructure may be higher leverage | Paraphrased | Exec Summary + Theme 5 + Blind-spot flag |
| TL-16 | Existing professional capital forfeited | Dropped | Not framed as asset-inventory; "preserving professional capital" appears once but no audit recommendation |
| TL-17 | Deliberate delay mitigates calling+escape urgency | Absorbed | Folded into general "low-cost experiments" framing; no "deliberate delay" as named mitigation |
| TL-18 | Leverage-question precedes profession decision | Paraphrased | Theme 5 + Exec Summary leverage calculus paragraph |

**Survival rate:** 15/18 = 83% (Verbatim/Paraphrased count as survival; Absorbed and Dropped do not)
**Verdict:** pass

## Axis B (low)

### B.1
- Central Tension: "Whether the pull toward immigration law reflects a genuine vocational fit that can be tested and validated, or whether burnout-driven urgency is generating a plausible narrative that low-cost exploration would either confirm or collapse — and whether the two can even be separated without deliberate structural experimentation." — Y (names trade-off; matches BL1 candidate closely)
- Exec Summary: substantive — commits each lens to a stance ("A feasibility-oriented view treats two years of resettlement volunteering...as a meaningful signal"; "A risk-oriented counterpoint argues the volunteer record is structurally curated"). No persona names. Stance-committed disagreement framing throughout three paragraphs.
- `[trade-off]` tags: BL1 identifies TL-15 as `[trade-off]`. Output tags one near-term action as `[trade-off: a feasibility-oriented view frames this as parallel exploration; a risk-oriented view argues it may reveal that law school is unnecessary]`. Two further trade-offs in the Trade-offs section are substantively framed (sabbatical reliability; ecosystem mapping vs. premature commitment). TL-15 itself appears as a blind-spot flag rather than a trade-off tag — partial match. ~50% match on tag placement, but trade-off framing is otherwise substantive.
- Verdict: pass

### B.2
- BL1 categories: (1) emotional/identity dimensions of transition; (2) financial reality of transition path; (3) phenomenology of legal practice from inside.
- Output gaps with mapping:
  - "Identity and professional self-concept...the aspiration to attorney status" — maps to BL1 Gap 1 (emotional/identity). Substantive, cluster-specific.
- Gap-presence rate: 1/3 = 33%
- Specificity: substantive (the one gap named is specific and well-articulated)
- Verdict: partial — only 1 of 3 BL1 gaps surfaced. Financial-reality gap and phenomenology-of-practice gap absent. Below 75% category match threshold.

## Axis C — n/a

## Phase-5 Signal Audit
- Central Tension: matches BL1 candidate (epistemological reliability vs. need to decide). Strong.
- Confidence tags: output uses `[convergent]`, `[unique: feasibility]`, `[unique: risk]`, `[trade-off]`. Of 9 tagged items, mapping to BL1 tag candidates is approximate; tag placement matches BL1 in ~6/9 cases (~67%). TL-15 mistagged (BL1: `[trade-off]`; output: blind-spot).
- Neither-lens cross-link: only 1 gap named; Phase 5 would lose the financial and phenomenology gaps.

## Sample Verdict
**Pass:** A passes AND B.1 passes AND B.2 passes (or n/a). Strict — partial on any axis = sample FAIL.

**Verdict:** FAIL
**Failure modes:**
- B.2 partial: only 1 of 3 BL1 neither-lens-gap categories surfaced (33% category match, below 75% threshold). Financial-reality gap and phenomenology-of-practice gap missing.
- Minor Axis-A loss: TL-9 (counterfactual critique) dropped; TL-16 (professional-capital audit) dropped; TL-17 absorbed without naming "deliberate delay" as mitigation. These are governance/methodological through-lines whose loss matches the May 4 observation about "governance-artifact loss."
- Tag placement drift on TL-15 (trade-off downgraded to blind-spot).

**Recommended prompt revision target:** Strengthen the Neither-lens gaps section by requiring at least 2 distinct gap categories drawn from a checklist (e.g., emotional/identity, financial/material, phenomenological/lived-experience, equity/access, relational/social, political-economy). Current prompt language ("1-3 things...skip the section entirely if nothing substantive emerges") permits single-gap output that passes the prompt but fails the loss-budget. Also add explicit instruction to preserve methodological/governance through-lines (e.g., decision-architecture critiques, asset audits, delay-as-mitigation framings) that the DA/Pragmatist pairing tends to under-weight relative to action items.

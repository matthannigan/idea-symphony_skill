# LB1 Per-Sample Score: wearable-device/low/04_false-positives-trust-and-alert-behavior

**Date:** 2026-05-04
**Sample ID:** wearable-device_low_04_false-positives-trust-and-alert-behavior
**Effort:** low
**Prompt under test:** idea-symphony/prompts/phase4_summary-only_low-effort.md
**Through-line count in BL1 ledger:** 22

---

## Axis A

| BL1 TL ID | TL summary | Status | Notes |
|---|---|---|---|
| TL-1 | Alert fatigue is a cliff, not a slope | Paraphrased | Theme 2 explicitly: "Alert Fatigue Is a Cliff, Not a Slope" |
| TL-2 | Liability trigger is alert copy, not product label | Paraphrased | High-confidence item; Exec Summary §2 |
| TL-3 | Motion artifact P0 / context flag | Paraphrased | Immediate action verbatim quote preserved |
| TL-4 | Medical device attorney pre-launch review | Paraphrased | Immediate action item |
| TL-5 | Passive metrics surface silent disengagement first | Paraphrased | Theme 2 + high-confidence + near-term action |
| TL-6 | Dismissed alerts as labeled training data | Absorbed | Implicit in dismissal-pattern instrumentation; not named as training data |
| TL-7 | Health-anxious users rationalize FPs away | Paraphrased | Theme 2 closing sentence |
| TL-8 | Continuous monitoring may amplify anxiety | Paraphrased | Long-term action with 20% threshold |
| TL-9 | Battery/downtime Shifting-the-Burden moment | Paraphrased | Theme 5 |
| TL-10 | FP governance: quantitative criteria + authority | Paraphrased | Theme 1 + near-term action with trust SLA |
| TL-11 | Named ownership / sensitivity-drift | Paraphrased | Trade-off framing partially preserved (immediate action takes DA side; trade-off section captures forum-vs-veto split) |
| TL-12 | Two named firmware threshold profiles | Paraphrased | Immediate action + long-term action |
| TL-13 | Uncertainty surfacing as ethical/differentiating | Paraphrased | Theme 4 |
| TL-14 | Tier-based plain-English confidence | Paraphrased | Theme 4 quotes tiers |
| TL-15 | Time-gate non-critical alerts to waking hours | Paraphrased | Theme 3, "time-gating non-critical alerts to waking hours" |
| TL-16 | Feedback at calm moments, not post-alarm | Absorbed | Surfaces as "8 hours after… single push notification" blind-spot flag; calm-moment principle implicit |
| TL-17 | Crisis info on-device, not app-dependent | Paraphrased | Theme 3 closing |
| TL-18 | PCP routing not 911 | Paraphrased | Theme 3 |
| TL-19 | Decision accuracy, not satisfaction, as metric | Dropped | Not surfaced anywhere in summary |
| TL-20 | Early-adopter cohort is biased population | Dropped | Cohort analysis appears (TL-22) but bias-of-population point absent |
| TL-21 | Liability-incentive asymmetry / internal trigger | Paraphrased | Exec Summary ¶2: "company has structurally weak incentive…unless harm events are made visible to leadership" |
| TL-22 | Cohort analysis by alert volume reveals FP ceiling | Paraphrased | Near-term action verbatim |

**Survival rate:** 20/22 = 91% (Verbatim 0 + Paraphrased 18 + Absorbed 2; Dropped 2)
**Verdict:** pass

## Axis B (low)

### B.1
- Central Tension: "Calibrating alert sensitivity to catch real cardiac events vs. keeping false-positive rates low enough that users don't habituate to dismissal…with the added complication that the consumer wellness regime and the future FDA clinical regime require different operating points" — Y (names trade-off concretely; matches BL1 candidate's spirit re: regimes)
- Exec Summary: substantive — commits each lens: "A feasibility-oriented view addresses this by treating sensitivity as a versioned firmware config parameter…A risk-oriented counterpoint flags that this framing underestimates the trust cliff." Stance-committed throughout three paragraphs.
- `[trade-off]` tags: 1 explicit `[trade-off]` tag (TL-12 long-term action) + 2 entries in Trade-offs section (uncertainty disclosure liability surface; governance forum without veto). BL1 names TL-11 as the sole `[trade-off]`. The output's governance trade-off (forum vs. veto authority) directly matches TL-11. Match: ~75% (1/1 BL1 trade-off captured; output adds an additional uncertainty-disclosure trade-off not in BL1 but substantive).
- Verdict: pass

### B.2
- BL1 categories: relational/phenomenological (Gap 1), clinical-relationship (Gap 2), regulatory-pathway-consequences (Gap 3)
- Output gaps with mapping: "Equity in anxiety load" — maps loosely to equity/access category, NOT to any of BL1's three named gaps. Output names access to PCP/telehealth/flexible work as the differentiator.
- Gap-presence rate: 0/3 BL1 categories matched (0%)
- Specificity: substantive (the equity gap is concrete: PCP access, telehealth, flexible work, demographic data on who calls 911)
- Verdict: partial — output produces one substantive neither-lens gap that is genuinely outside DA/Pragmatist scope, but it does not match any of BL1's three candidates. Per scoring rule (≥75% category match required for pass), this fails the category-match bar but the substantive single gap is not generic-filler. Net: partial.

## Axis C — n/a

## Phase-5 Signal Audit
- Central Tension match BL1: partial — BL1 candidate centered on uncertainty-surfacing-vs-hiding-confidence; output centers on sensitivity-vs-FP-rate plus consumer/clinical regime split. Both are valid framings of the cluster; output's framing is also defensible and arguably more legible to a cold reader.
- Confidence tags match: 18/22 TLs have implicit or explicit tag-equivalent treatment (convergent items in high-confidence list, unique items in blind-spot flags, trade-off in trade-offs). Two tags clearly correct: TL-22 `[unique: feasibility]` ✓, TL-something governance `[unique: risk]` ✓. Tag fidelity ~80%.
- Neither-lens gaps: cross-link to B.2 — single gap surfaced (equity in anxiety load); does not align with BL1's three candidates but is substantive.

## Sample Verdict

**Verdict:** PASS (with B.2 partial)
**Failure modes:**
- TL-19 (decision accuracy as success metric) and TL-20 (biased early-adopter cohort) dropped — both are DA-unique structural critiques that the prompt's "blind-spot flags" section should have caught.
- Neither-lens gap section names only one gap (equity); BL1 expected the relational/phenomenological, clinical-relationship, or regulatory-consequence angles. The prompt allows ≥1 gap so this is within-spec but lower-yield than possible.
- Central Tension is well-formed but pivots away from BL1's "uncertainty-hiding as the load-bearing tension" framing toward sensitivity-calibration.

**Recommended prompt revision target:** Strengthen the blind-spot flags instruction to require at least one structural critique of measurement validity (not just unique design recommendations) when the cluster substance supports it. Consider adding an explicit nudge: "Did either lens question whether the success criterion or the measurement population is correct? Surface those if so."

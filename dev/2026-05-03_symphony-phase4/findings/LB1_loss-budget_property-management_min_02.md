# LB1 Per-Sample Score: property-management/min/02_business-model-financial-sustainability-and-scaling

**Date:** 2026-05-04
**Sample ID:** property-management_min_02_business-model-financial-sustainability-and-scaling
**Effort:** min
**Prompt under test:** idea-symphony/prompts/phase4_summary-only_min-effort.md
**Through-line count in BL1 ledger:** 20

---

## Axis A: Through-Line Survival

| BL1 TL ID | TL summary | Status | Notes |
|---|---|---|---|
| TL-1 | Price for delivered value (RevPAN delta) [recurring] | Verbatim | Exec Summary, Theme "RevPAN as Universal Business Language", Action ($187 vs $142 placeholder), Opportunity bullet |
| TL-2 | Tiered Base 15% / Premium 22-25% [single] | Verbatim | Theme "Tiered Service Architecture"; full structure preserved |
| TL-3 | Hybrid flat-plus-commission for off-season [recurring] | Paraphrased | Trade-offs bullet names hybrid pricing + off-season stability |
| TL-4 | Off-season as fixed-cost stress test [recurring] | Paraphrased | Risks bullet ("gap...explicitly modeled and reserved against"); Theme "Proactive Capital Structuring" |
| TL-5 | Pay major fixed costs annually during peak [recurring] | Verbatim | Theme + Trade-offs bullet preserves annual prepayment logic |
| TL-6 | Revolving LOC established before needed [recurring] | Verbatim | Near-term action: 6+ months history, $15-20K, 60-90 day float, not permanent |
| TL-7 | Net-15/net-20 owner payout [single] | Verbatim | Immediate action; Trade-offs note disclosure requirement |
| TL-8 | $20K untouchable reserve of $80K [recurring] | Paraphrased | Theme "Proactive Capital Structuring" names $20K reserve; partition framing partially preserved |
| TL-9 | Legal structure first capex [single] | Verbatim | Immediate action: hospitality attorney, $3-5K, agreement clauses, before first reservation |
| TL-10 | One best-in-class PMS [recurring] | Dropped | No mention of Guesty/Hostaway/Lodgify, $400-600/mo, "impossible at 30" stitching warning |
| TL-11 | Insurance via hospitality-specialist broker [single] | Verbatim | Immediate action preserves $1M GL, umbrella, E&O, $8-12K, specialist brokers |
| TL-12 | Cleaning coordination at property 8 [recurring] | Verbatim | Near-term action: property 8 trigger, written agreements, Properly/TurnoverBnB |
| TL-13 | W-2 guest comm coordinator at 15 [recurring] | Verbatim | Long-term action: $18-22/hr, $50 credit, 90-min standard, W-2 not contractor |
| TL-14 | Preferred vendor network volume commitments [recurring] | Paraphrased | Long-term action references the four trades and "competitive asset" framing, but pegged at 30 properties (BL1: identify at 10, asset by 30) |
| TL-15 | 40-item onboarding checklist [recurring] | Verbatim | Near-term action preserves 40 items, properties 1-5 debug, 80% delegation by property 10 |
| TL-16 | PriceLabs/Wheelhouse on day one [recurring] | Verbatim | Near-term action; "high-demand night" comparison preserved as sales tool |
| TL-17 | Minimum-stay as revenue lever [single] | Dropped | No mention of 2-night weekend, 5-night peak, $400-800 booking value lift |
| TL-18 | Review-velocity compounding [recurring] | Dropped | No mention of 10-15 review threshold, sequenced value story, churn prevention |
| TL-19 | Dynamic pricing as primary trust-building metric [recurring synthesis] | Paraphrased | Theme "Dynamic Pricing as Differentiator, Not Feature" names the integrating thesis |
| TL-20 | Multi-instrument liquidity architecture [recurring synthesis] | Paraphrased | Theme "Proactive Capital Structuring" enumerates the four instruments as a coherent playbook |

**Survival rate:** 17/20 = **85%**
**Absorption rate:** 0% (none merged)
**Drop rate:** 3/20 = **15%** (TL-10, TL-17, TL-18)
**`[recurring]` survival:** 13/15 = **87%** (TL-10 and TL-18 dropped) — **fails strict 100% target**
**Survival-axis verdict:** **partial pass** (overall 85% ≥ 80%, but recurring-survival fails strict target)

## Axis B — n/a (min)

## Axis C: Conspicuous-Absences Detection (min — APPLIES)

- **Section present:** Y
- **BL1 candidates:**
  1. No owner acquisition strategy beyond performance proof points (channels, prospecting)
  2. No regulatory/licensing risk treatment (permit transfers, multi-municipality compliance)
  3. No owner-manager relationship-failure handling (distressed owners, mid-season exits, damage disputes)
- **Output absences:**
  1. No owner acquisition cost / marketing budget — how first 10 owners are found
  2. No regulatory/licensing as a scaling variable — multi-municipality compounding cost
  3. No competitive response — what if a lower-cost competitor with similar tooling enters
- **Match rate:** 2/3 = **67%** (acquisition: match; regulatory: match; relationship-failure: missed and replaced with competitive-response, which is a reasonable but distinct gap)
- **Specificity:** specific (each is grounded in cluster substance, not generic gap-listing)
- **Verdict:** **partial** — two of three BL1 candidates surfaced with strong specificity; the third (owner-manager relationship friction) was a non-trivial omission, but the substituted competitive-response gap is genuine and well-targeted

## Phase-5 Signal Audit

- **Central Tension match:** **N** — BL1 names "performance proof required for acquisition vs. no track record before first managed property" (bootstrapping paradox). The summary references AirDNA-as-proxy as the workaround in an action item but never names the tension as such. The summary has no dedicated tension framing.
- **Confidence-tag match:** ~80% — Tags applied to 10 action items. Mostly accurate (RevPAN, LOC, cleaning at 8, PMS-adjacent, vendor network, 15-property hire, PriceLabs, insurance, legal all marked `[recurring]`; net-15 payout marked `[single]` correctly). The 40-item onboarding checklist is tagged `[single]` but BL1 marks TL-15 as `[recurring]` (extends the property-trigger logic). One mis-tag.

## Sample Verdict

**Verdict:** **PASS** (with caveats)

**Failure modes:**
- Two `[recurring]` through-lines fully dropped: TL-10 (PMS stack — concrete tooling and "impossible at 30" warning lost) and TL-18 (review velocity — only platform-algorithm insight in cluster lost). This breaks the strict 100% recurring-survival target.
- TL-17 (minimum-stay) dropped — defensible as a `[single]` but it's the most concrete revenue-lever advice and its absence weakens the Pricing/Revenue Optimization coverage.
- Central Tension not named, despite BL1 identifying a clean bootstrapping paradox the prompt's "watch for conspicuous absence" framing should have surfaced.
- TL-15 mis-tagged `[single]` when BL1 classifies it `[recurring]`.
- TL-14 trigger drift: BL1 says identify vendors at 10 properties, formalize by 30; output collapses both to "30 properties," losing the early-action point.

**Recommended prompt revision target:**
The prompt asks for `[recurring]` vs `[single]` tagging but provides no guidance on the threshold for inclusion. **Most important RP1 input:** add an explicit instruction that every `[recurring]` insight (idea returned to across 2+ questions) MUST appear in either Recommended Actions or Key Themes — recurring-signal omission is the dominant failure mode here. Secondary: instruct the synthesizer to produce a one-sentence "Central Tension" line when a structural tension is detectable (the prompt currently has no Phase-5-signal scaffolding at min, even though BL1 expects aggregable Central Tension candidates).

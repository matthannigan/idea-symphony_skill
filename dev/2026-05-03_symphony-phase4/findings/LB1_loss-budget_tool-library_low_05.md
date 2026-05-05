# LB1 Per-Sample Score: tool-library/low/05_equity-access-belonging

**Date:** 2026-05-04
**Sample ID:** tool-library_low_05_equity-access-belonging
**Effort:** low
**Prompt under test:** idea-symphony/prompts/phase4_summary-only_low-effort.md
**Through-line count in BL1 ledger:** 20

---

## Axis A

| BL1 TL ID | TL summary | Status | Notes |
|---|---|---|---|
| TL-1 | "Walkable" false without last-mile transport | V/P | Theme 1 names walking-distance as marketing claim; actions name secondary cache + appointment checkout |
| TL-2 | Standard hours exclude shift workers | V/P | Action: "two weekday evening slots (6–8 PM) and Saturday morning"; Theme 1 mentions shift workers |
| TL-3 | Multilingual/paper-based infrastructure baseline | V/P | Theme 2 + action: visual checkout cards, QR audio walkthroughs, bilingual volunteers |
| TL-4 | Government-ID excludes most-needed residents | V/P | Action: "Eliminate ID and deposit requirements for first visits" |
| TL-5 | Homeowner-centric inventory signals design intent | V/P | Action: 40% renter-relevance audit threshold preserved verbatim |
| TL-6 | Cultural capture by founding homeowner cohort | V/P | Action: "Reserve two seats on the advisory group for renters" |
| TL-7 | Early visible success conceals equity gap | V/P | Central Tension and Exec Summary both name this directly |
| TL-8 | Default outreach amplifies privilege | V/P | Blind-spot flag: deliberate social-media under-investment + 50-member cap |
| TL-9 | Trust before ask — zero-friction first visit | V/P | Theme 5 + first-visit elimination action |
| TL-10 | Volunteers are the trust mechanism | Absorbed | Theme 5 names welcome volunteer + scripted intake but doesn't fully articulate "training is not soft culture work" framing |
| TL-11 | Damage from unfamiliarity = training failure | V/P | Long-term action preserves "training failure" framing + tracking-by-tool-type |
| TL-12 | Damage conversation is the trust test | V/P | Theme 3 + action preserves 4-step protocol |
| TL-13 | Project completion is real outcome metric | V/P | Long-term action: 24-hr text follow-up, "How's the project going?" |
| TL-14 | 90-day address audit | V/P | Near-term action: "map which neighborhood blocks have never produced a borrower… routing problem, not a marketing problem" |
| TL-15 | Shame = silent self-selection | V/P | Action: 3-question intake script preserved verbatim |
| TL-16 | No-fault/flat-cap damage policy is strategy | V/P | Action: "$10–$20 maximum per incident" cap; framed as `[convergent]` not `[trade-off]` per BL1 |
| TL-17 | Mandatory governance with teeth | V/P | Trade-off section preserves "embedded in governing documents with required action" vs. dashboard-metric framing |
| TL-18 | Measuring housing tenure necessary | Dropped | No explicit "do you own or rent?" intake field action; tenure mentioned only in 6-month review aggregate |
| TL-19 | Physical space signals belonging | Absorbed | Theme 4 mentions copywriting; loses 60-second orientation, 3-zone layout, pre-entry sign specifics |
| TL-20 | Repeat borrowing is lagging indicator | Absorbed | Blind-spot flag mentions non-arrival > non-return but loses "single volunteer hour/month calling non-returners" |

**Survival rate:** 17/20 = 85% (V/P) — counting Absorbed as fail per strict scoring: 17/20 = 85%
**Verdict:** pass

## Axis B (low)

### B.1
- Central Tension: "Building visible early success risks papering over the structural access gap — the residents who most need the library… are the least likely to show up without deliberate design, and early crowding by already-connected residents removes the urgency to solve that harder problem." — Y (names trade-off explicitly)
- Exec Summary: substantive (commits each lens to a stance: "A feasibility-oriented view argues for eliminating friction… A risk-oriented counterpoint accepts the same goal but presses harder…")
- `[trade-off]` tags: BL1 has 1 `[trade-off]` (TL-16) + 2 `[unique: risk]`. Output has 3 explicit `[trade-off]` items in Recommended Actions (ID/deposit, governance teeth, social-media cap) + named trade-offs in Key Considerations. TL-16 is tagged `[convergent]` in output but BL1 marks `[trade-off]`. Output adds genuine stance-divergent trade-offs not in BL1. Match: ~67% by tag-fidelity but exceeds spec on tension preservation.
- Verdict: pass

### B.2
- BL1 categories named: (Gap 1) phenomenological/emotional experience of exclusion; (Gap 2) financial-model implications; (Gap 3) governance architecture/political-economy
- Output Neither-lens-gaps: (a) renter–landlord relational dynamics; (b) governance structure / who holds power
- Gap-presence rate: 1/3 substantive match (governance/political-economy → Gap 3). Renter-landlord gap is relational/equity-adjacent but doesn't map cleanly to BL1's phenomenological or financial gaps. Phenomenological and financial gaps are dropped entirely.
- Specificity: substantive (both output gaps are concrete and cluster-specific, not generic)
- Verdict: partial — only 1/3 BL1 categories present; misses the phenomenological-experience and financial-model gaps which are the most distinctive BL1 candidates

## Axis C — n/a

## Phase-5 Signal Audit

- Central Tension: present, well-formed, names structural paradox
- Confidence tags: present on all action items; 1 mismatch (TL-16 tagged `[convergent]` not `[trade-off]`)
- Trade-offs: 3 substantive trade-offs preserved with stance-committed framing
- Blind-spots: 4 flagged, attributed by lens
- Phase-5 aggregable signal quality: high — output is unusually well-structured for downstream synthesis

## Sample Verdict

**Pass:** A AND B.1 AND B.2. Strict — partial = FAIL.

**Verdict:** FAIL
**Failure modes:**
- B.2 partial: 2 of 3 BL1 neither-lens-gap categories dropped (phenomenological-experience-of-exclusion, financial-model-cumulative-impact). Output substitutes a relational renter-landlord gap that, while substantive, doesn't recover the dropped categories.
- TL-18 (housing-tenure intake field) dropped — losing the most-quoted operational principle ("you cannot correct a bias you are not measuring")
- TL-19 spatial design specifics absorbed into copywriting note; 60-second orientation, 3-zone layout, pre-entry sign all lost
- TL-16 tag mismatch: marked `[convergent]` in output where BL1 specifies `[trade-off]` due to inverted DA/Pragmatist rationales

**Recommended prompt revision target:**
- Strengthen Neither-lens-gaps guidance: explicitly enumerate candidate gap categories (relational/emotional-phenomenological/financial-feasibility/political-economy/lifecycle) so the synthesizer is more likely to name multiple distinct gap types rather than picking one or two adjacent ones.
- Add explicit instruction to preserve named operational thresholds and intake-field specifics from the responses (housing-tenure field, 60-second orientation, 3-zone layout) — the prompt currently emphasizes "specific data-model fields" but the synthesizer dropped them anyway when consolidating themes.
- Clarify `[trade-off]` tagging: same recommendation reached by different rationales should be tagged `[trade-off]`, not `[convergent]`, when the rationales themselves diverge.

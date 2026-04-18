# BL1 — Baseline Establishment: food-truck / medium

**Date:** 2026-04-18
**Author:** BL1 subagent (food-truck / medium cell)
**Scope:** One cell of the Phase 2C BL1 baseline pass — baseline reference for SP1 variant scoring of the synthesis prompt on food-truck at medium effort.
**Companion baseline files:**
- `baselines/food-truck_medium_clusters.md` (B1)
- `baselines/food-truck_medium_convergence.md` (B2)
- `baselines/food-truck_medium_target.md` (B3)
- `baselines/food-truck_medium_append-target.md` (B4)

---

## 1. Cell Characterization

**Top-line numbers:**

| Metric | Value |
|---|---|
| Total source questions (N) | 122 |
| Synthesize-group questions | 93 (7 of 11 personas) |
| Append-group available (A_available) | 29 |
| Synthesize personas | 7 — Analyst (14), Appreciative Inquirer (12), Audience Advocate (14), Devil's Advocate (12), Questioner (14), Systems Thinker (15), Accountant (12) |
| Append personas | 4 — Provocateur (7), Storyteller (7), Visionary (7), Analogist (8) |
| Natural cluster count (C) | 9 |
| Convergence groups (P) | 16 |
| Questions in convergence (Q) | 63 of 93 (68%) |
| Convergence density | 68% |
| Synthesized output target (M) | 33 (range 30-36) |
| Compaction ratio | 93 / 33 = 2.82 (range 2.6-3.1) |
| Append quota (A_quota) | 20 (4 Perspective personas × 5, no Politician) |
| Final total output | 53 (range 50-56) |

**Topic profile:** A business-centric topic — a first-time food truck launch with a concrete business plan ($100K capital, Filipino-Mexican fusion, specific competitor/ordinance context, 3-year growth path). Per the persona-selection-guide topic-affinity hints, this profile triggers: financial structure central (Analyst core; **Accountant at medium** as the Tier 3 pick), regulatory/compliance exposure (DA core; Lawyer would trigger at high), stakeholder complexity (AA core), and single-primary-domain event planning (Analogist default, not Connector). The medium-effort roster aligns: all 10 Tier 1 personas plus Accountant as the single Tier 3 addition, Analogist preserved (no Connector swap).

**Why this cell is a clean BL1 reference:** Concrete business topic, no shortfalls in TDA1, no missing slots, default Analogist (no Connector swap), and **NOT on the GT1 watchlist**. Every persona contributes a meaningful spread of questions with no compounding or filler pathologies. The 9-cluster natural structure is visible in both per-persona and flat-pool clustering passes. Convergence density at 68% is the highest observed so far across sampled BL1 cells — reflecting the business-topic tendency for personas to converge on shared strategic axes (financial viability, ordinance response, fleet expansion, market positioning, CX accessibility), further amplified by the Accountant's quantitative layer converging on Analyst and DA financial territory.

**How food-truck/medium differs from food-truck/low as a BL1 reference:**

| Dimension | Low | Medium | Delta | Cause |
|---|---|---|---|---|
| Total questions | 101 | 122 | +21 | Accountant added (12); modest volume increases on Analyst/AA/ST (+9) |
| Synthesize questions | 72 | 93 | +21 | Same as above |
| Append available | 29 | 29 | 0 | 4 Perspective personas × 7-8 each unchanged |
| Append quota | 12 | 20 | +8 | D1 rule: 3→5 per persona at medium |
| Clusters | 8 | 9 | +1 | New cluster: C6 Brand/Loyalty/Word-of-Mouth emerges from ST Q14/Q15 + AI's expanded delight framing |
| Convergence density | 64% | 68% | +4pp | Accountant-Analyst convergence adds new merges (CG4, CG5, CG6, CG8, CG9, CG10, CG11, CG13 all include Accountant) |
| Synthesized output M | 28 | 33 | +5 | Scaled by source volume at similar compaction |
| Compaction | 2.57 | 2.82 | +0.25 | Slightly higher compaction justified by higher convergence density |
| Strategic % | 29% | 36% | +7pp | Accountant added at Strategic/Analytical; all 12 Accountant questions are in Strategic or Analytical/Tactical clusters |
| Human-centered % | 28% | 28% | 0 | Stable; Accountant addition doesn't dilute because AA/AI/ST still carry Human-centered clusters |
| Analytical % | 18% | 15% | -3pp | Diluted by larger output |
| Creative % | 11% | 9% | -2pp | AI volume range stable (8-12) at both low and medium; larger output dilutes AI share |
| Tactical % | 14% | 12% | -2pp | Absolute count of tactical questions similar; ratio lower |

**The C6 emergence is the structural shift:** at low effort, word-of-mouth/brand/loyalty concerns scattered across clusters; at medium effort, Systems Thinker's Q14 (word-of-mouth self-reinforcing) and Q15 (location volatility / habit formation) plus AI's expanded delight framing form a coherent cluster. This is modest structural shift, not volume growth — and means SP1 cannot assume food-truck/medium is "just food-truck/low with more questions."

---

## 2. Persona Representation Challenges

The synthesizer must navigate five meaningful representation tensions in this cell:

**Tension A — Accountant-Analyst voice blend.** The newly-added Accountant overlaps 40-50% with Analyst at different depth (per the persona-selection-guide: "Analyst creates scaffolding, Accountant fills with financial data"). 8 of Accountant's 12 questions land in convergence groups with Analyst as a co-contributor (CG4, CG5, CG6, CG8, CG9, CG10, CG11, CG13). SP1 risk: a synthesizer may collapse Accountant into Analyst voice, losing the specific dollar benchmarks ($12-16 plate, $750-850/month debt service, $800-1200 corporate gig, $50-70K second truck, $800-1,500/month commissary) that distinguish Accountant. The B3 Persona Representation Requirements set an Accountant floor of 5 with an explicit "distinctive vocabulary preservation check" for at least 2 specific-dollar benchmarks to survive.

**Tension B — Audience Advocate's structural-equity load.** AA carries the heaviest persona-specific dimension in this cell: 7 of 14 AA questions primary-assign to C4 (CX/Accessibility), 4 to C5 (Community/Accountability), 2 to C2 (Regulatory equity), and 1 to C8 (Expansion community impact). AA is the sole carrier of structural-equity framings (accessibility beyond ADA, dignity of ordering, past-experience trust barriers, accountability beyond revenue, power-sharing with community, sourcing/labor visibility). Merging AA questions aggressively into DA (risk) or Analyst (operations) would collapse the structural-equity voice. The B3 AA floor is 8 — the highest of any persona — reflecting this preservation burden.

**Tension C — Systems Thinker's archetype vocabulary expands.** ST grows from 12 (low) to 15 (medium) questions. The distinctive archetype vocabulary is denser: Shifting the Burden (CG10 catering), Success-to-the-Successful (C3/C8 competitive convergence), Erosion of Goals (C6 location volatility / habit formation), Fixes-that-Fail-adjacent (C1 SBA loan constraints), Self-reinforcing/balancing patterns (C6 word-of-mouth). The preservation check specifically calls for at least 3 ST archetypes surviving in merges. SP1 prompts that normalize archetype vocabulary during synthesis will silence ST's distinctive contribution even if they preserve all 15 ST question topics.

**Tension D — Appreciative Inquirer's method-question surplus.** AI generates 12 questions at medium; 3 of those 12 are expected to drop (Q6 customer aspiration, Q11 sustaining the vision, Q12 resource activation). High drop rate here is a feature, not a flaw — AI's strengths-based framing naturally generates multiple method-questions addressing adjacent delight/vision/community territory, and a synthesizer selecting the strongest 8-9 of 12 is correctly preserving signal. SP1 risk: a synthesizer that keeps ALL AI questions would fail on dimension balance (Creative over-representation) and compaction (too few merges). The B3 AI target of 8 with floor 6 explicitly permits 3-4 drops.

**Tension E — Questioner absorption into merges.** Questioner generates 14 questions. 10 of 14 land in convergence groups (CG1, CG3, CG4, CG6, CG7, CG8, CG10, CG11, CG12, CG13). Without a floor protecting Questioner-distinctive uniques (Q3 permit scarcity, Q12 price sensitivity discovery, and the merge contributions), the synthesizer could under-represent Questioner's "widening problem framing" function. B3 sets the Questioner floor at 6 with explicit named uniques.

---

## 3. Append Mechanics Observations

**Round-robin works cleanly at medium effort.** All 4 Append personas exhibit clean 3-cluster internal structure consistent with the persona-selection-guide's "universal 3-cluster structure" claim. The medium-effort quota of 5 per persona (vs. 3 at low) captures more of each persona's internal cluster diversity: at low effort only the primary cluster-representative question from each internal cluster made it in; at medium effort, 2 questions from the largest cluster plus 1 from each smaller cluster enter the output. This is a meaningful quality upgrade from low.

**Drop rate is lower at medium (31%) vs. low (59%).** Expected D1 behavior: quota 5 × 4 personas = 20 captures more of the 29 available than low's quota 3 × 4 = 12. Medium loses 9; low loses 17. The drop rate is within expected range and signals healthy Append utilization at medium effort.

**Tie-breaking biases toward lower-indexed clusters.** The deterministic source-order rule applied throughout means: (a) within a cluster, lowest-numbered question wins, (b) across clusters of equal size, lowest-indexed cluster (A before B before C) gets refill priority first. This is reproducible across SP1 runs but can systematically drop particular questions. Notably:
- **Visionary Q6 (antifragile architecture) drops** — a genuine distinctive cognitive-mode loss. No Synthesize persona has antifragile-vocabulary; this is a real paradigm-framing loss via Append-quota. Flagging for cross-topic BL1 synthesis in case multiple cells show systematic antifragile-paradigm loss.
- **Provocateur Q7 (fusion concept as problem) drops** — significant challenge to C3 lost, though content-wise CG7 merge outputs address adjacent territory.
- **Analogist Q8 (regulatory capture collective action) drops** — would have bridged to C2 complementing CG2; source-order tiebreak holds.
- **Storyteller Q5 (Elena at city council) drops** — narrative-advocacy frame lost, though CG1/CG2 carry regulatory-advocacy in analytical register.

**Bridges to C8 (Expansion) dominate.** 6 of 20 Append questions primary-or-bridge to C8 (Analogist Q4 craft brewery, Q7 Airbnb/DoorDash; Storyteller Q3 catering, Q4 Elena's solo-founder threshold, Q6 brick-and-mortar; Visionary Q2 neighborhoods-adopt, Q4 post-chain federation). C8 has the highest Synthesize compaction (15 → 2) — the appended paradigm-challenging Visionary questions and narrative Storyteller questions add genuine lateral value to C8 that the heavy compaction leaves thin. SP1 should expect C8 to read as Synthesize-compact but Append-rich in the final output, and scoring should reward that asymmetry.

**Append-free clusters: C1 (Financial) and C7 (Operations/Commissary).** Consistent with D1's framing that Append operates in a different register (provocations, metaphors, narratives, paradigm challenges) than the analytical/financial (C1) and operational-tactical (C7) territory. Provocateur Q6 (zero capital + $100K debt) is the single Append question that *would* land in C1 — and it's retained in this medium-quota selection (vs. dropped at low-quota). The medium-effort quota captures this question where low didn't.

**No Politician Append-All complication.** Food-truck/medium's Tier 3 is Accountant (Synthesize), not Politician. This is a simpler Append target than cells like tool-library/medium (which has Politician Append-All at 10 questions). SP1 scoring mechanics are more straightforward here.

---

## 4. C1 Recommendation

C1 (clustering vs. flat pooling) was tested in Pass A (per-persona-internal clustering preserved) vs. Pass B (flat pooling of all 93 Synthesize questions). Both passes produce the same 9 clusters with marginal boundary differences on 6-7 borderline questions (documented in B1 §Ambiguous Assignments).

**Recommendation: flat pooling for SP1 prompts, with one additive instruction.** With 93 questions and 7 personas at medium effort, flat pooling produces equivalent cluster quality with a simpler synthesis prompt. The one caveat specific to food-truck/medium: SP1 prompts should include an instruction to preserve **three persona-distinctive vocabulary families**:
1. **Systems Thinker's system archetypes** (Shifting the Burden, Success-to-the-Successful, Erosion of Goals, Fixes-that-Fail, self-reinforcing/balancing patterns) — distinctive content, not cluster-structural markup.
2. **Audience Advocate's structural-equity framings** (accessibility beyond ADA, economic tradeoff reality, past-experience trust barriers, accountability beyond revenue, sourcing visibility) — the only structural-equity voice in the cell.
3. **Accountant's specific-dollar benchmarks** ($12-16 plate, $750-850/month debt service, $800-1200 corporate gig, $50-70K second truck, $800-1,500/month commissary, 25-30% food cost ratios, 40-60% seasonal fluctuation) — Accountant's distinctive contribution vs. Analyst voice.

This instruction is additive to flat-pooling and does not require per-persona clustering to implement — it can be framed as "preserve persona-distinctive vocabulary (especially system archetypes, structural-equity framings, strengths-based framings, and specific-dollar financial benchmarks) in merged questions where they appear in source questions."

**Caveat (shared across BL1 cells so far):** Flat-pooling recommendation is now supported by three cells (space-party/low, food-truck/low, food-truck/medium). The recommendation holds at higher Synthesize volume (93 questions here vs. 72 at food-truck/low) with no visible quality degradation. Cross-effort pattern: flat pooling benefits increase with persona count — more personas = more cross-persona convergences = more value from pooling rather than per-persona silos. Medium-effort cells validate this pattern.

**Confidence:** Moderate-high for this cell. The Accountant's introduction tested whether flat pooling would collapse Accountant into Analyst voice (it does not — Accountant-Analyst complementarity is preserved under flat pooling in the sense that Accountant's dollar-anchored questions remain distinguishable from Analyst's scaffolding questions when persona tags are retained). If Accountant-Analyst had collapsed, the C1 recommendation would shift toward per-persona; but this does not occur in this cell.

---

## 5. GT1 Watchlist Status

**food-truck / medium is NOT on the GT1 watchlist.** TDA1 §5.1 lists 5 GT1 medium-confidence cells:
- tool-library / medium (Politician)
- food-truck / high (Accountant + Politician)
- property-management / high (Lawyer + Accountant, alt: Politician)
- youth-mentorship / high (Lawyer + Politician, alt: Lawyer only)
- school-consolidation / medium (Politician primary, Accountant strong — tiebreaker)

Food-truck/medium is a canonical, high-confidence cell. Accountant at medium rests on financial-structure-central triggers (business, $100K capital, SBA loan, pricing, revenue, fusion menu economics) — explicitly strong triggers per the persona-selection guide. No medium-effort Tier 3 ambiguity here (Politician is not triggered at medium — politician-as-moderate appears only at high effort per food-truck/high watchlist entry). The Analogist/Connector swap defaults to Analogist at all effort levels for food-truck — a single-primary-domain business topic, consistent with R7.

**Interpretation for SP1:** If SP1 produces anomalous scores on this cell, the cause is in the synthesis prompt, not in upstream persona-roster ambiguity. food-truck/medium can serve as a *control* cell for comparing against watchlist cells in the cross-topic BL1 pass — if watchlist cells (e.g., food-truck/high) show volatility relative to food-truck/medium beyond what incremental persona-count expansion justifies, the volatility is rooted in Tier 3 ambiguity rather than synthesis-prompt behavior.

---

## 6. Open Concerns for Cross-Topic Synthesis

Items that may matter when BL1 results across all 10 topics are aggregated and compared:

1. **Convergence density progression with persona count.** food-truck's density progression is 64% (low, 6 Synthesize personas) → 68% (medium, 7 Synthesize personas adding Accountant). Cross-topic BL1 should check whether other topics show similar ~4pp increase when Accountant/Lawyer is added at medium. A topic where convergence density *decreases* with Tier 3 addition (e.g., Lawyer adds zero-overlap regulatory content) would indicate the Tier 3 persona is additive rather than convergent, which has different synthesis implications (easier to preserve distinct voice, harder to merge).

2. **Cluster count stability with Accountant addition.** The addition of Accountant produced a 1-cluster structural shift (C6 Brand/Word-of-Mouth emerges) rather than simply thickening existing clusters. Cross-topic analysis should check whether other medium-effort cells with Accountant (or Lawyer at medium) produce similar 0-1 cluster emergence vs. pure volume growth. If the emergence pattern is consistent, SP1 prompts for medium effort may need to explicitly instruct "expect 9 clusters on business topics with Accountant" rather than a fixed cluster-count target.

3. **Compaction ratio calibration at medium.** This cell targets 2.82 compaction at 68% convergence. food-truck/low targeted 2.57 at 64%. The compaction-to-convergence ratio (2.82/0.68 ≈ 4.15; 2.57/0.64 ≈ 4.02) is relatively stable — compaction scales roughly linearly with convergence density. Cross-topic analysis should verify this linear scaling; deviation would suggest topic-specific compaction dynamics.

4. **Accountant-Analyst voice-collapse risk as a cross-topic SP1 scoring concern.** Specific-dollar benchmarks are a clean Accountant-signature preservation check. Cross-topic analysis should check whether SP1 variants consistently preserve Accountant's dollar-anchored vocabulary across medium-effort cells, or whether certain variant designs (overly-aggressive-merging variants) systematically strip dollar benchmarks. This may warrant a cell-invariant Accountant preservation sub-metric in the SP1 scoring rubric.

5. **C6 Brand/Loyalty cluster as a medium-effort emergence pattern.** ST Q14 (word-of-mouth loop) and ST Q15 (location volatility / habit formation) are medium-effort additions to Systems Thinker's question range (15 questions at medium vs. 12 at low) that enabled the C6 emergence. Cross-topic analysis should check whether ST's "extra 3 questions" at medium effort consistently produces similar brand/loyalty/habit-formation cluster emergences in other topics — or whether food-truck's competitive/customer-loyalty dimension is topic-specific.

6. **Strategic dimension over-weight on business topics with Accountant.** 36% Strategic target here is notably higher than food-truck/low (29%) or event/social topics (expected 15-22%). Dimension-balance scoring should allow topic-class-adjusted targets rather than fixed targets across all 30 cells. Business topics with Accountant at medium: 34-38% Strategic. Business topics without Accountant at low: 27-31% Strategic. Event topics: 15-22%. Social/institutional: 22-28%. Cross-topic BL1 should calibrate these ranges.

7. **Visionary paradigm-framing drops via Append quota.** Visionary Q6 (antifragile architecture) dropped in round-robin here. If multiple medium-effort cells drop distinctive Visionary paradigm-framings for quota reasons, the D1 source-order tiebreak rule may warrant revisiting — specifically, whether a "preserve-novel-paradigm-framings" tiebreak heuristic could replace source-order for Visionary (while preserving source-order for the other 3 Perspective personas). This would be a D1 revision, not an SP1 concern, but is flagged here for cross-topic BL1 to track.

8. **Append Cluster sizing asymmetry.** Storyteller and Visionary have 2+3+2 internal cluster structures while Provocateur has 2+2+3 and Analogist has 3+3+2. These shapes produce different drop profiles under medium-quota-5: the 3+3+2 shapes (Analogist, Storyteller have 3+3+2? — actually S-A=3, S-B=2, S-C=2, so 3+2+2) produce clean fills; the 3+2+2 shapes (Provocateur's P-A=2, P-B=2, P-C=3 — so 2+2+3 reordered as 3+2+2) can produce imbalanced selections. Cross-topic BL1 should verify whether this shape-asymmetry creates systematic Append quality issues.

9. **Appreciative Inquirer method-question drop rate.** 3 of 12 AI questions drop here (25%). Cross-topic BL1 should track whether AI drop rates are consistent at 20-30% across topics. If so, the Phase 2B AI volume range (8-12 at medium, same as low) may be worth revisiting — AI's natural set point may be closer to 8-10 than 8-12, avoiding method-question overflow that B3 subsequently prunes.

10. **Preserve-all-distinct convergences as scoring ambiguity.** CG14 (pricing-and-value-perception) chose preserve-all-distinct (AA Q8 → C4, ST Q14 → C6, AI Q8 → C5) rather than merge. CG16 split into two merges plus one preserve-distinct. These choices are defensible but could reasonably go the other way. SP1 scoring should be tolerant of different-choice variants — a variant that merges CG14 into a single "pricing/loyalty" question should not fail outright; it should score as "over-aggressive compaction" but not "incorrect." The preserve-all-distinct judgments need explicit scoring-tolerance annotations for SP1's scoring subagent.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (food-truck / medium cell)

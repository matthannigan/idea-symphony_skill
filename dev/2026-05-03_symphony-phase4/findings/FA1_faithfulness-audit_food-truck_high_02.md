# FA1 Faithfulness Audit — food-truck / high / 02_the-fusion-concept-differentiation-authenticity-and-defensibility

**Sample ID:** food-truck_high_02_the-fusion-concept-differentiation-authenticity-and-defensibility
**Effort:** high (7 personas — weighted A1 rubric)
**BL1 ledger:** `dev/2026-05-03_symphony-phase4/baselines/food-truck_high_02_the-fusion-concept-differentiation-authenticity-and-defensibility_through-lines.md`
**Phase 4 outputs audited:**
- `test-runs/food-truck/high/synthesis/attributed/02_the-fusion-concept-differentiation-authenticity-and-defensibility.md`
- `test-runs/food-truck/high/synthesis/02_the-fusion-concept-differentiation-authenticity-and-defensibility_synthesis.md`
- `test-runs/food-truck/high/synthesis/02_the-fusion-concept-differentiation-authenticity-and-defensibility_summary.md`
**Date:** 2026-05-04

---

## Axis A1 — Persona-name preservation in `attributed/`

**Method:** For each of the 7 personas, count distinctive TLs from BL1's persona-distinctiveness map; verify each is named in `attributed/`. Apply weighted rubric: correct = 1, wrong-attribution = 0.5, drop = 0.

### Per-persona scorecard

| Persona | Distinctive TL / contribution | Named in attributed/? | Score |
|---|---|---|---|
| The Analogist | TL-17 sub: gamified Bronze/Silver/Gold/Platinum loyalty | Q6 loyalty bullet ✓ | 1 |
| | TL-12: metapopulation / distributed-network logistics | Q5 b1 ✓ | 1 |
| | Cross-domain analogy lens (jazz, ant colonies, lynx, indie bookstores, Pixar, Starbucks paradox) | All 12 Analogist sub-bullets retain analogies verbatim ✓ | 1 |
| The Audience Advocate | TL-26 (diaspora / bridge-builders as durable segment) | Q7 last bullet ✓ | 1 |
| | TL-7 sub: visit-1 / visit-2 / visit-3 emotional-journey map | Q2 b3 sub-bullet ✓ | 1 |
| | Customer-side / community-resilience framing | Q3, Q4, Q5 sub-bullets preserve the framing ✓ | 1 |
| The Devil's Advocate | TL-21 (staff-loyalty as moat against poaching) | Q7 b4 ✓ | 1 |
| | TL-27 (15% revenue brand allocation) | Q6 b4 ✓ | 1 |
| | TL-7 sub (NPS<50, 15% repeat-rate threshold) | Q2 b3 sub-bullet ✓ | 1 |
| | TL-14 sub (city-council ordinance forecast / 6-month timing) | Q5 b3 ✓ | 1 |
| | TL-20 (story bible) | Q7 b2 ✓ | 1 |
| The Futurist | TL-11 sub: place-based food identity (Austin / Portland / Nashville) | Q4 b1 ✓ | 1 |
| | TL-17 sub: customer-data switching costs / data-driven personalization | Q6 loyalty ✓ | 1 |
| | Trend-extrapolation / time-windowed lens | Sub-bullets retain "documented trend toward…" language; Q5 12–18-month maturation; Q4 third-space dining ✓ | 1 |
| | Q7 b4 staff-loyalty bullet co-citation: Futurist's Shake Shack / Chipotle quote attached to TL-21 staff-loyalty claim, but the underlying line is about *founder visibility* (TL-1 / TL-20), not staff-poaching | wrong co-bucket | 0.5 |
| The Pragmatist | TL-28 (unit-economics math: 4 trucks × 4–5% × 125K = $900K–1.2M/truck) | Q6 b5 ✓ | 1 |
| | TL-14 (numeric ordinance triggers: $5K permit / 25% revenue drop / 6-week pivot) | Q5 b3 ✓ | 1 |
| | TL-13 (months 3–5 catering ramp; 70/30 vending/catering by month 6–9) | Q5 b1, Q5 b2 ✓ | 1 |
| The Provocateur | TL-22 (velocity-not-loyalty; evangelism over repeats; 6-month obsolescence window) | Q2 contrarian bullet ✓ | 1 |
| | TL-23 (cuisine-frame abandonment / acquisition-target) | Q3 contrarian bullet, both Provocateur sub-bullets ✓ | 1 |
| | TL-24 (broad audience as wrong metric; depth with niche) | Q1 b5 ✓ | 1 |
| | TL-25 (contingency menu as defensibility diagnostic) | Q1 b2 last sub-bullet ✓ | 1 |
| The Visionary | TL-19 sub: cultural-platform-not-food-business reframe | Q7 b6 ✓ | 1 |
| | TL-5 sub: Thursday-night lumpia-rolling ritual | Q2 b1 sub-bullet ✓ | 1 |
| | TL-1 / TL-4 "translation"-not-blending framing; "cultural autobiography on a plate" | Q1 b1 ✓ | 1 |
| Cross-bucket flag | Q5 b5 "Specialists who survive disruption transfer deep expertise to new channels" — Provocateur is the actual author of this claim, but the AA quote ("Specialized fusion is beautiful when conditions are stable… your loyal lunch crowd disappears") is paired into the bullet despite being about customer loss, not transferable expertise | soft co-citation drift | 0.5 |

**Persona-name preservation rate:** 7 / 7 = **100%** ✓
**Weighted distinctive-attribution rate:** 23.0 / 24 = **95.8%** ✓ (well above 90% threshold)

**Cross-reference to BL1 flags:**
- BL1 "Possibly fabricated" → none. Confirmed ✓
- BL1 "Possibly dropped" → all 28 ledger TLs detected in attributed/. Confirmed ✓
- BL1 "Possibly misattributed" → Q7 b4 Futurist co-citation drift on TL-21; Q5 b5 AA paired with Provocateur on transferable-expertise claim. Both confirmed; both already deducted at 0.5 above.

**A1 Verdict: PASS** (95.8% weighted ≥ 90%; 100% persona coverage).

---

## Axis A2 — Persona-name absence in `_synthesis.md` and `_summary.md` prose

**Method:** Scan both docs for any persona-name occurrence. Footer "Personas contributing:" lists allowed; convergence counts without names allowed.

| Doc | Persona-name occurrences | Notes |
|---|---|---|
| `_synthesis.md` | 0 | Body and footer clean. Convergence references count-based ("All seven personas converge", "Six personas converge", "Three personas independently propose"). Footer is `Synthesized insights: 38` — no personas listed. |
| `_summary.md` | **2** | Themes section, "The Founder as the Irreducible Moat": *"Every persona — **from the Pragmatist's ROI lens to the Visionary's cultural-stewardship frame** — lands on the same answer."* Two persona names ("Pragmatist", "Visionary") in body prose. |

**Excerpt (verbatim from `_summary.md`):**
> "Every persona — from the **Pragmatist's** ROI lens to the **Visionary's** cultural-stewardship frame — lands on the same answer: the one thing competitors cannot copy is you."

**A2 Verdict:** synthesis **PASS**; summary **FAIL** (zero-tolerance threshold breached; 2 named persona occurrences in Themes prose).

---

## Axis A3-content — Content substance survival

**Method:** For each BL1 through-line (28 total), classify substance presence in `_synthesis.md` and `_summary.md` as: verbatim / paraphrased / absorbed / dropped. Survival = verbatim + paraphrased.

| TL | BL1 target | In `_synthesis.md` | In `_summary.md` |
|---|---|---|---|
| TL-1 (founder-narrative moat) | should-appear | paraphrased (Q1 b1, Q7 b1) | paraphrased (Exec ¶1; Theme "Founder as Irreducible Moat") |
| TL-2 (community-embedding moat) | should-appear | paraphrased (Q4 b1, Q7 b1) | paraphrased (Exec ¶1; Theme "Community Embedding Beats Operational Excellence") |
| TL-3 (contingency menu pre-launch) | should-appear | paraphrased (Q1 b2) | paraphrased (Immediate "Map 2–3 backup suppliers") |
| TL-4 (structured sampling rituals) | should-appear | paraphrased (Q1 b3) | paraphrased (Immediate "4-week pop-up series … trial-to-purchase conversion below 20%") |
| TL-5 (recognition replaces novelty) | should-appear | paraphrased (Q2 b1) | paraphrased (Theme "Recognition Replaces Novelty as the Conversion Engine") |
| TL-6 (seasonal item every 6–10 weeks) | should-also | paraphrased (Q2 b2) | paraphrased (Near-term "rotating seasonal fusion item every 6–8 weeks") |
| TL-7 (track second-visit conversion + NPS<50) | should-also | paraphrased (Q2 b3) | **dropped** — Risks mentions "Novelty-ceiling attrition at months 6-12" but no visit-1→2 metric, no 15% repeat threshold, no NPS<50 |
| TL-8 (4 competitors validation conditional on health) | should-appear | paraphrased (Q3 b1, Q6 b1) | paraphrased (Theme "Four Competitors: Validation Conditional on Their Health") |
| TL-9 (uncompeted subset = daypart/channel/geography) | should-appear | paraphrased (Q3 b2) | paraphrased (Theme tail; Opportunities "uncompeted subset (daypart, channel, neighborhood, catering vs. vending)") |
| TL-10 (30-day ethnographic study + buy-them-lunch) | should-appear | paraphrased (Q3 b3) | paraphrased (Immediate "Complete a 30-day ethnographic study … Buy the four owners lunch") |
| TL-11 (keystone is conferred, not declared) | should-appear | paraphrased (Q4 b1) | paraphrased (Theme "Community Embedding"; "becoming the food the city tells visitors to try") |
| TL-12 (specialized identity, generalist distribution) | should-appear | paraphrased (Q5 b1) | paraphrased (Exec ¶2 verbatim phrase "specialized identity, generalist distribution"; Theme "Specialized Identity, Generalist Distribution") |
| TL-13 (sequence channel-build: yr 1 vending, mo 3–6 catering) | should-also | paraphrased (Q5 b2) | paraphrased (Exec ¶2 "Year one is about mastering vending … seeding catering capability in months 3–6. Events follow in year 2") |
| TL-14 (pre-committed numeric ordinance triggers) | should-also | paraphrased (Q5 b3) | **absorbed** — "Begin attending city council meetings" (Immediate) preserves the council-engagement piece; the $5K/25% numeric thresholds and 3-scenario P&L are dropped |
| TL-15 (ordinance reframe as expansion-opportunity) | should-also | paraphrased (Q5 b4) | paraphrased (Opportunities "Pending ordinance as forcing function … converts a threat into a competitive advantage") |
| TL-16 (own one signature item; tested pre-launch) | should-appear | paraphrased (Q6 b1) | paraphrased (Near-term "Launch a signature-item dominance campaign … selected through customer testing") |
| TL-17 (loyalty = recognition, not punch cards/apps) | should-appear | paraphrased (Q2 b1, Q6 b2) | paraphrased (Near-term "recognition-based loyalty stack: phone notes … Skip the app") |
| TL-18 (next defensible innovation in pipeline) | should-also | paraphrased (Q7 b3) | paraphrased (Long-term "By year 2, begin designing the next signature innovation") |
| TL-19 (vertical integration: brick-and-mortar as ecosystem anchor) | should-also | paraphrased (Q7 b5) | paraphrased (Long-term "By year 3, open the brick-and-mortar location as an ecosystem anchor") |
| TL-20 (narrative infrastructure / story bible) | should-also | paraphrased (Q7 b2) | paraphrased (Immediate "Document the founder's origin narrative … 'brand story bible'") |
| TL-21 (staff loyalty as moat against poaching) | should-also | paraphrased (Q7 b4) | **dropped** — no mention of staff poaching, competitive wages, ownership culture, team loyalty as moat |
| TL-22 (Provocateur velocity dissent) | should-also (do-not-flatten) | paraphrased (Q2 contrarian bullet) | paraphrased (Trade-off "Novelty-maximization strategy (high velocity, planned obsolescence, move every 18 months) vs. loyalty-maximization") |
| TL-23 (cuisine-frame abandonment / acquisition target) | should-also | paraphrased (Q3 contrarian bullet) | **dropped** — neither cuisine-frame abandonment ("Adobo-Inspired Global Comfort") nor acquisition-target positioning surfaces in summary |
| TL-24 (broad audience reframe → psychological-type / depth-not-width) | should-also | paraphrased (Q1 b5) | **dropped** — niche depth vs. broad-audience reframe absent |
| TL-25 (contingency menu as defensibility diagnostic) | should-also | paraphrased (Q1 b2 final sub-bullet "use the contingency menu as a forcing function") | **absorbed** — Risks "Margin collapse if supply chains break before contingency dishes are tested" gestures at it but the diagnostic-inversion edge is lost |
| TL-26 (diaspora / bridge-builder durable segment) | should-also | paraphrased (Q7 final bullet) | paraphrased (Opportunities "Diaspora and bridge-builder customer segments will always pay for authenticity over chain-copy convenience — a durable premium segment") |
| TL-27 (15% revenue brand allocation) | optional | paraphrased (Q6 b4) | paraphrased (Near-term "Allocate 15% of revenue ongoing to brand and marketing") |
| TL-28 (unit-economics math 4 × 4–5% × 125K = $900K–1.2M/truck) | optional | paraphrased (Q6 b5) | **dropped** — no quantitative reality-check anywhere |

**Survival counts:**
- `_synthesis.md`: 28 / 28 = **100%** ✓
- `_summary.md`: 21 / 28 paraphrased; 2 absorbed (TL-14, TL-25); 5 dropped (TL-7, TL-21, TL-23, TL-24, TL-28). Strict = 21/28 = **75%**; lenient (absorbed = 0.5) = 22/28 = **78.6%**. Both below 90% threshold.

**A3-content Verdict:** synthesis **PASS** (100%); summary **FAIL** (75–79%, below 90%).

---

## Axis A3-framing — Framing/lens survival

**Method:** For each persona's distinctive framing in BL1, classify in each doc as preserved / partial / flattened.

| Persona | Distinctive framing (BL1) | In `_synthesis.md` | In `_summary.md` |
|---|---|---|---|
| Analogist | Cross-domain analogical mapping: jazz grammar, fiber-optic bridges, pharmaceutical redundancy, lynx/wolves, ant colonies, craft-beer category maturity, indie bookstores, keystone species, Pixar release strategy, Starbucks paradox | **flattened** — synthesized prose strips analogies; only generic claims survive ("specialist-in-context", "1 truck per 62K residents", "metapopulation" idea reduced to "distributed network"). Analogies live only in attribution sub-bullets. | **flattened** — no analogies anywhere |
| Audience Advocate | Customer-side / community-ethnographic ("interview 10 customers, not a focus group"; "from the community's perspective") | **preserved** — Q3 customer-perspective framing, Q5 community resilience, Q1 b4 community interview language all retained | **preserved** — "Diaspora and bridge-builder", "community needs someone who stays", "feel the difference" all present |
| Devil's Advocate | Risk auditor with "Challenge:/Mitigation:" structure + numeric thresholds (NPS<50, 15% revenue, 30% test threshold, 18-month transition) + pre-committed decision rules | **preserved** — synthesis Q1 b3 "below 20% pivot", Q2 b3 "NPS below 50 red flag", Q3 b3 "below 30% retreat", Q5 b3 "$5K permit / 25% revenue drop / 6-week pivot", Q6 b4 "15% revenue", Q4 burnout-collapse. Numeric pressure-test discipline retained. | **partial** — 15% revenue, 4-week pop-up trigger preserved; ordinance numeric triggers ($5K/25%) dropped; Challenge/Mitigation structure absent; the "validation is a misreading if four are struggling" line preserved as Theme conditional clause |
| Futurist | Trend-extrapolation lens: every claim anchored to documented trajectory; time-windowed ("12–18 months to mature", "table stakes by month 18") | **preserved** — synthesis retains "trend toward third-space dining", "place-based food identity", "regulatory volatility in food retail", "12–18 months to mature" in Q4. | **flattened** — no "documented trend" language, no time-windowed claims, no trend-trajectory framing anywhere |
| Pragmatist | Specific dollar amounts, specific timelines, specific operational structures ($4 flight, $200 lunch, $2K pop-up, 4-week pop-up, 8-week seasonal, 70/30 split, $900K–1.2M math) | **preserved** — synthesis retains dollar figures and weeks/months cadence throughout Q1 b3, Q2 b2, Q3 b3, Q5 b1/b2, Q6 b1/b5 | **preserved** — Recommended Next Steps section is structurally Pragmatist-flavored: 4-week pop-up, $2–3K consultant, 30% catering target, 15% brand spend, 6–8 week rotation, year-2/3 milestones |
| Provocateur | "What if?" provocations testing inverted premises; cluster-premise-questioning (most divergent persona) | **preserved** — Q1 b5 broad-audience inversion, Q2 contrarian bullet (velocity), Q3 contrarian bullet (cuisine-frame trap + acquisition), Q1 b2 contrarian sub (contingency-as-diagnostic), Q7 b6 (turn imitation into licensing) all retained as separate insights | **partial** — only TL-22 (velocity-vs-loyalty) survives in Trade-offs; TL-23 (abandon fusion / acquisition), TL-24 (broad-audience-wrong), TL-25 (contingency-as-diagnostic) all dropped. The cluster's most pointed dissent compresses to a single Trade-off bullet. |
| Visionary | Paradigm-shift / cultural-stewardship; "translation" framing; cultural-platform-not-food-business; long-horizon mythology | **preserved** — synthesis retains Q1 "emotional translation"/"cultural autobiography on a plate", Q4 "embodying the bridge", Q7 b6 "cultural platform that happens to operate through food", Q2 b1 lumpia-rolling Thursday ritual | **partial** — "founding a cultural platform" phrase absent; "translation" framing absent; the cultural-stewardship register is gestured at in Themes ("Community Embedding") but the visionary register collapses to recommendation-prose; long-horizon ("five years in") preserved indirectly via Long-term bullets |

**Counts:**
- `_synthesis.md`: 6 preserved + 1 flattened (Analogist) = **86%** ✓ (above 75%)
- `_summary.md`: 2 preserved (AA, Pragmatist) + 3 partial (DA, Provocateur, Visionary) + 2 flattened (Analogist, Futurist). Weighted = (2 + 1.5) / 7 = **50%** ✗ (below 60% — structural flattening, RP1 priority)

**A3-framing Verdict:** synthesis **PASS** (86%); summary **FAIL** (50%, below 60% — structural flattening).

The summary flattens Analogist (cross-domain analogies stripped entirely) and Futurist (trend-extrapolation language gone), and partially flattens DA (Challenge/Mitigation gone, ordinance triggers gone), Provocateur (3 of 4 dissents dropped), and Visionary ("translation" / "cultural platform" register gone). The remaining preserved framings are AA (community-resilience, fully preserved) and Pragmatist (dollar/timeline specificity, fully preserved).

---

## Axis B — Hallucinated quotes

**Method:** For every attributed bullet in `attributed/02_*.md`, locate the source language in the corresponding `responses/{persona}.md`. Classify as faithful (verbatim) / faithful paraphrase / hallucinated. ~50 sub-bullets sampled across 7 questions × 7 personas; included every persona-question pair that contained a distinctive TL contribution.

| Quote / paraphrase | Persona | Source verified? | Classification |
|---|---|---|---|
| "Develop an irreducible core technique, like jazz developing a distinct grammar under pressure. Ube horchata might be that signature, if the preparation (fermentation, spice balance, equipment choice) becomes legendary enough that competitors copying the concept can't replicate the taste." | Analogist | Q1 source verbatim | faithful (verbatim) |
| "Build a 'core truth' menu (3–5 signature items rooted in genuine fusion technique, not novelty stacking)." | DA | Q1 source verbatim | faithful (verbatim) |
| "Anchor the brand to a specific technique or flavor principle (adobo acid-to-spice ratio, for example) that becomes recognizable and replicable by you, not competitors." | Futurist | Q1 source verbatim | faithful (verbatim) |
| "Keep 60% 'pure authenticity' (traditional lumpia, adobo rice bowls) with 2-3 fusion hero items (lumpia tacos, adobo burritos)." | Pragmatist | Q1 source verbatim | faithful (verbatim) |
| "The defensible core isn't the cuisine, but the founder's immigrant story." | Provocateur | Q1 source verbatim | faithful (verbatim) |
| "Reimagine fusion as emotional translation, not cuisine blending. A lumpia taco becomes a cultural autobiography on a plate." | Visionary | Q1 source verbatim | faithful (verbatim) |
| "Pharmaceutical supply chains maintain redundant sourcing for critical drugs. Identify the three irreplaceable flavor anchors…" | Analogist | Q1 source verbatim | faithful (verbatim) |
| "Map contingency recipes now—which core flavors are irreplaceable vs. which can substitute (lime for calamansi; regular potatoes or purple sweet potato for ube). Test contingency dishes with staff and 10 regular customers at 6-month mark…" | DA | Q1 source verbatim | faithful (verbatim) |
| "Build the contingency menu into the brand story — 'When ube's unavailable, we feature something equally delicious' — and make that shift feel like seasonal authenticity, not compromise." | AA | Q1 source verbatim | faithful (verbatim) |
| "The contingency menu is a diagnostic. If your margins collapse without ube and calamansi, the Filipino-Mexican identity is a supply-chain gamble masquerading as a concept." | Provocateur | Q1 source verbatim | faithful (verbatim) |
| "Create a tasting ritual. A $4 'flight' of three 1.5-oz portions (lumpia corner, adobo sauce on bread, ube drink) becomes a decision-making tool that feels like expertise, not indecision." | Analogist | Q1 source verbatim | faithful (verbatim) |
| "Offer 1–2 discounted 'starter bites' (half-lumpia, sauce-dipped sample strip). Partner with a nearby brewery or park for 4 weekend pop-ups. Measure trial-to-purchase conversion rate; anything below 20%…" | DA | Q1 source verbatim | faithful (verbatim) |
| "Run a 4-week pop-up series at farmers markets with 3-4 signature fusion items. Track which combos get repeat orders vs. one-time triers. Cost: <$2K prep." | Pragmatist | Q1 source verbatim | faithful (verbatim) |
| "Make the sampling ritual as complicated as the fusion concept. Require customers to order a paired trio: one Filipino, one Mexican, one fusion, eaten in sequence to experience the collision. The friction becomes the proof." | Provocateur | Q1 source verbatim | faithful (verbatim) |
| "'Broad audience' is the wrong metric entirely. Fusion attracts a specific psychological type: people who feel at home between cultures, who distrust purity. Defensibility comes from depth with a niche, not width with the masses." | Provocateur | Q1 source verbatim | faithful (verbatim) |
| "Skip punch cards. After 5th order, customer names go into a phone note tied to their usual order. Next time: 'Hey, another Bangus Burrito?' The repeat conversion engine is recognition, not discounts." | Pragmatist | Q2 source verbatim | faithful (verbatim) |
| "Create rituals, not just meals. Thursday nights are 'lumpia-making hours' where regulars help hand-roll lumpia while you tell the story of where the recipe came from." | Visionary | Q2 source verbatim | faithful (verbatim) |
| "Track repeat customers at 3-month and 6-month marks. … Track NPS monthly; anything below 50 is a red flag." | DA | Q2 source verbatim | faithful (verbatim) |
| "Map the emotional journey across three visits: Visit 1 (discovery), Visit 2 (validation), Visit 3 (belonging). Where are you losing people? Usually it's between visits 1 and 2…" | AA | Q2 source verbatim | faithful (verbatim) |
| "Novelty is the feature, not the bug — optimize for velocity instead of loyalty." / "Stop measuring repeats and measure conversion to evangelists." | Provocateur | Q2 source verbatim | faithful (verbatim) |
| "Four fusion trucks in 250K people signals category demand is real, not saturated. … 5th IPA brewer, investors didn't flee—they saw category maturity." | Analogist | Q3 source verbatim | faithful (verbatim) |
| "Validation is a misreading if the four competitors are collectively struggling." | DA | Q3 source verbatim | faithful (verbatim) |
| "4 trucks in 250K people is actually healthy—1 truck per 62K residents for a specific cuisine." | Pragmatist | Q3 source verbatim | faithful (verbatim) |
| "Map what the four competitors aren't serving: early breakfast (Filipino breakfast + horchata), late-night booths, corporate lunch contracts, weekend events. Own an uncontested daypart or distribution channel." | Analogist | Q3 source verbatim | faithful (verbatim) |
| "Define your white-space hypothesis precisely (e.g., 'office park lunches in Tech District' or 'weekend farmers markets'). Run a 4-week pop-up in that context. … below 30% of your weekly target, the subset isn't viable" | DA | Q3 source verbatim | faithful (verbatim) |
| "Map what the four trucks are doing — street vending, evening/dinner focus, social media-first — and do the inverse: corporate lunch delivery, institutional catering, private events. The four trucks didn't saturate a market; they saturated a channel." | Provocateur | Q3 source verbatim | faithful (verbatim) |
| "Talk to owners of the 4 existing fusion trucks — not as rivals, but as category pioneers. Costs $200 in meals and 2 hours; replaces $10K in trial-and-error." | Pragmatist | Q3 source verbatim | faithful (verbatim) |
| "If four trucks occupy Filipino-Mexican, maybe fusion itself is the trap. … 'Adobo-Inspired Global Comfort' with no cultural tether." | Provocateur | Q3 source verbatim | faithful (verbatim) |
| "Position yourself as the fourth truck's acquisition target." | Provocateur | Q3 source verbatim | faithful (verbatim) |
| "The community defines your keystone role, not you. You become essential by solving a problem no one else reliably solves." | AA | Q4 source verbatim | faithful (verbatim) |
| "If you can become the food the city tells visitors to try, you own a position no competitor can easily displace … 'when you visit [City], you try the lumpia taco' becomes the narrative." | Futurist | Q4 source paraphrase ("the food that the city tells visitors to try") | faithful paraphrase |
| "Partner with one Mexican cultural center and one Filipino cultural organization — become the official food partner for their events." | Visionary | Q4 source verbatim | faithful (verbatim) |
| "Build the ecosystem first and the truck second. Before opening, plant yourself in the community: teach cooking classes, host tasting dinners in church basements, sponsor little-league teams with the fusion flag." | Provocateur | Q4 source verbatim | faithful (verbatim) |
| "Plan from year one to hire a second operator or partner at 18-month mark. … Test whether the positioning survives founder absence." | DA | Q4 source verbatim | faithful (verbatim) |
| "Build a physical headquarters (catering kitchen, event space, cooking school) that happens to have a truck attached. The truck is distribution; the institution is gravity." | Provocateur | Q4 source verbatim | faithful (verbatim) |
| "Specialization in identity, generalism in distribution. Design the truck so it can be converted to a catering kitchen, the menu so it works as meal kits, the brand so it translates to pop-up events." | Provocateur | Q5 source verbatim | faithful (verbatim) |
| "Use specialization to define generalism. Don't pivot to 'we do anything' — pivot to 'we do fusion anywhere.'" | Visionary | Q5 source verbatim | faithful (verbatim) |
| "In year one, master vending-only. In year two, add catering (easier to learn, cleaner margins). In year three, add events. Sequence matters more than simultaneity." | DA | Q5 source verbatim | faithful (verbatim) |
| "Begin building generalist capabilities in months 3-5 while still pure specialist. Test 2-3 catering events…" | Pragmatist | Q5 source verbatim | faithful (verbatim) |
| "Don't speculate on ordinance outcomes. Set clear decision thresholds: if downtown permits go to $5K/year, that's a generalist trigger. If daily vending revenue drops 25% after ordinance change, pivot to events within 6 weeks." | Pragmatist | Q5 source verbatim | faithful (verbatim) |
| "The ordinance threat is a gift. Use it as the forcing function to develop non-truck revenue streams now." | Provocateur | Q5 source verbatim | faithful (verbatim) |
| "Specialized fusion is beautiful when conditions are stable. But if downtown vending gets restricted, your loyal lunch crowd disappears." | AA | Q5 source verbatim — but bullet pairs this with Provocateur's transferable-expertise claim, while AA's quote is about customer loss not expertise transfer | faithful quote / soft co-citation drift (already counted in A1) |
| "Position as 'The Original Filipino-Mexican Fusion' paired with one iconic dish that customers reference by name. ('Get me a lumpia taco, extra adobo.')" | Analogist | Q6 source verbatim | faithful (verbatim) |
| "A specific lumpia taco that becomes the lumpia taco in the city. The kind of thing people text their friends: 'You have to try this.'" | Visionary | Q6 source verbatim | faithful (verbatim) |
| "Signature item is built through menu testing pre-launch, not discovered post-launch." | DA | Q6 source verbatim | faithful (verbatim) |
| "Gamified progression loyalty: Bronze (comfort classics), Silver (seasonal specials), Gold (customization freedom), Platinum (exclusive preview of new dishes)." | Analogist | Q6 source verbatim | faithful (verbatim) |
| "The loyalty mechanism should feel like joining a community, not participating in a loyalty program. Skip the punch card. Sponsor the neighborhood soccer team, remember regular customers' names, show up at local events, hire from the community." | AA | Q6 source verbatim | faithful (verbatim) |
| "Capture customer information (email, preferences, frequency) — creates switching costs competitors can't easily overcome." | Futurist | Q6 source verbatim | faithful (verbatim) |
| "Be the only one that remembers names, sends birthday discounts, hosts regular customer events, builds a community. Crowding makes customer retention more valuable, not less." | Provocateur | Q6 source verbatim | faithful (verbatim) |
| "Allocate 15% of revenue (ongoing) to brand and marketing, starting from launch. Invest in a strong logo, website, and Instagram presence month one." | DA | Q6 source verbatim | faithful (verbatim) |
| "4 trucks serving a 250K city, 5% food frequency = 125K potential customers annually. 4-5% capture per truck = 5K-6K customers, $900K-1.2M annual revenue per truck." | Pragmatist | Q6 source verbatim | faithful (verbatim) |
| "Patents don't work for recipes. What does work: (1) proprietary supply contracts… (2) operational excellence… (3) community embedding… (4) distribution uniqueness…" | Analogist | Q7 source verbatim | faithful (verbatim) |
| "The truly defensible asset is never the recipe or the concept — it's the relationship with your community." | AA | Q7 source verbatim | faithful (verbatim) |
| "Recipe? Replicable. Supply-chain relationships? Replicable if you share suppliers. Founder narrative and community trust? Defensible only if you nurture it relentlessly." | DA | Q7 source verbatim | faithful (verbatim) |
| "The one thing a competitor can't copy is you—your presence, your heritage, your culinary authority." | Pragmatist | Q7 source verbatim | faithful (verbatim) |
| "Start building a 'brand story bible' in year one — document your origin, your fusion philosophy, and your community partnerships. Train employees to tell these stories consistently. Record founder interviews and behind-the-scenes content quarterly." | DA | Q7 source verbatim | faithful (verbatim) |
| "Build operational systems that competitors can't easily replicate: staff training in cultural context, speed-of-service benchmarks, neighborhood relationships." | Futurist | Q7 source verbatim | faithful (verbatim) |
| "Make yourself the irreplaceable element. Media appearances, speaking engagements, a book deal, a documentary about the journey." | Visionary | Q7 source verbatim | faithful (verbatim) |
| "Year one: lumpia tacos are the thing. Year two, when everyone copies them, you quietly retire them and pivot to adobo dumplings. Every 18 months, retire the signature dish…" | Provocateur | Q7 source verbatim | faithful (verbatim) |
| "By year 2-3, you need the next defensible innovation waiting—maybe Filipino-fusion desserts, or a catering-only fusion concept, or a retail product line." | Pragmatist | Q7 source verbatim | faithful (verbatim) |
| "Competitors will copy the food, but they might also hire your staff, learn your recipes, and replicate you with better capital and execution. Make your team part of your defensibility. Invest in staff development, competitive wages, and ownership culture from day one." | DA | Q7 source verbatim | faithful (verbatim) |
| "Brands like Shake Shack and Chipotle became resilient not through secret recipes, but through founder visibility and consistent mission." | Futurist | Q7 source verbatim — quote correctly cited but bullet's claim is about staff loyalty (not founder visibility); soft co-bucket misattribution (already counted in A1) | faithful quote / co-bucket drift |
| "By year three, open a brick-and-mortar location not as replacement for truck, but as anchor that makes the brand ecosystem defensible — truck for discovery and daily traffic, restaurant for experience and events." | DA | Q7 source verbatim | faithful (verbatim) |
| "By year one, you're not running a food business — you're founding a cultural platform that happens to operate through food. A cooking school side project, mentorship program for young Filipino and Mexican restaurateurs, community garden partnership, podcast about fusion cuisine and identity." | Visionary | Q7 source verbatim | faithful (verbatim) |
| "Become the consultant/licenser/validator the moment someone tries to copy you. 'Want to make authentic Filipino-Mexican fusion? I'll teach you, certify you, ensure quality.'" | Provocateur | Q7 source verbatim | faithful (verbatim) |
| "The customers you serve — diaspora communities, bridge-builders between cultures, people seeking authenticity — will always prefer the real thing. … The person whose grandmother was Filipino feels the difference." | AA | Q7 source verbatim | faithful (verbatim) |

**Hallucinations found: 0.**

**B Verdict: PASS** (zero-tolerance threshold met across ~65 spot-checked attributions; every quote traces to source).

---

## Axis C — Traceable convergence counts

**Method:** For every "N personas converge / propose / flag / read" claim in `attributed/` and `_synthesis.md`/`_summary.md`, verify against BL1 ledger counts.

| Doc | Location | Synthesizer claim | BL1 ledger | Match? |
|---|---|---|---|---|
| attributed/ | Q1 b1 | "Six of seven personas converge on a common point" (founder-narrative moat) | TL-1 = 7/7 strong-convergent | **UNDERCOUNT −1** (BL1 has all 7) |
| attributed/ | Q1 b2 | "The personas converge on two mechanics" (no specific count); "One contrarian warns" (Provocateur) | TL-3 = 5/7; TL-25 = 1/7 (Provocateur) | ✓ (qualitative, accurate) |
| attributed/ | Q1 b3 | "Convergent across five personas" (structured sampling) | TL-4 = 7/7 | **UNDERCOUNT −2** |
| attributed/ | Q1 b4 | "Two personas flag a cheap, high-signal pre-launch activity" (interview community) | AA + Pragmatist = 2 | ✓ |
| attributed/ | Q1 b5 | "single-persona challenge" (Provocateur broad-audience) | TL-24 = 1/7 | ✓ |
| attributed/ | Q2 b1 | "All seven personas converge here with near-identical framing" (recognition over novelty) | TL-5 = 6/7 (Provocateur dissents — TL-22) | **OVERCOUNT +1** |
| attributed/ | Q2 b2 | "Three personas independently propose" (seasonal refresh) | TL-6 = 3/7 | ✓ |
| attributed/ | Q2 b3 | "Two personas flag the specific metric" (visit-1→2 conversion) | TL-7 = 2/7 | ✓ |
| attributed/ | Q2 founder visibility | "Three personas propose the same mechanic" (founder origin stories) | Analogist + Pragmatist + Visionary = 3 | ✓ |
| attributed/ | Q2 contrarian | "single-persona challenge worth preserving" | TL-22 = 1/7 (Provocateur) | ✓ |
| attributed/ | Q3 b1 | "All seven personas read the signal as validation of demand. The critical qualifier comes from two personas" | TL-8 = 6/7 (Provocateur partially dissents — TL-23); two-persona qualifier (DA + Pragmatist) accurate | **OVERCOUNT +1** on "all seven" |
| attributed/ | Q3 b2 | "Strong convergence across all seven personas" (uncompeted subset) | TL-9 = 7/7 | ✓ |
| attributed/ | Q3 b3 | "Six personas propose some version" (ethnographic study) | TL-10 = 6/7 | ✓ |
| attributed/ | Q3 contrarian | "Two single-persona insights worth preserving" | TL-23 (both Provocateur sub-bullets) = 1/7 (single persona, two insights) | ✓ |
| attributed/ | Q4 b1 | "Six personas converge" (keystone via cultural embedding) | BL1 TL-11 = 5/7 — but Pragmatist's Q4 b2 "Dependency through institutional partnerships" plausibly also belongs; 6 attributed (Analogist, AA, Futurist, Visionary, Pragmatist, Provocateur) | borderline; possible BL1 ledger error rather than synth overcount; flagged |
| attributed/ | Q4 b2 | "Strong convergence" (founder presence anchor) — no count | qualitative | ✓ |
| attributed/ | Q4 b3 | "Two personas emphasize" (presence/consistency) | AA + Pragmatist = 2 | ✓ |
| attributed/ | Q4 b4 | "Two personas flag" (plan for larger operators copy) | DA + Provocateur = 2 | ✓ |
| attributed/ | Q5 b1 | "All seven personas converge on a single unified frame" (specialized identity / generalist distribution) | TL-12 = 7/7 | ✓ |
| attributed/ | Q5 b2 | "Four personas converge on sequencing" (months 3–6 catering) | TL-13 = 3/7 (DA, Futurist, Pragmatist) | **OVERCOUNT +1** |
| attributed/ | Q5 b3 | "Two personas emphasize disciplined scenario planning" (contingency triggers) | TL-14 = 2/7 | ✓ |
| attributed/ | Q5 b4 | "Three personas flip the framing" (ordinance reframe) | TL-15 = 3/7 | ✓ |
| attributed/ | Q5 b5 | "One persona flags a less obvious point" (transferable expertise) | TL-12-adjacent / Provocateur primary = 1/7; AA pairing is co-citation drift | ✓ on count, ✗ on attribution |
| attributed/ | Q6 b1 | "All seven personas converge on the same tactical move" (signature item) | TL-16 = 6/7 (Provocateur not on signature-item convergence) | **OVERCOUNT +1** |
| attributed/ | Q6 b2 | "Six personas converge" + "One contrarian persona argues" (loyalty = recognition) | TL-17 = 7/7 (Provocateur also converges on recognition: "Be the only one that remembers names…"); 6+1 numerically correct but Provocateur mischaracterized as contrarian | numerical OK; qualitative drift |
| attributed/ | Q6 b3 | "Four personas propose the same sequencing" (dominate one segment) | DA + Futurist + Analogist + Pragmatist = 4 | ✓ |
| attributed/ | Q6 b4 | "A specific operational recommendation" (15% revenue) | TL-27 = 1/7 (DA) | ✓ |
| attributed/ | Q6 b5 | "One persona does the math explicitly" | TL-28 = 1/7 (Pragmatist) | ✓ |
| attributed/ | Q7 b1 | "All seven personas converge unambiguously" (recipes can't be defended) | TL-1 / TL-2 = 7/7 | ✓ |
| attributed/ | Q7 b2 | "Three personas flag the same failure mode" (narrative infrastructure) | TL-20 = 3/7 | ✓ |
| attributed/ | Q7 b3 | "Three personas propose the same rhythm" (next defensible innovation) | TL-18 = 3/7 | ✓ |
| attributed/ | Q7 b4 | "Two personas flag a specific vector" (staff loyalty) | TL-21 = 1/7 (DA only); Futurist co-citation is misattached (BL1 flag) | **OVERCOUNT +1** |
| attributed/ | Q7 b5 | "Two personas argue" (vertical integration brick-and-mortar) | TL-19 = 4/7 (Analogist, DA, Provocateur, Visionary) | **UNDERCOUNT −2** |
| attributed/ | Q7 b6 | "One persona reframes entirely" (turn imitation into licensing) | Provocateur = 1/7 | ✓ |
| attributed/ | Q7 b7 | "One persona emphasizes a customer-segment truth" | TL-26 = 1/7 (AA) | ✓ |
| `_synthesis.md` | (inherits attributed/ count claims) | same as above | same | inherits attributed errors |
| `_summary.md` | Exec ¶1 | "across seven perspectives" | 7 personas total | ✓ |
| `_summary.md` | Theme "Founder as Irreducible Moat" | "Every persona … from the Pragmatist's ROI lens to the Visionary's cultural-stewardship frame" | TL-1 = 7/7 | ✓ on count (also A2 violation; see above) |

**Total claims with count discrepancies: 7 of ~28 explicit count claims (≈ 75% accuracy):**
- 2 undercounts (Q1 b1, Q1 b3, Q7 b5 = 3 actually)
- 4 overcounts (Q2 b1, Q3 b1, Q5 b2, Q6 b1, Q7 b4 = 5 actually)
- Total miscount events: 8 of ~28 = 29% inaccuracy

**Pattern:** Synthesizer biases upward on broadly-popular claims (Q2 b1, Q3 b1, Q6 b1 all rounded up to 7/7 from 6/7 — Provocateur dissents systematically swallowed) and biases downward on lesser-known specific TLs (Q1 b1 founder-narrative under-claimed at 6/7 instead of 7/7; Q1 b3 sampling under-claimed at 5/7 instead of 7/7). BL1 Step 6 anticipated this exact pattern; observed evidence confirms it.

**C Verdict: FAIL** (100% threshold required; observed ~71% accuracy across explicit count claims).

---

## Axis D — Categorical-reframe presence

**BL1 categorical reframe candidate:** *"Fusion as a cuisine concept is the wrong unit of defensibility — defensibility is a cultural-stewardship and relational asset, not a culinary one. The food truck is a distribution mechanism for an identity, not the identity itself."*

| Doc | Reframe survival | Evidence |
|---|---|---|
| `_synthesis.md` | **Y / Partial** | The reframe surfaces explicitly in three places — Q1 b1 ("The defensible core is founder narrative and irreducible technique, **not the fusion concept itself**. … The cuisine is the gateway; the story is the moat."), Q4 b1 ("you don't declare yourself the keystone — the community does, through adoption"), and Q7 b1 ("Recipes cannot be defended. Relationships, narrative, community, and founder can be."). The categorical move is preserved as a recurring frame across three questions, but **not staged as a single foundational reframe** that reorganizes the whole cluster's reasoning. It reads as one insight among many rather than as the cluster's spine. |
| `_summary.md` | **Y / Partial** | Captured in Exec ¶1 ("That non-defensibility is also the opportunity. … rewards whoever first builds defensibility at a layer competitors can't copy: the founder's personal narrative, community relationships, operational consistency, and an integrated ecosystem"), Theme "The Founder as the Irreducible Moat", and Risk "Recipe defensibility is an illusion." The reframe IS the summary's main thesis (more clearly than in synthesis), though "the food truck is distribution, not the identity" framing from BL1 / effort-comparison memo is not stated explicitly. |

**D Verdict: PARTIAL → PASS-leaning.** Content is preserved in both docs; in summary it's centered; in synthesis it's distributed across Q1/Q4/Q7 rather than staged as a single foundational frame. Acceptable preservation.

---

## Axis E — Foundational-reversal presence (high-only, gated)

**BL1 reversal candidates** (TLs that contradict assumptions embedded in the cluster questions, plus strong-convergent trade-off TLs):

1. **TL-1 (founder-narrative moat, not cuisine)** — reverses the cluster's question framing that fusion-as-cuisine is the differentiator
2. **TL-12 (specialized identity, generalist distribution)** — reverses Q5's binary specialist-vs-generalist framing
3. **TL-22 (Provocateur velocity-not-loyalty dissent)** — reverses TL-5/TL-17 + the cluster's loyalty assumption
4. **TL-25 (contingency menu as defensibility diagnostic)** — inverts TL-3's operational framing into a diagnostic of whether the brand has any defensibility at all

| Reversal | In `_synthesis.md` | In `_summary.md` |
|---|---|---|
| TL-1 (founder narrative reverses cuisine-as-moat) | **Y** — Q1 b1 explicit: "The defensible core is founder narrative and irreducible technique, not the fusion concept itself" | **Y** — Exec ¶1 / Theme "The Founder as the Irreducible Moat" |
| TL-12 (specialized + generalist binary collapse) | **Y** — Q5 b1 explicit: "specialized identity, generalist distribution — not either/or"; "specialist-in-context"; "you do 'one thing' in ten contexts" | **Y** — Exec ¶2 verbatim phrase; Theme "Specialized Identity, Generalist Distribution" with ordinance-response framing |
| TL-22 (velocity dissent against loyalty) | **Y** — Q2 contrarian bullet: "Not every business needs to build moats. Some should maximize the novelty window — high-margin impulse buys, virality through cognitive friction" preserved as separate bullet, marked as "explicitly counter to the other six personas" | **Partial** — surfaces as Trade-off bullet ("Novelty-maximization strategy (high velocity, planned obsolescence, move every 18 months) vs. loyalty-maximization") but framed as one of several "trade-offs" rather than as a foundational reversal of the cluster's moat-building premise |
| TL-25 (contingency-menu-as-diagnostic) | **Y** — Q1 b2 final sub-bullet: "Use the contingency menu as a forcing function: if margins collapse without specialty ingredients, the Filipino-Mexican identity was a supply-chain gamble, not a concept" | **N** — the Risk "Margin collapse if supply chains break before contingency dishes are tested" gestures at it but inverts back to operational framing rather than diagnostic; TL-25's edge ("you're selling ingredients, not identity") is dropped |

**E Verdict:** synthesis **PASS** (4/4 reversals explicit); summary **PARTIAL** (2 explicit + 1 partial + 1 dropped = 2.5/4 = 63%).

---

## Phase-5 Signal Audit

| Signal | BL1 candidate | Synthesis match | Summary match |
|---|---|---|---|
| Central Tension | "Building durable defensibility (community embedding, founder narrative, ecosystem integration) — which requires years of compounding presence — vs. the operational/cash-flow reality that the truck must be profitable inside year one with a solo founder, $100K total capital, four existing competitors, and a pending ordinance threat." | **Partial** — both poles surface (Q4 burnout-collapses-keystone, Q5 founder-bandwidth-as-real-constraint, Q7 narrative-infrastructure-vs-bandwidth) but the dual-pole tension is not staged as a single named tension. | **Partial** — Exec ¶3 does name a tension explicitly ("The tension the founder has to navigate deliberately is founder-centricity versus scale") but reframes it more narrowly than BL1 — focused on burnout-vs-scale rather than the broader years-of-compounding-vs-year-one-cash-flow tension. The catering-as-working-capital and ordinance-as-forcing-function moves that resolve the wider tension live elsewhere in the summary. |
| Categorical reframe | Defensibility as cultural-stewardship/relational asset, not culinary one; truck as distribution, not identity | **Partial** | **Partial** (closer to centered) |
| Confidence-tag | TL-by-TL `[convergent: N/7]` and `[trade-off]` + `[single]` tags | **Partial** — convergence signaled prose-style with miscount issues per Axis C (overcounts on Q2 b1, Q3 b1, Q5 b2, Q6 b1, Q7 b4; undercounts on Q1 b1, Q1 b3, Q7 b5). No explicit `[trade-off]` markers but contrarian voices preserved as separate Q2 / Q3 / Q7 bullets. | **Partial** — only one numeric "across seven perspectives" claim; no per-TL convergence signaling. The one persona-named claim ("from the Pragmatist's … to the Visionary's") doubles as A2 violation. |
| Neither-lens gaps | n/a at high | n/a | n/a |
| Conspicuous absences | n/a at high | n/a | n/a |

---

## Sample Verdict

**Overall: FAIL** (Axes A2-summary, A3-content-summary, A3-framing-summary, C all fail).

**Axis-by-axis pass/fail summary:**

| Axis | Result |
|---|---|
| A1 (persona attribution, weighted) | **PASS** (95.8% weighted / 100% persona coverage) |
| A2 (persona-name absence) | synthesis **PASS** (0); summary **FAIL** (2 named occurrences in Themes prose: "Pragmatist", "Visionary") |
| A3-content | synthesis **PASS** (100%); summary **FAIL** (75–79%, below 90%) |
| A3-framing | synthesis **PASS** (86%); summary **FAIL** (50%, below 60% — structural flattening) |
| B (hallucinated quotes) | **PASS** (0 hallucinations across ~65 spot-checked attributions) |
| C (convergence counts) | **FAIL** (~71% accuracy; 8 miscounts across ~28 explicit count claims; 100% threshold required) |
| D (categorical reframe) | **PARTIAL** (preserved in both docs; better-centered in summary than synthesis) |
| E (foundational reversal) | synthesis **PASS** (4/4); summary **PARTIAL** (2.5/4) |
| Phase-5 Central Tension | synthesis **PARTIAL**; summary **PARTIAL** (different framing than BL1's poles) |

### Failure modes (RP1-priority, in descending order)

1. **Persona-name leakage in `_summary.md` Themes prose (Axis A2, primary).** The Themes section opens "The Founder as the Irreducible Moat" with: *"Every persona — from the **Pragmatist's** ROI lens to the **Visionary's** cultural-stewardship frame — lands on the same answer."* Two persona-name occurrences. Zero-tolerance threshold breached. The rhetorical move (showcasing breadth of agreement by naming two ends of the persona spectrum) is the exact pattern the rubric prohibits at the summary level. The synthesizer evidently treats "different lenses" framing as conceptual cover for the named reference; it isn't.

2. **Convergence-count inflation/deflation (Axis C, primary).** Synthesizer biases upward on broadly-popular claims (Q2 b1 / Q3 b1 / Q6 b1 all rounded to 7/7 from 6/7 — Provocateur dissents systematically swallowed); biases downward on the founder-narrative spine (Q1 b1 under-claimed at 6/7 instead of 7/7; Q1 b3 structured-sampling under-claimed at 5/7 instead of 7/7); under-counts brick-and-mortar convergence (Q7 b5 at 2 instead of 4); over-counts staff-loyalty (Q7 b4 at 2 instead of 1, abetted by the Futurist co-citation drift). The same pattern observed in career-change/high/06.

3. **Summary content drops (Axis A3-content-summary, secondary).** Five through-lines dropped or absorbed in `_summary.md`: TL-7 (visit-1→2 conversion + NPS<50 metric), TL-21 (staff-loyalty as moat), TL-23 (cuisine-frame abandonment / acquisition target), TL-24 (broad-audience-as-wrong-metric reframe), TL-28 (4 × 4–5% × 125K unit-economics math). TL-14 (numeric ordinance triggers) and TL-25 (contingency-menu-as-diagnostic) are absorbed but lose their distinguishing edge. Survival rate 75% vs. 90% threshold.

4. **Summary framing-flattening (Axis A3-framing-summary, secondary).** Analogist's cross-domain analogies (jazz, ant colonies, indie bookstores, Pixar, Starbucks) entirely stripped from summary; Futurist's trend-extrapolation language (every claim anchored to documented trajectory + time-windowed) absent; Provocateur's four distinct dissents compress to one Trade-off bullet; Visionary's "translation" / "cultural platform" register collapsed; DA's "Challenge:/Mitigation:" structure gone. Distinctive content survives unevenly; distinctive *modes of analysis* are stripped at 50% rate (below 60% structural-flattening threshold).

### Recommended prompt revision target (RP1-actionable)

**Add convergence-count discipline to `phase4_full-synthesis.md`** (matches career-change/high/06 finding):

> **Convergence-count discipline.** When you write "N personas converge / surface / point at" prefatory phrases, count from the actual response files you've read, not from your sense of how broadly an idea seems to apply. For each such claim:
> 1. Name the specific personas you are counting (in scratch reasoning, not in the output).
> 2. If a persona's framing is *adjacent* (related but not the same insight), do **not** include it in the count.
> 3. If any persona explicitly **dissents** from the claim, deduct them from the count even if their adjacent framing partially supports it. (E.g., a 7-persona cluster with one explicit dissenter is "Six of seven", not "All seven".)
> 4. **Default to underclaim** when uncertain — "Several personas surface…" or "Multiple personas converge…" is acceptable when an exact count is fragile.
> 5. The summary doc must inherit count claims from the attributed-doc preambles, not re-derive them. If you change a count between docs, you have introduced an error.

**Add explicit persona-name prohibition for `_summary.md`** (new finding from this sample):

> **In `_summary.md`, persona names are prohibited in body prose — including in stylistic constructions like "from X's lens to Y's frame" that appear to showcase breadth.** This includes: rhetorical span constructions ("from the Pragmatist's ROI lens to the Visionary's cultural-stewardship frame"), parenthetical attributions, and any phrase that names a persona as the source of a position. If you want to signal breadth, use convergence counts ("All seven perspectives converge", "Six of seven personas independently…") and lens *types* without proper names ("from the operational lens to the cultural-stewardship lens"). The "Personas contributing:" footer is the only allowed location for persona names in the summary doc.

**Add framing-preservation guidance for summary** (matches career-change/high/06 finding):

> **In `_summary.md`, even at executive-summary compression, retain at least one distinctive persona-flavored phrase per major theme.** If a persona's distinctive analytical mode (e.g., cross-domain analogy, trend-extrapolation with time-windows, "What if?" provocation, narrative specificity) is load-bearing for the cluster's diversity, preserve a representative phrase or example in the summary's themes or considerations sections — do not compress to generic claims only. In particular, dissent-bearing TLs (Provocateur-style contrarian moves at high effort) must survive the summary's compression as a distinct option, not get absorbed into a "trade-off" generic bullet.

**Add content-survival floor for summary**:

> **In `_summary.md`, every TL in the BL1 ledger that the original prompt marks "should-also-appear" should at minimum be paraphrased once in either Themes, Recommended Next Steps, or Key Considerations.** If the synthesizer must drop content for length, the dropped items should be `optional`-tagged (low single-persona convergence) rather than `should-also`-tagged. A reviewer checking the summary against the cluster's response files should be able to recover the major dissenting positions and quantitative anchors (unit-economics math, NPS thresholds, numeric trigger conditions) from the summary alone.

These four revisions target the failure modes observed in this sample (count miscount, persona-name leakage, summary content drops, summary framing-flattening) without disturbing the axes that already pass (A1, B, A3-synthesis, E-synthesis).

---

## Notes / Discrepancies with BL1

- **BL1 TL-11 convergence count flagged as possible ledger error.** BL1 lists TL-11 (keystone via cultural embedding) as 5/7 (Analogist, AA, Futurist, Provocateur, Visionary). The attributed/ Q4 b1 cites 6 personas including Pragmatist ("Dependency through institutional partnerships … 6-month runway to lock 4-5 anchors"). Reading Pragmatist Q4 b2 directly, the institutional-partnerships claim plausibly belongs to TL-11. **Possible BL1 undercount; the synthesizer's "Six personas converge" at Q4 b1 may be more accurate.** Flagged for reviewer attention; not modified per instructions.
- **BL1 Step 6 audit anticipated convergence-count inflation accurately** for the broadly-popular claims (Q2 b1, Q3 b1, Q6 b1), but did not specifically flag the under-counting pattern at Q1 b1 / Q1 b3 / Q7 b5. Both directional biases observed in this sample.
- **BL1 attributed/ misattribution flags confirmed.** Q7 b4 Futurist Shake-Shack/Chipotle co-citation: confirmed as soft co-bucket drift (the quote is faithful Futurist; the bullet's claim is staff-loyalty / TL-21 territory; the quote is actually about founder visibility / TL-1 / TL-20). Q5 b5 AA "Specialized fusion is beautiful when conditions are stable" co-citation with Provocateur's transferable-expertise claim: confirmed as soft drift.
- **No fabrications detected.** Spot-checks against all 7 persona response files traced every quoted/paraphrased bullet to source language. ~65 attributions sampled across 7 questions.
- **Effort-comparison memo's "my family's table" heritage-led-narrative phrasing** (BL1 §"Memo Audit Notes") does NOT propagate into this cluster's `_summary.md` — confirmed clean. The summary's heritage framing ("Filipino and Mexican community organizations", "diaspora and bridge-builder customer segments") is grounded in the cluster's actual response language, not the memo's overshooting paraphrase.

# mobile-app — medium — Synthesis Target

**Input count (Synthesize group):** 78
**Expected output count (synthesized):** 29 (range 26-32, target 29)
**Expected compaction ratio:** 78 / 29 = 2.69 (range 2.4-3.0, target 2.69)
**Expected cluster count in output:** 9 (range 8-10, target 9, matches B1)
**Append count (separate):** 20 (4 Perspective personas × 5 per D1 medium-effort round-robin; see `mobile-app_medium_append-target.md`)
**Final total output:** 29 + 20 = 49 (range 46-52)

**Scoring convention:** Target is the point estimate used for headline scoring. Range defines the pass/fail band. Outside-range results are scored with severity proportional to distance from the nearest band edge. Target falls in the middle-to-upper portion of the persona-selection-guide's medium-effort projection ("~45-65 questions"), reflecting this cell's slightly lower-than-average input volume (no Tier 3 Synthesize persona — 6 Synthesize personas vs. 7 in youth-mentorship/medium or food-truck/medium) and moderate convergence density (67%).

---

## Target Output Structure

The synthesized output organizes into the 9 clusters from B1. Per-cluster expected counts derive from cluster size, convergence merges, and unique-question survival. mobile-app/medium has a balanced cluster-size profile with two larger clusters (C1 and C9 at 12 each) and seven mid-sized clusters (6-9 each). Unlike youth-mentorship/medium's 27-question C9 mega-cluster, mobile-app/medium has no outlier cluster — meaning no cell-specific "decompose this cluster" guidance is needed.

| Cluster | Source Qs | Expected Out | Compaction |
|---|---|---|---|
| C1 — Core Value Identification, Feature Stickiness & Differentiator Discovery | 12 | 4 | 3.00 |
| C2 — User Research, Cohort Segmentation & Survey Bias | 9 | 3 | 3.00 |
| C3 — Simplification Approach — Incremental vs. Clean Relaunch | 9 | 4 | 2.25 |
| C4 — Churn Risk, Passionate Minorities & Migration Design | 8 | 3 | 2.67 |
| C5 — Unit Economics, Technical Debt & Runway | 7 | 2 | 3.50 |
| C6 — Communication Strategy, Trust Rebuilding & User Co-Creation | 8 | 3 | 2.67 |
| C7 — User Experience, Overwhelm Diagnosis & Accessibility | 7 | 3 | 2.33 |
| C8 — Team Morale, Engineer Buy-In & Transition Psychology | 6 | 2 | 3.00 |
| C9 — Metrics, Success Redefinition & Post-Launch Validation | 12 | 4 | 3.00 |
| **Totals** | **78** | **28** | **2.79** |

*Note: Table sums to 28. The target is 29 (29 - 28 = 1 buffer) to allow one "should include" item to promote into the output, or to permit one additional unique to survive at loose compaction. The range 26-32 accommodates both stricter and looser synthesizers.*

Per-cluster compaction varies intentionally: C5 has the highest compaction (3.50) because its 7 questions all speak to engineering-cost modeling and runway and merge cleanly into 2 outputs. C3 and C7 have the lowest compaction (2.25, 2.33) because their clusters address genuinely distinct concerns (approach-strategy vs. pilot-experimentation vs. migration-from-assets in C3; tech-literacy vs. accessibility vs. overwhelm-diagnosis in C7). C1 and C9 have higher absolute output counts (4 each) because their 12-question clusters span multiple sub-themes.

---

### Cluster C1 — Core Value Identification, Feature Stickiness & Differentiator Discovery

**Must include (3):**
1. **[Merged from CG1: Analyst Q1, Analyst Q3, DA Q1, Questioner Q1, Systems Thinker Q1]** How should we identify features that genuinely drive retention versus features that merely attract initial engagement — distinguishing feature stickiness from usage volume, mapping feature-interaction and dependency patterns to identify 'keystone' features whose removal would cascade versus features users interact with as on-ramps-to-nowhere before churning, recognizing that a low-retention baseline makes per-feature usage data systematically misleading, detecting hidden 2-3-feature combinations that create value invisible in per-feature silos ('Success-to-the-Successful' amplifying what's visible at the cost of what's emergent), and distinguishing the (possibly different) sets of features that most-users-touch versus features-with-passionate-engagement?
2. **[Merged from CG5: Questioner Q2, Questioner Q3, Questioner Q4, Questioner Q10]** What job are users actually hiring this app to do, and what would our true differentiator be if we couldn't see any usage data — a question that reframes 'which features do we keep' into 'what problem did users think they were solving when they downloaded,' that tests the assumption that we're a fitness app at all (the real value may sit in an adjacent category — community, identity transformation, ritual, mental health — we've accidentally stumbled into rather than deliberately chosen), and that inverts 'what do we cut' into 'what would make users open this app every day if it only did one thing'?
3. **[Merged from CG6: AI Q1, AI Q2, AI Q7, AI Q8]** If we looked at what already works rather than what's broken — the peak user experiences when someone genuinely loved the app and told a friend, the specific features users responded to with sustained engagement and loyalty, the patterns in why those features resonated (utility, experience, social connection, something else) — what single focus could the entire app evolve toward that would make users think 'I can't live without this,' shape every aspect of the product from onboarding to daily use to word-of-mouth, and align technical/design/product choices around amplifying those working features rather than compensating for broken ones?

**Should include (1):**
4. **[DA Q7 — assumption that unified "core value" exists]** What if user retention is low not because the app is unfocused but because no single feature is good enough to compete with dedicated alternatives in the fitness space — could the real problem be execution quality across all features rather than scope, and would simplification leave us with nothing compelling to compete with specialized single-purpose apps?

**Optional:**
- **[Analyst Q2 — cohort-segmentation framework]** Primary of CG2; absorbed there. Lists here as cross-ref for cohort-based feature value.
- **[Systems Thinker Q5 — engaged users as survivors]** Primary of CG2; absorbed there.

Cluster C1 compacts 12 → 4 (compaction 3.00). Three merges (CG1, CG5, CG6) absorb 13 of 12 source questions (Analyst Q2 is claimed by both CG1 and CG2 — assigned to CG2 as primary), leaving 1 unique (DA Q7, the execution-quality-vs-scope critique). The "unified core value" critique is preserved distinct because CG1/CG5/CG6 all assume core value exists; DA Q7 challenges that assumption directly.

---

### Cluster C2 — User Research, Cohort Segmentation & Survey Bias

**Must include (2):**
1. **[Merged from CG2: Analyst Q2, Systems Thinker Q5]** What distinct user cohorts exist within the current user base (social users, solo trackers, content consumers, and the 2% daily-engaged segment) and which features serve as 'gateway drugs' versus 'retention anchors' for each cohort — while acknowledging that with ~165K of 180K users already churned, the current user base is the leaky-funnel tail rather than a representative signal of the target audience, and recognizing that optimizing for the survivors of a broken system may be optimizing for the wrong segment; how do we design for the users we want rather than the users we have, and what analytical approach distinguishes which cohort signal should drive feature-selection?
2. **[Merged from CG3: DA Q2, DA Q9, Questioner Q5]** What user-research approaches can illuminate why the 92% of users abandon the app without alienating the only users who still care — recognizing that surveys and interviews are systematically biased toward the most-engaged minority, that the 8% who stayed past 30 days may reveal critical signal when asked specifically what they'd stop using if removed, and that with only one product manager on the team, any critical research-interpretation or feature-decision risks being filtered through a single person's biases and limited perspective — what research-methodology guardrails and structured decision frameworks ensure that 'what users actually want' is determined through multi-perspective, multi-cohort evidence?

**Should include (1):**
3. **[Merged from CG4: AA Q1, AA Q2, AA Q13, AI Q4]** What might we learn about genuine core value from looking beyond stated preferences — the gap between what users say they want in research (where response bias dominates) and what their daily behavior reveals (the 47-second session, the sporadic feature touches, the workarounds they've normalized as 'just how apps work'), the unarticulated needs and frustrations that never surface as complaints because users don't expect better, the broader life contexts (constraints, motivations, environments) that determine which features survive from download to habit, and the 2% daily-engaged users whose behavior patterns may reveal what the app uniquely solves (its 'hidden assets') — how should behavioral-ethnographic signal and stated-preference signal be weighted in feature-selection?

**Optional:**
- None — the three outputs cover the full research-methodology surface.

Cluster C2 compacts 9 → 3 (compaction 3.00). Three merges (CG2, CG3, CG4) absorb all 9 source questions. The three outputs preserve distinct registers: cohort-segmentation-as-analytical-scaffold (CG2), research-methodology-guardrails-against-bias (CG3), behavioral-signal-vs-stated-preference (CG4). Merging all three would collapse into a single "do user research" mega-output that loses the analytical-segmentation, methodology-guardrails, and behavioral-ethnography distinctions.

---

### Cluster C3 — Simplification Approach — Incremental vs. Clean Relaunch

**Must include (2):**
1. **[Merged from CG8 Q A: Analyst Q9, Questioner Q9, DA Q8, DA Q11, Systems Thinker Q9]** What are the comparative risk profiles of gradual feature-at-a-time simplification versus clean '2.0' relaunch given the 8-month runway — modeling (a) the incremental-path probability distribution where each cut justifies itself to existing users creating the erosion-of-goals pattern where the product never becomes truly focused, (b) the clean-relaunch path where most '2.0' relaunches fail because users have already moved on and there is limited evidence the existing 180K user base will return, and (c) the runway-constraint where hidden dependencies, database migrations, and unexpected backlash could extend the timeline past the 8-month budget — how much buffer do we need for unknown unknowns, at what observable signal do we pivot from big-bang to incremental, and which approach's failure modes are survivable versus terminal?
2. **[Merged from CG8 Q B: Questioner Q6, Questioner Q9, Systems Thinker Q10]** Rather than committing to either path upfront, what would we learn from a measured incremental-experiment approach where we remove or temporarily disable one feature per month and measure impact — who complains, who doesn't notice, what substitution or workaround emerges, what retention signal shifts — while actively guarding against the erosion-of-goals pattern where each cut has to justify itself against 'just-one-more-feature' resistance and the product never becomes truly focused?

**Should include (2):**
3. **[Analyst Q11 unique]** What experimental design allows us to test feature combinations (candidate simplified-product variants) without alienating users — A/B testing architecture, sample size and duration requirements, statistical significance thresholds, and how do we distinguish 'users behave differently because simpler is better' from 'users behave differently because this particular combination is better' before committing to the 3-4 final features?
4. **[Merged: AI Q11 + AI Q12]** What small, low-risk experiments could the team try this month to test which features truly represent the app's core value while engaging users as participants in the product's evolution rather than subjects of it — and what existing resources, capabilities, or assets (technical infrastructure, user insights, team skills, community relationships, or learnings from the current feature set) could be leveraged to make the MVP reset feel like an evolution rather than a restart?

**Optional:**
- **[CG7 — merged: DA Q4, DA Q7, Questioner Q7, Questioner Q8]** The "simplify-into-nothing" / execution-quality / discoverability critiques. Primary assigned to C1 for DA Q7 only; the IA/onboarding/discoverability alternative hypotheses can cross-link here as a "before committing, validate that feature count is the actual problem" framing. *If placed here, this is a 5th C3 output raising C3 count to 5; at tight compaction stay at 4.*

Cluster C3 compacts 9 → 4 (compaction 2.25). Two CG8 merges absorb 7 source questions; Analyst Q11 (A/B testing) and the AI Q11+Q12 merge preserve the experimental and asset-leverage framings distinct from the incremental-vs-relaunch strategic choice.

---

### Cluster C4 — Churn Risk, Passionate Minorities & Migration Design

**Must include (2):**
1. **[Merged from CG9 Q A: Analyst Q7, DA Q5, Systems Thinker Q6]** How should we quantify the expected churn from feature removal across affected user segments — distinguishing 'feature-dependent' users whose retention hinges on specific features from 'feature-agnostic' users who'd stay regardless, modeling LTV impact per segment and per feature, recognizing that multiple simultaneous cuts may cause compounding abandonment that far exceeds the current 92% attrition, and planning for the post-removal 3-6 month 'withdrawal period' where users who built routines around cut features experience frustration before (possibly) transitioning to relief with the simplified product — with contingency plans for the scenario where simplification backfires and accelerates decline rather than reversing it?
2. **[Merged from CG9 Q B: AI Q9, AA Q9, Questioner Q12, Systems Thinker Q3]** How do we identify features that have small but passionate user bases before we cut them — where a feature with only 2% adoption but 80% retention among those users could be an early foothold into an underserved niche that will grow, or could be a peripheral dead-end that merely delays the focused product — and how do we honor these users' commitment through a graceful migration that acknowledges their loyalty, guides them toward the simplified core, and turns potential abandonment into deeper engagement rather than leaving them feeling betrayed; what leading indicators distinguish 'early adopters of the future core' from 'enthusiastic users of a peripheral feature'?

**Should include (1):**
3. **[AA Q12 unique — partial cross-ref with CG9 Q B]** How might we identify which features have small but passionate user bases, and what do those users' experiences teach us about genuine value — what might we learn from deeply understanding these users' experiences, and could these micro-communities reveal the app's true north, beyond just whether to retain a feature?

**Optional:**
- None — the three outputs capture the full churn/migration surface. AA Q12 overlaps significantly with CG9 Q B; at tight compaction, AA Q12 may be absorbed into CG9 Q B rather than preserved distinct.

Cluster C4 compacts 8 → 3 (compaction 2.67). Two CG9 merges absorb 7 of 8 source questions; AA Q12's "what might these micro-communities reveal about the app's true north" framing is preserved distinct because the primary CG9 Q B merge is about graceful migration (retention-preservation) while AA Q12 is about learning-from-micro-communities (value-discovery).

---

### Cluster C5 — Unit Economics, Technical Debt & Runway

**Must include (2):**
1. **[Merged from CG11: Analyst Q4, Analyst Q5]** What does the per-feature cost structure look like across the 15 features — engineering maintenance load, customer support burden, server costs, opportunity cost of dev hours — and how do we calculate the ROI of cutting each feature in terms of resources freed versus the revenue/user impact risk incurred, while also modeling how different simplification strategies affect the 8-month runway: how much does reducing feature surface area lower burn rate, how much does that extend runway, at what point does simplification trade long-term product viability (cutting features that might have grown into value) for short-term financial survival, and what does the break-even analysis look like for each candidate simplification path?
2. **[Merged from CG10: Analyst Q6, DA Q6, Questioner Q13, Systems Thinker Q7]** Before assuming feature removal simplifies the codebase, how do we map the technical-debt structure of the current 15-feature portfolio — distinguishing 'delete-and-forget' features from 'excise-carefully' features with deep system integration across shared authentication, data models, notification systems, analytics pipelines — and quantify the engineering cost of removing versus maintaining each, given that deeply-integrated feature removal could leave ghost code that still runs (maintenance burden without user value), could break dependent features, or could consume enough of the 8-month runway in migration and bug-fixing that we never ship a working simplified product (the Fixes-that-Fail pattern)?

**Optional:**
- None — 7 source questions compact cleanly to 2 outputs via the CG10 and CG11 merges.

Cluster C5 compacts 7 → 2 (compaction 3.50). This is the cell's highest compaction — reflecting that C5's source questions all address the same two concerns (cost-modeling and technical-debt-of-removal) from different angles and merge cleanly. No unique preservation required beyond the two merge outputs.

---

### Cluster C6 — Communication Strategy, Trust Rebuilding & User Co-Creation

**Must include (2):**
1. **[Merged from CG12: Analyst Q8, Questioner Q11, Systems Thinker Q4]** What is the optimal communication strategy for announcing feature removal — balancing transparency (which risks triggering churn from users who hear the message as 'taking away') against minimizing churn (which risks dishonesty that compounds trust problems later), what sequencing and messaging works across different user segments, how do we frame the change as 'we're focusing on what matters most' rather than 'we're taking things away,' how do we measure whether the framing is working in real-time, and how do we guard against the Shifting-the-Burden pattern where heavy user-facing communication and reassurance creates dependency on the messaging itself (users needing us to keep framing the change rather than discovering the simplified value themselves)?
2. **[Merged from CG13: AA Q8, AA Q10, AA Q11, AA Q14]** Rather than communicating decisions after they're made, how could the community be brought into the feature-selection and simplification process in ways that respect users' agency and investment in the app — recognizing that feature prioritization often reflects the perspectives of those with the loudest voices or most-visible usage data (systematically overlooking whose use cases matter), that users who stuck around despite the poor current experience may feel betrayed or skeptical of any announcement, and that the relaunch is potentially not just a product change but an opportunity to acknowledge past missteps, invite co-design participation, and rebuild trust by designing with the community rather than for them?

**Should include (1):**
3. **[AA Q9 unique — preserves the feeling-of-loss framing distinct from the communication-architecture framings]** How might users experience a feature reduction — as simplification or as loss — what would it feel like to be a user who deeply relied on a now-removed feature, and how might we understand and address that experience of loss rather than just optimizing the announcement around it?

**Optional:**
- None — CG12 and CG13 absorb the communication-and-co-creation surface.

Cluster C6 compacts 8 → 3 (compaction 2.67). The CG12 merge covers communication-architecture and Shifting-the-Burden; the CG13 merge covers user-agency-and-co-creation; AA Q9 preserves the felt-experience-of-loss framing distinct from both. At tight compaction, AA Q9 may collapse into CG13 (AA Q9 overlaps AA Q14 themes).

---

### Cluster C7 — User Experience, Overwhelm Diagnosis & Accessibility

**Must include (2):**
1. **[Merged from CG7: DA Q4, Questioner Q7, Questioner Q8]** Before committing to feature removal, how do we validate that the 'overwhelming' symptom users report actually maps to feature count rather than to alternative root causes — poor information architecture making features hard to find, onboarding that doesn't teach users which features matter when, feature discoverability problems where users would engage if they could surface features — and what experimental evidence would distinguish 'overwhelming because too many' from 'overwhelming because poorly organized,' such that we don't accidentally execute simplification as the remedy when the real issue is architectural or qualitative?
2. **[Merged: AA Q3, AA Q4, AA Q5, AA Q6, AA Q7]** What does the experience of using this app look like from the perspective of users currently underserved or alienated by the 15-feature bloat — the 55-year-old just trying to get healthy navigating complexity a 25-year-old power user tolerates, the single parent with 5 minutes (what 'essential' means), the person with chronic illness needing simple tracking without cognitive overload, the user with limited tech literacy or non-English speakers or assistive-technology dependence, and the differential impact of notification overload across communities — what emotional states occur from app-open to app-close, where does confusion or relief appear, and how would feature-prioritization change if we centered these users rather than the engaged minority?

**Should include (1):**
3. **[Split-out preservation — AA Q5 & AA Q6]** What would "essential" mean from the perspective of users with limited time, attention, or cognitive bandwidth — a single parent with 5 minutes to spare, someone managing chronic illness who needs simple tracking without cognitive overload, someone with limited tech literacy navigating a 6-tab plus hamburger-menu interface — and how would feature-prioritization change if we centered these users rather than defining essential from a product-strategy perspective?

**Optional:**
- **[AA Q3 separately]** Different segments experience bloat differently — could be a distinct output if compaction very loose. Absorbed into merge #2 at target compaction.

Cluster C7 compacts 7 → 3 (compaction 2.33). Output #1 (CG7) challenges the premise that feature count is the issue; Output #2 bundles AA's 5 experience-journey questions; Output #3 preserves the "essential-from-constrained-user-perspective" framing that Output #2 risks under-specifying.

*Note on AA Q5 / AA Q6 appearing in both #2 and #3:* Output #2 is a comprehensive-experience-journey frame; Output #3 is a specific "essential-from-constrained-users" frame that Output #2's compression could lose. Preservation-by-repetition is the deliberate B3 choice here because the constrained-users framing is a distinctive AA contribution that risks under-specification if rolled into the broader journey-journey output.

---

### Cluster C8 — Team Morale, Engineer Buy-In & Transition Psychology

**Must include (2):**
1. **[Merged from CG14 Q A: DA Q3, DA Q10, Questioner Q15, Systems Thinker Q8]** How does the engineering, design, and product team stay psychologically invested in the simplified direction when it requires deleting features they spent months or years building — recognizing that ownership bias and team politics can unconsciously shape 'core' definitions (each person champions what they built), that engineers may have to work on unfamiliar code after their own features are cut, and that there's a structural feedback loop where defensive attachment to 'my feature' maintains bloat, which increases maintenance burden, which lowers morale, which makes further cuts harder — what decision frameworks (structured feature-evaluation criteria, ownership-blind scoring) neutralize ownership bias, what rituals or practices reframe feature removal from 'failure' to 'focus' for the people who built the cut features, and what is the smallest intervention that could flip the team from defensive-attachment-to-the-status-quo toward proactive-pruning-as-liberation?
2. **[Merged from CG14 Q B: AI Q3, AI Q6, AI Q10]** What would the team's day-to-day life look like when they shift from maintaining 15 half-built features to perfecting 3-4 world-class ones — what moments of pride, energy, and effectiveness have they experienced in their history that we could amplify, what product culture would they be building in the leaner environment, what existing team strengths (technical capabilities, design sensibilities, domain expertise, specific individuals' superpowers) would align with the simplified product direction in a way that makes the simplification feel like liberation rather than loss, and what kind of felt impact on users' lives would replace the current experience of fighting bugs and maintaining features nobody uses?

**Optional:**
- None — CG14's 2 merges absorb all 6 C8 source questions.

Cluster C8 compacts 6 → 2 (compaction 3.00). Two CG14 merges cover the defensive-attachment-vs-proactive-pruning dynamic (Q A) and the positive team-vision-post-simplification frame (Q B). Preservation-distinct between DA's risk-framing and AI's positive-framing is deliberate — merging them would collapse two genuinely different cognitive modes into a single "team will be fine" output.

---

### Cluster C9 — Metrics, Success Redefinition & Post-Launch Validation

**Must include (3):**
1. **[Merged from CG15 Q A: Analyst Q10, Analyst Q12]** The current metrics (2% DAU/MAU, 47-second sessions, 8% 30-day retention) signal product-market-fit failure; what leading indicators should we target instead that distinguish 'better engagement' from 'fewer features masking the same problems,' and what 30/60/90-day post-launch validation dashboard would differentiate (a) users mourning removed features (temporary, recoverable), (b) genuine product-market-fit signal (sustained growth), and (c) 'we solved the wrong problem' (fundamental-mismatch that won't recover) — with explicit thresholds and decision-rights for each outcome?
2. **[Merged from CG15 Q B: Systems Thinker Q2, Systems Thinker Q11]** What are the structural metric traps in this transition — the reinforcing loop where cutting features that underperform on engagement eliminates the very features keeping users marginally engaged (if we strip features and retention decreases, is that 'we cut the wrong ones' or 'the remaining features were never strong enough to stand alone'), and the perverse-incentive where a bloated app generates longer sessions (users wandering around lost) that *look* better on engagement metrics than a focused app where users accomplish what they need in 30 seconds; what success metrics would actually capture value-delivery-per-session or job-completion-rate rather than time-spent-wandering?
3. **[Merged: Questioner Q14 + Systems Thinker Q12]** How will the simplified app attract users differently than the bloated version — the bloated app promised everything (workouts, meals, social, challenges) setting unrealistic expectations that led to disappointment, while the focused app will attract fewer initial downloads but possibly users who genuinely want what it offers, creating higher retention; is our existing user base even the right audience for the simplified product (we may be fundamentally pivoting to a different market and should market accordingly), and what growth strategy aligns promise with delivery rather than fighting the narrow-but-accurate constraint?

**Should include (1):**
4. **[AI Q5 unique]** If this app became something users genuinely champion three years from now — not just use but actively recommend to friends — what would users say about it, what specific feeling or outcome would they describe, and how would it fit into their daily routine in a way that feels indispensable rather than overwhelming; what's the champion-worthy future state that success would look like?

**Optional:**
- **[Systems Thinker Q13]** Competitive position — simplifying while competitors add features; worse-before-better transition curves and inflection points. *Distinctive transition-curve framing; preserve if compaction loose.*
- **[Systems Thinker Q14]** Team capacity after simplification creating slow-return-to-bloat risk — structural constraints preventing "slow return to bloat" pattern. *Distinctive capacity-creep framing; preserve if compaction loose.*

Cluster C9 compacts 12 → 4 (compaction 3.00). Two CG15 merges cover the metric-architecture (Q A) and metric-pathology (Q B) framings distinct; the acquire-new-vs-retain-existing merge captures the marketing-alignment framing; AI Q5 preserves the strengths-based 3-year-champion vision distinct from the analytical dashboards. The 2 optional ST questions (Q13 competitive-position, Q14 slow-return-to-bloat) are strong candidates to preserve at loose compaction but not required at target.

---

## Questions Expected to Be Dropped (with rationale)

| # | Question | Rationale for drop |
|---|---|---|
| 1 | **Systems Thinker Q13** — Competitive position — simplifying while competitors add features; worse-before-better transition | Distinctive transition-curve framing but adjacent to Questioner Q14's market-pivot framing (retained in CG-3rd-merge) and CG15 Q A dashboard. Cuttable at target compaction. |
| 2 | **Systems Thinker Q14** — Team capacity after simplification / slow-return-to-bloat | Distinctive capacity-creep archetype — but CG14 Q A's "ownership-bias / defensive-attachment" framing partially addresses the slow-return-to-bloat dynamic from the team-morale side. Cuttable. |
| 3 | **AA Q3** — Different user segments experience bloat differently (25-year-old fitness enthusiast vs. 55-year-old new-to-health) | Absorbed into the C7 merge #2 (comprehensive-experience-journey). The age-segment specificity is distinctive but adjacent to AA Q5 / Q6's constrained-users framing (preserved in C7 merge #3). Cuttable at target compaction. |
| 4 | **AA Q7** — Notification and feature overload disproportionate impact on user groups | Absorbed into C7 merge #2. The notification-specific framing is distinctive but at target compaction the broader overwhelm-journey frame covers adjacent territory. |
| 5 | **Analyst Q11** — A/B Testing Framework for Simplification | Kept as "Should include" in C3 output #3 — at target compaction it promotes in; at tight compaction it could be absorbed into the broader CG8 Q B experimentation framing. Borderline drop. |

**Drop count target:** 4-5 at target compaction. Range 3-7 accommodates both stricter and looser synthesizers. If compaction pressure rises (synthesizer produces fewer than 26 questions), the next-most-likely drops are: AA Q12 ("learn from micro-communities") absorbing into CG9 Q B; AA Q9 ("feature reduction as simplification or loss") absorbing into CG13; AI Q5 ("3-year champion vision") absorbing into CG15 Q A as cross-ref; DA Q7 ("unified core value assumption") absorbing into CG7 merge. If compaction is loose (>32 questions), expect several of the "optional" items to all survive including ST Q13 and Q14.

**Note on CG8 preserve-distinct (incremental-vs-relaunch split):** A synthesizer could reasonably merge CG8 Q A and Q B into a single "how to approach simplification" output, losing the strategic-choice-between-paths (Q A) vs. one-at-a-time-experimentation (Q B) distinction. The baseline chooses preserve-distinct because the framings address different decisions — the strategic choice is "which path do we commit to," while the experimentation frame is "what do we learn before committing." SP1 variants that merge these will score as "over-aggressive compaction" rather than "incorrect"; variants that preserve them score as well-calibrated.

**Note on CG14 preserve-distinct (team-morale defensive vs. positive-vision split):** A synthesizer could reasonably merge CG14 Q A (DA/ST defensive-attachment critique) and Q B (AI positive-vision) into a single "team-morale" output, losing the DA's structural-risk framing vs. AI's amplifying-strengths framing. The baseline preserves-distinct because mixing these framings produces a "team morale will be fine" collapse; the risks and the opportunities are genuinely different. SP1 scoring should be tolerant of merged vs. distinct but mark mergers as flavor-losing.

**Note on C1 + C9 distinction:** Both C1 and C9 are "what matters" clusters at different temporal layers — C1 is pre-relaunch ("what are the core features"); C9 is post-relaunch ("how do we know we got it right"). A synthesizer could collapse these into a single "core-value-and-its-measurement" cluster of ~6 outputs, losing the pre-commit-vs-post-commit distinction. The baseline keeps them separate at 4 + 4 outputs; merger collapses C1/C9 to ~6 = score as "over-aggressive cluster-collapse" specifically for this cell.

---

## Persona Representation Requirements

Defines SQ3 (persona representation). Each Synthesize-group persona must have at least the floor count of questions surviving (verbatim, merged-with-attribution, or transformed-but-traceable).

| Persona | Source Qs | Floor | Target | Rationale |
|---|---|---|---|---|
| Analyst | 12 | 5 | 7 | Scaffolds feature-value matrix (C1), runway economics (C5), technical debt (C5), churn model (C4), communication strategy (C6), A/B testing (C3), North Star (C9), post-launch dashboard (C9). Floor preserves the analytical-scaffolding-across-pipeline signal. 4 of 12 Analyst questions are C1-primary and 2 of 12 are C9-primary. |
| Appreciative Inquirer | 12 | 5 | 7 | Sole carrier of strengths-based framing across C1 (peak moments, one-thing-evolution, amplifying what works), C8 (team reimagined, team-aligned vision), C9 (app users champion), C3 (first experiments, building from existing assets, migration with grace), C2 (hidden assets). Floor 5 protects the strengths-based voice against risk/analytical-dominant content. At tight compaction, up to 2 of 12 may drop (e.g., AI Q5 champion-vision absorbed into CG15 Q A, AI Q11 first-experiments absorbed into broader CG8 Q B). |
| Audience Advocate | 14 | 7 | 10 | Sole carrier of tech-literacy / accessibility / cognitive-bandwidth / notification-overload framings and of user-co-creation / trust-rebuilding / feature-reduction-as-loss framings. AA spans C2 (behavior-vs-stated, unarticulated needs, user context), C4 (micro-communities), C6 (power-dynamics, co-creation, trust-rebuild, relaunch-as-invitation), C7 (segmentation, emotional-state, accessibility, essential-from-constrained, notification-overload). AA's cluster-span (5 clusters as contributor) is among the broadest in this cell. Floor 7 protects AA from collapsing into "user research" voice — structural-equity and accessibility voices must survive separately. |
| Devil's Advocate | 11 | 5 | 7 | Risk-discovery role across feature-popularity-vs-value (C1), research-bias (C2), team-consensus (C8), simplify-into-nothing (C7), cascading-churn (C4), technical-debt-explosion (C5), unified-core-value-assumption (C1), relaunch-assumption (C3), runway-as-false-constraint (C3), team-morale-as-success-factor (C8). Floor 5 preserves DA's distinctive failure-mode vocabulary across these clusters. 8 of 11 DA questions land in merges. |
| Questioner | 15 | 6 | 9 | Meta-question-generator spread across all 9 clusters (C1, C2, C3, C4, C5, C7, C8, C9 — 5 in C1 alone). Questioner is the widest-span persona at medium for this topic (5 of 15 Questioner questions are C1-primary, no other persona spreads this widely on core-value). Floor 6 protects Questioner from being rolled into Analyst's voice in merges — the "what if we're asking the wrong question" framing must survive. |
| Systems Thinker | 14 | 6 | 9 | Distinctive archetype vocabulary across Success-to-the-Successful (C1), marketing-alignment balancing loop (C9), Shifting-the-Burden (C6), small-passionate-base dynamic (C4), segmentation dynamic (C2 cross-ref), withdrawal-loop (C4), Fixes-that-Fail (C5), defensive-attachment (C8), runway-time-pressure (C3), erosion-of-goals (C3), metrics-pathology (C9), competitive-position transition-curve (C9), slow-return-to-bloat (C9). Floor 6 protects archetype vocabulary. 6 of 14 ST questions primary-assign to C9, so C9 preservation is the single largest ST-vocabulary anchor. |
| **Total floor** | 78 | **34** | **49** | Floor sums exceed expected output (29) because merges count toward each contributing persona — the 29-question output should represent ≥34 source-question contributions across personas through merges. |

**Failure modes to flag:**
- Any persona below floor → synthesis is silencing a voice (SP1 fail).
- AA below 7 → the accessibility / tech-literacy / co-creation / trust-rebuild voices collapsed. Specifically: AA absent from C7 or C6 → structural-equity collapse.
- ST below 6 → systems-archetype vocabulary silencing. Specifically: ST absent from C9 (3+ of 6 ST primary-assigns) → metrics-pathology frame collapsed.
- AI absent from C1 (peak moments / one-thing evolution) or C8 (team reimagined) → strengths-based framing collapse.
- DA absent from C1 (unified core value), C3 (relaunch assumption), or C8 (team morale) → risk-discovery erosion across strategy/approach/team axes.
- Questioner absent from C1 (core value / differentiator) → meta-question widening function collapsed.
- C1 and C9 collapsed to a single "value-and-metrics" cluster of ~6 outputs → pre-commit-vs-post-commit temporal distinction lost.
- C5 (tech debt + runway) collapsed to <2 outputs → analytical-cost framing fully collapsed into strategic-choice output.

**Distinctive vocabulary preservation check (SQ3 sub-metric):** At least 3 of ST's named archetypes should appear in output merges or optional outputs (Success-to-the-Successful in C1, Shifting-the-Burden in C6, Fixes-that-Fail in C5, erosion-of-goals in C3, metric self-fulfilling in C9, withdrawal-period in C4, worse-before-better transition curves in C9, slow-return-to-bloat in C9). At least 3 of AA's structural-equity / accessibility framings should survive ("tech-literacy / language / accessibility barriers," "notification-overload differential impact," "feature-reduction-as-loss," "user co-creation / with vs. for," "rebuilding trust with burned users," "essential from constrained-users perspective"). At least 3 of AI's strengths-based framings should survive ("peak user experiences," "one thing done exceptionally well," "amplifying what works," "team reimagined," "migration with grace," "first low-risk experiments," "3-year champion vision," "hidden assets"). At least 3 of DA's failure-mode framings should survive ("feature popularity vs. value confound," "cascading user loss," "technical debt explosion from removal," "simplify-into-nothing," "relaunch assumption," "team morale as success factor," "unified core value assumption"). At least 3 of Questioner's meta-framings should survive ("what job are users hiring us to do," "why assume fitness app category," "overwhelming because too much vs. poorly designed," "feature discoverability vs. bloat," "pivot audience for simplified product").

---

## Dimension Balance Target

Per analysis-dimensions framework (Strategic / Tactical / Creative / Analytical / Human-centered). Dimensional balance applied to the 29-question synthesized output (append questions handled separately).

| Dimension | Target % | Approx Count | Anchor Personas |
|---|---|---|---|
| Strategic | 45% | 13 | Analyst (feature-matrix, North Star, post-launch dashboard, communication strategy), DA (popularity-vs-value, relaunch assumption, simplify-into-nothing, core-value assumption), Questioner (job-to-be-done, differentiator, pivot-audience), ST (Success-to-the-Successful, erosion-of-goals, incremental-vs-relaunch, metrics pathology, competitive position) |
| Tactical | 7% | 2 | Analyst (A/B testing specifics, unit economics specifics), Questioner (one-feature-at-a-time experimentation) |
| Creative | 10% | 3 | AI (peak moments, one-thing evolution, 3-year champion, team reimagined, amplifying what works) |
| Analytical | 14% | 4 | Analyst (cohort segmentation, churn model, runway math, tech debt), ST (feedback loops, withdrawal period), DA (tech debt explosion, cascading loss) |
| Human-centered | 24% | 7 | AA (tech literacy, accessibility, emotional journey, co-creation, trust rebuild, feature-as-loss), AI (hidden assets, migration with grace), Questioner (psychological impact on team, why assume existing users), DA (team morale as success factor) |
| **Total** | 100% | 29 | — |

**Tolerance bands:** ±5 percentage points per dimension. Outside ±5pp = SP1 has compressed or expanded that dimension materially.

**Expected dimension shifts to watch:**
- Risk of **Human-centered under-representation** if synthesizer collapses AA's 14 questions aggressively into "user research" (C2) and "communication strategy" (C6) merges rather than preserving the tech-literacy / accessibility / essential-from-constrained framings as distinct outputs. Watch for C7 (accessibility) + C6 (co-creation) collapsing from 6 outputs to 3.
- Risk of **Strategic over-representation** if synthesizer collapses C3 (approach) + C4 (churn) + C9 (metrics) into strategic-approach mega-clusters — watch for Strategic climbing above 55%.
- Risk of **Creative collapse** if AI's peak-moments, one-thing-evolution, and team-reimagined questions are absorbed as cross-references rather than standalone outputs — watch for Creative dropping to 0-1 outputs.
- Risk of **Analytical under-representation** if C5 (tech debt / runway) is collapsed to 1 output rather than preserving CG10 and CG11 as distinct — watch for Analytical dropping below 10%.
- Risk of **Tactical collapse** if A/B testing specifics (Analyst Q11) and one-feature-at-a-time experimentation (CG8 Q B) are subsumed into strategic strategic-approach outputs — watch for Tactical at 0.

**Topic context:** mobile-app/medium is a product-strategy-with-team-morale topic. The 45% Strategic target is higher than food-truck/medium (36%) because most questions here are at the strategic "what approach do we take" layer rather than at the operational "how do we execute it" layer. Human-centered at 24% is lower than food-truck/medium (28%) and youth-mentorship/medium (35%) because the topic is less about vulnerable-population serving and more about product-market-fit-for-a-commercial-app. Creative at 10% is higher than youth-mentorship/medium (6%) because AI has 12 strengths-based questions in a cell where AI's peak-moments and team-reimagined framings carry unusually clean signal.

**Comparison to youth-mentorship/medium:** youth-mentorship/medium targets 38% Strategic, 35% Human-centered, 12% Analytical, 9% Tactical, 6% Creative. mobile-app/medium: 45% Strategic (+7), 24% Human-centered (-11), 14% Analytical (+2), 7% Tactical (-2), 10% Creative (+4). The higher Strategic share reflects mobile-app's abundance of "which approach, which framing, which metric" strategic-choice content. The lower Human-centered share reflects that AA carries fewer clusters here (4 vs. 5-7 in youth-mentorship) and that the topic is commercial-product rather than vulnerable-population-serving. The higher Creative share reflects AI's 12-question set having room to contribute multiple standalone outputs rather than competing against regulatory/risk dominance.

**Comparison to food-truck/medium:** food-truck/medium targets 36% Strategic, 28% Human-centered, 15% Analytical, 12% Tactical, 9% Creative. mobile-app/medium: 45% Strategic (+9), 24% Human-centered (-4), 14% Analytical (-1), 7% Tactical (-5), 10% Creative (+1). Strategic share is higher here because mobile-app has two large strategic clusters (C1 and C9 at 12 each) vs. food-truck's more balanced strategic/financial/experience distribution. Tactical is lower because mobile-app has no Tier 3 Synthesize (no Accountant's depreciation specifics, no Lawyer's FCRA specifics) — tactical content surfaces only in A/B testing and one-feature-at-a-time experimentation.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (mobile-app / medium cell)

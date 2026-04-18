# mobile-app — medium — Convergence Baseline

**Input:** 78 Synthesize-group questions from `test-data/mobile-app_medium.md`
**Convergence groups (P):** 15
**Questions in convergence (Q):** 52 of 78 (67%)
**Convergence density:** 67%
**Unique (non-convergent) Synthesize questions (U):** 26 of 78 (33%)

Convergence here means two or more Synthesize-persona questions address the same concrete concern such that synthesis can either (a) merge them into one richer question that anchors in all source texts, or (b) preserve all distinct voices when the framings differ enough that merging would strip persona-specific value. mobile-app/medium's convergence density (67%) is near the middle of sampled medium-effort cells (food-truck/medium 68%, youth-mentorship/medium 70%, space-party/medium lower). The absence of a Tier 3 Synthesize persona (no Lawyer, Accountant, or Technical Expert) means no "specialist-collapses-into-generalist" convergence-inflation risk. Convergence is driven by the six Tier 1 personas addressing the same problem (how to identify 3-4 core features in a bloated 15-feature app) from different angles.

---

## Convergence Group 1: Feature value identification — stickiness, keystone, dependency beyond raw usage

**Theme:** How to distinguish features that drive retention from features that merely attract initial engagement before users quit — feature stickiness, dependency patterns, "keystone" features whose removal cascades, the 2-3-feature-combination hidden in per-feature silos, features-most-people-use-vs-features-with-passionate-engagement, popularity-vs-value confound.
**Cluster:** C1 (Core Value Identification)
**Questions:**
- [Analyst Q1] Feature Engagement Matrix Analysis — feature stickiness, dependency patterns, correlation with 30-day retention beyond usage counts.
- [Analyst Q3] Feature Interaction and Dependency Mapping — keystone features whose removal creates cascading effects.
- [DA Q1] Feature popularity vs. feature value — 8% retention makes usage data misleading; on-ramps-to-nowhere that look "popular" but don't drive retention.
- [Questioner Q1] What does "core value" actually mean — features most people use vs. features creating most passionate engagement (not the same).
- [Systems Thinker Q1] Features central to value proposition vs. features that surround it — "Success to the Successful" reinforcing what; hidden 2-3-feature combinations invisible in per-feature analysis.
**Merge recommendation:** **Merged.** "How should we identify features that genuinely drive retention versus features that merely attract initial engagement — distinguishing feature stickiness from usage volume, mapping feature-interaction and dependency patterns to identify 'keystone' features whose removal would cascade versus features users interact with as on-ramps-to-nowhere before churning, recognizing that a low-retention baseline makes per-feature usage data systematically misleading, detecting hidden 2-3-feature combinations that create value invisible in per-feature silos ('Success-to-the-Successful' amplifying what's visible at the cost of what's emergent), and distinguishing the (possibly different) sets of features that most-users-touch versus features-with-passionate-engagement?"

## Convergence Group 2: Cohort segmentation & differential value per user type

**Theme:** Different users value different features — 2% daily users vs. 8% 30-day retained vs. 92% 30-day-churned vs. net-new acquisition segment; which segment to optimize for.
**Cluster:** C1 (Core Value Identification) with strong tie to C2 (User Research) and C4 (Churn Risk)
**Questions:**
- [Analyst Q2] Cohort Segmentation Framework — distinct user cohorts (social users, solo trackers, content consumers); gateway drugs vs. retention anchors per cohort.
- [Systems Thinker Q5] Engaged users as survivors of broken system — 165K already churned; design for users we want vs. users we have.
**Merge recommendation:** **Merged.** "What distinct user cohorts exist within the current user base (social users, solo trackers, content consumers, and the 2% daily-engaged segment) and which features serve as 'gateway drugs' versus 'retention anchors' for each cohort — while acknowledging that with ~165K of 180K users already churned, the current user base is the leaky-funnel tail rather than a representative signal of the target audience, and recognizing that optimizing for the survivors of a broken system may be optimizing for the wrong segment; how do we design for the users we want rather than the users we have, and what analytical approach distinguishes which cohort signal should drive feature-selection?"

## Convergence Group 3: Research methodology — survey bias, PM-as-sole-judge & interviewing the non-engaged

**Theme:** How to learn what users actually want — self-selection bias in surveys, interviewing the 8% who stayed, understanding the 92% who churned without alienating the engaged minority, one-PM-opinion-is-not-research, single-decision-maker guardrails.
**Cluster:** C2 (User Research)
**Questions:**
- [DA Q2] Self-selection bias in user research — survey respondents are the engaged minority; over-optimizing for power users while ignoring the 92% who left.
- [DA Q9] One-person opinion is not "research" — with only one PM, guardrails against single-person biases.
- [Questioner Q5] Interview the 8% who stayed past 30 days — specifically what they'd stop using if removed; surprise potential.
**Merge recommendation:** **Merged.** "What user-research approaches can illuminate why the 92% of users abandon the app without alienating the only users who still care — recognizing that surveys and interviews are systematically biased toward the most-engaged minority, that the 8% who stayed past 30 days may reveal critical signal when asked specifically what they'd stop using if removed (a question likely to produce surprising answers), and that with only one product manager on the team, any critical research-interpretation or feature-decision risks being filtered through a single person's biases and limited perspective — what research-methodology guardrails and structured decision frameworks ensure that 'what users actually want' is determined through multi-perspective, multi-cohort evidence rather than through the engaged-minority-plus-one-PM-opinion filter?"

## Convergence Group 4: Behavior-vs-stated-preference & unarticulated needs

**Theme:** Gap between what users say they want and what they actually do — unarticulated needs, normalized workarounds, behavior patterns as signal about genuine value vs. stated preferences.
**Cluster:** C2 (User Research)
**Questions:**
- [AA Q1] Gaps between what users say they want and what they actually do daily — 47-second session reveals behavior signal.
- [AA Q2] Unarticulated needs users don't complain about — frustrations normalized as "just how apps work."
- [AA Q13] Understanding users' contexts beyond in-app behavior — constraints, motivations, environments informing which features matter in real messy lives.
- [AI Q4] Hidden assets in user base — who found value despite low retention; what 2% daily users are doing that keeps them coming back.
**Merge recommendation:** **Merged.** "What might we learn about genuine core value from looking beyond stated preferences — the gap between what users say they want in research (where response bias dominates) and what their daily behavior reveals (the 47-second session, the sporadic feature touches, the workarounds they've normalized as 'just how apps work'), the unarticulated needs and frustrations that never surface as complaints because users don't expect better, the broader life contexts (constraints, motivations, environments) that determine which features survive the trip from download to habit, and the 2% daily-engaged users whose behavior patterns may reveal what the app uniquely solves (its 'hidden assets') — how should behavioral-ethnographic signal and stated-preference signal be weighted in feature-selection?"

## Convergence Group 5: Category positioning, job-to-be-done & the fitness-app-at-all question

**Theme:** What job are users hiring this app to do — are they actually using it for "fitness" or is the real value in an adjacent category (community, identity, ritual, mental-health)?
**Cluster:** C1 (Core Value Identification)
**Questions:**
- [Questioner Q2] How would we identify our true differentiator if we couldn't see usage data — what does our product do that no other fitness app does?
- [Questioner Q3] What if the problem isn't which features to keep but which job users are hiring us to do?
- [Questioner Q4] Why do we assume we need to be in the fitness app category at all — what if value lies in an adjacent space we've stumbled into?
- [Questioner Q10] What if we asked "what would make users open this app every day even if it only did one thing" instead of "what do we cut"?
**Merge recommendation:** **Merged.** "What job are users actually hiring this app to do, and what would our true differentiator be if we couldn't see any usage data — a question that reframes 'which features do we keep' into 'what problem did users think they were solving when they downloaded,' that tests the assumption that we're a fitness app at all (the real value may sit in an adjacent category — community, identity transformation, ritual, mental health — we've accidentally stumbled into rather than deliberately chosen), and that inverts 'what do we cut' into 'what would make users open this app every day if it only did one thing' — asking which single focus, if executed extraordinarily well, would generate the daily-habit engagement the current 15-feature buffet cannot?"

## Convergence Group 6: One-thing focus, peak moments & amplifying what works

**Theme:** The positive-signal framing — focus on features that already spark joy, amplify what works, single-focus future state, features that users champion and recommend to friends.
**Cluster:** C1 (Core Value Identification)
**Questions:**
- [AI Q1] Peak user experiences — moments when users genuinely loved the app; designing to create more of those moments.
- [AI Q2] Features That Sparked Joy — which feature elicited the most positive feedback; what made it resonate.
- [AI Q7] The "One Thing" Evolution — what single focus would make users think "I can't live without this"; shape every aspect of product.
- [AI Q8] Amplifying what works — if social connection features work best, what the entire app would look like built around that core; technical/design/product choices making that focus successful.
**Merge recommendation:** **Merged.** "If we looked at what already works rather than what's broken — the peak user experiences when someone genuinely loved the app and told a friend, the specific features users responded to with sustained engagement and loyalty, the patterns in why those features resonated (utility, experience, social connection, something else) — what single focus could the entire app evolve toward that would make users think 'I can't live without this,' shape every aspect of the product from onboarding to daily use to word-of-mouth, and align technical/design/product choices around amplifying those working features rather than compensating for broken ones?"

## Convergence Group 7: Simplification-into-nothing — onboarding, information architecture & execution-quality alternatives

**Theme:** Alternative hypotheses for the engagement crisis — what if the problem isn't feature count but information architecture, onboarding, execution quality, or feature discoverability?
**Cluster:** C3 (Simplification Approach) with tie to C1 (Core Value) and C7 (User Experience)
**Questions:**
- [DA Q4] The "simplify into nothing" trap — what if the true issue isn't feature count but poor IA or onboarding.
- [DA Q7] Assumption that unified "core value" exists — maybe retention is low because no single feature is good enough to compete; execution-quality across all features as the real problem.
- [Questioner Q7] Overwhelming because too much or because poorly designed — simplification as better UX vs. fewer features.
- [Questioner Q8] Feature discoverability vs. feature bloat — users might want features if they could find and understand them.
**Merge recommendation:** **Merged.** "Before committing to feature removal, how do we validate that the 'overwhelming' symptom users report actually maps to feature count rather than to alternative root causes — poor information architecture making features hard to find, onboarding that doesn't teach users which features matter when, execution quality insufficient to compete with dedicated alternatives in any single category, or feature discoverability problems where users would engage with features if they could surface them — and what experimental evidence would distinguish 'overwhelming because too many' from 'overwhelming because poorly organized,' such that we don't accidentally execute simplification as the remedy when the real issue is architectural or qualitative?"

## Convergence Group 8: Incremental vs. clean relaunch — approach, timeline & erosion-of-goals

**Theme:** Gradual feature-at-a-time removal vs. comprehensive "2.0" relaunch — timeline risk, shock-vs-drift tradeoffs, 8-month-runway constraint, unknown-unknowns buffer, erosion-of-goals pattern, one-feature-per-month testing alternative.
**Cluster:** C3 (Simplification Approach)
**Questions:**
- [Analyst Q9] Incremental vs. Big-Bang Transition Analysis — comparative risk profiles; probability distribution of outcomes.
- [DA Q8] The relaunch assumption itself — "2.0" relaunches that failed because users had moved on; evidence that existing users will return.
- [DA Q11] 8-month runway as false constraint — hidden dependencies and backlash extending the timeline; realistic buffer for unknown unknowns; pivot point to incremental.
- [Questioner Q6] Test feature removal before committing — ship with one feature temporarily disabled; see who complains or doesn't notice.
- [Questioner Q9] Why assume clean relaunch is better than incremental — what if we removed one feature per month and measured impact.
- [Systems Thinker Q9] 8-month runway vs. time required — too fast risks wrong cuts; too slow runs out; Shifting-the-Burden from corner-cutting now creating bigger problems later.
- [Systems Thinker Q10] Simplify incrementally or relaunch from scratch — erosion-of-goals pattern where "just one more feature" prevents real focus; clean-relaunch shock risk.
**Merge recommendation:** **Preserve partially distinct.** Two merge outputs:
- Question A (incremental-vs-relaunch tradeoff — merge Analyst Q9 + Questioner Q9 + DA Q8 + DA Q11 + Systems Thinker Q9): "What are the comparative risk profiles of gradual feature-at-a-time simplification versus clean '2.0' relaunch given the 8-month runway — modeling (a) the incremental-path probability distribution where each cut justifies itself to existing users creating the erosion-of-goals pattern where the product never becomes truly focused, (b) the clean-relaunch path where most '2.0' relaunches fail because users have already moved on and there is limited evidence the existing 180K user base will return, and (c) the runway-constraint where hidden dependencies, database migrations, and unexpected backlash could extend the timeline past the 8-month budget — how much buffer do we need for unknown unknowns, at what observable signal do we pivot from big-bang to incremental, and which approach's failure modes are survivable versus terminal for this team and funding structure?"
- Question B (one-feature-at-a-time experimentation — merge Questioner Q6 + Questioner Q9 + Systems Thinker Q10): "Rather than committing to either path upfront, what would we learn from a measured incremental-experiment approach where we remove or temporarily disable one feature per month and measure impact — who complains, who doesn't notice, what substitution or workaround emerges, what retention signal shifts — while actively guarding against the erosion-of-goals pattern where each cut has to justify itself against 'just-one-more-feature' resistance and the product never becomes truly focused?"

## Convergence Group 9: Churn risk, passionate minorities & feature-dependent users

**Theme:** Protecting users whose feature use is low adoption but high retention — cascading churn from simultaneous cuts, LTV-impact modeling per feature, small-passionate-base as future-core vs. dead-end, graceful migration that honors existing investment.
**Cluster:** C4 (Churn Risk, Passionate Minorities & Migration Design)
**Questions:**
- [Analyst Q7] Churn Risk Assessment Model — expected churn from affected segments; "feature-dependent" vs. "feature-agnostic"; LTV-impact quantification.
- [AI Q9] Migration with Grace — honoring passionate niche commitment; graceful transition turning churn into deeper engagement.
- [AA Q9] How users experience reduction — simplification or loss; what it feels like to be a user whose feature was removed.
- [DA Q5] Cascading user loss from feature cuts — each cut triggers niche abandonment; compounding churn; contingency plans.
- [Questioner Q12] Identifying passionate minority users before cutting them — what if removing a niche feature drives away our most vocal advocates.
- [Systems Thinker Q3] Small but passionate user bases — 2% adoption + 80% retention as foothold-into-future vs. peripheral dead-end; leading indicators.
- [Systems Thinker Q6] Withdrawal period after feature removal — reinforcing balance loop; withdrawal-to-relief transition determining whether users stay.
**Merge recommendation:** **Preserve partially distinct.** Two merge outputs:
- Question A (churn modeling & cascading loss — merge Analyst Q7 + DA Q5 + Systems Thinker Q6): "How should we quantify the expected churn from feature removal across affected user segments — distinguishing 'feature-dependent' users whose retention hinges on specific features from 'feature-agnostic' users who'd stay regardless, modeling LTV impact per segment and per feature, recognizing that multiple simultaneous cuts may cause compounding abandonment that far exceeds the current 92% attrition, and planning for the post-removal 3-6 month 'withdrawal period' where users who built routines around cut features experience frustration before (possibly) transitioning to relief with the simplified product — with contingency plans for the scenario where simplification backfires and accelerates decline rather than reversing it?"
- Question B (passionate minorities & graceful migration — merge AI Q9 + AA Q9 + Questioner Q12 + Systems Thinker Q3): "How do we identify features that have small but passionate user bases before we cut them — where a feature with only 2% adoption but 80% retention among those users could be an early foothold into an underserved niche that will grow, or could be a peripheral dead-end that merely delays the focused product — and how do we honor these users' commitment through a graceful migration that acknowledges their loyalty, guides them toward the simplified core, and turns potential abandonment into deeper engagement rather than leaving them feeling betrayed by the removal of what they relied on; what leading indicators distinguish 'early adopters of the future core' from 'enthusiastic users of a peripheral feature,' and how does that distinction shape migration strategy?"

## Convergence Group 10: Technical debt explosion, shared infrastructure & Fixes-that-Fail

**Theme:** The engineering cost of feature removal — shared code/data/infrastructure making features harder to remove than to keep, ghost code after removal, dependency graph mapping, Fixes-that-Fail pattern.
**Cluster:** C5 (Unit Economics, Technical Debt & Runway)
**Questions:**
- [Analyst Q6] Technical Debt Quantification — maintenance cost per feature; "delete-and-forget" vs. "excise-carefully"; engineering effort distribution.
- [DA Q6] Technical debt explosion from feature removal — deeply integrated features sharing code/data/infrastructure; engineering cost consuming runway.
- [Questioner Q13] Technical debt of feature removal potentially worse than technical debt of keeping — dependency graph mapping before assuming removal is simpler.
- [Systems Thinker Q7] Ghost code and shared infrastructure — feature removal leaves maintenance burden without user value; Fixes-that-Fail pattern.
**Merge recommendation:** **Merged.** "Before assuming feature removal simplifies the codebase, how do we map the technical-debt structure of the current 15-feature portfolio — distinguishing 'delete-and-forget' features from 'excise-carefully' features with deep system integration across shared authentication, data models, notification systems, analytics pipelines — and quantify the engineering cost of removing versus maintaining each, given that deeply-integrated feature removal could leave ghost code that still runs (maintenance burden without user value), could break dependent features, or could consume enough of the 8-month runway in migration and bug-fixing that we never ship a working simplified product (the Fixes-that-Fail pattern where cuts fail to produce simplicity benefit because backend complexity persists)?"

## Convergence Group 11: Unit economics, ROI of cuts & runway math

**Theme:** The cost-and-benefit math — per-feature cost structure, ROI of cutting each feature in resource-freed terms, 8-month runway modeling under different strategies, break-even analysis, survival-vs-viability tradeoff.
**Cluster:** C5 (Unit Economics, Technical Debt & Runway)
**Questions:**
- [Analyst Q4] Unit Economics of Feature Simplification — per-feature cost structure; ROI of cuts in resource freed vs. revenue/user impact risk.
- [Analyst Q5] Runway Optimization Scenarios — 8-month burn-rate impact; when simplification trades long-term viability for short-term survival.
**Merge recommendation:** **Merged.** "What does the per-feature cost structure look like across the 15 features — engineering maintenance load, customer support burden, server costs, opportunity cost of dev hours — and how do we calculate the ROI of cutting each feature in terms of resources freed versus the revenue/user impact risk incurred, while also modeling how different simplification strategies affect the 8-month runway: how much does reducing feature surface area lower burn rate, how much does that extend runway, at what point does simplification trade long-term product viability (cutting features that might have grown into value) for short-term financial survival, and what does the break-even analysis look like for each candidate simplification path?"

## Convergence Group 12: Communication strategy, framing & Shifting-the-Burden

**Theme:** How to announce and frame the change — optimal sequence and messaging, transparency vs. minimizing churn, simplification-as-focus vs. simplification-as-taking-away narrative, communication-as-Shifting-the-Burden pattern where reassurance creates dependency.
**Cluster:** C6 (Communication Strategy, Trust Rebuilding & User Co-Creation)
**Questions:**
- [Analyst Q8] Communication Strategy Framework — optimal sequence / messaging for announcing feature removal; transparency + trust-building vs. minimizing churn.
- [Questioner Q11] Transparency about struggles — "focusing on what matters most" vs. "taking things away" framing.
- [Systems Thinker Q4] Shifting the Burden in communication — "we're simplifying for you" reassurance creating dependency; users losing capacity to self-motivate.
**Merge recommendation:** **Merged.** "What is the optimal communication strategy for announcing feature removal — balancing transparency (which risks triggering churn from users who hear the message as 'taking away') against minimizing churn (which risks dishonesty that compounds trust problems later), what sequencing and messaging (preview communications, staged announcements, in-app messaging, email, onboarding-flow-update) works across different user segments, how do we frame the change as 'we're focusing on what matters most' rather than 'we're taking things away,' how do we measure whether the framing is working in real-time, and how do we guard against the Shifting-the-Burden pattern where heavy user-facing communication and reassurance creates dependency on the messaging itself — users needing us to keep framing the change rather than discovering the simplified value themselves?"

## Convergence Group 13: Co-creation, power dynamics & trust-rebuilding with burned users

**Theme:** Who has agency in feature decisions — users as co-creators vs. recipients of decisions, whose voices define "core," rebuilding trust with users burned by current state, relaunch-as-invitation vs. relaunch-as-announcement.
**Cluster:** C6 (Communication Strategy, Trust Rebuilding & User Co-Creation)
**Questions:**
- [AA Q8] Power dynamics in which features get "core" vs. "nice-to-have" — whose voices dominate; systematically overlooked use cases.
- [AA Q10] Genuine user co-creation — bringing community into decision-making; respecting agency and investment.
- [AA Q11] Rebuilding trust with burned users — demonstrating genuine commitment vs. business-survival messaging.
- [AA Q14] Relaunch as repair opportunity — acknowledging missteps; inviting participation; design *with* community rather than *for* them.
**Merge recommendation:** **Merged.** "Rather than communicating decisions after they're made, how could the community be brought into the feature-selection and simplification process in ways that respect users' agency and investment in the app — recognizing that feature prioritization often reflects the perspectives of those with the loudest voices or most-visible usage data (systematically overlooking whose use cases matter), that users who stuck around despite the poor current experience may feel betrayed or skeptical of any announcement, and that the relaunch is potentially not just a product change but an opportunity to acknowledge past missteps, invite co-design participation, and rebuild trust by designing with the community rather than for them — what concrete co-creation mechanisms (user councils, beta programs, public feedback windows, migration-path voting) would shift power dynamics without either stalling decisions in endless consensus or symbolically checking the 'engagement' box without real influence?"

## Convergence Group 14: Team morale, killing-darlings & engineer buy-in

**Theme:** Internal / team dimension — psychological impact on engineers whose features are cut, ownership-and-identity in code, simplification-as-liberation vs. simplification-as-failure framing, ritualizing the "funeral" of cut features, maintaining momentum through the transition.
**Cluster:** C8 (Team Morale, Engineer Buy-In & Transition Psychology)
**Questions:**
- [AI Q3] Team's brightest moments — when team felt energized, proud, effective; strengths per member amplified in leaner environment.
- [AI Q6] Team reimagined — engineering / design / PM energized not burned; day-to-day life; product culture; felt impact.
- [AI Q10] Team-aligned product vision — simplified product allowing team to do their best work; existing strengths aligned.
- [DA Q3] False consensus in team decisions — 6 engineers with 6 "core" opinions; ownership-bias framework.
- [DA Q10] Team morale as critical success factor — engineers staying motivated when features are deleted; psychological investment in new direction.
- [Questioner Q15] Psychological impact on team — pride vs. failure framing; engineers and designers.
- [Systems Thinker Q8] Killing darlings as liberating vs. demoralizing — defensive attachment → bloat → lower morale feedback loop; smallest intervention flipping dynamic.
**Merge recommendation:** **Preserve partially distinct.** Two merge outputs:
- Question A (team-morale & psychological investment in the new direction — merge DA Q3 + DA Q10 + Questioner Q15 + Systems Thinker Q8): "How does the engineering, design, and product team stay psychologically invested in the simplified direction when it requires deleting features they spent months or years building — recognizing that ownership bias and team politics can unconsciously shape 'core' definitions (each person champions what they built), that engineers may have to work on unfamiliar code after their own features are cut, and that there's a structural feedback loop where defensive attachment to 'my feature' maintains bloat, which increases maintenance burden, which lowers morale, which makes further cuts harder — what decision frameworks (structured feature-evaluation criteria, ownership-blind scoring) neutralize ownership bias, what rituals or practices reframe feature removal from 'failure' to 'focus' for the people who built the cut features, and what is the smallest intervention that could flip the team from defensive-attachment-to-the-status-quo toward proactive-pruning-as-liberation?"
- Question B (positive team vision — merge AI Q3 + AI Q6 + AI Q10): "What would the team's day-to-day life look like when they shift from maintaining 15 half-built features to perfecting 3-4 world-class ones — what moments of pride, energy, and effectiveness have they experienced in their history that we could amplify, what product culture would they be building in the leaner environment, what existing team strengths (technical capabilities, design sensibilities, domain expertise, specific individuals' superpowers) would align with the simplified product direction in a way that makes the simplification feel like liberation rather than loss, and what kind of felt impact on users' lives would replace the current experience of fighting bugs and maintaining features nobody uses?"

## Convergence Group 15: North Star redefinition, metrics pathology & post-launch validation

**Theme:** What to measure and how to know it worked — current engagement metrics as misleading, new leading indicators, post-launch 30/60/90 dashboards, engagement-as-wandering-lost vs. value-delivery, metric self-fulfilling-prophecies.
**Cluster:** C9 (Metrics, Success Redefinition & Post-Launch Validation)
**Questions:**
- [Analyst Q10] Redefining the North Star — current metrics signal PMF failure; leading indicators; distinguishing "better engagement" from "fewer features masking same problems."
- [Analyst Q12] Post-Launch Validation Dashboard — 30/60/90-day early warning; distinguishing "mourning removed features" from "genuine PMF" from "solved wrong problem."
- [Systems Thinker Q2] Metrics that predict retention in simplified vs. bloated — dangerous reinforcing loop where cutting underperformers eliminates the features keeping users marginally engaged.
- [Systems Thinker Q11] Metrics capturing value delivery vs. engagement — simpler app with shorter sessions might look "worse" on metrics but represent better design.
**Merge recommendation:** **Preserve partially distinct.** Two merge outputs:
- Question A (North Star & post-launch dashboard — merge Analyst Q10 + Analyst Q12): "The current metrics (2% DAU/MAU, 47-second sessions, 8% 30-day retention) signal product-market-fit failure; what leading indicators should we target instead that distinguish 'better engagement' from 'fewer features masking the same problems,' and what 30/60/90-day post-launch validation dashboard would differentiate (a) users mourning removed features (temporary, recoverable), (b) genuine product-market-fit signal (sustained growth), and (c) 'we solved the wrong problem' (fundamental-mismatch that won't recover) — with explicit thresholds and decision-rights for each outcome?"
- Question B (metric pathology — merge Systems Thinker Q2 + Systems Thinker Q11): "What are the structural metric traps in this transition — the reinforcing loop where cutting features that underperform on engagement eliminates the very features keeping users marginally engaged (if we strip features and retention decreases, is that 'we cut the wrong ones' or 'the remaining features were never strong enough to stand alone'), and the perverse-incentive where a bloated app generates longer sessions (users wandering around lost) that *look* better on engagement metrics than a focused app where users accomplish what they need in 30 seconds; what success metrics would actually capture value-delivery-per-session or job-completion-rate rather than time-spent-wandering?"

---

## Unique Questions (Non-convergent — survive synthesis as distinct)

**Count:** 26 of 78 (33%)

These are Synthesize-group questions with no strong cross-persona counterpart. Most should survive synthesis as standalone questions; a small number may be cut at the synthesizer's discretion (flagged in `mobile-app_medium_target.md`).

| # | Persona | Question (abridged) | Cluster |
|---|---|---|---|
| 1 | Analyst | Q11 — A/B Testing Framework for Simplification — experimental design for feature-combination testing without alienating users | C3 |
| 2 | Appreciative Inquirer | Q5 — The App Users Champion — 3-year future vision; users recommending; daily-routine indispensability | C9 |
| 3 | Appreciative Inquirer | Q11 — First Experiments — low-risk experiments this month; user engagement in the evolution | C3 |
| 4 | Appreciative Inquirer | Q12 — Building from Existing Assets — infrastructure / insights / team skills / community relationships / learnings accelerating the MVP reset | C3 |
| 5 | Audience Advocate | Q3 — Different user segments experience bloat differently — 25-year-old fitness enthusiast vs. 55-year-old new-to-health emotional journeys | C7 |
| 6 | Audience Advocate | Q4 — Emotional states opening the app — specific journey from open to close; confusion / frustration / relief moments | C7 |
| 7 | Audience Advocate | Q5 — Features creating barriers — users with limited tech literacy / non-English speakers / assistive-tech users; feature-prioritization if centered | C7 |
| 8 | Audience Advocate | Q6 — What "essential" means from time-constrained / cognitively-constrained perspective — single parent with 5 minutes, chronic illness tracker | C7 |
| 9 | Audience Advocate | Q7 — Notification and feature overload disproportionate impact on user groups — which communities most affected | C7 |
| 10 | Audience Advocate | Q12 — Identifying features with small passionate user bases — learning from micro-communities about true north | C4 (cross-CG9) |
| 11 | Devil's Advocate | Q7 — Unified "core value" assumption — retention problem as execution-quality-across-all-features rather than scope | C1 (cross-CG7) |
| 12 | Questioner | Q14 — Existing users as right audience for simplified product — pivoting to different market; marketing accordingly | C9 |
| 13 | Systems Thinker | Q12 — Simplified app attracts different users than bloated — promise-delivery alignment; marketing accepting narrow-but-accurate constraint | C9 |
| 14 | Systems Thinker | Q13 — Competitive position — simplifying while competitors add features; worse-before-better transition curves | C9 |
| 15 | Systems Thinker | Q14 — Team capacity after simplification — excess capacity creating slow-return-to-bloat risk; structural constraints preventing | C9 |

**Note on enumeration:** This table lists 15 pure-unique questions (no strong CG participation). The cell has 26 non-convergent questions total; the remaining 11 are "preserve-distinct outputs from CG splits" (e.g., CG8 splits into 2 outputs, CG9 into 2, CG14 into 2, CG15 into 2 — these preserve-distinct outputs count as unique-in-their-own-right rather than merge-outputs). Specifically: CG8 yields 2 distinct outputs, CG9 yields 2, CG14 yields 2, CG15 yields 2 = 8 preserve-distinct outputs; plus the 15 pure uniques = 23 distinct-voice positions; plus the 15 single-merge outputs from CG1, CG2, CG3, CG4, CG5, CG6, CG7, CG10, CG11, CG12, CG13 (= 11 single-merge outputs) — total candidate outputs ~34 before compaction. The exact target count and final compaction are set in `mobile-app_medium_target.md`.

**Net distinct question count (merged questions count once per merge):** 15 pure uniques + 15 CG merge outputs (CG1: 1, CG2: 1, CG3: 1, CG4: 1, CG5: 1, CG6: 1, CG7: 1, CG8: 2, CG9: 2, CG10: 1, CG11: 1, CG12: 1, CG13: 1, CG14: 2, CG15: 2) = **approximately 34 final candidate outputs before compaction**. The target count in B3 compacts further based on cluster-specific merge / cut decisions.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (mobile-app / medium cell)

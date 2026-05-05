---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-05-05
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
topic-cluster: "05_feature-selection-methodology-and-decision-bias"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Feature-Selection Methodology and Decision Bias

---

## Synthesized Insights by Question

### Question 17: Quality vs. demand confound, and usage data as a lagging indicator

**Full question**: If the usage data for the 15 features is sparse and noisy — because no single feature was ever well-executed — how confident can the team be that low engagement reflects low value rather than poor implementation, and what would a methodology that separates "feature quality" from "feature demand" actually look like? Feature usage metrics are a lagging indicator that reflects what users tried given the current navigation architecture, not what they would use if a given feature were the primary experience — how should the team correct for this structural distortion when using analytics, and would the right fix be progressive disclosure rather than removal (i.e., is the diagnosis architecture rather than scope)?

* **Run a hero-slot rotation experiment in parallel for the top 3 candidate features.** Six personas converged on the same intervention: the cleanest way to separate quality from demand is to give each candidate feature, in turn, the full attention of the home screen — premium UX, prominent placement, zero navigation friction — for two weeks. Measure the engagement lift versus baseline. A 3x lift means architecture was the bottleneck; flat means demand was already satisfied or genuinely absent. Run the test on the top 3 candidates in parallel rather than sequentially to compress the diagnostic to two weeks total. The most rigorous variant rebuilds 80% of the navigation surface around one feature; softer variants promote the feature to a hero slot inside the existing shell.

* **Treat the current "everything is equally bad" state as a temporary diagnostic asset that closes when polish begins.** Three personas surfaced a counter-intuitive opportunity: because no feature has been well-executed, all 15 operate at roughly the same handicap — which neutralizes the quality-vs-demand confound for as long as the parity holds. The window is closing the moment polish begins on any feature. Use it now: re-implement the top 3 features by current engagement with 3x design polish, ship as a micro-product, and measure whether engagement lifts 2x or 10x. The magnitude of the lift tells you how much current low engagement is architecture vs. real demand.

* **Behavioral signals beyond raw engagement: re-engagement patterns, switching cost, intent.** Four personas argued that 47-second sessions and DAU counts are the wrong instrument. Better signals: do users return on day 2 or day 7 (re-engagement); would users switch apps if you cut the feature (switching cost); did they reach the feature they came for (intent). A feature with 15% engagement and high switching cost is core; the same engagement with low switching cost is decoration.

* **Force the founders to live inside the broken navigation before voting on anything.** A single-persona reframe worth surfacing: if a senior decision-maker cannot find the sleep tracker in under 90 seconds, that is itself a louder data point than any analytics dashboard.

---

### Question 18: Strategic vision as rationalization, and sunk-cost inversion

**Full question**: When the team chooses features based on "strategic vision" rather than data, "vision" often defaults to what the founders personally find most interesting; what external checks would prevent the final 3–4 features from simply reflecting team bias rather than user demand? For every feature proposed for removal, the people who built it will instinctively defend it — what process would make it psychologically safe to vote against one's own work, and how could the team structure feature review to surface quality assessments rather than ownership defenses? If the data points toward features most-used (but possibly only because they're easiest to find) while strategic instinct points elsewhere, which direction carries more risk of being wrong, and how does the 8-month runway change which type of error is more recoverable?

* **Run a blind, anonymized feature vote before any named discussion.** Six personas independently proposed strip-the-author-names voting as the cleanest mechanism to surface ownership bias. The exact framings vary — anonymized columns of metrics, an authorless paragraph vote, a public 1-10 enthusiasm score with comparison to named voting, a "would I use only this app tomorrow" cutoff — but the shared mechanism is the same: separate the assessment of feature value from the politics of authorship by removing identifying information. Where the blind vote disagrees with the named vote, you have surfaced the ownership-bias delta directly.

* **External judges — bring in someone with zero ownership of the work to chair or break ties.** Three personas argued that internal blind voting still operates inside team politics; an outsider's assessment carries weight precisely because they have no stake. A product advisor from a different industry, an external consultant retained for ~20 hours to chair feature prioritization, or a peer from another team blind to authorship — all variants of the same external-check move.

* **Reframe sunk cost as future cost — "if we had zero code, would we build this next?"** Three personas converged on the same restart-test reframe. Instead of asking what the team already invested, ask what the team would build now given current runway and current data. A pre-mortem variant ("when this fails, what will the post-mortem show?") and a 50%-team-cut stress test ("which features survive if 3 engineers leave?") are parallel structures of the same move.

* **Name the asymmetric error budget out loud — vision errors are catastrophic, data errors recoverable.** Three personas converged sharply on the same risk-asymmetry analysis: with 8 months of runway, the two error directions are not symmetric. Cutting the right features kills the product instantly (no recovery). Shipping the wrong features kills it slowly (recoverable mid-runway through course correction). Whichever direction the data and the team point, name the actual risk trade-off — which direction (overstretching on vision or playing it too safe on data) is more likely to burn the runway before you know whether you've chosen right? — and weight the decision accordingly.

* **Make defense psychologically safe by structurally forbidding it.** Four personas converged on a related move: change the *rules of conversation* during the vote so that builders cannot defend their own features. A 72-hour moratorium on advocacy, a feature-defense-by-someone-else protocol, outsider-led discussion, or the inversion-with-incentive (have the builder argue *for* removal, with a payout for convincing others) all reduce the pressure that makes voting against one's own work uncomfortable.

* **Make team enthusiasm an explicit second criterion alongside data.** Several personas argued the cleanest way to break a vision-vs-data tie is to add a third axis: who actually wants to own this for 8 months? Codified as a 70%-team-doesn't-want-to-maintain rule, or "this feature stays only if everyone on the core team would personally use it weekly if it were the only thing we built."

* **Bind strategic claims to testable predictions before the meeting starts.** A single-persona structural move: require everyone making a strategic claim to commit to a numeric forecast in writing. "If we keep X and launch a 3-feature MVP, I predict 15% 30-day retention." "If we remove Y, I predict no more than 2 support complaints per week." Ship, measure, settle. Vision is reframed as testable prediction; rationalization gets unmasked.

* **The honest question that surfaces founder vision without rationalization.** A single-persona surfacing: "What is the one thing we'd be heartbroken to cut?" That honest answer reveals actual strategic intent. Compare to data; the gap is what to resolve before any cuts happen.

---

### Question 19: The "would users build this themselves" test, and stated assumptions per retained feature

**Full question**: For each of the 15 features, ask: if this feature were removed and users strongly wanted it back, would they find another app, build their own workaround, or simply stop caring? Then for the 3-4 candidate core features, state the behavioral assumption each one rests on — and ask whether the current data (180K downloads, 2% DAU/MAU, 47-second sessions) confirms or contradicts that assumption.

* **Write the behavioral assumption for each retained feature in a single sentence, then check it against current data — most assumptions will be falsified on contact.** Five personas independently proposed an assumption-matrix as the methodology. Each candidate core feature gets one explicit sentence of the form "this feature assumes users want to [specific behavior] and will [specific action] if we deliver it well." Then check: does current data confirm or contradict? "Workout tracking assumes users want to visualize progress over time" plus 47-second sessions plus 2% DAU/MAU = the assumption is already falsified. The job is not to execute a falsified assumption better; it is to cut it and redirect. Trace each assumption forward as a consequence chain ("tracking → progress → motivation → frequency → retention") and check whether each link is supported by current data.

* **The "would users find another app, build a workaround, or stop caring?" survey — switching cost as the test.** Six personas converged on a switching-cost-as-signal frame: ask users directly what they'd do if a feature disappeared. Heavy "find another app" responses signal core; "stop caring" signals decoration. Run as a survey, a workaround interview ("I'd use Strava" = commodity user; "I don't know, I'd have to figure something out" = emotionally invested), or by monitoring competitor install spikes for 2 weeks after a real feature removal. A complementary inverse: would users *pay to rebuild* it? — which converts the question from stated to revealed preference.

* **Identify the retention pivot per cohort — different users may convert on different features.** Several personas surfaced cohort segmentation as a refinement: the moment that converts a user to retention isn't universal. Some convert on first workout log, some on a challenge, some on social reciprocity. The implication is that the "core" may need to be 2–3 features that serve different retention pathways rather than one universal hook. A sharper diagnostic: "which features, if removed, would cause the retention curve itself to shift downward for the cohorts who do use them?" Cohort-by-entry-date adds a temporal lens — are 2024 users retaining longer than 2025 users? — that reveals whether bloat is actively harming.

* **Run a feature-hiding experiment with a soft sunset.** Three personas converge on this method: hide the feature behind a "coming soon" banner for 2-week segments and measure churn relative to the stated assumption. Server-side feature flags allow this without an App Store release. A "feature buffet" variant for the 8% cohort uses explicit messaging ("In 30 days, we're removing features less than 20% of you use weekly") so users decide by behavior rather than survey.

* **Treat 180K downloads as a revealed-preference signal you cannot ignore.** Multiple personas argued that 180K downloads aren't a failure metric — they're proof of initial appeal. The question is what made the 8% return. Ask the retained cohort directly. Compress the answer into a single word — "workout" / "community" / "progress" — and use it as the cut-criterion: of 15 features, which directly serve that one value?

* **Pre-commit kill criteria with the kill switch held by an outsider.** A single-persona structural move that prevents soft-deadline drift. Write the cut threshold and date in advance ("If 7-day retention for Feature X stays below 5% by April 15, we cut it"). Hand the kill switch to someone outside the feature team — they cut unilaterally if the criterion is met. Confirmation bias will tempt softening; structure prevents it.

---

### Question 20: Building on what already works

**Full question**: Given the moments of genuine user delight already discovered, what design or product principles would amplify those strengths — what would a "more of this" philosophy look like translated into a product roadmap? The app already has 180K downloads, which means a real audience wanted something here — what would a product structure (navigation, core loop, feature set) look like if it were explicitly designed to serve the users who stayed rather than the users who left?

* **Design exclusively for the 8% who stayed, not the 92% who left.** All seven personas converged on this inversion. Stop optimizing for the average user (who left) and start optimizing for the user who actually returns. Interview the retained cohort directly with one core question — "what's the one thing you open this app for?" — and treat the modal answer as the core feature. The 8% will become 20% by deepening their experience, and they'll bring friends who fit that profile. The 92% are not coming back; chasing them produces feature bloat.

* **Find the moment of genuine capability or delight, then design backward from it under a 20-second-to-delight target.** Five personas surfaced the same architectural reframe: don't design features, design *moments*. Pull session replays of users who returned 5+ times in a month and review the sequence of taps. The sharpest framing: not "satisfied" but *capable* — the moment users feel stronger or more capable. The sharpest target: under 20 seconds from app open. Pair the replay analysis with sentiment analysis of App Store reviews mentioning specific features by name (not "the app is great" but "the workout tracker is so smooth") to operationally identify which sequences are delightful versus merely functional.

* **Make the core loop the entire roadmap; everything that doesn't feed it gets cut.** Four personas converged on a core-loop-in (rather than features-out) reframe. Define the single interaction loop explicitly — for example, "open → log workout → see streak / leaderboard position → close." Everything that feeds it stays; everything else is questioned by default. The mechanism is psychological: users who complete the core loop once invest identity in the streak or position, which makes return-tomorrow much more likely.

* **Onboarding-by-intent locks the home screen to the user's stated category.** A single-persona operational move that addresses the 47-second day-one churn vector without touching the feature set yet. Three-question intent onboarding: "What brought you here?" — workout / social / meal / other. Lock the main screen to the chosen category for the first 7 days; let power users unlock the full suite later.

* **Add a streak / habit-counter as the unifying glue.** A single-persona operational addition. Two engineers, two weeks. Sit a daily check-in or streak counter on top of whatever feature each user engages with; users who care about habit-stacking (regardless of which feature) stay engaged longer. Plausible lift from 8% to 12%.

---

### Question 21: The team is the product

**Full question**: What if the 6 engineers, 1 designer, and 1 PM — burned out from 15 half-built features — are the real product you're trying to save, not the app? Imagine the simplification decision is primarily a team-recovery intervention, and the feature choices are secondary. The real insight: if team morale and creative coherence are the actual asset at risk, which three or four features would a burned-out team be *excited* to own completely? What does "the features the team wants to build" reveal that "the features users want" might miss?

* **Choose the 3–4 features the team is most excited to own; team enthusiasm is a leading indicator of execution quality.** All seven personas converged on this — the most universal point in the cluster. A burned-out team building features it resents will produce mediocre outputs that compound the burnout. An excited team owning fewer features will polish, defend, and improve them. The mechanic varies (rate-1-to-10 enthusiasm survey, "feature you'd put on your resume" question, feature draft, "which features could excite a lean team to go deep") but the substance is identical: the data and the team-enthusiasm signal must agree, or the team enthusiasm wins the tie.

* **Build a different team around the simplified product, if necessary.** A single-persona heretical extension worth surfacing. If the chosen 3-4 features don't excite the current team, bring in a contractor or rotate someone bored with breadth but excited about depth. Start with the PM and one engineer for two weeks; see if the energy shifts.

* **Define success in team-health terms first, product metrics second.** A single-persona reframe of the success function. After relaunch, commit to: "Zero unplanned time off due to burnout," "100% of team delivers at least one feature they built from scratch," "Daily standup lasts 15 minutes, not 45." Use leading indicators (calendar focus blocks, productive code reviews, fewer sarcastic Slack comments) to catch burnout before it gets catastrophic.

* **Use a 60-day sabbatical from new development before deciding.** A single-persona pacing move with a complementary feature-retirement role rotation. Pause new work for two months; let the team fix tech debt, refactor, document. A team that gets time to breathe will have clarity; a burned-out team will rationalize cuts just to reduce workload. Rotate one engineer through a two-week feature-retirement role per feature to produce data and shared ownership.

* **Reframe runway as team bandwidth, not feature-development time.** Several personas converged on the bandwidth-math reframe — 2,800 engineer-hours total. Five well-built features at 4x the polish per feature beats fifteen half-built ones. The sustainable-ownership ceiling is roughly 1 to 1.5 features per engineer; build the architecture around that.

---

### Question 22: What if 8% retention is actually the ceiling

**Full question**: What if the problem isn't that you built the wrong features but that this entire category — social fitness apps — has a structural 8% 30-day retention ceiling, and no amount of simplification will change it? What would you discover if you assumed the retention number is correct and worked backward from "this product can never retain more than 10% of users" — would that change which three features you keep?

* **Test the ceiling empirically by benchmarking 3-5 comparable apps before any retention strategy debate.** All seven personas converged on the same first move: stop arguing about whether 8% is structural and measure. Pull 30-day retention numbers for Strava, Nike Training Club, and 2-3 other comparable apps. Industry baselines from the responses suggest meditation apps cluster at 5-8%, workout trackers at 8-12%, social platforms at 40-60%. If the comparables cluster at 5-15%, the ceiling is category-structural. If they're at 25%+, execution and scope are the constraint, not the market. A complementary diagnostic: cohort-by-entry-date — are 2024 users retaining longer than 2025 users? Same-shape curves across cohorts indicate a structural ceiling; degrading curves indicate bloat is actively harming. Run the LTV math first on a 8-10% retained cohort with aggressive monetization — knowing whether unit economics pencil at the floor is worth more than another six months of growth chasing.

* **If structural, optimize for depth and unit economics, not growth — premium pricing, evangelist features, possibly a seasonal/cyclical model.** Several personas surfaced the strategic implication of an empirically-confirmed ceiling: the optimization function changes from "raise retention" to "deepen the value of the cohort that does retain." 14.4K engaged users with high LTV beats 50K passive users; aggressive monetization, premium tiers (premium coaching, advanced analytics, premium integrations), or a seasonal-engagement reframe (4-8 week intense use, then quiet, then return) all become viable options that don't make sense in a growth frame. A "$500K/year sustainable, profitable niche" product is a different math, not a failure mode. Speed-vs-retention also enters the trade-off: 13% retention over 18 months may be worse than 8% retention over a focused 4-month sprint that captures a niche.

* **Slide under the ceiling — relaunch as a different product in a different market segment.** A single-persona reframe with significant strategic weight. If 8% is the ceiling for social fitness but 35% is the ceiling for team fitness challenges, drop solo features (solo tracking, meal planning, sleep) and relaunch as pure leaderboards and group workouts. You're not fighting the same market's ceiling; you're entering a different market with different retention expectations. Test each retained feature's impact on "likelihood to participate in a group challenge this week."

* **Test directly: kill all 15 features except one and see if retention budges.** A single-persona empirical move that resolves the ceiling question definitively. If retention stays at 8-10% even with a single, well-executed feature, the category churn is structural — driven by user-taste volatility or fitness-app fatigue, not feature bloat. Costs 2-3 weeks; answers the question.

* **Identify the structural mechanism — is the ceiling about novelty decay, category churn, or social comparison being demotivating?** A single-persona diagnostic deepening. Map possible structural causes: novelty-driven (4-week boredom)? Category-level fitness churn (most people quit exercise generally)? Social comparison being demotivating rather than motivating? Test by removing all social features for a 2-week experiment with a subset; if retention stays at 8%, social isn't the ceiling-setter — the problem is deeper.

---

### Question 23: What if the user defined the core

**Full question**: Imagine a version of this relaunch where the product's essential function is not decided by the team at all — where the three or four features that survive are discovered through a process that gives users generative agency over the product's identity, not just feedback on a predetermined direction. What would that process look like, and what could it surface that data and interviews cannot?

* **Recruit 8–40 retained users into a process with genuine binding decision authority — not consultation, not surveys.** All seven personas converged on this reframe. The methodologies vary (a feature council with 3 votes per month, a confidential Slack co-design conversation with 30-40 most engaged users, a 2-week roadmap-proposal sprint, a 100-point bidding budget, design-advisor appointments who own the consequence, a feature marketplace with weekly user voting on the home screen) but the substance is uniform: genuine agency, not feedback on a predetermined direction. The shift from "users consuming" to "users shaping" produces retention by itself, independent of which features get chosen. The first-principles distinction matters: pair with *generative* research ("what would you build?") rather than *evaluative* research ("rank these"); the latter constrains users to the current feature menu.

* **The team must cede strategic control — that's psychologically difficult and worth naming.** A single-persona structural insight. The trade-off is explicit and unavoidable: a product users want vs. a product that reflects the founder's vision of what fitness culture should be. Most products fail because founders were visionary but users disagreed; some succeed because founders were visionary and users agreed eventually. There is no safe choice here, only different risks.

* **Generative research surfaces micro-moments features cannot.** Several personas surfaced richer-than-features signals — monthly feature surgeries that ask "tell me the moment you almost left the app but didn't — what almost stopped you?", and 5-Why churn interviews that go five "whys" deep with 10 churned users. Both surface micro-moments (notification timing, social-comparison trigger, unexpected friend reciprocity) that reveal *structure*, not features.

* **Reframe sustained voting as more honest than one-time surveys.** A single-persona structural design move: a continuous interface where users propose new features only by voting to remove existing ones, with 5 removals + 2 additions per user per month. Sustained voluntary voting beats one-time surveys; users' month-to-month behavior reveals actual priorities, not stated ones.

---

### Question 24: The triage parallel — vital signs vs. vanity metrics

**Full question**: Emergency triage sorts patients by survivability, not complexity of presenting symptoms — what would it look like to apply the same logic here, asking not "which features are most used?" but "which features, if removed, would cause the product to stop breathing?" and how does that reframe the retention data you already have?

* **Reframe the question: which features, if broken at midnight, would generate support tickets by breakfast?** Six personas converged on this triage reframe. Replace "which features are most used?" with "which features, if they broke permanently today, would users immediately complain?" The threshold is binary and operational — 24-hour support-ticket volume, App Store review velocity, social-media complaint volume. Features generating no complaints in 24 hours are vanity, regardless of click-counts. Features generating <5 tickets in 24 hours are not vital; 50+ are core respiratory function. The most useful refinement is the high-vital-low-usage cell — features users depend on but currently can't find or use; those need fixing or surfacing, not cutting. The complement: load-bearing-walls / structural-engineering reframe — which features, if removed, would cause the core experience to collapse?

* **Use churn-cohort feature usage as a triage tool.** A single-persona empirical refinement. Features that churned users *never* used = they didn't come for them. Features that stayed-users use but churned-users don't = differentiators. Features used by neither cohort = dead weight. This is feature-bucketing without survey friction.

* **Retention of *understanding* over retention of *behavior*.** A single-persona reframe worth surfacing. When users open the app after 30 days, do they remember what it's for, or are they confused? A feature that contradicts the central narrative is noise; coherence beats engagement.

* **Three-axis vitality score that survives confounds.** A single-persona scorecard structure: each feature scored on (1) usage rate among retained users, (2) support ticket frequency when broken, (3) team's ability to maintain it without burnout. Vital features score high on all three; anything scoring low on two or more is a removal candidate. More robust than any single metric.

---

### Question 25: Treating the symptom vs. the underlying condition

**Full question**: In medicine, treating each symptom independently often masks the root diagnosis — given that the app's 15 features may all be downstream symptoms of a single unclear value proposition, what structural question would a diagnostician ask before touching a single feature, and does the current team have a shared answer to it?

* **The disease is incoherent identity, not feature count — answer "what is this app for?" before cutting anything.** All seven personas agree: the underlying condition is not "too many features"; it is the absence of a coherent value proposition. The diagnostic protocol: ask each of the 8 team members, separately, "in one sentence (under 15 words), what does this app do?" If you get 8 different answers, that fragmentation is the disease — and any feature cut applied without first resolving it will produce a smaller incoherent product. The thresholds: more than 15 words = no clear value proposition; multi-part answers = the diagnosis is the answer. Possible root conditions to consider explicitly: broken onboarding, unclear core feature, missing retention triggers, undefined audience. The features should follow from purpose, not the reverse — and any feature that contradicts the chosen narrative should be cut for cognitive dissonance, not for being unused.

* **Map the gap between team's stated intent and users' experienced understanding.** Several personas converged on a specific diagnostic move: ask 20 users who downloaded and never returned what they thought the app was for in the first 10 seconds, and compare to what the team intended. A jobs-to-be-done variant goes deeper — "what were you trying to accomplish when you downloaded this app? Did this app help you do that?" The gap between what the team built ("log metrics") and what users hired the app for ("stay accountable") is the underlying condition. Cross-check by asking the 8% retained cohort: "what's the one thing you'd miss most if this feature disappeared?" The pattern across 20+ retained users may diverge sharply from the team's stated value prop — and the divergence is the market signal.

* **Run "5-Why" interviews with churned users to surface the real underlying condition.** A single-persona depth-diagnosis move: "Why did you stop using the app?" → ask "why?" four more times. After five whys, the real condition emerges — frustration with notifications, achievement of goal, friend disengagement, or something else entirely. Determines whether the problem is features, segmentation, or positioning.

* **Feature-dependency / technical-debt audit before deciding what to cut.** Three personas surfaced an empirical complement to the diagnostic move: "fewer features" doesn't equal "simpler app" if the underlying infrastructure stays. Map which features depend on which systems before deciding — if 12 of 15 features share authentication, social graph, or notification infrastructure, cutting features doesn't reduce that complexity. A complementary technical-debt vote — "which 3 features would you remove to cut your technical debt in half?" — reveals architecturally messy features. Distinguish "bad code" (cheap to remove) from "interconnected code" (hard to remove, but cheap to maintain if well-architected).

* **Reasking "why did we build this?" surfaces strategic-choice provenance.** A single-persona diagnostic. The dominant answer reveals the underlying condition: "because competitors had it" = unclear strategy; "because the founder liked it" = founder bias; "because users requested it" = feature-bloat from honoring every request; "because it seemed like a natural extension" = scope creep.

---

### Question 26: Perverse excellence as feature signal

**Full question**: What if, instead of cutting features, you deliberately made 12 of the 15 features as bad as possible — broken, ugly, barely functional — while polishing only three? The absurd version is sabotage; the real insight is: if users keep returning to the three polished features despite the surrounding wreckage, you've found your core. What would it reveal if users still opened the app for just one thing even when everything else was actively terrible?

* **Run the controlled-degradation experiment for 1-2 weeks: polish 3 features, deliberately degrade 12.** Six personas converged on the experiment design. Make the 12 degraded features ugly, slow, or broken — but not gone. Polish 3 candidates. Track which features users return to despite wreckage. The signal is *resilience*, not raw usage: users tolerate broken features in apps they love (early Twitter, Slack). If users dig through wreckage to reach a feature, that's pure-signal demand independent of navigation. If they abandon it, it was visibility, not value.

* **Inverse degradation — break *one* feature, leave the rest pristine — separates "easy to find" from "actually wanted."** A single-persona inversion that complements the symmetric experiment. If a feature's usage drops 80% when degraded in an otherwise-pristine app, its apparent demand was just "easiest to find." If usage drops only 20%, demand is real despite terrible execution — that's a feature to keep and fix.

* **Feature-quality scorecard separates the confound without the experiment.** A single-persona soft variant for teams that don't want to ship deliberately-degraded features. Score each of the 15 features on UI responsiveness, error handling, onboarding clarity, completeness, and performance. Features with low engagement and low quality scores can be cut; moderate engagement plus high quality scores may represent underrated value worth investigating further.

* **Friction-as-filter and surface-errors-for-3-days as adjacent diagnostic moves.** A single-persona refinement that goes further than perverse-excellence. Add a CAPTCHA, confirmation screen, or daily password reset to one feature — if users still use it, it's core; friction is a filter that separates habit from need. A more aggressive variant: deliberately surface errors (race conditions, UI crashes, 404s) in all 15 features for 3 days. Genuine dependency features generate support tickets and workaround behavior; nice-to-haves disappear silently.

---

### Question 27: Destruction as user research

**Full question**: What if you removed every feature except one, shipped it, watched what users demanded back — and only restored features in the exact order users screamed loudest? Imagine this not as abandonment but as archaeology: users' protests are a ranked signal of genuine need. What would the sequence of complaints reveal about which features created the illusion of value versus actual dependency?

* **Ship "Version 2.0: Focused" with one feature, restore by complaint volume — frame it publicly as "we're testing radical simplicity, tell us what you need."** All seven personas converged on the destruction-as-research approach. The mechanic: ship a single-feature version (most candidates: workout tracking) with explicit messaging about the experiment. Restore features only in the exact order users demand them — through support tickets, App Store reviews, social media volume, or feature-request voting. The first 3-4 restored features become the relaunch set; everything beyond that is data showing you don't need them. A phased-removal variant (5 then 3, two-week measurement windows) is a softer alternative to full radical destruction. The trade-off named explicitly: 4-6 weeks vs 1 week, in exchange for clarity plus user buy-in (users who requested and saw restoration feel ownership).

* **Watch the temporal pattern of complaints — 24-48 hours = vital, 1 week = nice-to-have, silence at 30 days = decoration.** Several personas surfaced timing as a richer signal than total volume. First-week clusters = users adapting to a new experience; steady trickle = genuine ongoing needs. Cohort clustering surfaces segment-specific cores — competitive users may demand leaderboards in the first 24 hours while beginners may request guidance in week two; that pattern is a signal about *focus and segmentation*, not just keep-vs-cut.

* **The meta-dynamic: destruction reverses who controls the narrative.** A single-persona reframe with strategic weight — the narrative shift is itself part of the retention mechanism. "We're killing your favorite features" becomes "we're asking you what you actually need." The team moves from executors of strategic vision to stewards of user demand. That shift in agency makes the resulting simplification stick — users feel heard, even when the feature outcome is the same.

* **Use destruction as PR + revenue: feature-bounty Kickstarter for restoration.** A single-persona absurdist extension. Top 3-4 features that gather most backer funding become the relaunch target. Generates PR, goodwill, pre-launch excitement. Willingness-to-fund is a pure value signal — closer to revealed preference than any survey can be.

* **Document each removal with an in-app "feature funeral" notification.** A single-persona operational detail. "We're simplifying the app. If you miss something, let us know." Monitor feedback for 7 days; 50+ complaints = funeral objection (high latent value); zero = confirmed dead weight.

* **Sequence removals by ease of reinstatement.** A single-persona operational sequencing rule. Cut easy-to-restore features first (loosely integrated). Test demand with low-cost features before betting on removing structurally-integrated ones. Reduces the risk of the relaunch itself.

---

**Questions addressed**: 11
**Synthesized insights**: 56

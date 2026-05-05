---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-05-05
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
topic-cluster: "05_feature-selection-methodology-and-decision-bias"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: Feature-Selection Methodology and Decision Bias - With Attribution

---

## Synthesized Insights by Question

### Question 17: Quality vs. demand confound, and usage data as a lagging indicator

**Full question**: If the usage data for the 15 features is sparse and noisy — because no single feature was ever well-executed — how confident can the team be that low engagement reflects low value rather than poor implementation, and what would a methodology that separates "feature quality" from "feature demand" actually look like? Feature usage metrics are a lagging indicator that reflects what users tried given the current navigation architecture, not what they would use if a given feature were the primary experience — how should the team correct for this structural distortion when using analytics, and would the right fix be progressive disclosure rather than removal (i.e., is the diagnosis architecture rather than scope)?

* **Run a hero-slot rotation experiment in parallel for the top 3 candidate features.** Six personas converged on the same intervention: the cleanest way to separate quality from demand is to give each candidate feature, in turn, the full attention of the home screen — premium UX, prominent placement, zero navigation friction — for two weeks. Measure the engagement lift versus baseline. A 3x lift means architecture was the bottleneck; flat means demand was already satisfied or genuinely absent. Run the test on the top 3 candidates in parallel rather than sequentially to compress the diagnostic to two weeks total. The most rigorous variant rebuilds 80% of the navigation surface around one feature; softer variants promote the feature to a hero slot inside the existing shell.
  * **Manufacturing control experiment.** Take the lowest-engagement feature and give it premium UX, prominent placement, and onboarding. Measure the lift; if usage doubles, architecture was the bottleneck. *—The Analogist*
  * **Treat navigation architecture as the real experiment.** Simplify to 3 tabs and move underperforming features behind a "browse all features" section that appears only after users complete an initial core loop. The structural constraint becomes the most reliable data source. *—The Constraint Flipper*
  * **Audit navigation architecture as a confound before cutting features.** Before removing anything, instrument analytics to log how many steps it takes users to reach each feature; promote one underperforming feature to home for 2 weeks. A 3x engagement jump signals navigation problem masquerading as lack of demand. *—The Devil's Advocate*
  * **Rebuild the app with three features as the entire surface.** Take the three suspected core features and ship a no-tabs, no-menu, three-tap version to 10% of users. If retention climbs to 15%, architecture was the problem. *—The First Principles Thinker*
  * **Reframe the architecture diagnosis with per-feature dedicated home screens.** Try a temporary redesign where each of the 15 features gets its own dedicated home via a dropdown selector or carousel; if engagement stays flat with zero discovery friction, demand is genuinely low. *—The Pragmatist*
  * **A/B test workout-, meditation-, and social-focused home screens.** Give 2% of users each variant and measure relative stickiness; architecture distorts feature demand far more than user preference. *—The Provocateur*
  * **Two-week feature lighthouse test.** Redesign navigation so each of the 15 features occupies the full hero slot one at a time, for two weeks each; measure engagement during the spotlight week against baseline. *—The Systems Thinker*

* **Treat the current "everything is equally bad" state as a temporary diagnostic asset that closes when polish begins.** Three personas surfaced a counter-intuitive opportunity: because no feature has been well-executed, all 15 operate at roughly the same handicap — which neutralizes the quality-vs-demand confound for as long as the parity holds. The window is closing the moment polish begins on any feature. Use it now: re-implement the top 3 features by current engagement with 3x design polish, ship as a micro-product, and measure whether engagement lifts 2x or 10x. The magnitude of the lift tells you how much current low engagement is architecture vs. real demand.
  * **Use poor execution as your baseline for comparison.** Pick the top 3 features by engagement, re-implement with 3x design polish and 2x clarity, ship as a micro-product, and measure whether engagement lifts 2x or 10x. *—The Constraint Flipper*
  * **Measure engagement delta across feature quality tiers.** Take three features with similar discoverability and intentionally vary their UI polish for one week. *—The Pragmatist*
  * **The "polish test" as controlled experiment.** Allocate two weeks to polish one medium-engagement feature; if engagement jumps 30%+, you've proven quality masks demand. *—The Pragmatist*

* **Behavioral signals beyond raw engagement: re-engagement patterns, switching cost, intent.** Four personas argued that 47-second sessions and DAU counts are the wrong instrument. Better signals: do users return on day 2 or day 7 (re-engagement); would users switch apps if you cut the feature (switching cost); did they reach the feature they came for (intent). A feature with 15% engagement and high switching cost is core; the same engagement with low switching cost is decoration.
  * **Hospital triage analogy — track re-engagement, not usage counts.** Create a feature audit period tracking which features users come back to, even briefly, on day 2, day 7. *—The Analogist*
  * **Behavioral assumption matrix combining engagement with estimated switching cost.** Messaging at 15% engagement + high switching cost = core. Recipe library at 8% engagement + low switching cost = cut. *—The Systems Thinker*
  * **Use intent signals, not just session time.** Track entry point, task completion rate, and churn moment; low engagement + never reaching intended feature = demand issue. *—The Pragmatist*
  * **Feature-level cohort analysis.** Split users into four groups by primary feature usage and compare 30-day retention; high retention in one cohort despite low overall DAU surfaces hidden value. *—The Pragmatist*

* **Force the founders to live inside the broken navigation before voting on anything.** Single-persona reframe worth surfacing: if the PM cannot find the sleep tracker in under 90 seconds, that is itself a louder data point than any analytics dashboard.
  * **Require founders to use the current app daily without special knowledge while timing their first successful completion of each feature.** Making senior decision-makers live inside their own broken product surfaces architecture problems no usage chart can. *—The Provocateur*

---

### Question 18: Strategic vision as rationalization, and sunk-cost inversion

**Full question**: When the team chooses features based on "strategic vision" rather than data, "vision" often defaults to what the founders personally find most interesting; what external checks would prevent the final 3–4 features from simply reflecting team bias rather than user demand? For every feature proposed for removal, the people who built it will instinctively defend it — what process would make it psychologically safe to vote against one's own work, and how could the team structure feature review to surface quality assessments rather than ownership defenses? If the data points toward features most-used (but possibly only because they're easiest to find) while strategic instinct points elsewhere, which direction carries more risk of being wrong, and how does the 8-month runway change which type of error is more recoverable?

* **Run a blind, anonymized feature vote before any named discussion.** Six personas independently proposed strip-the-author-names voting as the cleanest mechanism to surface ownership bias. The exact framings vary — anonymized columns of metrics, an authorless paragraph vote, a public 1-10 enthusiasm score with comparison to named voting, a "would I use only this app tomorrow" cutoff — but the shared mechanism is the same: separate the assessment of feature value from the politics of authorship by removing identifying information. Where the blind vote disagrees with the named vote, you have surfaced the ownership-bias delta directly.
  * **Lead question: "Would I keep this if I had only one engineer and 8 months?"** Strip features down to anonymized columns (Raw DAU, session length, retention cohort, support tickets, build cost). Don't label them. After scoring, reveal identities; mismatches surface bias. *—The Devil's Advocate*
  * **Cinematic test-audience analog.** Describe each of the 15 features anonymously (no creator names attached). Have team members vote on which 3 they'd keep if they had zero ownership. Compare to named voting. *—The Analogist*
  * **Public 1-10 enthusiasm score on features you didn't build.** "If I had to use only one fitness app tomorrow, would I open this for that feature?" Results get public — defending your own feature against everyone else's judgment becomes harder than admitting it's not core. *—The Constraint Flipper*
  * **Blind-vote paragraphs.** Each team member writes a one-paragraph keep/remove recommendation per feature; names of authors are stripped before the vote. "You won't know which features you built when you vote." *—The First Principles Thinker*
  * **Anonymous "would I use this regularly vs. delete it immediately if I owned it" rating.** Each engineer rates every feature they didn't build; compare to public defense in meetings. *—The Provocateur*
  * **Blind feature-evaluation process.** Each team member evaluates all 15 features without attribution. Then separately ask which features they personally want to own; the gap between rating and wanting reveals sunk-cost bias. *—The Pragmatist*

* **External judges — bring in someone with zero ownership of the work to chair or break ties.** Three personas argued that internal blind voting still operates inside team politics; an outsider's assessment carries weight precisely because they have no stake.
  * **NASA Marshall analogy: bring in a product advisor from a different industry.** No ownership bias, no political capital tied to past decisions. Naive questions surface what is actually load-bearing. *—The Analogist*
  * **Editorial board model — hire an external product consultant for ~20 hours.** They chair feature prioritization; they break ties when founders and engineers disagree; they represent user perspective, not organizational capital. *—The Analogist*
  * **Mobile app strategist from outside — blind to who built what.** External assessment costs time but buys credibility and reveals when team consensus is genuine alignment or just social pressure. *—The Systems Thinker*

* **Reframe sunk cost as future cost — "if we had zero code, would we build this next?"** Three personas converged on the same restart-test reframe. Instead of asking what the team already invested, ask what the team would build now given current runway and current data. A pre-mortem variant ("when this fails, what will the post-mortem show?") and a 50%-team-cut stress test ("which features survive if 3 engineers leave?") are parallel structures of the same move.
  * **Restart-test reframe: "if we had zero code written, would we build this next, given 6 engineers, 2 months, and an 8-month runway?"** Force vision and data to answer the same question instead of pulling in opposite directions. *—The Systems Thinker*
  * **Pre-mortem.** "We're going to ship a simplified version with features X, Y, and Z. We'll have 8 months. When we fail — and we might — what will the post-mortem show?" Forces articulation of underlying assumptions. *—The First Principles Thinker*
  * **50% team-cut stress test.** "Assume 3 engineers leave. Which 3–4 features keep the remaining team excited enough to stay?" If the vision is truly user-driven, it should survive a staffing scenario. *—The Devil's Advocate*

* **Name the asymmetric error budget out loud — vision errors are catastrophic, data errors recoverable.** Three personas converged sharply on the same risk-asymmetry analysis: with 8 months of runway, the two error directions are not symmetric. Cutting the right features kills the product instantly (no recovery). Shipping the wrong features kills it slowly (recoverable mid-runway through course correction). Whichever direction the data and the team point, name the actual risk trade-off — which direction (overstretching on vision or playing it too safe on data) is more likely to burn the runway before you know whether you've chosen right? — and weight the decision accordingly.
  * **Risk calculus on runway.** "If your runway is 8 months and you guess wrong on strategic vision, you have only one chance to recover. If you guess wrong on data, you can pivot within months. Data errors are recoverable; vision errors are catastrophic at your runway." *—The Analogist*
  * **Asymmetric error costs in a death spiral.** "The error direction is asymmetric: shipping the wrong features kills the product slowly; cutting the right features kills it instantly. With 8 months of runway, you need to be wrong about *what users want* more than you need to be right about *what the team thinks is cool.*" *—The Provocateur*
  * **Runway as the explicit tiebreaker.** "With 8 months of funding, the team can afford to be cautious OR bold — but not both… name the actual risk trade-off: which direction — overstretching on vision or playing it too safe — is more likely to burn the runway before you know whether you've chosen right?" *—The Systems Thinker*

* **Make defense psychologically safe by structurally forbidding it.** Four personas converged on a related move: change the *rules of conversation* during the vote so that builders cannot defend their own features. A 72-hour moratorium on advocacy, a feature-defense-by-someone-else protocol, and outsider-led discussion all reduce the pressure that makes voting against one's own work uncomfortable.
  * **72-hour moratorium on defense.** Announce the feature-selection process 3 days before the meeting. Tell people: you cannot advocate for a feature you built or champion. You can only ask clarifying questions. *—The Devil's Advocate*
  * **Delegated critique.** Builders present their feature, then step aside while others challenge it; assign someone with no attachment to argue for removal. *—The Systems Thinker*
  * **Three diagnostic questions per feature owner that reframe defense as quality assessment.** "If someone else built this, would you recommend keeping it? What's one thing you'd change? If we removed it, what segment would we lose?" *—The Pragmatist*
  * **Have engineers argue *against* features they built, with a financial incentive for convincing others.** If a feature survives after its builder has tried to kill it, it earned its place through merit, not sunk cost. *—The Provocateur*

* **Make team enthusiasm an explicit second criterion alongside data.** Several personas argued the cleanest way to break a vision-vs-data tie is to add a third axis: who actually wants to own this for 8 months?
  * **"We will cut features that 70% of the team doesn't want to maintain, regardless of usage data."** A feature with decent metrics but zero team advocacy will decay. *—The Pragmatist*
  * **Feature draft.** "This feature stays only if everyone on the core team would personally use it weekly if it were the only thing we built." *—The Constraint Flipper*

* **Bind strategic claims to testable predictions before the meeting starts.** Single-persona structural move worth surfacing.
  * **Forecast contracts.** PM says feature X is essential? Require: "If we keep X and launch 3-feature MVP, I predict 15% 30-day retention." Engineer says Y is doomed? "If we remove Y, I predict no more than 2 support complaints per week." Write down, ship, measure. Vision is reframed as testable prediction. *—The Constraint Flipper*

* **The honest question that surfaces founder vision without rationalization.** Single-persona surfacing.
  * **"What is the one thing we'd be heartbroken to cut?"** That honest answer reveals actual strategic intent. Compare to data; mismatches are critical to resolve before any cuts. *—The Pragmatist*

---

### Question 19: The "would users build this themselves" test, and stated assumptions per retained feature

**Full question**: For each of the 15 features, ask: if this feature were removed and users strongly wanted it back, would they find another app, build their own workaround, or simply stop caring? Then for the 3-4 candidate core features, state the behavioral assumption each one rests on — and ask whether the current data (180K downloads, 2% DAU/MAU, 47-second sessions) confirms or contradicts that assumption.

* **Write the behavioral assumption for each retained feature in a single sentence, then check it against current data — most assumptions will be falsified on contact.** Five personas independently proposed an assumption-matrix as the methodology. Each candidate core feature gets one explicit sentence of the form "this feature assumes users want to [specific behavior] and will [specific action] if we deliver it well." Then check: does current data confirm or contradict? "Workout tracking assumes users want to visualize progress over time" plus 47-second sessions plus 2% DAU/MAU = the assumption is already falsified. The job is not to execute a falsified assumption better; it is to cut it and redirect.
  * **Feature assumption matrix.** Write the implicit user behavior assumption per feature; check against the data. Assumption-to-data mismatches are removal candidates. *—The Pragmatist*
  * **Falsification framing.** "We are keeping this feature because we assume users want to [specific behavior]." Check: does 2% DAU/MAU and 47-second sessions falsify? *—The First Principles Thinker*
  * **Map assumption to outcome and test the weakest first.** Force the team to state the critical assumption in writing per candidate; current data may already contradict it. *—The Devil's Advocate*
  * **Sentence + data check.** "This feature assumes that [specific behavioral need] is true and users will [specific action] if we deliver it well." *—The Systems Thinker*
  * **Consequence chain.** "Workout tracking assumes users want to see progress over time, which increases motivation, which drives frequency, which drives retention." Trace backward; if any link is missing, the assumption is broken. *—The Systems Thinker*

* **The "would users find another app, build a workaround, or stop caring?" survey — switching cost as the test.** Six personas converged on a switching-cost-as-signal frame: ask users directly what they'd do if a feature disappeared. Heavy "find another app" responses signal core; "stop caring" signals decoration. Run as a survey, a workaround interview, or by monitoring competitor install spikes after a real feature removal.
  * **Three-option survey: find another app / build workaround / stop caring.** Per feature, per cohort. Heavy (a) = core value. *—The First Principles Thinker*
  * **Workaround interview.** "If we removed this tomorrow, what would you do?" "I'd use Strava" = commodity user. "I don't know, I'd have to figure something out" = emotionally invested. *—The Pragmatist*
  * **Inverse test: would users *pay to rebuild* it?** Cut the feature; if zero users search for alternatives or post complaints, they didn't value it. If they immediately migrate to Cronometer or MyFitnessPal, the assumption was right but execution was wrong. Monitor competitor install spikes for 2 weeks. *—The Devil's Advocate*
  * **Open-source ecosystem test.** When a feature matters, users fork or build the plugin. Meal planning is dead — 50 alternatives. The features users *would* rebuild are the ones with genuine demand. *—The Analogist*
  * **Rank features 1-5 on abandonment risk.** "Would I abandon this app if it disappeared?" — distinguishes nice extras from core dependency. *—The Constraint Flipper*
  * **Feature-absence archaeology survey to departing users.** "Of the things you wanted to do in this app, which did you end up doing elsewhere?" The list of "I use Spotify / Apple Health / Reddit instead" is your cut list. *—The Systems Thinker*

* **Identify the retention pivot per cohort — different users may convert on different features.** Several personas surfaced cohort segmentation as a refinement: the moment that converts a user to retention isn't universal. Some convert on first workout log, some on a challenge, some on social reciprocity. The implication is that the "core" may need to be 2–3 features that serve different retention pathways rather than one universal hook.
  * **Find the retention pivot point per cohort.** "Which features, if removed, would cause the retention curve itself to shift downward for the cohorts who do use them?" If removing meal planner doesn't change 30-day retention for any cohort, it's not core — even if 1,000 users logged meals. *—The Provocateur*
  * **Cohort by entry-date.** Do users from 2024 retain longer than users from 2025? Reveals whether bloat is actively harming. *—The Systems Thinker*
  * **Feature-level cohort analysis.** Split users into four groups by primary feature usage; high retention in one cohort surfaces hidden segment-specific value. *—The Pragmatist*

* **Run a feature-hiding experiment with a soft sunset.** The Devil's Advocate, Pragmatist, and Constraint Flipper all converge on this method: hide the feature behind a "coming soon" banner for 2-week segments and measure churn relative to the stated assumption.
  * **Server-side feature hide for 20% of users.** Track 30-day retention; if drop > 5%, essential; if flat, demand is low. *—The Pragmatist*
  * **2-week soft sunset behind "coming soon."** Compare actual churn to the assumption percentage. "We assume 20% depend on this; if only 4% churn, the assumption was wrong." *—The Constraint Flipper*
  * **"Feature buffet" with real scarcity for the 8% cohort.** "In 30 days, we're removing features less than 20% of you use weekly." Cut the bottom 10 by behavior. *—The Devil's Advocate*

* **Treat 180K downloads as a revealed-preference signal you cannot ignore.** Multiple personas argued that 180K downloads aren't a failure metric — they're proof of initial appeal. The question is what made the 8% return.
  * **180K downloads created a revealed preference.** Ask the retained cohort: "Why do you still open this app?" Their answer is your core, not your data. *—The First Principles Thinker*
  * **180K as a selection cohort.** "What single word describes why these 180K people showed up?" Workout / community / progress. Of the 15 features, which directly serve that one value? *—The Constraint Flipper*

* **Pre-commit kill criteria with the kill switch held by an outsider.** Single-persona structural move that prevents soft-deadline drift.
  * **"If 7-day retention for Feature X stays below 5% by April 15, we cut it."** Write it down. Have someone outside the feature team own the kill-switch authority — they cut unilaterally if criterion is met. Confirmation bias will tempt softening; structure prevents it. *—The Devil's Advocate*

---

### Question 20: Building on what already works

**Full question**: Given the moments of genuine user delight already discovered, what design or product principles would amplify those strengths — what would a "more of this" philosophy look like translated into a product roadmap? The app already has 180K downloads, which means a real audience wanted something here — what would a product structure (navigation, core loop, feature set) look like if it were explicitly designed to serve the users who stayed rather than the users who left?

* **Design exclusively for the 8% who stayed, not the 92% who left.** All seven personas converged on this inversion. Stop optimizing for the average user (who left) and start optimizing for the user who actually returns. Interview the retained cohort directly with one core question — "what's the one thing you open this app for?" — and treat the modal answer as the core feature. The 8% will become 20% by deepening their experience, and they'll bring friends who fit that profile. The 92% are not coming back; chasing them produces feature bloat.
  * **Design the navigation, core loop, and feature hierarchy as if the 8% retained user is the only user.** You may lose some of the 92%, but the 8% will become 20% — and bring friends who fit the profile. *—The First Principles Thinker*
  * **180K is a gift — you've already found your audience.** Profile the high-retention cohort ruthlessly (age, location, device, time-of-day, feature sequence). Design the entire product around the behavioral pattern that already sticks. *—The Provocateur*
  * **Japanese garden principle.** Amplify what's thriving rather than clearing the lot. Segment 2% DAU users; build the relaunch entirely around keeping them happy. *—The Analogist*
  * **Find the 30–40 daily users and interview them ruthlessly.** Not about features being considered; about what they actually do in-app in a typical week. They are your existence proof. *—The Systems Thinker*
  * **Design for the survivor cohort, not the arriving cohort.** A 15% retention product with coherent experience for the 15% will find more users than 8% retention with incoherent experience. *—The Systems Thinker*
  * **Audit unintentional wins.** What converted install to action? Onboarding, feature showcase, social proof, specific pain point? Double down on that. *—The Pragmatist*
  * **Use the 8% retention cohort as product designers.** "What was the moment you realized you'd use this regularly?" Design the relaunch so that exact moment is unavoidable. *—The Constraint Flipper*

* **Find the moment of genuine capability or delight, then design backward from it under a 20-second-to-delight target.** Five personas surfaced the same architectural reframe: don't design features, design *moments*. Pull session replays and review high-retention user journeys to find the sequence that triggers return. The Provocateur sharpens it: not "satisfied" but *capable* — the moment users feel stronger or more capable. The Constraint Flipper quantifies the target: under 20 seconds from app open. The Devil's Advocate adds the operational instrument: session replay × name-specific app-review sentiment.
  * **Identify moments of genuine delight through session replay and sentiment analysis, not just metrics.** Pull session replays of users who returned 5+ times in a month; pair with sentiment analysis of reviews mentioning specific features by name. Roadmap amplifies sequences, not features. *—The Devil's Advocate*
  * **Find the moment of satisfaction or insight; rebuild everything as variants of that pattern.** Replay a dozen high-retention journeys; identify the sequence; make it the primary path. *—The First Principles Thinker*
  * **Capability, not satisfaction.** "What moment makes users feel genuinely healthy, stronger, or more capable?" Design backward from that emotional reward; you're manufacturing a reward loop, not a feature list. *—The Provocateur*
  * **Delight archaeology — under 20 seconds.** For each retained feature, identify one moment of surprise/joy and design the relaunch so those moments happen within 20 seconds of opening the app. *—The Constraint Flipper*
  * **Jazz improvisation analogy.** Find the melody that works (the moment of delight); build navigation, onboarding, and core feature set around amplifying it. Everything else is accompaniment. *—The Analogist*

* **Make the core loop the entire roadmap; everything that doesn't feed it gets cut.** Four personas converged on a core-loop-in (rather than features-out) reframe. Define the single interaction loop explicitly. Everything that feeds it stays; everything else is questioned by default.
  * **Invert the roadmap from features-out to core-loop-in.** "open → log workout → see streak and position on leaderboard → close." Meal planning, meditation, community forum — all removed unless they directly feed that loop. Creates a commitment-and-consistency trap. *—The Systems Thinker*
  * **A "more of this" roadmap means fewer features, not more.** Identify the moment users experience genuine relief or insight; ask what would make it faster, clearer, more rewarding. Anything outside that loop is distraction. *—The First Principles Thinker*
  * **Michelin-star strategy.** Three features executed with such polish that users open the app specifically for that experience. *—The Analogist*
  * **River ecology / topography.** Observe where 2% DAU users spend time; widen and deepen that channel; every other feature is a dam. *—The Analogist*

* **Onboarding-by-intent locks the home screen to the user's stated category.** Single-persona operational move that addresses the 47-second day-one churn vector without touching the feature set yet.
  * **Three-question intent onboarding.** "What brought you here?" — workout / social / meal / other. Lock the main screen to the chosen category for 7 days. Eliminates the overwhelm-on-day-one churn vector. *—The Pragmatist*

* **Add a streak / habit-counter as the unifying glue.** Single-persona operational addition.
  * **"Habits" feature as the glue that sits on top of whatever feature each user engages with.** Two engineers, two weeks. Could lift retention 8% → 12% by giving habitual users a daily reason to return. *—The Pragmatist*

---

### Question 21: The team is the product

**Full question**: What if the 6 engineers, 1 designer, and 1 PM — burned out from 15 half-built features — are the real product you're trying to save, not the app? Imagine the simplification decision is primarily a team-recovery intervention, and the feature choices are secondary. The real insight: if team morale and creative coherence are the actual asset at risk, which three or four features would a burned-out team be *excited* to own completely? What does "the features the team wants to build" reveal that "the features users want" might miss?

* **Choose the 3–4 features the team is most excited to own; team enthusiasm is a leading indicator of execution quality.** All seven personas converged on this — the most universal point in the cluster. A burned-out team building features it resents will produce mediocre outputs that compound the burnout. An excited team owning fewer features will polish, defend, and improve them. The mechanic varies (rate-1-to-10 enthusiasm survey, "feature you'd put on your resume" question, feature draft, "which features could excite a lean team to go deep") but the substance is identical: the data and the team-enthusiasm signal must agree, or the team enthusiasm wins the tie.
  * **Pulse survey: rate enthusiasm for owning each of the 15 features 1-10.** 7+ from team members who built them = worth keeping. 3-4 = morale sinks; cut ruthlessly. If data and team enthusiasm misalign sharply, test the feature with a different team or contractor before deciding. *—The Devil's Advocate*
  * **"If you had to bet your next job on this product, which one feature would you want on your resume?"** Keep the three the team is most proud and eager to own; ignore user data when the conflict is sharp. Morale compounds; burned-out teams let features rot. *—The Provocateur*
  * **Feature draft.** Each engineer nominates one feature to defend; keep only features at least one engineer is genuinely fired up about. If no one wants to own it, it goes. *—The Constraint Flipper*
  * **"If you could own exactly three features completely — design, ship, iterate, support — which would excite you to work on every day for the next 6 months?"** Map specific fatigue pathways (task overload / cognitive load / reward deficit / decision conflict); the diagnostic reveals the intervention. *—The Systems Thinker*
  * **Team morale sprint.** Give the team a month to spike on only the features that excite them most, without shipping pressure. What emerges reveals where creative coherence actually lies. *—The First Principles Thinker*
  * **Cut features based on "who has ongoing stake in its success?"** If no engineer is excited about a feature and the one person who liked it just quit, it's unmaintainable by definition. *—The Pragmatist*
  * **Musical-ensemble analogy.** A six-piece band can't play 15 instruments simultaneously. Features the team would fight to own become the core. *—The Analogist*

* **Build a different team around the simplified product, if necessary.** Single-persona heretical extension worth surfacing.
  * **Hire or rotate based on retained features, not the other way around.** If the current team isn't excited to own the chosen 3-4 features, bring in a contractor or rotate someone bored with breadth but excited about depth. Start with the PM and one engineer for two weeks; see if the energy shifts. *—The Devil's Advocate*

* **Define success in team-health terms first, product metrics second.** Single-persona reframe of the success function.
  * **Team-health metrics as primary KPI.** "Zero unplanned time off due to burnout," "100% of team delivers at least one feature they built from scratch," "Daily standup lasts 15 minutes, not 45." Catch burnout via leading indicators before it gets catastrophic. *—The Devil's Advocate*

* **Use a 60-day sabbatical from new development before deciding.** Single-persona pacing move.
  * **60-day pause on new work.** Let the team fix tech debt, refactor, and document before the simplification decision. A team that gets time to breathe will have clarity; a burned-out team will rationalize cuts just to reduce workload. *—The Pragmatist*
  * **Feature-retirement role rotation.** Assign one engineer to spend two weeks understanding dependencies, integrations, and maintenance cost per feature. Intellectually interesting; produces data; rotates ownership. *—The Pragmatist*

* **Reframe runway as team bandwidth, not feature-development time.** Several personas converged on the bandwidth-math reframe — 2,800 engineer-hours total; five well-built features beats fifteen half-built ones at 4x the polish per feature.
  * **8 months × 7 people = 2,800 engineer-hours.** Five well-executed features instead of 15 means 4x attention per feature. *—The Constraint Flipper*
  * **Sustainable ownership math: 1 to 1.5 features per engineer.** With 6 engineers and 8 months, that's the ceiling. Build the architecture around sustainable ownership. *—The Provocateur*

---

### Question 22: What if 8% retention is actually the ceiling

**Full question**: What if the problem isn't that you built the wrong features but that this entire category — social fitness apps — has a structural 8% 30-day retention ceiling, and no amount of simplification will change it? What would you discover if you assumed the retention number is correct and worked backward from "this product can never retain more than 10% of users" — would that change which three features you keep?

* **Test the ceiling empirically by benchmarking 3-5 comparable apps before any retention strategy debate.** All seven personas converged on the same first move: stop arguing about whether 8% is structural and measure. Pull 30-day retention numbers for Strava, Nike Training Club, and 2-3 other comparable apps. If they cluster at 5-15%, the ceiling is category-structural. If they're at 25%+, execution and scope are the constraint, not the market. The decision tree splits cleanly only after this number is in hand.
  * **Industry-baseline analogy.** Meditation apps probably 5-8%; workout trackers 8-12%; social platforms 40-60%. If social fitness apps empirically plateau at 8%, the problem isn't execution — it's category. *—The Analogist*
  * **Three-app benchmark.** "Identify three other social fitness apps with similar feature sets. What's their 30-day retention? If all of them cluster around 5–15%, you've discovered a category truth, not a product failure." *—The First Principles Thinker*
  * **Strava / Nike Training Club benchmark.** "Take your 8% retention number seriously. Identify the three most straightforward fitness apps in the market and run a brief benchmark." *—The Pragmatist*
  * **Run the LTV math first.** "Before cutting features, run the LTV math on a 8-10% retained cohort with aggressive monetization. If it pencils out, simplify. If not, the product might not be viable at all — and that's worth knowing before you spend 8 months." *—The Devil's Advocate*
  * **Cohort by entry-date diagnostic.** Are January 2024 users retaining longer than January 2025 users? Reveals whether bloat is actively harming retention vs. whether 8% is the floor. *—The Systems Thinker*
  * **Speed-vs-retention math.** "Which is worse — 13% retention over 18 months, or 8% retention over a focused 4-month sprint that captures a niche?" *—The Provocateur*
  * **Accept the ceiling and use it as a constraint to optimize for depth.** "An 8% retention cohort of people doing 20-minute sessions and inviting friends is more valuable than 20% retention of people opening for 30 seconds." *—The Constraint Flipper*

* **If structural, optimize for depth and unit economics, not growth — premium pricing, evangelist features, possibly a seasonal/cyclical model.** Several personas surfaced the strategic implication of an empirically-confirmed ceiling: the optimization function changes from "raise retention" to "deepen the value of the cohort that does retain." 14.4K engaged users with high LTV beats 50K passive users; aggressive monetization, premium tiers, or a seasonal-engagement reframe (4-8 week intense use, then quiet, then return) all become viable options that don't make sense in a growth frame.
  * **Optimize per-user value at 14.4K active users.** Spend more, engage longer, refer friends. Become the best app for 15K devoted users instead of chasing 50K active. *—The First Principles Thinker*
  * **Shift business model: high-ARPU freemium with premium coaching, advanced analytics, premium integrations.** Cut social, cut hand-holding onboarding, cut mass-appeal features; double down on depth. Features look different when you're building for intensity, not scale. *—The Pragmatist*
  * **Scenario plan: "what if we never grow beyond 15K MAU?"** Reframes simplification from "cut to grow faster" to "cut to be sustainable at this size." *—The Pragmatist*
  * **Seasonal / cyclical product.** Design for users who engage intensely for 4-8 weeks, leave, return after 2-3 months. Build onboarding, features, notifications for the repeat-cycle user. *—The Constraint Flipper*
  * **VC portfolio model — accept the niche.** A "$500K/year sustainable, profitable niche" product is not failure; it's different math. Deliberately design for evangelism by the 8%. *—The Analogist*

* **Slide under the ceiling — relaunch as a different product in a different market segment.** Single-persona reframe with significant strategic weight.
  * **Drop solo features; relaunch as pure team-challenge platform with different retention expectations.** If 8% is the ceiling for social fitness but 35% for team fitness challenges, you're entering a different market, not fighting the same one. Test each retained feature's impact on "likelihood to participate in a group challenge this week." *—The Devil's Advocate*

* **Test directly: kill all 15 features except one and see if retention budges.** Single-persona empirical move that resolves the ceiling question definitively.
  * **Single-feature retention test.** "Remove all features except one and measure whether 30-day retention fundamentally changes. If users still churn at 8-10% even with a single, well-executed feature, then the category churn is structural." *—The Provocateur*

* **Identify the structural mechanism — is the ceiling about novelty decay, category churn, or social comparison being demotivating?** Single-persona diagnostic deepening.
  * **Map structural causes of the ceiling.** Novelty-driven (4-week boredom)? Category-level fitness churn? Social comparison being demotivating rather than motivating? Test by removing all social features for a 2-week experiment with a subset; if retention stays at 8%, social isn't the ceiling-setter — the problem is deeper. *—The Systems Thinker*

---

### Question 23: What if the user defined the core

**Full question**: Imagine a version of this relaunch where the product's essential function is not decided by the team at all — where the three or four features that survive are discovered through a process that gives users generative agency over the product's identity, not just feedback on a predetermined direction. What would that process look like, and what could it surface that data and interviews cannot?

* **Recruit 8–40 retained users into a process with genuine binding decision authority — not consultation, not surveys.** All seven personas converged on this reframe. The methodologies vary (a feature council with 3 votes per month, a confidential Slack co-design conversation, a 2-week roadmap-proposal sprint, a 100-point bidding budget, design-advisor appointment, a feature marketplace) but the substance is uniform: genuine agency, not feedback on a predetermined direction. The shift from "users consuming" to "users shaping" produces retention by itself, independent of which features get chosen. The first-principles distinction matters: pair with *generative* research ("what would you build?") rather than *evaluative* research ("rank these"); the latter constrains users to the current feature menu.
  * **Feature council with 9 active users, 3 votes/month, real decision-making power.** "Recruit 9 active users (your 8% who actually return) into a feature council. Each month, they get 3 votes." Users decide priorities; engineers own technical feasibility. *—The Devil's Advocate*
  * **Confidential Slack co-creation sprint with 30-40 most engaged users.** "We're rebuilding from scratch. What is the one thing you want this app to be, and what else could it do to support that?" Stories emerge, not predetermined categories. *—The Systems Thinker*
  * **Generative-vs-evaluative methodology.** "What's the one thing you wish this app did?" not "Do you like feature X?" Aggregate by frequency and coherence. *—The First Principles Thinker*
  * **Participatory-design-movement analog.** Users as co-designers, not consultants. LEGO IDEAS / Threadless precedent. *—The Analogist*
  * **Feature lottery with 100-point bidding budget.** Bids determine which features survive; surfaces preference without articulation; less prone to list-fatigue bias. *—The Pragmatist*
  * **Design advisors with consequence ownership.** Appoint 8-10 highly-engaged users; give them data, constraints, team's strategic arguments; let them debate and make the call. They own the outcome. *—The Provocateur*
  * **Feature marketplace with weekly user voting on the home screen.** Crowdsourced curation; users feel ownership. *—The Constraint Flipper*

* **The team must cede strategic control — that's psychologically difficult and worth naming.** Single-persona structural insight.
  * **Founder vision vs. user definition is a real trade-off — there is no safe choice.** "Most products fail because founders were visionary but users disagreed. Some succeed because founders were visionary and users agreed eventually. There's no safe choice here, only different risks." *—The Systems Thinker*

* **Generative research surfaces micro-moments features cannot.** Several personas surfaced richer-than-features signals.
  * **Monthly feature surgeries.** "Tell me the moment you almost left the app but didn't — what almost stopped you? What made you stay?" Users surface micro-moments — notification timing, social-comparison trigger — that reveal structure, not features. *—The Devil's Advocate*
  * **5-Why churn interviews.** Five "whys" deep with 10 churned users surfaces whether the issue is features, segmentation, or positioning. *—The Constraint Flipper*

* **Reframe sustained voting as more honest than one-time surveys.** Single-persona structural design move.
  * **Continuous voting with trade-offs.** Users propose new features only by removing existing ones; 5 removals + 2 additions per month per user. Sustained voluntary voting beats one-time surveys. *—The Provocateur*

---

### Question 24: The triage parallel — vital signs vs. vanity metrics

**Full question**: Emergency triage sorts patients by survivability, not complexity of presenting symptoms — what would it look like to apply the same logic here, asking not "which features are most used?" but "which features, if removed, would cause the product to stop breathing?" and how does that reframe the retention data you already have?

* **Reframe the question: which features, if broken at midnight, would generate support tickets by breakfast?** Six personas converged on this triage reframe. Replace "which features are most used?" with "which features, if they broke permanently today, would users immediately complain?" The threshold is binary and operational — 24-hour support-ticket volume, App Store review velocity, social-media complaint volume. Features generating no complaints in 24 hours are vanity, regardless of click-counts. The Pragmatist sharpens it: features generating <5 tickets in 24 hours are not vital; 50+ are core. The most useful refinement is the high-vital-low-usage cell — features users depend on but currently can't find or use; those need fixing or surfacing, not cutting.
  * **"If this feature broke at midnight tonight, how many support tickets would we get by breakfast, and from whom?"** Removes abstraction; centers the question on what users actually depend on. *—The Systems Thinker*
  * **Loss-of-service ticket count.** "If this feature broke tomorrow, how many users would open a support ticket within 24 hours?" <5 = not vital; 50+ = core respiratory function. *—The Pragmatist*
  * **Vital-sign vs. vanity matrix.** High-vital-low-usage = poor UX or discoverability; fix or surface, not cut. High-usage-low-vital = users access out of habit but don't need. *—The Systems Thinker*
  * **ER protocol.** Vital features stay; decorative features go. Test: can the core 3-4 features work without the 11 decorative ones? *—The Analogist*
  * **Features-as-patients triage.** Immediate (life-threatening if removed) / urgent / delayed / expectant. Code each feature; force binary decisions. *—The Provocateur*
  * **Feature criticality audit.** Score each feature 0-3 on (a) appears in retention cohort's session recordings, (b) appears in user interviews about why they use the app, (c) removing it reduces DAU. Retain only features scoring 6+. *—The Analogist*

* **Use churn-cohort feature usage as a triage tool.** Single-persona empirical refinement.
  * **Churn cohort × feature usage analysis.** Features churned users *never* used = they didn't come for them. Features stayed users use but churned users don't = differentiators. Features in neither = dead weight. *—The Pragmatist*

* **Retention of *understanding* over retention of *behavior*.** Single-persona reframe worth surfacing.
  * **"When users open the app after 30 days, do they remember what it's for, or are they confused?"** A feature that contradicts the central narrative is noise; coherence beats engagement. *—The Constraint Flipper*

* **Three-axis vitality score that survives confounds.** Single-persona scorecard structure.
  * **Score each feature on (1) usage rate among retained users, (2) support ticket frequency when broken, (3) team's ability to maintain without burnout.** Feature scoring low on two or more axes is a removal candidate. *—The Pragmatist*

---

### Question 25: Treating the symptom vs. the underlying condition

**Full question**: In medicine, treating each symptom independently often masks the root diagnosis — given that the app's 15 features may all be downstream symptoms of a single unclear value proposition, what structural question would a diagnostician ask before touching a single feature, and does the current team have a shared answer to it?

* **The disease is incoherent identity, not feature count — answer "what is this app for?" before cutting anything.** All seven personas agree: the underlying condition is not "too many features"; it is the absence of a coherent value proposition. The diagnostic protocol: ask each of the 8 team members, separately, "in one sentence (under 15 words), what does this app do?" If you get 8 different answers, that fragmentation is the disease — and any feature cut applied without first resolving it will produce a smaller incoherent product. The Systems Thinker sharpens the threshold: more than 15 words = no clear value proposition. The Pragmatist adds the structural test: if the answer is multi-part, that's the diagnosis. The features should follow from purpose, not the reverse.
  * **Under 15 words.** "If the sentence has more than 15 words, you don't have a clear value proposition yet." *—The Systems Thinker*
  * **Gather all 8 team members and ask separately.** "In one sentence, what does this product do?" 8 different answers reveal alignment failure. *—The First Principles Thinker*
  * **"What problem does this app solve?"** If you get five different answers, you've found the disease. *—The Devil's Advocate*
  * **"This app helps people..." completion test.** Five different answers = identity problem, not feature problem. *—The Constraint Flipper*
  * **Single-north-star principle.** Daily habit formation? Social connection? Performance progress? Convenience? Every feature must ladder to it. *—The Pragmatist*
  * **Architectural diagnosis.** Possible root conditions: broken onboarding, unclear core feature, missing retention triggers, undefined audience. Identify the root before designing features. *—The Analogist*
  * **Narrative-as-diagnosis.** Features that contradict the narrative get cut immediately, not for being unused but for cognitive dissonance. *—The Provocateur*

* **Map the gap between team's stated intent and users' experienced understanding.** Several personas converged on a specific diagnostic move: ask 20 users who downloaded and never returned what they thought the app was for in the first 10 seconds, and compare to what the team intended.
  * **Jobs-to-be-done interview with departing users.** "What were you trying to accomplish?" "Did this app help you do that?" The gap is the underlying condition — team built for "log metrics," users hired you for "stay accountable." *—The Systems Thinker*
  * **First-impression interview with 20 churned users.** "When you first opened it, what did you think it was for?" Compare to team's intent. *—The Provocateur*
  * **Retained users tell you the actual product.** The 8% who stay aren't random — they likely all use the app for one specific reason. Asking 20+ retained users surfaces a clear pattern that may diverge from stated value prop. *—The Devil's Advocate*

* **Run "5-Why" interviews with churned users to surface the real underlying condition.** Single-persona depth-diagnosis move.
  * **"Why did you stop using the app?" → ask "why?" four more times.** After five whys, the real condition emerges — frustration with notifications, achievement of goal, friend disengagement, or something else entirely. Determines whether the problem is features, segmentation, or positioning. *—The Constraint Flipper*

* **Feature-dependency / technical-debt audit before deciding what to cut.** Three personas surfaced an empirical complement to the diagnostic move: "fewer features" doesn't equal "simpler app" if the underlying infrastructure stays. Map dependencies first.
  * **Feature-dependency audit.** "Do 12 of the 15 features depend on the same user authentication or social graph system? If most features are tangled in shared infrastructure, cutting features won't save complexity." *—The Pragmatist*
  * **Engineer-by-engineer technical debt vote.** "Which 3 features would you remove to cut your technical debt in half?" Cluster reveals architecturally messy features; distinguish "bad code" from "interconnected code." *—The Devil's Advocate*
  * **Maintenance-to-usage ratio audit.** Estimate ongoing cost to maintain, fix bugs, support per feature. High-maintenance-low-usage features are net drains. *—The First Principles Thinker*

* **Reasking "why did we build this?" surfaces strategic-choice provenance.** Single-persona diagnostic.
  * **"Why did we build this?" per feature.** "Because competitors had it" / "founder liked it" / "users requested it" / "natural extension" — the dominant answer reveals the underlying condition (unclear strategy / feature-bloat / scope creep). *—The Pragmatist*

---

### Question 26: Perverse excellence as feature signal

**Full question**: What if, instead of cutting features, you deliberately made 12 of the 15 features as bad as possible — broken, ugly, barely functional — while polishing only three? The absurd version is sabotage; the real insight is: if users keep returning to the three polished features despite the surrounding wreckage, you've found your core. What would it reveal if users still opened the app for just one thing even when everything else was actively terrible?

* **Run the controlled-degradation experiment for 1-2 weeks: polish 3 features, deliberately degrade 12.** Six personas converged on the experiment design. Make the 12 degraded features ugly, slow, or broken — but not gone. Polish 3 candidates. Track which features users return to despite wreckage. The signal is *resilience*, not raw usage: users tolerate broken features in apps they love (early Twitter, Slack). If users dig through wreckage to reach a feature, that's pure-signal demand independent of navigation. If they abandon it, it was visibility, not value.
  * **Deliberately break 12, polish 3.** Slow load times, ugly UI, hidden in "legacy" submenu for the broken set. User behavior under adversity reveals actual loyalty. *—The Provocateur*
  * **Polish 3 features to world-class quality while deprioritizing 12.** Don't sabotage — deprioritize. Track which features users *choose* despite the wreckage. *—The Constraint Flipper*
  * **Sabotage test for 2 weeks.** "If users keep returning and using the three polished features despite the surrounding wreckage, you've found demand signal that's independent of opportunity cost." *—The Systems Thinker*
  * **Stark version test.** One feature front-and-center, 14 hidden. If stark version outperforms full feature set, navigation clutter was the symptom. *—The Analogist*
  * **Inverted-design contrast principle.** 3 features in premium UX, 12 barely functional. Users hunting despite poor execution = your core. *—The Analogist*
  * **1-2 week timebox with retained users.** "We're testing a simplified version. Some features are intentionally offline. Help us understand what matters." *—The First Principles Thinker*

* **Inverse degradation — break *one* feature, leave the rest pristine — separates "easy to find" from "actually wanted."** Single-persona inversion that complements the symmetric experiment.
  * **The inverse experiment.** "Make one feature terrible — slow navigation, confusing UI, frequent crashes — and keep everything else pristine. If that feature's usage drops 80%, you've learned that its apparent demand was actually just 'easiest to find.' If it drops 20%, demand is somewhat real despite terrible execution." *—The Systems Thinker*

* **Feature-quality scorecard separates the confound without the experiment.** Single-persona soft variant.
  * **Quality scorecard per feature: UI responsiveness, error handling, onboarding clarity, completeness, performance.** Features with low engagement and low quality scores can be cut; moderate engagement + high quality scores may represent underrated value. *—The Pragmatist*

* **Friction-as-filter and surface-errors-for-3-days as adjacent diagnostic moves.** Single-persona refinement that goes further than perverse-excellence.
  * **Add a CAPTCHA, confirmation screen, or daily password reset to one feature.** Friction as filter. If users still use it, it's core. *—The Provocateur*
  * **Surface errors in all 15 features for 3 days.** See which features users report bugs on, ask for fixes on, or work around. Genuine dependency features generate support tickets; nice-to-haves disappear silently. *—The Provocateur*

---

### Question 27: Destruction as user research

**Full question**: What if you removed every feature except one, shipped it, watched what users demanded back — and only restored features in the exact order users screamed loudest? Imagine this not as abandonment but as archaeology: users' protests are a ranked signal of genuine need. What would the sequence of complaints reveal about which features created the illusion of value versus actual dependency?

* **Ship "Version 2.0: Focused" with one feature, restore by complaint volume — frame it publicly as "we're testing radical simplicity, tell us what you need."** All seven personas converged on the destruction-as-research approach. The mechanic: ship a single-feature version (most candidates: workout tracking) with explicit messaging about the experiment. Restore features only in the exact order users demand them — through support tickets, App Store reviews, social media volume, or feature-request voting. The first 3-4 restored features become the relaunch set; everything beyond that is data showing you don't need them. The Pragmatist's phased-removal (5 then 3) is a softer variant; the others go full radical. The trade-off named explicitly by First Principles: 4-6 weeks vs 1 week for clarity, plus user buy-in (users who requested and saw restoration feel ownership).
  * **"Version 2.0: Focused" with workout logging only, public framing.** "We're rebuilding from your feedback. For the next month, we're shipping the essentials only. Tell us what you actually need back." *—The Systems Thinker*
  * **Single-feature, public radical-simplicity framing.** "We're testing radical simplicity. This version has *only* workouts." Two-week cadence: add the one feature users request most loudly. *—The Provocateur*
  * **Single feature → watch demands in real time.** Day one, day three, day seven: the sequence of complaints reveals a ranked list of genuine needs. Restore strictly in order; measure 30-day retention impact per restoration. *—The First Principles Thinker*
  * **Archaeological method.** Remove everything except one; chart the sequence of user requests as a ranked list of feature importance. *—The Analogist*
  * **Radical-MVP iterative restoration.** Top 5 most-requested after 30 days; add #1, ship again, repeat monthly. After 6 months, you've built a roadmap in the order users revealed their needs. *—The Constraint Flipper*
  * **Phased feature removal in waves of 5, then 3.** "Week 1: remove the five lowest-engagement features. Measure churn for two weeks. Week 3: remove the next three." Softer variant; same archaeology. *—The Pragmatist*
  * **"Feature buffet" with real scarcity.** Ship to the 8% with all 15 features and explicit messaging: "In 30 days, we're removing features less than 20% of you use weekly." *—The Devil's Advocate*

* **Watch the temporal pattern of complaints — 24-48 hours = vital, 1 week = nice-to-have, silence at 30 days = decoration.** Several personas surfaced timing as a richer signal than total volume.
  * **Temporal pattern of feature requests.** First-week clusters = users adapting to a new experience; steady trickle = genuine ongoing needs. Cohort clustering surfaces segment-specific cores (competitive users → leaderboards; beginners → guidance). *—The Systems Thinker*
  * **24-48 hour reporting window.** Immediate complaints = vital; complaints after a week = nice-to-have; no complaints after a month = decorative. *—The Analogist*

* **The meta-dynamic: destruction reverses who controls the narrative.** Single-persona reframe with strategic weight — the narrative shift is itself part of the retention mechanism.
  * **Reverse narrative control.** "Instead of 'we're killing your favorite features,' it becomes 'we're asking you what you actually need.' The team moves from executors of strategic vision to stewards of user demand. That shift in agency makes the resulting simplification stick." *—The Systems Thinker*

* **Use destruction as PR + revenue: feature-bounty Kickstarter for restoration.** Single-persona absurdist extension.
  * **Feature-bounty restoration via Kickstarter-style backing.** Top 3-4 features that gather most backer funding become the relaunch target. Generates PR, goodwill, pre-launch excitement; willingness-to-fund is pure value signal. *—The Provocateur*

* **Document each removal with an in-app "feature funeral" notification.** Single-persona operational detail.
  * **In-app removal notice.** "We're simplifying the app. If you miss something, let us know." Monitor feedback for 7 days; 50+ complaints = funeral objection (high latent value); zero = confirmed dead weight. *—The Pragmatist*

* **Sequence removals by ease of reinstatement.** Single-persona operational sequencing rule.
  * **Cut easy-to-restore features first.** Test demand with low-cost features before betting on removing structural ones. Reduces risk of the relaunch itself. *—The Pragmatist*

---

**Questions addressed**: 11
**Personas contributing**: The Analogist, The Constraint Flipper, The Devil's Advocate, The First Principles Thinker, The Pragmatist, The Provocateur, The Systems Thinker
**Total synthesized insights**: 56

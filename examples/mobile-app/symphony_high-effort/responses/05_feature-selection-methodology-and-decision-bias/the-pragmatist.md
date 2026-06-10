---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "05_feature-selection-methodology-and-decision-bias"
persona: "The Pragmatist"
---

# Feature-Selection Methodology and Decision Bias - The Pragmatist

---

## Quality vs. Demand Confound, and Usage Data as a Lagging Indicator

* **Measure engagement delta across feature quality tiers.** Run a controlled experiment: take three features with similar "discoverability" (same menu depth, same notification frequency) but intentionally vary their UI polish and responsiveness for one week. A feature with good UX that still shows low engagement likely reflects low demand; one that gains traction when polished reveals demand masked by poor execution. This costs one sprint but generates ground truth.

* **Use intent signals, not just session time.** Engagement metrics (47-second sessions) tell you how long people stay, not what they came for. Instead: track entry point (which feature did users tap first?), task completion rate (did they accomplish what they intended?), and churn moment (which screen did they leave from?). Low engagement + high task completion = quality issue; low engagement + never reaching the intended feature = demand issue.

* **Reframe the architecture diagnosis.** The current 6-tab navigation is a confound variable. Try a temporary redesign where each of the 15 features gets its own dedicated home screen (via a dropdown selector or carousel). If engagement stays flat even with zero discovery friction, you've proven demand is low. If engagement jumps for certain features, you've validated that navigation was the bottleneck—and you should redesign, not cut.

* **Implement a feature-level cohort analysis.** Split your 180K users into four groups based on primary feature usage (workout tracking, meal planning, social feed, none prominent). Compare 30-day retention between cohorts. High retention in one cohort despite low overall DAU suggests that feature is valuable to its audience, even if global metrics obscure it. This data is actionable and costs a data analyst 3 days.

---

## Strategic Vision as Rationalization, and Sunk-Cost Inversion

* **Use a blind feature-evaluation process.** Each team member evaluates all 15 features without attribution—no "Sarah built this" or "this was the founder's idea." Provide only user data, not ownership history. Then, separately, ask each team member: "Which features do *you* personally want to own?" The gap between what they rate highly and what they want to own reveals sunk-cost bias and leadership misalignment.

* **Establish data as the tie-breaker, not the argument.** Set a rule now: if strategic vision conflicts with usage data, the decision threshold is not "whose argument is more convincing" but "what's the cost of being wrong?" If the data says feature X should stay but vision says cut it, prototype keeping it for 6 weeks and measure impact on retention and session length. If the data says cut it but vision says keep, do the same. Let outcomes, not rhetoric, decide.

* **Separate ownership defense from quality assessment.** During feature review, ask each owner three questions: (1) If someone else had built this feature, would you recommend keeping it? (2) What's one thing about this feature you'd change if you owned it now? (3) If we removed it, what user segment would we lose? These shift the conversation from defending territory to diagnosing value.

* **Make team morale the explicit second criterion.** State clearly: "We will cut features that 70% of the team doesn't want to maintain, regardless of usage data." A feature with decent metrics but zero team advocacy will eventually decay into something unusable. Better to cut it now than spend 8 months letting it rot while the team resents its existence.

* **Run a "founder's dilemma" workshop.** Gather the leadership team and ask: "What is the one thing we'd be heartbroken to cut?" That honest answer reveals actual strategic intent. Then compare it to the data. If your heartfelt answer is "community marketplace" but the retention data suggests users just want tracking, you've found a critical misalignment to resolve before any cuts.

---

## The "Would Users Build This Themselves" Test, and Stated Assumptions Per Retained Feature

* **Create a feature assumption matrix.** For each of the 15 features, write down the implicit user behavior assumption it rests on. Example: "Meal planner assumes users will input daily food intake for 2+ weeks before expecting ROI." Then check it against the data: 2% DAU/MAU means 98% of users never became daily habitual users, contradicting the assumption. Assumption-to-data mismatches are removal candidates.

* **Run a feature-absence test.** Survey users who downloaded but churned within 7 days: "If the app had only [Feature X], would you keep using it?" For each of the 15 features, you'll get a "definitely," "maybe," or "no way" distribution. Features where more than 60% say "no way" fail the viability test. Focus retention-saving effort on features where 40%+ of lapsed users say they'd stay.

* **Conduct the "workaround interview."** For each feature, find 3-5 power users and ask: "If we removed this tomorrow, what would you do?" Users with clear alternatives (I'd use Strava, I'd go back to MyFitnessPal) are using you as a commodity. Users who say "I don't know, I'd have to figure something out" are emotionally invested and depend on you. Retention value is in the latter group.

* **Test feature necessity with a feature-hiding experiment.** Temporarily hide one feature from 20% of your user base (via server-side flag, not App Store). Track 30-day retention for the hidden vs. control group. If retention drops by more than 5%, that feature is essential. If it's flat or within noise, demand for that feature is low, and low usage is likely driven by habit or discovery, not value.

---

## Building on What Already Works

* **Audit your unintentional wins.** The 180K downloads mean something was compelling at first contact. Analyze the user flow from install to first workout logged or first social post. What element converted install to action? Was it onboarding, a feature showcase, social proof, or a specific pain point articulated in the app store listing? Double down on that moment; it's your strongest conversion lever.

* **Design for the 8% that stayed.** Conduct a brief survey of your retained users: "What's the one thing you open the app for?" Their answer, stated clearly, is your core product. Build navigation, notifications, and onboarding around that singular thing. A user who opens for "quick 10-minute workouts" should see that in the first tap; everything else is noise.

* **Create a "habits" feature as the glue.** Instead of killing features, add one lightweight system: a simple daily check-in or streak counter that sits on top of whatever feature each user engages with. Users who care about habit-stacking (regardless of which feature) stay engaged longer. This costs two engineers two weeks and could lift retention from 8% to 12% by giving habitual users a reason to return daily.

* **Simplify the onboarding based on intent.** Add a three-question onboarding flow: "What brought you here?" (workout tracking / social / meal planning / other). Then lock the main screen to show only that user's chosen category for the first 7 days. Let power users unlock the full suite later. This won't cut features but will eliminate the "overwhelmed on day one" churn vector that drags your average session time down to 47 seconds.

---

## The Team Is the Product

* **Prioritize team coherence over feature breadth.** Ask each of the six engineers: "Which feature area could you own completely and feel excited, not burned out?" This question is more predictive of long-term maintenance quality than usage data. A team that is excited to maintain 3 features will out-execute a burnt-out team maintaining 15. The features the team *wants* to build are the features that will actually survive long-term.

* **Cut features based on "who would be devastated to lose it?"** Not "who built it," but "who has ongoing stake in its success?" If no engineer on the team is excited about the community forum, and the one person who liked it just quit, that feature is unmaintainable by definition. You can't have a feature without a steward. Cut anything where stewardship would fall to someone who doesn't want it.

* **Consider a 60-day sabbatical from new work.** Before deciding which features to keep, pause new development for two months and let the team fix tech debt, refactor the codebase to reduce integration complexity, and document what's actually running. A team that gets time to breathe will have clarity and confidence in what they can maintain. A burnt-out team will rationalize cuts just to reduce workload, which can be premature.

* **Propose "feature retirement" as a role rotation.** Assign one engineer to spend two weeks working backward from each of the 15 features: understanding dependencies, documenting how it integrates, assessing the cost of maintaining it vs. removing it. This role is intellectually interesting (and different from daily grunt work), gives the team collective intelligence about their codebase, and produces data for the cuts decision. Rotate the role to build shared ownership of the simplification process.

* **Use the 8-month runway for team recovery, not just feature shipping.** If the team rebuilds three polished features in 6 months and spends months 7-8 hiring, training, and documentation, you've set up the team for sustainable growth. If you force them to ship a redesign, launch a new onboarding, and manage user communication all in parallel, you'll burn through the runway in burnout, not momentum. Simplification is a team-pacing decision, not just a product decision.

---

## What If 8% Retention Is Actually the Ceiling

* **Test the category hypothesis with a simplified competitor.** Take your 8% retention number seriously. Identify the three most straightforward fitness apps in the market (something like Strava or Nike Training Club) and run a brief benchmark: can they achieve >15% 30-day retention? If they're also stuck around 8-12%, then the category might have a structural ceiling. If they're at 25%+, then execution and scope are your constraint, not the market.

* **Redesign for the 8% cohort's value, not the 92% cohort's acquisition.** If 8% is the hard cap, stop treating retention as a global metric and start treating it as a segment metric. Your 8% are probably a specific type of user (daily exercisers, habit-trackers, competition-motivated). Build exclusively for that persona, and accept that 92% of installs will be one-off. Optimize for that conversion-to-core-user funnel instead of trying to convert casual users.

* **Shift the business model to match the ceiling.** If 8% retention is the cap, then a freemium model with high ARPU per retained user (e.g., premium coaching, advanced analytics, premium integrations) might be more viable than chasing acquisition. This means different feature choices: cut social, cut onboarding hand-holding, cut mass-appeal features, and double down on depth for power users. Features look different when you're building for intensity, not scale.

* **Run a "what if we never grew beyond 15K MAU?" scenario.** Assume the app will never exceed 15K monthly actives (extrapolating from 180K installs × 8% retention). What features would you keep? What team size do you need? What revenue model works? This reframes simplification from "how do we cut to grow faster" to "how do we cut to be sustainable at this size." A smaller scope, smaller team, and niche positioning might be more viable than the current bloated-app-chasing-scale strategy.

---

## What If the User Defined the Core

* **Run a feature-discovery workshop, not a feature-prioritization survey.** Instead of ranking 15 features, give users a design challenge: "You can have three things in the app. What would they be, and why?" Facilitate small groups (6-8 users each) to collaborate on defining their ideal version of the product. Record the themes that emerge across groups. Features that users independently nominate across multiple groups are genuinely core; features that emerge in only one group are niche.

* **Prototype user-defined feature sets.** Take the top three themes from your workshop and build three minimal prototypes, each focused on one user-discovered pillar (e.g., "daily habit tracker," "community accountability," "progress visualization"). Give each to a different cohort of users for two weeks. Measure retention and engagement. The prototype that retains best is your user-discovered core; build that.

* **Use a "feature lottery" to surface hidden preferences.** Tell users: "We're redesigning the app. We can't keep everything. Bid for features using a fake 100-point budget. Your bids determine which features survive." A feature that gets 80 points of bids across 100 users is genuinely valued; one that gets 5 points is noise. This mechanism surfaces preference without asking users to articulate it, and it's less prone to list-fatigue bias.

* **Create a "community council" as your decision-making body.** Instead of the team deciding in a room, recruit 8-10 of your most engaged users into a rotating council. Present the data and trade-offs; let them vote on the core feature set. This transfers ownership to users, makes the relaunch feel collaborative rather than imposed, and generates advocates who will champion the new version to other churned users.

---

## The Triage Parallel — Vital Signs vs. Vanity Metrics

* **Define "essential functions" as "what makes the app worth opening."** If you remove a feature and users don't care (no complaint, no churn), it's not essential. If you remove it and three user segments immediately ask for it back via reviews, it's vital. Sort your 15 features into these buckets based on historical churn events: whenever a feature broke or had an outage, did users complain? If yes, it's vital. If no, it's vanity.

* **Prioritize by "loss of service" impact.** Ask: "If this feature broke tomorrow, how many users would open a support ticket within 24 hours?" Tally the responses. Features that generate <5 support tickets when broken are not vital. Features that generate 50+ are core respiratory functions. Keep the latter set and rebuild them; kill the former.

* **Use churn cohort analysis as your triage tool.** For users who churned in the first 30 days, identify the features they *never* used. Those are features they didn't come for. For users who stayed but use only one or two features, that's the core set. Features that appear in the "stayed users'" usage patterns but not in the "churned users'" are differentiators; features that appear in neither are truly dead weight.

* **Create a "feature vitality score" rather than a ranking.** For each feature, score it on three axes: (1) usage rate among retained users, (2) support ticket frequency when broken, (3) team's ability to maintain it without burnout. Vital features score high on all three. Anything scoring low on two or more is a removal candidate. This system is more robust than any single metric and accounts for the quality-vs.-demand confound.

---

## Treating the Symptom vs. The Underlying Condition

* **Before cutting anything, define the app's value proposition in one sentence.** The fact that this app tried to be everything (tracker, planner, social, marketplace, coaching, etc.) suggests the team never landed on a clear answer to "What problem does this solve?" Ask the PM: "In 15 words or fewer, what does this app do?" If the answer is vague or multi-part, that's your root diagnosis. Everything else is a symptom of that unclear positioning.

* **Conduct a "feature dependency audit."** Map which features rely on which systems: Do 12 of the 15 features depend on the same user authentication or social graph system? If most features are tangled in shared infrastructure, cutting features won't save complexity. You'll still have to maintain the underlying system. Before deciding which features to keep, understand the tech debt underneath them; a "simple" feature set built on a complex foundation isn't actually simpler.

* **Ask "why did we build this?" for each of the 15 features.** The answers will reveal the underlying condition. If most answers are "because competitors had it" or "because the founder liked it," then the condition is unclear product strategy. If they're "because users requested it," the condition is feature bloat from honoring every request. If they're "because it seemed like a natural extension," the condition is scope creep. Once you name the condition, you can fix it in the relaunch process.

* **Set a "single north star" principle for the relaunch.** Decide now: Is the product optimized for daily habit formation? For social connection? For performance progress? For convenience? Every feature in the relaunch should ladder to that single metric. If you can't articulate a shared north star, you'll likely repeat the mistake of building 15 features because different features serve different unstated goals. The root condition is strategic clarity; treat that first.

---

## Perverse Excellence as Feature Signal

* **Run the "polish test" as a controlled experiment.** Take three medium-engagement features and one low-engagement feature. Allocate two weeks to polish one medium-engagement feature (responsive UI, delightful micro-interactions, fast load times). Leave the others unchanged. Measure engagement lift for the polished feature. If engagement jumps 30%+, you've proven quality masks demand. If it stays flat, you've proven that engagement reflects demand, not execution.

* **Create a feature quality scorecard.** Rate each of the 15 features on: UI responsiveness, error handling, onboarding clarity, feature completeness (does it do what it promises?), and performance. You'll likely find that features with low engagement also have low quality scores. Features with moderate engagement but high quality might represent underrated value. This scorecard separates "users don't want this" from "users can't find or use this because it's broken."

* **Treat feature polish as your validation method.** Select the three candidate core features and spend two weeks on each making them truly excellent: no bugs, clear onboarding, fast performance, delightful interactions. If users engage more heavily with the polished versions, you've confirmed demand. If the low-engagement features stay low despite polish, you've confirmed low demand. This is cheaper than cutting and relaunching and provides ground truth before you commit to the relaunch.

---

## Destruction as User Research

* **Plan a phased feature removal with user feedback loops.** Week 1: remove the five lowest-engagement features based on current data. Measure churn for two weeks. Week 3: remove the next three lowest-engagement features. Measure again. Continue until you've made significant cuts or users revolt. Each removal serves as an experiment: if users demand a feature back, you have quantified evidence of its value. If they ignore its absence, you have evidence that low engagement reflects low demand.

* **Document the "feature funeral" to gather intelligence.** When you remove a feature, send a single in-app notification: "We're simplifying the app. Here's what's changing. If you miss something, let us know." Monitor the feedback for 7 days. Features that generate 50+ complaints are "funeral objections" that signal high latent value. Features that generate zero complaints are confirmed dead weight. This data is more reliable than DAU metrics because users are motivated by actual loss.

* **Sequence removals by "ease of reinstatement."** Remove features that can be quickly restored first (those with little codebase integration). If users demand them back, you can add them in a week. Remove deeply integrated features last, once you're confident no one needs them. This sequence reduces risk: you're testing demand with low-cost features before betting the app on removing structural ones.

* **Use feature removal as a continuous discovery loop.** Don't plan a single relaunch. Instead, commit to removing features every sprint and listening to what users ask for back. The sequence of requests is your archaeology record. Third request tells you something is important; tenth complaint tells you it's vital. After three sprints of this, you'll have a ranked list of "must-keep" features based on user protest, not guesswork.

---

## Additional Pragmatist Insights

* **Declare a feature-freeze and run a "simplification sprint."** Instead of debating abstract criteria, lock the scope of the app right now (no new work for two weeks). Spend that time measuring engagement, running experiments, and gathering data on the 15 features. A freeze also signals to the team that simplification is serious, reducing defensiveness. Teams are more honest about feature value when they know every feature is on the table.

* **Plan the relaunch communication as a strength narrative, not a loss narrative.** Instead of "we're cutting features," say "we're focusing our energy on the three things we do best." Users who churned because they were overwhelmed will celebrate simplification. Users who used a cut feature and need it will find alternatives, but they'll at least see you're serious about quality. Frame it as evolution, not abandonment.

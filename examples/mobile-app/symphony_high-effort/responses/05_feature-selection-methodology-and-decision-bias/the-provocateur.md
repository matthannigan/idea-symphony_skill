---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "05_feature-selection-methodology-and-decision-bias"
persona: "The Provocateur"
---

# Feature-Selection Methodology and Decision Bias - The Provocateur

---

## Quality vs. Demand Confound and Lagging Usage Data

* **Treat the app as already dead, then resuscitate only what users spontaneously resurrect.** Remove all 15 features simultaneously, ship a skeleton shell, and measure what users demand back in the first two weeks via support tickets, App Store reviews, and social media. The absurdity: destroying a paying product to gather data. The insight: user fury and unexpected demands are more honest signals than engagement metrics built atop a broken navigation architecture. You'll discover not which features were used, but which features users *actually needed* badly enough to complain publicly.

* **Invert the quality metric—measure "engagement despite friction," not engagement.** If meditation has 6% engagement but requires three taps and a hamburger menu dive to find, what would engagement be with a dedicated shortcut? Run a rapid A/B test: give 2% of users a workout-focused home screen, 2% a meditation-focused home screen, 2% a social-focused screen, and measure relative stickiness. The absurd part: you're collecting data you should already have. The insight: architecture distorts feature demand far more than users' actual preferences. The diagnosis might be "build different UIs per persona" not "kill features."

* **Require founders to use the current app daily without special knowledge of how it works, while timing their first successful completion of each feature.** If your PM can't find the sleep tracker in under 90 seconds, you've proven the problem is navigation, not demand. The provocative part: making senior decision-makers live inside their own broken product. The insight: if the team refuses to use the app themselves, that's a signal louder than any usage metric.

---

## Strategic Vision as Rationalization and Sunk-Cost Inversion

* **Have each engineer anonymously rate every feature they didn't personally build on a scale of "would I use this regularly" vs. "would I delete this immediately if I owned it."** Then compare their personal rankings to their public defense of those features in meetings. The absurdity is creating dissonance. The insight: people defend what they built regardless of quality; anonymous voting surfaces actual convictions. The team's anonymous preferences are more trustworthy than their public arguments.

* **Assign each feature engineer the task of making a ruthless case for why their feature should be *removed*, and assign them a financial incentive for convincing others.** Flip the ownership psychology. The founders can counter-argue for features they want to keep. The absurd part: paying engineers to argue against their own work. The real insight: if a feature survives after its builder has genuinely tried to kill it, that feature has earned its place through merit, not sunk cost.

* **Compare the team's "strategic vision" features against the feature-usage heatmap aggregated by geographic region, device type, and user cohort.** If vision and data point in opposite directions, the error direction is asymmetric: shipping the wrong features kills the product slowly; cutting the right features kills it instantly. With 8 months of runway, you need to be wrong about *what users want* more than you need to be right about *what the team thinks is cool.* The provocative insight: strategic vision has higher error cost in a resource-constrained death spiral.

---

## The "Would Users Build This Themselves" Test and Stated Assumptions

* **For each of the 15 features, place an explicit sign-up cost: "To use [Feature X], pay $3/month."** Then measure which features users *pay for* separately. The absurdity: creating a paywall you don't intend to keep. The insight: what users voluntarily fund is far more honest than what they use because it's there. Some features might disappear entirely; others might sustain a $2-3/month tier. That's your core, ranked by willingness-to-pay.

* **Identify the single moment in the app where retention transitions from "I'm exploring" to "I'm staying."** For each user cohort, find the feature interaction or sequence that predicts 30-day retention. Some users might convert on their first workout log; others on joining a challenge; others on social reciprocity (someone followed them back). The absurd part: treating retention as a black box instead of tracing the exact behavioral pivot point. The insight: you might need to keep two or three features that serve different retention pathways, not one universal core.

* **Reframe the retention question: not "which features get used," but "which features, if removed, would cause *the retention curve itself to shift downward for the cohorts who do use them?*" If removing the meal planner doesn't change 30-day retention for any cohort, it's not core—even if 1,000 users logged meals.** The insight: some features are decorative; you need the ones that form actual dependency chains.

---

## Building on What Already Works

* **Treat the 180K downloads as a gift: you've already found your audience.** Instead of asking "which 3-4 features should the app do?" ask "what is the unifying behavior of the users who came back?" Profile the high-retention cohort ruthlessly—age, location, device, time-of-day patterns, feature sequence. Then design the entire product (navigation, notifications, onboarding, core loops) around the behavioral pattern that already sticks. The provocative part: most teams rebuild the product for the audience they wish they had. This forces you to serve the audience you actually have.

* **Ask: what moment in the current app makes users feel *genuinely healthy, stronger, or more capable*?** Not satisfied—capable. Find that moment and design backward from it. If users feel a rush when they complete a challenge, maybe the core is challenges + a way to broadcast them, not individual workout tracking. The insight: you're not building features; you're manufacturing a specific emotional reward. Design the reward loop, not the feature list.

* **Run a 48-hour "simplification sprint": each engineer picks one feature and redesigns it as a completely self-contained experience, accessible from the home screen in one tap.** Then measure which redesigned feature generates the most re-opens in the next week. The absurd part: spending resources on features you might delete. The insight: implementation quality trumps feature breadth. The highest-retention redesign becomes your core; everything else gets cut.

---

## The Team Is the Product

* **Ask each team member: "If you had to bet your next job on this product, which one feature would you want on your resume for building it?"** Then keep the three features the team is most proud of and most eager to own completely, even if the data says otherwise. The provocative part: ignoring user data to serve team coherence. The insight: a team that is excited to maintain a feature will polish it, defend it, and improve it; a burned-out team maintaining a feature they resent will let it rot. Morale compounds over time. Keep features that re-energize the team.

* **Measure team sentiment daily: ask each person on a scale of 1-10 whether they feel ownership of the product and whether they can explain its core value in one sentence.** Track this for two weeks as the team debates features. The feature set that produces the highest team-sentiment score on Day 14 is your relaunch candidate—not because users chose it, but because a coherent, energized team will outexecute a burnt-out one trying to serve ambiguous user demand.

* **Reverse the decision: instead of "simplify for users," frame it as "design for sustainable team capacity."** With 6 engineers and 8 months of runway, how many features can one engineer own and maintain completely? 1? 1.5? That's your ceiling. Build the product architecture around sustainable ownership, and everything else becomes the feature set.

---

## What If 8% Retention Is the Ceiling

* **Assume the 8% number is mathematically correct and immutable, and calculate how much annual revenue a sustainable business looks like at 8% 30-day retention.** If the math shows a viable business at 8%, stop chasing 15% or 20%—instead optimize for the most profitable 8%. The provocative part: accepting mediocrity. The insight: some categories have natural retention ceilings. Social fitness might be one of them. Shift from "How do we increase retention?" to "How do we become profitable at the retention rate we can achieve?"

* **Propose a scenario: you simplify the product, and retention improves to 12%. But development stalls, and you miss the market window where users are ready to try a new fitness app. Which outcome is actually worse—13% retention over 18 months, or 8% retention over a focused 4-month sprint that captures a niche?** The absurdity is framing retention as non-deterministic. The insight: speed to market and niche focus might matter more than incremental retention gains.

* **Test the hypothesis: remove all features except one, and measure whether 30-day retention fundamentally changes.** If users still churn at 8-10% even with a single, well-executed feature, then the category churn is structural—driven by user taste volatility or fitness-app fatigue, not feature bloat. That test costs you 2-3 weeks but answers the question definitively. The absurd part: building a worse product to gather science. The insight: you need empirical proof before spending 8 months on a simplification that might not help.

---

## What If the User Defined the Core

* **Run a participatory design sprint where you seed 3-5 different simplified feature sets, put each one in the hands of a cohort of returning users for one week, and let them modify, vote, and propose alternatives using a lightweight collaborative tool.** Don't ask users to choose—let them *design* the product they'd keep. The absurdity: outsourcing the core product strategy to non-experts. The insight: users' collaborative priorities might reveal a feature combination the team never considered, or confirm that the team's instinct was correct. Either way, you've built buy-in and gathered signal simultaneously.

* **Create a "feature request + trade-off" interface where users can propose a new feature *only by voting to remove an existing one.* Give users a budget of 5 removals and 2 additions per month.** Over three months, watch which features accrue removal votes and which ones gain defender votes. The absurd part: letting users restructure the product continuously. The insight: sustained, voluntary voting is more honest than a one-time survey. Users' month-to-month behavior reveals actual priorities.

* **Appoint 8-10 highly-engaged users as "design advisors" and give them the data, the constraints, and the team's strategic arguments.** Let them debate the features, make the call, and own the consequence. If the relaunch fails, they share accountability. The absurdity is distributing strategic decision-making to the customer. The insight: users who are trusted with consequential decisions become emotionally invested in the outcome.

---

## The Triage Parallel—Vital Signs vs. Vanity Metrics

* **Define "vital signs" for your app: the minimum set of metrics that, if they trend upward, signal the product is healing.** For this app: maybe it's "users who complete at least one workout, log it, and return within 7 days." Everything else—social shares, meal plans logged, challenges joined—is secondary. Then measure: which features are required to hit those vital signs? That's your core. The provocative part: dismissing 80% of your metrics. The insight: not all metrics matter equally. Retention is vital; feature engagement is noise.

* **Imagine each feature is a patient in triage. You have three slots for ICU.** Assign each feature a triage code: immediate (life-threatening to the product if removed), urgent (significant impact), delayed (nice-to-have), expectant (let it die). The coding rule: if you remove the feature and a measurable cohort of users stops returning, it's immediate. Otherwise, it's lower. This forces binary decisions and surface dependencies.

* **Steal the triage principle further: "Which features would kill the product if they broke tomorrow?"** Rank by fragility and criticality. The top 3-4 become your core because they're the foundation everything else rests on. You can rebuild features; you cannot rebuild trust in a broken foundation.

---

## Treating the Symptom vs. the Underlying Condition

* **Assume none of the 15 features are the problem—assume the real problem is that the app has no coherent *narrative* about what it's for and who it's for.** Before you cut a single feature, write the one-sentence value proposition that the team can all recite with conviction. Then measure: which features advance that narrative? Which ones contradict it? Which are neutral? The features that contradict your narrative get cut *immediately*, not because they're unused, but because they create cognitive dissonance. The insight: a feature list is a symptom of unclear positioning; fixing the list won't fix the positioning.

* **Interview 20 users who downloaded the app and never returned.** Ask: "When you first opened it, what did you think it was for?" Compare their answer to what the team *intended* the app to be. I guarantee there's a gap. The feature selection process shouldn't start with "which features should we keep"—it should start with "what do we want users to *think the app does* in the first 10 seconds?" Features follow from that clarity, not the reverse.

* **Propose a brutal diagnostic: the app is confusing because *the team itself doesn't have a shared vision.*** Engineer 1 thinks it's a social platform. Engineer 2 thinks it's a biometric tracker. The PM thinks it's a coaching service. The 15 features are the team's internal incoherence made visible. You can't fix that by cutting features; you have to fix it by aligning vision first. The absurd part: declaring that features are irrelevant until vision is aligned. The insight: you might relaunch with 10 features if the team is aligned, or fail with 3 features if they're not.

---

## Perverse Excellence as Feature Signal

* **Deliberately break or hide 12 of the 15 features: make the UI ugly, slow the feature load times to 5 seconds, remove all promotional push notifications for them, hide them in a "legacy features" submenu.** Keep three features accessible, fast, and promoted. Run this for two weeks and measure retention and feature engagement. The absurdity: sabotaging your own product. The insight: user behavior under adversity reveals actual loyalty. If users dig through a "legacy" submenu to find a feature, they genuinely need it. If they abandon a feature the moment you hide it, it was convenience, not value.

* **Make one feature *ritually difficult to use*—add a confirmation screen, require users to solve a CAPTCHA, demand a daily password reset.** If users still use it, it's core. The provocation: friction as a filter. The insight: some behaviors are habitual; some are genuine need. Friction separates them.

* **Deliberately surface errors in all 15 features for three days: race conditions, UI crashes, 404s.** See which features users report bugs on, ask for fixes on, or work around—and which ones they simply abandon. Genuine dependency features generate support tickets; nice-to-haves disappear silently.

---

## Destruction as User Research

* **Launch a radical experiment: relaunch as a single-feature app—just the workout tracker—and promote it as the "focused version."** Ship it publicly with transparent messaging: "We're testing radical simplicity. This version has *only* workouts." Measure 30-day retention and session length. Then, every two weeks, add the one feature that users request most loudly (in comments, support, reviews, social media). Chart the order in which features return. The absurdity is publicly shipping a stripped product. The insight: you'll get a ranked list of user demand that no survey or focus group can match. The first three features that claw back to the top become your relaunch feature set.

* **Use social media listening: monitor what users say they miss *after* you announce the shutdown.** Scrape tweets, Reddit posts, App Store reviews saying "I can't believe they removed X." The features that generate spontaneous public mourning are core. The features that no one mentions were noise. The insight: users only vocalize loss for things they actually value.

* **Run a "feature bounty" where users can vote with real money (via a Kickstarter-style model) to restore removed features.** The top 3-4 features that gather the most backer funding become your relaunch target. You'll also generate PR, goodwill, and pre-launch excitement. The absurdity is making users pay for the privilege of influencing the product roadmap. The insight: willingness-to-fund is a pure signal of value.

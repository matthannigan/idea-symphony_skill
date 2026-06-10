---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "01_diagnosing-the-real-problem"
persona: "The Devil's Advocate"
---

# Diagnosing the Real Problem - The Devil's Advocate

---

## Misattributed Failure

* **The survivors are lying to you.** The users who reported "overwhelming" and "jack of all trades" are the 8% who retained — they formed enough of an opinion to articulate it. The 92% who churned silently might have left because they opened the app once, did one workout, got one push notification, and decided a dedicated workout tracker they already owned was better. Simplification addresses the complainers' problem, not the churners' problem. Consider running exit surveys or App Store review text mining specifically on one-star reviewers who churned quickly to find out whether complexity is even mentioned.

* **47-second sessions could mean the app works, not that it fails.** Have we considered that a fitness app where users log a completed workout in under a minute might be serving its intended function efficiently? The benchmark assumes longer sessions equal more value, but if the core use case is "tap, log, done," then 47 seconds is a success metric, not a failure signal. Before treating session length as damning evidence, define what a healthy session looks like for each feature — logging a meal versus watching a workout video have entirely different expected durations.

* **Value proposition failure masquerading as UX failure.** One potential challenge is that the app entered a market already dominated by Strava, MyFitnessPal, Peloton, and Apple Fitness+, each with years of refinement and large user bases. Users who "don't know where to start" may not be confused by the navigation — they may be confused about why this app exists at all given those alternatives. Simplification cannot manufacture differentiation. Before cutting features, the team needs to answer: what does this app do that a combination of free, better-known apps does not?

* **Retention benchmarks need a comparable cohort.** 8% 30-day retention sounds alarming, but without benchmarking against comparable apps in the fitness category at a similar stage, it is an isolated number. Industry data suggests many fitness apps see 6-10% 30-day retention at the 6-month mark. If the cohort skews toward users acquired through paid install campaigns, the number reflects ad targeting quality as much as product quality. The mitigation is to segment retention by acquisition channel before concluding the product itself is broken.

* **Team burnout may be biasing the diagnosis.** A team of six engineers maintaining 15 features for months is exhausted and wants to cut scope — that's entirely human. One potential challenge is that the "data-driven" case for simplification may be assembled post-hoc to justify a decision the team has already made emotionally. This doesn't make simplification wrong, but it means the diagnostic rigor is likely weaker than it appears. An outside audit of the engagement data, conducted by someone without a stake in cutting features, would make the conclusion far more defensible.

---

## Data Gaps Masking the Real Problem

* **Aggregate retention hides per-feature survival curves.** Have we confirmed that the analytics infrastructure actually tracks which features each retained user touched, in what sequence, and how often? Many mobile apps instrument downloads and DAU but not feature-level funnels. If the team is working from aggregate session data and self-reported surveys, "strip to essentials" is pattern-matching on noise. The mitigation is to spend two to three weeks instruenting feature-level tracking before making any cuts — the data gathered will directly inform which features to keep, not just validate the decision to cut.

* **Gut-call risk compounds when the team is the wrong audience.** The engineers and PM who built all 15 features have opinions about which ones matter — those opinions are inevitably colored by what they found interesting to build, what required the most effort, and what a vocal subset of power users praised in Slack. Without feature-level engagement data, "strip to essentials" defaults to the PM's personal conviction about what the app should have been. That conviction may be right, but calling it data-driven is false comfort. Mitigate by requiring that each proposed "core" feature have an explicit engagement signal — even rough ones like screen time per session or tap counts — before it makes the cut.

* **Absence of data is not evidence that users don't care.** One potential challenge with the "we don't have data, so we'll cut" logic is that it systematically disadvantages features that are hard to instrument. A feature like the recipe library might generate zero trackable interactions yet still be the reason a user renewed their account — they browse it passively, in a Safari webview, outside the tracked session. Cutting features based on available instrumentation rather than actual usage creates a selection bias that could eliminate the app's hidden differentiators. Mitigate by pairing analytics with a targeted user interview sprint before finalizing the cut list.

* **Small passionate user bases are the canary, not the noise.** Features with "small but passionate user bases" — as the brief notes — are exactly the features most likely to reveal genuine product-market fit in a niche. Have we considered that the meditation guide or sleep tracker might have a 40% weekly retention rate within its sub-cohort, even if overall retention is 8%? If that sub-cohort exists and the team cuts the feature, they may be discarding the only evidence that any part of the product has found an audience. The data gap here is failure to run retention curves segmented by feature adoption — without that, cutting is flying blind.

---

## Retention Signal Contamination

* **Cross-feature users are not a representative sample of any feature.** The users who stayed 30 days almost certainly touched multiple features, and their retention cannot be attributed to any single one. Have we considered that the app may have retained users through combinations — perhaps the challenge platform plus the social feed together created a social accountability loop that neither feature could create alone? If that's true, stripping features individually destroys the combination without understanding what made it work. The mitigation is to cluster retained users by feature-usage patterns rather than by individual feature adoption before deciding what to cut.

* **Feature interdependency creates false attribution.** One potential challenge is that some features may not drive retention directly but enable other features that do. The friend finder is a weak standalone feature — but without it, the challenge platform has no opponents and the social feed has no audience. Remove the friend finder and you do not simply lose the friend finder's retention contribution; you may collapse the social graph that made other features worth using. Mapping feature dependency chains — even informally — before the cut list is finalized would surface these hidden load-bearing features.

* **The 8% may be retained by features slated for removal.** If the team's instinct is to keep the workout tracker as the core and cut the social features, they need to verify that the 8% who stayed are not disproportionately the users who came for the social features. Cutting what retains your existing users, even a small group, accelerates churn to near zero — a dangerous outcome with 8 months of runway. The mitigation is to survey current retained users on a single question: "If we kept only one feature, which would it be?" Even a rough signal here is better than assuming the answer.

* **Short sessions and low DAU/MAU may point to a notification problem, not a feature problem.** Have we considered that a 2% DAU/MAU ratio might reflect push notification fatigue rather than low product value? An app sending notifications about workouts, meals, challenges, friends, and marketplace promotions simultaneously trains users to ignore all notifications. A user who valued the workout tracker but muted all notifications would look identical in the data to a user who churned. Turning off all notifications for a cohort and measuring organic open rates would disambiguate this signal before the team invests in a full relaunch.

* **Relaunch as a new product risks abandoning whatever weak signal exists.** A clean relaunch effectively resets retention to zero while incurring migration cost, rebranding cost, and the uncertainty of starting fresh in an already-crowded market. One potential challenge is that the 8% retained users, however few, represent a real audience with known acquisition cost. Destroying their experience to chase a hypothetical cleaner product is a bet with poor expected value if the team has not yet isolated which features those users actually value. An incremental simplification — progressively hiding features while monitoring retention impact — would preserve optionality and generate real data, at the cost of moving more slowly.

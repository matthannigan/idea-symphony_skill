---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "03_locating-the-true-core"
persona: "The Pragmatist"
---

# Locating the True Core - The Pragmatist

---

## Why Users Actually Opened It / Peak-Experience Session

* **Pull your event logs for those 47-second sessions now.** Segment by first action taken — did users tap "Log Workout," swipe into the feed, or open the challenge tab? The action taken in second one through ten reveals the intent that drove the download. This is a one-day analytics task, not a research project.

* **Cross-reference the "energized feedback" with in-session behavior.** Filter your App Store and support channel reviews for positive language, then match those user IDs to session recordings or event trails. Even a sample of 20-30 matched pairs will show you what the "alive" moment looks like behaviorally — a specific screen, a specific tap sequence.

* **A 47-second average masks a bimodal distribution.** A practical approach is to bucket sessions: under 20 seconds (bounce), 20-90 seconds (one interaction), and 90+ seconds (engaged). The 90+ bucket is your signal pool. What percentage of your 180K downloads ever reached the 90-second mark, and what were they doing? That cohort, not the average, tells you what works.

* **Build a quick event funnel around your five most-used screens.** You probably have analytics instrumented already — pull the top five screens by unique visitors and see which ones have the highest return visit rate within 48 hours. Return rate to a specific screen is a proxy for "this felt useful." That screen is a candidate for your core.

* **Don't wait on a full research study.** A practical approach is to field five 20-minute user interviews this week with users who have logged at least three sessions. Ask them to walk you through the last time the app felt useful. That's enough to form a hypothesis you can validate with quantitative data.

---

## Retention Bright Spot

* **The 8% retention cohort is your most actionable data asset.** Pull their behavioral profile immediately: which features did they use in their first session, which features do they return to most consistently, and what's their average session length compared to the 92% who churned. The difference between those two groups is your core product brief.

* **Look for the feature combination, not the single feature.** A practical approach might be identifying whether retained users cluster around pairs of features used together — e.g., workout logging plus the social feed — rather than any single screen. If retained users consistently combine two features, your MVP needs both, not one.

* **Set up a cohort comparison in your existing analytics tool this week.** Compare retained vs. churned users on feature adoption rates for each of the 15 features. Sort by the largest gap. The features where retained users are 3x or 5x more likely to engage than churned users are the features that actually drive retention. This analysis takes two hours, not two weeks.

* **Treat the 8% retention cohort as your design-test panel.** Before cutting any feature, run a five-question survey to these users asking which two or three things they'd miss most if the app disappeared. Their answers prioritized by frequency give you a defensible shortlist for what to keep — and a credible story to tell your team about why.

* **Map retained users' onboarding path.** If your onboarding flow routes new users through different feature introductions, check whether retained users disproportionately encountered a specific feature first. A practical fix to retention might be as simple as changing what new users see in session one — before you cut anything at all.

---

## Features as Proxies for Jobs-to-Be-Done

* **Run a jobs-to-be-done clustering exercise in a single afternoon.** List all 15 features and, for each one, write one sentence: "Users do this when they want to ___." Group by the verb and the underlying want. You'll likely find three to four clusters — tracking progress, staying accountable, finding motivation, connecting with others. This framing tells you which features are redundant substitutes and which serve genuinely distinct jobs.

* **Your 2% DAU/MAU daily users are doing a specific job.** Pull that cohort's feature usage for the last 30 days. If they're disproportionately using two or three features on every daily visit, those features are serving a daily job — something habitual and intrinsic. That's your core. Features used weekly or monthly are serving episodic jobs, which are harder to build a daily-open habit around.

* **To make the jobs framing actionable, assign each feature to exactly one job.** When two features map to the same job, you have redundancy to eliminate. When a feature maps to a job that none of your retained users seem to have, you have a feature that addressed a hypothetical demand rather than a real one. This exercise typically reduces 15 features to three or four surviving jobs within a 90-minute team workshop.

* **The jobs framing changes your retention hypothesis.** If retained users are performing a "track and reflect on progress" job, your MVP needs to nail logging and history visualization — not the social feed. Reframing cuts around jobs rather than feature names prevents you from accidentally keeping a low-engagement feature because it's technically well-built.

* **Use the daily cohort's behavior to test the jobs hypothesis before building anything.** If your hypothesis is "the core job is workout logging," check whether daily users log workouts at a higher rate than weekly users. If the correlation is strong, you have evidence. If daily users are actually using the social feed more than the workout log, revise the hypothesis. This takes one analytics query, not a research sprint.

---

## The "Social Fitness" Assumption

* **Check your acquisition channels against social feature adoption.** If most of your 180K downloads came from fitness influencers, Reddit fitness communities, or app-store search for "workout tracker," users arrived with a fitness intent, not a social intent. If they found you through "meet fitness friends" or "fitness social network" keywords, the social assumption has some acquisition-side support. This is a two-hour audit of your marketing data.

* **A practical diagnostic: compare social feature adoption rates against feature-specific retention lift.** If users who engage with the social feed retain at 12% vs. 8% overall, social features are contributing to retention. If social feature users retain at 7%, the social layer is not driving stickiness — and may be adding cognitive load that hurts it. Pull this data before making any strategic assumption about the social layer.

* **To test whether social was team-initiated, document the decision trail.** Ask each team member who championed the social feed to describe the user evidence they had when the feature was scoped. If the answer is "we assumed it would drive engagement" rather than "users told us they wanted to share workouts," you have your answer. This is a 30-minute retrospective, not a research project.

* **The social layer may be conflating two distinct user jobs.** Accountability (sharing progress with a small trusted group) and discovery (finding workout inspiration from strangers) are different jobs requiring different UX. If your social feed tries to do both, it likely does neither well. A practical simplification: decide which social job, if either, your data supports — then build only that one, or cut both.

* **Give the social assumption a three-month test before cutting it permanently.** A practical approach is to isolate the social feed from the rest of the app in a feature flag, then run a 60-day holdout: one group sees the social feed, one group doesn't. Measure 30-day retention for both. If the holdout group retains as well or better, the social layer is not a core differentiator and can be safely cut in the relaunch.

---

## Single Irreplaceable Moment

* **Don't start with the emotional question — start with the behavioral one.** The irreplaceable moment reveals itself in your data before it reveals itself in interviews. Pull the event that has the highest correlation with a second session within 48 hours. That event — completing a first workout log, receiving a first social reaction, hitting a streak milestone — is the moment that made users feel "this is for me." Name it before you theorize about the emotion behind it.

* **A practical approach to the "irreplaceable moment" question is to run a structured exit survey.** Send a five-question in-app survey to users who are showing churn signals (no session in 14 days). One question: "What would have to be true about this app for you to open it every day?" The answers cluster around a feeling — accountability, progress visibility, community. Those clusters point directly to the moment you need to reliably create.

* **Frame the irreplaceable moment as a product spec, not a brand promise.** Once you hypothesize the moment — say, "the satisfaction of seeing a completed workout logged cleanly in under 30 seconds" — write it as a testable acceptance criterion. Every feature that makes that moment faster, cleaner, or more satisfying stays. Every feature that adds steps between opening the app and that moment is a cut candidate.

* **Test whether the moment is currently achievable.** Time yourself completing what you believe is the core moment from a cold app launch. If it takes more than 90 seconds, navigating more than two screens, or requires you to remember where a feature lives, the moment is buried. A focused MVP should deliver the irreplaceable moment within 30 seconds of opening the app. That's your benchmark for the simplified UX.

* **The 180K downloads are a signal about the feeling people were seeking, not the feature they wanted.** A practical way to extract that signal: run a 10-person interview study asking users what they imagined their life looking like after three months of using this app. The consistent image they describe — "I'd feel like a consistent athlete," "I'd feel accountable to a community" — is the irreplaceable moment. Build one product that reliably delivers that image, and cut everything that doesn't directly serve it.

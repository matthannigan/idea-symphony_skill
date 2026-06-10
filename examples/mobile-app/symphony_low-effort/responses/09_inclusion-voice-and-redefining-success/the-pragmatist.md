---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "09_inclusion-voice-and-redefining-success"
persona: "The Pragmatist"
---

# Inclusion, Voice, and Redefining Success - The Pragmatist

---

## Fitness for Whom

* **Audit your onboarding assumptions first.** Pull the onboarding screens and count every implicit prerequisite: does "log a workout" assume gym access, equipment, or a 45-minute block of time? List each assumption explicitly. That inventory takes half a day and surfaces the narrowing decisions baked into the current design before you make any cuts.

* **Segment the 180K by device and geography as a fast proxy for income.** Users on older Android devices in lower-income zip codes represent a real inclusion signal you already have. If they drop off at the same moment as everyone else, the problem is the navigation — not the content. If they drop off earlier, the app is quietly serving a narrower population than the download numbers suggest.

* **Make one low-equipment variation table part of the MVP scope.** If the simplified core is workout tracking, the minimum viable version should map at least three common exercises to a bodyweight alternative. This isn't scope creep; it's the cost of not designing for a narrow archetype. One engineer, two days, dramatically broader usable audience.

* **A practical approach: define one persona who owns no gym membership and has 20-minute windows.** Use that constraint as a forcing function in every feature decision during the relaunch. Not because they're the only user, but because designing for constraint almost always produces a cleaner, more universal interface.

---

## Notification Overload as a Justice Issue and the Intrinsic-Motivation Question

* **Separate notification reduction from notification elimination.** The minimum feasible step is auditing how many notification paths currently exist in the codebase. If you have 15 features each triggering their own push logic, removing 11 features mechanically reduces the noise problem. Audit first — the solution may be structural, not behavioral.

* **Build a one-week notification moratorium into the relaunch plan.** Ship the simplified app with notifications off by default for the first seven days. Measure organic opens — users who return without a push. That's your intrinsic motivation baseline. It costs nothing to implement and gives you a data point you don't currently have.

* **Distinguish re-engagement pushes from habit-reinforcement pushes in your metrics schema before launch.** Tag each notification type at the database level: "re-engagement" (user hasn't opened in 3+ days) vs. "streak-support" (user opened yesterday). Track downstream 30-day retention separately for each cohort. A practical approach would be to add this tagging during the relaunch build so you don't have to retrofit it later.

* **For users in high-demand contexts, opt-in scheduling is the concrete fix.** A "quiet hours" setting that defaults to 9pm–8am costs one sprint and directly addresses the caregivers and shift workers most harmed by always-on notifications. Make it visible in initial setup, not buried in settings.

* **Test one intrinsic-trigger design before launch.** A completion state — a simple satisfying animation when a workout is logged — costs less than a push notification system and builds intrinsic motivation. Measure whether sessions that end with a completion state have better next-session return rates than sessions that don't. That's a two-week A/B test you can run immediately.

---

## Who Gets to Define Core Value, and Who Has Voice in the Cut

* **Recruit a "confused majority" panel, not power users.** To make this feasible, contact 20 users who downloaded the app, opened it fewer than four times, and then stopped — you have their emails. Offer a $25 gift card for a 30-minute call. Their account of where they got lost is more useful for a simplification decision than any power user's feature wishlist. This is a two-week effort, low cost, high signal.

* **Run a card sort on features, not a survey.** Give participants 15 cards — one per feature — and ask them to keep the three they'd open the app for tomorrow. Sort analysis takes one afternoon. The output is a forced-choice ranking that avoids the "I want everything" survey response problem.

* **Let the data define the cohort before the users do.** Before any user research, segment your active 8% by which single feature they used most. Run the research within each cohort, not across the full user base. This prevents the highest-engagement power users from dominating the definition of core value while the confused majority is silent.

* **Present the cut decision to users as a choice, not an announcement.** A practical version: send a "we're simplifying" email with a two-question survey — "what would you keep?" and "what would you miss least?" — before you ship. This doesn't bind the team to the results, but it surfaces whether the proposed cuts will cause churn before they happen, not after. Low cost, advance warning.

---

## The Silent Majority, Barriers to Entry, and Unarticulated Loyalty

* **The first action matters more than the navigation audit.** Query your event logs for what action users took in their first session. If 70% of new users landed on the social feed because it was the default tab, that's a design problem, not a preference signal. The question isn't which tab they opened — it's which tab they would have opened if the app had surfaced the right starting point. A practical approach is to prototype a single-question onboarding: "What do you most want to track?"

* **Build a "feature ghost" report before cutting anything.** For each of the 15 features, pull: (a) number of users who used it at least once, (b) number who used it three or more times, (c) average days between uses. Features with high (c) and moderate (b) may be the invisible infrastructure — things users don't praise but return to on a schedule. This report takes a few hours of SQL and should precede any cut decision.

* **Run a "remove and measure" experiment on your lowest-engagement features first.** Hide the two features with the lowest usage behind a "coming soon" label for two weeks and measure whether anyone complains. A practical starting point: if no one files a support ticket or sends an email asking for them back, you have your answer with zero technical debt incurred.

* **For the 98% who disappeared, the abandonment moment is recoverable data.** Look at session logs for users who opened the app exactly once and never returned. Find the last event they triggered. If most of them hit the navigation tabs without ever completing a single action, the problem is the empty state design, not the feature set. That's a one-sprint fix: better empty states and a guided first action for new users.

---

## Redefining Success Before Cutting

* **Set the target metrics before the feature vote, not after.** A practical approach: have the PM write the "success in 90 days" document before the team discusses which features to keep. If the target is "users who open the app three or more times per week for four consecutive weeks," that metric immediately filters the feature candidates — only features that people would credibly open on a Tuesday evening make the cut.

* **The 47-second session length is your most actionable current metric.** Break it down: what is the minimum time a user needs to complete a meaningful action in each of the 15 features? Any feature where meaningful completion requires more than 47 seconds is currently delivering zero complete experiences to the average session. That narrows the list fast.

* **Design two measurement buckets: comparable and recalibrated.** Comparable metrics — DAU/MAU, 30-day retention — should stay consistent so you can benchmark against your current baseline. Recalibrated metrics — "completed a workout log," "returned on day 3" — are new and specific to the simplified product. Track both from day one. This prevents a false positive where retention looks identical to the old app but for a completely different behavioral reason.

* **Run a single-feature pilot to set the retention baseline before the full relaunch.** Strip the app to its single most-used feature for 500 users via a feature flag. Measure 30-day retention. If it's 8% — same as current — you've confirmed the problem is the core value proposition, not the feature count. If it's 20%, you've confirmed simplification works and have a data point to rally the team around before cutting everything else.

* **The most useful question this week is already answerable.** Pull the list of users who hit 30-day retention and map every feature they used in their first seven days. The intersection of features that appear most often in that cohort's early sessions is your empirical core. One SQL query, no user research required, answers the question with the data you already have.

---

## The Abandonment Moment

* **Reconstruct Marcus's first session from event logs, not imagination.** A practical approach: pull a cohort of users matching his profile — downloaded, opened three times, inactive for 90+ days — and map their average event sequence. The scene where the app lost them is in the data. Common abandonment points are: first push notification received, first empty state encountered, and first navigation to a feature that required account setup they hadn't completed.

* **The moment of loss was probably the home screen.** With six tabs and a hamburger menu, the app's first question to Marcus was effectively "what do you want to do?" without telling him what was possible. A practical fix for the relaunch: one default action, visible on launch, with zero navigation required. "Log a workout" as the home screen, not a feed of strangers' activity.

* **What would have kept Marcus is a completion experience, not more features.** If he logged a workout in his second session and saw a satisfying summary — "3 runs in 2 weeks, you're building a habit" — he might have returned for a third. The relaunch should design a visible "you made progress" state for every core feature. This costs one designer one sprint and addresses the root cause: users who can't see whether the app is working for them.

* **The notification that arrived before his third session probably ended it.** Most mobile app abandonment patterns show a push notification arriving before the user has established a habit as a top-3 churn driver. For Marcus, the practical intervention is: no push notifications until a user has completed three sessions. That threshold-based gate is a two-hour engineering change and likely improves retention more than any feature addition.

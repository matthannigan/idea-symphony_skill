---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "01_diagnosing-the-real-problem"
persona: "The Pragmatist"
---

# Diagnosing the Real Problem - The Pragmatist

---

## What's Actually Broken Here?

* **Start with a retention audit, not a feature count.** Before cutting anything, spend 1 week instrumenting the app to track *which* feature each user session touched, *when* they dropped off, and what their last action was. Compare retention for users who found one specific feature quickly versus those who bounced at onboarding. This costs maybe 40 hours and $0—just log events you probably aren't tracking. You'll know within 5 days whether it's feature overload or a broken discovery mechanism.

* **Run a 2-week micro-survey with recent uninstallers.** Target the 92% who left in the first 30 days. Ask three questions: "What brought you here?" "What did you try first?" "What stopped you?" This gives you evidence-based diagnosis instead of assumption. Cost: $300 in incentives, maybe one PM day of analysis. You'll hear patterns—is it the onboarding, a single missing feature, or just wrong audience?

* **Decompose those 47 seconds.** Heatmaps and session recordings (Fullstory, LogRocket, or even Firebase) show where the cursor goes, where users tap, and where they pause. Replay 50 sessions and you'll see if users are confused by navigation, overwhelmed by notifications, or hitting a blank state. This takes a designer 6 hours to analyze. If 80% fail at the same point, that's your lever.

* **Separate feature scope from execution quality.** One feature done well might drive retention; five features done poorly will always fail. Run a quick internal quality audit: rate each feature 1–5 on polish, performance, and feature completeness. Bet on this: you'll find 8 features at 2/5 and 3 features at 4/5. The 8 are dead weight. The 3 are candidates to double down on.

---

## The 47-Second Abandonment Moment

* **Rebuild the onboarding path as an experiment track.** Don't guess the emotional sequence—measure it. Send 5% of traffic to an alternative first-run that skips the feature showcase and goes straight to the highest-confidence feature (whichever you identify). Track completion rate and first action time. If this variant gets to meaningful user action 3x faster, you've found your diagnosis: the problem is *discovery*, not features. Rollout takes 3 days, data in 1 week.

* **Create a "guided tour" entry point and measure abandonment.** Add one button on the splash screen: "Just get started" that narrows choices to a single core action (e.g., "Log your first workout"). Measure how many users who see this button complete it versus bounce. If 60% complete the action and half of those come back day 2, you've proven it's a decision-paralysis problem. Build time: 2 days. Analysis: 2 days.

* **Shadow users during their 47 seconds.** Schedule 10 live user testing sessions with people who fit your target. Watch them open the app for the first time. Ask them to "find and complete one workout." Don't help. Note exactly where they pause, what they try, and what makes them quit. One phrase will repeat—"I don't know if I..." or "Why is this here?" That phrase is your architectural fix.

* **Test a progressive disclosure flow.** Instead of showing all 15 features at once, imagine a three-screen onboarding: (1) "What's your main goal?" (2) "Here's the core tool for that" (3) "In 30 days, unlock more when you're ready." This transforms 6 tabs into a 1-tab + progressive unlock model. Build a clickable prototype in 2 days. Test with 20 users. If engagement improves, you've diagnosed that users need permission *not* to use all features.

---

## The Absent Voice Problem

* **Analyze app store reviews before they downloaded.** Google Play and iOS reviews from the *current* app are gold. Count mentions of "too complicated," "overwhelming," "where do I start?" versus specific feature complaints. Then check what people say about competitors. If a fitness app with fewer features gets "easy to use" reviews 3x more often, you're solving the right problem. Cost: one person, 4 hours. Insight: the problem is accessibility, not feature presence.

* **Run a pre-launch signup test.** Create a 30-second landing page that says "The essential fitness app: track workouts. That's it." Offer early access. Run ads to your audience. If the conversion rate on this stripped-down pitch is 2x higher than the current "all-in-one" pitch, you've proven that simplicity unlocks a massive segment of people who self-selected out. Budget: $500, timeline: 1 week.

* **Interview former users who lasted 3+ days.** These people didn't quit immediately—they made a deliberate choice to uninstall. Ask what they *would* have kept using it for, and what was the breaking point. This cohort often reveals: "I liked the workout tracker, but the noise from other features made me leave." This is your market validation for a focused product. Timeline: 1 week. Sample size: 15 people gets you 90% confidence.

* **Map feature usage across your 180K installed base.** Use Mixpanel, Amplitude, or even raw Firebase to see adoption curves per feature. Plot the top 5 features by weekly active users. Odds: you'll see a power law—two features used by 40% of people, three features used by 5%, rest below 1%. The people who never engaged with those top-two features are your "absent voice." They downloaded but left because the top-two features weren't visible. This tells you exactly where to focus.

---

## The Feature That Lit People Up

* **Pull cohort data from your analytics in one afternoon.** For each of the 15 features, calculate: first-use-to-return rate, weekly active user rate, and time-in-feature. Rank by engagement slope, not absolute numbers. A feature with 2% of users but 80% day-2 retention is more valuable than a feature with 20% of users and 10% day-2 retention. That's your core. Do this today—it's just SQL or a Mixpanel report.

* **Run a feature prioritization survey with active users.** Ask your 8% of retained users: "Which one feature would you lose sleep over if we removed it?" and "Which feature have you never opened?" Pay close attention to word choice—users who say "I use it *every time*" versus "It's useful sometimes" are telling you about genuine habit-loop formation. Timeline: 1 week. Sample size: 100 responses. Investment: $200 incentive.

* **Reconstruct word-of-mouth by looking at download source.** Segment users by "came from a friend's recommendation" versus "organic store discovery." Which features do the word-of-mouth cohort use most? If your referred users love the workout tracker but ignore the meditation feature, your referral engine is telling you what actually delights people. This is probabilistic evidence of market fit. Time to analyze: 3 hours.

* **Track feature combo usage patterns.** Some users might use workout tracker + challenges, others might use workout tracker + community. Look for clusters. If 40% of retained users follow the pattern (Workout + Challenges) and only 5% follow other patterns, you've found a complementary pair that works. That pair is your foundation. A focused app isn't always one feature—it's the *synergistic pair* that locks people in. This analysis takes 1 analyst, 1 day.

---

## The Overwhelm Moment

* **Test a stripped-down onboarding with Maya's scenario immediately.** Create a high-fidelity mockup where Maya sees *one* primary action on the first screen: "Log your workout" with a prominent button. Everything else is tucked in a menu or absent entirely. Give 20 test users her scenario and measure: (1) How many tap the primary action within 30 seconds? (2) Do they complete a workout log? (3) Do they come back tomorrow? If yes/yes/60%, you've defined your core. Build time: 3 days. Confidence level: high.

* **Define your feature set backward from Maya's "aha moment."** Ask: What's the *minimum* feature set Maya needs to experience that "yes, this is for me" feeling within 60 seconds? Probably: log a single workout, see it appear on a graph or calendar, and get a "great job" notification. Everything else—meal planning, marketplace, meditation—can live in v2. This exercise is a 2-hour whiteboard session with your PM, designer, and one engineer. It forces clarity on your core loop.

* **Build an interactive prototype and test Maya's exact journey.** Create a clickable prototype of the simplified app (Figma with Figma Prototype, or even a screen-by-screen video). Walk through Maya's first 5 minutes step-by-step: download, open, complete one action, see result. Test with 10 people. Time investment: 2 designer days. If 8 of 10 hit the "aha" moment before 90 seconds, you're onto something. If only 2 do, you haven't found your core yet.

* **Run an A/B test on primary action visibility.** Variant A: Current app (6 tabs, hamburger menu). Variant B: Simplified splash with "Log Workout" as the dominant button. Send 20% of new users to B. Measure: time to first meaningful action, day-2 retention, feature discovery rate. If B users get to their first action 4x faster and show 15% higher day-2 retention, you've validated the core feature. Experiment time: 2 weeks.

---

## Misidentifying the Patient

* **Segment your retention data by user source and cohort.** Pull day-30 retention broken down by: campaign source (paid ads, organic store, referral), demographics (age, fitness level), and install date. Bet money that you'll find dramatic variation—maybe referral users show 20% retention while paid search shows 4%. If so, your "8% retention" is a weighted average of mismatched users. Your real target audience might be 40% retention, but you're drowning them in data from wrong-fit users. Timeline: 4 hours of analysis. Bet: this changes your entire strategy.

* **Define your target user narrowly and re-calculate retention.** Instead of "everyone who downloads," filter to: "users aged 25–45 in USA/UK, who listed fitness as an interest, and opened within 7 days of download." Recalculate day-30 retention just for that slice. Odds: it's 2–3x higher than the 8% average. If it is, you've diagnosed the problem: the 15 features aren't wrong for your *real* users—they're noise for the users you don't actually want. This insight rewrites your next 6 months.

* **Analyze the dropout cohort to see if they're even your customer.** For the 92% who left, look at: Did they ever log a workout? Did they ever open the core feature? Or did they open the app, see the feature list, and leave without trying anything? If 70% of leavers never attempted a single action, they didn't find the product unsuitable—they found the value proposition unclear. The solution isn't cutting features; it's fixing the pitch and onboarding. This takes 1 analyst, 2 hours to validate.

* **Run a post-uninstall survey asking "why, exactly?"** When users uninstall, prompt a 3-question survey before they go: (1) "What brought you here?" (2) "Did you try it?" (3) "Would a simpler version with just [feature] interest you?" If 60% of uninstallers say "I never figured out how to use it" but 70% of that group say "Yes, I'd use a workout-tracker-only version," you've proven the diagnosis: it's not that features don't matter; it's that mismatched users are drowning out your signal. Cost: $1000, timeline: 2 weeks, confidence: very high.

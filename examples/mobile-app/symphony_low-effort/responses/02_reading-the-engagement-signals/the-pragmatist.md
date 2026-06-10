---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "02_reading-the-engagement-signals"
persona: "The Pragmatist"
---

# Reading the Engagement Signals - The Pragmatist

---

## The 47-Second Session as Ambiguous Signal

* **Instrument before you interpret.** Add event tracking for the first 10 seconds of each session this sprint: log which of the 15 entry points a user taps first, whether they tap a second one, and whether they exit from the home screen or from within a feature. Two weeks of clean data gives you an abandonment-vs-fulfillment split without guesswork. The engineering lift is one analytics call per screen, well within a single engineer for a week.

* **Build a quick-check hypothesis test.** A practical approach: take any feature suspected of delivering value in under a minute — workout logging a single set, for instance — and instrument a completion event. If 30% of 47-second sessions fire that completion event, you have evidence of fulfillment, not failure. That reframes the metric and sharpens the cut list before you touch a line of production code.

* **Redesign the first screen for one decision, not fifteen.** To make the first 10 seconds measurably better within this quarter, reduce the home screen to a single primary action (the one feature you hypothesize matters most) and hide everything else behind a secondary menu. A/B test it against the current home screen over two weeks. Session length will either extend (users found their feature faster) or not — either way you have directional signal that costs one designer week, not a full relaunch.

* **Separate notification-driven sessions from organic ones.** If push notifications are driving a portion of those 47-second sessions, users may be opening the app, dismissing the notification context, and leaving — which is technically an engagement failure caused by notification design, not product depth. Filter session logs by attribution source this week. If notification-sourced sessions skew shorter, the fix is notification strategy, not feature removal.

---

## 47 Seconds of Truth

* **Scope the single-moment hypothesis before betting on it.** Before re-architecting around a 47-second delivery paradigm, spend two weeks identifying which feature already produces a self-contained, high-value interaction in under a minute. Workout logging a completed set, calorie logging a meal, or logging a meditation session are all candidates. Pull feature-level session data and find the one that correlates with the highest return rate the following day. That feature becomes your proof of concept.

* **A practical starting point: one widget, one tap.** To make this feasible within current resources, build a home-screen widget for the leading candidate feature. A widget that logs "I worked out today" in one tap, with no app launch required, is deliverable in four to six weeks by one iOS/Android engineer each. It validates the one-charged-moment model with zero risk to the existing app, and its DAU signal is cleaner than in-app session length.

* **Use the constraint to write a new brief for the designer.** Give the designer a concrete constraint: design a single screen that delivers complete value in 45 seconds, with no navigation required. This is not a future-state exercise — it is a two-week design sprint output that tests whether the paradigm is viable before committing engineering resources. A Figma prototype costs nothing to user-test with ten current users via a simple Maze or Lyssna study.

* **Sunset the features that cannot meet the bar.** If the 47-second paradigm is the target, any feature that requires more than two taps to reach value fails it automatically. Use that as an objective cut criterion in your backlog grooming this month. It converts a philosophical debate about which features to kill into a measurable test, which makes the team morale problem easier: it is not a judgment call, it is a measurement.

* **Pilot with a power user cohort.** To make this feasible without alienating the full user base, recruit 200 high-frequency users via in-app message this week, offer them early access to a "streamlined mode," and give them the single-feature experience. Measure their 30-day retention against the control group. Eight weeks gives you a retention read before you commit to a full relaunch.

---

## Reward Abandonment

* **Map intentional-lifecycle design to your 8-month runway.** A product designed for a 30-day intensive use cycle is compelling, but it requires a different monetization model — likely upfront purchase or a short subscription rather than perpetual engagement. Before investing in this direction, spend one week validating willingness to pay: survey the 8% who retained through day 30, asking directly whether they would pay $9.99 for a focused 30-day program. If 20%+ say yes, the unit economics are worth modeling against your burn rate.

* **Design the offboarding experience this quarter.** If intentional lifecycle is the direction, the exit experience is a product feature, not an afterthought. A practical starting point: when a user has not opened the app in seven days after a period of daily use, trigger a celebratory "you completed your cycle" push notification and offer them a "save your progress" export. This costs one engineer two weeks to build, and it turns passive churn into an intentional, branded moment that drives word-of-mouth.

* **Reframe the retention metric for the team immediately.** Even before committing to lifecycle design, change the internal success metric from 30-day retention to "program completion rate" — define completion as 20+ sessions in 30 days. Run this calculation against existing data today; it costs nothing. If a meaningful cohort of users already behaves this way, you have evidence to justify the paradigm shift to stakeholders without spending any engineering budget.

* **Pilot a structured 30-day program within the existing app.** To make this feasible without a relaunch, package your best workout content into a named "30-Day Reset Program" with a defined start, daily prompts, and a completion state. Ship it as a new content item, not a new feature — no new navigation required. Measure whether users who enroll in the program complete it at higher rates and refer more users than the baseline. This tests the lifecycle design hypothesis within six weeks.

---

## Session Length and Retention Curve as Diagnostic

* **Run the feature decomposition query this week.** To make this actionable immediately, pull three numbers per feature from your analytics platform: median session length for sessions where that feature was the first screen opened, percentage of users who opened that feature more than once in 30 days, and abandonment rate (opened feature, did not complete any action). If your analytics tooling cannot produce this, instrument it now — this is a two-engineer-day task. You cannot make defensible cut decisions without it.

* **Plot the retention curve by cohort entry point.** A practical approach: segment your last 90 days of new users by which feature they first engaged with, then plot their day-1, day-7, and day-30 retention curves separately. Most analytics tools (Amplitude, Mixpanel, even a SQL query on raw events) can produce this in a day. The feature that produces the steepest curve is your likely core product. This is the analysis your PM should own and present at next week's planning session.

* **Identify the drop-off cliff within the first session.** To distinguish onboarding failure from habit-formation failure, look at where within the first session users stop. If 60% of users never get past the second screen of the app, the problem is onboarding, not product depth — and the fix is a simpler first-run experience, not feature cuts. Pull the funnel from app open to first meaningful action for new users acquired in the last 30 days. This analysis should take two days and sets the priority for the relaunch.

* **Set a decision gate for the cut list.** Once you have feature-level engagement data, use a simple two-axis matrix: feature retention correlation on the vertical axis, engineering maintenance cost on the horizontal. Any feature in the low-retention / high-cost quadrant is cut unconditionally. This makes the decision process defensible to the team and removes the emotional weight from individual features. Build the matrix in a spreadsheet, hold a two-hour team review, and exit with a draft cut list by end of this week.

* **Instrument habit-formation signals, not just sessions.** A practical addition to your analytics this sprint: log whether a user opened the app at the same time of day (within a 90-minute window) on two or more consecutive days. Users who establish a time-based habit have fundamentally different retention curves than those who open randomly. If any feature is disproportionately associated with habit formation, it belongs in the core product regardless of its absolute session count.

---

## 8% Retention Cohort Stratification

* **Segment the retained 8% by feature breadth this week.** Pull a simple count: for each user who hit day 30, how many distinct features did they use? If users who concentrated on one or two features retained at 2x the rate of users who tried five or more, you have empirical evidence for the focus hypothesis. This query runs in a day against existing data — no new instrumentation required. It is the single highest-leverage analysis available before deciding what to cut.

* **Find the first-feature-to-retention correlation.** A practical approach: for each of your 15 features, calculate the day-30 retention rate of users whose first meaningful action was in that feature versus users who started elsewhere. The feature with the highest first-action retention correlation is your strongest candidate for the single default entry point after the reset. This analysis is a one-day SQL task and directly answers which feature earns primacy in the simplified product.

* **Design a concierge onboarding experiment this quarter.** Rather than waiting for full relaunch, recruit 500 new users starting this month into a manually curated onboarding flow: ask one question at sign-up ("What's your primary goal?"), route them to a single feature based on their answer, and suppress all other navigation for their first week. Measure whether this cohort's day-7 retention beats baseline. It requires two weeks of engineering for the routing logic and one week of PM work to design the question-to-feature mapping.

* **Use the passionate minority to validate your core.** The users who retained through day 30 are your best research subjects. Survey them this week with three questions: which feature they used most, what they would miss most if the app simplified, and whether they recommended the app to anyone. Keep it to a 90-second in-app survey. If a single feature dominates all three answers across respondents, you have a directional mandate without needing a full data science engagement. This is actionable in 48 hours.

* **Build retention stratification into your weekly metrics dashboard now.** To make ongoing decisions feasible, add a simple segmentation to your weekly reporting: split DAU/MAU by users who have used 1-2 features versus 3+ features in their lifetime. Track this weekly. If the focused cohort's DAU/MAU is already higher, the trend line will justify the simplification decision to skeptical stakeholders before the relaunch ships. Setup takes one engineer day; the ongoing signal is worth it.

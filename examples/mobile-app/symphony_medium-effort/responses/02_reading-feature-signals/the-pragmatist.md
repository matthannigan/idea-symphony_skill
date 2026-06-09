---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_reading-feature-signals"
persona: "The Pragmatist"
---

# Reading Feature Signals - The Pragmatist

---

## Signal vs. Noise in the Engagement Data

* **Start with the floor data, not the ceiling.** Before digging into frequency or per-session depth, segment users by activation path: which features did new users encounter first, and what was their 24-hour return rate? A feature showing high engagement might only thrive because it's in Tab 1. Run A/B tests that shuffle tab order—if the engagement disappears when the feature moves to Tab 4, you've identified a discoverability problem, not true value. Cost: 1 week. Risk: moderate. Stakeholder: data analyst + product.

* **Define "retention by cohort" with ruthless precision.** The 8% overall retention masks cohort variation. A practical approach: split users by their first-session activation sequence (e.g., "Workout Tracker first" vs. "Social Feed first" vs. "Meal Planner first"), then measure 30-day retention for each. If the "Workout Tracker first" cohort has 15% retention and "Social Feed first" has 3%, that's your signal. Implement a tagging system in one sprint. Timeframe: 2 weeks. High confidence.

* **Map the "active discard" pattern.** For each of the 15 features, count: users who opened it once, users who opened it 2+ times, users who used it last week. If a feature has 8,000 one-time openers but only 200 repeat users, it's a discoverability trap, not a core feature. Create a simple Retention Funnel chart (1-session → 2-sessions → weekly-active) for each feature. This takes a day to query; no false positives. Ownership: analytics.

* **Test the "habit loop inertia" hypothesis directly.** Run a controlled cohort: remove a medium-engagement feature (e.g., Sleep Tracker) for 10% of users for 2 weeks, then restore it. If removing it doesn't change their overall retention or session length, it was dead weight. If retention drops sharply, the feature was a retention engine even if it wasn't the "hero" feature. Cost: minimal; can A/B test within your current architecture. Timeframe: 3 weeks.

---

## Leading Indicators and the 8% Who Stayed

* **Profile the retained 8% first, before chasing leading indicators.** A practical starting point: export the user IDs of your 30-day retained cohort, tag them in your analytics tool, and compare their first-session behavior to churned users. Did they visit Feature X on Day 1? Did they enable notifications? How many tabs did they visit? Did they spend more than 60 seconds in the app? These aren't leading indicators—they're the pattern itself. Once you see the pattern (e.g., "All retained users enabled notifications and visited Workout Tracker on Day 1"), you have your hypothesis. Timeline: 3 days.

* **Measure Day 1 feature adoption order, not just engagement depth.** Users who open Workout Tracker, skip Social Feed, and leave are different from users who open everything. Build a simple feature-access heatmap for Day 1: which features did retained users open, and in what sequence? The sequence matters. If all 8% of retained users follow the path Workout → Profile → Skip Feed → Leave, that's a leading indicator. If their patterns are random, engagement depth isn't your early signal. Cost: 1 sprint to implement telemetry; ROI: very high. Ownership: engineering + analytics.

* **Find the "stickiness threshold" in early sessions.** Don't chase overall retention—look for the moment a user became sticky. Among your 8% retained users, how many achieved a "meaningful session" (5+ minutes, 3+ features, or 1+ completed action) on Day 1? Compare that to the 92% who churned. If 70% of retained users hit this threshold on Day 1 and only 5% of churned users did, that's a leading indicator. Build a simple calculator: "Users Hitting Day-1 Stickiness Threshold." If it predicts retention at 80%+ accuracy, you've found your early warning system. Timeframe: 1 sprint.

* **Measure feature-dependency paths, not individual features.** Among the 8% retained, is there a sequence dependency (e.g., users must complete a profile before they engage with the social feed)? A practical test: look at first-session feature access logs for all three groups—early churners (< 1 day), mid-churn (1-7 days), and retained (30-day). If retained users consistently follow Feature A → Feature B → Feature C and churners skip Feature A, then Feature A is a leading indicator. This isn't about feature popularity; it's about feature sequencing. Cost: analytics query. ROI: directly informs relaunch onboarding.

---

## The Urban Planning "Desire Paths" Principle

* **Map session flows as explicit user paths, not aggregate metrics.** A practical approach: export the last 7 days of session logs and visualize them as actual user journeys (e.g., "User opened app → Tapped Workout Tab → Viewed 1 workout → Left app"). Plot these as flow diagrams, not tables. You'll see that 60% of sessions follow one or two tight corridors (e.g., Open → Workout → Browse → Exit) while 40% are random tab-bouncing. The tight corridors are your desire paths. The ones with >50% of all sessions are load-bearing. Cost: 1 day to script and visualize. Ownership: analytics + PM.

* **Identify the "exit velocity" feature—what users are trying to reach before giving up.** In your 47-second average session, what's the last tab users tap before they leave? If 40% of sessions end after tapping Workout Tracker and leaving, that's your corridor. If 40% end after 3 random tabs with no clear pattern, you have discoverability chaos. A practical query: "Among sessions that lasted < 60 seconds, what was the final feature accessed?" Group by feature. If one feature accounts for 35%+ of short-session endings, users are trying to get there and leaving when they do (or fail to). That's your signal to isolate that feature.

* **Break the 47-second average into cohorts: fast-exits vs. task-completes.** Not all short sessions are the same. Some users might be leaving because they completed a task quickly (good signal), while others are giving up out of frustration. Practical split: Compare sessions where users accessed only 1 feature vs. sessions where they bounced through 5+ features before exiting. If the 1-feature path (e.g., "Open Workout Tracker, view a specific workout, leave") is 30% of sessions but the 5+ bounces are 40%, you have a clarity problem, not a product problem. The desire path might be clear; the app just buries it. Cost: 1 analytics sprint.

* **Test the "desire path" hypothesis with a simplified nav prototype.** If you hypothesize that users want Workout Tracker → Profile → Social Feed (in that order) with everything else hidden, build a low-fidelity clickable prototype with only those tabs. A/B test it with 5% of new users for 2 weeks. Measure session length and Day-1-to-Day-7 retention. If removing clutter increases both, you've validated the desire path. If session length stays at 47 seconds, the problem isn't navigation; it's feature execution. Cost: 2 weeks, high confidence, low risk. Ownership: designer + PM + one engineer.

---

**Responses generated:** 4 responses per question, 3 questions = 12 distinct Pragmatist recommendations
**Total word count range:** 50–150 words per response
**Variation factors:** Implementation scope (query vs. prototype), risk profile (low/moderate), timeframe (1 day to 3 weeks), stakeholder ownership

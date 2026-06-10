---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "11_defining-success-for-the-simplified-product"
persona: "The Pragmatist"
---

# Defining Success for the Simplified Product - The Pragmatist

---

## Metric Substitution Risk: Set Baseline-Derived Targets with Notification Controls

* **Summary.** Start with a 90-day notification moratorium before measuring any engagement metrics. Measure baseline daily active users without push notifications for 60 days post-launch to establish the true intrinsic engagement floor. Then set performance gates: if DAU drops below 3% (a 62% decline from current 8%), the hypothesis is falsified and needs immediate pivot. Separate "manipulation-proof" metrics (weekly return rate via in-app cues only) from "vulnerable" ones (session count). Track which features drive retention weekly; cut any underperforming by day 45.

---

## The Focused Product as Smaller Failure: Validate Feature Viability Before Launch

* **Summary.** Before the relaunch, conduct a 2-week user study with your most engaged 200 users: ask which of the current 15 features they've used in the past month, which drove actual fitness progress, and which they'd abandon guilt-free. If fewer than 3 features show usage and measurable impact, the simplification won't fix a deeper problem—the fitness behavior itself may not be sticking. Identify the one feature with highest weekly return rate first; build the relaunch around that, and measure whether you can double its retention. If that feature alone can't sustain 8%+ retention, rethink the entire category.

---

## Notification Dependency Baseline: Measure Intrinsic Engagement Early

* **Summary.** Cut all push notifications on day 1 of the relaunch; measure the impact on DAU/session frequency for 7 days. This reveals the true engagement ceiling you're building from. Practically, design the simplified app's core interaction to function without notifications: in-app reminders, habit-stack integration, or calendar widgets that work offline. If the baseline DAU without notifications drops below 2%, focus the relaunch on app-specific value (e.g., workout logging with real-time form feedback) rather than social streaks or challenge rankings. Expect iOS and Android notification permission rates to diverge significantly; plan for 30-40% of users blocking notifications on day 1.

---

## User-Experienced Success: Measure Job Completion and Emotional Feedback

* **Summary.** A practical approach might be to log one simple metric: "Did the user complete the primary action they came to do?" For a fitness app, that's logging a workout or checking a workout plan, not opening the app. Add a 1-question exit survey on 10% of session exits: "Did this app help you with your fitness goal today?" Track yes/no weekly. This is cheaper than retention cohort analysis and directionally actionable. If 65%+ of users answer yes, you've validated the core value. If not, you've isolated which feature isn't delivering on its promise. Combine with NPS for users who return within 7 days.

---

## Minimum Intervention for Fitness Outcome: Start with Behavior Logging

* **Summary.** Break down each of the 15 features to their minimal interaction: a 30-second workout log, a 2-minute meal entry, a weekly progress check-in. Run a 3-week internal test: which single interaction drives the highest likelihood that a user returns within 3 days? Build the relaunch around that interaction plus one complementary feature (e.g., progress visualization). Cut or stub everything else. This is implementable in 6-8 weeks with your 6-person engineering team. Measure retention on the 2-feature MVP at 14 days; if it exceeds the current 8%, you've found your foundation.

---

## Retention as the Wrong Frame: Define Sustainable Engagement Over Time

* **Summary.** Pragmatically, 30-day retention is useful as a milestone, but set a parallel success metric: "weekly active users among those who haven't uninstalled." Fitness behavior is seasonal and cyclical—expect 60% of users to lapse in months 2-4, then resurface in January. Instead of fighting that, design the relaunch to welcome lapsed users back: a re-engagement email offering a 7-day reset challenge, not guilt. Track cohort monthly recurrence rates (% returning after 30-day gap) rather than only retention. If 40% of lapsed users return by day 60, the product is sustainable even at lower day-30 retention. This requires tracking differently, but aligns success with realistic user behavior.

---

## The App Designed to Be Forgotten: Redefine Success as Trust and Minimal Friction

* **Summary.** This is pragmatically viable if you measure it. Stop tracking session length entirely; instead track: Did the user complete their intended action in the time they expected? Time to workout log (target: under 60 seconds). Time to view next workout (target: under 90 seconds). A 47-second session is fine if a user logged their workout and left. Design the relaunch to load the three most-likely-needed features on first screen with no more than 2 taps to core actions. Add a weekly in-app recap (no notifications) that users can opt into. Measure success as: "% of weekly active users who rate the app as trustworthy" (simple 1-question survey weekly). If 70% of engaged users trust it, that's your north star, not DAU/MAU ratios.

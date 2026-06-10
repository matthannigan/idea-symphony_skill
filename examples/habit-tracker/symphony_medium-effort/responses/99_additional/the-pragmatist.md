---
project-name: "Modern Habit Tracker Web App"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/habit-tracker/med"
date: 2026-04-22
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "99_additional"
persona: "The Pragmatist"
---

# Additional Questions — The Pragmatist

---

## Maintenance Vs. Use

* **Build a data recalibration pipeline that runs nightly and triggers alerts on drift.** The equivalent "resurfacing" is notification timing and habit suggestion freshness. Create a scheduled job that: (1) analyzes each user's check-in patterns from the last 7 days, (2) recalculates optimal notification timing based on when they actually check in (not when they claim they will), (3) flags habits showing engagement drift (completion rate drop >20% week-over-week), (4) auto-adjusts suggestion algorithms to surface habits the user is neglecting. Cost: one background worker, minimal database load. Without this, notification timing calcifies after onboarding, users disengage, and the app feels stale.

* **Implement a lightweight schema drift detector to catch database performance leaks before users notice.** As the database grows, queries that ran fast on 1,000 users slow down on 100,000. Create monthly reports showing: (1) slowest queries (find the check-in and streak-fetch queries that power the main UI), (2) index utilization rates, (3) row-count growth by table (habits, check-ins, notifications). When 95th percentile query time hits 500ms, add an index or denormalize. This sounds boring, but it's the difference between a responsive app and one that lags after month 3 of scaling. Cost: one dashboard query, zero development time. Skip this and you'll burn 2 weeks firefighting performance later.

* **Version the habit suggestion algorithm separately from the app release cycle.** Notification timing and suggestion freshness are configuration, not code. Build a "suggestion recipes" file that includes: (a) the weights for which habits to suggest to which user personas (new user vs. power user vs. lapsed), (b) the timing for when to suggest a second habit (day 10? day 21?), (c) seasonal adjustments (suggest meditation in Jan; skip running suggestions in July in hot climates). Deploy this file without shipping a new app version. This lets you A/B test suggestion timing with 10% of users while keeping the rest stable. Without versioning suggestions separately, you can't iterate on onboarding without risking a bad release.

* **Track interface load time separately from feature work and establish a <1.5s page load target that's non-negotiable.** Create a synthetic monitoring script that measures: (1) time to first habit-list paint, (2) time to interactive (when buttons respond), (3) time to full data load (when all streaks render). Alert if any metric drifts >20% from baseline. Users won't consciously notice a 500ms slowdown, but they'll feel the app is less responsive and open it less often. This is the "invisible resurfacing" that happens in the background — it's not a feature, but it's table stakes for the interface staying frictionless.

* **Create a "known friction points" triage list that lives in your issue tracker, separate from feature work.** Maintenance is easier when it's visible and prioritized. After each weekly data review, log issues like: "notification sends lag >2 seconds for users with 5+ habits — measure Saturday load," or "habit-suggestion flow takes 4 steps instead of 2 for power users with 8+ habits." These aren't bugs; they're performance and friction regressions. Reserve 15% of each sprint to fix the top 3 friction items before they compound into churn. Without explicit triage, maintenance gets postponed indefinitely and then hits you as an urgent refactor.

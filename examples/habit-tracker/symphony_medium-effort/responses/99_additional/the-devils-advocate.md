---
project-name: "Modern Habit Tracker Web App"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/habit-tracker/med"
date: 2026-04-22
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "99_additional"
persona: "The Devil's Advocate"
---

# Additional Questions — The Devil's Advocate

---

## Maintenance vs. Use: Invisible Resurfacing Work

* **The notifications-decay spiral becomes invisible until churn spikes.** You'll train notification timing to be contextually smart (morning nudge for night-owl users at 6am once, then at 7:30am next week based on their check-in), but this learned-model approach fails when a user's life changes — job switch, infant in the house, seasonal shift. The app keeps optimizing an outdated model, sending notifications at 7:30am to someone who now works nights. Users disable notifications, then don't see habit reminders, then miss streaks. The problem is silent; you won't see it until retention cohorts suddenly drop 30% at a specific change-event. Mitigate this: every 14 days, reset the model to neutral defaults if engagement drops by >30% relative to the user's prior 2-week pattern, and surface a gentle "we've reset your preferences, re-sync your new rhythm" message. Track "notification-model-age" as a metric — high age correlates with churn.

* **Feature-discovery and onboarding become stale as your product evolves.** Your initial onboarding teaches the core 10-second check-in and one habit. Six months later you've added export, weekly recaps, and custom notification profiles. New users still see the old onboarding. Existing users never discover the new features unless they churn and rejoin. Power users stuck in an outdated mental model. The cost is hidden in "engagement plateau" — you optimize the core loop but miss that the mid-session users are under-utilizing the product because their knowledge is frozen in time. Mitigation: tag features by "discovery-window" and periodically show contextual discovery prompts. Example: "It's been 30 days since you set up your habits — we've added weekly recap emails that show your progress patterns. Want to try it?" Only show this to users who've hit day-30 stability, not during the fragile first week.

* **The data-recalibration debt accrues as you collect behavioral data.** You'll infer user's optimal check-in time, favorite habit archetype, preferred streak-visibility level. This inference is correct for the user's first 30 days of life-context. But you're building long-term data stores for a year, a decade of use. Users age, life priorities shift, habits migrate from "forced discipline" to "background ritual." The model you trained to predict what this 28-year-old entry-level designer wants becomes stale when they're 30, promoted, starting a family. The inference is stale but persistent. Mitigation: create a "refresh your profile" flow every 90 days that's low-friction (three questions: "your habits have evolved, which are still relevant?" "your available time has changed, morning vs evening?" "priority has shifted, from discipline to ritual, or the reverse?"). Store profile-epoch metadata. After 18 months, reset the model completely and let the user build fresh.

* **The infrastructure-scaling invisibility is the most dangerous.** You'll build for 1,000 users with a simple PostgreSQL backend. Everything works. At 5,000 users, query response degrades; you shard the database. At 20,000 users, multi-region replication becomes essential. But these scaling interventions happen invisibly to users. What they see is: sometimes the app is slow, sometimes streaks are miscalculated because of race conditions in the distributed system, sometimes notifications arrive late. You can't add features for six weeks because you're in "platform stability debt." The symptom is "we're shipping slower" without a clear explanation. Mitigation: establish SLO (service level objectives) for core operations from day one: check-in response <200ms, notification delivery within 5 minutes, streak consistency 99.99%. Test these continuously. When you hit a wall, you know it's infrastructure before it hits users as latency.

* **Habit-definition drift becomes a UX tax.** Today you define a habit as "name, frequency, streak-tracking option." Users begin using the app, and requests pile in: "can I track multiple instances per day?" "Can I weight some days more than others?" "Can habits overlap in time?" You add features that expand the definition. New users see the full model and are confused by options. Old users have habits defined in the simple model and don't see why they should evolve them. Your schema becomes a messy hybrid. Mitigation: treat habit-definition as a versioned schema. Users get onboarded to a "definition era" (v1: name + frequency; v2: instances + weighting). Cohort-track which definition-era each user inhabits. When v2 stabilizes, offer v1 users an "easy upgrade" flow. Accept that v1 users may never upgrade — they're fine — and maintain backward compatibility in your API and display logic.

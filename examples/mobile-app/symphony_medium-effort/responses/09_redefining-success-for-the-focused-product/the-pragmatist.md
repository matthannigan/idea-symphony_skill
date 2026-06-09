---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "09_redefining-success-for-the-focused-product"
persona: "The Pragmatist"
---

# Redefining Success for the Focused Product — The Pragmatist

---

## Native Metrics for a Focused Product

* **Cohort-based retention as the baseline.** Track 7-day, 30-day, and 90-day retention separately by acquisition cohort (pre-relaunch dormant vs. post-relaunch new users). The 8% figure includes dead weight—don't rationalize performance until you can measure retention of intentional users acquired after the relaunch. This isolates signal from the 15-feature noise and gives the team a fresh baseline to defend.

* **Session depth over frequency.** Instead of DAU/MAU, measure completed-action rate per session (e.g., "sessions where user completed a workout log") paired with median session duration. A focused product should feel intentional—users come, achieve something concrete, leave. If that's 3 minutes with 85% task completion, that's healthier than 5 minutes with 20% completion.

* **Feature-to-retention dependency chain.** Map which specific features appear in retention cohorts. If you find that 70% of retained users engage with workout tracking and only 8% touch the marketplace, the north star isn't "daily active users" but "weekly workout loggers." Operationalize it: "X% of users log a workout in their first week." Everything else is secondary.

* **The dormancy threshold.** Assume 60–75% of the 180K are effectively gone; calculate the break-even acquisition cost for new users at your target retention rate and remaining runway. If retention stabilizes at 15% 30-day and your LTV doesn't justify customer acquisition, that's a signal to focus ruthlessly on reducing churn among active users, not chasing growth numbers.

* **Honest relaunch framing.** Communicate to stakeholders upfront: "We're measuring success as 'users who return weekly to complete their core activity' (target: 25% 30-day retention), not 'total users.'" This prevents post-hoc metric gymnastics and gives the team permission to cut anything that doesn't support that north star.

---

## What Success Feels Like from the User Side

* **The clarity moment.** A user lands on the app and within 15 seconds can see, without reading, what the app does and why they'd use it today. No navigation puzzle, no feature menu. They see one clear action: "Log your workout" or "See your progress"—something immediate and resonant. That moment of comprehension is success, not a conversion funnel metric.

* **The momentum spiral.** They complete one action in 90 seconds. The app responds with a small, genuine win—not an artificial achievement badge, but a real insight: "You're 15% stronger than two weeks ago" or "Three friends logged a workout today too." That's the sensation of a product that understands them, not one trying to be 15 things. They leave feeling capable, not overwhelmed.

* **The relief of scope.** When a user realizes the app does *one thing well* instead of 15 things poorly, there's audible relief. Success is the moment they stop asking "where do I do X?" because the app is small enough to explore completely. That mental model clarity is worth more than any engagement metric.

* **The return loop.** A user opens the app a week later because they want that feeling again—the clarity, the momentum, the simplicity. They're not opening it because of a push notification or FOMO; they're opening it because the core ritual actually changed their behavior. That repeat choice, made consciously, is real success.

---

## The Relaunch's First Three Sessions

* **Session 1: Orientation through doing.** User lands, sees one clear focal point (e.g., "Start a workout"), taps it, completes one action in under two minutes. The arc: *confusion → immediate action → small win*. They should leave thinking "this is simple," not "where are all the features?" No tutorials, no feature tour—let the simplicity speak. Success is they understand what to do without being told.

* **Session 2: The power moment.** They return because they remember that small win. Now the app shows them something they didn't input—a pattern, a comparison, a reflection. They see progress or community data that makes the core action feel valuable. Arc: *intent → action → insight → motivation to continue*. This session should answer "why does this matter?" Aim for 3–4 minutes, ending with them eager to create more data.

* **Session 3: The habit formation cue.** User opens the app at a natural moment in their day (morning, post-workout, evening). The app anticipates this with a gentle prompt—"Log your session?" or "See your week?"—that feels helpful, not intrusive. Arc: *habit trigger → effortless action → reward*. By the third session, the rhythm should feel almost automatic, not cognitive friction. This is where the relaunch either becomes a daily ritual or gets shelved.

* **Emotional trajectory across three sessions.** Session 1: *curiosity → relief*. Session 2: *intention → achievement*. Session 3: *habit → belonging*. Each session should feel shorter and more frictionless than the last, not longer. Measure success as: Did users complete the intended action in each session without help?

---

## Making It Harder on Purpose

* **The 45-second thesis—it's radical.** If the core value is a fast, sharp workout log, design explicitly for completion in one session. That means no social feed, no cross-sell, no "while you're here" distractions. A user taps, logs 3–4 data points (exercise, reps, notes), sees their streak, and leaves. That's the product. If current session length averages 47 seconds, you're already close—stop chasing engagement metrics and optimize for precision instead.

* **Friction as feature, not bug.** Require users to be intentional: make logging require three taps instead of one, but each tap surfaces a choice that matters (exercise type, effort level, notes). The friction creates mindfulness. Compare this to the current model, where users drop off because nothing feels worth the effort to navigate. Counterintuitive: harder, simpler flows can feel *less* burdensome than feature-rich ones.

* **Constraint-driven design.** If the relaunch has 3 core features, design the UI so the fourth feature is impossible to add. No "advanced settings," no "premium tier." Every pixel is devoted to the core ritual. This forces product discipline and ensures the team can't sneak bloat back in post-launch.

* **Session length as a proxy for healthy behavior.** Test the hypothesis: if a user can log a workout in 45 seconds and feels satisfied, retention is stronger than a user who spends 8 minutes swiping through features and still feels lost. Measure it directly in Week 2 cohorts—is time-on-app predictive of retention, or is speed? If speed predicts stickiness, you've found a new north star.

---

## The App That Disappears

* **The invisible infrastructure play.** The app doesn't replace your workout routine; it *confirms and accelerates* routines you're already doing offline. A runner checks in on Sunday to confirm their weekly mileage, the app shows their average pace trending up, and they leave. The app is a mirror for habits you own, not a dependency you build. Success is users forget the app exists until they need evidence of progress.

* **The data-as-outcome philosophy.** Instead of a feed or gamification, the app collects data and makes one thing visible: progress over time. No comparisons to others, no badges, no challenges. Just: "You've logged 8 more workouts than last month." The app exists to make the invisible visible, then steps back. Users own the meaning; the app provides the metric.

* **Minimal notification footprint.** The app should *never* interrupt. It should be opened, not pushed to. No reminders, no social prompts, no FOMO mechanics. This eliminates the reason users resent most fitness apps—constant noise masquerading as motivation. Users open the app because they have data to log, not because the app demanded their attention.

* **The sustainability constraint.** Design the product so it's maintainable with 2–3 engineers indefinitely. If keeping the app alive requires constant feature work and server scaling, it will bloat again. Simplicity should reduce operational complexity, not just feature count. A focused, boring, stable product is the goal.

---

## The Daily Ritual Test

* **The morning check-in ritual.** A user wakes up, reaches for their phone out of habit, opens the app before coffee. They see: their workout streak (13 days), yesterday's logged session (5km run, 42 minutes), their weekly average (4.2 workouts). They glance at a friend's streak (8 days) and feel a gentle competitive nudge. They close the app. The entire ritual takes 20 seconds. Core features: *personal streak, yesterday's log, weekly average, one friend's progress*. Load-bearing: yes. Everything else: no.

* **The post-workout logging moment.** After a midday class, sweaty and present, the user opens the app. They tap "Log workout," select "Strength," note "Felt strong today," and hit save. The app shows their monthly progress—they've logged 8 sessions this month, up from 5 last month. Small dopamine hit from visible progress. Time: 60 seconds. Core features: *quick-log form, monthly comparison*. The marketplace, the forum, the meal planner—never appear in this story. They're noise to this ritual.

* **The weekly reflection moment.** Friday evening, the user spends 90 seconds reviewing their week: 4 workouts logged, average effort trending up, one friend also logging consistently. They feel accountable and capable. This is where the "social" layer matters—not comparison or competition, but mutual accountability with one trusted person. Core features: *weekly summary, one trusted friend's activity*. The broader social feed would dilute this moment.

* **Backward engineering the product.** The three core features that load-bear this ritual: (1) simple logging with one data point (exercise type) + one feeling point (effort/notes), (2) personal tracking showing streaks and monthly trends, (3) one-friend accountability view. Everything else—marketplace, challenges, feed, forum, meditation, meal planning—is absent. The ritual works *because* the product is narrow. Keep it that way.

---

**Response count**: 20 distinct responses across 6 questions  
**Emphasis**: Feasibility through constraint, metric redesign from first principles, user experience simplification over growth metrics, and concrete ritual-based validation  

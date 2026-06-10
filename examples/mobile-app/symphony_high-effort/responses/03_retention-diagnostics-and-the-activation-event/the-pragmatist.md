---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "03_retention-diagnostics-and-the-activation-event"
persona: "The Pragmatist"
---

# Retention Diagnostics and the Activation Event - The Pragmatist

---

## What 8% Retention Actually Measures, by Cohort and Activation

* **Segment by activation event first.** A practical approach might be to run a quick cohort analysis in your existing analytics stack (Firebase, Mixpanel, whatever you're using) that splits the 180K download base into users who completed at least one core action—logged a workout, created a goal, added a meal—versus those who only browsed. My bet is your true core (users logging workouts) retains at 15-25%, while "just opened the app" sits at 2-3%. This tells you which feature is actually sticky and where to focus the relaunch. Takes 1-2 days of SQL work, costs nothing.

* **Cohort decomposition by acquisition source.** The 8% headline obscures massive variation. Organic search users (likely already motivated by fitness) probably retain better than app-store browsing traffic. To make this actionable, pull day-30 return rates for each traffic source in your last 3 months of data. If organic search retains at 12% and paid social at 4%, you're not redesigning for paid traffic—you're doubling down on organic and rethinking your UA strategy. Clear signal, clear decision.

* **Direct user interviews with the 8% keepers.** Analytics tells you *what* they did; interviews tell you *why*. Schedule 15-minute calls with 20-30 users still active at day 30. Ask: "What problem are you solving?" and "What do you do in the app every time you open it?" You'll hear patterns (log workouts and track streaks, or meal planning with accountability, or social challenges). This is your MVP core. Budget 10 hours of PM time; invaluable.

* **Pragmatic three-tier retention target.** Rather than chase 8% across the board, set differentiated targets: (1) activation completers should hit 25% at day 30; (2) casual browsers acceptable at 5%; (3) power users (weekly+ engagement) should hit 40%+. This removes the anxiety of a single metric and focuses engineering on making the core irresistible rather than trying to convert every downloader. Realistic and measurable.

---

## The 8% Portrait

* **Find them first, then ask.** To make this implementable, identify 5-10 of your 8% users who are genuinely active (opened app in last 7 days, performed an action in last 14 days). Pull their in-app behavior logs: which screens do they visit? How long are their sessions? What features do they interact with? This narrows the portrait. Then schedule brief user tests or calls asking: "Walk me through your last three app sessions. What were you trying to accomplish?" The texture emerges fast.

* **The minimal viable routine.** The 8% likely aren't using 15 features. More likely they've carved out a 1-2 feature routine: "I log my workout, I see my streak, I'm done." Or "I plan my meals for the week, I'm in accountability group chat." That's your unit to build. Extract that routine as a user story, spec it crisply, and ask: "If we kept only this, would you keep using us?" If 80% of your 8% say yes, you've found your core. Eliminates guesswork.

* **Behavioral clustering over demographics.** Don't assume the 8% is one persona. Run a simple cluster analysis on their session patterns: frequency (daily vs weekly), feature mix (workout-focused vs social-focused), session length (long planning sessions vs quick logging). You probably have 3-4 distinct user types within that 8%. Each tells you a different story about which feature combo matters. Pragmatically, you can afford to keep one combo and sunset the others.

---

## Retention Signal in the Wreckage

* **The stubborn minority reveals the core.** If 8% of users are returning despite overwhelming UI, they're not using all 15 features. Start by instrumenting a heat map: which tabs do the 8% visit? How much time do they spend in each feature? You'll likely see 70-80% of their time in 1-2 features. That's not noise; that's signal. A practical next step: disable everything except the top two features for a canary group of 2,000 new users. If they retain at 12-15%, you've found your core. If retention drops, those secondary features were carrying more weight than you thought.

* **Feature co-dependency analysis.** Some users might stay for the "combo meal" of workout logging + social accountability, where removing either kills the value. Run a quick analysis: among your 8% keepers, what features do they use together? If 60% of social accountability users also log workouts, but only 20% of meal-planner users log workouts, the meal-planner is a solitary feature—easier to cut. The workout-social combo is your core. This is measurable, testable, and tells you exactly what to keep.

* **Rapid MVP iteration with the 8%.** A pragmatic approach: build a minimal version with your top 2 features (workout logging + whatever co-dependency matters most), launch it as a closed beta to 500 of your existing 8% users, and measure day-7 and day-30 retention. If you hit 18-20% retention with this simplified version, you've validated the core. If you hit 8% or lower, one of those features isn't actually the driver—it was the *combination* with features you're cutting. You'll learn in 2-3 weeks with 20 users. Iterate from there.

* **Set retention expectation anchored to activation.** Stop measuring raw 30-day retention. Instead, measure: "Of users who completed onboarding + logged their first workout, what % return at day 7 and day 30?" This probably runs 25-35% (better than 8% because you're measuring the motivated core). This becomes your new north star. A practical improvement step: improve onboarding funnel so 40% of all downloaders complete the first workout (not 8%). Suddenly your "8% of 180K" becomes "25% of 72K who activated," and your absolute DAU climbs even if your overall retention percentage looks similar.

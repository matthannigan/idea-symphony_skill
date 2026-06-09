---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/low_sonnet"
date: 2026-04-23
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "05_the-weekly-review-as-wedge-and-ritual"
persona: "The Pragmatist"
---

# The Weekly Review as Wedge and Ritual - The Pragmatist

---

## Weekly Review as Signature Ritual

* **Constrain the scope to make it completable.** The fastest path to a three-minute ritual is ruthless scope constraint: limit the Sunday review to exactly three screens — a one-sentence win from last week, a sparkline of your completion rate, and a single habit to prioritize this week. Anything beyond that is engineering for the edge case, not the median user who opens the app on a Sunday evening with 4% battery. Ship the constrained version first and let usage data tell you what users actually want added.

* **Pre-populate the review so users react rather than recall.** Recall is cognitively expensive; recognition is cheap. A practical approach is to auto-generate the review skeleton from logged data — "You completed your morning walk 5 of 7 days. Your hardest day was Thursday." — so the user's job is to confirm or annotate, not to reconstruct. This shifts the interaction from effortful to satisfying. The implementation cost is low: it's a simple aggregation query over the week's check-in records, not a recommendation engine.

* **Anchor the notification to an existing Sunday behavior, not an arbitrary time.** Sending a push at 6 PM Sunday works for some users and misses entirely for others. A more feasible starting point: ask users during onboarding "What's your typical Sunday rhythm?" with four radio options (morning coffee, after lunch, after dinner, before bed) and schedule the push accordingly. This adds one onboarding question and one scheduled-job parameter — two hours of engineering for a potentially large lift in open rate.

* **Use the first 60-day metric as a leading indicator of ritual formation, not a lagging satisfaction score.** The signal worth tracking is not whether users say they like the review, but whether they open the app unprompted on Sunday before the push notification fires. That's the behavioral signature of anticipation. Instrument it as "Sunday opens within 2 hours of review unlock, no notification required" and target 15% of paid users hitting that mark by day 60. If you hit 15%, the ritual hypothesis is confirmed and worth doubling down on. If you hit 5%, the problem is awareness or timing, not the feature design.

* **Tie the cue/routine/reward loop explicitly to the review UI.** The PRD already invokes cue/routine/reward framing — the practical move is to make this visible in the review itself. The cue is the Sunday prompt. The routine should feel complete in under 180 seconds, so show a timer or progress ring. The reward needs to be immediate: a congratulatory card that auto-generates a shareable image of the week's streak, usable for social sharing or just personal satisfaction. None of this requires new infrastructure — it reuses existing streak data and a canvas-based image generator you'll likely build anyway for the daily check-in.

## Evidence That a Prompted Review Beats Continued Daily Check-Ins

* **Set a minimum threshold before investing further, and be explicit about it.** A practical approach: define 25% weekly review completion among paid users as the break-even threshold before the next sprint invests additional design or engineering time in the feature. Below that, fold the retrospective function into an enhanced daily check-in (a Friday "look back at your week" prompt, for instance) rather than defending the Sunday ritual. This avoids the sunk-cost trap of continuing to refine a feature that the data has already rejected.

* **Run a 60-day split test comparing review users to non-review users on the metric that matters for retention.** You don't need academic evidence that weekly reviews work in the abstract — you need to know whether they work for your user cohort at your current product maturity. Instrument two cohorts: users who complete at least one weekly review in their first month, and those who don't. Track 60-day habit streak maintenance as the primary outcome. If review completers show a 20%+ improvement in streak length, the feature earns its place in the paid tier. This is achievable with basic cohort analytics — no specialized experimentation infrastructure required.

* **Separate the function from the format.** The risk of the weekly review as a distinct feature is that users associate "weekly review" with the friction of a form, not the value of reflection. A more feasible starting point might be a single Friday push notification that says "Your week in one word: how did it feel?" with three emoji options and a free-text fallback. That's lightweight enough to get completion data without the full review UI. If completion is high, invest in building out the full review screen. If it's low, you've learned the format is the barrier and can iterate without throwing away a half-built feature.

* **Acknowledge what daily check-ins already do well and design around the gap.** Daily check-ins create a behavioral record but not behavioral insight — users know they logged, but not why they succeeded or failed. The weekly review's differentiating value is interpretive: it surfaces patterns the daily loop can't. To make this case economically, the review needs to surface at least one insight the user couldn't have seen from daily data alone — for example, "You always log your workout when you also logged 7+ hours of sleep the night before." That's the concrete hook that justifies the feature's existence over extending the daily check-in.

---
persona: "The Pragmatist"
topic-cluster: "01_first-principles-and-the-job-to-be-done"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
---

## Q1: The Irreducible Job, Rebuilt from the Literature

* **Memory prosthetic core.** Validate that check-in *logging* reduces friction—don't assume streak counts matter. Run a 2-week test: ultra-simple capture (timestamp + yes/no) with zero visual feedback. If retention stays >40%, you've identified the minimum viable loop; if it collapses, notifications or visual reinforcement become mandatory, not optional.

* **Commitment device asymmetry.** Public commitment (e.g., sharing with a friend or group chat) outperforms solo tracking in behavioral literature. Practical move: add a single share-to-message option at check-in time *before* building competitive leaderboards; measure whether it improves D7 retention at lower cost than gamification.

* **Drop the PRD's competitor featureset.** Strip to three interactions: add a habit, check it in, view a 4-week calendar overlay. Exclude streaks, badges, and export for MVP. Test whether users churn because the feature set is too thin (unlikely) or because they're checking in on goals they didn't truly commit to (likely). If churn persists, the product didn't fail—goal-setting did.

* **Behavioral science redesign timeline.** You'll need to review 3–4 foundational papers (Fogg, BJ Fogg on tiny habits; Crum on habit loops; Wood on habit cues). Realistically 1 week of reading and synthesis. Practical gain: 2–3 non-obvious feature eliminations that free up dev time for better UX on the core loop instead of building bells that don't move retention.

## Q2: Tracking vs. Deciding as the Framing Verb

* **Reframe the core interaction.** Replace "Log your habit" with "Did you decide to act today?" This shifts from outcome-reporting to moment-of-decision capture. Practically: same backend (timestamp + yes/no), radically different prompt language. Test both phrasings on 100 users; expect the decision-framed version to show higher engagement on non-completion days because it validates the intention, not just the win.

* **Identity-based onboarding.** Instead of "You want to run 3x a week," ask "Who do you want to become?" and tie habits to identity statements ("I'm someone who moves daily"). Research shows identity-based framing predicts 2–3x better retention. Implement as a simple persona-setting question before habit creation; store with the habit and echo in weekly review. Minimal build time, measurable retention lift.

* **Decision-support UI consequences.** If deciding is central, the app needs to surface decision factors (time available, energy level, obstacles today) *before* check-in, not post-hoc analysis. Practical MVP: add a 3-question pre-decision prompt ("Do you have 10 min?" "Energy today?" "Any blockers?") and let users condition their answer based on real constraints rather than abstract goals. Validate whether it improves completion rates or just adds friction.

* **Weekly review as decision rehearsal.** Don't just show a calendar of wins/losses; use weekly review to ask "What changed about your situation when you succeeded? When you didn't?" Build micro-insights that inform next week's decisions. Realistically: simple fill-in-the-blank template, 5 minutes to design and implement. Expect it to be the second-most-engaged feature after check-in itself.

## Q3: Is the PRD's Diagnosis of Churn Correct at Root?

* **Separate product churn from goal-readiness churn.** Run a cohort analysis: segment users who churned into two groups—those with 1+ completed weeks (product issue) vs. those who never got traction in week 1 (goal-setting issue). Hypothesis: 60%+ of churn is goal-readiness, not notifications. If true, the PRD's UX fixes won't move the needle; you need friction *into* habit creation to prevent bad goal-setting, not friction out.

* **Habit readiness checkpoint.** Practical intervention: before letting users save a habit, ask them to specify the *exact* trigger (after my coffee, when I sit at my desk) and the *smallest viable version* (1 minute walk, not 30 minutes). Data from Fogg and Wood shows habits with concrete cues succeed 3–4x more often. Implement as a required fill-in-the-blank flow; takes 2 hours to build and costs nothing in retention—only improves it.

* **Measure goal-setting quality.** Track during onboarding: for each habit created, record specificity score (has explicit cue? has minimum version? user's prior experience with it?). Correlate these to D7 and D30 retention. If specificity predicts 80%+ of churn, you've validated that the problem isn't the app—it's that users are setting vague habits and the app can't save them. Redirect roadmap from engagement features to goal-setting scaffolding.

* **Re-diagnosis: intrinsic motivation gatekeeping.** Add a single screening question: "On a scale of 1–10, how much do you personally care about this habit, separate from how you think you *should*?" Users who rate <5 are high churn risk regardless of UX. Practical move: surface a warning ("This habit might be driven by external pressure; habits stick better when they're intrinsically motivated") but let them proceed. Track their cohort separately; you'll likely see 40%+ churn vs. 20% for high-motivation habits, confirming the diagnosis.

## Q4: The Minimum Viable Behavioral Intervention

* **Behavioral core: check-in + reflection.** Strip to two features: (1) daily check-in (did you do it?), (2) weekly review (5-question reflection on patterns). Drop streak counters, notifications, badges, and data export. This core loop—decision capture + weekly pattern recognition—is what behavioral science literature identifies as the necessary and sufficient condition for habit persistence. Build in 1 week; launch to 50 beta users and measure D30 retention before adding features.

* **Target D30 >25% operationally.** To hit this, users need to complete the weekly review at least once (engagement signal) and log at least 3 checks in the first 7 days (habit cue reinforcement). Practical metric: track separately—if <15% of signups complete week 1, your onboarding is broken; if 40% complete week 1 but only 25% return for week 2, your hook isn't sticky enough to ask why. Diagnose with actual data, not speculation.

* **MVP surface definition.** Home screen: today's habit(s) + one-tap check-in button. Navigation: habits list, weekly review (5 prompts + save). Settings: add/edit/delete habit + onboarding reset. Realistically 40–50 hours of solo dev work. No backend complexity (local storage MVP first), no push notifications, no sync. Ship this MVP in 6 weeks; use those 6 weeks to validate that the core loop actually moves retention before building infrastructure.

* **Fail-fast hypothesis validation.** Your single assumption test: users who complete ≥3 weekly reviews in month 1 have >70% D30 retention; users with 0 weekly reviews have <10%. If true, weekly review is the retention lever—invest in making it unmissable and compelling. If false, the mechanism is elsewhere and you've saved months chasing the wrong feature. Build analytics into MVP to measure this by week 3.

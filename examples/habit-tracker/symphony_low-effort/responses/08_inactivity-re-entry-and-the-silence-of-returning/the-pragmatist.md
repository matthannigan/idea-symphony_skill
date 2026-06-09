---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/low_sonnet"
date: 2026-04-23
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "08_inactivity-re-entry-and-the-silence-of-returning"
persona: "The Pragmatist"
---

# Inactivity, Re-entry, and the Silence of Returning - The Pragmatist

---

## Inactivity as a System State, Not an Event

* **Track inactivity as a state variable with graduated responses.** A practical approach is to store a `last_active_date` and compute `days_inactive` on each session open, then route the user through one of three code paths: 1–3 days absent (normal, no special UI), 4–9 days absent (soft acknowledgment — "Welcome back"), 10+ days absent (re-entry mode: simplified dashboard, one-habit focus prompt). This avoids the binary "inactive/not inactive" trap and is implementable in a single conditional block on the session-load handler.

* **Re-entry mode as a feature flag, not a philosophy.** To make this feasible within a 3-month MVP, implement re-entry mode as a feature-flagged UI variant: same data, different presentation layer. On return after 10+ days, suppress the full habit list and surface only the single highest-priority habit (whichever the user marked as most important at setup). Add a "See all habits" escape hatch. This can ship as a toggle in a config object — one sprint, testable with A/B on a small cohort before committing to the design.

* **Silence works if the app's ambient state is legible.** The no-guilt design goal is achievable without complex re-entry flows if the default dashboard communicates the right things passively. Concretely: show habits as persistent items (not "broken" or "failed"), surface the next scheduled check-in time rather than a missed-days count, and use neutral language ("Last logged: 12 days ago" vs. "12-day streak lost"). These are copy and display-logic changes — no new backend — and they set the right emotional tone without requiring a separate "re-entry experience."

* **Notification minimalism needs a re-entry exception.** The PRD's single morning nudge is appropriate for active users but under-serves the 10-day-absent case. A practical modification: add a single re-engagement notification trigger that fires on day 7 of inactivity (before the user hits 10 days), framed as a low-pressure check-in ("Your habits are still here whenever you're ready"). Keep it one-time — no escalating sequences. This is a separate notification type from the daily nudge, requires one additional notification template and a day-7 trigger in the scheduler. Scope is small; impact on re-engagement rate is measurable within 60 days of launch.

* **Define "inactivity re-entry" as a testable outcome, not a design ideal.** Before building any re-entry UX, instrument what actually happens today: log the timestamp when a user with 10+ days absent opens the app, then track whether they complete a check-in in that session, return within 7 days, or churn. Start with this measurement baseline — two analytics events added to the session-open handler — then let data drive whether silence, a warm acknowledgment, or a simplified dashboard actually improves retention. Build the measurement layer first; the re-entry UX second.

## The Habit That Almost Died

* **Priya's first screen should show continuity, not score.** A practical approach: when re-entry is detected, replace the default dashboard header (which might show a streak count or missed-days badge) with a header that shows her habit names and their "last logged" dates — no counts, no streaks, no color-coded failure states. She sees "Morning walk — last logged 5 days ago" rather than a 0-day streak or a broken chain. Implementation is a conditional render on the dashboard header component, driven by the `days_inactive` state variable already computed at session open. One component, one conditional, testable in isolation.

* **Offer a deliberate "restart" action with a concrete lower bar.** The difference between picking up a dropped thread and standing in ruins is often a clear next action. A practical feature: on re-entry after illness or extended absence, surface a "Restart" button that — when tapped — sets a new mini-streak baseline and adjusts the current week's target downward (e.g., if Priya was aiming for 7/7 days, restart proposes 3/7 for this week). This is not streak forgiveness — it is explicit target re-calibration. Data model change: add a `restart_count` field and a `current_week_target_override`. Scoped to one sprint, gives Priya agency rather than asking her to absorb a miss passively.

* **Distinguish between "I was sick" and "I gave up" through a brief return prompt.** To make this implementable, add a one-question modal on re-entry after 5+ days: "What happened?" with three tappable options — "Life got busy," "I wasn't feeling well," "I wanted a break." No text input, no pressure. The response routes to different next-step messaging (mild encouragement for busy/sick, a gentle re-commitment prompt for intentional breaks) and tags the session in analytics. This contextual branching is two additional UI states — both trivially implementable — and gives the product data on why users go quiet, which informs future roadmap decisions.

* **Show Priya what survived, not what broke.** If she had three habits and maintained one during the flu week, lead with that. A practical UI pattern: on re-entry, sort habits by recency of last check-in so the one she kept up appears first. Add a single line of copy: "You kept up [habit name] — that's something." This is a sort-order change plus one conditional copy block. It is small, but the psychological effect of showing the survivor rather than the casualties is significant and consistent with the behavioral science literature on self-efficacy.

# Habit Tracker — Draft PRD v0.3

**Author:** [product owner]
**Date:** 2026-02-15
**Status:** Draft — thinking out loud before spec lock

## Vision

A habit tracker that's easier to use on day 47 than it was on day 2. Most apps optimize for onboarding; by the time the user actually needs to just check off a habit, they're fighting through streaks, badges, coaching cards, and motivational quotes.

We want the opposite curve: minimal on day one, invisible-but-present by week six.

## Target user

**Primary:** Adults 25–45 who have tried at least one habit app before and bounced. They know what they want to build (workout, daily reading, language practice, meditation), but previous apps burned them with streak anxiety, guilt-trip notifications, or gamification overload.

**Secondary (v2):** Parents with the same profile, using the app for kid-facing habits (e.g., practicing an instrument, reading before bed).

## Core loop

1. **Morning (≤30s total):** Review today's 3–5 committed habits in a single scrollable list.
2. **In-day (≤10s each):** Tap to check off; optionally log a brief "partial" if incomplete.
3. **Weekly review (Sunday, ≤3min):** Prompted review of the week; adjust next week's intentions.

## Features — priority order

1. **Habit creation** with cue / routine / reward framing (Atomic Habits model).
2. **Fast check-in** — must complete in under 10s on mobile; single tap with haptic confirmation.
3. **Weekly review** — gentle, prompt-driven; no guilt language.
4. **Streak handling with grace** — one-day miss can be "recovered" with a brief note; no all-or-nothing breaks.
5. **Opinionated minimal notifications** — morning nudge at user-set time + weekly review reminder. That's the entire notification surface.
6. **Simple data export** — CSV of all habit logs for users who want their data.

## Explicit non-goals (v1)

- No social feed, leaderboards, or public challenges.
- No in-app coach, AI chat, or motivational quotes.
- No XP, levels, or achievement badges.
- No integration with wearables or calendar (v2 consideration).
- No widgets at launch (reassess based on user feedback).

## Monetization

- **Free:** up to 3 active habits, basic check-in, 30 days of history.
- **Paid ($3/mo or $24/yr):** unlimited habits, full history, weekly review, CSV export.
- **Hard no:** ads, data selling, upsells in notifications, upsells in the core loop.

## Known open questions

1. iOS + Android + web all at launch, or web-first then native? Solo-dev constraint pushes toward web-first, but the check-in speed requirement favors native.
2. Do we need offline support at v1? How common is "opened the app in the subway" for the target user?
3. How do we handle partial logging ("I did 15 min instead of the 30 I planned") without adding UI complexity?
4. Is weekly review underused in competitors because it's bad, or because they bury it under a home feed? If the latter, making it the default Sunday experience could be a wedge.
5. Paid tier: subscription only, or add a one-time lifetime option at launch?
6. What's the right behavior when a user has been inactive for 10+ days? Silent wait, gentle nudge, or explicit "want to pause?" flow?

## Technical posture

- Mobile-first responsive web as default target; native considered if check-in speed goal can't be met on web.
- Prefer boring, stable stack — solo developer / small team with a 3-month MVP timeline.
- Local-first data model if feasible; cloud sync as enhancement, not requirement.
- Privacy: minimal analytics, no third-party tracking SDKs, no session recording.

## Success metrics (30 days post-launch)

- **30-day retention:** >25% (industry benchmark ~15%)
- **Median habits tracked per active user:** 3
- **Paid conversion:** 5% of D30 actives
- **Weekly review completion:** >40% of paid users
- **Median check-in time:** <10s (measured via client timing)

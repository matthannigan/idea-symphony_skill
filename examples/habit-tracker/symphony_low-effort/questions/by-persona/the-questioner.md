---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/low/"
date: 2026-04-22
effort: "low"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Questioner"
category: analytical
stream: synthesize
volume: 13
---

# Brainstorming Questions from The Questioner: Modern Habit Tracker Web App

---

## Assumptions Baked into the Anti-Gamification Stance

1. **Why do we assume simplicity scales to day 47?**: The PRD's vision is that the app becomes "invisible-but-present by week six" — but what if the users who stick to day 47 are precisely those who wanted more depth, not less, and the truly minimal experience only retains people through week two?

2. **Why do we assume streak anxiety is the problem rather than a symptom?**: The PRD frames streak-based guilt as the root failure mode of competing apps, but what if streak anxiety is a signal that users were tracking the wrong habits to begin with — and a better onboarding would solve this without abandoning streaks entirely?

3. **What if the "recovered miss" mechanism gets gamed more than it gets used compassionately?**: The grace note for a one-day miss is designed to reduce all-or-nothing pressure, but have we considered whether users will simply pre-rationalize skipping by planning to write a recovery note — undermining the gentle accountability the feature intends?

4. **Why do we assume the target user's bounce from prior apps was caused by the apps, not the habits?**: The primary user persona is someone who has tried at least one habit app and bounced — but what if most of those bounces happened because the habit itself wasn't meaningful yet, and no interface design would have retained them?

---

## Differentiation and the Crowded Market

5. **What if "minimal and calm" is itself a crowded position by the time this ships?**: Given that competitors like Streaks already lean into simplicity, what specific interface or behavioral decision would make someone who has already tried a calm habit app choose this one — and is that decision visible within the first 90 seconds of use?

6. **What would this product look like if we designed it for the moment a user is about to quit, not the moment they first sign up?**: Most onboarding is optimized for initial delight — but what if we mapped the exact session where historical churn peaks (day 8? day 22?) and designed the core experience backward from that moment?

7. **Have we considered what "behavioral science principles" means in practice when the PRD explicitly excludes coaching, AI chat, and motivational content?**: The REQUEST names behavioral science as a differentiator, but the non-goals remove almost every surface where behavioral nudges typically live — so where exactly does the science show up in the interface?

---

## The Monetization and Free-Tier Tension

8. **What happens to a user's relationship with the app the moment they hit the 3-habit free-tier limit?**: The PRD draws the free/paid line at 3 active habits — but what if that limit arrives right when a user is starting to build momentum and a forced decision interrupts the very habit formation loop the app is trying to support?

9. **Why do we assume a $3/month subscription is the right price signal for this positioning?**: The PRD sets $3/month as the paid tier — but what does that price communicate to a user who has already been burned by apps they paid for and abandoned? Is there a price point that signals "low stakes" rather than "another app I might regret"?

---

## Technical Posture and the Check-In Speed Constraint

10. **What if the 10-second check-in requirement is fundamentally incompatible with a web app on the specific hardware segments the target user owns?**: The PRD acknowledges that check-in speed might require native — but have we tested that claim on mid-range Android devices over a slow mobile connection, which may be exactly where the target user opens the app on their commute?

11. **Why do we assume offline support is a secondary concern rather than a trust signal?**: The PRD frames offline as a "how common is subway usage" question — but what if users care less about functional offline access and more about the implicit signal that their data lives on their device and not just in the cloud, regardless of whether they ever lose connectivity?

---

## The Weekly Review as a Potential Wedge

12. **What if the weekly review is more important than the daily check-in for long-term retention, and the entire product should be built around it?**: The PRD treats the weekly review as a feature, but competitor analysis suggests it's underused industry-wide — what if this is not a feature gap but an entirely different theory of behavior change that deserves its own narrative and onboarding arc?

13. **Have we considered what it would take for the weekly review to become a ritual users look forward to rather than a prompt they dismiss?**: The PRD targets 40% completion among paid users — but what would make someone say to a friend "Sunday is my review day" the way they say "Sunday is my long run day," and does the current feature description get anywhere near that kind of ownership?

---

**Total questions**: 13
**Topic clusters**: 5

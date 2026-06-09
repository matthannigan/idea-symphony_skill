---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/min"
date: 2026-04-22
effort: "min"
stage: "Phase 2: Generic Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
---

# Brainstorming Questions: Modern Habit Tracker Web App

---

## Topic Cluster 01: Differentiation and Positioning

**Cluster focus**: How to carve out a defensible, meaningful position in an already-crowded market where established players have entrenched user bases.

1. **Anti-gamification as identity**: The PRD explicitly rejects XP, badges, and leaderboards — how do you communicate this design philosophy as a feature and a brand promise, not merely an absence, so users who've been burned by gamification overload can find and trust you?

2. **The "day 47 advantage"**: The vision centers on the app becoming easier to use over time rather than optimized for onboarding — what specific design decisions and interaction patterns would make that improving-over-time experience viscerally noticeable to a user by week six?

3. **Behavioral science without the baggage**: The PRD cites the Atomic Habits cue/routine/reward framework — how do you embed behavioral science principles deeply enough to drive outcomes without the app sliding into the coaching, AI chat, and motivational-quote territory explicitly ruled out as non-goals?

4. **Competitor weakness as wedge**: Given that weekly review is underused in competing apps (PRD open question #4), what would it look like to make weekly review the defining Sunday ritual of this app — and how would that experience differ enough from what competitors have tried to actually change completion rates?

---

## Topic Cluster 02: User Psychology and Retention

**Cluster focus**: How to sustain motivation and daily engagement for users who have already failed with other habit apps, without replicating the psychological traps that caused them to quit.

5. **Streak anxiety as the core problem**: The target user has "bounced" from prior apps — to what extent is streak anxiety specifically the mechanism of failure, and how does the "grace recovery" feature (one-day miss with a brief note) address the root cause rather than just its symptom?

6. **The guilt-free notification surface**: The PRD limits notifications to a morning nudge and a weekly reminder — how do you design these two touchpoints to feel like a gentle environmental cue rather than an obligation or a guilt trigger, especially for users who've learned to ignore or resent app notifications?

7. **Inactivity and re-engagement**: When a user has been inactive for 10+ days (PRD open question #6), what does a respectful re-engagement flow look like — one that honors the user's autonomy and avoids shame while still offering a meaningful way back in?

8. **Habit selection and the 3–5 commitment ceiling**: The morning review is designed for 3–5 habits — how do you help users choose and maintain the right habits at the right quantity, so the app doesn't become a source of overwhelm for users who want to track everything?

9. **Partial completion as data, not failure**: The PRD raises "I did 15 min instead of 30" as an open UX question — what mental model and interaction pattern best captures partial progress in a way that feels honest and useful rather than a consolation prize?

---

## Topic Cluster 03: Product Scope and Technical Tradeoffs

**Cluster focus**: How to make the right scoping and architectural decisions given a solo-developer constraint and a 3-month MVP timeline without foreclosing important future options.

10. **Web-first vs. native tension**: The PRD's core loop requires check-in in under 10 seconds on mobile, but the solo-dev constraint favors a responsive web app — what is the realistic performance ceiling for a mobile web check-in flow, and at what point does that ceiling require a native investment?

11. **Local-first as a trust signal**: The PRD prefers a local-first data model with cloud sync as an enhancement — how does local-first architecture interact with the paid tier's unlimited history feature, and what are the synchronization failure modes that could undermine user trust?

12. **Offline and the subway scenario**: The PRD leaves offline support as an open question — for the target user who opens the app during a commute, what is the minimum viable offline capability, and how does the answer shape the data model and sync architecture chosen at MVP?

13. **MVP scope discipline**: Given a 3-month timeline and a solo developer, which of the prioritized features in the PRD (creation, fast check-in, weekly review, streak grace, minimal notifications, CSV export) are genuinely interdependent at launch, and which could be shipped as fast-follow releases without degrading the core experience?

---

## Topic Cluster 04: Monetization and Business Sustainability

**Cluster focus**: How to build a sustainable revenue model that funds long-term development without compromising the trust, simplicity, and user-first design principles that define the product.

14. **Free tier as funnel vs. free tier as promise**: The 3-habit free limit is a conversion mechanism, but it's also the first experience most users have — how do you calibrate the free tier so it's generous enough to demonstrate genuine value but constrained enough to make the paid tier worth it?

15. **Subscription vs. lifetime pricing**: The PRD raises the question of whether to offer a one-time lifetime option at launch — what are the long-term business implications of each model for a solo developer, particularly given the operational and support costs of maintaining a growing user base?

16. **Conversion at day 30**: The PRD targets 5% paid conversion among 30-day actives — what events in the user journey are most likely to create genuine willingness to pay, and how do you surface the paid tier at those moments without violating the "no upsells in the core loop" principle?

17. **Trust as a monetization asset**: The PRD commits to no ads, no data selling, and no third-party tracking SDKs — how do you make this privacy stance visible and credible to users who are skeptical of app monetization promises, and does that transparency become a meaningful driver of conversion?

---

## Topic Cluster 05: Growth and Long-Term Vision

**Cluster focus**: How to plan for sustainable growth beyond the MVP while preserving the simplicity and design integrity that make the product distinctive.

18. **Retention beyond 30 days**: The PRD targets >25% 30-day retention against a 15% industry benchmark — what product experiences or habit patterns are most predictive of a user still being active at 90 days or six months, and how do you build for that without overbuilding at MVP?

19. **V2 scope and sequencing**: The PRD defers wearable integration, calendar sync, widgets, and a parent/child mode to v2 — what signals from v1 usage would most inform which of these to prioritize, and what architectural decisions made now would make the highest-value v2 features easier or harder to add?

20. **Solo-developer sustainability**: Beyond the product itself, what does a realistic long-term maintenance and development plan look like for a solo developer managing a subscription SaaS with ongoing user expectations — and at what user or revenue scale do the operational demands require either outside help or deliberate scope reduction?

---

**Total questions**: 20
**Topic clusters**: 5

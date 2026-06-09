---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/low/"
date: 2026-04-22
effort: "low"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Analyst"
category: analytical
stream: synthesize
volume: 10
---

# Brainstorming Questions from The Analyst: Modern Habit Tracker Web App

---

## Retention and Engagement Mechanics

1. **Break-even retention threshold**: The PRD targets 30-day retention above 25% (vs. the 15% industry benchmark) — but what does the retention curve actually need to look like at days 7, 14, and 60 for the paid conversion funnel to be viable, and which product decisions (streak grace, weekly review, notification design) have the highest leverage on each inflection point?

2. **Weekly review as differentiator**: The PRD hypothesizes that weekly review is underused in competitors because it's buried, not because it's inherently weak — what measurable signal (completion rate, session length, next-week habit adjustment rate) would confirm or refute that hypothesis within the first 60 days post-launch, and what's the minimum weekly review completion rate needed to justify keeping it in the paid tier?

3. **Grace mechanic unit economics**: The "one-day miss recovery" feature is central to the anti-guilt positioning — breaking this down, what are the behavioral outcomes we'd need to track (recovery rate, post-recovery streak length, churn difference between users who trigger grace vs. those who don't) to determine whether the feature is actually reducing churn or merely delaying it?

---

## Monetization Structure and Conversion Levers

4. **Free-tier constraint calibration**: The 3-habit free limit is the primary conversion gate — what's the analytical basis for that number, and how do we model the trade-off between a limit tight enough to drive upgrades and loose enough that users experience genuine value before hitting the paywall? At what average habit count do retained users typically stabilize, and does that inform where the gate should sit?

5. **Subscription vs. lifetime pricing**: The PRD lists subscription-only vs. adding a lifetime option as an open question — decomposing this: what's the expected LTV difference between a $3/mo subscriber retained 18 months vs. a $45 lifetime buyer, how does a lifetime option affect the Month 1 cash position for a solo developer, and is there a pricing structure (e.g., lifetime available only in year 1) that optimizes both?

6. **Paid conversion trigger identification**: The target is 5% paid conversion among D30 actives — which specific in-app moments (hitting the 3-habit cap, completing a weekly review, viewing more than 30 days of history) are most likely to be the actual conversion trigger, and how should the upgrade prompt be positioned at each moment without violating the "no upsells in the core loop" constraint?

---

## Platform and Architecture Trade-offs

7. **Web-first vs. native check-in speed**: The core loop requires check-in under 10 seconds on mobile, and the PRD acknowledges this favors native over web — what's the analytical framework for deciding when to make the native investment? Specifically: at what user scale or retention metric does the check-in speed gap become a measurable churn driver, and is there a web-based architecture (PWA, service worker, preloaded state) that can close enough of the gap to defer the native decision past MVP?

8. **Local-first data model risk surface**: The PRD favors a local-first data model with cloud sync as an enhancement — breaking this down into three risk dimensions: (a) what percentage of the target user's "opened in the subway" scenarios require offline, (b) what's the engineering cost delta between local-first and cloud-only at MVP scale, and (c) what's the data-loss scenario severity if local-first sync fails and how does that affect the trust positioning?

---

## Competitive Differentiation

9. **Simplicity as a durable moat**: The PRD's core bet is that stripping out gamification and social features creates a distinct position — but what's the analytical case that this preference is stable rather than a temporary reaction? Looking at the target user profile (prior app bouncers, ages 25–45), what behavioral data or market segments would indicate that anti-gamification positioning holds as a long-term preference rather than an onboarding preference that erodes once habit formation succeeds?

10. **Competitor feature gravity**: Established players (Habitica, HabitBull, Streaks) have strong network effects and platform presence — decomposing the switching cost problem, what are the three or four specific friction points a new user faces when leaving a competitor (data portability, existing streaks, social ties), and which of those can be directly addressed in the product design to lower acquisition cost for the target "bounced from a prior app" segment?

---

**Total questions**: 10
**Topic clusters**: 4

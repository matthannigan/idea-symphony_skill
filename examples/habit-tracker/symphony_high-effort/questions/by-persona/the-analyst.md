---
project-name: "Modern Habit Tracker Web App"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/habit-tracker/high"
date: 2026-04-22
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Analyst"
category: analytical
stream: synthesize
volume: 13
---

# Brainstorming Questions from The Analyst: Modern Habit Tracker Web App

## Retention Mechanics and Churn Anatomy

1. **Breaking down the 30-day retention target**: The PRD sets a >25% D30 retention goal against an industry benchmark of ~15% — but retention is a composite of at least three separable variables: initial activation, daily re-engagement, and recovery after a lapse. Which of these three is the biggest driver of the gap between your target and the industry average, and what specific design decisions map to each component?

2. **Quantifying the "streak anxiety" problem**: The PRD identifies streak anxiety and guilt-trip notifications as the primary reasons the target user bounced from prior apps. What behavioral signals would indicate that the app is successfully avoiding streak anxiety — and can those signals be measured in product analytics without requiring user surveys?

3. **Lapse recovery as a retention variable**: The "one-day miss recovery" mechanic is listed as a priority feature, but recovery flows vary widely in their friction and framing. What's the hypothesized causal chain from the recovery mechanic to improved D30 retention, and how would you isolate its contribution from other retention drivers in early data?

## Unit Economics and Monetization Structure

4. **Mapping the free-to-paid conversion funnel**: The target paid conversion is 5% of D30 actives, and the free tier caps at 3 active habits. Breaking this down — what proportion of users are expected to hit the 3-habit ceiling organically versus needing a deliberate prompt, and does the timing of that ceiling encounter change conversion probability?

5. **Subscription vs. lifetime pricing trade-offs**: The PRD flags lifetime pricing as an open question. Analytically, subscription and lifetime options have different cash flow profiles, different customer segment appeal, and different implications for long-term product investment signals. What dimensions of that trade-off are most decision-relevant for a solo developer with a 3-month MVP timeline and uncertain early retention?

6. **Cost structure at different user scales**: For a local-first data model with cloud sync as an enhancement, what does the cost-per-active-user curve look like at 1,000, 10,000, and 100,000 users — and at what scale does the infrastructure cost structure start to materially affect the $3/mo pricing assumption?

## Feature Prioritization and Scope Risk

7. **Decomposing the "fast check-in" requirement**: The <10-second check-in goal is measurable, but it's a composite of network latency, UI rendering, interaction steps, and user decision time. Which of these components is most at risk of causing the target to slip — and how does the web-first vs. native decision alter the breakdown?

8. **Weekly review: design variable or product wedge**: The PRD hypothesizes that weekly review is underused in competitors because it's buried, not because it's inherently weak. That's a testable hypothesis with two distinct design implications: surface prominence vs. interaction quality. What evidence from competitor behavior — usage data, reviews, community feedback — would meaningfully shift confidence in that hypothesis before committing to Sunday review as a differentiating mechanic?

9. **Offline support scope decision**: The PRD treats offline support as an open question, but the local-first data model framing suggests it's already partially decided architecturally. What are the explicit decision criteria for whether offline support qualifies as a v1 requirement — and what's the cost (in dev time and complexity) of adding it post-launch versus building it in from the start?

## Differentiation and Competitive Positioning

10. **Identifying the actual differentiation mechanism**: The PRD names three candidate differentiators — UX simplicity, behavioral science framing (Atomic Habits cue/routine/reward), and a non-punishing streak model. These are not equally defensible: UX can be copied quickly, behavioral science framing is widely understood, and streak mechanics are a single feature. Which of these is genuinely hard to replicate at scale, and what would make that differentiation durable beyond the first six months?

11. **Segmenting "bounced from prior apps" as a user population**: The target user is described as someone who bounced from at least one habit app. That population almost certainly contains distinct subpopulations with different failure modes — streak anxiety, notification fatigue, feature overload, or simply losing motivation. How does the design address these subpopulations differently, or does it assume a single dominant failure mode that the app resolves?

## Behavioral Science Application

12. **Operationalizing Atomic Habits in the UI**: The app explicitly adopts the cue/routine/reward framing from Atomic Habits for habit creation. That framework has specific implications for what data to collect at creation time and what to surface during check-in. What is the minimal implementation of cue/routine/reward that adds genuine behavioral value versus what becomes UI overhead that contradicts the "minimal on day one" vision?

13. **Defining the "invisible but present" trajectory**: The PRD's core vision — minimal on day one, invisible-but-present by week six — is a compelling product arc, but "invisible-but-present" is doing a lot of work. What does the app actually surface or do differently at week six compared to day one, and what behavioral or data signals indicate that the transition from new-user to embedded-user has successfully occurred?

---

Total questions: 13
Topic clusters: 5 (Retention Mechanics and Churn Anatomy; Unit Economics and Monetization Structure; Feature Prioritization and Scope Risk; Differentiation and Competitive Positioning; Behavioral Science Application)

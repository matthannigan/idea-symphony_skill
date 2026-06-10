---
project-name: "Modern Habit Tracker Web App"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/habit-tracker/high"
date: 2026-04-22
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The First Principles Thinker"
category: "structural"
stream: "synthesize"
volume: 9
---

# Brainstorming Questions from The First Principles Thinker: Modern Habit Tracker Web App

## What a Habit Tracker Actually Is

1. **Strip away the app entirely — what is the irreducible job to be done?**: At its core, a habit tracker is a memory prosthetic and a commitment device. If those are the two fundamental functions, which features in the current spec serve memory, which serve commitment, and which exist only because competitors have them?

2. **Is "tracking" the right verb?**: Most habit apps frame the interaction as tracking (logging, recording, streaking), but behavioral science suggests the critical moment is the decision to act, not the record after. If the product were designed around *deciding* rather than *tracking*, how would the feature set change?

## The Retention Problem at Its Root

3. **Why do users actually abandon habit apps — and is the diagnosis in the PRD correct?**: The PRD attributes churn to streak anxiety, guilt-trip notifications, and gamification overload. But at the most fundamental level, is the failure a product failure or a goal-setting failure? If users are setting habits they don't actually want, no UX improvement fixes that — and the product may need to include friction at habit creation, not just remove it from check-in.

4. **What is the minimum viable behavioral intervention that produces 30-day retention above 25%?**: Rather than building a full-featured app and hoping engagement emerges, what is the single smallest change in user behavior the product needs to produce? Start from that outcome and work backward to the minimum product surface that reliably produces it.

## The Simplicity Paradox

5. **Is the "invisible-but-present by week six" vision internally consistent with a web app?**: The PRD's core promise is that the product gets simpler over time. But web apps require opening a browser, navigating a URL, and loading a page — a fixed irreducible cost. If the fundamental requirement is a sub-10-second check-in that becomes invisible habit, does the web-first technical choice contradict the product promise at the architecture level?

6. **If you removed every feature that isn't strictly necessary for the core loop to work, what would remain?**: The PRD lists six features in priority order. Building from first principles: check-in and weekly review are structural. Streak handling with grace, opinionated notifications, and data export are enhancements. Habit creation with cue/routine/reward framing is assumed setup cost. Which of these could be deferred to v2 without breaking the fundamental value proposition?

## Monetization Without Corruption

7. **The free tier's 3-habit cap is a constraint that creates a conversion driver — but does it create the right conversion pressure?**: At its core, a freemium gate should convert users who are getting value, not users who are frustrated by artificial limits. A user who has built 3 stable habits is exactly the kind of user who should stay free forever (mission success). What is the fundamental alignment between the conversion trigger and the product mission, and is the current gate designed around that alignment or around revenue extraction?

## Behavioral Science as Architecture

8. **The PRD adopts the Atomic Habits cue/routine/reward model at the feature level — but does the product architecture enforce or merely suggest it?**: At its core, the Atomic Habits model is a system design, not a UI pattern. If the product were rebuilt with behavioral science as the load-bearing structure — not a framing device for habit creation — what would change about data modeling, notification timing, recovery flows, and weekly review prompts?

## Competitive Differentiation from the Ground Up

9. **Setting aside what every competitor has built, what does the research actually say about which product behaviors produce durable habit formation?**: Most habit apps are built by analogy to other habit apps, which were built by analogy to to-do apps. If you started only from behavioral science literature on habit acquisition — not from existing products — what would you build, and how different is it from the current spec?

---

**Total questions:** 9
**Topic clusters:** 5

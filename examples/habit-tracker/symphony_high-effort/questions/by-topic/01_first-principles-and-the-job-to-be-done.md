---
project-name: "Modern Habit Tracker Web App"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 01: First Principles and the Job-to-Be-Done

## Questions

1. **The irreducible job, rebuilt from the literature**: Strip away the app entirely — at its core, a habit tracker is a memory prosthetic and a commitment device, and most habit apps are built by analogy to other habit apps (which were built by analogy to to-do apps) rather than from research on durable habit formation. Which features in the current spec serve memory, which serve commitment, which exist only because competitors have them, and if you started only from behavioral science literature on habit acquisition (not from existing products), what would you build and how different is it from the current spec?
2. **Tracking vs. deciding as the framing verb**: Most habit apps frame the interaction as tracking (logging, recording, streaking), but behavioral science suggests the critical moment is the decision to act, not the record after — if the product were designed around deciding rather than tracking, how would the feature set change, and does "tracking" quietly reinforce an outcome-based model rather than an identity-based one?
3. **Is the PRD's diagnosis of churn correct at root?**: The PRD attributes churn to streak anxiety, guilt-trip notifications, and gamification overload — but at the most fundamental level, is the failure a product failure or a goal-setting failure? If users are setting habits they don't actually want, no UX improvement fixes that, and the product may need friction at habit creation rather than only removing it from check-in; separately, the target user who "bounced" may reflect intrinsic motivation gaps rather than tool failures, so does the product need a theory of habit readiness that goes beyond UX quality?
4. **The minimum viable behavioral intervention**: Rather than building a full-featured app and hoping engagement emerges, what is the single smallest change in user behavior the product needs to produce to hit the >25% D30 retention target, and if you removed every feature not strictly necessary for the core loop — keeping check-in and weekly review as structural, deferring streak handling, notifications, and data export as enhancements — what minimum product surface reliably produces that outcome?

---

**Question count**: 4
**Cluster focus**: Before deciding what to build, interrogate what a habit tracker fundamentally is and whether the PRD's diagnosis of user failure is the correct starting point.

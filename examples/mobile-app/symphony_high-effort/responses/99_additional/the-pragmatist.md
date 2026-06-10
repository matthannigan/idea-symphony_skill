---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "examples/mobile-app/symphony_high-effort"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "99_additional"
persona: "The Pragmatist"
---

# Feature-Bloated Mobile App MVP Reset — The Pragmatist

## The Abandonment Scene

* **Map the failure chain step-by-step.** A practical approach: reconstruct the user journey from your analytics (last feature touched, time-to-abandonment, error logs) and match it to three exit points. For most fitness apps, the abandonment scene happens when new users hit the navigation menu with 6+ tabs and can't find where to log their first workout in under 30 seconds. The real insight: you don't need user interviews to diagnose this—your retention cliff at days 1-3 tells you which feature path is broken. Focus repair on the path most users actually take, not the features they *might* want later.

* **Use retention data to identify the broken core.** Rather than imagining a user's mental state, pull the cohort that dropped at day 3 and see which screens they visited. If 60% of droppers never reached the workout-logging flow, that's your culprit. The practical fix isn't guesswork—it's: test a fast-path "log workout in 20 seconds" flow, measure if it improves 3-day retention, and if so, make that the entry point for the simplified product. Skip the abandonment scene; use the data to tell you what actually failed.

* **Identify which features have zero defensive moats.** Look at feature usage as a decay curve: which features lose 90% of their users by week two, and which still have any residual weekly-active users? The features with zero stickiness are candidates for complete removal. Those with sustained minority usage might survive in simplified form. This gives you a defensible, metrics-based answer to "which features matter" that beats speculation about user psychology.

## The App That Refuses To Simplify

* **A coherence feature could actually work as MVP filtration.** The concierge concept has real merit if you strip away the punitiveness: instead of locking users out of features, have the onboarding ask "What's your primary goal?" (lose weight, build strength, run a 5K, etc.) and pre-populate the home tab with only the tools relevant to that goal. Other features stay accessible via search, but you've solved the paralysis problem with a single choice. This is a quick implementation win—roughly one week of frontend work—that could recover retention without removing any code, giving you breathing room to measure which features the simplified cohort actually uses.

* **A forcing function could reduce perceived chaos.** Operationally, this means: add one "focus mode" toggle at the top level that hides all tabs except workout logging + progress tracking when enabled. Don't delete anything; just make it easy to hide complexity when users want it. Measure whether users who enable focus mode have higher 7-day retention than control. If yes, you've identified your MVP without cutting: you keep the code, you just don't surface 70% of the UI by default. This costs ~3 days to build and gives you a concrete test of the "too many features kills retention" hypothesis.

* **Layering, not locking, preserves optionality.** Rather than punitive locking, restructure the information architecture as expanding layers: core (workout + progress), intermediate (meal logging + challenges), advanced (community + coaching). Let users move between layers with a preference setting. This solves the "jack of all trades" problem by letting new users live in a 3-feature app, while power users still have access to all 15. Implementation: rework navigation to collapse based on user tier, not deletion. No cutting required immediately; you're just triaging what appears on screen.

## Zoning Before Demolition

* **This is rezoning with partial demolition.** The critical distinction: you're not just removing features from an existing app structure—you're redefining what core value the app solves. Demolition would be "cut meal planning." Rezoning is "this is now a workout-first app, and everything else (meals, sleep, habits) only exist as supporting context." That changes the sequencing: instead of removing features incrementally (risky, leaves inconsistencies), you need a hard relaunch with a new conceptual model. In practice: commit to a 6-week rewrite sprint where the new architecture assumes only 3 core features exist, then backfill other features as modular add-ons if needed. The risk is high, but the piecemeal approach creates technical debt faster than a clean relaunch would.

* **Rezoning is the right answer, but it requires a hard cutover.** If you try incremental simplification, you'll end up with a frankenstein that's both complex and unfinished (you'll delete the meal planner but keep its navigation tab, its database schema, its onboarding flows). A practical middle ground: run the old app in parallel for 60 days while launching a new simplified version to a closed beta. Migrate the top 500 power users to the new version with hands-on support, use their feedback to stabilize the core, then decide whether to sunsetting-path the old version or keep both. This costs more engineering time, but it gives you an escape route if the simplified version can't retain the power-user cohort.

* **The conceptual territory matters more than the technical one.** You can remove features from an existing structure, but what's actually broken is your strategic identity—users don't know what this app *is* anymore. Rezoning means picking one: "We are the best fitness tracker" or "We're the social fitness community" or "We're the home for habit change." Once you pick one, the architectural choices become obvious. Practically: conduct a one-day working session with your PM, top engineers, and one user who actually opens the app weekly. Ask: "If we could only keep one job this app does for you, which would it be?" The consensus answer is your new zone. Then demolish everything outside that zone without apology. Yes, you'll lose users; you'll also stop hemorrhaging retention to confusion.

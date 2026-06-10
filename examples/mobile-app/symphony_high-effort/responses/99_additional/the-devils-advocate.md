---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "99_additional"
persona: "The Devil's Advocate"
---

# Feature-Bloated Mobile App MVP Reset — The Devil's Advocate

## The Abandonment Scene

* **Emotional friction ignored by metrics.** That three-time user likely hit friction *on their first visit* — not poor execution of features they wanted, but immediate overwhelm at the interface itself. The assumption behind "let's study abandoners" is that people have clear intent; you miss the moment they decided the app wasn't worth the cognitive load to even understand. Counter this by conducting 5–10 recorded abandonment interviews (users who deleted within a week) to pinpoint the *first friction point*, not the most logical one. You might discover it's not feature X or Y, but the onboarding flow itself.

* **Success bias in interview selection.** If you reconstruct abandonment scenes from interviews, you'll talk to users who *remember* why they left — and they'll narrate a coherent story. You'll miss silent quitters who hit a wall, felt stupid, and never opened again. Mitigation: instrument the first-session funnel with micro-events — which tab did they tap? How long did they linger? This data is messier but more honest than retrospective recall.

* **Feature-success assumptions built in.** You assume that identifying "which features failed" answers the question, but the real failure might be architectural: users opened the app, saw six tabs, and couldn't form a hypothesis about what *any* of them were for. This is a labeling and information-hierarchy problem, not a feature-selection problem. Before you cut features, stress-test your naming. Show a cold user the six tabs with no onboarding and ask them to rank by confidence in what each does — if they score below 60% across the board, simplification alone won't fix it.

## The App That Refuses To Simplify

* **The coherence-function is the opposite of what you think.** An "AI concierge" that forces one-goal-per-week and locks out unrelated features sounds smart in concept, but you're adding the very thing the burn-out team desperately doesn't want to build — a complex AI system that has to intelligently parse user intent and arbitrate feature access. The real insight isn't a forcing function; it's *radical defaults*. Ship with *only* the workout tracker enabled; users unlock meal planner and social feed as opt-ins after they've formed a habit. Start constrained by default, expand on demand instead of locking by constraint. This costs design effort, not AI engineering.

* **The 16th feature trap.** Adding an outrageous meta-feature to make the bloat coherent is exactly the trap you're in now — more features presented as solutions. Instead, reframe: what if the 15 features aren't the problem, but the *decision paralysis they create is*? A "smart funnel" persona-detection feature could notice new users and *suppress* features until they express interest in them. This is triage, not new capability — and it's much cheaper to build than an AI concierge. Prototype this with rules before you invest in ML.

* **Coherence through honest architecture.** The real forcing function isn't punitive; it's a product decision: if a user completes a workout, should they *automatically* see the meal-planner? Or should they see *no recommendations* unless they explicitly ask? Build the app so features have clean dependencies — one thing unlocks the next — rather than all 15 competing for attention. This requires ruthless UX work (moving fast = more sprawl), but it's the only way coherence feels intentional rather than fake.

## Zoning Before Demolition

* **Demolition assumes you know what to rebuild.** Your question frames this as demolition vs. rezoning, but both assume you have a clear blueprint. Have you actually tested what happens if you *keep all 15 features but hide 12 of them behind a "pro" paywall or toggle?* This is temporary demolition — you get to see how users interact with the lean core without committing to permanent deletion. If users don't miss the hidden features in 6 weeks, delete them; if they do, you've learned something worth knowing. Rezoning a neighborhood without a housing shortage first is how you get vacant lots.

* **Zoning changes have legal consequences; deleting features has data consequences.** If you rezone, existing structures stay until someone buys the land; if you demolish and delete features, some users' data evaporates. Have you planned for the user who relied on the journal feature? Or the community forum that has genuine conversations? Partial demolition — deprecate features with a 4-week warning, allow data export, migrate forum conversations to a sister app or CSV — is messier than clean deletion, but it's not abandoning users mid-project.

* **The real distinction is *conceptual territory, not just structure.** Demolition says "this feature is gone"; rezoning says "this *type* of feature no longer belongs in our app." If you demolish the meal planner, you're saying "we don't do nutrition." If you rezone, you're saying "nutrition happens somewhere else — a partner app or a plugin system." The second changes sequencing because it opens the door to partnerships (even light integrations) that demolition rules out. Decide first whether the app is a platform or a point solution; that decision precedes which buildings you tear down.

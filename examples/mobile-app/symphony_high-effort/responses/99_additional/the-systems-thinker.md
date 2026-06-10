---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "99_additional"
persona: "The Systems Thinker"
---

# Feature-Bloated Mobile App MVP Reset — The Systems Thinker

---

## The Abandonment Scene

* **Behavior cascades from first friction.** The user downloaded expecting one clear entry point. Instead, they faced six tabs and a menu. Their first action (let's say "log a workout") required choosing between three competing pathways. That decision friction alone signals chaos, but the real system dynamic is how it cascades: uncertainty about where to start erodes confidence, which reduces willingness to explore, which means they never discover the one thing that would have retained them. By the time they return a second time and hit the same friction, they've lost the initial momentum. Third time is closure — not a dramatic moment, just deletion.

* **The feature-quality feedback loop at work.** When they finally found a feature (say, the meal planner), it was half-polished because the team was spread across 15 features. Poor execution on the second feature visit confirmed their initial instinct: this app isn't for me. Here's the feedback dynamic: more features → team spread thin → lower quality on each → users get worse execution → users churn → remaining users feel abandoned because the app isn't improving. It's a self-reinforcing cycle of decline that actually accelerates as you add features, not decelerates.

* **The unmet expectation system.** Fitness apps create anticipation — the user imagines community, accountability, progress tracking. They open it to find those things exist, technically. But the social feed is a ghost town (no daily-active-users to populate it), the coaching is asynchronous at best, the community forum has three posts from February. Expectation-reality gap drives abandonment. The system dynamic: underfunded features create sparse activity, sparse activity kills the premise of using the feature, no usage means it justifies being defunded next. The user experiences not just a bad app but a broken promise, which is worse.

* **The onboarding paradox.** If the app had a tight, focused onboarding — "here's what this app does: track workouts, get challenged by friends, see your progress" — the user would either engage or bounce quickly. Instead, the bloated version tries to show everything, overwhelming them with options they didn't ask for. The system trap: trying to showcase value creates the opposite effect, because it signals that nothing is the core thing. Abandonment isn't dramatic; it's just the user concluding they don't understand what the product is for.

## The App That Refuses To Simplify

* **Forcing functions as system governors.** The "AI concierge that locks you out" is actually a smart systems move, not punishment. Here's why: humans struggle with choice architecture when every path feels equally valid. A strong forcing function — commit to one goal, complete it, then access something else — creates a decision boundary that transforms scarcity into intentionality. The underlying dynamic is that constraints can feel liberating when they clarify rather than restrict. This isn't about saying "no," it's about saying "yes to this first." The system shift: instead of app-as-catalog (everything available, nothing urgent), you create app-as-sequence (progression, closure, then expansion). That works if the constraint is *coherent with user intent*, not imposed arbitrarily.

* **The coherence feature as a navigation architecture.** Rather than an AI lecturing you, imagine a visual commitment system: you pick one goal, it becomes your home screen. All features that serve that goal are highlighted. Unrelated features are still there but grayed out or tucked into an "extras" section. This transforms 15 features into a coherent narrative: "Here's your goal, here's your progress, here's what helps you today." The feedback dynamic is that success on one goal breeds engagement, which increases session length, which creates momentum for returning. Contrast that with the current system: scattered features breed confusion, confusion kills consistency, lack of consistency triggers churn.

* **The dangerous inversion — what if bloat is the solution to bloat?** There's a real insight here: people *tolerate* complexity when it serves a specific purpose. Add one wildly specific, slightly absurd feature (like "a strength coach that only lets you do upper-body work on Mondays") and suddenly the other 15 features feel less random because they're all part of a "comprehensive system." But the risk is obvious: you're camouflaging the problem, not solving it. You'll eventually hit a coordination ceiling where the "coherence feature" itself becomes so complex it requires explanation. The system trap is substituting one layer of complexity (15 features) with another (15 features + a meta-layer that supposedly ties them together).

* **Simplicity through prioritization instead of removal.** Don't add a feature; change the feature *visibility graph*. Show each user a personalized version of the app based on their stated goals. New users get three features lit up; long-term users get more choices as they master them. This creates a feedback loop where growing skill leads to growing features, which feels like progression rather than chaos. The system advantage: it keeps the code base intact (no technical debt from deletion) while creating a *psychological* simplification. Users experience an app that grows with them, not an app that assaults them.

---

## Zoning Before Demolition

* **Demolition assumes you know what to rebuild.** The metaphor breaks down because buildings and apps have different constraints. With a building, you demolish, zone, then rebuild. But with the app, you can't truly "demolish" a feature — users have data, workflows, habits attached to it. Deleting a feature feels like removing a load-bearing wall: you don't know what's supporting what until you take it down. The question becomes: are you removing features (surgical deletion) or rezoning the conceptual territory (keeping the features but recontextualizing them)? If you demolish and users had real value in a "small but passionate" community around one feature, you've made them refugee. That creates reputational risk and churn spikes beyond normal.

* **Rezoning as the system-safe approach.** Rezoning means: keep the code, reframe the purpose. The community forum isn't "social network for fitness obsessives" anymore; it's "peer support for people in the main workout program." The meal planner isn't "a general nutrition tool" — it's "meal templates for the 3-day-a-week program." By redefining what each feature is *for*, you change user expectations and discovery pathways without ripping out code. The system dynamic: people accept simpler tools when they have a clear, narrow purpose. "Here's the meal planner for your program" is less overwhelming than "here's a meal planner" even if it's the same code. You're not demolishing; you're rezoning.

* **The phasing decision depends on team capacity and user expectations.** If you demolish fast (remove features immediately), you'll see fast feedback on churn and user reaction, which is data. But you risk overshoot: you might remove something that was actually critical infrastructure for a small cohort. Rezoning slower (redefine features, pivot their visibility, gradually retire unused ones) is safer but requires more communication and takes longer. The trade-off isn't about right vs. wrong; it's about whether you can afford the surprise of demolition or need the buffer of gradual rezoning. Your 8-month runway suggests you can't afford a demolition-induced churn spike.

* **The rezoning advantage for team recovery.** Here's a second-order effect worth design: if you demolish, engineers spend weeks refactoring code, hitting bugs from removed dependencies, and managing technical debt. They'll feel like they're cleaning up failure. If you rezone, engineers reorganize features around a new mental model, but the code changes are smaller. The team morale difference is real. Fewer refactoring surprises mean fewer burnout spikes. The system effect: successful simplification requires not just user buy-in but team energy. Rezoning preserves more team energy because it's additive (adding a coherence layer) rather than subtractive (ripping out code). That matters for the next 8 months.

---

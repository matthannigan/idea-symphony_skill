---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "06_technical-entanglement-and-removal-risks"
persona: "The Systems Thinker"
---

# Technical Entanglement and Removal Risks - The Systems Thinker

---

## Dependency Graph Mapping and Entanglement Budgeting

* **Visualize coupling through telemetry, not architecture docs.** Map which features share notification channels, user ID resolution, persistence layers, and event buses by instrumenting your actual code—log every cross-feature dependency at runtime for 2 weeks. This reveals hidden coupling that architecture diagrams miss (e.g., meal planner querying workout data for context). Build a "removal cost matrix" per feature: cost to excise, cost of leaving infrastructure behind, and probability of cascading bugs. Allocate 30% of your 8-month runway to surgical removals of low-cost features first; preserve the remaining budget for high-cost cuts and their fallout. This front-loads learning before runway pressure forces band-aids.

* **Distinguish "UI removal" from "backend removal" and accept asymmetry for 6 months.** Ship features as hidden toggles in the UI (no screens, no nav tabs) while leaving backend infrastructure live. Measure user requests for the hidden features—zero requests justifies full backend removal in month 5; persistent requests signal that removal is actually a user need being met. The key is setting a hard review date (month 5, not "whenever") to prevent the Shifting the Burden pattern where temporary infrastructure becomes permanent because the removal conversation never happens again. Assign one engineer ownership of "deprecation project management" to ensure the conversation stays on the calendar.

* **Model cascading breakage with a "fault-tree" approach.** Identify the 3 features with the highest cross-coupling (likely workout tracker, social feed, and notifications); for each, map what breaks if it vanishes: which user workflows become impossible? Which backend queries fail? Which data retention rules conflict? Then build a small "integration test" that exercises the removal scenario with synthetic data before you touch production. The test won't catch everything, but it surfaces the most expensive surprises 6 weeks early instead of at relaunch.

---

## Load-Bearing Walls vs. Partition Walls

* **Audit the codebase's "voting record" for architectural truth.** Run a dependency and code-volume audit: which features consume the most lines of production code, appear in the most places, have the oldest (most-refactored, most-entangled) code? Fitness features often become load-bearing because they were built first—the notification system, user profiling, streak logic, and achievement infrastructure all wrap around them. Compare that audit to your product retention data. If retention says "cut the workout tracker" but the codebase spent 40% of its lifecycle making it robust, you're about to break load-bearing walls with a sledgehammer. The technical map and product map may contradict each other; that contradiction itself is the insight worth acting on.

* **Distinguish between "code load" and "architectural load."** A feature might be load-bearing because it owns critical infrastructure (like authentication or payment processing) rather than because it has high code volume. Social feed might be a partition wall—lots of code, low coupling. Community forum might be load-bearing even with less code because it bootstraps the notification and moderation pipelines that other features depend on. Audit both: codebase size and codebase dependency centrality. Make removal decisions based on dependency centrality, not volume. This prevents you from keeping a "small" but strategically central feature while removing a large but isolated one.

* **Map backward compatibility as a technical debt cost function.** If you keep the backend "temporarily," calculate the cost of maintaining backward compatibility with deprecated features—API versioning, feature flags, data migrations, test coverage. That cost should be in your runway math from day one. If the cost exceeds 15-20% of engineering capacity, you can't afford a gradual removal; you need a hard cutover. If the team can absorb it, plan the cleanup into sprints explicitly rather than hoping it happens. Load-bearing walls sometimes require temporary shoring—but shoring has a cost and an expiration date.

---

## Keystone Features and Trophic Cascades

* **Map retention loops, then remove bottom-up.** Identify the causal chains: what drives daily opening? (Likely streaks, social comparison, or challenge deadlines.) What drives those? (Notifications about your friends' progress, rewards, or time-based resets.) What reinforces those? (Social currency, tangible records like past workout history.) Now map which features sit at the foundation of these loops versus which are ornamental. Removing the achievement system might collapse the entire retention cascade even if 47-second sessions don't suggest it's critical—people stay for social standing, not because they use the recipe library. Run a "removal simulation" by asking: if we killed this feature today, which of the top 3 retention drivers would break? Start with features that break nothing.

* **Design a removal sequence that protects core retention loops.** Remove features in isolation for 2 weeks each (not all at once), measure retention and DAU/MAU, then hold the removal before moving to the next. This reveals trophic cascades that wouldn't show up if you removed everything simultaneously. The meal planner might seem independent, but its removal could trigger a cascade: users who planned meals no longer check the app → notifications become stale → friends stop seeing activity → social loop collapses. Staggered removal makes that visible. If retention craters after removing feature X, immediately restore it (you have the toggle) and reconsider whether it's actually a partition wall, not a keystone.

* **Anticipate user behavior adaptation, not just feature absence.** If you remove the community forum, users don't just stop reading posts—they might shift to external Slack groups, which reduces the app's stickiness even for remaining features. If you cut coaching services, users seeking accountability might churn entirely rather than use the app for solo tracking. Map the second-order user responses: where will they go if you remove this feature? Are you redirecting them toward a stronger core feature, or pushing them out of the ecosystem entirely? The cascade isn't just technical; it's behavioral.

---

## Deep Integration as a Forced-Clarity Audit

* **Use technical coupling as a product hypothesis generator, not just a risk filter.** Which features are most deeply intertwined? Likely the ones that were hardest to build right and are most essential to the app's coherence. The fact that meal planning, workout tracking, and social feed all share the same user context and timeline isn't accidental—it suggests the app was designed around a "holistic life logger" thesis. If your retention data says people only care about fitness, the codebase is "voting" for a different thesis: that people care about integrated lifestyle insights. Test this hypothesis by asking users: "If this app could do one thing perfectly, what would it be?" If they say "track workouts" (contradicting the codebase's integration investment), you have a genuine strategic conflict. If they say "show me my whole week in one view," the codebase was right and your feature-cut strategy needs rethinking.

* **Let architectural refactoring reveal hidden user needs.** The most heavily refactored, most-coupled code is often a sign of unsolved user problems that keep requiring fixes. Streak logic, for example, often becomes complex because "running streak" is a psychologically loaded concept that users care about more than the product team initially planned for. Deep coupling in the codebase might be evidence that a feature is solving a real user need in a way that has ripple effects everywhere. Before you cut it, ask: what user problem was this feature designed to solve, and has that problem changed? The technical answer might be "the problem is still there; the solution is just poorly positioned."

* **Compare the codebase's "investment history" to user behavior data as a conflict-resolution tool.** If the codebase invested heavily in social features (lots of code, deep integration) but retention data shows users engaged for individual tracking, you have a hypothesis to test: either the social features were built wrong and need a different approach, or users were never the right audience and you picked the wrong problem. Rather than treating the codebase as technical debt to be scrubbed, treat it as evidence. Have the team walk through the most entangled code and ask: "Why was this built this way? What user behavior were we trying to support?" That conversation often surfaces either (a) a user need that's real but not being measured, or (b) a sunk-cost fallacy that justifies cutting the feature despite its technical load.

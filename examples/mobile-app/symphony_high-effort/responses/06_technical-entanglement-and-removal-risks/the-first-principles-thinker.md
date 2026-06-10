---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "06_technical-entanglement-and-removal-risks"
persona: "The First Principles Thinker"
---

# Technical Entanglement and Removal Risks - The First Principles Thinker

---

## Dependency Graph, Second-Order Effects, and the Entanglement Budget

* **Reverse-map from persistence layer.** At its core, every feature integration problem is a shared-state problem. Stop analyzing code files—that's backward. Instead, audit the database schema first: which tables does each feature write to, which does it read, and which does it share with others? A shared `user_progress` table coupling the workout tracker to the habit tracker reveals the true cost of removal. With 8 months and 6 engineers, you cannot afford to ship infrastructure that's "temporarily left running." The contingency isn't what to do if removal proves costly—the contingency is to stop considering removal of any feature that shares mutable state with a keeper feature. Only cut features with truly orthogonal data models.

* **Quantify the coupling surface, not the feature list.** Forget "15 features." The meaningful question is: how many distinct data models, how many cross-feature notification triggers, how many analytics events, and how many authentication/permission layers underpin the app? If 15 features are written to 5 shared tables and routed through 1 notification pipeline, your real problem is a 5-table monolith, not 15 features. Before removing anything, measure the coupling surface: interdependencies per table, cross-feature transactions, shared caches. Features that touch orthogonal surfaces can be removed in parallel; features that share infrastructure create sequential dependencies and compound risk.

* **Distinguish removable code from zombie infrastructure.** The deeper concern is that removing features from the UI while leaving backend systems "temporarily" in place is not really removal—it's deferral. At launch, both you and the team will know that infrastructure exists. Engineering debt with a known date becomes engineering debt with indefinite survival odds because it "might be needed" if users request the feature again. Instead, commit to a hard deadline 6 weeks post-relaunch: features not included in the relaunch are not shipped in V2.0, and their backend infrastructure is deleted wholesale 6 weeks after launch—no exceptions, no "maybe later." This removes the haunting of half-built systems and forces architectural clarity upfront.

* **Use feature removal as an organizational health test.** At its core, the 8-month runway constraint isn't really about code—it's about team capacity. If the team is burned out, the real first principle is that removing features they no longer maintain has psychological weight independent of technical coupling. Use this relaunch as a forcing function: require the team to actually agree, in writing, on which features they want to keep. If they can't agree because the architecture obscures what the code is actually doing, then the technical debt isn't a side effect—it's the core problem. Map technical entanglement onto team sentiment. If 3 engineers say "the workout tracker code is tangled," and 3 say "no, it's clean," your dependency analysis is incomplete.

---

## Load-Bearing Walls vs. Partition Walls

* **Invert the priority mapping: start with code, not product vision.** Setting aside what you *think* users need, ask the engineers: which features, if removed, require changes to the core app infrastructure (navigation, authentication, data models, notification dispatch)? Those are load-bearing walls in the codebase. Then ask independently: which features drive retention, engagement, or signup? Compare the two lists. If the retention leaders don't align with the architectural load-bearers, you have a priority conflict that matters. If the highest-retention features are actually partition walls (removable without touching core infrastructure), you've won the lottery—cut everything else. If high-retention features ARE load-bearing, you face genuine trade-offs between user value and technical risk.

* **Map architectural criticality by reachability, not by feature popularity.** A load-bearing wall is one where removing it requires rewiring foundational systems. In code terms: which modules do the most other modules import? Which data models are referenced by the most feature codepaths? Which service APIs do multiple UI flows call? Run a dependency analysis tool (basic graph traversal; you don't need exotic tooling). Rank features by how many other features depend on their outputs or services. The features with the highest dependency count are your structural pillars. These cannot be removed without cascading refactoring. Features with zero incoming dependencies are partition walls—removable with zero risk to other systems.

* **Identify the critical path through the codebase.** At its core, every codebase has a critical path: the set of systems that must work for any user to get value. For a fitness app, this path probably includes user authentication, workout data persistence, and a feed or dashboard showing user progress. Trace which of your 15 features are on this path vs. off to the side. Features on the critical path are wired into every other feature's assumptions. Features off the path are removable in any order. Your relaunch strategy is determined by this map: commit all remaining runway to polishing and stabilizing the critical path features, and strip everything else. This is not a vote—it's structural.

---

## Keystone Features and Trophic Cascades

* **Map user habit loops, not feature lists.** Ecologists understand that keystones hold ecosystems together because they create the conditions for others to exist. In retention terms, which feature does the user open first? Which features do users then explore only because they've already opened that first feature? If the workout tracker is the entry point and users only discover the habit tracker, meal planner, and social feed *after* logging a workout, then removing the workout tracker collapses the entire ecosystem—not because of code coupling (though that likely exists too), but because it was the hook. Identify the keystone feature through behavior data (which feature is opened first, most frequently, by the highest percentage of retained users). Commit to keeping the keystone and the features it feeds into. Everything else is expendable.

* **Predict cascading loss through user cohort analysis.** Before cutting features, segment your 180K users by which features they actively used. For each segment, model what happens if that feature disappears: do those users abandon the app entirely, or do they shift to other features? If removing Feature A causes 50% of its users to churn entirely, and they represent 25% of total retained users, the cascade is devastating—removing A reduces the 30-day retention by ~12 percentage points. You may not be able to achieve this analysis cleanly, but even rough estimates (asking a subset of active users "if Feature X disappeared, would you keep using the app?") reveal hidden dependencies between features that aren't obvious from code structure.

* **Treat feature coupling as ecological succession, not just technical debt.** The fundamental insight is that ecosystems don't collapse because individual species die—they collapse because the removal triggers unexpected behavioral shifts in remaining species. Removing the marketplace might seem safe (small user base), but if the marketplace was the only monetization lever that attracted a certain cohort of power users who also drove engagement for everyone else, removal cascades. Before cutting, model the second-order effects: which features depend on the *engagement signals* of other features, not just their data? The social feed depends on users logging workouts in the tracker. The challenge platform depends on workout diversity. Removing features changes the engagement landscape for survivors. Map these behavioral dependencies as thoroughly as code dependencies.

---

## Deep Integration as a Forced-Clarity Audit

* **Ask which features the codebase is *actively voting for* through architecture.** At its core, "deep integration" reveals where the team has invested technical effort, and technical effort reveals implicit conviction about value. If the workout tracker code is entangled with the progress journal, analytics pipeline, notification system, and user profile service, the codebase is voting that these two features are core—regardless of what retention metrics say. Conversely, if the supplement store is architecturally isolated (a clean module that reads product data and writes orders, nothing else), the codebase is saying "this is optional, we built it with removal in mind." Compare the architectural voting (coupling depth) against the user voting (retention metrics) against the team's stated strategy (which features should stay). If all three align, your relaunch is coherent. If they conflict, investigate which signal is wrong.

* **Use architectural audit as a reframing tool for strategy disagreement.** The product team and engineering team may disagree about which 3-4 features to keep. Instead of negotiating positions, audit the codebase: generate a dependency matrix showing which features are most tightly coupled. This reveals a neutral, technical answer to "what does the app actually believe in?" If this answer contradicts retention data ("the most integrated features have the lowest engagement") or contradicts the team's intuition ("we thought Feature X was optional, but it's wired into everything"), you've surfaced a real problem. The technical answer might not be the right answer, but it forces clarity: you now know you're choosing to diverge from the codebase's architecture, and you can plan for the refactoring cost.

* **Integration depth as a proxy for organizational coherence.** If the 15 features show wildly varying integration depths—some deeply tangled, some isolated—it signals that the team never reached consensus on architecture. Some features were built assuming they'd be core, others assuming they'd be experimental. This organizational incoherence is the real cost. A feature that's isolated but non-retained can be removed instantly. A feature that's deeply integrated and retained is also manageable (you have incentive to keep refining it). But a feature that's deeply integrated AND non-retained is the real trap—the team invested heavily in something users don't value. Audit for these: they reveal where past technical decisions and user reality diverged most sharply. These are the lessons for building the relaunch.

---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "07_technical-debt-team-capacity-and-the-burnout-loop"
persona: "The Pragmatist"
---

# Technical Debt, Team Capacity, and the Burnout Loop - The Pragmatist

---

## Q1: Break the Technical Debt Feedback Loop Before Runway Runs Out

* **Stop the bleeding first, then cut.** Before making any product decisions, freeze non-critical feature development for two weeks. Dedicate that sprint entirely to triaging the 15 features: identify which ones are actively breaking, which are simply dormant, and which require ongoing maintenance even in their broken state. That triage data changes what "cutting" actually costs.

* **Run a maintenance cost audit per feature.** Ask each engineer to estimate hours per sprint spent keeping each feature running versus zero new development. If meal planning consumes 12 engineering hours per sprint with 0.3% of users touching it, the math on cutting it is simple. Concrete numbers break the feedback loop faster than strategic debates.

* **Implement a feature freeze with a sunset list.** Publicly commit (internally first, then externally) to a list of features entering maintenance-only mode as of a specific date — no bug fixes, no improvements. This stops the loop from the maintenance side without requiring an immediate cut. Engineers get mental relief; users get notice.

* **Use the burnout as a forcing function, not an obstacle.** A team that is too burned out to build new things is also too burned out to resist simplification. The moment to push the reset is now, not after morale recovers — because morale only recovers after scope drops. Frame the cut as the intervention, not the consequence.

* **Tie the feedback loop break to a single external milestone.** Pick one retention metric — say, 30-day retention reaching 15% — as the "green light" for any scope expansion. This creates a structural rule that prevents new features from re-entering before the core has proven itself. No milestone, no additions, full stop.

---

## Q2: Map Integration Debt and Regression Risk Before Cutting

* **Build the dependency graph before the feature list.** A practical starting point: have each engineer spend two hours documenting what their feature touches — shared APIs, database tables, notification systems, auth flows. Compile into a one-page matrix. You will find 2-3 features that are structural load-bearers and 8-10 that are islands. Cut the islands first.

* **Treat the dependency graph as a constraint on your core candidates.** If the workout tracker shares an API layer with the coaching service and the challenge platform, you cannot cut the coaching service without also deciding what happens to that API. This means your "core" selection isn't just about user value — it's about what you can actually isolate without destabilizing the rest. Run this analysis before the product debate.

* **Budget regression remediation explicitly into the 8-month runway.** A practical approach: assume that cutting each interconnected feature costs one engineer-sprint of regression testing and stabilization. If you are cutting 12 features, budget 4-6 sprints of stabilization work across the team. That is roughly 2 months of the runway. Plan for it explicitly rather than discovering it mid-execution.

* **Identify one "safe cut" to start.** Rather than a big-bang removal, find the feature with the fewest dependencies, the lowest usage, and the clearest isolation — and cut it first. The first cut teaches you where your dependency graph is wrong, reveals hidden connections, and gives the team a low-stakes rehearsal before the high-stakes ones.

* **Set a regression threshold before you begin.** Define in advance what constitutes an acceptable post-cut stability level — crash rate, API error rate, session completion rate. If cutting feature X causes crash rate to climb 20%, you need a rollback plan. Without a pre-defined threshold, you will spend the runway arguing about whether the instability is acceptable.

---

## Q3: Reallocation, the Designer Bottleneck, and the Energy Released by Subtraction

* **Calculate the maintenance-to-development ratio right now.** A practical estimate: with 6 engineers maintaining 15 features, assume 50-70% of engineering time is maintenance and firefighting. On 4 features, that drops to roughly 20-30%. That delta — 3-4 engineers moving from maintenance to focused development — is your actual capacity gain. Make this number visible to leadership before the cutting conversation begins.

* **Treat the designer as a sequencing constraint, not a headcount problem.** One designer supporting 15 features means design debt is invisible everywhere — inconsistent patterns, borrowed UI, deferred decisions. A practical approach: before cutting, have the designer audit the retained core for design debt specifically. Budget 6-8 weeks of focused design remediation as the first use of freed capacity. Otherwise, you simplify the feature set but ship the same "overwhelming" UX.

* **Frame the cut as a gift in the kickoff meeting.** In the first all-hands about the reset, lead with "here is what you will no longer have to maintain" before you say anything about strategy. Show the maintenance hours per sprint that each engineer will get back. Engineers care about craft; give them the capacity to do something excellently. The product rationale can come second.

* **Create a "retirement ceremony" for removed features.** A short internal retrospective — 30 minutes — where the engineer who built a deprecated feature presents what worked, what did not, and what they would carry forward. This converts the cut from a loss into a learning artifact and signals that craftsmanship is recognized even when the feature does not survive.

* **Use the transition period to reduce the designer bottleneck structurally.** With 3-4 features, a single designer can establish a design system rather than making bespoke decisions for each surface. Invest the first month of freed capacity in a component library. The designer stops being a bottleneck when engineers can compose from patterns rather than waiting for custom specs.

---

## Q4: Burnout, the Ownership Loop, and Morale in Reverse

* **Make the cutting process criteria-driven, not management-driven.** Before any feature is named for removal, establish the scoring rubric: retention contribution, maintenance cost, dependency count, user passion score. Then apply it as a team, in a working session where the data is visible. When the meal planning feature scores out based on agreed criteria, the engineer who built it has less grounds for resistance — and more grounds for trusting the process.

* **Create a safeguard: require user data to veto any "relief-driven" cut.** Before finalizing the cut list, map each proposed removal to its actual usage data. If the team proposes cutting a feature with 12% of daily active sessions, that surfaces a conflict between relief-driven and user-driven logic. The rule: no feature with more than 5% of active user sessions gets cut without a user interview round first.

* **Separate the "what to cut" decision from the "how to cut" execution.** Engineers who are skeptical of the product decision will be less resistant if they are given ownership of the technical execution. The PM decides which features go; engineers decide how they are removed, in what order, with what safeguards. This re-engages craft without relitigating scope.

* **Define "going through the motions" in measurable terms.** A practical approach: set a 90-day post-launch target for the retained core — a specific retention curve, session depth metric, or NPS threshold. If the team is under-committing, that will show up in the metrics within 60 days. Build a mid-point review into the plan so under-commitment can be named and addressed before the runway is consumed.

* **Watch for scope creep as a signal, not a failure.** If engineers are quietly rebuilding cut features or adding "just one more" capability to the retained core, that is information — either the core was selected wrong, the burnout is unresolved, or the team does not believe in the relaunch thesis. Treat early scope creep as a diagnostic flag that triggers a team conversation, not a performance issue.

---

## Q5: Cognitive Overhead as the Real Resource Being Wasted

* **Measure cognitive load directly before the cut.** Ask each engineer to list every system, feature, or dependency they actively hold in their head during a normal workday. Compile the list. If the median is 8-12 concurrent abstractions, that is the baseline you are improving against. Post-cut, run the same exercise. The delta is the resource you recovered — and it is a more honest measure than story points.

* **Use the "how many PRs did you have to touch" metric.** For a randomly sampled week, count how many distinct codebases or feature modules each engineer's PR required changes to. High cross-module coupling is the technical signature of the cognitive overhead problem. That number should drop sharply on 3-4 features with clean separation.

* **Reframe the relaunch goal from "better product" to "better system."** A practical approach: present the reset to investors and the team as an engineering simplification that makes the product tractable, not just a product strategy pivot. This framing makes the technical debt argument central rather than a footnote, which is more honest about what is actually failing.

* **Set a target for codebase size reduction.** A stripped-down 4-feature app should have meaningfully less code than a 15-feature one. Set a target — say, 40% reduction in lines of code or number of API endpoints — and track it as a success metric alongside retention. This makes the cognitive overhead reduction legible and gives engineers a concrete craft goal.

* **Build a "working memory budget" into your engineering culture.** After the reset, establish a norm: no new feature ships unless it fits within an engineer's reasonable working memory alongside the existing core. This is the structural safeguard against re-bloating. It is not a hard rule — it is a conversation trigger. "Does this fit in the budget?" becomes the question that replaces "do users want this?"

---

## Q6: The Engineer's Grief — Framing the Cut for the Meal Planning Builder

* **Acknowledge the craft before the decision.** In the conversation with that senior engineer, lead with specifics: "The meal planning module you built handles edge cases that most apps never bother with. The architecture is clean. This isn't a quality problem." Engineers who feel their craftsmanship is recognized are far less likely to become quiet saboteurs.

* **Give the engineer a meaningful role in the retained core.** A practical approach: assign the engineer who built the deprecated feature to the most technically challenging part of the simplified core. This signals that the cut is not a judgment on their capability, and it channels their energy into something that survives. Idle ownership of a dead feature is more corrosive than grief.

* **Distinguish "cutting" from "postponing" where honest.** If meal planning is genuinely not core right now but could be revisited in v2, say so explicitly — and mean it. If it will never come back, say that too. Engineers tolerate hard decisions better than they tolerate ambiguity that turns out to have been false hope. The honest framing of "this is permanent" is actually less demoralizing than "maybe later" that never materializes.

* **Document the deprecated feature formally.** Write a short internal post-mortem — what the feature tried to do, what it achieved, what it did not, what the code taught you. This converts the engineer's four months of work into institutional knowledge rather than deleted files. It also makes the cut feel like a chapter ending rather than an erasure.

* **Watch for the quiet rebuilding pattern.** An engineer who disagrees with the cut will often not argue openly — they will find ways to rebuild meal planning functionality inside the workout tracker, or leave hooks in the codebase "for later." A practical safeguard: in code review, explicitly flag additions that expand scope beyond the agreed core. Frame it as product discipline, not surveillance. The engineer who built meal planning is often the best person to catch when someone else is doing the same thing.

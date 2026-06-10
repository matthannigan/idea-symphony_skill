---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "06_technical-entanglement-and-removal-risks"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Technical Entanglement and Removal Risks

---

## Synthesized Insights by Question

### Question 28: Dependency graph, second-order effects, and the entanglement budget

**Full question**: Deeply integrated features rarely uncouple cleanly — shared data models, shared notification pipelines, and shared analytics instrumentation may mean that "removing" a feature creates new bugs and cascading debt rather than reducing maintenance load. How would you systematically map the dependency graph of the 15 features to surface both architecturally clean removals and the shared-state second-order effects that don't surface until after launch — and what's the contingency if removal proves costlier than expected within the 8-month runway? If features are removed from the UI but backend infrastructure is left in place "temporarily" to avoid risk, what mechanism prevents that infrastructure from surviving indefinitely and quietly consuming engineering time, and is a clean architectural break at relaunch actually achievable in 8 months given the team's current burnout state?

* **Map the dependency graph before cutting anything, and tier each feature by removal risk rather than treating "15 features" as the unit of analysis.** Scope an up-front audit at roughly two to three weeks. Drop the feature count and measure the coupling surface instead: which shared tables, notification pipelines, analytics events, and permission layers underpin the app. Tier each removal as green (isolated, cut first), yellow (shared state), or red (load-bearing), and cut only green-tier features in phase one. The most dangerous coupling (the meal planner silently querying workout data) is invisible on paper, so discover this through runtime telemetry rather than architecture diagrams.

* **Prevent "temporary" backend infrastructure from becoming permanent with a binding removal contract: a named deadline, an owner, and an automatic consequence.** Backend code left running "just in case" becomes permanent debt. Write down a hard sunset date the moment the UI is switched off, paired with enforcement so the removal conversation cannot quietly disappear. Mechanisms include in-code removal-deadline markers, a covenant that imposes a forced cleanup sprint on missed deadlines, archiving non-survivors in version control rather than deprecating them, and assigning one engineer ownership of deprecation project management.

* **Decide the contingency rule now, while calm, rather than under runway panic: pre-compute an entanglement threshold that triggers a deliberate response.** If removing a feature set exceeds a fixed share of available runway (for example, more than 30%), the team either extends runway or cuts deeper, by prior agreement. Front-load roughly 30% of the runway to surgical low-cost removals first to bank learning before deadline pressure forces band-aids.

* **If decoupling genuinely exceeds the runway, silo the feature's backend instead of deleting or leaving it tangled.** Move a too-tangled feature's tables, job queues, and notification hooks into an isolated schema or microservice with its own sunset date and a monthly infra audit. This prevents cascading breakage at launch without leaving the code intertwined with keepers.

* **The burnout state is itself an argument against asking the internal team to do the surgical mapping under deadline; consider buying the audit.** A six-engineer team already exhausted by 15 half-features cannot reliably map entanglement and hit a relaunch deadline at the same time, which produces urgency-driven decisions. Bringing in a contract engineer (around $15K) purely for the dependency audit buys runway confidence and a clear roadmap before the internal team starts building.

* **Stage removals as rolling micro-refactors with stabilization gates instead of one big-bang architectural break.** Cut one UI surface, stabilize for about two weeks, measure cascades, then cut the next. This spreads the burden across the 8-month window and gives the team real recovery points. Weight dependencies by data-flow volume rather than connection count so the right things go first: deeply-integrated-but-low-flow features are safer to cut than sparsely-connected high-volume-state features.

---

### Question 29: Load-bearing walls vs. partition walls

**Full question**: Structural engineers identify which walls carry the building's weight before renovating — given that some of the app's 15 features may be load-bearing in the codebase even if they're invisible to users, how should the team map technical dependency structures onto product priority decisions, and where do those two maps conflict?

* **Run two independent maps — user-retention impact and architectural centrality — then act on where they conflict, because the conflict itself is the strategic decision.** Build a technical load map separately from a product-priority map, then overlay them. The conflict zones, not the agreement zones, carry the real insight. Features low on both axes are safe cuts. High-retention/low-entanglement features are obvious keeps. The dangerous quadrant is high-technical-load / low-retention, which demands special scrutiny rather than reflexive cutting or keeping. A practical threshold: features referenced by fewer than five modules are partition walls; those referenced by fifteen or more are load-bearing.

* **Distinguish architectural load (owning critical infrastructure) from mere code volume, and decide on centrality, not size.** A feature can be load-bearing because it bootstraps shared infrastructure (auth, payments, notifications, moderation) even with little code, while a high-volume feature can be removable. Rank by dependency centrality and reachability (which modules are imported most, which data models are referenced by the most codepaths) to avoid keeping a small-but-central feature while cutting a large-but-isolated one. Trace the critical path (auth, workout persistence, the progress dashboard) and treat membership on it as structural.

* **Test load-bearing status empirically with a cheap shadow cut or stub before committing to deletion.** Disable a feature's code paths in staging in about four hours (stub endpoints, return empty responses, skip initialization), then watch for latency, crashes, or state-machine breakage. A feature that fails gracefully is a partition wall; one that cascades is load-bearing. You get concrete failure data in hours rather than weeks.

* **Treat a discovered coupling as a binary forcing function: either it is accidental (break it cleanly) or essential (ship the features as a paired unit), with no "maybe later."** When two features turn out architecturally inseparable, that is data, not a bug. It collapses ambiguity into one of two clean commitments and ends wishy-washy deferral.

* **Cohort-segment retention so a "low-usage" feature is not mistaken for a partition wall when it serves high-value power users.** Aggregate retention can hide that a low-DAU feature is load-bearing for the highest-LTV segment (a feature might show low Day-1 use but 70% retention among multi-month veterans), which would make a "safe cut" a costly mistake. When the maps conflict, incomplete user data may be the problem.

* **If you keep any backend temporarily, put its backward-compatibility cost into the runway math from day one.** API versioning, feature flags, migrations, and test coverage for deprecated features consume real capacity. Quantify it; if it exceeds roughly 15-20% of engineering capacity, gradual removal is unaffordable and a hard cutover is required.

---

### Question 30: Keystone features and trophic cascades

**Full question**: Ecologists know that removing a keystone species triggers cascades that reshape the entire ecosystem, often in ways that weren't predicted by studying the species in isolation — which of the app's features, if removed, would cascade into unexpected user-behavior changes, and how would you design a pruning sequence that protects against unintended collapse of the remaining retention loops?

* **The real risk is behavioral coupling, not code coupling: identify which features anchor retention loops, because cutting a keystone can crater engagement even when its own usage looks low.** Features driving retention through psychological or behavioral loops (notifications, streaks, social comparison, challenge deadlines) are often invisible in usage metrics yet catastrophic to remove. The recurring example: challenge notifications drive friend invites, which drive workout logs. Cutting challenges to "simplify" can collapse the entire DAU/MAU ratio. Map the causal chains that drive daily opening before touching anything. The keystone is the feature users open first, the rest they only discover afterward.

* **Sequence removals as staged pruning with observation gates rather than a single simultaneous cut. Pilot on a power-user subset so cascades reveal themselves before they hit everyone.** Remove one feature at a time, stabilize and measure for about two weeks, then proceed. Pilot the sequence in a closed beta of roughly 500 power users: a sharp retention cliff (around 15%) signals a keystone, so revert; a small drop (around 2%) confirms redundancy. Toggle-based removal makes restoration cheap, turning cascade prediction into a live, reversible experiment.

* **Model second-order user behavior, not just feature absence: ask where displaced users go and whether removal redirects them to the core or pushes them out.** Removing a feature redirects users. Sometimes they find external substitutes (Slack groups, recipe websites) that reduce overall stickiness. Sometimes they churn entirely. Estimate the magnitude: if removing a feature churns 50% of its users and they are 25% of retained users, that is roughly 12 points of 30-day retention. Even rough survey estimates ("would you keep using the app if X disappeared?") reveal hidden behavioral dependencies.

* **Build safety valves: keep one or two anchor features at full functionality and retain reversible toggles so a wrong core-selection is recoverable, not fatal.** Designate retention anchors that are never cut during the removal process. This way, any retention drop can be attributed to removed features rather than to core selection. Keep the ability to re-enable removed features from the backend without a full revert.

* **Cascades can be positive: aggressive removal may improve the core loop by freeing notification bandwidth and attention. Test for upside, not only collapse.** Cutting the marketplace and supplement store might free notification bandwidth to sharpen the workout tracker. Run A/B tests with subsets disabled to find removals that actively improve the core.

* **Frame removal through native-vs-invasive features: cutting "invasive" trend-chasing additions returns the system to its native state and rarely cascades because the users who churn are the lowest-retention cohort anyway.** Users who came for the original vision are relieved by the cuts. Those who came for the bolt-on features were already the weakest cohort. This reframes removal from "causing cascades" to "returning to the native state."

---

### Question 31: Deep integration as a forced-clarity audit

**Full question**: Removing deeply integrated features is framed as a technical risk, but integration depth also reveals which features the codebase has been "voting for" through accumulated investment. How could a structured audit of which features are most deeply entangled in the codebase—rather than a purely user-data or strategic exercise—surface a different and equally valid hypothesis about the app's true core, and what would it mean if the technical answer contradicted the retention data?

* **Read the codebase as a voting record of past conviction, and overlay that technical map against retention to surface a third, equally valid hypothesis about the true core.** Integration depth records what the team repeatedly invested in. Build the technical-vote map (lines of code, shared models, instrumentation hooks, refactor history via git-blame) and compare it to retention. Where they agree, the relaunch is coherent; where they conflict, you've surfaced a real strategic problem rather than a tidy data-driven answer. Triangulate a third axis (team sentiment) so high-on-all features are bulletproof keepers and low-on-both are safe cuts.

* **The most dangerous quadrant is deeply-integrated-but-low-retention: do not auto-delete it, because it is often a design or positioning failure of a real bet, not a worthless feature.** The architecture is ready for that feature to succeed while the data says execution hasn't landed. Diagnose whether the bet was wrong, the implementation was wrong, or the positioning was wrong before choosing delete-vs-rebuild. A deeply-integrated low-retention social feed, for instance, may be a UX problem where the architecture is ready and the experience is not; rebuilding can be cheaper than starting elsewhere.

* **Resolve the technical-vs-retention conflict by asking which signal is lagging reality.** Retention is real-time while codebase integration reflects 18-month-old decisions, so the conflict is often a timing mismatch. Mine each feature's git defect history: a heavily-integrated low-usage feature is either chronically broken-and-bandaged or adopted-then-abandoned, and that distinction determines the answer. Estimating extraction cost helps too: 400+ hours to remove a 2%-engagement feature means the codebase is voting it as core, which may justify repositioning rather than deletion.

* **Integration depth also records organizational and human dynamics, which can be orthogonal to product strategy and must be handled explicitly.** A feature may be deeply integrated because a single engineer entrenched it to amplify influence, or because the team never reached architectural consensus. Untangling such code is a political act, not only a technical one; reframe removal as "evolving your system for power users" to defuse resistance, and read wildly varying integration depths as a sign of organizational incoherence that is itself the real cost.

* **Read repeated rebuilds of a feature as recorded evidence of a failing hypothesis, which can justify cutting it precisely because investment never made it stick.** If a feature was rearchitected two or three times, the codebase documents failed attempts. That can justify removing it because users have repeatedly declined to engage despite aggressive investment, rather than reading the investment as proof of value. Conversely, repeated reshaping can signal an intent worth questioning: are you killing the feature because it is peripheral, or because go-to-market never educated users on it?

* **Institutionalize the audit so the relaunch does not regrow into the same 15-feature bloat.** Make decoupling a default practice after relaunch: add a quarterly entanglement health check, require an architecture review before merging any feature that touches more than three systems, and integrate via events and APIs rather than shared state.

---

**Questions addressed**: 4
**Synthesized insights**: 22

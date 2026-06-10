---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "06_technical-entanglement-and-removal-risks"
persona: "The Pragmatist"
---

# Technical Entanglement and Removal Risks - The Pragmatist

---

## Dependency Graph, Second-Order Effects, and the Entanglement Budget

* **Audit and prioritize by removal cost, not just impact.** Map dependencies in a two-week sprint: shared data models (ORM queries, migration cascades), notification pipelines (event subscribers), analytics (instrumentation points). Categorize each as "clean cut" (isolated UI, single table) vs. "tangled" (shared infrastructure). Assign removal cost estimates. Then reorder your cut priority by (retention impact / removal cost), not retention impact alone—a feature with 2% retention but 40 hours to decouple should wait. This reframes "entanglement" from a blocker into a budget constraint. Allocate 2-3 months upfront for high-cost removals while shipping low-cost UI simplifications early to show momentum.

* **Parallel infrastructure: don't delete, silo temporarily.** If decoupling a feature safely exceeds 8 months, isolate its backend instead. Move its tables, job queues, and notification hooks into a separate PostgreSQL schema or separate microservice (even if just a Lambda). This prevents cascading breakage at launch and gives your team breathing room to deprecate cleanly post-relaunch. Set a hard deadline—"this infrastructure sunsets 6 months post-launch"—to prevent indefinite technical zombies. Run a monthly infra audit to flag anything still marked temporary but untouched.

* **Measure removal risk by test breakage, not code review.** Run your test suite after each feature removal stub; measure test failures per hour of work. If stubbing out the meal planner breaks 40 tests across 6 unrelated modules, that's your entanglement signal. Prioritize removing features with low "test friction" first; they're usually architecturally cleaner. Test-driven removal ordering often contradicts product intuition but saves weeks.

---

## Load-Bearing Walls vs. Partition Walls

* **Code metrics drive the map.** A practical approach: run static analysis on your codebase to measure coupling. Count inbound references to each feature's core classes, aggregate data usage across features, trace shared middleware dependencies. Features referenced by fewer than 5 other modules are partition walls; features referenced by 15+ are load-bearing. Compare this technical map against your retention/engagement map. If your highest-retention feature is a partition wall and a low-retention feature is load-bearing, you've surfaced a real strategic conflict worth debating openly.

* **Prototype removal as a staging exercise.** For each feature flagged as potentially load-bearing, spend 4 hours prototyping its removal: stub out its API endpoints, return empty responses, skip initialization. Deploy to staging; run your test suite; check for crashes. A feature that fails gracefully at stub-time is partition. One that crashes or causes cascading failures is load-bearing. This takes less time than a full code audit and gives you concrete failure data to negotiate with.

* **Align incentives between product and engineering.** Create a shared document: feature name, retention data (product), technical dependency count (engineering), removal cost estimate (engineering), and final cut/keep decision (jointly). This forces both roles to see the full picture. Often the PM will concede that a low-retention feature stays temporarily because it's technically clean, and engineering will accept killing a high-retention feature early because removal unblocks 3 other improvements.

---

## Keystone Features and Trophic Cascades

* **Design a removal sequence, not a list.** Instead of deciding "cut features 1-12, keep 3-4," order removals by dependency rank (remove partition walls before load-bearing features) and user behavior coupling. For example: if removing the marketplace breaks the social-feed's commerce integrations, kill the marketplace before the feed. If the meditation guide drives daily habit-checkin visits, don't cut it before validating that your core retained features can sustain the habit loop alone. Pilot the removal sequence in a closed beta with 500 power users; measure retention drop and session engagement per removal. A 15% retention cliff after killing feature X signals a trophic cascade; revert and rethink. A 2% drop suggests X is truly redundant.

* **Identify cascade triggers by cohort behavior.** Analyze your 180K users across 3 cohorts: (1) single-feature heavy users—people who used primarily one feature and ignored the rest. (2) multi-feature users—the 8% retention group. (3) the 92% churn cohort. If cohort 1 is 60% of users and they're all meal-planner focused, removing features while keeping the planner might re-engage them. If cohort 2 is a tight cluster that uses all 15 features, removing any one might trigger cascade collapse. Shape your removal sequence around cohort dependency patterns, not feature popularity.

* **Build safety valves into your relaunch.** Keep 1-2 "anchor" features that you're not cutting and use them as retention anchors during removal. For instance, if the social feed and workout tracker are your core 3-4, remove other features around them but keep them at full functionality. Then, post-relaunch, if retention drops unexpectedly, you have confidence that the problem is the removed features' absence, not your core selection. A safety valve also lets you pivot: if cascade data shows your core choice was wrong, you can re-enable 1-2 removed features from the backend without a full revert.

---

## Deep Integration as a Forced-Clarity Audit

* **The codebase as a hidden voting record.** Run a git-blame analysis over your last 18 months of commits: measure lines-of-code-changed per feature, bug fixes per feature, and refactoring time per feature. Features with heavy recent investment and frequent fixes are codebase votes; features touched only at launch are forgotten. Compare this against your current retention data. If the meditation guide has 400 lines changed, 23 bug fixes, and 2% retention, your team has been voting for a feature users don't want—a red flag for misalignment. If the workout tracker has 50 lines changed, 1 bug fix, and 8% retention, the team under-invested in your actual core. This audit surfaces whether your product strategy reflects engineering reality.

* **Map integration depth as product-development hypothesis.** Build a matrix: Y-axis is entanglement (how many shared systems each feature touches), X-axis is retention. Ideally, features cluster in the low-entanglement, high-retention quadrant (easy cuts, high user value). But if your highest-entanglement features are also low-retention (e.g., marketplace integrated into 12 other systems but 1% DAU), the integration may have been a strategic mistake, not a technical necessity. Use this as a lens for post-relaunch architecture: avoid re-entangling as you rebuild. The audit justifies rebuilding simpler.

* **Institutionalize this audit going forward.** After relaunch, add a quarterly entanglement health check to your engineering roadmap: measure lines-of-code and coupling per feature; flag features that are highly coupled but low-impact. This prevents you from repeating the 15-feature bloat cycle. Make decoupling a default-on practice: any new feature should integrate via events or APIs, not shared state. A pragmatic rule: if a feature touches more than 3 systems, require an architecture review before merge.

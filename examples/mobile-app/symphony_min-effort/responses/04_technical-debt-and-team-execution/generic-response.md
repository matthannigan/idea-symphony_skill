---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/min"
datetime: 2026-04-27
effort: "min"
stage: "Phase 3: Generic Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "04_technical-debt-and-team-execution"
---

# Brainstorming Responses: Technical Debt and Team Execution

---

## Question 15: Which of the 15 Features Are Architecturally Entangled With the Features Being Kept, and What Is the Realistic Engineering Cost of Cleanly Excising Them Without Introducing Regressions in the Core Product?

* **Build a dependency graph before writing a single line of removal code.** Spend two days having engineers map every inter-feature data flow, shared service call, and database join. Tools like a simple whiteboard session with sticky notes per feature, or a static code analysis pass using grep for cross-module imports, will surface entanglements quickly. The output: a visual where each feature is a node and edges represent coupling. Clusters of tightly bound nodes reveal which removals are cheap ($500–1,000 in engineer-hours) and which are expensive ($5,000+). Without this map you will be guessing, and guessing on a 6-person team with 8 months runway is a bet you cannot afford.

* **Treat entangled features as "freeze and facade" candidates rather than full excisions.** If the sleep tracker shares its data pipeline with the workout logger (a core keeper), removing sleep tracking cleanly might take 3 weeks of refactoring. An alternative: hide the sleep UI from all new users immediately, freeze all writes, and leave the pipeline intact. The debt stays dormant; users never see the feature; engineering spends zero weeks on risky surgery. Schedule a proper excision in month 4 when the core is stable. This decouples the user-facing simplification timeline from the engineering cleanup timeline.

* **Score each feature on two axes: coupling depth and data contamination.** Coupling depth measures how many shared services or tables the feature touches (0 = standalone, 3 = deeply embedded). Data contamination measures whether removing it would orphan rows that core features reference. A feature scoring low on both is a clean delete — ship it in a sprint. A feature scoring high on both deserves a dedicated two-week refactor sprint with a rollback plan. This scoring turns a qualitative "it's complicated" conversation into a prioritized engineering backlog that the PM can slot against runway.

* **Run regression tests against the core feature set before and after each removal.** Define a test suite of 20–30 critical user paths through workout tracking, progress viewing, and social sharing (whatever the core turns out to be) before you touch anything. Every feature removal runs this suite. The suite acts as a canary: if a removal breaks something unexpected, you catch it within hours, not after a production incident. With 6 engineers, a shared CI pipeline that runs this suite on every PR is achievable in a week and pays dividends for the entire 8-month window.

* **Negotiate a "big bang removal weekend" for the cheapest cuts to build momentum fast.** Identify the 4–5 most standalone features — those that are basically self-contained UI screens with their own tables and no shared services. Remove them all in a single coordinated weekend deploy. The team gains an immediate psychological win (the codebase visibly shrinks), users see a dramatically simpler navigation, and you bank learnings about your removal process before tackling the harder entanglements. Reserve the complex excisions for planned sprints in weeks 3–6.

---

## Question 16: Does Removing a Feature Always Reduce Technical Debt, or Can Poorly Isolated Features Leave Behind Orphaned Dependencies, Unused Database Tables, and Dead Code Paths That Cost More to Clean Up Than to Leave Dormant?

* **Removing a feature can increase immediate maintenance burden if the excision is incomplete.** An orphaned `user_sleep_goals` table that no code writes to but that still lives in your schema means every new engineer has to ask "what is this?" — that is a recurring cognitive tax. Dead code paths that reference removed modules cause build warnings and confuse static analysis. The practical rule: a feature removal is only "done" when the dependency graph is clear, not when the UI is hidden. Budget cleanup time explicitly — typically 30–50% of the removal effort — or you accumulate a new category of debt called "half-removed features."

* **Use a "dead code quarantine" strategy to manage cleanup risk.** Rather than deleting orphaned code immediately, move it into a clearly named `_deprecated/` directory with a dated comment: `// DEPRECATED 2026-05: removed sleep tracker, safe to delete after 2026-08 if no regressions.` This gives you a 90-day window to confirm the removal has no surprises, after which deletion is low-risk and fast. The quarantine is searchable, so engineers never wonder whether some old code is intentionally present. It also makes the cleanup sprint in month 4 mechanical — just delete the quarantine directory after the grace period.

* **Database orphans are the sneakiest form of residual debt.** Tables left behind after a feature removal still get backed up, still appear in schema diffs, still slow down database migrations, and can accumulate stale rows that bloat storage. A lightweight discipline: for every removed feature, create a database migration that drops or archives the now-unused tables within the same sprint. If you are afraid to drop (because data might still be needed for analytics), create a separate analytics export schema and drop from the operational database. Never let "we might need that data someday" justify leaving operational tables in production indefinitely.

* **Sometimes leaving debt dormant is the correct economic decision.** If a feature's database table is read-only (no new writes), costs $2/month in storage, and would take 3 engineer-weeks to safely remove due to foreign key entanglement, leaving it dormant for 6 months is rational. The calculus changes when: (a) it causes active bugs, (b) it blocks a schema change you need for a core feature, or (c) a new engineer wastes more than 2 hours trying to understand it. Track dormant debt on a visible list with a "trigger to act" column so decisions are revisited on schedule rather than forgotten.

* **Write a feature-removal checklist to standardize the process across the team.** A checklist with 8–10 items (remove UI, delete API routes, drop or archive tables, remove background jobs, clean feature flags, audit for orphaned imports, update documentation) ensures every engineer does the same complete job. Without it, two engineers will remove features in different ways — one leaves dead routes, another leaves dead tables — and the codebase accumulates a patchwork of half-done cuts. The checklist also surfaces the true cost of removal upfront so the PM can schedule it properly rather than discovering mid-sprint that "just removing the UI" is only 20% of the work.

---

## Question 17: How Do You Help Engineers Who Built the Features Being Cut Experience the Simplification as a Win — Reclaimed Focus — Rather Than as Having Their Work Devalued?

* **Reframe the narrative before the announcement: "we shipped and learned, now we focus."** The language a tech lead uses in the first all-hands sets the frame for months. "We're cutting the sleep tracker because it failed" triggers defensiveness. "The sleep tracker taught us that users come here to move, not to sleep — we're doubling down on that insight" honors the work while explaining the strategy. Prepare this framing deliberately. Ask the engineer who built the sleep tracker to present what they learned from it. Giving them the microphone transforms them from victim to expert.

* **Convert removal sprints into portfolio moments.** Have each engineer who built a now-removed feature write a 200-word "what we learned" entry in a team wiki. These entries become evidence of product maturity and engineering judgment — assets for performance reviews and job interviews, not just internal records. When the engineer's LinkedIn says "built and analyzed 6 features, drove strategic simplification that improved retention 3x," the removal becomes a career highlight rather than an embarrassing deletion. Coach them explicitly on this framing.

* **Assign the builders as leads on the removal of their own features.** This is counterintuitive but powerful: the engineer who built the meal planner knows its architecture better than anyone, so they should own the removal sprint. This signals trust and gives them agency rather than watching someone else delete their work. It also ensures the removal is done cleanly — they know every edge case. Psychologically, leading the excision transforms the experience from "my work was erased" to "I shipped it, analyzed it, and professionally sunset it."

* **Tie the simplification explicitly to team quality of life.** The team is burned out from maintaining 15 half-built features. Make that connection concrete: calculate the approximate hours per week each engineer currently spends on bug triage and maintenance for features being cut. Show the math: "Removing these 8 features frees up roughly 12 engineer-hours per week — that's 1.5 engineers of capacity redirected to the core." When engineers see the simplification as an investment in their own working conditions, not just a product strategy, motivation shifts from compliance to advocacy.

* **Create a visible "focus dividend" that the team controls.** After the simplification ships, give the team a dedicated "freedom sprint" — two weeks where engineers can work on technical improvements, refactoring, or tooling they choose. Frame it as a direct result of the focus: "We bought this sprint by simplifying." This concretely rewards the team for the hard work of cutting and gives them something to anticipate during what can feel like a painful phase. It also generates goodwill that sustains momentum through the harder removal sprints that follow.

---

## Question 18: With 8 Months of Funding, What Is a Credible Timeline From Decision to Simplified Public Relaunch, and How Much Runway Should Be Held in Reserve to Respond to User Feedback After Launch?

* **A credible minimum timeline is 10–12 weeks from decision to public relaunch.** Week 1–2: finalize which features survive (data analysis + 10 user interviews). Week 3: architect the removal plan, write the feature-removal checklist, communicate to existing users. Week 4–6: execute removals in priority order (standalone features first, entangled ones second), run regression tests continuously. Week 7–8: beta test with a cohort of 200 existing power users, fix critical bugs. Week 9–10: soft launch to all existing users with a clear "why we simplified" in-app message. Week 11–12: monitor retention metrics and patch. At 10–12 weeks, you spend roughly 3 months of your 8-month runway on the transition, leaving 5 months for post-launch iteration — a healthy ratio.

* **Reserve 3 full months of runway as a post-launch response buffer, non-negotiable.** The first 4 weeks after relaunch will surface bugs, user confusion, and metric surprises you did not anticipate. Weeks 5–8 are for the second iteration — deepening the core features based on what you learned. Weeks 9–12 are for the growth experiment: a single acquisition or retention mechanic tested against the now-clean product. If you launch with only 2 months left, you have no room to respond to what users tell you — you are essentially betting the company on the relaunch being perfect. Three months gives you two full response cycles.

* **Run a "quiet simplification" 6 weeks before public relaunch to derisk the timeline.** Push the simplified version to a 10% traffic slice (new installs only) while the full app stays live for existing users. Measure session length, retention at day 7, and crash rate against the control group. If the simplified version underperforms, you have 6 weeks to diagnose and adjust before you expose existing users. If it outperforms (likely), you have data to use in your relaunch communication: "Users on the new experience are 2x more likely to return on day 7." This approach reduces the binary risk of a big-bang relaunch.

* **Build a 30-60-90 day metric review cadence into the relaunch plan explicitly.** Day 30: Is 30-day retention trending above 8% (current baseline)? If not, what single change has the highest expected impact? Day 60: Is DAU/MAU trending toward 10% (a 5x improvement target)? If not, revisit onboarding. Day 90: Is session length trending above 90 seconds? These reviews are decision gates, not just reporting moments. If you hit day 30 and retention is still at 8%, you make a pivot decision with 5 months of runway remaining — enough time to act. Without explicit gates, you discover the problem at month 6 with 2 months left and no room to move.

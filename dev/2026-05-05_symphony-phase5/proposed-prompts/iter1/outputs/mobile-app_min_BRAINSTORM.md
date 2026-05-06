---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/min"
datetime: 2026-05-05
effort: "min"
stage: "Phase 5: Final Output"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Brainstorming Session: Feature-Bloated Mobile App MVP Reset

## Executive Summary

The strongest finding across all five topic clusters is that this is not, at root, a feature-cutting problem — it is a business-model decision that the team has not yet made, masquerading as a feature-cutting problem. The "if you kept one feature tonight, which would it be?" exercise produces three different answers depending on whether the team optimizes for retention (workout tracker), acquisition (challenge platform), or revenue (coaching service). Until that lane is chosen, every downstream decision — which features to cut, how to position the relaunch, how to message users, where to invest engineering effort, what defensibility looks like — remains underdetermined. Lane choice is the first work item, not a deliverable that emerges from the simplification.

The second cross-cutting finding is that *legibility* is a load-bearing requirement, not a polish layer. Cutting from 15 features to 3–4 fails if the result still reads as "a product that used to have more." Navigation architecture, onboarding copy, app store positioning, and the timing of the announcement (which must coincide with at least one shipped improvement) all serve the same goal: making constraint feel chosen rather than imposed. The same logic appears inside the engineering team — engineers experience the cuts as deletion unless leadership actively reframes the work as a "focus dividend" with reclaimed engineer-hours visibly returned.

Behavioral evidence consistently outranks stated preference as the decision anchor. Organic-revisit rate (sessions not triggered by a push), session-entry-point distribution, and cohort retention by first feature used are the three signals that distinguish features users depend on from features they merely tolerate. A frequency-vs-time-spent 2x2 can eliminate 6–8 features before any user research is conducted. Where analytics and interviews conflict on a contested feature, a 72-hour "feature blackout" on a 10% traffic segment converts the disagreement into a controlled experiment with a 3-day cycle.

The metrics framework deserves separate emphasis. The current 8% 30-day retention number is misleading because it conflates users who never completed a single session with users who engaged and churned. Instrumenting a "first-loop completion" event before launch and reporting retention only among activated users resets the baseline and makes every downstream target meaningful. D1/D3 weekly cohort reports replace 30-day retention as the operational north star; "weekly active ratio among activated users" (target 40% at 8 weeks) becomes the steady-state measure. Every retention conversation should be paused until this segmentation exists.

Finally, the runway and team constraints force a specific shape on execution. Eight months of funding does not accommodate prolonged ambiguity. A public 60-day relaunch commitment, a dependency graph built before any code is touched, a 4–5 feature "big bang weekend" of standalone removals to build process confidence, and 30/60/90-day post-launch metric gates with predefined pivot triggers are the recurring scaffold. Three months of runway held in reserve for post-launch response is the explicit ask.

## Session Overview

This session examined how to strip a 15-feature social fitness app down to a focused core and relaunch it within 8 months of remaining runway. Five topic clusters covered feature triage, simplification execution, user communication, technical debt, and long-term competitive positioning. The session ran at minimum effort with a single generic brainstormer voice, producing a tight, internally consistent set of recommendations centered on choosing a business-model lane, instrumenting activation properly, and converting cultural restraint into structural process.

## Central Tensions

The most load-bearing tension recurs across at least three clusters: **the moves that protect users and team morale (gradual deprecation, long lead times, careful sunsetting) are in direct conflict with the moves that protect runway and execution velocity (bold relaunch, hard deadlines, fast cuts)** — and the team's burn-out plus 8-month runway tilt the balance toward decisiveness, but only if the human side is actively engineered. This appears as bold-relaunch-vs-phased (Cluster 2), heavy-user warning windows vs hard cuts (Cluster 3), and big-bang-weekend vs incremental removal (Cluster 4). Two additional tensions are worth keeping visible:

- **Behavioral data identifies what users use, but choosing what the app *is* requires choosing a business model** (Cluster 1). Retention, acquisition, and revenue optimization name three different "core" features.
- **The discipline that wins a defensible niche is the same discipline that must be institutionalized to prevent re-bloat in 18 months** (Cluster 5). Restraint has to become process, not values.

## Key Themes

- **Business-model lane choice is the upstream decision.** Several clusters surface this implicitly or explicitly: feature triage produces different answers per optimization goal (Cluster 1); positioning, brand, and metric targets all depend on it (Clusters 2 and 5); without it, "what does the simplified app stand for" cannot be answered. `[recurring]`
- **Behavioral signals over stated preference.** Organic-revisit rate, entry-point distribution, and first-feature cohort retention beat user interviews for keep/cut decisions; interviews govern *how to position* what is kept, not *what to keep*. `[recurring]`
- **Instrument activation before measuring retention.** The "activated user" segmentation (users who completed the first defined loop) is treated as the precondition for every retention number being meaningful. Replacing 30-day retention with D1/D3 weekly cohorts is named in two clusters. `[recurring]`
- **Legibility as a design requirement.** The simplified product must read as deliberate at every surface — navigation, onboarding, copy, announcement timing. Constraint as identity, not constraint as apology.
- **Removal is a project, not a cleanup.** Build a dependency graph before touching code. Removal is UI removal *plus* database cleanup *plus* code quarantine — typically 130–150% of the naive estimate. Incomplete removal is its own debt category.
- **Restraint must be encoded as process.** Three-source evidence rule, one-in-one-out, revenue-per-feature threshold, quarterly health audit. Individual judgment produced 15 features; only structural rules prevent recurrence.
- **Communication is segmentation, not channel.** Tiered timelines (heavy users 6 weeks, casual 2 weeks), per-feature exports, and beta selection by feature-fit all express the same insight: aggregate churn risk concentrates in specific segments.

## Conspicuous Absences (session-level)

- **Competitor and market-position analysis is missing across the entire session.** Cluster 1 names three internal optimization lanes (retention/acquisition/revenue) without asking whether any is already occupied by a well-resourced competitor. Cluster 5 argues for a defensible niche but never inventories who already occupies adjacent niches. For a 6-person team with 8 months of runway, "which lane is open" is at least as important as "which lane do we want." `[recurring]`
- **A maintenance-cost audit precondition is assumed but not specified.** Cluster 1 recommends quantifying maintenance cost in engineer-hours; Cluster 4 builds a dependency graph for coupling. Neither establishes how the audit itself gets done on a team that has moved fast for months and likely has fragmented institutional knowledge — no validation or cross-checking mechanism is proposed.
- **Active users of cut features have no communication plan.** Cluster 2 addresses lapsed users; Cluster 3 addresses heavy and casual users of the simplified product; Cluster 4 covers engineering communication. The intersection — currently active users who depend on a feature being removed — receives no churn-mitigation or sunset narrative.
- **Lapsed users (180+ days inactive) are skipped in the tier structure.** A reactivation opportunity timed to relaunch is left on the table.
- **Activation rate itself is undefined.** Cluster 2 proposes "weekly active ratio among activated users" as the north star but never sets a target activation rate, leaving the 40%/8-week target unanchored.
- **No gating mechanism for pricing or monetization changes.** Cluster 5's expansion gates focus only on features. Pricing experiments can distort the very retention metrics used as gates.

## Topic Summaries

### 1. Feature Triage and Core Value Identification
Feature triage at this app is not just an engineering decision — it requires picking a business-model lane (retention, acquisition, or revenue) first, because the "one feature tonight" exercise names a different feature for each. Behavioral data — organic-revisit rate, entry-point distribution, first-feature cohort retention — should drive keep/cut decisions; user interviews should govern positioning of what is kept. A frequency-vs-time-spent 2x2 can eliminate 6–8 features before any user research, and a 72-hour blackout on a 10% segment is the recommended tiebreaker when analytics and interviews conflict.
- See: [synthesis/01_feature-triage-and-core-value-identification_summary.md](synthesis/01_feature-triage-and-core-value-identification_summary.md)

### 2. Simplification Strategy and Relaunch Design
Simplification must be experienced as identity, not subtraction — every surface should communicate that focus was chosen, not forced. The recommended execution is a hybrid: announce the relaunch publicly with a 60-day horizon to create external accountability, then deprecate in controlled batches behind that commitment. The activated-user distinction reframes every metric: current 30-day retention conflates non-starters with churners, so D1/D3 weekly cohorts among users who completed the first loop replace 30-day retention as the operational north star, with 40% weekly active ratio at 8 weeks as the steady-state target.
- See: [synthesis/02_simplification-strategy-and-relaunch-design_summary.md](synthesis/02_simplification-strategy-and-relaunch-design_summary.md)

### 3. User Communication and Churn Management
Communication decisions that look like channel or tone choices are actually segmentation and sequencing decisions: heavy users (3+ opens/week) warrant 6-week direct email; casual users warrant 2-week in-app notice; beta cohorts should be selected by feature-fit, not by overall engagement. Every communication recommendation is paired with a mechanism that grants users agency — per-feature exports, partner migration flows, a 12-month read-only archive, a 30-day legacy-mode opt-in. The "we got better" framing only works if at least one visible improvement ships on the same day features are removed; otherwise the message reads as spin.
- See: [synthesis/03_user-communication-and-churn-management_summary.md](synthesis/03_user-communication-and-churn-management_summary.md)

### 4. Technical Debt and Team Execution
Removal is a high-stakes engineering project, not a cleanup, and the dependency graph built before any code is touched is the single highest-leverage investment. Incomplete removal — orphaned tables, dead code paths, half-removed API routes — is its own debt category that typically costs 130–150% of the naive UI-removal estimate. Engineers who built cut features should lead the removal of their own work and receive a concrete "focus dividend" sprint, with explicit 30/60/90-day post-launch metric gates that reserve three months of runway as a response buffer.
- See: [synthesis/04_technical-debt-and-team-execution_summary.md](synthesis/04_technical-debt-and-team-execution_summary.md)

### 5. Long-Term Strategy and Competitive Positioning
Competitive defensibility and feature restraint are the same posture in two contexts: the depth that wins a niche is the same discipline that prevents re-bloat 18 months later. The moat is architectural rather than functional — coherent depth on one use case, longitudinal behavioral insight that compounds with user tenure, and identity-driven positioning aimed at a specific user archetype. Restraint must be institutionalized through structural rules (three-source evidence requirement, one-in-one-out, revenue-per-feature threshold, quarterly health audit) because individual judgment is what produced 15 features in the first place.
- See: [synthesis/05_long-term-strategy-and-competitive-positioning_summary.md](synthesis/05_long-term-strategy-and-competitive-positioning_summary.md)

## Recommended Next Steps

1. **Run the "one feature tonight" exercise team-wide and separate answers by optimization goal (retention / acquisition / revenue) to expose whether a business-model consensus exists.** This is the upstream decision; do it before any cut list is finalized.
2. **Instrument the "first-loop completion" event and stand up D1/D3 weekly cohort reports before launch.** Without activated-user segmentation, every retention number remains misleading and every target unanchored.
3. **Build the frequency-vs-time-spent 2x2 for all 15 features and rank by organic-revisit rate (sessions with no push in the prior 24 hours) to produce a first-pass cut list before any user research.**
4. **Build a two-day dependency graph scoring every feature on coupling depth and data contamination; use it to sequence removals (standalone first, entangled later).**
5. **Audit the top 50 negative app store reviews for category-promise vs execution complaints to make the brand keep-vs-rebrand decision.**
6. **Publicly announce the relaunch with a 60-day horizon to create external accountability and reframe simplification as intentional evolution.**
7. **Identify the 4–5 most standalone features and remove them in a single coordinated weekend to validate the removal process and build team momentum.**
8. **Write a feature-removal checklist (UI, API routes, tables, background jobs, feature flags, imports, docs) and require it for every removal so true cost surfaces before sprints begin; assign the engineer who built each cut feature as lead on its removal.**
9. **Build per-feature one-tap exports (CSV/JSON, PDF for journal-style data) rather than a single bulk dump; segment user communication by engagement tier (6 weeks for heavy users, 2 weeks for casual, in-app for the rest).**
10. **Coordinate the simplification announcement with at least one shipped improvement on the same day so "we got better" is immediately verifiable; write the canonical help center article before any other channel sends.**
11. **Run a competitor and market-position scan for whichever lane is chosen — retention tools, social/challenge platforms, or coaching marketplaces — before committing to that lane.** (Addresses session-level absence.)
12. **Define a written communication and sunset plan for currently active users of cut features, not just lapsed and casual segments.** (Addresses session-level absence.)
13. **Push the simplified product to a 10% traffic slice 6 weeks before public relaunch to surface bugs and gather comparison metrics without exposing the full base.**
14. **Reserve 3 months of the 8-month runway as a post-launch response buffer with explicit 30/60/90-day metric gates (day-30 retention, day-60 DAU/MAU, day-90 session length) and predefined pivot triggers.**
15. **Codify a written feature-expansion gate before re-expansion is even on the table: three-source evidence rule, one-in-one-out, revenue-per-feature threshold, quarterly health audit. Extend the gate to cover pricing/monetization experiments, not only features.**

## Session Index

### Questions
- [QUESTIONS.md](QUESTIONS.md) — All questions consolidated
- [questions/by-topic/](questions/by-topic/) — Questions organized by topic cluster

### Responses
- [responses/](responses/) — All brainstorming responses organized by topic cluster

### Summaries
- [SUMMARIES.md](SUMMARIES.md) — Concatenated per-topic summaries
- [synthesis/](synthesis/) — Individual per-topic `_summary.md` files

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log

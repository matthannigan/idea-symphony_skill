---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/min"
datetime: 2026-06-09
effort: "min"
stage: "Phase 5: Final Output"
model-requested: "opus"
model-reported: "claude-opus-4-8"
---

# Brainstorming Session: Feature-Bloated Mobile App MVP Reset

## Executive Summary

The session's highest-confidence finding is that the hardest decision here is not which features to cut but which business to become. The triage cluster keeps arriving at a different "core" feature depending on the goal: the workout tracker wins on retention, the challenge platform on acquisition, a coaching service on revenue. The reframe that resolves this treats that divergence as the diagnosis itself. The product is trying to be three businesses at once, so the team's real job is to pick a lane (habit tool, social platform, or coaching marketplace) and let that choice dictate the core feature, the success metric, and the go-to-market motion. The session stops short of choosing the lane, leaving the single biggest call to the reader.

A consistent methodology runs underneath the strategy. Behavior beats stated preference for what to keep (organic-revisit rate, cohort retention by first-feature-used), while stated preference governs how to position what survives. The recommended evidence pipeline is graduated to the cost of each decision: a cheap 2x2 frequency-versus-time matrix cuts the obvious losers, while any contested cut gets a 72-hour blackout on a 10% segment before anything irreversible happens.

The relaunch is engineered as much for the team as for the user. With a burned-out six-person team and eight months of runway, morale is a primary engineering constraint: a declared hard date and a clean relaunch restore momentum better than a slow wind-down that reads as maintenance mode. That framing drives a wholesale redefinition of success metrics, recalculating retention only over users who completed a defined two-minute "first loop" and making weekly session frequency, not session length, the north star.

The session's recurring blind spot, surfaced in four of five clusters, is acquisition. The runway math, the revenue-per-feature gates, and the post-launch metric targets all assume a way to bring new retained users in, yet no acquisition channel is ever named. The existing 180K install base is correctly treated as a one-time re-engagement asset, but where users come from after that is the precondition the analysis never fills in.

## Session Overview

The request asked how to strip a feature-bloated social fitness app (15 features, 8% 30-day retention, 47-second sessions) down to a 3-4 feature core and relaunch it as something users open daily, with eight months of runway and a six-person team. This was a `min`-effort session: a single generic brainstormer worked through 20 questions organized into 5 topic clusters spanning triage, relaunch design, user communication, technical execution, and long-term positioning.

## Central Tensions

A single meta-tension organizes most of the session: doing the simplification *fast enough for a constrained runway and a burned-out team* versus doing it *deliberately enough that it reads as a confident identity rather than a retreat*. This shows up as the relaunch pull between deliberate identity and budget-cut speed (cluster 02), the technical pull between a fast morale win and a clean excision that avoids half-removed debt (cluster 04), and the strategic pull between disciplined narrowness and inevitable re-expansion (cluster 05).

Two cluster-specific tensions stand apart:

- **Which business to become, not which feature to keep.** Retention, acquisition, and revenue each point at a different core feature, so the real decision is a lane choice (cluster 01).
- **Broadcast versus the personal in churn management.** Getting ahead of churn with bold public transparency while making each affected user feel individually accounted for, which means funding both at once (cluster 03).

## Key Themes

**Behavior decides what survives; stated preference decides how it's sold.** Across clusters, what users *do* (voluntary revisits, session-entry points, share events) outranks what they *say* for choosing the core, but interview enthusiasm and category-promise language govern positioning and messaging. The top 5% of users are treated as a diagnostic signal for finding the hook the other 95% missed, explicitly not as the product spec.

**Match the evidence standard to the cost and reversibility of the decision.** Contested calls become short measurable tests rather than arguments: a 72-hour feature blackout, a 2-week experiment to confirm interview hypotheses, a 10% traffic-slice "quiet simplification" before relaunch, and 30-60-90 day metric review gates. Cheap, obvious cuts skip the ceremony.

**Morale is a primary engineering constraint.** A declared finish line and a named relaunch moment restore a burned-out team faster than incremental change. Builders of the doomed features are the variable that matters most: have them present what their feature taught the team and lead their own feature's removal so the cut reads as reclaimed focus rather than erased work.

**Simplicity has to read as a deliberate identity.** From the first screen, the product should say "intentionally simple," not "features removed." This anchors the information-architecture recommendations (drop tab bars, reach home in two taps), the onboarding ("we removed everything else so these work better"), and the depth-as-moat positioning around owning the 20-minute workout window end-to-end.

**Specificity is the trust mechanism with users.** Exact dates, named features, per-user data counts, feature-specific export formats, and concrete 90-day commitments all convert abstract intent into something users can verify. Pair every removal with a same-day visible improvement so subtraction reads as upgrade.

**Make future growth expensive on purpose.** Re-expansion pressure is treated as inevitable once retention is healthy, so the long-term answer is structural gates (one-in-one-out, a 25% retention floor, three independent evidence types, revenue-per-feature math, a quarterly feature-health audit) that keep effort-to-surface-area roughly constant. The goal is to make sure the same enthusiasm that built 15 features cannot quietly rebuild the bloat.

## Conspicuous Absences (session-level)

**No acquisition channel is ever named, across four of five clusters.** Triage leans on a revenue wedge, the relaunch reserves runway for a "growth experiment," and the long-term gates run on revenue-per-feature break-even math, yet none establishes where post-pivot users come from. The 180K base is a finite re-engagement asset, not a renewable channel.

**The team's own capacity is rarely costed.** Per-feature exports, a partner deal per cut feature, personalized account emails, a 12-month archive, and a two-stage beta are each recommended as if free of staffing trade-offs, even though the same six-person team is the stated reason for cutting features.

**Existing power users mid-removal are treated as a comms problem, not a churn risk.** The 10% canary measures new installs only. The loyalists most attached to a cut feature are never measured, and no kill-criterion is offered for when respect-driven retention effort stops paying off.

**The central decision is staged but never made.** The session sets up "retention vs. acquisition vs. revenue," concludes "pick one lane," then declines to commit. Defensible without data access, but it leaves the most consequential call to the reader; see the first next step below.

## Topic Summaries

### 1. Feature Triage and Core Value Identification

The app's best features pull in three directions: the workout tracker for retention, the challenge platform for acquisition, a coaching service for revenue. The session reframes that as the product trying to be three businesses at once, so the decision is which lane to pick rather than which feature to crown. The method is to weight behavior over belief for what to keep (organic-revisit rate, cohort retention by first-feature-used) and to turn any contested cut into a 72-hour blackout on a 10% segment. The lane itself is staged but left unchosen.
- See: [synthesis/01_feature-triage-and-core-value-identification_summary.md](synthesis/01_feature-triage-and-core-value-identification_summary.md)

### 2. Simplification Strategy and Relaunch Design

The relaunch has to read as a confident identity choice, not an amputation, even as the runway and a burned-out team pull toward whatever ships fastest. The resolution treats morale as a primary constraint: announce a hard date (~10 weeks), deprecate in controlled batches, and ship as a named moment. A wholesale metric redefinition anchors the instrumentation, recalculating retention only over users who completed a defined two-minute "first loop" and making weekly session frequency the north star instead of session length.
- See: [synthesis/02_simplification-strategy-and-relaunch-design_summary.md](synthesis/02_simplification-strategy-and-relaunch-design_summary.md)

### 3. User Communication and Churn Management

Managing churn well means broadcasting the simplification as a confident philosophy while making each affected user feel personally accounted for, and funding both at once. Specificity is the trust mechanism throughout: exact dates and feature names, per-user data counts, feature-specific exports, and named 90-day commitments, all framing removal as responsiveness to users' own stated frustration. The most actionable structural call is to seed the beta by feature-fit (users who already rely only on what's being kept) rather than by raw engagement, since the most engaged users will miss the cuts most.
- See: [synthesis/03_user-communication-and-churn-management_summary.md](synthesis/03_user-communication-and-churn-management_summary.md)

### 4. Technical Debt and Team Execution

Hiding a feature and cleanly excising it are different operations on different timelines, and conflating them is the trap. "Freeze and facade" delivers a visibly simpler product in days while the risky refactor waits for a stable core and a planned month-4 sprint, since an incomplete excision spawns its own debt category of orphaned tables and dead routes. A measurement-first discipline (dependency graph, regression suite, traffic-slice canary, metric gates) precedes every removal, and the builders of cut features lead their own removals so the work reads as reclaimed focus.
- See: [synthesis/04_technical-debt-and-team-execution_summary.md](synthesis/04_technical-debt-and-team-execution_summary.md)

### 5. Long-Term Strategy and Competitive Positioning

Defensibility comes from disciplined narrowness (one use-case threaded end-to-end), yet a healthy product inevitably faces pressure to re-expand, so the winning move is to make growth expensive on purpose rather than to stay small forever. Depth beats breadth as a competitive weapon: owning the 20-minute workout window and accumulating a longitudinal insight layer creates a moat that compounds with user tenure rather than feature count. Hard re-expansion gates (one-in-one-out, a retention floor, three evidence types, a quarterly health audit) exist to stop the original bloat-building culture from quietly returning.
- See: [synthesis/05_long-term-strategy-and-competitive-positioning_summary.md](synthesis/05_long-term-strategy-and-competitive-positioning_summary.md)

## Recommended Next Steps

1. Commit to a strategic lane (habit tool, social platform, or coaching marketplace) and let it dictate the core feature and success metric; everything else depends on this staged-but-unmade decision.
2. Name the post-relaunch acquisition channel before finalizing runway allocation; the revenue and re-expansion math assume a source of new retained users that is currently undefined.
3. Build a feature-scoring matrix ranking all 15 features by organic-revisit rate (sessions with no push in the prior 24h), weighting share events 3-5x over passive engagement.
4. Run the 2x2 frequency-vs-time matrix to cut the clear losers cheaply, estimated to eliminate 6-8 features before any interview.
5. Define the single "first loop" (open, log one workout with smart defaults, see a streak start) with no profile, social graph, or onboarding tour.
6. Recalculate retention over only users who completed the first loop, and stand up weekly D1/D3 cohort reports as the team heartbeat.
7. Announce a hard relaunch date (~10 weeks) and ship as a named moment: deprecate lowest-traffic features in weeks 1-4, stabilize the core in weeks 5-8.
8. Build an inter-feature dependency graph (a 2-day mapping of data flows, shared service calls, DB joins) and score each feature on coupling depth before any removal.
9. Apply "freeze and facade" to entangled features now and schedule clean excision into a month-4 sprint; stand up a 20-30 path regression suite on shared CI as a pre-removal baseline.
10. Write the canonical "What's Changing and Why" help-center article first and make every notice, email, and social post link back to it.
11. Build one-tap per-feature exports in the right format per feature (recipes to CSV, journal to dated PDF), and budget the staffing against the six-person team.
12. Recruit a feature-fit beta cohort (users who already use only the kept features), staged 25 users / 2 weeks then 200 users / 4 weeks, stating which decisions are final.
13. Run a "quiet simplification" on a 10% new-install traffic slice ~6 weeks pre-relaunch, and add a measurement path for power users attached to cut features.
14. Operate the 30-60-90 day metric review as decision gates while preserving ~3 months of runway as a post-launch response buffer.
15. Adopt a one-in-one-out re-expansion policy gated on a 25% retention floor and a quarterly feature-health audit, so future additions cannot rebuild the bloat.

## Session Index

### Questions
- [QUESTIONS.md](QUESTIONS.md) — All questions consolidated
- [questions/by-persona/](questions/by-persona/) — Questions by generating persona
- [questions/by-topic/](questions/by-topic/) — Questions organized by topic cluster

### Responses
- [responses/](responses/) — All brainstorming responses organized by topic cluster

### Summaries & Synthesis
- [SUMMARIES.md](SUMMARIES.md) — Concatenated per-topic summaries
- [synthesis/](synthesis/) — Individual per-topic files: `_summary.md` (always); `_synthesis.md` and `attributed/` *(`medium`/`high` only)*

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log

---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 5: Final Output"
model-requested: "opus"
model-reported: "claude-opus-4-8"
---

# Brainstorming Session: Feature-Bloated Mobile App MVP Reset

## Executive Summary

The most important finding of this session is that the plan to cut features rests on a diagnosis nobody has proven. "Feature overload caused our 8% retention and 47-second sessions" treats correlation as causation, and every cluster that touched the question pushed back on it. The move with the most upside is also the cheapest: segment day-30 retention by acquisition source before any feature is touched. The 8% figure is almost certainly a blended average hiding very different cohorts, where referral and intent-driven users may retain at 20-40% while paid or algorithm-driven installs retain at 3-4%. If that holds, the dropout majority were never the customer, and cutting features to win them back would wreck the focused product for the minority who actually fit.

Several clusters independently arrived at the same discipline: prove the thesis before spending the runway. The 47-second session is an abandonment state, not a preference, and it reflects at least three separate problems (users can't find what they came for, they found it and it's broken, or it isn't what they needed) that demand different fixes. The current engagement data can't be read as feature value either, because a 6-tab-plus-hamburger navigation suppresses some features and inflates others. Cheap instruments settle these questions: surfacing experiments that promote one buried feature for two weeks, hide-don't-remove cohort tests gated on a retention bar, exit surveys, session replays, and counterfactual interviews ("if this disappeared tomorrow, what would you miss?").

A second through-line is that the cut and the team's health are one problem, not two. The team is burning out because of the feature count, so cutting is itself the capacity-restoration move rather than a separate cost. Maintaining fifteen half-built features is estimated to consume 60-70% of capacity on stabilization; cutting frees roughly a third immediately. How the cut is framed decides whether it heals or wounds. "Restoring craft and focus" beats "admitting failure," but only if leadership backs the language with reduced velocity targets, protected refactor time, and irreversible cuts that signal no panic pivot is coming.

A third thread reframes the destination. The deeper problem may not be fifteen features but fifteen features each a third finished, which points toward depth on one feature rather than a longer subtraction list. The bloat itself came from a governance failure: no rejection threshold existed, so every "this could help someone" request passed by default. Unless that vacuum is named and interrupted with structural mechanisms (a single guiding metric, deletion treated as formally as launch, a single architectural integration point), the same reasoning rebuilds the bloat after the reset.

The session's sharpest caution is financial. A 10-month proof timeline runs straight into 8 months of runway. Expect 20-30% week-one uninstalls and budget for a flat period before retention climbs. Set a hard recovery checkpoint and a no-go date in writing, and line up a bridge round or partnership fallback before relaunch, not after.

## Session Overview

The request asked how to strip a feature-bloated social fitness app (15 features, 180K downloads, 8% 30-day retention, 47-second average sessions, 8 months of runway) down to a focused core and relaunch it. The session ran at medium effort across nine topic clusters, each developed by four independent perspectives spanning analytical, adversarial, pragmatic, and human-centered lenses. The clusters move from diagnosis (is bloat even the problem?) through the cut mechanics, communication, team dynamics, and the strategic identity and success metrics of whatever survives.

## Central Tensions

- **Prove the diagnosis, or commit the relaunch now.** This is the session-level meta-tension, recurring across diagnosis, removal mechanics, communication, and success metrics. Spending two to four weeks validating what's actually broken costs runway the team can barely spare; committing the eight-month relaunch now risks rebuilding for a problem the target user doesn't have. Several clusters resolve it the same way: a cheap validation gate comes before any irreversible cut.
- **A measurable cut, or a bet on what analytics can't see.** Grounding the cut in retention-anchored scoring is defensible to stakeholders, but the highest-value interaction may be a rare, identity-rewiring moment that usage data structurally cannot detect, and frequency-based scoring would systematically kill it.
- **Subtraction, or depth.** Whether the reset means cutting to 3-4 features or executing one feature so completely the rest aren't missed. The answer changes whether the team spends its runway cutting or building.
- **A passionate minority as product-market fit, or as captive demand.** A small devoted base might mark where genuine fit lives, or it might be users who settled because no good alternative existed. The same vocal pressure inflates both the feature's perceived value and the predicted churn from removing it.

## Key Themes

**Validate before you cut.** The strongest cross-cluster pattern is a refusal to act on the founding assumption without evidence. Treat "feature overload" as a hypothesis and test it cheaply: a single-variable experiment that hides most features for a traffic slice, a hide-don't-remove cohort gated on a 15% 30-day retention bar, a feature-removal toggle that watches what breaks when a candidate is disabled. Absence is a more honest signal than presence. A wrong-reason relaunch burns eight months the team cannot get back.

**The data is confounded, so reconstruct demand before trusting a number.** Aggregate usage is distorted by broken navigation and habit-loop inertia, which makes the least-broken features look beloved. The reliable signals are narrower: the first feature a retained user opens (the entry point), retention segmented by first-session activation feature, and irreplaceability measured through counterfactual interviews rather than frequency. A 2%-adoption, 80%-retention feature beats a 20%-adoption, 10%-retention one.

**Design backward from one fast, rewarding action.** There is broad agreement that the simplified product should be built from a single first action that delivers competence in under 60 seconds and ends in a tangible win, not setup or a tutorial. That moment becomes both the product spec (cut anything not required to reach it) and the tiebreaker for every feature debate. A standing acceptance test ("tangible progress in the first 60 seconds") gates anything re-added later.

**Cutting is the burnout cure, if it's framed as craft.** Feature reduction and team recovery are the same intervention, because the maintenance load causing the depletion can't be relieved while all fifteen features remain. The reframe from "we failed" to "we're choosing to master a few things" only works when paired with structural change, and the retrospective where a proud engineer hears their feature is cut is the moment that sets the tone for the whole reset.

**A counter-test on team passion as a selector.** A dissenting view across the team-dynamics cluster holds that a depleted team's preferences are not trustworthy strategic input: exhausted engineers favor the interesting feature over the boring-but-essential one, and one vocal voice can pass as consensus. Feature selection should run user impact first, then team sustainability, then passion, with passion deciding only when the user data is genuinely ambiguous.

**Focus is a slogan unless it's structural.** "We do fewer things better" doesn't survive contact with Strava, Apple Fitness+, and Whoop. A durable edge has to come from something incumbents can't or won't copy: owning a precise segment they optimize away from, moving faster to the next market window, or building defensible community. And the same governance vacuum that produced the bloat will reproduce it unless interrupted by explicit mechanisms.

## Conspicuous Absences (session-level)

Several decisions surfaced that the session framed but did not resolve, and they should not be papered over by the next-steps list. The most consequential is the core-product question that sits underneath everything: nobody verified that workout tracking is actually better than Strava, Apple Fitness, or Peloton. If the core is merely average, a cleaner UI changes nothing, and the entire feature-cutting plan is premature. This is named as a precondition the team has not established.

Unit economics are the second gap. Engagement and retention dominate the discussion, but CAC, LTV, and payback period are barely modeled, and a healthy-looking engagement number can mask a doomed business if narrowing into a niche shrinks the market below a viable revenue floor. Third, the segment choice itself is unmade: clusters repeatedly defer to "pick the highest-retention archetype" without the cohort analysis that would name it. Fourth, the through-line that overwhelm is really weak positioning (the team can't say in one sentence what the app is) is acknowledged and then left unaddressed. Each is a decision the next-steps section invites rather than resolves.

## Topic Summaries

### 1. Diagnosing the Real Problem
The most likely root cause isn't feature bloat at all; it's audience contamination in the retention data, and proving that should precede any cut. The 8% retention is probably a weighted average of mismatched cohorts, where listicle and algorithm installs bring completionists who want an everything-app, the opposite of the focused product's true user. Cohorting by acquisition source is a few hours of analysis that could rewrite the strategy. A second reframe reads overwhelm as a proxy for weak positioning and as a felt emotional sequence (hope, then visual overwhelm, then "this wasn't made for people like me").
- See: [synthesis/01_diagnosing-the-real-problem_summary.md](synthesis/01_diagnosing-the-real-problem_summary.md)

### 2. Reading Feature Signals
The desire-path principle is a two-step sequence: identify the feature users actually want, then unblock it. Skipping the first step inverts the outcome, because optimizing the path to a least-loved feature just helps users reach a bad product faster and leave faster. Until the navigation confound is removed, usage can't be read as value, so the recommended first move is a surfacing experiment that promotes one buried feature for two weeks and watches for a 2-3x jump. The truest signal is the entry point (the first feature a retained user opens), not aggregate usage or session length.
- See: [synthesis/02_reading-feature-signals_summary.md](synthesis/02_reading-feature-signals_summary.md)

### 3. The Passionate Minority
The passionate minorities aren't niche segments to triage; they're evidence the app has accidentally become several incompatible products sharing a backend, so the reset is really a choice about which user species the ecosystem serves. Meditation users want calm, marketplace users want commerce, and the cohorts barely overlap, which is itself a leading cause of the 8% retention. A deliberate counter-test cautions that loyalty may be captive demand rather than fit, answered by asking "would you switch to a world-class standalone?" The ethical obligation is honest exit (notice, data export, a named goodbye), not preservation.
- See: [synthesis/03_the-passionate-minority_summary.md](synthesis/03_the-passionate-minority_summary.md)

### 4. The Cut Decision — Framework and Authority
The retention problem may be entry, not exit: users leave from day-3 overwhelm and onboarding friction, not from a missing day-30 feature, so the first thirty seconds may be the real lever and the funnel should be audited before deletion data is read as a verdict on features. The strongest convergence is the feature-removal experiment (disable a candidate for a slice and watch what breaks), since absence is more honest than presence. Authority works as documented transparency (a written, data-first rationale and a pre-set tiebreak rule), not as title. One live caution: a single daily interaction optimizes for app-opens, not actual fitness behavior.
- See: [synthesis/04_the-cut-decision-framework-and-authority_summary.md](synthesis/04_the-cut-decision-framework-and-authority_summary.md)

### 5. Removal Mechanics and Relaunch Approach
A clean-break relaunch (roughly 6-8 weeks of build) beats an incremental sunset, which leaves features in a half-deprecated state that feels worse to users and splits effort across two codebases. But the cluster's most important finding is a direct challenge to the premise: removing features won't fix a weak core, so a hide-don't-remove or dual-cohort beta gated on a 15% 30-day retention bar should come first and can cancel the relaunch. No removal should precede a dependency audit (2-3 person-weeks) mapping shared databases and auth gates. The runway math is unforgiving: a 10-month proof timeline against 8-month runway needs a bridge round secured before launch.
- See: [synthesis/05_removal-mechanics-and-relaunch-approach_summary.md](synthesis/05_removal-mechanics-and-relaunch-approach_summary.md)

### 6. Communication and the Existing User Ecosystem
A ceremonial "burning of the ships" relaunch borrows real power from irreversibility, but that power depends on committing before there's proof, which is exactly what reads as hollow to already-burned users; the reframe is that the irreversibility must follow proof, not precede it. The strongest consensus is experience-before-explanation: ship the simplified app, let users feel the improvement, then tell the retrospective story (preemptive churn is estimated near 20% if warned versus 5% if you ship first). Notification overload is recast from a UX annoyance into an accessibility barrier, since some users with ADHD or anxiety rely on notifications as external scaffolding.
- See: [synthesis/06_communication-and-the-existing-user-ecosystem_summary.md](synthesis/06_communication-and-the-existing-user-ecosystem_summary.md)

### 7. Team Dynamics and the Psychology of Cutting
Cutting is the capacity intervention, not a separate cost: the team is burning out because of the feature count, so "restore morale first, then cut" is a false sequence, and cutting frees roughly a third of capacity immediately. Framing the cut as craft restoration only works if leadership backs it with reduced velocity targets and protected refactor time. A genuine reversal runs against the other perspectives: a depleted team's feature preferences are not reliable strategic input, so passion should rank below user impact and break ties only when the data is ambiguous. The retrospective where a proud engineer hears their feature is cut is the highest-leverage cultural moment.
- See: [synthesis/07_team-dynamics-and-the-psychology-of-cutting_summary.md](synthesis/07_team-dynamics-and-the-psychology-of-cutting_summary.md)

### 8. Strategic Identity After the Cut
The reset may be a depth bet rather than a subtraction exercise: the problem isn't 15 features but 15 features each a third finished, so the goal could be one feature executed so completely that users feel the absence of everything else as relief. The bloat was a governance failure (no rejection threshold existed), and that vacuum will rebuild the bloat unless interrupted structurally. The team's real edge is its latent assets (a 180K-user behavioral dataset, the engineers' codebase knowledge, the retained cohort's trust), which argue for a ruthless prune over a clean rebuild. "We do fewer things better" is a slogan; defensibility has to come from structure.
- See: [synthesis/08_strategic-identity-after-the-cut_summary.md](synthesis/08_strategic-identity-after-the-cut_summary.md)

### 9. Redefining Success for the Focused Product
A fast-completion, disappearing-into-life architecture is the right design only if the chosen core is something users complete (logging a workout) rather than browse (social discovery), so validating that the core is naturally time-bounded is the load-bearing decision, not perfecting session length. Success is reframed as completed core actions over DAU/MAU, with the first session ending in a tangible win. The counter-case on invisibility is that most invisible apps read as broken and strip away the levers retention and growth depend on, so prove value with a visible product first. Underneath sits a measurement discipline: segment by cohort, surface unit economics, and isolate the causal effect of feature reduction with a version toggle.
- See: [synthesis/09_redefining-success-for-the-focused-product_summary.md](synthesis/09_redefining-success-for-the-focused-product_summary.md)

## Recommended Next Steps

1. Cohort day-30 retention by acquisition source, demographic, and first-feature-accessed, then recalculate retention for a narrowly defined target slice. A few hours of analysis that may rewrite the strategy before anything is cut.
2. Run a hide-don't-remove validation: hide 12 of 15 features for a new-user cohort (or beta with 500 new and 500 existing power users), gated on clearing ~15% 30-day retention. If it stalls near 6%, the core is the problem and the cut plan is premature.
3. Run the dependency audit (2-3 person-weeks) mapping shared databases, notification systems, and auth gates across all 15 features before any removal, documenting orphaned code paths.
4. Audit the onboarding funnel separately from features: instrument the first thirty seconds and find where day-3 churners drop, before reading deletion data as a verdict on features.
5. Run a feature-removal experiment: soft-disable each top candidate (and notifications) for 10-20% of users for one to two weeks and measure the engagement and churn change. The clearest drop is the heartbeat.
6. Run a surfacing experiment: promote one buried-but-suspect feature to the home tab for two weeks and watch whether engagement jumps 2-3x, isolating UI debt from real demand.
7. Verify the chosen core is something users complete rather than browse, and pressure-test whether workout tracking is genuinely better than Strava, Apple Fitness, or Peloton before betting the relaunch on it.
8. Interview 5-30 retained users in conversation (not survey) with the counterfactual question ("which feature would you least like to lose?") and the captive-demand question ("would you switch to a world-class standalone?").
9. Define the core backward from a single first action that delivers competence in under 60 seconds and ends in a tangible win; prototype it and test with 10-20 users for the aha moment.
10. Build the unit-economics model in parallel so CAC, LTV, and payback period sit on the same dashboard as retention, and pressure-test the target segment's market size against realistic pricing.
11. Reduce team pressure now: cut notification volume and marketing demands, freeze new feature work, and run "what drained you this week?" retrospectives to free 10-15% of capacity.
12. Set an explicit feature-selection rubric (user impact, then team sustainability, then team passion) with a written tiebreak rule, plus a hard recovery checkpoint and no-go date with a pre-agreed pivot trigger.
13. Ship the simplified app first, then narrate what was cut and why; pair every "we're removing X" with a concrete "here's what we optimized instead," and reach high-investment users one-on-one with the honest-exit package.
14. Redesign notifications as opt-in tiered profiles defaulting to quiet, treating notification reliance as an accessibility need, and re-invite the cohorts who silently left over overwhelm.
15. Install anti-bloat governance: a single guiding metric, a feature review board requiring a usage prediction and a kill condition, deletion treated as formally as launch, and a single integration point. Secure a bridge round or partnership fallback before relaunch.

## Session Index

### Questions
- [QUESTIONS.md](QUESTIONS.md) — All questions consolidated
- [questions/by-persona/](questions/by-persona/) — Questions by generating persona
- [questions/by-topic/](questions/by-topic/) — Questions organized by topic cluster

### Responses
- [responses/](responses/) — All brainstorming responses organized by topic cluster

### Summaries & Synthesis
- [SUMMARIES.md](SUMMARIES.md) — Concatenated per-topic summaries
- [SYNTHESIS.md](SYNTHESIS.md) — Concatenated per-topic full syntheses
- [synthesis/](synthesis/) — Individual per-topic files: `_summary.md` (always); `_synthesis.md` and `attributed/` *(`medium`/`high` only)*

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log

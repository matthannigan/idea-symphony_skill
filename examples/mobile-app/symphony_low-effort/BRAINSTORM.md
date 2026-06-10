---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 5: Final Output"
model-requested: "opus"
model-reported: "claude-opus-4-8"
---

# Brainstorming Session: Feature-Bloated Mobile App MVP Reset

## Executive Summary

The single most consequential finding across this session is that the team does not yet have the data to make the cut it wants to make. Almost every cluster reached the same checkpoint from a different angle: aggregate session metrics and self-reported feedback cannot tell you whether the 8% retention and 47-second sessions come from feature bloat or from a core value proposition that simplification alone won't fix. A feasibility-oriented reading treats "jack of all trades, master of none" as good news, since it says users understood the value and found the execution lacking. A risk-oriented reading counters that this feedback comes only from the 8% who stayed, and the 92% who left silently may have churned for a reason no amount of simplification touches. Both readings point to the same first move: run structured diagnostics before committing to irreversible cuts.

A second high-confidence finding reframes the stakes. The 180K download figure is close to fiction as a retention base. At 8% 30-day retention, roughly 165K of those installs have already churned, leaving about 14K monthly actives and 3,600 daily actives. Every churn model, communication plan, and runway calculation that starts from 180K is built on false inputs. This recalculation, surfaced independently in the relaunch-path work, is the cluster finding least dependent on instrumentation the team may not have.

The diagnostic work itself is cheaper and faster than it feels. A single-question exit survey at uninstall, an audit of analytics logs that probably already capture screen views in Mixpanel or Amplitude, a feature-flag experiment that hides low-priority features for new installs only, and a one-day cohort query against the retained 8% are all executable within days, not months. Several clusters independently named the feature-flag path and the retained-cohort query as the most informative analyses available before any relaunch decision.

The recurring counterweight is the team itself. Six engineers burned out from maintaining 15 half-built features have a stake in cutting scope, and that stake contaminates the diagnosis. The relief-driven cut list and the user-driven cut list are not the same list. The strongest structural safeguard surfaced anywhere in the session is a pre-committed decision rule: write down, before the analysis runs, what the data would need to show to advise against relaunching, and name a person to hold the team to it. Without that checkpoint, the analysis reliably confirms whatever the exhausted team already wants to do. One caution runs underneath all of it: a focused product is not automatically a more inclusive one, and optimizing the relaunch around the engaged 8% risks a cleaner version of the same exclusion that drove the other 92% away.

## Session Overview

The request was to strip a feature-bloated social fitness app down to its 3-4 core features and relaunch as something users open daily, with 8 months of runway and a burned-out team of eight. This was a low-effort session: nine topic clusters, each examined through a feasibility-oriented lens and a risk-oriented lens, then summarized. The clusters move from diagnosis (is bloat even the problem?) through method (how to cut honestly) to execution (relaunch path, team psychology, communication, and inclusion).

## Central Tensions

The session has one meta-tension that recurs in eight of the nine clusters: a feasibility-oriented push to act now on the data and signal already available, against a risk-oriented warning that the signal is too thin, too contaminated, or too colored by an exhausted team's motivated reasoning to be trusted yet. Three cluster-specific tensions are load-bearing beyond that pattern:

- **Diagnosis vs. rationalization** (Cluster 01): is simplification an urgent execution fix, or a post-hoc story an exhausted team tells itself while the real value-proposition question goes unanswered?
- **The relief paradox** (Cluster 07): cutting features is the fastest path to engineering relief, yet the same exhausted team that most needs the reset is least equipped to map dependencies, manage regression risk, and handle the grief safely.
- **Whose product is this** (Clusters 04 and 09): building around the engaged 8% is tractable because their data and voices are reachable, but it may produce a polished version of the failure that drove the other 92% away.

## Key Themes

**Instrumentation before incision.** Six clusters converge on the same prerequisite: per-feature engagement data, segmented by first-session behavior, is the minimum viable diagnostic, and it may already sit unread in existing event logs. Audit what the analytics stack can actually answer before commissioning new analysis. Features that are hard to instrument (passive browsing, content consumption) are systematically disadvantaged in data-driven cuts and may be the app's hidden differentiators.

**Survivor bias runs through everything.** The retained 8% are the most accessible cohort and the most misleading one. They are typically the most feature-dependent users, the most likely to churn loudly post-simplification, and possibly the least representative of any reachable market. Multiple clusters insist on recruiting research subjects from the churned-early cohort (under four opens) rather than from support tickets, reviews, or power users.

**A pre-committed decision rule is the strongest safeguard.** The 8-month runway creates pressure to read ambiguous data optimistically. The mitigation is not more analytical rigor but a written rule, set before results arrive, defining what would argue against relaunch, with a named owner to enforce it. This appears as the single highest-value structural contribution in several clusters.

**The dependency map is non-negotiable and comes first.** Before any feature is cut, map which features share databases, APIs, auth flows, and notification systems. Some weak standalone features are load-bearing: a friend finder no one uses directly may be the only thing giving the challenge platform opponents and the social feed an audience. The map also converts the incremental-vs-clean-relaunch debate into an answerable engineering question.

**The team's exhaustion is an input, not a footnote.** Burnout cuts both ways. It is the best reason to cut now (no one will fight it) and the best reason cutting now is risky (a depleted team executes badly). Engineer grief is an operational problem that plays out over weeks, not a single conversation, and the conditions for quiet sabotage (back-door rebuilding, defensive over-engineering, dependency objections raised at convenient moments) are already present.

**Simplification and inclusion are not the same axis.** "Focused" and "exclusionary" are not opposites. A product built around the daily rituals of the retained cohort may quietly design for users with gym access, flexible schedules, and disposable income, leaving behind the beginners and constrained-schedule users the broader base contained.

## Conspicuous Absences (session-level)

Both lenses in this session were analytical and execution-minded, and the same blind spots recur across nearly every cluster:

- **The emotional and phenomenological dimension of fitness.** No cluster examined what fitness means to users as identity or feeling. A user who logs one workout, feels worse than before, and avoids the reminder is a retention failure no feature audit can surface. The app's whole vocabulary ("track," "log," "challenge") may signal that it is for a different kind of person than the ones who left.
- **Equity and access, raised but never resolved.** Several clusters flagged that the retained 8% may skew narrow (younger, urban, iOS, already habituated, gym-equipped) and that cuts may strip the only usable pathway for users with chronic illness or mobility limitations. No cluster offered a framework for assessing which populations lose access, as opposed to which features lose usage.
- **What happens at the runway boundary.** Clusters treated 8 months as a hard limit but rarely asked what month 9 looks like if retention targets are missed. Whether the simplified product should be designed for acquireability or graceful wind-down, and what the relaunch narrates to investors, went largely unexamined.

None of the recommended next steps should be read as resolving these. The inclusion question in particular is a decision the team has not yet been asked to make.

## Topic Summaries

### 1. Diagnosing the Real Problem

Before assuming simplification is the cure, confirm that bloat is the disease. The "overwhelming" feedback that drives the simplification thesis comes entirely from the 8% who stayed; the 92% who left silently may simply have had no reason to pick this app over Strava, MyFitnessPal, or Apple Fitness+. The sharpest single caution: a 2% DAU/MAU ratio could reflect notification fatigue training users to ignore every ping, in which case a muted user looks identical in the data to a churned one. The most actionable opening move is a feature-flag experiment that hides low-priority features for new installs only, producing causal retention data in two weeks without touching the existing base.
- See: [synthesis/01_diagnosing-the-real-problem_summary.md](synthesis/01_diagnosing-the-real-problem_summary.md)

### 2. Reading the Engagement Signals

The 47-second session combined with 2% DAU/MAU describes abandonment, not efficient micro-engagement; the flattering "quick check-in" reframe fails because genuinely productive sessions would drive daily return. The real question is not whether to instrument the metrics but whether a team running 15 half-built features can trust an analytics stack that is probably just as fragmented. The cluster's most important contribution is structural rather than analytical: pre-commit, in writing, to what the data would have to show to advise against relaunch, and assign someone to enforce it when the results come in optimistically.
- See: [synthesis/02_reading-the-engagement-signals_summary.md](synthesis/02_reading-the-engagement-signals_summary.md)

### 3. Locating the True Core

The retained-user, daily-active, and session logs are available right now, but they are contaminated in ways worth naming before acting: the 8% may be self-motivated enthusiasts who would use any app, and daily actives may still be in a novelty window or using this app alongside a competitor. The deepest disagreement is about why the social layer failed. A clean 60-day holdout could read social features as unwanted, when the real cause may be that at 180K users the app never reached the network density social features need. The holdout has to control for connection count to tell structural rejection apart from density failure.
- See: [synthesis/03_locating-the-true-core_summary.md](synthesis/03_locating-the-true-core_summary.md)

### 4. Strengths-Based Vision for the Focused Product

A vision built from the users who stayed quietly sidesteps the harder question of why everyone else left, and designing around grateful survivors can produce a product that serves a few thousand people and no one else. Team pride in a feature is unreliable on its own: burnout distorts memory, ownership distorts nominations, and a genuinely polished meal planner can pass the pride test while failing the relevance test entirely. The session's clearest re-engagement insight is that the 180K existing users cannot experience a "first time," so the relaunch needs a second arc built for skepticism-to-trust, not just the new-user overwhelm-to-clarity arc.
- See: [synthesis/04_strengths-based-vision-for-the-focused-product_summary.md](synthesis/04_strengths-based-vision-for-the-focused-product_summary.md)

### 5. Methodology for the Cut

The hard part is not which features to keep but how to decide honestly under time pressure, when the rigor needed for an honest cut may itself consume the runway the cut was meant to free. With 8% retention across the board, behavioral data signals abandonment everywhere and struggles to separate a good core from a slightly-less-bad feature. Two safeguards recur: lock the scoring rubric before anyone opens the spreadsheet, and treat the "3-4 features" target as a team-capacity constraint rather than a product truth, prepared to act on an answer of 1 or 6. The most valuable inversion: a feature can be a structural dependency while delivering little user-noticed value, which is technical debt wearing a product costume.
- See: [synthesis/05_methodology-for-the-cut_summary.md](synthesis/05_methodology-for-the-cut_summary.md)

### 6. The Passionate Minority and Niche Users

Niche users deserve concrete, dignified off-ramps, yet the quantitative models needed to decide which of their features are worth keeping almost certainly can't be built on this app's thin, noisy data inside 8 months. Dignity lives in operational follow-through, not warmth: a one-click data export built before any announcement, specific acknowledgment of who used what, and named alternative tools (including direct competitors). One counterintuitive caution: consult niche users on transition logistics, never on product direction, because their investment in existing workflows makes them the worst predictors of what a focused product needs.
- See: [synthesis/06_the-passionate-minority-and-niche-users_summary.md](synthesis/06_the-passionate-minority-and-niche-users_summary.md)

### 7. Technical Debt, Team Capacity, and the Burnout Loop

Burnout is both the best reason to cut now and the best reason cutting now is risky: the exhausted team that most needs the reset is least equipped to map dependencies, hold regression thresholds, and manage grief safely. The designer is a bottleneck no matter how many features remain, because much of the "overwhelming" UX is design debt that won't fix itself when features disappear. The human side is the live wire: engineer grief takes weeks and multiple emotional beats, and the conditions for quiet sabotage (creeping "just in case" hooks, over-engineering the core) are already in place, which is why architectural decision records that make scope creep visible in code review carry real weight.
- See: [synthesis/07_technical-debt-team-capacity-and-the-burnout-loop_summary.md](synthesis/07_technical-debt-team-capacity-and-the-burnout-loop_summary.md)

### 8. Choosing the Relaunch Path and Communicating the Change

The highest-confidence finding here resets the stakes: the recoverable base is about 14K monthly and 3,600 daily actives, not 180K, and every churn model and runway projection has to be rebuilt from those actuals. The dependency map decides the path, since a clean relaunch is cheaper than it looks once coupling is honest (roughly a 10-week ship versus a 4-month incremental crawl), but it resets retention to zero and does not reset user expectations the way it resets team morale. Communication should be behavior-triggered at session open rather than blasted by push, and the lenses split on tone: honest postmortem framing reads as credible to users who gave the app a real try, but as incompetence to someone deciding whether to reinstall.
- See: [synthesis/08_choosing-the-relaunch-path-and-communicating-the-change_summary.md](synthesis/08_choosing-the-relaunch-path-and-communicating-the-change_summary.md)

### 9. Inclusion, Voice, and Redefining Success

The relaunch's best opportunity and its original failure may live in the same place: the 92% who left, whose needs are harder to surface than the retained cohort's but probably explain both. Notification strategy is where the lenses diverge most sharply. Threshold-gating push until a user completes three sessions is a two-hour fix both sides endorse, but delayed extraction is still extraction, and without a notification philosophy the app's coercive relationship to attention survives the cut. Define success metrics before the feature vote, with a behavioral proxy for "opens with intent," and track existing baselines in parallel so the relaunch can't manufacture a false-positive signal.
- See: [synthesis/09_inclusion-voice-and-redefining-success_summary.md](synthesis/09_inclusion-voice-and-redefining-success_summary.md)

## Recommended Next Steps

1. Rebuild every churn model and runway projection from actuals (~14K monthly actives, ~3,600 daily actives), not the 180K download figure. Half a day of segmentation that changes the stakes of every other decision.
2. Audit the existing analytics stack before commissioning anything new. Screen views and event counts are often already in Mixpanel, Amplitude, or Firebase and just unread (one engineer, half a day).
3. Write the pre-committed decision rule now, before any analysis returns: what would the data have to show to advise against relaunch, and who owns enforcing it?
4. Deploy a single-question exit survey at uninstall or after 7 days of inactivity ("Too complicated" / "Didn't solve my problem" / "Other"). Even a 1% response from 165K churned users yields ~1,650 data points.
5. Run a feature-flag experiment that hides the lowest-priority features for new installs only, and measure D7 retention against control over two weeks. Causal data without touching the existing base.
6. Query the retained 8%: for each day-30 user, count distinct features used, and survey them on most-used feature, most-missed feature, and whether they use a competitor alongside this app. One day of SQL plus a 90-second in-app survey.
7. Build the dependency map before cutting anything: which features share databases, APIs, auth, and notifications. Then run a deletion dry-run by stubbing nav entries and routes for two weeks before any permanent removal.
8. Recruit research subjects from the churned-early cohort (under four opens), not from reviews, support tickets, or power users. Offer a $25 gift card for a 30-minute call and run a card sort rather than a survey.
9. Implement threshold-gated notifications (no push until three completed sessions) with a quiet-hours default and a one-week launch moratorium. A two-hour change, and the single biggest retention lever here.
10. Run a notification-only experiment before cutting features: turn off all push for a 10% cohort and measure organic opens for two weeks, since the 2% DAU/MAU may be fatigue rather than low value.
11. Set target success metrics before the feature vote. Have the PM write the "success in 90 days" document, define a behavioral proxy for "opens with intent," and track existing baselines in parallel.
12. Build one-click data export per deprecated feature before any public announcement (~2-3 engineer-days each), shifting the register from "you removed my feature" to "you own your data."
13. Set a hard relaunch decision date within two weeks with explicit criteria; absent a clock, the choice defaults to incremental by entropy.
14. Schedule a two-to-four week team reset sprint (low on-call, no new work) and give each engineer whose feature is cut explicit ownership of a hard problem in the surviving core.
15. Before finalizing the cut list, assess which user populations lose their only pathway, distinct from the aggregate usage audit. This is the inclusion decision the session surfaced but did not resolve.

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

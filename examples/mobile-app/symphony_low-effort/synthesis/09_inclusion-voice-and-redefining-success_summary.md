---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "09_inclusion-voice-and-redefining-success"
central-tension: "Designing the simplified product around the engaged 8% who stayed — whose data and voices are accessible — versus designing for the 92% who left, whose needs are structurally harder to surface but likely explain both the original failure and the relaunch's best opportunity."
---

# Summary: Inclusion, Voice, and Redefining Success

## Executive Summary

The relaunch faces an inverted framing problem: the feasibility-oriented case argues the team should build on what they can measure — the retained 8%, the vocal feedback corpus, the highest-engagement behavioral data — because that's the tractable path to product decisions within an 8-month runway. The risk-oriented counterpoint is that the 8% who stayed are a survivorship-bias artifact, and the 92% who left are not a uniform "churn" mass but a population with specific, recoverable failure moments. Building the simplified product around the retained cohort's preferences will produce a cleaner version of the same exclusion.

Both perspectives agree on one thing: the team is currently flying blind. Usage logs cannot be trusted as preference signals without auditing whether low-engagement features were unwanted or simply buried three taps deep and shipped broken. A "feature ghost report" — pull each feature's unique users, repeat users, and average days between uses — is the single most actionable step before any cut decision, and both perspectives support it.

Where the two perspectives diverge sharply is on notification strategy during relaunch. A feasibility-oriented view proposes a one-week notification moratorium at launch to establish an organic return baseline, paired with threshold-gated notifications (no push until a user has completed three sessions). A risk-oriented counterpoint points out a harder structural concern: even a reduced notification regime won't change the app's underlying relationship to user attention if the design logic still treats engagement as something to extract. The team needs a notification philosophy, not just a setting change, before the relaunch ships. Without it, the retention curve after the relaunch spike will mirror the current 8%, wasting the most recoverable users on a false signal.

---

## Key Themes

### Who Counts as the Target User Is a Decision That Has Already Been Made Implicitly

Both perspectives note that the current "core" features carry embedded assumptions about income, schedule flexibility, physical ability, and gym access. A feasibility-oriented approach identifies this practically: audit onboarding screens for every implicit prerequisite, segment the 180K downloads by device and geography as a fast income proxy, and add one low-equipment variation table to MVP scope (one engineer, two days). A risk-oriented view goes further: if the highest-engagement cohort clusters around users with 9-to-5 schedules and gym memberships, optimizing for their behavior patterns optimizes for schedule privilege and risks launching an exclusionary product in a cleaner UI. Both agree the target persona must be defined explicitly before cutting. Both suggest designing for a constrained persona (no gym, 20-minute windows) as a forcing function that produces a more universal interface.

### The Silent 92% Are Recoverable Data, Not a Write-Off

Both perspectives treat the 98% of users who downloaded and never returned as the highest-value research signal, and both offer concrete methods to reach them. A feasibility-oriented approach: contact 20 users who opened the app fewer than four times, offer a $25 gift card for a 30-minute call, and run a card sort on features rather than a survey. A risk-oriented view notes that the silent majority, especially caregivers and shift workers harmed by notifications, are also least likely to appear in feedback channels. The existing feedback corpus ("overwhelming," "too many notifications") skews toward the least-harmed cohort. Don't recruit from support tickets or app store reviews. Recruit from the churned-early cohort instead. Their exit moment is already in the event logs — the last action before disappearing is recoverable without any outreach.

### The 47-Second Session and the Completion Experience Are Two Sides of the Same Problem

Both perspectives see session length differently. A feasibility-oriented view proposes a direct filter: any feature requiring more than 47 seconds to complete a meaningful action is currently delivering zero complete experiences to the average user. Use that as an immediate cut criterion. A risk-oriented view points out the average may mask a bimodal distribution: some users bouncing in confusion, others completing a precise task efficiently. Both perspectives independently identify that Marcus (the casual runner persona) would more likely have been retained by a visible "you made progress" state — "3 runs in 2 weeks, you're building a habit" — than by any feature change. One designer, one sprint addresses the root cause.

### Notification Threshold-Gating Is the Convergent Technical Fix, With a Deeper Disagreement Underneath

Both perspectives agree that push notifications arriving before a user has established a habit are a top-3 churn driver, and both support the same concrete fix: no push until the user has completed three sessions. That threshold gate is a two-hour engineering change. Where they diverge: a feasibility-oriented view treats this as sufficient. Pair it with a quiet-hours default and a one-week moratorium at launch, and the notification problem is addressed. A risk-oriented counterpoint says threshold-gating is still extraction logic with a delay. Users will still sense a coercive relationship to their attention even if the first ping arrives later. The unresolved question: does the simplified app commit to a notification philosophy (notify only when user-requested, never for re-engagement) or merely a notification schedule?

### Metrics Must Be Set Before Feature Decisions, Not Derived From Them

Both perspectives agree on working backward from target metrics. A feasibility-oriented approach is concrete: have the PM write the "success in 90 days" document before the team discusses which features to keep. Track both comparable metrics (DAU/MAU, 30-day retention) and recalibrated metrics (completed workout logs, day-3 return) from launch day. A risk-oriented counterpoint warns that metrics without pre-relaunch baselines will be used to claim success prematurely. "Daily active users opening with intent" is not a measurable metric without behavioral operationalization — for example, navigating directly to a specific feature and completing an action within 30 seconds. Define the behavioral proxy for intent before relaunch, track it alongside existing baselines, and run the single-feature pilot with a feature flag on 500 users before the full relaunch to confirm whether simplification or core value is the actual problem.

---

## Recommended Actions

### Immediate (0-3 months)

- **Build the "feature ghost report" before any cut decision:** For each of the 15 features, pull (a) users who used it at least once, (b) users who used it three or more times, (c) average days between uses. Features with high (c) and moderate (b) are invisible infrastructure. Cross-reference against whether each feature received proportional UI surface area and bug-free launch conditions before treating low engagement as low value. [convergent]

- **Recruit 20 users who opened the app fewer than four times:** Offer a $25 gift card for a 30-minute call. Run a card sort (15 feature cards, "keep the three you'd open tomorrow") rather than a survey. Recruit specifically from this cohort, not from feedback channels or power users. [convergent]

- **Set target success metrics before the feature vote:** PM writes the "success in 90 days" document first. Define the behavioral proxy for "opens with intent" (navigates to a specific feature and completes an action within 30 seconds). Establish which current metrics (DAU/MAU, 30-day retention) will be tracked in parallel through the relaunch so the new metrics don't function as a measurement reset. [convergent]

- **Implement threshold-gated notifications:** No push until a user has completed three sessions. Add quiet-hours default (9pm–8am) visible in initial setup. Ship the simplified app with notifications off by default for the first seven days to establish an organic return baseline. [convergent]

- **Audit onboarding screens for implicit prerequisites:** Check for gym access, equipment, and 45-minute time blocks. Segment the 180K downloads by device and geography as an income proxy. Add at least three bodyweight exercise alternatives to the MVP scope if workout tracking survives the cut. [unique: feasibility]

### Near-term (3-12 months)

- **Run a single-feature pilot via feature flag on 500 users:** Before full relaunch, strip to the single most-used feature and measure 30-day retention. If retention is 8% — same as current — the problem is core value proposition, not feature count. If 20%+, simplification is confirmed and the team has a rally point. [trade-off: a feasibility-oriented case for the pilot as the fastest conviction mechanism; a risk-oriented counterpoint that it destroys comparative behavioral signal for existing users — run it with new users only, preserving the full product for existing users whose behavior provides the baseline]

- **Design a visible completion state for every retained core feature:** A satisfying summary ("3 runs in 2 weeks, you're building a habit") at the end of each logged session. Measure whether sessions ending with a completion state have better next-session return rates than sessions without. This addresses Marcus's abandonment more directly than any feature addition. [convergent]

- **Distinguish re-engagement notifications from habit-reinforcement notifications:** Tag each type at the database level from launch day ("re-engagement" = user inactive 3+ days; "streak-support" = user opened yesterday). Track 30-day retention separately by cohort. Build this into the relaunch schema from the start, not as a retrofit. [unique: feasibility]

### Long-term (1+ years)

- **Define the specific fitness outcome the simplified product is designed to produce:** Focus on the actual result, not just the UI experience. Pair it with a measurement framework that can detect whether that outcome is actually occurring. A focused app that doesn't produce fitness results users care about will retain at 8% with fewer features to blame. [unique: risk]

- **Audit whether the simplified product's core features can meet users at the moment of motivation:** Don't require them to remember to open the app. Explore widget, lock-screen, or wearable entry points that enable a frictionless "just logged a run" interaction before the motivation window closes. [unique: risk]

---

## Key Considerations

**High-confidence items** (both perspectives agreed):
- The feature ghost report (usage frequency + recency + surface-area audit) must precede any cut decision. Low engagement is not interchangeable with low value without this audit.
- Recruiting the churned-early cohort (< 4 opens) for user research produces higher-signal data than power users or feedback channel respondents for a simplification decision.
- Threshold-gated notifications (no push until 3 completed sessions) is the highest-leverage single engineering change for retention.
- A visible completion state after each logged action addresses the root abandonment cause more directly than feature reduction alone.
- Target success metrics must be defined before the feature vote, with behavioral proxies for intent and parallel tracking of existing baselines to prevent a false-positive relaunch signal.

**Trade-offs** (the two perspectives disagreed):
- A feasibility-oriented case that the single-feature pilot (500 users, feature flag) is the fastest way to confirm whether simplification works before full relaunch; a risk-oriented counterpoint that it destroys comparative behavioral signal and should run on new users only, preserving existing users as the baseline cohort.
- A feasibility-oriented case that threshold-gated notifications plus a one-week moratorium adequately addresses the attention-extraction problem; a risk-oriented counterpoint that delayed extraction is still extraction. Without a notification philosophy (user-requested only, never re-engagement), the structural relationship to user attention remains coercive and users will sense it.
- A feasibility-oriented case that involving users in the cut decision (pre-ship survey, card sort) generates advance churn warning at low cost; a risk-oriented counterpoint that participatory feature decisions produce conservative outcomes because users anchor on familiarity. User voice should be structured as behavioral interviews, not feature votes.

**Blind-spot flags** (only one perspective raised):
- The simplified product may serve a narrower population than the chaotic 15-feature version, which at least contained entry points for casual walkers, meditators, and meal planners. "Focused" and "exclusionary" are not opposites. [risk-oriented]
- The 47-second session may mask a bimodal distribution (some users completing a precise fast task successfully). The relaunch should verify this before redesigning use patterns that may be working for a meaningful cohort. [risk-oriented]
- The team's "strategic vision" override is itself a bias source. Any feature retained by founder intuition rather than behavioral data should be paired with at least one log-based data point before it survives the cut. [risk-oriented]
- Distinguishing re-engagement notifications from habit-reinforcement notifications at the database schema level from day one prevents a retrofit that will otherwise never happen. [feasibility-oriented]
- The most useful data query this week is already answerable: pull the retained 8% and map every feature they used in their first seven days. The intersection of features that appear most often in that cohort's early sessions is the empirical core candidate list (one SQL query, no user research required). [feasibility-oriented]

**Neither-perspective gaps** (what a different angle would have surfaced):
- **Emotional/phenomenological**: Neither perspective examined what "fitness" means to users as an identity or emotional experience. Does the app's implicit framing of fitness as measurable progress (streaks, logs, DAU) feel legible or motivating to users for whom fitness is social, emotional, or preventive rather than performance-oriented? Marcus may have abandoned not because of navigation but because the app's entire tone ("track," "log," "challenge") signaled it was for a different kind of person.
- **Equity/access/distributional**: Both perspectives gestured at inclusion but neither examined what happens to the small passionate user cohorts for features that get cut. Users with chronic illness or mobility limitations may have found the only useful interface to health-app data through the meditation or habit modules. The cut decision should include an explicit assessment of which populations lose their only pathway, not just an aggregate usage audit.
- **Political-economy/institutional**: Neither perspective addressed the competitive and regulatory context. Fitness apps with health data are subject to HIPAA-adjacent considerations in some jurisdictions, and the data collected during 180K downloads represents a privacy liability that simplification doesn't automatically resolve. The relaunch plan should include a data-minimization audit alongside the feature-minimization audit.

---

**Questions addressed**: 6
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

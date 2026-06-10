---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "01_diagnosing-the-real-problem"
central-tension: "Simplification as urgently necessary execution fix vs. simplification as a post-hoc rationalization that leaves the core value-proposition question unanswered — both lenses agree the current diagnosis is insufficient, but disagree on whether the 'overwhelming' feedback is a promising feasibility signal or a misleading survivor artifact."
---

# Summary: Diagnosing the Real Problem

## Executive Summary

The cluster's organizing tension is an inverted framing of the same piece of evidence. A feasibility-oriented view reads the "jack of all trades, master of none" feedback as a gift: users understood the value proposition and found execution lacking, which is a tractable problem. A risk-oriented counterpoint argues that feedback comes exclusively from the 8% who retained. The 92% who churned silently may not have been confused by feature bloat at all; they may have simply had no reason to choose this app over Strava, MyFitnessPal, or Apple Fitness+. Simplification fixes the complainers' problem, not necessarily the churners' problem. Both lenses converge on the same prescription: run structured diagnostics before committing to cuts. But they are pointing at that prescription for different reasons, and that distinction matters for what the diagnostics need to prove.

Both lenses agree that the current data state is inadequate. Aggregate session metrics and self-reported qualitative feedback cannot distinguish complexity-driven churn from a value-proposition miss, and neither lens endorses making irreversible product cuts without better signal. The feasibility view emphasizes how quickly that signal can be gathered — exit surveys in a week, cohort analysis in two, a decision in three — and treats the 3-week window as both sufficient and mandatory given the 8-month runway. The risk view warns that even that compressed timeline may foreclose options: instrumentation takes two to three weeks to produce actionable data, and cutting features before that data exists means the "data-driven" decision is actually a team conviction assembled post-hoc by an exhausted team that wants to reduce scope.

The sharpest unique contribution from the risk-oriented lens is the notification fatigue hypothesis: a 2% DAU/MAU ratio might reflect push notification overload training users to ignore all notifications, not low product value — and a churned user who muted notifications looks identical in the data to a user who churned. The sharpest unique contribution from the feasibility-oriented lens is the feature flag path: hiding features for new installs only, without touching existing users, generates causal retention data in two weeks without committing to permanent cuts.

---

## Key Themes

### The Survivor Bias Problem in Feedback Interpretation

Both lenses agree that the retained 8% are not a representative sample of the 92% who churned, but they draw different implications. A feasibility-oriented view holds that "overwhelming" feedback still constitutes usable signal pointing toward execution problems. A risk-oriented view insists the silent majority's absence from feedback is the most important data point. Their reasons for churning could undermine the entire simplification thesis if those reasons turn out to be "I just don't want a fitness app."

### Instrumentation Before Incision

Both lenses converge on the need for per-feature engagement data before finalizing any cut list. Without feature-level funnels (which may already exist unread in Mixpanel or Amplitude event logs), "strip to essentials" is pattern-matching on noise. The feasibility view adds that a 48-hour instrumentation sprint (one engineer, standard screen-entry events) can close most of this gap immediately. The risk view adds a harder warning: features that are difficult to instrument (passive browsing, content consumption outside tracked sessions) are systematically disadvantaged in data-driven cuts and may be the app's hidden differentiators.

### Feature Interdependency as a Hidden Load-Bearing Risk

A risk-oriented view raises a concern neither a simple usage count nor a retention curve will surface: some features may not drive retention directly but enable other features that do. The friend finder is a weak standalone feature. Without it, the challenge platform has no opponents and the social feed has no audience. Removing it destroys the combination without understanding what made it work. The feasibility view's response is methodological: cohort by first-session behavior rather than feature co-usage, and measure solo-usage rates per feature. But neither lens disputes that the dependency mapping question must be answered before cutting.

### The Clean Relaunch vs. Incremental Simplification Bet

A risk-oriented view argues that a clean relaunch resets retention to zero, incurs migration and rebranding costs, and discards an existing audience with known acquisition cost. That's a poor expected-value bet if the team has not isolated which features that audience actually values. A feasibility-oriented counterpart does not directly endorse a clean relaunch but implicitly favors speed. Its feature flag proposal (hide features for new installs, measure D7 retention) produces causal data in two weeks and sidesteps the false choice between relaunch and status quo.

### Team Conviction as a Diagnostic Contaminant

Both lenses flag, in different registers, that the team's emotional state is shaping the diagnosis. The risk-oriented lens is explicit: six engineers burned out from maintaining 15 features have a stake in cutting scope, and an outside audit of engagement data would make the conclusion more defensible. The feasibility-oriented lens is more pragmatic about it. If time pressure means instrumentation isn't possible before deciding, own the gut call. Document assumptions explicitly so they can be verified post-launch, rather than dressing conviction as data.

---

## Recommended Actions

### Immediate (0-3 months)

- Deploy a single-question exit survey at the moment of uninstall or after 7 days of inactivity: "What made you stop using the app?" with options "Too complicated," "Didn't solve my problem," and "Other." Even a 1% response rate from 165K churned users produces 1,650 data points. [convergent]
- Audit existing analytics event logs (half-day, one engineer) before commissioning new instrumentation — screen views and event counts are often already captured by Mixpanel/Amplitude/Firebase, just unread. [convergent]
- Segment 30-day retention by acquisition channel immediately; if organic/referral users retain at 15-20% while paid campaign users retain at 3%, the problem is funnel targeting, not the product. [convergent]
- Map feature dependency chains informally before finalizing any cut list — specifically, identify which features become non-functional or meaningless if upstream social-graph features (friend finder, social feed) are removed. [unique: risk]
- Run a feature flag experiment: hide the lowest-priority five to ten features for new installs only (not existing users) and measure D7 retention against the control group over two weeks. This produces causal data without touching the existing base or committing to permanent removal. [unique: feasibility]

### Near-term (3-12 months)

- Set a hard 3-week diagnostic deadline — exit surveys deployed in week 1, cohort analysis in week 2, synthesis and decision in week 3. If the data comes back ambiguous, default to simplification; with 8 months of runway, allowing the diagnosis to extend beyond three weeks turns it into a delay tactic. [unique: feasibility]
- Rebuild retention analysis at 7-day intervals (D1, D7, D14, D30) rather than relying on terminal 30-day figures; segment by what users did in their first session to produce a clean cohort for each feature. [unique: feasibility]
- Before any feature cut, run a notification-only experiment: turn off all push notifications for a 10% cohort and measure organic open rates over two weeks. A 2% DAU/MAU ratio may reflect notification fatigue, not low product value. A user who muted all notifications looks identical in aggregate data to a user who churned. [unique: risk]

### Long-term (1+ years)

- After simplification, redefine the competitive differentiation question explicitly. What does this app do that a combination of Strava, MyFitnessPal, and Apple Fitness+ does not? Feature reduction that does not answer this question defers rather than solves the value-proposition risk. [unique: risk]
- Pair ongoing analytics with a quarterly user interview sprint targeting users who were retained at D30 and users who churned at D7 — especially for features that are difficult to instrument (passive content consumption, recipe browsing). Analytics systematically undercount these interactions. [trade-off]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- The current data state — aggregate session metrics and self-reported qualitative feedback — is insufficient to distinguish complexity-driven churn from a value-proposition miss; no irreversible product cuts should precede more granular instrumentation.
- The team's emotional stake in reducing scope is a real diagnostic contaminant; the case for simplification needs to be made against data gathered by someone without a stake in the outcome, or documented explicitly as a conviction call.
- Per-feature engagement data, segmented by first-session behavior, is the minimum viable diagnostic; it may already exist in raw event logs and should be audited before new instrumentation is commissioned.

**Trade-offs** (the two lenses disagreed):
- A feasibility-oriented case that "jack of all trades, master of none" feedback indicates the core value proposition has merit and execution is the fixable problem; a risk-oriented counterpoint that this feedback represents only the 8% survivor cohort, and the 92% who churned silently may have left for reasons — no differentiation from dominant alternatives — that simplification cannot address.
- A feasibility-oriented case for incremental feature flag experiments as the fastest path to causal retention data without relaunch cost; a risk-oriented counterpoint that incremental simplification moves slowly enough to consume runway without resolving the underlying value-proposition question, and that a clean relaunch, while risky, forces the differentiation question to be answered.

**Blind-spot flags** (only one lens raised):
- Notification fatigue as an alternative explanation for the 2% DAU/MAU ratio: a user who muted all notifications looks identical in aggregate data to a churned user, and this hypothesis should be tested before attributing low engagement to feature bloat. [risk-oriented]
- The instrumentation selection bias: features that are difficult to track (passive browsing, content consumption outside tracked sessions) are systematically disadvantaged in data-driven cuts and may represent the app's hidden differentiators; analytics must be paired with interview data. [risk-oriented]
- The 48-hour instrumentation sprint as an immediately executable option: even without prior feature-level tracking, adding lightweight screen-entry events and session-depth tracking to the top five candidate features costs one engineer two days and changes the quality of the cut decision substantially. [feasibility-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- Emotional and phenomenological dimensions of fitness app use: neither lens explored the shame, motivation cycles, or identity dynamics that govern whether users return to a fitness app. A user who opens the app on day 1 and doesn't return may not have found it overwhelming — they may have logged one workout, felt worse about their fitness than before, and avoided the reminder. This is a retention driver that a feature audit cannot surface.
- User lifecycle and onboarding stage as a confound: neither lens distinguished between users who churned during onboarding (first 48 hours) and users who formed a habit and then lapsed. These are different failure modes requiring different fixes — onboarding friction versus habit disruption — but the aggregate D30 retention figure collapses them into a single number.

---

**Questions addressed**: 3
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

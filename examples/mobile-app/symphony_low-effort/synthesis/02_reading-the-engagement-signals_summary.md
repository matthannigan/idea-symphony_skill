---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "02_reading-the-engagement-signals"
central-tension: "Instrumentation-first diagnosis that treats 47-second sessions and 8% retention as solvable measurement problems vs. a risk-oriented counterpoint that the current analytics stack is too fragmented to yield trustworthy signal, and that motivated reasoning under an 8-month runway will cause the team to over-interpret whatever data they do find."
---

# Summary: Reading the Engagement Signals

## Executive Summary

The cluster's deepest tension is not whether to instrument the metrics but whether the team can trust what the instrumentation returns. A feasibility-oriented view holds that the 47-second session and 8% retention figures are actionable diagnostic inputs waiting for the right queries. Feature-level decomposition, cohort stratification by first feature, and a two-axis cut-list matrix can all be executed within days on existing data. A risk-oriented counterpoint flags that a team maintaining 15 half-built features almost certainly has equally fragmented analytics: event schemas that were never designed for this kind of decomposition, navigation telemetry that conflates entry frequency with user preference, and a retention cohort small enough (roughly 960 users per feature at uniform distribution) that any correlation finding is borderline noise. Both lenses agree on the direction of travel—instrument, segment, then decide—but disagree sharply on how much confidence the resulting data can bear before a relaunch commitment is made.

Both views converge on one high-confidence point: the 47-second session and 2% DAU/MAU ratio in combination describe abandonment, not fulfillment. The self-serving "efficient micro-engagement" reframe fails because productive sessions would drive daily return. Where the lenses split is on what to do next. The feasibility view recommends a specific, low-cost sequence: separate notification-driven sessions from organic ones, plot per-feature retention curves, build a two-axis cut-list matrix, and run a concierge onboarding experiment. Each step is designed to be executable within one to two weeks by one or two engineers. The risk view accepts the same sequence but insists on a prior step: audit the event schema to understand what can actually be answered before commissioning analyses that may require retroactive instrumentation the team does not have time to build.

On the more speculative questions—designing around the 47-second constraint as a product paradigm, or framing 8% retention as an "intentional lifecycle" feature—both lenses are skeptical but for different reasons. The feasibility view says: test the hypothesis cheaply first (a home-screen widget, a pilot 30-day program, a one-question concierge onboarding) before committing engineering resources. The risk view says: with 8 months of runway, a paradigm bet that requires 4 months of discovery leaves 4 months to build and relaunch, which is a high-risk sequence. The team's burnout also creates motivated reasoning to find the elegant reframe that makes failure feel like a discovery. The risk-oriented flag that the team should pre-commit to what the data would need to show to advise against relaunching is the highest-value unique contribution in this cluster.

---

## Key Themes

### Instrumentation Before Interpretation

Both lenses agree that the headline metrics cannot support cut decisions in their current form. A feasibility-oriented case identifies a concrete one-week fix: log which entry point users tap first, whether they tap a second, and whether they exit from the home screen or from within a feature. This requires one analytics call per screen. A risk-oriented counterpoint notes that the same team maintaining 15 features likely has an equally fragmented event schema, and that commissioning a full feature decomposition without first auditing what events actually exist risks producing a misleading analysis faster than a correct one.

### The Abandonment-Fulfillment Split Requires a Defined Success Event

Both lenses converge on a specific diagnostic instrument: define a "successful session" event — a logged workout, a checked meal, any discrete completion — and measure what fraction of 47-second sessions contain one. If fewer than 20–30% do, the fulfillment hypothesis is false and the abandonment reading stands. The feasibility view frames this as a two-week instrumentation sprint; the risk view frames it as a precondition before any relaunch narrative is constructed.

### Paradigm Bets Are Expensive on an 8-Month Runway

On the question of building around 47 seconds as a design principle rather than a problem, both lenses counsel caution, but differently. A feasibility-oriented path treats the hypothesis as a cheap experiment: a home-screen widget deliverable in four to six weeks, a Figma prototype for user testing, a 200-user pilot cohort recruited via in-app message. A risk-oriented counterpoint notes that paradigm exploration typically takes 3–6 months before producing enough signal to commit engineering resources. The appeal of this framing may partly be that it makes the current failure feel like a discovery rather than a mistake.

### Cohort Stratification as the Highest-Leverage Pre-Relaunch Analysis

Both lenses agree that the retained 8% is the most informative data source available. The feasibility view specifies the exact query: for each user who hit day 30, count distinct features used. If users who concentrated on one or two features retained at 2x the rate of users who tried five or more, the focus hypothesis has empirical backing. This is executable in a day against existing data. The risk view accepts this but flags that first-touch data is contaminated by onboarding flow design and navigation placement, and recommends defining "most-used feature" as the feature with the highest share of total sessions in days 7–30 rather than first touch.

### The Decision Checkpoint as a Structural Safeguard

This theme is unique to the risk-oriented lens and represents the cluster's most important blind-spot contribution. The 8-month runway creates pressure to interpret ambiguous data optimistically. The mitigation is not more analytical rigor. It is a pre-committed decision rule: define in advance what the data would need to show to advise against relaunching, and assign someone to hold the team accountable to that rule. Without this checkpoint, the analysis process will reliably produce confirmation of whatever the team already wants to do.

---

## Recommended Actions

### Immediate (0-3 months)

- Audit the existing event schema against the diagnostic questions in this cluster before commissioning any decomposition analysis. Specifically: are features individually tagged with timestamps, is navigation between features tracked, and is "abandonment" a discrete event or inferred from session end? This determines which analyses can run on existing data and which require instrumentation first. [unique: risk]
- Separate notification-sourced sessions from organic sessions in the current analytics export. If notification-driven sessions skew shorter, the fix is notification strategy, not feature removal or relaunch planning. [convergent]
- Define a "successful session" completion event (a logged workout, a checked meal, any discrete action) and instrument it within one sprint. Measure what fraction of 47-second sessions contain one. If under 20–30%, abandon the fulfillment hypothesis. [convergent]
- Pull three numbers per feature from existing data: median session length for sessions where that feature was the first screen opened, percentage of users who opened it more than once in 30 days, and abandonment rate (opened feature, completed no action). If current tooling cannot produce this, instrument it with two engineer-days of work. [convergent]
- Pre-commit the decision checkpoint: before analysis begins, document in writing what the data would need to show to advise against a relaunch, and assign a named owner to hold the team to that rule when results come in. [unique: risk]

### Near-term (3-12 months)

- Segment the retained 8% by feature breadth (for each day-30 user, count distinct features used) and separately survey them with three questions: most-used feature, most-missed feature if the app simplified, and whether they recommended the app. This is a one-day SQL query plus a 90-second in-app survey, executable before any relaunch decision. [convergent]
- Plot day-1, day-7, and day-30 retention curves segmented by first meaningful feature engagement (using days 7–30 share-of-sessions, not first touch, to avoid onboarding flow contamination). The feature producing the steepest improvement is the core product candidate. [trade-off: feasibility-oriented case for first-touch as a usable proxy given time constraints; risk-oriented counterpoint that first-touch is contaminated by navigation placement and will produce a false positive for whichever feature sits in tab 1]
- Run a concierge onboarding experiment: ask one question at sign-up ("What's your primary goal?"), route new users to a single feature, suppress all other navigation for the first week, and measure whether day-7 retention beats the baseline cohort. Estimated cost is two weeks engineering plus one week PM. [unique: feasibility]
- If the 47-second paradigm hypothesis survives the cheap-test phase (widget + pilot cohort), validate the lifecycle design thesis by pulling the daily retention curve for days 1–30. A flat-then-sharp-drop curve validates intentional completion; a consistent decay from day 3 describes disillusionment, not completion. Only commit to lifecycle design if the curve shape supports it. [trade-off: feasibility-oriented case for building the offboarding experience and reframing the internal metric from 30-day retention to "program completion rate"; risk-oriented counterpoint that the revenue mechanics of a lifecycle-limited product require rebuilding the monetization thesis, not just the UX]

### Long-term (1+ years)

- Build retention stratification into weekly reporting as a standing dashboard segment: split DAU/MAU by users who have used 1–2 features versus 3+ in their lifetime. Track weekly so the trend line is visible to stakeholders before the relaunch ships. [unique: feasibility]
- If the intentional-lifecycle direction is confirmed, design an explicit graduation moment (a shareable summary export triggered when a user who was previously daily-active has not opened the app in seven days) to convert silent churn into branded social proof before the app-store algorithm registers the departure as a negative signal. [trade-off: feasibility-oriented case for building this as a two-engineer-week feature; risk-oriented counterpoint that the acquisition model for a lifecycle-limited product loses social loop mechanics at precisely the moment they would be most productive, and a replacement acquisition channel must be identified before committing to this design philosophy]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- The 47-second session combined with 2% DAU/MAU describes abandonment, not efficient micro-engagement; the fulfillment reframe is unsupported until a completion-event audit says otherwise.
- Feature-level decomposition of session data (entry frequency, time-on-feature, abandonment rate) is the prerequisite for any defensible cut decision, but requires an event schema audit before the decomposition can be trusted.
- The retention curve shape for days 1–30 is diagnostic: progressive decay from day 3 indicates disillusionment; a flat-then-drop pattern would indicate intentional completion. This analysis is available today and should precede any paradigm decision.
- Cohort stratification by feature breadth among the retained 8% is the single highest-leverage analysis available before the relaunch decision — one day of SQL work against existing data.

**Trade-offs** (the two lenses disagreed):
- A feasibility case for using first-touch feature as the retention correlation anchor, given it is immediately available in existing data; a risk-oriented counterpoint that first-touch is heavily contaminated by onboarding flow and navigation placement, and that using days 7–30 share-of-sessions as the feature-usage definition is more defensible even if it requires an extra day of query work.
- A feasibility case for treating the 47-second single-charged-moment hypothesis as a cheap experiment (widget, pilot cohort, Figma prototype) worth running in parallel with the core simplification; a risk-oriented counterpoint that the paradigm bet's appeal may partly reflect burn-out rationalization, and that a hypothesis should be subjected to an explicit falsification standard before any engineering resources are allocated to it.
- A feasibility case for building an offboarding experience and reframing the success metric to "program completion rate" as near-term steps that cost little and test the lifecycle thesis on existing data; a risk-oriented counterpoint that committing to a lifecycle-limited design requires rebuilding the monetization model from the outset, and that the current app's social loop dependencies are severed at exactly the moment they would be most productive.

**Blind-spot flags** (only one lens raised):
- The decision checkpoint: pre-committing in writing to what the data would need to show to advise against relaunching is the most structurally important safeguard against motivated reasoning under funding pressure. [unique: risk]
- Habit-formation instrumentation as a distinct signal: logging whether a user opened the app at the same time of day on two or more consecutive days identifies a qualitatively different retention driver from raw session count. Any feature disproportionately associated with this pattern belongs in the core product regardless of absolute frequency. [unique: feasibility]
- The "bundling effect" in retention correlation: a feature may be perceived as valuable by retained users even if rarely used. Cutting it based on low engagement could harm retention in users whose primary feature was something else. A survey asking retained users which features they consider "important even if I don't use them often" should precede any cut decision. [unique: risk]

**Neither-lens gaps** (what a different angle would have surfaced):
- Equity/access/distributional: neither lens asked who the 8% retainers are. Do they skew toward users with specific demographic characteristics, devices, connectivity, or prior fitness experience that the broader 180K install base does not share? Designing the simplified product around the retained cohort may optimize for a narrow slice of the original addressable audience.
- Relational/social: the social fitness app context means that some portion of retention is driven by reciprocal accountability relationships (a friend who checks in, a challenge partner who would notice absence) rather than by any feature's standalone utility. Neither lens examined whether the retained 8% has disproportionately high in-app social connections, which would mean retention is partially a social graph problem, not a feature problem.

---

**Questions addressed**: 5
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

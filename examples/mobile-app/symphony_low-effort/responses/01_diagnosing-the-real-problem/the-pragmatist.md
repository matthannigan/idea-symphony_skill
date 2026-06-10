---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "01_diagnosing-the-real-problem"
persona: "The Pragmatist"
---

# Diagnosing the Real Problem - The Pragmatist

---

## Misattributed Failure

* **Run a 2-week exit survey before touching the codebase.** Add a single in-app prompt at the moment of uninstall or after 7 days of inactivity: "What made you stop using the app?" with three options — "Too complicated," "Didn't solve my problem," and "Other." With 180K downloads and 8% retention, you have roughly 165K churned users to sample. Even a 1% response rate gives you 1,650 data points, which is enough to distinguish complexity-driven churn from a value-proposition miss. Cost: one engineer, one week.

* **Segment your 8% retainers by feature path.** A practical approach: pull session logs for the users who did stick around and map which features they touched in their first three sessions. If the retained cohort clusters tightly around one or two feature paths, that's your core value signal. If they're scattered evenly across all 15 features, the retention problem isn't feature bloat — it's something more fundamental, and you need to know that before you cut anything.

* **Don't conflate "overwhelming" with "wrong product."** User feedback saying "jack of all trades, master of none" is actually a gift — it means users understood the value proposition but found execution lacking. Users who left because they "just don't want a fitness app" rarely give that feedback at all; they simply disappear. The 8% who stayed and the vocal critics who said "overwhelming" are telling you the core idea has merit but the delivery doesn't. Treat that as a feasibility constraint, not a strategic dead end.

* **Check install-source data immediately.** If a disproportionate share of your 180K downloads came from one viral moment, an App Store feature, or a paid campaign targeting a broad audience, that explains most of the churn regardless of features. A practical diagnostic: compare 30-day retention by acquisition channel. If organic/referral users retain at 15-20% while paid campaign users retain at 3%, the problem is audience-market fit in the acquisition funnel, not the product itself. That's a very different fix than a product simplification.

* **Set a 3-week diagnostic deadline.** With 8 months of runway, you can afford 3 weeks to answer the core question before committing to a relaunch strategy. Beyond that, the diagnosis itself becomes a delay tactic. Timebox it: exit surveys deployed in week 1, cohort analysis in week 2, synthesis and decision in week 3. If the data comes back ambiguous, default to simplification — it's the lower-risk bet when you're running lean.

---

## Data Gaps Masking the Real Problem

* **Audit what you already have before commissioning new instrumentation.** Most mobile analytics platforms — Mixpanel, Amplitude, Firebase — capture screen views and event counts by default even if you haven't set up custom funnels. A practical first step is a half-day audit with one engineer: pull the last 90 days of raw event logs and check whether feature-level engagement is already there, just unread. If it is, you can answer the "which features get used" question this week.

* **A 48-hour instrumentation sprint is worth doing even now.** If you genuinely don't have per-feature data, add lightweight tracking — screen entry events, session depth per feature, drop-off points — to the top five candidate features before making any cuts. It takes one engineer two days and costs nothing except sprint capacity. The alternative is making a $X million product decision based on gut instinct with 8 months of runway left. That's the higher-risk path.

* **"Gut call dressed up as data-driven" is still a call you can make — but own it.** If time pressure means you cannot instrument before deciding, make the call explicit: "We are cutting based on team conviction and user qualitative feedback, not engagement data." That framing matters for team alignment and for post-launch evaluation. A practical approach: document your assumptions ("we believe workout tracking is the core because 60% of qualitative complaints reference navigation away from it") so you can verify them after relaunch.

* **Proxy metrics can substitute for direct engagement data.** Even without per-feature tracking, you likely have support ticket volume by topic, App Store review mentions by feature name, and notification open rates by type. These aren't perfect, but they triangulate. If the workout tracker generates 5x the support tickets of the meal planner, that's a signal — either it's the most-used feature or the most broken one. Either way, it's decision-relevant.

* **Feature flags are your fastest path to real data.** Rather than a full relaunch, consider a 2-week experiment where you hide 10 of the 15 features for new installs only (not existing users) and measure whether onboarding completion and day-7 retention improve. This gets you causal data — not just correlation — in two weeks, without touching the existing user base or committing to a permanent cut. One engineer can implement feature flags in a day if you don't already have them.

---

## Retention Signal Contamination

* **Cohort by first-session behavior, not feature co-usage.** The contamination problem — "did they stay because of feature A or feature B they happened to also use?" — is solvable if you segment by what users did in their first session specifically. Users who opened the workout tracker first and only used the workout tracker in session 1 are a clean cohort. Compare their 30-day retention to users whose first session touched multiple features. If single-feature-first users retain better, that's your simplification thesis confirmed with data.

* **Look for features with high solo-usage rates.** A practical query: for each feature, what percentage of users who used it used only it in that session? High solo-usage means the feature can stand alone and hold attention. Low solo-usage (feature always appears alongside others) might mean it's a satellite — useful but not the gravitational center. This is implementable in a day with basic SQL on your event logs.

* **Use 7-day retention as your signal, not 30-day.** With 15 features and a 47-second average session, 30-day retention is too noisy — users who churned at day 10 vs. day 25 are lumped together. A practical approach: rebuild your retention analysis at 7-day intervals (D1, D7, D14, D30) and look for which feature correlations are strongest at D7. Early retention is more actionable and cleaner than terminal churn data.

* **Run a "feature removal" experiment on new users only.** Disable three of the lowest-priority features for a cohort of new installs for two weeks. If their D7 retention is higher than the control group who sees all 15 features, you've demonstrated that complexity is actively hurting retention — not just correlated with it. This is the most pragmatic way to break the correlation-versus-causation problem with the time and resources you have.

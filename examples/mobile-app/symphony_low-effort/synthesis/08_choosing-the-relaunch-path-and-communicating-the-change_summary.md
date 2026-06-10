---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "08_choosing-the-relaunch-path-and-communicating-the-change"
central-tension: "A clean relaunch creates a decisive before/after moment that can reset team morale and product positioning, but accelerates churn and burns runway faster than incremental pruning — which preserves continuity at the cost of leaving the team in maintenance mode with too little time for the focused product."
---

# Summary: Choosing the Relaunch Path and Communicating the Change

## Executive Summary

The cluster's organizing tension is an inverted framing pair: a feasibility-oriented view treats the clean relaunch as the more buildable path — cheaper in runway terms once the technical dependency map is honest, and able to deliver a focused v1 in roughly 10 weeks — while a risk-oriented view treats the clean relaunch as psychologically appealing to a burned-out team for the wrong reasons, and warns that it does not reset user expectations, only team morale. Both lenses effectively endorsed doing the dependency mapping first, but diverged sharply on what that data should unlock: the feasibility lens uses it to justify the clean break; the risk lens uses it as a threshold test before committing.

Both perspectives converged hard on one urgent point: the 180K download figure is a near-fiction as a retention base. At 8% 30-day retention, roughly 165K installs have already churned. The meaningful cohort is approximately 14K monthly actives and 3,600 daily actives. Any churn model, communication plan, or runway calculation starting from 180K uses false inputs. This agreement is the cluster's highest-confidence signal.

On communication, both lenses endorsed segmented, behavior-triggered messaging over blast announcements and data export options as a churn-reduction mechanism. They diverged on tone. A feasibility-oriented view argued for a direct product-postmortem framing — "we built too much, too fast, none of it worked as well as it should" — as the most credible register with users who gave the app a genuine try. A risk-oriented counterpoint warned that radical transparency about product failure reads as incompetence to a reinstall-decision maker, and that honesty and trust-building require different messages. The "feature funeral" concept surfaced a second inverted framing. The feasibility lens treated it as a bounded, cheap PR mechanism (one landing page, one week live) capable of generating product signal. The risk lens flagged the funeral metaphor as potentially signaling to disengaged users that the product is dying overall. The concept only converts loss to loyalty if paired with an immediate, tangible preview of the simplified product rather than ceremony alone.

---

## Key Themes

### Do the Dependency Map First — the Strategic Decision Follows From It

Both lenses converged on running a technical dependency audit before committing to either path. If features are modular, incremental wins. If they share database tables, API endpoints, or auth systems, clean relaunch costs less. A risk-oriented view adds a time-box: if dependency-removal exceeds 40 engineer-days, treat it as data-driven justification for the clean break rather than sentiment. The map converts philosophical debate into an answerable engineering question. [convergent]

### The 180K Download Base Is Not a Retention Base — Model From Actuals

Both lenses independently arrived at the same recalculation: ~14K monthly actives, ~3,600 daily actives. A feasibility-oriented view adds the churn math explicitly. Even a 20% churn event among monthly actives loses roughly 2,800 users who would likely lapse within 60 days anyway, making the actual risk smaller than it feels emotionally. A risk-oriented view emphasizes that modeling from 180K creates false confidence in the stakes and can generate runway projections that are directionally wrong (overestimating recoverable users underestimates shipping urgency). [convergent]

### Segmented, Behavior-Timed Communication Beats Blast Announcements

Both perspectives agreed that communication strategy must segment the base by actual behavior, not download count. Trigger the simplification message when users open the app (signaling intent), not via push notification. For users losing their primary feature, a personal migration path with one-tap data export changes "you removed my feature" to "you gave me ownership of my data." A feasibility-oriented view adds operational specifics: identify top 20 power users of each deprecated feature and contact them directly. Cost is 2-3 hours of PM time; upside is converting potential detractors into rebuild participants. [convergent]

### The Decision Clock Must Be Set Before It Defaults to Incremental

A risk-oriented view surfaced a structural problem: "we'll decide after more user research" defaults to incremental by delaying the point of no return. Without an explicit decision date (within 2-3 weeks), the team makes a 6-month strategic choice by entropy. A feasibility-oriented view framed the same pressure in dollars: incremental simplification (4 months to retention signal) costs roughly $400K before signal; clean relaunch (10 weeks) costs roughly $250K. Frame the decision in dollars-before-next-signal rather than abstract philosophy. [convergent]

### The Feature Funeral: Earned Signal vs. Brand Risk

Both lenses found value in the feature funeral but diverged on scope and risk. A feasibility-oriented case argued for tight bounds: one landing page, one week live, data export links per deprecated feature. This either earns organic PR or quietly converts 2-3% of the base, with the funeral generating product signal (loudly mourned features may warrant export partnerships instead of burial). A risk-oriented counterpoint flagged three failure modes. The metaphor may read to disengaged users as "the whole app is dying." User-generated eulogies open a UGC channel during peak dissatisfaction. Shared grief converts to loyalty only if the ceremony ends with a tangible preview of what's coming, not just eulogy. The funeral works only if the relaunch is ready to receive the emotional transfer. [trade-off]

---

## Recommended Actions

### Immediate (0-3 months)

- Run a 3-day technical dependency audit. Map which proposed-cut features share database tables, API endpoints, or auth systems with the planned core 3-4. If removal exceeds 40 engineer-days, proceed with clean relaunch. If features are modular, proceed incrementally. Set a hard decision date 2 weeks from today. [convergent]
- Rebuild the churn model from actuals. Segment 180K downloads into engagement tiers (0 sessions post-install, 1-2 sessions, 3+ sessions with 2+ features, monthly active, daily active). Use ~14K monthly actives and ~3,600 daily actives for all downstream runway and communication planning. [convergent]
- Identify the top 20 power users of each feature slated for removal and contact them directly before any public announcement. A feasibility-oriented view estimates fewer than 50 heavy users per niche feature in a base this size, at a cost of 2-3 hours of PM time per feature. [unique: feasibility]
- Instrument feature-specific offboarding screens to capture one-tap churn reasons before any public communication. Cost is 1-2 days of engineering; this converts churn data from noise into directional signal. A risk-oriented view flags that analytics infrastructure to distinguish feature-specific churn from general dissatisfaction probably doesn't exist yet. [unique: risk]

### Near-term (3-12 months)

- Build one-tap data export for each deprecated feature (workout history to CSV, meal plans to PDF, social connections to email list) before the deprecation announcement. Estimated cost: 2-3 engineer-days per feature. A feasibility-oriented view frames this as shifting the emotional register from "you removed my feature" to "you gave me ownership of my data." [unique: feasibility]
- Trigger simplification messaging in-app at session open, not push notification. Send the announcement 30 days before features go dark with a concrete list of changes, export options, and a calendar invite for live Q&A. A risk-oriented view adds: don't send "we're simplifying" until a beta or TestFlight build is ready to offer as the "what's coming" artifact. Make the invitation actionable the same day. [trade-off]
- Conduct a 10-user workflow audit (screen-share sessions with narration) before finalizing the cut list. Look specifically for cross-feature sequences (workout-tracker to social-feed to meal-log chains) invisible in event logs. Pay particular attention to the social connection graph: if more than 20% of monthly actives have 3+ in-app friends, the social layer is load-bearing and should anchor the simplified product rather than be cut. [convergent]

### Long-term (1+ years)

- Set a single cross-constraint north star metric: (30-day retention rate × monthly active users) / monthly burn. This forces every feature and communication decision through the retention, team capacity, and runway constraints simultaneously rather than optimizing each in isolation. [unique: feasibility]
- If attempting the feature funeral, bound it tightly: one landing page, one week live, one seeded social post. Close the ceremony with a working beta or "first look" (not just eulogy copy) to complete the arc from loss to anticipation. A/B test the notification subject line ("Feature Funeral" vs. "We're Making [App Name] Simpler") before the full send. Instrument uninstall events in the 24 hours post-notification. [trade-off]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- The recoverable user base is approximately 14K monthly actives and 3,600 daily actives. All churn models and runway calculations must be rebuilt from these figures.
- Run the technical dependency map before making a relaunch path decision. The map converts a philosophical debate into a data-driven threshold test.
- Set a hard decision date (within 2 weeks) with explicit criteria; absent a clock, the decision defaults to incremental by entropy.
- Segment communication by actual engagement behavior; behavior-triggered in-app messaging at session open is preferable to blast push notifications.
- Data export options for deprecated features materially reduce loss aversion and should be built before any public announcement.

**Trade-offs** (the two lenses disagreed):
- A feasibility-oriented case for the clean relaunch as cheaper once technical coupling is mapped (10-week ship at ~$250K vs. 4-month incremental at ~$400K before signal). A risk-oriented counterpoint: the clean-break narrative appeals emotionally to the team for reasons that aren't valid product criteria, and brand reputation from v1 transfers to v2 regardless.
- A feasibility-oriented case for honest, postmortem-style communication ("we built too much, too fast") as most credible with users who gave the app a genuine try. A risk-oriented counterpoint: radical product-failure transparency reads as incompetence to a reinstall-decision maker. The honest message and the trust-building message need separate drafts tested with real users.
- A feasibility-oriented case for the feature funeral as a bounded, cheap mechanism generating PR and product signal. A risk-oriented counterpoint: the funeral metaphor risks reading as "the whole product is dying" to disengaged users. Shared grief converts to loyalty only if paired with an immediate, tangible preview of what's coming.

**Blind-spot flags** (only one lens raised):
- A separate "new app" path may be feasible if the backend can serve multiple clients from a single API layer. Marginal cost could be primarily frontend and App Store overhead (~4-6 weeks of one engineer), not a full rebuild. A/B test the existing brand against a new name before committing to either path. [feasibility-oriented]
- A "focus mode" toggle — a settings option that hides non-core features behind an advanced menu — costs 1-2 weeks of engineering and generates real retention data on simplified navigation before permanently deleting anything. [feasibility-oriented]
- The clean-break narrative conflates two distinct decisions. Choosing a clean build doesn't require deprecating the old app. Life-support maintenance of v1 (security patches only) while building v2 in parallel is a real option, but only if the maintenance floor is calculated first. It likely consumes 20-30% of team capacity, not zero. [risk-oriented]
- Grief-acknowledgment language in user communications may amplify loss aversion rather than channel it. Explicitly naming "we know you lost something" primes users to feel the loss more intensely, potentially converting passive churners into active detractors. Test grief-acknowledgment copy against forward-looking copy in a small email cohort before the in-app send. [risk-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- **Equity/access/distributional:** Neither lens examined whether the 3,600 daily and 14K monthly actives skew toward specific demographics, device types, or data access levels. The "correct" core feature set looks different if the retained cohort is predominantly high-income premium-device users versus a mixed base. A simplified product can inadvertently narrow its addressable user population.
- **Political-economy/institutional:** Neither lens addressed investor narrative implications of a clean relaunch or separate-app path. With 8 months of runway, the relaunch decision is a fundraising story. A clean break may narrate to investors as decisive; incremental pruning may read as inability to commit. External communication (investors, press) differs from user communication and may constrain which path is actually available.
- **Lifecycle/temporal-stage:** Neither lens examined what the product should look like at month 9 if fundraising fails. Should the simplified product be designed for acquireability or wind-down from the start, not just retention? The simplification decision doubles as exit-planning, and neither lens surfaced that.

---

**Questions addressed**: 7
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

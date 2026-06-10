---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "04_false-positives-trust-and-alert-behavior"
central-tension: "Making the device's uncertainty visible and actionable reduces liability and builds durable trust, but requires disciplined governance and explicit design choices that resist the startup default of projecting confidence to drive adoption."
---

# Summary: False Positives, Trust, and Alert Behavior

## Executive Summary

The cluster's organizing tension is not simply false-positive rate versus missed-event rate. It's about whether the team treats uncertainty as a liability to hide or as a design material to surface. A feasibility-oriented view argues that confidence tiers, motion-artifact context flags, and plain-English uncertainty disclosures are implementable within a single sprint. They create meaningful liability protection and can be positioned as competitive differentiation ("the only cardiac wearable that tells you what it doesn't know"). A risk-oriented counterpoint is that surfacing uncertainty opens a new liability vector: a user who ignores a "40% confident" alert and suffers a cardiac event may cite the device's own language as justification. Confidence intervals will be misread unless supported by user education the team has not yet built.

Both lenses converged strongly on several high-confidence findings: liability exposure is determined by alert copy, not device labeling. Silent disengagement (wear-time drop, rapid dismissal) is a leading indicator that standard DAU metrics will miss entirely. Sleep motion-artifact rejection is not a hypothetical risk but a known P0 requirement. The alert flow at 2 a.m. must answer "how sure?" and "what do I do right now?" from the device display itself, without requiring the companion app.

The deepest divergence concerned governance structure. A risk-oriented view holds that a governance forum without explicit veto authority and pre-committed quantitative thresholds is a ceremony. It's anecdote-driven lurching disguised as process. A feasibility-oriented view argues that a 30-minute bi-weekly review with a fixed attendee list, a "trust SLA" that triggers mandatory threshold adjustment at defined FP ceilings, and a simple shared FP log is cheap to stand up and sufficient to prevent the worst outcomes. These are not mutually exclusive, but the risk-oriented concern is real: product velocity will hollow out governance rituals. The feasibility prescription alone does not address this.

---

## Key Themes

### Alert Copy Is the Liability Surface, Not the Model

Both lenses agreed that the legal and user-trust exposure of a false positive is almost entirely determined by how the alert is worded, not by the underlying model output. "Irregular heart rhythm detected" creates a clinical-guidance posture that no EULA disclaimer will overcome with a jury. "Unusual heart rhythm pattern — consider discussing with your doctor" does not. This is a product copy decision, not a model decision, and it must be resolved before beta launch with legal review.

### Silent Disengagement Requires Active Instrumentation

Standard retention metrics (DAU, app opens, subscription status) are structurally blind to silent disengagement. Both lenses identified wear-time (inferable from the accelerometer already on-device) and alert dismissal latency as the leading indicators. These must be instrumented from day one, not bolted on after churn appears. The risk-oriented view added that early-adopter retention data will systematically mislead because power users tolerate false positives that mainstream users will not.

### Governance Without Teeth Defaults to Sensitivity Drift

A risk-oriented view identified a structural problem: without a named cross-functional owner of the FP/FN dial and explicit quantitative thresholds that trigger mandatory response, the default organizational drift is toward sensitivity. Missing an event is more salient than alert fatigue. A feasibility-oriented view proposed the minimum viable governance structure: a bi-weekly 30-minute review with a defined attendee list, a "trust SLA" specifying when threshold adjustment becomes mandatory, and a shared FP log for institutional memory. The risk-oriented counterpoint that this forum needs explicit authority to delay releases is not addressed in the feasibility prescription.

### Uncertainty Disclosure as Both Ethical Requirement and Design Material

Both lenses converged that hiding model uncertainty is a product shortcut that compounds over time. Every user who treats a low-confidence alert as authoritative is a future complaint. The feasibility-oriented view argued that mapping model output probabilities to plain-English confidence tiers is one sprint of mobile work and functions as a liability lever. The risk-oriented view added that the legal complexity of uncertainty language requires attorney review before launch. Users need calibration education ("40% confident means 2 in 5 events like this turn out to be real"), or the number will induce either panic or dismissal depending on baseline anxiety.

### The 2 a.m. Alert Flow Is a Stress-Case, Not a Nominal Case

Both lenses treated the 2 a.m. Marcus scenario as the load-bearing design test for the entire alert system, not an edge case. Both agreed that critical first-response information must live on the device display, not require a phone. The "call a doctor" default should route to the user's primary care provider, not 911. The interaction design must be tested under simulated fatigue conditions, not just in daylight design reviews.

---

## Recommended Actions

### Immediate (0-3 months)

- Before beta launch, get a legal review of all alert copy, including uncertainty disclosure language and the distinction between "notification" and "recommendation." Budget approximately $10k. [convergent]
- Implement a motion-artifact context flag in every cardiac alert: if the accelerometer shows movement in the 60 seconds prior to a PPG anomaly, the alert must say so explicitly. This is an existing data source requiring one rendering change. [convergent]
- Instrument wear-time (wrist-off inference from accelerometer) and alert dismissal latency as first-class analytics from firmware day one, not as an instrumentation backlog item. [convergent]
- Define two named firmware threshold profiles — consumer and clinical — even if both currently point to identical values. The migration cost at regulatory regime shift is a config flip, not an architecture retrofit. [unique: feasibility]
- Treat sleep motion-artifact rejection as a P0 launch requirement with specific test cases drawn from wrist-worn sleep movement datasets. This is not a hypothetical scenario; it is the most common PPG error source in wrist-worn devices. [convergent]

### Near-term (3-12 months)

- Establish a bi-weekly FP governance review: 30 minutes, fixed attendee list (ML engineer, firmware engineer, PM, legal/clinical advisor), with a documented "trust SLA" (a specific FP rate ceiling, e.g., >2 false alerts/user/week for two consecutive cycles, that obligates the ML team to ship a threshold adjustment within one sprint). Give this forum documented authority over alert threshold changes. [trade-off: feasibility view holds the cadence and SLA are sufficient; risk-oriented view requires explicit veto authority over release decisions]
- Map model output probabilities to a three-tier plain-English confidence display ("Low confidence / pattern worth watching," "Moderate confidence / consider logging," "High confidence / discuss with your doctor") with a first-time in-app explainer. Ship before the first low-confidence alert reaches users. [convergent]
- Run a cohort analysis segmented by alert volume in the first 30 days; track 90-day retention by cohort. The FP rate at which the churn curve bends is the operational ceiling. [unique: feasibility]
- Conduct usability testing of the 2 a.m. alert flow under simulated fatigue conditions (late-night sessions, participants near-sleep) before finalizing the interaction design. [unique: risk]
- Track consecutive alert dismissals per user; after three consecutive dismissals, automatically surface an alert sensitivity review prompt before the user reaches habitual disengagement. [convergent]

### Long-term (1+ years)

- Run a shadow clinical-calibration model from day one alongside the consumer model. Track divergence over time so the 510(k) threshold transition is a documented, predictable configuration change rather than a user-visible discontinuity. [unique: risk]
- Conduct a longitudinal study measuring baseline health anxiety in target users and track anxiety scores at 90 days of wear. If anxiety increases by a pre-committed threshold, revisit alert cadence design. [unique: risk]
- Design "device offline" states (low battery, firmware update, lost device) to include a brief reminder of manual awareness signals: "This device supplements but does not replace regular cardiac care. If you have symptoms, seek care regardless of what the device shows." This is a copy decision, not an engineering decision. [convergent]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- Liability exposure is determined by alert copy, not device labeling or EULA disclaimers.
- Sleep motion-artifact rejection is a P0 launch requirement, not a post-launch improvement.
- Silent disengagement requires proactive instrumentation (wear-time, dismissal latency) from day one. Standard retention metrics will not surface it.
- The critical first-response information in any alert flow must live on the device display, not require the companion app.
- Hiding model uncertainty compounds over time into retention risk and liability exposure.
- Alert fatigue is not a gradual linear decay. It often breaks at a single catastrophic false-positive event.

**Trade-offs** (the two lenses disagreed):
- Feasibility: uncertainty disclosure (confidence tiers plus a one-screen explainer) is one sprint of implementation and closes the liability gap. Risk-oriented: displaying "40% confident" creates a new liability vector. Users who ignore low-confidence alerts and have events may cite the device's own language. This requires attorney review of specific uncertainty language before any disclosure ships.
- Feasibility: a 30-minute bi-weekly review with a trust SLA is sufficient governance for a 12-person team. Risk-oriented: without explicit veto authority over release decisions, governance forums default to ceremony once product velocity pressure arrives.
- Feasibility: a "quiet mode" auto-escalation after three consecutive dismissals is the minimum viable alert-fatigue intervention. Risk-oriented: alert fatigue often breaks catastrophically at a single event rather than accumulating linearly, making threshold-based auto-escalation a lagging response.

**Blind-spot flags** (only one lens raised):
- The consumer FP calibration will be visible to users as a discontinuity when 510(k) specificity targets require tightening. Shadow-modeling two profiles from day one prevents a trust-eroding relaunch. [risk-oriented]
- Early-adopter beta retention data is drawn from the highest-anxiety, most motivated cohort, not representative of the mainstream 40+ adult. Building FP tolerance assumptions from power-user persistence will produce a device that fails at scale. [risk-oriented]
- Designing an optional "health contact" notification (partner receives a summary, not the raw alert, when a high-confidence event is logged) addresses a real social need that the device's 2 a.m. experience creates. Most wearable teams overlook this. [feasibility-oriented]
- Framing uncertainty disclosure as a competitive differentiator for Series A investors ("the only cardiac wearable that tells you what it doesn't know") turns an ethical requirement into an investor-legible retention and regulatory-risk argument. [feasibility-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- *Emotional/phenomenological:* Neither lens examined the subjective experience of chronic health monitoring for users with pre-existing cardiac anxiety. Specifically, whether sustained exposure to a device that surfaces ambiguous signals over months changes a user's relationship to their own body, independent of alert accuracy. The behavioral side-effects question touched this, but neither lens addressed the lived experience of becoming a monitored patient before receiving a diagnosis.
- *Equity/distributional:* Neither lens examined whether the alert calibration choices, governance practices, and uncertainty disclosure designs will perform consistently across subpopulations: users with darker skin tones (PPG accuracy differences), users with irregular sleep schedules (motion-artifact context), or users whose primary language is not English (comprehension of uncertainty copy). These are not edge cases for a consumer wellness device targeting adults 40+.
- *Political-economy/regulatory:* Neither lens examined the incentive structure that shapes what a future 510(k) submission will actually require. Specifically, whether the consumer-wellness launch will generate the kind of labeled ground-truth data that a De Novo or 510(k) submission needs, or whether the data pipeline is being designed for consumer retention without regard for what regulators will ask for in 18-24 months.

---

**Questions addressed**: 7
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "08_equity-access-and-the-people-being-served"
central-tension: "The population with the most to gain from early arrhythmia detection — lower-income, rural, and lower-digital-literacy adults with limited healthcare access — is structurally excluded by the same design decisions (price point, smartphone dependency, companion-app-as-primary-alert-surface, post-alert pathways that assume a PCP) that make the product commercially viable for a Series A startup."
---

# Summary: Equity, Access, and the People Being Served

## Executive Summary

The device's most consequential equity problem is architectural, not cosmetic: the companion app is the primary surface for processed alerts, which means the wearable's core health-safety value is gated behind a second device purchase, sufficient digital literacy, and reliable connectivity. For the 40+ adult on a fixed income with a basic phone or shared family tablet, the device detects arrhythmias they cannot act on. Both lenses agree this is the cluster's central structural gap, but they frame the stakes differently. A risk-oriented view treats this as an ethical failure and a liability risk: generating a health-information moment without the infrastructure to respond is a design decision with real consequences for the uninsured, the rural, and the newly health-anxious. A feasibility-oriented view treats the same gap as a tractable product problem: decouple alerts from the smartphone entirely by adding a small OLED display or haptic pattern library to the wearable itself, and add a Progressive Web App interface as a $0-upfront fallback. Both are accomplishable within the current funding cycle.

That same inversion runs through the post-alert experience. Both lenses converge on the finding that "consult a physician" is not an action for a large portion of the target demographic: the user with no insurance, no primary care physician, and a cardiology waitlist measured in months receives an alert that triggers a cost calculation, not a care pathway. The feasibility-oriented path includes telehealth integration, a community health center locator, and a structured "what to do next" card in the companion app (mobile engineering tasks, not regulatory ones). The risk-oriented counterpoint is that solving the pathway problem without solving the income-access problem still leaves the highest-risk users paying for detection without access to response.

Where both lenses converge most strongly is on user participation in design. Alert thresholds, notification language, and post-alert flows are being set by engineers, yet none of those decisions are purely technical. A co-design sprint with eight to ten actual 40+ adults (specifically including people with lived experience of cardiac events, not just "health-conscious" early adopters) would cost $5,000–$8,000 and is the most leveraged single action this cluster surfaces. Both lenses also converge on false positive rate as the primary trust variable. A user who receives one false positive in month one and then silence will distrust the device, regardless of underlying detection accuracy.

---

## Key Themes

### The Companion App as an Equity Chokepoint

Both lenses agree: routing life-safety alerts exclusively through a smartphone companion app is a structural exclusion mechanism. Older adults on basic phones, users sharing household devices, and anyone with an older or incompatible Android OS are paying for cardiac monitoring they cannot fully access. The feasibility-oriented path includes standalone haptic/OLED alert mode plus a Progressive Web App for alert review. This addresses the problem without a full product pivot and should be scoped as a 1.0 requirement, not a 2.0 roadmap item.

### Post-Alert Dead End for the Structurally Underserved

An alert that fires with no navigable next step is worse than no alert for users who lack insurance, a PCP, or geographic access to cardiology. Both lenses flag this. The risk-oriented view emphasizes the ethical and liability dimensions of generating anxiety without utility. The feasibility-oriented view proposes concrete infrastructure: a telehealth partner integration, a community health center locator, a structured export for any provider. False negative risk (the user who receives no alert and concludes they are fine) is raised uniquely by the risk-oriented lens and is a message-design problem that needs to be solved before launch.

### Alert Threshold and Notification Language as Disguised Clinical Decisions

Both lenses converge on the finding that the ML team's sensitivity/specificity tradeoffs encode clinical judgments that engineers are not positioned to make alone. Notification language written by engineers reflects engineering mental models, not the emotional state of a frightened 60-year-old receiving an alert at 2 a.m. Both lenses endorse user testing of notification copy (not just functionality) as a first-class pre-beta deliverable and recommend recruiting specifically for people with lived cardiac event experience.

### Trust is Built by Reliability, Not Peak Accuracy

Both lenses agree: the cardiologist-conversation outcome at year three depends not on detection accuracy but on mundane reliability behaviors. Consistent battery life, alert language that makes sense on first read, and a false positive rate low enough that users do not learn to ignore the device all matter. A feasibility-oriented view adds that the trust outcome is also a market signal (users who bring device logs to cardiology appointments demonstrate a 510(k) use case and create clinical partnership leverage). The risk-oriented view adds that earned trust requires a feedback loop. Without an outcome-reporting mechanism, the device cannot learn from false positives and trust cannot compound.

### Whose Voice Has Shaped the Design

Both lenses treat this as a concrete deficiency with a concrete fix. Advisory board members and focus groups are not substitutes for iterative participation by actual 40+ users (including people recently anxious after a family cardiac event, people managing known arrhythmias, and people who have never interacted with a cardiologist). Both lenses endorse a standing compensated advisory panel over ad-hoc usability testing and identify tracking participation data (who was in the room at each architecture decision, and what changed) as a deliverable, not an afterthought.

---

## Recommended Actions

### Immediate (0–3 months)

- Add standalone alert capability to the wearable firmware spec: define a haptic pattern library and/or small OLED display that surfaces "anomaly detected: see a doctor" without requiring a companion app. This makes on-device detection the primary alert surface (the smartphone becomes enrichment). [convergent]
- Replace "microphone access for breathing analysis" in the consent flow with a specific one-screen explanation: "The microphone listens for breathing pauses during sleep and processes audio on-device. No recordings are stored or transmitted." Zero engineering cost meaningfully changes the trust calculus. [convergent]
- Test both versions of the FDA disclaimer in a five-person cognitive walkthrough: the current legal sentence versus "This alert means the device detected a pattern worth discussing with a doctor, not that you have a confirmed condition." Ship the version users can act on without panicking. [convergent]
- Add a two-question onboarding branch ("What brought you here today?" with options including "recent health scare," "managing an ongoing condition," "general wellness") to route users to appropriately calibrated language. One to two days of mobile engineering time. [unique: feasibility]

### Near-term (3–12 months)

- Run a structured co-design sprint with 8–10 adults from the target demographic before the next hardware revision. Budget $5,000–$8,000 and recruit explicitly for lived cardiac event experience. Log which architecture decisions (alert thresholds, notification language, sensor selection) were present and what changed. [convergent]
- Build the post-alert resource layer. When an alert fires, surface (1) a "find a cardiologist near me" link using stored ZIP code, (2) one-tap anomaly log export, (3) a "next steps without a doctor" resource including community health center locator. This is a mobile engineering task, not a regulatory one. [convergent]
- Partner with one telehealth provider before launch on a revenue-share basis and add a "talk to a doctor about this alert" button that routes to the partner. Converts post-alert dead end into a navigable pathway at $0 upfront cost. [unique: feasibility]
- Instrument alert-to-action conversion from day one. What percentage of users who receive an alert take a documented next step within 72 hours? If below 40%, the post-alert experience is broken regardless of detection accuracy. [unique: feasibility]
- Add a lightweight "what happened after this alert" prompt in the companion app as an opt-in outcome-reporting mechanism. Simultaneously builds user trust (device appears to learn) and feeds model improvement signals. [unique: risk]

### Long-term (1+ years)

- Run a 30-person sample study across two income quintiles measuring detection rates and setup completion by income tier before Series B. Use results to design subsidized employer wellness plan and FSA/HSA-eligible pricing tiers. [trade-off: a feasibility case for tiered pricing as the most tractable access mechanism within startup constraints; a risk-oriented counterpoint that any paywall, however graduated, excludes the users with the highest undetected risk and least clinical access. Resolve through the Series B outcome data, not by assumption now]
- Design companion app exports for clinical review (structured anomaly logs with language that maps onto clinical categories) and track "share with provider" usage before filing the 510(k). Clinical-legible exports are both a regulatory asset and the prerequisite for the cardiologist-conversation trust outcome. [convergent]
- Establish a standing 15-person compensated advisory panel (one session per quarter at $150/session) for ongoing design participation. Prioritize participants with lived cardiac event experience and participants without smartphones or with basic-phone setups. [convergent]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- The companion-app-as-primary-alert-surface is a structural exclusion mechanism for the 40+ demographic; standalone alert capability should be scoped as a 1.0 requirement.
- Post-alert pathway infrastructure (telehealth link, community health locator, export-for-provider) is a mobile engineering task achievable in the current funding cycle and is the most urgent user-journey gap.
- Alert thresholds and notification language are clinical decisions in disguise; user testing of copy (not just functionality) must happen before beta.
- Consistent false positive rate (target: below 2 per week per user) is the primary trust variable at 18 months; invest in alert suppression and threshold calibration at least as heavily as the detection model.
- Co-design participation by actual 40+ users with lived cardiac experience, before the next hardware revision, will change the product in ways no engineering review will surface.

**Trade-offs** (the two lenses disagreed):
- A feasibility case for tiered pricing (full price, employer wellness subsidy, FSA/HSA-eligible) as the most commercially sustainable path to broader access. A risk-oriented counterpoint argues that income-gated access leaves the highest-risk users (those with least healthcare infrastructure to respond to an alert) as the population most systematically excluded.
- A feasibility case that standalone haptic/OLED alerts plus a Progressive Web App companion interface resolves the smartphone dependency at low cost. A risk-oriented counterpoint argues these are mitigations, not solutions. A user who shares a device or lacks consistent connectivity still faces compounding disadvantages as firmware updates and feature improvements assume connectivity over time.

**Blind-spot flags** (only one lens raised):
- False negative asymmetry: a user who receives no alert and concludes they are clinically fine is in a categorically different risk position than one who receives a false positive. The device's onboarding, alert language, and companion app must ensure users understand that absence of an alert is not a clinical clearance. [risk-oriented]
- Trust as a market signal: users who bring device logs to cardiology appointments demonstrate the 510(k) use case and generate clinical partnership leverage. Instrument the "share with provider" action from the first pilot; it is simultaneously a trust-building feature and a regulatory evidence stream. [feasibility-oriented]
- Alert threshold calibration requires input from people who have experienced real arrhythmia events. The sensitivity/specificity tradeoffs encode a judgment about acceptable risk for non-clinical users that the ML team is not positioned to make alone. [risk-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- **Payer and institutional gatekeeping**: neither lens examined the structural role of insurers, employer wellness programs, and healthcare systems as the actual gatekeepers of access. Not just price, but whether the device is reimbursable, whether employers will subsidize it, and whether clinical systems will accept its outputs. The post-alert pathway problem is partly a payer-relationship problem that neither a risk nor a feasibility lens addresses directly.
- **Lifecycle stage transitions**: neither lens examined how the device's role changes as users move across health-status thresholds, from pre-diagnosis wellness monitoring to post-diagnosis condition management, or from consumer wellness use to clinical partnership use. The design decisions appropriate for a first-time user who has never been diagnosed may be wrong for a user three years in who is now managing a confirmed arrhythmia.

---

**Questions addressed**: 6
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

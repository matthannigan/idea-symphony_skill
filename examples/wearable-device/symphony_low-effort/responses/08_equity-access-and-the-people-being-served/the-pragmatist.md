---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "08_equity-access-and-the-people-being-served"
persona: "The Pragmatist"
---

# Equity, Access, and the People Being Served - The Pragmatist

---

## Excluded Populations Beyond the Stated Target Framing
* **Start with a pricing model audit before launch.** Before finalizing MSRP, run a simple income-distribution overlay against the 40+ cardiac-risk population. If 60% of high-risk adults fall in the bottom three income quintiles and your price point puts the device out of reach for them, you have a market failure as much as an equity failure. A practical starting point: model three price tiers — full price, subsidized via employer wellness plans, and an FSA/HSA-eligible configuration — and estimate addressable volume at each.
* **A practical approach for dexterity and low-vision users is to scope accessibility as a 1.0 requirement, not a 2.0 roadmap item.** PPG and accelerometer sensing work the same regardless of user dexterity, but the companion app interaction layer is where accessibility is won or lost. Allocate one mobile engineer sprint to audit the alert flow against WCAG 2.1 AA. The marginal cost is low; retrofitting later is not.
* **To make rural distribution feasible, treat pharmacy chains as a launch channel alongside direct-to-consumer.** CVS and Walgreens already have pharmacy-adjacent health monitoring SKUs and rural footprint. A consignment arrangement with a major pharmacy chain costs roughly $0 upfront and puts the device physically accessible within 10 miles of most rural adults. Pursue this in parallel with the DTC launch, not after it.
* **Model the health-outcome gap explicitly.** Commission or conduct a 30-person sample study across two income quintiles before Series B. Showing that detection rates drop sharply for lower-income users due to setup friction or phone requirements gives you both a product roadmap signal and a compelling story for payer and employer wellness partnerships.

---

## Smartphone Access and Digital Literacy Assumptions in the Companion-App Architecture
* **A practical approach might be to decouple the alert surface from the smartphone entirely for the MVP.** The device already has sufficient intelligence on-chip to store alerts locally. Add a small OLED display or haptic pattern library so the wearable itself communicates "anomaly detected — see a doctor." The smartphone app then becomes an optional enrichment layer rather than the required delivery mechanism for life-safety information.
* **To make this feasible without a full standalone-device pivot, start with a web-based companion interface.** A Progressive Web App accessible from any browser on any device — including a family member's phone or a library computer — costs roughly two weeks of mobile engineer time to scaffold and eliminates the "must own a smartphone" dependency for basic alert review. Full native app features can live behind the standard install flow.
* **Shared-device household patterns are a real design constraint, not an edge case.** For users who share a phone, build account-switching or PIN-protected profile access into the companion app from day one. The technical lift is small; the experience of a 65-year-old discovering their spouse's health data on "their" phone is not a recoverable trust moment.
* **Quantify the dependency before shipping.** Add a single onboarding survey question — "Do you own a smartphone?" — during the early access program and track completion rates by response. If 15%+ of enrolled users report no smartphone, the companion-app-as-primary-alert-surface is a documented risk, not a hypothetical one.

---

## Emotional State Diversity at First Use and the Intimacy of Sleep Monitoring
* **To make this feasible to address within current resources, add one 30-minute user interview cadence to the existing QA cycle.** Recruit participants specifically from the "recently anxious after a family event" segment — not just early adopters. Five interviews will surface the most jarring first-use friction points faster and cheaper than any heuristic analysis.
* **A practical approach for the sleep microphone concern is to make the consent moment visible and specific.** Replace "microphone access for breathing analysis" with "the microphone listens for breathing pauses during sleep and processes audio on-device — no recordings are stored or transmitted." That specificity costs zero engineering time and meaningfully changes the trust calculus for skeptical users.
* **The onboarding flow should branch by user-stated context, not just demographics.** A two-question onboarding screen — "What brought you here today?" with options like "recent health scare," "managing an ongoing condition," "general wellness" — routes users to appropriately calibrated language throughout the experience. This is a 1-2 day mobile eng task and directly addresses the emotional variability problem.
* **Build a "quiet mode" toggle that suspends active monitoring for a configurable window.** For users who find continuous monitoring anxiety-inducing, the ability to say "don't monitor me tonight" preserves user agency without abandoning the product. Implementation is a firmware flag; the larger value is signaling that the device serves the user's comfort, not just data collection goals.
* **Track early churn by onboarding segment as a leading indicator.** If users who report "recently anxious" churn at 3x the rate of "general wellness" users within the first 30 days, you have quantified a product design problem worth fixing before scaling marketing spend.

---

## Post-Alert Pathway and Translating Regulatory Disclaimers Into Lived Understanding
* **A practical approach might be to build a curated resource layer into the alert experience before launch.** When an alert fires, the companion app should surface three concrete next steps: (1) a "find a cardiologist near me" link using the device's stored ZIP code, (2) a one-tap export of the anomaly log for sharing with any provider, and (3) a plain-language explanation of what the device detected and what it cannot confirm. This is a mobile engineering task, not a regulatory one, and it reduces the post-alert helplessness gap significantly.
* **"This device is not FDA-cleared for clinical diagnosis" is a legal sentence, not a user experience.** To make the disclaimer actionable rather than anxiety-inducing, replace or supplement it with: "This alert means the device detected a pattern worth discussing with a doctor — not that you have a confirmed condition." Test both versions in a five-person cognitive walkthrough. The version users can act on without panicking is the one that ships.
* **Partner with one telehealth provider before launch.** A single telehealth integration — a "talk to a doctor about this alert" button that routes to a partner service — converts the post-alert dead end into a navigable pathway. Negotiate a revenue-share arrangement; the telehealth provider gets qualified leads, you get a $0 upfront infrastructure cost and a feature that addresses the most dangerous gap in the user journey.
* **For users without insurance or a PCP, the alert is only as valuable as the pathway it opens.** Build a static "next steps without a doctor" resource — community health center locator, self-monitoring log template, what symptoms warrant an ER visit — into the app. This costs one content sprint and acknowledges that not every user has the same healthcare access the design team likely has.
* **Track alert-to-action conversion as a core product metric from day one.** How many users who receive an alert take a documented next step within 72 hours? If that number is below 40%, the post-alert experience is broken regardless of detection accuracy. Instrument it early so you have data to iterate against.

---

## Whose Voice Has Shaped the Design
* **A practical approach might be to run a structured co-design sprint with 8-10 adults from the target demographic before the next hardware revision.** Not a focus group — a working session where participants react to actual alert language, onboarding flows, and wrist-worn form factor with real tasks. Budget $5,000-$8,000 for participant compensation and facilitation. The cost of retrofitting a sensor position or alert tone post-tooling is orders of magnitude higher.
* **Track participation data as a deliverable, not an afterthought.** Log how many target-demographic participants were in the room at each key architecture decision point — sensor selection, alert threshold calibration, notification language, data pipeline design — and what changed as a result. This creates accountability and a usable record for investor and regulatory conversations about inclusive design process.
* **To make ongoing user involvement feasible within current resources, establish a 15-person advisory panel rather than ad-hoc usability testing.** Compensated panel members (one recurring session per quarter, $150/session) provide faster, cheaper, more contextually informed feedback than recruiting new participants for each study. The panel investment pays back in the first hardware revision it prevents.
* **Identify two or three participants with lived experience of cardiac events specifically.** General "health-conscious 40+" feedback is useful; feedback from someone who has worn a Holter monitor, experienced a false alarm, or had a family member die before diagnosis is qualitatively different. Recruit for that experience explicitly; it will change what the team builds.

---

## The Device That Earns Genuine Trust From a 40+ User
* **A practical approach might be to identify the two or three existing design decisions most likely to produce that outcome and protect them through the next cost-reduction round.** Based on the current architecture, the strongest candidates are: on-device processing (the data never leaves), local anomaly history accessible without a network connection, and an alert design that is specific enough to prompt action without inducing panic. These are the features most likely to be value-engineered out under budget pressure — flag them explicitly as non-negotiable in the product requirements document now.
* **The "confidence in my own body" outcome is downstream of consistent signal reliability, not peak accuracy.** A user who receives one false positive in month one and then no alerts for six months has learned to distrust the device. To make this feasible, invest in the alert suppression and threshold calibration layer at least as heavily as the detection model itself. A false positive rate below 2 per week per user is a tractable engineering target; instrument it from the first pilot.
* **To make this achievable within 18 months of runway, sequence the trust-building features deliberately.** The cardiologist-conversation scenario requires: (1) accurate detection, (2) a structured anomaly log the user can show a doctor, (3) language that positions the device as a complement to clinical care rather than a replacement. Items 2 and 3 are software features completable in the current funding cycle. Prioritize them over any feature that requires FDA clearance to deliver value.
* **The trust outcome is also a market signal.** If you can show that 55-year-olds with cardiac family history bring their device logs to cardiology appointments — and cardiologists engage with those logs — you have clinical partnership leverage and a compelling 510(k) use case. Instrument the cardiologist-conversation outcome explicitly: add an optional "share with provider" action to the anomaly log and track how often it's used.

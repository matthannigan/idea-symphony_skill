---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "04_false-positives-trust-and-alert-behavior"
persona: "The Devil's Advocate"
---

# False Positives, Trust, and Alert Behavior - The Devil's Advocate

---

## Q1: False-positive rate as a design variable across alert fatigue, credibility decay, regime shifts, and the consumer-clinical accuracy gap

* **The governance vacuum will decide for you.** Have we considered that without a named, cross-functional owner of the FP/FN dial, the default will always drift toward sensitivity — because the firmware team fears missing events, the legal team fears missed-event suits, and no one is accountable for the alert-fatigue that slowly destroys the product? Mitigation: assign explicit ownership of threshold decisions to a clinical-product lead with veto power over both engineering and legal tuning.

* **Consumer calibration poisons the clinical pathway.** If users habituate to a ~15% false-positive rate during the consumer launch, then a 510(k) submission targeting 5% will require a visible, user-facing change in alert behavior — and that discontinuity may itself erode trust. Mitigation: run two parallel shadow models from day one: one tuned for consumer UX, one tuned to FDA-plausible specificity targets, and track divergence over time so the transition is a known quantity rather than a crisis.

* **Alert fatigue is not gradual — it's a cliff.** The assumption embedded in "acceptable FP rate" thinking is that trust decays linearly. It doesn't. Users tolerate noise up to a threshold, then dismiss the device entirely after one embarrassing false alarm. A single 2 a.m. hospital trip may invalidate months of earned trust. Mitigation: model the distribution of user responses to false positives, not just the rate — identify the catastrophic outlier events and engineer specifically against them.

* **Who defines "operationally acceptable" for users who can't define it themselves?** Health-anxious 40+ adults will consistently underreport their own alert fatigue in surveys because they don't want to admit they're ignoring a potential cardiac warning. Self-report data will systematically overstate tolerance. Mitigation: instrument passive disengagement signals (notification dismissed within 2 seconds, device removal correlated with alert timing) rather than relying on user surveys.

---

## Q2: The 2 a.m. false-positive liability scenario

* **"Wellness device" is not a legal shield — it's a framing the user controls.** Have we considered that liability exposure is determined not by what the company labeled the device, but by what a reasonable user in that moment understood? If alert copy says "Irregular heart rhythm detected," no disclaimer on page 12 of the EULA will convince a jury the user should have known it wasn't clinical guidance. Mitigation: require every alert to include explicit uncertainty language and a non-emergency follow-up recommendation, and A/B test comprehension of that framing before launch.

* **The liability exposure is asymmetric in a dangerous direction.** The company bears reputational and legal risk from false-positive ER trips, but the user bears the financial and emotional cost. That asymmetry means the company has weak incentive to fix the problem quickly once deployed. Mitigation: build internal review triggers for any reported ER visit linked to a device alert — make false-positive-driven harm events visible to leadership, not just buried in support tickets.

* **Motion artifact during sleep is a known, solvable problem being deferred.** Framing this as a theoretical "scenario" understates that sleep motion artifact is one of the most common PPG error sources in wrist-worn devices. If it hasn't been addressed in the ML pipeline, this scenario isn't hypothetical — it's a roadmap item that will ship. Mitigation: treat sleep-motion artifact rejection as a P0 requirement before launch, with specific test cases drawn from wrist-worn sleep movement datasets.

* **The 2 a.m. timing is not incidental — it's a design failure.** Alerting at 2 a.m. when a user cannot reach their cardiologist or distinguish real from false positive is a UX design choice that amplifies harm. Mitigation: consider time-gating non-critical alerts to waking hours, with a separate threshold for genuinely urgent patterns that warrant immediate action — and define "urgent" in consultation with cardiologists, not engineers.

---

## Q3: Silent disengagement as the leading retention indicator

* **The metrics dashboard will make this invisible.** Have we considered that standard retention metrics — DAU, sync frequency, app opens — all require active engagement to register? A user who wears the device passively and never opens the app will look identical to a highly engaged user in most dashboards. Silent disengagement lives in the gap between device wear and meaningful engagement. Mitigation: instrument device-side metrics like alert acknowledgment latency and notification dismissal patterns, not just app-side events.

* **Users won't report false positives because reporting feels like admitting the device is broken — and they need it to work.** Health-anxious users have motivated reasoning to rationalize away false positives rather than attribute them to device error. They'll tell themselves "maybe it was a real event" rather than report a false alarm. This means your feedback loop is structurally biased toward underreporting. Mitigation: create low-friction in-app feedback ("Was this alert useful?") presented at calm moments, not immediately after an alarming alert when users are stressed.

* **Retention data from early adopters is the wrong population.** The users who persist through early false-positive rates are the most motivated, highest-anxiety segment — not representative of the mainstream 40+ adult who will make up eventual volume. Building the product around observed retention of power users will produce a device that works for a niche but fails at scale. Mitigation: deliberately recruit and instrument a cohort of moderate-engagement users during beta, not just the enthusiasts who signed up first.

---

## Q4: Behavioral side-effects of continuous monitoring — hypervigilance and Shifting-the-Burden dependency

* **The device may be most harmful to the users it most helps.** Have we considered that users with the highest family cardiac history — the target population — are also the most susceptible to health anxiety amplification? Continuous monitoring that surfaces ambiguous signals to an already-anxious user may increase healthcare utilization, cortisol levels, and subjective distress regardless of whether the device's alerts are accurate. Mitigation: conduct a pre-launch study measuring baseline health anxiety in target users and track whether anxiety scores increase after 90 days of wear.

* **"The device would have caught it" is a narrative the product actively creates.** Marketing language around "early detection" and "peace of mind" explicitly cultivates reliance. Once that narrative is established, users who skip cardiology appointments because they trust the device are behaving rationally within the frame the company built. Mitigation: add explicit guidance in onboarding that the device does not replace scheduled clinical care, and consider proactive prompts that remind long-term users to maintain their regular check-ins.

* **Battery depletion events are unmanaged risk moments.** The Shifting-the-Burden failure mode is most dangerous not during normal use but during the specific moment when the device fails — dead battery, lost device, firmware update. If a user has genuinely offloaded cardiac awareness to the wearable, the window of time when the device is unavailable is when they are most vulnerable and least prepared. Mitigation: design "device offline" states to include a brief reminder of manual awareness signals (symptoms to watch for) rather than just a low-battery icon.

* **Beneficial versus harmful monitoring responses cannot be determined without longitudinal data.** The question of whether continuous monitoring reduces or increases anxiety is genuinely contested in the literature on health technology. Assuming the answer without measuring it is a design risk. Mitigation: instrument anxiety and health behavior proxies (sleep quality, self-reported stress, healthcare utilization) in the beta cohort and establish a decision threshold: if anxiety scores increase by X%, revisit the alert cadence design.

---

## Q5: A false-positive governance practice rooted in user trust

* **A review cadence without teeth is a ceremony.** Have we considered that most "governance practices" in startups become ritual checkboxes once product velocity is the dominant pressure? A monthly false-positive review that has no authority to delay a release or roll back a threshold change is decorative. Mitigation: give the false-positive governance forum explicit veto power over alert threshold changes, and document that authority in the engineering decision-making charter.

* **The cross-functional forum will be dominated by whoever has the most recent near-miss story.** Anecdote-driven threshold decisions — a single reported ER trip versus a single missed arrhythmia — are not governance, they're reactive lurching. Mitigation: establish quantitative decision criteria before the forum meets: specific FP rate thresholds that trigger mandatory review, specific user harm event counts that trigger mandatory threshold change, and a pre-committed process for adjudicating FP/FN tradeoffs.

* **"User trust" is too abstract to govern against.** A design principle stating "honor users' need for timely, meaningful signals" gives no guidance when a cardiologist advisor and a UX researcher disagree about a specific threshold. Mitigation: operationalize trust as a measurable construct — alert acknowledgment rate, time-to-dismissal, user-reported confidence in device accuracy — and tie governance decisions to movement in those specific metrics.

* **The data already exists and is probably not being looked at.** Teams with real alert threshold data and human consequence data routinely fail to use it in governance because it lives in support tickets, not dashboards. Mitigation: assign one person the standing job of translating support and clinical feedback into threshold-relevant metrics, with a fortnightly brief to product leadership — not as a project, but as a permanent role function.

---

## Q6: The device is wrong about everything, and it knows it

* **Confidence intervals will be weaponized against the company, not by it.** Have we considered that displaying "I'm 40% sure" opens the company to a new liability vector: if the user ignores a 40% confidence alert and has a cardiac event, did the device's own uncertainty statement contribute to their decision? Surfacing uncertainty is ethically correct but legally complex. Mitigation: involve healthcare attorneys in the specific language design for uncertainty disclosures before launch — not after.

* **Users are not equipped to reason under uncertainty, and the interface probably isn't either.** "I'm 40% sure" sounds like a coin flip to most users. Without calibration — "40% confident means 2 in 5 events like this turn out to be real" — the number is noise that either induces panic or induces dismissal depending on the user's baseline anxiety. Mitigation: user-test specific uncertainty framings with the target 40+ demographic before committing to a format. Test for both comprehension and behavioral response.

* **Hiding uncertainty is a product design choice, not an inevitable one.** The claim that "confidence sells" is true but not deterministic. There is an emerging category of health-tech that differentiates specifically on epistemic honesty — devices that say "we don't know yet" earn a different kind of trust than devices that project false certainty. Mitigation: test both framings in market research. The assumption that honesty hurts sales may not hold for a population that has been burned by overclaiming devices before.

---

## Q7: The silent alert — Marcus, 54, at 2 a.m.

* **The narrative arc the team imagines and the one Marcus experiences are probably not the same.** Have we considered that the design team will prototype this flow in daylight, with full attention, on a benchtop — and Marcus will experience it sleep-deprived, disoriented, and frightened? Every cognitive step that feels obvious in a design review will feel overwhelming at 2 a.m. Mitigation: conduct usability testing specifically under simulated fatigue conditions (late-night sessions, participants roused from near-sleep) before finalizing the alert interaction design.

* **"The moment Marcus decides whether to call a doctor" may not be a moment — it may be a spiral.** The design framing assumes a linear arc ending in a rational decision. In practice, a 2 a.m. cardiac alert is likely to trigger a loop: check device, check symptoms, wake partner, re-check device, search symptoms online, panic-read cardiac event descriptions, re-check device. The system design needs to interrupt that loop, not just support the decision. Mitigation: design the alert flow to include a single, prominently placed "calm down and assess" path that walks Marcus through a structured symptom checklist before presenting any action options.

* **The companion app is a second failure point that the on-device design cannot control.** If Marcus reaches for his phone to understand the alert and the companion app is slow, confusing, or offline, the entire designed experience collapses at the moment it matters most. Mitigation: the critical first-response information — what the alert means, what to do right now, what to do if unsure — must live on the device display itself, not require a phone. The app is for context; the device is for crisis.

* **Designing for Marcus's emotional beats risks designing for the journey rather than the outcome.** A beautifully designed emotional arc that ends with Marcus making a calm, informed decision is a success story. But the measure of the system is what happens when Marcus makes the wrong decision — delays calling when he shouldn't have, or calls when he didn't need to. Mitigation: define success metrics for this flow in terms of decision accuracy (did Marcus take appropriate action given ground truth), not just user satisfaction or NPS with the alert experience.

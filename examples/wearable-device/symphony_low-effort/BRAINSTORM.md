---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 5: Final Output"
model-requested: "opus"
model-reported: "claude-opus-4-8"
---

# Brainstorming Session: On-Device ML Health Monitoring Wearable

## Executive Summary

The strongest signal across this session is that "balance" is the wrong starting frame. The request names four axes to optimize at once (accuracy, latency, power, privacy), but the analysis kept returning to a ranked stack instead. Sensitivity-at-specificity is the only constraint that makes the device worth wearing; power, latency, and privacy are derived from it. Before any architecture decision is locked, the team needs a written priority order and one more decision it has been quietly deferring: whether AFib detection or sleep apnea detection is the primary problem. These are structurally opposite inference tasks (real-time windowed classification versus multi-hour aggregation) with opposite latency budgets. Designing for both without naming the trade-off is the most predictable way to ship a device that does neither well.

A second through-line is that several of the hardest decisions are the ones the roadmap treats as "later." The CPU-only battery fallback, the consumer-launch-before-510(k) sequencing, and firmware-only model updates each look like a reasonable deferral from a feasibility angle. From a risk angle, each is a place where deferring quietly forecloses the harder option you meant to keep open. A 3-day-battery fallback is not a fallback; it is a different, non-viable product. Two years of undocumented consumer operation is discoverable evidence and accumulating debt against the eventual submission. The recurring recommendation is to make these decisions explicit and reversible now, while the team is small.

Trust turned out to be a copy-and-calibration problem more than a model problem. Liability exposure from a false positive is set almost entirely by how the alert is worded, not by the device's regulatory label, and a tiered confidence design (silent log, review nudge, real alert) is what keeps users from ignoring everything by day 30. Because the leading retention signal is silent (people stop wearing the device rather than complaining), wear-time and dismissal latency have to be instrumented from firmware day one.

Two structural gaps recur in nearly every cluster despite never being a question's main subject. The companion app is the primary alert surface, which gates the device's core safety value behind a second purchase, digital literacy, and a stored physician contact that the highest-risk users often lack. And the on-device design, while a real privacy-from-cloud guarantee, currently rests on policy intent rather than technical attestation. Both gaps are cheap to close now and expensive to retrofit.

## Session Overview

The request asked how to architect an on-device ML pipeline for a wrist-worn cardiac and sleep-apnea monitor that holds a 7-day battery target, keeps raw biometric data on the device, and leaves a path open from consumer wellness to a future FDA 510(k). At low effort, the session ran two lenses (one feasibility-oriented, one risk-oriented) across eight topic clusters spanning objective-setting, power, sensor fusion, alert trust, privacy, regulatory strategy, model updates, and equity. Each cluster reports where the two lenses converged, where they traded off, and what a different angle would have caught.

## Central Tensions

1. **Deferral that forecloses (clusters 02, 06, 07).** Three clusters share the same shape: a path that one lens treats as an acceptable escape hatch and the other treats as a silent foreclosure of the harder option. The CPU-only battery fallback, the consumer-launch-before-clearance sequence, and quarterly firmware-only updates each look schedulable until you notice that the deferred version may be structurally impossible to reach later. Naming which of these decisions are genuinely reversible at launch is the meta-question under all three.

2. **One north star, one unresolved fork (cluster 01).** Sensitivity-at-specificity should anchor every downstream decision, but the team has not resolved whether real-time AFib or multi-hour sleep apnea is primary, and the two have opposite latency requirements that cannot be optimized at once.

3. **Uncertainty as liability versus design material (cluster 04).** Making the model's uncertainty visible and actionable lowers liability and builds durable trust, yet it cuts against the startup reflex to project confidence to drive adoption, and it requires governance that product velocity tends to hollow out.

4. **A privacy claim versus a privacy property (cluster 05).** The on-device architecture is sound as a privacy-from-cloud guarantee, but neither the raw-data boundary nor the adversary model is formally specified, so the privacy story is currently a policy claim rather than an enforceable technical property.

## Key Themes

**Rank the constraints, then resolve the detection fork.** The objective-setting and power clusters independently reject simultaneous four-axis optimization in favor of a ranked stack led by sensitivity-at-specificity. The power cluster sharpens why: exceeding the power budget is a product-experience problem, but missing an accuracy threshold is a patient-safety problem, so clinical accuracy minimums are hard floors and power the constrained subproblem after.

**Trust is built by copy and reliability, not peak accuracy.** Across the alert-behavior and equity clusters, the trust-determining variables are mundane: alert wording, consistent battery life, and a false-positive rate low enough (below two per user per week) that people do not learn to ignore the device. A tiered confidence display and a motion-artifact context flag on every cardiac alert move liability and retention more than any model improvement. The 2 a.m. flow is the load-bearing design test, and its first-response information has to live on the device, not require a phone.

**Equity is architectural, and it surfaced as a neither-lens gap everywhere.** Seven of the eight clusters flagged the same structural exclusion from an angle their two lenses did not naturally take: routing life-safety alerts through a smartphone companion app, validating PPG primarily on lighter skin tones, and assuming a stored cardiologist contact for escalation all narrow the device's benefit to the better-resourced slice of the target demographic. The recurring fix is to make on-device alerting (haptics or a small OLED) a 1.0 requirement and to run a paid co-design sprint with eight to ten adults who have lived cardiac experience before the next hardware revision.

**Make the privacy and evidence trails real before they are needed.** The privacy, regulatory, and model-update clusters converge on a build-it-as-if-audited discipline. The raw-data boundary needs technical enforcement (crash-dump scrubbing, DMA isolation, a constrained OTA path) rather than a policy sentence. Algorithm version control, a structured alert-event log, and a model registry are cheap now and take 6 to 12 months to reconstruct later. The team is its own future predicate device, so every false positive and threshold change it logs is either a clinical evidence asset or a litigation liability depending only on whether it was designed for.

**Plan for migration and degradation from day one.** Two quieter recurring findings: the personalized on-device model needs a device-to-device migration protocol before gen-1 ships, or the depth that makes it valuable becomes a loyalty trap at upgrade time. And silent sensor drift erodes accuracy while confidence scores stay high, which a nightly recalibration against a 30-day median can catch.

## Conspicuous Absences (session-level)

The most consistent absence is the one the two lenses were structurally unequipped to raise: **the distributional question.** Almost every cluster flagged that its analysis treated demographic PPG accuracy, alert comprehension, and post-alert access as technical problems rather than equity problems. Who among the 40+ target population actually has reliable smartphone access, the health literacy to read a tiered alert, and a cardiologist relationship to make Tier-2 escalation mean anything? The alert architecture assumes a stored provider contact that a large fraction of the highest-risk users do not have.

A second recurring absence is **the phenomenology of long-term monitoring.** Several clusters named the "alone with their wrist" moment but stopped at its structure. Nobody examined what months of living with the device does: the normalization of background anxiety, the way a device that has never fired becomes both reassuring and quietly distrusted, and how one early false positive can permanently lower a user's threshold for taking alerts seriously. These are the primary psychological dynamics of the product, not UX edge cases.

Two decisions sit unresolved by design rather than by oversight, and the next steps below either invite them or name them out of scope. The AFib-versus-apnea primacy call is deferred to a documented architecture review (invited). Income-gated access (whether any pricing tier ethically excludes the highest-risk users) is explicitly left to Series B outcome data rather than resolved now (named out of scope).

## Topic Summaries

### 1. Defining Success and the Real Objective

"Balance" across the four axes is a political fiction, not an engineering priority stack; the device is worth wearing only if sensitivity-at-specificity ranks first and the rest derive from it. The unresolved fork underneath is whether real-time AFib or multi-hour sleep apnea is the primary problem, since they demand opposite latency budgets. Both lenses also agree the anomaly definition should be a version-controlled artifact separate from model weights, and that the symbiotic-intelligence vision is self-defeating without a device-to-device migration protocol built in early. The undesigned piece is the bridge from alert to clinical action, which today can be a 6-to-8-week gap with no protocol, liability framework, or reimbursement path for the receiving physician.
- See: [synthesis/01_defining-success-and-the-real-objective_summary.md](synthesis/01_defining-success-and-the-real-objective_summary.md)

### 2. Power Budget and Hardware-Software Co-Design

The 7-day battery promise and the NPU's centrality to it are joint load-bearing assumptions not yet tested against real silicon or real usage. The sharpest disagreement is the CPU-only fallback: a feasibility view treats roughly 3-day battery at reduced accuracy as a defined escape hatch, while a risk view argues that is not a fallback but an admission the intended product does not exist in viable form, so the commercial viability floor must be named before chip selection. Correlated demand spikes (an anomaly triggering elevated sensing, NPU inference, and a BLE alert at once) are the intended detection event, not a corner case, and can break steady-state budget math by 2-3x. Both lenses agree 12 engineers cannot sustain a consumer device, an FDA validation suite, HIPAA infrastructure, and ML iteration on one runway without explicit sequencing.
- See: [synthesis/02_power-budget-and-hardware-software-co-design_summary.md](synthesis/02_power-budget-and-hardware-software-co-design_summary.md)

### 3. Sensor Fusion and Signal Integrity

Late fusion is the right v1 starting point, with arrhythmia and apnea split into separate detection paths sharing hardware rather than one four-sensor classifier. The cluster's most unresolved divergence is alert suppression: a feasibility view suppresses low-confidence alerts behind a plain "check device fit" prompt to spare users anxiety, while a risk view warns that suppressing a cardiac alert that precedes an adverse event is a far harder legal position than a device that simply did not fire, so the suppression logic needs legal review before it ships. Both lenses independently flag silent PPG drift as a patient-safety failure mode standard validation misses, and both treat demographic validation across Fitzpatrick I-VI as a pre-launch requirement rather than future research.
- See: [synthesis/03_sensor-fusion-and-signal-integrity_summary.md](synthesis/03_sensor-fusion-and-signal-integrity_summary.md)

### 4. False Positives, Trust, and Alert Behavior

Liability exposure from a false positive is set by alert copy, not device labeling, which makes the alert wording a pre-beta legal-review item rather than a UX detail. A tiered confidence architecture is non-negotiable, since users who get more than two or three non-emergency alerts a week ignore all of them by day 30. The deepest split is governance: a risk view holds that a review forum without veto authority and pre-committed thresholds is ceremony that product velocity will hollow out, while a feasibility view argues a bi-weekly 30-minute review with a "trust SLA" is cheap and sufficient. Silent disengagement (wear-time drop, fast dismissals) is the leading retention indicator and is invisible to standard DAU metrics, so it must be instrumented from day one.
- See: [synthesis/04_false-positives-trust-and-alert-behavior_summary.md](synthesis/04_false-positives-trust-and-alert-behavior_summary.md)

### 5. Privacy Architecture and Data Pipeline

The raw-data boundary is currently a policy claim, not a technical guarantee: crash dumps, diagnostic telemetry, companion-app SDK crash reporters, and the OTA model-update path are all potential exfiltration channels outside the stated promise. "Aggregated summaries" is doing undefined work and needs a concrete schema (field names, timestamp resolution, retention windows) before re-identification risk can even be evaluated; rounding alert timestamps to 15-minute granularity is a one-line change that cuts correlation-attack surface at near-zero clinical cost. The lenses diverge on adversary scope, with the risk view insisting domestic partners, the manufacturer's own telemetry pipeline, and insurers are more probable than cloud hackers. A consumer-wellness label gives no protection against a civil subpoena, and a single specific alert is clinically identifiable regardless of privacy policy.
- See: [synthesis/05_privacy-architecture-and-data-pipeline_summary.md](synthesis/05_privacy-architecture-and-data-pipeline_summary.md)

### 6. Regulatory Pathway from Consumer Wellness to Clinical

The core question is whether the consumer launch is a structured foundation for the eventual 510(k) or a fast product that quietly forecloses it. Algorithm version control is the single highest-stakes decision because it is the hardest to retrofit (two engineer-weeks now versus 6 to 12 months of forensic reconstruction later), and a single tiered data pipeline is the only architecture a 12-person team can sustain. HIPAA attaches at the first business-associate relationship rather than at clinical launch, and state health-data laws in California, Washington, and New York activate below the HIPAA threshold at consumer launch. The team is its own predicate device, so every logged false positive and threshold change is discoverable; whether that trail is an asset or a liability depends entirely on whether the alert-event schema was designed before the first production log line.
- See: [synthesis/06_regulatory-pathway-from-consumer-wellness-to-clinical_summary.md](synthesis/06_regulatory-pathway-from-consumer-wellness-to-clinical_summary.md)

### 7. Model Updates, Drift, and Continuous Learning

Without raw data leaving the device, no update cycle (firmware-bundled or federated) has the feedback loop that makes it verifiably improving, so alert frequency is not a stand-in for accuracy. Quarterly OTA updates are realistic for an 18-month runway and a 3-person ML team, but a risk view insists on-device adaptation must be constrained to threshold and prior recalibration, never weight fine-tuning, because unlabeled on-device training can silently overfit to artifacts; only server-validated firmware should touch weights, and that constraint must be architectural rather than remembered under schedule pressure. A distinct day-one risk is shipping a model pre-adapted to clinical ECG cohorts rather than wellness consumers, which no update cadence fixes; recruiting 200 to 400 target users for pre-launch prototype data is the upstream mitigation.
- See: [synthesis/07_model-updates-drift-and-continuous-learning_summary.md](synthesis/07_model-updates-drift-and-continuous-learning_summary.md)

### 8. Equity, Access, and the People Being Served

The device's most consequential equity problem is architectural: routing processed alerts through the companion app gates the core safety value behind a second device, digital literacy, and connectivity, so for a fixed-income 40+ adult with a basic phone the device detects arrhythmias they cannot act on. The feasibility path decouples alerts from the smartphone (haptics, a small OLED, a Progressive Web App fallback) and treats this as a 1.0 requirement; the risk view adds that solving the pathway without solving income access still leaves the highest-risk users paying for detection without response. Both lenses converge most strongly on user participation: a $5,000-$8,000 co-design sprint with eight to ten adults who have lived cardiac experience is the single most leveraged action the cluster surfaces, because alert thresholds and notification language are clinical decisions engineers are not positioned to make alone.
- See: [synthesis/08_equity-access-and-the-people-being-served_summary.md](synthesis/08_equity-access-and-the-people-being-served_summary.md)

## Recommended Next Steps

1. Convene a one-day architecture review to rank the four constraints (sensitivity-at-specificity, then power, latency, privacy) and document in writing whether AFib or sleep apnea is the primary detection problem. Every downstream choice depends on this, and it is currently an implicit assumption.
2. Run a synthetic "storm day" power audit (15 anomaly events, 6 BLE syncs, 8-hour sleep sensing) on three prototype units before any further ML architecture decisions. If draw differs from datasheet by more than 20%, respecify hardware now.
3. Document the CPU-only fallback explicitly (model, inference frequency, accuracy floor, projected battery, price-point viability) and decide whether roughly 3-day battery is an acceptable product. Name the commercial viability floor before chip selection.
4. Implement an on-device model registry and a structured alert-event log (model version, signal-quality score, confidence, alert type, outcome) before the first firmware ships. Roughly two engineer-weeks now versus 6 to 12 months of reconstruction later.
5. Get a legal review of all alert copy before beta, including the "notification" versus "recommendation" distinction and any uncertainty-disclosure language. Budget about $10k. The wording, not the label, determines false-positive liability.
6. Build the tiered alert architecture (silent log, review nudge, real alert) with first-response information on the device itself, add a motion-artifact context flag to every cardiac alert, and test the 2 a.m. flow under simulated fatigue.
7. Instrument wear-time and alert-dismissal latency from firmware day one. Silent disengagement is the leading retention signal and is invisible to DAU metrics.
8. Add standalone on-device alerting (haptic pattern library and/or small OLED) as a 1.0 firmware requirement so detection does not depend on a smartphone, plus a Progressive Web App fallback for alert review.
9. Run a paid co-design sprint ($5,000-$8,000) with eight to ten adults from the target demographic, recruited specifically for lived cardiac experience, before the next hardware revision. Log what changed.
10. Run PPG recall validation across Fitzpatrick I-VI skin tones, with tattoos and varying subcutaneous fat represented, on the first prototype cycle. Recall drop greater than 10 points triggers dual-wavelength PPG or threshold adjustment. Do not defer this.
11. Enforce the raw-data boundary technically: make sensor ring buffers write-only from the application processor, build a crash-dump scrubber, audit every companion-app SDK for what it captures on exception, and constrain the OTA path to signed binaries.
12. Draft the sync-payload schema with concrete field names, types, and retention windows; round alert timestamps to 15-minute resolution by default; and retain a health-data attorney for a written opinion on PHI status and civil-subpoena exposure.
13. Submit a free FDA pre-submission meeting request to the Digital Health Center of Excellence, targeting months 9 to 12 with real-world data. It determines whether consumer claims cross into SaMD territory and whether launch data counts as clinical evidence.
14. Recruit 200 to 400 target users (40+, cardiac-risk history) to wear prototypes under a research-consent protocol before launch, and build two model slots with a 72-hour watchdog and automatic rollback into the firmware from day one.
15. Build the post-alert resource layer (a "find a cardiologist near me" link from stored ZIP, one-tap log export, a community-health-center locator) and instrument alert-to-action conversion. Below 40% of alerted users taking a documented next step within 72 hours means the post-alert experience is broken.

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

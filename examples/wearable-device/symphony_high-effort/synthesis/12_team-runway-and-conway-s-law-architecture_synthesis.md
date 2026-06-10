---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "12_team-runway-and-conway-s-law-architecture"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Team, Runway, and Conway's-Law Architecture

---

## Synthesized Insights by Question

### Question 1: Resource allocation, scope-vs-runway, ML-team-scale, and the seams between teams (Conway's Law)

**Full question**: Breaking the 12-engineer team (4 firmware, 3 ML, 3 hardware, 2 mobile) against parallel workstreams (NPU integration, sensor fusion model development, HIPAA-compliant sync, regulatory documentation), what are the critical-path dependencies, where are the highest-risk handoffs between firmware and ML, and what is the probability of a production-ready system within 18 months without additional hires — given that team boundaries tend to become system boundaries (Conway's Law in practice), where are handoffs most likely to create gaps in the on-device ML pipeline, how would you know if a system-level failure is actually a coordination failure in disguise, which workstreams can be descoped without invalidating the core value proposition, and is there a real risk that with three ML engineers responsible for two clinical conditions across four sensor modalities neither problem is solved with sufficient rigor — i.e., would a single well-validated use case (one condition, one sensor) produce a more defensible product than two partially validated use cases with a complex fusion architecture?

* **Validate one condition deeply rather than two conditions partially—this is the cluster's strongest consensus.** All seven perspectives independently land on the same answer: three ML engineers split across arrhythmia and sleep apnea, four sensor modalities, and a fusion architecture will produce two unconvincing models rather than one defensible one. Choose arrhythmia (higher clinical stakes, clearer FDA precedent, insurer interest) and obsess over signal fidelity. The scope limitation reframes as the moat. "Depth over breadth" is a stronger Series B narrative than "we attempted both." Defer sleep apnea to a deliberate post-Series-A roadmap item, documented as strategy, not retreat.

* **The firmware-to-ML inference contract is the highest-risk seam; lock it with a co-owned interface before parallel work accelerates.** The dominant Conway's-Law failure mode lives at the boundary where firmware sets the NPU schedule, power budget, and sensor streaming format. ML ships a model that must fit those constraints. If firmware freezes a protocol at month 3 and ML discovers it needs different sampling rates at month 6, the rework lands exactly when Series B prep begins. The shared mitigation: embed one firmware engineer and one ML engineer as permanent co-owners of the inference interface. Pay a local velocity tax (10%) to avoid a system-wide delay tax.

* **A system-level failure is often a coordination failure in disguise; make team boundaries visible early to diagnose it.** When sync latency, inference lag, or accuracy regressions appear, the instinct is to debug them as technical problems. The reframe: ask which team boundary produced the failure. The usual culprit is a missing interface definition or conflicting assumptions about data format. Fixing that one assumption can resolve several apparently separate issues. Track coordination health (escalation frequency, handoff velocity) as a leading indicator, not just model metrics.

* **Align team structure to system architecture deliberately now, since Conway's Law guarantees one will become the other.** Rather than letting the four-firmware / three-ML / three-hardware / two-mobile split implicitly define the system layers, pre-shape the org around the intended architecture. Form cross-functional pods that each own a clear interface boundary (Sensor+Firmware, ML Model Validation with a clinical advisor, Privacy+Sync). Dissolve the "three ML engineers, no single owner" ambiguity. Rotate the seam-owner role periodically to keep handoffs from calcifying.

* **Conway's Law is bidirectional: team imbalance reveals where the system's true bottleneck lives, not just where it will fragment.** The team composition is diagnostic. Three hardware engineers and the physics of wearables imply the device is power-constrained at the sensor layer. Sensors draw the majority of battery, not compute. The implication redirects ML effort: optimize for sensor selection and temporal scheduling rather than model size. The bottleneck is which engineering domain sits on the critical path, not raw engineering hours.

* **Local subsystem wins create false progress that quietly eats runway; test the integrated system in the field monthly, not on lab data.** ML can hit 94% on historical data and hardware can hit 8-day battery in simulation. The end-to-end system fails on real-world sensor drift or unaccounted radio idle power. The danger is discovering this at week 14 with no slack. Monthly integrated field tests surface the gap early, when the failure is cheap.

* **Probability of an 18-month production-ready system without new hires is moderate, contingent on freezing scope early.** Quantified estimates land at 60–70%, conditioned on ruthless, early descoping to a single condition and disciplined handoff management. One dissent on the no-hires premise: the hardware-NPU co-design is the true critical path because silicon cannot be iterated quickly. A senior NPU architect hired at month 1 (or a planned Series A extension) is named insurance against missing Series B.

* **The regulatory documentation workstream is real, unstaffed, and a present-day architectural constraint, not a later problem.** HIPAA compliance and 510(k) pre-submission narratives have no owner yet. The choice between consumer-only and a 510(k) path constrains today's sprints (design controls, failure-mode analysis, software architecture). Either staff a part-time regulatory mapper now or explicitly accept a consumer-only scope.

---

### Question 2: The team you already have (focused-sprint leverage)

**Full question**: Your 12-person team spans firmware, ML, hardware, and mobile — which cross-functional pairing, if given a focused two-week sprint together right now, would most likely unlock the highest-leverage architectural insight for the battery-versus-accuracy tradeoff, and what would that sprint look like?

* **The firmware + ML power-profiling sprint is the unanimous highest-leverage pairing; the deliverable is a measured power-versus-accuracy curve, not code.** Every perspective nominates the same pairing for the battery-versus-accuracy question: one firmware engineer and one ML engineer, two weeks, running a real model on the actual NPU and measuring inference power, latency, and thermal behavior directly. The output is a calibrated Pareto curve (for every 10mA saved, what accuracy do we lose?). It becomes the shared constraint every downstream decision references. This replaces guessing with data and dissolves the firmware-optimizes-latency / ML-optimizes-accuracy stalemate.

* **Keep the sprint deliberately narrow and instrument-first; its success is a decision and an updated constraint, not shipped production code.** Pick one specific question. Give the pair authority to decide and document assumptions. Resist the urge to "unblock the whole pipeline." A useful variant compresses it to days rather than two weeks (one afternoon of setup, five days measuring, two days writing up). Staff it with the engineer most frustrated by the bottleneck rather than architects or managers, because they cut fastest to the real constraint, which is usually "we never measured it."

* **Run a hardware + ML sensor-scheduling sprint to find power savings in inference sequencing, not just model size.** A second sprint maps which sensors can sleep when and in what order inference should fire. Power-gating SpO2 when the accelerometer detects no motion, or detecting arrhythmia first and only then requesting SpO2 confirmation, can change the thermal and power profile substantially (on the order of 20%) without new hardware.

* **Run a firmware/mobile + ML sprint on the HIPAA-compliant sync protocol and the alert-routing handoff; the sync protocol is the regulatory moat.** A distinct seam: how a detected anomaly travels from device to app, and how raw biometric data stays local while alerts sync. Pairing to design encryption, authentication, batched sync, and timestamp sanitization prevents downstream schema mismatches and determines whether clinical partnerships are even possible. Build it cleanly and FDA reviewers see privacy-by-design. Build it sloppy and clinical claims are years away.

* **Make a false-positive feedback loop part of the architecture from day one, turning small test cohorts into a data flywheel.** User dismissals of alerts are retraining signal. Designing the app so false-positive feedback reaches the device (via periodic firmware updates) converts the constraint of limited test data into continuous learning and bridges lab validation to real-world performance.

* **Produce a shared, testable "integration readiness checklist" so cross-team exit criteria are explicit.** A pairing alone is not enough. A one-page artifact defining when each team is "done" in testable terms (Firmware is done when X, ML when Y, hardware when Z, mobile when A) becomes the feedback mechanism that tightens loops and reduces coordination overhead because everyone shares one definition of done. A short embedded clinical or regulatory review can produce the matching validation plan (data set, sensitivity/specificity target, FDA edge-case handling).

---

### Question 3: Eighteen months as a scoping gift

**Full question**: With 18 months of runway and 12 engineers, the team cannot build everything — so which two or three ML inference capabilities, if done exceptionally well, would validate the on-device approach so compellingly that the constraint of limited resources actually accelerates the path to Series B over a broader but shallower feature set?

* **Make arrhythmia detection exceptional and clinically defensible—this is the unanimous core capability.** All seven perspectives center the runway on one capability: arrhythmia detection done to clinical-grade rigor (measured sensitivity/specificity, false-positive budgeting, validation on real diverse users) with a visible FDA 510(k) pathway. This is the highest-stakes problem, the one with clearest clinical precedent and insurer interest, and the most fundable Series B story. "We detected arrhythmias at 94–95% sensitivity with a low false-positive rate, validated on hundreds of real users, and the battery held" beats any two-condition claim with research caveats.

* **Position the real moat as the on-device ML platform and infrastructure, so the second condition becomes an extension rather than a rebuild.** The durable asset is not the arrhythmia feature but the pipeline beneath it (model serving, power profiling, battery prediction, OTA model updates, privacy architecture, regulatory framework). Build that once for one condition, and sleep apnea later reuses the majority of it. The runway pressure is what forces the team to build a platform instead of a product. The platform story (we nailed on-device ML for cardiac, here's how respiratory plugs in) is what investors fund.

* **Treat sleep apnea as a deliberate, documented post-Series-A roadmap item—sequenced, not abandoned, and never half-shipped now.** Do not ship the second condition half-built alongside arrhythmia. Sequence it as a Series B phase-two item, optionally kept architecturally open (modular firmware, accelerometer reserved) without consuming ML or regulatory effort today. Document the choice as strategy so investors read discipline, not failure.

* **Spend reserved runway on battery longevity and an FDA-ready regulatory foundation, both of which double as competitive differentiators.** Direct slack capacity toward extending battery from 7 to 10–12 days (a user-visible differentiator that a single-condition, fewer-sensor design makes achievable) and toward a draft 510(k) prepared in parallel rather than after the fact. Suggested allocations cluster around 60% core model, 20–25% regulatory/clinical, and 15% infrastructure and power.

* **Stage the runway concretely so the single condition reaches field validation early, not at the eleventh hour.** Front-load validation: roughly three to four months to a baseline model, several months of integration and power optimization, then real-user pilot validation by month 12 rather than month 17. Narrowing scope makes early field studies, earlier specialist advisors, and earlier clinical partnerships possible.

* **Consider the most aggressive descope of all—single sensor, no fusion—as the cleanest path to a defensible claim.** Push past "one condition" to "one condition, one sensor": arrhythmia from PPG alone, dropping multi-sensor fusion entirely from version 1.0. This trades the differentiation of fusion for maximum simplicity and the cleanest possible validation story, treating every additional modality as validation debt.

* **Use the constraint to "show taste"—sketch extensibility you will not ship, so investors see depth and scalability together.** Spend the final months demonstrating (not shipping) extensibility: an apnea sketch, a seizure-screening prototype, a sleep-quality classifier. Series B investors see a team that builds one thing brilliantly and extends it cleanly. The narrowness becomes evidence of judgment rather than a gap in the roadmap.

* **Build self-calibrating, uncertainty-aware inference as a meta-capability regulators reward.** Rather than a second clinical condition, invest two to three months in on-device self-calibration that detects sensor drift (from heat, sweat, skin variability) and flags when the model is uncertain or needs recalibration. A detector honest about its own limits is evidence of system maturity that FDA reviewers value.

---

**Questions addressed**: 3
**Synthesized insights**: 21

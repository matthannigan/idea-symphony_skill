---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "12_team-runway-and-conway-s-law-architecture"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: Team, Runway, and Conway's-Law Architecture - With Attribution

---

## Synthesized Insights by Question

### Question 1: Resource allocation, scope-vs-runway, ML-team-scale, and the seams between teams (Conway's Law)

**Full question**: Breaking the 12-engineer team (4 firmware, 3 ML, 3 hardware, 2 mobile) against parallel workstreams (NPU integration, sensor fusion model development, HIPAA-compliant sync, regulatory documentation), what are the critical-path dependencies, where are the highest-risk handoffs between firmware and ML, and what is the probability of a production-ready system within 18 months without additional hires — given that team boundaries tend to become system boundaries (Conway's Law in practice), where are handoffs most likely to create gaps in the on-device ML pipeline, how would you know if a system-level failure is actually a coordination failure in disguise, which workstreams can be descoped without invalidating the core value proposition, and is there a real risk that with three ML engineers responsible for two clinical conditions across four sensor modalities neither problem is solved with sufficient rigor — i.e., would a single well-validated use case (one condition, one sensor) produce a more defensible product than two partially validated use cases with a complex fusion architecture?

* **Validate one condition deeply rather than two conditions partially — this is the cluster's strongest consensus.** All seven perspectives independently land on the same answer: three ML engineers split across arrhythmia and sleep apnea, four sensor modalities, and a fusion architecture will produce two unconvincing models rather than one defensible one. Choose arrhythmia (higher clinical stakes, clearer FDA precedent, insurer interest) and obsess over signal fidelity. The scope limitation reframes as the moat: "depth over breadth" is a stronger Series B narrative than "we attempted both." Defer sleep apnea to a deliberate post-Series-A roadmap item, documented as strategy, not retreat.
  * **One condition becomes the proof point; the second becomes phase two.** Splitting the cohort loses statistical power, as in pharmaceutical trials. A single condition with rigorous fusion validation generates more defensible clinical evidence than two partial solutions. *—The Connector*
  * **Narrowing eliminates the fusion-complexity tax and creates one testing protocol and a credible FDA story.** Lock to arrhythmia with PPG + accelerometer; the limitation becomes competitive advantage. *—The Constraint Flipper*
  * **Two conditions overcommit three ML engineers with competing validation schedules; neither becomes defensible.** Declare one primary clinical target for the first nine months, validate rigorously, add the second only if data allows. *—The Devil's Advocate*
  * **One validated use case compounds faster than two half-validated ones.** Commit to arrhythmia only; three ML engineers can build ablation studies and clinical-grade false-positive budgeting in ~10 months. *—The Momentum Builder*
  * **A partially validated dual-condition system is a liability; a well-validated arrhythmia alert is fundable.** Pick arrhythmia for higher liability and clearer FDA pathway; defer apnea. *—The Pragmatist*
  * **Ditch fusion; or at minimum run two independent single-sensor models.** Single-threaded validation beats multi-threaded half-measures; cuts ML-firmware handoff points by half. *—The Simplifier*
  * **Two conditions across four sensors is a multiplication of complexity; one condition deeply validated de-risks the Series B case.** Three engineers owning one condition is a tighter feedback loop than three owning two. *—The Systems Thinker*

* **The firmware-to-ML inference contract is the highest-risk seam; lock it with a co-owned interface before parallel work accelerates.** The dominant Conway's-Law failure mode lives at the boundary where firmware sets the NPU schedule, power budget, and sensor streaming format, and ML ships a model that must fit those constraints. If firmware freezes a protocol at month 3 and ML discovers it needs different sampling rates at month 6, the rework lands exactly when Series B prep begins. The shared mitigation: embed one firmware engineer and one ML engineer as permanent co-owners of the inference interface, paying a local velocity tax (~10%) to avoid a system-wide delay tax.
  * **The firmware-ML handoff is a membrane, not a seam; assign permanent co-architects of the inference interface who sit together during decisions.** Prevents firmware optimizing throughput and ML optimizing accuracy at the expense of system battery efficiency. *—The Connector*
  * **Define a tight contract (latency budget, inference I/O format, update protocol) and let each side optimize independently; the handoff risk vanishes when both own the spec from week one.** *—The Constraint Flipper*
  * **If firmware assumes a 50ms model and ML ships 120ms, you lose days to rework discovered at integration when there's no slack.** Run a two-week integration spike now to fix NPU memory/compute budget against a reference model. *—The Devil's Advocate*
  * **Firmware knows power budget by month 2, ML has a working model by month 4; make firmware explicitly commit to 100ms not 200ms and three separate issues cascade-resolve.** *—The Momentum Builder*
  * **Four firmware engineers must freeze the streaming protocol and power budget by month 3; co-locate one ML engineer in firmware planning now.** Cost: 10% ML velocity. Benefit: no month-6 rewrite. *—The Pragmatist*
  * **ML-model-to-firmware deployment is the highest-risk handoff: firmware waits on frozen weights, ML iterates blind to hardware power feedback.** Pair one firmware and one ML person for a full sprint on quantization and inference integration. *—The Simplifier*
  * **Handoff entropy is the binding constraint; create a "seam owner" pair whose only job is keeping interfaces locked for three weeks before integration.** *—The Systems Thinker*

* **A system-level failure is often a coordination failure in disguise; make team boundaries visible early to diagnose it.** When sync latency, inference lag, or accuracy regressions appear, the instinct is to debug them as technical problems. Several perspectives reframe this: ask which team boundary produced the failure. The usual culprit is a missing interface definition or conflicting assumptions about data format, and fixing that one assumption can resolve several apparently separate issues. Track coordination health (escalation frequency, handoff velocity) as a leading indicator, not just model metrics.
  * **Run a handoff simulation: have firmware explain NPU assumptions to ML and reverse; where explanations break down is your actual risk, surfaced before production.** *—The Connector*
  * **The real leading indicator of failure is communication breakdown; track handoff velocity and escalation count, not just model performance.** Weekly design escalations between firmware and ML signal trouble even at mediocre accuracy. *—The Constraint Flipper*
  * **Conway's Law isn't fate, it's feedback; ask which boundary produced the failure rather than blaming "bad coordination."** *—The Momentum Builder*
  * **Treat system architecture as a separate activity owned by a technical lead assigned to no single layer, whose only first-quarter job is defining data flow, failure modes, and ownership.** *—The Devil's Advocate*

* **Align team structure to system architecture deliberately now, since Conway's Law guarantees one will become the other.** Rather than letting the four-firmware / three-ML / three-hardware / two-mobile split implicitly define the system layers, several perspectives recommend pre-shaping the org around the intended architecture. The concrete proposal is to form cross-functional pods that each own a clear interface boundary, dissolving the "three ML engineers, no single owner" ambiguity.
  * **Form three pods: Sensor+Firmware, ML Model Validation (with clinical advisor), and Privacy+Sync; each owns a clear boundary.** *—The Pragmatist*
  * **Assign one ML engineer as "fusion architect" with veto power over sensor-integration decisions; require monthly cross-team integration review.** *—The Devil's Advocate*
  * **Rotate the seam-owner role through pairs monthly so handoffs don't calcify around the same people; fresh eyes catch settled assumptions.** *—The Systems Thinker*

* **Conway's Law is bidirectional: team imbalance reveals where the system's true bottleneck lives, not just where it will fragment.** A distinctive reframe holds that the team composition is diagnostic. Three hardware engineers and the physics of wearables imply the device is power-constrained at the sensor layer (sensors draw the majority of battery, not compute). The implication redirects ML effort: optimize for sensor selection and temporal scheduling rather than model size. The bottleneck is which engineering domain sits on the critical path, not raw engineering hours.
  * **With four firmware you're compute-constrained, with three hardware you're power-constrained; if hardware keeps saying sensors draw 80% of battery, ML should optimize sensor scheduling, not model size.** *—The Connector*

* **Local subsystem wins create false progress that quietly eats runway; test the integrated system in the field monthly, not on lab data.** A systems-level caution: ML can hit 94% on historical data and hardware can hit 8-day battery in simulation while the end-to-end system fails on real-world sensor drift or unaccounted radio idle power. The danger is discovering this at week 14 with no slack. Monthly integrated field tests surface the gap early, when the failure is cheap.
  * **Each subsystem demonstrates local wins without the system working end-to-end; recommend monthly integrated field tests, because the late discovery hurts, not the test failure.** *—The Systems Thinker*

* **Probability of an 18-month production-ready system without new hires is moderate, and contingent on freezing scope early.** The two perspectives that put numbers on it land at 60–70%, both conditioned on ruthless, early descoping to a single condition and disciplined handoff management. One dissents on the no-hires premise: the hardware-NPU co-design is the true critical path because silicon cannot be iterated quickly, and a senior NPU architect hired at month 1 (or a planned Series A extension) is the named insurance against missing Series B.
  * **70% on-time with current structure if handoffs are ruthlessly managed; single condition reaches beta by month 15, launch by 18.** Clarity beats capacity. *—The Momentum Builder*
  * **60% without additional hires only if ruthlessly scoped to arrhythmia + existing sensors; hire one senior NPU architect at month 1 or accept a Series A extension as backup, because silicon can't be iterated fast.** *—The Pragmatist*

* **The regulatory documentation workstream is real, unstaffed, and a present-day architectural constraint, not a later problem.** Two perspectives flag that HIPAA compliance and 510(k) pre-submission narratives have no owner yet, and that the choice between consumer-only and a 510(k) path constrains today's sprints (design controls, failure-mode analysis, software architecture). Either staff a part-time regulatory mapper now or explicitly accept a consumer-only scope.
  * **Either reduce scope to a pure consumer launch or hire a regulatory contractor now, rather than burning an engineer mid-project on HIPAA and 510(k) docs.** *—The Simplifier*
  * **Designate one person (not full-time) to map regulatory requirements against sprint commitments monthly, preventing the month-16 "we built it for consumer but FDA needs X" surprise.** *—The Systems Thinker*

---

### Question 2: The team you already have (focused-sprint leverage)

**Full question**: Your 12-person team spans firmware, ML, hardware, and mobile — which cross-functional pairing, if given a focused two-week sprint together right now, would most likely unlock the highest-leverage architectural insight for the battery-versus-accuracy tradeoff, and what would that sprint look like?

* **The firmware + ML power-profiling sprint is the unanimous highest-leverage pairing; the deliverable is a measured power-versus-accuracy curve, not code.** Every perspective nominates the same pairing for the battery-versus-accuracy question: one firmware engineer and one ML engineer, two weeks, running a real model on the actual NPU and measuring inference power, latency, and thermal behavior directly. The output is a calibrated Pareto curve ("for every 10mA saved, what accuracy do we lose?") that becomes the shared constraint every downstream decision references. This replaces guessing with data and dissolves the firmware-optimizes-latency / ML-optimizes-accuracy stalemate.
  * **A two-week sprint on "given 50mW for inference, what model complexity runs?" yields a calibrated inference-power curve both teams reference.** *—The Connector*
  * **Pair one ML with two firmware engineers on NPU latency profiling; the resulting accuracy-versus-power Pareto curve kills all other debates.** *—The Constraint Flipper*
  * **Firmware specifies power budget, ML specifies candidate models, and together they measure actual end-to-end power on real silicon — run this before broad model commitments.** *—The Devil's Advocate*
  * **Build a live power profiler in days 1–3, test model sizes days 4–7, draft the decision matrix days 8–10; the profiler becomes reusable institutional knowledge.** *—The Momentum Builder*
  * **Pair lead ML + hardware lead to instrument real power across three PPG sampling configs and measure latency on the real NPU; output a decision matrix and firmware API spec.** *—The Pragmatist*
  * **Run a real 50%-accuracy model on the NPU for 8 hours, measure drain per inference and thermal throttling; output a quantitative power budget used as a constraint, not a hope.** *—The Simplifier*
  * **A two-week integration dry run on "what's the max latency the power budget allows, and does the smallest valid model fit?" prevents eight weeks of later rework.** *—The Systems Thinker*

* **Keep the sprint deliberately narrow and instrument-first; its success is a decision and an updated constraint, not shipped production code.** Several perspectives stress scope discipline for the sprint itself: pick one specific question, give the pair authority to decide and document assumptions, and resist the urge to "unblock the whole pipeline." A useful variant compresses it to days rather than two weeks (one afternoon of setup, five days measuring, two days writing up). One contrarian note: pick the engineer most frustrated by the bottleneck, and avoid architects and managers, because they will cut to the real constraint, which is usually "we never measured it."
  * **Scope to one question with explicit success criteria; the sprint succeeds if it produces a decision and a constraint update, separate from engineering deliverables.** *—The Devil's Advocate*
  * **Don't let it become a two-week research project: one afternoon of setup, five days of measurement, two days of writing; the output is a one-page power budget.** *—The Simplifier*
  * **Pick the person most frustrated with bottlenecks on both teams, not architects or managers; they find the real constraint fastest.** *—The Simplifier*

* **Run a hardware + ML sensor-scheduling sprint to find power savings in inference sequencing, not just model size.** Beyond the core firmware-ML pairing, several perspectives surface a second sprint where hardware and ML jointly map which sensors can sleep when, and in what order inference should fire. Power-gating SpO2 when the accelerometer detects no motion, or detecting arrhythmia first and only then requesting SpO2 confirmation, can change the thermal and power profile materially without new hardware.
  * **Pair hardware + ML on multi-sensor scheduling: which sensors can sleep when, gated by motion; output a data-flow and power-gating diagram.** *—The Connector*
  * **Map thermal loads and reorder inference (arrhythmia first, then SpO2 confirmation) to buy ~20% more battery with no new hardware.** *—The Constraint Flipper*

* **Run a firmware/mobile + ML sprint on the HIPAA-compliant sync protocol and the alert-routing handoff; the sync protocol is the regulatory moat.** Several perspectives flag a distinct seam: how a detected anomaly travels from device to app, and how raw biometric data stays local while alerts sync. Pairing firmware/mobile to design encryption, authentication, batched sync, and timestamp sanitization both prevents downstream schema mismatches and determines whether clinical partnerships are even possible. Build it cleanly and FDA reviewers see privacy-by-design; build it sloppy and clinical claims are years away.
  * **The HIPAA surface is the sync handshake; the sync protocol is the regulatory moat that makes clinical partnerships possible or creates liability.** *—The Constraint Flipper*
  * **Pair mobile lead + ML to design the alert protocol (timing, retry, privacy-preserving summary) and surface schema mismatches early.** *—The Devil's Advocate*
  * **Run a firmware-mobile sprint prototyping the encrypted local storage, batched sync, and timestamp sanitization wire format end-to-end.** *—The Pragmatist*

* **Make a false-positive feedback loop part of the architecture from day one, turning small test cohorts into a data flywheel.** A complementary insight: user dismissals of alerts are retraining signal. Designing the app so false-positive feedback reaches the device (via periodic firmware updates) converts the constraint of limited test data into continuous learning, and bridges lab validation to real-world performance.
  * **Design the sync so false-positive feedback reaches the device for on-device calibration; the mobile layer becomes a feedback sensor for ML.** *—The Connector*
  * **Pair ML + mobile on the alert-confirmation flow; user dismissals become privacy-safe retraining signal, forcing continuous learning from day one.** *—The Constraint Flipper*

* **Produce a shared, testable "integration readiness checklist" so cross-team exit criteria are explicit.** A pairing alone is not enough; a complementary recommendation is a one-page artifact defining when each team is "done" in testable terms ("Firmware is done when X, ML when Y, hardware when Z, mobile when A"). The checklist becomes the feedback mechanism that tightens loops and reduces coordination overhead, because everyone shares one definition of done.
  * **Have the sprint produce a one-page integration-readiness checklist with explicit, testable exit criteria per team.** *—The Systems Thinker*
  * **Embed a clinical or regulatory advisor with the ML team for one week to build the arrhythmia validation plan (data set, sensitivity/specificity target, FDA edge-case handling).** *—The Pragmatist*

---

### Question 3: Eighteen months as a scoping gift

**Full question**: With 18 months of runway and 12 engineers, the team cannot build everything — so which two or three ML inference capabilities, if done exceptionally well, would validate the on-device approach so compellingly that the constraint of limited resources actually accelerates the path to Series B over a broader but shallower feature set?

* **Make arrhythmia detection exceptional and clinically defensible — this is the unanimous core capability.** All seven perspectives center the runway on one capability: arrhythmia detection done to clinical-grade rigor (measured sensitivity/specificity, false-positive budgeting, validation on real diverse users), with a visible FDA 510(k) pathway. This is the highest-stakes problem, the one with clearest clinical precedent and insurer interest, and the most fundable Series B story. "We detected arrhythmias at 94–95% sensitivity with a low false-positive rate, validated on hundreds of real users, and the battery held" beats any two-condition claim with research caveats.
  * **Arrhythmia detection using PPG + accelerometer is the core value prop; "works" means validation through deployment, and it scales horizontally to other conditions.** *—The Connector*
  * **Focus exclusively on irregular-rhythm detection; 18 months is enough for 95%+ sensitivity and <5% false positives, worth 10x a beta two-condition wearable.** *—The Constraint Flipper*
  * **One condition with 95% sensitivity, 92% specificity, across diverse demographics with FDA-ready documentation is more defensible than two unvalidated claims.** *—The Devil's Advocate*
  * **Dedicate ~80% of ML effort to cardiac detection on PPG; it's hard but highest-stakes and clinically validated, proving the on-device approach.** *—The Momentum Builder*
  * **Build arrhythmia detection flawlessly with cardiologist endorsement and measured false-positive rate; that is the Series B narrative.** *—The Pragmatist*
  * **One condition, one sensor, one tight model: arrhythmia from PPG alone; competitors will have eight features at 70%, you have one at 95%.** *—The Simplifier*
  * **Run the full validation gauntlet on arrhythmia + PPG; 99%+ sensitivity on 500+ patients is Series B fuel and lets cardiologists treat it as a reference standard.** *—The Systems Thinker*

* **Position the real moat as the on-device ML platform and infrastructure, so the second condition becomes an extension rather than a rebuild.** Several perspectives reframe the scoping question: the durable asset is not the arrhythmia feature but the pipeline beneath it (model serving, power profiling, battery prediction, OTA model updates, privacy architecture, regulatory framework). Build that once for one condition, and sleep apnea later reuses the majority of it. The runway pressure is what forces the team to build a platform instead of a product, and the platform story ("we nailed on-device ML for cardiac, here's how respiratory plugs in") is what investors fund.
  * **The moat is the on-device ML pipeline architecture, not features; perfect one inference pipeline and the second condition is just adding a model.** *—The Connector*
  * **Sleep apnea later reuses ~70% of the infrastructure; it looks like a platform, not a patch, when you frame it as a two-condition platform proven on the hardest problem first.** *—The Momentum Builder*
  * **Build a clinical evidence pipeline as the "third capability": logging and analysis infrastructure that makes the next condition faster to validate.** *—The Pragmatist*

* **Treat sleep apnea as a deliberate, documented post-Series-A roadmap item — sequenced, not abandoned, and never half-shipped now.** A clear consensus on the second condition: do not ship it half-built alongside arrhythmia. Several perspectives sequence it as a Series B phase-two item, optionally kept architecturally open (modular firmware, accelerometer reserved) without consuming ML or regulatory effort today. Document the choice as strategy so investors read discipline, not failure.
  * **Sleep apnea is a second act, not part of launch; arrhythmia in production becomes the foundation for safe apnea validation later.** *—The Simplifier*
  * **Keep architecture open for the second condition (sleep apnea + accelerometer as a "future capability" in firmware) without forcing early validation.** *—The Systems Thinker*
  * **Document apnea as a deliberate post-Series-A roadmap with specific resources and timeline, making the constraint look strategic rather than like failure.** *—The Pragmatist*

* **Spend reserved runway on battery longevity and an FDA-ready regulatory foundation, both of which double as competitive differentiators.** Beyond the model, several perspectives direct slack capacity toward extending battery from 7 to 10–12 days (a user-visible differentiator that a single-condition, fewer-sensor design makes achievable) and toward a draft 510(k) prepared in parallel rather than after the fact. Suggested allocations cluster around roughly 60% core model, 20–25% regulatory/clinical, and 15% infrastructure and power.
  * **Reserve 20% of runway for regulatory documentation and a draft 510(k); have one rotating engineer own it so it isn't a month-19 panic.** *—The Pragmatist*
  * **Use remaining ML/firmware capacity to push battery to 10–12 days, turning a commodity spec into a competitive advantage.** *—The Pragmatist*
  * **Fewer active modalities (PPG + accelerometer only) simplifies the power budget and can extend battery past 10 days as a market claim.** *—The Devil's Advocate*
  * **Allocate 60% core arrhythmia, 25% regulatory/clinical 510(k) foundation, 15% infrastructure; this forces being excellent at one thing and legally clear.** *—The Systems Thinker*

* **Stage the runway concretely so the single condition reaches field validation early, not at the eleventh hour.** Several perspectives offer month-by-month staging that front-loads validation: roughly three to four months to a baseline model, several months of integration and power optimization, then real-user pilot validation by month 12 rather than month 17. Narrowing scope is what makes early field studies, earlier specialist advisors, and earlier clinical partnerships possible.
  * **Three months to the model, six to integration/power, three to pilot validation with real users, three to regulatory and Series B prep.** *—The Simplifier*
  * **Months 1–4 baseline models, 5–10 intensive validation, 11–14 regulatory and manufacturing, 15–18 apnea proof-of-concept as Series B roadmap, not production.** *—The Momentum Builder*
  * **Narrower scope unlocks deeper specialists earlier (cardiologist advisor in month 2), academic validation partners, and field studies by month 12 instead of 17.** *—The Systems Thinker*

* **Consider the most aggressive descope of all — single sensor, no fusion — as the cleanest path to a defensible claim.** A distinctive single-perspective reframe pushes past "one condition" to "one condition, one sensor": arrhythmia from PPG alone, dropping multi-sensor fusion entirely from version 1.0. This trades the differentiation of fusion for maximum simplicity and the cleanest possible validation story, and reflects a subtraction-first stance that treats every additional modality as validation debt.
  * **Pick one condition, one sensor, one tight model: arrhythmia from PPG alone, nothing else; cut multi-sensor fusion, on-device personalization, and the app's visualization layer.** *—The Simplifier*

* **Use the constraint to "show taste" — sketch extensibility you will not ship, so investors see depth and scalability together.** A complementary single-perspective angle: spend the final months demonstrating (not shipping) extensibility — an apnea sketch, a seizure-screening prototype, a sleep-quality classifier — so Series B investors see a team that builds one thing brilliantly and extends it cleanly. The narrowness becomes evidence of judgment rather than a gap in the roadmap.
  * **Show, don't ship, extensibility: prototype apnea and other conditions in months 12–18 so investors see depth plus scalability; narrowness is the gift.** *—The Constraint Flipper*

* **Build self-calibrating, uncertainty-aware inference as a meta-capability regulators reward.** A distinctive single-perspective idea: rather than a second clinical condition, invest two to three months in on-device self-calibration that detects sensor drift (from heat, sweat, skin variability) and flags when the model is uncertain or needs recalibration. A detector that is honest about its own limits is evidence of system maturity that FDA reviewers value.
  * **Build a meta-model for self-calibration and drift detection that flags uncertainty and recalibration windows; regulators love a system honest about its limits.** *—The Constraint Flipper*

---

**Questions addressed**: 3
**Personas contributing**: The Connector, The Constraint Flipper, The Devil's Advocate, The Momentum Builder, The Pragmatist, The Simplifier, The Systems Thinker
**Total synthesized insights**: 21

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "09_team-capacity-runway-validation"
persona: "The Devil's Advocate"
---

# Team Capacity, Runway & Validation - The Devil's Advocate

---

## Twelve Engineers, Five Simultaneous Hard Problems, and V1 Scope

* **Scope creep masking prioritization failures.** The request lists five distinct hard problems (on-device ML optimization, multi-sensor fusion, hardware-software co-design, HIPAA compliance, companion app) without explicit sequencing. Have you ranked these by clinical signal value vs. complexity vs. dependency order? One mitigation: create a decision matrix (rows = workstreams, columns = Series B signal potential, reversibility cost, critical path status), then explicitly defer anything scoring below threshold to v2.

* **V1 scope optimized for Series B narrative, not revenue.** With 18 months and no explicit clinical partnership signed, the team might overindex on HIPAA compliance and FDA-adjacent architecture to tell a "clinical-ready" story, consuming 3-4 months of runway that a direct-to-consumer wellness path wouldn't require. What if clinical partnerships fall through? Mitigation: define minimum viable compliance posture for current market, architect cleanly for upgrade, don't front-load clinical burden into V1.

* **Team optimization locally, system tradeoffs ignored.** Firmware owns power, ML owns accuracy, hardware owns NPU design — but power vs. accuracy tradeoffs and their impact on hardware specifications don't have a single owner. Have you established a weekly cross-subsystem tradeoff sync where power-vs-accuracy decisions are made explicitly, with a single architect accountable for system-level coherence? One mitigation: assign rotating "system architect" role (e.g., lead firmware or ML engineer) with explicit veto power on subsystem decisions that create misalignment.

* **Runway pressure driving technical debt accumulation.** 18 months is tight for five hard problems. By month 6-8, firmware and ML teams will face tempting shortcuts (skip generalization, accept brittle sensor fusion, defer refactoring) under delivery pressure. Without explicit reversibility checkpoints (e.g., "month 12: refactoring sprint"), you lose optionality for Series B. Mitigation: reserve 2 weeks per quarter for deliberate technical debt repayment, treat as untouchable runway, measure reversibility cost of shortcuts at monthly checkpoints.

* **Validation corpus building is invisible until it's critical.** The 3-person ML team will start model development on synthetic or small datasets; clinical validation (real patient Holter/PSG recordings, annotation, benchmarking) can't scale quickly in month 15. Have you already initiated conversations with cardiology clinics or sleep labs to secure real validation data? Mitigation: secure institutional partnerships and data agreements in month 1-2 of runway, not month 10-12, or accept that V1 launches on internal validation only.

---

## Team Structure as a Constraint on System-Level Thinking

* **Subsystem optimization creates invisible failures.** The firmware team optimizes for lowest power; the ML team optimizes for highest accuracy on a fixed compute budget; the hardware team designs NPU performance around firmware assumptions that shift monthly. Cross-subsystem tradeoffs (reducing model complexity to save 15% power, sacrificing 3% accuracy) happen by accident, not by design. Mitigation: institute a monthly "system-level tradeoff review" chaired by the product lead or engineering director, where all subsystem leads present key decisions and their system-level ripple effects. Make tradeoffs explicit and visible.

* **Six months of technical debt creates Series B credibility problems.** Month 6-8 runway crunch will pressure shortcuts: firmware engineers hard-code sensor calibration instead of dynamic tuning; ML team trains on limited datasets; mobile app skips privacy-edge-case testing. If the company reaches Series B pre-clinical (most likely scenario given FDA timelines), investors will ask "why does the codebase smell like temporary fixes?" Mitigation: define "debt threshold" — the maximum technical debt the team can incur before a mandatory 3-week stabilization sprint. Run that sprint in month 7-8, before decision-making calcifies.

* **Coordination overhead scales poorly without explicit mechanisms.** With 4 firmware, 3 ML, 3 hardware, 2 mobile engineers across 5 hard problems, the default coordination structure (ad hoc Slack + weekly standup) will miss integration points. Power budget allocation, sensor fusion interfaces, and privacy-preserving sync protocols touch multiple teams and need synchronous decision-making. Mitigation: establish a weekly 90-minute "integration sync" (engineering leads + product lead) with a rotating decision owner and a written decision log. Make coordination visible.

* **Reversibility loss cascades across subsystems.** If firmware engineers build sensor drivers assuming static power budgets (month 2), and ML team later needs 20% more compute for improved accuracy (month 8), firmware can't cheaply adapt. Hardware team might have committed to specific NPU design based on firmware assumptions. Mitigation: document key architectural assumptions (power budget, inference latency, sensor fusion approach) in month 1, review in month 4 and month 8 with explicit cost-of-change analysis. If costs exceed threshold, escalate to Series A investors early.

* **No owner accountable for system-level coherence creates finger-pointing.** "ML team missed power targets, but they didn't know firmware architecture was inflexible." "Hardware NPU design doesn't match ML team's actual model sizes." These misalignments kill products. Mitigation: assign one engineer (rotating, e.g., quarterly) as "System Architect" — not a new role, but a 15-20% allocation. Their job: own architecture consistency, run cross-subsystem reviews, raise misalignment flags early. Measure success as "zero surprise integration issues at feature gate reviews."

---

## Ground Truth Dataset and the Validation Corpus

* **Clinical validation datasets are supply-constrained, not just effort-constrained.** Arrhythmia validation requires real patient Holter ECG recordings co-registered with your device's PPG data; sleep apnea requires PSG co-registration. These aren't unlimited: you need institutional IRB approval, patient consent, and access to clinical equipment. The 3-person ML team can't collect 1000+ samples in 18 months without dedicated clinic partnerships and sustained institutional relationships. Mitigation: establish formal partnerships with 2-3 academic medical centers in months 1-2, negotiate data-sharing agreements immediately, and budget a dedicated data engineer (half-time) starting month 2 to manage collection and annotation workflows.

* **Annotation quality and consistency undermine model validity.** Ground truth labels matter more than sample count. If clinicians annotate arrhythmia events with different thresholds or criteria, your model trains on noisy labels. The ML team needs domain expertise (a cardiologist consultant, not just an ML engineer with a paper) to establish annotation protocols and validate consistency. Mitigation: hire a part-time clinical consultant (month 1-2) to design annotation protocols, validate inter-rater reliability on pilot samples, and oversee a subset of annotations. Budget 10-15% of ML team time for clinical collaboration.

* **Demographic bias in validation data creates clinical credibility risk.** If your 500-patient validation corpus skews toward 65+ white males (typical in sleep labs), your model's performance on women, younger patients, or diverse ethnic backgrounds is unknown—but regulators and clinical partners will ask. Have you planned stratified sampling across age, gender, ethnicity, and comorbidity profiles? Mitigation: before collecting data, work with your clinic partners to design a stratified sampling plan targeting 20-30% female, representation across BMI/age/comorbidity groups. Build this into your data agreement.

* **Co-recording methodology complexity is underestimated.** Running your device's sensor suite in parallel with hospital Holter/PSG equipment creates synchronization, motion artifact, and signal integrity challenges. PPG on a wearable vs. clinical ECG are different signals; sleep apnea detection requires device breathing mic vs. nasal cannula pressure from PSG. Mitigation: run a 2-week pilot study (month 2) with 10-20 willing volunteers to validate co-recording feasibility, identify signal alignment challenges, and refine your data collection SOP before committing to large-scale collection.

* **Timeline slippage: 18 months is not actually 18 months.** Clinical recruitment, consent, and data collection are slower than expected. If you start institutional partnerships in month 3 and first data arrives in month 5-6, you have 12 months to collect 1000+ annotated samples—realistic only with 2-3 parallel sites and dedicated operational staff. If you defer partnerships to month 6, you have 9 months. Mitigation: treat clinical data collection as a critical path item; start partnerships in month 1-2 (even before hardware is finalized), use kickoff period to design protocols and secure IRB approval, and plan phased recruitment (100 samples by month 6, 500 by month 12, 1000+ by month 18).

---

## The Smallest Experiment with the Biggest Signal

* **Offline accuracy on public datasets doesn't predict real-world performance.** The ML team can train a model on public ECG datasets (MIT-BIH Arrhythmia Database) and report 95% accuracy, but your on-device PPG sensor has different noise characteristics, dynamic range, and artifact patterns. Real-world users have motion artifacts, unstable skin contact, and variable signal quality. Have you tested your on-device pipeline on actual PPG from real humans with concurrent ground truth? Mitigation: design a 90-day experiment (month 1-3) to collect 50-100 hours of real PPG data from healthy volunteers wearing your prototype, compare on-device model predictions to clinical-grade reference device, and measure real-world accuracy vs. offline benchmark. Budget 2 firmware engineers and 1 ML engineer for this sprint.

* **Battery life validation is hardware-dependent, hence gated.** The on-device ML pipeline's power consumption depends on NPU clock speed, inference frequency, and sensor sampling rates—all hardware variables that might not be finalized until month 4-6. Claiming "7-day battery target" before hardware is locked is premature. Mitigation: run a power budget sensitivity analysis (month 1) on available dev boards or reference hardware: simulate inference latency vs. power for different model sizes, sensor duty cycles, and screen refresh rates. Identify which hardware design choices unlock the 7-day target, then make that a hardware gate by month 3.

* **90-day experiment: deploy prototype to 20 early users for real-world anomaly detection.** Rather than accuracy metrics, measure: (1) false positive rate in daily use (how often does the app alert incorrectly?), (2) user acceptance (do people keep wearing it, or do false alerts drive churn?), (3) battery life under real conditions vs. lab assumptions. This combines ML validation, hardware validation, and product-market fit signal. Success looks like sub-5% false positive rate, sub-20% user churn due to alerts, and 6+ day battery life. Who runs this? Assign 1 firmware lead (hardware oversight), 1 ML lead (model instrumentation), 1 mobile app engineer (data collection). Mitigation: start recruiting volunteer cohort in month 1; run deployment study in month 2-3; iterate model in month 3-4 based on real-world signals. By month 4, you have concrete evidence of clinical promise or need for major rearchitecture.

* **Sensor fusion validation is underestimated.** Your multi-sensor anomaly detector (PPG + accelerometer + temperature + breathing mic) is only as good as the weakest signal integration. If accelerometer motion artifacts break PPG-based arrhythmia detection in 30% of real-world samples, the whole system fails clinically. Mitigation: 90-day experiment includes instrumented logging of each sensor's contribution to anomaly decisions. Analyze: which sensor combinations have redundancy? Which are brittle? Use real-world data to identify fusion failure modes, then prototype mitigation (e.g., dynamic feature importance weighting based on motion state) in month 4.

* **Irreversibility risk: if the prototype validates poorly, what changes?** If the 90-day experiment reveals that on-device inference latency is 2x your power budget, or that PPG-only arrhythmia detection misses 15% of true events, your system architecture may need rework. Have you identified which design decisions are reversible (e.g., model retraining) vs. irreversible (e.g., NPU hardware choice, firmware architecture)? Mitigation: at experiment kickoff (month 1), create a "decision reversibility matrix" mapping key architecture choices to their switch cost. Flag high-cost, low-confidence choices (e.g., specific NPU vendor) for early validation or contingency planning.

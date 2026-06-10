---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "09_team-capacity-runway-validation"
persona: "The Constraint Flipper"
---

# Topic Cluster 09: Team Capacity, Runway & Validation - The Constraint Flipper

---

## Twelve Engineers, Five Simultaneous Hard Problems, and the V1 Scope

* **Constraint as forcing function: 18 months isn't a limitation, it's a product strategy anchor.** The 12-engineer, five-problem ceiling is actually your strongest asset. Instead of asking "what can we build in 18 months," flip to "what single insight, if proven in 18 months, makes Series B inevitable?" That constraint forces ruthless scope discipline. The team will naturally defer the ambitious vision (federated learning, full HIPAA certification pathway, multiple NPU architectures) and hyper-focus on one validated clinical signal—arrhythmia detection with <2% false positive rate at <5W power. That focus is what investors buy, not breadth.

* **Runway scarcity drives meaningful MVP definition.** With 18 months, you can't afford speculative work. Use it as permission to ship V1 with intentional gaps: maybe the companion app syncs coarse summaries only, no detailed event timelines. Maybe you validate on a 500-person cohort, not 5,000. Those aren't failures; they're proof that each engineering hour translates to concrete clinical or commercial signal. Series B investors will actually find a tight MVP more credible than an over-scoped slow burn.

* **Five simultaneous problems collapse into two phases.** The constraint reveals sequencing: Months 1–6 are firmware + ML + hardware co-design in lockstep—absolutely parallel. Months 7–12 are validation: you need real data, real users, real feedback on accuracy and power. HIPAA architecture and companion app are table-stakes but can use templates and off-the-shelf patterns; they're not your hard problems. By month 12, you've deferred the complex stuff (multi-modal fusion, NPU optimization for variant hardware) to V2, and you have user evidence that validates the entire architecture.

* **Explicitly name what dies, and own it early.** Ask the team now: does federated learning die? Does multi-sensor fusion? Does real-time onboard retraining? Pick two, lock them down, and tell Series A investors "we chose to bet on X because it's the bottleneck to clinical adoption; Y and Z ship in V2 based on what real users teach us." That honesty is worth more than overcommitting and delivering half-baked features.

---

## Team Structure as a Constraint on System-Level Thinking, with Runway as a Forcing Function

* **Siloed teams create natural tension—use it.** Four firmware, three ML, three hardware, two app engineers map exactly to system-level tradeoffs: power budget, inference latency, sensor fusion, data privacy. Instead of wishing for a unified team, institute a **weekly cross-team tradeoff council** where firmware brings "we have 3W for inference," ML brings "this model needs 50ms," hardware brings "NPU is still pulling 2.8W," and you explicitly negotiate. The constraint forces the conversation that larger teams avoid.

* **Runway pressure accelerates technical debt visibility.** If the team takes shortcuts in months 1–3 (rough PPG filtering, simple linear anomaly detection, no versioning on model updates), you'll know by month 6 when validation data arrives and shows 8% false positive rate. The constraint means you can't kick the problem down the road for 18 months; you see the reversibility loss immediately. That's a feature, not a bug. Use it to avoid long-term architectural mistakes.

* **Hardware-software co-design is your reversibility bottleneck.** If firmware and hardware make incompatible assumptions (firmware expects persistent NPU access; hardware design locks in vendor-specific APIs), you lose the ability to swap models or retrain strategies. That's the real Series B story killer. Make cross-team sync on hardware interfaces (register maps, interrupt flows, memory layout) a gate before month 3. The team size actually makes that easier—13 people in a room can align on interfaces fast.

* **Coordination without bloat: async decision logs, not meetings.** Instead of weekly cross-team standups (which don't scale), have each sub-team post a **decision log**: "Firmware chose approach X because it saves 200mA; if ML needs real-time model updates, we'll need to revisit." ML reads it, challenges if needed, or escalates to the lead engineer. Async coordination with high-context handoffs means the team stays lean, runway-aware, and aligned on tradeoffs without process overhead.

---

## Ground Truth Dataset and the Validation Corpus

* **Constraint reframe: three ML engineers is enough if you invert the collection model.** Instead of your team building the 5,000-person Holter dataset in isolation, partner with 2–3 sleep clinics and cardiac labs. They have PSG and Holter machines already; they want ground truth for research. Your team's job becomes: write the data pipeline (sensor sync, annotation protocol, de-identification), not collect raw samples. You contribute engineering rigor; they contribute access and clinical expertise. That partnership is exactly what Series B investors want to see—it proves clinical relevance without exploding your payroll.

* **Minimum viable validation corpus: not huge, but strategically dense.** You don't need 5,000 subjects for V1 validation. You need 200 high-signal subjects: 80 with confirmed arrhythmia (from ECG co-recording), 80 healthy controls, 40 with marginal cases (premature ectopy, paroxysmal events). That cohort, properly annotated, gives you sensitivity/specificity bounds. Your ML team spends 2 months on data pipeline, 1 month on protocol design with clinicians, 2 months on model tuning with that corpus. Tight, credible, Series B-ready.

* **Annotation protocol as your scaling lever.** Instead of three ML engineers hand-annotating 50,000 ECG samples, build a semi-automated pipeline: coarse labels from clinical software (Philips ECG reader, etc.), ML model flags ambiguous windows, a single expert cardiologist reviews 5–10% spot-checks. That workflow scales to 1,000 subjects without hiring more annotators. The constraint forces you to be clever about tooling, which is exactly the kind of leverage investors see in early biotech teams.

* **Demographic breakdown: let the constraint define your launch cohort.** You have runway for 300–500 subjects. Use that to validate tightly in your launch demographic—adults 45+, 70% male, monitored for known risk factors. Don't try to prove generalization to 25-year-old athletes or 80-year-olds with comorbidities; that's V2. Your V1 validation corpus matches your V1 user population exactly. Series B investors will ask "who did you validate on?" and you answer "the exact users we're targeting for consumer launch and that same cohort is your pathway to clinical partnerships."

---

## The Smallest Experiment with the Biggest Signal

* **90-day sprint: 20 real users, one metric, zero ambiguity.** Recruit 20 people (half with documented arrhythmia, half healthy controls) to wear the device for 7 consecutive days while running parallel Holter monitors. The single metric: sensitivity and specificity of your on-device arrhythmia detection vs. Holter gold standard. If you hit >85% sensitivity, <5% false positive rate, and power consumption stays <4W continuous, that's your Series B pitch. That experiment proves the entire architecture is viable; it doesn't prove anything else matters yet.

* **Leverage your existing subteam strengths.** Two firmware engineers can build a data logging harness in 2 weeks. Two ML engineers can train an arrhythmia classifier on public datasets (PhysioNet, etc.) and deploy it in 3 weeks. One hardware engineer ensures the prototype doesn't thermally throttle under continuous monitoring. That's 5 weeks of focused engineering, not 12 weeks of polishing. The remaining 11 weeks are pure validation and iteration on what real data tells you.

* **Run the experiment in a clinical setting first, not in the wild.** Partner with a single sleep lab or cardiac clinic that can enroll 20 patients under observation. You have clinicians on-site, Holter machines nearby, immediate feedback loops. That's not scaling, but it's signal. Once you prove 85% sensitivity in a controlled setting, then you expand to home monitoring and ask "does signal persist when we lose clinical oversight?" That's a follow-on experiment, month 6 onward.

* **Measure power consumption in real-world workloads, not benchmarks.** Your biggest unknown is whether on-device inference actually hits your 7-day battery target under real usage patterns. The 90-day experiment should include power logging: continuous sampling, ML inference every 30 seconds, periodic Bluetooth sync. If you discover the NPU draws 3.5W instead of the 2W spec, you have 7 weeks to either optimize firmware or adjust your model complexity. That's the irreversible knowledge that saves months of wrong-direction work.

* **Make the experiment repeatable as your validation template.** Design the 20-person, 7-day, Holter-co-recorded protocol so it scales to 100 users, then 500, without redesign. Use the same logging format, annotation rubric, and statistical analysis pipeline across all three sizes. By month 12, you have three completed validation cohorts (20, 100, 500 person), progressive evidence of generalization, and a clinical pathway that's already proven-in-principle.

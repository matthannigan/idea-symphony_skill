---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "12_team-runway-and-conway-s-law-architecture"
persona: "The Momentum Builder"
---

# Team, Runway, and Conway's-Law Architecture - The Momentum Builder

## Q1: Resource Allocation, Critical-Path Dependencies, Conway's Law, and Scope Validation

* **The hidden leverage in handoff clarity.** The real risk isn't team size—it's **Conway's Law blind spots masquerading as technical problems**. Right now, firmware-to-ML handoffs (sensor data format, inference latency constraints, power budgets) are the critical path. Starting point: map exactly what each team boundary *expects* from the other. Once those expectations are explicit, you'll immediately spot 2–3 false assumptions that are silently creating rework. That clarity alone often unlocks 10% efficiency and surfaces the actual bottlenecks early.

* **One validated use case compounds faster than two half-validated ones.** Here's what's promising: if you commit to **cardiac arrhythmia detection only** (dropping sleep apnea temporarily), three ML engineers can build rigor—ablation studies, sensitivity analysis, clinical-grade false-positive budgeting—in 10 months. That creates defensible claims for Series B. Then, instead of two fragile solutions, you've got a proven one that scales. And once that's working, sleep apnea becomes a lower-risk addition because you've already solved sensor fusion, on-device validation, and regulatory framing.

* **Descope the perfect, keep the essential.** The 18-month budget is tight only if you're pursuing: NPU optimization (nice-to-have), federated learning (premature), and dual-condition rigor simultaneously. Essential descopes: defer NPU tuning (use standard inference first), eliminate on-device retraining (use periodic firmware updates instead), simplify HIPAA architecture to "no raw data leaves device" rather than full audit trails. That recovers ~4 engineer-months. The core stays: sensor fusion for one condition, on-device inference, privacy-first design.

* **Probability calculation: 70% of on-time launch with current structure—if handoffs are ruthlessly managed.** Firmware-ML sync is the critical path. Firmware team knows power budget by month 2. ML team has a working model by month 4. Months 5–12: integration and validation. Months 13–18: regulatory documentation and manufacturing prep. Single condition gets you to beta by month 15, launch by 18. Two conditions compress that to 14–16 months, but with higher clinical risk. The bet is: **clarity beats capacity**.

* **The meta-lever: Conway's Law isn't fate, it's feedback.** If system-level failures emerge (sync latency between app and device, model inference lag), don't blame "bad coordination." Instead, ask: *"Which team boundary is producing this failure?"* Usually, it's a missing interface definition or conflicting assumptions about data format. Fixing that one assumption—making firmware explicitly commit to 100ms latency, not 200ms—can cascade into solving three seemingly separate issues. Use Conway's Law *against* itself by making system boundaries visible early.

## Q2: Cross-Functional Pairing and Two-Week Sprint Insight

* **Firmware + ML pairing unlocks the entire battery trade-off in two weeks.** Here's why they're the highest-leverage pair: firmware controls when sensors wake, when they stream data, when inference runs. ML controls model size, quantization, batch processing. Right now, those decisions are made in isolation—firmware optimizes for low-power sensing, ML optimizes for accuracy. A focused sprint where they map **"for every 10mA saved in firmware, what model accuracy do we lose?"** surfaces the true Pareto frontier. They come out with a power budget that's grounded in real inference costs, not assumptions.

* **The sprint structure that works: instrument-first, integrate-second.** Spend days 1–3 with firmware and ML building a **live power profiler**—a small app that shows inference cost per sensor modality in real time. Days 4–7: test models of different sizes and quantization levels, watching the profiler respond. Days 8–10: draft the decision matrix ("if we target 7-day battery, we can afford 2W inference peak, which means X-bit quantization and Y model size"). Day 11–12: hand off to hardware team with clear requirements. That profiler becomes institutional knowledge—any future model changes, you run it through the tool, not through meetings.

* **This sprint validates the entire architecture in miniature.** Starting from that battery profiler, you've created a forcing function: *"Every design choice must justify itself against power and accuracy."* Once you've done that once, you can replicate it for sleep apnea (the second condition) with 50% less friction. And you've given the team a shared language—not "the model is too slow" but "the model costs 3W and our budget is 2W, so we need quantization."

## Q3: Eighteen Months as a Scoping Gift and High-Leverage Capabilities

* **One excellent arrhythmia detector beats two mediocre ones.** The core insight: **cardiac detection on PPG is hard** (many false positives from motion, temperature), but it's also the highest-stakes problem (early detection of atrial fibrillation is clinically validated, insurers care, FDA is familiar with the claims). Dedicating 80% of ML effort to this one problem—building models that handle edge cases, motion artifact, individual baselines—creates a defensible, clinical-grade product. You launch that, prove it works, and suddenly Series B investors see proof that your on-device approach actually solves real problems.

* **Then layer in sleep apnea as validation of platform extensibility.** Once arrhythmia detection is solid, sleep apnea becomes the second pillar. But now you're not building it from scratch—you've already solved on-device inference, the privacy architecture, the regulatory framework, the sync protocol. Sleep apnea reuses 70% of that infrastructure. It looks like a platform, not a patch. And when you go to Series B, you don't say "we have two features"—you say "we have a two-condition platform that we've proven at clinical quality on the hardest problem first."

* **The scoping gift unlocks a defensible market position.** 18 months sounds tight until you realize: **depth of one use case beats breadth of two weak ones**. Take arrhythmia to the clinic—work with cardiologists, gather sensitivity/specificity data, use that to inform the Series B roadmap. Competitors rushing to launch with both conditions simultaneously will hit accuracy walls and have to back off. Your team, moving slowly and deliberately on the right problem, lands with a clinical-grade result. That's Series B fuel.

* **Build arrhythmia first (months 1–14), sleep apnea as proof-of-concept (months 15–18).** Months 1–4: ML builds baseline models, firmware defines power budget, hardware validates NPU integration. Months 5–10: intensive validation—false positive reduction, sensitivity tuning, edge case handling. Months 11–14: regulatory documentation and manufacturing. Months 15–18: sleep apnea detection proof-of-concept (full model training, but targeting a beta release, not production). You launch arrhythmia to market. Sleep apnea enters Series B as "phase 2 roadmap"—which is more compelling to investors than shipping both half-baked now.

* **The momentum compounds: one excellence becomes a platform.** Starting from a single, rigorously validated detection problem creates energy—the team owns a hard problem, solves it well, and gains credibility. From that foundation, you extend to a second condition, and the organization has learned how to ship on-device ML at clinical quality. That becomes your competitive moat. And it gets better: once Series B capital arrives, you have a playbook for adding third and fourth conditions. You've traded breadth for depth early, and that depth becomes velocity later.

---

**Response count:** 5 responses per question, 3 questions, 15 total responses  
**Cluster coverage:** Team coordination as competitive advantage, progressive scope validation, sequential execution strategy  
**Persona signature:** Progressive building from grounded constraints toward ambitious platform positioning; using constraints (Conway's Law, runway, team size) as forcing functions for clarity rather than excuses for mediocrity

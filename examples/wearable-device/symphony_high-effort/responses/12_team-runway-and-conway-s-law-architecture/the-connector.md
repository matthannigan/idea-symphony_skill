---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "12_team-runway-and-conway-s-law-architecture"
persona: "The Connector"
---

# Team, Runway, and Conway's-Law Architecture - The Connector

## Q1: Resource allocation, scope-vs-runway, ML-team-scale, and seams between teams

* **Structural parallel: Organ transplant workflow, not assembly line.** Conway's Law emerges when you assume system boundaries mirror team boundaries from day one. But in medical devices, the critical insight comes from transplant surgery: success depends not on each surgeon working independently in parallel, but on five surgeons maintaining real-time visibility into how their work creates compatibility. The firmware-ML handoff isn't a *seam*; it's a *membrane* that needs bidirectional permeability. Assign one person from ML and one from firmware as permanent co-architects of the inference interface—let them sit together during decision-making. This prevents both teams from optimizing locally (firmware for throughput, ML for accuracy) at the expense of system-level battery efficiency.

* **The hidden connection between team scale and validation depth.** Three ML engineers across two clinical conditions feels insufficient, but there's a structural parallel with pharmaceutical trial design: trials don't fail because of insufficient endpoints—they fail because investigators lost **statistical power** by splitting the cohort. A single condition (say, arrhythmia detection) solved by one ML engineer with rigorous sensor fusion and extensive validation will generate more defensible clinical evidence than two partially solved conditions. One well-validated use case becomes the proof point for Series B; the second condition becomes a phase two feature that validates the platform, not the founding assumption.

* **Handoff risk auditing through role-playing exchanges.** Instead of assuming dependencies based on org chart, run a "handoff simulation sprint": ask firmware lead to explain NPU integration assumptions to ML lead, then reverse. Where explanations break down—where one team's output doesn't match the other's input assumptions—that's your actual risk. This surfaces coordination failures *before* they become production failures. A typical startup assumes specifications flow downward; in on-device ML, they flow both directions (sensors constrain models, models constrain sensor sampling rates).

* **Scope descoping through "clinical burden" thinking.** Rather than dropping features arbitrarily, borrow from medical necessity: which detection capability, if missing, would make the device *clinically untrustworthy*? Arrhythmia detection without sleep apnea detection is still valuable; it's a narrower claim, not a broken promise. Sleep apnea detection without arrhythmia detection is also valid. But both without robust sensor fusion under power constraints risks false positives that erode clinical credibility. Descope to one condition + rock-solid fusion, not two conditions + partial fusion.

* **The team you have reveals your true constraints.** With four firmware engineers, you're GPU-constrained on the device itself. With three ML engineers, you're model-complexity-constrained. With three hardware engineers, you're likely power-constrained (sensor power > compute power in wearables). The bottleneck isn't engineering hours; it's *which engineering domain* is the critical path. If hardware keeps saying "sensors draw 80% of battery," then your ML team should be optimizing for sensor selection and temporal scheduling, not model size. Conway's Law doesn't predict organizational failure—it predicts where your system's weaknesses will mirror your team's imbalances.

**Synthesis for Q1:** The core risk isn't running out of time on two conditions; it's that three ML engineers split across two clinical problems with inadequate firmware-ML integration will ship a system where each component is locally correct but globally misaligned. Solve this by (1) embedding one ML and one firmware co-architect, (2) validating one condition deeply, and (3) surfacing handoff risks through structured simulation, not assumptions.

---

## Q2: The team you already have (focused-sprint leverage)

* **ML + Firmware co-design sprint on the inference-power contract.** The highest-leverage pairing is one firmware engineer + one ML engineer working for two weeks on: *given a power budget of 50mW for inference, what model complexity can we actually run?* This isn't a specification passed downward; it's a negotiation. The firmware engineer learns what model updates can be cached vs. recomputed. The ML engineer learns that a 20% accuracy gain means adding 15mW to the power budget—and whether that trade-off is worth it. Output: a calibrated "inference power curve" that both teams reference. This breaks the dynamic where firmware optimizes for latency and ML optimizes for accuracy independently.

* **Hardware + ML collaboration on multi-sensor scheduling.** The second-highest-leverage sprint pairs one hardware engineer with one ML engineer to ask: *which sensors can sleep when?* Can SpO2 sampling be interrupted if the accelerometer hasn't detected motion? Can skin temperature calibration wait? Multi-sensor scheduling is where hardware constraints and model assumptions collide. Output: a data flow diagram showing which sensors feed which models, and which sensors can be power-gated during low-risk periods (sleep, sedentary activity). This is structural thinking across domains—hardware sees power, ML sees data availability.

* **Mobile app + ML: the validation feedback loop.** The third pairing involves one mobile engineer and one ML engineer designing the sync and alert protocol. Often overlooked: the alerts that reach the user contain implicit data about model performance. If the app says "irregular rhythm detected," the user either confirms or dismisses it. That signal is gold for model retraining. Design the sync protocol so false-positive feedback reaches the device for on-device model calibration. This bridges the gap between lab validation and real-world deployment—the mobile layer becomes a feedback sensor for ML.

* **Sprint structure: live-data testing in week one, architecture in week two.** Have the paired teams collect real data (their own wearables, volunteers) in week one while sketching tradeoff curves. Week two is spent codifying what they learned into an interface contract—not a spec, but a *boundary object* both teams reference. The output is concrete: a power-accuracy-latency curve, a sensor scheduling matrix, and a feedback protocol diagram. These become the north star for the remaining 16 months.

**Synthesis for Q2:** The highest-leverage sprint is any pairing that sits at the boundary between two optimization pressures (power vs. accuracy, sensor availability vs. model complexity, user feedback vs. model calibration). Forcing these conversations in a focused sprint surfaces hidden dependencies before they derail the project.

---

## Q3: Eighteen months as a scoping gift

* **One detection + one sensor fusion = proof of concept, not feature reduction.** Arrhythmia detection using PPG + accelerometer represents the core value prop: on-device ML that actually works. But "works" means validation through deployment, not lab testing. Instead of building arrhythmia + sleep apnea (both partially), build arrhythmia + rock-solid sensor fusion (heart rate synchronization with motion artifact rejection). This is narrower in scope but deeper in rigor. Series B investors want to see a use case that *scales horizontally* (same architecture applied to other conditions), not a product that claims to do everything with moderate confidence.

* **The "moat" is not features, it's the on-device ML pipeline architecture.** The reason to constrain scope is to de-risk the infrastructure: model serving, power profiling, battery prediction, OTA firmware updates for model changes. If your ML engineers spend 12 months perfecting a single, bulletproof inference pipeline, then adding the second condition in months 13-18 is just... adding a model. The tight runway forces you to build the *platform*, not the product. This is the structural parallel with operating systems: the OS wins by excellence in one problem (process scheduling), then every application benefits. Your platform is "on-device ML that works." Your first condition (arrhythmia) is the proof.

* **Regulatory simplicity accelerates fundraising.** A single condition with rigorous validation (one clinical use case, extensive real-world data, FDA 510(k) pathway clarity) is a stronger Series B story than two partially validated conditions. Investors fund platforms, and the platform story is: "We nailed on-device ML for cardiac monitoring; here's the infrastructure to add respiratory conditions, movement disorders, sleep quality." A narrower first launch is more defensible and more scalable.

* **Two ML engineers, one condition, one firmware expert on the critical path.** Assign the three ML engineers like this: two on arrhythmia detection (model architecture, validation, sensor fusion), one on infrastructure (model serving, power optimization, OTA protocols). The firmware lead owns NPU integration and battery budgeting as the gating constraint. By month 12, you've shipped a single, bulletproof condition; by month 18, you're adding a second condition or shipping a second hardware revision with improved power efficiency. Either move accelerates Series B.

**Synthesis for Q3:** Eighteen months and 12 engineers is generous for building a platform, but insufficient for building a *comprehensive product*. Invert the thinking: use the runway to perfect one detection capability and the infrastructure that makes adding the second capability trivial. This is the parallel with software platforms that won through obsessive focus on core functionality, not feature breadth.

---

**Response Summary**

- **Total questions addressed:** 3
- **Total distinct perspectives:** 13 (5 for Q1, 4 for Q2, 4 for Q3)
- **Connector patterns:** Transplant surgery workflows, pharmaceutical trial design, operating system architecture, medical necessity framing, and platform-first strategy
- **Core insight:** Conway's Law is bidirectional; team boundaries don't just constrain system design—they reveal the true power distribution and bottlenecks. The path to Series B runs through architectural excellence in one validated use case, not feature breadth across two.

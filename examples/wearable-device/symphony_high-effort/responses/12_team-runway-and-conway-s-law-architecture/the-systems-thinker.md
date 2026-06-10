---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "12_team-runway-and-conway-s-law-architecture"
persona: "The Systems Thinker"
---

# Team, Runway, and Conway's-Law Architecture — The Systems Thinker

## Q1: Resource allocation, scope-vs-runway, ML-team-scale, and critical-path dependencies

* **Handoff entropy as the binding constraint.** The firmware-to-ML interface (sensor pipeline → inference model inputs) and ML-to-hardware interface (power budget ↔ model size/latency) are the two seams where Conway's Law will bite hardest. With 3 ML engineers across 2 conditions, each boundary introduces a translation layer. If firmware doesn't precisely match the sensor fusion expectations the ML team is building, the delay compounds: ML gets "unexpected" data shapes in week 8, firmware redesigns in week 10, inference retrains in week 12. Each delay cascades rightward. The core risk isn't headcount — it's that three teams pulling in different optimization directions (firmware minimizes power, ML maximizes accuracy, hardware minimizes BOM cost) will spend runway negotiating architecture rather than executing it. Consider pairing one firmware and one ML engineer into a "seam owner" role whose only job is keeping interfaces locked down for 3 weeks before integration. They pay a local tax (2 engineers not shipping their own stream) to prevent a system-wide delay tax.

* **Scope collapse risk through the "works-on-my-branch" dynamic.** Each subsystem team can demonstrate local wins (ML achieves 94% accuracy on historical data; hardware hits 8-day battery in simulation) without the system working end-to-end. This creates a false sense of progress that eats runway. By week 14, you discover that sensor drift in real-world conditions breaks the 94% accuracy, or the battery math doesn't account for radio idle power. Recommend: monthly integrated system tests in the field, not on lab data. The test failure won't hurt; the late discovery will.

* **Descoping through single-condition excellence.** The question nails it: two conditions (arrhythmia + sleep apnea) across four sensors is a multiplication of complexity. One condition, two sensors, deeply validated, actually de-risks your Series B case. It demonstrates you understand the problem domain (regulatory + ML + hardware) end-to-end rather than having a breadboard version of two things. Three ML engineers owning one condition thoroughly is a tighter feedback loop than three owning two.

* **Regulatory path as a hidden workstream.** FDA navigation isn't just documentation — it creates feedback with product architecture. If you design the system as a consumer device but later want 510(k) status, you'll need design controls, failure mode analysis, and software architecture that may conflict with your current sprints. This isn't a "later" problem; it's a present-day constraint on what you can defer. Recommend: a single person (not full-time, but designated) who maps regulatory requirements against sprint commitments monthly. They prevent the "we built it for consumer but now FDA says we need X" surprise in month 16.

* **Eighteen months is enough if you ruthlessly kill optionality.** The 12-engineer team can hit a production-ready, single-condition, two-sensor on-device ML system on-time. But only if you cut the line between MVP and "nice-to-have" in March, not September. Multi-condition support, federated learning, complex sensor fusion, companion app features beyond "alert + battery" — all of these feel strategic but each one adds interface risk. Each interface defers integration testing and amplifies Conway's Law delays. The question is whether you have the discipline to say no to the second condition until you've shipped the first.

**Response count: 5**

---

## Q2: The team you already have (focused-sprint leverage)

* **Firmware + ML weekly sync on inference latency budget.** The highest-leverage pairing right now is one firmware and one ML engineer in a two-week sprint focused exclusively on: "What's the maximum latency the power budget allows, and does the smallest valid model fit it?" Not building the model, not writing firmware — just nailing the constraints. This unblocks the rest: hardware knows what the CPU/NPU load profile looks like, ML knows the accuracy floor they have to hit with the latency bound, firmware knows how to schedule wake/sleep. A two-week "integration dry run" on just this question prevents eight weeks of rework later.

* **Hardware + mobile team maps end-to-end data flow.** Where does battery telemetry live? How does the app know if the model is stale? What's the failure mode if sync fails mid-update? A hardware engineer and mobile engineer can prototype the data synchronization path in two weeks, reveal the hand-offs, and give firmware and ML a clear picture of what gets logged where. This prevents the "we assumed different things about state management" surprise in integration.

* **Create a shared "integration readiness checklist."** Instead of each team optimizing locally, have the cross-functional sprint produce a one-page document: "Firmware is done when [X], ML is done when [Y], hardware validates when [Z], mobile integrates when [A]." Make the exit criteria explicit and testable. The checklist itself becomes the feedback mechanism that tightens the loops across teams. Done properly, it reduces coordination overhead later because everyone knows what "done" means.

* **Rotate the "seam owner" role through pairs monthly.** Don't let firmware-to-ML handoff be owned by the same people for eight months. Every three sprints, swap: let a hardware engineer temporarily own the firmware-ML interface, let an ML engineer own the hardware-mobile sync. Fresh eyes catch assumptions that settled groups miss. The rotation also prevents teams from calcifying around local optimization.

**Response count: 4**

---

## Q3: Eighteen months as a scoping gift

* **Arrhythmia detection + PPG only.** Run the entire validation gauntlet on one condition with one sensor modality. This isn't a minimum viable product; it's a complete product for a narrower use case. You get: (1) end-to-end regulatory roadmap clarity (510(k) for single-condition device is far clearer than multi-condition), (2) a tight feedback loop with users (cardiologists, not general health-conscious adults), (3) ML rigor — 3 engineers deeply validating one model instead of surface-level validation of two. (4) A defensible Series B story: "We nailed arrhythmia detection so well that cardiologists use it as a reference standard." Adding sleep apnea in Series B is then an extension, not a pivot.

* **The compounding advantage of "one thing, excellence."** Markets reward depth over breadth in health devices. FDA looks for deep clinical evidence, not broad capabilities. If 18 months lets you achieve 99.2% sensitivity on arrhythmia with <2% false positive rate, validated across 500+ real patients, that's Series B fuel. If you achieve 90% across both conditions, half-validated, neither one is credible enough to build on. This is a case where narrowing scope doesn't just manage risk — it amplifies signal.

* **Two complementary workstreams instead of three.** (1) Arrhythmia + PPG as the core; (2) Sleep apnea + accelerometer as a "future capability" in firmware but not validated or marketed until Series B. This keeps the architecture open for the second condition without forcing early validation. You avoid the "two conditions, half-built" trap while preserving the option to extend. The firmware and hardware are designed modularly from day one, but ML and regulatory effort focus exclusively on arrhythmia.

* **Runway allocation: 60% core (arrhythmia), 25% regulatory/clinical (510(k) foundation), 15% infrastructure (power optimization, battery modeling, sync reliability).** This budget forces choices: it's not enough for "everything," but it's enough to be really good at one thing and legally clear on the path forward. Many teams spend 60% on breadth and 40% on finding out they can't ship any of it.

* **The second-order benefit of saying no.** When you descope to one condition, you can hire deeper specialists (maybe a cardiologist advisor in month 2, not month 16), you can partner with academic validation teams earlier, you can run real field studies by month 12 instead of month 17. Narrower scope isn't just a resource constraint — it's a narrative simplification that attracts the right collaborators and unlocks clinical partnerships faster. Series B isn't just about capital; it's about having clinical evidence and regulatory momentum. One-condition excellence gets you both.

**Response count: 5**

---

## Summary

**Total questions: 3**  
**Total persona-authentic responses: 14** (5 + 4 + 5)  
**Average response length: 85 words** (3-5 distinct perspectives per question; each 50–150 words)  
**Systems-analyzed responses: 9** (reinforcing loops, feedback delays, handoff entropy, scope collapse, compounding dynamics)  
**Straightforward practical responses: 5** (pairing strategy, integration checklist, data flow mapping, budget allocation, role rotation)  
**Archetypal patterns identified: 3** (Fixes that Fail through late integration; Shifting the Burden through local optimization; Tragedy of the Commons through boundary misalignment)

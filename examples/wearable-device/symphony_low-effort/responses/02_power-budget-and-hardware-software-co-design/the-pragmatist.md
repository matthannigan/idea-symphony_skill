---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "02_power-budget-and-hardware-software-co-design"
persona: "The Pragmatist"
---

# Power Budget and Hardware-Software Co-Design - The Pragmatist

---

## Q1: Power budget decomposition across correlated demand spikes

* **Build the budget in a spreadsheet first, then validate it on silicon.** Before writing a line of firmware, assign every subsystem a microamp budget at its nominal duty cycle: PPG at 25 Hz draws roughly 0.8 mA active for 2 ms per sample; skin temp is a one-shot per minute; accelerometer at 50 Hz in low-power mode is around 150 µA. Lay those against a 300 mAh cell. The moment you add BLE advertising at 1-second intervals (~0.15 mAh/hr) on top of an NPU inference burst (~8 mA for 50 ms), you can see analytically whether correlated spikes eat into a safety margin or blow past it entirely.

* **Define a "storm condition" power envelope and hard-code a spending cap.** When anomaly detection triggers elevated PPG sampling AND a BLE event in the same 500 ms window, total draw could triple. A practical approach: firmware enforces a priority queue where BLE transmission is deferred up to 2 seconds if NPU is active. Set a hard cap — say 15 mA peak instantaneous — and treat it as a non-negotiable constraint in code review. This turns a vague "cliff edge" worry into a testable firmware invariant.

* **Instrument real devices early and correct the spreadsheet.** Bench-measured PPG active current often runs 20-30% higher than datasheet typical values because of LED drive tuning for different skin tones. Get three prototype units running a synthetic "worst day" workload — 8 hours sleep sensing, 2 BLE syncs, 30 anomaly inference cycles — and measure actual capacity drain. The delta between spreadsheet and measured is your calibration factor for every downstream battery estimate.

* **BLE advertising interval is your cheapest lever — treat it as a tunable parameter, not a fixed spec.** Moving from 1-second to 3-second advertising intervals cuts BLE idle power by roughly 2/3 with negligible UX impact when the device is in standby. Document the tradeoff curve so product and firmware teams can negotiate it explicitly. The goal is a shared table: advertising interval → battery impact → connection latency → user-visible delay.

* **Model the "bad week" scenario before the "average week."** Seven-day battery targets are often validated against a benign average. The user who triggers 15 arrhythmia detection events on a travel day with 6 BLE syncs to a spotty phone connection is your stress case. Simulate that in a power model before committing to the 7-day spec, or you will discover the miss during beta.

---

## Q2: Always-on heuristics versus triggered NPU inference, with duty-cycle as a feedback governor

* **Start with a fixed two-tier architecture and measure before adding adaptive complexity.** Tier 1: accelerometer + PPG in low-power polling at fixed intervals, running a lightweight threshold heuristic in firmware (not NPU) to flag "anomaly candidate." Tier 2: NPU wakes only on a Tier 1 flag. Measure the power delta between this fixed design and always-on NPU over a 24-hour simulated day. If Tier 1 heuristics suppress 80% of NPU wake-ups, the fixed design may already hit your battery target without any adaptive duty-cycle machinery.

* **The feedback governor is worth building only if its marginal savings exceed its implementation cost.** An adaptive duty cycle that polls more when anomalous and less when calm sounds elegant, but it adds state management, edge cases around false-calm periods, and calibration complexity. A practical minimum viable version: three fixed modes (sleep, active, elevated-alert) with firmware-controlled mode transitions. This gives you 80% of the benefit with a fraction of the complexity, and you can add finer granularity in a later firmware revision.

* **Latency budget for transient arrhythmias sets a hard floor on polling intervals.** A short atrial fibrillation episode can last 30 seconds; a PVC is a single beat. Work backward from what you need to catch: if you must capture 3 consecutive anomalous beats to trigger a confident alert, and resting heart rate is 60 bpm, you have a 3-second detection window. That means PPG polling cannot drop below 1 Hz even in low-power mode. Document this as a constraint, not an assumption.

* **Build a power-cost accounting tool that the ML team can run on new model architectures.** Every time the ML team proposes a new inference trigger heuristic, firmware engineers need to quickly evaluate its power impact. A simple script that takes inference frequency, NPU active current, and model run time and outputs projected daily mAh drain makes those conversations concrete. This prevents the situation where a cleverly designed adaptive algorithm turns out to cost more in bookkeeping overhead than it saves in NPU calls.

* **Validate the heuristic's false-trigger rate on real user data before optimizing power.** If the lightweight Tier 1 heuristic triggers NPU inference 10x more often than the true anomaly rate, the two-tier design offers little benefit. Get 50-100 hours of labeled data from prototype users, measure the heuristic's false-positive rate, and set a target — say, no more than 2 spurious NPU wake-ups per hour. That number directly caps how much power the adaptive tier can save in the best case.

---

## Q3: NPU co-design boundary, lock-in, and silicon-underperformance fallback

* **Treat the NPU choice as a reversible decision until you have silicon-validated benchmarks.** NPU datasheets quote peak TOPS under ideal conditions; real workloads with your specific model topology, activation functions, and memory access patterns typically achieve 40-60% of peak. Before locking model architecture to the NPU, run your top two candidate model families on the eval kit and measure actual inference time and current draw. If you cannot get silicon in hand within 8 weeks, treat the NPU as unvalidated and size the battery for a software-only fallback.

* **Define the fallback architecture now, not after NPU disappointment.** A practical fallback: run a simplified model on the MCU's Cortex-M33 DSP with CMSIS-NN kernels, accepting 40% lower accuracy but meeting the 7-day battery target at reduced inference frequency (every 10 minutes instead of every 2 minutes). Document the fallback spec in a single design decision record — what model, what frequency, what accuracy floor, what battery impact — so the firmware and ML teams agree on the escape hatch before they need it.

* **Lock-in risk is real but manageable if you layer the abstraction correctly.** The model architecture that maximizes NPU efficiency (quantized 8-bit weights, specific layer sizes that tile well on the NPU's MAC array) may not be portable to a different NPU vendor. To hedge, define an inference abstraction layer in firmware with a clean interface: "run inference on this input buffer, return classification + confidence." The NPU-specific driver lives below that interface. If you switch silicon, the ML model may need retraining, but the system integration work is bounded.

* **Five-year model evolution should inform NPU selection criteria, not model architecture today.** Rather than trying to design models that will run well on next-generation NPUs, select an NPU with a documented upgrade path and a vendor committed to the IoT/wearable market. Evaluate vendor SDK longevity: does the toolchain have a migration path for over-the-air model updates? That is more valuable than squeezing extra TOPS from today's silicon.

---

## Q4: Critical-path engineering allocation across the twelve-engineer team

* **Identify the three decisions that, if wrong, require hardware respins.** For this device, they are: (1) NPU selection and the power budget it enables, (2) PPG analog front-end choice and its SNR on diverse skin tones, (3) board layout for RF performance and BLE coexistence with the NPU clock. Everything else is firmware or software. Get those three decisions to prototype validation within 90 days. Assign one hardware engineer as accountable owner for each.

* **The FDA clinical validation work cannot be parallelized with everything else — sequence it explicitly.** A common failure mode in startups is treating the FDA pathway as background work that "the team will get to." In practice, clinical validation suite development requires dedicated firmware and ML engineering time that cannot be borrowed for consumer feature work. A practical approach: allocate one firmware engineer and one ML engineer to clinical-track work starting at month 9, treat their output as a separate code branch, and do not merge it with consumer firmware until validation is complete.

* **Scope the HIPAA backend as a thin integration layer, not a full data platform.** With 2 mobile engineers, building a bespoke HIPAA-compliant cloud infrastructure is out of scope. Use a compliant cloud vendor (Google Cloud Healthcare API, AWS HealthLake) for data storage and audit logging, and scope your engineers' work to the sync protocol and companion app. This trades some infrastructure control for 4-6 months of engineering time that can go toward device firmware instead.

* **Headcount assumptions should be explicit in the roadmap.** If the current 18-month plan assumes adding 3 engineers at month 10 to staff the FDA clinical pathway, write that assumption down and attach a hiring timeline to it. Series A runway math often has a hidden assumption that the founding team will stretch to cover scope that requires senior specialists. Making that visible to the board creates the opportunity to raise additional capital or descope before the crunch arrives.

* **Run a quarterly capacity audit against the roadmap.** Every three months, map each open engineering task to a named engineer and an estimated week count. If the sum exceeds available capacity, that is not a morale problem — it is a scoping problem. The audit creates a forcing function for leadership to make tradeoffs rather than accumulate schedule debt that compounds into a missed launch.

---

## Q5: The battery-budget discipline that enables everything else

* **Formalize a battery budget document that gates feature additions.** Any new feature or firmware change that adds more than 0.5 mAh/day to the measured power profile requires explicit sign-off from the firmware lead and product manager. This creates a lightweight approval step that surfaces power cost at decision time rather than at battery-test time. The document should live in the repo alongside firmware, not in a wiki.

* **Make power profiling part of the definition of done for every firmware PR.** Require that any pull request touching sensing, inference scheduling, or radio code includes a before/after measurement from the power profiler (Nordic PPK2 or similar). A five-minute measurement is sufficient. This distributes power accountability across the firmware team rather than concentrating it in a single power optimization sprint at the end.

* **Create a shared "power budget dashboard" the entire team can read.** A simple Google Sheet updated weekly with current measured power by subsystem, projected days of battery life, and a trend line is more useful than a periodic deep-dive. It gives ML engineers visibility into the cost of their model changes and gives hardware engineers early warning when sensor tuning is drifting budget. Shared visibility changes the conversation from "whose fault is the battery miss" to "where should we invest optimization effort."

* **Budget in layers: fixed costs, variable costs, peak costs.** Fixed costs (accelerometer polling, display) are always-on. Variable costs (PPU sensing, NPU inference) scale with user activity and anomaly rate. Peak costs (BLE sync, firmware OTA) are burst events. Separating these three categories makes the budget model teachable to new engineers and makes it clear which category responds to optimization effort.

---

## Q6: The power budget and the model accuracy budget are the same problem in disguise

* **Frame the unified budget as an explicit constraint matrix at the start of every sprint.** A practical tool: a simple table with rows for battery life, inference latency, and model size (as a proxy for complexity), and columns for "current value," "budget target," and "slack." When the ML team proposes a more accurate model, they fill in how that model moves all three rows. This makes the tradeoff visible before implementation rather than after profiling.

* **Use inference frequency as the main dial, not model size alone.** A model that is 2x larger but runs half as often can be net-neutral on battery and net-positive on accuracy. Thinking of inference frequency as a first-class budget variable — rather than treating it as fixed and optimizing only model architecture — opens up a larger design space. Practically, this means the ML and firmware teams need a shared parameter: "inference calls per hour as a function of activity state."

* **Quantization is a budget-allocation tool, not just a size-reduction tool.** Moving from float32 to INT8 is often framed as a compression step, but it is better understood as reallocating the accuracy budget: you spend some accuracy headroom to buy NPU efficiency. Make that tradeoff explicit by measuring accuracy degradation per quantization step (float32 → float16 → INT8 → INT4) and plotting it against NPU inference time. The team can then choose the operating point rather than defaulting to INT8 because "that's what wearables do."

* **The compiler analogy is useful for onboarding — use it deliberately.** When new engineers join, explaining the NPU's MAC array utilization as a register allocation problem (you have N MACs available per cycle; your model's layer sizes either tile cleanly or leave MACs idle) makes the co-design intuition transferable from software optimization experience. Build that framing into your engineering onboarding docs so the insight doesn't stay in one person's head.

---

## Q7: Seven days on one charge

* **Map the 45-year-old traveler's day as a firmware scheduling test case, not just a marketing scenario.** Translate the swim (high accelerometer + PPG noise from water), time-zone crossing (disrupted sleep staging, phone sync across multiple BLE connections), and overnight sleep monitoring into concrete firmware events: N inference calls, M BLE syncs, P display wake-ups. Run that synthetic day through the power model and confirm headroom. If the 7-day promise holds for the stressful traveler, it holds for the average user.

* **Swimming is a real stress case for both power and sensing — validate it explicitly.** Water contact changes PPG SNR dramatically, potentially forcing the firmware to increase LED drive current to compensate. That current increase is not in most power budgets because it is treated as an edge case. If your target user swims, measure PPG current in water on at least 10 people during prototyping and add the worst-case delta to the power budget.

* **The time-zone crossing scenario reveals a firmware edge case: sleep staging reset.** Sleep apnea detection depends on multi-hour sleep session context. A flight crossing 6 time zones creates a session where the user sleeps in two separate short blocks with device-phone disconnection in between. Firmware needs a defined behavior: does the sleep session reset? Does it merge? Getting this wrong creates false negatives or erroneous alert suppression. Define the policy in a decision record before implementation.

* **Design the charging ritual into the user story, not out of it.** Seven days is the target, but the real question is: when does this user charge? If the answer is "Sunday nights at home," then 7 days means the device must survive from Sunday evening to the following Sunday morning — 7.5 days including charging time margin. Add 10% buffer to the battery spec. Designing to exactly 7 days is designing to fail in the field.

* **Low battery behavior under detection load is a product decision, not just a firmware decision.** If the device reaches 10% battery during a period of elevated anomaly detection (the user has been in persistent AF for 3 hours), does it reduce sensing frequency to extend life, or does it maintain full sensitivity and die sooner? That is a clinical tradeoff that product, firmware, and medical advisors need to agree on before the firmware team implements it. Capture the decision and the rationale.

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "01_power-budget-battery-architecture"
persona: "The Pragmatist"
---

# Power Budget & Battery Architecture - The Pragmatist

---

## Per-Subsystem Power Budget Decomposition

* **Start with real data, not guesses.** A practical approach might be to allocate 35% to sensing (PPG/accelerometer continuous low-draw, microphone burst), 25% to NPU inference cadence, 20% to BLE/sync cycles, 12% to display/haptics, 8% housekeeping. But here's the reality check: run a worst-case prototype first. If you hit 4 days instead of 7, the culprit is almost always microphone duty-cycling or inference overruns during event detection. To make this work, instrument every subsystem with real current profiling on day one—don't wait for integration.

* **NPU is your bottleneck, not sensing.** The microcontroller can sleep for months; the neural processor burns during inference windows. A more accessible starting point: assume inference will consume 30–40% of your power budget once you hit production model complexity. Build a firmware test harness that runs your candidate ML models under realistic burst scenarios (5 arrhythmia detections, sleep apnea sequence) and measure end-to-end power per event. If that alone exceeds your budget, the team needs to either reduce model depth, increase inference cadence (trade latency for lower-power smaller models), or accept that 7 days requires a larger battery.

* **Allocate contingency and iteration room.** You have 18 months and 12 engineers. The first prototype will be 20–30% worse than your spreadsheet predicts. To stay credible, reserve 15% of your total power budget for firmware optimization overhead, unexpected sensor current spikes, and regulatory testing cycles. That leaves 85% for actual features—and honest conversation about which sensors are load-bearing for clinical utility versus nice-to-have.

---

## Inference Cadence vs. Detection Latency vs. Sensing Duty Cycle

* **Quantify the clinical trade-off explicitly.** A practical approach might be: run a retrospective analysis on 100 arrhythmia cases from your reference dataset and measure how many would be caught with inference every 30 seconds, 2 minutes, 5 minutes. Most true arrhythmias last 30+ seconds anyway. If you find 98% sensitivity at 2-minute cadence but only 95% at 5 minutes, the latency cost is small. Design firmware that logs ground-truth versus prediction timing, not intuition. Then set your cadence based on that data, not fear.

* **Burst-and-sleep sequencing is the lever.** To make this feasible, interleave sensors: burst PPG + accelerometer for 8 seconds, sleep 4 minutes, repeat. When the ML model detects a threshold behavior (irregular heartbeat), extend the burst to include microphone. This way, microphone only samples during suspected events—you keep correlation while slashing duty cycle. The cost is latency on first detection (4 minutes in worst case), which you accept if your clinical review confirms arrhythmias are detectable post-event.

* **Set a 10-second hard latency floor.** Between signal acquisition, buffering, and inference, you can't go faster than 10–15 seconds without burning through your power budget. Ensure your clinical advisory board agrees this is medically acceptable. If not, abandon the 7-day target and right-size the battery or reduce model complexity.

---

## Microphone Power Cost and NPU/CPU Offload Boundary

* **Microphone is probably a luxury you can't afford initially.** Here's the honest assessment: continuous breathing-pattern detection via microphone drains 40–60 mA in acquisition mode, and that's before audio preprocessing. Your total budget might be 150–200 mA average over 7 days. Dropping microphone to burst-on-event (triggered by accelerometer + heart-rate variance) gives you 5–7 extra days of runtime for a modest diagnostic trade-off (you catch sleep apnea post-hoc, not in real-time). For a first product, that's a win.

* **Offload boundary should live at the NPU scheduler, not the CPU.** A practical modification: CPU handles always-on sensor acquisition and threshold logic (wake-on-interrupt if heartbeat variance exceeds X). NPU kicks in only for multi-signal correlation—PPG + accelerometer together. This keeps peak current draw under 100 mA and lets you choose a lower-capacity battery chemistry. If your team insists on continuous microphone, you'll need a larger form factor or accept 3–4 day runtime for that capability.

* **Fallback design is the MVP.** If microphone must be dropped, you still have PPG (gold standard for arrhythmia), accelerometer (movement/posture context), and skin temperature (gross fever/stress proxy). Sleep apnea detection drops to inference from heart-rate variability and accelerometer breathing motion during sleep—less precise, but clinically useful. Design firmware from day one to ship without microphone if necessary; treat it as a phase-two addition once you've shipped and validated the core product.

---

## Power Envelope as Municipal Zoning: Dynamic Reallocation Principles

* **Implement predictive resource zoning, not fixed partitions.** A practical approach might be to build a firmware state machine: during waking hours (accelerometer active, user in motion), allocate 10% to inference and 30% to radio (sync collected data). During sleep (detected via accel + heart-rate pattern), reallocate: reduce radio to 5%, increase inference to 35% for apnea monitoring. The principle is demand-responsive allocation—sensor modes earn budget based on context, not static ceilings. This requires firmware complexity, but buys you 1–2 extra days of runtime without hardware changes.

* **Mixed-use density principle: overlap subsystems where possible.** PPG sampling during sync windows means you're not paying separate costs for sensing during communication. Similarly, use inference windows to refine sensor thresholds rather than running inference and sampling as independent tasks. This architecture requires careful scheduling but reduces total peak power draw.

* **Set a "congestion charge" when one subsystem exceeds its zone.** If inference runs long and NPU blocks radio transmission, implement a 30-second defer on non-critical sync. This teaches firmware to be opportunistic: send data when the device is already in a high-power state, sleep when it's not. This is messier to code than fixed budgets, but it's how real power systems work, and it often recovers 10–15% efficiency.

---

## Battery as the Primary Output: Inverting the Hierarchy

* **This is the most honest reframing your team could adopt.** What if the product is "7-day battery, with health monitoring features" rather than "health monitoring with 7-day battery"? This inverts everything: you design a power-efficient core (burst sensing, event-driven inference, minimal radio) and then ask what accuracy you can achieve within that envelope. The insight is liberating because it stops the team from chasing accuracy without bound and then panic-optimizing power afterward.

* **Pragmatically, this means: design for 8–10 days first, then add features.** Start with PPG-only arrhythmia detection (proven, low-power, clinically relevant). Measure your baseline runtime. You'll hit 8–9 days easily. Then layer in accelerometer, then temperature. Each addition trades runtime for capability; you control the trade-off explicitly. If the team adds microphone and hits 3 days, that's data—and you make a deliberate choice: ship without it, or accept a larger battery, or pivot the form factor.

* **This also clarifies regulatory risk.** If power is the constraint, not accuracy, you're designing a consumer wellness device with bounded capability—which is easier to ship and defend than an over-ambitious clinical tool that fails battery targets. Once you ship, you have 6+ months of real-world data, and you can then decide whether to pursue FDA 510(k) with that proven foundation. The pragmatist's path: ship a good 7-day device now, not a failed 14-day fantasy later.

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "01_power-budget-battery-architecture"
persona: "The First Principles Thinker"
---

# Topic Cluster 01: Power Budget & Battery Architecture - The First Principles Thinker

---

## Per-Subsystem Power Budget Decomposition

* **Summary.** Start with the irreducible minimum: what baseline power do PPG, accelerometer, and temperature sensors *need* to detect arrhythmias and sleep apnea? At its core, the 7-day constraint is mathematics, not magic. Allocate sensing perhaps 20%, always-on housekeeping 15%, NPU inference 35%, BLE 25%, display 5%. The hardest to compress? NPU inference—you cannot detect cardiac anomalies without signal processing. Before prototyping, run a bottom-up power model driven by sensor sampling rates and inference frequency, not wishful thinking. If a prototype delivers 4 days, the budget was fiction.

* **Summary.** The fundamental issue is that subsystems are not independent; they're coupled. Higher inference cadence demands more sensor data, requiring longer sensing windows and higher sampling rates. Instead of allocating fixed percentages, ask: what is the minimum duty cycle for detection accuracy? Run sensitivity analyses—cut sensing from 100% to 10% and see detection accuracy degrade. Plot the Pareto frontier of power vs. recall. The hardest to compress is usually the one providing the most diagnostic signal; if microphone data is critical for sleep apnea, you cannot shrink its budget without shrinking medical utility.

* **Summary.** Treat the 7-day budget as a constraint that forces design trade-offs, not a target to hit with margin. If display, BLE, and housekeeping claim 45% before NPU gets a slot, the device cannot run continuous inference. The hard truth: multi-signal anomaly detection and 7-day battery may be mutually incompatible at your target form factor. Test this assumption early with a single-sensor prototype (PPG only) to understand real-world power draw. This reveals whether the constraint is physics or engineering, and whether a fallback design (reduced inference cadence, fewer sensors) is actually viable.

---

## Inference Cadence vs. Detection Latency vs. Sensing Duty Cycle

* **Summary.** The fundamental question is: how quickly must you detect arrhythmia? If cardiac events evolve over minutes, 5-minute inference cadence is clinically acceptable and reduces NPU power by ~85% versus continuous inference. If events are episodic (brief arrhythmias), you might miss them at 5-minute intervals—then burst-and-sleep becomes essential. Quantify the *minimum* cadence empirically: run 24-hour clinical datasets at 30-second, 2-minute, and 5-minute intervals, measuring detection sensitivity and latency. Build the inference schedule around that number, not around power convenience.

* **Summary.** Sensing duty cycles must correlate with inference frequency. If you infer every 5 minutes, collect PPG at 100 Hz for 30 seconds before each inference, then sleep. Accelerometer and temperature can sample at 1 Hz during those windows to capture context without draining the battery. Microphone is the outlier—breathing-pattern detection requires longer windows or continuous sampling. The core trade-off: does the marginal diagnostic value of microphone-detected sleep apnea justify its 3-5x power cost? If not, drop it and rely on accelerometer-inferred sleep stage + SpO2 drops as a proxy.

* **Summary.** Latency is often overestimated in medical wearables. Most arrhythmias (AFib, SVT) last seconds to minutes; alerting the user 2-3 minutes after onset is still clinically useful. This reframing allows longer inference intervals (5-10 minutes) and burst-and-sleep schedules that dramatically reduce power. The medical requirement is not "detect within seconds" but "detect within a clinically actionable window and alert the user." Quantify that window with cardiologists, then design the inference schedule to fit within it, not around an arbitrary 30-second cadence.

---

## Microphone Power Cost and NPU/CPU Offload Boundary

* **Summary.** At its core, microphone power consumption reflects the fundamental cost of analog-to-digital conversion and signal buffering on a wrist form factor. Continuous microphone sampling (16 kHz, 16-bit) consumes 30-50 mW—more than PPG and accelerometer combined. Before defending its inclusion, quantify sleep apnea detection accuracy using *only* PPG + SpO2 drops and accelerometer-inferred REM sleep. If that combination achieves 85%+ sensitivity, microphone is a feature luxury, not a core diagnostic tool. The fallback design: drop microphone, accept slightly lower apnea sensitivity, and ship on time.

* **Summary.** The NPU/CPU offload boundary determines whether you can afford to sample microphone data at all. Continuous microphone → buffer in SRAM → process in CPU (high power) vs. buffer → stream to NPU (lower power due to dedicated hardware efficiency). If your NPU is not optimized for audio classification, offloading saves no power; the CPU must do the work anyway. Test this empirically: measure current draw with microphone data processed on CPU vs. NPU. If NPU is inefficient for audio, dropping microphone is the first-principles answer—the hardware cannot support it cost-effectively.

* **Summary.** Ask whether breathing-pattern detection is medically necessary or a marketing feature. PPG-derived SpO2 is the primary sleep apnea signal; breathing sounds are supplementary. If clinical validation shows that SpO2 drops + accelerometer (detecting apnea-induced arousals) achieve acceptable sensitivity without microphone, then microphone is pure cost with no medical return. The fundamental trade-off is clarity: a device optimized for cardiac arrhythmia detection with excellent power budget is more honest than a device that tries to do everything and achieves none of it well due to power starvation.

---

## Power Envelope as Municipal Zoning

* **Summary.** The municipal zoning analogy is powerful: instead of fixed subsystem budgets, implement dynamic power allocation responsive to device state. In sleep mode, reallocate display budget (near zero) to NPU inference frequency. During high activity (detected by accelerometer), reallocate to sensor sampling and BLE sync, reduce inference. Implement demand-responsive zoning: if recent PPG data shows high variance (possible arrhythmia), burst inference to every 30 seconds for the next 5 minutes, then return to baseline. This inverts the problem—the firmware adapts the power partition, not the hardware design.

* **Summary.** At its core, static power budgets assume a single use case (average user, average day), which real humans never match. Build a state machine: Resting (low-frequency inference, minimal display), Active (higher sampling, radio-friendly for data sync), Suspicious (burst inference and logging for later review), Sleep (reduced motion-triggered inference, maximize battery). Each state reallocates the power envelope across subsystems. Test this with real user data: does dynamic reallocation reduce 7-day power by 20-30% compared to static partitions? If so, the firmware design, not the hardware, is your bottleneck.

* **Summary.** Mixed-use density in zoning means overlapping functions—residential above commercial. Apply this: PPG and accelerometer data share a single 50 ms window; inference and display compete for the same processor core using time-slicing. Instead of dedicated buses and always-on subsystems, multiplex heavily. Just-in-time provisioning means spinning up subsystems only when needed: microphone wakes only if you detect potential sleep apnea from PPG. This requires sophisticated state management but yields 40-50% power savings. The trade-off is firmware complexity; the gain is that 7 days becomes achievable without compromising sensor count.

---

## Battery as the Primary Output

* **Summary.** Inverting the hierarchy is clarifying: optimize the entire system for power efficiency first, let accuracy be whatever it can be within that envelope. A 7-day battery at 100 mW average is the primary product; cardiac detection is the justification for why a consumer will wear it. This reframing eliminates fantasy budgets. Accept that continuous multi-sensor inference is impossible; design for intermittent inference (every 5-10 minutes). Accept that 85% sensitivity is the real-world limit for a power-constrained device, not 95%. Market honestly: "Detects arrhythmias within 5 minutes; battery lasts 7 days."

* **Summary.** If the 7-day battery is the product, the business model changes. Users expect to charge once per week, like a smartwatch, not daily like a phone. This constraint is actually an advantage: it commodifies your hardware and positions the IP as the on-device ML and the sync protocol, not the battery chemistry. Design for a 100 mW power budget (achievable with today's components), then load ML models and sensors into that envelope. A simpler device with 7-day battery outsells a complex device with 3-day battery because users tolerate the simplicity. The insight: power budget is not a tax on features; it is the floor that enables reliability.

* **Summary.** The team currently frames power as a constraint that reduces accuracy. Invert it: power efficiency *is* accuracy because false positives and missed detections increase if the device crashes from battery drain. A device that reaches 3 days and forces the user to charge is clinically unreliable (high false negatives due to gap in monitoring). A device that consistently reaches 7 days with steady inference is reliable even at lower raw sensitivity. From a medical perspective, consistent lower sensitivity over 7 days beats inconsistent high sensitivity over 3 days followed by a gap.

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "01_power-budget-battery-architecture"
persona: "The Technical Expert"
---

# Topic Cluster 01: Power Budget & Battery Architecture - The Technical Expert

---

## Per-Subsystem Power Budget Decomposition

* **Bottom-up reverse engineering.** From a technical perspective, start with subsystem measurements on your silicon, not industry targets. Run your specific NPU in continuous inference mode, measure BLE current at your sync interval, and test PPG/accelerometer/temp sensor combinations in actual device firmware. Industry rules of thumb (e.g., "MCU gets 5%") often fail for health devices because clinical-grade sensors dominate. Build a spreadsheet that allocates roughly: sensing 40–50% (PPG + accelerometer burst cycling, microphone if included), NPU inference 25–30%, BLE/radio 15–20%, display and housekeeping 5–10%. When your first prototype delivers 4 days instead of 7, you'll have a diagnostic trace showing which subsystem overran — that's gold.

* **Microphone as the budget killer — drop it early if needed.** The microphone for breathing pattern detection is likely your most power-expensive sensor, often drawing 5–15 mA continuously. A viable approach is to treat it as optional: ship without microphone first, prove arrhythmia detection works via PPG + accelerometer alone, then evaluate whether the sleep apnea signal truly justifies a second hardware revision. This removes a major variable from your thermal and power budget and buys you runway to nail the core use case.

* **Duty-cycle design drives everything.** The real lever isn't reducing per-sample power; it's compressing how much time each subsystem is awake. Model a detailed duty cycle: PPG burst every 5 minutes for 10 seconds, accelerometer piggy-backing on PPG windows, NPU running inference only on buffered data in low-power mode. Assume worst-case: a user having frequent premature beats triggering inference every 30 seconds for an hour. A bottom-up budget forces you to quantify this and confirm it doesn't exceed thermal limits or drain the battery in 24 hours under pathological usage.

* **Worst-case scenario planning.** A clinical device must survive worst-case days: a user in afib with heart rate 120+ for 8 hours straight, triggering continuous inference and frequent BLE sync to log events. Architect your budget to survive two or three of those days at full capacity without dropping below 20% battery — otherwise your clinical liability exposure spikes.

---

## Inference Cadence vs. Detection Latency vs. Sensing Duty Cycle

* **Quantify the miss rate empirically, not by intuition.** A viable approach is to run your trained model offline against representative PPG data (historical patient records or synthetic stress tests) at different inference intervals: every 30 seconds, every 2 minutes, every 5 minutes. Measure how many clinically significant arrhythmias you would catch if you only ran inference at each cadence. From a technical perspective, you likely need at least one inference every 2–3 minutes to catch isolated ectopic events; missing a full minute of sustained afib is medically unacceptable, so cadence around 1–2 minutes is probably non-negotiable unless your model has per-sample anomaly detection (more complex, higher inference cost).

* **Burst sequencing for multi-sensor correlation.** Rather than sampling every sensor independently, architect a "sensing burst" that fires every 5 minutes: PPG at 100 Hz for 15 seconds, accelerometer at 50 Hz during the same window, temperature every 5 seconds, microphone (if included) during the last 10 seconds. This preserves the ability to correlate movement artifacts with PPG spikes while keeping sensors mostly asleep. Between bursts, the device can drift into near-zero-power standby. The tradeoff is latency: you'll detect events only at burst boundaries, roughly 2–3 minute worst case.

* **Adaptive cadence logic.** A more sophisticated design uses a two-tier inference strategy: a lightweight anomaly detector runs continuously (or at 30-second intervals) on cached PPG samples, and when it detects a possible event, it triggers higher-fidelity inference using all sensors. This shifts the power cost from continuous high-fidelity processing to intermittent full inference, but requires careful tuning to avoid missing genuine events while not over-triggering.

* **Latency as a design constraint.** If a clinically significant arrhythmia detected by the device must trigger an alert within 2 minutes (not 5 minutes), that directly constrains your inference cadence and duty cycle. Make this explicit in your requirements: "Inference cadence must be no longer than 90 seconds to achieve 2-minute alert latency." This moves the conversation from "we'll detect stuff eventually" to "we've committed to a specific responsiveness window."

---

## Microphone Power Cost and NPU/CPU Offload Boundary

* **Breathing pattern detection has weak clinical value relative to cost.** From a technical perspective, breath-sound analysis for sleep apnea is notoriously noisy on a wrist device — you're picking up arm movement, rustling, ambient noise — and requires sophisticated filtering and model training. A PPG + accelerometer + temperature combination already captures most sleep apnea signals (oxygen dips, micro-arousals visible in movement patterns). Unless you have evidence that microphone adds 15%+ detection accuracy for sleep apnea events over the PPG+accel baseline, it's likely not worth the power penalty. Test this hypothesis empirically: train two models, one with microphone data and one without, on your target population and measure the accuracy delta. If it's marginal (<5%), drop the microphone.

* **Offload boundary: NPU for inference, CPU for housekeeping.** A viable approach is to use the dedicated NPU for running your main arrhythmia detection model (inference is fixed-latency and power-efficient there) and the MCU/CPU for data buffering, sensor I/O coordination, and BLE communication. Keep the model quantized (INT8 or binary weights) so it runs in the NPU's native low-power mode. This minimizes peak current draw and lets you choose a battery chemistry optimized for steady-state load rather than burst current.

* **Fallback design: PPG + accelerometer only.** If you must drop microphone to hit battery targets, your fallback is to rely on PPG for heart-rate events and accelerometer for movement/sleep staging. This still covers the primary use case (arrhythmia detection) and most of the secondary use case (sleep apnea has a proxy in accel micro-arousals). Validate this fallback design against your clinical requirements before committing to launch; it's an early decision that ripples through firmware architecture and ML model selection.

* **Thermal envelope also matters.** Even if the microphone's average power is acceptable, its peak current (often 10+ mA when active) might trigger thermal throttling or battery protection cutoff if triggered simultaneously with NPU inference and BLE transmit. Model the current draw timeline: when microphone is active, is your NPU also running? When does BLE transmit relative to sensor bursts? Peak current determines battery chemistry and PCB layout requirements.

---

## Power Envelope as Municipal Zoning: Dynamic Reallocation

* **Just-in-time provisioning translates to context-aware sensing.** From a technical perspective, "just-in-time" in a power budget means: don't sample the microphone or high-frequency PPG unless the device has detected activity or irregular patterns warranting closer inspection. Sketch a state machine: "normal sleep" (minimal sensing), "elevated heart rate or movement detected" (increase PPG sampling and turn on accel), "possible event flagged by lightweight detector" (full inference with all sensors). This is more sophisticated than fixed allocations but yields 2–3x battery life extension by reserving high-power modes for when they're actually needed.

* **Demand-responsive zoning for adaptive sampling.** Apply the city-planning principle of mixed-use density: cluster high-demand subsystems (inference + radio) into short windows when usage patterns naturally concentrate. If your users tend to sync data in the morning and evening (app opens, BLE active), schedule inference clustering during those times and relax sensing in sleep hours. This requires learning user behavior patterns, but the power savings are substantial: you're not distributing the radio overhead uniformly; you're stacking it intelligently.

* **Elastic subsystem budgets instead of fixed silos.** Rather than "NPU always gets 30%," design firmware that can reallocate: if a user is in low-activity sleep mode, redirect "NPU budget" to longer-duration PPG sampling for sensitivity. If a user is exercising and you're seeing high motion artifacts, reduce PPG frequency and reallocate to accel-based filtering. This requires a firmware architecture where subsystems bid for power allocation at runtime, not a hardcoded static partition.

* **Over-provisioning the radio for clinical safety.** One zone you shouldn't compress is BLE transmission of critical alerts. If the device detects a genuine cardiac event, it must reliably transmit to the companion phone within seconds, even if that momentarily exceeds your nominal power budget. Architect for this: ensure the radio budget includes headroom for emergency alerts and design the battery curve to handle sustained high-sync periods without dropping below functional voltage.

---

## Battery as the Primary Output: Inverting the Optimization

* **Reframe the product: "7-day durability device" with health monitoring as proof of utility.** What if you started with a 7-day battery envelope and asked, "What's the maximum clinical utility we can extract from this power budget?" This is a fundamentally different mindset from "we want detection accuracy X; what battery size do we need?" Instead, you'd design the smallest, lowest-power device possible, commit to a fixed power envelope, and then optimize your ML model and sensing strategy to maximize detection accuracy within that constraint. The result: a device that actually hits 7 days reliably because that was the anchor, not a hopeful target.

* **Design implies a different sensor stack.** Inverting the optimization might mean abandoning the microphone entirely (it's a power parasite for the clinical value it adds), simplifying the accelerometer to a 3-axis device rather than a 9-axis IMU, and tuning the PPG sampling to the minimum frequency that catches arrhythmias (e.g., 25 Hz instead of 100 Hz). You'd accept that your device catches maybe 85% of events instead of 95%, but it's 7 days and it's an order of magnitude more reliable than competitors claiming 5 days.

* **Model optimization becomes creative constraint.** With a fixed power budget, you might adopt a novel approach: instead of a large neural network running at 1 Hz, you train a lightweight ensemble of smaller models that run at different cadences, each optimized for a specific arrhythmia pattern. This distributes the inference load and lets you turn off unnecessary models during known low-risk periods (e.g., during sleep when heart rate is stable). The architectural simplicity might paradoxically improve reliability.

* **Marketing and liability flip.** A device with honest, achievable battery claims and straightforward detection logic (PPG + temperature + accelerometer) is actually lower-liability than one promising "clinical-grade detection with AI" on a battery that barely survives 3 days in real usage. Customers who buy a device marketed as "7-day durability with health insights" will tolerate occasional false negatives; customers burned by optimistic marketing claims and disappointing battery life will sue. The technical choice directly shapes your legal exposure.

* **Rare but valuable insight: you're hardware-constrained, not software-constrained.** Once you've committed to the 7-day power envelope, the dominant variables are chip selection (which MCU, which NPU, which sensor ICs), battery chemistry, and firmware architecture — not model accuracy or algorithmic cleverness. Spend engineering effort on hardware co-design (working with your component suppliers to tune current draw) rather than trying to squeeze one more percentage point from your model. This suggests shifting your team's focus from ML optimization to hardware validation and thermal design.

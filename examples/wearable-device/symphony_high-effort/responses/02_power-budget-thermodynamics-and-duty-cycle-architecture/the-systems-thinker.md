---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_power-budget-thermodynamics-and-duty-cycle-architecture"
persona: "The Systems Thinker"
---

# Power Budget, Thermodynamics, and Duty-Cycle Architecture - The Systems Thinker

---

## Q1: Battery as Keystone Constraint and Zero-Based Budget

* **Summary.** The 7-day target functions as a **keystone feature** that cascades through every architectural decision. A zero-based budget (working backward from 500 mAh over 7 days ≈ 3 mW average) reveals that continuous full-resolution sensing on all four channels is likely infeasible; radio and always-on PPG sensing dominate power draw, not computation. This creates a **reinforcing-cycle trap**: if the team optimizes inference efficiency without simultaneously gating which data enters the pipeline, they're optimizing the wrong bottleneck. The unintended consequence is that pursuit of "continuous monitoring" within a 7-day envelope forces event-driven architecture by physics, not choice — which paradoxically might feel like a limitation but actually enables a more clinically defensible device (you know what triggered alerts, not inference on ambient noise).

* **Alternative framing.** Don't defend 7 days as a feature — validate it as a constraint. Run a customer discovery sprint (1 week, 10 interviews) asking "would you recharge every 3 days if accuracy improved 20%?" versus "how would you feel if the device skipped monitoring during sleep?" The answer reshapes the entire power budget. If users care most about daytime arrhythmia detection, sleep-mode power cuts demand by 40%; that single behavioral insight reframes the budget conversation from "we're over by 30%" to "we're on track."

* **Zero-based budget mechanics.** Start with total available joules (500 mAh × 3.7 V ≈ 7 kJ). Subtract radio (likely 5-6 kJ for daily syncs). Subtract display (minimal wearables, so ~500 J). That leaves ~1 kJ for sensing and inference combined. PPG at 1 kHz continuous = ~200 J/day; accelerometer continuous = ~50 J/day. You've spent 250 J on sensing data you may not analyze. Question: what if PPG only sampled during presumed wake hours, or only when accelerometer detects stillness (sleep apnea risk window)? That gating decision is worth 100+ J/day — far more impact than optimizing inference by 20%.

* **Physical validation gap.** The team should run a dead-battery test: instrument an existing NPU dev board with the actual sensor suite, run continuous inference for 7 days in the lab, and measure power vs. model. If they haven't done this, the 7-day target is aspirational, not architected. If they have and discovered it's infeasible, the feedback loop should trigger: either shrink the feature scope (fewer sensors, lower inference frequency), increase battery size (clinical watch form factor tolerates 10 W·h), or challenge the 7-day assumption.

---

## Q2: Thermodynamic Lower Bound on Inference and Analog Gating

* **Summary.** Landauer's principle sets a theoretical floor: roughly k_B × T × ln(2) ≈ 3 × 10^−21 joules per bit of irreversible computation at room temperature. For arrhythmia detection, even a simple 1-bit decision (anomaly vs. normal) on a 1-second window of data requires extracting signal information, and empirical NPUs operate 10^12+ times above this bound. The **real leverage point** isn't closing that gap (physics won't allow it); it's recognizing that **coarse analog preprocessing can eliminate 80%+ of inference workload**. A simple comparator watching R-R interval variance — analog, ~1 μW — can gate the NPU to fire only on irregular heartbeats, avoiding inference on the 99% of beats that are normal. This is a **"Shifting the Burden" trap waiting to happen**: if you rely on low-power inference everywhere, you're paying 10 μW to confirm what a 1 μW analog circuit could have ruled out, and the burden of power consumption stays distributed across the whole beat stream instead of concentrated on anomalies.

* **Analog gating architecture.** Design a simple R-R interval regulator: two ADC samples of PPG, compute beat-to-beat interval in firmware (~100 μJ), compare against a windowed baseline using a comparator circuit (0.5 μW continuous). When variance exceeds threshold, pulse the NPU. This single decision gate reduces NPU on-time by 95%+ (assuming 3% arrhythmia prevalence). The second-order effect: now the model can afford to run at higher precision (quantized int16 instead of int8) on truly anomalous beats, recovering accuracy lost to extreme quantization.

* **Pragmatic hybrid.** Implement a three-tier hierarchy: (1) analog R-R comparator gates (1 μW). (2) If comparator triggers, run a lightweight signal-processing check (is this noise or real rhythm change?) in firmware (100 μJ). (3) Only on confirmed rhythm events, invoke the NPU for final classification (3 mJ per inference). With 3% event prevalence, this cuts NPU duty cycle to <0.1%, freeing power budget for higher-resolution models or longer battery life.

---

## Q3: Forced Simplicity as a Feature

* **Summary.** Continuous monitoring creates a **self-amplifying anxiety dynamic**: the more data the device generates, the more alerts it sends, the more the user checks notifications, the more they become dependent on the device to tell them they're okay. Over time, this erodes the user's own proprioceptive awareness of their heartbeat and breathing — they stop noticing their own body and start noticing the device. Intermittent or event-triggered sensing reframes the device from "surveillance watcher" to "attentive coach": it only demands attention when something is genuinely unusual, which paradoxically feels less surveillance-like and more clinically credible. When an alert arrives once a week instead of twice a day, the user takes it seriously.

* **User experience consequence.** A device that checks for arrhythmias every 10 minutes during waking hours (not continuously) feels intentional: "the device is checking on me at scheduled moments." A device with notifications arriving at random times feels like surveillance. The design implication: batch inference into visible windows (9 AM, noon, 3 PM, 6 PM) rather than streaming. Users can feel the rhythm of the device; that periodicity is actually reassuring.

* **Clinical acceptance lever.** FDA guidance on surveillance devices is skeptical of continuous monitoring (false positive burden on patients). Intermittent event-triggered monitoring is easier to defend in a 510(k) submission: "the device monitors only during high-risk states (exercise, sleep) and only flags confirmed anomalies," versus "continuous inference on all beats with statistical scoring." Simplicity becomes a regulatory asset, not a compromise.

---

## Q4: Stage Management and Firmware Power Choreography

* **Summary.** The wearable's power budget is a **resource contention problem** where sensing, inference, Bluetooth, and display compete for a fixed energy allocation. A stage manager solves this by pre-computing cue sequences: lighting, sound, and actor movements never collide at peak draw. Apply the same principle to firmware: define **power-mode "scenes"** based on physiological context (sleep, sedentary, exercise) and pre-assign which subsystems run in each mode. When the device detects sleep onset (accelerometer + heart rate stability), it shifts to Sleep Mode: PPG samples only every 30 seconds (breathing pattern detection), no Bluetooth, no display. When exercise starts (sustained high heart rate + acceleration), it shifts to Activity Mode: PPG 1 Hz + continuous inference + optional display updates. This **eliminates resource-contention peaks** by moving the decision boundary from runtime (competing tasks) to design time (pre-allocated scenes).

* **Physiological trigger signals.** Heart rate variability (HRV) computed locally can act as a "cue light" for mode transitions: high HRV = relaxed state (reduce inference frequency to 1 Hz); low HRV = stressed/exercising (increase to 10 Hz). Accelerometer jerk (third derivative of position) detects motion onset. Skin temperature circadian drift hints at sleep phase. These are **low-cost feedback sensors** (computed from existing data, 1 μJ each) that orchestrate high-cost decisions (inference frequency, Bluetooth sync timing), creating a self-adapting power choreography.

* **Graceful degradation rules.** Encode rules like: "if battery drops below 20%, reduce inference frequency by 50% and defer non-urgent Bluetooth syncs." This is a **built-in stabilizer**: as power dwindles, the device voluntarily scales down feature use, preventing sudden shutdown and extending perceived battery life. Users experience a smooth "device is now in power-save mode" rather than a cliff edge where the device dies.

* **Practical implementation.** Write a firmware state-machine spec (5 modes: Sleep, Sedentary, Exercise, Critical Alert, LowBattery) with explicit power budgets for each mode and transition rules. Simulate this on the actual hardware for 7 days with synthetic physiological data before deployment. This catches the cascading failures that arise when the state machine was designed in isolation: e.g., "we forgot that Sleep Mode still does daily syncs at midnight, which drains 30% of the night's budget."

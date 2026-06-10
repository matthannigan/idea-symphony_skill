---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_power-budget-thermodynamics-and-duty-cycle-architecture"
persona: "The Technical Expert"
---

# Power Budget, Thermodynamics, and Duty-Cycle Architecture - The Technical Expert

---

## Q1: Battery as Keystone Constraint and Zero-Based Budget

### Response 1.1: Implementation Reality Check
From a technical perspective, 7 days with continuous PPG, accelerometry, temperature, and microphone is aspirational without accepting severe compromises. Real-world wearable deployments show PPG (the hungriest sensor at 10-30 mW continuous) paired with always-on ML can burn 150-250 mWh/day. A 500-600 mWh battery gets you 2-4 days realistically. The team needs to validate this path urgently: either move to event-triggered PPG (fire only on anomalous movement or time windows), accept 3-day battery with higher charge friction, or constrain the continuous sensors to accelerometry + temperature, using PPG intermittently. A zero-based audit of actual component datasheets against a known-good reference device is the first step—guessing kills schedules.

### Response 1.2: Radio Dominates; Sensing Second
The mathematics are brutal: Bluetooth LE typically consumes 50-100 mW while active, and even with aggressive connection intervals, sync operations can steal 20-30 mWh/day. PPG hardware draws 10-25 mW sustained. The MCU itself running inference might add only 5-15 mW (duty-cycled). So the real budget allocation is roughly: 40% radio, 35% sensing (PPG), 15% inference, 10% everything else. If 7 days is non-negotiable, the tightest constraint is likely BLE sync cadence and PPG duty cycle. A viable approach: sync only aggregated alerts once daily plus on-demand manual checks, and drop PPG to 5-minute windows around detected anomalies. This shifts the architecture from monitoring to anomaly response.

### Response 1.3: Reframe the Constraint Question
Rather than asking whether continuous monitoring is achievable in 7 days (answer: probably not at claimed fidelity), ask what fidelity users actually need. Users at cardiac risk may accept overnight-only continuous monitoring (8 hours, dramatically lower power) with responsive daytime event detection. This isn't a technical limitation—it's a product design lever. Three days with better coverage during high-risk periods might outperform 7 days of intermittent, weak signals. The team should A/B test user acceptance of 3-day recharge vs. 7-day convenience before locking the battery spec.

### Response 1.4: Validated Prototype Required
I would not commit to 7-day battery without a breadboard prototype running actual sensors and inference on the target NPU. Datasheets are aspirational; silicon is truth. Build a reference implementation with commodity hardware (e.g., Cortex-M4 + ARM Helios NPU, or Qualcomm Snapdragon Wear), measure end-to-end power at 1-second granularity, and stress-test it under realistic use (user movement, temperature variation). If it fails to hit 5 days, the team has 6-12 months of hardware iteration ahead—this must be known before final ASIC selection.

---

## Q2: Thermodynamic Lower Bound and Analog Gating

### Response 2.1: Theory Meets Practice Gap
Theoretically, Landauer's principle says irreversible computation costs ~k_B * T * ln(2) joules per bit erased (about 3e-21 J at room temperature). For arrhythmia detection, if you need to distinguish ~5 decision classes (normal, atrial fibrillation, premature contraction, bradycardia, artifact), that's roughly 2-3 bits of entropy. The thermodynamic minimum is picojoules per inference—we are nowhere near this. Real NPUs operate at microjoules per inference (millions of times the minimum), revealing that the gap is not a fundamental physics limit but die area, leakage, memory bandwidth, and algorithmic redundancy. Current NPUs are fundamentally inefficient for this problem; moving to dedicated analog ASICs might reclaim 10-50x if the problem can be expressed as simple threshold comparisons.

### Response 2.2: Analog Preprocessing as Gating
A classical approach: deploy a simple analog bandpass filter + peak detector on the ECG/PPG raw signal to identify regular R-R intervals. If the interval variance exceeds a threshold (classical sign of arrhythmia), fire the NPU for a full inference window. Otherwise, sleep the NPU entirely. This can reduce inference firing by 80-95% in healthy individuals, saving most of the inference energy budget. The challenge: tuning the threshold to avoid false negatives (missing real arrhythmias) without triggering false positives (draining battery on noise). A hybrid approach is viable: run low-power feature extraction in analog/digital hardware (R-R regularity, respiration rate variability) continuously, and gate the heavy ML model firing to anomalous segments only.

### Response 2.3: Shannon Entropy as Architecture Boundary
The decision entropy approach is useful: if arrhythmias occur in 2-5% of the user-hours monitored, then 97% of inferences return "normal"—they are low-information. From a Shannon perspective, you're transmitting mostly redundant bits. A Huffman-coding analogy suggests spending energy only on the minority case: develop a fast binary classifier (normal vs. anomalous) that is cheap to run continuously, then route flagged segments to the full model. This is event-triggered inference by design. The breakeven point: a 10x cheaper binary classifier can run continuously and still save energy overall if it reduces full-model firing by >90%. This frames the optimization problem clearly for the ML team.

### Response 2.4: Feasibility Prototype for Analog Gating
Before committing to analog preprocessing, run a software simulation: log a week of real patient ECG/PPG data, apply your proposed analog thresholds in post-processing, and measure how many true positives and false negatives you miss. If you lose >1% of real anomalies to gating error, the liability is unacceptable for a health device. If you miss <0.5%, the energy savings are worth the added analog circuit complexity. This experiment takes 2-3 weeks and is essential before hardware design freezes.

---

## Q3: Forced Simplicity as Feature

### Response 3.1: Event-Triggered Sensing Reframes the User Experience
From a technical perspective, intermittent sensing isn't a limitation—it's a design anchor point. Instead of a passive 24/7 surveillance device, you're building a responsive health system that checks in intelligently. The UX shifts from "always watching" (anxiety-inducing) to "attentive when it matters" (empowering). Technically, you fire the full sensor stack only on detected motion/stress signatures or user-initiated checks. This means the device is quiet most of the time, battery lasts longer, and each inference moment feels intentional. This approach also reduces false alerts by concentrating attention on physiologically active periods when real anomalies are more likely.

### Response 3.2: Constrained Sensing Enables Simpler Models
Smaller input data streams (from intermittent sensing) require smaller, more interpretable models. You might train a lightweight 100KB model on 5-minute event windows instead of a bloated 2MB model trying to parse 24 hours of streaming data. Smaller models train faster, consume less inference energy, and are easier to debug for false positives—critical for medical liability. The technical win: you trade always-on coverage for algorithmic simplicity, making the detection logic transparent enough for regulatory review (FDA will ask "how does your model decide?").

### Response 3.3: Lower Data Sync Burden
Fewer sensors running fewer hours = far less data leaving the device, which means lighter BLE sync, lower power consumption, and simpler privacy guarantees. You're not streaming raw PPG data even intermittently; you're capturing events contextually. From a backend architecture view, this eliminates the need for server-side ML retraining pipelines (since you're not collecting high-volume training data), reducing operational complexity and cost. The technical simplicity cascades through the whole stack.

---

## Q4: Stage Management and Power Allocation Choreography

### Response 4.1: Context-Aware Power States and Cue Transitions
Stage management principles map directly to firmware scheduling. Define discrete device states: Sleeping (low-power background monitoring only), Active (elevated sampling during detected activity), Night-Watch (continuous PPG during detected sleep, since sleep apnea risk is highest then), and Manual-Check (user-initiated burst). Accelerometer detects transitions (stillness → active → stillness). Sleep phase detection (via motion patterns and skin temperature) gates night-watch behavior. The firmware reserves inference windows: e.g., allocate 500 mWh to "night mode" inference, 150 mWh to "exercise detection," 100 mWh to "manual checks." When one cue (e.g., night inference) approaches budget exhaustion, gracefully degrade to threshold-only monitoring. This is choreography: no two power-hungry cues run simultaneously.

### Response 4.2: Physiological Signals as Scheduling Input
Use features like heart rate variability (HRV) to infer stress and autonomic state, temperature trends to detect infection, and motion patterns to recognize sleep/exercise. These become scheduler inputs: elevated HRV + low temperature → increase monitoring intensity. During intense exercise, the device knows baseline heart rate is elevated, so it adjusts anomaly thresholds dynamically (fewer false alerts). During sleep, shift from accelerometer-gated to continuous low-power PPG. This is data-driven cue triggering. The technical implementation: a lightweight Bayesian state estimator (~5KB code) runs every minute, categorizing the user's physiological context, then the scheduler adjusts the next hour's power allocations accordingly. This is far more efficient than fixed always-on strategies.

### Response 4.3: Graceful Degradation Under Budget Pressure
Define fallback modes: if battery drops below 20%, disable BLE sync except on-demand and shift to threshold-only anomaly detection (no ML inference, just simple signal bounds checking). If battery hits 10%, disable display entirely and use haptic feedback only. If a particular inference routine runs overtime (e.g., edge case that taxes the NPU), queue it for the next low-power window rather than stalling the main loop. This requires architecting the firmware with time budgets and interrupt priorities from day one. The alternative is crashes or lockups mid-measurement—unacceptable for a health device. Stage managers call an audible when a cue runs long; firmware must do the same.

### Response 4.4: Empirical Validation Through Simulation
Build a power model in simulation: define the state machine, assign empirically measured power costs to each state transition and sensor operation, and run synthetic user profiles (8-hour sleep, 2-hour exercise, 14 hours mixed activity) to predict battery lifetime. Test edge cases: a user who sleeps at irregular times, or runs for 3 hours straight. Does the firmware handle these gracefully, or does budget exhaustion crash the device? This simulation should run 1000s of synthetic user-days and report worst-case, median, and best-case battery lifetime. If worst-case is below 5 days, the power budget is under-provisioned before you write a single line of real firmware.

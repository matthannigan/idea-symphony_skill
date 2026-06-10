---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_power-budget-thermodynamics-and-duty-cycle-architecture"
persona: "The Devil's Advocate"
---

# Power Budget, Thermodynamics, and Duty-Cycle Architecture - The Devil's Advocate

---

## Q1: Battery as Keystone Constraint and Zero-Based Budget

**Summary.** The 7-day battery target is unstated: does it encode a market assumption, or have you validated it against physics and user tolerance? Without a zero-based energy audit from battery capacity backward, you risk building a system that misses this constraint entirely.

**Response 1A: Physics-First Audit Gap**

Have you independently computed a zero-based energy budget from the battery capacity (mWh) downward, allocating mWh/day to each subsystem—PPG, accelerometer, temperature, microphone, MCU, NPU, display, and BLE—and cross-checked those numbers against published datasheets? One potential challenge: teams often inherit component power budgets from spec sheets without validating them in realistic duty cycles. You might address this by building a hardware breadboard that measures actual current draw across all subsystems under real sensor loads and inference patterns, then comparing measured vs. spec'd numbers; spec sheets often assume ideal conditions. The gap will tell you whether power is a hardware problem, a firmware inefficiency, or an unrealistic goal.

**Response 1B: The 7-Day Assumption Under Fire**

The 7-day target was likely chosen for market convenience, not clinical necessity—but have you validated that this is what users actually want versus what they'd tolerate? One challenge: users might accept 3 days if they got far better detection accuracy, or prefer weekly recharging if it meant simpler wear (fewer alerts, less proprietary charger friction). You could mitigate this by running a small user study (n=20–30) where you present battery-life vs. accuracy tradeoffs: "Would you accept 3 days for 10% higher detection sensitivity, or prefer 7 days with 5% false positives?" That data would either validate the 7-day target or reveal flexibility. A second risk: competitive pressure or investor expectations may have locked in the number without user voice.

**Response 1C: Continuous Sensing Feasibility Unchecked**

The question about "continuous PPG, accelerometry, temperature, microphone plus on-device ML" is critical, but your team may not have stressed-tested it on available hardware. Have you actually bought an NPU dev board (e.g., Cortex-M7 + Qualcomm Hexagon, or STM32H7 + TensorFlow Lite), integrated all four sensor streams, and measured total power draw under a realistic duty cycle (8-hour sleep, 16-hour awake)? One risk: the NPU datasheet may rate power at nominal clock speed, but running 24/7 at that speed over a week will generate thermal drift or silicon degradation. You might address this by running a two-week continuous stress test on prototype hardware in a temperature chamber (15–35°C ambient), measuring power draw, thermal rise, and inference accuracy over time; if accuracy degrades or power creeps up due to thermal compensation, the 7-day budget collapses.

**Response 1D: The User Acceptance Wild Card**

Underlying all of this is an even harder question: would users actually *wear* a device for 7 days without charging, or is that a theoretical market claim? One potential challenge is that "7-day battery" becomes marketing copy faster than real users validate it, especially if the device is thinner or lighter than competitors, but requires nightly charging anyway (contradicting the claim). You might mitigate this by defining "7 days" operationally upfront—e.g., "7 days of typical health-conscious adult wear (8 hours sleep, 8 hours desk work, 8 hours active)," and testing with real users over two to three wear cycles, measuring actual charge depletion and whether users adapt to the rhythm or abandon it if it interrupts their lifestyle (e.g., forcing a charge before a flight).

---

## Q2: Thermodynamic Lower Bound and Analog Gating

**Summary.** You're likely running NPU inference far above its thermodynamic minimum, and may be blind to where simple analog signal processing (R-R interval gating, PPG amplitude thresholding) could eliminate the majority of unnecessary inference.

**Response 2A: NPU Efficiency Gap Unknown**

Have you calculated the theoretical minimum energy per inference—from Shannon entropy of the arrhythmia classification task—and compared it to your NPU's actual energy per inference? One challenge: most teams don't perform this analysis and end up tuning hyperparameters (batch size, precision, frequency) without understanding the fundamental efficiency ceiling. You might address this by computing the decision entropy (bits required to distinguish normal rhythm from arrhythmia, accounting for prevalence) and the Landauer limit (~0.3 fJ/bit at room temperature), then reverse-engineering the target NPU energy per inference; if your hardware is 1,000× above the limit, that's a hardware/architecture problem; if 10×, that's a firmware/model-optimization opportunity. Knowing which gap you're in changes your roadmap.

**Response 2B: Analog Gating Could Eliminate 80% of Inference**

The deeper risk is that you're gate-keeping nothing before the NPU fires. Have you implemented a classical analog comparator or simple digital threshold on PPG regularity or R-R interval variability that triggers the NPU only when irregular beats are detected? One potential challenge: a naive threshold (e.g., "alert if two consecutive R-R intervals differ by >10%") will miss subtle arrhythmias while triggering on normal sinus arrhythmia. You could mitigate this by designing a two-tier gate: (1) analog threshold that rejects obviously-normal rhythms (99% of the time), and (2) NPU inference only for edge cases; this buys you back 80% of inference energy. Test this by collecting a labeled dataset of PPG signals from your target population, running offline analysis to see what fraction would be rejected by your analog gate without missing annotated arrhythmias. If the gate misses <1% of events and triggers <10% false positives, you've found a major power win with minimal accuracy cost.

**Response 2C: The Analog Signal Chain Brittleness**

One shadow risk: analog thresholds are temperature-sensitive, component-tolerant, and hard to update after manufacturing. If your PPG sensor's baseline drifts with skin temperature or sensor aging, your analog gate may silently fail—either flooding the NPU with false positives or missing real arrhythmias. You might address this by designing analog thresholds with hysteresis bands (not fixed points), and including a periodic re-calibration routine (e.g., daily during sleep, when baseline is stable) that adjusts the threshold based on recent signal statistics. Alternatively, push the "coarse gate" into firmware—compute R-R intervals in software, and only invoke the NPU model when the digital heuristic detects irregularity; you lose some analog elegance but gain updateability.

**Response 2D: Energy Accounting Asymmetry**

There's a subtle trap here: your energy accounting may be hiding where inference actually dominates. If sensing (PPG at 100 Hz, accelerometer, temperature) is 50% of power and inference is 10%, then optimizing inference won't fix the 7-day budget—you need to reduce sensing frequency or duty cycle instead. One challenge is that teams often optimize the "sexy" part (model efficiency) without questioning whether the sensing architecture itself is economical. You might address this by building a detailed power trace for a 24-hour simulation: measure or estimate current draw for each subsystem in 1-minute windows, then sum; plot a stacked histogram showing PPG, accel, MCU, BLE, inference, and sleep modes. This will immediately show whether your energy problem is inference, sensing, or communication, and prevent false optimization targets.

---

## Q3: Forced Simplicity as a Feature

**Summary.** Intermittent sensing is often sold as "user-friendly" but carries hidden risks: false reassurance during gaps, user confusion about what "always watching" means, and the assumption that users prefer detachment over transparency.

**Response 3A: The False-Reassurance Trap**

Have you considered that *intermittent* monitoring might create a false sense of security—users assume the device is watching, but gaps in sensing could miss a real event? One potential challenge: if you advertise "event-triggered inference," users may trust that the device caught their arrhythmia yesterday, but if the trigger threshold was too high and the device was in a power-saving mode, it silently missed the event. No alert doesn't mean "healthy"; it means "not flagged." You might address this by clearly documenting in the app what "event-triggered" means: "The device flags unusual rhythms it detects during active monitoring; when the device is in low-power mode, some subtle events may not be detected. If you feel symptoms, manually trigger a full scan." This shifts the burden back to the user but makes the contract explicit. Alternatively, allow users to opt into "continuous monitoring" mode for high-risk periods (e.g., during symptomatic episodes) even if it halves battery life.

**Response 3B: User Mental Model Mismatch**

The framing "less surveillance-like, more attentive" assumes users want *less* monitoring, but health-conscious adults 40+ with a family history of cardiac events likely want *more* assurance, not less. One challenge: "intentionally attentive" (intermittent monitoring) may feel to users like the device is sleeping on the job, especially if they're paying for it because they're worried. You might mitigate this by building a transparency dashboard: "The device scanned your rhythm 847 times today, flagged 3 instances, and ruled out arrhythmia 844 times. Your risk is low." This reframes intermittent monitoring as "efficient triage" rather than "sometimes watching." You could also allow power-mode selection: users with higher symptom burden get continuous monitoring; asymptomatic users get event-triggered; the device adapts based on user input or symptom logs.

**Response 3C: Engineering Simplicity ≠ User Simplicity**

"Intermittent sensing feels less surveillance-like" is true for the *device*, but not for the *user experience*. One potential challenge is that event-triggered monitoring introduces latency and uncertainty: the user doesn't know if a missed alert is because of no anomaly or because the device was in a low-power state. They may become anxious, checking the app constantly, defeating the battery win. You might address this by adding periodic "reassurance pings"—e.g., every 4 hours, the device runs a full scan and confirms "no anomalies detected since last alert"; this costs power but buys user confidence. Or implement a compromise: continuous PPG sensing (low power with duty-cycling), but inference only on detected irregularity; sensing is cheap, inference is expensive.

---

## Q4: Stage Management and Power Choreography

**Summary.** The stage-management metaphor is clever but obscures a hard question: how do you know which physiological signals should trigger a power-mode transition, and what happens if you guess wrong?

**Response 4A: Context Detection Brittleness**

The proposal to use "sleep, exercise, stillness" as cue triggers assumes you can reliably detect these states from onboard sensors, but that's non-trivial. One potential challenge: accelerometer-based sleep detection (stillness for >30 min) will fail on bedridden users or during sedentary work; exercise detection from PPG+accel will miss swimming or cycling (no wrist motion). You might address this by validating context detection offline first: collect a labeled dataset of 10–15 users doing daily activities + sleeping + exercising, and measure how accurately your firmware-based detection (using only onboard sensors) matches ground truth. If accuracy is >85%, you've earned the right to switch power modes; if <75%, you risk frequent misclassifications that trigger inappropriate power states (e.g., ramping up inference during sleep, or powering down during silent arrhythmia). A safer approach: allow users to manually tag their activity ("I'm about to exercise"; "I'm going to sleep"), and use that to seed context, with ML refining the model over time.

**Response 4B: State-Transition Hysteresis and Jitter**

Power mode switching introduces a new class of bugs: what if the device keeps oscillating between modes? E.g., accelerometer noise misclassifies "stillness" as "active" every 5 seconds, causing the radio to toggle between low and high power, burning energy on mode transitions. One challenge is that state machines for power management are deceptively brittle; a simple threshold-based detector will thrash at boundaries. You might mitigate this by building hysteresis into mode transitions: e.g., require 5 consecutive minutes of stillness before entering sleep mode, and 2 minutes of acceleration above a threshold to exit; add exponential backoff to prevent rapid re-entry if the mode switch was a false positive. Test this with a firmware simulator that injects synthetic accelerometer noise and validates that mode transitions are stable.

**Response 4C: Power Mode Choreography Complexity**

The metaphor of "no two resource-intensive cues compete" assumes you can schedule power states perfectly, but in practice, the wearable has no predictability: the user might get a call, or a fitness app might request a workout log, or BLE might need to sync exactly when inference is running. One potential challenge is that your pre-computed cue sequence (e.g., "monitor heavily 6–9 AM for morning arrhythmias") may not survive contact with real user behavior. You might address this by building an adaptive power scheduler: (1) track which subsystems actually contend for power in real usage (using on-device power telemetry), (2) prioritize subsystems by user-perceived criticality (e.g., health alert > app notification > battery reporting), and (3) implement soft resource caps: if two high-power operations collide, degrade one (e.g., lower inference frequency) rather than block it. This is more complex than a fixed schedule, but robust to unpredictability.

**Response 4D: The Unmeasured Cost of Choreography**

One subtle risk: all this power choreography adds firmware complexity, which costs ROM, RAM, and development time. One challenge is that a feature-rich power scheduler may consume 5–10% of MCU cycles just managing state transitions, eating into the power savings it promises. You might address this by profiling the firmware overhead: measure CPU utilization for the power scheduler alone, and set a budget (e.g., <2% of MCU cycles); if you exceed it, you've lost the efficiency bet and should simplify. Alternatively, push power management to the NPU's idle controller or a separate power-management IC, decoupling it from the main firmware; this adds hardware cost but eliminates firmware bloat.

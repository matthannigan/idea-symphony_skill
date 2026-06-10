---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "02_power-budget-thermodynamics-and-duty-cycle-architecture"
synthesis-type: "summary"
central-tension: "The physics forces event-driven sensing, which most perspectives reframe as a feature, but the worried 40+ target users may experience intermittency as the device sleeping on the job, leaving false-reassurance and user trust unresolved."
---

# Summary: Power Budget, Thermodynamics, and Duty-Cycle Architecture

## Executive Summary

Physics and user psychology pull in opposite directions. A zero-based energy budget, computed from battery capacity rather than datasheets, points almost unanimously to event-driven sensing: continuous PPG plus on-device ML on a 500-600 mWh cell realistically delivers 2-4 days, not 7. The architecture is therefore forced toward intermittent, anomaly-triggered monitoring. Six of seven perspectives reframe that constraint as a feature—a device that feels intentionally attentive rather than surveillance-like. But the target users are health-conscious adults over 40 with cardiac family history, the most anxious cohort. One perspective argues forcefully that they may want more assurance, not less, and that intermittency risks false reassurance. "No alert" means "not flagged," not "healthy." This tension is not resolved by physics. It is a product-design decision the team must make deliberately.

The strongest consensus is architectural and actionable: place a cheap analog or firmware R-R-interval gate ahead of the NPU so the expensive model fires only on irregular rhythm. All seven perspectives endorse this. It eliminates 80-99% of inference in normal sinus rhythm. The thermodynamic analysis supports it: real NPUs run a trillion-fold above the Landauer floor. The power problem is algorithmic and architectural inefficiency, not a physics wall. The gap is the design space to exploit.

A second consensus is that the 7-day target is unvalidated and possibly mis-specified. It must be tested on real silicon (a multi-week stress test on a breadboard with the actual sensor suite) and validated against users. Three days of clinical-grade accuracy may beat seven days of weak signals both clinically and on a 510(k) submission.

A critical accounting caution cuts across everything: if sensing rather than inference dominates the budget (radio plus always-on PPG typically consume the majority), then inference optimizations will not fix the 7-day problem. Build the stacked 24-hour power trace first, then optimize the subsystem that actually dominates.

---

## Key Themes

The cluster contains one genuine categorical reframe: **the power budget is not a hardware spec to engineer toward but a keystone constraint that forces event-driven sensing when read from physics upward, making that forcing an architectural and product asset rather than a compromise.** This reframe is corroborated across nearly every perspective and changes what gets prioritized: validation and gating come before model tuning, and the duty-cycle decision precedes the sensor-fidelity decision.

### Physical validation before architecture
Almost every perspective insists the 7-day target be measured on real hardware before it shapes any downstream decision. Datasheets assume ideal conditions. Silicon under sustained load reveals thermal drift and current creep that collapse the budget. A breadboard with the actual sensor suite and target NPU, stress-tested over weeks across a temperature range, should be the first milestone.

### Move the coarse decision into the cheapest domain
The dominant architectural pattern is multi-tier gating: a microwatt analog (or lightweight firmware) R-R-interval comparator rules out 90-99% of normal beats. The NPU runs only on the anomalous remainder. The thermodynamic finding supports this: inefficiency is algorithmic, not physical. Freed budget can be spent on higher model precision where it matters.

### Audit where the energy actually goes
Radio and always-on sensing, not inference, typically dominate wearable power. The team risks lavishing effort on the "sexy" inference path while the real drain is BLE cadence and PPG duty cycle. Budget bottom-up from a fixed radio allocation. Build a stacked 24-hour power trace to confirm the true bottleneck before optimizing.

### Physiological-context state machine as the scheduling backbone
The choreography solution is a design-time state machine with pre-defined power "scenes" (sleep, rest, exercise, alert, low-battery), triggered by cheap locally-computed signals (HRV, accelerometer jerk, temperature drift). Reserved non-overlapping subsystem windows and graceful battery-threshold degradation prevent current-draw spikes. Moving the allocation decision from runtime contention to design-time choreography is estimated to save 20-30% of power.

### The trust and reassurance problem (load-bearing dissent)
The reframe that intermittency is "less surveillance-like, more attentive" assumes users want less monitoring. For the worried 40+ target cohort, the opposite may hold. Intermittency carries a real false-reassurance risk. This dissent overturns the cluster's consensus enough that it must be designed for explicitly: transparency dashboards, an explicit in-app contract about what event-triggered monitoring covers, reassurance pings, and a user-selectable continuous mode for high-risk periods.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Build a breadboard reference prototype with the actual four-sensor suite and a target NPU candidate. Measure per-subsystem current draw at 1-second granularity under realistic duty cycles and produce a stacked 24-hour power trace that shows whether radio, sensing, or inference dominates.
- Prototype the analog (or firmware) R-R-interval gate and validate it offline against a labeled patient PPG/ECG dataset. Quantify missed true positives. Treat anything above 1% loss as disqualifying for a health device.
- Run a structured user study (n=20-30) presenting explicit battery-vs-accuracy tradeoffs (e.g., "3 days for 10% higher sensitivity?") to validate or revise the 7-day spec before it is finalized.

### Near-term (3-12 months)
- Implement the physiological-context state machine (sleep, rest, exercise, alert, low-battery) with reserved non-overlapping subsystem windows and explicit battery-threshold graceful-degradation rules. Simulate it over thousands of synthetic user-days and confirm worst-case battery life exceeds 5 days before shipping real firmware.
- Validate context-detection accuracy offline to >85% before letting it switch power modes. Add hysteresis (sustained-state dwell times, exponential backoff) to prevent mode thrashing. Allow users to manually tag activity.
- Apply INT8 quantization and batched inference, verifying that sensitivity and specificity hold at reduced precision. Profile the power-scheduler's own MCU overhead against a <2% cycle budget.
- Prototype against a second-source NPU and design firmware to support either, removing the single-vendor dependency.

### Long-term (1+ years)
- Resolve the trust/reassurance tension deliberately. Ship transparency features (a "scanned N times, ruled out arrhythmia M times" dashboard, an explicit monitoring-coverage contract, reassurance pings) and a user-selectable continuous mode for high-risk periods.
- Position the architecture for the 510(k) pathway. Event-triggered monitoring on validated high-risk windows is easier to defend than continuous inference with its false-positive burden.
- Develop adaptive, per-user scheduling that learns an individual's high-risk windows and front-loads power reserves into them. Evolve the state machine from fixed scenes toward closed-loop personalization.

---

## Key Considerations

**Opportunities**:
- The analog/firmware gate is a high-ROI move that cuts inference energy 80-99% and works even on cheaper MCUs.
- Forced simplicity cascades into wins beyond power: smaller interpretable models, cleaner motion-artifact-free PPG, lighter BLE sync, simpler HIPAA compliance, and an easier 510(k) narrative.
- Event-triggered design serves both high-burden and rare-episode users. It frees 2-3x per-decision compute for faster model iteration.

**Risks & Challenges**:
- The 7-day target is currently aspirational. Continuous sensing plus ML likely yields only 2-4 days. The goal may be a marketing number never validated against users.
- False optimization risk: if sensing dominates the budget, inference-side wins will not move the 7-day needle.
- Analog thresholds drift with skin temperature and aging and cannot be updated post-manufacture. Context detection is unreliable for bedridden users and swimmers. State machines thrash without hysteresis. The scheduler itself can consume 5-10% of MCU cycles.
- Intermittent monitoring can create false reassurance for an anxious target cohort. This is a clinical and liability risk, not just a UX issue.

**Trade-offs**:
- Battery life vs. detection accuracy: 3 days of clinical-grade detection may outperform 7 days of weak intermittent signals, both clinically and regulatorily.
- Detection latency vs. power: batching and event-gating buy large energy savings at a 30-second-to-several-minute latency cost. This is defensible for most non-acute arrhythmias but must be bounded.
- Intentional intermittency vs. user reassurance: the same design that feels less surveillance-like to a calm user can feel like the device sleeping on the job to a worried one. This requires a selectable continuous mode and transparency rather than a single fixed posture.
- Scheduler sophistication vs. firmware cost and robustness: richer context-aware choreography saves power but adds ROM/RAM, development time, and thrashing/overhead failure modes that can erase the savings.

---

**Questions addressed**: 4
**Key insights synthesized**: 21

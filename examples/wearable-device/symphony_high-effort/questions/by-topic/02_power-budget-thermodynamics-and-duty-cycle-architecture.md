---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
---

# Topic Cluster 02: Power Budget, Thermodynamics, and Duty-Cycle Architecture

## Questions

1. **Battery as keystone constraint and zero-based budget**: The 7-day battery target is a keystone-features constraint — not a hardware spec but a determinant of which sensors run continuously vs. intermittently, which models run at full vs. quantized precision, and how often the companion app syncs; given that radio and always-on sensing (not computation) typically dominate wearable power, what does a zero-based energy budget (starting from battery capacity, not component datasheets) say about per-subsystem mWh/day across sensing, inference, display, and BLE — which subsystem poses the tightest constraint, and does the budget make continuous monitoring physically achievable or force fundamentally event-driven sensing? Has the team independently validated that 7 days with continuous PPG, accelerometry, temperature, and microphone plus on-device ML on a low-power MCU is achievable with commercially available NPU hardware, or is this a goal being engineered toward without a confirmed path? And what is 7 days actually optimizing for — convenience, clinical wear-period norms, competitive positioning — and would users accept 3 days for materially better detection accuracy?
2. **Thermodynamic lower bound on inference and analog gating before digital**: Shannon's channel capacity and Landauer's principle imply a physical minimum energy per bit of computation — given the decision entropy of arrhythmia detection, what is the theoretical minimum energy per inference, and how far above that bound are current NPUs operating (revealing whether the power problem is fundamentally a hardware gap or an algorithmic inefficiency, quantifiable as the break-even anomaly prevalence at which event-triggered batch inference saves more energy than continuous low-power inference) — and is there a classical signal-processing threshold (e.g., a simple analog comparator on R-R interval regularity) that could gate the NPU to fire only on anomalous beats, eliminating what fraction of total inference energy by moving the coarse detection boundary earlier into the analog domain before any ML runs?
3. **Forced simplicity as a feature**: If the 7-day battery rules out continuous high-frequency inference, how might intermittent or event-triggered sensing — rather than always-on monitoring — actually produce a more user-friendly device that feels less surveillance-like and more intentionally attentive?
4. **Stage management and the power budget allocation problem**: Theater stage managers coordinate lighting, sound, rigging, and cast movements so that no two resource-intensive cues compete for the same moment. The wearable faces an analogous choreography problem: continuous PPG sensing, ML inference, Bluetooth sync, and display refresh all compete for a shared 7-day power budget. What stage-management principles — pre-computed cue sequences, resource reservation windows, graceful degradation when a "cue" runs long — could inform how the firmware scheduler allocates power across subsystems, and what signals from the physiological context (sleep, exercise, stillness) could function as cue triggers that shift the device between power configurations?

---

**Question count**: 4
**Cluster focus**: How the 7-day battery target functions as a keystone-features constraint that shapes sensing, inference, and communication architecture from physics upward.

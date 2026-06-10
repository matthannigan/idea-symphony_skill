---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "medium"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 01: Power Budget & Battery Architecture

## Questions

1. **Per-subsystem power budget decomposition**: If the 7-day target is decomposed into per-subsystem budgets — sensing, NPU inference, BLE/sync, display, always-on housekeeping — what percentage ceiling should each subsystem be allocated, which is the hardest to compress without degrading clinical utility, and have we run a bottom-up budget that accounts for NPU duty-cycling, sensor sampling rates, and Bluetooth sync overhead under realistic worst-case usage so we know the answer if the first prototype delivers 4 days, not 7?
2. **Inference cadence vs. detection latency vs. sensing duty cycle**: What is the quantified relationship between inference cadence (every 30 seconds vs. every 5 minutes) and the probability of missing a clinically significant arrhythmia event, at what cadence does detection latency become medically unacceptable, and how should PPG, accelerometer, skin temperature, and microphone duty cycles be sequenced in burst-and-sleep mode (with what burst duration and inter-burst interval) to preserve multi-signal correlation while shifting boundaries when an active event is suspected?
3. **Microphone power cost and NPU/CPU offload boundary**: Continuous microphone sampling for breathing-pattern detection is among the most power-intensive sensor modes on a wrist form factor — does its marginal diagnostic value for sleep apnea justify its power cost relative to PPG-plus-accelerometer, where should the NPU/CPU offload boundary sit (affecting peak current draw and battery chemistry choice), and what is the fallback design if microphone must be dropped to hit battery targets?
4. **Power envelope as municipal zoning**: City planners allocate finite land across residential, commercial, industrial, and green space uses, accepting that expanding one zone compresses others and that the allocation shapes what kind of city emerges — your battery budget faces the same combinatorial constraint across sensing, NPU inference, radio, and display; what planning-derived principles (e.g., mixed-use density, just-in-time provisioning, demand-responsive zoning) could reshape how the firmware dynamically reallocates power rather than treating each subsystem's budget as a fixed partition?
5. **Battery as the primary output**: What if the 7-day battery life was not a constraint but the *product* — and cardiac arrhythmia detection was just the justification for making an extremely efficient power system? How would the design change if you optimized the entire architecture around power budget first and let accuracy be whatever it could be within that envelope? *The insight: the team frames power as a tax on accuracy; inverting this might reveal a more honest hierarchy of what the hardware can actually deliver.*

---

**Question count**: 5
**Cluster focus**: How the 7-day battery target is decomposed across subsystems and whether always-on multi-sensor inference is mutually achievable with that target.

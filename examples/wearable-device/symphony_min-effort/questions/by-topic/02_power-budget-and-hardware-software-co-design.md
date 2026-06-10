---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/min"
datetime: 2026-04-28
effort: "min"
stage: "Phase 2: Generic Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
---

# Topic Cluster 02: Power Budget and Hardware-Software Co-Design

## Questions

5. **Battery budget allocation**: Across sensing, inference, display, BLE sync, and housekeeping, what process would you use to derive a per-subsystem power envelope — and which subsystem is most likely to blow the budget in a real prototype, given the continuous PPG sampling required for arrhythmia detection?
6. **Duty cycling and event-driven sensing**: To what extent can the device rely on a low-power "always-on" accelerometer gating the more expensive PPG and microphone sensors, and what signal latency or detection delay does that introduce relative to the 7-day battery target?
7. **NPU utilization efficiency**: How does the choice of inference batch size, scheduling cadence (e.g., run inference every 30 s vs. streaming), and sleep-state management for the NPU affect both throughput and idle power — and how would you instrument and validate these tradeoffs on actual silicon before committing to a PCB revision?
8. **Hardware-software co-design process**: With a team split across firmware, ML, hardware, and mobile app, what integration checkpoints and shared contracts (e.g., power measurement harnesses, sensor driver APIs, model interchange formats) would prevent each subteam from optimizing locally in ways that collapse the system-level power budget?

---

**Question count**: 4
**Cluster focus**: How to allocate, measure, and defend a 7-day battery life target across all subsystems while keeping the hardware-software interface flexible enough to accommodate future model iterations.

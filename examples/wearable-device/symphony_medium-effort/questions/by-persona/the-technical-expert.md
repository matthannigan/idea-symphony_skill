---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Technical Expert"
category: specialist
stream: synthesize
volume: 9
---

# Brainstorming Questions from The Technical Expert: On-Device ML Health Monitoring Wearable

---

## Model Architecture and Inference Tradeoffs

1. **Quantization vs. accuracy ceiling**: Given the NPU's memory and compute constraints, at what quantization level (INT8, INT4, or lower) do arrhythmia and sleep apnea detection models begin to degrade in clinically meaningful ways, and how should the team determine that threshold before committing to a silicon target?

2. **Multi-task vs. single-task model design**: From an architecture perspective, should arrhythmia and sleep apnea detection share a single multi-task model backbone with task-specific heads, or run as separate specialized models — and how does that choice ripple through battery budget, firmware update complexity, and false-positive rate management?

3. **Sensor fusion timing and alignment**: Given that PPG, accelerometer, skin temperature, and microphone signals have different sampling rates and latency profiles, what fusion strategy — early, late, or hybrid — best preserves the temporal relationships that distinguish true cardiac or respiratory events from motion artifacts, and what does that imply for on-device buffer management?

---

## Power Budget and Duty Cycle Architecture

4. **Sensing duty cycle granularity**: A viable approach would be to operate sensors in burst-and-sleep cycles rather than continuous acquisition — but what burst duration and inter-burst interval preserve sufficient signal continuity for anomaly detection, and how does that boundary shift when the device suspects an active event is underway?

5. **NPU vs. CPU offload boundary**: For the inference workload specifically, where should the team draw the boundary between NPU-accelerated layers and CPU-executed logic — and how does that boundary affect both peak current draw (which constrains battery chemistry choice) and the firmware complexity needed to coordinate the two execution paths?

---

## On-Device Data Pipeline and Privacy Architecture

6. **Raw signal retention policy**: From a technical perspective, defining exactly how long raw PPG, accelerometer, and microphone buffers persist in RAM before being overwritten or discarded is an architectural decision with both privacy and forensic-debugging implications — what retention window is defensible under HIPAA's minimum-necessary principle while still allowing the team to reproduce and diagnose false-negative events during development?

7. **Aggregated summary integrity**: When only processed alerts and aggregated summaries sync to the companion app, what cryptographic attestation scheme ensures that the companion app and any future clinical partner can trust that summaries accurately reflect on-device inference outputs, without requiring transmission of the underlying raw data?

---

## Model Update Strategy and Long-Term Maintainability

8. **Firmware OTA and model versioning coupling**: This could be implemented using a split-image firmware architecture where ML model weights are stored in a separate flash partition from application firmware — but what versioning contract between the model and the inference runtime is needed to ensure a model update never silently changes detection behavior in a way that complicates post-market surveillance or 510(k) submission history?

9. **Federated learning feasibility on constrained hardware**: From an architecture perspective, federated learning is appealing for personalization without raw data egress, but on-device gradient computation is orders of magnitude more expensive than inference — what is a realistic minimum hardware specification (RAM, NPU FLOPS) at which federated fine-tuning becomes feasible within the 7-day battery budget, and is the current silicon target above or below that threshold?

---

**Total questions**: 9
**Topic clusters**: 4

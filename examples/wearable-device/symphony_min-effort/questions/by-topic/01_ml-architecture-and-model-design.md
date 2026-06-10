---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/min"
datetime: 2026-04-28
effort: "min"
stage: "Phase 2: Generic Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
---

# Topic Cluster 01: ML Architecture and Model Design

## Questions

1. **Model accuracy vs. power tradeoff**: Given the neural processing unit's fixed compute budget, what quantization strategies, pruning approaches, or architecture families (e.g., MobileNet variants, TinyML-optimized RNNs) offer the best accuracy-per-milliwatt profile for detecting cardiac arrhythmias and sleep apnea from PPG and accelerometer signals — and how would you decide when a model is "good enough" to ship?
2. **Sensor fusion architecture**: How should signals from PPG, accelerometer, skin temperature, and microphone be fused — at the feature level, decision level, or via a joint embedding — and what does each choice imply for model complexity, fault tolerance when a sensor degrades, and the interpretability of resulting alerts?
3. **False positive/negative calibration**: For a target population with family history of cardiac events, how do you set the operating threshold that balances missed detections (safety risk) against alert fatigue (adherence risk), and who — clinician, engineer, regulator, or user — should own that calibration decision?
4. **Model update strategy**: What are the concrete tradeoffs between shipping periodic over-the-air firmware updates with a retrained global model, enabling on-device continual learning, and adopting a federated learning scheme — considering update frequency, battery impact during download/retraining, privacy guarantees, and the regulatory implications of each approach?

---

**Question count**: 4
**Cluster focus**: How to select and constrain model architectures so that inference accuracy, latency, and power draw can coexist within the fixed compute and energy budget of a wrist-worn device.

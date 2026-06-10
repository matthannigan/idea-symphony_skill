---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "medium"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 08: Sensor Fusion & Detection Reliability

## Questions

1. **Multi-sensor fusion as a reliability multiplier with a fragility tail**: Using PPG, accelerometer, temperature, and microphone together improves detection accuracy in normal conditions, but each sensor is also a single point of failure — a loose contact, moisture, or positional artifact can corrupt the fusion signal in ways that degrade the combined model below the performance of any single-sensor baseline; how does the anomaly detection pipeline distinguish "sensor artifact" from "genuine physiological anomaly," and what does the failure mode look like when it gets this wrong during a real cardiac event?
2. **Real-world performance vs. lab benchmarks**: What assumptions does the ML model's accuracy benchmarking make about how users will actually wear the device — placement consistency, skin tone variation, motion artifacts from daily activity — and how much does real-world performance degrade from controlled test conditions?
3. **Multi-sensor anomaly detection as jury deliberation**: Jury systems require multiple independent assessors to reach a verdict, with the logic that diverse observers with different vantage points are less likely to share the same blind spots — your PPG, accelerometer, temperature, and microphone sensors are structurally analogous jurors, each with distinct detection strengths and failure modes; what does jury design research (e.g., the optimal size, unanimity vs. supermajority thresholds, handling of outlier "jurors") suggest about how to architect the sensor fusion layer's voting or weighting logic, particularly for edge cases where one sensor is occluded or degraded?

---

**Question count**: 3
**Cluster focus**: How multi-sensor fusion behaves at its failure modes — when a sensor is occluded, when real-world wear conditions diverge from the lab, when the fusion signal degrades below any single-sensor baseline.

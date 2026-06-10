---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "low"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 07: Model Updates, Drift, and Continuous Learning

## Questions

1. **Update lifecycle — firmware-bundled batches versus federated learning, against the data starvation problem**: Because raw biometric data never leaves the device, models cannot easily learn from aggregate population patterns — what are the quantified tradeoffs between periodic firmware-bundled model updates (large batch, infrequent, validated) versus federated learning contributions (incremental, privacy-preserving, operationally complex), what mechanisms allow updates to be validated against real-world device performance without creating privacy exposure, how do OTA firmware updates interact with on-device model versioning and rollback, and what does the long-term competitive position look like relative to cloud-processing competitors who are not data-starved?
2. **Longitudinal model drift in the 40+ population**: The target population — adults 40+ with cardiac event family history — will experience physiological changes over the device's use lifetime; what mechanisms exist to detect model drift as individual baselines shift, and how does the no-cloud-processing constraint limit the team's ability to monitor and correct for population-level distribution shift in deployed models?
3. **A firmware update cycle that feels like continuous learning**: If the periodic model-update pathway via firmware evolved into something that clinicians and engineers both trusted as rigorous and safe, what would that process look like at its best? What would it feel like to a user who receives an update that measurably improves their arrhythmia detection accuracy overnight?

---

**Question count**: 3
**Cluster focus**: How a no-cloud architecture improves models over time and detects population- and individual-level drift.

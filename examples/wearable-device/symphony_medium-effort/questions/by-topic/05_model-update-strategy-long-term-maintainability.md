---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "medium"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 05: Model Update Strategy & Long-Term Maintainability

## Questions

1. **Update mechanism unit economics: on-device fine-tuning vs. federated learning vs. firmware OTA**: Comparing on-device fine-tuning, federated learning, and periodic firmware-delivered updates — what are the storage, compute, bandwidth, and engineering overhead costs at expected fleet scale; what split-image firmware/model versioning contract ensures an update never silently changes detection behavior in a way that complicates post-market surveillance or 510(k) submission history; and what is the realistic minimum hardware specification (RAM, NPU FLOPS) at which federated fine-tuning becomes feasible within the 7-day battery budget?
2. **Model drift and personalization drift without raw-data feedback loops**: On-device inference with no cloud training and no raw-data upload means the model cannot learn from real-world outcomes (e.g., confirmed arrhythmia events from partner cardiologists), and as users' baselines change over time (fitness, medication, aging) a model trained on initial calibration data silently becomes less accurate — what mechanism prevents confident detection against an outdated baseline 18 months post-launch, and what feedback signal prompts recalibration before degradation becomes a clinical or liability problem?
3. **Firmware update as a trust event and governance question**: Every update that modifies the ML model changes what the device detects and how — users have calibrated their behavior to the existing alert patterns, and a firmware-only update cadence means non-updaters (storage constraints, poor connectivity, simple inaction) keep running an outdated model the team no longer stands behind; how should updates be communicated (with what transparency mechanism that makes each release feel like good news), who decides whether the new model is better for a specific user, and what recourse exists when alert patterns change in a way users don't understand?
4. **Federated learning as just-in-time manufacturing**: Toyota's lean production system eliminated large inventory buffers by synchronizing supply exactly to demand, reducing waste and enabling rapid adaptation — federated learning proposes a structurally similar move for ML: eliminate the central data warehouse by synchronizing gradient updates instead of raw data; what does the lean manufacturing analogy reveal about the failure modes of federated learning in your context (e.g., the equivalent of a supply disruption when a node goes offline, or quality variance when "parts" — user physiologies — differ significantly across the fleet)?

---

**Question count**: 4
**Cluster focus**: How models stay clinically relevant after launch when raw data never leaves the device, and how silent or opaque updates affect users who have calibrated their behavior to the device's alert patterns.

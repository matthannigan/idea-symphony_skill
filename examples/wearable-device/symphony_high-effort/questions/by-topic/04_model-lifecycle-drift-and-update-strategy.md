---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
---

# Topic Cluster 04: Model Lifecycle, Drift, and Update Strategy

## Questions

1. **Update strategy, silent drift, and rollback safety**: The three update strategies (local fine-tuning, federated averaging with differential privacy, periodic OTA) have fundamentally different storage, compute, battery, privacy-risk, and consent profiles — what decision framework should the team use per model component (per-user baseline calibration vs. core arrhythmia detector), which is feasible within 18 months for 12 engineers, and given that on-device models without observation will drift as users age/medicate/develop comorbidities (an expected degradation curve whose steepness depends on architecture choices), what is the plan to detect a quiet accuracy collapse before a patient-safety event — including what cryptographic chain (secure boot, signed firmware, NPU runtime attestation) prevents adversarial model substitution over BLE and how rollback is designed so a bad update increasing false negatives does not silently degrade safety for users who never trigger an alert?
2. **Update cadence as stabilizing and destabilizing**: Periodic firmware updates create a pattern of correction, but each update may reset learned adaptations for individual users — how do you balance population-level model improvement against user-level continuity, and what happens to alert behavior in the window between when the old model degrades and the new one is deployed?
3. **Federated learning's hidden coordination cost, infrastructure timeline, and on-device-training necessity audit**: Federated learning preserves on-device raw data but requires aggregation across a heterogeneous fleet with variable connectivity, hardware versions, and battery states — what failure modes emerge when aggregation is incomplete (do partial updates converge, diverge, or create sub-populations with inconsistent behavior); given that the federated ecosystem (frameworks, privacy-preserving aggregation, regulatory acceptance) is maturing, what is the timeline to a viable federated update infrastructure, and does today's firmware architecture create a path to participate when it arrives; and from first principles, what would need to be true about inter-individual physiological variation for personalized on-device fine-tuning to materially outperform a well-calibrated population model, and is there empirical evidence that wrist-PPG arrhythmia classification has that degree of person-specific signal structure?
4. **The ML pipeline that ages well**: What model update strategy — firmware delivery, federated signals, or something else — would let the on-device inference improve over the product's lifetime while never requiring users to sacrifice their privacy guarantees? What structures from analogous low-power edge-compute domains have already solved pieces of this?
5. **Ecological succession and model update strategy**: In ecology, pioneer species establish conditions that enable more complex organisms to follow — early colonizers do not need to be optimal, they need to create the substrate for what comes next. The team faces a model update problem: models trained on early adopters may not generalize to the broader population, but on-device constraints limit continuous retraining. What if the model update strategy were designed like ecological succession — early firmware ships a conservative, high-specificity model that deliberately accumulates edge cases it cannot classify, creating a labeled dataset that enables a more capable successor model to be pushed in a later firmware update?
6. **Federated learning's absence as a purity argument**: If raw data truly never leaves the device and federated learning is also off the table, what novel mechanisms — user-initiated anonymized exports, opt-in research programs, synthetic data generation on-device — could let the team improve models over time without compromising the privacy guarantee?

---

**Question count**: 6
**Cluster focus**: How the on-device model maintains accuracy and safety across users, time, and the gap between firmware versions — including the silent-drift problem the privacy architecture creates.

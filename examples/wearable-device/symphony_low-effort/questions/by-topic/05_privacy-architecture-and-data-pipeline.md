---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "low"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 05: Privacy Architecture and Data Pipeline

## Questions

1. **Raw-data boundary enforcement under all failure modes, including the model-update path, and whether on-device-only is the only architecture that satisfies the privacy requirement**: From an implementation standpoint, what technical controls enforce the raw-data boundary at the firmware level (not just policy) — across firmware updates, crash dumps, diagnostic telemetry, companion-app debug logs, and the OTA model-update mechanism (which could implicitly encode or extract sensor history) — and have alternative designs been seriously considered (secure enclaves, trusted execution environments, privacy-preserving computation) that might achieve the same privacy guarantees with different power and accuracy tradeoffs?
2. **Aggregated summaries, on-device evidence retention, and the adversary model**: At what level of aggregation do "processed alerts and aggregated summaries" preserve clinical utility while genuinely preventing re-identification, what is the team's model of an adversary trying to reconstruct raw biometric data from synced outputs, do users actually understand that aggregated summaries are still a model of their body that lives outside the device, and what is the technical design for the on-device anomaly evidence representation (derived features, confidence scores, duration, sensor state metadata) that preserves clinical actionability without transmitting raw PPG waveforms — and how does that representation affect eventual 510(k) evidentiary requirements?
3. **Subpoena exposure of "aggregated summaries"**: If the privacy architecture is designed to satisfy HIPAA for potential clinical partnerships but the device launches as a consumer wellness product, what happens when a user's attorney, insurer, or employer subpoenas the companion app's aggregated summaries — and are those summaries legally distinguishable from protected health information under the scenarios the team has actually modeled?
4. **When on-device privacy architecture becomes a genuine asset**: Imagine a conversation — with a potential clinical partner, a privacy-conscious user, or an investor — where the decision to keep raw biometrics entirely on-device landed not as a limitation but as a compelling differentiator. What was said, and what did it reveal about the strengths already built into the design?
5. **Imagine the opposite were true — the device is a black box even to the user**: What if the on-device ML model ran entirely in sealed firmware and the user could never extract, export, or even view the raw inferences — only receive the final binary alert or non-alert — and ask: what would the product lose, what would it gain, and what does this extreme reveal about the real tension between "privacy from the cloud" and "privacy from the device maker itself"? *The real insight: the current architecture protects data from third parties but the user still can't audit what the model concludes about them.*
6. **Radical Data Sovereignty as a New Paradigm**: What if "privacy" in this context was reframed not as compliance with HIPAA but as a genuinely new category — where the wearer's biometric patterns are treated as a form of personhood rather than data, and the device is designed around the philosophical premise that no external entity, including the manufacturer, can ever hold or interpret those patterns — how would that foundational premise reshape everything from the NPU architecture to the companion app?

---

**Question count**: 6
**Cluster focus**: How the "raw data never leaves the device" guarantee is technically enforced, what aggregated outputs reveal, and how privacy transitions into HIPAA posture.

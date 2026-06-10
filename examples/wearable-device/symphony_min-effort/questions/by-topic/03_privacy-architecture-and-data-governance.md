---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/min"
datetime: 2026-04-28
effort: "min"
stage: "Phase 2: Generic Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
---

# Topic Cluster 03: Privacy Architecture and Data Governance

## Questions

9. **On-device data pipeline boundaries**: What is the precise data flow from raw sensor ADC samples to the companion app — which transformations happen at what layer, what is the minimum sufficient statistic that must cross the BLE boundary for the app to be useful, and how do you verify at build time that the firmware cannot accidentally serialize raw data?
10. **HIPAA compliance architecture for clinical partnerships**: If a health system or research institution wants to access de-identified aggregate data from consented users, what architectural additions — consent management, audit logging, differential privacy, secure enclave storage — would be required to satisfy HIPAA's minimum necessary standard without requiring a full device redesign?
11. **Privacy-preserving sync protocol**: Beyond TLS, what threat model should govern the BLE pairing and sync protocol — and how do you handle adversarial scenarios such as a compromised companion app, a rogue BLE base station, or a user who factory-resets the device mid-study?
12. **User transparency and control**: What information about inference results, alert history, and data retention should the device expose to users, and how does the design of that transparency layer change if the device later seeks FDA clearance that requires clinical-grade audit trails?

---

**Question count**: 4
**Cluster focus**: How to enforce the principle that raw biometric data never leaves the device while still enabling useful companion app features, aggregated insights, and future clinical data partnerships.

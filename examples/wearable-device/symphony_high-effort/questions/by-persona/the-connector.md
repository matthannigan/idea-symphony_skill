---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Connector"
category: perspective
stream: append
volume: 7
---

# Brainstorming Questions from The Connector: On-Device ML Health Monitoring Wearable

---

## The Privacy-Performance Isomorphism

1. **On-device constraint as design force**: In aviation, the black box requirement — data must survive catastrophic failure and never be tampered with in-flight — forced engineers toward hardened, self-contained storage architectures that turned out to be more reliable than cloud-dependent alternatives. What if the HIPAA constraint that raw biometric data never leaves the device is treated not as a compliance ceiling to stay under, but as a load-bearing design principle that actively improves the system — and what architectural decisions become available when privacy and performance are treated as the same goal rather than opposing ones?

2. **The compiler analogy for regulatory transitions**: Compiler designers long ago solved the problem of targeting multiple instruction set architectures from a single codebase by introducing an intermediate representation that abstracts away target-specific details. The team faces an analogous challenge: a consumer wellness product that must be architected today to support a future FDA 510(k) clinical claim. What would an "intermediate representation" for regulatory claims look like — a shared evidence layer or data collection discipline that satisfies neither regime fully but positions the product to compile cleanly to either?

---

## Sensor Fusion as Ecosystem Design

3. **The urban sensing parallel for multi-signal fusion**: Smart city platforms that fuse traffic cameras, air quality sensors, and transit data discovered that the value isn't in any single stream but in the correlations between streams captured at the same moment — and that sensor failure degrades gracefully only when the fusion architecture treats each stream as independently useful. Given that this device fuses PPG, accelerometer, skin temperature, and microphone, how should the fusion architecture be designed so that partial sensor degradation (e.g., poor PPG contact during exercise) degrades detection capability gracefully rather than catastrophically, and what does that imply for how anomaly confidence scores are communicated to users?

4. **Ecological succession and model update strategy**: In ecology, pioneer species establish conditions that enable more complex organisms to follow — early colonizers do not need to be optimal, they need to create the substrate for what comes next. The team faces a model update problem: models trained on early adopters may not generalize to the broader population, but on-device constraints limit continuous retraining. What if the model update strategy were designed like ecological succession — early firmware ships a conservative, high-specificity model that deliberately accumulates edge cases it cannot classify, creating a labeled dataset that enables a more capable successor model to be pushed in a later firmware update?

---

## The Trust Infrastructure Problem

5. **Credentialing systems and the false-positive liability surface**: The medical credentialing system resolves a structural tension the wearable faces: how do you grant authority to act on health information without creating liability for every edge case? Hospitals solved this by creating tiered credentialing — a nurse can administer medications but not diagnose, a resident can diagnose but not perform surgery unsupervised. There's a parallel here with alert tiers: what credentialing-like architecture for health alerts would let the device surface high-confidence arrhythmia signals to a cardiologist partner without the startup assuming the liability of a diagnostic claim, and how does that tier structure map onto the consumer wellness vs. 510(k) regulatory boundary?

6. **The transparency-trust inversion in financial audit**: Audited financial statements derive their authority not from the bank's own claims about its solvency but from an independent attestation process that users can verify exists without seeing the underlying data. There's a structural parallel for privacy-preserving health sync: users must trust that raw biometrics never left the device, but they cannot verify this themselves. What would an attestation architecture look like — perhaps a hardware-rooted secure enclave log or a verifiable deletion receipt — that gives users (and eventually clinical partners) the same confidence that an audit opinion gives investors, without exposing the underlying data?

---

## Battery Budget as Constraint Choreography

7. **Stage management and the power budget allocation problem**: Theater stage managers coordinate lighting, sound, rigging, and cast movements so that no two resource-intensive cues compete for the same moment. The wearable faces an analogous choreography problem: continuous PPG sensing, ML inference, Bluetooth sync, and display refresh all compete for a shared 7-day power budget. What stage-management principles — pre-computed cue sequences, resource reservation windows, graceful degradation when a "cue" runs long — could inform how the firmware scheduler allocates power across subsystems, and what signals from the physiological context (sleep, exercise, stillness) could function as cue triggers that shift the device between power configurations?

---

**Total questions**: 7
**Topic clusters**: 4

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Lawyer"
category: specialist
stream: synthesize
volume: 9
---

# Brainstorming Questions from The Lawyer: On-Device ML Health Monitoring Wearable

---

## HIPAA Architecture for Clinical Partnerships

1. **Covered entity analysis**: If the device is sold directly to consumers but later integrated into a hospital's remote patient monitoring program, at what point does the startup become a Business Associate under HIPAA — and what Business Associate Agreement terms must be negotiated before any clinical pilot begins?

2. **PHI boundary definition**: The architecture routes only processed alerts and aggregated summaries to the companion app — but does a cardiac arrhythmia alert timestamped to a specific user constitute Protected Health Information under 45 CFR §164.514, and if so, what de-identification standard (Safe Harbor or Expert Determination) applies to the sync payload?

3. **Minimum necessary and access controls**: HIPAA's minimum necessary standard (45 CFR §164.502(b)) requires limiting PHI disclosure to what is needed for the stated purpose — how should the firmware and companion app be architected so that clinical-partner API endpoints receive only the data a treating clinician actually needs, rather than the full alert history?

---

## FDA Regulatory Pathway: Consumer Wellness to 510(k)

4. **Intended use documentation discipline**: The FDA's enforcement posture on wellness devices rests heavily on how the manufacturer documents intended use — what specific language in marketing materials, the companion app, and firmware alerts would trigger a device reclassification from general wellness (FDA's 2016 General Wellness Policy) to a medical device subject to 510(k) clearance under 21 CFR Part 880, and how should the team audit these touchpoints before launch?

5. **Software as a Medical Device (SaMD) classification**: Under FDA's Digital Health Center of Excellence guidance and the international IMDRF SaMD framework, an algorithm that outputs arrhythmia detection results used to inform clinical decisions is likely Class II SaMD — what predicate devices exist for a 510(k) submission pathway, and how does on-device inference (versus cloud-based) affect the software validation burden under 21 CFR Part 820 / the forthcoming Quality System Regulation update aligned to ISO 13485?

6. **510(k) transition trigger governance**: What internal decision gate — defined in writing, with named sign-off authority — should the company establish to control when the product crosses from wellness to medical-device claims, ensuring that no marketing team or clinical partnership agreement unilaterally triggers FDA jurisdiction before the regulatory submission is ready?

---

## False-Positive / False-Negative Liability

7. **Negligence exposure from missed events**: If the device fails to detect a clinically significant arrhythmia episode that a cleared medical device would have caught, and a user suffers harm, what products liability theory (negligent design, failure to warn, or strict liability) is most likely to succeed — and does the current "consumer wellness, not FDA-cleared" framing reduce or increase exposure compared to a cleared device with a defined performance specification?

8. **Alert fatigue and over-detection liability**: Conversely, if the algorithm generates frequent false-positive arrhythmia alerts that cause a user to seek unnecessary emergency care or make medication changes on a clinician's advice, what duty-of-care obligations attach to the alert design, and should the companion app include specific safe-harbor language distinguishing the device's output from a medical diagnosis?

---

## Data Governance, Breach Law, and EU Expansion

9. **State breach notification patchwork**: Raw biometric data remains on-device, but processed alerts and user account data transit through the companion app's backend — which state breach notification laws (California's CCPA/CPRA biometric provisions, Illinois BIPA, Texas CUBI, Washington My Health MY Data Act) apply to a health-tech startup selling nationally, and what minimum security controls and notification timelines must the backend architecture support to satisfy the most stringent of these regimes?

---

**Total questions**: 9
**Topic clusters**: 4

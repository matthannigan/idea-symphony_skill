---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
---

# Topic Cluster 06: HIPAA, PHI Boundaries, and the Sync Protocol

## Questions

1. **PHI boundary, minimum necessary, audit trail, and the clinical-partner request**: Does a cardiac arrhythmia alert timestamped to a specific user constitute PHI under 45 CFR §164.514 (and if so, what de-identification standard — Safe Harbor or Expert Determination — applies to the sync payload), how should firmware and companion app be architected so clinical-partner API endpoints receive only what a treating clinician actually needs (HIPAA's minimum necessary standard, 45 CFR §164.502(b)) rather than the full alert history, what audit-log infrastructure does PHI handling impose on a constrained device, and what happens when the first clinical partner asks for more granular data access than the current sync architecture allows — pulling HIPAA-compliant data handling and the lightweight sync protocol in opposite directions? Where is the precise decision boundary between data that stays on-device, data that syncs as aggregated summaries, and data that syncs as processed alerts?
2. **Covered entity vs. Business Associate transition**: If the device is sold direct-to-consumer but later integrated into a hospital's remote patient monitoring program, at what point does the startup become a Business Associate under HIPAA, and what Business Associate Agreement terms must be negotiated before any clinical pilot begins?
3. **State breach notification patchwork and EU AI Act compression**: Raw biometric data remains on-device, but processed alerts and account data transit the companion app's backend — which state laws (California's CCPA/CPRA biometric provisions, Illinois BIPA, Texas CUBI, Washington My Health MY Data Act) apply to a health-tech startup selling nationally, what minimum security controls and notification timelines must the backend support to satisfy the most stringent regime, and (since the EU AI Act's high-risk AI provisions for health monitoring are entering enforcement phases by 2026–2027) how should the on-device ML design account for explainability and audit-trail requirements that will increasingly apply to cardiac arrhythmia detection in EU markets, even for consumer-positioned products?
4. **OpenEHR / FHIR R4 interoperability for clinical workflows**: The growing adoption of OpenEHR and FHIR R4 standards in hospital systems, accelerating in EU and UK NHS contexts, means the companion app's data export architecture will increasingly be evaluated by clinical partners on interoperability grounds — how does the current sync and aggregation design position the device as a data contributor into clinical workflows, not just a consumer peripheral?
5. **The compiler analogy for regulatory transitions**: Compiler designers long ago solved the problem of targeting multiple instruction set architectures from a single codebase by introducing an intermediate representation that abstracts away target-specific details. The team faces an analogous challenge: a consumer wellness product that must be architected today to support a future FDA 510(k) clinical claim. What would an "intermediate representation" for regulatory claims look like — a shared evidence layer or data collection discipline that satisfies neither regime fully but positions the product to compile cleanly to either?

---

**Question count**: 5
**Cluster focus**: The data-pipeline and companion-app sync architecture, the moment a clinical partner asks for more granular access than the lightweight protocol supports, and the state-and-EU regulatory patchwork that constrains the backend.

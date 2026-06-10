---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
---

# Topic Cluster 11: Doctor-Patient Translation, Reassurance, and the Clinical Bridge

## Questions

1. **Bridging device-to-clinician, reassurance use case, user-defined success, secondary stakeholders, and breach-resilience**: A user brings six weeks of sleep apnea event logs to a primary care physician who has never seen this device's output format — what does that conversation look like, and how does the product design either enable or frustrate the user's ability to advocate for themselves clinically (given that clinician trust builds slowly and degrades quickly — one bad case outweighs ten good ones); how does the design serve the unarticulated reassurance use case where users are not primarily detecting problems but reassuring themselves nothing is wrong (does continuous monitoring without anomalies create its own psychological dependency or false security); how are user-defined outcomes tracked when the technical goals (accuracy, latency, power, privacy) may not match how users actually evaluate the device (whether it gave them something actionable, changed a conversation with their doctor, made them feel safer or more anxious); what happens when secondary stakeholders — caregivers, spouses, employers, insurers — become interested parties in the device's outputs (how could that reshape liability exposure and sync protocol design); and if the companion app is ever compromised or a health insurer attempts to access device data via a clinical partnership, what mechanisms exist to protect the trust relationship retrospectively, not just at point of purchase — i.e., what signals indicate you're on a trust-building or trust-eroding trajectory with both clinicians and users, and how does device architecture influence which path you're on?
2. **User agency over a shifting model**: As the device's anomaly detection model improves through firmware updates, users' baseline classifications may shift — an event previously flagged might no longer be, or vice versa; how do we preserve user agency and comprehension when the ground truth the device uses to interpret their body silently changes beneath them?
3. **Trust built through transparency**: When has a health-adjacent product earned deep user trust not just through performance but through how it communicated what it was doing with data? What specific design choices made users feel safe enough to rely on the device for something as personal as cardiac monitoring?
4. **The clinical partnership story**: Picture the moment a hospital system or cardiologist practice approaches you for a clinical partnership, not because you sought them out but because patient outcomes were visibly better — what would the device have had to demonstrate technically, clinically, and experientially for that conversation to happen organically?
5. **The device users brag about**: Imagine it is three years from now and your target users — health-conscious adults in their 40s and 50s with family cardiac history — are recommending this device to everyone they know; what specific experience are they describing, and what does the device do at 2 a.m. when it detects something unusual that makes them feel genuinely cared for rather than alarmed?

---

**Question count**: 5
**Cluster focus**: How the device's outputs translate into the clinical conversation, the unarticulated reassurance use case, and how user agency holds up when the ground truth shifts.

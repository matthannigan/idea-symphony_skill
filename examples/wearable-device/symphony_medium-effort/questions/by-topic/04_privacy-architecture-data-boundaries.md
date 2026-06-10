---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "medium"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 04: Privacy Architecture & Data Boundaries

## Questions

1. **The trust boundary between raw signal, processed alerts, and aggregated summaries**: Which data states (raw sensor samples, feature vectors, model activations, alert events, aggregated summaries) are generated at each pipeline stage, what statistical or algorithmic criteria define a summary as sufficiently aggregated to prevent re-identification (validated against HIPAA Safe Harbor or Expert Determination), what cryptographic attestation scheme lets the companion app and clinical partners trust that summaries accurately reflect on-device inference outputs, and which design decisions made today about sync granularity will be hardest to roll back once clinical partnerships create expectations about data access?
2. **Privacy as a self-amplifying differentiator — until it isn't, and as a felt user experience**: On-device processing attracts privacy-sensitive early adopters whose word-of-mouth amplifies the brand and reinforces the architecture as a product commitment — but if a competitor achieves better accuracy through cloud ML, how does the team build structural commitments to on-device processing that survive competitive pressure (with which flex points don't betray the privacy promise), and what does the companion app need to show in its moment-to-moment interface — beyond a privacy policy — to make users *feel* their biometric data is genuinely private, particularly users who distrust tech companies by default?
3. **Privacy under adversarial conditions: device loss, aggregated-summary de-anonymization, and the companion-app weak link**: When the device is lost, stolen, repaired, or returned under warranty, what protects the on-device data from the next person to access it; have we modeled what a determined adversary could reconstruct from the sync payload (alert timestamps, SpO2 trend deltas, sleep-apnea event counts) when crossed with commercial data brokers; and how does the architecture ensure that hardware-layer privacy guarantees are not silently voided by Firebase Analytics, Crashlytics, OS-level backup services, or third-party SDK telemetry on the companion app?
4. **Raw signal retention and the minimum-necessary principle**: Defining exactly how long raw PPG, accelerometer, and microphone buffers persist in RAM before being overwritten or discarded is an architectural decision with both privacy and forensic-debugging implications — what retention window is defensible under HIPAA's minimum-necessary principle while still allowing the team to reproduce and diagnose false-negative events during development?
5. **On-device data containment as biological quarantine**: Epidemiology developed the concept of containment zones — isolating pathogens before they reach systemic circulation — and your on-device ML architecture mirrors that structure exactly; what does this parallel reveal about how to design the boundary between local inference and the sync protocol, particularly around what constitutes a "processed alert" versus "raw signal residue" that might still carry identifiable biometric fingerprints?
6. **Inverse surveillance**: What if instead of protecting health data from leaving the device, the device deliberately broadcast all raw biometric data publicly to everyone — and the design challenge became making that *acceptable*? What does working backward from that scenario reveal about which privacy protections are genuinely about user safety versus which exist primarily to protect the company's liability and regulatory exposure?
7. **The dinner table conversation**: Imagine a user trying to explain to their adult child why they trust a wrist-worn device to never send their raw heartbeat data to a server — what plain-language story does the product need to equip users to tell about on-device ML, and what does the gap between technical reality and user explanation reveal about how privacy architecture should be communicated?
8. **Privacy as a design principle, not a legal checkbox**: What if "raw data never leaves the device" were treated not as a HIPAA constraint to satisfy but as a founding philosophical commitment — the central design premise from which every other decision radiates? How would that shift the architecture, the companion app, the business model, and the user's relationship to their own data in ways that HIPAA compliance alone would never produce?

---

**Question count**: 8
**Cluster focus**: How the on-device privacy guarantee survives device loss, companion-app integrations, re-identification attacks, and the definition of "aggregated enough."

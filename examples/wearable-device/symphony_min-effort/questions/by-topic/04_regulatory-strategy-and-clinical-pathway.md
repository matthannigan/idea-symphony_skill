---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/min"
datetime: 2026-04-28
effort: "min"
stage: "Phase 2: Generic Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
---

# Topic Cluster 04: Regulatory Strategy and Clinical Pathway

## Questions

13. **Consumer wellness vs. clinical claims differentiation**: What specific language in marketing copy, alert UX, and companion app UI constitutes an implied medical claim that could trigger FDA enforcement — and how do you get cross-functional alignment on those boundaries given that the ML team's precision-recall metrics are inherently clinical in framing?
14. **510(k) predicate and design history**: If the team intends to pursue a 510(k) in 18-36 months, what design controls, software lifecycle documentation (IEC 62304), and clinical evidence should be accumulated from day one of the wellness launch — and what shortcuts taken now would require the most expensive rework to undo?
15. **Liability and false negative exposure**: In a consumer wellness context without FDA clearance, what contractual, UX, and algorithmic safeguards limit the company's liability if a user experiences a cardiac event that the device failed to flag — and how does that analysis change once the device carries clinical claims?
16. **International regulatory sequencing**: Given an 18-month runway, should the team prioritize US FDA pathway, CE marking under EU MDR, or Health Canada, and what does each choice imply for clinical study design, data collection requirements, and the device's addressable market during the runway period?

---

**Question count**: 4
**Cluster focus**: How to sequence consumer-wellness launch and FDA 510(k) preparation so that engineering and clinical decisions made today do not foreclose the regulatory options the team wants to preserve tomorrow.

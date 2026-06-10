---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
---

# Topic Cluster 12: Team, Runway, and Conway's-Law Architecture

## Questions

1. **Resource allocation, scope-vs-runway, ML-team-scale, and the seams between teams (Conway's Law)**: Breaking the 12-engineer team (4 firmware, 3 ML, 3 hardware, 2 mobile) against parallel workstreams (NPU integration, sensor fusion model development, HIPAA-compliant sync, regulatory documentation), what are the critical-path dependencies, where are the highest-risk handoffs between firmware and ML, and what is the probability of a production-ready system within 18 months without additional hires — given that team boundaries tend to become system boundaries (Conway's Law in practice), where are handoffs most likely to create gaps in the on-device ML pipeline, how would you know if a system-level failure is actually a coordination failure in disguise, which workstreams can be descoped without invalidating the core value proposition, and is there a real risk that with three ML engineers responsible for two clinical conditions across four sensor modalities neither problem is solved with sufficient rigor — i.e., would a single well-validated use case (one condition, one sensor) produce a more defensible product than two partially validated use cases with a complex fusion architecture?
2. **The team you already have (focused-sprint leverage)**: Your 12-person team spans firmware, ML, hardware, and mobile — which cross-functional pairing, if given a focused two-week sprint together right now, would most likely unlock the highest-leverage architectural insight for the battery-versus-accuracy tradeoff, and what would that sprint look like?
3. **Eighteen months as a scoping gift**: With 18 months of runway and 12 engineers, the team cannot build everything — so which two or three ML inference capabilities, if done exceptionally well, would validate the on-device approach so compellingly that the constraint of limited resources actually accelerates the path to Series B over a broader but shallower feature set?

---

**Question count**: 3
**Cluster focus**: Whether the 12-person team and 18-month runway can carry the simultaneous workstreams, where the seams and handoffs live, and how team structure quietly determines system architecture.

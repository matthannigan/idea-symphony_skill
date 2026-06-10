---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "medium"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 09: Team Capacity, Runway & Validation

## Questions

1. **Twelve engineers, five simultaneous hard problems, and the V1 scope**: The team is simultaneously solving on-device ML optimization, multi-sensor fusion, NPU hardware-software co-design, HIPAA-compliant data architecture, and a companion app across 12 engineers with 18 months of runway — have we ranked workstreams by criticality and explicitly identified what can defer to v2 without killing the product, what is the minimum viable version that generates enough clinical or commercial signal to secure the next funding round, and are current scope and architecture decisions optimized for that milestone or for a more ambitious version that may never get built?
2. **Team structure as a constraint on system-level thinking, with runway as a forcing function**: With 4 firmware, 3 ML, 3 hardware, and 2 mobile app engineers, the natural tendency is for each sub-team to optimize its own subsystem while system-level tradeoffs (power vs. accuracy vs. latency vs. privacy) fall through the gaps — what coordination mechanism ensures cross-subsystem tradeoffs get made explicitly rather than by default, and if the team takes 6 months of shortcuts now under runway pressure, what specific reversibility do they lose, and how does that affect the Series B story if the company is still pre-clinical at that point?
3. **Ground truth dataset and the validation corpus**: To validate arrhythmia and sleep apnea detection performance against a clinically meaningful benchmark, what are the minimum dataset characteristics required — sample size, demographic breakdown, Holter/PSG co-recording methodology, annotation protocol — and how does the current ML team of three scale to producing that validation corpus within the Series A runway?
4. **The smallest experiment with the biggest signal**: Given the team's current capabilities — 4 firmware engineers, 3 ML engineers, a Series A budget, and 18 months of runway — what is the single most leveraged experiment they could run in the next 90 days to generate real-world evidence that the on-device ML pipeline performs reliably at the accuracy and power targets? What would success look like, and who on the team already has the skills to run it?

---

**Question count**: 4
**Cluster focus**: Whether 12 engineers can deliver five hard problems in 18 months, what V1 must prove to secure Series B, and how cross-subsystem tradeoffs get made when each sub-team optimizes locally.

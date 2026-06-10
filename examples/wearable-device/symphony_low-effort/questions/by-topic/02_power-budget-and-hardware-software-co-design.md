---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "low"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 02: Power Budget and Hardware-Software Co-Design

## Questions

1. **Power budget decomposition across correlated demand spikes**: Breaking the 7-day battery target across four sensors (PPG, accelerometer, skin temperature, microphone), the NPU inference workload, BLE sync events, and display — what does the duty-cycle math actually look like when an anomaly detection simultaneously triggers more aggressive sensing AND a communication event, and where are the cliff edges where a seemingly minor architectural decision (PPG sampling frequency, BLE advertising interval) creates disproportionate battery impact that forces renegotiation of sensing fidelity or inference frequency?
2. **Always-on heuristics versus triggered NPU inference, with duty-cycle as a feedback governor**: The decision boundary between continuous low-power sensor-edge polling (accelerometer/PPG) and full NPU anomaly classification — what are the measured power deltas, what latency budget is acceptable per tier given that some arrhythmias are transient and sub-second, and how do you design a duty cycle that self-adjusts (sensing more often when something looks anomalous, less often when it doesn't) without the cost of that adaptation eating the savings it was meant to create?
3. **NPU co-design boundary, lock-in, and silicon-underperformance fallback**: At what point in development does a fixed NPU choice lock in the ML model architecture, what constraints does today's NPU place on models five years out, and — given that the NPU is the architectural centerpiece of the power-accuracy tradeoff — does the firmware/ML team have a fallback architecture that still meets the 7-day battery target if the NPU underperforms in silicon against simulated benchmarks, or is that target effectively load-bearing on hardware not yet validated at volume?
4. **Critical-path engineering allocation across the twelve-engineer team**: With 4 firmware, 3 ML, 3 hardware, and 2 mobile engineers, what are the three or four architectural decisions that — if gotten wrong — create the most expensive downstream rework, and does this team have the capacity to simultaneously maintain the production consumer device, develop the FDA-pathway clinical validation suite, iterate on ML architecture, AND build the HIPAA-compliant backend, or does the roadmap implicitly assume a headcount expansion the Series A runway may not support?
5. **The battery-budget discipline that enables everything else**: Given that early decisions about power allocation across sensing, processing, display, and communication will shape every tradeoff downstream, what principles or practices — already emerging in the team's working style — could be formalized into a shared battery-budget discipline that makes future decisions faster and more confident?
6. **The power budget and the model accuracy budget are the same problem in disguise**: There's a structural parallel here with compiler optimization — where the compiler must allocate a fixed register budget across competing operations, trading off locality, spill cost, and instruction count simultaneously. How might thinking of battery life, inference latency, and model complexity as a unified "budget allocation" problem — rather than three separate engineering tradeoffs — change how the team approaches hardware-software co-design for the NPU?
7. **Seven days on one charge**: Walk through the lived week of a health-conscious 45-year-old who swims laps, travels across two time zones, and wears the device while sleeping — and describe the specific moments where a 7-day battery promise either holds the story together or breaks it. What constraints does that realistic daily arc place on how the firmware team must schedule sensing, inference, and radio duty cycles across wildly different activity contexts?

---

**Question count**: 7
**Cluster focus**: How the 7-day battery target, NPU choice, and engineering capacity together constrain every architectural tradeoff in the on-device ML pipeline.

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "12_team-runway-and-conway-s-law-architecture"
synthesis-type: "summary"
central-tension: "All seven perspectives converge on validating one condition (arrhythmia) deeply rather than two partially; the live disagreement is how far to descope (fusion vs. single sensor) and whether silicon risk justifies the one hire that breaks the no-new-hires premise."
---

# Summary: Team, Runway, and Conway's-Law Architecture

## Executive Summary

This cluster reached a rare unanimity: all seven perspectives independently concluded that three ML engineers split across two clinical conditions and four sensor modalities will produce two unconvincing models rather than one defensible one. The team should validate arrhythmia detection deeply instead. The scope limitation is not a constraint to apologize for—it is the most fundable Series B story available. Investors and FDA reviewers both reward depth of clinical evidence over breadth of features.

The disagreement that remains is genuine but matters only at the edges. Most perspectives keep PPG plus accelerometer fusion. Motion-artifact rejection is what makes cardiac detection credible. One argues for the most aggressive cut: arrhythmia from PPG alone, treating every additional modality as validation debt.

A second tension sits on the "without additional hires" premise. One perspective accepts it at roughly 70% probability. Another puts it at 60% and breaks the premise outright, arguing that hardware-NPU co-design is the true critical path. Silicon cannot be iterated quickly, so a senior NPU architect hired in month 1 (or a planned Series A extension) is rational insurance against missing Series B.

Underneath the scope question runs a Conway's-Law thesis. Team boundaries will become system boundaries. The firmware-to-ML inference contract (NPU schedule, power budget, sensor streaming format) is the highest-risk seam and must be locked by a co-owning pair before parallel work accelerates. The same lens reframes debugging: a system-level failure is often a coordination failure in disguise, diagnosable by asking which boundary produced it. Track escalation frequency rather than model metrics alone.

The convergent path is concrete. Pick arrhythmia. Lock the firmware-ML contract now with a two-week power-profiling sprint on real silicon. Stage the runway so a single condition reaches real-user field validation by month 12. Reserve capacity for battery longevity and a draft 510(k). Document sleep apnea as a deliberate post-Series-A roadmap item, not half-shipped work. Strategic value comes from one thing proven convincingly, not two things proven partially.

---

## Key Themes

### Depth beats breadth, and the constraint is the strategy
The strongest signal in the cluster, raised by all seven perspectives, is that one rigorously validated condition is worth far more than two partial ones. A device that detects arrhythmias at 94–95% sensitivity with a low false-positive rate, validated on hundreds of real users, is fundable. A dual-condition device with research caveats is a liability. The 18-month runway is a forcing function that produces focus, not a shortage that produces compromise.

### Conway's Law as an operating discipline, not a warning
Team boundaries will become system boundaries. The firmware-to-ML inference contract is the seam most likely to fail under time pressure. Locking it early with a co-owning pair is the recurring mitigation. The lens also turns diagnostic: a system-level failure (sync latency, inference lag) is frequently a missing interface definition in disguise. Track coordination health and run monthly integrated field tests rather than trusting local subsystem wins.

### The moat is the platform, not the feature
Several perspectives reframe the deliverable from "arrhythmia detection" to "the on-device ML pipeline beneath it": model serving, power profiling, OTA model updates, privacy architecture, and the regulatory framework. Build that once for one condition and the second condition reuses most of it. This is precisely the extensibility story Series B investors fund.

### The battery-versus-accuracy answer is a measurement, not a debate
Unanimously, the highest-leverage immediate action is a firmware + ML sprint that runs a real model on the actual NPU and produces a measured power-versus-accuracy Pareto curve. Every downstream decision (which modalities, what inference frequency, what model size) hangs off that curve. The team is currently guessing where it could be measuring.

### Conway's Law is bidirectional—team imbalance reveals the real bottleneck
The team composition is diagnostic of where the system will strain. The physics of wearables means sensors draw the majority of battery, not compute. The device is power-constrained at the sensor layer. This redirects ML effort toward sensor selection and temporal scheduling rather than model size. The bottleneck is which engineering domain owns the critical path, not raw engineering hours.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Decide arrhythmia as the single primary clinical target. Document sleep apnea explicitly as a post-Series-A roadmap item with named resources and timeline so the scope choice reads as strategy.
- Run a two-week firmware + ML power-profiling sprint on the real NPU. Deliverable is a measured power-versus-accuracy Pareto curve and a frozen inference I/O and power-budget contract, not production code.
- Embed one firmware and one ML engineer as permanent co-owners of the inference interface. Accept roughly 10% local velocity loss to avoid a month-6 rework.
- Make the no-hires decision deliberately: commit to the 60–70% probability path, or hire one senior NPU architect now to de-risk the silicon critical path with a Series A extension as the named backup.
- Stand up a part-time regulatory mapper to track HIPAA and 510(k) requirements against sprint commitments, or consciously accept a consumer-only scope.

### Near-term (3-12 months)
- Reshape the org into cross-functional pods that each own a clear interface boundary (Sensor+Firmware, ML Validation with a clinical advisor, Privacy+Sync). Run monthly integrated field tests on real-world data rather than lab data.
- Build the HIPAA-compliant sync protocol (encrypted local storage, batched sync, timestamp sanitization, alert-routing handoff) early. Treat it as the regulatory moat that enables clinical partnerships.
- Design a false-positive feedback loop into the app so user dismissals become privacy-safe retraining signal delivered via periodic firmware updates.
- Drive arrhythmia to real-user pilot validation by month 12. Recruit a cardiologist advisor and academic validation partners early enough to inform the model.

### Long-term (1+ years)
- Prepare a draft 510(k) in parallel with product work, owned by a rotating engineer, so the FDA pathway is visible at Series B rather than a month-19 scramble.
- Extend battery life from 7 to 10–12 days as a user-visible differentiator that the single-condition, fewer-sensor design makes achievable.
- Demonstrate (without shipping) extensibility — an apnea sketch, a self-calibrating drift-aware inference prototype — so Series B investors see depth plus a credible path to scale.

---

## Key Considerations

**Opportunities**:
- A single deeply validated condition is a stronger and cheaper Series B narrative than two partial ones, and lets cardiologists treat the device as a reference standard.
- Building the on-device ML platform once means the second condition is later an extension, not a rebuild, reusing the majority of the infrastructure.
- Fewer active sensor modalities simplifies the power budget enough to make 10–12 day battery life a marketable differentiator.
- A clean, privacy-by-design sync protocol doubles as the regulatory moat that unlocks clinical partnerships.

**Risks & Challenges**:
- The firmware-to-ML inference contract is the seam most likely to fail late and at the worst time, exactly when Series B prep begins.
- Local subsystem wins (94% on historical data, 8-day battery in simulation) create false progress that hides end-to-end failures from sensor drift or radio idle power until week 14.
- Hardware-NPU co-design is the true critical path because silicon cannot be iterated quickly. If it is still proving power efficiency at month 12, Series B slips.
- The regulatory documentation workstream is currently unstaffed, and the consumer-versus-510(k) choice constrains architecture decisions being made today.
- Validation-data diversity (age, comorbidity, device placement) is a harder bottleneck than algorithm development and is not solved by adding ML headcount.

**Trade-offs**:
- How far to descope: most perspectives keep PPG + accelerometer fusion for motion-artifact rejection. One argues for PPG-only with no fusion as the cleanest validation story.
- Whether to honor the "no additional hires" premise (70% probability) or break it with one senior NPU architect to de-risk silicon (60% otherwise).
- Sequencing sleep apnea as a documented Series B roadmap item versus keeping the architecture modular-but-open today, which carries present-day interface cost.
- Spending reserved runway on battery longevity versus regulatory 510(k) groundwork when both compete for the same slack capacity.

---

**Questions addressed**: 3
**Key insights synthesized**: 21

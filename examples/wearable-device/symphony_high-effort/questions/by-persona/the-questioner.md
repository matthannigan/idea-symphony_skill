---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Questioner"
category: analytical
stream: synthesize
volume: 18
---

# Brainstorming Questions from The Questioner: On-Device ML Health Monitoring Wearable

---

## Unstated Assumptions About What the Device Is For

1. **Why do we assume detection is the goal?**: The REQUEST frames this as an anomaly detection device — but what if the highest value to users in the 40+ cardiac-risk segment is not detecting problems, but confirming normalcy? How would that inversion change the ML architecture, alert thresholds, and the definition of a false positive?

2. **Why do we assume the wrist is the right form factor?**: Wrist-worn was stated as a given, but cardiac arrhythmia and sleep apnea signals have well-known signal quality tradeoffs at the wrist versus chest, finger, or ear. What assumptions about user compliance and clinical signal quality are baked into this choice, and have they been stress-tested?

3. **What if "privacy" and "no cloud processing" are solving different problems?**: Raw data never leaving the device satisfies a regulatory framing of privacy — but what do users in the target demographic actually fear about their health data being transmitted? Are there privacy architectures that would feel more trustworthy to users while enabling richer clinical value, and why are those off the table?

4. **Who else might use this device in ways the team hasn't anticipated?**: The target user is health-conscious adults 40+ with family cardiac history — but what happens when a caregiver, a spouse, an employer, or an insurer becomes an interested party in the device's outputs? Have the team considered how secondary use cases could reshape both the liability exposure and the design of the sync protocol?

---

## The Real Shape of the Accuracy-Power-Privacy Tradeoff

5. **What if the 7-day battery target is a constraint disguising a deeper question?**: Seven days was named as a target, but what is it actually optimizing for — user convenience, clinical wear-period norms, competitive positioning? If the answer is "convenience," have we asked whether users would accept a 3-day battery for materially better detection accuracy?

6. **Have we considered what "good enough" accuracy actually means for this population?**: Accuracy is framed as a tradeoff axis, but what is the acceptable false negative rate for missed arrhythmia events in a person with family cardiac history? Who decided that threshold, and does it change depending on whether the device is a wellness tool versus a clinical one?

7. **What if on-device inference forces a false choice between accuracy and power, and there's a third path?**: The REQUEST presents on-device ML as the solution to the privacy requirement. But what if privacy-preserving computation approaches (secure enclaves, differential privacy, on-device preprocessing with encrypted feature vectors) could enable richer models without raw data leaving the device? Why has the team scoped the solution to fully local inference only?

8. **What does the battery budget reveal about what the team values?**: Battery allocation across sensing, processing, display, and communication is listed as a key consideration. What if we mapped the budget percentages to implicit priority rankings — and then asked whether those rankings actually match what users need the device to do most reliably?

---

## Hidden Risks in the Regulatory and Liability Architecture

9. **What if the consumer wellness launch creates regulatory debt that is harder to retire than the team expects?**: Launching as a consumer wellness device while explicitly planning a 510(k) pathway means the device will accumulate a public record of real-world performance before FDA review. What assumptions is the team making about how that real-world data will be treated by FDA reviewers, and what could go wrong?

10. **Why do we assume false positives and false negatives carry symmetric liability?**: False positive/negative tradeoffs are named as a consideration, but a false negative (missed arrhythmia) and a false positive (unnecessary emergency room visit or medication change) carry very different liability profiles depending on whether a physician is in the loop. What is the team's actual model of how users and clinicians will act on alerts, and have they tested those assumptions?

11. **What if HIPAA compliance and the companion app sync protocol are pulling in opposite directions?**: The REQUEST says raw biometric data never leaves the device and only processed alerts and summaries sync. But HIPAA for clinical partnerships requires specific data handling, audit trails, and access controls that a lightweight sync protocol may not support. What happens when the first clinical partner asks for more granular data access than the current architecture allows?

---

## What the ML Pipeline Assumes About Users and Their Bodies

12. **What if the training data used to develop the on-device models doesn't represent the target population?**: ML anomaly detection for cardiac arrhythmia is only as good as the distribution of bodies and conditions it was trained on. What is the demographic composition of the training data, and what happens to model performance for users whose physiology, skin tone, or medication profile differs from the training set?

13. **Have we considered how the device will behave at the edges of its intended use?**: The target user is 40+ with family cardiac history — but what about users who are also athletes, or who have pacemakers, or who are post-surgical? What assumptions about "normal" physiology are embedded in the anomaly detection models, and how will the device signal its own uncertainty to users?

14. **What if personalization and privacy are in fundamental tension on this device?**: On-device ML that adapts to individual users over time would improve accuracy — but it also means the device accumulates a behavioral model of the user that could itself be a privacy liability if the device is lost, stolen, or returned. How is the team thinking about the lifecycle of on-device learned parameters?

15. **Why do we assume the microphone signal will add signal rather than noise to sleep apnea detection?**: Breathing pattern detection via microphone is listed alongside PPG and accelerometer — but microphone data is also the most socially sensitive sensor, most vulnerable to environmental interference, and most likely to raise privacy concerns among users. What would it take to validate that the microphone's contribution to detection accuracy justifies its inclusion?

---

## What Success Looks Like — and Whether the Team Has Asked

16. **What if the metrics the team is optimizing for are not the metrics users will use to evaluate the device?**: The technical goals are accuracy, latency, power, and privacy. But users in the target demographic may evaluate the device on whether it gave them something actionable to do, whether it changed a conversation with their doctor, or whether it made them feel safer or more anxious. How are those user-defined outcomes being tracked?

17. **What would it mean for this device to fail slowly rather than suddenly?**: A device that delivers dramatic false positives fails fast and gets returned. But what about a device whose alert thresholds drift over time, whose battery degrades asymmetrically across the sensor array, or whose ML model becomes less accurate as user physiology changes with age? What monitoring exists for slow degradation, and how would the team know?

18. **What if the 12-person team structure is the real constraint, not the hardware or the ML?**: Four firmware, three ML, three hardware, two mobile app — this allocation reflects an assumption about where the hard problems live. But what if the hardest unsolved problems are at the interfaces — firmware-ML handoff, hardware-sensor fusion, clinical-regulatory architecture — and no one is explicitly owning those seams?

---

**Total questions**: 18
**Topic clusters**: 5

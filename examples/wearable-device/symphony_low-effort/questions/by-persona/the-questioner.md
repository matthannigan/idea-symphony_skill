---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Questioner"
category: analytical
stream: synthesize
volume: 13
---

# Brainstorming Questions from The Questioner: On-Device ML Health Monitoring Wearable

---

## What We're Actually Optimizing For

1. **The real objective**: The REQUEST names accuracy, latency, power, and privacy as the four axes to balance — but what if optimizing for all four simultaneously is the wrong framing? Which of these constraints is load-bearing for the user's actual goal of early cardiac and sleep apnea detection, and which are self-imposed?

2. **The "no cloud" assumption**: Why do we assume on-device inference is the only architecture that satisfies the privacy requirement? What alternative designs — such as secure enclaves, trusted execution environments, or privacy-preserving computation — might achieve the same privacy guarantees with different tradeoffs?

3. **Defining "anomaly"**: How do we define what counts as a cardiac or sleep apnea anomaly for the ML model, and who ultimately owns that definition — the clinical literature, the regulatory body, the algorithm, or the user? What happens when those definitions conflict?

---

## Hidden Assumptions About Users and Use

4. **The target user's mental model**: What do health-conscious adults 40+ with a family history of cardiac events actually understand about false positives — and how might their anxiety or hope around cardiac risk change how they interpret and act on alerts from this device in ways the engineering team hasn't modeled?

5. **Alert fatigue as a design variable**: What if frequent false-positive alerts don't just annoy users but actively train them to ignore the device? How does the team plan to measure and account for behavioral response to alert patterns over the lifetime of device use?

6. **Who defines acceptable accuracy**: Have we considered whether the acceptable false-positive and false-negative rates for a consumer wellness device differ meaningfully from what the same users would accept if the device were FDA-cleared for clinical use — and how does that gap shape the initial product?

---

## The Regulatory Trajectory and Its Consequences

7. **Consumer-to-clinical pathway coherence**: What specific design decisions made today for the consumer wellness launch will become liabilities or constraints when the team pursues the 510(k) pathway — and is there a version of the system architecture that makes the regulatory transition easier rather than harder?

8. **HIPAA's activation condition**: HIPAA compliance is framed as a requirement for "potential clinical partnerships" — but what triggers that condition? At what point in the product's lifecycle does HIPAA become mandatory rather than aspirational, and is the current architecture designed to meet that threshold before or after it is reached?

---

## The Data Pipeline as a Value Claim

9. **What "aggregated summaries" really means**: The REQUEST says only processed alerts and aggregated summaries sync to the companion app — but what level of aggregation preserves clinical utility while genuinely preventing re-identification? What is the team's model of an adversary trying to reconstruct raw biometric data from synced outputs?

10. **Model updates as a privacy surface**: On-device ML requires periodic model updates via firmware — but what information about the device's sensor history or anomaly patterns could a firmware update implicitly encode or extract? How does the team think about the update mechanism as a potential privacy attack surface?

---

## Tradeoffs That May Not Be Tradeoffs

11. **Battery budget and sensing strategy**: The 7-day battery target is described as a constraint, but what if continuous sensing across all four sensor modalities (PPG, accelerometer, temperature, microphone) is not actually necessary for high-sensitivity arrhythmia detection? What does the evidence say about minimum viable sensing frequency for clinically meaningful anomaly detection?

12. **The NPU co-design question**: Hardware-software co-design for the neural processing unit is listed as a consideration — but at what point in the product development cycle does a fixed NPU design lock in the model architecture, and how does the team plan to preserve flexibility for model improvements without hardware respins?

13. **Sensor fusion necessity**: What if the additional complexity of fusing four sensor streams (PPG, accelerometer, temperature, microphone) introduces more failure modes than it resolves — and for which target conditions (arrhythmia vs. sleep apnea) is multi-sensor fusion genuinely necessary versus nice-to-have?

---

**Total questions**: 13
**Topic clusters**: 5

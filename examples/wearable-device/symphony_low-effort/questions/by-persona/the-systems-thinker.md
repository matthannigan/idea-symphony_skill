---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Systems Thinker"
category: "structural"
stream: "synthesize"
volume: 13
---

# Brainstorming Questions from The Systems Thinker: On-Device ML Health Monitoring Wearable

---

## Feedback Loops in the Accuracy-Trust Cycle

1. **Alert Fatigue and Model Credibility**: If the on-device anomaly detection model produces frequent false positives early in deployment, users will start dismissing or ignoring alerts — and if that learned dismissal becomes habitual before model accuracy improves, how do you recover trust once the model actually gets better, and what mechanisms can you build in from day one to prevent this self-undermining dynamic?

2. **The Data Starvation Problem**: Because raw biometric data never leaves the device, the ML models can't easily learn from aggregate population patterns across your user base — so how does the team plan to improve model accuracy over time without access to the data that would normally feed that improvement, and what does that constraint mean for the long-term competitive position of the product?

3. **Sensitivity Calibration and Liability**: The false positive/negative tradeoff isn't static — as the device moves from wellness positioning toward clinical use, the cost of each error type shifts dramatically. What happens to the model's calibration strategy when regulatory status changes, and is there a risk that optimizing for one regime makes the other harder to achieve?

---

## Resource Contention and the Power Budget System

4. **Competing Consumers of a Finite Budget**: The battery budget has to be divided across sensing, inference, display, and communication — but these don't draw independently. When the ML model detects a potential anomaly, it likely triggers more aggressive sensing and a communication event simultaneously. How does the system architecture handle these correlated demand spikes, and what happens to the 7-day target when they pile up?

5. **Duty Cycle as a Feedback Governor**: If the system uses aggressive duty cycling to preserve battery, there's a built-in tradeoff: longer sleep intervals between samples reduce power draw but also reduce the temporal resolution available to the anomaly detector. How do you design a duty cycle that self-adjusts based on recent signal patterns — sensing more often when something looks anomalous, less often when it doesn't — without the cost of that adaptation eating the savings it was meant to create?

6. **Hardware-Software Co-Design Lock-In**: The NPU architecture gets chosen before the final ML models are trained, but the models that will run on that NPU will evolve through firmware updates. What are the constraints the current NPU choice places on model architecture five years out, and how does the team avoid committing to a hardware substrate that becomes a ceiling on the software's capability before the product has found its clinical footing?

---

## Regulatory State Transitions and Their System Effects

7. **The Consumer-to-Clinical Trap**: Launching as a consumer wellness device and later pursuing FDA 510(k) clearance is a sensible staged approach — but each design decision made under the wellness regime (labeling, algorithm behavior, UI affordances) creates precedents that the FDA will examine during the 510(k) review. Which decisions made early in the consumer phase are hardest to change later, and what does it cost — in engineering, user trust, or brand perception — to change them when the regulatory context shifts?

8. **HIPAA as Architecture, Not Policy**: HIPAA compliance for clinical partnerships can be treated as a policy layer added at the point of partnership, or it can be baked into the data architecture from day one. If the team defers HIPAA-grade design until a clinical partner appears, what hidden re-engineering work gets triggered, and is there a version of the architecture that satisfies both consumer and clinical requirements without maintaining two separate data pipelines?

9. **Regulatory Success and Its Second-Order Effects**: If the device does achieve FDA 510(k) clearance, that success changes the system it operates in — insurers may want to integrate it, clinicians may start prescribing it, liability exposure shifts. What second-order changes in the product's operating environment does successful FDA clearance unlock, and is the current architecture designed to absorb those changes or would clearance require a substantial re-architecture?

---

## Sensor Fusion and Signal Interdependence

10. **Multi-Signal Correlation as Both Strength and Fragility**: The anomaly detection system draws on PPG, accelerometer, skin temperature, and microphone data simultaneously — which is a strength when all sensors are functioning well, but a potential fragility when one sensor degrades (motion artifact on PPG during exercise, microphone noise in a loud environment). How does the fusion architecture distinguish "the signals disagree because something is clinically interesting" from "the signals disagree because one sensor is compromised"?

11. **Sensor Degradation as a Slow Variable**: Individual sensor accuracy degrades over time — PPG optical paths accumulate skin oils and debris, accelerometer baselines drift. This happens slowly enough that neither the user nor the algorithm notices the gradual shift, but the cumulative effect on anomaly detection accuracy can be significant. What mechanisms does the system have to detect and surface sensor drift before it silently compromises the clinical validity of alerts?

---

## User Behavior Adaptation and Long-Term Engagement

12. **The Measurement Effect on Health Behavior**: There's a well-documented pattern where people who monitor a health metric change their behavior in response to the monitoring itself — not just to the alerts. For a device targeting users with family cardiac history, how does the team design for the likely behavioral responses (anxiety, hypervigilance, reassurance-seeking) that the continuous monitoring will produce, and which of those responses are beneficial versus harmful to the clinical goals?

13. **Dependency and the Shifting Burden**: If users come to rely on the device as their primary means of cardiac awareness — skipping other health check-ins because "the wearable would have caught it" — and then the device is lost, broken, or the battery runs out at the wrong moment, the monitoring gap becomes a clinical risk. How should the system be designed to avoid training users into a dependence that makes them less resilient when the device is unavailable, not more?

---

**Total questions**: 13
**Topic clusters**: 4

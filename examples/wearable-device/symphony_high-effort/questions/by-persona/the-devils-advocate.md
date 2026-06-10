---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Devil's Advocate"
category: structural
stream: synthesize
volume: 13
---

# Brainstorming Questions from The Devil's Advocate: On-Device ML Health Monitoring Wearable

---

## The Privacy Architecture May Be Its Own Trap

1. **Privacy as a liability shield, not a feature**: The decision to keep raw biometric data on-device is framed as a privacy benefit, but have we considered that it may actually eliminate the team's ability to audit, diagnose, and improve model performance post-launch — and if a missed arrhythmia leads to a patient harm event, does "data never left the device" become a legal exposure rather than a protection?

2. **HIPAA scope creep**: HIPAA compliance is listed as a future consideration for clinical partnerships, but if the companion app receives "processed alerts and aggregated summaries," at what point do those outputs themselves become Protected Health Information — and has the team stress-tested whether the current sync architecture is already HIPAA-adjacent in ways that create obligations without the corresponding protections?

3. **On-device privacy and model drift**: If raw data never leaves the device and there is no mechanism for the team to observe inference behavior in the field, what is the plan when the ML model begins degrading due to sensor drift, firmware updates, or population-level distribution shift — and how does the team detect a quiet accuracy collapse before it becomes a patient safety event?

---

## The Regulatory Corridor Is Narrower Than It Appears

4. **Consumer wellness label as a temporary shield**: The decision to launch as a consumer wellness device to avoid FDA oversight is a common strategy, but if the device's core value proposition is detecting cardiac arrhythmias and sleep apnea — two conditions with established clinical definitions — have we considered whether the FDA will treat user-facing marketing language as de facto clinical claims regardless of internal labeling, and what the reclassification risk looks like mid-market?

5. **510(k) pathway assumptions**: The 510(k) predicate strategy assumes a sufficiently similar cleared device exists, but an on-device ML model that fuses PPG, accelerometry, temperature, and microphone signals into an anomaly detector may not have a clean predicate — so has the team mapped specific cleared devices and confirmed the predicate chain, or is "exploring 510(k)" a placeholder that masks an unvalidated assumption about regulatory feasibility?

6. **The liability gap between wellness and clinical**: If a user relies on the device's alerts and experiences a missed cardiac event, the "consumer wellness" framing may not insulate the company from products liability claims — especially given that the target demographic (adults 40+ with cardiac family history) is precisely the population most likely to treat alerts as medically actionable. Have we honestly assessed whether the go-to-market positioning aligns with how target users will actually use the device?

---

## The False Positive / False Negative Tradeoff Has No Safe Harbor

7. **Alert threshold politics**: The choice of sensitivity vs. specificity for arrhythmia and sleep apnea alerts is a clinical decision masquerading as a model tuning decision — too sensitive and users flood emergency rooms on false positives; too specific and the device misses the events it was designed to detect. Have we considered that there may be no threshold that is simultaneously commercially viable, clinically defensible, and legally safe, and what that means for the product's core premise?

8. **User habituation to alerts**: Even if the model is well-calibrated at launch, repeated false positive alerts will cause users to dismiss or disable notifications — a phenomenon well-documented in consumer health devices. What is the plan for maintaining alert credibility over time, and has the team modeled how user alert fatigue interacts with the device's actual safety profile at 6, 12, and 24 months post-launch?

---

## The Hardware Constraints May Not Be Escapable Through Software

9. **7-day battery target vs. always-on ML**: A 7-day battery life with continuous PPG, accelerometry, temperature, and microphone sampling plus on-device ML inference on a low-power microcontroller is an extremely aggressive power budget. Have we independently validated that this target is physically achievable with commercially available NPU hardware at the required sensor duty cycles, or is this a goal that the team is hoping to engineer toward without a confirmed path?

10. **Sensor quality at consumer price points**: Medical-grade PPG and SpO2 accuracy requires careful optical design, tight component tolerances, and controlled skin contact — conditions that are difficult to maintain consistently in a consumer wrist-worn form factor across diverse skin tones, wrist sizes, and motion environments. Has the team explicitly benchmarked sensor signal quality under real-world wear conditions across the target demographic, or is the ML model being asked to compensate for sensor limitations that should be addressed in hardware first?

11. **The model update problem**: The device is described as running on-device ML with periodic model updates via firmware, but firmware updates to a medical-adjacent device that alter inference behavior may themselves trigger FDA scrutiny — particularly once the team pursues clinical claims. Have we mapped the update architecture against both the regulatory obligations it may create and the operational risk of a failed update disabling anomaly detection on a device that users depend on?

---

## Team Capacity and the 18-Month Runway

12. **Scope vs. runway mismatch**: The team is simultaneously building custom hardware, on-device ML pipelines, sensor fusion, a companion mobile app, HIPAA-compliant sync infrastructure, and a regulatory strategy — with 12 engineers and 18 months of runway. Have we stress-tested which of these workstreams can be descoped without invalidating the core value proposition, or is the team operating on an implicit assumption that all of them are critical path?

13. **ML team scale vs. model ambiguity**: With three ML engineers responsible for on-device anomaly detection across two distinct clinical conditions (arrhythmia and sleep apnea) using four sensor modalities, there is a real risk that neither problem is solved with sufficient rigor before launch. Have we considered whether a single well-validated use case — one condition, one sensor — would produce a more defensible and commercially differentiated product than two partially validated use cases with a more complex sensor fusion architecture?

---

**Total questions**: 13
**Topic clusters**: 4

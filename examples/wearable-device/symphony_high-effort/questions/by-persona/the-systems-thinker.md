---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Systems Thinker"
category: structural
stream: synthesize
volume: 13
---

# Brainstorming Questions from The Systems Thinker: On-Device ML Health Monitoring Wearable

---

## Accuracy, Trust, and the Alert Feedback Loop

1. **Alert credibility spiral**: If the device generates too many false positives early on, users begin ignoring alerts — which means a genuine event goes unnoticed, reinforcing distrust, which leads to lower engagement, which degrades behavioral feedback the team needs to improve the model. How do you design the initial alert threshold to avoid this self-eroding dynamic before you have enough real-world data to calibrate it?

2. **False negative invisibility**: A false positive is visible (the user gets a spurious alert); a false negative is invisible until something bad happens. How should the system be designed to surface evidence of what it *didn't* catch, and what monitoring would reveal whether the miss rate is drifting upward over time?

3. **Clinician-trust lag**: Even if the device achieves strong accuracy metrics in testing, clinical adoption depends on physician trust, which builds slowly and degrades quickly (one bad case outweighs ten good ones). What signals would indicate whether you're on a trust-building or trust-eroding trajectory, and how does device architecture influence which path you're on?

---

## Model Update Dynamics and On-Device Drift

4. **Personalization without feedback loops**: On-device models that can't learn from new data will drift as users age, gain weight, change medications, or develop comorbidities. If the model was trained on a population snapshot and personalization is limited to initial calibration, what is the expected degradation curve, and what architecture choices determine how steep it is?

5. **Update cadence as a stabilizing mechanism**: Periodic model updates via firmware create a pattern of correction — but each update resets learned adaptations for individual users. How do you balance population-level model improvement against user-level continuity, and what happens to alert behavior in the window between when the old model degrades and the new one is deployed?

6. **Federated learning's hidden coordination cost**: Federated learning preserves on-device raw data but requires coordinating model aggregation across a heterogeneous fleet with variable connectivity, hardware versions, and battery states. What failure modes emerge when aggregation is incomplete — do partial updates converge, diverge, or create sub-populations with inconsistent behavior?

---

## Regulatory Pathway as a System State Transition

7. **Consumer-to-clinical as a one-way gate**: Designing as a consumer wellness device now preserves optionality, but every architectural shortcut taken to ship faster (weaker audit trails, less rigorous validation datasets, informal clinical claim language in marketing) narrows the FDA 510(k) path later. What architectural decisions made today are actually irreversible, and which ones only feel irreversible because fixing them later seems expensive?

8. **Regulatory feedback delays and overshoot**: The FDA review process operates on an 18-month+ timescale, while the product will be iterating on much shorter cycles. If you design toward a predicate device today, the predicate landscape may shift by the time you submit. How should the team build in flexibility without designing for a moving target, and what would it look like to overshoot regulatory requirements — investing in clinical rigor for a device that never pursues 510(k)?

---

## Privacy Architecture and Behavioral Adaptation

9. **Privacy-by-design as a compounding asset**: On-device processing means the company never accumulates a raw biometric dataset — which is a privacy guarantee but also permanently forecloses the data asset that would enable certain model improvements. As competitors who do collect raw data compound their training advantages, what is the trajectory of this capability gap, and at what point does it become a structural disadvantage rather than just a tradeoff?

10. **User behavior adaptation to privacy claims**: Users who trust the privacy architecture may share the device with family members, take it off during sensitive activities, or assume protections that don't quite match reality (e.g., the companion app sync still exposes metadata). How do the behavioral changes triggered by a strong privacy narrative introduce new risks the architecture wasn't designed to handle?

---

## Resource Budgets and System-Level Tradeoffs

11. **Battery budget as a constraint that shapes everything else**: The 7-day battery target isn't just a hardware spec — it determines which sensors can run continuously versus intermittently, which models can run at full versus quantized precision, and how often the companion app can sync. If you treat battery budget as a fixed external constraint rather than a dynamic allocation problem, what optimization opportunities disappear, and which architectural decisions get locked in prematurely?

12. **Sensing vs. processing as a shifting balance**: Richer sensor fusion (PPG + accelerometer + temperature + microphone together) improves anomaly detection accuracy but demands more processing cycles and power. If the team optimizes sensing and processing independently, the interaction effects — sensor wakeup timing, inference scheduling, thermal management — become a source of emergent behavior. What coordination mechanisms ensure that component-level optimizations don't degrade system-level performance?

13. **Team structure mirroring system architecture**: With 4 firmware, 3 ML, and 3 hardware engineers working on interdependent subsystems, the architectural decisions made at team boundaries (what does firmware own vs. ML vs. hardware?) tend to become the actual system boundaries — Conway's Law in practice. Where are the team handoffs most likely to create gaps or conflicts in the on-device ML pipeline, and how would you know if a system-level failure is actually a coordination failure in disguise?

---

**Total questions**: 13
**Topic clusters**: 5

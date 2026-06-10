---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
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

## Accuracy-Power Feedback Dynamics

1. **The sensitivity ratchet**: If early adopters expect high sensitivity (few missed events), and the team tunes the model accordingly, false positive rates rise, which erodes user trust, which causes users to dismiss alerts, which makes the real-world detection rate worse than the lab rate — how does the team break this compounding pattern before it embeds in the product's reputation?

2. **Power budget as a hidden constraint on model improvement**: When a firmware model update improves accuracy but increases inference load, battery life shortens, users charge more frequently, and compliance (wearing the device continuously) degrades — meaning the accuracy improvement may produce worse real-world outcomes than the older, less accurate model. How should the team measure and gate model updates against this downstream compliance effect, not just against benchmark accuracy?

3. **Latency vs. alarm fatigue tradeoff over time**: What is the feedback dynamic between detection latency (how quickly the device flags an anomaly) and user trust in alerts — and does tuning for faster detection early in the product lifecycle create a user expectation that becomes costly to walk back if the team later needs to increase latency to reclaim battery budget?

---

## Regulatory Pathway as a System Constraint

4. **Consumer wellness framing as a one-way door**: If the device is marketed and adopted as a consumer wellness product, the installed user base, the brand associations, and the clinical data collection norms will be shaped by that framing — and the FDA 510(k) pathway for clinical claims requires demonstrating a level of rigor that consumer positioning may have already undermined. How does the team design the consumer launch so that it doesn't foreclose the clinical pathway, rather than treating them as sequential phases with an easy handoff?

5. **HIPAA compliance as a compounding asset or liability**: HIPAA-compliant architecture requires upfront engineering cost; skipping it now means accruing technical debt that compounds as clinical partnerships become more valuable. But over-investing in compliance infrastructure early may direct firmware and ML engineering capacity away from the core device performance that determines whether clinical partners want to engage at all. What is the right sequencing, and what specific technical decisions are reversible vs. irreversible as the regulatory posture evolves?

6. **Liability exposure as a natural governor on false negative tolerance**: False negatives (missed cardiac events) carry liability and human cost; false positives erode trust and cause care-seeking overload in the health system. This creates a natural stabilizing pressure: neither extreme is sustainable, and the system will self-correct through user churn, regulatory scrutiny, or clinical partner withdrawal. Where does the team want this equilibrium to land, and can they design the threshold controls to reach it intentionally rather than being pushed there by external pressure?

---

## Data Architecture and Trust Dynamics

7. **Privacy as a self-amplifying differentiator — until it isn't**: On-device processing is a genuine differentiator today, and strong privacy positioning attracts health-conscious early adopters, whose positive word-of-mouth amplifies the privacy brand, which attracts more privacy-sensitive users, which reinforces the on-device architecture as a product commitment. But if a competitor achieves better accuracy through cloud ML, the team will face pressure to compromise the architecture. How does the team build structural commitments to on-device processing that survive competitive pressure — and what are the points where the architecture can flex without betraying the privacy promise?

8. **Aggregated summaries as a trust boundary**: Raw biometric data never leaves the device, but aggregated summaries do sync to the companion app. Who defines what counts as "aggregated enough" to be de-identified, and how does that definition evolve as re-identification techniques improve? What design decisions made today about sync granularity will be hardest to roll back once clinical partnerships create expectations about data access?

9. **Firmware update as a trust event**: Every firmware update that modifies the ML model changes what the device detects and how — which means users who have calibrated their behavior to the device's alert patterns are, in effect, living with a product that silently changes on them. How should model updates be communicated, and what feedback loop does silent or opaque updating create in the relationship between users and the device's authority?

---

## Organizational and Resource Dynamics

10. **Team structure as a constraint on system-level thinking**: With 4 firmware, 3 ML, 3 hardware, and 2 mobile app engineers, the natural tendency is for each sub-team to optimize its own subsystem — firmware for stability, ML for accuracy, hardware for power, mobile for UX — while the system-level tradeoffs (power vs. accuracy vs. latency vs. privacy) fall through the gaps. What coordination mechanism ensures that cross-subsystem tradeoffs get made explicitly rather than by default when each team ships independently?

11. **18-month runway as a forcing function that reshapes technical priorities**: Runway constraints cause teams to defer technical debt, ship conservative ML models, and delay compliance infrastructure — each of which is locally rational but creates compounding obligations that narrow future options. If the team takes 6 months of shortcuts now, what specific reversibility do they lose, and how does that affect their Series B story if the company is still pre-clinical at that point?

---

## Sensor Fusion and Detection Reliability

12. **Multi-sensor fusion as a reliability multiplier with a fragility tail**: Using PPG, accelerometer, temperature, and microphone together improves detection accuracy in normal conditions, but each sensor is also a single point of failure — a loose contact, moisture, or positional artifact can corrupt the fusion signal in ways that degrade the combined model below the performance of any single-sensor baseline. How does the anomaly detection pipeline distinguish "sensor artifact" from "genuine physiological anomaly," and what does the failure mode look like when it gets this wrong during a real cardiac event?

13. **Personalization drift**: As users' baselines change over time (fitness improvements, medication changes, aging), a model trained on initial calibration data becomes less accurate — silently, without any visible alert to the user. What mechanism prevents the model from confidently detecting against an outdated baseline, and what feedback signal would prompt recalibration before accuracy degradation becomes a clinical or liability problem?

---

**Total questions**: 13
**Topic clusters**: 5

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Devil's Advocate"
category: structural
stream: synthesize
volume: 11
---

# Brainstorming Questions from The Devil's Advocate: On-Device ML Health Monitoring Wearable

---

## Accuracy and False Alert Economics

1. **False positive cascade risk**: If the arrhythmia detection model triggers false alerts at even a 5% rate during normal daily activities — exercise, stress, caffeine — how many unnecessary ER visits or physician calls would that generate per 10,000 users per year, and what liability exposure does that create for a company that has explicitly chosen not to pursue FDA clearance?

2. **The "consumer wellness" liability shield**: The team is framing this as a consumer wellness device to avoid FDA clearance requirements, but if users act on cardiac alerts and suffer harm from a false negative, have we considered that the existence of detailed HIPAA-style architecture documentation and clinical partnership language might actually undercut the consumer-wellness defense in litigation — signaling that the team understood it was making clinical claims?

3. **Model drift without feedback loops**: On-device inference with no cloud training and no raw-data upload means the model cannot learn from real-world outcomes (e.g., confirmed arrhythmia events from partner cardiologists). What happens to detection accuracy 18 months post-launch as the population's actual health patterns diverge from the training distribution, and how does a firmware-only update cadence close that gap without raw data?

---

## Privacy Architecture Under Adversarial Conditions

4. **Aggregated summaries as de-anonymization vector**: The architecture assumes that only "processed alerts and aggregated summaries" leave the device, but health-metadata alone — alert timestamps, SpO2 trend deltas, sleep-apnea event counts — can be sufficient to re-identify users or infer sensitive conditions when crossed with commercial data brokers. Have we modeled what a determined adversary could reconstruct from the sync payload, and does the current architecture survive that analysis?

5. **Companion app as the weak link**: The device's on-device processing preserves raw-data privacy, but the companion app sitting on an end-user's phone is subject to platform data-sharing policies, third-party SDK telemetry, and OS-level backup services. How does the system architecture ensure that privacy guarantees that hold at the hardware layer are not silently voided by a Firebase Analytics or Crashlytics integration in the mobile app?

---

## Power Budget Realism

6. **ML inference and battery life tension**: The 7-day battery target and always-on multi-sensor inference (PPG, accelerometer, temperature, microphone) are individually achievable goals that may be mutually exclusive together. Have we run a bottom-up power budget that accounts for NPU duty-cycling, sensor sampling rates, and Bluetooth sync overhead under realistic worst-case usage — and if not, what is the plan if the first prototype delivers 4 days, not 7?

7. **Microphone as a persistent power drain**: Continuous microphone sampling for breathing-pattern detection is among the most power-intensive sensor modes on a wrist-worn form factor. Have we considered whether the marginal diagnostic value of the microphone signal for sleep apnea detection justifies its power cost relative to using only PPG and accelerometer data, and what the fallback design looks like if microphone must be dropped to hit battery targets?

---

## Regulatory and Clinical Partnership Risks

8. **510(k) path pre-contamination**: Launching as a consumer wellness device and accumulating real-world use data is often described as a pathway toward 510(k) clearance, but FDA has increased scrutiny of software-as-a-medical-device products that initially launch under wellness framing and later seek clinical claims — particularly when the device has been marketed with health-alert language. Have we assessed whether the go-to-market messaging strategy could complicate or foreclose the 510(k) pathway rather than facilitate it?

9. **HIPAA compliance as a moving target for partnerships**: Designing "to comply with HIPAA for potential clinical partnerships" is not the same as being a HIPAA Business Associate or Covered Entity — those designations require executed BAAs, audit trails, breach notification procedures, and workforce training. If a clinical partner asks the team to sign a BAA before a pilot, is the organization operationally ready to comply, or does the current HIPAA-compliance architecture exist only at the technical layer without the administrative safeguards required by the Rule?

---

## Team Capacity and Execution Risk

10. **Twelve engineers, five simultaneous hard problems**: The team is simultaneously solving on-device ML optimization, multi-sensor fusion, NPU hardware-software co-design, HIPAA-compliant data architecture, and a companion app — across a team of 12 with 18 months of runway. Have we ranked these workstreams by criticality and explicitly identified which ones can be deferred to v2 without killing the product, or are we implicitly committing to delivering all of them in parallel with no slack?

11. **Model update strategy and field-deployed device cohort**: When the ML model needs a significant accuracy update after launch — whether due to population drift, a discovered failure mode, or a new clinical insight — what is the mechanism for pushing that update to devices already in users' hands, and have we considered the risk that users who do not update (due to storage constraints, poor connectivity, or simple inaction) will continue running an outdated model that the team no longer stands behind?

---

**Total questions**: 11
**Topic clusters**: 5

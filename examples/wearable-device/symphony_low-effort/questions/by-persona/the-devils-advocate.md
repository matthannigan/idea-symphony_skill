---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
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

## The Privacy Promise as a Double-Edged Constraint

1. **Have we considered whether "raw biometric data never leaves the device" is a commitment the system can actually keep under all failure modes** — firmware update mechanisms, crash dumps, diagnostic telemetry, and companion app debug logs — and what the exposure surface looks like if even one of those pathways inadvertently exfiltrates sensor readings?

2. **One potential challenge might be that the on-device-only architecture, while privacy-preserving, also forecloses the population-level learning that makes anomaly detection models improve over time — so what is the concrete plan for model refinement at scale when you cannot pool raw signals across users, and how does that tradeoff affect the accuracy trajectory relative to cloud-processing competitors?**

3. **If the privacy architecture is designed to satisfy HIPAA for potential clinical partnerships, but the device launches as a consumer wellness product, have we thought through what happens when a user's attorney, insurer, or employer subpoenas the companion app's "aggregated summaries" — and whether those summaries are legally distinguishable from protected health information under the scenarios the team has actually modeled?**

---

## False Positives, Liability, and the 40+ Demographic

4. **Have we considered what happens to a 52-year-old user who receives a cardiac arrhythmia alert at 2 a.m., calls emergency services, and after a hospital visit learns it was a false positive caused by motion artifact during sleep — and specifically what the liability exposure looks like for a company that positioned itself as a consumer wellness device but whose alert phrasing the user interpreted as a clinical warning?**

5. **One potential challenge might be that the false positive / false negative tradeoff, while framed as a technical parameter, is actually a product positioning decision with asymmetric legal consequences: erring toward sensitivity generates alert fatigue and liability from unnecessary interventions, while erring toward specificity generates liability from missed events in a population actively seeking early cardiac detection — so what governance process determines where that dial is set, and who owns that decision across firmware, ML, legal, and clinical?**

6. **The target demographic of health-conscious adults 40+ with family history of cardiac events is arguably the population most likely to act urgently on any alert — have we stress-tested whether the on-device model's validated performance on controlled training data actually holds for users who wear the device inconsistently, have irregular skin tones, tattoos, or subcutaneous fat distributions that degrade PPG signal quality, and what the recall rate looks like on those subgroups specifically?**

---

## Regulatory Runway and the Consumer-to-Clinical Transition

7. **Have we considered that launching as a consumer wellness device to avoid FDA 510(k) now, while building toward clinical claims later, may create a documented evidence trail of real-world device behavior — including false positives, missed events, and user incidents — that becomes discoverable in any future 510(k) submission or adverse-event investigation, and how does the team plan to manage that data from day one rather than treating regulatory strategy as a later-stage concern?**

8. **One potential challenge might be that the 18-month Series A runway is mismatched with the typical 510(k) timeline: FDA review alone often takes 12+ months after submission, and submission preparation from a consumer-wellness baseline can take another 12-18 months — so if the pivot to clinical claims requires a capital raise before FDA clearance, what is the narrative to investors given a product that has been generating uncleared health alerts in the market for two or three years?**

---

## Hardware-Software Co-Design Assumptions

9. **Have we considered what the failure mode looks like if the dedicated neural processing unit — the architectural centerpiece of the power-accuracy tradeoff — underperforms in silicon against the simulated benchmarks, and whether the firmware and ML teams have a fallback architecture that can still meet the 7-day battery target without the NPU's efficiency gains, or whether that target is effectively load-bearing on hardware that has not yet been validated at volume?**

10. **One potential challenge might be that sensor fusion across PPG, accelerometer, skin temperature, and microphone creates compounding sources of noise that each require their own artifact-rejection pipeline before the ML model ever sees the data — so how confident is the team that the aggregate compute and memory budget for preprocessing plus inference fits within the NPU's headroom, and has that been verified end-to-end on actual hardware rather than on per-sensor estimates that are summed separately?**

---

## Team Capacity and the Twelve-Engineer Constraint

11. **Have we considered whether a team of 12 engineers — split across firmware, ML, hardware, and mobile — has the capacity to simultaneously maintain the production consumer device, develop the FDA-pathway clinical validation suite, iterate on the ML model architecture, and build out the HIPAA-compliant backend for clinical partnerships, or whether the roadmap implicitly assumes a headcount expansion that the Series A runway may not support, and if so which of those workstreams gets deprioritized first when the schedule compresses?**

---

**Total questions**: 11
**Topic clusters**: 4

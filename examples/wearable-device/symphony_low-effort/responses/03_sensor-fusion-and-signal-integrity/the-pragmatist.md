---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "03_sensor-fusion-and-signal-integrity"
persona: "The Pragmatist"
---

# Sensor Fusion and Signal Integrity - The Pragmatist

---

## Q1: Fusion architecture choice, microphone power gating, and whether fusion is even necessary

* **Start with late fusion and earn your way to early fusion.** Early fusion sounds powerful but multiplies your debugging surface area on a constrained NPU. A practical approach: ship v1 with independent per-sensor classifiers that vote at the decision layer. You get interpretable failure modes, easier A/B testing of individual model updates, and a clear upgrade path. Early or hybrid fusion becomes worth the added complexity only once you have 6+ months of real-world signal quality data to validate that the raw concatenation is actually stable.

* **Gate the microphone on a two-stage trigger, not a single condition.** Continuous microphone power draw is a budget killer. To make this feasible, implement a lightweight accelerometer + PPG sleep-state estimator (threshold-based rules, not ML) that runs in low-power mode. Only when that estimator has sustained "sleep likely" confidence for 5+ minutes does the microphone wake. Add a hard ceiling — say, 4 hours per night maximum — to bound worst-case consumption. This avoids burning microphone power on evening couch stillness.

* **Arrhythmia detection does not need the microphone at all; lock that scope now.** PPG plus accelerometer is sufficient for arrhythmia detection. The microphone adds value only for apnea. If you treat these as separate detection modules with separate sensor dependencies, you simplify the fusion decision: arrhythmia runs 24/7 on a lean two-sensor pipeline; apnea runs overnight on a three-sensor pipeline. That decomposition alone cuts architecture complexity in half.

* **Define "fusion necessary" as a testable criterion before building.** Run your PPG-only arrhythmia classifier against your labeled dataset. If recall is already above your target threshold, the added sensors are overhead, not value. A practical approach: treat single-sensor performance as your baseline, add sensors one at a time, and require a statistically significant lift before including each in the production pipeline. This keeps the architecture honest and prevents scope creep disguised as feature richness.

* **The NPU headroom question needs a concrete answer within 30 days.** Right now you likely have per-sensor compute estimates summed on paper, not end-to-end profiling on hardware. Run your actual classifier candidates against your target MCU under realistic sensor polling rates and log real clock cycles, not projections. Late fusion helps here too — you can profile each classifier independently and add them up before committing to a joint architecture.

---

## Q2: Multi-signal interdependence, slow sensor degradation, and alert reliability under real wear

* **Build a signal quality score per sensor as a first-class output, not an afterthought.** Before any fusion logic runs, each sensor's preprocessing layer should emit a confidence estimate: PPG motion artifact level, accelerometer variance, microphone SNR. The fusion layer consumes these scores alongside the raw classifications. When a sensor's quality score drops below a threshold, its vote is down-weighted or excluded. This turns "signals disagree" from an opaque failure into a diagnosable state.

* **Distinguish artifact-driven disagreement from clinically interesting disagreement through consistency windows.** Motion artifact on PPG is typically coincident with high accelerometer variance — that correlation is your artifact fingerprint. Clinical disagreement (e.g., PPG irregularity with low motion) looks structurally different. A practical approach: implement a simple rule-based consistency check as a pre-filter. If accelerometer energy is high and PPG quality is low simultaneously, suppress the alert and log "artifact-masked window" rather than firing a false positive.

* **Detect slow PPG drift with a rolling baseline recalibration routine.** Optical path fouling is slow and monotonic — the signal doesn't spike, it gradually weakens. Implement a nightly recalibration check: during a known low-motion window (confirmed by accelerometer), compare current PPG amplitude against a rolling 30-day median. If amplitude has degraded more than 15%, surface a "sensor check" prompt in the companion app. This catches fouling before it compromises clinical validity without requiring the user to initiate anything.

* **For graceful degradation, default to suppressing alerts with a logged explanation, not surfacing raw uncertainty.** For a 40+ consumer audience, "your sensor data is uncertain" creates anxiety without actionability. A practical approach: if the fusion pipeline drops below confidence threshold, log the event internally, suppress the alert, and — only if low-confidence windows exceed a threshold frequency in a week — surface a single, plain-language "check device fit" recommendation. Reserve uncertainty surfacing for a future clinical-grade mode.

---

## Q3: Motion artifact rejection, demographic generalization, and end-to-end preprocessing budget

* **Implement adaptive motion artifact rejection using accelerometer as a gating signal, not a subtraction input.** Subtraction-based artifact removal (using accelerometer to model and remove motion components from PPG) is theoretically elegant but adds model complexity and needs careful calibration per user. A simpler starting approach: use accelerometer energy thresholds to gate PPG collection windows. Only pass PPG data to the ML pipeline during low-motion epochs. You lose coverage during exercise, but for arrhythmia and sleep apnea, high-motion windows are rarely the clinically critical ones.

* **Demographic generalization is a known PPG liability — test it before you ship, not after.** Fitzpatrick scale V-VI skin tones and tattoos attenuate PPG amplitude significantly. To make this feasible to address early, recruit 20–30 test participants spanning Fitzpatrick I–VI within your first hardware prototype cycle and measure raw SNR and recall rate directly. If recall drops more than 10 percentage points for darker skin tones, you need either a dual-wavelength PPG (green + infrared) or an adjusted decision threshold. Discovering this at launch is a regulatory and reputational problem.

* **End-to-end budget validation must happen on target hardware with a representative workload running simultaneously.** Per-sensor compute estimates summed on a spreadsheet routinely underestimate real-world overhead by 30–50% because they ignore interrupt handling, DMA transfers, and shared memory contention. A practical approach: within the next sprint, run your full preprocessing stack — artifact rejection, feature extraction, inference — on the actual MCU at full sensor polling rates and measure wall-clock time and peak memory. Do this before finalizing the model architecture, not after.

* **If the budget is tight, cut preprocessing complexity before cutting model capacity.** Simple preprocessing (band-pass filter + peak detection) paired with a well-tuned small CNN often outperforms complex preprocessing paired with an even smaller model. The preprocessing pipeline is harder to optimize post-hoc than the model layer; keep it lean by default and add complexity only when validated recall lifts justify it.

---

## Q4: The sensor fusion moment that exceeded expectations

* **Frame this question as a validation exercise for your architecture assumptions, not just a discovery story.** The useful version of this question is: in your prototype data or published literature, has any specific multi-sensor combination produced a detection that a single-sensor approach missed — and can you reproduce that finding on your hardware? If yes, that combination earns its place in the architecture. If you can't point to a concrete instance with reproducible data, the "fusion exceeded expectations" narrative is still hypothetical and shouldn't drive design decisions.

* **The most practically valuable fusion insight is usually a false-positive reduction, not a new detection.** The moment fusion earns its cost is typically when a second sensor confirms that what looked like an event on one sensor was actually noise. For this product, that means: accelerometer confirming that a PPG irregularity occurred during stillness, not movement. Run that specific check against your labeled dataset — what percentage of false positives does it eliminate? That number is your ROI calculation for fusion complexity.

* **Use this question to establish a reference benchmark event in your test suite.** If the team can identify one well-documented multi-sensor detection — from literature, from a pilot, from a clinical collaborator — turn it into a regression test. Every model update should reproduce that specific event. This converts an aspirational architecture property into a concrete, verifiable requirement.

---

## Q5: Keystone signals and power scheduling strategy

* **PPG is the keystone for arrhythmia; microphone is the keystone for apnea — design your power schedule around that asymmetry.** A practical architecture frames the other sensors as PPG context providers (accelerometer for artifact gating, temperature for baseline normalization) during cardiac monitoring, and frames PPG as a microphone corroborator (SpO2 drop confirming apnea) during sleep monitoring. This is not treating all four signals as equal inputs — it's explicit about which signal drives each detection mode.

* **Build your power scheduler around keystone signal state, not a fixed clock.** If PPG quality degrades (motion artifact, poor fit), there is no reason to run the full inference pipeline — you're burning NPU cycles on bad data. A practical approach: implement a lightweight PPG quality gate that runs on the low-power core. Only when quality exceeds threshold does the system wake the NPU for full inference. This alone can meaningfully reduce average power consumption without changing the model at all.

* **Skin temperature is the weakest keystone candidate and should be the first sensor to consider duty-cycling aggressively.** Temperature changes slowly — sampling every 60 seconds rather than every second loses almost no clinically relevant information. If temperature is framed as a slow-drift context signal rather than an event detector, you can run it at 1/60th the rate of PPG with no meaningful accuracy loss. That's a concrete power saving achievable in firmware today, before any model architecture changes.

* **The keystone framing also clarifies when to suppress alerts, not just when to generate them.** If the keystone signal for arrhythmia (PPG) is compromised, suppress arrhythmia alerts regardless of what the accelerometer or temperature are doing. This asymmetric suppression logic is simpler to implement and audit than a symmetric fusion model that tries to infer clinical state from secondary signals when the primary is unavailable.

---

## Q6: From event detection to temporal health geography

* **A practical starting point for "health geography" is a rolling baseline deviation score, not a novel architecture.** You don't need to redesign the system to move toward pattern cartography. A practical approach: for each user, maintain a 30-day rolling distribution of their normal PPG rhythm, temperature range, and sleep structure. Surface deviations from that personal baseline — not absolute thresholds — as the primary output. This is implementable within your current architecture and shifts the product from "event alerting" toward "longitudinal pattern awareness" without a platform rewrite.

* **The regulatory path matters here: personal baseline deviation is a wellness claim, not a clinical one.** Framing output as "your pattern has shifted from your personal norm" keeps you in consumer wellness territory and out of 510(k) scope. That's a meaningful practical advantage for the 18-month runway. A practical approach: design the data model now to support longitudinal aggregation (rolling statistics stored on-device, summaries synced), even if the companion app only surfaces simple trend charts in v1. The architecture investment is small; the optionality it preserves is large.

* **The on-device storage constraint is the binding practical constraint for temporal health geography.** A continuous physiological state map over months requires either aggressive compression or cloud storage — both of which have implications for your privacy architecture and battery budget. Define your on-device retention policy concretely: what is the maximum local storage allocation, what compression ratio is achievable for each signal type, and what is the sync cadence for aggregated summaries? Answer those three questions before designing any longitudinal feature, or you will build something that doesn't fit on the device.

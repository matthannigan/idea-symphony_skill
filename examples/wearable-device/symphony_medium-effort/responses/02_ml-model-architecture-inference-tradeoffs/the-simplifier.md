---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_ml-model-architecture-inference-tradeoffs"
persona: "The Simplifier"
---

# ML Model Architecture & Inference Tradeoffs - The Simplifier

---

## Model Size, Quantization & the Accuracy-Energy Curve

* **Summary.** Stop benchmarking the entire curve. Pick INT8 as your fixed target, run three models (tiny/small/medium), and measure what breaks first—detection F1 or battery life. The "empirically find the threshold" mindset assumes you have infinite time and silicon iterations; you don't. INT8 is already hard on inference latency and power budget; INT4 likely saves only 10-15% energy while harming clinical signal detection in ways you'll regret at launch. Run those three models on actual hardware *now*, accept that quantization hurts, and optimize elsewhere.

* **Summary.** What if you stopped trying to maximize the accuracy-energy curve and instead asked which single model architecture you can afford? Quantization is a knob you're going to turn the same way regardless—conservative, on INT8. The real decision isn't "where on the curve"; it's "tiny model with periodic retraining vs. medium model with no updates?" Choose one story. Tiny + updates adds firmware complexity and user friction. Medium + frozen weights adds battery strain. Pick the simpler path.

* **Summary.** Seven-day battery is the constraint. Start there, not with the curve. Allocate total energy to sensing (60%), processing (25%), display/comms (15%). That 25% for processing is fixed—you can't negotiate with physics. Within that, don't hunt for the "right" quantization; run your best model in INT8 and accept that's your operating point. If battery misses by 10-20%, reduce sensors or sampling rate, not model precision.

---

## Multi-Task vs. Single-Task Model Design

* **Summary.** Single model, single update path. A multi-task backbone with separate heads sounds elegant; it's actually two sources of drift, two firmware rollout procedures, and one failure mode that takes down both detectors. The simplest version is: train arrhythmia and apnea separately on the device, ship them separately, update them separately when clinical data arrives. False positive management becomes isolated; you tweak arrhythmia sensitivity without touching apnea.

* **Summary.** The false-positive problem doesn't get solved by merging models—it gets worse. Multi-task introduces correlations that inflate false alarms when one modality glitches. Two separate models mean an alert fires only if the specific detector confidence exceeds its threshold; you own that independently. Firmware updates are slower? Yes, but they're debuggable. The engineering overhead of multi-task gains you almost nothing a user will feel.

* **Summary.** What if you launched with single-task models and never upgraded them? That's the winning scenario: no backend infrastructure, no firmware versioning headaches, no "what if the multi-task backbone regresses apnea detection while we fix arrhythmia?" Two frozen, validated models running for three years is less risky than one clever model you'll update twice and break both times.

---

## Sensor Fusion Architecture, Timing & Confidence Weighting

* **Summary.** Late fusion, no attention layer. PPG is your arrhythmia signal; accelerometer and temp are veto signals that say "ignore the PPG anomaly, it's motion noise." Microphone adds respiratory corroboration but only when confident. No temporal buffers, no learned attention weights—those consume power and require retraining. Simple rule: if PPG anomaly + (accel quiet OR motion matches breathing), fire alert. This runs in <50 lines of logic; it's debuggable and doesn't require ML inference on every feature cross.

* **Summary.** Stop assuming sensor fusion means machine learning fusion. You have one primary signal (PPG for arrhythmia), and three supporting signals that either confirm or contradict it. Write three if-then rules: PPG change magnitude + accel variance below threshold + skin temp stable = real event. Train the decision boundary for those three rules on historical data, then freeze it. No buffers, no timing complexity. The "moat" isn't in fancy fusion; it's in the sensor hardware and sampling precision you can't copy.

* **Summary.** What if you dropped the temperature and microphone sensors entirely and shipped with PPG + accel? You lose respiratory data, but you cut buffer management, timing jitter, and cross-modality drift. Arrhythmia detection is still solid on PPG; apnea detection weakens. But if that still meets your clinical bar, you've eliminated entire categories of on-device state management. Platform expansion later (more sensors, more models) is easier when you're not already managing five data streams and three confidence scores.

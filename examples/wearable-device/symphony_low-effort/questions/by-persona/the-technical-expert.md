---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Technical Expert"
category: "specialist"
stream: "synthesize"
volume: 9
---

# Brainstorming Questions from The Technical Expert: On-Device ML Health Monitoring Wearable

---

## NPU Architecture and Model Deployment Tradeoffs

1. **Model-hardware co-design boundary**: Given that the NPU is the primary inference engine, how should the team approach the decision of whether to design the ML model architecture around the NPU's native operation set (e.g., fixed quantization widths, limited layer types) versus selecting an NPU that best matches the model families most likely to succeed at arrhythmia and sleep apnea detection — and what process would you use to make that call before committing to silicon?

2. **Inference latency vs. continuous monitoring budget**: A viable approach would be to distinguish between always-on low-power sensing (accelerometer/PPG polling) and triggered deep inference (full anomaly classification) — but how should the team architect the decision boundary for escalating from the lightweight sensor-edge tier to the full NPU inference tier, and what latency budget is acceptable for each tier given that some arrhythmias are transient and sub-second?

3. **Model update delivery without cloud raw data**: From an architecture perspective, if raw biometric data never leaves the device, how should the team design a pipeline for iterative model improvement — specifically, what mechanisms allow model updates to be validated against real-world device performance without creating privacy exposure, and how do over-the-air firmware updates interact with on-device model versioning and rollback?

---

## Sensor Fusion and Signal Integrity

4. **Multi-modal fusion strategy at the edge**: From a technical perspective, combining PPG, accelerometer, skin temperature, and microphone into a single anomaly detection pipeline creates both a richer signal and a harder inference problem — how should the team decide between early fusion (raw signal concatenation before any feature extraction), late fusion (independent per-sensor classifiers whose outputs are combined), and hybrid approaches, given the extreme power and memory constraints of a wrist-worn NPU?

5. **Motion artifact rejection architecture**: PPG on a wrist device is highly susceptible to motion artifacts, and the accelerometer is the standard corrective input — but what is the team's technical approach for separating true cardiac signal from movement noise at the firmware level before data reaches the ML pipeline, and how does that preprocessing choice affect the training data requirements and model generalization across activity states?

6. **Microphone signal utility and power gating**: The microphone adds a meaningful continuous power draw for a signal (breathing patterns / apnea detection) that may only be clinically relevant during sleep — what is the technical architecture for selectively enabling the microphone based on inferred sleep state (derived from accelerometer and PPG), and what are the false-negative risks of that gating strategy for the specific apnea event profiles the team is targeting?

---

## Battery Budget and Power Management

7. **Battery budget allocation modeling**: Given the 7-day target and the combined load of four sensors, an NPU, BLE sync, and display, what does the team's power budget model actually look like at a component level — and where are the cliff edges where a seemingly minor architectural decision (e.g., duty-cycle frequency for PPG sampling, BLE advertising interval) creates disproportionate battery impact that would force renegotiation of the sensing fidelity or inference frequency?

---

## Privacy Architecture and Data Boundary Enforcement

8. **Technical enforcement of the raw-data boundary**: The privacy model states that raw biometric data never leaves the device and only processed alerts and aggregated summaries sync — but from an implementation standpoint, what technical controls enforce that boundary at the firmware level (not just policy), and how does the companion app protocol prevent a future firmware path or debug mode from inadvertently exposing raw sensor streams in a way that would undermine the HIPAA compliance architecture?

9. **On-device anomaly evidence retention**: When the device detects a candidate arrhythmia event, the alert that syncs to the companion app needs enough supporting context to be actionable without transmitting raw PPG waveforms — what is the technical design for the event summary representation (e.g., derived features, confidence scores, duration, sensor state metadata) that preserves clinical utility while remaining within the raw-data boundary, and how does that representation affect the eventual 510(k) evidentiary requirements if the team pursues clinical claims?

---

**Total questions**: 9
**Topic clusters**: 4

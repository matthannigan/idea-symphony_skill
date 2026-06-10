---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Technical Expert"
category: specialist
stream: synthesize
volume: 9
---

# Brainstorming Questions from The Technical Expert: On-Device ML Health Monitoring Wearable

---

## Model Architecture and Power Tradeoffs

1. **Architecture selection vs. power envelope**: Given a strict 7-day battery budget on a low-power MCU+NPU, which neural architecture family — CNN, RNN/LSTM, transformer, or state-space model (e.g., Mamba/S4) — offers the most defensible accuracy-per-milliwatt tradeoff for arrhythmia detection on continuous PPG signals, and what published benchmarks or ablation strategies would you use to validate that choice before committing to silicon?

2. **Quantization strategy and NPU instruction set alignment**: How should the team approach quantization — INT8, INT4, mixed-precision, or weight clustering — in light of the specific NPU's instruction set, and at what point in the training pipeline should quantization-aware training (QAT) be introduced to prevent accuracy collapse on the rare-event classes (arrhythmia, apnea) that are already underrepresented in training data?

3. **Inference partitioning between MCU and NPU**: What criteria should govern which layers or subgraphs run on the MCU versus the NPU, given that NPU context-switch overhead and SRAM bandwidth limits may make it cheaper to run shallow preprocessing layers on the general-purpose core — and how does this partitioning decision interact with duty-cycle scheduling for the sensor front-end?

---

## Sensor Fusion and Signal Processing

4. **Fusion topology for multi-modal anomaly detection**: For a four-sensor stack (PPG, accelerometer, skin temperature, microphone), should the team adopt early fusion (raw feature concatenation before a shared backbone), late fusion (per-sensor classifiers combined at decision layer), or an intermediate attention-based fusion, and what motion-artifact rejection requirements from the accelerometer should drive that choice before any ML architecture is finalized?

5. **PPG signal processing pipeline on constrained hardware**: What signal processing stages — bandpass filtering, adaptive baseline wander removal, peak detection, SpO2 ratio-of-ratios calculation — can be implemented in fixed-point arithmetic on the MCU without a DSP coprocessor, and where are the numerical precision cliffs that would force a fallback to floating-point or an additional hardware accelerator?

---

## On-Device Personalization and Model Lifecycle

6. **On-device personalization vs. federated learning vs. OTA updates**: The three update strategies (local fine-tuning on personal data, federated averaging with differential privacy, and periodic full-model OTA pushes) have fundamentally different storage, compute, battery, and privacy-risk profiles — what decision framework should the team use to pick the right strategy per model component, and which components (e.g., per-user baseline calibration vs. core arrhythmia detector) are genuinely separable for independent update cycles?

7. **OTA model update cryptography and rollback safety**: When pushing a new model weights package over BLE to a medical-adjacent device, what cryptographic chain — secure boot, signed firmware images, attestation of the NPU runtime — is necessary to prevent adversarial model substitution, and how should the rollback mechanism be designed so a bad update that increases false negatives does not silently degrade safety for users who never trigger an alert?

---

## False-Positive Economics and Alarm Logic

8. **False-positive rate as a system design parameter**: In alarm logic for cardiac arrhythmia and sleep apnea, a false positive is not just an annoyance — it erodes user trust, increases battery drain from unnecessary alerting, and creates liability surface if users act on spurious alerts. What operating-point selection methodology (ROC analysis, cost-sensitive learning, decision-theoretic thresholding) should be applied per condition, and how should the threshold be made adaptable to an individual user's historical false-positive rate without requiring a cloud round-trip?

---

## Hardware-Software Co-design and Long-term Architecture Health

9. **Hardware-software co-design for the NPU and memory hierarchy**: Given that the team is a 12-person startup without custom silicon access, what COTS MCU+NPU combinations (e.g., Nordic nRF9151, Ambiq Apollo, ST STM32N6, Syntiant NDP) offer the most viable path to the power budget, and what SRAM/flash constraints from each candidate should the ML team treat as hard architectural invariants when designing model topology rather than as late-stage optimization problems?

---

**Total questions**: 9
**Topic clusters**: 4

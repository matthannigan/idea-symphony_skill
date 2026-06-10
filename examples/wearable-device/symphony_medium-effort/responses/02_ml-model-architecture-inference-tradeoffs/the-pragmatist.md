---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_ml-model-architecture-inference-tradeoffs"
persona: "The Pragmatist"
---

# ML Model Architecture & Inference Tradeoffs - The Pragmatist

---

## Model Size, Quantization, and the Accuracy-Energy Curve on the NPU

* **Start with off-the-shelf benchmarks.** Rather than building empirical curves from scratch, begin by harvesting published INT8/INT4 quantization studies on cardiac anomaly detection (TinyML papers, ARM Cortex-M benchmarks). Adapt one proven model architecture (e.g., 200K–500K parameters for arrhythmia detection) and run a 2-week validation sprint on your target NPU. This gives you a working baseline and identifies silicon-specific latency surprises without months of exploration.

* **Quantization-first threshold testing.** Your 7-day battery constraint is non-negotiable; work backward from energy budget. Reserve 30% of power for sensing/comms, leaving ~2.1 mAh/day for inference. At your expected inference frequency (e.g., 10–30 classifications per hour), calculate max energy-per-inference, then test INT4 models first. If F1 drops below 0.85 for arrhythmia, pivot to INT8. Document the exact clinical-grade accuracy floor before locking silicon.

* **Staged model validation with real data.** Assemble a small cohort (20–30 users) with pre-labeled arrhythmia events from ECG gold standard. Load your quantized candidate models onto dev boards and measure false-positive rates in live wearable conditions—motion artifacts and real-world noise matter more than synthetic test sets. Use this to set hard acceptance thresholds before committing to manufacturing.

* **Competitive silicon hedge.** Don't lock into a single NPU vendor yet. Test your quantization strategy on two microcontroller + neural accelerator pairs (e.g., Qualcomm Snapdragon Wear + ARM Cortex-M with Ethos-U). If one vendor's latency or energy profile fails your budget, switching in Q3 is still feasible; if you commit now and it falls short, you have a 6-month redesign.

---

## Multi-Task vs. Single-Task Model Design

* **Start with single-task separation; unify later if needed.** Your firmware team already supports multi-model inference (you have 4 firmware engineers). Run arrhythmia and apnea detection as distinct 150K–250K parameter models for the first 6 months. This minimizes risk: each model is independently validatable, firmware updates don't require retraining both tasks, and false-positive management stays modular. Once you ship and gather real-world performance data, assess whether multi-task would save meaningful power—it probably won't for your 7-day target.

* **Firmware complexity is the hidden cost.** A single multi-task backbone with task-specific heads sounds elegant but demands coordinated firmware rollouts: updating one head's inference logic requires retesting the other's performance. With 12 engineers and 18 months of runway, you don't have spare cycles for that coupling. Two independent models mean your firmware team can hotpatch one task's detection logic without touching the other.

* **False-positive liability leans toward isolation.** If your arrhythmia model starts over-firing post-launch, you need to patch it fast without retraining apnea detection and risking regressions. Single-task models let you isolate, test, and deploy task-specific fixes. Multi-task models force you to validate both tasks together, slowing your response time when a false-positive surge hits.

---

## Sensor Fusion Architecture, Timing, and Confidence Weighting

* **Late fusion with attention-based confidence gating.** Process PPG, accelerometer, temperature, and microphone independently to raw feature vectors (~50–100 features each), then feed all four streams through a lightweight attention layer (2–4 attention heads, ~50K parameters) that learns task-specific confidence weights. Late fusion keeps inference latency low (each sensor pathway runs in parallel on the NPU), and the attention mechanism discovers which sensor combinations best discriminate cardiac vs. motion artifacts. This approach scales elegantly as you add sensors later (e.g., ECG) without retraining the entire backbone.

* **Ring buffer for async sensor data alignment.** Your sensors sample at different rates (PPG at 50 Hz, accelerometer at 100 Hz, microphone at 16 kHz for breathing pattern features). Implement a 5-second rolling buffer on-device that timestamps each measurement and aligns them to nearest-neighbor or linear interpolation. This keeps temporal relationships intact without requiring clock synchronization across drivers. For on-device buffer management, budget 5 KB for this sliding window—negligible against your 256 MB–512 MB microcontroller memory.

* **Confidence-weighted alert thresholding for clinical readiness.** Compute a fusion-level confidence score (0–1) from the attention weights: if PPG + accelerometer agree above 0.7 confidence, fire the alert; if only PPG agrees (accelerometer disagrees), hold at 0.5 confidence and aggregate over 30 seconds before escalating. Document these thresholds empirically with your 20-user cohort. This defense mechanism keeps false-positive rates below 2% (clinical feasibility) while preserving true detection sensitivity.

* **Modality importance as a competitive advantage.** Use your fusion confidence scores to create a "sensor importance dashboard" visible to clinicians in future FDA submissions. Show that your wearable uses multi-signal harmony to distinguish real events from noise—a durable moat against single-sensor competitors. Log confidence contributions to disk in anonymized form (no raw biometrics), enabling federated learning or foundation-model fine-tuning down the road without privacy leaks.

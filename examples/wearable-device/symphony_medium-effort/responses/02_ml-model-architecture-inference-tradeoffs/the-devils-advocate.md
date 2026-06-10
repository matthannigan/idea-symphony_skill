---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_ml-model-architecture-inference-tradeoffs"
persona: "The Devil's Advocate"
---

# ML Model Architecture & Inference Tradeoffs - The Devil's Advocate

---

## Model Size, Quantization, and the Accuracy-Energy Curve on the NPU

* **Summary.** Have we verified that INT8 quantization models will actually generalize to real-world patient cohorts outside your validation set, or are you assuming lab performance persists in the wild? One potential challenge: quantization-induced performance drops may be masked by your internal test set but emerge catastrophically once deployed—cardiac arrhythmia misses could trigger liability claims. We could address this by building a rigorous post-deployment monitoring pipeline that flags cohorts where model F1 scores degrade beyond acceptable thresholds, with a clear escalation path to alert users before silent failures accumulate.

* **Summary.** Your battery budget is fixed, but inferencing cost scales with model complexity, sampling frequency, and sensor count simultaneously. What if aggressive quantization forces you to run inference more frequently to maintain confidence, eroding your 7-day claim faster than expected? This could undermine early commercial adoption if users need to charge mid-week. We might mitigate by establishing a real battery footprint baseline on actual hardware *before* committing to silicon—building a firmware prototype on dev boards and stress-testing for 10+ days under realistic usage patterns, not just theoretical calculations.

* **Summary.** Switching quantization levels late-stage is costly: retraining infrastructure, validation datasets, regulatory documentation all need rework. Have you considered that choosing INT4 now could lock you into a specific silicon choice, reducing flexibility if better NPUs emerge in 18 months? A mitigation: architect your model pipeline to decouple quantization strategy from hardware commitment—use a modular conversion pipeline that lets you swap quantization targets with minimal firmware overhead, preserving optionality as the market evolves.

* **Summary.** The empirical relationship between parameter count and detection quality is nonlinear and highly dataset-dependent. Your internal benchmarks may not reflect the edge cases—elderly patients with irregular baselines, athletes with resting bradycardia, patients on beta-blockers. One risk: you optimize for your training population and launch with false confidence, only to discover high false-negative rates in a specific subgroup, forcing a costly recall or safety communication. We could address this by pre-launch recruiting a clinically diverse validation cohort (age, medications, underlying conditions) and explicitly profiling model performance on each subgroup before production release.

---

## Multi-Task vs. Single-Task Model Design

* **Summary.** A shared backbone creates coupling—if arrhythmia detection needs a model update but apnea detection is stable, you're forced to retrain and validate the entire multi-task system. This creates slower iteration cycles and higher validation burden per firmware release. One concern: regulatory submissions may require separate validation packages per clinical claim, but you'll struggle to isolate performance for each task if they're entangled in a single model. Consider decoupling: maintain separate models with a shared feature extraction layer, letting you update task-specific heads independently while keeping regulatory scope tight.

* **Summary.** Multi-task models can suffer from negative transfer—apnea detection's signal patterns might degrade arrhythmia precision because both tasks compete for model capacity. Have we stress-tested whether the backbone can actually handle the representational load without one task sacrificing performance? One mitigation: run ablation studies where you disable each task's loss during training and measure cross-task interference directly; if apnea tuning hurts arrhythmia F1 by >3%, single-task models become more defensible despite added firmware complexity.

* **Summary.** Separate models multiply your surface area for false alerts—two independent models can disagree, creating ambiguous signal. Users receiving conflicting heart-rate vs. breathing alerts lose confidence in the device and may disable notifications entirely, defeating your core value proposition. We could mitigate by establishing a clear conflict-resolution protocol: define how the device ranks and communicates competing signals, and test user comprehension with early mockups before settling the model architecture.

---

## Sensor Fusion Architecture, Timing, and Confidence Weighting

* **Summary.** Fusing four sensors with different latencies and sampling rates introduces a hidden complexity: synchronization drift. Have you accounted for clock skew across the PPG, accelerometer, microphone, and temperature subsystems? Even sub-millisecond drift compounds over hours and can cause fusion algorithms to misalign signals. One potential challenge: this drift is invisible in short lab tests but emerges in field deployments. We could address this by implementing on-device time alignment validation—flag when signals drift beyond a tolerance threshold and trigger a re-sync routine, preventing silent fusion failures.

* **Summary.** Late fusion (post-inference combination) is simpler to update than early fusion, but it discards the temporal context that distinguishes real events from artifacts. Early fusion preserves that context but makes the model harder to debug and harder to swap individual sensors if one fails in the field. One risk: if you choose late fusion for flexibility, you may sacrifice the competitive moat you're seeking—your multi-signal richness becomes redundancy rather than insight. Consider building a hybrid that fuses PPG+accelerometer early (eliminating motion artifacts) and does late fusion for temperature and microphone, balancing interpretability with performance.

* **Summary.** Confidence weighting assumes your models can quantify uncertainty reliably, but neural networks are notoriously overconfident on out-of-distribution data. Have we validated that your confidence scores reflect actual prediction quality, or might users receive false high-confidence alerts when the model encounters an unseen patient phenotype? One mitigation: benchmark your confidence calibration against ground truth and implement explicit out-of-distribution detection (e.g., Mahalanobis distance in embedding space). If confidence scores can't be trusted, the entire weighting architecture becomes fragile.

* **Summary.** Expanding sensor fusion for future clinical claims assumes your current architecture scales. Have you considered that adding new sensors (EEG for seizure detection, EMG for muscle events) will require retraining the entire fusion model? One potential challenge: what is on-device today becomes a liability if your platform gets locked into a specific fusion topology. We could address this by designing the fusion layer as a modular plugin system—define a clear interface where new sensors can be added with minimal retraining, ensuring your platform remains extensible without forced backward compatibility breaks.

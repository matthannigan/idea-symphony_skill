---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/min"
datetime: 2026-04-28
effort: "min"
stage: "Phase 3: Generic Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "01_ml-architecture-and-model-design"
---

# Brainstorming Responses: ML Architecture and Model Design

---

## Question 1: Model Accuracy vs. Power Tradeoff

Given the neural processing unit's fixed compute budget, what quantization strategies, pruning approaches, or architecture families (e.g., MobileNet variants, TinyML-optimized RNNs) offer the best accuracy-per-milliwatt profile for detecting cardiac arrhythmias and sleep apnea from PPG and accelerometer signals — and how would you decide when a model is "good enough" to ship?

* **Start with INT8 quantization on a lightweight temporal CNN, then evaluate.** For PPG-based arrhythmia detection, a 1D temporal convolutional network with INT8 post-training quantization is a strong starting point — it reduces memory footprint by 4x and often loses less than 1% F1 compared to FP32. Run the full quantization pipeline on your labeled holdout set before committing to any architecture. If you see more than 2% sensitivity degradation on arrhythmia classes, try quantization-aware training (QAT) instead. Set a concrete go/no-go gate: sensitivity ≥ 90% and specificity ≥ 85% at INT8 before any pruning begins. This gives you a baseline to defend in regulatory submissions.

* **Use structured pruning to hit the power budget, not accuracy.** Rather than unstructured weight pruning (which requires sparse math support most NPUs lack), apply structured channel pruning — remove entire convolutional filters rather than individual weights. Profile inference power on your target NPU for a family of pruning ratios (0%, 20%, 40%, 60%), and plot accuracy against milliwatts. The "elbow" in that curve — where power savings continue but accuracy starts dropping sharply — is your operating point. For sleep apnea from a microphone + accelerometer combo, consider keeping a larger model budget because the signal is noisier and less studied than ECG-derived arrhythmia detection.

* **Adopt a two-tier inference model: a cheap detector that gates an expensive classifier.** Run a tiny always-on anomaly gate (≤5k parameters, duty-cycled every 5 seconds) that screens for "something unusual in PPG rhythm." Only when the gate fires does the device wake the full arrhythmia classifier (50–100k parameters). This asymmetric approach can cut mean power consumption by 60–80% for users who are in sinus rhythm 99% of the time, while preserving full classifier accuracy when it matters. The gate can be a rule-based threshold or a tiny autoencoder; the classifier handles nuanced distinction between SVT, AFib, and artifact.

* **Define "good enough" with two separate thresholds, not one.** Consumer wellness claims and clinical claims demand different bars. For consumer wellness launch, target a 5% false positive rate on your internal test set and zero missed true positives on the highest-confidence subset. For the 510(k) pathway, you will need to demonstrate performance on an FDA-recognized benchmark dataset (e.g., MIT-BIH Arrhythmia Database) and commit to a specific sensitivity/specificity operating point. Ship when your model consistently beats both thresholds across three independent test splits — not just your best run.

* **Consider MobileNet-V3 as a feature extractor only, not end-to-end.** MobileNet-V3-Small is optimized for 2D image classification, but its depthwise separable convolutions translate well to 1D biosignal processing when you reshape windowed PPG into a 2D spectrogram input (e.g., 64x64 short-time Fourier transform). This gives you access to transfer learning from pretrained weights and a well-characterized inference cost on ARM NPUs. Benchmark it against a purpose-built 1D TCN on your data — if the 2D path wins by more than 3 F1 points, it justifies the reshape overhead.

---

## Question 2: Sensor Fusion Architecture

How should signals from PPG, accelerometer, skin temperature, and microphone be fused — at the feature level, decision level, or via a joint embedding — and what does each choice imply for model complexity, fault tolerance when a sensor degrades, and the interpretability of resulting alerts?

* **Decision-level fusion is the right default for a v1 device.** Run separate lightweight classifiers per modality (PPG → cardiac rhythm, accelerometer → activity context, skin temp → fever/inflammation flag, microphone → breathing pattern), then combine their outputs using a learned or rule-based ensemble. This design isolates each sensor's failure mode: if the PPG sensor is occluded by a loose fit, the cardiac classifier outputs "low confidence" and the ensemble can degrade gracefully to activity-adjusted temperature monitoring rather than generating spurious alerts. It also makes each component independently testable, which matters enormously for regulatory documentation.

* **Feature-level fusion with late concatenation handles correlated signals better.** For cardiac arrhythmia detection, PPG and accelerometer are deeply correlated — motion artifact in the PPG is exactly what the accelerometer can explain. Fuse them at the feature level by extracting 32-dimensional embeddings from each modality's temporal window, then concatenating before a shared classification head. This lets the model learn "high PPG variance + high accelerometer variance = motion artifact, not AFib" — a distinction that decision-level fusion cannot make because it sees only post-classification outputs. The cost: you lose the ability to run one classifier independently.

* **Joint embedding via a multimodal transformer is the right v2 or v3 architecture.** A small transformer with per-sensor token embeddings and cross-attention can learn arbitrary inter-sensor dependencies — including that skin temperature rising with elevated heart rate and irregular rhythm is a more alarming signal than any one sensor alone. But this architecture requires 200–400k parameters and a large labeled dataset across all four sensors simultaneously. Plan for it at 18 months post-launch, once you have in-the-wild data from real users. Don't build it for v1 with a 3-person ML team.

* **Build fault tolerance as a first-class design requirement, not an afterthought.** Define an explicit sensor health score for each modality (signal-to-noise ratio thresholds based on offline characterization) and propagate it through the fusion layer. When a sensor's health score drops below threshold, mask its contribution and recalibrate confidence intervals on the output alert. Surface this to the user: "Cardiac rhythm monitoring paused — adjust wristband fit." Users 40+ with family history of cardiac events will trust the device more if it honestly reports degraded state rather than continuing to produce alerts of unknown reliability.

* **Interpretability favors decision-level fusion for clinical partnership conversations.** When you present data to a cardiologist partner under a clinical validation study, the ability to say "this AFib alert was triggered by 73% confidence from the PPG rhythm classifier, corroborated by low activity on the accelerometer" is far more credible than "the model output 0.87." Decision-level fusion generates natural-language-compatible audit trails. Build an event log that captures each sensor's classifier output and confidence for every alert generated — this becomes your clinical validation artifact.

---

## Question 3: False Positive/Negative Calibration

For a target population with family history of cardiac events, how do you set the operating threshold that balances missed detections (safety risk) against alert fatigue (adherence risk), and who — clinician, engineer, regulator, or user — should own that calibration decision?

* **Set the default threshold conservatively and give clinicians a narrow adjustment band.** For a population with family history of cardiac events, a missed AFib episode is categorically more dangerous than an extra alert. Default to a threshold that achieves ≥92% sensitivity, accepting up to 15% false positive rate on your validation set. Clinicians who enroll patients in a monitoring protocol should have a settings toggle (in the companion app's clinical interface, not the consumer UI) to tighten specificity if a patient is experiencing alert fatigue. Engineers set the range of what's adjustable; clinicians own the adjustment within that range for their specific patient panel.

* **Use a time-to-confirmation buffer rather than a binary alert threshold.** Instead of firing an alert the moment the classifier output exceeds 0.7, require the classifier to stay above threshold for 90 consecutive seconds (configurable, 30–180s range). This single design decision eliminates most motion-artifact false positives with no change to model weights, because artifact-induced false positives are typically transient (2–10 seconds) while true arrhythmia episodes persist. Tune the buffer duration against your internal test set to find the point where false positives drop 60% and sensitivity stays above 90%.

* **Build a personal baseline calibration period of 7 days before enabling alerts.** The first week of wear should be a silent monitoring phase: the classifier runs but does not alert, collecting a personal SNR baseline and activity pattern profile. After 7 days, the threshold is automatically adjusted so that the user's personal false positive rate is calibrated to ≤2 alerts/week at rest. This handles the enormous inter-user variability in PPG signal quality caused by skin tone, wrist anatomy, and body hair — a fixed global threshold will produce 5x more false positives in some users than others.

* **The regulator owns the safety-critical floor; no one can go below it.** For a consumer wellness device, you self-certify your performance claims. For any clinical use, FDA will expect you to specify a locked operating threshold (or a narrow locked range) in your 510(k) submission, backed by clinical validation data. That locked threshold cannot be user-adjustable — it becomes the regulatory floor. Design your calibration architecture now so that "locked" means the clinical threshold is applied globally and cannot be overridden by the companion app's user settings. Users can turn off notifications entirely; they cannot lower sensitivity below the regulatory floor.

* **Track alert acceptance rate as a real-world calibration signal post-launch.** Build into your analytics pipeline (privacy-preserving, aggregate only) a measure of how often users dismiss alerts within 10 seconds versus take action (open the app, seek care, log a symptom). A dismissal rate above 70% on any alert type is a leading indicator that threshold is misset for that population segment. Use this to inform v2 model retraining and threshold adjustment — not real-time per-user updates (which raise regulatory questions), but quarterly global updates via firmware.

---

## Question 4: Model Update Strategy

What are the concrete tradeoffs between shipping periodic over-the-air firmware updates with a retrained global model, rolling out on-device continual learning, and adopting a federated learning scheme — considering update frequency, battery impact during download/retraining, power drain during download/retraining, privacy guarantees, and the regulatory implications of each approach?

* **OTA firmware updates with a retrained global model is the only viable v1 strategy.** On-device continual learning and federated learning both require infrastructure and validation pipelines that a 12-person team with 18 months of runway cannot build before launch. OTA updates are well-understood, testable, and FDA-compatible: you retrain offline on your labeled dataset, validate against your test set, lock the weights, and ship. The model doesn't change until you push a new update. Commit to a quarterly update cadence, build the update mechanism from day one, and treat it as a first-class feature — it's how you improve accuracy post-launch without requiring users to buy new hardware.

* **Budget OTA battery impact explicitly and schedule updates during overnight charging.** A firmware update that includes a new model binary (200–500KB compressed) will require 15–30 seconds of download over BLE and 5–10 seconds of flash write. Total energy cost is roughly 2–5% of a full charge. Always schedule OTA delivery during confirmed charging state (check charger connection in firmware before beginning download) and defer if battery is below 30% even on charger. Document this behavior in the companion app UI: "Checking for updates while charging." This avoids the nightmare scenario where an OTA interrupts a monitoring session mid-day.

* **Federated learning is the right v3 strategy for personalization without privacy compromise.** Federated learning lets each device train a local delta on its user's data, then upload only encrypted gradient updates — not raw biometric data — to a central aggregator. This is architecturally compatible with your HIPAA constraint because raw PPG never leaves the device. But the engineering overhead is substantial: you need a federated aggregation server, differential privacy accounting, a way to handle non-IID data across your user population (cardiac history varies enormously), and a regulatory interpretation of whether a model updated via federated gradients constitutes a new device version requiring new 510(k) clearance. Plan this for v3, with a dedicated ML infrastructure hire to drive it.

* **On-device continual learning introduces regulatory and safety risks that outweigh its benefits for a medical-adjacent device.** If the model updates itself on each user's device using their own data, you no longer have a single locked model — you have N different models running on N devices, and you cannot validate any of them against your regulatory test set. For a consumer wellness device this is a gray area; for any 510(k)-cleared clinical claim, it is disqualifying unless you build a rigorous mechanism to ensure the updated model stays within validated performance bounds. The safer path: use on-device data collection to build your next training dataset, but do the retraining centrally and ship it as a signed OTA.

* **Treat the model version as part of the device audit trail.** Every alert your device generates should be logged with the model version that generated it — not just a version number, but a hash of the model weights. This is non-negotiable for clinical partnership conversations and for any future regulatory submission. When a clinician asks "what model detected this episode?", you need to answer precisely. Build this into your firmware alert event schema from day one: `{timestamp, model_hash, sensor_snr, confidence, alert_type}`. It costs almost nothing to implement early and is nearly impossible to retrofit later.

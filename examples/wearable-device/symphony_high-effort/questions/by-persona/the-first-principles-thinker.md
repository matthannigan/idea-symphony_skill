---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The First Principles Thinker"
category: structural
stream: synthesize
volume: 9
---

# Brainstorming Questions from The First Principles Thinker: On-Device ML Health Monitoring Wearable

---

## The Physical Phenomenon: What Are We Actually Measuring?

1. **Cardiac signal substrate**: At the most fundamental level, a PPG sensor is measuring volumetric changes in blood caused by the heart's mechanical pumping — so what is the actual minimum information content (in bits) of a single cardiac cycle that is sufficient to classify arrhythmia vs. normal sinus rhythm, and how does that bound constrain every downstream decision from sampling rate to model architecture?

2. **Multi-sensor redundancy vs. independence**: Skin temperature, PPG, accelerometer, and microphone are four physical channels — but how much of the physiological variation they capture is genuinely independent, and is there a principled information-theoretic argument for which two-sensor or three-sensor subset captures 95% of the discriminative signal for arrhythmia and sleep apnea, potentially allowing entire sensor channels to be duty-cycled off?

3. **Noise floor and body physics**: The wrist is a mechanically noisy site for cardiac measurement; motion artifact can easily exceed the PPG signal by an order of magnitude — from first principles of signal detection theory, what is the fundamental SNR floor imposed by the measurement site itself, and does this bound mean that no amount of ML sophistication can recover the signal that ambulatory motion destroys, pointing instead toward a hardware placement or sensing modality change?

---

## Power Budget: Physics Before Architecture

4. **Thermodynamic lower bound on inference**: Shannon's channel capacity and Landauer's principle together imply a physical minimum energy per bit of computation — given the classification complexity of arrhythmia detection (approximately how many bits of decision entropy), what is the theoretical minimum energy per inference, and how far above that bound are current neural processing units operating, revealing whether the power problem is fundamentally a hardware gap or an algorithmic inefficiency?

5. **Sensing vs. processing energy allocation**: The dominant power draw in most wearables is not computation but radio and always-on sensing — so if the goal is 7-day battery life, what does a zero-based energy budget (starting from battery capacity, not from existing component datasheets) say about the maximum duty cycle for each sensor, and does that budget make continuous monitoring physically achievable or does it require fundamentally event-driven sensing architectures?

6. **Analog vs. digital detection boundary**: Before digitizing and running ML, is there a classical signal-processing threshold (e.g., a simple analog comparator on R-R interval regularity) that could gate the neural processing unit to fire only on anomalous beats — and if so, what fraction of total inference energy could be eliminated by moving the coarse detection boundary earlier in the analog domain?

---

## The Minimum Viable Model: What ML Is Actually Required?

7. **Problem decomposition to irreducible classification**: Cardiac arrhythmia detection is ultimately a temporal pattern classification problem — stripped of all engineering convention, what is the minimum description length of a model that can distinguish atrial fibrillation from normal sinus rhythm at clinically acceptable sensitivity/specificity, and does that description fit within a decision tree or small lookup table rather than a neural network, making the NPU unnecessary for the primary detection task?

8. **On-device training necessity audit**: The system assumes on-device inference with periodic firmware model updates — but from first principles, what would need to be true about inter-individual physiological variation for personalized on-device fine-tuning to materially outperform a well-calibrated population model, and is there empirical evidence that wrist-PPG arrhythmia classification has that degree of person-specific signal structure?

---

## Privacy Architecture: What Does "Private" Actually Mean?

9. **The minimum leakage surface**: The stated goal is that raw biometric data never leaves the device — but even aggregate summaries (e.g., "arrhythmia detected at 2:47 AM") carry timing and frequency information that can be re-identified; so from first principles of differential privacy, what is the minimum granularity at which sync data must be reported to make re-identification computationally intractable, and does that granularity still preserve clinical utility for the downstream partnership use case?

---

**Total questions**: 9
**Topic clusters**: 4

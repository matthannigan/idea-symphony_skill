---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Provocateur"
category: "perspective"
stream: "append"
volume: 7
---

# Brainstorming Questions from The Provocateur: On-Device ML Health Monitoring Wearable

---

## What If the Device Were Designed to Be Radically Honest About What It Doesn't Know?

1. **The device is wrong about everything, and it knows it**: Imagine the wearable's anomaly detection model had a hard-coded rule that every alert must display a confidence interval alongside a plain-English statement like "I'm 40% sure about this and here's what I'm missing" — what would change about how users relate to health alerts, and what does this reveal about the dangerous gap between how ML systems present themselves and what they actually know? *The real insight: most health-tech hides model uncertainty because confidence sells, but surfacing uncertainty might be the only ethical path for devices that touch medical decisions.*

2. **Make the false positive the product, not the bug**: Here's something absurd, but stay with me — what if you deliberately tuned the arrhythmia model to produce 10x more false positives than clinically acceptable, and then asked users to adjudicate each one by logging what they were doing when the alert fired? What patterns would emerge in that noisy data, and what does this thought experiment reveal about the untapped behavioral context that the device is currently blind to?

---

## What If Privacy Were Inverted — the Device Knew Everything and Shared Nothing, Ever?

3. **Imagine the opposite were true — the device is a black box even to the user**: What if the on-device ML model ran entirely in sealed firmware and the user could never extract, export, or even view the raw inferences — only receive the final binary alert or non-alert — and ask: what would the product lose, what would it gain, and what does this extreme reveal about the real tension between "privacy from the cloud" and "privacy from the device maker itself"? *The real insight: the current architecture protects data from third parties but the user still can't audit what the model concludes about them.*

4. **What if we made the privacy architecture deliberately worse for one month?**: Imagine a variant where, with full consent, raw PPG and accelerometer streams were transmitted to a research cloud for 30 days — what would you learn about model accuracy, sensor calibration drift, and behavioral confounders that you cannot learn from on-device inference alone, and what does this tell you about the hidden epistemological cost of the privacy-first design you've already committed to?

---

## What If the Regulatory Pathway Ran Backward?

5. **Start with 510(k) clearance and then launch the consumer product**: Imagine the opposite of your current plan — you pursue FDA 510(k) first, before any consumer launch, at the cost of two additional years and significant capital — what constraints would that impose on the ML pipeline and sensor architecture that the current "consumer wellness first" path is allowing you to defer, and are any of those deferred constraints actually design improvements you're avoiding for the wrong reasons? *The real insight: "we'll do the harder thing later" often means "we'll lock in technical debt that makes the harder thing structurally impossible."*

6. **What if the liability for false negatives transferred entirely to the user?**: Here's something absurd — imagine a product design where, in exchange for maximum privacy, the user signs a binding agreement that they accept all clinical and legal responsibility for any cardiac event that occurred despite wearing the device. Strip away the ethical objections for a moment: what would the product look like if the design team genuinely internalized that premise? What changes? *The real insight: the current architecture distributes accountability asymmetrically — the device company benefits from wellness framing but users bear the consequences of false reassurance.*

---

## What If the Battery Constraint Were Eliminated — and That Made Things Worse?

7. **Give the device infinite power and watch the real problems surface**: Imagine the 7-day battery constraint simply disappeared — unlimited onboard energy, no duty-cycling required, the ML model runs at full precision continuously — and now ask: what new failure modes, ethical risks, or design pathologies would emerge that the power constraint was actually suppressing? What does this reveal about the ways physical constraints have been doing moral and architectural work that no one has explicitly designed for? *The real insight: the 7-day battery target is functioning as a proxy for a dozen harder tradeoffs — removing it doesn't solve problems, it reveals them.*

---

**Total questions**: 7
**Topic clusters**: 4

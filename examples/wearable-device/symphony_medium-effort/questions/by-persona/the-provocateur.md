---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Provocateur"
category: perspective
stream: append
volume: 7
---

# Brainstorming Questions from The Provocateur: On-Device ML Health Monitoring Wearable

---

## What If Privacy Is the Wrong Problem Entirely

1. **Inverse surveillance**: What if instead of protecting health data from leaving the device, the device deliberately broadcast all raw biometric data publicly to everyone — and the design challenge became making that *acceptable*? What does working backward from that scenario reveal about which privacy protections are genuinely about user safety versus which exist primarily to protect the company's liability and regulatory exposure?

2. **Designed to misread**: What if the ML model was intentionally tuned to generate false positives at a high rate — say, one unnecessary alert per week — because users who occasionally got scared and went to the doctor were actually healthier on average than users who trusted silence? *The real insight: what assumptions are baked into "accuracy as a good" that may not actually map to health outcomes?*

---

## What If the Device Was Its Own Adversary

3. **The hostile wearable**: Imagine the device was designed by someone who wanted users to abandon it within six months — what would they build, and how closely does it resemble the current design? *The insight: 7-day battery targets, complex companion app sync, and alert fatigue from imperfect models may all be features of a device that erodes trust over time — and the team might be designing these in without noticing.*

4. **Death by success**: Imagine this product succeeds wildly — 10 million users, clinical partnerships secured, FDA clearance granted — and then becomes the thing everyone fears and hates within five years. What went wrong? Work backward from the public scandal rather than forward from the launch. *The productive seed: which design decisions today create irreversible lock-in to assumptions that might catastrophically fail at scale?*

---

## What If the Constraints Are Backwards

5. **Battery as the primary output**: What if the 7-day battery life was not a constraint but the *product* — and cardiac arrhythmia detection was just the justification for making an extremely efficient power system? How would the design change if you optimized the entire architecture around power budget first and let accuracy be whatever it could be within that envelope? *The insight: the team frames power as a tax on accuracy; inverting this might reveal a more honest hierarchy of what the hardware can actually deliver.*

6. **The device that refuses to help**: Here's something absurd, but stay with me — what if the wearable was designed to detect anomalies but *never alert the user*, only alerting the user's physician or a designated emergency contact? The user has no idea what the device knows. What design decisions become easier or more defensible? What does this reveal about the current alert architecture's unstated assumptions about user agency and informed consent? *The real insight: the alert pipeline embeds a particular theory of who should act on health information, and that theory is never explicitly interrogated.*

---

## What If the Regulatory Path Is a Trap

7. **Imagine the 510(k) succeeds and ruins everything**: What if FDA 510(k) clearance is the worst outcome — not because clearance is bad, but because achieving it forces the team to freeze the ML model architecture at a moment in time, making the device legally unable to benefit from model improvements for years? *The productive seed: the regulatory strategy has an implicit assumption that the device's intelligence is fixed at launch; on-device ML that cannot be updated without re-clearance may mean the "on-device" privacy advantage comes at the cost of the device becoming clinically obsolete while still being marketed to users.*

---

**Total questions**: 7
**Topic clusters**: 4

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Constraint Flipper"
category: "perspective"
stream: "append"
volume: 7
---

# Brainstorming Questions from The Constraint Flipper: On-Device ML Health Monitoring Wearable

---

## Power Budget as Design Driver

1. **Forced simplicity as a feature**: If the 7-day battery constraint rules out continuous high-frequency inference, how might intermittent or event-triggered sensing — rather than always-on monitoring — actually produce a more user-friendly device that feels less surveillance-like and more intentionally attentive?

2. **Efficiency ceiling as differentiator**: What if the hard power budget becomes the forcing function that produces a uniquely compact, interpretable ML model — one that could be audited, certified, and trusted by clinicians more readily than a power-hungry black-box approach run in the cloud?

---

## On-Device-Only Privacy as Market Positioning

3. **The "no cloud" constraint as a brand promise**: Rather than treating on-device-only processing as a compliance burden, how could it become the core value proposition — a trust signal that attracts users who have explicitly rejected other health wearables precisely because of cloud data exposure?

4. **Federated learning's absence as a purity argument**: If raw data truly never leaves the device and federated learning is also off the table, what novel mechanisms — user-initiated anonymized exports, opt-in research programs, synthetic data generation on-device — could let the team improve models over time without compromising the privacy guarantee?

---

## Runway and Team Constraints as Focus Mechanism

5. **Eighteen months as a scoping gift**: With 18 months of runway and 12 engineers, the team cannot build everything — so which two or three ML inference capabilities, if done exceptionally well, would validate the on-device approach so compellingly that the constraint of limited resources actually accelerates the path to Series B over a broader but shallower feature set?

---

## FDA Pathway Constraint as Strategic Asset

6. **Consumer wellness ceiling as a learning runway**: The decision to launch as a consumer wellness device rather than seeking FDA 510(k) clearance initially could be reframed not as regulatory avoidance but as a structured evidence-collection phase — how could the team instrument the consumer launch specifically to generate the clinical-grade validation data that makes the eventual 510(k) submission stronger and faster?

7. **False-positive tolerance as a calibration advantage**: Consumer wellness devices are permitted to be more conservative (higher sensitivity, more false positives) than cleared clinical devices — how might deliberately designing for this looser tolerance now create a rich labeled dataset of edge cases and borderline signals that would be nearly impossible to collect in a controlled clinical trial, giving the team a unique training corpus for the eventual clinical-grade model?

---

**Total questions**: 7
**Topic clusters**: 4

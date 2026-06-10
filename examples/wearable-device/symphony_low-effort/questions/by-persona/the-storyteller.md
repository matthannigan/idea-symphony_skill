---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Storyteller"
category: "perspective"
stream: "append"
volume: 7
---

# Brainstorming Questions from The Storyteller: On-Device ML Health Monitoring Wearable

---

## The Moment of Discovery

1. **The silent alert**: Imagine Marcus, 54, waking at 2 a.m. to a gentle haptic buzz on his wrist — the device has flagged an arrhythmia pattern it has never surfaced before. What is the complete narrative arc from that silent on-device inference to the moment Marcus decides whether to call a doctor, and how should the system design support every emotional beat of that journey without overwhelming him with raw data he cannot interpret?

2. **The false alarm chapter**: Picture a user who receives three alerts in a single week, each one prompting an anxious trip to urgent care, only to be told each time that nothing is wrong — and who eventually ignores the fourth alert, which turns out to be real. How does the team write a different ending to that story, and what does that require of the false-positive tuning strategy and the way uncertainty is communicated to the wearer?

---

## Living With the Device, Day After Day

3. **Seven days on one charge**: Walk through the lived week of a health-conscious 45-year-old who swims laps, travels across two time zones, and wears the device while sleeping — and describe the specific moments where a 7-day battery promise either holds the story together or breaks it. What constraints does that realistic daily arc place on how the firmware team must schedule sensing, inference, and radio duty cycles across wildly different activity contexts?

4. **The invisible data vault**: A user is asked by her cardiologist to share three months of historical data to support a clinical consultation. She is relieved to learn her raw biometric signals never left the device — but then realizes she cannot hand the cardiologist what he needs without going through the companion app's aggregated summaries. How does that scene play out, and what does it reveal about the tension between the privacy promise and the clinical utility the device is trying to earn?

---

## The Regulatory Crossing

5. **Two products, one device**: Imagine the same wristband sitting on a shelf in a Best Buy next to fitness trackers today, and then sitting in a hospital cardiac monitoring program two years from now. Tell the story of the design decisions made in year one — in firmware, in ML model versioning, in data pipeline architecture — that either leave the door open for that second chapter or quietly close it. What narrative continuity must the engineering roadmap preserve across that regulatory crossing?

---

## The Trust Gradient

6. **The skeptic's conversion**: Picture a user who downloads the companion app with deep skepticism — she does not trust that "AI on my wrist" can detect anything meaningful, and she especially does not trust that her health data is truly private. Walk through the specific interaction moments, from first pairing to first meaningful alert, where the design either earns her trust or loses it, and what that arc demands of the transparency and explainability choices baked into the on-device model's output format.

7. **The handoff to the clinical partner**: Envision the first conversation between the startup's engineering lead and the compliance officer at a hospital system exploring a clinical partnership. The compliance officer asks: "Walk me through exactly what leaves the device and what never does." Tell that story in enough technical and emotional detail to reveal which architectural choices — in the sync protocol, the aggregation logic, the audit trail — become the pivots on which the partnership either advances or stalls.

---

**Total questions**: 7
**Topic clusters**: 4

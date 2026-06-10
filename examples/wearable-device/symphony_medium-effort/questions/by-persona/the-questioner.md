---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Questioner"
category: "analytical"
stream: "synthesize"
volume: 13
---

# Brainstorming Questions from The Questioner: On-Device ML Health Monitoring Wearable

---

## Hidden Assumptions in the Privacy Architecture

1. **On-device as sufficient privacy**: Why do we assume that keeping raw biometric data on the device is sufficient to satisfy user privacy expectations — and what happens when the device is lost, stolen, repaired, or returned under warranty, and someone else can access that stored data?

2. **User understanding of "processed alerts"**: What mental model do users actually have about what leaves their device when they receive an alert, and if they discovered that inference results, model weights, or behavioral metadata were being transmitted, would they feel the privacy promise had been broken?

3. **HIPAA as the right standard**: Why do we assume HIPAA is the correct regulatory framework to architect toward when the device is launching as a consumer wellness product — and what assumptions does HIPAA compliance embed about data ownership, clinician relationships, and audit trails that may conflict with a consumer product experience?

## Tradeoffs We Haven't Fully Confronted

4. **False positive cost asymmetry**: What is the asymmetry between the cost of a false positive (a user panics, rushes to an ER, loses trust in the device) and a false negative (a real arrhythmia event goes undetected) — and who bears each of those costs, and how does that asymmetry change once the device is used in a clinical partnership context?

5. **Battery life as a design constraint vs. a user expectation**: What if the 7-day battery target is not actually what users need — and the team is optimizing against a spec that was set before talking to the 40+ demographic about their actual charging habits and tolerance for longer battery life at the cost of other features?

6. **On-device training foreclosed too early**: Why do we assume on-device training is off the table — and what would it unlock in terms of personalization accuracy and privacy if we revisited that assumption with a more constrained form of local fine-tuning rather than full model training?

## What "Early Detection" Actually Means in Practice

7. **Detection window and user action**: What does "early detection" functionally mean for the end user — detected how much earlier than what baseline, with what expected clinical outcome — and if the device detects a probable arrhythmia event at 2am, what is the user actually supposed to do with that information?

8. **Populations excluded by the form factor**: Who is not a wrist-worn device user among the 40+ cardiac-risk demographic, and are the people most at risk for cardiac events the same people least likely to wear and maintain a health monitoring wearable consistently?

9. **Model performance in the real world vs. lab**: What assumptions does the ML model's accuracy benchmarking make about how users will actually wear the device — placement consistency, skin tone variation, motion artifacts from daily activity — and how much does real-world performance degrade from controlled test conditions?

## Regulatory Strategy and the Consumer-to-Clinical Transition

10. **The 510(k) strategy as a future option vs. a present constraint**: What decisions being made now in the consumer wellness architecture will be difficult or impossible to reverse once a 510(k) pathway becomes viable — and are those decisions being made with full awareness of what FDA cleared predicate devices require in terms of data logging, algorithm transparency, and post-market surveillance?

11. **Clinical partnership incentives**: What incentive does a clinical partner actually have to integrate a consumer wellness device into their workflow, and what would need to be true about the device's evidence base, liability posture, and integration architecture before a cardiology practice would act on its alerts rather than treat them as noise?

## System Sustainability and Team Risk

12. **Model update governance**: What happens to a user who has been wearing the device for two years when a firmware update includes a new model version — who decides whether the new model is better for that specific user, and what recourse exists if the update changes their alert patterns in a way they don't understand or trust?

13. **18-month runway and the V1 scope**: Given 18 months of runway, what is the minimum viable version of this system that generates enough clinical or commercial signal to secure the next funding round — and are the current scope and architecture decisions optimized for that milestone, or for a more ambitious version that may never get built if V1 doesn't land?

---

**Total questions**: 13
**Topic clusters**: 5

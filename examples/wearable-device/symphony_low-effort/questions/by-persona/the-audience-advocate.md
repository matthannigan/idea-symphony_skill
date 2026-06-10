---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Audience Advocate"
category: structural
stream: synthesize
volume: 13
---

# Brainstorming Questions from The Audience Advocate: On-Device ML Health Monitoring Wearable

---

## Who Is Actually Being Served — and Who Is Being Left Out

1. **The stated target is "health-conscious adults 40+ with a family history of cardiac events," but what does that framing exclude?** When you map the full population of people who would benefit most from early arrhythmia and sleep apnea detection — those with limited access to cardiology care, those in rural areas, those without family health history due to adoption or estrangement — how does the product's design, price point, and companion app experience hold up for those people compared to those it was built for?

2. **What assumptions about digital literacy and smartphone access are baked into the companion-app architecture?** If the wearable requires a smartphone to surface processed alerts and aggregated summaries, what happens to the older adult who owns a basic phone, shares a family device, or prefers no smartphone at all — and how does that design choice effectively re-gate the health intelligence behind a second device purchase that not every target user can make?

3. **From the community's perspective, "health-conscious" is a heavily loaded filter — how might the device experience differ for someone who is newly health-anxious after a family cardiac event versus someone who has been managing a chronic condition for years?** What emotional state does the first-time user arrive in, and is the device's onboarding, notification language, and alert framing designed for that emotional state or for the composed, informed user the team imagines?

---

## The Emotional and Psychological Experience of Living With Health Monitoring

4. **What is the felt difference between a device that tells you something is wrong and one that gives you the context to understand what that means?** When the on-device ML fires a cardiac arrhythmia alert, the user receives a processed signal — not raw data, not a clinical interpretation — and at that moment they are alone with their wrist and their anxiety; what does the design do to bridge the gap between "alert received" and "I know what to do next"?

5. **People don't tell us when false positives are eroding their trust — they just stop wearing the device; how will you know when this is happening at scale?** False positive rates for cardiac alerts carry real psychological cost: unnecessary ER visits, heightened health anxiety, erosion of confidence in the device — but users rarely report this explicitly; instead they simply disengage; what mechanisms exist to surface that silent disengagement before it becomes a retention failure?

6. **The device captures continuous biometric data from the body in sleep, at rest, and under stress — what has the team learned about how users feel about being observed by their own device during vulnerable moments?** Sleep monitoring in particular involves a kind of intimacy that is different from step-counting; have users been asked what it feels like to know a microphone is listening to their breathing while they sleep, even if that data never leaves the device?

---

## Consent, Trust, and the Meaning of "Privacy"

7. **"Raw biometric data never leaves the device" is a meaningful technical guarantee, but how do you ensure that users actually understand what that means — and what it does not mean?** The people we serve may experience "privacy" as a single, undivided concept; when they read that only "processed alerts and aggregated summaries" sync to the companion app, do they understand that aggregated summaries are still a model of their body that lives outside the device, or do they believe their data stays entirely contained?

8. **When the regulatory strategy shifts from consumer wellness to FDA 510(k) clinical claims, what changes in the implicit contract between the device and its users — and have the users been told that shift might happen?** People who adopted the product as a wellness device consented to a particular relationship; if that relationship later becomes the basis for clinical data collection or clinical partnership arrangements, what obligations does the team have to re-establish consent rather than rely on an updated terms-of-service click-through?

9. **The people most likely to be harmed by a false negative — a missed cardiac event — are also the least likely to understand the device's detection limitations; how is that information surfaced without inducing either false security or health anxiety?** Telling users the device is not FDA-cleared for clinical diagnosis is a legal disclaimer; translating that into a lived understanding of what the device can and cannot be relied upon for is a design challenge; what does the team believe users actually understand about the device's reliability, and how was that belief tested?

---

## Access, Affordability, and the People Facing the Most Barriers

10. **If the target population is adults 40+ with family cardiac history, a significant portion of that population is also on fixed incomes or has limited disposable income — what does the device cost relative to that reality, and has the team modeled what health outcomes look like when the product is accessible only to the top two income quintiles of its target demographic?** The people who would benefit most from early arrhythmia detection are often the same people for whom a Series A hardware startup's price point is a genuine barrier.

11. **Physical accessibility has not appeared anywhere in the design considerations — for a wrist-worn device targeting adults 40+, what accommodations exist for users with dexterity limitations, visual impairments, or conditions like Parkinson's that affect how they interact with a wearable?** The alert and summary interface is presumably visual and touch-driven; what does that experience look like for someone whose hands shake or who cannot reliably read a small screen?

12. **What happens in the device experience when a user detects something alarming but lacks the infrastructure to act on it — no insurance, no primary care physician, no way to access a cardiologist in their geography?** The device generates an alert; the user receives it; and then what? The product creates a new kind of health information moment without necessarily creating the pathways to respond to that moment — has the team thought about what it means to surface a potential cardiac arrhythmia to someone who has no clear next step?

---

## Whose Voice Has Shaped the Design

13. **The design team is twelve engineers, and the stated target users are adults 40+ with cardiac family history — how many people from that demographic have participated in iterative design decisions, not just usability testing at the end?** There is a gap between designing for a community and designing with them; at what points in the architecture decisions — sensor selection, alert thresholds, notification language, data pipeline design — were actual people from the target demographic in the room, and what did they change?

---

**Total questions**: 13
**Topic clusters**: 4

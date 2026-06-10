---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Audience Advocate"
category: "structural"
stream: "synthesize"
volume: 13
---

# Brainstorming Questions from The Audience Advocate: On-Device ML Health Monitoring Wearable

---

## Living With Alerts: The Emotional Weight of Health Notifications

1. **Alert fatigue and trust**: When the device surfaces a cardiac anomaly alert at 2am, what does the user actually experience emotionally — and how does that moment of fear, confusion, or dismissal shape whether they ever trust the device again?

2. **False positive harm**: A user in their 50s with no prior cardiac history receives three inconclusive arrhythmia warnings in a week — what does that do to their daily anxiety, their relationship with their doctor, and their willingness to keep wearing the device?

3. **Calibrating urgency without clinical authority**: How do we communicate the severity gradient from "worth mentioning to your doctor sometime" to "call 911 now" in a way that a non-medical user can act on correctly, given that the device cannot make clinical diagnoses?

---

## Access, Equity, and Who Gets Left Out

4. **Affordability and the target demographic**: The target user is health-conscious adults 40+ with a family history of cardiac events — a group that skews toward middle and upper income. How might the device's design choices (price, app ecosystem, onboarding) inadvertently exclude the people most at risk who have the fewest healthcare touchpoints?

5. **Digital literacy and setup friction**: What happens to a 68-year-old with limited smartphone experience during first-time device setup? Where in the onboarding flow do people who most need this device quietly give up — and never complain about it because they assume it's their fault?

6. **Skin tone and sensor accuracy**: PPG-based heart rate and SpO2 readings have documented accuracy disparities across skin tones. How are we validating sensor performance across diverse skin types, and what obligation do we have to disclose known accuracy gaps to users before purchase?

7. **Physical accessibility and wearability**: A wrist-worn device assumes a certain hand anatomy, motor dexterity for charging and app interaction, and tolerance for continuous wear. How are we designing for users with arthritis, prosthetics, skin sensitivities, or conditions that make wrist-worn devices uncomfortable or impossible?

---

## Privacy as a Lived Experience, Not a Policy Checkbox

8. **Meaningful consent vs. legal consent**: The privacy architecture ensures raw biometric data never leaves the device — but do users actually understand what that means, what does sync, and what "aggregated summaries" could reveal about them? How do we make privacy real and legible rather than buried in terms of service?

9. **Family pressure and shared data**: A user's adult child insists on having access to the health alerts "just to be safe." What boundaries does the product design create or erase around the user's right to private health information within their own household — and how might pressure dynamics around family caregiving undermine the autonomy of the person wearing the device?

10. **Trust after a breach or false claim**: If the companion app is ever compromised, or if a health insurer attempts to access device data via a clinical partnership, how will users feel about having worn this device for years? What mechanisms exist to protect the trust relationship retrospectively, not just at the point of purchase?

---

## The Doctor-Patient Relationship and Clinical Translation

11. **Bridging the device-to-clinician gap**: A user brings six weeks of sleep apnea event logs to their primary care physician, who has never seen this device's output format before. What does that conversation look like — and how does the product design either enable or frustrate the user's ability to advocate for themselves in a clinical setting?

12. **Unarticulated need — the reassurance use case**: Many users will not primarily use this device to detect problems; they will use it to reassure themselves that nothing is wrong. How does the product design serve that emotional need — and does continuous monitoring without anomalies create its own psychological dependency or false security?

---

## Agency, Identity, and the Long-Term Relationship With the Device

13. **User agency over the ML model**: As the device's anomaly detection model improves through firmware updates, users' baseline classifications may shift — an event that was previously flagged might no longer be, or vice versa. How do we preserve user agency and comprehension when the ground truth the device uses to interpret their body silently changes beneath them?

---

**Total questions**: 13
**Topic clusters**: 4

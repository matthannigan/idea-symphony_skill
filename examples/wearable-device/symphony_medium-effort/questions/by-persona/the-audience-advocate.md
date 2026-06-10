---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
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

## Understanding Who Actually Wears This — and What They Carry Into the Experience

1. **The 40+ cardiac-history user's emotional baseline**: When someone with a family history of cardiac events first puts on this device, what emotional state are they likely in — anxious vigilance, cautious optimism, or fatalistic monitoring — and how does that entry state shape what they need from the device's first days of feedback?

2. **Health literacy as a hidden design constraint**: How much do the target users actually understand about PPG signals, SpO2, or arrhythmia detection, and what happens to trust and behavior when the device surfaces a metric they cannot interpret — do they seek care, ignore it, or spiral into anxiety?

3. **The gap between stated preferences and actual behavior**: Users may say they want detailed health data and control over their privacy settings, but what do people with chronic health anxiety or low technical fluency actually *do* when faced with complex consent screens or alert configurations — and how does the design account for that behavioral gap?

4. **Reaching users who need it most but trust least**: The population most at risk for undetected arrhythmia often includes older adults with lower digital fluency, those who distrust medical technology, or people who've had previous health scares dismissed. How does the device earn trust with users who are skeptical, not just health-conscious early adopters?

---

## Alert Design and the Lived Experience of Health Notifications

5. **The emotional weight of a false positive**: When the device flags a potential arrhythmia event that turns out to be motion artifact or normal variation, what is the downstream experience for a 55-year-old with cardiac anxiety — a frightening ER visit, a dismissive GP, eroded trust in the device? How should false positive tolerance be calibrated not just for liability, but for the emotional cost to users?

6. **Alert fatigue and the user who stops looking**: If users receive frequent low-confidence alerts, many will start ignoring notifications entirely — including genuine ones. What does the alert frequency threshold need to be, derived from user experience research rather than model accuracy metrics alone, to keep users engaged rather than numbed?

7. **The moment of a real detection — and what happens next**: When the device correctly identifies a significant arrhythmia event during sleep, what should the experience feel like at 3am for the user — what information do they need, in what form, to decide whether to call emergency services or wait until morning? Is the device designed for that decisive, frightened moment?

8. **Communicating uncertainty honestly without causing panic**: ML-based anomaly detection produces probabilistic outputs, not binary diagnoses. How should the device communicate "this may need attention" versus "this is definitely something serious" to users who are not statisticians — and what phrasing or visual language preserves honesty without causing medically harmful alarm responses?

---

## Privacy Trust as a User Experience, Not Just a Compliance Checkbox

9. **Privacy as a felt experience, not a policy statement**: The architecture keeps raw data on-device, but do users believe it? What does the companion app need to show — not just in its privacy policy but in its moment-to-moment interface — to make users *feel* that their biometric data is genuinely private, particularly users who distrust tech companies by default?

10. **The consent experience for users with limited time or literacy**: HIPAA-compliant architecture requires meaningful consent, but how should that consent be structured for a 62-year-old who is not reading a terms-of-service document — what does informed, genuinely voluntary consent look like as a designed experience rather than a legal formality?

11. **What users want to share and with whom — on their own terms**: The sync model currently flows data to a companion app, but users may want to selectively share data with a cardiologist, a spouse, or no one at all. How does the data-sharing architecture give users agency over their own health information rather than defaulting to the design that is easiest for the team to build?

---

## Accessibility, Equity, and Who Gets Left Out

12. **The user who cannot afford a companion smartphone**: A wrist-worn device paired to a companion app assumes smartphone ownership and data connectivity. What is the experience for users who rely on older phones, prepaid plans with limited data, or shared devices — and does the "privacy-by-default, alerts-on-device" architecture provide meaningful standalone value when the app is inaccessible?

13. **Physical and sensory accessibility of the form factor**: Wrist-worn devices assume a range of wrist sizes, skin tones (PPG signal quality varies with melanin concentration), and motor dexterity for charging and setup. What testing and design decisions ensure the device works accurately and comfortably for users outside the default prototype demographic — and are those tests planned before launch or deferred?

---

**Total questions**: 13
**Topic clusters**: 4

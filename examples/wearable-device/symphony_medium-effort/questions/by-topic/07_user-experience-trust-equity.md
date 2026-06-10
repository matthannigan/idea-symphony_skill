---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "medium"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 07: User Experience, Trust & Equity

## Questions

1. **The 40+ cardiac-history user's emotional baseline and health literacy**: When someone with a family history of cardiac events first puts on this device, what emotional state are they in (anxious vigilance, cautious optimism, fatalistic monitoring), how much do they actually understand about PPG signals, SpO2, or arrhythmia detection, and what happens to trust and behavior when the device surfaces a metric they cannot interpret — do they seek care, ignore it, or spiral into anxiety, and how does that entry state shape what they need from the device's first days of feedback?
2. **The gap between stated preferences and actual behavior, and earning trust with users who trust least**: Users may say they want detailed health data and granular privacy control, but what do people with chronic health anxiety or low technical fluency *do* when faced with complex consent screens (especially a 62-year-old not reading a terms-of-service document) — and given the population most at risk for undetected arrhythmia includes older adults with lower digital fluency and people who've had previous health scares dismissed, how does the device earn trust with users who are skeptical, not just health-conscious early adopters, and what does informed, genuinely voluntary consent look like as a designed experience rather than a legal formality?
3. **Selective sharing, exclusion of users without companion smartphones, and physical/sensory accessibility**: The sync model defaults data to a companion app, but users may want to selectively share with a cardiologist, a spouse, or no one at all — how does the data-sharing architecture give users agency over their own information rather than the easiest design for the team to build, what is the experience for users who rely on older phones, prepaid plans with limited data, or shared devices (does the architecture provide meaningful standalone value when the app is inaccessible), and what testing ensures the device works accurately and comfortably across wrist sizes, skin tones (PPG signal quality varies with melanin concentration), and motor dexterity for charging and setup before launch — or are those tests deferred?
4. **A device users feel grateful for**: Imagine it is three years from now and a 52-year-old with a family history of heart disease tells a friend, "This device may have saved my life, and I trust it completely." What would the technical architecture, alert experience, and data relationship need to look like to produce that story?
5. **Detection window and what users actually do with the information**: What does "early detection" functionally mean for the end user — detected how much earlier than what baseline, with what expected clinical outcome — and if the device detects a probable arrhythmia event at 2am, what is the user actually supposed to do with that information?
6. **The hostile wearable**: Imagine the device was designed by someone who wanted users to abandon it within six months — what would they build, and how closely does it resemble the current design? *The insight: 7-day battery targets, complex companion app sync, and alert fatigue from imperfect models may all be features of a device that erodes trust over time — and the team might be designing these in without noticing.*
7. **The companion app as confidant**: Walk through a week in the life of someone who syncs their aggregated health summaries to the companion app — what emotional and informational arc does that weekly story need to tell to feel meaningful rather than clinical, and what privacy boundary between raw biometrics and shared summaries preserves the user's sense of bodily autonomy?
8. **Symbiotic health awareness**: What if this device didn't monitor health as an observer extracting data from a body, but instead became a participant in a living feedback loop — one where the boundary between "device knowing you" and "you knowing yourself" gradually dissolves? What entirely new category of human-technology relationship does that open up, and how would its design be different from a monitoring device?
9. **Beyond detection toward meaning**: What if the core purpose of the wearable were reimagined not as anomaly detection — catching deviations from a baseline — but as cultivating a person's ongoing, felt understanding of their own body's rhythms? What would that product look like if it were invented from scratch today, with no legacy of medical devices to constrain it?

---

**Question count**: 9
**Cluster focus**: Who actually wears this device, what they bring into the experience, and which populations the form factor and companion-app architecture systematically exclude.

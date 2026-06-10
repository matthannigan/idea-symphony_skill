---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "medium"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 03: False Positive/Negative Economics & Alert Design

## Questions

1. **Asymmetric cost of false positives and false negatives across stakeholders**: False negatives carry clinical harm risk (missed arrhythmia) while false positives carry alert fatigue, liability, and emotional cost — what decision threshold policy, sensitivity/specificity tradeoff, and downstream escalation protocol best balances these for a 40+ consumer wellness population, who bears each cost (user, family, ER system, company), and how does the asymmetry shift once the device enters a clinical partnership context?
2. **The sensitivity ratchet and alert fatigue feedback dynamic**: If early adopters expect high sensitivity, the team tunes the model accordingly, false positive rates rise, user trust erodes, alerts get dismissed, and real-world detection rate falls below lab rate — how does the team break this compounding pattern and the related sensitivity ratchet between detection latency and alert fatigue (where tuning for faster detection early creates a user expectation that becomes costly to walk back if latency must increase later to reclaim battery budget) before it embeds in the product's reputation?
3. **The lived experience of alerts at 3am, in the ER, and at the threshold of probabilistic uncertainty**: When the device correctly identifies a significant arrhythmia during sleep, what should the experience feel like for a frightened user deciding whether to call emergency services, what alert frequency threshold (derived from UX research, not just model accuracy) keeps users engaged rather than numbed, and what phrasing or visual language communicates "this may need attention" versus "this is definitely something serious" to non-statisticians without causing medically harmful alarm responses?
4. **Alert calibration as nuclear deterrence equilibrium**: Cold War strategists discovered that credibility of deterrence depends not on maximizing destructive capacity but on calibrating response thresholds so that false alarms do not trigger escalation — your false positive/negative tradeoff has the same structural property: a system that alerts too readily loses user trust and gets ignored (deterrence failure from crying wolf), while one that is too conservative misses actual events (failure through inaction); what does the deterrence literature's concept of "graduated response" suggest about designing a tiered alert architecture that distinguishes urgent cardiac alerts from lower-confidence sleep apnea flags, and how does this interact with liability exposure?
5. **The 3 a.m. alert**: Imagine Marcus, a 54-year-old with a family history of cardiac events, wakes to a gentle vibration on his wrist — the device has flagged an irregular heartbeat pattern during sleep. What should happen in the next sixty seconds of his experience — how does the device communicate urgency without triggering panic, and how does that first alert shape his trust in every subsequent one?
6. **The false alarm aftermath**: Picture Elena receiving a cardiac alert, rushing to the ER, and being told her heart is fine — what does that experience do to her relationship with the device, and how should the product design account for the emotional cost of a false positive on both the user and their family?
7. **Designed to misread**: What if the ML model was intentionally tuned to generate false positives at a high rate — say, one unnecessary alert per week — because users who occasionally got scared and went to the doctor were actually healthier on average than users who trusted silence? *The real insight: what assumptions are baked into "accuracy as a good" that may not actually map to health outcomes?*
8. **From alert to dialogue**: What if the wearable never issued an alert — not because anomalies don't occur, but because the entire alert-and-notification paradigm were replaced with something that has no current analog: a continuous, ambient language between body and device that a person learns to read the way a musician learns to hear pitch? What would it take to design that language, and what would it make possible that a cardiac arrhythmia alert never could?

---

**Question count**: 8
**Cluster focus**: How to calibrate the accuracy/sensitivity tradeoff so it serves both liability exposure and the lived emotional experience of users receiving health notifications.

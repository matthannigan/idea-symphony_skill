---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "03_false-positive-negative-economics-alert-design"
persona: "The Pragmatist"
---

# False Positive/Negative Economics & Alert Design - The Pragmatist

---

## Asymmetric Cost of False Positives and False Negatives Across Stakeholders

* **Summary.** Set a fixed specificity floor (95%+) non-negotiable for liability protection, then optimize sensitivity around that constraint. A practical approach: define "clinical harm threshold" for false negatives (missed arrhythmia severity) and map it to acceptable annual false alarm count per user (e.g., 2–4 alerts). Start with conservative thresholds, gather 6 months of real-world data, then co-design with a cardiologist advisory board to adjust based on actual ER validation rates. Cost distribution: user bears alert fatigue, company bears liability and reputation risk, ER system bears verification burden. At clinical partnership threshold, contract explicitly assigns false positive costs to company (coverage for unnecessary ER visits).

---

## The Sensitivity Ratchet and Alert Fatigue Feedback Dynamic

* **Summary.** Document the tuning policy in writing before launch—set a "baseline sensitivity contract" with early beta users stating expected false positive frequency and commit to a 12-month stability window. If sensitivity adjustments are required post-launch, communicate transparently with concrete numbers (e.g., "We're moving from 1 alert per week to 1 per month"). Build a feedback loop: weekly cohort analysis of alert response rates to catch dismissal creep early. Practical win: implement a two-tier sensitivity system for users who opt in—conservative (fewer false positives) vs. aggressive (faster detection)—so that user expectation fragmentation becomes a feature, not a failure.

---

## The Lived Experience of Alerts at 3am, in the ER, and at the Threshold of Probabilistic Uncertainty

* **Summary.** Conduct moderated usability testing with target demographic (50+ with family history) waking them at 3am with prototype alerts and observing 5-minute decision-making behavior. Design for decision speed: a single 2–3 second haptic pattern + screen message that distinguishes "check-in recommended" (yellow, sleep) from "consider professional review" (red, potential emergency). For phrasing, field-test against phrases like "pattern detected" vs. "concerning pattern" with actual users and track which language correlates with appropriate action (not immediate ER, not dismissal). Run this UX research in Q2, before firmware lock.

---

## Alert Calibration as Nuclear Deterrence Equilibrium

* **Summary.** Design a three-tier alert architecture: Tier 1 (confident cardiac events, ≥90% specificity) → immediate vibration + red icon; Tier 2 (moderate confidence arrhythmia, 75–85% specificity) → subtle notification + yellow; Tier 3 (low-confidence sleep apnea or anomaly flags) → silent logging + weekly summary. Graduated response preserves credibility for Tier 1 (users trust it), reduces false alarm fatigue for Tier 2–3, and creates audit trail if litigation occurs. Liability upside: defense can document that high-confidence alerts had measured restraint, not hair-trigger sensitivity. Operationally: separate model outputs by confidence score from day one so thresholds can be tuned per tier without re-training.

---

## The 3 a.m. Alert

* **Summary.** Marcus receives a gentle double-tap at 3am, wakes to see a 2-line message: "Irregular heartbeat pattern detected. Not an emergency unless accompanied by chest pain or shortness of breath." A single button choice appears: "Log this & monitor" or "Get guidance." The device suggests he can log it now and contact his doctor in the morning, or provides 24/7 nurse hotline access (cost-neutral partnership with insurance). This honors the 60-second window by enabling informed action, not panic-driven ER visits. Build this specific flow in the companion app by Q3, test with 10 beta users woken by synthetic alerts, and measure response times and reported anxiety levels. The design assumption: users value information more than reassurance.

---

## The False Alarm Aftermath

* **Summary.** Implement a post-alert followup system: 48 hours after a Tier 1 alert, send Elena a brief summary asking what happened ("I went to ER and confirmed no issue" / "I called my doctor" / "I waited and symptoms resolved"). Log these outcomes to calibrate false positive cost. If a user accumulates 3+ false Tier 1 alerts in 6 months, proactively offer a review call with the clinical team to reassess sensor placement or model tuning. Practically: budget 2 FTE for manual review and user outreach. For emotional recovery, position follow-ups as "learning moments" (your device is improving), not apologies. This turns false alarms into retention data and distinguishes users who become hypervigilant from those who stay engaged.

---

## Designed to Misread

* **Summary.** The insight cuts deeper than model accuracy—it's about outcome mapping. A weekly false positive might correlate with higher screening rates and earlier clinical intervention, but causation is unclear and liability explodes if it becomes intentional. Practical reframing: instead of intentional false positives, pursue selective sensitivity tuning for high-risk subgroups (e.g., users with family history get higher sensitivity) with fully informed consent. A/B test this with 200-user cohorts over 6 months. Measure actual health outcomes (hospitalizations, major events detected early, quality of life), not just alert accuracy. The real win: evidence-based personalization that improves health outcomes and reduces false positives simultaneously, making the accuracy-outcome gap explicit.

---

## From Alert to Dialogue

* **Summary.** Pragmatically, this requires a 3–5 year research roadmap, not the current product cycle. A practical starting point: implement a "confidence timeline" view in the companion app—users see a 7-day rolling graph of detected anomalies (low/medium/high confidence) without discrete alerts, letting them pattern-match for themselves. Include educational content explaining what each anomaly pattern means (arrhythmia type, severity range). This is a hybrid: still device-driven data, but framed as continuous dialogue rather than alarm. Pilot with 50 engaged users in Q4, gather qualitative feedback on whether they feel more aware or more anxious. If successful, this becomes foundation for ambient feedback in next hardware version (e.g., LED pulses at varying intensity for pattern confidence).

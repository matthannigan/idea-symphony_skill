---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "09_team-capacity-runway-validation"
persona: "The Pragmatist"
---

# Team Capacity, Runway & Validation - The Pragmatist

---

## Twelve Engineers, Five Simultaneous Hard Problems, And The V1 Scope

* **Phase Gate Approach.** Don't solve all five problems in parallel; gate them sequentially. Firmware baseline (3 months) → hardware validation (2 months) → ML tuning (4 months) → companion app (2 months) → regulatory prep (2 months). This adds slack and forces prioritization. Defer sensor fusion beyond PPG+accel; drop microphone until V1.1. V1 success = 7-day battery + 85% arrhythmia recall on in-house dataset. That's fundable for Series B.

* **Workstream Criticality Matrix.** Rank by: (1) time-to-first-revenue, (2) reversibility cost, (3) team ramp-up risk. On-device inference is 1A (reversibility is expensive; takes 6 weeks to pivot to cloud). Hardware co-design is 1B (foundry timelines lock in month 3). HIPAA architecture is medium priority (add in month 10; consumer launch doesn't require it). Explicitly cut skin temperature and breathing from V1 hardware BOM. Write this down; review monthly.

* **Minimum Viable Validation Milestone.** By month 9, you need: 20 real users wearing prototypes for 2 weeks, 15+ detected arrhythmia events, <3 false alerts per day per user, battery >6 days. If you hit that, Series B closes easier than if you have "we think it works" with no live data. Build the validation experiment into roadmap now, not as afterthought.

* **Deferral Without Breaking V1.** Federated learning defers to V2 (adds 8 weeks, zero clinical value in consumer phase). Multi-model ensemble defers to V1.1 (single SVM-based model is 50% the complexity, validated on Holter data is sufficient). Granular activity segmentation defers (use gross activity/sleep vs. awake). Companion app starts with barebones alerting + aggregated summaries; advanced insights wait for V2.

* **Series B Story Framing.** Investors don't care if you optimized latency to 50ms vs. 100ms. They care: "We've validated on X real users, achieved Y% sensitivity, and hit our power target." Build toward that proof point, not toward a product that handles every edge case. Cut features ruthlessly; keep the core signal.

---

## Team Structure As A Constraint On System-Level Thinking, With Runway As A Forcing Function

* **Explicit Weekly Tradeoff Forum.** One person (engineering lead or PM) owns system-level tradeoffs and runs a 90-minute weekly meeting: firmware lead, ML lead, hardware lead, mobile lead, and one rotating sub-team member. Agenda: (1) power budget reconciliation, (2) latency vs. accuracy knobs, (3) data pipeline review, (4) blocking dependencies. Document decisions; track reversibility. Without this, sub-teams optimize locally and you discover integration nightmares in month 8.

* **Reversibility Debt Ledger.** If you take firmware shortcuts now (skip interrupt optimization, assume 50mA average current), you burn ~4 weeks of reversibility in month 10. Hardware shortcuts (board layout without thermal margin) cost 6+ weeks. ML shortcuts (no model version control, no retraining pipeline) cost 3 weeks. Quantify this; show it to the team. When runway pressure hits, you'll have agreed thresholds for what's acceptable debt.

* **Single Reconciliation Loop For Cross-Subsystem Risk.** Month 3: full system mock-up with realistic latency, power, and I/O assumptions. Firmware team runs synthetic ML models; ML team uses actual power profiles from hardware. Discover conflicts early (e.g., "our inference window is 2 seconds but PPG buffering needs 5 seconds"). This is a 2-week effort that saves 8 weeks later.

* **Series B Narrative If Pre-Clinical.** If you're still in consumer wellness at Series B, the story is: "We've de-risked hardware and ML; we've validated live accuracy; now we're scaling to clinical validation." Investors accept this if your V1 generates real-world evidence. If you've been 18 months building a fragile system optimized for multiple personas, the ask gets harder. Prioritize shipping over perfecting.

* **Dedicated System Architect Role.** One person (half or full time, rotated from subsystem leads) whose sole job is cross-subsystem tradeoffs. This person has veto power on major scope additions. Without it, scope creep kills runway discipline. That architect is your forcing function.

---

## Ground Truth Dataset And The Validation Corpus

* **Minimum Viable Dataset for V1 Validation.** 30–50 subjects, 48–72 hour Holter recordings, at least 8 arrhythmia events captured on each device (wearable + clinical-grade ECG running in parallel). Age stratification: 40% ages 40–55, 60% ages 55+. No need for full cohort diversity in V1; you're validating technical signal, not population generalizability. Cost: ~$15–30k per subject for Holter + annotations. With 3 ML engineers, 4–6 months to recruit, collect, and label.

* **Annotation Protocol Simplification.** Use cardiologist-reviewed Holter analysis as ground truth; don't re-annotate manually. Holter vendors (GE, Philips) provide event reports; cross-reference your device's detections against those. Eliminates the need for a separate annotation team. Trade-off: you're validated against Holter, not perfect cardiology analysis, but that's sufficient for Series B.

* **Phased Collection, Not All-or-Nothing.** Month 6: collect 10 subjects (fast turnaround, ~6 weeks). Validate your pipeline on that cohort. Month 9: expand to 30 subjects. Month 13: expand to 50 if needed. This spreads ML effort and lets you fix annotation/labeling issues before large-scale collection. Avoids the nightmare of collecting 50 subjects, discovering labeling bugs, and having to redo everything.

* **ML Team Bottleneck Mitigation.** Your 3 ML engineers can't recruit, schedule, and annotate. Hire a part-time clinical coordinator (1 FTE, ~$50–70k) to handle logistics. ML engineers focus on data quality checks and model training. This person also manages Holter vendor relationships and IRB documentation if you move toward clinical studies.

* **Sleep Apnea Dataset Deferred.** Arrhythmia detection has clearer commercial signal (clinical partnerships, potential regulatory pathway). Sleep apnea requires PSG (polysomnography) recordings, which are 8-hour studies, harder to recruit, and less immediately fundable. Collect 10 sleep apnea subjects for proof-of-concept; scale to 30+ in V1.1 if clinical interest materializes.

---

## The Smallest Experiment With The Biggest Signal

* **90-Day Power + Accuracy Field Trial.** Recruit 5 employees or willing users; deploy pre-production prototypes running V1 firmware + current ML models. Let them wear for 14 days continuously. Collect: actual power drain (not simulated), false alert rate, user comfort feedback. This single experiment answers "Does our power target survive real-world usage?" and "Are false alerts tolerable?" Cost: negligible. Signal: massive. Firmware and ML teams run this; no external logistics needed.

* **Holter Cohort Fast-Track (Months 4–6).** Don't wait for Series B validation timing. By month 4, run 8–10 subjects in a clinical setting wearing both your device and a Holter simultaneously. Run identical ML model from V0.8 (not finalized). Objective: 90% sensitivity target on 10 arrhythmia events. If you hit it, you have live validation to show investors by month 7. If you miss, you have 6 months to iterate before Series B push.

* **Battery vs. Accuracy Trade Study (Month 2).** Current firmware allocates 200mW to ML inference, 100mW to sensing, 50mW to BLE. Run three variants on mock data: (1) reduce inference to 150mW (simpler models), (2) reduce sensing to 60mW (lower PPG sampling), (3) leave baseline. Measure accuracy penalty on your internal arrhythmia dataset for each. This 1-week experiment informs how aggressive you need to be with model compression. Firmware team + ML team, parallel effort.

* **Companion App Usability Stress Test (Month 5).** Build barebones app (alert pushes, 7-day summary, settings). Deploy to 10 internal users + 5 external early-access users for 2 weeks. Measure: time to first alert comprehension, false alert dismissal pattern, app crash rate, BLE sync reliability. This reveals data pipeline problems and app stability issues before you scale. One mobile engineer, two weeks. High ROI signal.

* **Firmware Stability Soak Test (Ongoing, Month 3 Onward).** Run 2–3 pre-production devices in continuous operation (24/7, normal duty cycle) for 30 days. Log power, CPU utilization, memory leaks, Bluetooth reconnects. Catch hardware-firmware integration bugs early. One firmware engineer maintains this; it runs in parallel with other work. By month 6, you'll have 90+ days of continuous uptime data, which is impressive for Series B and catches brittleness.

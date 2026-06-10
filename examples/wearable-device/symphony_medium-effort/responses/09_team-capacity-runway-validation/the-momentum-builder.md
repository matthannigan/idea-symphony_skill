---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "09_team-capacity-runway-validation"
persona: "The Momentum Builder"
---

# Team Capacity, Runway & Validation - The Momentum Builder

---

## Twelve Engineers, Five Simultaneous Hard Problems, and the V1 Scope

* **Ruthless sequencing by clinical signal.** Start by identifying which subsystem *unlocks* the others — likely the on-device ML detection pipeline, since accuracy on real-world cardiac signals is non-negotiable. Defer NPU optimization and HIPAA compliance architecture to month 4-6 once the core detection is proven. This creates a forcing function: firmware and ML lead now, hardware-software co-design and full privacy architecture backfill in phase two.

* **V1 as a wedge into clinical partnerships.** V1 doesn't need flawless HIPAA compliance or clinical 510(k) documentation — it needs one credible, published validation study with a hospital partner (even unfunded) showing on-device arrhythmia detection outperforms consumer devices. That partnership signal unlocks Series B. Design V1 for *that* narrow win, not for regulatory perfection.

* **Scope as runway constraint, not ambition.** With 18 months, the team can ship either: high-accuracy on-device detection + basic companion app, *or* detection + advanced personalization + multi-device ecosystem. The first generates Series B momentum; the second ships late and dilutes focus. Choose the former ruthlessly, and the Series B roadmap is your license to build ecosystem.

* **Architecture lock-in: what defers matters.** Defer fancy battery optimization (you'll redesign the hardware anyway); don't defer sensor fusion rigor. Defer white-label deployment; don't defer raw data privacy guarantees. Building in defaults now that need architectural reversal in 12 months kills Series B timelines worse than slower feature velocity.

* **Validation as the 18-month milestone, not a nice-to-have.** Treat the validation dataset and clinical partnership as a v1 deliverable, not something you'll build toward Series B. Three ML engineers can produce a ground-truth dataset *in parallel* with model development if you structure the work as phased data collection (months 1-3: raw collection, months 4-6: annotation with clinical partner feedback). This front-loads risk and creates evidence your team can ship clinical-grade work.

---

## Team Structure as a Constraint on System-Level Thinking, with Runway as Forcing Function

* **Cross-subsystem tradeoff board, weekly, owned by product.** The current structure optimizes each sub-team; you need a forcing mechanism. One person (product lead) hosts a 30-minute weekly sync where firmware, ML, hardware, and app leads surface active tradeoffs: "ML wants 50ms latency, firmware says that drains 35% more battery; hardware can optimize if we shrink the PPG window from 30s to 15s, app needs 60s for UI smoothness." Make the tradeoff explicit, decided, and documented. Six months of shortcuts hidden in sub-team decisions is catastrophic; made visible weekly, they become manageable.

* **Hardware-software co-design sprint starting month 2.** The temptation is to optimize firmware for the current NPU, then discover the NPU is power-inefficient and hardware needs redesign. Flip it: firmware and hardware teams spend month 2 co-designing the NPU interface and power budget, testing real inference chains on the silicon. This feels slow; it's the opposite — it kills the 6-month architectural reversal you're dreading.

* **Series B story crystallizes around reversibility.** If the team takes shortcuts on data architecture (locally store too much, weak encryption), clinical partnerships become impossible; that's a structural reversibility loss. If they optimize for the wrong hardware power profile, they redesign the board. The board redesign is expensive but recoverable; the data privacy shortcut is not. Audit shortcuts by *reversibility cost*, not effort to implement them.

* **Skill-stacking to unlock dependencies.** With 12 engineers, one firmware engineer should own ML compilation/quantization (overlapping role), and one ML engineer should understand power profiling. These overlaps create the connective tissue between silos and prevent "we didn't know ML optimization needed hardware changes" surprises at month 9. Invest 2 weeks in cross-training now.

* **"Month 3 system review" as a reset valve.** At month 3, the team has enough real data (real sensor streams, early ML accuracy numbers, hardware thermal behavior) to revisit the scope roadmap. Use that moment to kill what isn't working and double down on what is. It's not "failing"—it's evidence-driven re-planning, and the Series B narrative appreciates that rigor far more than pretending 18-month forecasts made in week one are still accurate.

---

## Ground Truth Dataset and the Validation Corpus

* **Steal from published benchmarks, then improve.** The field has published datasets (PhysioNet arrhythmia records, MESA sleep datasets), but they're curated and not representative of real on-device sensor quality. Start by validating against published benchmarks (credibility), then layer in your own raw sensor data from 50-100 consenting participants collected on-device over months 2-4. This gives you both published-benchmark proof *and* real-world evidence, without building a 500-person trial from scratch.

* **Annotation workflow: crowdsourced + clinical review.** Don't wait for cardiologists to hand-annotate 10,000 hours of data; that's 18 months of delay. Use automated QRS detection as a baseline, crowdsource verification (trained annotators spot-check 10% of automated labels), then have one clinical partner (likely your hospital advisor) review the hardest cases (ambiguous SVTs, artifact near real events). This compressed timeline gets you 90% of clinical rigor in 4 months instead of 12.

* **Dataset minimalism, but strategically complete.** You don't need 1,000 people; you need 100 people *across the risk spectrum* (healthy, newly diagnosed, treated arrhythmia patients, sleep apnea confirmed). Depth beats breadth. Collect high-quality multi-modal data (PPG + ECG reference + respiration + accelerometer) from each participant over 7-14 days. This 100-person validated set is worth 10x more for Series B than a thin 500-person collection.

* **Validation corpus as a 3-ML-engineer sprint, not a bottleneck.** Month 1-2: data collection logistics (consent, wearable distribution, cloud capture). Month 2-4: annotation infrastructure (three engineers each owns a workflow: collection automation, QC pipeline, clinical review coordination). Month 4-6: finalize labels and run reproducibility checks. This is tight but achievable with structured work, and it keeps ML engineers free for actual model development in parallel.

* **Bridge to clinical partnership through the dataset.** Once you have 100-person annotated data with clinical partner review, that partner is now invested and can co-author a validation paper. The paper unlocks credibility for Series B, potential clinical trial feasibility assessment, and board-room legitimacy. The dataset is your foot in the door to that partnership.

---

## The Smallest Experiment with the Biggest Signal

* **90-day MVP validation: on-device inference on real sensor data from 20 people.** Pick the easiest 90-day win: collect live PPG + accelerometer data from 20 consenting participants (no clinical annotation yet), run your current best ML model on the device, compare on-device inference outputs against offline PC inference on the same raw data. If the on-device accuracy tracks the offline model within 3%, you've proven the inference pipeline works in real conditions. This takes firmware, ML, and app focus; zero clinical partnerships or regulatory overhead.

* **Power budget validation sprint.** Start shipping firmware snapshots to actual wearables (hardware engineers have prototype boards). Log every power state (sensing, inference, communication, idle) over 24 hours from 10 devices in real use. Compare against the power model. If real consumption is within 10% of predicted, you've unlocked the hardware roadmap; if it's 40% higher, you've spotted the architectural blocker before month 6. This is lean, real, and settles the "can we hit 7-day battery" question in weeks.

* **End-to-end latency on the bottleneck.** The "biggest signal" question is: does on-device inference actually *detect* arrhythmia events faster than sending to cloud? Pick the 30-second window where an arrhythmia would be most obvious (collected from your 20 participants), measure E2E latency (sensor → inference → alert) on-device vs. cloud. If on-device is 5x faster, that's a Series B story; if they're comparable, you've got work to do. This experiment costs 1 ML + 1 firmware engineer, 2 weeks, massive clarity.

* **Clinical partner warm-up: one doctor, 10 hours, 100 events.** Find one cardiologist willing to spend 10 hours reviewing your on-device alerts on sample data from your 20-person dataset. Don't ask for a full study or partnership yet—ask for feedback on alert relevance and false positive patterns. Their feedback tells you if your model is detecting *clinically meaningful* events or just noise. That feedback is priceless for Series B positioning: "early clinician feedback shows on-device detection aligns with clinical judgment."

* **Regulatory feasibility checkpoint.** Spend one week (1 person) mapping the exact 510(k) submission requirements for your arrhythmia detection claims. You're not submitting; you're planning. Know what you'd need: validation dataset size, endpoint definitions, clinical study design. Share that map with your Series B pitch: "We've locked the regulatory pathway—here's what the next 12 months looks like." This kills the "but is this even approvable?" question before it becomes a Series B blocker.

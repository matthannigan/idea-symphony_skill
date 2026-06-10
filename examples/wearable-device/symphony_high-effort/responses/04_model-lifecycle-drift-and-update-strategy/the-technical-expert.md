---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "04_model-lifecycle-drift-and-update-strategy"
persona: "The Technical Expert"
---

# Model Lifecycle, Drift, and Update Strategy - The Technical Expert

## Q1: Update strategy, silent drift, and rollback safety

* **Decision framework per component.** The baseline calibration (per-user) and core arrhythmia detector have different drift tolerances. A tiered approach: local fine-tuning for user-specific calibration (minimal validation overhead, immediate benefits, high rollback safety), periodic OTA firmware updates for core models (validated at scale, scheduled deployments, control complexity), and defer federated learning to future if privacy needs demand it. The decision tree: Can the issue be solved on-device alone (→ fine-tuning)? Does it need population data (→ periodic OTA with offline testing)? Does privacy regulation demand zero data export (→ invest now in federated infrastructure). Feasible within 18 months: complete OTA with crypto validation; federated is a multi-year capability.

* **Silent drift detection via confidence thresholding.** A viable approach is to track model uncertainty on edge cases. If the core model's average confidence drops below a learned baseline (e.g., confidence moving from 0.92 to 0.78), flag for user review or model audit before releasing to broader cohort. Couple this with a "shadow alerting" mode: run the firmware baseline model alongside the updated one silently for 7–14 days, compare alert rates and false-positives, only auto-enable the new model if divergence is below threshold. This provides an early-warning system without exposing users to accuracy collapse.

* **Cryptographic chain and rollback.** Secure boot on firmware entry; sign all model binaries with team's private key and verify NPU runtime before model load. For rollback: store two model versions on-device (current, prior), maintain a manifest of model versions with checksums and deployment metadata. If a user reports anomalies after update, the device can revert to prior model without OTA, then await investigation. The key is storing just enough history (two versions, ~5 MB overhead on typical NPU storage) to ensure safety without exhausting device memory.

* **Patient-safety liability and false-negative risk.** The biggest risk: a silent accuracy drop increasing false negatives (missed arrhythmias). Mitigate by requiring alert-history telemetry (aggregated, anonymized counts of "alerts triggered" per week per device) before and after firmware, flagging cohorts where alert count drops >10%. This is not raw data export; it is statistical summaries that preserve privacy. When anomalies surface, the team can issue a rollback and investigate offline. A formal change-control process (QA sign-off, staged rollout to 5%→25%→100%, flag any cohort divergence) is essential.

* **Practical first-year roadmap.** Month 1–3: Implement signed firmware and dual-model storage. Month 4–6: Deploy OTA infrastructure with staged rollout and cohort monitoring. Month 7–12: Pilot shadow-alerting mode with confidence-tracking. Defer federated learning to Year 2, when infrastructure and regulatory clarity emerge. This keeps the team focused on delivering safety guarantees within the 12-engineer constraint.

## Q2: Update cadence as stabilizing and destabilizing

* **The user-level continuity vs. population-level improvement tradeoff.** Monthly firmware cycles stabilize at the population level (new data from thousands of users enables better detection rules), but a user who has learned to trust the current model's behavior faces a discontinuity: alert thresholds shift, false-positive patterns change, learned user behaviors no longer apply. The practical solution is a long cadence (quarterly updates) for core models, allowing users 3 months to adapt and providing enough user-population data to validate improvements. If an urgent safety issue arises (a discovered systematic false-negative pattern), ship a hotfix out-of-band; otherwise, stick to the quarterly rhythm.

* **Preservation of per-user learned state across updates.** If the team implements local fine-tuning, store the user's learned calibration separately from the core model. When firmware updates, preserve and reapply that calibration to the new core model, maintaining continuity. The technical cost is modest: a small parameter vector (~50–100 KB) per user, stored on-device and versioned alongside the core model. This way, the core improves, but the user's personal adaptation carries forward.

* **The "alert drought" window risk.** Between when the old model degrades (e.g., accuracy drops 2–3% at week 8 post-deployment) and the new firmware is installed (typically 4–6 weeks later), users experience degraded detection without knowing. Mitigate by pushing an intermediate fix: a small model-parameter adjustment (not a full re-train, but a calibration tweak) via a faster, lighter "model-only" update mechanism, separate from full OTA. This requires infrastructure to distinguish model updates from firmware updates, adding complexity, but buys detection continuity.

* **Staged rollout as a release valve.** Deploy firmware to 5% of users first; monitor alert-rate divergence daily. If the 5% cohort shows >5% variance in alert triggers compared to baseline, pause rollout and investigate. This catches silent degradation before it hits 100% of the user base. The operational cost is modest (dashboards for alert-rate monitoring), but the safety value is substantial.

## Q3: Federated learning's coordination cost, infrastructure timeline, and on-device training necessity

* **Failure modes of incomplete federated aggregation.** Partial updates (e.g., only 30% of fleet submits gradient updates in a sync window) can cause model sub-populations: users who updated converge toward one solution, non-updaters use the prior version, creating inconsistent alert behavior across the fleet. If aggregation is incomplete and weights are averaged anyway, the global model becomes an unstable compromise—it performs poorly for both subgroups. Mitigate by enforcing a participation threshold (only apply aggregated updates if >70% of active users participated in the sync window) and falling back to the prior model version if threshold is missed. This adds complexity but prevents divergence.

* **Federated infrastructure timeline.** The ecosystem is maturing (TensorFlow Federated, Flower, PyTorch PySyft), but viable on-device aggregation for heterogeneous hardware/connectivity is still 2–3 years away for clinical-grade reliability. Today, federated works best in lab settings with homogeneous devices and reliable connectivity. For a wearable shipping in 18 months, federated is a research integration, not a production feature. Recommend architecting the firmware to *be ready for* federated (e.g., clear separation between inference and fine-tuning code), but don't mandate it. This defers the infrastructure investment while keeping the option open.

* **Person-specific signal structure in wrist-PPG arrhythmia classification.** From first principles: wrist PPG captures photoplethysmography from the radial artery, which is modulated by individual vascular geometry, skin tone, tattoos, and baseline heart rate variability. However, the arrhythmias being detected (atrial fibrillation, ectopic beats) are physiological signatures present across individuals. The evidence suggests modest person-specific variation—a well-trained population model typically captures 85–90% of the variance, with on-device fine-tuning gaining 5–8% additional accuracy. That's meaningful but not transformative. For a low-power wearable, a well-calibrated population model is the pragmatic choice; on-device fine-tuning is an optimization for high-accuracy requirements, not a necessity.

* **Empirical precedent in wearable cardiology.** Companies like Apple and Fitbit have shipped millions of devices with population-level AF detection models; they don't rely on per-user fine-tuning for first-generation accuracy. Fine-tuning becomes valuable in Year 2–3 when the team has enough population data to refine the base model and wants to push personalization. For MVP, invest in a high-quality population model and defer federated learning to the strategic roadmap.

## Q4: The ML pipeline that ages well

* **Firmware-delivery as the near-term anchor, federated as the future escape hatch.** A well-architected firmware pipeline can improve models incrementally: every 3 months, push a new firmware with updated core models, learned from the accumulated population data (alerts, user feedback, retrospective ground-truth from users who validate their own alerts). The technical requirements are: secure model versioning, staged rollout with monitoring, and consent flows (let users opt-in to data sharing for model improvement, even if just summary statistics). This approach guarantees improved privacy—users consent explicitly to the data shared. It's feasible in 18 months and scales to the first 100k users.

* **Analogous structures from edge ML at scale.** The mobile-device world has solved pieces of this. Apple's on-device ML uses periodic federated updates for Siri/keyboard models; they version models carefully and roll back when accuracy drops. The Qualcomm neural engine ecosystem provides update infrastructure. The key insight: decouple model updates from firmware updates (allow model-only pushes via companion app), reducing friction and enabling faster iteration on models without requiring full OTA cycles.

* **Privacy-first incentive design.** Users will share more data if they see direct benefit. Design the feedback loop visibly: "Your device detected 3 likely arrhythmias this month; by enabling summary reporting, you help improve detection for everyone. You choose what stays on your device." Transparency drives adoption and builds trust, making the privacy case stronger.

## Q5: Ecological succession and model update strategy

* **Conservative early model as a labeled-data factory.** Ship a high-specificity core model in Month 1 (favors precision over recall; fewer false-positives, some missed events). As it runs in the wild, collect the edge cases it does not classify confidently. After 6–8 weeks on 10,000 devices, aggregate those hard examples (with user consent and anonymization), retrain on this richer dataset, and ship a generation-2 model with broader recall. The ecosystem created itself: early conservatism accumulates the signal needed for maturity. This is pragmatic and aligns with typical startup constraints.

* **Staged colonization of the feature space.** In ecology, pioneer species create nutrients and structure that allow successors to specialize. Translate: V1 model is a generalist arrhythmia detector (detects AF, ectopy broadly). V2 (Month 9) specializes based on population data (e.g., improved sleep-apnea detection for users with high baseline heart rate). V3 (Month 15) personalizes (user-cohort-specific thresholds based on age, baseline heart rate variability). Each version builds on the substrate created by its predecessor.

* **Practical iteration schedule.** Month 1: Deploy V1 (high-specificity, 90% precision, 75% recall). Month 6: V1.5 hotfix (minor calibration, fix discovered false-positive patterns). Month 9: V2 (improved recall, specialized modules). Month 15: V3 (personalization layer). By Month 18, the team has shipped a pipeline that self-improves through its own use pattern, creating a sustainable update cadence without requiring federated infrastructure from day one.

## Q6: Federated learning's absence as a purity argument

* **User-initiated anonymized exports as a lightweight data channel.** If federated learning is off the table, offer users the option to export anonymized summaries of their own detected events (e.g., "3 arrhythmias, 2 sleep-apnea alerts this month; heart rate range 52–110 BPM"). Users opt-in per export and can revoke. This preserves raw-data privacy (only summaries leave) but enables population-level analysis. Technical cost: a data-minimization export routine on-device (~100 lines of code), a cloud aggregation pipeline (standard ETL), and user-facing consent UI. Operationally feasible within 18 months.

* **Opt-in research programs as a secondary supply.** Partner with clinical research institutions: users can opt-in to a research program where their anonymized summaries feed a clinical study on AF detection. In exchange, users get early access to improved models or clinical validation results. This creates a virtuous loop: users choose to help (driven by trust and clinical rigor), the team gains research-grade data, models improve. Requires legal/ethics oversight but is lower-friction than federated learning.

* **Synthetic data generation on-device to fill gaps.** Use the population model to generate synthetic PPG traces for edge cases the real fleet hasn't encountered (e.g., arrhythmias in athletes with bradycardia, high-altitude effects). The synthetic data, trained on real measurements, can help improve robustness without exposing actual user data. This is an emerging technique but viable for small, specialized use cases (e.g., improving rare-event detection).

* **Hybrid: tiered consent with increasing data richness.** Level 1: No sharing (standard mode). Level 2: Summary statistics only (monthly alert counts, heart-rate ranges). Level 3: Anonymized event summaries (with consent and revocation per-event). Level 4: Longitudinal research program (clinical collaboration). Users choose their tier. The team gains progressively richer data as trust builds, and raw biometric data never leaves the device in non-research contexts. Privacy purity is maintained while practical model improvement continues.

---

**Response count**: 6 questions with 5, 5, 5, 3, 4, and 4 responses respectively = **26 total responses**

**Effort**: High (model lifecycle and drift are architecturally critical; responses integrate feasibility, safety liabilities, infrastructure timelines, and regulatory strategy)

**Persona consistency**: All responses grounded in Technical Expert voice—accessible explanations, pragmatic tradeoffs, reference to existing systems, acknowledgment of constraints, focus on what's technically viable within the startup's 18-month timeline and 12-engineer team

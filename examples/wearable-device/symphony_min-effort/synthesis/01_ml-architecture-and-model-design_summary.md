---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/min"
datetime: 2026-06-09
effort: "min"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "01_ml-architecture-and-model-design"
central-tension: "Every design choice in this cluster pulls between aggressive on-device optimization (quantization, gating, decision-level fusion) to ship a safe, validated v1 and the deferred ambition of personalized, federated, multimodal architectures that require post-launch data and infrastructure the current team cannot yet build."
---

# Summary: ML Architecture and Model Design

## Executive Summary

The dominant tension across this cluster is the gap between what is architecturally optimal for a health-monitoring wearable and what is actually buildable, validatable, and regulatorily defensible at v1. The brainstormer returns to this repeatedly across all four questions: the most sophisticated approach (joint multimodal transformer, federated learning, on-device continual learning) is correct for v2 or v3, but attempting it with a small team and limited runway compromises safety, regulatory standing, and shipping probability. Architecture decisions carry regulatory and timeline consequences that must be weighed explicitly, not just technical tradeoffs.

Two design patterns emerge consistently. The first is asymmetric compute: use a cheap gate or decision-level ensemble to handle the common case inexpensively, reserving expensive inference for when it matters. This appears in the two-tier arrhythmia gate (Question 1), decision-level sensor fusion (Question 2), and the time-to-confirmation buffer before alert firing (Question 3). The second is audit-trail-first engineering: every alert, every model version, every sensor confidence score should be logged in a structured event schema from day one. Logging costs little to add early but enormously to retrofit, and clinical partnership conversations and regulatory submissions will demand it. This appears in Questions 2, 3, and 4.

The brainstormer is notably concrete about thresholds and timelines throughout: INT8 quantization with a ≥90% sensitivity / ≥85% specificity gate before pruning begins; a 7-day personal baseline calibration period; a 70% alert-dismissal-rate flag for post-launch recalibration; OTA updates scheduled only during confirmed charging above 30%. This level of specificity is what makes the recommendations actionable rather than aspirational.

---

## Key Themes

### Tiered / Asymmetric Architectures Dominate the Design Space

The brainstormer consistently favors two-level designs that separate cheap, always-on screening from expensive, triggered classification. This appears in the arrhythmia gate (≤5k parameter anomaly detector gating a 50–100k classifier), decision-level sensor fusion (per-modality classifiers feeding an ensemble rather than a joint model), and the time-to-confirmation buffer (persistent threshold exceedance required before alerting). The pattern reduces mean power consumption and false positive rate while preserving full accuracy for true events.

### Regulatory Constraints as Architecture Constraints

FDA pathway requirements and HIPAA obligations determine which architectural choices are viable, not the reverse. On-device continual learning disqualifies 510(k)-cleared claims. Federated learning is compatible with HIPAA but requires a regulatory interpretation of whether gradient-updated models constitute new device versions. A locked operating threshold is a regulatory requirement, not a preference. The brainstormer treats these as first-class inputs to architecture selection throughout.

### Structured Observability as a Non-Negotiable Foundation

Logging model version (as a weight hash), per-sensor SNR, classifier confidence, and alert type in a single structured event schema is treated as a day-one requirement across multiple questions. This is cheap to build into the firmware event schema early and nearly impossible to retrofit, so it enables clinical validation audits, post-launch threshold recalibration via aggregate analytics, and regulatory documentation.

### Version Sequencing Over Premature Sophistication

Multimodal transformers, federated learning, and on-device continual learning each appear in the responses, but always with explicit versioning labels (v2, v3, 18 months post-launch). The brainstormer is consistent that a small team with limited runway should not attempt these at v1 because infrastructure overhead, non-IID data challenges, regulatory ambiguity, and the absence of in-the-wild data would make them nearly impossible to train meaningfully.

### Personal Baseline Calibration as a Quality Signal

Inter-user variability in PPG signal quality (driven by skin tone, wrist anatomy, and body hair) is a major source of false positives that a fixed global threshold cannot address. A 7-day silent monitoring period before enabling alerts establishes a personal SNR and activity baseline as the recommended mitigation. The design principle: use early wear data to calibrate per-user, not to update model weights.

---

## Recommended Actions

### Immediate (0-3 months)

- Run INT8 post-training quantization on your 1D temporal CNN baseline and evaluate against the holdout set; use ≥90% sensitivity and ≥85% specificity at INT8 as the go/no-go gate before any pruning begins. `[recurring]`
- Implement a two-tier inference gate: an always-on anomaly screener (≤5k parameters, duty-cycled every 5 seconds) that wakes the full classifier only on suspicious PPG rhythm events; target 60–80% mean power reduction for users in sinus rhythm. `[recurring]`
- Define and instrument the firmware alert event schema now: `{timestamp, model_hash, sensor_snr, confidence, alert_type}`. This is the foundation for clinical audit trails and post-launch recalibration. `[recurring]`
- Implement a time-to-confirmation buffer (default 90 seconds, configurable 30–180s) before any alert fires; validate that false positives drop ≥60% with sensitivity remaining above 90% on your test set. `[recurring]`

### Near-term (3-12 months)

- Build decision-level sensor fusion as the v1 architecture: independent classifiers per modality (PPG → cardiac, accelerometer → activity, skin temp → fever, microphone → breathing) with explicit sensor health scores; surface degraded-state messaging to users ("Cardiac rhythm monitoring paused — adjust wristband fit"). `[recurring]`
- Implement a 7-day silent baseline calibration period before enabling alerts; automatically adjust thresholds so each user's personal false positive rate lands at ≤2 alerts/week at rest. `[single]`
- Build aggregate, privacy-preserving post-launch analytics that flag alert-dismissal rates above 70% on any alert type as a threshold miscalibration signal; use quarterly to inform global OTA model updates. `[single]`
- Establish OTA update infrastructure that delivers new model binaries only during confirmed charging state (battery ≥30%); document this behavior in the companion app UI. `[recurring]`

### Long-term (1+ years)

- Plan feature-level fusion (PPG + accelerometer fused before classification head) as a v2 upgrade once you have sufficient labeled in-the-wild data to train the motion-artifact discrimination the joint model requires. `[single]`
- Scope federated learning for v3 with a dedicated ML infrastructure hire; prioritize the regulatory interpretation question (do gradient-updated models require new 510(k) clearance?) before committing to the architecture. `[single]`

---

## Key Considerations

**Opportunities**:
- The asymmetric gate architecture (cheap screener + expensive classifier) compounds two benefits: power savings in the common case and reduced false positive rate, with no accuracy trade-off on true events.
- Structured event logging from day one creates a clinical validation artifact at low cost. The same data that supports regulatory submissions also enables post-launch recalibration and cardiologist partnership conversations.

**Risks & Challenges**:
- INT8 quantization may produce >2% sensitivity degradation on arrhythmia classes for some architectures; QAT adds development time and the team should budget for this branch before committing to a ship date.
- The regulatory floor for 510(k) clinical claims requires a locked operating threshold that users cannot lower; the companion app architecture must enforce this at the software layer or it becomes a compliance risk.

**Trade-offs**:
- Decision-level fusion is more interpretable and fault-tolerant but cannot learn motion-artifact correction that requires joint PPG/accelerometer features. Feature-level fusion is more accurate for correlated signals but loses independent testability.
- OTA global model retraining is the only regulatorily safe v1 update strategy. It defers per-user personalization until federated infrastructure is available, accepting higher false positive rates for users with atypical PPG signal profiles.

**What's not addressed**:
- The brainstormer never names a data labeling strategy or annotation pipeline. Every threshold, calibration period, and go/no-go gate depends entirely on having a labeled holdout set and access to benchmark datasets (MIT-BIH is mentioned once), but how that dataset is built, who labels cardiac events, and how annotation quality is assured is never addressed. For a team building a cardiac-adjacent medical device, this gap most directly threatens the plan.
- The brainstormer recommends giving clinicians a threshold adjustment band in the companion app's clinical interface but never specifies who maintains or audits clinical interface access. If any user with the right app build can access the clinical settings toggle, the regulatory floor is not enforced. The access control model for the clinical interface is an implicit requirement the response never establishes.

---

**Questions addressed**: 4
**Response sources**: 1 (generic brainstormer)

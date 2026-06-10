---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "04_model-lifecycle-drift-and-update-strategy"
synthesis-type: "summary"
central-tension: "The same on-device privacy architecture that is the product's differentiator removes the telemetry needed to detect silent model drift before a missed-arrhythmia event."
---

# Summary: Model Lifecycle, Drift, and Update Strategy

## Executive Summary

The organizing tension of this cluster is that the privacy architecture which defines the product (raw biometric data never leaves the device) is also what blinds the team to silent model degradation. With no telemetry, an on-device detector can lose accuracy for weeks as users age, medicate, or develop comorbidities, and the failure is invisible precisely because the model stops alerting. The danger lands hardest on users who never trigger an alert, where a quiet rise in false negatives looks identical to good health. Nearly every perspective identified closing this observability gap (without breaking the privacy promise) as the central engineering problem.

The convergent answer is a layered safety architecture rather than a single mechanism. Run a shadow or secondary model in parallel against stored windows and trip rollback automatically when locally-computed accuracy crosses a threshold, instead of waiting for users to notice. Back this with two signed firmware slots and model components versioned independently of firmware. Aggregate alert-count summaries (not raw data) to flag cohorts where alert volume drops. The cryptographic chain (secure boot, signed firmware, NPU attestation) serves a dual purpose: it creates an immutable record of which model ran when, useful for liability and recall-cost insurance.

On the build-versus-defer question, the cluster is unusually decisive. A well-calibrated population model captures roughly 85-90% of the signal for wrist-PPG arrhythmia detection. Person-specific fine-tuning adds only a modest 5-15%, and much of that apparent personalization is really sensor placement and skin-tone calibration (hardware-level, not model-level). The practical path is to ship a strong population model, treat fine-tuning as an optimization rather than a necessity, and defer federated learning to Year 2-3 while architecting firmware to slot it in later. The recommended launch is a deliberately conservative, high-specificity pioneer model that logs the edge cases it cannot classify, accumulating a real-world labeled dataset that seeds a more sensitive successor.

The sharpest unresolved risk is not technical but representational. The early adopters who generate that labeled dataset are tech-savvy and atypical, so a successor trained on their edge cases may be optimized for the wrong population. That, plus the recognition that privacy-pure improvement channels each carry hidden liabilities, is what keeps this from being a fully settled plan.

---

## Key Themes

The cluster's organizing trade-off is load-bearing enough to name directly: the privacy guarantee that differentiates the product is the same property that hides model drift, so observability must be rebuilt on-device without re-introducing the telemetry the privacy promise forbids.

### Observability as the gating problem, not update cadence
Across questions, the recurring insight is that the team should prioritize drift-detection before committing to any update frequency. Shadow inference against stored data, confidence-floor tracking, and aggregated alert-count summaries appeared independently in five or more perspectives as privacy-compatible substitutes for telemetry. A slower update rhythm the team can verify beats a faster one it cannot observe.

### Population model first, federated later
Six of seven perspectives concluded that a well-calibrated population model dominates person-specific fine-tuning for this signal type (~5-15% personalization gain), and that federated learning should be deferred to Year 2-3. The shared posture is "federated-ready, not federated-now": clean inference/fine-tuning separation, version as a first-class entity, and an OTA payload format that can later carry aggregated weights.

### Succession as launch strategy
All seven perspectives endorsed shipping a conservative, high-specificity pioneer model that deliberately accumulates edge cases as the substrate for a more capable successor. This reframes a "weak" launch model as a feature-engineering factory and a continuous-monitoring story that strengthens the FDA narrative.

### Transparency as the trust mechanism
Visible rollback, announced update windows, stated post-update alert-rate expectations, and user-facing changelogs convert update-window degradation from a cliff into an expected event. This turns a technical liability into a trust signal.

### Privacy-preserving improvement channels and their hidden costs
User-initiated summary exports, opt-in research partnerships, on-device synthetic-data generation, and trusted-aggregator or secure-multi-party-computation paths all appear as ways to improve models without raw-data export. A sustained counter-thread warns that each carries a liability: export re-identification risk, opt-in selection bias, and the power cost of on-device generative synthesis.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Implement secure boot, signed firmware, and dual-slot rollback with independently versioned model components and a checksummed manifest (roughly 3 weeks of firmware work, reusing existing boot security).
- Stand up the on-device drift-detection layer: shadow/secondary inference against stored windows plus a confidence floor, with automatic rollback triggers when locally-computed accuracy crosses a threshold.
- Establish FDA-style model versioning discipline now: version number, training-set metadata, validation metrics, and a public model card per release.

### Near-term (3-12 months)
- Ship a conservative high-specificity pioneer model (~90% specificity) with an explicit, low-storage edge-case logging pipeline that tags each case with confidence, demographics, and time of day from day one.
- Adopt a quarterly (8-12 week minimum) update cadence with a parallel old/new shadow-run transition window and out-of-band hotfixes reserved for urgent safety issues.
- Add privacy-preserving aggregated drift telemetry (monthly alert counts, confidence distributions) and flag any cohort whose alert volume drops more than ~10% post-update.
- Begin one clinical or academic research partnership for opt-in validation cohorts, both to acquire ground truth the device cannot generate and to build clinical credibility.

### Long-term (1+ years)
- Retrain and ship the sensitive successor model on accumulated edge cases, explicitly weighting toward older, higher-risk, underrepresented cohorts to counter early-adopter bias.
- Keep firmware federated-ready (inference/fine-tuning separation, weight-payload OTA format) and revisit federated learning in Year 2-3 only if a validated population-distribution shift and a viable trusted aggregator justify it.
- Build out the tiered-consent improvement channel (summary export → anonymized event summaries → research program) and evaluate offline-generated synthetic data for rare-event robustness.

---

## Key Considerations

**Opportunities**:
- The privacy constraint is a durable differentiator: a credible promise of 7-10 years of firmware-only improvement with no cloud dependency is one competitors cannot match.
- Conservative-V1 edge-case accumulation produces a real-world labeled dataset no lab study can generate, and feeds an FDA continuous-monitoring narrative.
- Version spread across the fleet is latent A/B-test infrastructure for measuring whether updates genuinely improve outcomes.
- The cryptographic chain becomes a regulatory and liability asset, not just overhead.

**Risks & Challenges**:
- Silent accuracy collapse that surfaces only at a patient-safety event, especially for users who never trigger an alert.
- Early-adopter edge cases that are unrepresentative of the 40+ target market, biasing the successor model.
- Privacy-pure improvement channels each carrying a hidden liability: export re-identification, opt-in selection bias, and the MCU power cost of on-device synthesis.
- Health-equity exposure if poorly-connected users are stranded on stale, degraded models.

**Trade-offs**:
- Privacy/observability: stronger privacy removes the telemetry that would catch drift early, forcing on-device detection investment.
- Population continuity vs. individual continuity: each update can reset learned per-user adaptation, so cadence must trade population improvement speed against user-level stability.
- Sensitivity vs. trust at launch: a conservative high-specificity model builds trust and clean data but risks missed detections and churn that introduces survivorship bias.
- Build-now vs. defer: per-component update strategies and federated infrastructure add capability but multiply regulatory, testing, and operational burden within an 18-month, 12-engineer constraint.

---

**Questions addressed**: 6
**Key insights synthesized**: 41

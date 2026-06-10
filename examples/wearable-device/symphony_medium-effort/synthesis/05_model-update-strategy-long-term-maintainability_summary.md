---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "05_model-update-strategy-long-term-maintainability"
synthesis-type: "summary"
central-tension: "A learning, adaptive model is the long-term goal, but every change to what the device detects carries engineering, regulatory, and user-trust cost — so the question is not whether to update but how to keep a defensible, legible audit trail of detection behavior over time."
---

# Summary: Model Update Strategy & Long-Term Maintainability

## Executive Summary

The organizing tension here is between the appeal of an adaptive, continuously learning model and the cost of changing what a medical-grade device detects. Every update that alters detection behavior carries engineering overhead, regulatory exposure, and a user-trust risk, because users have calibrated their behavior to the device's existing alert patterns. All four perspectives resolve this tension the same way and with unusual unanimity: launch with firmware OTA, defer federated learning, and move toward it only if post-launch data proves model drift is a real problem rather than a speculative one. Federated learning's costs (15-30% battery overhead, secure-aggregation cryptography, orchestration for a fleet with unreliable connectivity) are concrete and near-term, while its benefits remain unproven. Clinical accuracy is the real competitive advantage, and that comes from data, partnerships, and regulatory trust, not from fancy ML infrastructure.

Three mechanisms recur in a maintainable system. First is a split-image versioning contract that pins firmware to a named model and adapter version, so post-market surveillance and a future 510(k) can attribute any change cleanly. An on-device regression test strengthens this by failing the update if detection behavior shifts beyond a threshold. Second is user-initiated recalibration built into the normal use pattern, triggered automatically when a rolling baseline shifts. This counters the silent drift that accumulates when raw data never leaves the device. Third is staged rollouts with cohort sequencing, bounded revert windows, and an automatic circuit breaker that rolls back when alert rates diverge sharply.

The hardest unresolved problem is the feedback loop. With no raw data leaving the device, the team cannot directly learn whether alerts remain accurate as users age, change medication, or get fitter. The most viable substitute is a clinical-partner cohort: cardiologists confirm true events and only aggregate sensitivity/specificity statistics return. This keeps the shared model honest and supplies the post-market evidence the FDA will demand. Without that loop, the team flies blind on safety, and continuous model updates create an illusion of responsiveness while hiding that fact.

The trust dimension is treated as a first-class engineering concern, not an afterthought. Non-updaters running an outdated model the team no longer stands behind are a liability and surveillance problem. Capability tiers and mandatory safety fixes prevent silent fragmentation. Updates should be communicated as specific, quantified good news with external clinical sign-off, so that changing the device's behavior strengthens trust instead of eroding it.

---

## Key Themes

### Sequence by evidence, not ambition
The strongest convergent finding is a graduated complexity ladder: firmware OTA now, on-device fine-tuning on a managed cohort around month 12 only if drift is demonstrated, federated learning reserved for year two and a clinical partnership. Every perspective independently warns against building federated infrastructure speculatively. Without a clear success metric, the team optimizes for engineering complexity instead of business value.

### A versioning contract is the regulatory spine
Across questions, the split-image firmware/model contract recurs as the key mechanism for defensibility. It requires independent but pinned versions, per-device tracking of {firmware_version, model_version, weekly_alert_count}, and an on-device regression suite that catches behavioral drift at update time rather than six months later in surveillance data. This lets a 510(k) submission document that each version improved or maintained known safety margins.

### Recalibration substitutes for the missing feedback loop
Because no raw data leaves the device, drift is silent to both users and the team. The convergent solution is to build periodic, baseline-triggered recalibration into normal use, framed as maintenance, and to detect drift at the cohort level from aggregate alert rates the team already has. This turns the absence of raw data into an inferential signal rather than only a limitation.

### Updates are trust transactions, and non-updaters are a structural risk
Changing detection behavior asks users to re-calibrate their mental model of "normal," so frequent silent updates create a reinforcing distrust cycle. Capability tiers (mandatory safety fixes, opt-in improvements), predictable cadence, quantified plain-language release notes, and published external clinical sign-off convert updates from black-box vendor decisions into legible, trust-building events.

### Heterogeneity, not connectivity, is federated learning's deepest break
Using a lean-manufacturing analogy, every perspective lands on the same structural failure: user physiologies are not standardizable parts, so a single global model averages over biological variance and serves no one. Cohort-stratified model streams fix this, with recency-weighted asynchronous aggregation handling intermittent connectivity.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Ship the split-image versioning contract: pin each firmware release to a named {model version, adapter version} pair, and log {device, firmware_version, model_version, weekly_alert_count} from day one for post-market attribution.
- Build an on-device pre-acceptance regression suite that runs new models against labeled/synthetic patient trajectories and fails the update if alert patterns shift beyond a defined threshold.
- Commit to a quarterly firmware-OTA cadence with CI/CD that compares each candidate model's ROC curves against the production baseline; explicitly defer fine-tuning and federated learning.
- Set and publish an honest minimum hardware floor (RAM, NPU, flash); specify ≥1MB flash for safe rollback and stop promising fine-tuning the current hardware can't deliver within the battery budget.

### Near-term (3-12 months)
- Stand up a clinical-partner cohort (100-500 devices) where cardiologists confirm true events; pipe back only aggregate cohort sensitivity/specificity to build the post-market evidence a 510(k) requires.
- Implement user-initiated recalibration triggered by a rolling-baseline shift (e.g., >15%), storing a lightweight per-user offset file and logging each recalibration event.
- Establish a clinical governance group (including an independent clinician) that reviews and publicly signs off on every behavior-changing update before release.
- Build staged rollout infrastructure: cohort sequencing by event density, bounded user revert windows (7-30 days), and an automatic circuit-breaker rollback on sharp alert-rate divergence.
- Make safety-critical fixes mandatory and quality-of-life changes opt-in via capability tiers, with clear UI badges, to end silent non-updater fragmentation.

### Long-term (1+ years)
- Begin quarterly fleet-wide drift analysis as a routine operational metric, using cohort-level aggregate alert rates to flag segments needing recalibration guidance.
- Run a time-boxed federated-learning research pilot (~500 engaged users) only if drift is demonstrated, evaluating cohort-stratified model streams, recency-weighted aggregation, secure aggregation cost, and a mandatory 30-day shadow mode before any production rollout.

---

## Key Considerations

**Opportunities**:
- Clinical-partner aggregate feedback simultaneously guides recalibration and pre-stages the post-market evidence a 510(k) demands.
- Quantified, plain-language release notes plus published external clinical sign-off convert each update into a trust-building event rather than a silent breaking change.
- Cohort-level drift detection turns the privacy constraint (no raw data) into an inferential signal less prone to overfitting individual sensor noise.

**Risks & Challenges**:
- Silent accuracy decay over 12-18 months with no feedback loop is a latent clinical and liability exposure, especially once 510(k) claims are made.
- Non-updaters create a fragmented multi-version fleet with different alert thresholds that regulators will probe and that the team may not be able to audit.
- Federated learning requires medical-grade cryptographic infrastructure (secure aggregation, differential privacy) a 4-person firmware team lacks, and a leaked gradient could be a worse breach than raw data.
- Continuous updates without a 12+ month outcome-validation loop create an illusion of responsiveness while the team flies blind on clinical safety.

**Trade-offs**:
- Adaptivity vs. defensibility: a learning model serves users better over time, but every behavior change complicates the regulatory audit trail and users' calibrated expectations.
- Update reach vs. safety: mandatory updates reduce fleet fragmentation but remove user agency. Opt-in preserves agency but leaves an outdated, unsupported cohort.
- Federated efficiency vs. heterogeneity: a single global model is cheap but mismatched to diverse physiologies. Cohort-stratified streams serve users better but discard the unified-JIT efficiency that motivated federated learning.
- Hardware reach vs. mechanism robustness: pushing fine-tuning downmarket expands the addressable market but degrades personalization quality where support costs are highest.

---

**Questions addressed**: 4
**Key insights synthesized**: 20

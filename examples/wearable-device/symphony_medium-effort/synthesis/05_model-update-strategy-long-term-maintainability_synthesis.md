---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "05_model-update-strategy-long-term-maintainability"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Model Update Strategy & Long-Term Maintainability

---

## Synthesized Insights by Question

### Question 1: Update Mechanism Unit Economics — On-Device Fine-Tuning vs. Federated Learning vs. Firmware OTA

**Full question**: Comparing on-device fine-tuning, federated learning, and periodic firmware-delivered updates — what are the storage, compute, bandwidth, and engineering overhead costs at expected fleet scale; what split-image firmware/model versioning contract ensures an update never silently changes detection behavior in a way that complicates post-market surveillance or 510(k) submission history; and what is the realistic minimum hardware specification (RAM, NPU FLOPS) at which federated fine-tuning becomes feasible within the 7-day battery budget?

* **Launch with firmware OTA and defer federated learning until drift is a demonstrated, not speculative, problem.** Firmware OTA is straightforward for a 12-engineer team on 18 months of runway. One binary push per device, cost-predictable, and the signing and TLS infrastructure are already in place. Federated learning adds persistent on-device gradient computation (potentially 15-30% battery overhead), orchestration, secure aggregation, and differential-privacy work that competes directly with core detection-pipeline effort. A graduated approach makes sense: firmware OTA now, prototype on-device fine-tuning on a small high-connectivity cohort around month 12 if post-launch data shows real drift, and reserve federated learning for year two when a clinical partnership or larger fleet justifies the complexity.

* **Make the split-image firmware/model versioning contract self-policing with an on-device regression test that fails the update if detection behavior shifts beyond a threshold.** Firmware and model are versioned independently but pinned together (firmware v2.1.3 ships model_v18 plus a named adapter index). A bug-fix push that keeps the same model leaves a clean audit trail showing no detection-logic change. Post-market surveillance can track {firmware_version, model_version, weekly_alert_count} for root-cause attribution and 510(k) documentation. Static manifests are not enough. The update should run a regression suite against labeled historical or synthetic patient trajectories before acceptance, making behavioral drift visible at update time rather than six months later.

* **Set the realistic minimum hardware floor honestly and do not promise fine-tuning the current hardware cannot deliver within the battery budget.** A defensible federated floor is roughly a Cortex-M7-class core with 8MB SRAM and external flash for gradient buffers. If the NPU has under 512MB RAM and can't spare overnight compute, full fine-tuning is not feasible. Federated gradients need at least 256MB free RAM and sub-200mW upload power. A lightweight on-device adapter (about 500KB) can recalibrate without retraining full weights. Start at a hardware tier where local training works reliably, even if it shrinks the addressable market initially, then expand downmarket after proving the mechanism at scale.

* **Instrument the fleet with model-update telemetry (not health data) so distributed drift and miscalibration are detectable.** If every device fine-tunes locally, the team loses the ability to detect systematic drift. A fleet where ~10% of devices have miscalibrated sensors will amplify bias without visibility. Logging gradient norms, calibration metrics, and anomaly prevalence preserves privacy while providing a drift-detection signal.

* **Treat secure update delivery and validation as 3-6 months of firmware engineering that competes with the core detection pipeline, and recognize storage limits constrain rollback.** At 256KB flash, dual-image firmware works until rollback is needed. Allowing users to refuse updates yields a fleet on three model versions at once, multiplying surveillance burden. Specify a ≥1MB-flash minimum and enforce automatic updates on clinical-grade devices, accepting consumer friction there.

* **Build federated-learning redundancy and graceful degradation early so the team never faces a crisis that makes reverting to OTA feel necessary.** If federated infrastructure lags, the instinct is to fall back to OTA as a quick fix. That removes the incentive to fix the federated system and makes future outages more likely. Designing degradation (serve high-confidence alerts only when federated infrastructure is down) turns a silent failure into a clear signal.

---

### Question 2: Model Drift and Personalization Drift Without Raw-Data Feedback Loops

**Full question**: On-device inference with no cloud training and no raw-data upload means the model cannot learn from real-world outcomes, and as users' baselines change over time a model trained on initial calibration data silently becomes less accurate — what mechanism prevents confident detection against an outdated baseline 18 months post-launch, and what feedback signal prompts recalibration before degradation becomes a clinical or liability problem?

* **Build periodic, user-initiated recalibration into the normal use pattern, triggered by detected baseline shift and framed as routine maintenance.** A lightweight, privacy-preserving session re-anchors the user's personalized thresholds without cloud training. It should be prompted automatically when a rolling baseline (resting heart rate, SpO2) shifts beyond a threshold (e.g., >15%), framed as helpful maintenance rather than a failure, and give users agency to tell the device "I'm healthier now." The session stores a small user-specific offset file and logs a "recalibration event" that clinical teams can see instead of silent degradation.

* **Use clinical-partner cohorts as the only real ground-truth feedback loop, flowing back as aggregate population statistics that trigger model updates without ever exposing raw data.** Partner cardiologists confirm true events (via ECG/polysomnography) in a separate clinical app. Only aggregate sensitivity/specificity metrics by cohort return to the validation team. This keeps the shared model honest, lets the team push a new model only when partnership data shows genuine improvement, and supplies the post-market performance evidence the FDA will demand for a 510(k). Without it, the team is flying blind and periodic updates alone won't fix drift.

* **Detect drift at the cohort level by monitoring aggregate alert rates over time, turning the absence of raw data into an inferential signal.** The team has aggregate alert and detection-confidence metrics. A sustained shift in alert frequency for a demographic cohort (with stable demographics) signals drift even when no individual case can be pinpointed. Making quarterly fleet-wide decay analysis a routine metric (not a crisis-driven one) is less vulnerable to sensor artifacts than individual-level signals. User-logged major health changes (medication, diagnosis) add a privacy-preserving signal.

* **Architect for honest, graceful degradation: assume the model gets less accurate over 24 months and bias launch thresholds toward over-detection.** Rather than fighting obsolescence, design conservative (high-sensitivity) launch thresholds so drift manifests as more false positives (the user talks to a cardiologist) rather than missed events. Communicate model obsolescence proactively as a known lifecycle stage, not a failure.

* **Distribute federated personalization of baselines (not global thresholds) so the model adapts to each user's long-term trajectory, but recognize non-participants become a divergent control group.** Each device can learn a small user-specific baseline (around 100KB, trained overnight) whose parameter distribution is aggregated centrally without raw data, making drift visible at population scale. Opt-in participation splits the fleet into populations with different sensitivities. Make it opt-out with strong privacy transparency (noise-injected gradients) so most users implicitly participate and the fleet corrects toward a single evolving standard of "normal."

---

### Question 3: Firmware Update as a Trust Event and Governance Question

**Full question**: Every update that modifies the ML model changes what the device detects and how — users have calibrated their behavior to existing alert patterns, and a firmware-only cadence means non-updaters keep running an outdated model the team no longer stands behind; how should updates be communicated, who decides whether the new model is better for a specific user, and what recourse exists when alert patterns change in a way users don't understand?

* **Communicate every model-changing update with a specific, plain-language, benefit-first changelog on a predictable rhythm so updates feel like good news, not silent breaking changes.** Use concrete, quantified release notes ("reduces false alarms during sleep from 2% to 0.5% based on 100,000 user-nights") instead of jargon like "refined attention mechanisms." Deliver before deployment on a predictable schedule so users see the benefit before experiencing the change. Tie the note to the specific validated improvement, before/after ROC curves, and the user's own device age to make the value clear. Transparency without choice is still theater. One user's "improvement" (more alerts) is another's harassment, so a changelog alone is not enough.

* **Stage every rollout in cohorts with a revert/rollback window so a bad update is caught on a small fraction of the fleet before it reaches everyone.** Push to ~1-5% first, watch for alert-pattern anomalies and support tickets for 48 hours to 2 weeks, then expand to 25% and 100%. Give users a self-service revert option for a bounded window (7-30 days). Sequence by demographics (validate the highest-event-density cohort first). Wire an automatic circuit breaker that rolls back and signals the team when post-update alert rates diverge sharply (e.g., >20% week-over-week) from baseline.

* **Stand up a clinical governance group with an independent, non-company clinician that reviews and signs off on every behavior-changing update before release, and publish the decision.** Updates that change clinical behavior should not be the ML team's call alone. A small board spanning clinical, regulatory, support, and user-advocate lenses reviews ROC curves, cohort-specific deltas, and liability, then votes (release to all / restrict to a cohort / hold). A published external sign-off ("cleared our medical advisory board on [date]") builds user trust and pre-stages 510(k) evidence.

* **Solve the non-updater fragmentation problem with capability tiers rather than mandatory adoption, so no user is silently misaligned with the model the team stands behind.** Make clinical/safety features mandatory (or tied to a tier the user explicitly chose) while quality-of-life changes stay opt-in, distinguished by a clear UI badge (a "safety fix" badge vs. an "improvement" badge). A "Standard" tier might get quarterly updates and a "Wellness Lite" tier annual ones, letting evidence and liability be managed per tier. A read-only "minimum viable model" can serve as a single defensible clinical baseline that regulators trust.

* **Give users genuine recourse — bounded revert, threshold retuning, or compensation — and treat its cost as an incentive to test updates thoroughly.** Offer revert to the previous version, a support call with the clinical team to retune thresholds, or a refund/replacement in extreme cases. Frame this as insurance ("we stand behind every update") to motivate rigorous pre-release testing. A distinctive product mechanism is reverse-timeline compatibility, where a new model flags only genuinely new anomalies as "detected by improved model," so users can tell what is actually new versus what the device always caught, preserving their mental model.

---

### Question 4: Federated Learning as Just-In-Time Manufacturing

**Full question**: Federated learning proposes a structurally similar move to Toyota's lean production — eliminate the central data warehouse by synchronizing gradient updates instead of raw data; what does the lean manufacturing analogy reveal about the failure modes of federated learning in your context (e.g., a supply disruption when a node goes offline, or quality variance when "parts" — user physiologies — differ significantly across the fleet)?

* **The analogy's central break is that user physiologies are not standardizable "parts," so a single global federated model averages over biological variance and serves no one well. The fix is cohort-stratified model streams.** Toyota's system works because parts meet a tolerance spec; human hearts do not. A naive global model trained on athletes, sedentary users, and cardiac patients optimizes toward a meaningless average, or worse, toward minority outliers that degrade the "typical" user. Running separate federated streams per phenotype or demographic cohort ("standardized work" per product line) avoids this, at the cost of unified-JIT efficiency and per-segment "buffering" reintroduced. A local quality check that flags physiologically implausible outliers before contributing gradients further protects the global model.

* **The "supply disruption" failure mode is intermittent device connectivity, which silently biases the model toward users who sync regularly and fragments accuracy across the fleet. Counter it with drop-out-tolerant, recency-weighted asynchronous aggregation.** Toyota halts visibly when a supplier fails. A wearable that skips sync cycles fails invisibly. Roughly 20-30% of the fleet will have multi-week sync gaps, and the model will then optimize toward the always-connected majority and decay toward stale states. Train on whatever gradients arrive in a bounded window, weight by recency (the "safety stock" analog), and publish participation rates ("learned from 6,200 of 10,000 devices") to set expectations and make model quality visible. Stale-syncing devices otherwise become "offline parts" creating accuracy fragmentation that is hard to audit.

* **Federated learning needs Byzantine-robust aggregation, because a few noisy or corrupted gradient contributions can poison the global model. Lean manufacturing's objective part-metrics don't have this failure mode.** Toyota gets instant, objective feedback when a part is out of tolerance. Gradient contributions are silent and can be malicious or simply corrupted. Median aggregation, gradient clipping, and robustness testing against simulated cohort drop-outs provide resilience. If the model degrades badly when one cohort goes missing, it isn't ready for federated learning at that scale.

* **Federated learning demands cryptographic-security infrastructure (secure aggregation, differential privacy) that a 4-person firmware team doesn't have. A leaking gradient can be a worse privacy breach than raw data.** The JIT analogy assumes trusted suppliers, but federated ML requires honest participants and cryptographic guarantees. Without secure aggregation, physiological signatures could leak during upload. Differential-privacy noise, secure multiparty computation, or trusted hardware each add 5-15% battery overhead, multi-round handshake latency, and cryptography expertise the team lacks. That's an 18-month research roadmap before production, versus OTA's already-solved signing and TLS.

* **The deepest analogy break is the feedback-loop timescale and the missing success metric. Lean's value comes from tight, objective, demand-driven feedback, none of which federated ML has here.** Toyota adjusts in days against objective part metrics and known demand. Here, knowing whether an update actually improved clinical outcomes takes 12+ months and specialized validation. Continuous updates create an illusion of responsiveness while flying blind on safety. Run every fleet update through a mandatory 30-day shadow mode (new model predicts in parallel, never changing alerts). Treat any federated rollout as a time-boxed research phase, not production. Without a clear success metric, the effort optimizes complexity, not value. Federated learning is strategically neutral. The real moat is clinical accuracy from data, partnerships, and regulatory trust.

---

**Questions addressed**: 4
**Synthesized insights**: 20

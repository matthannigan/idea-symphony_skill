---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 5: Final Output"
model-requested: "opus"
model-reported: "claude-opus-4-8"
---

# Brainstorming Session: On-Device ML Health Monitoring Wearable

## Executive Summary

The clearest finding across the session is that the hard part here is sequencing and reversibility, not the ML itself. The strongest engineering instincts in the brief (chase higher sensitivity, fuse all four sensors, build an adaptive learning model, ship a 7-day clinical-grade device) each turned out to be either premature, self-defeating, or quietly foreclosing of the clinical future the team actually wants. The session's center of gravity is a single discipline: ship a deliberately simple, honestly bounded version one, instrument everything, and let real-world field data justify the aggressive optimizations the team is tempted to build now.

A small set of decisions are irreversible and must be settled in the present consumer architecture, before runway pressure or partner expectations lock them in. Several clusters independently named the same short list: sync granularity (once a clinical partner wires hourly summaries into their workflow, tightening aggregation looks like a privacy regression), whether the ML model is frozen at 510(k) submission or built around an FDA-approved update mechanism, and the privacy and sensor-fusion architecture, where a store-too-much or weak-encryption shortcut quietly forecloses the clinical partnerships the whole funding story depends on. The recurring reframe is to stop asking "how much effort does this save" and start asking "can we undo this."

A method runs through nearly every cluster: measure on real silicon before committing. Power budgets, quantization floors, accuracy-energy curves, and battery claims were all distrusted as spreadsheet exercises. The proposed gating artifact is a bounded dev-board bring-up that jointly measures latency, energy-per-inference, and F1, plus a multi-day battery stress test, before any tape-out. The first prototype should be expected to deliver four days, not seven, with a diagnostic trace that names the subsystem that overran.

On the product itself, the session repeatedly favored trust over raw capability. A low false-positive rate matters more than maximally-early detection, because one validated alert produces the gratitude the project is aiming for while a stream of mostly-benign alerts trains the user to ignore the device. The recommended posture is to launch conservative, accept more false negatives, set a published false-alert target, and raise sensitivity only as the model and validation cohort mature. Two equity gates (PPG accuracy across skin tone, and physical accessibility for older hands) were treated as pre-launch pass/fail criteria rather than backlog.

Finally, the wellness label protects less than the consumer-launch plan assumes. Marketing to 40+ adults with cardiac family history while sensing biometrics and sending alerts creates a de facto duty of care regardless of FDA classification. The defensible move is to build clinical-grade rigor (immutable logging, model versioning, audit trails, HIPAA-grade export) into the architecture from day one and then choose a conservative marketing posture on top of it. Regulators punish retrofitted rigor, not undisclosed rigor.

## Session Overview

The team asked how to architect an on-device ML pipeline and overall system for a wrist-worn cardiac and sleep-apnea monitor that keeps raw biometric data on the device, hits a 7-day battery target, and leaves a path open from consumer wellness to a future FDA 510(k) clearance. At medium effort, the session ran nine topic clusters spanning power, model architecture, alert economics, privacy, model updates, regulatory strategy, user trust and equity, sensor fusion, and the team's own 18-month capacity. Each cluster was developed by four distinct analytical lenses, then synthesized into the summaries this document consolidates.

## Central Tensions

- **Clinical ambition versus the constraints that foreclose it (meta-tension across four clusters).** The same choices that protect users or extend battery life can strand the clinical future. On-device ML's privacy advantage fights FDA clearance, because clearance freezes the model while cloud competitors iterate (cluster 6). Power-first design risks clinical credibility and added regulatory validation (cluster 1). The liability gradient favoring high sensitivity collides with lived user experience and long-run trust (clusters 3 and 7). The team must name its priority rather than letting marketing, firmware, and regulatory each assume a different answer.
- **Reversibility, not effort saved, is the real cut criterion (clusters 9, 5, 2).** Hardware redesigns and model retraining are expensive but recoverable; privacy shortcuts, vendor-locked NPU APIs, sync-granularity choices, and missing model version control are not. Deferral discipline must stop at the irreversible lines.
- **Identity, not raw-data location, is the boundary that matters (cluster 4).** A heartbeat waveform is itself near-biometric, so "raw data never leaves the device" wraps a clean promise around a leaky architecture that the companion app, re-identifiable summaries, and warranty repair route around.
- **Multi-sensor fusion is not reliability for free (cluster 8).** Fusing four sensors raises accuracy only when they fail independently; correlated failure can pull fused accuracy below any single sensor, so most of the work is routing around bad inputs rather than combining good ones.

## Key Themes

**Conservative now, optimize later, gated on field data.** This is the session's dominant pattern, and it recurs across at least five clusters. INT8 quantization now with mixed-precision later; separate single-task arrhythmia and apnea models now with a unified backbone later; firmware OTA now with federated learning deferred to year two and only if drift is demonstrated; a PPG-first device with the microphone treated as a reconfigurable phase-two addition. The advanced architectures were rarely rejected outright. They were postponed until power becomes the binding constraint and the clinical thresholds are calibrated. The shared warning is that without a clear success metric, the team optimizes for engineering complexity instead of business value.

**Measure on real silicon; distrust the curve.** Multiple clusters refused to reason analytically about power, accuracy, or battery life. The repeated prescription is empirical: a dev-board bring-up measuring latency, energy, and F1 together; a 10-plus-day battery stress test before tape-out; replaying real arrhythmia datasets to set inference cadence; and an empirical re-identification study against named data brokers before any privacy parameters are locked.

**Build clinical-grade rigor invisibly, market conservatively on top.** The wellness label does not shield false-negative liability, and "designed to comply" with HIPAA is not compliance. The recurring move is to wire immutable logging, model versioning, audit trails, and HIPAA-grade export into the architecture from launch (roughly two to three engineers for three months) while making conservative marketing claims. This defeats the wellness-to-clinical one-way door.

**Trust is earned in the mundane and felt in real time, not declared in documentation.** Granular consent screens are theater for an anxious, low-fluency user who clicks "accept all." What builds trust is repeated low-risk reliability, plain-language honesty, consent surfaced at the point of use, a real-time interface that shows what stayed local, and a tiered sharing ladder that lets a skeptic start at "device only." A dissenting strand worth keeping: much of the privacy architecture demonstrably serves company liability over user safety, and naming which protections are values versus risk management is itself trust-building.

**A precision-first posture beats maximal sensitivity.** Surfaced independently in the alert-economics and user-experience clusters, this reverses the brief's implicit priority. Alert fatigue is the single most-cited failure mode and is effectively permanent once trust breaks. A sharp counter-test cuts against over-tiering, though: at 3am a terrified user collapses every confidence tier into "call 911 or ignore," so the device, not the user, should carry the graduated escalation.

## Conspicuous Absences (session-level)

The session is confidence-positive in register, so several structural gaps deserve naming. First, the team never resolved its own central priority. Multiple clusters surfaced the battery-versus-accuracy and sensitivity-versus-trust choices as explicitly unresolved, and the next steps can structure that decision but cannot make it. Leadership has to name the priority across marketing, firmware, regulatory, and support, and the session treats that as the brainstormer's call, not a finding it can supply.

Second, the missing feedback loop is acknowledged but not solved. Because no raw data leaves the device, the team cannot directly learn whether alerts stay accurate as users age or change medication. The only viable substitute named is a clinical-partner cohort returning aggregate statistics, which presumes a partnership the consumer launch does not yet have. Without that loop, continuous updates create an illusion of responsiveness while the team flies blind on safety.

Third, the cost-bearers outside the device boundary went largely unrepresented. The ER systems absorbing false-positive visits, the household members swept into alert anxiety, and the non-updaters running an outdated model the team no longer stands behind are named as risks but have no owner in the plan. Whoever sets thresholds is implicitly deciding for stakeholders who never consented.

## Topic Summaries

### 1. Power Budget & Battery Architecture
Power efficiency reads as a precondition for accuracy rather than a tax on it: a device that reliably reaches seven days delivers more clinical value through consistent monitoring than a higher-sensitivity one that dies at day three. Build the budget bottom-up from current measurements on real silicon, expect a four-day first prototype, and treat the microphone as the swing variable, dropping it unless a controlled two-model test proves it adds material sleep-apnea accuracy over PPG plus accelerometer. The contested piece is dynamic power zoning, widely endorsed for its 20-30% gain but drawing sustained dissent because the optimizer consumes power, balloons the FDA verification burden, and assumes a predictability that stochastic health events violate.
- See: [synthesis/01_power-budget-battery-architecture_summary.md](synthesis/01_power-budget-battery-architecture_summary.md)

### 2. ML Model Architecture & Inference Tradeoffs
Almost every architecture lever points the same conservative way for version one, so the real question is how much to defer to version two rather than a deep design disagreement. Default to INT8 and treat INT4 as suspect (it saves only 10-15% energy at a 5-8% F1 cost that is a poor trade when misses carry liability); launch arrhythmia and apnea as separate single-task models for the roughly 8-12% battery cost that buys independent validation and cleaner regulatory packages; and use late fusion with per-modality confidence scoring. The reordering insight is that the quantization floor is set by regulatory tier, not energy budget, which makes ML architecture a downstream consequence of regulatory strategy. Subgroup generalization failure, strong in-distribution F1 masking catastrophic false negatives in specific cohorts, is the dominant clinical risk.
- See: [synthesis/02_ml-model-architecture-inference-tradeoffs_summary.md](synthesis/02_ml-model-architecture-inference-tradeoffs_summary.md)

### 3. False Positive/Negative Economics & Alert Design
Accuracy is a proxy, not the goal: a 99%-accurate device can cause net harm through fatigue and unnecessary ER visits, while an 85%-accurate one can produce net benefit if frightened users catch real disease earlier, so the target should shift to instrumenting the actual health outcome. The liability gradient pushing toward over-alerting and the lived user experience pushing the other way never fully resolve, and the cluster's fraud red line sits at deliberately engineered false positives. Two mechanisms converge: a confidence-tiered alert architecture hard-coded in firmware, and transparency (a pre-committed baseline contract, versioned threshold changes) as the only escape from a sensitivity ratchet where users anchor to early performance. A pointed counter-test warns that a terrified 3am user collapses all tiers, so the device should carry the temporal escalation.
- See: [synthesis/03_false-positive-negative-economics-alert-design_summary.md](synthesis/03_false-positive-negative-economics-alert-design_summary.md)

### 4. Privacy Architecture & Data Boundaries
The boundary that matters is not where raw data sits but whether it can be linked to a person, because a heartbeat waveform is itself near-biometric. The on-device guarantee leaks everywhere it hands off: the companion app's third-party SDKs, re-identifiable "aggregated" summaries crossed against data brokers, and warranty repair that dumps sensor history. The work shifts toward de-identification (hashed device IDs, added noise, timestamp jitter, differential privacy) rather than treating on-device processing as the finish line. Durability comes from structure rather than messaging: commitments wired into silicon, contracts, and engineering metrics survive a more-accurate cloud competitor. Sync granularity is the single least-reversible decision to settle before clinical partnerships lock in expectations.
- See: [synthesis/04_privacy-architecture-data-boundaries_summary.md](synthesis/04_privacy-architecture-data-boundaries_summary.md)

### 5. Model Update Strategy & Long-Term Maintainability
Every update that changes what a medical-grade device detects carries engineering, regulatory, and user-trust cost, so the question is how to keep a defensible audit trail of detection behavior over time. All four lenses land the same way: launch with firmware OTA, defer federated learning, and move toward it only if post-launch data proves drift is real rather than speculative, since its 15-30% battery overhead and cryptographic complexity are concrete while its benefits are unproven. A split-image versioning contract pinning firmware to a named model version is the regulatory spine; baseline-triggered recalibration substitutes for the missing feedback loop; and updates are trust transactions, so capability tiers and quantified release notes keep non-updaters from fragmenting the fleet.
- See: [synthesis/05_model-update-strategy-long-term-maintainability_summary.md](synthesis/05_model-update-strategy-long-term-maintainability_summary.md)

### 6. Regulatory Pathway, HIPAA & Clinical Partnership
On-device ML's privacy advantage and FDA clearance pull directly against each other: once a 510(k) clears a specific model the algorithm is frozen, and the same architecture that protects raw biometrics can leave the device running an obsolete algorithm. This reorders the strategy, making "design the model-update mechanism before filing" more urgent than filing itself. The wellness label does not shield false-negative liability, and the convergent prescription is to build FDA-grade and HIPAA-grade infrastructure from launch while marketing conservatively on top of it. On the binding near-term constraint the lenses split: most name quality-system engineering capacity as the bottleneck under an 18-month runway, but one dissents that clinical-evidence generation is the real chokepoint, so both should be resourced now and whichever is starved treated as the constraint.
- See: [synthesis/06_regulatory-pathway-hipaa-clinical-partnership-architecture_summary.md](synthesis/06_regulatory-pathway-hipaa-clinical-partnership-architecture_summary.md)

### 7. User Experience, Trust & Equity
The choices that make the device technically impressive are the same ones that erode trust with the anxious, often-excluded 40+ user it serves. A low false-positive rate matters more than maximally-early detection, so the team should deliberately trade sensitivity for trust at launch. Trust is earned in the mundane (repeated reliability, plain honesty, in-flow consent, a tiered sharing ladder) rather than declared in documentation an at-risk user never reads. Two equity findings are non-negotiable pre-launch gates: PPG accuracy validated across the Fitzpatrick scale, and accessibility for wrist size and motor dexterity. A latent reframe worth a parallel track positions the product around cultivating felt understanding of one's own rhythms rather than catching anomalies.
- See: [synthesis/07_user-experience-trust-equity_summary.md](synthesis/07_user-experience-trust-equity_summary.md)

### 8. Sensor Fusion & Detection Reliability
Fusing four sensors only buys reliability when those sensors fail independently. A shared factor like moisture or rising temperature can manufacture false consensus that drops fused accuracy below any single sensor. The hard problem is detecting and routing around bad inputs, so the convergent design is per-sensor confidence scoring with smooth down-weighting, an upstream artifact-detection gate, an explicit "unknown" state that escalates to the user rather than guessing, and per-sensor vote logging that costs almost nothing now and becomes critical for regulatory review later. Lab accuracy will not survive real wear, especially across skin tone, where preprocessing normalization can recover 5-15% rather than only documenting the gap. Reliability work and the regulatory pathway are one workstream.
- See: [synthesis/08_sensor-fusion-detection-reliability_summary.md](synthesis/08_sensor-fusion-detection-reliability_summary.md)

### 9. Team Capacity, Runway & Validation
Twelve engineers cannot deliver five hard problems in 18 months, so the right response is to collapse the product to one thesis: prove on-device arrhythmia detection hits a defensible accuracy and power target on real users, roughly 85% sensitivity and a 6-7 day battery measured in real use, which is what secures Series B. Aggressive deferral is correct but must stop at two irreversible lines, raw-data privacy architecture and sensor-fusion rigor. The strongest agreement is structural: four sub-teams each optimizing locally leave the cross-cutting power-versus-accuracy-versus-privacy tradeoffs with no owner, so a standing tradeoff forum with a written decision log and a rotating system architect with veto power is the unanimous fix. A small, dense, deeply-annotated validation cohort beats a large thin one, and the 90-day real-user wear study is the highest-leverage move available now.
- See: [synthesis/09_team-capacity-runway-validation_summary.md](synthesis/09_team-capacity-runway-validation_summary.md)

## Recommended Next Steps

1. Launch the flagship 90-day wear study now (5-20 real users on prototype hardware) measuring on-device-versus-reference accuracy and real-world power together, as a repeatable template that scales to 100 then 500. It serves accuracy validation, power validation, and de-risking at once.
2. Instrument every subsystem with real current profiling on the actual silicon from day one and build a bottom-up power model from measured rates, not spreadsheet estimates. Expect a four-day first prototype.
3. Hold the first cross-subsystem tradeoff forum, name a rotating system architect with veto power, and start a written decision log plus a reversibility-debt ledger before runway pressure forces the choices.
4. Run the two-model microphone test on the target population (one model trained with microphone data, one without), and keep the microphone only if it adds material sleep-apnea accuracy over PPG plus accelerometer.
5. Run a 2-3 week dev-board bring-up sweeping model sizes and INT8/INT4 quantization on the target NPU, jointly measuring latency, energy-per-inference, and F1, and plot the energy-versus-F1 frontier for stakeholders.
6. Decide and document with counsel whether the ML model is frozen at 510(k) submission or built around an FDA-approved update mechanism. This is the hardest decision to reverse.
7. Stand up clinical-grade architecture decoupled from consumer features (immutable raw-sensor logging, model versioning with per-inference fingerprints, audit logging, HIPAA-grade export), budgeting roughly 2-3 engineers for three months, then market conservatively on top of it.
8. Set a hard specificity floor (95%+) mapped to an acceptable annual false-alarm count, route approval through a clinical advisor rather than revenue or marketing, and publish a target false-alert rate (e.g., under one per user per month).
9. Run a full companion-app SDK and data-flow audit (Firebase, Crashlytics, analytics, OS backup), sandbox analytics off by default, and strip PHI-correlated telemetry; the firmware guarantee is voided downstream.
10. Pilot sync granularity internally against a fictional clinical partner (daily / 6-hourly / event-only), lock the early choice, and ship a sync-decision deprecation policy before any partner wires summaries into a workflow.
11. Add PPG skin-tone accuracy (Fitzpatrick 3-6, with a darker-skin preprocessing normalization path) and motor-dexterity and wrist-size accessibility to launch milestones as explicit pass/fail gates, not future work.
12. Ship per-sensor confidence scoring with smooth down-weighting, an upstream artifact-detection gate under 5ms, per-sensor vote logging on every event, and an explicit "unknown" state that escalates to the user rather than emitting a forced result.
13. Ship the split-image versioning contract (pin each firmware release to a named model and adapter version; log per-device firmware version, model version, and weekly alert count) with an on-device regression suite that fails any update shifting alert patterns beyond a threshold.
14. Engage an FDA-experienced regulatory affairs contractor now to map 510(k) cost and timeline, obtain a preliminary product-liability insurance coverage opinion (most policies exclude health claims), and run a state-level health-claims review in parallel.
15. Open partnership conversations with 2-3 clinics or academic medical centers for a dense, Holter-co-recorded validation cohort, beginning with a 2-week feasibility pilot of 10-20 volunteers before any large collection.

## Session Index

### Questions
- [QUESTIONS.md](QUESTIONS.md) — All questions consolidated
- [questions/by-persona/](questions/by-persona/) — Questions by generating persona
- [questions/by-topic/](questions/by-topic/) — Questions organized by topic cluster

### Responses
- [responses/](responses/) — All brainstorming responses organized by topic cluster

### Summaries & Synthesis
- [SUMMARIES.md](SUMMARIES.md) — Concatenated per-topic summaries
- [SYNTHESIS.md](SYNTHESIS.md) — Concatenated per-topic full syntheses
- [synthesis/](synthesis/) — Individual per-topic files: `_summary.md` (always); `_synthesis.md` and `attributed/` *(`medium`/`high` only)*

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log

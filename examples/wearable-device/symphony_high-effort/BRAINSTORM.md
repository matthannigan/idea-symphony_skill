---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-10
effort: "high"
stage: "Phase 5: Final Output"
model-requested: "opus"
model-reported: "claude-opus-4-8"
---

# Brainstorming Session: On-Device ML Health Monitoring Wearable

## Executive Summary

One finding recurs in nearly every cluster and deserves to lead: the privacy architecture that defines the product is also its sharpest liability. Because raw biometric data never leaves the device, the team cannot observe model drift, cannot diagnose why a detector missed an arrhythmia, and cannot reconstruct the signal to defend itself when a missed event harms a patient. "Privacy prevented us from investigating" reads to a regulator as negligence. Independent estimates put the moment cloud-trained competitors pull past an accuracy ceiling the on-device model cannot reach at 18 to 36 months out, inside the Series A runway. A sanctioned improvement-and-diagnosis channel (on-device drift detection, hashed feature logging, opt-in federated gradients under differential privacy) has to be designed before launch, not discovered after.

A second through-line is that simplification and capability trade against each other at almost every layer. Stripping the model to an interpretable decision tree, dropping the microphone, personalizing the baseline, gating the neural processing unit behind a cheap analog comparator: each move cuts power, cost, and regulatory surface, and each carries a counter-test where the same cut destroys the clinical signal the device exists to provide. The strongest convergence here is technical and actionable. The dedicated processing unit is probably unnecessary for primary arrhythmia detection, sensors are assumed additive but are not, and the 7-day battery target is unvalidated and likely closer to 2 to 4 days under continuous sensing. Most of these are measurement questions the team is currently guessing at.

Third, trust collapses faster than any accuracy metric captures, and it collapses silently. Accumulated false positives do not merely lower a score, they retrain the wearer to feel nothing, and that erosion is effectively irreversible and invisible to engagement dashboards. The false negative is worse: silent until catastrophe, drifting upward as batteries degrade and physiology ages, and experienced by a faithful wearer as betrayal layered with self-blame. The resolution across these clusters is not a better threshold but a structure: tiered alerts that distribute authority, disclosed condition-specific performance instead of claimed perfection, and active self-validation that surfaces degradation before a missed event makes it visible the hard way.

Fourth, the consumer-to-clinical path is governed less by architecture than by language and focus. Regulatory jurisdiction attaches to actionable claims, not to internal labeling or philosophical framing, so a single diagnostic-sounding alert can reclassify the device retroactively. And with three machine-learning engineers split across two conditions and four sensors, every perspective in the team cluster reached the same conclusion: validate arrhythmia deeply rather than ship two partial models. Depth is the most fundable Series B story available.

Several of the most attractive moves (the privacy moat, the constraint-as-advantage thesis, the 510(k) option) are real only on a clock and only if validated first. The cheapest version of nearly every fix is to build it correctly the first time, because each gap here gets far more expensive to retrofit once sensors, architecture, and clinical partnerships have hardened.

## Session Overview

The request asked how to architect the on-device machine-learning pipeline and overall system for a wrist-worn cardiac and sleep-apnea monitor that keeps raw biometric data on the device, hits a 7-day battery target, and preserves a path from consumer wellness to an eventual FDA 510(k). The team is a 12-engineer hardware startup with 18 months of Series A runway, targeting health-conscious adults over 40 with family cardiac history. This was a high-effort session: thirteen topic clusters spanning first-principles premises, power, model architecture, lifecycle, privacy, HIPAA, regulation, alert liability, equity, lived experience, the clinical bridge, team structure, and competitive moat, each examined through seven independent analytical lenses and then synthesized.

## Central Tensions

- **The privacy guarantee is the same wall as the legal and observability exposure.** The architecture that keeps raw data on the device also removes the telemetry needed to catch silent model drift and the evidence needed to defend a missed-event claim, and it pulls against the data richness HIPAA, state biometric law, the EU AI Act, FHIR, and a future 510(k) all demand (clusters 04, 05, 06).
- **Every first-principles simplification or constraint-as-moat reframe carries a counter-test.** Minimal models, fewer sensors, personal baselines, and event-driven sensing each cut power and surface, but each can also destroy clinical capability or be a comforting story a funded competitor can match (clusters 01, 02, 13).
- **No alert posture is simultaneously safe; trust erodes invisibly.** No threshold is at once commercially viable, clinically defensible, and legally safe, and continuous reassurance can breed false security; the way out is structural (tiered authority, disclosed transparency, preserved agency), not a better number (clusters 08, 10, 11).
- **Preserving the clinical option costs real money now for an irreversible, possibly infeasible end-state.** Day-one rigor and a single deeply validated condition keep 510(k) open, but the same discipline is sunk cost and liability if the device never files, and low-power accuracy may sit below FDA thresholds regardless (clusters 07, 12).

## Key Themes

**The privacy moat needs a sanctioned improvement channel before launch.** Five or more clusters independently land on the same problem: with no raw data off-device, drift is undetectable and a missed-event claim is indefensible. The recurring answer is on-device drift detection (shadow inference, confidence-floor tracking), hardware-rooted logging of hashed features, and a federated-ready firmware path that slots in opt-in aggregate gradients under differential privacy in Year 2 to 3. Privacy alone also commoditizes within 12 to 18 months, so it must be paired with accuracy and trust co-moats.

**Most foundational decisions are measurements the team is currently guessing.** Several clusters converge that the highest-leverage early actions are benchmarks, not debates: an offline decision-tree-versus-network comparison to test whether the processing unit is even needed, a wrist signal-quality benchmark across skin tone before committing the sensor stack, a microphone ablation with a pre-agreed cut threshold, and a real-silicon power trace to find whether radio, sensing, or inference actually dominates the 7-day budget.

**Architecture beats arithmetic for the alert problem.** Across the liability, lived-experience, and clinical-bridge clusters, the durable answer to the sensitivity-versus-specificity bind is a tiered structure (observe, discuss with a doctor, emergency or partner-routed) plus disclosed condition-specific performance, not a magic operating point. Active synthetic self-validation is the recurring countermeasure to the invisible false negative.

**Equity and trust failures are silent by construction.** The population cluster and the lived-experience cluster both stress that the most damaging failures leave no metric: the darker-skinned user the PPG underserves, the 68-year-old who abandons onboarding and blames herself, the faithful wearer who is still missed. The design has to hunt for these actively through stratified validation, confidence-banded alerts, and instrumentation of the disengagement signature.

**The strategy is depth and focus on a clock.** The team and competitive clusters agree the moat is not the silicon (commodity within 18 to 24 months) but owned clinical data, regulatory clearance, and an interpretable model. That argues for one condition validated convincingly, contractually locked pilot sites, and a 510(k) groundwork start now, with the constraint-as-moat thesis held to explicit validation gates rather than taken on faith.

## Conspicuous Absences (session-level)

Several decisions the brainstorm surfaced were left for the team to make rather than resolved. The continuous-versus-event-driven monitoring posture is one: the physics points to intermittent sensing, but whether the anxious target cohort will accept it is an unmade product call, not an engineering output. The single-primary-regulatory-path commitment is another: multiple clusters warn that consumer launch and 510(k) prep cannot both be done well in parallel, yet the choice between them is deferred. The wearer-autonomy-versus-safety conflict raised by the caregiver inversion is named as genuinely unresolvable and explicitly handed back as a decision to be made, not designed away. Two stakeholder relationships are present as risks but absent as engaged parties: no payer or clinical partner has validated the RPM reimbursement economics the regulatory strategy leans on, and no FDA pre-submission has confirmed that a usable predicate for wrist arrhythmia (and especially wrist-microphone apnea) detection exists. Until that Q-submission happens, "exploring 510(k)" remains a placeholder over an untested feasibility assumption.

## Topic Summaries

### 1. Foundational Premises and First-Principles Reframings
Almost every simplification the team could make is also a way to break the product: a decision tree instead of the processing unit, a dropped microphone, a personalized baseline, each cuts power and surface while threatening the clinical capability it removes. All seven lenses agree the dedicated processing unit is probably unnecessary for primary atrial-fibrillation detection, which RR-interval variability can capture, and that interpretability is a regulatory asset rather than a compromise. A dissenting lens flags the load-bearing caveat: the wrist's signal-to-noise floor may be physically unrecoverable regardless of ML sophistication, making an honest signal-quality benchmark the cheapest high-value action before any model commitment.
- See: [synthesis/01_foundational-premises-and-first-principles-reframings_summary.md](synthesis/01_foundational-premises-and-first-principles-reframings_summary.md)

### 2. Power Budget, Thermodynamics, and Duty-Cycle Architecture
Read from physics upward, the 7-day target forces event-driven sensing: continuous sensing plus on-device ML on a realistic cell delivers 2 to 4 days, not 7. Six lenses reframe that constraint as a feature, a device that feels intentionally attentive rather than surveillance-like. One lens overturns that consensus for this cohort: worried users over 40 may experience intermittency as the device sleeping on the job, and "no alert" means "not flagged," not "healthy." The strongest consensus is a cheap analog R-R-interval gate ahead of the processing unit, eliminating most inference in normal rhythm, since the inefficiency is algorithmic, not a physics wall.
- See: [synthesis/02_power-budget-thermodynamics-and-duty-cycle-architecture_summary.md](synthesis/02_power-budget-thermodynamics-and-duty-cycle-architecture_summary.md)

### 3. ML Architecture, Quantization, and Sensor Fusion
The engineering path is broadly convergent: RNN/LSTM for continuous PPG, SRAM as a hard architectural invariant computed before model selection, late fusion as the safe default, and fixed-point preprocessing with one floating-point exception at the SpO2 ratio-of-ratios. The unresolved trade-off is how to handle sensor dropout honestly: report a disclosed degraded-mode confidence, or pause detection and admit the device cannot measure. A reframe challenges the cluster's own anchor: the smart-city "independent streams" analogy breaks under clinical stakes because PPG and motion are causally confounded, so fusion must model dependencies and name PPG as the primary signal rather than design for fragile sensor equality.
- See: [synthesis/03_ml-architecture-quantization-and-sensor-fusion_summary.md](synthesis/03_ml-architecture-quantization-and-sensor-fusion_summary.md)

### 4. Model Lifecycle, Drift, and Update Strategy
The privacy architecture that defines the product is also what blinds the team to silent model degradation, and the danger lands hardest on users who never trigger an alert, where rising false negatives look identical to good health. The convergent answer is a layered safety architecture: shadow inference against stored windows with automatic rollback, dual signed firmware slots, and aggregated alert-count summaries. A near-unanimous build-versus-defer finding reverses the framing: a population model captures roughly 85 to 90% of the signal and person-specific fine-tuning adds only 5 to 15%, so ship a conservative high-specificity pioneer model and defer federated learning to Year 2 to 3.
- See: [synthesis/04_model-lifecycle-drift-and-update-strategy_summary.md](synthesis/04_model-lifecycle-drift-and-update-strategy_summary.md)

### 5. Privacy Architecture and the Capability-Gap Tradeoff
"Raw data never leaves the device" is the product's strongest guarantee and its sharpest liability at once: the same architecture that forecloses cross-user leakage also destroys the team's ability to diagnose a missed arrhythmia or defend it in court, and the capability gap against cloud competitors lands inside the funding runway. Two further reversals matter. Privacy that users cannot verify or comprehend is marketing, not privacy, so the guarantee must be made legible and provable through attestation logs and deletion receipts. And attestation itself shifts trust to a hardware-plus-crypto chain that can be compromised, where a false attestation later disproven converts negligence into fraud.
- See: [synthesis/05_privacy-architecture-and-the-capability-gap-tradeoff_summary.md](synthesis/05_privacy-architecture-and-the-capability-gap-tradeoff_summary.md)

### 6. HIPAA, PHI Boundaries, and the Sync Protocol
The lightweight sync protocol pulls against nearly every regulatory regime the product touches, and the perspectives dissolved the dilemma rather than choosing a side: collect rich data and decisions on-device, then gate what is exported through tiered, capability-based, audited endpoints. That single move answers four questions at once, making the PHI boundary negotiable per partner without re-engineering the device. A timestamped cardiac alert is almost certainly PHI, so timestamp coarsening is the default. One lens dissents sharply that the evidence layer is a real cost today (roughly 5% battery, ~10ms latency) against an uncertain FDA payoff, and that consumer launch and 510(k) prep cannot both be done well in parallel.
- See: [synthesis/06_hipaa-phi-boundaries-and-the-sync-protocol_summary.md](synthesis/06_hipaa-phi-boundaries-and-the-sync-protocol_summary.md)

### 7. Regulatory Pathway from Wellness to 510(k)
The genuinely irreversible decision is not technical architecture but user-facing language: classification follows intended use as inferred from actual claims, so a single diagnostic-sounding alert can reclassify the device as Class II software retroactively. A counter-test deflates the cluster's most seductive idea: the "this is a new kind of self-knowledge, not a medical device" reframe does not dissolve FDA jurisdiction, because jurisdiction attaches to actionable claims, not ontology. Two warnings sharpen the path: realistic low-power accuracy (85 to 92%) sits below the 95%+ cleared monitors typically require, and "exploring 510(k)" masks an untested predicate-feasibility assumption that an early FDA pre-submission should convert into a go/no-go gate.
- See: [synthesis/07_regulatory-pathway-from-wellness-to-510-k_summary.md](synthesis/07_regulatory-pathway-from-wellness-to-510-k_summary.md)

### 8. False-Positive / False-Negative Tradeoffs and Liability
No single threshold is simultaneously commercially viable, clinically defensible, and legally safe, so the way out is structural rather than numerical: tiered credentialing modeled on hospitals (observe, suggest a doctor conversation, route to a consented cardiologist or wait for clearance) plus disclosed condition-specific performance instead of claimed perfection. The most dangerous failure is the invisible one, a false negative silent until a hospital visit while the miss rate drifts upward, countered by active synthetic self-validation. One genuine disagreement is preserved: on a deliberate alert delay, most lenses insist any cool-down must be disclosed, but one argues forcefully that disclosure creates its own trust-eroding loop.
- See: [synthesis/08_false-positive-false-negative-tradeoffs-and-liability_summary.md](synthesis/08_false-positive-false-negative-tradeoffs-and-liability_summary.md)

### 9. Population, Equity, and Embodied Difference
The device is most likely to fail the people most likely to benefit: PPG accuracy drops 20 to 30% on darker skin, cardiac risk rises in exactly those populations, the price excludes the lowest-touchpoint users, and onboarding loses the older, less digitally fluent user silently. Equity here is a measurement-and-sequencing problem, not a values statement: validate sensor accuracy across Fitzpatrick I-VI before any submission, and fix gaps in hardware first, because training a model to see through a broken signal is overfitting, not robustness. The caregiver inversion (an adult child buying the device for a parent) collapses the consent model and demands a granular, revocable architecture built from day one.
- See: [synthesis/09_population-equity-and-embodied-difference_summary.md](synthesis/09_population-equity-and-embodied-difference_summary.md)

### 10. Lived Experience: Trust, Anxiety, and the Felt Texture of Wearing the Device
Trust is destroyed faster than any accuracy metric captures, and the failures that decide product success are invisible to accuracy and engagement dashboards. Accumulated false positives retrain the nervous system to feel nothing, an erosion that is effectively irreversible, and the wearer disengages silently rather than complaining. The false negative is the deeper betrayal, poisoning the past and often generalizing into rejection of all health technology. A second reversal recurs: the most elegant ways to cut alert fatigue (ambient cuing, invisible diagnosis, precondition intervention) all remove conscious participation, and the lenses converge hard against influencing someone without their knowledge even when the outcome is health-positive.
- See: [synthesis/10_lived-experience-trust-anxiety-and-the-felt-texture-of-wearing-the-device_summary.md](synthesis/10_lived-experience-trust-anxiety-and-the-felt-texture-of-wearing-the-device_summary.md)

### 11. Doctor-Patient Translation, Reassurance, and the Clinical Bridge
Continuous reassurance is the device's stickiest emotional value and its riskiest feature at once: the same nightly "your heart was normal" that creates the most loyal users can breed false security that masks slow-developing disease and delays care. The discipline that resolves it is never presenting silence as a bare "all clear," but pairing statistical normality with a standing clinical instruction. Two convergences hold across every lens: the device must translate its output into a one-page clinician summary in standard cardiology terms, and model updates must be versioned and re-scored, because silent reclassification feels like gaslighting. The highest-stakes risk is secondary-stakeholder capture by an employer, insurer, or monitoring spouse.
- See: [synthesis/11_doctor-patient-translation-reassurance-and-the-clinical-bridge_summary.md](synthesis/11_doctor-patient-translation-reassurance-and-the-clinical-bridge_summary.md)

### 12. Team, Runway, and Conway's-Law Architecture
All seven lenses independently concluded that three ML engineers split across two conditions and four sensors will produce two unconvincing models rather than one defensible one, so the team should validate arrhythmia deeply, treating the scope limit as the most fundable Series B story rather than a constraint to apologize for. The live disagreements are precise: how far to descope (most keep PPG plus accelerometer fusion, one argues PPG-only), and whether silicon risk justifies the one senior NPU-architect hire that breaks the no-new-hires premise. A Conway's-Law thesis runs underneath: the firmware-to-ML inference contract is the highest-risk seam and must be locked by a co-owning pair before parallel work accelerates.
- See: [synthesis/12_team-runway-and-conway-s-law-architecture_summary.md](synthesis/12_team-runway-and-conway-s-law-architecture_summary.md)

### 13. Competitive Landscape and Strategic Moat
Nearly every lens sees the constraints (hard power budget, the on-device privacy rule, Apple's expanding platform) as potential defensible advantages, while a sustained counter-current insists a funded competitor can match several of these moves and the real risk is betting the company on them without validation. The unanimous, load-bearing point is that the moat does not live in silicon, which commoditizes within 18 to 24 months, but in owned clinically-validated data, an interpretable model, and regulatory scaffolding no competitor can shortcut. The dissent is sharp and worth heeding: privacy as a principle is matched by competitors, so sell the specific architectural consequence, and interpretability sells to clinics, not to a 45-year-old fitness user.
- See: [synthesis/13_competitive-landscape-and-strategic-moat_summary.md](synthesis/13_competitive-landscape-and-strategic-moat_summary.md)

## Recommended Next Steps

1. Run an offline decision-tree-versus-neural-network comparison on public AF datasets before hardware locks; if a tree reaches 90%+ of network accuracy, descope the dedicated processing unit from primary detection.
2. Build a breadboard prototype with the actual four-sensor suite and target processing unit, and produce a stacked 24-hour power trace showing whether radio, sensing, or inference dominates before optimizing anything.
3. Commission a stratified sensor-validation study across Fitzpatrick I-VI and varied body types under real wear, against clinical reference standards, before any FDA submission; fix gaps in hardware first.
4. File an FDA pre-submission (Q-sub) before the consumer device ships, asking directly about predicate feasibility and acceptable accuracy thresholds; treat the answer as a go/no-go gate.
5. Stand up a content-governance gate: a written user-facing language inventory plus mandatory legal sign-off before any diagnosis-adjacent copy ships, defaulting all language to advisory framing.
6. Decide arrhythmia as the single primary clinical target and document sleep apnea explicitly as a post-Series-A roadmap item, so the scope choice reads as strategy.
7. Design the sync as tiered, capability-based, audited endpoints with a policy matrix, plus a two-tier audit scheme (on-device metadata buffer and full backend logging), so the PHI boundary is configurable per partner.
8. Architect the on-device drift-detection layer now: shadow inference against stored windows plus a confidence floor with automatic rollback, paired with secure boot, signed firmware, and dual-slot rollback.
9. Specify the three-tier alert architecture (observe / discuss with doctor / emergency or partner-routed) enforced in firmware, with calm, confidence-bearing language and morning buffering of low-confidence nighttime detections.
10. Prototype the analog R-R-interval gate ahead of the processing unit and validate it offline against labeled PPG/ECG data, treating anything above 1% missed-true-positive loss as disqualifying.
11. Set and enforce a hard pre-launch false-positive ceiling (for example, one per user per 30 days) and build active synthetic self-validation that surfaces "validation drift" before a catastrophic miss.
12. Build the tiered, revocable consent architecture (self / delegated read-only / full delegation) defaulting to self, with an on-device access audit trail, ahead of any family-sharing feature.
13. Contractually lock in 2 to 3 early clinical pilot sites for proprietary, owned arrhythmia data, since without owned signal there is no data moat.
14. Run a structured user study presenting the explicit battery-versus-accuracy and continuous-versus-event-driven tradeoffs, then commit deliberately to a monitoring posture and a single primary regulatory path.
15. Build the one-page clinician summary export in standard cardiology terms early and test it with 3 to 5 physicians, and version model updates with re-scored history so ground truth never shifts silently.

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

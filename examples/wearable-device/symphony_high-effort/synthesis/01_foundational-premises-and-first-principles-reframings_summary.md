---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "01_foundational-premises-and-first-principles-reframings"
synthesis-type: "summary"
central-tension: "First-principles simplification (minimal models, fewer sensors, personal baselines) sharply cuts power, cost, and regulatory surface, but each simplifying move surfaces a counter-test where it destroys the clinical capability the device exists to provide."
---

# Summary: Foundational Premises and First-Principles Reframings

## Executive Summary

The organizing tension of this cluster is that almost every first-principles simplification the team could make is also a way to break the product. Stripping the model to a decision tree, cutting the microphone, personalizing the baseline, and adding a co-regulation loop each cut power, cost, and regulatory surface. Each one carries a counter-test: the same move destroys exactly the clinical capability the device exists to provide. The question the cluster never fully resolves is how far to strip the inherited premises before the device stops being a credible health monitor.

All seven perspectives agree the dedicated NPU is probably unnecessary for primary detection. Atrial fibrillation versus normal sinus rhythm is driven mainly by RR-interval variability, which a shallow decision tree or lookup table can likely capture at 85-95% of a neural network's accuracy. An interpretable model is not a compromise here. It is a regulatory asset: a clinician told "a neural network decided" stalls the clinical-partnership pathway. A near-unanimous finding is that the four-sensor stack is assumed additive but is not. A mutual-information audit plus aggressive duty-cycling could cut the power budget substantially.

A second strong convergence reframes the product's purpose: for cardiac-anxious users over 40, confirming normalcy may be worth more than detecting rare anomalies. This inverts the design toward specificity and reduces both false-positive anxiety and medical-claims liability. But this reframe rests on an untested assumption the dissenting lens flags hard: the wrist's signal-to-noise floor may be physically unrecoverable regardless of ML sophistication. The cheapest high-value action in the cluster is an honest signal-quality benchmark before any model commitment.

The two most generative reframes both demand discipline rather than enthusiasm. Personalized baselines are information-theoretically efficient, but pure personalization goes blind to slow-moving pathology and stable-but-pathological baselines. It only works layered beneath a population reference and a rate-of-change guard. The bidirectional co-regulation idea is achievable as an incremental haptic feature, but "symbiosis" framing expands liability and collides with battery and privacy constraints. It belongs in a small piloted loop with conservative marketing, not the launch claim.

---

## Key Themes

**Categorical reframe: personalization is load-bearing only when it is layered, not when it replaces the population reference.** Six perspectives endorse learning each wearer's signature and flagging drift from their own norm. The seventh shows that continuous re-anchoring lets mild AFib developing over months stay below threshold and lets a chronically hypertensive baseline never flag. This is not "personal not population" restated. It changes which action is prioritized: ship a personalized primary alert sitting on top of a population threshold and an explicit rate-of-change guard, rather than a pure personal-drift detector.

### Minimal Models Beat the NPU, and Interpretability Is the Reason
All seven perspectives independently argue that a small RR-interval decision tree likely captures most AF discrimination. The NPU becomes possible "reassuring theater" rather than a medical necessity. Interpretable models are auditable, debuggable in the field, and far easier to defend in a 510(k) submission. The strategic payoff is substantial. The recommended first move is an offline tree-versus-network comparison on public datasets before hardware is finalized.

### The Wrist Premise Is Inherited, Not Derived
The wrist placement came from fitness-tracker precedent. Five perspectives warn that motion artifact can exceed true PPG by an order of magnitude, with further degradation across skin tone, tattoos, and perfusion. A minority pushes further and questions whether ear, finger, or ring sensing should replace the wrist outright. The unanimous practical implication is to benchmark wrist SNR against gold-standard devices before committing the sensor stack.

### Prove Each Sensor Earns Its Place, Especially the Microphone
The microphone is the most socially fraught, environmentally fragile, and regulatorily costly channel. Its apnea contribution is unvalidated. Five perspectives prescribe the same ablation: PPG + accelerometer versus full stack on retrospective cases, with a "no value test, no ship" rule. Four note the accelerometer plus PPG SpO2 dips may already recover most of the apnea signal. One reframe repurposes the microphone toward spoken user self-report rather than ambient audio, collapsing the privacy and noise problems at once.

### Compliance Is a Design Variable, Not an Afterthought
A device worn 24/7 outperforms a more sensitive one users abandon. Night-wear non-compliance runs 40-50% within six months. This reframes the success metric from "sensitivity at fixed specificity" to "real events caught before symptoms." Confidence-graded feedback and habit incentives should be core features, not polish.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Run an offline decision-tree versus neural-network comparison on public AF datasets (MIT-BIH, ICBEB) to test whether a tree reaches 90%+ of network accuracy; if it does, descope the NPU from primary detection before hardware locks.
- Commission a limited-cohort wrist SNR benchmark against chest and finger gold-standard devices across skin tone, age, activity, and tattoo prevalence, to decide whether the wrist is viable before committing the full model stack.
- Run the microphone ablation now (PPG + accelerometer versus full stack on retrospective apnea cases) and apply a pre-agreed cut threshold (drop below ~5 points improvement, keep above ~10-15) before the PCB footprint is fixed.
- Compute mutual information across sensor pairs to identify the two-to-three-sensor subset capturing ~95% of discriminative signal per task, and design duty-cycling around the result.

### Near-term (3-12 months)
- Architect a two-tier, confidence-graded alert system that separates low-confidence wellness flags from high-confidence confirmations and logs signal confidence on every alert.
- Design the personalization layer as a hybrid: personal signature for sensitivity, population thresholds beneath it, and an explicit rate-of-change guard against slow pathology; schedule personalized baselines for after 6-12 months of telemetry rather than launch.
- Prototype the smallest bidirectional biofeedback loop (stress-detection to haptic breathing prompt to physiological confirmation) with a 30-user, 8-week study measuring engagement and physiological effect.
- If the microphone survives the ablation, build it as default-off, opt-in, on-device-only spectral-feature extraction, and evaluate open-sourcing the feature extractor as a trust mechanism.

### Long-term (1+ years)
- Decide the wrist-versus-alternate-site question on benchmark evidence rather than precedent, including a possible ear or finger sensor if wrist SNR proves unrecoverable.
- Build on-device federated-lite personalization (local learning, periodic firmware refinement, quarterly recalibration) with differential privacy and a coarse-grained, encrypted signature to limit inference attacks.
- Pilot any genuine co-regulation feature as a premium, formally-trialed offering with conservative "personalized feedback" marketing rather than "symbiosis" health claims, and ship a physical air-gap off-switch as a baseline autonomy feature.

---

## Key Considerations

**Opportunities**:
- A minimal, interpretable model cuts power, extends battery toward the 7-day target, and strengthens the eventual 510(k) story.
- Reframing the product around normalcy confirmation fits the 40+ cardiac-anxious cohort and lowers false-positive anxiety. It also softens medical-claims liability.
- Sensor duty-cycling driven by an independence audit can reclaim a large fraction of the power budget for more frequent sensing or longer operation.
- An incremental haptic biofeedback feature can differentiate the device as an active partner rather than a passive monitor, if scoped conservatively.

**Risks & Challenges**:
- The wrist SNR floor may be physically unrecoverable, making the core detection premise "reassurance theater" that breaks user trust on the first false positive.
- Pure personalization can silently normalize slow-developing pathology and stable-but-pathological baselines.
- Closed-loop feedback can create nocebo cascades where a false alert triggers the very arrhythmia it flags. Measurement becomes influence.
- The learned personal signature is itself sensitive data and an inference target if the device is lost or stolen.
- A microphone invites stricter FDA classification and permanent privacy-skepticism burden that may exceed its clinical value.

**Trade-offs**:
- Simplicity versus capability: each premise-stripping move (decision tree, dropped sensors, personal baselines, co-regulation) saves power and surface area while risking the clinical capability it removes.
- Personalization versus comparability: per-user sensitivity gains pull against the population reference needed to catch absolute-risk and slow-drift conditions.
- Privacy-on-device versus low-latency symbiosis: the 7-day battery and on-device-privacy constraints make true low-latency co-regulation hard to deliver at scale.
- Sensitivity versus compliance: a more accurate but less wearable form factor can catch fewer real events than a noisier device people actually keep on.

---

**Questions addressed**: 5
**Key insights synthesized**: 23

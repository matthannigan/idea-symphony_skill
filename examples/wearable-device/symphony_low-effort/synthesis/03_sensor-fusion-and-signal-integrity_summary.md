---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "03_sensor-fusion-and-signal-integrity"
central-tension: "A feasibility-oriented case for beginning with late fusion and earning architectural complexity through real-world data; a risk-oriented counterpoint that late fusion's apparent modularity conceals silent per-sensor confidence collapse, and that several structural failure modes — demographic bias, compute budget overruns, and suppression liability — require verification before launch, not after."
---

# Summary: Sensor Fusion and Signal Integrity

## Executive Summary

Both perspectives agree on one thing: late fusion is the practical v1 starting point. The real disagreement is about what counts as adequate validation before shipping. A feasibility-oriented view argues the team can instrument per-sensor quality scores, gate the microphone on a two-stage trigger, and profile the end-to-end budget on actual hardware within a sprint. All actionable now. A risk-oriented counterpoint points out that these mechanisms have hidden failure modes that normal validation won't catch. Late fusion's per-sensor confidence scores degrade along with sensor drift, so the device stays confident while becoming wrong. Microphone gating depends on sleep-state inference that is noisiest at exactly the transitions it needs to handle. Per-component compute budgets routinely underestimate real-device overhead by 40–100%.

Both lenses agree on high-confidence structural decisions: separate arrhythmia and apnea into distinct detection paths (PPG and accelerometer for cardiac, microphone only for sleep); require a measurable recall lift before including any sensor in production; validate the end-to-end compute budget on actual target silicon before finalizing architecture; and test PPG performance across Fitzpatrick skin tones before launch. These are the clearest action signals.

The sharpest divergence is on graceful degradation. A feasibility-oriented approach recommends suppressing low-confidence alerts and showing only a plain-language "check device fit" prompt when degradation is persistent. This protects the user from anxiety-inducing uncertainty messages. A risk-oriented counterpoint argues that suppression logic introduces legal liability that hasn't been reviewed by counsel. If the device suppresses a cardiac alert because sensor quality was below threshold and an adverse event follows, the suppression decision becomes a legal exposure. These two positions cannot both be right, and the suppression architecture needs legal review before it ships.

---

## Key Themes

### Condition-Specific Fusion Paths Over a Unified Architecture
Both lenses reached the same conclusion independently. Designing one fusion architecture for arrhythmia and sleep apnea simultaneously likely under-optimizes both. Arrhythmia detection runs 24/7 on a lean PPG and accelerometer pipeline; apnea runs overnight and requires the microphone. Treating these as a single inference problem adds complexity without proportional benefit. This decomposition alone cuts the architecture's combinatorial failure surface significantly. [Convergent]

### Silent Sensor Degradation as the Underappreciated Failure Mode
Both lenses identified slow PPG drift (optical path fouling with skin oils over weeks) as a patient safety issue that standard validation cycles won't catch. A feasibility-oriented approach recommends a nightly rolling recalibration routine comparing current PPG amplitude against a 30-day median. Surface a companion app prompt when amplitude degrades beyond 15%. A risk-oriented view adds that the confidence score degradation tracks the physical degradation. The device stays subjectively confident while its accuracy is quietly eroding. The nightly recalibration routine is the mitigating action both lenses support. [Convergent on mechanism; risk-oriented lens additionally flags that proportional confidence decay makes this harder to detect than it appears]

### Demographic Generalization Is a Pre-Launch Requirement, Not a Future Research Item
Both lenses identified PPG performance on darker skin tones, tattoos, and varying subcutaneous fat distributions as a known liability requiring structured validation with demographically stratified participants before launch. A feasibility-oriented view frames this as 20–30 test participants across Fitzpatrick I–VI in the first prototype cycle. Use a specific recall-drop threshold (>10 percentage points) to trigger a dual-wavelength PPG or threshold adjustment. A risk-oriented view adds the legal framing: marketing to health-conscious adults 40+ broadly while underperforming for a documented subgroup creates discrimination and regulatory exposure, regardless of FDA clearance status. [Convergent on the action; risk-oriented lens adds regulatory and liability stakes]

### Suppression Logic and the Alert Reliability Trade-Off
This is the cluster's most unresolved divergence. A feasibility-oriented case argues for suppressing low-confidence alerts and showing only a plain-language "check device fit" message after sustained degradation. This protects users from anxiety-inducing uncertainty. A risk-oriented counterpoint argues that suppression of a cardiac alert, if followed by an adverse event, is a significantly harder legal position than a device that didn't fire. The suppression logic requires legal review before shipping, not after. Neither side is wrong in its own frame. The gap is that the two lenses optimize for different risk types (user anxiety versus liability exposure). [Divergent: feasibility vs. risk-oriented]

### Compute Budget Optimism Is a Known Embedded Systems Failure Mode
Both lenses independently noted that per-sensor compute estimates summed on paper or in simulation routinely underestimate real-device overhead. A feasibility-oriented view gives a concrete figure (30–50% underestimation) and recommends end-to-end profiling on the actual MCU within the next sprint, before finalizing model architecture. A risk-oriented view specifies the mechanism: NPU vendor benchmarks assume the chip is idle. In practice, DMA transfers, sensor polling interrupts, display refresh, and BLE advertising all compete for the same bus bandwidth, producing 1.4–2x actual latency. Both lenses agree on the same action: run an end-to-end measured budget on actual silicon. [Convergent]

---

## Recommended Actions

### Immediate (0-3 months)

- Decompose the fusion architecture into two distinct inference paths: a 24/7 arrhythmia path (PPG + accelerometer) and a sleep-time apnea path (PPG + accelerometer + microphone). Treat these as separate models sharing hardware, not a unified four-sensor classifier. [convergent]
- Profile the full preprocessing + inference stack end-to-end on the actual target MCU at realistic sensor polling rates, measuring wall-clock time and peak memory — not per-sensor estimates summed. Gate model architecture decisions on this result, not before. [convergent]
- Run PPG recall validation across Fitzpatrick I–VI skin tones, with tattoos and subcutaneous fat variation represented, on the first hardware prototype cycle. Define a pass/fail threshold (e.g., recall drop >10 percentage points triggers dual-wavelength PPG or threshold adjustment). Do not defer this to a post-launch research phase. [convergent]
- Instrument per-sensor confidence scores as first-class outputs before any fusion layer — PPG motion artifact level, accelerometer variance, microphone SNR. The fusion layer should consume quality scores alongside raw classifications, not treat sensor input as always-valid. [convergent]
- Require legal review of the alert suppression logic before finalizing it. The decision to suppress a cardiac alert based on signal quality is not purely a product decision; define the suppression criteria and their documentation requirements in coordination with counsel. [unique: risk]

### Near-term (3-12 months)

- Implement a nightly rolling PPG recalibration routine: during a confirmed low-motion window, compare current PPG amplitude against a 30-day median and surface a companion app "sensor check" prompt when degradation exceeds 15%. This catches optical path fouling before it compromises clinical validity. [convergent]
- Build a hardware-in-the-loop degradation simulator to generate synthetic fault-mode training examples — PPG fouling patterns, accelerometer baseline drift — so the fusion model has exposure to real-world degradation signatures before launch. Published health monitoring datasets do not contain these. [unique: risk]
- Validate artifact rejection performance stratified by activity state (sedentary, semi-sedentary, sleep transition), not as a population mean. For a 40+ demographic, the high-risk motion profiles are slow irregular arm movements, not vigorous exercise. [unique: risk]
- Define the on-device data retention policy before building any longitudinal feature: maximum local storage allocation, achievable compression ratio per signal type, and sync cadence for aggregated summaries. [unique: feasibility]

### Long-term (1+ years)

- If moving toward longitudinal pattern awareness ("health geography"), build the data model now to support rolling per-user baseline statistics stored on-device and aggregated summaries synced to the companion app — even if v1 surfaces only simple trend charts. The architecture investment is small; the optionality it preserves is large. Frame output as "deviation from personal baseline," which is a wellness claim that stays out of 510(k) scope. [unique: feasibility]
- Require a regulatory pre-submission consultation before building toward any "continuous physiological map" output type. The FDA regulates continuous passive monitoring tools differently from discrete event detectors, and a novel output type carries a substantially higher evidentiary burden than the current consumer-wellness framing. [unique: risk]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- Late fusion is the correct v1 starting point. Early or hybrid fusion earns its complexity only after 6+ months of real-world signal quality data.
- Arrhythmia and apnea must be treated as separate detection paths with separate sensor dependencies.
- End-to-end compute budget must be validated on actual target silicon before finalizing architecture.
- Demographic PPG validation (Fitzpatrick I–VI) is a pre-launch requirement, not a future research item.
- Per-sensor quality scores should be first-class fusion inputs from day one.
- Skin temperature is the weakest keystone candidate and should be duty-cycled aggressively. 1/60th the PPG rate loses minimal clinical information.

**Trade-offs** (the two lenses disagreed):
- A feasibility case for suppressing low-confidence alerts with a plain-language "check device fit" prompt to protect users from anxiety. A risk-oriented counterpoint that suppression of a cardiac alert creates legal liability if followed by an adverse event, and the suppression logic requires legal review before shipping.
- A feasibility case for a two-stage microphone gate (accelerometer and PPG sleep-state estimator trigger microphone wake after 5+ minutes of sustained confidence). A risk-oriented counterpoint that sleep-state inference is noisiest at exactly the transitions the gate needs to handle. A low-power acoustic presence detector should override the gate when structured audio is detected to avoid missing breathing data when classification is least certain.
- A feasibility case for framing PPG and microphone as condition-specific keystone signals with other sensors as context providers. A risk-oriented counterpoint that "keystone" framing baked in before large-scale real-world data risks hard-to-reverse architectural commitments. The inter-signal relationships assumed by that framing may not hold across individual users with different physiological baselines.

**Blind-spot flags** (only one lens raised):
- The proportional degradation problem: late fusion's per-sensor confidence scores degrade along with sensor drift, so the system stays apparently confident while its clinical accuracy quietly erodes. Standard confidence monitoring won't catch this. [risk-oriented]
- Fusion's failure modes deserve equal attention to its successes. The "fusion exceeded expectations" framing risks anchoring the architecture on n=1 impressive observations rather than on the distribution of cases, including false positives that single-sensor approaches would have avoided. [risk-oriented]
- The physiological cartography vision (Q6) has a strong feasibility path via rolling personal baseline deviation scores. It's implementable within the current architecture without platform rewrite. [feasibility-oriented]
- Simple preprocessing (band-pass filter and peak detection) paired with a well-tuned small CNN often outperforms complex preprocessing paired with a smaller model. Keep preprocessing lean by default. Add complexity only when validated recall lifts justify it. [feasibility-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- **Equity/access/distributional:** Both lenses treated demographic PPG validation as a technical problem (recall rates, dual-wavelength options). Neither addressed the distributional question. If the device underperforms for darker skin tones at launch and is priced as a premium wellness device, the resulting disparity in clinical benefit is an access and equity issue independent of its regulatory or liability framing. That angle would shape communication, pricing strategy, and community testing partnerships differently than a pure recall-threshold analysis.
- **Relational/social:** Both lenses are silent on who interprets sensor quality degradation signals in practice. The "check device fit" companion app prompt assumes a technically capable solo user. For a 40+ demographic that may rely on family members or caregivers to manage device health, the sensor maintenance loop has a social and relational dimension. The design of that communication pathway matters beyond the UX of the alert itself.

---

**Questions addressed**: 6
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/low"
date: 2026-06-09
effort: "low"
stage: "Phase 5: Summaries Concatenation"
---

# Summary: Defining Success and the Real Objective

## Executive Summary

The cluster's organizing tension is not between accuracy and power. It is between naming a single load-bearing constraint and continuing to treat all four axes (accuracy, latency, power, privacy) as co-equal. Both lenses converge strongly here: "balance" is a political fiction, not an engineering priority stack. A feasibility-oriented view proposes anchoring at ≥90% sensitivity / ≥70% specificity for clinically validated arrhythmia patterns and working backward from that anchor to power and latency budgets. A risk-oriented counterpoint agrees on the anchor but flags that the team has not yet resolved which detection problem is primary: paroxysmal AFib (real-time windowed classification) or obstructive sleep apnea (multi-hour temporal aggregation). These are structurally opposite inference problems with opposite latency requirements. Quietly designing for both without acknowledging the trade-off is the most predictable way to ship a device that does neither well.

On anomaly definition, both lenses converge on version-controlling the clinical criteria and separating the anomaly threshold from model weights as an updatable artifact. They diverge sharply on user controls. A feasibility-oriented view allows a three-setting sensitivity dial (Conservative / Standard / Sensitive) backed by pre-validated threshold sets. A risk-oriented view argues that any user-facing "sensitivity" framing creates liability even as a consumer wellness device and recommends restricting user controls strictly to notification preferences while the model runs at fixed clinical thresholds.

On alert UX and the "alone with their wrist" failure mode, the two lenses converge on a tiered alert architecture and on designing for the worst-case anxious user rather than the composed median user. Uniquely from a risk lens: the companion app's implicit assumption that the user-physician relationship will bridge alert to action is undesigned. A primary care physician receiving a wearable screenshot has no validated protocol, no liability framework, and no reimbursement pathway, so the gap between alert and clinical action may be 6–8 weeks. The feasibility lens uniquely surfaces pre-loading health profile context at onboarding (not at alert time) and a post-alert debrief loop as the ground-truth data pipeline for model improvement.

---

## Key Themes

### The False Equivalence of "Balance"
Both lenses reject the framing that accuracy, latency, power, and privacy are co-equal constraints to balance simultaneously. Sensitivity-at-specificity is the only constraint that makes the device worth wearing. The others are derived. Convergent finding: build a ranked priority stack before locking any architecture decision. Explicitly resolve whether AFib or sleep apnea detection is the primary problem, because they require fundamentally different inference approaches.

### Anomaly Definition as Versioned Artifact, Not Baked-In Assumption
Both lenses agree that the anomaly definition must be encoded in a versioned specification document, separate from model weights, with an explicit change-control process tied to clinical advisory review. The risk-oriented view adds that FDA's De Novo pathway for consumer AFib detection is predicate-based. Deviating from an already-cleared anomaly definition converts a 510(k) submission into a novel pathway requiring clinical studies and 18–24 additional months. Reverse-engineering the anomaly definition from the target 510(k) predicate now is a low-cost decision with high downstream leverage.

### Tiered Alert Architecture as Non-Negotiable
Both lenses converge on a tiered confidence system: low-confidence anomalies log silently, medium-confidence prompts a "review" nudge, and high-confidence fires a real alert. Consumer health device research consistently shows users who receive more than 2–3 non-emergency alerts per week begin ignoring all alerts by day 30. A device that cries wolf in week two will be dismissed in week four when a real event occurs. The three-tier escalation flow (monitor / contact doctor / call 911) is the minimum viable UX, not a nice-to-have.

### The Undesigned Clinician Bridge
A risk-oriented blind spot the feasibility lens does not raise: the device implicitly assumes a functioning user-physician relationship will translate alerts into clinical action. That bridge does not exist in the product. A primary care physician receiving a wearable screenshot has no validated protocol for responding, no liability framework for acting on consumer wellness data, and no reimbursement pathway for the follow-up telehealth visit. Partnering with one telehealth cardiology platform at launch and designing a clinical-grade export format (PDF with waveform context) is the minimum viable bridge that actually exists.

### On-Device Personalization Requires Migration Architecture from Day One
Both lenses agree that the symbiotic intelligence vision — a device that becomes genuinely irreplaceable through individualization — is self-defeating without a device-to-device migration protocol. The personalized model is most valuable precisely when the user needs to replace hardware. Without migration, the "loyalty" created by data depth becomes a loyalty trap at upgrade time. A feasibility-oriented view identifies an encrypted local-to-local Bluetooth migration protocol as achievable in roughly one quarter of firmware work, a competitive moat that cloud-dependent alternatives cannot match.

---

## Recommended Actions

### Immediate (0-3 months)
- Convene a one-day architecture review to formally rank the four constraints (sensitivity-at-specificity → power → latency → privacy) and document which detection problem is primary (AFib vs. sleep apnea); make the outcome an explicit written decision, not an implicit team assumption. [convergent]
- Run a 48-hour instrumented power audit on the target NPU under a representative 24-hour sensor fusion load before any further ML architecture decisions. If measured draw differs from datasheet estimates by more than 20%, respecify hardware now. [convergent]
- Submit a pre-submission meeting request to FDA's Digital Health Center of Excellence. The meeting is free and available within 60–90 days. It will determine whether consumer wellness claims cross into SaMD territory and whether consumer-launch data will be acceptable as clinical evidence for a future 510(k). [unique: risk]
- Encode the AFib and sleep apnea anomaly definitions as a versioned model specification document (separate from model weights), and reverse-engineer the target definition from the most relevant existing 510(k) predicate device. [convergent]

### Near-term (3-12 months)
- Recruit 10 subjects from the target demographic (adults 40+), collect 72 hours of real-wrist PPG data during normal life including exercise and sleep, and count how many alerts the current detection logic would have surfaced. If more than 3 per week per person, the alert architecture requires fundamental rethinking before the ML approach is meaningful. [convergent]
- Build the three-tier alert escalation flow (monitor / contact doctor / call 911) with onboarding health-profile pre-load (cardiologist on file, emergency contact, family cardiac history) before finalizing alert copy. Run 10 structured moderated sessions with target-demographic users using a Figma prototype before writing any app code. [convergent]
- Implement a post-alert debrief loop (24-hour follow-up prompt: "Did you follow up? How do you feel?") from initial launch; users who had confirmed cardiac events are the highest-value training signal and retrofitting this collection mechanism post-launch is substantially harder. [unique: feasibility]
- Limit user-facing controls to notification preferences only (how and when they are notified), not detection sensitivity. If a sensitivity dial is offered, back each setting with pre-validated threshold sets. Never expose raw model threshold parameters to users. [trade-off: a feasibility case for a three-setting dial (Conservative / Standard / Sensitive) to give users agency within a controlled parameter space; a risk-oriented counterpoint that any "sensitivity" framing creates liability surface area the team cannot manage at 12 engineers, and that the distinction between "notification preferences" and "detection sensitivity" must be unambiguous in both UI language and legal documentation]

### Long-term (1+ years)
- Design an encrypted device-to-device migration protocol (Bluetooth, no cloud) for the personalized on-device health model before gen-1 ships. The architectural decision is low-cost now, and the absence of migration is the single largest risk to the symbiotic intelligence value proposition at upgrade time. [convergent]
- Partner with one telehealth cardiology platform for the launch cohort and design a clinical-grade alert export (PDF with 30-second encrypted waveform snippet, structured for cardiologist review). This closes the gap between alert fired and clinical action taken, which is currently 6–8 weeks with no designed bridge. [unique: risk]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- "Balance" across all four constraints is not an engineering strategy; sensitivity-at-specificity must be ranked first, and the others derived from it.
- AFib detection (real-time windowed classification) and sleep apnea detection (multi-hour aggregation) are structurally different inference problems; the team must resolve which is primary before locking architecture.
- Anomaly definitions must be version-controlled as a separable artifact from model weights, with a defined change-control process.
- A tiered alert confidence system (silent log / review nudge / real alert) is essential; surfacing raw model output as a user notification will produce alert fatigue within 30 days and device abandonment by day 45.
- The personalized model must be portable and migratable across device generations from day one; on-device-only storage without migration destroys the symbiotic intelligence value proposition at upgrade time.

**Trade-offs** (the two lenses disagreed):
- A feasibility case for user-facing sensitivity controls (three pre-validated presets) as a mechanism to give users agency within a controlled parameter space; a risk-oriented counterpoint that any user-facing framing of "sensitivity" — even preset-backed — creates product liability surface area the company cannot absorb at 12 engineers, and that user controls must be restricted to notification preferences only, with the model running at fixed clinical thresholds regardless of user settings.
- A feasibility case that "raw data never leaves the device" is a marketing differentiator for consumer launch rather than a hard technical constraint. A risk-oriented counterpoint: conflating privacy value with regulatory risk-reduction (avoiding FDA SaMD classification for cloud-side components) creates architectural confusion. The real driver — regulatory hedge — should be named explicitly because it changes which privacy trade-offs are actually negotiable.
- A feasibility case for 30-second encrypted waveform snippets accompanying each alert on the companion device (stored locally, not in cloud) to make alerts actionable without violating on-device raw data processing. A risk-oriented framing: this reconsideration of the privacy architecture should be deliberate and explicit, not a quiet exception to the stated design principle.

**Blind-spot flags** (only one lens raised):
- The user-physician bridge is undesigned: a primary care physician receiving a wearable screenshot has no protocol, liability framework, or reimbursement pathway for acting on consumer wellness data. The gap between alert and clinical action is currently 6–8 weeks with no designed intervention. [risk-oriented]
- PPG-derived AFib detection has a known specificity ceiling of 82–88% in clinical literature, roughly 1 in 7 alerts is a false positive. This rate will appear worse when validated against a normative fitness-wearable cohort rather than an enriched hospital Holter cohort. Validation dataset selection is as consequential as model architecture. [risk-oriented]
- A post-alert debrief loop (24-hour follow-up prompt) is the primary ground-truth data pipeline for model improvement and the highest-value training signal source. This mechanism is far cheaper to design in at launch than to retrofit. [feasibility-oriented]
- Storage BOM cost is typically overlooked until hardware is already specified. The symbiotic intelligence vision requires at least 128MB non-volatile storage for model checkpoints, anomaly logs, and signal statistics. Price this into the MCU selection now. [feasibility-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- **Equity/access/distributional:** Neither lens examined who among the target demographic (adults 40+ with family cardiac history) has reliable smartphone access, health literacy sufficient to interpret a tiered alert, or a cardiologist relationship to activate Tier 2 escalation. The alert architecture's three-tier CTA assumes a user with a stored provider contact. A significant fraction of the highest-risk users — older adults without established cardiac care — are precisely the ones for whom that assumption fails.
- **Emotional/phenomenological:** The questions name the "alone with their wrist" moment, and the risk lens addresses it structurally, but neither lens examined the phenomenology of living with a health-monitoring device over months. This includes the normalization of anxiety, the way a device that has never fired becomes both reassuring and quietly distrusted, and how a false positive early in the wear history permanently recalibrates a user's threshold for taking alerts seriously. These are not UX edge cases. They are the primary psychological dynamics of long-term health monitoring wearables.

---

**Questions addressed**: 5
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

---

# Summary: Power Budget and Hardware-Software Co-Design

## Executive Summary

Both lenses converge on a structural diagnosis: the 7-day battery promise and the NPU's centrality to it are joint load-bearing assumptions not yet tested against real silicon or real usage. They diverge sharply on what that means. A feasibility-oriented view treats the risks as solvable engineering problems once made visible (calibrate the spreadsheet budget on prototype hardware, silicon-validate NPU benchmarks before locking model architecture, define a CPU-only MCU DSP fallback at reduced accuracy and inference frequency). A risk-oriented counterpoint holds that each mitigation has a known failure mode. Correlated demand spikes (anomaly detection triggering simultaneous elevated sensing, NPU inference, and BLE alert) break steady-state budget math by 2–3x. NPU vendors quote peak TOPS against dense matrix workloads unlike yours. The CPU-only "fallback" at approximately 3-day battery and 40% lower accuracy is not a fallback but an admission that the intended product does not exist in commercially viable form. That gap between characterization and commitment runs through every question in this cluster.

A second convergent finding: 12 engineers cannot simultaneously maintain a consumer device, build an FDA validation suite, develop HIPAA infrastructure, and iterate ML architecture on a single Series A runway without explicit sequencing. A feasibility view offers concrete sequencing (dedicated clinical track from month 9, HIPAA via compliant cloud vendor). A risk view argues the scope likely exceeds what any sequencing can fix at current headcount. Doing everything mediocrely risks the consumer product excellence that would drive a Series B.

---

## Key Themes

### Correlated Demand Spikes Are the Clinical Scenario, Not a Corner Case
Both lenses agree: simultaneous elevated PPG sampling, NPU inference, and BLE alert is the device's intended detection event, not a tail risk. A feasibility view enforces this via a hard 15 mA instantaneous cap with BLE deferred up to 2 seconds when the NPU is active. A risk view notes that a 6-hour arrhythmia episode at elevated sensing could exhaust the battery before the episode resolves, and argues for a dedicated clinical-emergency power tier guaranteeing 24 hours of minimum monitoring regardless of prior duty-cycle state.

### NPU Lock-In Is Irreversible and Requires Pre-Commit Silicon Validation
Both lenses expect 40–60% of rated NPU throughput under real windowed time-series inference and call for eval-kit validation before model architecture is locked. Where they split: a feasibility view defines the MCU DSP fallback concretely and treats it as viable. A risk view holds that if the fallback cannot meet a commercially viable battery floor, it is not a fallback. That floor must be defined before chip selection, not after.

### Two-Tier Architecture: Measure the Fixed Design Before Adding Adaptive Complexity
Both lenses endorse the fixed two-tier approach (firmware heuristic gating NPU wake-ups) and warn against adaptive complexity before the fixed design is measured. A risk view notes that the adaptive governor may be self-defeating: it increases power draw precisely during a sustained health event when battery criticality is highest. A feasibility view contributes a hard constraint: PPG polling cannot drop below 1 Hz even in low-power mode if the system must catch transient arrhythmias across 3 consecutive beats.

### Unified Budget Framing: Useful Tool or Dangerous Simplification?
A feasibility view embraces treating battery life, inference latency, and model size as a shared constraint matrix, visualizing how a new model proposal moves all three rows before implementation. A risk-oriented counterpoint flags that the framing can obscure asymmetric failure costs. Exceeding the power budget is a product experience problem. Missing accuracy thresholds is a patient safety problem. Clinical accuracy minimums should be non-negotiable hard floors defined first, with power optimization as the constrained subproblem after.

---

## Recommended Actions

### Immediate (0-3 months)
- Run a synthetic "storm day" workload (15 anomaly events, 6 BLE syncs, 8-hour sleep sensing) on three prototype units and use the measured-vs-spreadsheet delta as a calibration factor for all downstream battery specs. [convergent]
- Obtain NPU eval kits for two candidate silicon options; measure actual inference time and current draw under the real workload before locking model architecture. [convergent]
- Document the CPU-only fallback now: model, inference frequency, accuracy floor, projected battery life, and whether that configuration is commercially viable at the intended price point. [trade-off]

### Near-term (3-12 months)
- Designate a power architect with cross-team authority; require power profiling as definition-of-done for any PR touching sensing, inference scheduling, or radio. [convergent]
- Validate PPG in pool conditions on at least 10 subjects; add the worst-case LED drive current delta to the power budget and implement a swim-detection mode. [convergent]
- Define a decision record for sleep session behavior across timezone crossings; implement timezone-shift detection via companion app data. [convergent]
- Get product, firmware, and medical advisors to agree on low-battery behavior during active anomaly detection — reduce sensing vs. die sooner — before implementation. [unique: feasibility]

### Long-term (1+ years)
- Sequence the FDA clinical track as an explicit workstream with named owners from approximately month 9, or explicitly defer it to Series B headcount as a scoping decision. [convergent]
- Measure accuracy degradation per quantization step and plot against NPU inference time; treat inference frequency as a co-equal budget dial alongside model size. [unique: feasibility]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- Correlated demand spikes are the correct validation scenario; steady-state average-day math can be off by 2–3x.
- BLE advertising interval is the cheapest high-leverage lever; treat it as a cross-team power constraint, not a UX preference.
- NPU throughput requires silicon validation before model lock-in; assume 40–60% of rated TOPS until measured.
- FDA clinical track requires dedicated sequencing — it cannot be sustained as background work alongside consumer device development.

**Trade-offs** (the two lenses disagreed):
- A feasibility case that CPU-only DSP inference is a viable defined fallback; a risk-oriented counterpoint that ~3-day battery defines a different non-viable product and the commercial viability floor must be named before chip selection.
- A feasibility case for the unified budget constraint matrix as a practical planning tool; a risk-oriented counterpoint that it can obscure the asymmetric failure cost of missed arrhythmias vs. dead battery — clinical accuracy minimums must be hard floors, not optimization variables.

**Blind-spot flags** (only one lens raised):
- Clinical-emergency power tier guaranteeing minimum monitoring through a sustained health event, regardless of prior duty-cycle state. [unique: risk]
- Year-2 battery degradation at temperature: real-world performance is likely 5 days; spec should carry explicit conditions and 25% headroom before marketing commits. [unique: risk]
- Inference frequency as a first-class budget dial: a 2x larger model running half as often can be net-neutral on battery and net-positive on accuracy. [unique: feasibility]

**Neither-lens gaps** (what a different angle would have surfaced):
- *Distributional accuracy:* PPG accuracy varies across skin tones in ways documented in commercial wearables and addressed in FDA AI/ML guidance. Neither lens examined whether the clinical accuracy floor is defined against a representative population, or what the regulatory and liability implications are of systematically lower sensitivity for a demographic subset.
- *User phenomenology:* Both lenses address alert accuracy in engineering terms but not behavioral terms. Alert fatigue, health anxiety around missed alerts, and charging behavior shaped by fear of device downtime determine whether the product achieves its health-outcome goal. These factors are structurally absent from both framings.

---

**Questions addressed**: 7
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

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

---

# Summary: False Positives, Trust, and Alert Behavior

## Executive Summary

The cluster's organizing tension is not simply false-positive rate versus missed-event rate. It's about whether the team treats uncertainty as a liability to hide or as a design material to surface. A feasibility-oriented view argues that confidence tiers, motion-artifact context flags, and plain-English uncertainty disclosures are implementable within a single sprint. They create meaningful liability protection and can be positioned as competitive differentiation ("the only cardiac wearable that tells you what it doesn't know"). A risk-oriented counterpoint is that surfacing uncertainty opens a new liability vector: a user who ignores a "40% confident" alert and suffers a cardiac event may cite the device's own language as justification. Confidence intervals will be misread unless supported by user education the team has not yet built.

Both lenses converged strongly on several high-confidence findings: liability exposure is determined by alert copy, not device labeling. Silent disengagement (wear-time drop, rapid dismissal) is a leading indicator that standard DAU metrics will miss entirely. Sleep motion-artifact rejection is not a hypothetical risk but a known P0 requirement. The alert flow at 2 a.m. must answer "how sure?" and "what do I do right now?" from the device display itself, without requiring the companion app.

The deepest divergence concerned governance structure. A risk-oriented view holds that a governance forum without explicit veto authority and pre-committed quantitative thresholds is a ceremony. It's anecdote-driven lurching disguised as process. A feasibility-oriented view argues that a 30-minute bi-weekly review with a fixed attendee list, a "trust SLA" that triggers mandatory threshold adjustment at defined FP ceilings, and a simple shared FP log is cheap to stand up and sufficient to prevent the worst outcomes. These are not mutually exclusive, but the risk-oriented concern is real: product velocity will hollow out governance rituals. The feasibility prescription alone does not address this.

---

## Key Themes

### Alert Copy Is the Liability Surface, Not the Model

Both lenses agreed that the legal and user-trust exposure of a false positive is almost entirely determined by how the alert is worded, not by the underlying model output. "Irregular heart rhythm detected" creates a clinical-guidance posture that no EULA disclaimer will overcome with a jury. "Unusual heart rhythm pattern — consider discussing with your doctor" does not. This is a product copy decision, not a model decision, and it must be resolved before beta launch with legal review.

### Silent Disengagement Requires Active Instrumentation

Standard retention metrics (DAU, app opens, subscription status) are structurally blind to silent disengagement. Both lenses identified wear-time (inferable from the accelerometer already on-device) and alert dismissal latency as the leading indicators. These must be instrumented from day one, not bolted on after churn appears. The risk-oriented view added that early-adopter retention data will systematically mislead because power users tolerate false positives that mainstream users will not.

### Governance Without Teeth Defaults to Sensitivity Drift

A risk-oriented view identified a structural problem: without a named cross-functional owner of the FP/FN dial and explicit quantitative thresholds that trigger mandatory response, the default organizational drift is toward sensitivity. Missing an event is more salient than alert fatigue. A feasibility-oriented view proposed the minimum viable governance structure: a bi-weekly 30-minute review with a defined attendee list, a "trust SLA" specifying when threshold adjustment becomes mandatory, and a shared FP log for institutional memory. The risk-oriented counterpoint that this forum needs explicit authority to delay releases is not addressed in the feasibility prescription.

### Uncertainty Disclosure as Both Ethical Requirement and Design Material

Both lenses converged that hiding model uncertainty is a product shortcut that compounds over time. Every user who treats a low-confidence alert as authoritative is a future complaint. The feasibility-oriented view argued that mapping model output probabilities to plain-English confidence tiers is one sprint of mobile work and functions as a liability lever. The risk-oriented view added that the legal complexity of uncertainty language requires attorney review before launch. Users need calibration education ("40% confident means 2 in 5 events like this turn out to be real"), or the number will induce either panic or dismissal depending on baseline anxiety.

### The 2 a.m. Alert Flow Is a Stress-Case, Not a Nominal Case

Both lenses treated the 2 a.m. Marcus scenario as the load-bearing design test for the entire alert system, not an edge case. Both agreed that critical first-response information must live on the device display, not require a phone. The "call a doctor" default should route to the user's primary care provider, not 911. The interaction design must be tested under simulated fatigue conditions, not just in daylight design reviews.

---

## Recommended Actions

### Immediate (0-3 months)

- Before beta launch, get a legal review of all alert copy, including uncertainty disclosure language and the distinction between "notification" and "recommendation." Budget approximately $10k. [convergent]
- Implement a motion-artifact context flag in every cardiac alert: if the accelerometer shows movement in the 60 seconds prior to a PPG anomaly, the alert must say so explicitly. This is an existing data source requiring one rendering change. [convergent]
- Instrument wear-time (wrist-off inference from accelerometer) and alert dismissal latency as first-class analytics from firmware day one, not as an instrumentation backlog item. [convergent]
- Define two named firmware threshold profiles — consumer and clinical — even if both currently point to identical values. The migration cost at regulatory regime shift is a config flip, not an architecture retrofit. [unique: feasibility]
- Treat sleep motion-artifact rejection as a P0 launch requirement with specific test cases drawn from wrist-worn sleep movement datasets. This is not a hypothetical scenario; it is the most common PPG error source in wrist-worn devices. [convergent]

### Near-term (3-12 months)

- Establish a bi-weekly FP governance review: 30 minutes, fixed attendee list (ML engineer, firmware engineer, PM, legal/clinical advisor), with a documented "trust SLA" (a specific FP rate ceiling, e.g., >2 false alerts/user/week for two consecutive cycles, that obligates the ML team to ship a threshold adjustment within one sprint). Give this forum documented authority over alert threshold changes. [trade-off: feasibility view holds the cadence and SLA are sufficient; risk-oriented view requires explicit veto authority over release decisions]
- Map model output probabilities to a three-tier plain-English confidence display ("Low confidence / pattern worth watching," "Moderate confidence / consider logging," "High confidence / discuss with your doctor") with a first-time in-app explainer. Ship before the first low-confidence alert reaches users. [convergent]
- Run a cohort analysis segmented by alert volume in the first 30 days; track 90-day retention by cohort. The FP rate at which the churn curve bends is the operational ceiling. [unique: feasibility]
- Conduct usability testing of the 2 a.m. alert flow under simulated fatigue conditions (late-night sessions, participants near-sleep) before finalizing the interaction design. [unique: risk]
- Track consecutive alert dismissals per user; after three consecutive dismissals, automatically surface an alert sensitivity review prompt before the user reaches habitual disengagement. [convergent]

### Long-term (1+ years)

- Run a shadow clinical-calibration model from day one alongside the consumer model. Track divergence over time so the 510(k) threshold transition is a documented, predictable configuration change rather than a user-visible discontinuity. [unique: risk]
- Conduct a longitudinal study measuring baseline health anxiety in target users and track anxiety scores at 90 days of wear. If anxiety increases by a pre-committed threshold, revisit alert cadence design. [unique: risk]
- Design "device offline" states (low battery, firmware update, lost device) to include a brief reminder of manual awareness signals: "This device supplements but does not replace regular cardiac care. If you have symptoms, seek care regardless of what the device shows." This is a copy decision, not an engineering decision. [convergent]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- Liability exposure is determined by alert copy, not device labeling or EULA disclaimers.
- Sleep motion-artifact rejection is a P0 launch requirement, not a post-launch improvement.
- Silent disengagement requires proactive instrumentation (wear-time, dismissal latency) from day one. Standard retention metrics will not surface it.
- The critical first-response information in any alert flow must live on the device display, not require the companion app.
- Hiding model uncertainty compounds over time into retention risk and liability exposure.
- Alert fatigue is not a gradual linear decay. It often breaks at a single catastrophic false-positive event.

**Trade-offs** (the two lenses disagreed):
- Feasibility: uncertainty disclosure (confidence tiers plus a one-screen explainer) is one sprint of implementation and closes the liability gap. Risk-oriented: displaying "40% confident" creates a new liability vector. Users who ignore low-confidence alerts and have events may cite the device's own language. This requires attorney review of specific uncertainty language before any disclosure ships.
- Feasibility: a 30-minute bi-weekly review with a trust SLA is sufficient governance for a 12-person team. Risk-oriented: without explicit veto authority over release decisions, governance forums default to ceremony once product velocity pressure arrives.
- Feasibility: a "quiet mode" auto-escalation after three consecutive dismissals is the minimum viable alert-fatigue intervention. Risk-oriented: alert fatigue often breaks catastrophically at a single event rather than accumulating linearly, making threshold-based auto-escalation a lagging response.

**Blind-spot flags** (only one lens raised):
- The consumer FP calibration will be visible to users as a discontinuity when 510(k) specificity targets require tightening. Shadow-modeling two profiles from day one prevents a trust-eroding relaunch. [risk-oriented]
- Early-adopter beta retention data is drawn from the highest-anxiety, most motivated cohort, not representative of the mainstream 40+ adult. Building FP tolerance assumptions from power-user persistence will produce a device that fails at scale. [risk-oriented]
- Designing an optional "health contact" notification (partner receives a summary, not the raw alert, when a high-confidence event is logged) addresses a real social need that the device's 2 a.m. experience creates. Most wearable teams overlook this. [feasibility-oriented]
- Framing uncertainty disclosure as a competitive differentiator for Series A investors ("the only cardiac wearable that tells you what it doesn't know") turns an ethical requirement into an investor-legible retention and regulatory-risk argument. [feasibility-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- *Emotional/phenomenological:* Neither lens examined the subjective experience of chronic health monitoring for users with pre-existing cardiac anxiety. Specifically, whether sustained exposure to a device that surfaces ambiguous signals over months changes a user's relationship to their own body, independent of alert accuracy. The behavioral side-effects question touched this, but neither lens addressed the lived experience of becoming a monitored patient before receiving a diagnosis.
- *Equity/distributional:* Neither lens examined whether the alert calibration choices, governance practices, and uncertainty disclosure designs will perform consistently across subpopulations: users with darker skin tones (PPG accuracy differences), users with irregular sleep schedules (motion-artifact context), or users whose primary language is not English (comprehension of uncertainty copy). These are not edge cases for a consumer wellness device targeting adults 40+.
- *Political-economy/regulatory:* Neither lens examined the incentive structure that shapes what a future 510(k) submission will actually require. Specifically, whether the consumer-wellness launch will generate the kind of labeled ground-truth data that a De Novo or 510(k) submission needs, or whether the data pipeline is being designed for consumer retention without regard for what regulators will ask for in 18-24 months.

---

**Questions addressed**: 7
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

---

# Summary: Privacy Architecture and Data Pipeline

## Executive Summary

The on-device architecture establishes a genuine privacy-from-cloud guarantee, and both lenses agree it can be a differentiator with clinical partners, privacy-conscious users, and investors. But only if enforcement is demonstrable rather than asserted. That is the cluster's organizing tension: the privacy story is currently built on policy intent, not technical attestation or formal specification. The gap between the two is wide enough to matter before Series B.

Both lenses converged on three high-confidence points. First, the raw-data boundary has several likely leak vectors that have not been formally mitigated: crash dump handlers that naively serialize RAM, diagnostic telemetry commands added before the privacy architecture was finalized, and companion-app SDK crash reporters that may capture sensor state on exception. Second, the OTA model-update path is a two-way channel if not constrained to universally signed binaries. Per-device weight payloads can encode sensor history. Third, "aggregated summaries" is doing undefined work. The sync payload schema needs to be written down as concrete field names and retention windows before the team can evaluate re-identification risk or design the on-device evidence store.

Where the two lenses diverged most clearly is on adversary scope and how much technical isolation is needed. A feasibility-oriented view scopes the realistic adversary to a journalist with network traffic and a backend breach. It argues that hardware MPU regions plus a crash-dump scrubber plus a half-day STRIDE session on the sync endpoint covers the material risk surface at Series A. A risk-oriented counterpoint flags that this framing excludes more probable adversaries: a domestic partner with physical device access, the manufacturer's own data science team via an "anonymized" telemetry feed, and insurers who gain access through future B2B partnerships. These adversaries operate through pathways (coercive disclosure, informal data-sharing) the technical architecture does not address. On legal exposure, a feasibility-oriented view treats a legal memo and 90-day backend retention as the practical hedge. A risk-oriented view argues that the "consumer wellness" carve-out from HIPAA gives no protection against civil subpoenas and that the companion app data may already be functionally equivalent to PHI under scenarios the team has not modeled.

---

## Key Themes

### Raw-Data Boundary Is a Policy Claim, Not a Technical Guarantee

Both lenses agree this is the most urgent gap. Crash dump handlers, companion-app SDK telemetry, diagnostic APIs, and the OTA mechanism are all potential exfiltration channels that exist outside the "raw data never leaves the device" policy. The feasibility-oriented view prioritizes a crash-dump scrubber, MPU-based DMA isolation, and a companion-app SDK audit as concrete near-term mitigations. The risk-oriented view adds that these controls assume perfect firmware correctness. It presses for TrustZone-based cryptographic isolation as a stronger alternative worth prototyping before the architecture is locked.

### "Aggregated Summaries" Need a Concrete Schema Before the Sync Protocol Is Finalized

Both lenses converged on this point from different directions. The feasibility lens sees schema specification as a bounded 2–3 hour task that forces policy language into implementation decisions. The risk lens points out that a summary containing event timestamps with minute-level granularity and SpO2 nadirs may be a near-unique re-identification fingerprint for a motivated adversary. Both agree that derived features (event timestamp at minute resolution, classification confidence, duration, HRV summary statistics, SpO2 nadir) are the right evidence representation. They are clinically actionable, 510(k)-legible, and not reverse-engineerable to raw waveforms. Rounding alert timestamps to 15-minute resolution in the sync payload is a one-line serialization change that substantially reduces correlation attack surface with near-zero clinical utility cost.

### Legal Exposure Is Broader Than HIPAA Non-Applicability Implies

Both lenses agreed that legal counsel is required before launch. The feasibility-oriented view focuses on backend minimization (90-day default retention, device pseudonym only, no PII alongside the biometric payload) as the practical litigation hedge. The risk-oriented view flags a harder problem: the consumer wellness carve-out from HIPAA does not protect companion app data in civil litigation, employment disputes, or insurance underwriting. A single alert ("possible atrial fibrillation detected, 23:47, duration 8 minutes") is clinically specific enough that a court would treat it as medical information regardless of the product's privacy policy. Designing the backend as if summaries are PHI from launch carries low marginal cost. Retrofitting after the first enterprise partnership is signed is structurally expensive.

### Attestability Converts the Architecture from a Claim into an Asset

Both lenses agreed that the on-device architecture becomes a genuine differentiator with clinical partners, privacy-conscious users in the 40+ demographic, and Series B investors only when enforcement is verifiable. A feasibility-oriented view argues this is achievable with a one-page data flow diagram, a "what we hold" screen in the companion app showing the exact last sync payload, and a data liability summary for the investor data room. A risk-oriented counterpoint notes that clinical partner procurement conversations will ask "how do you know?" A TrustZone attestation report and independent audit is what closes that conversation, not an engineering assertion. The gap between the two positions is primarily timing and investment level.

### The Current Architecture Protects Data from Third Parties, Not from the Device Maker

Both lenses converged on this as the central architectural blind spot. The user receives a binary alert but cannot inspect the feature vector, confidence interval, or model evidence that drove it. A feasibility-oriented view argues for an export function (JSON of on-device event log) and a "why this triggered" summary alongside each alert. Both are doable in a single sprint and protective against false-positive liability. A risk-oriented counterpoint extends the analysis: a 510(k) submission requires demonstrating algorithm performance on labeled data. A model the user cannot audit is harder to explain to FDA reviewers. The architecture's opacity is already a regulatory liability, not just a UX limitation.

---

## Recommended Actions

### Immediate (0-3 months)

- Configure the NPU's DMA controller to make sensor ring buffers write-only from the application processor, and build a crash-dump scrubber that zeroes sensor ring-buffer addresses before any data leaves flash — targeting the most likely exfiltration paths before beta. [convergent]
- Draft the sync payload schema with concrete field names, types, timestamp resolution, and retention windows; run it through a re-identification checklist; round alert timestamps to 15-minute granularity by default in the serialization layer. [convergent]
- Audit every third-party SDK in the companion app (crash reporters, analytics) for what it captures on exception; eliminate or scope-limit any that touch sensor-adjacent state. [convergent]
- Retain a health-data attorney for a written opinion on whether the specific sync payload constitutes PHI and what civil subpoena exposure looks like before the first enterprise partnership conversation. [convergent]
- Define the on-device anomaly evidence representation now — event timestamp (minute resolution), classification confidence, duration, HRV summary statistics, SpO2 nadir — with the 510(k) evidentiary standard as a constraint, even if that data is only exportable under explicit user action. [convergent]

### Near-term (3-12 months)

- Build a "what we hold" screen into the companion app showing the user the exact last sync payload, and implement an optional export function producing a JSON file of the on-device event log (timestamps, confidence scores, sensor states) the user can share with their cardiologist. [convergent]
- Prototype TrustZone-based cryptographic isolation for the inference engine and evaluate the power overhead against the architecture's current MPU-region approach. Document which privacy guarantees each achieves and which failure modes each survives. [trade-off: a feasibility-oriented case that MPU regions plus scrubbers are sufficient for consumer wellness stage; a risk-oriented counterpoint that TrustZone provides cryptographic guarantees that survive firmware bugs and should be evaluated before the architecture is locked]
- Write down the adversary model as a named document that includes domestic partners with physical device access, the manufacturer's own telemetry pipeline, and coercive employer/insurer disclosure pathways — not only external hackers — and circulate it to legal and product before any B2B data partnership is signed. [unique: risk]
- Prepare a one-page data liability summary for the investor data room: what the company holds, retention policy, legal exposure scenarios, and how the architecture constrains each. [unique: feasibility]

### Long-term (1+ years)

- Design the model's explainability layer in parallel with the FDA regulatory strategy: surface "why this alert was triggered" summaries alongside binary alerts, and define the on-device evidence store against 510(k) evidentiary requirements before clinical claims are pursued. [convergent]
- Define a written policy on what data the company will never monetize and include it in Series B investor materials; establish alignment before any data partnership opportunity surfaces a board-level conflict. [unique: risk]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- The raw-data boundary is currently a policy claim, not a technical guarantee — crash dumps, diagnostic APIs, companion-app SDK telemetry, and OTA model updates are all potential exfiltration channels requiring explicit mitigations.
- "Aggregated summaries" must be defined as a concrete sync payload schema before the re-identification risk can be evaluated or the evidence store designed correctly.
- Legal counsel is required before launch: the consumer wellness carve-out from HIPAA does not protect companion app data from civil subpoenas, and a single specific alert is clinically identifiable regardless of privacy policy framing.
- The on-device architecture becomes a credible differentiator only when enforcement is verifiable (attestation, documentation, user-visible transparency tools), not when it is asserted.

**Trade-offs** (the two lenses disagreed):
- A feasibility-oriented case that MPU-region DMA isolation plus a crash-dump scrubber covers the material raw-data boundary risk at Series A. A risk-oriented counterpoint: these controls assume firmware correctness. TrustZone cryptographic isolation should be prototyped before the architecture is locked. The cost of retrofitting isolation after the security story is established is much higher.
- A feasibility-oriented case that scoping the adversary model to a journalist with network traffic and a backend breach is proportionate to a 12-person startup's threat surface. A risk-oriented counterpoint: domestic partners with physical device access, coercive employer/insurer disclosure, and the manufacturer's own telemetry pipeline are more probable adversaries than cloud hackers. They operate through pathways the current architecture does not address.
- A feasibility-oriented case that 90-day backend retention with device pseudonyms is the practical legal hedge for subpoena exposure. A risk-oriented counterpoint: aggregated summaries with specific alert timestamps may already be functionally equivalent to PHI regardless of retention window. Architecting the backend as PHI-compliant from launch is lower marginal cost than retrofitting after the first enterprise partnership.

**Blind-spot flags** (only one lens raised):
- The OTA model-update path can encode sensor history in per-device weight payloads if not constrained to universally signed binaries — the weights are a compressed encoding of personal history, and sending them anywhere re-creates the privacy exposure the on-device architecture was designed to eliminate. [risk-oriented]
- User-controlled model encryption keys (PIN or biometric-derived, stored in TrustZone) are the most technically tractable path toward "manufacturer cannot interpret inference state" — estimated 3–4 weeks of firmware engineering and does not require rearchitecting the NPU. [feasibility-oriented]
- The companion app is where any radical data-sovereignty premise breaks down first: iOS/Android crash reporters, backend sync, and push notification infrastructure all involve external entities by default; mapping which flows are genuinely necessary vs. incidental is a bounded sprint. [feasibility-oriented]
- The current architecture's alert opacity — binary alert with no confidence interval or feature evidence — is a regulatory liability for 510(k) as well as a false-positive liability: FDA reviewers require algorithm performance evidence that an opaque model makes harder to produce. [risk-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- *Emotional/phenomenological:* Neither lens addressed what it is like to receive a cardiac alert with no supporting context. A binary "possible atrial fibrillation" notification at 11:47 PM has a psychological weight that is distinct from the clinical accuracy question. The design of the alert experience (uncertainty framing, recommended next steps, false-alarm acknowledgment flow) is a user-wellbeing question neither lens naturally surfaces. It has downstream effects on both liability and clinical partnership positioning.
- *Equity/access/distributional:* Neither lens addressed who disproportionately bears the cost of false positives or limited clinical actionability. A user without a cardiologist on call who receives an ambiguous alert faces a different risk calculus than a user with immediate clinical access. The 40+ demographic with family cardiac history is not uniformly resourced. Alert threshold design, the decision to show or suppress confidence intervals, and the absence of export functionality are all distributional choices whose equity implications neither lens raised.

---

**Questions addressed**: 6
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

---

# Summary: Regulatory Pathway from Consumer Wellness to Clinical

## Executive Summary

The core tension in this cluster is whether the consumer launch is being designed as a structured foundation for the eventual 510(k), or as a fast-path product that quietly forecloses it. A feasibility-oriented view holds that the consumer launch is achievable now with targeted additions — a model registry, a middleware audit log, a tiered data retention policy, a pre-submission meeting on the calendar for month nine — that bridge to clinical status without rebuilding the product. A risk-oriented counterpoint flags that these additions are only adequate if the team treats them as engineering standards from sprint one, not as checklists to complete before a regulatory event: the labeling language, the OTA update mechanism, and the data retention schema are all decisions that accumulate into either a submission asset or a submission liability, and the window to make them correctly is the window before the first consumer unit ships.

Both lenses converge on several high-stakes points. Algorithm version control is non-negotiable and cheap to build now, expensive to reconstruct later. A single tiered data pipeline (not separate consumer and clinical pipelines) is the only architecture a 12-person team can sustain. The 18-month Series A runway does not accommodate both consumer launch costs and 510(k) submission preparation without explicit budget allocation for regulatory as a discrete workstream. These are high-confidence signals, not trade-offs.

The most substantive divergence concerns posture rather than any single technical decision. A risk-oriented view argues that HIPAA, consent obligations, and model transparency attach to the product the moment health-consequential outputs reach users. Treating them as future-phase concerns creates enforcement exposure that "we were a wellness device" will not resolve. A feasibility-oriented view accepts this framing but emphasizes that the remediation is incremental, not a rewrite. Six to eight engineer-weeks of backend work closes most of the HIPAA gap. A one-day architecture review with a regulatory consultant closes the data schema gap. A forced in-app re-consent flow takes three to four days of mobile engineering. The disagreement is about whether these require organizational urgency now or can be scheduled as near-term milestones. The risk-oriented lens says urgency; the feasibility lens says schedule — and the practical answer is probably both, differentiated by which decisions are genuinely irreversible at launch.

---

## Key Themes

### Algorithm Version Control as the Irreversible Decision

Both lenses identified model versioning as the single highest-stakes architectural choice because it is the hardest to retrofit. A risk-oriented view emphasizes that consumer devices with undocumented model provenance cannot be the predicate for a 510(k) submission. The consumer and clinical devices would effectively be running different algorithms, breaking the evidentiary chain. A feasibility-oriented view puts the cost of doing it correctly at two engineer-weeks now versus six to twelve months of forensic reconstruction later. Both perspectives strongly agree: implement a model registry (version hash, training data snapshot, per-version benchmark results) before the first firmware ships. `[convergent]`

### HIPAA as Architecture, Not Compliance Switch

Both lenses agree that HIPAA is not a status that activates when a hospital calls. It attaches to data flows at the moment of a business associate relationship, which may arrive earlier than anticipated. A feasibility-oriented view offers a concrete remediation path. The existing commitment to keep raw biometric data on-device covers 80% of HIPAA-grade design. The remaining gap is access-controlled audit logging on the companion app backend, implementable as a middleware layer in 6 to 8 engineer-weeks. A risk-oriented counterpoint notes that processed alerts and aggregated summaries that leave the device are still PHI if they can identify a health condition. Several state health-data privacy laws activate below the HIPAA threshold, meaning enforcement exposure begins at consumer launch in California, Washington, and New York regardless of clinical partnership status. `[convergent on urgency; divergent on scope of remediation]`

### Consent Architecture as Business Continuity, Not Legal Formality

Both lenses treat a terms-of-service click-through as insufficient when the product's regulatory regime shifts. The feasibility-oriented view reframes re-consent as a business opportunity. Users who affirmatively re-consent to clinical data use are the highest-engagement cohort and the best recruitment funnel for the IRB-approved studies the 510(k) will require. A risk-oriented view frames the stakes as business continuity. If re-consent triggers a 40% user decline, the clinical evidence cohort shrinks and the submission timeline slips. Both converge on building a consent versioning system (per-user consent records with version, date, and data-use scope) as a founding architectural element rather than a later-phase addition. `[convergent]`

### The Evidence Trail Is Being Generated Whether or Not the Team Is Managing It

A risk-oriented view is emphatic. Every false positive, missed event, and threshold change is a discoverable fact that will appear in any 510(k) submission or litigation. The team is its own predicate device. A feasibility-oriented view translates this into a specific schema decision. Define a "reviewable alert event" (model version, signal quality score, alert type, user-reported outcome) before the first production log line is written. Frame the consumer deployment to investors as a structured real-world evidence study with prospective analysis endpoints. The divergence is in framing. The risk lens treats the undocumented evidence trail as an active liability. The feasibility lens treats the managed evidence trail as a Series B asset. Both recommend the same action. `[convergent on action; divergent on framing]`

### Labeling as a Regulatory Artifact from Day One

Both lenses flag that UI copy and alert language constitute a discoverable public record the FDA will examine. A feasibility-oriented view recommends building a labeling matrix now with two variants (consumer and cleared-device) so the pivot is a configuration swap rather than a brand redesign. The alert presentation layer should be a configurable template system so clinical-grade language can be deployed via software update. A risk-oriented view adds that if consumer marketing language says "detect arrhythmias," clearance is not optional. It is already required. Regulatory counsel should review every consumer-facing claim before launch. `[convergent]`

---

## Recommended Actions

### Immediate (0–3 months)

- Implement a model registry on device before first firmware ship. Use a JSON manifest recording model hash, training data snapshot identifier, deployment date, and per-version benchmark results (sensitivity/specificity against held-out test set). Estimated cost: 2 engineer-weeks. `[convergent]`
- Add a local performance log to the on-device schema capturing model version, signal quality score, confidence score, alert type, and timestamp for every alert event. This is the schema decision that determines whether two years of consumer deployment becomes a clinical evidence asset or an unanalyzable log file. `[convergent]`
- Build the companion app backend with a middleware audit-logging layer capturing every health-data API read and write with user identity and timestamp. Estimated cost: 6 to 8 engineer-weeks. `[convergent]`
- Draft two label variants (consumer-wellness and cleared-device) for all companion app strings and conduct a regulatory counsel review of every consumer-facing claim before public launch, specifically any language implying detection of named clinical conditions. `[convergent]`
- Define a tiered data retention policy in firmware: raw sensor data overwritten after 24 hours; processed alert records (with metadata) retained locally for 30 days and exportable on demand. Build a configurable retention mode (off by default for consumer, activated for clinical pilots) as a firmware feature from launch. `[convergent]`

### Near-term (3–12 months)

- Retain a regulatory consultant for 20 hours per month starting now to own a living regulatory strategy document and attend monthly architecture reviews. Target a Q-submission (pre-submission) meeting with FDA at months 9 to 12, presenting real-world performance data. `[convergent]`
- Implement a consent versioning system with per-user consent records storing version accepted, date, and data-use scope. Design the re-consent flow (one screen, plain-language, explicit opt-in for expanded data use, graceful decline path preserving consumer-wellness features) before the first consumer app release. Add a checkbox for willingness to participate in IRB-approved studies. Estimated cost: 3 to 4 days of mobile engineering. `[convergent]`
- Convene a one-day architecture review with the regulatory consultant and ML team to define a "clinically queryable alert schema" and a software lifecycle management policy. Include guidance on what constitutes a "significant change" requiring a new 510(k) submission. Reference FDA's 2019 guidance on software changes to cleared devices. `[unique: feasibility]`
- Define the on-device model update architecture around two explicit tracks: a "performance-identical" path (bug fixes, quantization improvements with no sensitivity/specificity change) and a "significant change" path triggering re-submission assessment. This decision shapes firmware signing, CI/CD pipeline, and regulatory roadmap simultaneously. `[convergent]`

### Long-term (1+ years)

- Include a Predetermined Change Control Plan (PCCP) in the pre-submission meeting agenda to negotiate advance FDA agreement on the types of post-clearance algorithm changes that do not require a new 510(k). This converts what appears to be a locked-software constraint into a managed change program. `[unique: feasibility]`
- Scope 510(k) submission preparation as a discrete workstream with its own budget and include a regulatory milestone (pre-submission meeting completion or IDE feasibility study initiation) in Series B terms — the 18-month runway does not accommodate simultaneous consumer launch, Series B prep, and submission preparation without a bridge financing tranche explicitly allocated for regulatory. `[convergent]`
- Design a user enrollment questionnaire for the consumer app (optional, incentivized) capturing demographic and health history variables needed to characterize the clinical validation population — age distribution, comorbidities, relevant diagnoses. This 1-week mobile engineering task determines whether the consumer deployment cohort is usable as the basis for a 510(k) clinical performance claim. `[unique: feasibility]`

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- Algorithm version control must be implemented before first firmware ship — reconstruction after the fact takes 6–12 months.
- A single tiered data pipeline (not two separate consumer and clinical pipelines) is the only sustainable architecture for a 12-person team.
- The 18-month runway cannot fund consumer launch, Series B prep, and 510(k) submission preparation without explicit budget allocation for regulatory as a discrete workstream.
- HIPAA exposure begins at the first business associate relationship, not at clinical launch — the BAA may arrive earlier than anticipated.
- Alert event logging schema is a one-time decision: it cannot be retrofitted from an unstructured log.

**Trade-offs** (the two lenses disagreed):
- A feasibility case that HIPAA remediation is incremental and schedulable (6 to 8 engineer-weeks of backend work closes most of the gap). A risk-oriented counterpoint that state health-data privacy laws in California, Washington, and New York activate below the HIPAA threshold at consumer launch, making "schedule it for near-term" insufficient for those markets.
- A feasibility case that the consumer launch is best framed to investors as a structured real-world evidence study, with regulatory exposure reframed as a Series B asset. A risk-oriented counterpoint that this reframe only holds if the prospective analysis plan, defined performance endpoints, and data governance policy exist before launch. Without them, the framing is marketing, not substance.
- A feasibility case for scheduling the FDA pre-submission meeting at month 9–12 when real-world data is available; a risk-oriented counterpoint that waiting until month 9 delays identification of which architectural decisions must be locked now and may coincide with the moment runway is exhausted.

**Blind-spot flags** (only one lens raised):
- State attorney general enforcement exposure (California, Washington, New York health data privacy laws activating at consumer launch, below HIPAA threshold) — risk-oriented. The feasibility lens did not address sub-HIPAA state-level enforcement.
- FDA's Predetermined Change Control Plan (PCCP) pathway as a mechanism to pre-negotiate post-clearance model update authority — feasibility-oriented. The risk lens did not surface this as a mitigation for the "locked software baseline" constraint.
- The FTC complaint risk from treating ToS click-through as consent re-establishment — risk-oriented. The feasibility lens focused on IRB and HIPAA implications but did not name FTC enforcement specifically.

**Neither-lens gaps** (what a different angle would have surfaced):
- **Equity/access/distributional:** Neither lens examined who the consumer-to-clinical transition leaves out. The target user (health-conscious adults 40 and older with family history of cardiac events) is already a relatively high-access population. The regulatory pathway analysis ignores that FDA clearance enabling insurer reimbursement and clinician prescribing may restructure access. This could concentrate the clinical-grade product in insured, physician-connected populations while the consumer device remains the only option for uninsured or under-resourced users. This has implications for how the clinical evidence cohort is assembled and what health equity obligations the cleared device carries.
- **Emotional/phenomenological/lived-experience:** Neither lens addressed what the consumer-to-clinical transition feels like for the user. A person who bought a wellness wearable and receives an alert framed as "potential arrhythmia detected. Consult your physician" has a qualitatively different experience than someone who enrolled in a clinical monitoring program. The consent re-establishment analysis treated this as a legal and architectural problem. Neither lens examined the experiential discontinuity and what that means for user trust, alert response behavior, or health anxiety. All of these affect the real-world performance data the 510(k) submission will rely on.

---

**Questions addressed**: 7
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

---

# Summary: Model Updates, Drift, and Continuous Learning

## Executive Summary

The cluster's organizing tension is not simply "how do we update models on a privacy-constrained device" but a compounding one: without raw data leaving the device, the team lacks the feedback loops that make any update cycle (firmware-bundled or federated) verifiably improving. A feasibility-oriented view argues that quarterly OTA firmware updates are the only realistic choice for an 18-month runway with a 3-person ML team, and that on-device performance proxies (alert-rate distributions, confidence histograms, inference latency) substitute for raw ground truth. A risk-oriented counterpoint accepts those proxies as necessary but insists they are structurally insufficient. Alert frequency is not a proxy for accuracy, and shipping updates the team cannot validate against real-world outcomes creates an invisible liability, not a rigorous process.

Both lenses converge on two high-confidence points: (1) the firmware architecture must treat model versioning and rollback as first-class concerns from day one — specifically, two model slots with a 72-hour watchdog and automatic rollback — and (2) the team should begin building a voluntary, opt-in labeled-data pathway (opt-in research cohort with cardiologist partners) now rather than retroactively. These are not future investments; they are launch prerequisites.

Where the lenses diverge most sharply is on the framing of on-device longitudinal adaptation. A feasibility-oriented view recommends a two-model design (a lightweight anomaly detector running alongside the primary classifier to prompt user-initiated recalibration) as a tractable, privacy-safe way to handle individual drift. A risk-oriented counterpoint argues that any on-device adaptation must be constrained to threshold/prior recalibration, never weight fine-tuning. An on-device model that trains on unlabeled data can silently overfit to artifacts (e.g., compression noise mistaken for a new baseline), and only server-validated firmware packages should update weights. The practical resolution is to implement the two-model anomaly-detection design for recalibration triggers while enforcing a hard constraint that weight updates flow exclusively through validated firmware. Both lenses agree this constraint must be architectural, not a policy someone remembers under schedule pressure.

---

## Key Themes

### Validation Without Ground Truth

Both lenses identify the absence of a post-deployment feedback loop as the central structural weakness. Aggregated performance proxies (alert rates, confidence distributions) are a necessary starting point, and both lenses endorse them. A risk-oriented view flags that proxies can miss directional regressions in subpopulations (e.g., users with low-amplitude PPG signals from darker skin tones or lower perfusion states). The opt-in research cohort with labeled arrhythmia events is the only path to actual ground truth without compromising the core privacy architecture. [convergent]

### Individual Drift vs. Population Drift as Separate Problems

Both lenses treat longitudinal drift detection as two distinct problems requiring different solutions. Individual drift (a single user's physiology changing over time) is tractable on-device through rolling-baseline tracking and a two-model anomaly-detection architecture. Population-level drift (fleet-wide distribution shift across the 40+ cohort) cannot be monitored with the current architecture. Only alert rates segmented by firmware version and anonymized cohort are available as a signal. A risk-oriented view adds that this gap creates an unquantifiable liability if left unaddressed: 18 months post-launch, the team may have no way to know how many users experienced significant model degradation. [convergent on diagnosis; divergent on urgency of remediation]

### Firmware Update Rigor as a Regulatory Asset

Both lenses agree that the firmware update pipeline should be designed with future 510(k) credibility in mind, even before FDA review is sought. A feasibility-oriented view recommends a brief technical summary (training dataset composition, sensitivity/specificity on holdout, what changed) published alongside each major release, a low-cost habit with high regulatory payoff. A risk-oriented view adds that the automated validation gate must be a hard CI block, not a human judgment call subject to Series B schedule pressure. Both treat the audit trail as a first-class artifact, not an afterthought. [convergent]

### The Day-One Model Problem

A risk-oriented view uniquely flags that the "data starvation" framing focuses on update velocity while missing a more immediate risk: the shipped model may be pre-adapted to the wrong population (clinical ECG cohorts vs. wellness-motivated consumers). No update cadence fixes a systematic day-one mismatch. The mitigation is to recruit 200–400 target users to wear prototype devices under a research protocol before launch, which is upstream of any update architecture decision. [unique: risk-oriented]

### User Legibility of Model Improvements

Both lenses agree that a model update is meaningless to users unless the companion app surfaces a concrete, plain-language change note tied to observable behaviors. A feasibility-oriented view emphasizes invisibility with one meaningful feedback moment ("Your device received a health monitoring update — it now better recognizes a pattern associated with atrial fibrillation affecting about 12% of people in your age group"). A risk-oriented view adds that before framing any update as an "improvement" in user-facing communication, a minimum evidence bar from opt-in feedback data confirming improvement in the deployed population (not just the validation set) must be met. [convergent on principle; divergent on evidentiary bar for calling something an improvement]

---

## Recommended Actions

### Immediate (0-3 months)

- Instrument firmware to log anonymized performance proxies from day one: per-device alert rate, confidence score distribution, and inference latency, synced to the backend. Do not ship devices without this telemetry. [convergent]
- Build two model slots (active and staged), a 72-hour post-update watchdog tracking alert-rate deviation, and automatic rollback into the firmware architecture before first device ships. Define rollback trigger thresholds explicitly. [convergent]
- Run a dataset staleness simulation: train on the oldest 80% of your training data, test on the most recent 20%, and measure accuracy degradation. This directly sets the required update cadence and shows how much MLOps infrastructure is actually needed before launch. [unique: feasibility-oriented]
- Recruit 200–400 target users (40+, cardiac-risk history) to wear prototype devices under a research consent protocol before launch, so the shipped model is pre-adapted to the actual deployment population. [unique: risk-oriented]

### Near-term (3-12 months)

- Establish a quarterly OTA firmware update cadence with a hard CI validation gate: a minimum sensitivity/specificity threshold on the holdout set that must pass before a firmware build is tagged for release. This must be an automated block, not a human judgment call. [convergent]
- Implement the two-model drift detection architecture: a lightweight anomaly detector alongside the primary arrhythmia classifier that triggers user-initiated 5-minute calibration sessions when input distribution shifts significantly from training distribution. Constrain on-device adaptation to threshold and prior recalibration only (never weight fine-tuning from on-device unlabeled data). [trade-off: feasibility-oriented recommends the two-model design as tractable; risk-oriented endorses it but insists the weight-update constraint is architectural, not policy]
- Partner with 2–3 cardiologists to establish a voluntary opt-in research cohort targeting 500+ labeled arrhythmia events per year as ground-truth retraining signal. Design the opt-in data-sharing consent flow so it coexists with privacy-by-default architecture. [convergent]
- Design a tiered privacy consent model (consumer: summaries only; research participant: aggregated sensor statistics; clinical partner: encrypted raw export) and build the server-side infrastructure before a hospital partnership demands it. [unique: risk-oriented]

### Long-term (1+ years)

### Long-term (1+ years)

- Build server-side fleet health monitoring: alert rates segmented by firmware version and anonymized demographic cohort (e.g., age band 60–70), surfaced in a dashboard before 10,000 devices are deployed. Determine now which aggregate, de-identified drift signals are acceptable to sync, e.g., per-device confidence distribution histograms. [convergent]
- Publish a two-page technical summary alongside each major model release (training dataset size and composition, sensitivity/specificity on holdout set, delta from prior version). Build this documentation habit now; it directly supports a future 510(k) application. [convergent]
- Treat federated learning as a Phase 2 investment: document the architecture decision now, but do not implement until the opt-in research cohort and firmware update pipeline are stable and the ML team has capacity. [unique: feasibility-oriented]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- Model versioning, rollback, and a post-update watchdog must be first-class firmware architecture from day one, not retrofitted after first deployment.
- On-device performance proxies (alert rates, confidence distributions) are necessary but insufficient for post-deployment validation. An opt-in labeled-data pathway with clinician partners is required to close the ground-truth gap.
- The firmware update audit trail (version stamps, performance delta documentation, immutable server-side registry) should be built as if FDA will ask for it, regardless of current regulatory status.
- User-facing update communication requires plain-language companion-app changelogs tied to observable behaviors. Version numbers and technical details should not surface.

**Trade-offs** (the two lenses disagreed):
- A feasibility-oriented case for the two-model anomaly-detection design as a tractable, privacy-safe mechanism for individual drift recalibration; a risk-oriented counterpoint that on-device adaptation must be strictly constrained to threshold/prior updates (not weight fine-tuning) because unlabeled on-device training can silently overfit to artifacts, and only server-validated firmware packages should update weights.
- A feasibility-oriented case that quarterly firmware updates are sufficient for the current runway and that performance proxies provide adequate fleet health visibility; a risk-oriented counterpoint that proxies structurally cannot detect subpopulation-level regressions (e.g., low-amplitude PPG in certain skin tones or perfusion states). Calling an update an "improvement" in user-facing communication requires a minimum opt-in feedback evidence bar, not just holdout-set performance.

**Blind-spot flags** (only one lens raised):
- The day-one model mismatch risk: if the initial model was trained on clinical ECG cohorts but deploys to wellness-motivated consumers, no update cadence fixes the systematic distribution gap. Pre-launch prototype data collection from 200–400 target users is required. [unique: risk-oriented]
- Quantify update cadence requirements empirically before committing to MLOps infrastructure: run the dataset staleness simulation (train on oldest 80%, test on newest 20%) to derive the actual required update frequency. [unique: feasibility-oriented]
- Federated learning's assumption of fleet homogeneity may be invalid for a 40+ cardiac-risk population with extreme physiological diversity (post-ablation patients vs. healthy 42-year-olds). Federated averaging may degrade individual-level performance in subgroups. Prototype gradient aggregation on a synthetic diverse population before investing in federated infrastructure. [unique: risk-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- **Equity/distributional**: Both lenses briefly mention low-amplitude PPG as a risk, but neither systematically addresses the distributional implication. Model updates validated on a majority-skin-tone research cohort may silently degrade performance for users with darker skin tones and lower perfusion states. A health equity lens would flag that the opt-in research cohort composition must be specified to include adequate representation, not just "200–400 target users."
- **Political-economy/regulatory/institutional**: Neither lens addresses who bears liability if a firmware update that the team characterizes as an "improvement" produces a missed arrhythmia event in a user who relied on the improvement claim. The legal and insurance architecture for over-the-air health model updates is distinct from static device certification. The FDA 510(k) pathway does not yet have settled guidance on continuous software updates to ML-based medical devices.

---

**Questions addressed**: 3
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

---

# Summary: Equity, Access, and the People Being Served

## Executive Summary

The device's most consequential equity problem is architectural, not cosmetic: the companion app is the primary surface for processed alerts, which means the wearable's core health-safety value is gated behind a second device purchase, sufficient digital literacy, and reliable connectivity. For the 40+ adult on a fixed income with a basic phone or shared family tablet, the device detects arrhythmias they cannot act on. Both lenses agree this is the cluster's central structural gap, but they frame the stakes differently. A risk-oriented view treats this as an ethical failure and a liability risk: generating a health-information moment without the infrastructure to respond is a design decision with real consequences for the uninsured, the rural, and the newly health-anxious. A feasibility-oriented view treats the same gap as a tractable product problem: decouple alerts from the smartphone entirely by adding a small OLED display or haptic pattern library to the wearable itself, and add a Progressive Web App interface as a $0-upfront fallback. Both are accomplishable within the current funding cycle.

That same inversion runs through the post-alert experience. Both lenses converge on the finding that "consult a physician" is not an action for a large portion of the target demographic: the user with no insurance, no primary care physician, and a cardiology waitlist measured in months receives an alert that triggers a cost calculation, not a care pathway. The feasibility-oriented path includes telehealth integration, a community health center locator, and a structured "what to do next" card in the companion app (mobile engineering tasks, not regulatory ones). The risk-oriented counterpoint is that solving the pathway problem without solving the income-access problem still leaves the highest-risk users paying for detection without access to response.

Where both lenses converge most strongly is on user participation in design. Alert thresholds, notification language, and post-alert flows are being set by engineers, yet none of those decisions are purely technical. A co-design sprint with eight to ten actual 40+ adults (specifically including people with lived experience of cardiac events, not just "health-conscious" early adopters) would cost $5,000–$8,000 and is the most leveraged single action this cluster surfaces. Both lenses also converge on false positive rate as the primary trust variable. A user who receives one false positive in month one and then silence will distrust the device, regardless of underlying detection accuracy.

---

## Key Themes

### The Companion App as an Equity Chokepoint

Both lenses agree: routing life-safety alerts exclusively through a smartphone companion app is a structural exclusion mechanism. Older adults on basic phones, users sharing household devices, and anyone with an older or incompatible Android OS are paying for cardiac monitoring they cannot fully access. The feasibility-oriented path includes standalone haptic/OLED alert mode plus a Progressive Web App for alert review. This addresses the problem without a full product pivot and should be scoped as a 1.0 requirement, not a 2.0 roadmap item.

### Post-Alert Dead End for the Structurally Underserved

An alert that fires with no navigable next step is worse than no alert for users who lack insurance, a PCP, or geographic access to cardiology. Both lenses flag this. The risk-oriented view emphasizes the ethical and liability dimensions of generating anxiety without utility. The feasibility-oriented view proposes concrete infrastructure: a telehealth partner integration, a community health center locator, a structured export for any provider. False negative risk (the user who receives no alert and concludes they are fine) is raised uniquely by the risk-oriented lens and is a message-design problem that needs to be solved before launch.

### Alert Threshold and Notification Language as Disguised Clinical Decisions

Both lenses converge on the finding that the ML team's sensitivity/specificity tradeoffs encode clinical judgments that engineers are not positioned to make alone. Notification language written by engineers reflects engineering mental models, not the emotional state of a frightened 60-year-old receiving an alert at 2 a.m. Both lenses endorse user testing of notification copy (not just functionality) as a first-class pre-beta deliverable and recommend recruiting specifically for people with lived cardiac event experience.

### Trust is Built by Reliability, Not Peak Accuracy

Both lenses agree: the cardiologist-conversation outcome at year three depends not on detection accuracy but on mundane reliability behaviors. Consistent battery life, alert language that makes sense on first read, and a false positive rate low enough that users do not learn to ignore the device all matter. A feasibility-oriented view adds that the trust outcome is also a market signal (users who bring device logs to cardiology appointments demonstrate a 510(k) use case and create clinical partnership leverage). The risk-oriented view adds that earned trust requires a feedback loop. Without an outcome-reporting mechanism, the device cannot learn from false positives and trust cannot compound.

### Whose Voice Has Shaped the Design

Both lenses treat this as a concrete deficiency with a concrete fix. Advisory board members and focus groups are not substitutes for iterative participation by actual 40+ users (including people recently anxious after a family cardiac event, people managing known arrhythmias, and people who have never interacted with a cardiologist). Both lenses endorse a standing compensated advisory panel over ad-hoc usability testing and identify tracking participation data (who was in the room at each architecture decision, and what changed) as a deliverable, not an afterthought.

---

## Recommended Actions

### Immediate (0–3 months)

- Add standalone alert capability to the wearable firmware spec: define a haptic pattern library and/or small OLED display that surfaces "anomaly detected: see a doctor" without requiring a companion app. This makes on-device detection the primary alert surface (the smartphone becomes enrichment). [convergent]
- Replace "microphone access for breathing analysis" in the consent flow with a specific one-screen explanation: "The microphone listens for breathing pauses during sleep and processes audio on-device. No recordings are stored or transmitted." Zero engineering cost meaningfully changes the trust calculus. [convergent]
- Test both versions of the FDA disclaimer in a five-person cognitive walkthrough: the current legal sentence versus "This alert means the device detected a pattern worth discussing with a doctor, not that you have a confirmed condition." Ship the version users can act on without panicking. [convergent]
- Add a two-question onboarding branch ("What brought you here today?" with options including "recent health scare," "managing an ongoing condition," "general wellness") to route users to appropriately calibrated language. One to two days of mobile engineering time. [unique: feasibility]

### Near-term (3–12 months)

- Run a structured co-design sprint with 8–10 adults from the target demographic before the next hardware revision. Budget $5,000–$8,000 and recruit explicitly for lived cardiac event experience. Log which architecture decisions (alert thresholds, notification language, sensor selection) were present and what changed. [convergent]
- Build the post-alert resource layer. When an alert fires, surface (1) a "find a cardiologist near me" link using stored ZIP code, (2) one-tap anomaly log export, (3) a "next steps without a doctor" resource including community health center locator. This is a mobile engineering task, not a regulatory one. [convergent]
- Partner with one telehealth provider before launch on a revenue-share basis and add a "talk to a doctor about this alert" button that routes to the partner. Converts post-alert dead end into a navigable pathway at $0 upfront cost. [unique: feasibility]
- Instrument alert-to-action conversion from day one. What percentage of users who receive an alert take a documented next step within 72 hours? If below 40%, the post-alert experience is broken regardless of detection accuracy. [unique: feasibility]
- Add a lightweight "what happened after this alert" prompt in the companion app as an opt-in outcome-reporting mechanism. Simultaneously builds user trust (device appears to learn) and feeds model improvement signals. [unique: risk]

### Long-term (1+ years)

- Run a 30-person sample study across two income quintiles measuring detection rates and setup completion by income tier before Series B. Use results to design subsidized employer wellness plan and FSA/HSA-eligible pricing tiers. [trade-off: a feasibility case for tiered pricing as the most tractable access mechanism within startup constraints; a risk-oriented counterpoint that any paywall, however graduated, excludes the users with the highest undetected risk and least clinical access. Resolve through the Series B outcome data, not by assumption now]
- Design companion app exports for clinical review (structured anomaly logs with language that maps onto clinical categories) and track "share with provider" usage before filing the 510(k). Clinical-legible exports are both a regulatory asset and the prerequisite for the cardiologist-conversation trust outcome. [convergent]
- Establish a standing 15-person compensated advisory panel (one session per quarter at $150/session) for ongoing design participation. Prioritize participants with lived cardiac event experience and participants without smartphones or with basic-phone setups. [convergent]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- The companion-app-as-primary-alert-surface is a structural exclusion mechanism for the 40+ demographic; standalone alert capability should be scoped as a 1.0 requirement.
- Post-alert pathway infrastructure (telehealth link, community health locator, export-for-provider) is a mobile engineering task achievable in the current funding cycle and is the most urgent user-journey gap.
- Alert thresholds and notification language are clinical decisions in disguise; user testing of copy (not just functionality) must happen before beta.
- Consistent false positive rate (target: below 2 per week per user) is the primary trust variable at 18 months; invest in alert suppression and threshold calibration at least as heavily as the detection model.
- Co-design participation by actual 40+ users with lived cardiac experience, before the next hardware revision, will change the product in ways no engineering review will surface.

**Trade-offs** (the two lenses disagreed):
- A feasibility case for tiered pricing (full price, employer wellness subsidy, FSA/HSA-eligible) as the most commercially sustainable path to broader access. A risk-oriented counterpoint argues that income-gated access leaves the highest-risk users (those with least healthcare infrastructure to respond to an alert) as the population most systematically excluded.
- A feasibility case that standalone haptic/OLED alerts plus a Progressive Web App companion interface resolves the smartphone dependency at low cost. A risk-oriented counterpoint argues these are mitigations, not solutions. A user who shares a device or lacks consistent connectivity still faces compounding disadvantages as firmware updates and feature improvements assume connectivity over time.

**Blind-spot flags** (only one lens raised):
- False negative asymmetry: a user who receives no alert and concludes they are clinically fine is in a categorically different risk position than one who receives a false positive. The device's onboarding, alert language, and companion app must ensure users understand that absence of an alert is not a clinical clearance. [risk-oriented]
- Trust as a market signal: users who bring device logs to cardiology appointments demonstrate the 510(k) use case and generate clinical partnership leverage. Instrument the "share with provider" action from the first pilot; it is simultaneously a trust-building feature and a regulatory evidence stream. [feasibility-oriented]
- Alert threshold calibration requires input from people who have experienced real arrhythmia events. The sensitivity/specificity tradeoffs encode a judgment about acceptable risk for non-clinical users that the ML team is not positioned to make alone. [risk-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- **Payer and institutional gatekeeping**: neither lens examined the structural role of insurers, employer wellness programs, and healthcare systems as the actual gatekeepers of access. Not just price, but whether the device is reimbursable, whether employers will subsidize it, and whether clinical systems will accept its outputs. The post-alert pathway problem is partly a payer-relationship problem that neither a risk nor a feasibility lens addresses directly.
- **Lifecycle stage transitions**: neither lens examined how the device's role changes as users move across health-status thresholds, from pre-diagnosis wellness monitoring to post-diagnosis condition management, or from consumer wellness use to clinical partnership use. The design decisions appropriate for a first-time user who has never been diagnosed may be wrong for a user three years in who is now managing a confirmed arrhythmia.

---

**Questions addressed**: 6
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

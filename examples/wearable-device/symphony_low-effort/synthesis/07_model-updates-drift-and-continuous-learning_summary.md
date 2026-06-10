---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "07_model-updates-drift-and-continuous-learning"
central-tension: "Firmware-bundled quarterly updates are operationally achievable and sufficient for an 18-month runway but structurally cannot close the competitive detection-accuracy gap with cloud-connected rivals, while federated learning is the only path to close that gap but requires infrastructure the current team cannot build before it matters."
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

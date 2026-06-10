---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "09_team-capacity-runway-validation"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Team Capacity, Runway & Validation

---

## Synthesized Insights by Question

### Question 1: Twelve Engineers, Five Hard Problems, and the V1 Scope

**Full question**: The team is simultaneously solving on-device ML optimization, multi-sensor fusion, NPU hardware-software co-design, HIPAA-compliant data architecture, and a companion app across 12 engineers with 18 months of runway — have we ranked workstreams by criticality and explicitly identified what can defer to v2 without killing the product, what is the minimum viable version that generates enough clinical or commercial signal to secure the next funding round, and are current scope and architecture decisions optimized for that milestone or for a more ambitious version that may never get built?

* **The V1 deliverable is one validated clinical signal — on-device arrhythmia detection benchmarked against a gold standard — not feature breadth.** All four perspectives independently converge on the same MVP: prove on-device arrhythmia detection hits defensible accuracy and power targets on real users. A tight, validated wedge reads more credible than an over-scoped slow burn. The target clusters around 85% sensitivity/recall, fewer than 3-5 false positives per day per user, and 6-7 day battery life measured in real use. One caution: do not overindex on HIPAA and FDA-adjacent architecture to claim "clinical-ready" when a consumer path needs only minimum viable compliance, architected cleanly for later upgrade.

* **Explicitly name and defer the ambitious workstreams now, and own the cuts publicly.** The failure mode is leaving deferral implicit. Name what dies, lock it, and tell Series A investors why. Convergent deferral candidates: federated learning, multi-sensor fusion beyond PPG+accelerometer (drop the microphone/breathing channel and skin temperature from the V1 BOM), on-device retraining, multi-model ensembles, granular activity segmentation, and white-label features. Two exceptions should not be deferred under cost-cutting pressure: sensor-fusion rigor and raw-data privacy guarantees. Architectural reversals of these defaults in 12 months hurt Series B timelines worse than slower feature velocity.

* **A formal criticality matrix should drive the cuts, scored on Series B signal, reversibility cost, and critical-path position.** On-device inference ranks top (roughly 6 weeks to pivot to cloud, so reversibility is expensive). Hardware co-design ranks just behind because foundry timelines lock around month 3 regardless of signal priority. HIPAA architecture is medium priority and can be added around month 10, since consumer launch does not require it. Write the matrix down and review it monthly.

* **Treat the validation corpus and clinical partnership as a V1 deliverable on the critical path, not a pre-Series-B afterthought.** Validation work is invisible until it becomes critical. If the corpus ships late, the entire MVP thesis collapses because there is no evidence to show. Secure clinic partnerships in month 1-2 and structure phased data collection in parallel with model development, or accept that V1 launches on internal validation only.

---

### Question 2: Team Structure as a Constraint on System-Level Thinking, with Runway as a Forcing Function

**Full question**: With 4 firmware, 3 ML, 3 hardware, and 2 mobile app engineers, the natural tendency is for each sub-team to optimize its own subsystem while system-level tradeoffs (power vs. accuracy vs. latency vs. privacy) fall through the gaps — what coordination mechanism ensures cross-subsystem tradeoffs get made explicitly rather than by default, and if the team takes 6 months of shortcuts now under runway pressure, what specific reversibility do they lose, and how does that affect the Series B story if the company is still pre-clinical at that point?

* **A recurring, explicitly-owned cross-subsystem tradeoff forum is the core coordination mechanism, with decisions written down.** This is the strongest consensus in the cluster. A standing meeting (weekly 30-90 minutes or monthly review plus weekly integration sync) brings firmware, ML, hardware, and app leads together to surface live tradeoffs and negotiate them openly: power budget, latency-accuracy tradeoffs, sensor-window sizing, data pipeline, blocking dependencies. One owner, a rotating decision role, and a written decision log are non-negotiable. Without this, sub-teams optimize locally and integration problems surface around month 8.

* **Audit shortcuts by reversibility cost, not implementation effort — data-privacy and architecture shortcuts are the unrecoverable ones.** Some shortcuts (wrong hardware power profile, a board redesign) cost money and time but are recoverable. Others (weak encryption, storing too much locally, locking into vendor-specific NPU APIs that prevent swapping models) structurally foreclose clinical partnerships. Quantify this in a reversibility debt ledger with concrete estimates (firmware shortcuts roughly 4 weeks to unwind in month 10, hardware 6+ weeks, ML version-control gaps 3 weeks) and agree debt thresholds before runway pressure forces the choices. Document key architectural assumptions in month 1 and review them at months 4 and 8 with explicit cost-of-change analysis. Escalate to investors early if costs cross threshold.

* **Schedule a deliberate technical-debt stabilization sprint before the debt calcifies — a pre-clinical Series B will be read through code quality.** Investors at a pre-clinical Series B will probe why the codebase smells like temporary fixes, so reserved stabilization time is itself part of the funding story. Reserve roughly 2 weeks per quarter for debt repayment and run a 3-week stabilization sprint around month 7-8. The defensible narrative is "we de-risked hardware and ML and validated live accuracy," which only holds if V1 produced real-world evidence rather than a fragile over-personalized system.

* **Assign a single accountable owner for system-level coherence — a rotating "system architect" at partial allocation with veto power.** One named person (15-20% to half-time, rotated from subsystem leads) owns architecture consistency and holds veto power over subsystem decisions that create misalignment and major scope additions. This directly prevents finger-pointing ("ML missed power targets but didn't know firmware was inflexible"). Async decision logs complement the role without adding meeting load: each sub-team posts its choice and rationale, others challenge or escalate.

* **Run a month-2-to-3 full-system integration checkpoint to surface conflicts early.** Front-load where firmware runs synthetic ML loads against real hardware power profiles and the NPU interface gets co-designed on real silicon. It feels slow but kills the expensive month-8 architectural reversal; a 2-week effort here saves roughly 8 later. Pair it with two weeks of cross-training so one firmware engineer owns ML quantization and one ML engineer learns power profiling, building the connective tissue that prevents "we didn't know ML optimization needed hardware changes" surprises at month 9.

---

### Question 3: Ground Truth Dataset and the Validation Corpus

**Full question**: To validate arrhythmia and sleep apnea detection performance against a clinically meaningful benchmark, what are the minimum dataset characteristics required — sample size, demographic breakdown, Holter/PSG co-recording methodology, annotation protocol — and how does the current ML team of three scale to producing that validation corpus within the Series A runway?

* **A small, strategically dense, deeply-annotated cohort beats a large thin one — roughly 30-200 subjects matched to the launch population, not thousands.** Depth (multi-modal co-recording, careful annotation, actual target demographic of adults 45+) beats breadth for Series B credibility. A well-built 100-person set is worth far more than a thin 500-person collection. Sizing converges on tens to low hundreds: enough confirmed arrhythmia cases, healthy controls, and marginal cases to bound sensitivity and specificity. One caution: a corpus skewing 65+ white male leaves performance on women, younger, and diverse patients unknown. Regulators and partners will ask, so design stratified sampling (20-30% female, BMI/age/comorbidity spread) into the data agreement.

* **The ML team of three scales by not collecting raw data themselves — partner with clinics that already have Holter/PSG equipment and own the engineering instead.** Three engineers are the wrong unit to recruit and annotate at volume. Partner with 2-3 sleep clinics and academic medical centers that have the equipment and want ground truth. The team writes the pipeline, annotation tooling, and de-identification while partners provide access and clinical expertise. Secure these partnerships and data-sharing agreements in months 1-2, and hire a part-time clinical coordinator (roughly $50-70k) to handle recruiting, scheduling, Holter-vendor relationships, and IRB, freeing the engineers for data-quality work and model training.

* **Simplify annotation — lean on existing clinical-grade reference output as ground truth, with expert review only on the hard cases.** Do not hand-annotate tens of thousands of samples. Use cardiologist-reviewed Holter vendor reports (GE, Philips) and automated QRS detection as the baseline. Cross-reference your device's detections against them and reserve scarce cardiologist time for ambiguous windows and 5-10% spot-checks. This reaches roughly 90% of clinical rigor in about 4 months instead of 12. Label quality is itself a risk: inconsistent thresholds across clinicians train the model on noise. A clinical consultant should set the annotation protocol and validate inter-rater reliability before scaling.

* **Collect in phases, validating the pipeline on a small first cohort before scaling to catch labeling and co-recording bugs early.** Start with roughly 10 subjects fast (about 6 weeks), prove the pipeline, then expand to 30, then 50. This avoids collecting a full cohort, discovering labeling bugs, and redoing everything. Validate against published benchmarks (PhysioNet, MESA) first for early credibility. Then the team's own on-device raw sensor data layers in real-world evidence without a full large-scale trial.

* **Co-recording methodology is harder than the sample-size question implies and should be piloted before any large commitment.** Running wearable PPG and a breathing mic alongside clinical ECG and PSG (nasal cannula) creates synchronization, motion-artifact, and signal-integrity problems that invalidate the corpus if discovered late. Run a 2-week pilot around month 2 with 10-20 volunteers to validate co-recording feasibility, identify signal-alignment challenges, and refine the collection SOP before committing to large-scale collection. This reframes the bottleneck from "how many subjects" to "does co-recording work."

* **Defer sleep apnea validation; arrhythmia has clearer and faster commercial signal.** PSG-based apnea validation means 8-hour studies, harder recruitment, and a less immediately fundable result. Concentrate the scarce validation runway on arrhythmia: collect roughly 10 apnea subjects for proof-of-concept and scale to 30+ in V1.1 only if clinical interest materializes.

---

### Question 4: The Smallest Experiment with the Biggest Signal

**Full question**: Given the team's current capabilities — 4 firmware engineers, 3 ML engineers, a Series A budget, and 18 months of runway — what is the single most leveraged experiment they could run in the next 90 days to generate real-world evidence that the on-device ML pipeline performs reliably at the accuracy and power targets? What would success look like, and who on the team already has the skills to run it?

* **The flagship 90-day experiment is a small real-user wear study (5-20 users, 1-2 weeks) that measures accuracy and real-world power together, run by the existing firmware and ML team with no external dependency.** This is the single strongest convergence in the cluster. The study settles two existential unknowns: does on-device detection work on real signals, and does power survive real usage. Success thresholds cluster at roughly 85% sensitivity, fewer than 5% false positives or fewer than 3 per day, and 6+ day battery. The build is small: a couple of firmware engineers create the logging harness in about two weeks while a couple of ML engineers deploy a publicly-trained classifier. The load-bearing measurement is comparing on-device inference against a reference (Holter or offline inference on the same raw data), not just a benchmark score.

* **Make the flagship experiment double as the repeatable validation template and pair it with an early clinical co-recording cohort.** Design the protocol (logging format, annotation rubric, statistical pipeline) so it scales from 20 to 100 to 500 subjects without redesign, yielding progressive validation cohorts by month 12. Alongside it, fast-track a small Holter-co-recorded clinical cohort (8-10 subjects, months 4-6, even on a non-final model) targeting roughly 90% sensitivity so there is live validation to show investors by month 7 with time to iterate before the Series B push.

* **A power-budget sensitivity and battery-vs-accuracy experiment should run in parallel — the 7-day target is hardware-gated and may be premature to claim.** Run a one-week trade study early (for example three firmware variants trading inference and sensing power) to learn how aggressive model compression must be, and log every power state on real devices against the power model. Consumption within 10% of prediction unlocks the hardware roadmap; 40% higher spots the architectural blocker before month 6. Claiming a 7-day target before hardware locks (around month 4-6) is premature, so make the power profile a hardware gate by month 3.

* **Offline accuracy on public datasets does not predict real-world performance — the experiment's whole point is to break that assumption.** A model reporting 95% on a public ECG database can fail on the device's own PPG noise, motion artifacts, and contact instability. This reframes the flagship experiment from "confirm our model" to "find out whether our public-data accuracy survives contact with real sensors." On-device-vs-reference comparison is the load-bearing measurement, not a standalone benchmark number.

* **Sensor fusion is the hidden failure mode — instrument each sensor's contribution because the weakest channel can sink the whole detector.** If motion artifacts break PPG-based detection in a large fraction of real-world samples, the system fails clinically regardless of model quality. The 90-day experiment should log each sensor's contribution to anomaly decisions, expose which combinations are redundant versus brittle, and feed a month-4 prototype of dynamic feature-importance weighting based on motion state.

* **Two complementary low-cost experiments extend the signal beyond the core wear study, and two more harden it.** A single cardiologist spending roughly 10 hours reviewing on-device alerts yields "early clinician feedback shows detection aligns with clinical judgment" for Series B positioning. A one-week, one-person 510(k) feasibility map (dataset size, endpoints, study design) kills the "is this even approvable?" objection before it becomes a blocker. A barebones companion-app usability stress test (month 5) surfaces data-pipeline and BLE-sync problems before scaling. A continuous firmware soak test from month 3 onward accumulates 90+ days of uptime data while catching brittleness early.

* **An irreversibility framing should wrap the flagship experiment — classify which design choices it puts at risk and which are cheap to change.** At kickoff, build a decision-reversibility matrix mapping architecture choices to switch cost and flag the high-cost, low-confidence ones (a specific NPU vendor) for early validation. If the experiment reveals latency at twice the power budget or PPG-only detection missing a meaningful fraction of true events, the matrix tells you immediately what must change and what can stay.

---

**Questions addressed**: 4
**Synthesized insights**: 22

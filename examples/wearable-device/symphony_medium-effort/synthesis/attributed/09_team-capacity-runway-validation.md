---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "09_team-capacity-runway-validation"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: Team Capacity, Runway & Validation - With Attribution

---

## Synthesized Insights by Question

### Question 1: Twelve Engineers, Five Hard Problems, and the V1 Scope

**Full question**: The team is simultaneously solving on-device ML optimization, multi-sensor fusion, NPU hardware-software co-design, HIPAA-compliant data architecture, and a companion app across 12 engineers with 18 months of runway — have we ranked workstreams by criticality and explicitly identified what can defer to v2 without killing the product, what is the minimum viable version that generates enough clinical or commercial signal to secure the next funding round, and are current scope and architecture decisions optimized for that milestone or for a more ambitious version that may never get built?

* **All four personas converge: the V1 deliverable is one validated clinical signal — on-device arrhythmia detection benchmarked against a gold standard — not feature breadth.** Every perspective independently lands on the same MVP: prove that on-device arrhythmia detection hits a defensible accuracy and power target on real users, and let that single proof point carry the Series B story. Investors buy a tight, validated wedge over an over-scoped slow burn. The convergent target clusters around 85% sensitivity/recall, a low false-positive rate (under 3-5 per day per user), and a 6-7 day battery measured in real use.
  * **Flip the constraint: "what single insight, if proven in 18 months, makes Series B inevitable?" — arrhythmia detection at <2% false positive, <5W power.** A tight MVP reads as more credible to investors than breadth; intentional gaps (coarse summaries, 500-person cohort) are proof that each engineering hour buys concrete signal. *—The Constraint Flipper*
  * **V1 is a wedge into clinical partnerships: one credible validation study showing on-device detection outperforms consumer devices, not regulatory perfection.** Design V1 for that narrow win; the Series B roadmap is the license to build the ecosystem. *—The Momentum Builder*
  * **Phase-gate the five problems sequentially; V1 success = 7-day battery + 85% arrhythmia recall on in-house dataset.** That is fundable for Series B. Investors do not care about 50ms vs 100ms latency; they care about validated users, sensitivity, and a hit power target. *—The Pragmatist*
  * **Watch for V1 scope optimized for the Series B narrative rather than revenue.** A team can overindex on HIPAA and FDA-adjacent architecture to tell a "clinical-ready" story, burning 3-4 months a direct-to-consumer path would not require. Define minimum viable compliance for the current market, architect cleanly for upgrade, do not front-load clinical burden. *—The Devil's Advocate*

* **Explicitly name and defer the ambitious workstreams now, and own the cuts publicly.** The personas agree the failure mode is leaving deferral implicit. Name what dies, lock it, and tell Series A investors why. Convergent deferral candidates: federated learning, multi-sensor fusion beyond PPG+accelerometer (drop the microphone/breathing channel), on-device retraining, multi-model ensembles, granular activity segmentation, and white-label/ecosystem features.
  * **Ask the team now: does federated learning die? Multi-sensor fusion? Onboard retraining? Pick two, lock them, and tell investors "we bet on X because it's the bottleneck to clinical adoption."** That honesty beats overcommitting and delivering half-baked features. *—The Constraint Flipper*
  * **Defer fancy battery optimization (the hardware gets redesigned anyway) and white-label deployment; do not defer sensor-fusion rigor or raw-data privacy guarantees.** Defaults that need architectural reversal in 12 months kill Series B timelines worse than slower feature velocity. *—The Momentum Builder*
  * **Concrete deferral ledger: federated learning to V2 (+8 weeks, zero consumer-phase clinical value); multi-model ensemble to V1.1 (single SVM is half the complexity); skin temperature and breathing cut from the V1 hardware BOM.** Companion app starts as barebones alerting plus aggregated summaries. *—The Pragmatist*
  * **Rank by clinical-signal value vs complexity vs dependency order in a decision matrix, then defer anything below threshold.** Without explicit sequencing, scope creep masquerades as prioritization. *—The Devil's Advocate*

* **A formal criticality matrix should drive the cuts, scored on Series B signal, reversibility cost, and critical-path position.** Two personas independently propose nearly identical scoring frameworks, and both flag that hardware/foundry timelines lock early, making hardware co-design a near-top priority regardless of where it sits on the signal axis.
  * **Decision matrix: rows = workstreams, columns = Series B signal potential, reversibility cost, critical-path status; defer below threshold.** *—The Devil's Advocate*
  * **Workstream criticality matrix scored on time-to-first-revenue, reversibility cost, team ramp-up risk: on-device inference is 1A (6 weeks to pivot to cloud), hardware co-design is 1B (foundry locks month 3), HIPAA is medium (add month 10).** Write it down; review monthly. *—The Pragmatist*

* **Treat the validation corpus and clinical partnership as a V1 deliverable on the critical path, not a pre-Series-B afterthought.** This insight bridges into Question 3 but is load-bearing for scope: if validation is scheduled late, the entire MVP thesis collapses because there is no evidence to show.
  * **Validation is the 18-month milestone, not a nice-to-have; structure phased data collection in parallel with model development.** *—The Momentum Builder*
  * **Validation corpus building is invisible until it's critical — secure clinic partnerships in month 1-2, not month 10-12, or accept V1 launches on internal validation only.** *—The Devil's Advocate*

---

### Question 2: Team Structure as a Constraint on System-Level Thinking, with Runway as a Forcing Function

**Full question**: With 4 firmware, 3 ML, 3 hardware, and 2 mobile app engineers, the natural tendency is for each sub-team to optimize its own subsystem while system-level tradeoffs (power vs. accuracy vs. latency vs. privacy) fall through the gaps — what coordination mechanism ensures cross-subsystem tradeoffs get made explicitly rather than by default, and if the team takes 6 months of shortcuts now under runway pressure, what specific reversibility do they lose, and how does that affect the Series B story if the company is still pre-clinical at that point?

* **All four personas converge: a recurring, explicitly-owned cross-subsystem tradeoff forum is the core coordination mechanism, with decisions written down.** This is the strongest consensus in the cluster. Every persona independently prescribes a standing meeting where firmware, ML, hardware, and app leads surface live tradeoffs (power budget, latency-vs-accuracy, sensor windows, data pipeline) and negotiate them in the open, with a single owner and a written decision log. The mechanics differ in cadence and weight, but the diagnosis and remedy are identical.
  * **Weekly cross-team tradeoff council: firmware brings "we have 3W," ML brings "this needs 50ms," hardware brings "NPU pulls 2.8W," and you negotiate explicitly.** The constraint forces the conversation larger teams avoid. *—The Constraint Flipper*
  * **Cross-subsystem tradeoff board, weekly, 30 minutes, owned by product: "ML wants 50ms, firmware says that's 35% more battery, hardware can fix it if PPG window shrinks 30s to 15s, app needs 60s for UI."** Make it explicit, decided, documented. *—The Momentum Builder*
  * **Monthly system-level tradeoff review chaired by product/engineering lead, plus a weekly 90-minute integration sync with a rotating decision owner and written decision log.** *—The Devil's Advocate*
  * **Explicit weekly tradeoff forum, 90 minutes, one owner: power reconciliation, latency-vs-accuracy knobs, data pipeline, blocking dependencies; document decisions, track reversibility.** Without it you discover integration nightmares in month 8. *—The Pragmatist*

* **Audit shortcuts by reversibility cost, not implementation effort — and the data-privacy/architecture shortcuts are the unrecoverable ones.** The personas converge on a sharp distinction: some shortcuts (wrong hardware power profile, board redesign) are expensive but recoverable; others (weak encryption, storing too much locally, locking into vendor-specific NPU APIs) structurally foreclose clinical partnerships and cannot be undone. Three personas propose quantifying this in a ledger with agreed debt thresholds.
  * **Hardware-software co-design is the reversibility bottleneck: if firmware expects persistent NPU access and hardware locks vendor-specific APIs, you lose the ability to swap models — gate cross-team alignment on interfaces before month 3.** *—The Constraint Flipper*
  * **Audit shortcuts by reversibility cost: a board redesign is expensive but recoverable; a data-privacy shortcut makes clinical partnerships impossible and is not.** *—The Momentum Builder*
  * **Reversibility debt ledger with quantified costs: firmware shortcuts burn ~4 weeks in month 10, hardware shortcuts 6+ weeks, ML shortcuts (no version control/retraining pipeline) 3 weeks — agree thresholds before runway pressure hits.** *—The Pragmatist*
  * **Document key architectural assumptions (power budget, latency, fusion approach) in month 1, review month 4 and month 8 with explicit cost-of-change analysis; if costs exceed threshold, escalate to Series A investors early.** *—The Devil's Advocate*

* **Schedule a deliberate technical-debt stabilization sprint before the debt calcifies, because a pre-clinical Series B will be read through code quality.** Two personas tie this directly to the funding narrative: investors at a pre-clinical Series B will probe why the codebase "smells like temporary fixes," so reserved, untouchable stabilization time is itself part of the Series B story.
  * **Reserve 2 weeks per quarter for deliberate technical-debt repayment as untouchable runway; measure reversibility cost of shortcuts at monthly checkpoints; run a 3-week stabilization sprint in month 7-8 before decisions calcify.** *—The Devil's Advocate*
  * **The Series B narrative if still consumer-stage: "We've de-risked hardware and ML, validated live accuracy, now scaling to clinical validation" — investors accept this only if V1 generated real-world evidence rather than a fragile over-personalized system.** *—The Pragmatist*

* **Assign a single accountable owner for system-level coherence — a rotating "system architect" at partial allocation, with veto power.** Three personas independently call for one named person whose job is cross-subsystem consistency, explicitly to prevent the finger-pointing failure ("ML missed power targets but didn't know firmware was inflexible").
  * **Rotating "system architect" role with explicit veto over subsystem decisions that create misalignment; 15-20% allocation; success = zero surprise integration issues at gate reviews.** *—The Devil's Advocate*
  * **Dedicated system architect (half or full time, rotated from subsystem leads) with veto power on major scope additions — your forcing function against scope creep.** *—The Pragmatist*
  * **Coordination without bloat via async decision logs rather than more meetings: each sub-team posts "we chose X because it saves 200mA; if ML needs real-time updates we revisit," others challenge or escalate.** *—The Constraint Flipper*

* **Run a month-2-to-3 full-system integration mock-up or hardware-software co-design sprint to surface conflicts early.** Three personas converge on front-loading an integration checkpoint where firmware runs synthetic ML loads against real hardware power profiles, deliberately trading apparent early slowness for avoiding an expensive month-8 architectural reversal.
  * **Hardware-software co-design sprint starting month 2: firmware and hardware co-design the NPU interface and power budget on real silicon; feels slow, kills the 6-month reversal.** Plus a month-3 system review as an evidence-driven reset valve. *—The Momentum Builder*
  * **Single reconciliation loop, month 3: full system mock-up with realistic latency/power/IO; firmware runs synthetic models, ML uses actual hardware power profiles; a 2-week effort that saves 8.** *—The Pragmatist*
  * **Skill-stacking to bridge silos: one firmware engineer owns ML quantization, one ML engineer learns power profiling; 2 weeks of cross-training now prevents "we didn't know ML optimization needed hardware changes" at month 9.** *—The Momentum Builder*

---

### Question 3: Ground Truth Dataset and the Validation Corpus

**Full question**: To validate arrhythmia and sleep apnea detection performance against a clinically meaningful benchmark, what are the minimum dataset characteristics required — sample size, demographic breakdown, Holter/PSG co-recording methodology, annotation protocol — and how does the current ML team of three scale to producing that validation corpus within the Series A runway?

* **All four personas converge: a small, strategically dense, deeply-annotated cohort beats a large thin one — roughly 30-200 subjects matched to the launch population, not thousands.** The strongest convergence in this question. Depth (multi-modal co-recording, careful annotation, the actual target demographic of adults 45+) beats breadth for Series B credibility. The numbers differ but the philosophy and the order of magnitude (tens to low hundreds) are shared.
  * **200 high-signal subjects: 80 confirmed arrhythmia, 80 healthy controls, 40 marginal cases; validate in the exact launch demographic (45+, ~70% male) rather than chasing generalization.** *—The Constraint Flipper*
  * **100 people across the risk spectrum (healthy, newly diagnosed, treated arrhythmia, confirmed apnea), 7-14 days of multi-modal data each; depth beats breadth, worth 10x a thin 500-person set.** *—The Momentum Builder*
  * **30-50 subjects, 48-72 hour Holter co-recordings, 8+ arrhythmia events per device, age-stratified 40% ages 40-55 / 60% ages 55+; validating technical signal, not population generalizability.** *—The Pragmatist*
  * **Counter-pressure on demographics: a corpus skewing 65+ white male leaves performance on women, younger, and diverse patients unknown — regulators and partners will ask; design stratified sampling (20-30% female, BMI/age/comorbidity spread) into the data agreement.** *—The Devil's Advocate*

* **The ML team of three scales by not collecting raw data themselves: partner with clinics that already have Holter/PSG equipment, and own the engineering (pipeline, annotation tooling, de-identification) instead.** Convergent across all four: the three-engineer team is the wrong unit to recruit and annotate at volume. The lever is clinical partnerships plus a dedicated non-ML coordinator role.
  * **Invert the collection model: partner with 2-3 sleep clinics and cardiac labs that have the equipment and want ground truth; your team writes the pipeline, they provide access and clinical expertise — exactly what Series B investors want to see.** *—The Constraint Flipper*
  * **Formal partnerships with 2-3 academic medical centers in months 1-2, data-sharing agreements immediately, plus a half-time dedicated data engineer from month 2 to manage collection and annotation.** *—The Devil's Advocate*
  * **Validation corpus as a structured 3-ML-engineer sprint, each owning a workflow (collection automation, QC pipeline, clinical-review coordination), keeping engineers free for model development in parallel.** *—The Momentum Builder*
  * **Hire a part-time clinical coordinator (~$50-70k) for recruiting, scheduling, Holter-vendor relationships, and IRB; ML engineers focus on data-quality checks and training.** *—The Pragmatist*

* **Simplify annotation: lean on existing clinical-grade reference output (Holter vendor reports, automated QRS detection) as ground truth, with expert review only on the hard cases.** Convergent: do not hand-annotate tens of thousands of samples. Build a semi-automated pipeline and reserve scarce cardiologist time for ambiguous windows and spot-checks.
  * **Semi-automated pipeline: coarse labels from clinical software, ML flags ambiguous windows, one cardiologist spot-checks 5-10%; scales to 1,000 subjects without more annotators.** *—The Constraint Flipper*
  * **Automated QRS baseline + crowdsourced verification (10% spot-check) + one clinical partner reviewing the hardest cases; ~90% of clinical rigor in 4 months instead of 12.** *—The Momentum Builder*
  * **Use cardiologist-reviewed Holter vendor reports (GE, Philips) as ground truth; cross-reference your detections rather than standing up a separate annotation team — validated against Holter, sufficient for Series B.** *—The Pragmatist*
  * **But annotation quality is itself a risk: inconsistent thresholds across clinicians train the model on noisy labels — a clinical consultant must set protocols and validate inter-rater reliability before scaling.** *—The Devil's Advocate*

* **Collect in phases, validating the pipeline on a small first cohort before scaling, to catch labeling and co-recording bugs early.** Convergent: start with ~10 subjects fast, prove the pipeline, then expand. Front-loading a tiny cohort de-risks the expensive collection.
  * **Phased: month 6 collect 10 subjects (~6 weeks), validate the pipeline, month 9 expand to 30, month 13 to 50 — avoids collecting 50, finding labeling bugs, and redoing everything.** *—The Pragmatist*
  * **Phased data collection structured into the V1 timeline (months 1-3 raw collection, 4-6 annotation with clinical feedback), front-loading risk as evidence the team ships clinical-grade work.** *—The Momentum Builder*
  * **Validate against published benchmarks (PhysioNet, MESA) first for credibility, then layer your own on-device raw sensor data from 50-100 participants — published proof plus real-world evidence without a 500-person trial.** *—The Momentum Builder*

* **A single-persona reframe: co-recording methodology is harder than the sample-size question implies, and should be piloted before any large commitment.** Only one persona surfaces that running wearable PPG and a breathing mic alongside clinical ECG/PSG (nasal cannula) creates synchronization, motion-artifact, and signal-integrity problems that can invalidate the corpus if discovered late. This reframes the bottleneck from "how many subjects" to "does co-recording even work."
  * **Run a 2-week pilot (month 2) with 10-20 volunteers to validate co-recording feasibility, identify signal-alignment challenges, and refine the SOP before large-scale collection; PPG vs clinical ECG and breathing mic vs nasal cannula are genuinely different signals.** *—The Devil's Advocate*

* **A single-persona reframe: defer sleep apnea validation entirely; arrhythmia has clearer and faster commercial signal.** Only one persona makes the explicit cut that PSG-based apnea validation (8-hour studies, harder recruitment, less fundable) should drop to proof-of-concept scale, concentrating the scarce validation runway on arrhythmia.
  * **Sleep apnea dataset deferred: collect 10 subjects for proof-of-concept, scale to 30+ in V1.1 only if clinical interest materializes; arrhythmia carries the fundable signal.** *—The Pragmatist*

---

### Question 4: The Smallest Experiment with the Biggest Signal

**Full question**: Given the team's current capabilities — 4 firmware engineers, 3 ML engineers, a Series A budget, and 18 months of runway — what is the single most leveraged experiment they could run in the next 90 days to generate real-world evidence that the on-device ML pipeline performs reliably at the accuracy and power targets? What would success look like, and who on the team already has the skills to run it?

* **All four personas converge on the same flagship 90-day experiment: deploy the prototype to ~5-20 real users for ~1-2 weeks and measure accuracy and real-world power together, run by the existing firmware and ML team with no external dependency.** The single strongest convergence in the cluster. The shape is identical across all four: a small real-user wear study that settles the two existential unknowns (does on-device detection work on real signals, and does power survive real usage). Cohort sizes range 5-20; success thresholds cluster at ~85% sensitivity, sub-5% / sub-3-per-day false positives, and 6+ day battery.
  * **20 users (half documented arrhythmia, half controls), 7 days, parallel Holter; one metric: sensitivity/specificity vs Holter; success = >85% sensitivity, <5% false positive, <4W continuous; 2 firmware build the harness in 2 weeks, 2 ML deploy a PhysioNet-trained classifier in 3 weeks.** *—The Constraint Flipper*
  * **20 users, live PPG + accelerometer, compare on-device inference to offline PC inference on the same raw data; if on-device tracks offline within 3%, the pipeline works in real conditions — zero clinical or regulatory overhead.** *—The Momentum Builder*
  * **20 early users, real-world deployment measuring false-positive rate in daily use, alert-driven churn, and real battery life together; success = sub-5% false positive, sub-20% alert churn, 6+ day battery; 1 firmware + 1 ML + 1 mobile.** *—The Devil's Advocate*
  * **5 employees/willing users, pre-production prototypes, 14 days continuous; measure actual power drain, false-alert rate, comfort; answers "does the power target survive real usage" and "are false alerts tolerable" — negligible cost, massive signal, no external logistics.** *—The Pragmatist*

* **Make the flagship experiment double as the repeatable validation template, and pair it with an early clinical co-recording cohort.** Two personas push to design the 90-day protocol so it scales without redesign, and two propose fast-tracking a small Holter-co-recorded clinical cohort by month 4-6 rather than waiting for Series B timing.
  * **Design the 20-person / 7-day / Holter protocol to scale to 100 then 500 without redesign — same logging, rubric, and stats pipeline — so by month 12 you have three progressive validation cohorts.** *—The Constraint Flipper*
  * **Holter cohort fast-track, months 4-6: 8-10 subjects wearing device + Holter simultaneously, V0.8 model, 90% sensitivity target on 10 events; live validation to show investors by month 7, or 6 months to iterate before the Series B push.** *—The Pragmatist*

* **A power-budget sensitivity / battery-vs-accuracy experiment should run in parallel, because the 7-day target is hardware-gated and may be premature to claim.** Three personas independently isolate the power question as a distinct, runnable-now experiment, with one warning that claiming a 7-day target before hardware is locked (month 4-6) is premature.
  * **Battery-vs-accuracy trade study (month 2): run three firmware variants (150mW inference / 60mW sensing / baseline) on mock data, measure accuracy penalty each; 1 week, tells you how aggressive model compression must be.** *—The Pragmatist*
  * **Power budget validation sprint: log every power state over 24 hours on 10 real devices vs the power model; within 10% unlocks the roadmap, 40% higher spots the blocker before month 6.** *—The Momentum Builder*
  * **Power sensitivity analysis (month 1) on dev boards simulating inference latency vs power across model sizes and duty cycles to find which design choices unlock 7 days; make that a hardware gate by month 3 — claiming the target before hardware lock is premature.** *—The Devil's Advocate*
  * **Include real-world power logging in the flagship experiment (continuous sampling, inference every 30s, periodic BLE sync); discovering the NPU draws 3.5W not 2W early gives 7 weeks to optimize rather than months of wrong-direction work.** *—The Constraint Flipper*

* **A single-persona reframe: offline accuracy on public datasets does not predict real-world performance — the experiment's whole point is to break that assumption.** Only the adversarial lens makes explicit that a 95%-on-MIT-BIH model can fail on the device's own PPG noise, motion artifacts, and contact instability. This reframes the flagship experiment from "confirm our model" to "find out whether our public-data accuracy survives contact with real sensors," and is why on-device-vs-reference comparison (not just a benchmark score) is the load-bearing measurement.
  * **Public-dataset accuracy (95% on MIT-BIH) doesn't predict on-device PPG performance under motion artifacts, unstable contact, and variable signal quality — collect 50-100 hours of real PPG with concurrent ground truth and compare on-device predictions to a clinical reference, measuring real-world vs offline accuracy.** *—The Devil's Advocate*

* **A single-persona reframe: sensor fusion is the hidden failure mode — instrument each sensor's contribution, because the weakest channel can sink the whole detector.** Only the adversarial lens flags that motion artifacts breaking PPG in 30% of real samples would fail the system clinically regardless of model quality, and that the 90-day experiment should log per-sensor contribution to expose brittle fusion before architecture locks.
  * **Instrument logging of each sensor's contribution to anomaly decisions; analyze which combinations are redundant vs brittle; prototype dynamic feature-importance weighting based on motion state in month 4.** *—The Devil's Advocate*

* **Two complementary low-cost experiments extend the signal beyond the core wear study: an early clinician feedback session and a regulatory feasibility map.** These build the Series B narrative cheaply and address the "is this even approvable / clinically meaningful" objection before it becomes a blocker.
  * **One cardiologist, 10 hours, reviewing on-device alerts from the 20-person dataset — not a partnership, just feedback on alert relevance and false-positive patterns; "early clinician feedback shows detection aligns with clinical judgment" is priceless Series B positioning.** *—The Momentum Builder*
  * **Regulatory feasibility checkpoint: one person, one week, mapping exact 510(k) requirements (dataset size, endpoints, study design) — not submitting, planning — to kill the "is this approvable?" question in the Series B pitch.** *—The Momentum Builder*
  * **Companion app usability stress test (month 5): barebones app to 10 internal + 5 external users for 2 weeks measuring alert comprehension, dismissal patterns, crash rate, BLE sync reliability — surfaces data-pipeline problems before scaling.** *—The Pragmatist*
  * **Firmware stability soak test (month 3 onward): 2-3 devices in continuous 24/7 operation for 30 days logging power, memory leaks, BLE reconnects; 90+ days of uptime data is impressive for Series B and catches brittleness early.** *—The Pragmatist*

* **An irreversibility framing should wrap the flagship experiment: classify which design choices the experiment puts at risk and which are cheap to change.** The adversarial lens ties Question 4 back to Question 2, insisting the experiment kickoff produce a reversibility matrix so a poor result tells you exactly what must change.
  * **At experiment kickoff (month 1), create a decision-reversibility matrix mapping architecture choices to switch cost; flag high-cost low-confidence choices (specific NPU vendor) for early validation — if the experiment shows latency is 2x budget or PPG-only misses 15% of events, you know what is reversible.** *—The Devil's Advocate*

---

**Questions addressed**: 4
**Personas contributing**: The Constraint Flipper, The Devil's Advocate, The Momentum Builder, The Pragmatist
**Total synthesized insights**: 22

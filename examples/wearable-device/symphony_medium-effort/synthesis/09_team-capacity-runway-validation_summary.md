---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "09_team-capacity-runway-validation"
synthesis-type: "summary"
central-tension: "Broadly convergent: the cluster agrees V1 must prove one validated arrhythmia-detection signal at real accuracy and power, with the live debate being how aggressively to defer everything else against the risk of irreversible early architecture and privacy shortcuts."
---

# Summary: Team Capacity, Runway & Validation

## Executive Summary

This cluster is unusually convergent. All four perspectives agree that 12 engineers cannot deliver five hard problems in 18 months, and that the right response is not to work faster but to collapse the product down to a single thesis: prove that on-device arrhythmia detection hits a defensible accuracy and power target on real users. That one validated signal, roughly 85% sensitivity, a tolerable false-positive rate, and a 6-7 day battery measured in real use, is what secures Series B. Everything that does not directly serve it is a candidate for deferral.

The live debate inside that consensus is about deferral discipline and its limits. Federated learning, multi-model ensembles, the breathing-mic and skin-temperature channels, granular activity tracking, and ecosystem features can all wait. But two things must not be cut under runway pressure: raw-data privacy architecture and sensor-fusion rigor. They are irreversible. A weak-encryption or store-too-much shortcut quietly forecloses the clinical partnerships the whole Series B story depends on. Once made, that choice cannot be undone. This reframes shortcut decisions away from "how much effort does this save" toward "can we reverse this." That distinction recurs across every question in the cluster.

The team-structure analysis is the strongest agreement of all: with four sub-teams each optimizing its own subsystem, the cross-cutting tradeoffs (power vs accuracy vs latency vs privacy) have no owner and fall through the gaps. The fix everyone independently prescribes is a standing, explicitly-owned cross-subsystem tradeoff forum with a written decision log, plus a single rotating "system architect" holding veto power over misaligning decisions and scope creep.

On validation, the consensus is counterintuitive but firm: a small, dense, deeply-annotated cohort (tens to low hundreds of subjects, co-recorded against Holter, matched to the 45+ launch demographic) outperforms a large thin one. The three-person ML team scales by partnering with clinics that already own the equipment rather than collecting data themselves. The single most leveraged move in the next 90 days is also agreed: a small real-user wear study that measures accuracy against a reference and real-world power at the same time, runnable now by the existing team with no external dependency. The adversarial lens adds the sharpest caution: public-dataset accuracy will not survive contact with real PPG signals. That is precisely why the experiment exists.

---

## Key Themes

### Reversibility is the real decision criterion
The cluster repeatedly reframes "what do we cut" into "what can we undo." Hardware redesigns and model retraining are expensive but recoverable. Privacy architecture shortcuts, vendor-locked NPU APIs, and missing model version control are not. Several perspectives propose a quantified reversibility debt ledger with agreed thresholds, set before runway pressure forces the choices rather than after.

### One validated signal beats feature breadth
Every perspective collapses the five hard problems to a single fundable proof point: on-device arrhythmia detection at a real accuracy and power target, validated on real users. A tight MVP with honest, named gaps reads as more credible to Series B investors than an over-scoped product that ships late, and the whole roadmap is organized around reaching that one milestone.

### Cross-subsystem coordination has to be engineered, not assumed
The team's natural failure mode is local optimization that produces invisible system-level failures and finger-pointing at integration time. The unanimous remedy is a recurring, owned tradeoff forum with written decisions. Add a front-loaded month-2-to-3 integration mock-up on real silicon and a single accountable system architect with veto power.

### Validation depth beats validation volume, via partnership
A strategically dense cohort of tens to low hundreds of subjects, deeply annotated against clinical-grade Holter output and matched to the launch demographic, is worth far more for Series B than a large thin collection. The three-person ML team scales by owning the pipeline and tooling while clinic partners supply equipment, access, and ground truth. A part-time clinical coordinator supports the work.

### The 90-day experiment is the de-risking engine
A small real-user wear study that measures detection accuracy against a reference and real-world power simultaneously is the agreed highest-leverage move. Design it from day one as a repeatable template that scales without redesign. Its hidden purpose is adversarial: to test whether public-data accuracy and lab power numbers survive real sensors, motion artifacts, and continuous use.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Hold the first cross-subsystem tradeoff forum and name a rotating system architect with veto power; start a written decision log and a reversibility debt ledger with agreed thresholds.
- Document the key architectural assumptions (power budget, inference latency, sensor-fusion approach) and the criticality matrix (Series B signal, reversibility cost, critical-path status); review monthly.
- Launch the flagship 90-day wear study: 5-20 real users, prototype hardware, measuring on-device-vs-reference accuracy and real-world power together; design the protocol to scale to 100 then 500 without redesign.
- Run a one-week battery-vs-accuracy trade study and per-device power-state logging to learn how aggressive model compression must be and whether the 7-day target is reachable.
- Open partnership and data-sharing conversations with 2-3 clinics or academic medical centers now; run a 2-week co-recording feasibility pilot (10-20 volunteers) before any large collection.

### Near-term (3-12 months)
- Run a month-2-to-3 full-system integration mock-up on real silicon (firmware on synthetic ML loads, ML on real hardware power profiles) and cross-train one firmware engineer on quantization and one ML engineer on power profiling.
- Hire a part-time clinical coordinator to run recruiting, scheduling, Holter-vendor relationships, and IRB; begin phased collection (~10 subjects, then 30, then 50) of the dense arrhythmia validation cohort with stratified sampling.
- Run a 3-week technical-debt stabilization sprint around month 7-8 before shortcuts calcify; reserve ~2 weeks per quarter as untouchable repayment time.
- Fast-track an 8-10 subject Holter-co-recorded clinical cohort (months 4-6) to have live validation evidence by month 7, plus a single cardiologist's 10-hour alert review for clinical-alignment signal.
- Produce a one-week 510(k) feasibility map (dataset size, endpoints, study design) to pre-empt the "is this approvable?" objection in the Series B pitch.

### Long-term (1+ years)
- Build out the validation corpus toward progressive cohorts (20 -> 100 -> 500) using the standardized logging and analysis template, and co-author a validation paper with the clinical partner.
- Defer sleep apnea validation to proof-of-concept scale now, expanding only if clinical interest materializes; revisit federated learning, multi-model ensembles, and the additional sensor channels as V2 once the core signal is funded.

---

## Key Considerations

**Opportunities**:
- A tight, validated single-signal MVP is more fundable than feature breadth. The runway constraint becomes a focusing advantage.
- Clinic partnerships let a three-person ML team produce a clinically credible corpus without exploding payroll. A co-authored validation paper opens the door to clinical partnerships and Series B legitimacy.
- The same 90-day experiment serves as accuracy validation, power validation, and a reusable scaling template all at once.

**Risks & Challenges**:
- Public-dataset accuracy will not predict on-device PPG performance under motion and unstable contact. A 95% benchmark can collapse on real signals.
- Co-recording wearable PPG and a breathing mic against clinical ECG and PSG has real synchronization and signal-integrity problems that can invalidate a corpus if discovered late.
- Demographic skew (typical 65+ male sleep-lab populations) leaves performance on women and diverse patients unknown, a question regulators and partners will raise.
- 18 months is effectively shorter than it looks once clinical recruitment, consent, and IRB timelines are counted. Validation must start in month 1-2.

**Trade-offs**:
- Aggressive deferral buys focus but must stop at two irreversible lines: privacy architecture and sensor-fusion rigor. A shortcut at either one forecloses the clinical future.
- Optimizing for the Series B "clinical-ready" narrative can pull HIPAA and FDA-adjacent work forward and consume 3-4 months a pure consumer path would not need.
- Validation depth versus breadth: a dense small cohort proves technical signal fast but defers population generalizability to a later, larger collection.
- Speed versus reversibility: month-1-to-8 shortcuts are tempting under runway pressure, but a pre-clinical Series B will be read through code quality. A deliberate stabilization sprint becomes part of the funding story, not a distraction from it.

---

**Questions addressed**: 4
**Key insights synthesized**: 22

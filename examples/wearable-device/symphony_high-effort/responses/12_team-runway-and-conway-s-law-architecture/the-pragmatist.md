---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "12_team-runway-and-conway-s-law-architecture"
persona: "The Pragmatist"
---

# Team, Runway, and Conway's-Law Architecture - The Pragmatist

## Q1. Resource allocation, scope-vs-runway, ML-team-scale, and Conway's Law

* **Single clinical condition accelerates Series B more than two half-validated ones.** The fusion architecture with three ML engineers spread across arrhythmia and sleep apnea detection means each condition gets insufficient rigor—neither earns confidence from cardiologists or sleep specialists. A practical approach: pick arrhythmia (higher liability, clearer FDA pathway), obsess on PPG + accelerometer signal fidelity, and defer sleep apnea to post-Series-A. This turns a weakness (scope limitation) into credibility (one condition, exceptionally validated).

* **The firmware-ML handoff is your highest-risk seam.** Four firmware engineers must freeze the sensor streaming protocol and power budget by month 3. If ML discovers needed changes (different sampling rates, streaming latency) at month 6, you're reworking firmware in parallel with Series B prep. Mitigation: have one ML engineer co-locate in firmware planning sprints now. Cost: 10% ML velocity loss. Benefit: no month-6 rewrite.

* **Descope the federated learning and on-device retraining experiments.** Periodic firmware updates with new models is sufficient for post-launch refinement. Federated learning adds complexity (privacy-preserving aggregation, regulatory uncertainty) without MVP value. You need inference working first; model updates can wait.

* **Probability of 18-month production readiness: 60% without additional hires if you ruthlessly scope to arrhythmia + existing sensors (PPG, accel, temp).** The hardware-NPU co-design work is the true critical path—you can't iterate fast on silicon. If NPU integration is still proving out power efficiency at month 12, you miss Series B. Hire one senior NPU architect immediately (month 1) or accept a Series A extension as backup plan.

* **Conway's Law tells you to align team structure to system architecture now.** Create three pods: (1) Sensor+Firmware (4 firmware + 1 hardware + 1 ML signal specialist), (2) ML Model Validation (2 ML + 1 clinical advisor), (3) Privacy+Sync (1 ML + 2 mobile + 1 firmware). Each pod owns a clear boundary. This prevents the "three ML engineers, no single owner" problem.

## Q2. The team you already have (focused-sprint leverage)

* **Pair your lead ML engineer with your hardware lead for a two-week sensor integration sprint.** Goal: nail the power-versus-sampling-rate tradeoff for PPG. Have them instrument actual power consumption (not estimates) across three sampling configurations and measure inference latency on the real NPU. Output: a decision matrix and firmware API spec. This single sprint removes months of later guesswork because both teams own the decision together.

* **The firmware-mobile pairing unlocks the sync protocol architecture.** Run a two-week sprint where your mobile team and one firmware engineer design the HIPAA-compliant data handoff (encrypted local storage, batched sync, residual timestamp sanitization). Let them prototype the wire format end-to-end. A shared protocol design prevents downstream rework when mobile tries to ingest what firmware produces.

* **One ML engineer + one hardware engineer should prototype the entire inference pipeline on real silicon for two weeks.** Load your trained arrhythmia model, measure latency and power on actual silicon (not simulator), and identify the real bottleneck (model size, quantization, NPU scheduling). You'll learn more in two weeks than in three months of separate simulation work. This creates a shared mental model of what's actually feasible.

* **The clinical advisor (or regulatory liaison if you have one) should spend one week embedded with the ML team** building the validation plan for arrhythmia detection: what data set proves accuracy, what's the sensitivity/specificity target, how does FDA expect you to handle edge cases (athletes with high ECG variability, pacemaker patients). This prevents building a model that can't be clinically justified later.

## Q3. Eighteen months as a scoping gift

* **Build arrhythmia detection flawlessly and make that your Series B narrative.** One ML inference capability, done exceptionally—FDA-ready clinical validation, clear threshold logic, measured false positive rate, cardiologist endorsement. Series B investors want to see deep clinical credibility in one area, not scattered competence across two. A well-validated arrhythmia alert system is fundable; a partially validated dual-condition system is a liability.

* **Make sleep apnea detection your deliberate post-Series-A roadmap, not a month-18 afterthought.** Document the decision clearly: "We chose to validate arrhythmia rigorously in Series A runway, and we're prepared to scale to sleep apnea post-funding with specific resources and timeline." This makes constraint look strategic (investor trust) rather than failure (investor doubt).

* **Use your remaining ML and firmware capacity for battery longevity and user experience.** Extend battery life from 7 days to 10–12 days through aggressive power profiling and inference optimization. This turns a commodity spec into a competitive advantage. Investors bet on products that last, not products that barely meet spec. Also: beautiful alert design, clear privacy transparency in the app. These are table-stakes for consumer wellness and Series B confidence.

* **Build a clinical evidence pipeline as your third inference capability, not a second model.** Instead of shipping two half-validated conditions, ship one validated condition + robust logging and analysis infrastructure that makes the next condition (sleep apnea) faster to validate. Your ML team becomes "we can validate new conditions rapidly" rather than "we can detect everything but nothing rigorously."

* **Reserve 20% of the 18-month runway for regulatory documentation and FDA submission prep.** Series B investors will ask "what's your FDA strategy?" A practical company has a draft 510(k) submission in parallel with product development, not as an afterthought. Have one engineer (rotating through teams) own regulatory documentation. This doesn't slow product work; it prevents month-19 panic.

---

**Question count**: 3  
**Response count**: 15 (Q1: 5, Q2: 4, Q3: 5)  
**Tone**: Implementation-focused, constraint-aware, with emphasis on validation, alignment, and descoping as acceleration tactics

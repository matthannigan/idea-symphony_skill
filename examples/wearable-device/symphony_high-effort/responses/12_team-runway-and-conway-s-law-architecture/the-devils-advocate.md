---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "12_team-runway-and-conway-s-law-architecture"
persona: "The Devil's Advocate"
---

# Team, Runway, and Conway's-Law Architecture - The Devil's Advocate

## Q1: Resource Allocation, Scope vs. Runway, and Conway's-Law Handoffs

* **Assumption of coherent handoffs.** The question assumes firmware/ML/hardware teams will clarify responsibilities cleanly, but three ML engineers split across two clinical conditions and four sensor modalities suggests implicit role ambiguity. Have you considered that without explicit ownership of the sensor-fusion decision (which team owns the fusion algorithm vs. data preprocessing?), you risk both overwork and accidental gaps—neither team takes ownership of the full pipeline. Mitigation: assign one ML engineer as "fusion architect" with veto power over sensor-integration decisions, and require a monthly cross-team integration review where firmware/ML/hardware align on data contracts.

* **Seams as failure points under time pressure.** The NPU integration and sensor-fusion model development have a natural handoff: firmware sets up the NPU scheduling, ML validates the model fits and achieves latency targets. If these don't synchronize—if firmware assumes the model will always finish in 50ms but ML ships a 120ms model—you lose 7 days to rework. The real risk isn't one team failing; it's discovering misalignment at the integration phase when there's no slack. Mitigation: run a 2-week "integration spike" now to establish concrete NPU constraints (memory, compute budget) and validate one reference model against those constraints before parallel work accelerates.

* **Two clinical conditions may overcommit the ML team.** Arrhythmia detection and sleep apnea are different signal-processing problems with different sensor requirements and different regulatory expectations. Three ML engineers split across two problems with competing validation schedules create risk of neither being defensible. A single, richly validated condition (arrhythmia on PPG + accelerometer) with a measured false-positive rate and clinical-grade documentation is more likely to unlock Series B conversations than two partially validated conditions. Mitigation: declare one condition the "primary clinical target" for the first 9 months, validate it rigorously, then add the second condition as a stretch goal only if resources and validation data allow.

* **Probability of 18-month delivery is high only if scope is fixed now.** Without explicit scope gates and descoping criteria, the team will face the classic trap: "MVP looks achievable, let's add the second condition, let's support firmware OTA updates, let's build the companion app analytics layer." Each adds 4-8 weeks. Mitigation: document the MVP explicitly (one condition, core sync, HIPAA-basic compliance) and treat everything else as stretch goals with a clear go/no-go decision point at month 12.

* **Conway's Law guarantees that team structure becomes system structure.** With 4 firmware, 3 ML, 3 hardware, 2 mobile engineers, your system will reflect those splits: a firmware layer, an ML layer, a hardware integration layer, a mobile UI layer. If those layers have weak contracts or unclear ownership of end-to-end behavior (like "what happens when the model detects an arrhythmia?"), you'll discover it late. Mitigation: treat system architecture as a separate activity from engineering, owned by a technical lead who is not assigned to a single layer—this person's only job for the first quarter is to define the data flow, failure modes, and ownership boundaries across all four layers.

## Q2: Focused-Sprint Leverage and Cross-Functional Insight

* **Battery-accuracy tradeoff is firmware/ML coupling, not just engineering.** You can't optimize battery consumption without knowing the model's inference power draw and frequency requirements. Likewise, the model architecture (quantization depth, architecture choice, batch normalization) drives the firmware's scheduling constraints. The highest-leverage sprint pairs firmware lead with one ML engineer to jointly design the inference pipeline: firmware specifies power budget, ML specifies model candidates that fit that budget, and together they measure actual end-to-end power on real silicon. This uncovers mispredictions early. Mitigation: run this sprint now, before broad model development commitments; the learnings will inform the next 12 months of work.

* **Alternative high-leverage pairing: hardware/firmware for NPU validation.** Before the ML team finishes the first reference model, the hardware and firmware teams need to validate that the chosen NPU can actually deliver the throughput, latency, and power efficiency claimed in the datasheet. Pairing a hardware engineer with the firmware engineer for a 2-week integration sprint de-risks the entire on-device assumption. If the NPU doesn't perform as promised, better to discover it now than at month 6 when the ML model is done but can't run. Mitigation: prioritize this sprint alongside the battery-accuracy pairing.

* **Mobile/ML pairing for alert routing risks.** One overlooked seam: what happens when the wearable detects an anomaly and needs to communicate it to the mobile app? That handoff between on-device detection and mobile notification is both a technical and UX problem. Pairing the mobile lead with the ML engineer to design the alert protocol (timing, retry logic, privacy-preserving summary format) prevents later rework when the mobile app team realizes the wearable protocol doesn't match their architecture. Mitigation: this sprint clarifies the mobile data contract and surfaces schema mismatches early.

* **The sprint itself should be deliberately narrowly scoped.** Avoid the temptation to "unblock the whole pipeline." Pick one specific question (e.g., "Can we fit a quantized arrhythmia detection model in the NPU power budget?") and give the pair authority to make decisions and to document assumptions. The sprint succeeds if it produces a decision and an updated architectural constraint, not if it ships production code. Mitigation: set explicit success criteria before the sprint starts, and separate "learning sprint" deliverables (decision document, constraint updates) from engineering sprints.

## Q3: Eighteen Months as a Scoping Gift

* **Two ML use cases is overambitious if you want clinical-grade rigor.** Validating a single condition (arrhythmia or sleep apnea, not both) with sufficient rigor for a future FDA 510(k) application requires: algorithm development (2-3 months), training data curation and labeling (2-3 months), validation cohort collection (3-4 months), regulatory documentation (1-2 months). That's 8-12 months for one condition done well. Two conditions compressed into the same timeline almost guarantees one is shallow. Better to validate arrhythmia detection rigorously (with measured sensitivity/specificity, clinical documentation, and data diversity) and leave sleep apnea as a future module. Mitigation: make the single-condition choice explicit in your Series B pitch—"We've chosen to validate arrhythmia detection first because it addresses the highest-risk cardiac events; sleep apnea is a subsequent release."

* **One well-validated use case is a stronger Series B narrative.** Investors want to see proof of clinical-grade thinking and execution, not breadth. A wearable that detects arrhythmias with 95% sensitivity, 92% specificity, across diverse demographics, with full HIPAA compliance and FDA-ready documentation, is more defensible than a device that claims to detect both arrhythmias and sleep apnea but hasn't rigorously validated either. The narrower capability becomes your moat: deep technical rigor, not feature list. Mitigation: frame scoping as a strategic strength, not a limitation.

* **Battery life becomes the true competitive moat if you focus on one condition.** With fewer sensor modalities active (PPG + accelerometer for arrhythmia vs. PPG + accelerometer + microphone + temperature for dual detection), you dramatically simplify the power budget and can potentially extend battery life to 10+ days. That becomes a user-visible differentiator. Two conditions fight for sensor attention and power, diluting both. Mitigation: measure battery life as a primary KPI for the single-condition design, and use it as a market claim.

* **Validation data diversity is harder than algorithm development.** The real bottleneck for clinical rigor isn't ML engineering—it's collecting or licensing representative training and validation data across age ranges, comorbidities, and device placements. With 18 months and three ML engineers, you have enough coding capacity for two conditions but not enough data-wrangling capacity. If you focus on one condition, the same team can spend more time on data cleaning, demographic balance, and edge-case coverage. Mitigation: partner early with a clinical data provider or hospital system to access validation cohorts; this is more valuable than adding a fourth ML engineer.

* **Descoping sketch for achieving focus.** Launch with arrhythmia detection (PPG + accelerometer fusion for motion artifact filtering). Sleep apnea requires a microphone and different signal processing; descope it entirely from 1.0. HIPAA-compliant sync is in scope (a minimum for clinical viability). FDA 510(k) documentation is in scope. Companion app analytics beyond basic alert history is out of scope for 1.0. This gives you 18 months to validate one problem deeply, then Series B funding for the second condition. Mitigation: document this descoping plan as a go/no-go decision at month 6, allowing the team to reallocate resources if arrhythmia validation is tracking ahead of schedule.

---

**Response count**: 5 distinct Devil's Advocate challenges per question (15 total responses)  
**Scope**: Team structure, coordination risk, scope tradeoffs, validation rigor, resource allocation  
**Timeframe**: Immediate (2-week sprints), near-term (9-month validation windows), and full-runway (18-month delivery)  
**Stakeholders affected**: Engineering leads, ML team, product leadership, Series B investors, future clinical partnerships

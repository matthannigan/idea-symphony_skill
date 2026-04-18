# wearable-device — high — Cluster Baseline

**Input file:** test-data/wearable-device_high.md
**Total questions in input:** 179
**Synthesize-group questions:** 140 (clustered below)
**Append-group questions:** 39 (Provocateur 8, Storyteller 8, Visionary 8, Constraint Flipper 8, Connector 7 — clustered separately in B4)
**Natural cluster count (Synthesize universe):** 11

The 11 clusters reported here are derived from the 140 Synthesize-group questions. Append-group questions are intentionally excluded from B1 because Append voices are orthogonal to the Synthesize topic space and would distort cluster centroids (per D1 rationale). Append questions are clustered within their persona for round-robin selection in B4. Connector replaces Analogist per GT1 Rev 3 (inter-domain reconciliation swap trigger: biological/technical/regulatory/ecosystem bridging).

Clusters are listed in descending order of question count. Counts in parentheses next to a persona name indicate how many of that persona's questions fall in the cluster.

---

## Cluster 1: Privacy Architecture & Data Governance

**Description:** Questions about the "raw data never leaves the device" commitment and its technical, regulatory, and UX expression — HIPAA segmentation of PHI vs non-PHI, companion-app sync privacy, third-party ecosystem risk, compelled-disclosure scenarios, state-level health-data regulations (CMIA, My Health My Data Act), GDPR/CCPA data-subject rights under on-device-only architecture, re-identification from aggregated summaries, cryptographic alternatives to pure locality, privacy as user-felt trust rather than compliance checklist, and data-sovereignty positioning for international expansion. Spans the structural architecture decisions (pipeline boundaries, API design) and the experiential translation (how users viscerally feel that their data is safe). Distinct from Cluster 9 (legal liability) because the driver is data-flow/architecture and user trust, not duty-to-warn or insurance exposure.

**Question count:** 24
**Contributing personas:** Questioner (5), Lawyer (3), Futurist (3), Analyst (2), AI (2), AA (2), DA (2), Systems Thinker (2), Empath (1), FPT (1), TE (1)
**Primary dimension:** Analytical (with human-centered and strategic overlays)

**Sample questions:**
- [Questioner Q1] Data minimization paradox — sufficient training data for anomaly detection vs the minimization principle underpinning privacy best practices and regulatory requirements.
- [Questioner Q3] Re-identification risks — combination of processed alerts, aggregated summaries, and usage patterns creating unique fingerprints across platforms.
- [Analyst Q5] HIPAA-compliant data segmentation framework — what constitutes "raw" versus "processed" data at each pipeline stage; critical decision boundaries.
- [DA Q4] HIPAA Paradox — raw data never leaves device while processed alerts sync; architecture to delineate PHI from non-PHI; legal review validating before clinical partnerships.
- [Lawyer Q3] State-level medical data regulations — California CMIA, Washington's My Health My Data Act apply regardless of clinical partnerships.
- [Lawyer Q6] Data subject rights implementation — GDPR/CCPA access, deletion, portability without creating cloud-storage dependencies.
- [AI Q8] Privacy architecture as user experience, not compliance — users viscerally feel data is safe through interface design, communication, transparency.
- [Empath Q4] Privacy as a feeling, not a feature — visceral difference between "data stays on device" vs "encrypted and secure" in self-monitoring relationship.
- [Futurist Q4] Data sovereignty requirements acceleration — international residency laws; on-device positioning for international expansion.

---

## Cluster 2: Wellness-to-Clinical Pathway & Regulatory Strategy

**Description:** Questions about the product's planned trajectory from consumer wellness launch to FDA 510(k) clearance — whether to pursue clearance from day one or launch unregulated first, what architectural and data-collection decisions now enable vs obstruct later clearance, how to define the wellness/clinical boundary in marketing/UI/claims, pre-submission activities (QMS, design history files), clinical validation cadence, payer/reimbursement trajectory, and integration into remote-patient-monitoring workflows. Spans regulatory decision frameworks, clinical evidence generation, and the "regulatory convergence window" as the FDA's digital-health framework evolves. Distinct from Cluster 9 (legal liability) because this cluster is about proactive regulatory-pathway design; liability cluster addresses reactive exposure.

**Question count:** 22
**Contributing personas:** Analyst (4), Futurist (4), Lawyer (3), Questioner (3), AI (2), AA (2), Systems Thinker (1), DA (1), Empath (1), FPT (1)
**Primary dimension:** Strategic (with analytical secondary)

**Sample questions:**
- [Analyst Q9] Consumer wellness to clinical device migration pathway — phased architectural approach enabling smooth transition to FDA 510(k).
- [Analyst Q10] Regulatory strategy decision tree — FDA clearance from day one vs wellness first; opportunity cost of delayed market entry vs clinical partnerships enabled by clearance.
- [DA Q2] Wellness-to-Clinical Gap — users treating wellness alerts as medical diagnoses; product/marketing/legal safeguards; 18-month runway impact of dual-path.
- [Lawyer Q1] Wellness vs medical device boundary — where language could cross from wellness into "diagnosis" or "treatment" triggering device classification; compliance-by-design guardrails.
- [Lawyer Q2] Pre-submission strategy — QMS records, design history files, software validation supporting eventual 510(k); prudent practices even if clinical pathway never materializes.
- [Lawyer Q10] QMS scale for 12-person startup — design controls, supplier qualification, CAPA, complaint handling; quality records accelerating 510(k) prospective vs reconstructed.
- [Systems Thinker Q6] Regulatory strategy path dependency — consumer-grade data collection not meeting clinical evidence requirements; minimal architectural decisions now to avoid rebuilding.
- [Futurist Q1] Regulatory convergence window — FDA expanding SaMD and AI/ML algorithm framework; architecting today to make future 510(k) straightforward.
- [Futurist Q2] Clinical integration trajectory — RPM/CCM reimbursement codes; data export capabilities and integration hooks for hospital partnerships in 2-3 years.
- [Futurist Q10] Consumer-grade clinical convergence — gap narrowing; risk of awkward middle ground.
- [AI Q6] Regulatory success as enabler, not obstacle — FDA 510(k) as collaboration making device demonstrably more valuable; clinical partnerships enhancing rather than restricting.

---

## Cluster 3: ML Model Architecture, NPU & Compute-Power Tradeoffs

**Description:** Questions about the on-device ML architecture — model selection (CNNs for PPG vs transformer-based temporal), quantization and INT8 acceleration, NPU utilization and thermal throttling, compute-accuracy tradeoffs under power constraints, on-device incremental learning vs federated learning vs periodic firmware updates, NPU vendor lock-in and multi-vendor strategy, model update deployment asynchrony, battery-degraded capability drift over 2-3 year device lifetime, hardware-software iteration cadence, and system-robustness mechanisms (watchdog, CRC validation, fault tolerance). Spans architecture decision frameworks, specific NPU features, and long-horizon lifecycle concerns. Distinct from Cluster 4 (sensor fusion) because this cluster is about the ML/compute layer above the sensor pipeline.

**Question count:** 20
**Contributing personas:** Analyst (4), Questioner (4), TE (3), DA (3), Systems Thinker (2), FPT (2), Futurist (2)
**Primary dimension:** Analytical (with tactical secondary)

**Sample questions:**
- [Analyst Q1] Model architecture decision framework — model complexity, inference frequency, quantization tradeoffs; CNNs vs transformer approaches for temporal pattern recognition.
- [Analyst Q4] Inference latency vs accuracy tradeoff curve — acceptable latency window for real-time cardiac arrhythmia detection.
- [Analyst Q6] On-device learning strategy evaluation — incremental vs federated vs firmware updates; regulatory, UX, complexity, maintenance tradeoffs.
- [DA Q6] Model Drift Without Retraining — on-device ML facing drift from sensor degradation, user physiology, firmware updates, population shifts; monitoring infrastructure.
- [DA Q7] NPU Lock-in Risk — vendor dependency limiting model architecture flexibility; multi-vendor strategies for optionality.
- [DA Q8] Compute-Accuracy Tradeoff — low-power MCU+NPU constraints on model complexity; specific accuracy thresholds; validation that power hasn't forced unacceptable compromises.
- [Questioner Q17] NPU utilization limits — percentage of theoretical capacity sustainable given thermal constraints; user experience when throttling for heat or power.
- [Questioner Q20] Hardware-software iteration cadence — 18-month hardware cycles vs weekly software updates; leveraging future silicon without expensive respins.
- [Systems Thinker Q4] Power-consumption detection spiral — sophisticated ML → more power → more charging gaps → missing events; 2-3 year battery degradation forcing throttling.
- [Systems Thinker Q7] Model update sync-asynchrony problem — multiple model versions in the wild; attribution of detection changes; phased rollouts, versioning in alert data.
- [TE Q1] Model quantization and architecture selection — asymmetric architectures where sleep analysis uses simpler model than cardiac event detection.
- [TE Q2] NPU utilization — INT8 acceleration, sparse compute, zero-point quantization; fallback paths for firmware updates.
- [TE Q9] Fault tolerance and recovery — watchdog recovery from NPU hangs, CRC validation of model weights, sensor drift detection, safe mode.
- [FPT Q6] NPU assumption — matrix multiplication as bottleneck vs traditional ML or statistical signal processing; equivalent clinical utility with less power.
- [FPT Q10] What does on-device ML actually solve — personalization vs connectivity independence vs privacy; which is the true first-order benefit.

---

## Cluster 4: Alert Design, Thresholds & False Positive Management

**Description:** Questions about the alert system — threshold calibration balancing sensitivity against alert fatigue and liability, false positive burden on anxious 40+ users, user perception and trust when receiving alerts they can't verify, emotional toll of false alarms, alert actionability (connection to treatment and intervention), alert fatigue and retention dynamics over time, alert framing and therapeutic-dependency shifts, deterministic inference latency for sub-5-second cardiac response, and the unique social friction of health alerts interrupting meaningful moments. Spans calibration mechanics, emotional/psychological consequences, and the balancing loop between sensitivity and trust erosion. Distinct from Cluster 5 (hyper-vigilance) because this cluster addresses the alert-event dynamic specifically; Cluster 5 addresses continuous-monitoring effects.

**Question count:** 15
**Contributing personas:** AA (4), DA (2), Systems Thinker (2), Empath (2), Analyst (1), AI (1), Questioner (1), Futurist (1), TE (1)
**Primary dimension:** Human-centered (with analytical secondary)

**Sample questions:**
- [Analyst Q7] False positive/false negative calibration protocol — systematic threshold determination; quantifying costs of missed detection vs unnecessary anxiety and alert fatigue.
- [DA Q1] False Positive Burden — ML generating frequent false positives on anxious 40+; ER visits, specialist consultations, alert fatigue vs liability from misses.
- [DA Q12] Alert Actionability Gap — detection without connecting to treatment/intervention pathways; ensuring alerts lead to meaningful action rather than anxiety.
- [AA Q1] User perception of alerts from device they don't fully understand — emotional journey when alert arrives about cardiac anomaly; privacy-transparency balance affecting trust.
- [AA Q2] Users discovering the device makes mistakes but can't access raw data — false positive during job interview/wedding/sleep; agency and trust when device gets it wrong.
- [AA Q9] Power dynamics when users receive alerts they can't verify or challenge — "your heart rhythm was abnormal last night" without context; bodily autonomy and relationship with own signals.
- [AA Q11] Unspoken needs around false positives in social/professional contexts — arrhythmia alert in business meeting, first date, sleeping with partner; dignity and context.
- [Empath Q3] False alarms and emotional whiplash — adrenaline spike at 3 AM, scramble to verify, lingering "it was nothing"; cry-wolf dynamic becoming dangerous.
- [Empath Q9] The promise that can't be kept — when device inevitably misses something; designing expectations that don't set users up for betrayal.
- [Questioner Q13] Alert threshold ethics — optimal sensitivity/specificity when stakeholders have different definitions (users want peace of mind, clinicians want diagnostic utility, company wants to avoid liability).
- [Systems Thinker Q1] Alert fatigue calibration loop — false positives → trust erosion → notifications disabled → no protective benefit; "better safe than sorry" vs "boy who cried wolf."
- [Systems Thinker Q10] Alert framing therapeutic expectation loop — users interpret as medical guidance creating liability; over-disclaim ("consult a doctor") causes ignoring; Shifting the Burden dependency eroding body awareness.
- [Futurist Q12] Alert fatigue and retention dynamics — documented decline in engagement with notification-based interventions; designing alert strategy without contributing to burnout.
- [TE Q8] Deterministic inference latency — cardiac event detection requiring <5 second response; worst-case latency guarantees during background operations.

---

## Cluster 5: User Experience, Hyper-Vigilance & Emotional Impact

**Description:** Questions about the continuous-monitoring psychological experience — emotional toll of living under constant health surveillance, anxiety of optimization when users become obsessed with micro-fluctuations, technology-as-authority shifting users' trust from their own body signals to the device, wrist-compliance challenges (users removing devices for sleep/water/forgetting), body image and health anxiety over months of wear, observer-effect feedback where monitoring changes the monitored behavior, and the emotional evolution from curiosity to anxiety/complacency. Spans Empath's felt-experience framings, AA's stakeholder-journey concerns, AI's aspirational moments, and Systems Thinker's health-anxiety reinforcement cycle. Distinct from Cluster 4 (alerts) because this cluster addresses continuous-wear dynamics, not alert events.

**Question count:** 14
**Contributing personas:** Empath (6), AI (3), AA (2), Systems Thinker (2), DA (1)
**Primary dimension:** Human-centered (with creative secondary)

**Sample questions:**
- [AI Q1] Peak moments in personal health awareness — conditions that make insight possible; device creating more such moments routinely.
- [AI Q3] Technologies that become invisible partners — seamlessly helpful tool that felt like natural extension of awareness; subtle design choices creating that relationship.
- [AI Q4] Three years later, what users celebrate — not features but how it changed their relationship to body and health; specific moments recounted with genuine gratitude.
- [AA Q10] Users' relationship with device evolving — initial excitement → hyper-vigilance or alert fatigue → anxiety during charging gaps → stop wearing; healthy engagement patterns.
- [AA Q12] Body image and health anxiety over months — hyper-awareness of physiological signals; psychological effects of continuous self-monitoring especially for pre-existing anxiety.
- [DA Q11] Wrist Compliance Challenge — users removing devices for sleep discomfort, exercise, water, forgetting; 40+ target with less consistent wearable habits.
- [Empath Q1] Living under constant watch — constant background vigilance impact on sense of ease and trust in own health.
- [Empath Q2] The weight of knowing — device stays silent: peace of mind or ignorance; "no news is good news" vs detection limitation.
- [Empath Q5] When technology becomes the authority — device telling users "you're fine" or "something's wrong"; trusting the machine over own sensations.
- [Empath Q6] The anxiety of optimization — continuous quantified data leading to obsession with micro-fluctuations; hypervigilance masquerading as empowerment.
- [Empath Q8] The intimacy of breathing sounds — device listening to breathing during sleep; boundary between monitoring and intrusion; "watching over you" vs "watching you."
- [Empath Q11] The gadget that signals something's wrong — device designed to deliver bad news; comforting safety net or constant reminder of mortality; can it be both.
- [Systems Thinker Q2] Health anxiety reinforcement cycle — more data visibility → more attention to minor fluctuations → more anxiety → more checking; normalizing variation, delaying displays.
- [Systems Thinker Q3] Behavioral adaptation shadow system — observer effect; users sleeping differently knowing they're tracked; adaptation patterns differing by adopter segment.

---

## Cluster 6: Sensor Fusion & Signal Quality

**Description:** Questions about combining asynchronous multi-modal sensor data (PPG 50Hz, accelerometer 25Hz, skin temperature 1Hz, microphone 100Hz bursts) — early-fusion vs late-fusion vs hybrid-attention architectures, signal-quality validation (motion artifacts, PPG perfusion, sensor fault detection), graceful degradation when one sensor fails (PPG contact with skin tone or tattoos, sensor dislodgement during sleep), manufacturing variability across units without per-device calibration, edge cases in continuous sensing (battery depletion mid-sensing, firmware update states, thermal throttling), and the first-principles question of the minimum information-theoretic sensor set for the target conditions. Spans architectural decomposition, robustness engineering, and the meta-question of sensor-stack irreducibility.

**Question count:** 9
**Contributing personas:** TE (3), Questioner (3), Analyst (1), Systems Thinker (1), FPT (1)
**Primary dimension:** Analytical (with tactical secondary)

**Sample questions:**
- [Analyst Q2] Sensor fusion strategy for multi-modal anomaly detection — early fusion (raw) vs late fusion (per-sensor feature extraction); framework and tradeoff between computational cost and detection sensitivity.
- [Questioner Q8] Sensor failure graceful degradation — PPG contact issues with skin tone/tattoos; pipeline gracefully degrading rather than producing unreliable outputs.
- [Questioner Q18] Sensor fusion complexity — fusion architecture scaling with additional inputs; marginal benefit vs computational/calibration costs.
- [Questioner Q19] Manufacturing variability impact — hardware tolerances and sensor calibration across units; consistent model performance without per-device calibration.
- [Systems Thinker Q11] Sensor fusion interdependence fragility — PPG contact becomes unreliable → model over-weights remaining sensors producing false confidence; training with artificial sensor dropout.
- [TE Q4] Multi-modal sensor fusion architecture — asynchronous sensor inputs while maintaining causality for real-time alerts; early/late/hybrid attention gating.
- [TE Q5] Signal quality validation — motion artifact detection, PPG perfusion validation, sensor fault detection gating inference inputs.
- [TE Q6] Edge cases in continuous sensing — sensor dislodgement during sleep, battery depletion mid-sensing, firmware mid-update, thermal throttling.
- [FPT Q9] Irreducible minimum of sensor inputs — minimum information-theoretic signal for arrhythmias and sleep apnea; 80% clinical value with single sensor.

---

## Cluster 7: Power Budget & Battery Life

**Description:** Questions about the 7-day battery target — whether the target is realistic given continuous PPG/accelerometer/temperature/microphone sensing plus on-device ML inference and display/BLE, power budget allocation methodology across subsystems, charging disruption creating monitoring gaps, sub-5mW average power draw decomposition across sensing/compute/storage/communication, first-principles questions about whether "7 days" is the right target at all vs designing from user behavior patterns or from power-as-primary-constraint, battery-technology energy-density trajectory, battery-degradation drift over device lifetime, and AI's reframing of battery life as experience-design rather than spec. Distinct from Cluster 3 (ML architecture) because this cluster addresses the power-budget envelope; Cluster 3 addresses compute tradeoffs within that envelope.

**Question count:** 10
**Contributing personas:** DA (2), FPT (2), Analyst (1), AI (1), Questioner (1), Systems Thinker (1), Futurist (1), TE (1)
**Primary dimension:** Analytical (with tactical secondary)

**Sample questions:**
- [Analyst Q3] Power budget allocation methodology — systematic breakdown of 7-day target across sensing/inference/display/communication; maximum inference energy budget per analysis cycle.
- [AI Q9] Battery life as invitation, not constraint — when device longevity changed how you used it, made it more present, less fretful; design choices contributing to peace of mind.
- [DA Q5] Battery Reality Check — 7-day life with continuous sensing + ML + display + BLE as aggressive target; specific power budget modeled; contingency if NPU/sensors consume more.
- [DA Q10] Charging Disruption — weekly charging creating gaps in monitoring; handling gaps, user education, hot-swappable batteries.
- [Questioner Q16] 7-day battery reality check — assumptions about charging frequency, display usage, BLE sync embedded in target; real-world patterns dramatically different.
- [Systems Thinker Q8] Battery-degraded capability drift — 15-25% capacity loss over 2-3 years forcing throttling; marketing promised 7 days; graceful degradation vs sudden capability loss.
- [FPT Q4] What does 7 days actually buy us — first-principles argument for 7 specifically; designing from user behavior (nightly routines, weekly sync habits) vs round numbers.
- [FPT Q5] Invert the power budget paradigm — power as primary constraint; "we have X milliwatts continuous — what is maximum clinical value we can deliver" vs fitting features into budget.
- [Futurist Q9] Battery technology constraints — energy density improvements slowing relative to computational demands; graceful degradation preserving core detection.
- [TE Q7] Battery budget decomposition — sub-5mW average power for 7 days across sensing/compute/storage/communication; leverage points for optimization.

---

## Cluster 8: Personalization, Validation & Clinical Evidence

**Description:** Questions about the personalization-vs-population-model boundary — concept drift in individual baselines as users age/change lifestyle/intervene medically, on-device personalization strategies within SRAM constraints, federated learning feasibility given hardware and communication heterogeneity, gold-standard data acquisition for validation without labeled clinical data, clinical-validation self-selection bias (study participants differ from eventual mainstream), and first-principles questions about whether "anomaly detection" is the right ML primitive or whether the problem is "pattern recognition for known pathological signatures." Distinct from Cluster 3 (ML architecture) because this cluster addresses evidence generation and what-problem-are-we-solving framings; Cluster 3 addresses how the compute is structured.

**Question count:** 7
**Contributing personas:** Questioner (3), FPT (2), Systems Thinker (1), TE (1)
**Primary dimension:** Analytical (with strategic secondary)

**Sample questions:**
- [Questioner Q6] Personalization boundary — population-level models vs individual-user-data personalization; technical approach traversing the boundary incrementally as trust develops.
- [Questioner Q7] Concept drift in health baselines — "normal" evolving over months/years (aging, lifestyle, interventions); distinguishing benign shifts from early warning signs.
- [Questioner Q12] Gold standard data acquisition — without labeled clinical data, establishing that detection actually catches claimed conditions vs noise or correlated patterns.
- [Systems Thinker Q9] Clinical validation data self-selection bias — motivated study participants differ from mainstream; potential "Fixes that Fail"; stratifying study, weighting training, modeling concerned-vs-casual users.
- [FPT Q3] Is anomaly detection the right primitive — for many cardiac/respiratory conditions, the dangerous state IS the patient's normal; pattern recognition for known pathological signatures vs deviation from baseline.
- [FPT Q8] Are we solving the right clinical problem for the right user — continuous monitoring creating net positive outcomes for 40+; "maximize clinically-meaningful interventions per unit user anxiety" vs "maximize detection sensitivity."
- [TE Q3] On-device personalization strategy — online learning with tiny updates, periodic recalibration using stored history, user-supplied labels within 128KB SRAM; privacy implications of each.

---

## Cluster 9: Legal Liability, Duty to Warn & Compliance Exposure

**Description:** Questions about the manufacturer's legal exposure under the hybrid wellness/clinical positioning — false-negative liability when device fails to detect genuine arrhythmias, duty to warn vs user responsibility for dismissed alerts or charging-window gaps, BAA structuring for clinical partnerships where raw data remains on-device, insurance coverage (product/cyber/professional E&O) during pre-clearance period, and general liability exposure for missed events. Distinct from Cluster 1 (privacy architecture) because this cluster addresses manufacturer exposure for detection failures and device-manufacturer/user-responsibility allocation; Cluster 1 addresses data-flow governance.

**Question count:** 5
**Contributing personas:** Lawyer (4), DA (1)
**Primary dimension:** Analytical (with strategic overlay)

**Sample questions:**
- [DA Q3] Liability for Missed Events — even with robust ML some arrhythmias/apnea will be missed; legal liability exposure; product limitations, user agreements, transparency managing risk.
- [Lawyer Q5] BAA structure for clinical partnerships — hospital wants device for RPM post-discharge; who is covered entity vs business associate; HIPAA access/transmission obligations in hybrid architecture.
- [Lawyer Q7] False negative liability exposure — targeting users with family history of cardiac events; positioning, user-agreement language, clinical-validation strategy mitigating wrongful-death claims.
- [Lawyer Q8] Duty to warn vs user responsibility — dismissed alerts, 7-day battery gaps creating monitoring windows; behavioral patterns (acknowledgement, log dismissals, clinical follow-up) creating evidentiary record.
- [Lawyer Q9] Insurance requirements — product liability, cyber liability, professional liability/E&O; policy exclusions for "medical devices" affecting wellness-phase coverage.

---

## Cluster 10: Business, Team, Runway & Go-to-Market

**Description:** Questions about business viability at the 12-engineer startup stage — BOM cost allocation across MCU/NPU/sensors/battery/connectivity, runway allocation across firmware/ML/hardware/clinical-evidence over 18 months of Series A, per-unit regulatory-compliance cost (HIPAA infrastructure, FDA preparation, ongoing maintenance), 12-engineer team cross-functional dynamics, competitive differentiation against Apple Watch/Fitbit/Oura/traditional medtech, the minimum viable experiment to validate human response this month, existing assets already being taken for granted, and wearable-category bifurcation between generalist smartwatches and specialized health devices. Distinct from Cluster 2 (wellness-to-clinical) because this cluster addresses internal resource/business dynamics; Cluster 2 addresses external regulatory trajectory.

**Question count:** 9
**Contributing personas:** AI (3), Analyst (2), DA (2), Futurist (1), FPT (1)
**Primary dimension:** Strategic (with analytical secondary)

**Sample questions:**
- [Analyst Q12] Unit economics and BOM optimization — MCU/NPU/sensors/battery/connectivity component costs; sensitivity analysis on gross margins; economies of scale shifts.
- [Analyst Q13] Runway allocation across technical milestones — 18-month Series A across firmware/ML/hardware/clinical evidence; gate dependencies; contingency buffer for regulatory delays.
- [DA Q13] Commodity Pressure — market crowded with Apple Watch, Fitbit, Oura, traditional medtech; differentiation beyond "on-device ML"; moats via data advantages, regulatory positioning, sensor fusion, clinical partnerships.
- [DA Q14] Runway Reality — 18 months tight for hardware + ML + regulatory + launch; pivot from wellness to clinical; milestone timelines, cuts if overruns, contingency funding.
- [AI Q7] What the 12-engineer team already does well — firmware/ML/hardware/mobile cross-functional collaboration producing something extraordinary; meeting structures, communication, decision rituals making diversity a superpower.
- [AI Q11] The smallest meaningful experiment — smallest prototype or user test this month giving genuine insight into whether we're building something people care about; human reaction test, not technical feasibility.
- [AI Q12] Existing assets we haven't fully leveraged — strengths taken for granted; advantages competitors would envy; amplifying natural advantages from day one.
- [Futurist Q3] Wearable category evolution — market bifurcating between generalist smartwatches and specialized health devices; positioning strategy; standalone vs broader wearable ecosystem integration.
- [FPT Q1] Why a wearable at all — setting aside current form-factor assumption; core problem of continuous health monitoring with privacy; bedside device, smart home, smartphone sensors achieving same goals with fewer constraints.

---

## Cluster 11: Accessibility, Equity & User Diversity

**Description:** Questions about users whose bodies, routines, or contexts don't match the default design assumptions — bodies outside the training data distribution (skin tone, wrist size, HRV range, movement patterns), users with disabilities (tremors, limited dexterity, visual or sensory-processing differences), users whose schedules don't match charging patterns (frequent travel, unreliable outlets, long shifts, cognitive differences), the ethics of targeting 40+ users with family-history cardiac risk (serving agency vs amplifying fear), and the meta-question of who self-selects to wear a device designed to find problems. Distinct from Cluster 5 (hyper-vigilance) because this cluster addresses design assumptions about who the user IS; Cluster 5 addresses psychological effects of continuous wear on any user.

**Question count:** 5
**Contributing personas:** AA (3), Empath (2)
**Primary dimension:** Human-centered (with strategic overlay)

**Sample questions:**
- [AA Q4] Bodies or health conditions that don't fit the training data distribution — skin tone, wrist size, HRV, movement patterns underrepresented; silent workarounds around inaccurate readings.
- [AA Q5] Barriers users with disabilities face in interacting with wrist-worn health device — tremors, limited dexterity, visual impairments, sensory processing differences; assumptions about "ideal" users.
- [AA Q6] 7-day battery life interacting with users whose routines don't match charging patterns — frequent travel, unreliable outlets, long shifts, cognitive differences; graceful degradation preserving dignity.
- [Empath Q7] Who signs up for early detection — self-care or pre-emptive fear; designing for already-anxious people vs people who want to stay healthy.
- [Empath Q10] Targeting the 40+ demographic — serving people who want agency or amplifying "what happened to my parent might happen to me" fear; ethical difference.

---

## Orphan Questions (Not Cluster-Forming)

Questions that fit ambiguously across multiple clusters or address concerns not large enough to form their own cluster. Each is annotated with cluster-assignment ambiguity rather than forced into a single cluster.

| Question | Persona | Ambiguity / Reason |
|---|---|---|
| AI Q2 (Privacy creates trust and openness) | AI | Bridges Cluster 1 (privacy architecture) and Cluster 5 (user-felt experience); AI's strengths-based privacy-as-openness framing bridges both |
| AA Q3 (Wellness vs clinical device interpretation) | AA | Bridges Cluster 2 (regulatory pathway) and Cluster 4 (alert interpretation); stakeholder-interpretation framing distinctive |
| AA Q7 (User control beyond HIPAA) | AA | Bridges Cluster 1 (privacy) and Cluster 4 (alert agency); "what users want beyond legal compliance" framing |
| AA Q8 (Sharing insights vs protecting privacy tension) | AA | Bridges Cluster 1 (privacy) and Cluster 2 (clinical pathway); user's desire to share with doctors vs on-device constraint |
| AA Q13 (Transition when users develop actual health concerns) | AA | Bridges Cluster 2 (wellness-clinical) and Cluster 4 (alert translation); journey-mapping framing distinctive |
| Empath Q12 (Transition wellness to medical emotional shift) | Empath | Bridges Cluster 2 (regulatory) and Cluster 5 (emotional impact); "I'm helping you" → "I'm diagnosing" felt shift |
| DA Q9 (Privacy Paradox Perception) | DA | Bridges Cluster 1 (privacy architecture) and Cluster 5 (user-felt experience); non-technical communication framing |
| Systems Thinker Q5 (Privacy-performance delayed feedback) | ST | Bridges Cluster 1 (privacy) and Cluster 3 (ML architecture); path-dependency framing on future capability |
| Systems Thinker Q12 (Companion app bidirectional influence) | ST | Bridges Cluster 3 (ML/updates), Cluster 4 (alerts), and Cluster 8 (personalization/validation); feedback-loop framing spans all three |
| TE Q10 (Privacy-preserving telemetry architecture) | TE | Bridges Cluster 1 (privacy) and Cluster 3 (ML debugging); HIPAA-compatible telemetry for improving models |
| Futurist Q7 (Edge ML capability trajectory) | Futurist | Bridges Cluster 3 (ML architecture) and Cluster 2 (regulatory pathway — hardware 2-3 gen improvement); trend-grounding distinctive |
| Futurist Q8 (Federated learning infrastructure timing) | Futurist | Bridges Cluster 3 (ML updates) and Cluster 8 (validation); investment-now-for-18-24-months framing |
| Futurist Q11 (Payer coverage expansion) | Futurist | Bridges Cluster 2 (clinical integration) and Cluster 10 (business); reimbursement trajectory distinctive |
| Futurist Q5 (Consumer privacy expectations trajectory) | Futurist | Bridges Cluster 1 (privacy) and Cluster 10 (business positioning); "communicating data minimization as value proposition" |
| Futurist Q6 (HIPAA evolution and beyond) | Futurist | Bridges Cluster 1 (privacy) and Cluster 9 (legal compliance); state-patchwork framing distinctive |
| FPT Q7 (Wellness vs clinical technical boundary) | FPT | Bridges Cluster 2 (regulatory) and Cluster 8 (validation); reductive "what does wellness vs clinical mean at technical level" framing |
| FPT Q2 (On-device vs cryptographic privacy) | FPT | Bridges Cluster 1 (privacy) and Cluster 3 (ML architecture); "deconstruct privacy requirement — raw data vs any inference" framing |
| Lawyer Q4 (De-identification standards) | Lawyer | Bridges Cluster 1 (privacy architecture) and Cluster 9 (compliance); reverse-engineering risk framing spans both |

**Orphan count:** 18 of 140 (~13%). This is lower than tool-library/high (~30%) and food-truck/high (~17%). Driver: wearable-device's concerns decompose cleanly into architectural domains (privacy, ML, sensors, power, alerts, regulatory, UX) with fewer multi-cluster bridge topics. The orphans are concentrated in (a) Futurist's trend-grounded questions that span privacy/clinical trajectory boundaries, (b) AA's stakeholder-interpretation bridges, and (c) Systems Thinker's archetype-spanning feedback loops. These orphans are not dropped — they feature in B3 as "Must include" or "Should include" candidates with explicit placement decisions.

---

## C1 Comparison: Per-Persona vs Flat Pooling

C1 (folded into B1 per methodology §"Relationship to Remaining Phase 2B Items") asks whether per-persona clustering helps or hinders synthesis vs flat pooling.

### Method

- **Per-persona clustering pass:** read each persona's questions in isolation, identify each persona's internal clusters, then attempt to align across personas.
- **Flat pooling pass:** treat all 140 Synthesize-group questions as a single unattributed pool, cluster by theme.

The 11 clusters above are the **flat-pooling result**. For comparison, the per-persona pass produced these distinct artifacts:

### Per-Persona Pass — Differences from Flat-Pooling Result

1. **Cluster 1 (Privacy Architecture) fragments persona-by-persona** in per-persona view. Questioner frames it as definitional paradoxes (data minimization, re-identification); Lawyer frames as jurisdictional (state laws, GDPR, BAA); Analyst frames as pipeline segmentation; DA frames as paradox (HIPAA data flow); AI/Empath frame as user-felt trust; Futurist frames as expectation trajectory; FPT frames as "what does privacy actually require." Flat pooling reveals the privacy question as *one* cluster with 9 distinct framings — showing cross-persona convergence that per-persona view fragments.

2. **Cluster 2 (Wellness-to-Clinical Pathway) and Cluster 9 (Legal Liability) merge** in per-persona view. Lawyer treats regulatory-pathway decisions and liability exposure as a single bucket internally. Flat pooling separates them because Cluster 2 is about the *trajectory* (pursue 510(k) when, invest in design controls now) while Cluster 9 is about *exposure* (liability for missed events, duty to warn). Mergers that collapse these lose the distinction between "what regulatory path do we pursue" and "what liability exposure do we carry."

3. **Cluster 3 (ML Architecture) and Cluster 6 (Sensor Fusion) merge** in per-persona view for TE, Analyst, Questioner. Each persona treats the technical stack as a single topic. Flat pooling separates because Cluster 3 is about the compute layer (NPU, models, quantization, updates) and Cluster 6 is about the sensor layer (fusion, signal quality, graceful degradation). Design decisions differ: NPU choice is orthogonal to fusion architecture. TE Q4 (fusion architecture) and TE Q1 (model quantization) are in different clusters by flat pool despite sharing TE's engineering voice.

4. **Cluster 4 (Alerts) and Cluster 5 (Hyper-Vigilance) merge** in per-persona view because AA, Empath, Systems Thinker address both continuously. Flat pooling separates because Cluster 4 is about event-level dynamics (specific alert → interpretation → action) while Cluster 5 is about continuous-wear effects (living under monitoring, body awareness, anxiety). Both human-centered but different tactical implications — one suggests alert-UX redesign, the other suggests continuous-engagement patterns (normalizing variation, smoothing displays).

5. **Cluster 10 (Business) is AI-and-DA-and-Analyst-only cluster** in per-persona view. Flat pool confirms this but expands with Futurist Q3 (category bifurcation) and FPT Q1 (why a wearable at all). This cluster is smallest-N but strategically load-bearing — runway, moat, team dynamics, BOM — that persona-by-persona view risks scattering into individual-persona concerns rather than recognizing the unified business-viability thread.

6. **Cluster 11 (Accessibility) is AA-and-Empath only** in both views. Flat pool count (5) matches per-persona result closely. No additional personas contribute.

### Bias Check

Per-persona clustering systematically **over-weights the persona with the largest contribution** to a theme, and **under-counts cross-persona convergence**. In this universe:
- Questioner contributes 5 of 24 Cluster 1 questions (~21%), Lawyer contributes 3 (~13%), Futurist 3 (~13%) — per-persona view would split into separate Questioner-privacy, Lawyer-compliance, Futurist-trajectory sub-clusters and miss the topic-level unity.
- Empath contributes 6 of 14 Cluster 5 questions (~43%) — per-persona view over-weights Empath, treats Cluster 5 as "Empath emotional cluster," and strips the Systems Thinker archetypal framings (Q2, Q3) and AI aspirational framings (Q1, Q3, Q4).
- AA contributes 3 of 5 Cluster 11 questions (~60%) — per-persona view accurately represents AA dominance here but under-counts Empath's ethical/demographic framings (Q7, Q10) that extend the accessibility lens to "who self-selects" and "what does targeting mean ethically."
- TE contributes 3 of 9 Cluster 6 questions (~33%) and 3 of 20 Cluster 3 questions (~15%) — per-persona view treats TE as one engineering block, losing the sensor-layer vs compute-layer distinction.
- Futurist distributes 11 questions across 5 clusters — per-persona view produces a single "Futurist trends" cluster, losing the fact that Futurist questions naturally align with the topic's architectural clusters when the trend-decoration is stripped.

### SP1 Recommendation: **Use flat pooling.**

Flat pooling produces:
- More clusters (11 vs ~7 for per-persona)
- Better separation of Cluster 3 (ML compute) from Cluster 6 (sensor fusion) — two engineering clusters at different architectural layers
- Better separation of Cluster 4 (alerts) from Cluster 5 (hyper-vigilance) — two human-centered clusters addressing different temporal dynamics
- Better separation of Cluster 2 (regulatory pathway) from Cluster 9 (liability exposure) — two legal/strategic clusters addressing different timescales
- Better cross-persona convergence detection (Cluster 1 privacy is clearest — 11 personas contribute, flat pooling makes convergence visible)

For SP1 scoring, synthesis prompt variants should be evaluated against the flat-pool cluster set (the 11 above). Variants producing ~7 clusters that mirror the per-persona structure should be scored as under-clustering — conflating distinct design concerns rather than a valid alternative organization.

**One caveat:** flat pooling may obscure persona representation. SQ3 scoring (persona representation) should *cross-check* the per-persona view: if flat-pool synthesis produces a Cluster 5 (Hyper-Vigilance) that includes only Empath framings and strips Systems Thinker archetypes or AI aspirational framings, persona representation is failing even if the cluster theme is correct.

**Topic-specific caveat:** Wearable-device/high orphan rate (~13%) is the *lowest* observed so far — lower than food-truck/high (~17%), tool-library/high (~30%), and habit-tracker/high (~18%). Cluster structure is unusually clean. SP1 should penalize variants for mis-placing orphans less leniently than in tool-library or habit-tracker — wearable-device has fewer ambiguous multi-cluster bridge questions, so mis-placement indicates a real synthesis error.

**Cell-specific caveat — GT1 watchlist:** Wearable-device/high is **NOT on the GT1 medium-confidence watchlist.** GT1 Rev 3 prescribes Connector (not Analogist) and Lawyer + Technical Expert as Tier 3 Synthesize. The Connector swap is the topic-level decision based on the topic's inter-domain reconciliation trigger (biological nervous system, game design, automotive safety, regulatory tailwinds). Lawyer and TE are strongly-triggered Tier 3 Synthesize personas for a device with regulatory/compliance exposure and genuine technical architecture. All Tier 3 selections are high-confidence; cluster structure here is stable. If SP1 later produces anomalously poor scores on this cell, the cause is variant-level, not GT1-level.

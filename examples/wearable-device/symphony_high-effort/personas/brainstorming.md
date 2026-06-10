---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 2 Step 2.4: Brainstorming Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Brainstorming Persona Selections: On-Device ML Health Monitoring Wearable

## Summary Table

| Cluster | Topic | Core | Inner Ring (2) | Middle Ring (3) |
|--|--|--|--|--|
| 01 | Foundational Premises and First-Principles Reframings | Devil's Advocate, Pragmatist | First Principles Thinker, Simplifier | Provocateur, Constraint Flipper, Analogist |
| 02 | Power Budget, Thermodynamics, and Duty-Cycle Architecture | Devil's Advocate, Pragmatist | Technical Expert, First Principles Thinker | Constraint Flipper, Systems Thinker, Analogist |
| 03 | ML Architecture, Quantization, and Sensor Fusion | Devil's Advocate, Pragmatist | Technical Expert, Simplifier | Systems Thinker, Connector, Analogist |
| 04 | Model Lifecycle, Drift, and Update Strategy | Devil's Advocate, Pragmatist | Technical Expert, Systems Thinker | Futurist, Analogist, Constraint Flipper |
| 05 | Privacy Architecture and the Capability-Gap Tradeoff | Devil's Advocate, Pragmatist | Systems Thinker, First Principles Thinker | Constraint Flipper, Visionary, Analogist |
| 06 | HIPAA, PHI Boundaries, and the Sync Protocol | Devil's Advocate, Pragmatist | Lawyer, Technical Expert | Systems Thinker, Analogist, Futurist |
| 07 | Regulatory Pathway from Wellness to 510(k) | Devil's Advocate, Pragmatist | Lawyer, Futurist | Systems Thinker, Visionary, Provocateur |
| 08 | False-Positive / False-Negative Tradeoffs and Liability | Devil's Advocate, Pragmatist | Lawyer, Empath | Systems Thinker, Provocateur, Storyteller |
| 09 | Population, Equity, and Embodied Difference | Devil's Advocate, Pragmatist | Audience Advocate, Empath | Storyteller, Provocateur, Futurist |
| 10 | Lived Experience — Trust, Anxiety, and the Felt Texture of Wearing the Device | Devil's Advocate, Pragmatist | Empath, Storyteller | Audience Advocate, Visionary, Connector |
| 11 | Doctor-Patient Translation, Reassurance, and the Clinical Bridge | Devil's Advocate, Pragmatist | Audience Advocate, Storyteller | Empath, Connector, Systems Thinker |
| 12 | Team, Runway, and Conway's-Law Architecture | Devil's Advocate, Pragmatist | Systems Thinker, Simplifier | Momentum Builder, Constraint Flipper, Connector |
| 13 | Competitive Landscape and Strategic Moat | Devil's Advocate, Pragmatist | Futurist, Visionary | Systems Thinker, Analogist, Constraint Flipper |

## Per-Cluster Rationale

### Cluster 01: Foundational Premises and First-Principles Reframings

**Topic classification:** Technical/Product with strong Novel/Ambiguous overlay (questions ask whether the framing itself is wrong — wrist-as-given, anomaly-vs-normalcy, biological symbiosis).
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- First Principles Thinker — the cluster is literally about first-principles reframings (information-theoretic floors, MDL of arrhythmia models, sensor independence audits); Analytical Core.
- Simplifier — questions ask which sensor channels can be removed and whether a decision tree replaces the NPU; subtractive thinking is on-topic; Progressive/Elaborative pair.
- Provocateur — Q4 (health as personal-signature substrate) and Q5 (biological symbiosis) explicitly invite absurdist reframings; completes Challenge Triad with DA; Challenge Triad.
- Constraint Flipper — reframes "wrist-as-given" and "microphone is required" constraints as design choices rather than facts; completes Challenge Triad.
- Analogist — novel/ambiguous framings (symbiosis, personal signature) benefit from cross-domain imports (ecology, music, biometrics); External Perspectives.

**Cluster-family check:** Analytical Core has 2 (Pragmatist, FPT) — pass. Challenge Triad complete (DA, Provocateur, CF) = 3 — pass at the cap. No family exceeds 3.

### Cluster 02: Power Budget, Thermodynamics, and Duty-Cycle Architecture

**Topic classification:** Technical/Product (zero-based energy budget, Landauer bound, analog gating, firmware scheduling).
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Technical Expert — MCU/NPU subsystem mWh/day budgets, BLE radio dominance, analog comparator gating; Analytical Core.
- First Principles Thinker — Shannon/Landauer thermodynamic floor questions are pure first-principles; Analytical Core.
- Constraint Flipper — Q3 ("forced simplicity as a feature") explicitly reframes the battery constraint as an opportunity; Challenge Triad.
- Systems Thinker — Q4 stage-management framing maps directly to feedback loops, resource-reservation windows, graceful degradation; External Perspectives.
- Analogist — Q4 imports stage management as the governing analogy; the cluster invites further parallels (power-grid load shedding, real-time OS scheduling); External Perspectives.

**Cluster-family check:** Analytical Core has 3 (Pragmatist, TE, FPT) — at cap. External Perspectives has 2 (Systems Thinker, Analogist). Pass.

### Cluster 03: ML Architecture, Quantization, and Sensor Fusion

**Topic classification:** Technical/Product, deeply implementation-focused.
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Technical Expert — CNN vs. RNN vs. Mamba, INT8/INT4 quantization, MCU/NPU partitioning, COTS silicon shortlist; Strong Fit; Analytical Core.
- Simplifier — questions ask whether one well-validated condition+sensor would beat a complex four-sensor fusion stack; subtractive thinking is on-topic; Progressive/Elaborative pair.
- Systems Thinker — Q3 calls out emergent behavior from independent sensor/processing optimization; explicitly a feedback-loop problem; External Perspectives.
- Connector — Q5 "urban sensing parallel" is a structural-parallels question by construction; External Perspectives.
- Analogist — Q4–Q5 invite imports from urban sensing, signal processing, audio fusion; External Perspectives.

**Cluster-family check:** External Perspectives Triad is complete (3) — at cap, intentional because the cluster's later questions are all cross-domain framings. Analytical Core has 2 (Pragmatist, TE). Pass.

### Cluster 04: Model Lifecycle, Drift, and Update Strategy

**Topic classification:** Technical/Product with Strategic overlay (federated-learning timing, succession-style upgrade paths).
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Technical Expert — federated averaging, differential privacy noise, secure-boot/attestation chain, OTA rollback design; Strong Fit; Analytical Core.
- Systems Thinker — silent drift, update-cadence destabilization, partial-aggregation convergence are feedback-loop questions; External Perspectives.
- Futurist — Q3 explicitly asks about the federated-learning ecosystem's maturity timeline; Forward-Looking Pair.
- Analogist — Q5 imports ecological succession; Q4 asks for parallels from low-power edge-compute; External Perspectives.
- Constraint Flipper — Q6 reframes the "federated learning is off the table" constraint as a generative one; Challenge Triad.

**Cluster-family check:** Analytical Core has 2 (Pragmatist, TE). External Perspectives has 2 (Systems Thinker, Analogist). No family exceeds 3. Pass.

### Cluster 05: Privacy Architecture and the Capability-Gap Tradeoff

**Topic classification:** Strategic + Regulated/Compliance + Novel/Ambiguous (the cluster spans differential-privacy math, brand strategy, and Q8–Q11's deep paradigm-shift questions). Lawyer is intentionally NOT selected here — Cluster 06 owns HIPAA mechanics; this cluster's regulatory texture is secondary to its strategic and philosophical reach.
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Systems Thinker — Q1 names a balancing-and-reinforcing-loops dynamic between privacy moat and capability gap; pure systems-dynamics question; External Perspectives.
- First Principles Thinker — Q2 asks for the differential-privacy minimum granularity from first principles; Analytical Core.
- Constraint Flipper — Q5–Q6 reframe "no cloud" from compliance burden to brand promise; Challenge Triad.
- Visionary — Q8–Q11 (inside-out data model, raw data as product, data sovereignty inversion, end of health records) are paradigm-shift questions; Forward-Looking Pair.
- Analogist — Q7 imports the financial-audit attestation model; the cluster invites further imports (cryptographic notaries, zero-knowledge proofs); External Perspectives.

**Cluster-family check:** External Perspectives has 2 (Systems Thinker, Analogist). Analytical Core has 2 (Pragmatist, FPT). Challenge Triad has 2 (DA, CF). No family exceeds 3. Pass.

### Cluster 06: HIPAA, PHI Boundaries, and the Sync Protocol

**Topic classification:** Regulated/Compliance + Technical/Product (HIPAA minimum-necessary, BAA transitions, state breach laws, EU AI Act, FHIR/OpenEHR interoperability).
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Lawyer — genuinely warranted: 45 CFR §164.502/.514, BAA terms, CCPA/BIPA/CUBI/Washington MHMD, EU AI Act high-risk classification; Strong Fit per Topic Affinity Matrix.
- Technical Expert — sync-protocol design, audit-log infrastructure on a constrained device, FHIR R4 export architecture; Analytical Core.
- Systems Thinker — Q1's "decision boundary between on-device / aggregated / processed" is a systems-boundary question; External Perspectives.
- Analogist — Q5 explicitly imports the compiler intermediate-representation analogy for regulatory targeting; External Perspectives.
- Futurist — EU AI Act enforcement timeline (2026–2027) and accelerating FHIR adoption are trend-grounded inputs; Forward-Looking Pair.

**Cluster-family check:** Specialized lenses (Lawyer) and Analytical Core (Pragmatist, TE) together = 3 in the "analytical + specialized lenses" family per the rule. At cap, intentional. External Perspectives has 2. Pass.

### Cluster 07: Regulatory Pathway from Wellness to 510(k)

**Topic classification:** Regulated/Compliance + Strategic (path-dependent decisions, predicate chain, FDA timeline, RPM reimbursement, paradigm-shift Q7).
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Lawyer — 21 CFR Part 880/820, General Wellness Policy boundary, predicate-chain mapping, marketing-language triggers for reclassification; genuinely on-topic; Strong Fit.
- Futurist — Q3 explicitly asks about the FDA review window in 3 vs. 5 years and shifting de novo pathways; Forward-Looking Pair.
- Systems Thinker — Q3's "feedback-delay overshoot" between FDA timescale and product iteration is a stocks-and-flows problem; External Perspectives.
- Visionary — Q7 reframes the consumer/clinical distinction as a category error and asks what a new epistemic relationship between person and biology would be; Forward-Looking Pair.
- Provocateur — Q6 ("make it worse to make it better") is a textbook absurdist provocation; completes Challenge Triad with DA.

**Cluster-family check:** Forward-Looking Pair complete (Visionary + Futurist). Specialized + Analytical family has 2 (Lawyer, Pragmatist). No family exceeds 3. Pass.

### Cluster 08: False-Positive / False-Negative Tradeoffs and Liability

**Topic classification:** Regulated/Compliance + User-Facing (operating-point methodology, products-liability theories, alert-fatigue death-spiral, lived experience of erosion-of-trust).
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Lawyer — products-liability theories (negligent design, failure to warn, strict liability), safe-harbor language, duty-of-care attaching to alert design; Strong Fit; genuinely warranted.
- Empath — Q1's alert-credibility death-spiral and Q2's severity-gradient communication are emotional-design questions; Human-Centered Triad.
- Systems Thinker — death-spiral feedback loop (false positives → ignored → real miss → distrust → engagement drop) is a balancing/reinforcing-loop question; External Perspectives.
- Provocateur — Q5 (calibrated deception) and Q6 (deliberate engineered error rate) are absurdist provocations; completes Challenge Triad with DA.
- Storyteller — Q3 and the lived arc of an alert-credibility collapse benefit from named-character scenarios; Human-Centered Triad.

**Cluster-family check:** Human-Centered Triad has 2 (Empath, Storyteller). Specialized + Analytical has 2 (Lawyer, Pragmatist). Challenge Triad has 2 (DA, Provocateur). No family exceeds 3. Pass.

### Cluster 09: Population, Equity, and Embodied Difference

**Topic classification:** User-Facing/Community with Governance overlay (training data demographics, sensor-accuracy disparities, accessibility, demographic adoption curve, caregiver-version inversion).
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Audience Advocate — explicit stakeholder-segmentation cluster (40+ cardiac-risk, lower-income, limited-digital-literacy, prosthetics/arthritis users); Strong Fit; Human-Centered Triad.
- Empath — onboarding silent failure, the 68-year-old who quietly gives up, pre-patient identity; Human-Centered Triad.
- Storyteller — Q3 (caregiver wears the device for the parent) is a named-character narrative by construction; completes Human-Centered Triad.
- Provocateur — Q4 ("the house, not the person") is an absurdist inversion of the unit of analysis; completes Challenge Triad with DA.
- Futurist — Q2 explicitly asks about the demographic adoption curve in years 4–5 as the millennial cohort ages in; trend-grounded; Forward-Looking Pair.

**Cluster-family check:** Human-Centered Triad complete (3) — at cap, intentional. Challenge Triad has 2 (DA, Provocateur). No family exceeds 3. Pass.

### Cluster 10: Lived Experience — Trust, Anxiety, and the Felt Texture of Wearing the Device

**Topic classification:** User-Facing/Community, deeply emotional-interior (the cluster's focus is literally the "felt texture" of wearing the device).
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Empath — the entire cluster is emotional-resonance work (2am alarm, alarm-fatigue erosion, false-negative grief, privacy comfort gap); Strong Fit; Human-Centered Triad.
- Storyteller — Q2/Q3/Q4/Q6/Q10/Q12 are explicit named-character story prompts; Strong Fit; Human-Centered Triad.
- Audience Advocate — the cluster spans wearer + cardiologist + adult child + spouse; stakeholder mapping required; completes Human-Centered Triad.
- Visionary — Q13 (invisible diagnosis as ambient cuing) and Q14 (precondition states, intervention before event) are paradigm-shift questions; Forward-Looking Pair.
- Connector — Q5 (visible-device stigma) and Q11 (onboarding as values disclosure) benefit from structural parallels in other adjacent products (CGMs, hearing aids, fertility trackers); External Perspectives.

**Cluster-family check:** Human-Centered Triad complete (3) — at cap, intentional. No other family exceeds 2. Pass.

### Cluster 11: Doctor-Patient Translation, Reassurance, and the Clinical Bridge

**Topic classification:** User-Facing/Community + Strategic (device-to-clinician translation, secondary stakeholders, trust trajectory signals).
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Audience Advocate — Q1 explicitly enumerates secondary stakeholders (caregivers, spouses, employers, insurers) and asks how each reshapes the design; Strong Fit; Human-Centered Triad.
- Storyteller — Q1 (six-week sleep apnea logs in the PCP visit), Q4 (clinical partnership origination story), Q5 (the device users brag about) are named-character narratives; Human-Centered Triad.
- Empath — reassurance use case, user-agency-over-shifting-model, trust built through how things are communicated; completes Human-Centered Triad.
- Connector — clinical-partnership trust patterns import from other health-adjacent products (CGMs, AliveCor, Apple Watch ECG); External Perspectives.
- Systems Thinker — Q1's trust-building-vs-eroding trajectory and Q2's silently shifting ground truth are feedback-loop questions; External Perspectives.

**Cluster-family check:** Human-Centered Triad complete (3) — at cap, intentional. External Perspectives has 2. No family exceeds 3. Pass.

### Cluster 12: Team, Runway, and Conway's-Law Architecture

**Topic classification:** Implementation/Ops + Strategic (team structure determining system architecture, scope-vs-runway, focused-sprint leverage).
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Systems Thinker — Conway's Law is explicitly named in Q1; the cluster is about how team boundaries become system boundaries; External Perspectives; Strong Fit for systems dynamics.
- Simplifier — Q1 asks whether one well-validated condition+sensor would beat two partially validated ones; Q3 asks which two-or-three capabilities, done exceptionally well, validate the approach; Strong Fit; Progressive/Elaborative pair.
- Momentum Builder — Q2 (focused two-week sprint) and Q3 (eighteen months as scoping gift) are progressive-action questions; Strong Fit for Implementation/Ops.
- Constraint Flipper — Q3 reframes 18-month runway as a scoping gift rather than a limit; Challenge Triad.
- Connector — Conway's-Law parallels in other 12-person hardware startups, ML-team-scale precedents; External Perspectives.

**Cluster-family check:** External Perspectives has 2 (Systems Thinker, Connector). No family exceeds 3. Pass. (Note: Lawyer and Accountant explicitly NOT selected — runway is mentioned but the cluster's questions are about resource allocation and team structure, not financial modeling; selecting Accountant here would be over-application.)

### Cluster 13: Competitive Landscape and Strategic Moat

**Topic classification:** Strategic/Vision (Apple platform compression, NPU commoditization, ambient-sensing convergence, where the moat lives).
**Personas (7):**
- Devil's Advocate (core)
- Pragmatist (core)
- Futurist — Apple HealthKit trajectory, NPU commoditization timeline (2–3 chip generations), ambient-sensing convergence are trend-grounded extrapolations; Strong Fit; Forward-Looking Pair.
- Visionary — Q3 (efficiency ceiling as differentiator) and Q5 (seven days without a thought) are paradigm-shift questions; completes Forward-Looking Pair.
- Systems Thinker — moat dynamics, platform-compression feedback loops, where defensibility actually accumulates over time; External Perspectives.
- Analogist — Q6 explicitly imports the aviation black-box analogy; the cluster invites further imports (Intel-vs-x86 commoditization, GPS chipset commoditization); External Perspectives.
- Constraint Flipper — Q3, Q5, Q6 all reframe constraints (battery, HIPAA, on-device processing) as load-bearing design forces rather than ceilings; Challenge Triad.

**Cluster-family check:** Forward-Looking Pair complete (Visionary + Futurist). External Perspectives has 2. No family exceeds 3. Pass.

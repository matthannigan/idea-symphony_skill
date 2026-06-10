---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "medium"
stage: "Phase 2 Step 2.4: Brainstorming Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Brainstorming Persona Selections: On-Device ML Health Monitoring Wearable

**Effort:** medium (4 personas per topic = Core 2 + Inner Ring topic-matched 2)
**Core (always included):** Devil's Advocate, Pragmatist
**Retired (excluded):** Questioner, Analyst, Synthesizer

---

## Selection Summary Table

| # | Topic Cluster | Topic Type | Persona 1 (Core) | Persona 2 (Core) | Persona 3 (Inner) | Persona 4 (Inner) |
|---|---------------|-----------|------------------|------------------|-------------------|-------------------|
| 01 | Power Budget & Battery Architecture | Technical/Product | Devil's Advocate | Pragmatist | Technical Expert | First Principles Thinker |
| 02 | ML Model Architecture & Inference Tradeoffs | Technical/Product | Devil's Advocate | Pragmatist | Technical Expert | Simplifier |
| 03 | False Positive/Negative Economics & Alert Design | User-Facing + Regulated | Devil's Advocate | Pragmatist | Empath | Lawyer |
| 04 | Privacy Architecture & Data Boundaries | Regulated/Compliance + User-Facing | Devil's Advocate | Pragmatist | Lawyer | Audience Advocate |
| 05 | Model Update Strategy & Long-Term Maintainability | Technical/Product + Regulated | Devil's Advocate | Pragmatist | Systems Thinker | Technical Expert |
| 06 | Regulatory Pathway, HIPAA & Clinical Partnership Architecture | Regulated/Compliance | Devil's Advocate | Pragmatist | Lawyer | Visionary |
| 07 | User Experience, Trust & Equity | User-Facing/Community | Devil's Advocate | Pragmatist | Empath | Storyteller |
| 08 | Sensor Fusion & Detection Reliability | Technical/Product | Devil's Advocate | Pragmatist | Technical Expert | Analogist |
| 09 | Team Capacity, Runway & Validation | Implementation/Ops + Strategic | Devil's Advocate | Pragmatist | Constraint Flipper | Momentum Builder |

**Verification — cluster family caps (max 3 per topic from same family):**
- Topic 01: DA (Challenge), Pragmatist+TE+FPT (Analytical Core = 3) — OK, exactly at cap.
- Topic 02: DA (Challenge), Pragmatist+TE (Analytical Core), Simplifier (Tension Pair) — OK.
- Topic 03: DA (Challenge), Pragmatist (Analytical Core), Empath (Human-Centered), Lawyer (Outer Ring) — OK, mixed families.
- Topic 04: DA (Challenge), Pragmatist (Analytical Core), Lawyer (Outer Ring), AA (Human-Centered) — OK.
- Topic 05: DA (Challenge), Pragmatist+TE (Analytical Core), Systems Thinker (External Perspectives) — OK.
- Topic 06: DA (Challenge), Pragmatist (Analytical Core), Lawyer (Outer Ring), Visionary (Forward-Looking) — OK.
- Topic 07: DA (Challenge), Pragmatist (Analytical Core), Empath+Storyteller (Human-Centered) — OK.
- Topic 08: DA (Challenge), Pragmatist+TE (Analytical Core), Analogist (External Perspectives) — OK.
- Topic 09: DA (Challenge), Pragmatist (Analytical Core), Constraint Flipper (Challenge), Momentum Builder (Tension Pair) — Note: DA + Constraint Flipper = 2 from Challenge Triad, well under cap of 3.

All topics: exactly 4 personas, DA and Pragmatist present, no retired personas selected.

---

## Per-Topic Detailed Rationale

### Topic Cluster 01: Power Budget & Battery Architecture

**Topic Type:** Technical/Product (with one creative-reframe question on power-as-zoning and one inversion question on battery-as-product, but the cluster's center of gravity is hard engineering tradeoffs).

**Selected Personas:**
- **Devil's Advocate** (core) — Will press the team on whether the 7-day target is achievable at all under the multi-sensor-always-on premise, and whether the bottom-up budget exercise has actually been run.
- **Pragmatist** (core) — Asks for the minimum viable battery story; will probe the fallback design (drop microphone) and what happens if the first prototype delivers 4 days, not 7.
- **Technical Expert** — Strong fit for Technical/Product. Brings depth on NPU duty-cycling, sensor sampling, BLE overhead, and battery chemistry tradeoffs that the questions explicitly invoke.
- **First Principles Thinker** — Strong fit for Technical/Product. Especially useful for Q4 (zoning analogy) and Q5 (battery as primary output) — both require deconstructing the implicit hierarchy of "accuracy first, power second" and asking what the architecture would look like if power were the founding premise.

**Rejected alternatives:** Simplifier was a candidate but Q3 (microphone drop decision) is essentially a simplifier-style question; FPT covers the more upstream reframe space better. Systems Thinker considered for Q4 (zoning) but FPT's "why does this need to exist?" framing better serves both reframe questions.

**Family check:** 3 from Analytical Core (Pragmatist, TE, FPT) — at cap; topic is dense-technical, so this is justified rather than risk of convergence.

---

### Topic Cluster 02: ML Model Architecture & Inference Tradeoffs

**Topic Type:** Technical/Product.

**Selected Personas:**
- **Devil's Advocate** (core) — Will challenge the empirical basis of the accuracy-energy curve claims and whether the team has actually measured them on target silicon vs. assumed them.
- **Pragmatist** (core) — Asks what the simplest viable model looks like; will favor single-task over multi-task if the latter complicates firmware updates.
- **Technical Expert** — Strong fit. Quantization thresholds, fusion architecture choice (early/late/attention), buffer management — these are deep specifics questions.
- **Simplifier** — Strong fit for Technical/Product. The cluster contains a multi-task vs. single-task question and a fusion-architecture question that both benefit from "what if we removed this?" pressure. Simplifier creates productive tension with TE's tendency to add architectural sophistication.

**Rejected alternatives:** First Principles Thinker would also fit but creates 3 Analytical Core personas alongside TE+Pragmatist, risking convergence on a topic that is already deep-technical. Simplifier introduces a different cluster (Tension Pair) for genuine diversity. Systems Thinker considered for sensor-fusion architecture but Simplifier's subtractive lens better matches the "do we really need 4 sensors and a multi-task model?" pressure.

**Family check:** 2 from Analytical Core (Pragmatist, TE) + 1 Challenge (DA) + 1 Tension Pair (Simplifier) — well-balanced.

---

### Topic Cluster 03: False Positive/Negative Economics & Alert Design

**Topic Type:** User-Facing/Community + Regulated/Compliance (the cluster mixes lived-experience questions about the 3am alert with liability/decision-threshold questions and a deterrence analogy).

**Selected Personas:**
- **Devil's Advocate** (core) — Will press the asymmetric-cost framing and the "designed to misread" provocation; will challenge whether the team has actually mapped who bears which cost.
- **Pragmatist** (core) — What's the minimum viable alert experience; tiered alerts (Q4 deterrence analogy) are a Pragmatist's natural territory.
- **Empath** — Strong fit for User-Facing. Q3 (3am alert experience), Q5 (Marcus scenario), Q6 (Elena false-alarm aftermath) are all emotional-resonance questions. Empath operates on gut feeling about what a frightened user actually needs.
- **Lawyer** — Strong fit for Regulated. Q1 explicitly asks who bears liability cost; Q4 ties alert calibration to liability exposure; Q7 surfaces the assumption that accuracy maps to health outcomes (a regulatory-defensibility question). Lawyer is genuinely warranted here per the outer-ring exclusion rule — the cluster has real liability content tied to real medical-device territory.

**Rejected alternatives:** Storyteller would also fit (Q5 and Q6 are named-character scenarios) but Empath covers the emotional dimension and Lawyer is a more orthogonal addition. Audience Advocate considered but Empath is closer to the "felt experience" core of the cluster.

**Family check:** 1 Challenge (DA), 1 Analytical Core (Pragmatist), 1 Human-Centered (Empath), 1 Outer Ring (Lawyer) — maximum family diversity.

---

### Topic Cluster 04: Privacy Architecture & Data Boundaries

**Topic Type:** Regulated/Compliance + User-Facing (HIPAA Safe Harbor, re-identification, BAA territory mixed with the dinner-table-conversation and "felt privacy" questions).

**Selected Personas:**
- **Devil's Advocate** (core) — Will challenge the "raw data never leaves the device" claim against companion-app weak links (Firebase, Crashlytics) and aggregated-summary de-anonymization risk.
- **Pragmatist** (core) — Minimum viable privacy architecture; what retention window is actually defensible.
- **Lawyer** — Strong fit for Regulated. HIPAA Safe Harbor / Expert Determination, BAA territory, minimum-necessary principle, breach modeling — these are core legal-architecture questions, not aspirational outer-ring application. Genuinely warranted.
- **Audience Advocate** — Strong fit for User-Facing. Q2 (felt privacy in the companion app), Q7 (dinner-table explanation) require mapping what different user segments need to see and understand to trust the privacy claim.

**Rejected alternatives:** Empath considered but AA's stakeholder-segmentation lens better matches questions about communicating privacy to skeptical users vs. early adopters. Storyteller also fit (Q7 dinner-table) but AA is broader. Systems Thinker considered for Q5 (biological quarantine analogy) but the cluster's architectural questions are dominated by legal-defensibility framing — Lawyer covers more ground.

**Family check:** 1 Challenge (DA), 1 Analytical Core (Pragmatist), 1 Outer Ring (Lawyer), 1 Human-Centered (AA) — maximum family diversity.

---

### Topic Cluster 05: Model Update Strategy & Long-Term Maintainability

**Topic Type:** Technical/Product + Regulated (federated learning unit economics + 510(k) post-market surveillance + drift-without-feedback as a clinical/liability problem).

**Selected Personas:**
- **Devil's Advocate** (core) — Will press the silent-degradation problem: what happens at 18 months when the team has no feedback signal and the model is quietly drifting against an aging baseline.
- **Pragmatist** (core) — Asks for the simplest viable update mechanism; will likely favor periodic firmware OTA over federated learning given Series-A engineering capacity.
- **Systems Thinker** — Strong fit for cross-domain feedback-loop questions. The cluster's central tension is a feedback-loop pathology (no raw data → no learning → silent drift → trust erosion) and the lean-manufacturing analogy in Q4 is a feedback-system parallel.
- **Technical Expert** — Strong fit for Technical/Product. Federated learning feasibility on the target NPU/RAM, split-image firmware/model versioning, OTA mechanics — these need implementation depth.

**Rejected alternatives:** Lawyer was considered (510(k) post-market surveillance, regulatory traceability of model updates) but the regulatory dimension here is downstream of the technical update mechanism — Topic 06 covers the regulatory pathway directly, so concentrating Lawyer there avoids over-application. Analogist considered for Q4 (lean manufacturing analogy) but Systems Thinker handles the feedback-loop analysis the analogy invokes; Analogist will play this role on Topic 08 instead.

**Family check:** 1 Challenge (DA), 2 Analytical Core (Pragmatist, TE), 1 External Perspectives (Systems Thinker) — at cap for Analytical Core but topic warrants it.

---

### Topic Cluster 06: Regulatory Pathway, HIPAA & Clinical Partnership Architecture

**Topic Type:** Regulated/Compliance (with strategic-vision overlay in Q5–Q6 — the "510(k) ruins everything" inversion and the "third regulatory category" question).

**Selected Personas:**
- **Devil's Advocate** (core) — Will challenge the consumer-wellness-as-on-ramp framing and the assumption that HIPAA-as-architecture maps to operational HIPAA readiness.
- **Pragmatist** (core) — What's the minimum BAA-ready posture; what milestone realistically triggers 510(k) transition given 18-month runway.
- **Lawyer** — Strong fit for Regulated/Compliance. This is the cluster where Lawyer is most central: 510(k) thresholds, BAA operational readiness, false-negative liability under wellness claims, FDA scrutiny of wellness-to-clinical transitions — all core legal-architecture territory.
- **Visionary** — Strong fit for the strategic dimension of Q5 (510(k) as worst outcome) and Q6 (third regulatory category). These questions ask the team to imagine paradigm shifts in the regulatory frame, not just navigate the existing ladder. Visionary's "ignore current reality" lens is exactly what those questions invite.

**Rejected alternatives:** Futurist considered as alternative to Visionary but the questions invoke paradigm shifts (a new regulatory category that doesn't exist) more than trend extrapolation — Visionary fits better. Systems Thinker considered for Q1 (one-way door dynamics) but Visionary + DA cover that territory. Storyteller considered for Q7 (handoff-to-cardiologist) but the cluster's center of gravity is regulatory architecture, not lived narrative.

**Family check:** 1 Challenge (DA), 1 Analytical Core (Pragmatist), 1 Outer Ring (Lawyer), 1 Forward-Looking (Visionary) — maximum family diversity.

---

### Topic Cluster 07: User Experience, Trust & Equity

**Topic Type:** User-Facing/Community.

**Selected Personas:**
- **Devil's Advocate** (core) — Will press the "hostile wearable" provocation (Q6) — what if the current 7-day battery, complex sync, and alert-fatigue design IS the abandonment-engineering pattern? Also challenges the gap between stated preferences and actual behavior.
- **Pragmatist** (core) — What does the minimum viable trust-earning experience look like; what accessibility tests are actually feasible pre-launch.
- **Empath** — Strong fit for User-Facing. Q1 (40+ user's emotional baseline), Q4 (the grateful-user story), Q8 (symbiotic awareness), Q9 (cultivating felt understanding) are all emotional-resonance questions. The cluster's most distinctive content is felt experience.
- **Storyteller** — Strong fit for User-Facing. Q4 (named user three years from now), Q7 (a week with the companion app) are explicit named-character lived-experience scenarios — Storyteller's natural form.

**Rejected alternatives:** Audience Advocate would also fit (Q3 covers exclusion of users without smartphones, accessibility across skin tones — stakeholder-mapping territory). Chose Empath + Storyteller because the cluster's most distinctive material is the felt-experience and named-narrative content; AA's coverage of segmentation can be partially absorbed by Empath's reading of the 40+ user. Visionary considered for Q8/Q9 (symbiotic awareness, beyond detection toward meaning) but Empath's emotional-resonance lens better serves "felt understanding" framing.

**Family check:** 1 Challenge (DA), 1 Analytical Core (Pragmatist), 2 Human-Centered (Empath, Storyteller) — at cap for Human-Centered (which on a User-Facing topic is the appropriate concentration).

---

### Topic Cluster 08: Sensor Fusion & Detection Reliability

**Topic Type:** Technical/Product (with a strong cross-domain analogy question — Q3 jury deliberation).

**Selected Personas:**
- **Devil's Advocate** (core) — Will press the fragility-tail problem: when fusion degrades below any single-sensor baseline. Also challenges the lab-vs-real-world assumption gap (Q2).
- **Pragmatist** (core) — What's the minimum viable artifact-detection logic; can we ship with simpler fallback rules than full multi-sensor fusion.
- **Technical Expert** — Strong fit for Technical/Product. PPG-skin-tone variability, fusion-layer voting mechanics, sensor-occlusion detection — implementation depth required.
- **Analogist** — Strong fit. Q3 (jury deliberation analogy) is an explicit invitation to import structured solutions from another domain — this is precisely the Analogist's core capability. Jury-design research (size, unanimity vs. supermajority, outlier juror handling) maps directly onto fusion-layer voting and weighting logic. The cluster also benefits from Analogist on Q1 because reliability-with-fragility-tails has cross-domain parallels (e.g., aviation system redundancy, ensemble methods in finance).

**Rejected alternatives:** Systems Thinker considered for Q1 (failure modes of combined model) but Analogist is more strongly invoked by Q3 and the cluster only has 3 questions, so the jury-analogy carries proportional weight. Simplifier considered (drop sensors that fail too often) but Pragmatist already covers minimum-viable framing.

**Family check:** 1 Challenge (DA), 2 Analytical Core (Pragmatist, TE), 1 External Perspectives (Analogist) — at cap for Analytical Core but topic is genuinely technical.

---

### Topic Cluster 09: Team Capacity, Runway & Validation

**Topic Type:** Implementation/Ops + Strategic (V1 scope under runway pressure, sub-team coordination, smallest-experiment-biggest-signal — these are operations questions with strategic stakes).

**Selected Personas:**
- **Devil's Advocate** (core) — Will challenge whether 12 engineers can actually deliver 5 hard problems in 18 months; will press the question of which workstreams are deferrable without killing the product.
- **Pragmatist** (core) — Strong fit for Implementation/Ops (also core). What's the realistic V1 scope; what is the absolute minimum to secure Series B.
- **Constraint Flipper** — Strong fit for Implementation/Ops. The 12-engineers / 18-month runway / Series-A budget is the canonical "constraint as design feature" setup — Q4 (smallest experiment, biggest signal) is essentially a Constraint Flipper question. Reframes "what we can't do" into "what shape this forces the product to take."
- **Momentum Builder** — Strong fit for Implementation/Ops. Q1 (V1 scope) and Q4 (90-day leveraged experiment) require building forward from current capability. MB's progressive-elaboration "yes, and" against Constraint Flipper's reframe creates productive tension on a topic that needs both subtraction and forward motion.

**Rejected alternatives:** Simplifier considered (strip V1 to bare minimum) but Pragmatist already covers minimum-viable framing; Constraint Flipper + Momentum Builder give a more dynamic pair on a topic about action under pressure. Systems Thinker considered for Q2 (sub-team coordination as system-level pathology) but the cluster's center is ops execution, not feedback-loop analysis.

**Family check:** 2 Challenge (DA, Constraint Flipper), 1 Analytical Core (Pragmatist), 1 Tension Pair (Momentum Builder). Note: DA and Constraint Flipper are both Challenge Triad members but their roles here are distinct (DA critiques feasibility; CF reframes constraints as design features) — well under the 3-per-family cap.

---

## Selection Methodology Notes

- **Lawyer applied 3 times** (Topics 03, 04, 06): All three clusters have genuine regulatory/liability content per the briefing (HIPAA-as-architecture, FDA 510(k), false-negative liability under wellness claims, BAA operational readiness). This is the rare project where Lawyer is genuinely warranted multiple times rather than over-applied. The Tier 2A roster selection deferred Lawyer at Phase 2A in favor of Technical Expert; Phase 2D recovers Lawyer's perspective in the brainstorming layer where it's most load-bearing.
- **Technical Expert applied 4 times** (Topics 01, 02, 05, 08): Concentrated on the deeply-technical clusters where implementation specifics (NPU, quantization, fusion, OTA) are central. Deliberately not used on Topics 03, 04, 06, 07, 09 to avoid Analytical Core convergence.
- **No Outer Ring application of Accountant or Politician**: The cluster set has no business-model/budgeting questions (Accountant) and no governance/coalition questions (Politician), per the Phase 2A roster rationale. This holds at Phase 2D.
- **Analogist used once** (Topic 08): Reserved for the cluster with the most explicit cross-domain invitation (Q3 jury analogy). Not applied elsewhere despite the briefing's other analogical questions (zoning, deterrence, lean manufacturing, biological quarantine) because those analogies are better served by FPT, Empath/Lawyer, Systems Thinker, and Lawyer respectively.
- **Visionary used once** (Topic 06): Reserved for the cluster where paradigm-shift questions about a new regulatory category are central. Topic 07's symbiotic-awareness questions are served by Empath instead, since the cluster's center of gravity is felt experience rather than paradigm reframing.

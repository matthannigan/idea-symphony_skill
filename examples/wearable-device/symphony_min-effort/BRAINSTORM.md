---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/min"
datetime: 2026-06-09
effort: "min"
stage: "Phase 5: Final Output"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
---

# Brainstorming Session: On-Device ML Health Monitoring Wearable

## Executive Summary

The session's most consistent finding is that nearly every design decision in this project carries downstream regulatory weight. The firmware event schema you write before launch becomes the audit trail a 510(k) submission requires. The threshold you hardcode becomes the operating point you can never change without a design-history entry. The alert copy a marketing writer softens becomes the implied medical claim that triggers FDA enforcement. The failure mode is not making the wrong technical choice; it is making a technical choice without noticing it is also a regulatory choice.

A second pattern across clusters is that the correct v1 answer is consistently more conservative than what's architecturally interesting. Decision-level sensor fusion beats a joint multimodal transformer for a first release. A global OTA-updated model beats on-device continual learning. Hierarchical gating (cheap accelerometer screener, expensive PPG classifier triggered on demand) beats streaming inference. In each case the simpler approach is safer, more auditable, and ships with a team of twelve.

The session also argues that clinical partnerships are the highest-leverage single investment available to this company. They provide co-signed onboarding credibility, validation study patient populations, reference accounts that open health-system sales channels, and third-party accuracy benchmarks. A startup competing against Apple Watch on features loses; one competing on trust infrastructure (auditable privacy, published validation data, cardiologist endorsement) has a position that consumer marketing budgets cannot replicate.

Taken together, these findings argue for treating the wellness launch not as a separate phase but as the first chapter of a continuous regulatory and clinical narrative. That framing changes the cost calculus on documentation, claim language discipline, and clinical partnership investments from "overhead" to "compounding insurance."

## Session Overview

The request was to architect an on-device ML pipeline for a wrist-worn cardiac and sleep-apnea monitor under constraints of 7-day battery life, raw-data-never-leaves-device privacy, and a potential future 510(k) clearance. The session ran at minimum effort, generating 20 questions across 5 topic clusters covering the full product stack: ML architecture, power co-design, privacy infrastructure, regulatory strategy, and go-to-market sustainability.

## Central Tensions

**Clusters 04 and 05 share a meta-tension:** the clinical channel and the consumer channel demand incompatible postures simultaneously. Clinical credibility requires published accuracy benchmarks, HIPAA-compliant workflows, and B2B sales cycles with long lead times. Consumer trust requires limitation disclosure, non-alarming UI, and personal data governance. Every product decision (alert copy, threshold settings, revenue model, data licensing) must hold both audiences without splitting the message.

**Cluster 01:** Shipping a validated v1 requires aggressive on-device optimization (quantization, asymmetric gating, decision-level fusion). The architectures worth building later (federated learning, multimodal transformers, personalized on-device adaptation) require post-launch data and infrastructure the current team cannot yet construct.

**Cluster 02:** Continuous PPG sampling is clinically necessary for arrhythmia detection and inherently budget-breaking. Every duty-cycling policy, NPU cadence decision, and gating design is a negotiation between detection fidelity and the fixed 910 µA average that a 7-day battery allows.

## Key Themes

**Audit-trail-first engineering pays forward.** A structured firmware event schema (model version hash, per-sensor SNR, classifier confidence, alert type) costs almost nothing to add at EVT and nearly as much to retrofit at Series B. The same log entry that enables post-launch threshold recalibration becomes the clinical validation artifact a 510(k) submission demands. Three of five clusters independently surface this principle as a day-one requirement.

**Tiered, asymmetric architectures dominate every subsystem.** The pattern appears in ML (cheap anomaly screener gates expensive classifier), power (accelerometer gates PPG, not the reverse), privacy (three-tier partnership model proportional to compliance risk), and revenue (consumer subscription bridges while clinical and licensing channels mature). In every case the design separates the cheap common case from the expensive triggered case, rather than applying maximum capability uniformly.

**Enforcement closest to the data is more durable than policy discipline.** The privacy cluster's organizing principle (compiler-enforced type boundaries, IDL-generated serializers, backend consent ledgers) applies equally to claim language and power budgets. A claim-language gate in the PR pipeline is more reliable than a style guide; a named power owner with sprint-level veto authority is more reliable than a shared spreadsheet. Recommendations that depend on individual discipline as the last line of defense are consistently identified as fragile.

**The 510(k) pathway is a constraint on every other decision, not a future consideration.** Detection thresholds hardcoded in firmware before the operating point is determined require a costly redesign. Alert phrasing without a change-control path bleeds clinical vocabulary into product copy. Software versioning outside a Design History File must be reconstructed retroactively. Every cluster names at least one place where a purely technical optimization forecloses a regulatory option.

**Clinical partnerships are structural, not optional credibility.** Cardiology department relationships appear in five distinct roles: co-signing onboarding materials, providing validation study populations, anchoring the clinical dashboard revenue tier, supplying competitive positioning against consumer wearables, and serving as the alert-chain endpoint required for cleared diagnostic claims. A single health-system champion opens channels a consumer marketing budget cannot.

## Conspicuous Absences (session-level)

No cluster addresses the data labeling and annotation pipeline. Every threshold, calibration period, and go/no-go gate depends on a labeled holdout dataset and annotation quality assurance — and who labels cardiac events from PPG waveforms is never named. For a device targeting cardiac arrhythmias, this is the most direct structural gap.

The reimbursement and contracting model for clinical partnerships is consistently absent. The regulatory cluster recommends that alert chains terminate with a licensed provider; the go-to-market cluster anchors a revenue tier on clinical dashboards. Neither names how hospitals or health plans are compensated for serving that role. The recommendation exists without the mechanism that would make a clinical partner willing to participate.

Cross-border data residency requirements (EU-US transfers, regional server placement) are never addressed despite the 40+ demographic likely spanning geographies.

## Topic Summaries

### 1. ML Architecture and Model Design

On-device inference quality is downstream of architecture choices that must be made before enough in-the-wild data exists to validate them. The practical answer is a two-tier approach: a lightweight anomaly screener (under 5k parameters, duty-cycled every 5 seconds) that wakes a full 50–100k parameter classifier only on suspicious events, targeting 60–80% power reduction in users with normal sinus rhythm. Decision-level sensor fusion (independent per-modality classifiers feeding an ensemble) is the correct v1 fusion strategy. It is more interpretable, fault-tolerant when a sensor degrades, and independently testable, even though it cannot learn the motion-artifact correction that feature-level joint fusion enables. A 7-day personal baseline calibration period before enabling alerts is the recommended mitigation for inter-user PPG signal variability, rather than updating model weights.

- See: [synthesis/01_ml-architecture-and-model-design_summary.md](synthesis/01_ml-architecture-and-model-design_summary.md)

### 2. Power Budget and Hardware-Software Co-Design

Continuous PPG at full rate exceeds the entire 7-day power budget on its own. The cluster's core design decision is a state machine with the correct inversion: the always-on accelerometer detecting low motion triggers PPG on (not off), dropping to 1 Hz during vigorous activity. Batching NPU inference at 30-second cadence rather than streaming reduces average NPU power by roughly 6×. Measurement must precede modeling; vendor datasheet numbers for PPG LED current run 2–4× below real-world values once skin tone, ambient light, and cold silicon are accounted for. A cross-team power contract (named per-subsystem owners, a named system power owner with veto authority) prevents the classic failure where firmware, ML, and hardware each optimize locally and the system total drifts.

- See: [synthesis/02_power-budget-and-hardware-software-co-design_summary.md](synthesis/02_power-budget-and-hardware-software-co-design_summary.md)

### 3. Privacy Architecture and Data Governance

Strong privacy is a structural property enforced at the layer closest to the data, not a policy overlay. In firmware, privilege-tiered partitioning at link time means the BLE module literally cannot reach raw sensor structs. In the sync protocol, the companion app is an untrusted relay: the device signs and encrypts each alert packet, and only the backend holds the decryption key, so a compromised phone learns nothing. The minimum-schema for each clinical signal (approximately 40 bytes: timestamp, confidence, class, RR-interval histogram) is formalized in an IDL, auto-generating both the firmware serializer and the app deserializer from the same source, which eliminates accidental leakage when developers add debugging fields. A dual-record schema (tamper-evident audit log with FDA-required fields, consumer display derived from it) satisfies both a skeptical user and a future FDA reviewer without separate architectures.

- See: [synthesis/03_privacy-architecture-and-data-governance_summary.md](synthesis/03_privacy-architecture-and-data-governance_summary.md)

### 4. Regulatory Strategy and Clinical Pathway

The 510(k) pathway imposes constraints on the wellness launch that look cosmetic until they are violated. Alert language that uses clinical vocabulary ("detects atrial fibrillation") is an implied medical claim regardless of accompanying disclaimers. Detection thresholds hardcoded before the 510(k) operating point is determined require a costly redesign. Software changes not tracked in a Design History File must be reconstructed at the worst possible moment. The recommended response is to build clinical-grade process habits (DHF subdirectories, change-controlled thresholds as configurable parameters, IRB-approved observational data collection) from day one of the wellness launch, treating them as evidence insurance rather than pre-clearance overhead. Blanket EULA disclaimers are identified as nearly worthless; the defensible liability posture comes from UX patterns that route users toward clinical follow-up, paired with active onboarding acknowledgment and backend timestamping.

- See: [synthesis/04_regulatory-strategy-and-clinical-pathway_summary.md](synthesis/04_regulatory-strategy-and-clinical-pathway_summary.md)

### 5. Go-to-Market, User Experience, and Sustainability

Consumer wearables compete on features; this device competes on trust infrastructure, and the two require different sales motions. For the 40+ target user, disclosure of device limitations (smoke-alarm analogy in onboarding, explicit false-positive rates on first-trigger alerts, three-zone confidence indicators) functions as a feature rather than a liability hedge. Users told upfront feel respected; users who discover limitations after the fact feel deceived. Four revenue streams are proposed, tiered by consent complexity: History+ consumer subscription ($9.99/month, no consent overhead), clinical dashboard SaaS ($200–$500/seat/month, HIPAA, 6–12 month sales cycle), opt-in research data licensing ($250K–$2M per licensee), and pay-per-event telemedicine interpretation ($49/event). Core alerts must remain free; paywalling health alerts is an ethical problem and a PR liability. Publishing a peer-reviewed validation study ROC curve is the primary clinical sales asset, though it also sets a public benchmark competitors can calibrate against.

- See: [synthesis/05_go-to-market-user-experience-and-sustainability_summary.md](synthesis/05_go-to-market-user-experience-and-sustainability_summary.md)

## Recommended Next Steps

1. Run INT8 post-training quantization on the 1D temporal CNN baseline; use ≥90% sensitivity and ≥85% specificity as the go/no-go gate before any pruning begins.
2. Implement a two-tier inference gate: an always-on anomaly screener (≤5k parameters, duty-cycled every 5 seconds) that wakes the full classifier only on suspicious PPG rhythm events.
3. Define the firmware alert event schema at EVT: `{timestamp, model_hash, sensor_snr, confidence, alert_type}`. It is the foundation for clinical audit trails and post-launch threshold recalibration.
4. Instrument the first EVT board with per-rail current monitors (INA228 at 100 µA resolution) before populating any power spreadsheet — real-world PPG LED current runs 2–4× above datasheet values.
5. Implement the ACC-gating state machine with the correct logic: accelerometer detects low motion → PPG turns on. Document the 300–800 ms startup latency in the system spec.
6. Commit three shared-contract documents to `docs/contracts/`: `power-budget.csv` (per-subsystem allocations with named owners), `sensor-driver-api.h`, and `model-interchange-spec.md`.
7. Partition firmware into three privilege tiers (raw-sensor, feature-extraction, alert-dispatch); restrict the BLE module to alert-dispatch at link time, with a CI check that rejects commits where BLE packet construction reaches raw-data structs.
8. Define the minimum-schema for each clinical signal in an IDL and auto-generate both the firmware serializer and the app deserializer from the same source.
9. Stand up a Design History File in version control with subdirectories for requirements, design decisions with rationale, verification results, and risk assessments. Assign ownership on day one.
10. Draft a "forbidden phrase" list seeded with FDA-flagged claim language and make it a mandatory sign-off gate before any outward-facing string mentioning cardiac metrics ships.
11. Architect detection thresholds as configurable parameters with a documented change-control path before the first wellness firmware release.
12. Identify two or three academic cardiology departments for a consulting relationship; a modest pilot establishes the co-signing credential needed for onboarding materials and competitive positioning.
13. Build a two-week silent baseline mode before any alert logic ships; establish personal resting heart rate and sleep-breathing baselines so alerts carry personalized context.
14. Partner with a clinical site and launch an IRB-approved observational study designed with both FDA and EU MDR endpoints from the start, to avoid running separate studies per jurisdiction.
15. Commission an independent privacy audit and publish the data flow diagram as a marketing asset targeting the post-23andMe-breach 40+ demographic.

## Session Index

### Questions
- [QUESTIONS.md](QUESTIONS.md) — All questions consolidated

### Summaries & Synthesis
- [SUMMARIES.md](SUMMARIES.md) — Concatenated per-topic summaries
- [synthesis/](synthesis/) — Individual per-topic files: `_summary.md`

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log

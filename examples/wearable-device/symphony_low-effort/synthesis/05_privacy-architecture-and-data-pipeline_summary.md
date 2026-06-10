---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "05_privacy-architecture-and-data-pipeline"
central-tension: "The on-device architecture is technically sound as a privacy-from-cloud guarantee, but neither the raw-data boundary nor the adversary model has been formally specified — meaning the privacy story is a policy claim rather than an enforceable technical property, while the aggregated summaries that do leave the device carry legal and re-identification exposure the team has not yet modeled."
---

# Summary: Privacy Architecture and Data Pipeline

## Executive Summary

The on-device architecture establishes a genuine privacy-from-cloud guarantee, and both lenses agree it can be a differentiator with clinical partners, privacy-conscious users, and investors. But only if enforcement is demonstrable rather than asserted. That is the cluster's organizing tension: the privacy story is currently built on policy intent, not technical attestation or formal specification. The gap between the two is wide enough to matter before Series B.

Both lenses converged on three high-confidence points. First, the raw-data boundary has several likely leak vectors that have not been formally mitigated: crash dump handlers that naively serialize RAM, diagnostic telemetry commands added before the privacy architecture was finalized, and companion-app SDK crash reporters that may capture sensor state on exception. Second, the OTA model-update path is a two-way channel if not constrained to universally signed binaries. Per-device weight payloads can encode sensor history. Third, "aggregated summaries" is doing undefined work. The sync payload schema needs to be written down as concrete field names and retention windows before the team can evaluate re-identification risk or design the on-device evidence store.

Where the two lenses diverged most clearly is on adversary scope and how much technical isolation is needed. A feasibility-oriented view scopes the realistic adversary to a journalist with network traffic and a backend breach. It argues that hardware MPU regions plus a crash-dump scrubber plus a half-day STRIDE session on the sync endpoint covers the material risk surface at Series A. A risk-oriented counterpoint flags that this framing excludes more probable adversaries: a domestic partner with physical device access, the manufacturer's own data science team via an "anonymized" telemetry feed, and insurers who gain access through future B2B partnerships. These adversaries operate through pathways (coercive disclosure, informal data-sharing) the technical architecture does not address. On legal exposure, a feasibility-oriented view treats a legal memo and 90-day backend retention as the practical hedge. A risk-oriented view argues that the "consumer wellness" carve-out from HIPAA gives no protection against civil subpoenas and that the companion app data may already be functionally equivalent to PHI under scenarios the team has not modeled.

---

## Key Themes

### Raw-Data Boundary Is a Policy Claim, Not a Technical Guarantee

Both lenses agree this is the most urgent gap. Crash dump handlers, companion-app SDK telemetry, diagnostic APIs, and the OTA mechanism are all potential exfiltration channels that exist outside the "raw data never leaves the device" policy. The feasibility-oriented view prioritizes a crash-dump scrubber, MPU-based DMA isolation, and a companion-app SDK audit as concrete near-term mitigations. The risk-oriented view adds that these controls assume perfect firmware correctness. It presses for TrustZone-based cryptographic isolation as a stronger alternative worth prototyping before the architecture is locked.

### "Aggregated Summaries" Need a Concrete Schema Before the Sync Protocol Is Finalized

Both lenses converged on this point from different directions. The feasibility lens sees schema specification as a bounded 2–3 hour task that forces policy language into implementation decisions. The risk lens points out that a summary containing event timestamps with minute-level granularity and SpO2 nadirs may be a near-unique re-identification fingerprint for a motivated adversary. Both agree that derived features (event timestamp at minute resolution, classification confidence, duration, HRV summary statistics, SpO2 nadir) are the right evidence representation. They are clinically actionable, 510(k)-legible, and not reverse-engineerable to raw waveforms. Rounding alert timestamps to 15-minute resolution in the sync payload is a one-line serialization change that substantially reduces correlation attack surface with near-zero clinical utility cost.

### Legal Exposure Is Broader Than HIPAA Non-Applicability Implies

Both lenses agreed that legal counsel is required before launch. The feasibility-oriented view focuses on backend minimization (90-day default retention, device pseudonym only, no PII alongside the biometric payload) as the practical litigation hedge. The risk-oriented view flags a harder problem: the consumer wellness carve-out from HIPAA does not protect companion app data in civil litigation, employment disputes, or insurance underwriting. A single alert ("possible atrial fibrillation detected, 23:47, duration 8 minutes") is clinically specific enough that a court would treat it as medical information regardless of the product's privacy policy. Designing the backend as if summaries are PHI from launch carries low marginal cost. Retrofitting after the first enterprise partnership is signed is structurally expensive.

### Attestability Converts the Architecture from a Claim into an Asset

Both lenses agreed that the on-device architecture becomes a genuine differentiator with clinical partners, privacy-conscious users in the 40+ demographic, and Series B investors only when enforcement is verifiable. A feasibility-oriented view argues this is achievable with a one-page data flow diagram, a "what we hold" screen in the companion app showing the exact last sync payload, and a data liability summary for the investor data room. A risk-oriented counterpoint notes that clinical partner procurement conversations will ask "how do you know?" A TrustZone attestation report and independent audit is what closes that conversation, not an engineering assertion. The gap between the two positions is primarily timing and investment level.

### The Current Architecture Protects Data from Third Parties, Not from the Device Maker

Both lenses converged on this as the central architectural blind spot. The user receives a binary alert but cannot inspect the feature vector, confidence interval, or model evidence that drove it. A feasibility-oriented view argues for an export function (JSON of on-device event log) and a "why this triggered" summary alongside each alert. Both are doable in a single sprint and protective against false-positive liability. A risk-oriented counterpoint extends the analysis: a 510(k) submission requires demonstrating algorithm performance on labeled data. A model the user cannot audit is harder to explain to FDA reviewers. The architecture's opacity is already a regulatory liability, not just a UX limitation.

---

## Recommended Actions

### Immediate (0-3 months)

- Configure the NPU's DMA controller to make sensor ring buffers write-only from the application processor, and build a crash-dump scrubber that zeroes sensor ring-buffer addresses before any data leaves flash — targeting the most likely exfiltration paths before beta. [convergent]
- Draft the sync payload schema with concrete field names, types, timestamp resolution, and retention windows; run it through a re-identification checklist; round alert timestamps to 15-minute granularity by default in the serialization layer. [convergent]
- Audit every third-party SDK in the companion app (crash reporters, analytics) for what it captures on exception; eliminate or scope-limit any that touch sensor-adjacent state. [convergent]
- Retain a health-data attorney for a written opinion on whether the specific sync payload constitutes PHI and what civil subpoena exposure looks like before the first enterprise partnership conversation. [convergent]
- Define the on-device anomaly evidence representation now — event timestamp (minute resolution), classification confidence, duration, HRV summary statistics, SpO2 nadir — with the 510(k) evidentiary standard as a constraint, even if that data is only exportable under explicit user action. [convergent]

### Near-term (3-12 months)

- Build a "what we hold" screen into the companion app showing the user the exact last sync payload, and implement an optional export function producing a JSON file of the on-device event log (timestamps, confidence scores, sensor states) the user can share with their cardiologist. [convergent]
- Prototype TrustZone-based cryptographic isolation for the inference engine and evaluate the power overhead against the architecture's current MPU-region approach. Document which privacy guarantees each achieves and which failure modes each survives. [trade-off: a feasibility-oriented case that MPU regions plus scrubbers are sufficient for consumer wellness stage; a risk-oriented counterpoint that TrustZone provides cryptographic guarantees that survive firmware bugs and should be evaluated before the architecture is locked]
- Write down the adversary model as a named document that includes domestic partners with physical device access, the manufacturer's own telemetry pipeline, and coercive employer/insurer disclosure pathways — not only external hackers — and circulate it to legal and product before any B2B data partnership is signed. [unique: risk]
- Prepare a one-page data liability summary for the investor data room: what the company holds, retention policy, legal exposure scenarios, and how the architecture constrains each. [unique: feasibility]

### Long-term (1+ years)

- Design the model's explainability layer in parallel with the FDA regulatory strategy: surface "why this alert was triggered" summaries alongside binary alerts, and define the on-device evidence store against 510(k) evidentiary requirements before clinical claims are pursued. [convergent]
- Define a written policy on what data the company will never monetize and include it in Series B investor materials; establish alignment before any data partnership opportunity surfaces a board-level conflict. [unique: risk]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- The raw-data boundary is currently a policy claim, not a technical guarantee — crash dumps, diagnostic APIs, companion-app SDK telemetry, and OTA model updates are all potential exfiltration channels requiring explicit mitigations.
- "Aggregated summaries" must be defined as a concrete sync payload schema before the re-identification risk can be evaluated or the evidence store designed correctly.
- Legal counsel is required before launch: the consumer wellness carve-out from HIPAA does not protect companion app data from civil subpoenas, and a single specific alert is clinically identifiable regardless of privacy policy framing.
- The on-device architecture becomes a credible differentiator only when enforcement is verifiable (attestation, documentation, user-visible transparency tools), not when it is asserted.

**Trade-offs** (the two lenses disagreed):
- A feasibility-oriented case that MPU-region DMA isolation plus a crash-dump scrubber covers the material raw-data boundary risk at Series A. A risk-oriented counterpoint: these controls assume firmware correctness. TrustZone cryptographic isolation should be prototyped before the architecture is locked. The cost of retrofitting isolation after the security story is established is much higher.
- A feasibility-oriented case that scoping the adversary model to a journalist with network traffic and a backend breach is proportionate to a 12-person startup's threat surface. A risk-oriented counterpoint: domestic partners with physical device access, coercive employer/insurer disclosure, and the manufacturer's own telemetry pipeline are more probable adversaries than cloud hackers. They operate through pathways the current architecture does not address.
- A feasibility-oriented case that 90-day backend retention with device pseudonyms is the practical legal hedge for subpoena exposure. A risk-oriented counterpoint: aggregated summaries with specific alert timestamps may already be functionally equivalent to PHI regardless of retention window. Architecting the backend as PHI-compliant from launch is lower marginal cost than retrofitting after the first enterprise partnership.

**Blind-spot flags** (only one lens raised):
- The OTA model-update path can encode sensor history in per-device weight payloads if not constrained to universally signed binaries — the weights are a compressed encoding of personal history, and sending them anywhere re-creates the privacy exposure the on-device architecture was designed to eliminate. [risk-oriented]
- User-controlled model encryption keys (PIN or biometric-derived, stored in TrustZone) are the most technically tractable path toward "manufacturer cannot interpret inference state" — estimated 3–4 weeks of firmware engineering and does not require rearchitecting the NPU. [feasibility-oriented]
- The companion app is where any radical data-sovereignty premise breaks down first: iOS/Android crash reporters, backend sync, and push notification infrastructure all involve external entities by default; mapping which flows are genuinely necessary vs. incidental is a bounded sprint. [feasibility-oriented]
- The current architecture's alert opacity — binary alert with no confidence interval or feature evidence — is a regulatory liability for 510(k) as well as a false-positive liability: FDA reviewers require algorithm performance evidence that an opaque model makes harder to produce. [risk-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- *Emotional/phenomenological:* Neither lens addressed what it is like to receive a cardiac alert with no supporting context. A binary "possible atrial fibrillation" notification at 11:47 PM has a psychological weight that is distinct from the clinical accuracy question. The design of the alert experience (uncertainty framing, recommended next steps, false-alarm acknowledgment flow) is a user-wellbeing question neither lens naturally surfaces. It has downstream effects on both liability and clinical partnership positioning.
- *Equity/access/distributional:* Neither lens addressed who disproportionately bears the cost of false positives or limited clinical actionability. A user without a cardiologist on call who receives an ambiguous alert faces a different risk calculus than a user with immediate clinical access. The 40+ demographic with family cardiac history is not uniformly resourced. Alert threshold design, the decision to show or suppress confidence intervals, and the absence of export functionality are all distributional choices whose equity implications neither lens raised.

---

**Questions addressed**: 6
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

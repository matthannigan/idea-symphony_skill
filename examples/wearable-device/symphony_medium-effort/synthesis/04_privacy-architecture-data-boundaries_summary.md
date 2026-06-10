---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "04_privacy-architecture-data-boundaries"
synthesis-type: "summary"
central-tension: "The on-device privacy guarantee is marketed as absolute, but the companion app, re-identifiable summaries, and warranty repair quietly route around it; the real boundary is severing data from identity, not keeping raw signal on the device."
---

# Summary: Privacy Architecture & Data Boundaries

## Executive Summary

The organizing tension of this cluster is that "raw data never leaves the device" is a clean marketing promise wrapped around a leaky architecture. Every perspective agrees on the core problem: the firmware is the part the team controls best and worries about least, while real exposure sits everywhere the on-device guarantee hands off to something else. The companion app's third-party SDKs (Firebase, Crashlytics, OS backups) leak health events the wearable never would. Aggregated summaries that look anonymous are re-identifiable when crossed with commercial data brokers. Warranty repair dumps sensor history the moment the device leaves the user's hands. The privacy guarantee is only as strong as its weakest downstream hop. Most of those hops are outside the silicon.

A genuine reframe runs underneath: the boundary that matters is not where raw data sits but whether it can be linked to a person. A heartbeat waveform is itself near-biometric, so "no raw data in the cloud" protects less than "raw data never linked to identity." That shift points the work toward de-identification (hashed device IDs, added noise, timestamp jitter, differential privacy) rather than treating on-device processing as complete.

The second recurring theme is honesty about motive. Working backward from a hypothetical public broadcast of all data shows that a large share of the privacy architecture protects the company from HIPAA, FDA, and breach liability. It protects users from personal harm, but that is not the only reason it exists. Naming which protections are philosophical commitments versus risk management is both ethical and trust-building, because users who distrust tech companies will not be reassured by a policy. They need the interface to show what stayed local in real time.

The strategic implication is that durability comes from structure, not messaging. Commitments that survive a cloud-ML competitor with better accuracy are wired into silicon, contracts, and engineering metrics. They live in a pre-committed sacred-vs-flexible manifesto, not in a privacy policy. The single most consequential and least reversible decision is sync granularity, chosen before clinical partnerships lock in expectations.

---

## Key Themes

**The real boundary is identity, not raw-data location.** Protecting the raw signal is less fundamental than severing the link between signal and identity, because the signal is near-biometric. This reframe came up from a feasibility lens and a legal and an adversarial angle. It redirects effort toward de-identification measures (hashed identifiers, added noise, differential privacy, timestamp jitter). These are stronger than procedural access controls and worth adopting regardless of the on-device decision.

### The weak link is the companion app, not the firmware
All perspectives agreed: the hardware privacy guarantee exists only inside the wearable and gets voided downstream by third-party SDKs, OS backups, forensic phone recovery, and clinical-partner systems. The recommended responses escalate from a quarterly-audited SDK manifest to an air-gapped, SDK-free web companion for privacy-conscious users.

### "Aggregated" is a claim to test, not a property to assume
All perspectives warned that feature vectors and alert timing stay re-identifiable when crossed with broker, insurance, and pharmacy data. The recommended move is a formal, empirical re-identification study against named brokers before clinical-partnership negotiations. Set the architecture (noise, jitter, batching, differential privacy) by evidence, not by precaution.

### Sync granularity is the irreversible decision
The architecture itself is more flexible than the expectations it creates. Once clinical partners wire daily or hourly summaries into their workflows, tightening aggregation breaks their pipelines. It looks like a privacy regression. Early sync-frequency choices are the hardest thing to roll back and the highest priority to settle now.

### Privacy must be felt and structural, not stated
Two demands reinforced each other. Users who distrust tech companies need real-time interface evidence (audit trails, on-device latency badges, processing banners). The commitment only survives competitive pressure if it is embedded in silicon, contracts, and engineering metrics. A policy document is not enough.

### Honest motive and honest limits build more trust than absolute claims
Working backward from public exposure revealed how much architecture serves company liability over user safety. A durable user-facing narrative is rooted in values ("you own your health data") and states real limits plainly. This is more trustworthy and a stronger informed-consent legal defense than a claim of perfect privacy.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Run a full companion-app SDK and data-flow audit. Inventory every third-party dependency (Firebase, Crashlytics, analytics, OS backup), what each one sees, and where containment breaks. Sandbox analytics off by default and strip PHI-correlated telemetry.
- Draft and ship a one-page "Privacy Commitments vs Optimization Knobs" manifesto before any clinical conversations. Separate sacred commitments (raw data never leaves the device) from flexible ones (model-training location, OTA updates).
- Define "processed alert" narrowly in the firmware spec (binary classification + confidence + timestamp only), explicitly excluding activations, distributions, and trend vectors a future update might add.
- Pin each pipeline data state to a regulatory category (Safe Harbor vs Expert Determination, PHI vs de-identified). Set an evidence-backed initial raw-retention window (roughly 7 days PPG, 24 hours microphone). Log debugging needs to justify shrinking it.

### Near-term (3-12 months)
- Commission a formal, empirical re-identification study crossing sync payloads against named commercial brokers. Set timestamp jitter, noise, and differential-privacy parameters from the results. Commit publicly to a measured resistance threshold.
- Pilot sync granularity internally against a fictional clinical partner (daily / 6-hourly / event-only). Measure model-iteration impact. Lock the early choice and ship a formal sync-decision deprecation policy.
- Build the felt-privacy interface: an audit-trail view, on-device processing banner, and latency badge. Add a plain-language dinner-table narrative tested on non-technical users and a 30-second explainer video.
- Implement at-rest encryption with a PIN-plus-biometric-derived key. Create an auditable device-return protocol (secure-enclave erase, certificate of erasure, NIST SP 800-88 verification before refurbishment).

### Long-term (1+ years)
- Hardwire on-device inference into the NPU silicon. Any future cloud pivot requires a hardware redesign. The privacy commitment becomes structural, not policy-level.
- Stand up privacy governance: a board-level Chief Privacy Officer, Privacy Impact Assessment gate before any feature ships, annual independent privacy audit, and pre-partnership audit sprint with publicly committed findings.
- Refactor toward identity-privacy as the primary boundary: hashed device IDs, no persistent identifiers, and a data-minimization score (target 95% of samples never leaving the device). Track this as an engineering metric every release.

---

## Key Considerations

**Opportunities**:
- Privacy reframed as user ownership ("your heartbeat is your medical record, not our training data") becomes an emotional advantage that cloud-ML competitors cannot credibly claim.
- Structural commitment (silicon, contracts, metrics) converts privacy from a compliance cost center into a defensible competitive differentiator.
- A monetization model built on hardware margin, subscriptions, premium on-device model updates, and white-label SDKs aligns revenue with the privacy promise.

**Risks & Challenges**:
- The companion app's third-party SDKs can nullify the hardware guarantee without the user noticing. The company cannot patch Google's or Apple's behavior retroactively.
- Loudly marketing a specific privacy commitment invites HIPAA, FTC, and FDA scrutiny. Marketing claims become binding, litigable obligations.
- Clinical-partner BAAs create joint liability for partner-side breaches. Warranty repair is a back door that voids the guarantee the moment the device is serviced.
- Short raw-retention windows create a permanent blind spot if a fatal event is missed.

**Trade-offs**:
- On-device accuracy vs cloud-ML accuracy under competitive pressure. The manifesto must decide which flex points are acceptable before the pressure arrives.
- Forensic debugging need vs minimum-necessary retention. Longer buffers improve false-negative diagnosis but enlarge breach exposure and erode the privacy contract.
- Company liability protection vs genuine user safety. Much of the architecture serves the former. Users actually lose more from a device-loss exposure than the company loses from a breach penalty.
- Absolute "no access" cryptography vs access-as-human-choice. An access-impossible design breaks its own promise under court order. Warrant-plus-notification-plus-biometric-unlock survives legal pressure.

---

**Questions addressed**: 8
**Key insights synthesized**: 40

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "06_hipaa-phi-boundaries-and-the-sync-protocol"
persona: "The Pragmatist"
---

# HIPAA, PHI Boundaries, and the Sync Protocol - The Pragmatist

## Q1: PHI boundary, minimum necessary, audit trail, and the clinical-partner request

* **Start with a concrete payload design, not legal interpretation.** Rather than debating whether an arrhythmia alert *is* PHI, define exactly what syncs: alert type, timestamp, severity score, and user ID—then run that through HIPAA's Safe Harbor rules (removing timestamp granularity below 1 hour for initial rollout). This gives your legal team a specific artifact to review with counsel, and your engineering team a testable schema.

* **Audit logging via lightweight local ring buffer.** A constrained device cannot write every sync event to cloud logs. Practical approach: maintain a 7-day circular log on-device (timestamp, data category, destination endpoint), sync a summary weekly ("X alerts sent to clinical partner Y"). This satisfies audit-trail needs without exhausting battery or storage—trade granularity for feasibility.

* **Decouple "what syncs" from "what the partner asks for."** Implement versioned API endpoints (`/api/v1/alerts-minimal`, `/api/v2/alerts-detailed`). Start with v1 (alert type + severity only). When a clinical partner requests granular data, you version to v2 without rearchitecting the whole sync protocol. This buys time to involve legal and revisit de-identification strategy.

* **Minimum viable PHI handling: don't over-engineer upfront.** Launch as wellness (no PHI claims). Collect only non-identifiable alerts on-device. When a clinical partner signs a BAA, *then* design PHI-aware syncing. Over-building compliance infrastructure before you have a clinical contract wastes engineering cycles and often guesses wrong about what clinicians actually need.

* **Decision boundary checkpoints at each phase.** At launch: aggregated alerts only. At pilot pilot: per-user alert export with timestamp grouped to day-level. At clinical integration: BAA-gated endpoints with full audit trails. Treat regulatory transitions as feature gates, not rewrites.

---

## Q2: Covered entity vs. Business Associate transition

* **Defer covered-entity classification until revenue is substantial.** A B2C wellness app is *not* a covered entity until hospital systems integrate it into clinical care. Practical milestone: assume your first clinical pilot triggers BAA requirements. Have counsel draft a template BAA 6 months *before* the pilot, not after, so negotiation doesn't block launch.

* **Negotiate BAA scope narrowly on first clinical deal.** Do not agree to become a general-purpose business associate for the entire hospital system. Limit scope: "Business Associate for cardiac arrhythmia alerting only, data retained 90 days, no onward sharing." This reduces compliance surface area and keeps the deal moving.

* **Create a "regulatory transition checklist" to hand to your product team.** Checklist items: API versioning in place (ready for audit-gated endpoints), backend encryption-at-rest (non-negotiable), log retention policy (define upfront), incident response protocol. As you approach a clinical deal, you mark items done. This is actionable; vague "HIPAA compliance" is not.

* **Resource estimate: 1 FTE legal + 0.5 FTE engineer for BAA.** The negotiation and compliance tweaks (audit endpoints, data retention policies) take 3–4 months for the first clinical partner. Budget this explicitly so it doesn't surprise the team or delay launch.

---

## Q3: State breach notification patchwork and EU AI Act compression

* **Compliance strategy: support the strictest state first, then expand.** Washington My Health MY Data Act is the most prescriptive (strict consent requirements, specific breach notifications). If your backend passes WA law, California (CPRA) and Texas (CUBI) will follow naturally. EU AI Act is separate; treat it as a 2027–2028 consideration for now (clock is running, but enforcement is not yet widespread for consumer wellness).

* **Breach notification automation now, before you need it.** Implement templated breach notification infrastructure today (state-specific email text, notification timelines, regulatory agency reporting). Cost: 1–2 weeks of engineering. Benefit: when an incident happens, you activate the template, not scramble to understand 5 state laws simultaneously.

* **EU AI Act explainability: start with model documentation, not code refactoring.** You do not need to ship "explainable AI" today for consumer wellness. But maintain a versioned artifact (model architecture, training data characteristics, test performance on demographic subgroups). When EU enforcement tightens, you have the foundation to build audit-trail features. This avoids rework.

* **Carve out geographic risk zones in your roadmap.** Mark Q3 2026 as "EU AI Act readiness review" (revisit model documentation, assess explainability gaps). Don't wait for enforcement; treat the Act as a known design constraint coming in 18 months.

---

## Q4: OpenEHR / FHIR R4 interoperability for clinical workflows

* **Do not build FHIR/OpenEHR export on day one.** Implement a stable JSON schema for alerts first (alert type, timestamp, severity, context). When a clinical partner requests FHIR export, spend 2–4 weeks mapping your schema to FHIR Observation + Condition resources. This decouples device development from standards evolution.

* **Pilot interoperability with one NHS partner, not five.** If you aim for UK/EU hospital adoption, partner with one NHS trust to design a FHIR export flow. Generalize from that one partnership, not speculation. Concrete example: build an endpoint (`/api/fhir/observations?device_id=X&date_range=Y`) that returns FHIR Observation bundles. This is testable; abstract interop roadmaps are not.

* **Version your interop layer independently.** Decouple device sync (v1.0) from FHIR export (interop v1.0). If standards change or a partner requests a dialect of FHIR, bump only the interop version. This prevents regulatory or standards churn from cascading into device firmware rewrites.

* **Resource estimate: 1 health IT architect + 1 engineer for first FHIR pilot.** The health IT architect knows FHIR/OpenEHR and can translate your alert schema. Do not ask firmware engineers to learn FHIR; hire domain expertise for this 6-week effort.

---

## Q5: The compiler analogy for regulatory transitions

* **Build an "intermediate representation" as your alert schema and feature flags.** Define one canonical alert format (type, severity, raw sensor data window, ML confidence). Store *all* of this on-device. Use feature flags to control what syncs: for wellness, sync only alert type + severity; for clinical, sync all fields to BAA-gated endpoints. Same data collection discipline, different export pipeline.

* **De-identify at sync time, not at collection.** Collect rich data on-device (timestamp at millisecond precision, raw PPG for debugging model performance). At sync time, apply rules: "wellness → strip timestamp," "clinical → day-granularity timestamp." This positions you to support both regimes without rearchitecting sensors or inference.

* **Regulatory "compilation target" checklist.** Define what each regime (wellness vs. 510(k) clinical) demands: wellness needs device attestation + performance metrics; 510(k) needs training data provenance + model drift monitoring. Build these capability layers once, gate them with feature flags. When you flip the clinical switch, all plumbing is already in place.

* **Roadmap milestone: "Feature-complete compliance framework" by month 12.** Don't wait for a clinical deal to build this. By month 12 of operation, you should have all regulatory machinery in place (audit endpoints, data retention policies, interop layers, de-identification rules), dormant behind feature flags. When the FDA or a hospital calls, you activate, not build.

* **Treat the intermediate representation as your strongest technical moat.** Teams that muddle through ad-hoc regulatory adjustments waste 6 months on rework. Teams that build a clean IR once—and use it to support multiple regimes—ship faster and with higher confidence. This is worth a few weeks of architecture upfront.

---

## Summary

**Total responses:** 24 (Q1: 5, Q2: 4, Q3: 4, Q4: 4, Q5: 5)
**Persona focus:** Feasibility, resource requirements, concrete next steps, phased implementation, and decoupling regulatory concerns from core product development through versioning and feature gates.

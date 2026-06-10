---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "07_regulatory-pathway-from-wellness-to-510-k"
synthesis-type: "summary"
central-tension: "Preserving the 510(k) option demands clinical-grade discipline (governance, audit trails, structured evidence) from day one, yet that same rigor is sunk cost and liability exposure if the device never files, and the gap between low-power inference accuracy and FDA thresholds may make clearance infeasible regardless."
---

# Summary: Regulatory Pathway from Wellness to 510(k)

## Executive Summary

The cluster organizes around a trade-off the personas did not resolve: preserving the 510(k) option requires clinical-grade discipline (formal governance, audit trails, structured validation evidence) from the very first consumer build, yet that same rigor becomes pure sunk cost and potential litigation liability if the device never files. The realistically achievable accuracy on a low-power NPU (85-92%) sits below the 95%+ sensitivity/specificity FDA-cleared cardiac monitors typically require, which may make clearance infeasible regardless of discipline. This cannot be resolved on intuition; it has to be measured.

The strongest convergent finding is that the genuinely irreversible decision is not technical architecture but user-facing language. All seven perspectives agree that FDA classification follows intended use as inferred from actual claims, not internal labeling, and that a single diagnostic-sounding alert, marketing line, or testimonial can reclassify the device as Class II software retroactively and cannot be cleanly unwound. Second, "exploring 510(k)" is masking an untested predicate-feasibility assumption: wrist-based arrhythmia detection has thin, shifting predicates and microphone-based sleep apnea detection on a wrist has essentially none. This may force a longer, costlier de novo pathway. Both point to the same early action: a content-governance gate and an FDA pre-submission before the consumer device ships.

A counterintuitive but well-supported insight is that on-device inference increases rather than decreases the software-validation burden. Behavior must be deterministic and auditable across hardware, firmware, and sensor drift. The privacy-first "no data leaves the device" story leaves validation evidence scattered and hard to audit. The same instrumentation discipline that makes this tractable (structured ground-truth capture, versioned pipelines, frozen algorithm, diverse cohort) also turns the consumer launch into a near-zero-cost evidence engine instead of a future multi-million-dollar retrospective study, but only if built from day one.

The most decisive contribution is a counter-test applied to the cluster's most seductive idea. Several perspectives argue the wellness-versus-clinical distinction is a category error and that the device is really a new kind of personalized physiological self-knowledge. An adversarial legal reading shows that this reframe does not dissolve FDA jurisdiction: jurisdiction follows actionable claims, not ontology. Any output a user acts on is a clinical claim regardless of framing. The philosophical vision belongs in marketing and long-range positioning; the compliance posture must stay grounded in current classifications.

---

## Key Themes

The cluster's load-bearing reframe: the consumer-to-clinical "category error" framing is rhetorically powerful but does not change which actions get prioritized, because regulatory jurisdiction attaches to actionable claims rather than to how the device is conceptually positioned. This collapses the most ambitious vision back onto the same near-term to-do list as the pragmatic path.

### Language is the irreversible gate
Across every perspective, the one decision that cannot be walked back is user-facing claim language. Classification hinges on what a reasonable user infers. "Detects arrhythmia," diagnostic-sounding alerts, and uncontrolled testimonials trigger Class II scope retroactively. A written language inventory and mandatory legal sign-off before any detection-specific copy ships is the cheapest and highest-leverage control available.

### Predicate feasibility is the unvalidated assumption
The recurring warning is that "exploring 510(k)" hides an untested question: does a usable predicate actually exist? Arrhythmia predicates are thin and eroding as de novo clearances reshape standards. Wrist-microphone sleep apnea detection has essentially none. A predicate landscape analysis and an FDA pre-submission (Q-sub) before launch converts this from a placeholder into a go/no-go gate.

### The consumer launch as a structured evidence engine
The most actionable point is that the consumer phase can generate 510(k)-grade evidence at near-zero marginal cost, but only if instrumented at launch: clinical-rate sensor capture, model-version logging per inference, 1-tap ground-truth confirmation, research consent, a frozen algorithm, and a diversity-recruited cohort. Retrofitting any of this later is expensive or impossible.

### Optionality has a measurable price and a liability tail
The overshoot risk is quantified rather than hand-waved: roughly $300k for ~8 FTE-months of clinical rigor that may never be used. Clinical-grade validation data can also become a plaintiff's argument that the company owed clinical-grade accuracy. This pushes toward staging rigor and making the wellness-versus-clinical commitment a conscious, costed decision rather than an indefinite "both."

### Friction as a clinical instrument, with a discipline test
Deliberate calibration friction is plausibly a clinical asset: cleaner data, sharper intended-use boundaries, self-selecting clinical cohort, traceable user-non-compliance failure modes. Glucose monitoring sets a real precedent. But it carries a 30-50% engagement cost and legally binds the device to the friction-conditioned performance. One perspective cautions that the real variable is validation, not burden, so simplicity may be validatable without friction at all.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Stand up a content-governance gate: a written language inventory plus mandatory legal sign-off before any detection-specific or diagnosis-adjacent copy ships in marketing, app alerts, or firmware. Default all user-facing language to advisory framing ("suggests possible patterns").
- Commission a predicate landscape analysis ($20-40k) and benchmark the current model against a named cleared device (e.g., Zio Monitor) to quantify the sensitivity/specificity gap; treat the result as an explicit go/no-go input.
- Charter a Regulatory Intake / Change Control Board with a single named executive holding veto authority, and route every partnership, marketing claim, and clinical-sounding feature through it; make violations a legal hold.
- Implement audit trails now: signed firmware releases, immutable per-inference logs (model version, sensor data, alert), and dataset provenance, accepting slower consumer iteration as the cost of optionality.

### Near-term (3-12 months)
- File an FDA pre-submission (Q-sub) before the consumer device ships, asking directly about predicate feasibility, acceptable accuracy thresholds, and compatible partnership/data-sharing structures.
- Instrument the consumer launch for 510(k)-grade evidence: clinical-rate sensor capture, an optional research-consent tier, 1-tap ground-truth confirmation, and FDA-auditable versioned data schemas; recruit a diversity cohort after the first 1,000 users.
- Freeze the core inference algorithm for ~6 months toward a formal algorithm lock, and separate updatable model parameters from a frozen clinical-claim infrastructure layer.
- Build an optional "clinical mode" with calibration friction and A/B test it against a frictionless cohort, measuring the specificity/PPV delta and adherence rates as future submission evidence.

### Long-term (1+ years)
- Stage clinical-validation spend: defer expensive prospective studies until regulatory intent is firm and a partnership is signed, and run small parallel academic studies against Holter/polysomnography in the interim.
- Build EHR/FHIR integration and a clinician-override feedback loop, and recruit a paid clinical advisory board plus KOL champions to support an eventual 510(k) and payer conversations.
- Validate RPM economics directly with 3-5 payers (confirming what the codes actually reimburse) before positioning the device as a billable unit, and treat reimbursement as a consequence of clearance rather than a near-term model.

---

## Key Considerations

**Opportunities**:
- The consumer base can become a multi-year, real-world longitudinal evidence engine and personalized-baseline dataset that competitors starting a 510(k) later cannot retrofit.
- On-device validation discipline is forward-compatible: work done now carries into a 510(k), unlike cloud algorithms that re-validate on every update.
- Optional calibration friction can simultaneously segment users, sharpen the intended-use boundary, and produce the clean protocol-compliant data FDA requires.
- A personal-informatics ("understand, not diagnose") positioning may sit outside SaMD scope and offer a genuinely lighter regulatory path if outputs stay non-directive.

**Risks & Challenges**:
- The low-power NPU accuracy gap (~85-92% vs. ~95%+) may make 510(k) infeasible without a multi-million-dollar clinical trial; this must be measured before committing.
- Clinical-grade validation data for a device that never files becomes both sunk cost (~$300k+) and a litigation liability implying a duty of clinical-grade accuracy.
- Commercial success can be a regulatory liability: millions of users expecting clinical performance strengthen the FDA's case to regulate the device.
- A governance gate is unenforceable against revenue pressure unless backed by hiring discipline and compensation that does not reward regulatory drift; the partnership channel, not just marketing, is where drift happens.

**Trade-offs**:
- Preserving the clinical option requires day-one rigor that is wasteful if the option is never exercised; the wellness-versus-clinical commitment should be made consciously rather than deferred indefinitely as "both."
- Consumer simplicity versus clinical validity: friction improves data quality but costs 30-50% engagement and legally binds the device to friction-conditioned performance.
- Firmware iteration versus clearance: a consumer cadence of frequent updates is incompatible with the post-clearance freeze, forcing an explicit innovate-now, lock-later sequence.
- Privacy-first on-device processing versus auditability: it strengthens the privacy story but scatters validation evidence and increases, rather than reduces, the Part 820 burden.

---

**Questions addressed**: 7
**Key insights synthesized**: 24

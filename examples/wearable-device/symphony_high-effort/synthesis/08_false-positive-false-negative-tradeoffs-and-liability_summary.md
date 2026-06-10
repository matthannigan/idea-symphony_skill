---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "08_false-positive-false-negative-tradeoffs-and-liability"
synthesis-type: "summary"
central-tension: "No single detection threshold is simultaneously commercially viable, clinically defensible, and legally safe; the way out is structural (tiered credentialing plus disclosed transparency), not a better number."
---

# Summary: False-Positive / False-Negative Tradeoffs and Liability

## Executive Summary

The organizing tension of this cluster is that no single detection threshold can be simultaneously commercially viable, clinically defensible, and legally safe. Tune too sensitive and users flood ERs, fatigue on alerts, and the team inherits products-liability exposure for the spurious alarms it designed in. Tune too specific and the device misses events a cleared competitor would have caught, with the "consumer wellness, not FDA-cleared" framing offering far less insulation than expected because the target demographic (40+, family cardiac history) treats every alert as medically actionable. All seven perspectives reached the same resolution: the way out is structural, not numerical. You do not find a magic threshold; you build an architecture that distributes authority and discloses its own limits.

That architecture has two load-bearing pillars. The first is tiered credentialing modeled on hospitals: a low tier that merely observes ("note this," no medical claim), a middle tier that suggests a doctor conversation, and a high tier that either routes to a consented partner cardiologist or waits for FDA clearance. The tiers map onto the wellness-to-510(k) boundary and let the device occupy the one role it can legally defend: surfacing signals while users act and clinicians interpret. The second pillar is disclosed transparency over claimed perfection. A device that publishes condition-specific operating points and admits where it is weak earns more trust and less liability than one that markets near-perfection and fails unpredictably, a finding every persona endorsed.

The most dangerous failure mode is the invisible one. A false positive announces itself. A false negative stays silent until a hospital visit, and the miss rate drifts upward over months as batteries degrade asymmetrically, thresholds shift, and user physiology ages. The strongest countermeasure raised is active self-validation: periodically feed the device a synthetic known pattern and surface "validation drift" to the user before a catastrophic miss makes the degradation visible the hard way.

One genuine disagreement remains unresolved and worth preserving. On the deliberate alert-delay question, most perspectives insisted any cool-down must be disclosed (a hidden delay is fraud stacked on negligence). But one argued forcefully that disclosing the delay creates its own trust-eroding loop and that users should experience it as the device getting smarter, not hiding information. The cluster also reframes the looser wellness tolerance as a strategic asset: the false positives it permits are a real-world labeled corpus no clinical trial could buy, provided a ground-truth feedback loop and honest consent are built from day one.

---

## Key Themes

### Architecture beats arithmetic
Across every question, the durable answer was structural rather than a better number. Tiered alerts, a cardiologist-partner chain of custody, on-device personalization, and signed design records manage the sensitivity/specificity tradeoff better than any single operating point. The recurring concrete starting point (roughly 85% sensitivity / 80% specificity for arrhythmia at launch) matters less than the governance around it: a named decision-owner, versioned rationale, and an auditable trail.

### Transparency is the liability shield, not the disclaimer
A buried "not a medical diagnosis" sentence shields no one. Courts and users both read the totality of the experience. Disclosed condition-specific performance, an alert UX that voices actual confidence, and publicly audited error rates convert hidden defect into informed product choice and move the team from negligence toward comparative fault. The same honesty that lowers legal exposure also earns deeper user trust than perfection claims.

### The invisible failure is the real threat
A false negative is silent until catastrophe, and the miss rate degrades slowly through battery asymmetry, threshold drift, and physiological aging. Active synthetic validation, personal-baseline calibration, drift detection, and cohort-specific miss reporting let you know whether you are failing slowly rather than suddenly. (Engaged users who drop out flatter aggregate miss rates.)

### Trust is a dataset, and it compounds
Alerts that are quiet, contextual, well-timed, and followed up convert users into collaborators who close the loop and feed ground-truth labels back into the model. Trust earned this way produces better behavioral and clinical data than any accuracy metric, which improves detection. The alert-credibility death-spiral reverses this virtuous cycle.

### Productive dissent: faster is not always better, and disclosure is not always safe
Two assumptions the cluster actively contested. First, "faster alerts are better health care" is a liability-defense belief, not a clinical truth. Immediate alerting measurably raises cortisol and ER visits even for self-resolving events. Second, and unresolved: whether a calibrated delay should be disclosed at all. The consensus says yes (a hidden delay is legally indefensible), but a serious minority argument holds that disclosure creates a workaround loop that erodes trust in both device and doctor.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Stand up a threshold steering committee (product, legal, one senior ML engineer) that formally owns operating-point decisions and produce a signed design record documenting the cost-sensitive, per-condition methodology before any launch threshold is locked.
- Specify the three-tier alert architecture (observe / discuss with doctor / emergency or partner-routed) with tier logic enforced in firmware, and draft the Tier 1 disclaimer language with a future cardiologist partner in mind.
- Architect the on-device learning and immutable audit-logging pipeline now (even if personalization ships disabled) so per-user threshold adaptation and forensic event logs exist from day one rather than as post-launch debt.

### Near-term (3-12 months)
- Run a 6-8 week, ~200-user controlled beta measuring alert-response rates at different false-positive ratios to locate the alert-fatigue curve empirically, and set the launch threshold from that data rather than from population ROC curves.
- Build active self-validation: inject synthetic known patterns periodically and surface "validation drift" in the app. Add per-sensor discharge-curve logging that triggers recalibration when efficiency drops.
- Sign a clinical-partner agreement establishing the cardiologist-routing channel with explicit data-sharing terms, liability allocation, and a gold-standard ECG validation cohort (100-200 engaged users) to anchor the edge-case dataset.
- Stand up the ground-truth feedback loop with quarterly check-ins ("did you see a doctor about an alert, what did they find?") and an explicit consent tier ("basic" vs. "research contributor") with early-access incentives.

### Long-term (1+ years)
- Accumulate 12-18 months of labeled real-world data, retrain a tighter second-generation model (toward 95%/95%), and prepare a 510(k) submission using the first-generation field data as real-world validation evidence.
- Plan the deliberate transition in how users relate to false positives (from tolerant "learning opportunity" to intolerant "medical error") before crossing the clinical regulatory boundary.
- Institute quarterly public failure audits that stress-test miss rates under noise, battery decline, and movement, publishing results in an in-app device-health report to substantiate disclosed performance claims.

---

## Key Considerations

**Opportunities**:
- The looser wellness tolerance manufactures a real-world labeled edge-case corpus (tens of millions of subject-weeks) that no controlled clinical trial could ethically or practically collect, providing a defensible moat toward the clinical-grade model.
- Disclosed, condition-specific honesty is a competitive differentiator in a market where users increasingly distrust perfection claims, and it serves as the strongest available liability posture.
- The cardiologist-partner channel yields the highest-quality ground-truth labels (a clinician validating or refuting each high-confidence signal) while distributing liability off the startup.

**Risks & Challenges**:
- The false negative is invisible until catastrophic. The miss rate drifts upward silently through battery asymmetry, threshold drift, and physiological aging unless actively monitored.
- The alert-credibility death-spiral is nonlinear: a handful of early false positives can collapse user trust entirely, raising real false-negative risk and degrading the very behavioral data needed to calibrate.
- The data-collection strategy risks appearing to exploit consumers as unwitting research subjects or as regulatory arbitrage, either of which can detonate user trust and FDA credibility if consent and framing are mishandled.

**Trade-offs**:
- Sensitivity vs. specificity has no safe single answer. The cluster splits between favoring sensitivity (the doctor filters, build the dataset) and favoring rare high-specificity alerts (each one carries signal, scarcity makes urgency credible), and both have legitimate backing.
- Transparency vs. concealment on a deliberate alert delay is genuinely unresolved. Disclosure is the legally defensible default, yet a serious argument holds that disclosing the delay creates a trust-eroding workaround loop.
- Faster alerting vs. confirmed alerting trades immediacy against accuracy and anxiety. A Day-1 alert can drive unnecessary ER panic while a condition-specific confirmation delay can improve triage but risks a genuine missed event during the window.

---

**Questions addressed**: 7
**Key insights synthesized**: 29

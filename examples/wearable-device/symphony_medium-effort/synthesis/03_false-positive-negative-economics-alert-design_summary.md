---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "03_false-positive-negative-economics-alert-design"
synthesis-type: "summary"
central-tension: "The liability gradient pushes toward maximizing sensitivity (false positives are cheap, missed events are litigable), but the lived user experience and long-run trust push the other way — and the personas do not resolve which wins."
---

# Summary: False Positive/Negative Economics & Alert Design

## Executive Summary

The organizing tension of this cluster is that two strong forces pull the sensitivity dial in opposite directions, and the personas never fully resolve which should win. The liability gradient pushes toward maximizing sensitivity: at the consumer-wellness stage a missed arrhythmia invites negligence exposure while a false positive is merely a "nuisance," so a risk-averse company will drift toward over-alerting. The lived user experience pulls the other way: false positives corrode trust, train users into numbness, and send them to the ER for nothing. These harms—relational wounds that no accuracy metric captures—can silently degrade the product users actually live with.

A second structural finding reframes the whole problem: accuracy is a proxy, not the goal. A device can be 99% accurate and cause net harm through fatigue, unnecessary ER visits, and anxiety. But an 85%-accurate device can produce net benefit if frightened users catch real disease earlier. The design target should shift from "maximize accuracy" to "instrument and optimize the actual health outcome." Demonstrated outcome benefit is a liability defense, but only with prospective study design. The danger line is intent: choosing a conservative threshold for legitimate clinical reasons is defensible, while deliberately engineering false positives to drive medical spending crosses into fraud and a consent violation users will eventually detect and resent.

The cluster converges hard on two mechanisms. First, a confidence-tiered alert architecture (urgent cardiac vs. low-confidence sleep apnea flag) hard-coded in firmware. This preserves credibility for the top tier, reduces fatigue below it, and creates a litigation audit trail. Second, transparency as the antidote to the "sensitivity ratchet": users anchor to early sensitivity and latency. Any later reduction reads as the device breaking. The team must pre-commit a baseline contract, version every threshold change, and convert downgrades into user-controlled toggles. A sharp counter-test cuts against the tiering enthusiasm: at 3am a terrified user collapses three tiers into "call 911 or ignore." The device, not the user, should carry the graduated escalation (escalate if the pattern repeats). Legal pressure may try to flatten the tiers entirely.

The critical risks are the invisible ones. The asymmetry has a temporal trap: false negatives surface years later, so leadership optimizes for the complaint that arrives first. ER systems are hidden cost-bearers whose strain degrades clinical credibility for every wearable brand. And lost trust and embedded fatigue cannot be rebuilt by being accurate later. The through-line for the decision-maker: set a hard specificity floor, build outcome measurement and clinical-feedback loops from day one, and treat threshold-setting as a governed, documented, clinically-approved decision rather than a tuning knob.

---

## Key Themes

**A categorical reframe runs through this cluster: accuracy is a proxy, not the goal. Design and measure against the health outcome, not the accuracy metric.** This reversal, reached independently from a feasibility lens, an adversarial lens, and an emotional lens, changes which actions get prioritized. It elevates prospective outcome measurement and clinical-feedback loops above accuracy tuning. It draws a bright line between a legitimate conservative threshold and fraudulent intentional false positives.

### The asymmetry inverts at the consumer-to-clinical boundary
Every persona treats the false-positive/false-negative tradeoff as stage-dependent. At consumer wellness the liability gradient favors higher sensitivity. But FDA 510(k) and clinical partnership lock claimed performance, turn false negatives into regulatory violations, and force the company to absorb false-positive costs by contract. The threshold policy must be explicitly designed to flip, with a 95%+ specificity floor and externally validated, firmware-locked thresholds.

### Transparency is the only escape from the sensitivity ratchet
All four perspectives converge on this: users anchor to early sensitivity and latency. Any later reduction reads as the device "getting worse," even when specificity improves. The break is pre-commitment and visible communication: a baseline-sensitivity contract, versioned threshold changes logged as user-facing events, and user-controlled High/Standard/Minimal toggles. Silent recalibration fails. If you act on this late, the anchoring may be irreversible by year two.

### Confidence tiers are right, but collapse under 3am cognitive load
The tiered architecture (urgent cardiac / moderate / silent-logged sleep apnea) is the consensus structure and a legal audit trail. A pointed counter-test shows a terrified, half-asleep user collapses all tiers into "call 911 or ignore." The resolution: let the device carry temporal escalation rather than asking the user to parse uncertainty. And pre-build the liability framework so a "low-confidence" label is not later reframed as negligence.

### The alert is felt, not counted, and its harms outlast the moment
Frequency is experienced as care or violation, not as a number. The first alert is a trust-defining intimate intrusion. A false positive can leave a "credibility tax" in the medical record, train users into hypervigilance, and wound the whole household. Recovery must be emotional, not statistical. Relationship wounds do not heal with false-positive-rate explanations.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Set a hard, non-negotiable specificity floor (95%+) and map a "clinical harm threshold" to an acceptable annual false-alarm count (2-4 per user); document the rationale and route approval through a clinical advisor, not revenue or marketing.
- Run moderated 3am usability testing with 50+ family-history users before firmware lock, field-testing tiered phrasing ("pattern detected" vs. "concerning pattern") against actual decision behavior, not just comprehension (target Q2).
- Architect model outputs to separate confidence scores from day one so per-tier thresholds can be tuned without retraining, and hard-code consistent thresholds (e.g., cardiac >75%, sleep apnea >60%) in firmware.
- Draft the disclosure layer now: in-app false-positive-rate transparency, ToS language, and an alert UI that reads "possible but not confirmed," to shift liability toward assumption of risk.

### Near-term (3-12 months)
- Build and ship the confidence-tiered alert architecture (immediate red cardiac / yellow moderate / silently-logged sleep apnea) with distinct haptics and a temporal-escalation fallback ("if the pattern repeats within the hour, escalate").
- Stand up the closed-loop dismissal-rate monitor (weekly cohort analysis) that flags fatigue creep and triggers a documented governance threshold review; pair it with a parallel locked low-sensitivity cohort to measure the true tradeoff.
- Build the false-alarm recovery flow and the 24/7 outsourced nurse-hotline off-ramp; budget ~2 FTE for manual review and outreach, and add household notification preferences to prevent cascade anxiety.
- Instrument prospective outcome measurement (missed events, early detections, unnecessary ER visits) and an optional clinical-feedback channel so provider findings can sync back tagged to specific alerts.

### Long-term (1+ years)
- Pre-position graduated-response logic in clinical literature and FDA guidance so the liability framework supports (rather than flattens) the tiered UX before any clinical-partnership transition.
- Run a separate 3-5 year research initiative (ethnography + HCI + cardiology, possibly a university partner) on the ambient body-device "dialogue," gated behind a 30-day baseline-learning mode and an always-on urgent-interrupt safety layer.
- Negotiate health-system partnerships to flag wearable-triggered ER visits distinctly from patient-initiated ones and to triage wearable alerts via a shared confidence score, mitigating the ER credibility cascade.

---

## Key Considerations

**Opportunities**:
- Confidence tiering simultaneously improves UX, reduces fatigue, and builds a defensible standard-of-care audit trail.
- Outcome-based design (measuring early detections and cardiovascular outcomes) is both a differentiator and a product-liability defense.
- Transparency moves (disclosed false-positive rates, versioned threshold changes, "still learning your baseline" framing) convert legal exposure into managed risk and build durable trust.
- Evidence-based personalization (higher sensitivity for high-risk subgroups with informed consent) can improve outcomes and reduce false positives at once.

**Risks & Challenges**:
- The temporal asymmetry biases leadership toward the complaint that surfaces first (visible fatigue) over the one that surfaces years later (missed events).
- Lost trust and embedded alert fatigue are effectively irreversible. The damage is largely done by year two before it is noticed.
- A false positive can inflict durable systemic harm: a medical-record "credibility tax" and user hypervigilance. This cannot be mitigated at the device level.
- Legal risk aversion may flatten the tiered architecture by treating every alert identically or escalating all to the highest level.
- The ER system is an unconsenting cost-bearer. Its strain degrades clinical credibility for the entire wearable category.

**Trade-offs**:
- Liability-driven sensitivity versus lived user experience and long-run trust. This is the cluster's central unresolved tension.
- Accuracy as the optimization target versus health outcome as the target. A fraud/consent red line sits at deliberately engineered false positives.
- Steady, confident alert tone (what the frightened user wants) versus honest communication of probabilistic uncertainty (what is true).
- Detection latency and speed expectations versus battery budget. Early fast-detection anchoring is costly to walk back.
- Continuous ambient sensing (the business model) versus the direct, unmediated body-relationship the ambient-dialogue vision promises.

---

**Questions addressed**: 8
**Key insights synthesized**: 31

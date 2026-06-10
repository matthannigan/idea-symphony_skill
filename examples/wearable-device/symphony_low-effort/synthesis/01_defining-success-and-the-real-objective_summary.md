---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "01_defining-success-and-the-real-objective"
central-tension: "Sensitivity-at-specificity should anchor all other decisions as the unambiguous north star, but the team has not yet resolved which detection problem is primary — real-time AFib classification or multi-hour sleep apnea aggregation — and the two have structurally opposite latency requirements that cannot be optimized simultaneously."
---

# Summary: Defining Success and the Real Objective

## Executive Summary

The cluster's organizing tension is not between accuracy and power. It is between naming a single load-bearing constraint and continuing to treat all four axes (accuracy, latency, power, privacy) as co-equal. Both lenses converge strongly here: "balance" is a political fiction, not an engineering priority stack. A feasibility-oriented view proposes anchoring at ≥90% sensitivity / ≥70% specificity for clinically validated arrhythmia patterns and working backward from that anchor to power and latency budgets. A risk-oriented counterpoint agrees on the anchor but flags that the team has not yet resolved which detection problem is primary: paroxysmal AFib (real-time windowed classification) or obstructive sleep apnea (multi-hour temporal aggregation). These are structurally opposite inference problems with opposite latency requirements. Quietly designing for both without acknowledging the trade-off is the most predictable way to ship a device that does neither well.

On anomaly definition, both lenses converge on version-controlling the clinical criteria and separating the anomaly threshold from model weights as an updatable artifact. They diverge sharply on user controls. A feasibility-oriented view allows a three-setting sensitivity dial (Conservative / Standard / Sensitive) backed by pre-validated threshold sets. A risk-oriented view argues that any user-facing "sensitivity" framing creates liability even as a consumer wellness device and recommends restricting user controls strictly to notification preferences while the model runs at fixed clinical thresholds.

On alert UX and the "alone with their wrist" failure mode, the two lenses converge on a tiered alert architecture and on designing for the worst-case anxious user rather than the composed median user. Uniquely from a risk lens: the companion app's implicit assumption that the user-physician relationship will bridge alert to action is undesigned. A primary care physician receiving a wearable screenshot has no validated protocol, no liability framework, and no reimbursement pathway, so the gap between alert and clinical action may be 6–8 weeks. The feasibility lens uniquely surfaces pre-loading health profile context at onboarding (not at alert time) and a post-alert debrief loop as the ground-truth data pipeline for model improvement.

---

## Key Themes

### The False Equivalence of "Balance"
Both lenses reject the framing that accuracy, latency, power, and privacy are co-equal constraints to balance simultaneously. Sensitivity-at-specificity is the only constraint that makes the device worth wearing. The others are derived. Convergent finding: build a ranked priority stack before locking any architecture decision. Explicitly resolve whether AFib or sleep apnea detection is the primary problem, because they require fundamentally different inference approaches.

### Anomaly Definition as Versioned Artifact, Not Baked-In Assumption
Both lenses agree that the anomaly definition must be encoded in a versioned specification document, separate from model weights, with an explicit change-control process tied to clinical advisory review. The risk-oriented view adds that FDA's De Novo pathway for consumer AFib detection is predicate-based. Deviating from an already-cleared anomaly definition converts a 510(k) submission into a novel pathway requiring clinical studies and 18–24 additional months. Reverse-engineering the anomaly definition from the target 510(k) predicate now is a low-cost decision with high downstream leverage.

### Tiered Alert Architecture as Non-Negotiable
Both lenses converge on a tiered confidence system: low-confidence anomalies log silently, medium-confidence prompts a "review" nudge, and high-confidence fires a real alert. Consumer health device research consistently shows users who receive more than 2–3 non-emergency alerts per week begin ignoring all alerts by day 30. A device that cries wolf in week two will be dismissed in week four when a real event occurs. The three-tier escalation flow (monitor / contact doctor / call 911) is the minimum viable UX, not a nice-to-have.

### The Undesigned Clinician Bridge
A risk-oriented blind spot the feasibility lens does not raise: the device implicitly assumes a functioning user-physician relationship will translate alerts into clinical action. That bridge does not exist in the product. A primary care physician receiving a wearable screenshot has no validated protocol for responding, no liability framework for acting on consumer wellness data, and no reimbursement pathway for the follow-up telehealth visit. Partnering with one telehealth cardiology platform at launch and designing a clinical-grade export format (PDF with waveform context) is the minimum viable bridge that actually exists.

### On-Device Personalization Requires Migration Architecture from Day One
Both lenses agree that the symbiotic intelligence vision — a device that becomes genuinely irreplaceable through individualization — is self-defeating without a device-to-device migration protocol. The personalized model is most valuable precisely when the user needs to replace hardware. Without migration, the "loyalty" created by data depth becomes a loyalty trap at upgrade time. A feasibility-oriented view identifies an encrypted local-to-local Bluetooth migration protocol as achievable in roughly one quarter of firmware work, a competitive moat that cloud-dependent alternatives cannot match.

---

## Recommended Actions

### Immediate (0-3 months)
- Convene a one-day architecture review to formally rank the four constraints (sensitivity-at-specificity → power → latency → privacy) and document which detection problem is primary (AFib vs. sleep apnea); make the outcome an explicit written decision, not an implicit team assumption. [convergent]
- Run a 48-hour instrumented power audit on the target NPU under a representative 24-hour sensor fusion load before any further ML architecture decisions. If measured draw differs from datasheet estimates by more than 20%, respecify hardware now. [convergent]
- Submit a pre-submission meeting request to FDA's Digital Health Center of Excellence. The meeting is free and available within 60–90 days. It will determine whether consumer wellness claims cross into SaMD territory and whether consumer-launch data will be acceptable as clinical evidence for a future 510(k). [unique: risk]
- Encode the AFib and sleep apnea anomaly definitions as a versioned model specification document (separate from model weights), and reverse-engineer the target definition from the most relevant existing 510(k) predicate device. [convergent]

### Near-term (3-12 months)
- Recruit 10 subjects from the target demographic (adults 40+), collect 72 hours of real-wrist PPG data during normal life including exercise and sleep, and count how many alerts the current detection logic would have surfaced. If more than 3 per week per person, the alert architecture requires fundamental rethinking before the ML approach is meaningful. [convergent]
- Build the three-tier alert escalation flow (monitor / contact doctor / call 911) with onboarding health-profile pre-load (cardiologist on file, emergency contact, family cardiac history) before finalizing alert copy. Run 10 structured moderated sessions with target-demographic users using a Figma prototype before writing any app code. [convergent]
- Implement a post-alert debrief loop (24-hour follow-up prompt: "Did you follow up? How do you feel?") from initial launch; users who had confirmed cardiac events are the highest-value training signal and retrofitting this collection mechanism post-launch is substantially harder. [unique: feasibility]
- Limit user-facing controls to notification preferences only (how and when they are notified), not detection sensitivity. If a sensitivity dial is offered, back each setting with pre-validated threshold sets. Never expose raw model threshold parameters to users. [trade-off: a feasibility case for a three-setting dial (Conservative / Standard / Sensitive) to give users agency within a controlled parameter space; a risk-oriented counterpoint that any "sensitivity" framing creates liability surface area the team cannot manage at 12 engineers, and that the distinction between "notification preferences" and "detection sensitivity" must be unambiguous in both UI language and legal documentation]

### Long-term (1+ years)
- Design an encrypted device-to-device migration protocol (Bluetooth, no cloud) for the personalized on-device health model before gen-1 ships. The architectural decision is low-cost now, and the absence of migration is the single largest risk to the symbiotic intelligence value proposition at upgrade time. [convergent]
- Partner with one telehealth cardiology platform for the launch cohort and design a clinical-grade alert export (PDF with 30-second encrypted waveform snippet, structured for cardiologist review). This closes the gap between alert fired and clinical action taken, which is currently 6–8 weeks with no designed bridge. [unique: risk]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- "Balance" across all four constraints is not an engineering strategy; sensitivity-at-specificity must be ranked first, and the others derived from it.
- AFib detection (real-time windowed classification) and sleep apnea detection (multi-hour aggregation) are structurally different inference problems; the team must resolve which is primary before locking architecture.
- Anomaly definitions must be version-controlled as a separable artifact from model weights, with a defined change-control process.
- A tiered alert confidence system (silent log / review nudge / real alert) is essential; surfacing raw model output as a user notification will produce alert fatigue within 30 days and device abandonment by day 45.
- The personalized model must be portable and migratable across device generations from day one; on-device-only storage without migration destroys the symbiotic intelligence value proposition at upgrade time.

**Trade-offs** (the two lenses disagreed):
- A feasibility case for user-facing sensitivity controls (three pre-validated presets) as a mechanism to give users agency within a controlled parameter space; a risk-oriented counterpoint that any user-facing framing of "sensitivity" — even preset-backed — creates product liability surface area the company cannot absorb at 12 engineers, and that user controls must be restricted to notification preferences only, with the model running at fixed clinical thresholds regardless of user settings.
- A feasibility case that "raw data never leaves the device" is a marketing differentiator for consumer launch rather than a hard technical constraint. A risk-oriented counterpoint: conflating privacy value with regulatory risk-reduction (avoiding FDA SaMD classification for cloud-side components) creates architectural confusion. The real driver — regulatory hedge — should be named explicitly because it changes which privacy trade-offs are actually negotiable.
- A feasibility case for 30-second encrypted waveform snippets accompanying each alert on the companion device (stored locally, not in cloud) to make alerts actionable without violating on-device raw data processing. A risk-oriented framing: this reconsideration of the privacy architecture should be deliberate and explicit, not a quiet exception to the stated design principle.

**Blind-spot flags** (only one lens raised):
- The user-physician bridge is undesigned: a primary care physician receiving a wearable screenshot has no protocol, liability framework, or reimbursement pathway for acting on consumer wellness data. The gap between alert and clinical action is currently 6–8 weeks with no designed intervention. [risk-oriented]
- PPG-derived AFib detection has a known specificity ceiling of 82–88% in clinical literature, roughly 1 in 7 alerts is a false positive. This rate will appear worse when validated against a normative fitness-wearable cohort rather than an enriched hospital Holter cohort. Validation dataset selection is as consequential as model architecture. [risk-oriented]
- A post-alert debrief loop (24-hour follow-up prompt) is the primary ground-truth data pipeline for model improvement and the highest-value training signal source. This mechanism is far cheaper to design in at launch than to retrofit. [feasibility-oriented]
- Storage BOM cost is typically overlooked until hardware is already specified. The symbiotic intelligence vision requires at least 128MB non-volatile storage for model checkpoints, anomaly logs, and signal statistics. Price this into the MCU selection now. [feasibility-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- **Equity/access/distributional:** Neither lens examined who among the target demographic (adults 40+ with family cardiac history) has reliable smartphone access, health literacy sufficient to interpret a tiered alert, or a cardiologist relationship to activate Tier 2 escalation. The alert architecture's three-tier CTA assumes a user with a stored provider contact. A significant fraction of the highest-risk users — older adults without established cardiac care — are precisely the ones for whom that assumption fails.
- **Emotional/phenomenological:** The questions name the "alone with their wrist" moment, and the risk lens addresses it structurally, but neither lens examined the phenomenology of living with a health-monitoring device over months. This includes the normalization of anxiety, the way a device that has never fired becomes both reassuring and quietly distrusted, and how a false positive early in the wear history permanently recalibrates a user's threshold for taking alerts seriously. These are not UX edge cases. They are the primary psychological dynamics of long-term health monitoring wearables.

---

**Questions addressed**: 5
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)
